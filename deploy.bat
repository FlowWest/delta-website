echo "Building site..."
hugo
​
cd public
echo "Syncing to amazon s3 bucket..."
aws s3 sync . s3://delta.scienceintegrationteam.com
​
cd ..
​
echo ""
echo "site is available at: http://delta.scienceintegrationteam.com"
echo ""