#!/bin/sh

fc-cache
fc-list :outline -f "%{family}\n" | grep -i Open
