@interface WorkoutTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin17WorkoutTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)queryWithStartDate:(id)date endDate:(id)endDate completion:(id)completion;
@end

@implementation WorkoutTaskServer

- (_TtC25FitnessIntelligencePlugin17WorkoutTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_749B8();
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v14 = sub_4F1B4(v11, configuration, clientCopy, delegate);

  swift_unknownObjectRelease();
  return v14;
}

+ (id)taskIdentifier
{
  _s25FitnessIntelligencePlugin17WorkoutTaskServerC14taskIdentifierSSyFZ_0();
  v2 = sub_75598();

  return v2;
}

- (id)exportedInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence26WorkoutTaskServerInterface_];

  return v2;
}

- (id)remoteInterface
{
  v2 = [objc_allocWithZone(NSXPCInterface) init];

  return v2;
}

- (void)queryWithStartDate:(id)date endDate:(id)endDate completion:(id)completion
{
  v7 = sub_74968();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = _Block_copy(completion);
  sub_74938();
  sub_74938();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  selfCopy = self;
  WorkoutTaskServer.query(startDate:endDate:completion:)(v13, v11, sub_199A0, v15);

  v17 = *(v8 + 8);
  v17(v11, v7);
  v17(v13, v7);
}

@end