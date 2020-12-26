# run jekyll commands in a docker container to avoid local
# configuration issues.

docker run --rm -it --volume="$PWD:/srv/jekyll"  --env JEKYLL_ENV=production -p 4000:4000 jekyll/jekyll:3.8 jekyll serve