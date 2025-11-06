#!/usr/bin/env bash

echo "# START TEST INPUT"
find / -xdev -type f | xargs grep -H "my_var"
echo "# END TEST INPUT"
