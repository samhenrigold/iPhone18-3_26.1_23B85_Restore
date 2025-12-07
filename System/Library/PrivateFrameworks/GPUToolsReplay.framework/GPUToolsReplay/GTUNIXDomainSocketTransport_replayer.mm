@interface GTUNIXDomainSocketTransport_replayer
- (GTUNIXDomainSocketTransport_replayer)initWithMode:(int)mode;
- (id)connect;
- (void)_connectClient:(id)client future:(id)future;
- (void)_connectServer:(id)server future:(id)future;
- (void)_invalidate;
- (void)setUrl:(id)url;
@end

@implementation GTUNIXDomainSocketTransport_replayer

- (void)_invalidate
{
  v3 = *&self->_mode;
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4.receiver = self;
  v4.super_class = GTUNIXDomainSocketTransport_replayer;
  [(GTBaseSocketTransport_replayer *)&v4 _invalidate];
}

- (id)connect
{
  v3 = +[GTFuture_replayer future];
  queue = self->super.super.super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__GTUNIXDomainSocketTransport_connect__block_invoke;
  v6[3] = &unk_279657D20;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

- (void)_connectClient:(id)client future:(id)future
{
  v29 = *MEMORY[0x277D85DE8];
  if (client)
  {
    v7 = socket(1, 1, 0);
    if (v7 != -1)
    {
      v8 = v7;
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v23 = 0;
      v24 = 0u;
      CFStringGetFileSystemRepresentation(client, v22, 1024);
      if (strlen(v22) - 103 > 0xFFFFFFFFFFFFFF97)
      {
        v23.sa_family = 1;
        strlcpy(v23.sa_data, v22, 0x68uLL);
        v18 = strlen(v23.sa_data);
        if (connect(v8, &v23, v18 + 2) != -1)
        {
          [(GTBaseSocketTransport_replayer *)self runWithSocket:v8];
          v19 = 1;
LABEL_14:
          [future setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v19)}];
          return;
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277CCA5B8];
        v11 = *__error();
        v9 = v20;
        v10 = v21;
      }

      else
      {
        v9 = GTError_replayer;
        v10 = @"DYErrorDomain";
        v11 = 1;
      }

      [future setError:{-[__objc2_class errorWithDomain:code:userInfo:](v9, "errorWithDomain:code:userInfo:", v10, v11, 0)}];
      v19 = 0;
      goto LABEL_14;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA5B8];
    v14 = *__error();
    v12 = v15;
    v13 = v16;
  }

  else
  {
    v12 = GTError_replayer;
    v13 = @"DYErrorDomain";
    v14 = 38;
  }

  [future setError:{-[__objc2_class errorWithDomain:code:userInfo:](v12, "errorWithDomain:code:userInfo:", v13, v14, 0)}];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:0];

  [future setResult:v17];
}

- (void)_connectServer:(id)server future:(id)future
{
  v33 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (!server)
  {
    v8 = NSTemporaryDirectory();
    if (!v8)
    {
      v8 = @"/tmp";
    }

    serverCopy = [(__CFString *)v8 stringByAppendingPathComponent:@"dysonXXXXXX"];
  }

  CFStringGetFileSystemRepresentation(serverCopy, buffer, 1024);
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v9 = strlen(buffer) + 1;
  v26 = 0;
  v27 = 0u;
  if (server || v9 < 0x69)
  {
    if (v9 >= 0x69)
    {
LABEL_19:
      v17 = GTError_replayer;
      v18 = @"DYErrorDomain";
      v19 = 39;
LABEL_21:
      [future setError:{-[__objc2_class errorWithDomain:code:userInfo:](v17, "errorWithDomain:code:userInfo:", v18, v19, 0)}];
      [future setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
      return;
    }

    if (server)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFStringGetFileSystemRepresentation([@"/tmp" stringByAppendingPathComponent:@"dysonXXXXXX"], buffer, 1024);
    if (strlen(buffer) - 104 < 0xFFFFFFFFFFFFFF97)
    {
      goto LABEL_19;
    }
  }

  v10 = mkstemp(buffer);
  if (v10 == -1)
  {
    v14 = -1;
    goto LABEL_23;
  }

  v11 = v10;
  serverCopy = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], buffer);
  close(v11);
LABEL_13:
  if (!self->super.super.super._url)
  {
    self->super.super.super._url = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:serverCopy];
  }

  v26.sa_family = 1;
  strlcpy(v26.sa_data, buffer, 0x68uLL);
  v12 = strlen(v26.sa_data);
  v13 = socket(1, 1, 0);
  if (v13 == -1)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA5B8];
    v19 = *__error();
    v17 = v20;
    v18 = v21;
    goto LABEL_21;
  }

  v14 = v13;
  unlink(v26.sa_data);
  if (bind(v14, &v26, v12 + 2) != -1 && listen(v14, 1) != -1)
  {
    fcntl(v14, 4, 4);
    v15 = dispatch_source_create(MEMORY[0x277D85D28], v14, 0, self->super.super.super._queue);
    *&self->_mode = v15;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke;
    handler[3] = &unk_279657DC0;
    v25 = v14;
    handler[4] = self;
    handler[5] = future;
    dispatch_source_set_cancel_handler(v15, handler);
    v16 = *&self->_mode;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke_2;
    v22[3] = &unk_279657DC0;
    v23 = v14;
    v22[4] = self;
    v22[5] = future;
    dispatch_source_set_event_handler(v16, v22);
    dispatch_resume(*&self->_mode);
    return;
  }

LABEL_23:
  [future setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA5B8], *__error(), 0)}];
  [future setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  if (v14 != -1)
  {
    close(v14);
  }
}

- (void)setUrl:(id)url
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(GTBaseSocketTransport_replayer *)self connected])
  {
    if (s_logUsingOsLog == 1)
    {
      v6 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v7 = "fail: tried to set socket path on connected unix domain socket transport";
        v8 = v6;
        v9 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85DF8];
      [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"fail: tried to set socket path on connected unix domain socket transport", "UTF8String"];
      fprintf(v11, "%s\n");
    }

LABEL_14:
    abort();
  }

  if (url && ![url filePathURL])
  {
    if (s_logUsingOsLog == 1)
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = [objc_msgSend(url "absoluteString")];
        v7 = "fail: unix domain socket url must be a file url: %s";
        v8 = v10;
        v9 = 12;
LABEL_11:
        _os_log_fault_impl(&dword_24D764000, v8, OS_LOG_TYPE_FAULT, v7, buf, v9);
        abort();
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85DF8];
      [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"fail: unix domain socket url must be a file url: %s", objc_msgSend(objc_msgSend(url, "absoluteString"), "UTF8String")), "UTF8String"];
      fprintf(v12, "%s\n");
    }

    goto LABEL_14;
  }

  queue = self->super.super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__GTUNIXDomainSocketTransport_setUrl___block_invoke;
  block[3] = &unk_279657D20;
  block[4] = url;
  block[5] = self;
  dispatch_sync(queue, block);
}

- (GTUNIXDomainSocketTransport_replayer)initWithMode:(int)mode
{
  v5.receiver = self;
  v5.super_class = GTUNIXDomainSocketTransport_replayer;
  result = [(GTBaseSocketTransport_replayer *)&v5 init];
  if (result)
  {
    *(&result->super._scheduledReadOnWritableSocket + 3) = mode;
  }

  return result;
}

@end