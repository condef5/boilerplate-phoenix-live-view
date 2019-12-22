#!/bin/bash

set -e

CURRENT_NAME="MyApp"
CURRENT_OTP="my_app"

NEW_NAME="NewProject"
NEW_OTP="new_project"

# replace all coincides inside the files
ack -l $CURRENT_NAME --ignore-file=is:rename_project.sh | xargs sed -i '' -e "s/$CURRENT_NAME/$NEW_NAME/g"
ack -l $CURRENT_OTP --ignore-file=is:rename_project.sh | xargs sed -i '' -e "s/$CURRENT_OTP/$NEW_OTP/g"

# # rename files .ex
mv lib/${CURRENT_OTP}_web.ex lib/${NEW_OTP}_web.ex
mv lib/$CURRENT_OTP.ex lib/$NEW_OTP.ex

# rename name of directories
mv lib/$CURRENT_OTP lib/$NEW_OTP
mv lib/${CURRENT_OTP}_web lib/${NEW_OTP}_web

# rename name of test
mv test/${CURRENT_OTP}_web test/${NEW_OTP}_web

# delete empty directories
find . -empty -type d -delete

echo "✓ Done"