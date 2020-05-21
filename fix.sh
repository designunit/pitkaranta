echo "running fix.sh"
# sed -i "72d" "public/index.html"
# cat server_data.js | tr '\n' ' ' 
# sed -i "72i" "public/index.html"
head -n 71 readymag/index.html > public/index.html

# cat server_data.js | tr '\n' ' ' > temp_server_data
# echo "\n" >> temp_server_data
# cat temp_server_data >> public/index.html
# rm temp_server_data 

node server_data.js >> public/index.html

tail -n +73 readymag/index.html >> public/index.html

echo "done with fixing"
