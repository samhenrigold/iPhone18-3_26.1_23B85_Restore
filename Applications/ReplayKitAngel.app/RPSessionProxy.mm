@interface RPSessionProxy
- (RPSessionProxy)init;
- (id)currentSessionID;
- (uint64_t)finish;
- (void)startWithSessionType:(id)type;
@end

@implementation RPSessionProxy

- (void)startWithSessionType:(id)type
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10002F464(v4, v6);
}

- (id)currentSessionID
{
  sub_10002F8DC();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RPSessionProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RPSessionProxy();
  return [(RPSessionProxy *)&v3 init];
}

- (uint64_t)finish
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000301D0();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100010E34(0x29286873696E6966, 0xE800000000000000, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_1000114A8(v8);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  return (*((swift_isaMask & *qword_10006B980) + 0xE8))();
}

@end