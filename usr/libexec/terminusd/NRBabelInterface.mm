@interface NRBabelInterface
- (NRBabelInstance)instance;
- (NRBabelInterface)initWithInstance:(id)instance;
- (in6_addr)localAddressInner;
- (void)dealloc;
- (void)sendPacket:(iovec *)packet iovLen:(unsigned int)len toAddr:(const in6_addr *)addr;
@end

@implementation NRBabelInterface

- (in6_addr)localAddressInner
{
  v2 = *&self->_localAddressInner.__u6_addr32[2];
  v3 = *self->_localAddressInner.__u6_addr8;
  *&result.__u6_addr32[2] = v2;
  *result.__u6_addr8 = v3;
  return result;
}

- (NRBabelInstance)instance
{
  WeakRetained = objc_loadWeakRetained(&self->_instance);

  return WeakRetained;
}

- (void)sendPacket:(iovec *)packet iovLen:(unsigned int)len toAddr:(const in6_addr *)addr
{
  v5 = &qword_100229000;
  if (qword_100229100 != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    if (_NRLogIsLevelEnabled())
    {
      if (v5[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d ABORTING: NOT IMPLEMENTED - USE SUBCLASS!", ", "[NRBabelInterface sendPacket:iovLen:toAddr:]"", 764);
    }

    v5 = _os_log_pack_size();
    v6 = &v9 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%{public}s NOT IMPLEMENTED - USE SUBCLASS!");
    *v8 = 136446210;
    *(v8 + 4) = "[NRBabelInterface sendPacket:iovLen:toAddr:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_7:
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }
}

- (void)dealloc
{
  outgoingPublicHelloTimer = self->_outgoingPublicHelloTimer;
  if (outgoingPublicHelloTimer)
  {
    dispatch_source_cancel(outgoingPublicHelloTimer);
    v4 = self->_outgoingPublicHelloTimer;
    self->_outgoingPublicHelloTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = NRBabelInterface;
  [(NRBabelInterface *)&v5 dealloc];
}

- (NRBabelInterface)initWithInstance:(id)instance
{
  instanceCopy = instance;
  v23.receiver = self;
  v23.super_class = NRBabelInterface;
  v5 = [(NRBabelInterface *)&v23 init];
  if (!v5)
  {
    v12 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_1000CB9A8();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelInterface initWithInstance:]"", 693);
    }

    v15 = _os_log_pack_size();
    v16 = &handler[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "%{public}s [super init] failed");
    *v18 = 136446210;
    *(v18 + 4) = "[NRBabelInterface initWithInstance:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v6 = v5;
  [(NRBabelInterface *)v5 setInstance:instanceCopy];
  v6->_outgoingPublicHelloSeqno = arc4random_uniform(0x10000u);
  v6->_mtu = 1452;
  queue = [instanceCopy queue];
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  outgoingPublicHelloTimer = v6->_outgoingPublicHelloTimer;
  v6->_outgoingPublicHelloTimer = v8;

  dispatch_source_set_timer(v6->_outgoingPublicHelloTimer, 0x8000000000000000, 0xEE6B2800uLL, 0x989680uLL);
  objc_initWeak(&location, v6);
  v10 = v6->_outgoingPublicHelloTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000CBEE4;
  handler[3] = &unk_1001FC730;
  objc_copyWeak(&v21, &location);
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v6->_outgoingPublicHelloTimer);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v6;
}

@end