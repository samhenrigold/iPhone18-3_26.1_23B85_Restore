@interface OS_remote_service
- (int)proxySocketOverRemoteXPC:(int)c;
- (void)dealloc;
@end

@implementation OS_remote_service

- (int)proxySocketOverRemoteXPC:(int)c
{
  v3 = *&c;
  v5 = [SocketRemoteXpcProxy alloc];
  device = self->device;
  v7 = remoted_queue(v5);
  v8 = [(SocketRemoteXpcProxy *)v5 initWithSocket:v3 device:device queue:v7 server:0];

  if (v8)
  {
    objc_initWeak(&location, v8);
    takeOwnershipOfClientSocket = [(SocketRemoteXpcProxy *)v8 takeOwnershipOfClientSocket];
    v11 = takeOwnershipOfClientSocket;
    if ((takeOwnershipOfClientSocket & 0x80000000) != 0)
    {
      v12 = rsd_log(takeOwnershipOfClientSocket);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [OS_remote_service proxySocketOverRemoteXPC:];
      }
    }

    [(NSMutableArray *)self->proxies addObject:v8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__OS_remote_service_proxySocketOverRemoteXPC___block_invoke;
    v15[3] = &unk_27884ABB0;
    v15[4] = self;
    objc_copyWeak(&v16, &location);
    [(SocketRemoteXpcProxy *)v8 setOnCancel:v15];
    [(SocketRemoteXpcProxy *)v8 activate];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = rsd_log(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [OS_remote_service proxySocketOverRemoteXPC:];
    }

    close(v3);
    v11 = -1;
  }

  return v11;
}

- (void)dealloc
{
  free(self->name);
  v3.receiver = self;
  v3.super_class = OS_remote_service;
  [(OS_remote_service *)&v3 dealloc];
}

@end