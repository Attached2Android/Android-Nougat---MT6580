#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/leagoo/z5/patches/system_core.patch
patch -p1 < ../../device/leagoo/z5/patches/system_core2.patch
cd ../..
cd bionic
patch -p1 < ../device/leagoo/z5/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..
cd hardware/libhardware
patch -p1 < ../../device/leagoo/z5/patches/hardware_libhardware.patch
cd ../..
cd system/sepolicy
patch -p1 < ../../device/leagoo/z5/patches/0001-system_sepolicy.patch
cd ../..
cd frameworks/av
patch -p1 < ../../device/leagoo/z5/patches/frameworks_av.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/leagoo/z5/patches/frameworks_native.patch
patch -p1 < ../../device/leagoo/z5/patches/frameworks_native2.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/leagoo/z5/patches/key.patch
cd ../..
cd packages/apps/Settings
git apply -v ../../../device/leagoo/z5/patches/0001-Lunch-MiraVision-from-Settings.patch
cd ../../..

