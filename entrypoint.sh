#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo "### Hello KEN! :rocket:" >> $GITHUB_STEP_SUMMARY

