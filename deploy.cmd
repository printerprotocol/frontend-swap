yarn build && rm -rf ../swap/* && mv ./build/* ../swap && cd ../swap && git add * && git commit -am "Automated mainnet deployment." && git push
