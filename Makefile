#!/usr/bin/make --no-print-directory --jobs=1 --environment-overrides -f

VERSION_TAGS += NOTIFY
NOTIFY_MK_SUMMARY := go-corelibs/notify
NOTIFY_MK_VERSION := v1.0.2

include CoreLibs.mk
