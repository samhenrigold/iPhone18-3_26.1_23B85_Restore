@interface MRDNetworkMonitor
- (MRDNetworkMonitor)init;
- (void)cancel;
- (void)startWithQueue:(id)queue;
@end

@implementation MRDNetworkMonitor

- (void)startWithQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  NWPathMonitor.start(queue:)();
}

- (void)cancel
{
  selfCopy = self;
  NWPathMonitor.cancel()();
}

- (MRDNetworkMonitor)init
{
  v3 = OBJC_IVAR___MRDNetworkMonitor_monitor;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(&self->super.isa + v3) = NWPathMonitor.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for NetworkMonitor();
  return [(MRDNetworkMonitor *)&v5 init];
}

@end