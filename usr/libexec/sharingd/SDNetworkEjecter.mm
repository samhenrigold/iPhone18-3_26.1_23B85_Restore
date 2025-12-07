@interface SDNetworkEjecter
- (SDNetworkEjecter)initWithNode:(__SFNode *)node;
- (SDNetworkEjecterDelegate)delegate;
- (int)start;
- (void)dealloc;
- (void)eject;
- (void)notifyClientAboutEject:(int)eject;
- (void)stop;
@end

@implementation SDNetworkEjecter

- (SDNetworkEjecter)initWithNode:(__SFNode *)node
{
  v9.receiver = self;
  v9.super_class = SDNetworkEjecter;
  v4 = [(SDNetworkEjecter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    flags = v4->_flags;
    v4->_flags = 0;

    protocol = v5->_protocol;
    v5->_protocol = 0;

    *&v5->_mountedCount = 0;
    v5->_node = CFRetain(node);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_node);
  v3.receiver = self;
  v3.super_class = SDNetworkEjecter;
  [(SDNetworkEjecter *)&v3 dealloc];
}

- (void)notifyClientAboutEject:(int)eject
{
  if (!eject)
  {
    mountedCount = self->_mountedCount;
    if (mountedCount)
    {
      v6 = self->_ejectedCount + 1;
      self->_ejectedCount = v6;
      if (v6 != mountedCount)
      {
        return;
      }
    }

    SFNodeSetMountPoint();
    SFNodeRemoveKind();
    SFNodeSetConnectionState();
  }

  v10 = objc_opt_new();
  [v10 setObject:self->_node forKeyedSubscript:kSFOperationNodeKey];
  [v10 setObject:self->_flags forKeyedSubscript:kSFOperationFlagsKey];
  [v10 setObject:self->_protocol forKeyedSubscript:kSFOperationProtocolKey];
  if (eject)
  {
    v7 = [NSError errorWithDomain:@"SFNodeError" code:eject userInfo:0];
    [v10 setObject:v7 forKeyedSubscript:kSFOperationErrorKey];

    v8 = 10;
  }

  else
  {
    v8 = 9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkEjecter:self event:v8 withResults:v10];
}

- (void)eject
{
  if (SFNodeIsMounted())
  {
    longValue = [(NSNumber *)self->_flags longValue];
    if (SFNodeIsSharePoint())
    {
      v4 = SFNodeCopyMountPoint();
      v5 = v4;
      if (v4)
      {
        v10 = v4;
        v6 = [NSArray arrayWithObjects:&v10 count:1];
        [(SDNetworkEjecter *)self ejectMountPoints:v6 useAssistant:(longValue >> 1) & 1];
      }

      else
      {
        [(SDNetworkEjecter *)self notifyClientAboutEject:0xFFFFFFFFLL];
      }
    }

    else if (SFNodeIsServer())
    {
      v7 = +[SDStatusMonitor sharedMonitor];
      v8 = SFNodeCopyRealName();
      if ([(NSString *)self->_protocol isEqual:kSFNodeProtocolODisk])
      {
        [v7 odiskMountPointsForServer:v8];
      }

      else
      {
        [v7 mountPointsForServer:v8];
      }
      v9 = ;
      [(SDNetworkEjecter *)self ejectMountPoints:v9 useAssistant:(longValue >> 1) & 1];
    }
  }

  else
  {

    [(SDNetworkEjecter *)self notifyClientAboutEject:0];
  }
}

- (int)start
{
  if (!self->_protocol)
  {
    v3 = sub_1001F1110(self->_node);
    protocol = self->_protocol;
    self->_protocol = v3;

    if (!self->_protocol)
    {
      return -2;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174FCC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  return 0;
}

- (void)stop
{
  v2 = browser_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001750C4(v2);
  }
}

- (SDNetworkEjecterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end