echo "running fix.sh"
# sed -i "72d" "public/index.html"
# cat server_data.js | tr '\n' ' ' 
# sed -i "72i" "public/index.html"
head -n 71 readymag/index.html > public/index.html
cat server_data.js | tr '\n' ' ' >> public/index.html
tail +73 readymag/index.html >> public/index.html

echo "done with fixing"
