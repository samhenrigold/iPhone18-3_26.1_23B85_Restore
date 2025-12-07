@interface SDNetworkResolver
- (SDNetworkResolver)initWithNode:(__SFNode *)node;
- (SDNetworkResolverDelegate)delegate;
- (int)start;
- (void)bonjourResolverDidChange:(id)change;
- (void)dealloc;
- (void)notifyClientAboutResolve:(int)resolve;
- (void)stop;
@end

@implementation SDNetworkResolver

- (SDNetworkResolver)initWithNode:(__SFNode *)node
{
  v10.receiver = self;
  v10.super_class = SDNetworkResolver;
  v4 = [(SDNetworkResolver *)&v10 init];
  v5 = v4;
  if (v4)
  {
    flags = v4->_flags;
    v4->_flags = 0;

    v5->_node = CFRetain(node);
    protocol = v5->_protocol;
    v5->_protocol = 0;

    resolver = v5->_resolver;
    v5->_resolver = 0;

    v5->_session = 0;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_node);
  v3.receiver = self;
  v3.super_class = SDNetworkResolver;
  [(SDNetworkResolver *)&v3 dealloc];
}

- (void)notifyClientAboutResolve:(int)resolve
{
  v8 = objc_opt_new();
  [v8 setObject:self->_node forKeyedSubscript:kSFOperationNodeKey];
  [v8 setObject:self->_flags forKeyedSubscript:kSFOperationFlagsKey];
  [v8 setObject:self->_protocol forKeyedSubscript:kSFOperationProtocolKey];
  if (resolve)
  {
    v5 = [NSError errorWithDomain:@"SFNodeError" code:resolve userInfo:0];
    [v8 setObject:v5 forKeyedSubscript:kSFOperationErrorKey];

    v6 = 10;
  }

  else
  {
    v6 = 9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkResolver:self event:v6 withResults:v8];

  [(SDNetworkResolver *)self stop];
}

- (void)bonjourResolverDidChange:(id)change
{
  changeCopy = change;
  error = [changeCopy error];
  if (error)
  {
    v6 = error;
    v7 = browser_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100132474(v6, v7);
    }

    selfCopy2 = self;
    v9 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v10 = SFNodeCopyURL();
  if (v10)
  {
    v11 = v10;
    v12 = CFURLCopyScheme(v10);
    if (v12)
    {
      v13 = v12;
      v14 = CFURLCopyPath(v11);
      if (v14)
      {
        v15 = v14;
        hostName = [changeCopy hostName];
        portNumber = [changeCopy portNumber];
        v18 = sub_1001174F4(v13, 0, 0, hostName, [portNumber intValue], v15, 0, 0);

        SFNodeSetURL();
        if (v18)
        {
          CFRelease(v18);
        }

        CFRelease(v15);
      }

      CFRelease(v13);
    }

    CFRelease(v11);
  }

  else
  {
    portNumber2 = [changeCopy portNumber];
    [portNumber2 intValue];
    SFNodeSetPortNumber();

    hostName2 = [changeCopy hostName];
    SFNodeSetHostName();

    path = [changeCopy path];
    SFNodeSetPath();

    v22 = [changeCopy url];
    SFNodeSetURL();
  }

  if ([(NSString *)self->_protocol isEqualToString:kSFNodeProtocolVNC])
  {
    selfCopy2 = self;
    v9 = 0;
LABEL_16:
    [(SDNetworkResolver *)selfCopy2 notifyClientAboutResolve:v9];
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(SDNetworkResolver *)self mount];
  }

LABEL_17:
}

- (int)start
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v4 = sub_1001F1110(self->_node);
    v5 = self->_protocol;
    self->_protocol = v4;

    protocol = self->_protocol;
    if (!protocol)
    {
      return -2;
    }
  }

  if ([(NSString *)protocol isEqualToString:kSFNodeProtocolODisk])
  {
    v6 = SFNodeCopyURL();
    v7 = SFNodeCopyDomain();
    v8 = SFNodeCopyServiceName();
    v9 = v8;
    if (v6)
    {
      v10 = _CFNetServiceCreateFromURL();
      if (v10)
      {
        v11 = v10;
        v12 = [SDBonjourResolver alloc];
        Name = CFNetServiceGetName(v11);
        Type = CFNetServiceGetType(v11);
        v15 = [(SDBonjourResolver *)v12 initWithName:Name type:Type domain:CFNetServiceGetDomain(v11) path:0 timeout:0];
        resolver = self->_resolver;
        self->_resolver = v15;

        [(SDBonjourResolver *)self->_resolver setDelegate:self];
        [(SDBonjourResolver *)self->_resolver resolve];
        CFRelease(v11);
LABEL_18:

        goto LABEL_19;
      }

      if (!v9 || !v7)
      {
        goto LABEL_18;
      }
    }

    else if (!v8 || !v7)
    {
      v17 = browser_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001324EC(v17);
      }

LABEL_24:

      return -2;
    }

    v18 = sub_100118668(self->_protocol);
    if (v18)
    {
      v19 = v18;
      v20 = SFNodeCopyRealName();
      v21 = [SDBonjourResolver alloc];
      if (SFNodeIsSharePoint())
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      v23 = [(SDBonjourResolver *)v21 initWithName:v9 type:v19 domain:v7 path:v22 timeout:0];
      v24 = self->_resolver;
      self->_resolver = v23;

      [(SDBonjourResolver *)self->_resolver setDelegate:self];
      [(SDBonjourResolver *)self->_resolver resolve];

      goto LABEL_18;
    }

    v17 = browser_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100132530(v17);
    }

    goto LABEL_24;
  }

LABEL_19:
  if (!self->_resolver)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100132358;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  return 0;
}

- (void)stop
{
  resolver = self->_resolver;
  if (resolver)
  {
    [(SDBonjourResolver *)resolver setDelegate:0];
    [(SDBonjourResolver *)self->_resolver cancel];
    v4 = self->_resolver;
    self->_resolver = 0;
  }
}

- (SDNetworkResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end