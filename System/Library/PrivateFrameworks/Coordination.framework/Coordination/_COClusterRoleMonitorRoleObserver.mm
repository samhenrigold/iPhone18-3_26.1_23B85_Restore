@interface _COClusterRoleMonitorRoleObserver
- (_COClusterRoleMonitorRoleObserver)initWithRole:(id)role inCluster:(id)cluster queue:(id)queue block:(id)block;
- (id)description;
- (void)notify:(id)notify;
@end

@implementation _COClusterRoleMonitorRoleObserver

- (_COClusterRoleMonitorRoleObserver)initWithRole:(id)role inCluster:(id)cluster queue:(id)queue block:(id)block
{
  roleCopy = role;
  clusterCopy = cluster;
  queueCopy = queue;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = _COClusterRoleMonitorRoleObserver;
  v15 = [(_COClusterRoleMonitorRoleObserver *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_role, role);
    v17 = [clusterCopy copy];
    cluster = v16->_cluster;
    v16->_cluster = v17;

    objc_storeStrong(&v16->_queue, queue);
    v19 = [blockCopy copy];
    block = v16->_block;
    v16->_block = v19;

    lastValue = v16->_lastValue;
    v16->_lastValue = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  role = [(_COClusterRoleMonitorRoleObserver *)self role];
  cluster = [(_COClusterRoleMonitorRoleObserver *)self cluster];
  v8 = [v3 stringWithFormat:@"<%@: %p, role = %@, cluster = %@>", v5, self, role, cluster];

  return v8;
}

- (void)notify:(id)notify
{
  notifyCopy = notify;
  lastValue = [(_COClusterRoleMonitorRoleObserver *)self lastValue];

  if (!lastValue)
  {
    v8 = COLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_COClusterRoleMonitorRoleObserver notify:];
    }

    goto LABEL_10;
  }

  lastValue2 = [(_COClusterRoleMonitorRoleObserver *)self lastValue];
  v7 = [notifyCopy isEqualToSet:lastValue2];

  v8 = COLogForCategory(2);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((v7 & 1) == 0)
  {
    if (v9)
    {
      [_COClusterRoleMonitorRoleObserver notify:];
    }

LABEL_10:

    [(_COClusterRoleMonitorRoleObserver *)self setLastValue:notifyCopy];
    queue = [(_COClusterRoleMonitorRoleObserver *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44___COClusterRoleMonitorRoleObserver_notify___block_invoke;
    v11[3] = &unk_278E12368;
    v11[4] = self;
    v12 = notifyCopy;
    dispatch_async(queue, v11);

    goto LABEL_11;
  }

  if (v9)
  {
    [_COClusterRoleMonitorRoleObserver notify:];
  }

LABEL_11:
}

@end