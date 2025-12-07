@interface Listener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC10migrationd8Listener)init;
- (void)addWithClient:(id)client;
- (void)confirmSelectionWithSelections:(id)selections disabledBundleIDs:(id)ds;
- (void)connectWithCode:(id)code;
- (void)fetchAppContentListWithCompletionHandler:(id)handler;
- (void)peerSupportedSelectionsWithCompletionHandler:(id)handler;
- (void)preflightSelectionWithSelections:(NSSet *)selections completionHandler:(id)handler;
- (void)removeWithCancelled:(BOOL)cancelled;
- (void)runWithClient:(id)client scheme:(unsigned __int8)scheme;
- (void)sendNotificationWithData:(NSData *)data completionHandler:(id)handler;
- (void)sendWithData:(NSData *)data completionHandler:(id)handler;
- (void)supportedSelectionsWithCompletionHandler:(id)handler;
@end

@implementation Listener

- (_TtC10migrationd8Listener)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_actor) = 0;
  v4 = objc_allocWithZone(NSXPCListener);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithMachServiceName:v5];

  *(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_listener) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(Listener *)&v8 init];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100006AD8(connectionCopy);

  return v9 & 1;
}

- (void)runWithClient:(id)client scheme:(unsigned __int8)scheme
{
  schemeCopy = scheme;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100002428(client, schemeCopy);
  swift_unknownObjectRelease();
}

- (void)connectWithCode:(id)code
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (*(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {
    v7 = v4;
    selfCopy = self;

    sub_1000076D8(v7, v6);
  }
}

- (void)supportedSelectionsWithCompletionHandler:(id)handler
{
  v5 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000176D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000176E0;
  v12[5] = v11;
  selfCopy = self;
  sub_1000059C4(0, 0, v7, &unk_1000176E8, v12);
}

- (void)peerSupportedSelectionsWithCompletionHandler:(id)handler
{
  v5 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000176B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000176C0;
  v12[5] = v11;
  selfCopy = self;
  sub_1000059C4(0, 0, v7, &unk_1000176C8, v12);
}

- (void)preflightSelectionWithSelections:(NSSet *)selections completionHandler:(id)handler
{
  v7 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = selections;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017698;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000176A0;
  v14[5] = v13;
  selectionsCopy = selections;
  selfCopy = self;
  sub_1000059C4(0, 0, v9, &unk_1000176A8, v14);
}

- (void)confirmSelectionWithSelections:(id)selections disabledBundleIDs:(id)ds
{
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {
    selfCopy = self;

    sub_1000088F0(v5, v6);
  }
}

- (void)addWithClient:(id)client
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100003848(client);
  swift_unknownObjectRelease();
}

- (void)removeWithCancelled:(BOOL)cancelled
{
  selfCopy = self;
  sub_100003F2C(cancelled);
}

- (void)sendWithData:(NSData *)data completionHandler:(id)handler
{
  v7 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017660;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017668;
  v14[5] = v13;
  dataCopy = data;
  selfCopy = self;
  sub_1000059C4(0, 0, v9, &unk_100017670, v14);
}

- (void)sendNotificationWithData:(NSData *)data completionHandler:(id)handler
{
  v7 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017640;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017648;
  v14[5] = v13;
  dataCopy = data;
  selfCopy = self;
  sub_1000059C4(0, 0, v9, &unk_100017650, v14);
}

- (void)fetchAppContentListWithCompletionHandler:(id)handler
{
  v5 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000175F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100017600;
  v12[5] = v11;
  selfCopy = self;
  sub_1000059C4(0, 0, v7, &unk_100017610, v12);
}

@end