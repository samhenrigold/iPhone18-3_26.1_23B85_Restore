@interface WLServerConnection
- (BOOL)_isTerminated:(const char *)terminated length:(int64_t)length;
- (WLServerConnection)init;
- (WLServerConnectionDelegate)delegate;
- (int)_listen:(int)_listen;
- (void)_accept:(int)_accept;
- (void)_read:(int)_read;
- (void)close;
- (void)dealloc;
- (void)listen:(int)listen;
@end

@implementation WLServerConnection

- (WLServerConnection)init
{
  v9.receiver = self;
  v9.super_class = WLServerConnection;
  v2 = [(WLServerConnection *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_sockfd = -1;
    v4 = dispatch_queue_create("WLServerConnection Connection Pool Queue", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v3->_connections;
    v3->_connections = v6;
  }

  return v3;
}

- (void)dealloc
{
  [(WLServerConnection *)self close];
  v3.receiver = self;
  v3.super_class = WLServerConnection;
  [(WLServerConnection *)&v3 dealloc];
}

- (void)listen:(int)listen
{
  if (self->_sockfd == -1)
  {
    v12[5] = v3;
    v12[6] = v4;
    v6 = [(WLServerConnection *)self _listen:*&listen];
    if (v6 != -1)
    {
      v7 = v6;
      self->_sockfd = v6;
      objc_initWeak(v12, self);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__WLServerConnection_listen___block_invoke;
      block[3] = &unk_279EB5F40;
      objc_copyWeak(&v10, v12);
      v11 = v7;
      dispatch_async(queue, block);
      objc_destroyWeak(&v10);
      objc_destroyWeak(v12);
    }
  }
}

void __29__WLServerConnection_listen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accept:*(a1 + 40)];
}

- (void)close
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_connections;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        close([*(*(&v9 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_connections removeAllObjects];
  objc_sync_exit(v3);

  sockfd = self->_sockfd;
  if (sockfd != -1)
  {
    close(sockfd);
  }
}

- (int)_listen:(int)_listen
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = socket(2, 1, 0);
  if (v4 == -1)
  {
    _WLLog();
  }

  else
  {
    _WLLog();
    *&v7.sa_len = 512;
    *&v7.sa_data[6] = 0;
    *v7.sa_data = bswap32(_listen) >> 16;
    v6 = 1;
    if (setsockopt(v4, 0xFFFF, 4, &v6, 4u) || bind(v4, &v7, 0x10u) || (_WLLog(), listen(v4, 5)))
    {
      _WLLog();
      return -1;
    }
  }

  return v4;
}

- (void)_accept:(int)_accept
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  _WLLog();
  if (_accept != -1)
  {
    *&v15.sa_len = 0;
    *&v15.sa_data[6] = 0;
    v14 = 16;
    for (i = accept(_accept, &v15, &v14); (i & 0x80000000) == 0; i = accept(_accept, &v15, &v14))
    {
      _WLLog();
      v6 = dispatch_queue_create("WLServerConnection Connection Read Queue", 0);
      v7 = self->_connections;
      objc_sync_enter(v7);
      connections = self->_connections;
      v9 = [MEMORY[0x277CCABB0] numberWithInt:i];
      [(NSMutableSet *)connections addObject:v9];

      objc_sync_exit(v7);
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__WLServerConnection__accept___block_invoke;
      block[3] = &unk_279EB5F40;
      objc_copyWeak(&v11, &location);
      v12 = i;
      dispatch_async(v6, block);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);

      *&v15.sa_len = 0;
      *&v15.sa_data[6] = 0;
      v14 = 16;
    }

    _WLLog();
  }

  _WLLog();
}

void __30__WLServerConnection__accept___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _read:*(a1 + 40)];
}

- (BOOL)_isTerminated:(const char *)terminated length:(int64_t)length
{
  v4 = &terminated[length];
  v5 = terminated[length - 1];
  if (terminated[length - 1])
  {
    if (length < 4)
    {
      if (length < 2)
      {
        return 0;
      }
    }

    else if (*(v4 - 4) == 13 && *(v4 - 3) == 10 && v5 == 10 && *(v4 - 2) == 13)
    {
      return 1;
    }

    v7 = *(v4 - 2);
    if (v5 != 10 || v7 != 13)
    {
      return 0;
    }
  }

  return 1;
}

- (void)_read:(int)_read
{
  v3 = *&_read;
  v19[128] = *MEMORY[0x277D85DE8];
  _WLLog();
  v5 = read(v3, v19, 0x400uLL);
  if (v5 <= 0)
  {
    goto LABEL_20;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (!v6 && [(WLServerConnection *)self _isTerminated:v19 length:v5])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v19];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        v10 = objc_loadWeakRetained(&self->_delegate);
        [v10 connection:self didReceiveText:v8];
      }

LABEL_15:

      v6 = 0;
      goto LABEL_17;
    }

    v11 = v5 + v7;
    v12 = malloc_type_malloc(v5 + v7 + 1, 0x100004077774924uLL);
    strncpy(v12, v6, v7);
    v13 = v19;
    do
    {
      v14 = *v13++;
      v12[v7++] = v14;
      --v5;
    }

    while (v5);
    v12[v11] = 0;
    if (v6)
    {
      free(v6);
    }

    if ([(WLServerConnection *)self _isTerminated:v12 length:v11])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
      v15 = objc_loadWeakRetained(&self->_delegate);

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 connection:self didReceiveText:v8];
      }

      free(v12);
      v7 = 0;
      goto LABEL_15;
    }

    v7 = v11;
    v6 = v12;
LABEL_17:
    _WLLog();
    v5 = read(v3, v19, 0x400uLL);
  }

  while (v5 > 0);
  if (v6)
  {
    free(v6);
  }

LABEL_20:
  _WLLog();
  close(v3);
  v17 = self->_connections;
  objc_sync_enter(v17);
  v18 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [(NSMutableSet *)self->_connections removeObject:v18];

  objc_sync_exit(v17);
}

- (WLServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end