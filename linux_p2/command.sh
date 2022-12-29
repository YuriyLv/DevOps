#!/bin/bash
for i in {1..20}; do touch ${i}.txt; echo $(($RANDOM)) >> ${i}.txt; done