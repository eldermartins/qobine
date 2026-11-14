UPDATE configuration
SET disconnect_server_url = NULL,
    disconnect_password = NULL,
    enable_disconnect = 0
WHERE rowid = 1;
