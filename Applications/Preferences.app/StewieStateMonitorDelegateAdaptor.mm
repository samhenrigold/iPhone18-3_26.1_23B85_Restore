@interface StewieStateMonitorDelegateAdaptor
- (_TtC11SettingsApp33StewieStateMonitorDelegateAdaptor)init;
- (void)dealloc;
- (void)stateChanged:(id)changed;
@end

@implementation StewieStateMonitorDelegateAdaptor

- (_TtC11SettingsApp33StewieStateMonitorDelegateAdaptor)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_1001600C8, &qword_100117718);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - v5);
  v7 = sub_10004DED0(&qword_1001600C0, &qword_100117710);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = sub_10004DED0(&unk_1001600D0, &unk_100117720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(self + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStream, v14, v11);
  (*(v8 + 32))(self + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStreamContinuation, v10, v7);
  v18.receiver = self;
  v18.super_class = ObjectType;
  return [(StewieStateMonitorDelegateAdaptor *)&v18 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&qword_1001600C0, &qword_100117710);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, self + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStreamContinuation, v4);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v7, v4);
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(StewieStateMonitorDelegateAdaptor *)&v9 dealloc];
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1000D8A24(changedCopy);
}

@end