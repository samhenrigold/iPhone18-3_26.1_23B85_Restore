@interface SocketRemoteXpcProxy
- (SocketRemoteXpcProxy)initWithSocket:(int)socket device:(id)device queue:(id)queue server:(BOOL)server;
- (int)takeOwnershipOfClientSocket;
- (void)activate;
- (void)cancel;
@end

@implementation SocketRemoteXpcProxy

- (SocketRemoteXpcProxy)initWithSocket:(int)socket device:(id)device queue:(id)queue server:(BOOL)server
{
  deviceCopy = device;
  queueCopy = queue;
  v33 = -1;
  v32 = -1;
  v31.receiver = self;
  v31.super_class = SocketRemoteXpcProxy;
  v10 = [(SocketRemoteXpcProxy *)&v31 init];
  v11 = v10;
  if (!v10)
  {
LABEL_15:
    v18 = v11;
    goto LABEL_16;
  }

  v12 = MEMORY[0x2822297A0];
  v13 = proxy_log(v10);
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SocketRemoteXpcProxy initWithSocket:device:queue:server:];
    }

    goto LABEL_10;
  }

  v15 = remote_socket_create_connected_ipv6_pair(&v33, &v32, v13);

  if (!v15)
  {
    xpc_remote_connection_get_version_flags();
    v19 = xpc_remote_connection_create_with_connected_fd();
    if (deviceCopy && remote_device_xpc_remote_connection_tls_enabled(deviceCopy))
    {
      v20 = remote_device_copy_xpc_remote_connection_tls_identity(deviceCopy);
      v30 = deviceCopy;
      xpc_remote_connection_set_tls();
    }

    v21 = v33;
    v22 = fcntl(v33, 3, 0);
    fcntl(v21, 4, v22 & 0xFFFFFFFB);
    v23 = v32;
    v24 = fcntl(v32, 3, 0);
    fcntl(v23, 4, v24 | 4u);
    fcntl(v33, 2, 1);
    fcntl(v32, 2, 1);
    v25 = v32;
    v11->_clientSock = v33;
    v11->_serverSock = v25;
    objc_storeStrong(&v11->_queue, queue);
    peer = v11->_peer;
    v11->_peer = v19;
    v27 = v19;

    onCancel = v11->_onCancel;
    v11->_onCancel = 0;

    goto LABEL_15;
  }

  v17 = proxy_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SocketRemoteXpcProxy initWithSocket:v17 device:? queue:? server:?];
  }

LABEL_10:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)activate
{
  peer = [(SocketRemoteXpcProxy *)self peer];
  queue = [(SocketRemoteXpcProxy *)self queue];
  xpc_remote_connection_set_target_queue();

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = dup([(SocketRemoteXpcProxy *)self serverSock]);
  v5 = *(v18 + 6);
  if (v5 < 0)
  {
    v8 = __error();
    v9 = proxy_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SocketRemoteXpcProxy activate];
    }

    [(SocketRemoteXpcProxy *)self cancel];
    goto LABEL_9;
  }

  if (fcntl(v5, 73, 1))
  {
    v6 = __error();
    v7 = proxy_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SocketRemoteXpcProxy activate];
    }

    close_drop_optional_np();
    [(SocketRemoteXpcProxy *)self cancel];
LABEL_9:
    _Block_object_dispose(&v17, 8);
    return;
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__0;
  v15[4] = __Block_byref_object_dispose__0;
  v16 = 0;
  peer2 = [(SocketRemoteXpcProxy *)self peer];
  xpc_remote_connection_set_event_handler();

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  [(SocketRemoteXpcProxy *)self serverSock];
  v11 = xpc_file_transfer_create_with_fd();
  self->_serverSock = -1;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_value(empty, "socket", v11);
  peer3 = [(SocketRemoteXpcProxy *)self peer];
  xpc_remote_connection_activate();

  peer4 = [(SocketRemoteXpcProxy *)self peer];
  xpc_remote_connection_send_message();
}

void __32__SocketRemoteXpcProxy_activate__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x2318E96F0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = proxy_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_22E542000, v6, OS_LOG_TYPE_INFO, "RemoteXPC error: %{public}@", buf, 0xCu);
    }

    close_drop_optional_np();
    [*(a1 + 32) cancel];
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = proxy_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __32__SocketRemoteXpcProxy_activate__block_invoke_cold_1();
    }
  }

  else
  {
    v7 = xpc_dictionary_get_value(v3, "socket");
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    xpc_file_transfer_write_to_fd();
    *(*(*(a1 + 40) + 8) + 24) = -1;
  }
}

uint64_t __32__SocketRemoteXpcProxy_activate__block_invoke_2(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = proxy_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_INFO, "write RemoteXPC to socket ended: %{darwin.errno}d", v6, 8u);
  }

  return [*(a1 + 32) cancel];
}

uint64_t __32__SocketRemoteXpcProxy_activate__block_invoke_5(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = proxy_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_INFO, "write socket to RemoteXPC ended: %{darwin.errno}d", v6, 8u);
  }

  return [*(a1 + 32) cancel];
}

- (int)takeOwnershipOfClientSocket
{
  result = [(SocketRemoteXpcProxy *)self clientSock];
  self->_clientSock = -1;
  return result;
}

- (void)cancel
{
  peer = [(SocketRemoteXpcProxy *)self peer];
  xpc_remote_connection_cancel();

  close_drop_optional_np();
  close_drop_optional_np();
  onCancel = [(SocketRemoteXpcProxy *)self onCancel];

  if (onCancel)
  {
    onCancel2 = [(SocketRemoteXpcProxy *)self onCancel];
    onCancel2[2]();
  }

  [(SocketRemoteXpcProxy *)self setOnCancel:0];
}

- (void)initWithSocket:(NSObject *)a1 device:queue:server:.cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_22E542000, a1, OS_LOG_TYPE_ERROR, "creating socket pair failed: %s", &v4, 0xCu);
}

@end