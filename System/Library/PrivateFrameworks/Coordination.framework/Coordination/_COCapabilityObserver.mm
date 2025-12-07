@interface _COCapabilityObserver
- (_COCapabilityObserver)initWithCapability:(id)capability cluster:(id)cluster block:(id)block;
- (id)description;
- (void)notify:(BOOL)notify;
@end

@implementation _COCapabilityObserver

- (_COCapabilityObserver)initWithCapability:(id)capability cluster:(id)cluster block:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  clusterCopy = cluster;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = _COCapabilityObserver;
  v11 = [(_COCapabilityObserver *)&v22 init];
  if (v11)
  {
    v12 = [capabilityCopy copy];
    capability = v11->_capability;
    v11->_capability = v12;

    v14 = [clusterCopy copy];
    cluster = v11->_cluster;
    v11->_cluster = v14;

    v16 = [blockCopy copy];
    block = v11->_block;
    v11->_block = v16;

    *&v11->_notified = 0;
    v18 = COLogForCategory(3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = v11->_capability;
      v21 = v11->_cluster;
      *buf = 134218498;
      v24 = v11;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_debug_impl(&dword_244328000, v18, OS_LOG_TYPE_DEBUG, "%p observing Capability(%@) in Cluster(%@)", buf, 0x20u);
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  capability = [(_COCapabilityObserver *)self capability];
  cluster = [(_COCapabilityObserver *)self cluster];
  notified = [(_COCapabilityObserver *)self notified];
  lastValue = [(_COCapabilityObserver *)self lastValue];
  v8 = 78;
  if (lastValue)
  {
    v9 = 89;
  }

  else
  {
    v9 = 78;
  }

  if (notified)
  {
    v8 = 89;
  }

  v10 = [v3 stringWithFormat:@"{ Capability Observer = %p, for Capability(%@) in Cluster(%@), notified(%c) lastValue(%c) }", self, capability, cluster, v8, v9];

  return v10;
}

- (void)notify:(BOOL)notify
{
  notifyCopy = notify;
  v16 = *MEMORY[0x277D85DE8];
  if (![(_COCapabilityObserver *)self notified])
  {
    v9 = COLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 134218498;
      if (notifyCopy)
      {
        v10 = 89;
      }

      else
      {
        v10 = 78;
      }

      *&v11[4] = self;
      v12 = 2112;
      selfCopy3 = self;
      v14 = 1024;
      v15 = v10;
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "Observer(%p/%@) invoking block for initial value(%c)", v11, 0x1Cu);
    }

    [(_COCapabilityObserver *)self setNotified:1];
    goto LABEL_15;
  }

  lastValue = [(_COCapabilityObserver *)self lastValue];
  block = COLogForCategory(3);
  v7 = os_log_type_enabled(block, OS_LOG_TYPE_DEFAULT);
  if (lastValue != notifyCopy)
  {
    if (v7)
    {
      *v11 = 134218498;
      if (notifyCopy)
      {
        v8 = 89;
      }

      else
      {
        v8 = 78;
      }

      *&v11[4] = self;
      v12 = 2112;
      selfCopy3 = self;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_244328000, block, OS_LOG_TYPE_DEFAULT, "Observer(%p/%@) invoking block for changed value(%c)", v11, 0x1Cu);
    }

LABEL_15:
    [(_COCapabilityObserver *)self setLastValue:notifyCopy, *v11];
    block = [(_COCapabilityObserver *)self block];
    (*(block + 16))(block, notifyCopy);
    goto LABEL_16;
  }

  if (v7)
  {
    *v11 = 134218242;
    *&v11[4] = self;
    v12 = 2112;
    selfCopy3 = self;
    _os_log_impl(&dword_244328000, block, OS_LOG_TYPE_DEFAULT, "Observer(%p/%@) not invoking block due to no change", v11, 0x16u);
  }

LABEL_16:
}

@end