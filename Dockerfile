FROM rclone/rclone:1.57

COPY scripts/*.sh /app/

RUN chmod +x /app/*.sh \
  && apk add --no-cache bash p7zip postgresql-client tzdata

ENTRYPOINT ["/app/backup.sh"]
