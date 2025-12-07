@interface SECServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC10seserviced9SECServer)init;
- (void)deleteApplicationWithIdentifier:(id)identifier reply:(id)reply;
- (void)deleteCredentialWithUuid:(id)uuid reply:(id)reply;
- (void)listCredentialsInternalWithReply:(id)reply;
- (void)queueSessionWithCallbackProxy:(id)proxy reply:(id)reply;
- (void)securityDomainCounterFor:(id)for reply:(id)reply;
@end

@implementation SECServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_100146854(connectionCopy, v9);

  return v10 & 1;
}

- (void)queueSessionWithCallbackProxy:(id)proxy reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001473D8(proxy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (_TtC10seserviced9SECServer)init
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [(SECServer *)self initWithMachServiceName:v3];

  return v4;
}

- (void)listCredentialsInternalWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100318F6C(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)deleteCredentialWithUuid:(id)uuid reply:(id)reply
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);
  selfCopy = self;
  sub_1003192DC(v9, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)deleteApplicationWithIdentifier:(id)identifier reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10031972C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)securityDomainCounterFor:(id)for reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(reply);
  forCopy = for;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;
  v16[5] = v13;
  v16[6] = sub_1000C2784;
  v16[7] = v14;
  sub_1001F9BE8(0, 0, v8, &unk_100416330, v16);
}

@end