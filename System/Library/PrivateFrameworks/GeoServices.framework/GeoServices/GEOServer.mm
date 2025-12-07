@interface GEOServer
- (GEODaemon)daemon;
- (OS_dispatch_queue)messageQueue;
@end

@implementation GEOServer

- (OS_dispatch_queue)messageQueue
{
  qos_class_self();
  global_queue = geo_get_global_queue();

  return global_queue;
}

- (GEODaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end