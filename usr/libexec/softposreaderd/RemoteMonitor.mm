@interface RemoteMonitor
- (_TtC14softposreaderd13RemoteMonitor)init;
- (void)signalWithEvent:(unsigned __int16)event component:(unsigned __int8)component origin:(unsigned __int8)origin details:(id)details reply:(id)reply;
@end

@implementation RemoteMonitor

- (void)signalWithEvent:(unsigned __int16)event component:(unsigned __int8)component origin:(unsigned __int8)origin details:(id)details reply:(id)reply
{
  originCopy = origin;
  componentCopy = component;
  eventCopy = event;
  v12 = _Block_copy(reply);
  if (details)
  {
    details = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v12);
  selfCopy = self;
  sub_10018D488(eventCopy, componentCopy, originCopy, details, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (_TtC14softposreaderd13RemoteMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end