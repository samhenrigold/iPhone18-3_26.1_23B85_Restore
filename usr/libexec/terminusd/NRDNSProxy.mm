@interface NRDNSProxy
- (NRDNSProxy)initWithQueue:(id)queue nrUUID:(id)d delegate:(id)delegate;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation NRDNSProxy

- (void)cancel
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: cancel", ", "[NRDNSProxy cancel]"", 98, self);
  }

  if (self)
  {
    self->_cancelled = 1;
  }
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v6 = nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: dealloc", ", "[NRDNSProxy dealloc]"", 90, self);
  }

  if (!self || !self->_cancelled)
  {
    [(NRDNSProxy *)self cancel];
  }

  v8.receiver = self;
  v8.super_class = NRDNSProxy;
  [(NRDNSProxy *)&v8 dealloc];
}

- (void)start
{
  if (!self || !self->_started)
  {
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: start", ", "[NRDNSProxy start]"", 84, self);
    }

    if (self)
    {
      self->_started = 1;
    }
  }
}

- (NRDNSProxy)initWithQueue:(id)queue nrUUID:(id)d delegate:(id)delegate
{
  queueCopy = queue;
  dCopy = d;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = NRDNSProxy;
  v11 = [(NRDNSProxy *)&v24 init];
  if (!v11)
  {
    v17 = sub_1000233CC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_1000233CC();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDNSProxy initWithQueue:nrUUID:delegate:]"", 69);
    }

    v20 = _os_log_pack_size();
    v21 = __error();
    v22 = _os_log_pack_fill(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v20, *v21, &_mh_execute_header, "%{public}s [super init] failed");
    *v22 = 136446210;
    *(v22 + 4) = "[NRDNSProxy initWithQueue:nrUUID:delegate:]";
    sub_1000233CC();
    _NRLogAbortWithPack();
  }

  v12 = v11;
  v11->_identifier = atomic_fetch_add_explicit(&qword_100228188, 1uLL, memory_order_relaxed);
  queue = v11->_queue;
  v11->_queue = queueCopy;
  v14 = queueCopy;

  nrUUID = v12->_nrUUID;
  v12->_nrUUID = dCopy;

  objc_storeWeak(&v12->_delegate, delegateCopy);
  v12->_state = 0;

  return v12;
}

@end