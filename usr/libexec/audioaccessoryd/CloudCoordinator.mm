@interface CloudCoordinator
- (BOOL)isEqual:(id)equal;
- (Class)superclass;
- (NSString)cloudContainerIdentifier;
- (OS_dispatch_queue)pushDelegateQueue;
- (_TtC15audioaccessoryd16CloudCoordinator)self;
- (id)performSelector:(SEL)selector;
- (id)performSelector:(SEL)selector withObject:(id)object;
- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
- (int64_t)hash;
- (void)accountDidChange:(id)change;
- (void)didReceiveWithMessage:(id)message;
- (void)didReceiveWithPublicToken:(id)token;
- (void)didReceiveWithToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)onIdentityUpdateNotification;
- (void)setPushDelegateQueue:(id)queue;
@end

@implementation CloudCoordinator

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_100102AE0(v4);
  return 0;
}

- (int64_t)hash
{
  v2 = [ cloudContainerIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.hashValue.getter();

  return v3;
}

- (Class)superclass
{
  v2 = type metadata accessor for CloudCoordinator(0);

  return _swift_getObjCClassFromMetadata(v2);
}

- (_TtC15audioaccessoryd16CloudCoordinator)self
{

  return v2;
}

- (id)performSelector:(SEL)selector
{
  cloudContainerIdentifier = [(CloudCoordinator *)self cloudContainerIdentifier];

  return cloudContainerIdentifier;
}

- (id)performSelector:(SEL)selector withObject:(id)object
{
  if (object)
  {

    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v5 = [(CloudCoordinator *)self cloudContainerIdentifier:v7];

  sub_100102AE0(&v7);
  return v5;
}

- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  if (!object)
  {
    v11 = 0u;
    v12 = 0u;
    swift_unknownObjectRetain();

    if (withObject)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!withObject)
  {
    goto LABEL_5;
  }

LABEL_3:
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  v7 = [(CloudCoordinator *)self cloudContainerIdentifier:v9];

  sub_100102AE0(&v9);
  sub_100102AE0(&v11);
  return v7;
}

- (OS_dispatch_queue)pushDelegateQueue
{

  v2 = sub_1001409C4();

  return v2;
}

- (void)setPushDelegateQueue:(id)queue
{
  v3 = *self->$__lazy_storage_$_pushDelegateQueue;
  *self->$__lazy_storage_$_pushDelegateQueue = queue;
  queueCopy = queue;

  sub_100163058(v3);
}

- (void)onIdentityUpdateNotification
{

  sub_10014D774(v2);
}

- (void)accountDidChange:(id)change
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001501E4(v7);

  (*(v4 + 8))(v6, v3);
}

- (NSString)cloudContainerIdentifier
{
  type metadata accessor for CloudCoordinatorConfiguration(0);

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)didReceiveWithPublicToken:(id)token
{
  tokenCopy = token;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  v10 = Data.hexString.getter(v4, v6);
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "APS public token: <%@>", 22, 2, v9);
  sub_1000EF870(v4, v6);
}

- (void)didReceiveWithToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_100162938(v10, v12, v13, v15, v16, v18);

  sub_1000EF870(v10, v12);
}

- (void)didReceiveWithMessage:(id)message
{
  messageCopy = message;

  sub_10015BD68(messageCopy);
}

@end