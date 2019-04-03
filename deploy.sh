export target_bucket=devops-assessment-site

aws s3 cp table.html s3://$target_bucket/
aws s3 cp chart.html s3://$target_bucket/
aws s3 cp js/da-chart.js s3://$target_bucket/js/
aws s3 cp js/da-table.js s3://$target_bucket/js/


aws s3api put-object-acl --bucket $target_bucket --key / --grant-read uri=http://acs.amazonaws.com/groups/global/AuthenticatedUsers
aws s3api put-object-acl --bucket $target_bucket --key /js --grant-read uri=http://acs.amazonaws.com/groups/global/AuthenticatedUsers