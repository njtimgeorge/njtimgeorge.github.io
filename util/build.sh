# run jekyll commands in a docker container to avoid local
# configuration issues.

docker run --rm -it --volume="$PWD:/srv/jekyll"  --env JEKYLL_ENV=production jekyll/jekyll:3.8 jekyll build
