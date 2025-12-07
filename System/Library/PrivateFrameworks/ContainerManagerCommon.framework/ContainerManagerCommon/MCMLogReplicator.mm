@interface MCMLogReplicator
- (MCMLogReplicator)initWithWorkloop:(id)workloop;
- (id)volumeChangedDispatchQueue;
- (void)volumeChangedWithEvents:(unint64_t)events newVolumeState:(unint64_t)state;
@end

@implementation MCMLogReplicator

- (void)volumeChangedWithEvents:(unint64_t)events newVolumeState:(unint64_t)state
{
  v6 = *MEMORY[0x1E69E9840];
  if ((state & 3) != 0)
  {
    container_internal_get_first_boot_uuid();
    v4 = containermanager_copy_global_configuration();
    defaultUser = [v4 defaultUser];
    [defaultUser UID];
    container_log_replication_enable_to_uid_relative_path();
  }

  else
  {

    MEMORY[0x1EEE71AA0](self, a2, events);
  }
}

- (id)volumeChangedDispatchQueue
{

  return [(MCMLogReplicator *)self queue];
}

- (MCMLogReplicator)initWithWorkloop:(id)workloop
{
  v12 = *MEMORY[0x1E69E9840];
  workloopCopy = workloop;
  v11.receiver = self;
  v11.super_class = MCMLogReplicator;
  v5 = [(MCMLogReplicator *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);

    v8 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.log_diverter", v7, workloopCopy);
    queue = v5->_queue;
    v5->_queue = v8;
  }

  return v5;
}

@end