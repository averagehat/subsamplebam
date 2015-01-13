#!/bin/bash
set -ev

prefix=$PWD
version=1.1
git clone https://github.com/samtools/htslib.git
git clone https://github.com/samtools/samtools.git
cd samtools
git checkout $version
sed -i "s|prefix\s\+=\s\+/usr/local|prefix = $prefix|" Makefile
make
make install
