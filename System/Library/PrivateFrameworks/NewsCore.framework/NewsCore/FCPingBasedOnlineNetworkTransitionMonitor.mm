@interface FCPingBasedOnlineNetworkTransitionMonitor
- (FCPingBasedOnlineNetworkTransitionMonitor)init;
- (FCPingBasedOnlineNetworkTransitionMonitor)initWithConfigurationManager:(id)manager hostName:(id)name port:(unsigned __int16)port;
- (NSDate)dateOfLastTransition;
- (id)notifyWhenTransitionOccursOnQueue:(id)queue withBlock:(id)block;
@end

@implementation FCPingBasedOnlineNetworkTransitionMonitor

- (FCPingBasedOnlineNetworkTransitionMonitor)initWithConfigurationManager:(id)manager hostName:(id)name port:(unsigned __int16)port
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = swift_unknownObjectRetain();
  return PingBasedOnlineNetworkTransitionMonitor.init(configurationManager:hostName:port:)(v9, v6, v8, port);
}

- (NSDate)dateOfLastTransition
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v6 + v8));
  sub_1B6403FD4(v6 + v7, v5);
  os_unfair_lock_unlock((v6 + v8));

  v10 = sub_1B67D877C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1B67D86DC();
    (*(v11 + 8))(v5, v10);
    v13 = v14;
  }

  return v13;
}

- (id)notifyWhenTransitionOccursOnQueue:(id)queue withBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  v10 = sub_1B64B007C(queueCopy, sub_1B64B2724, v7);

  return v10;
}

- (FCPingBasedOnlineNetworkTransitionMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end