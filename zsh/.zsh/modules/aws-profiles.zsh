# switching AWS profiles
function _aws_switch_profile() {
   if [ -z $1 ]; then  echo "Usage: aws-profile profilename"; return; fi

   exists="$(aws configure get aws_access_key_id --profile $1)"
   if [[ -n $exists ]]; then
       export AWS_DEFAULT_PROFILE=$1;
       export AWS_PROFILE=$1;
       export AWS_REGION=$(aws configure get region --profile $1);

       # if target profile is using assume_role, use sts to get a session
       assume_role="$(aws configure get role_arn --profile $1)"
       if [[ -n $assume_role ]]; then
           aws_credentials=$(aws sts assume-role --role-arn $assume_role --role-session-name "CliSession1")
           export AWS_ACCESS_KEY_ID=$(echo $aws_credentials|jq '.Credentials.AccessKeyId'|tr -d '"')
           export AWS_SECRET_ACCESS_KEY=$(echo $aws_credentials|jq '.Credentials.SecretAccessKey'|tr -d '"')
           export AWS_SESSION_TOKEN=$(echo $aws_credentials|jq '.Credentials.SessionToken'|tr -d '"')
       fi
       echo "Switched to AWS Profile: $1";
       aws configure list
   fi
};


alias aws-all="aws configure list-profiles"
alias aws-profile="_aws_switch_profile"
alias aws-whoami="aws configure list"

