@interface MRDGroupSessionDiscoverySession
- (MRDGroupSession)session;
- (NSArray)availableOutputDevices;
- (NSString)description;
- (id)addOutputDevicesChangedCallback:(id)callback;
- (void)handleGroupSessionServerStart:(id)start;
- (void)handleGroupSessionServerStop:(id)stop;
- (void)handleSystemGroupSessionStart:(id)start;
- (void)handleSystemGroupSessionStop:(id)stop;
- (void)removeOutputDevicesChangedCallback:(id)callback;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)session:(id)session didUpdateParticipants:(id)participants;
@end

@implementation MRDGroupSessionDiscoverySession

- (NSArray)availableOutputDevices
{
  selfCopy = self;
  sub_1001BC5A8(&qword_1005216D8, &unk_10044EBD0);
  sub_100013378(sub_10001340C);

  sub_100013424();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (MRDGroupSession)session
{
  selfCopy = self;
  sub_1001BC5A8(&qword_100521740, &qword_10044EBE0);
  sub_100013378(sub_1001C9600);

  return v4;
}

- (id)addOutputDevicesChangedCallback:(id)callback
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = _Block_copy(callback);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  _Block_copy(v12);
  UUID.init()();
  v19 = selfCopy;
  v20 = v11;
  v21 = sub_1001C9334;
  v22 = v13;
  sub_100013378(sub_1001C95E8);
  (*((swift_isaMask & selfCopy->super.isa) + 0x88))();
  sub_100013424();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v12 + 2))(v12, isa);

  _Block_release(v12);
  (*(v6 + 16))(v9, v11, v5);
  v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  (*(v6 + 8))(v11, v5);

  return v16;
}

- (void)removeOutputDevicesChangedCallback:(id)callback
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001C49B0(v5);

  sub_100026A44(v5);
}

- (NSString)description
{
  selfCopy = self;
  sub_1001C4CC4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C4FBC(session, state);
  swift_unknownObjectRelease();
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C5290(session, v6);
  swift_unknownObjectRelease();
}

- (void)handleGroupSessionServerStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_1001C8694();
}

- (void)handleGroupSessionServerStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_1001C883C();
}

- (void)handleSystemGroupSessionStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_1001C8A1C();
}

- (void)handleSystemGroupSessionStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_1001C8BC4();
}

@end