@interface RDAccountPersonIDSaltObserver
- (NSString)description;
- (NSString)propertyName;
- (NSUUID)uuid;
- (RDAccountPersonIDSaltObserver)init;
- (RDAccountPersonIDSaltObserver)initWithAccountObjectID:(id)d accountType:(int64_t)type initialSaltValue:(id)value callbackQueue:(id)queue successHandler:(id)handler errorHandler:(id)errorHandler;
- (_TtP7remindd20ObservingAccountInfo_)account;
- (void)dealloc;
- (void)notify:(id)notify;
- (void)setPropertyName:(id)name;
@end

@implementation RDAccountPersonIDSaltObserver

- (NSUUID)uuid
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid, v3, v6);
  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v3);

  return v9.super.isa;
}

- (_TtP7remindd20ObservingAccountInfo_)account
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (RDAccountPersonIDSaltObserver)initWithAccountObjectID:(id)d accountType:(int64_t)type initialSaltValue:(id)value callbackQueue:(id)queue successHandler:(id)handler errorHandler:(id)errorHandler
{
  v13 = _Block_copy(handler);
  v14 = _Block_copy(errorHandler);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  dCopy = d;
  valueCopy = value;
  return sub_10059CA8C(dCopy, type, value, queue, sub_1002A8A6C, v15, sub_10059EB0C, v16);
}

- (NSString)propertyName
{
  v2 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName + 8);

  v3 = String._bridgeToObjectiveC()();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (void)setPropertyName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = (self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName);
  v13 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName + 8);
  *v12 = v4;
  v12[1] = v5;

  v13, v5, v6, v7, v8, v9, v10, v11;
}

- (void)notify:(id)notify
{
  if (notify)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10059DBB4(v6);

  sub_1000050A4(v6, &qword_100939ED0, &qword_100791B10);
}

- (NSString)description
{
  selfCopy = self;
  sub_10059DEAC();
  v4 = v3;

  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6 = 1;
  selfCopy = self;

  CurrentValueSubject.send(completion:)();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(RDAccountPersonIDSaltObserver *)&v5 dealloc];
}

- (RDAccountPersonIDSaltObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end