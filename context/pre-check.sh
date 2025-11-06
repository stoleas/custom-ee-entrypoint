#!/usr/bin/env bash

echo "# START TEST INPUT"
find / -xdev -type f -print0 | xargs grep -0 -H "my_var"
echo "# END TEST INPUT"
