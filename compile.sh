#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
set -e
cd "$(dirname "$0")"
# The tests exercise the reduced "7za" CLI ("7-Zip (a)"), which is the Alone
# bundle (not Alone2's full "7zz"/"7-Zip (z)").
make -j2 -C CPP/7zip/Bundles/Alone -f makefile.gcc
cp CPP/7zip/Bundles/Alone/_o/7za executable
