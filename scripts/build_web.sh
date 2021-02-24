cd ..
flutter build web
cp -a assets/. build/web/assets/
rm -rf public
cp -a build/web/. public

echo "Build success!"