@interface NearbySessionsListenerImplementation
- (BOOL)hasDiscoveredSessionForIdentifier:(id)identifier;
- (MRDGroupSessionListenerDelegate)delegate;
- (_TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation)init;
- (void)collectDiagnostic:(id)diagnostic;
- (void)requestToJoinDiscoveredSession:(NSString *)session completion:(id)completion;
- (void)requestToJoinSession:(MRGroupSessionToken *)session completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation NearbySessionsListenerImplementation

- (MRDGroupSessionListenerDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)hasDiscoveredSessionForIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1001CC22C(v4, v6);

  return v4 & 1;
}

- (void)requestToJoinDiscoveredSession:(NSString *)session completion:(id)completion
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = session;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10044EE08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10044EE10;
  v14[5] = v13;
  sessionCopy = session;
  selfCopy = self;
  sub_1001D34BC(0, 0, v9, &unk_10044EE18, v14);
}

- (void)requestToJoinSession:(MRGroupSessionToken *)session completion:(id)completion
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = session;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10044EDC0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10044EDD0;
  v14[5] = v13;
  sessionCopy = session;
  selfCopy = self;
  sub_1001D34BC(0, 0, v9, &unk_10044EDE0, v14);
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  selfCopy = self;
  sub_1001D2C0C(diagnostic);
}

- (_TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end