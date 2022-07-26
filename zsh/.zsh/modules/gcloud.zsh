# google cloud sdk
GCLOUD_SDK_HOME=/opt/google-cloud-sdk

include() {
    [[ -f "$1" ]] && source "$1"
}

include $GCLOUD_SDK_HOME/path.zsh.inc
include $GCLOUD_SDK_HOME/completion.zsh.inc

