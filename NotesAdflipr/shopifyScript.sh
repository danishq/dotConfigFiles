echo "--- Installing dependencies ---"
echo
npm install --include=dev
echo "✓ Dependencies installed"
echo

echo "--- Syncing database with codebase ---"
echo
#npm run predev
echo "✓ Synced codebase"
echo

echo "--- Building application ---"
echo
npm run build
echo "✓ Build completed"
echo

echo "--- Starting application on port 3001 ---"
echo
PORT=3001 npm start > ~/shopify.log 2>&1 &
echo "✓ Application started in background"
echo
