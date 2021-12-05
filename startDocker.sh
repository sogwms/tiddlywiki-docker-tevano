docker run -d  -p 8088:8080 \
  --name wiki \
  -v <host-directory>:/wiki \
  -e CUSTOM="username=test password=test" \
  tevano/tiddlywiki:latest
