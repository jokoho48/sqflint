#!/bin/sh

sh -c "echo Running sqflint with arguments:"
sh -c "echo $*"
sh -c "python3 sqfLint/sqflint.py  $*"
