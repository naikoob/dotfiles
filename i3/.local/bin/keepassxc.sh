#!/bin/bash

secret-tool lookup keepass passwordz | keepassxc --pw-stdin --keyfile ~/.config/keepassxc/keepass.keyz ~/Blackbox/Drive/vaults/passwordz.kdbx&

