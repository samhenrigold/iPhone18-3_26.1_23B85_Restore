@interface MonitoredAccountStoreDelegateAdaptor
- (_TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor)init;
- (void)dealloc;
@end

@implementation MonitoredAccountStoreDelegateAdaptor

- (_TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - v5);
  v7 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(self + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsChangeStream, v14, v11);
  (*(v8 + 32))(self + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsStreamContinuation, v10, v7);
  v18.receiver = self;
  v18.super_class = ObjectType;
  return [(MonitoredAccountStoreDelegateAdaptor *)&v18 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, self + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsStreamContinuation, v4);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v7, v4);
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(MonitoredAccountStoreDelegateAdaptor *)&v9 dealloc];
}

@end