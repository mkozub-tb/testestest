echo ''
echo ':::: DEPLOYMENT INFO'
echo ':: Job runs for commit: ' $(git show --format="%H by %an, %as (%ar)" --no-patch)
echo ':: Job runs for branch: ' $(git rev-parse --abbrev-ref HEAD)
echo ''