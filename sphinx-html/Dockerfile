FROM ubuntu:20.04
COPY cmd.sh /cmd.sh
RUN chmod +x /cmd.sh && /cmd.sh build
ENTRYPOINT ["/cmd.sh"]
