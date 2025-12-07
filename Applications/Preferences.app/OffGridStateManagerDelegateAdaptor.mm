@interface OffGridStateManagerDelegateAdaptor
- (_TtC11SettingsApp34OffGridStateManagerDelegateAdaptor)init;
- (void)dealloc;
- (void)manager:(id)manager offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status context:(id)context;
@end

@implementation OffGridStateManagerDelegateAdaptor

- (_TtC11SettingsApp34OffGridStateManagerDelegateAdaptor)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_10015E9D8, &unk_100115CB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - v5);
  v7 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(self + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStream, v14, v11);
  (*(v8 + 32))(self + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStreamContinuation, v10, v7);
  v18.receiver = self;
  v18.super_class = ObjectType;
  return [(OffGridStateManagerDelegateAdaptor *)&v18 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, self + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStreamContinuation, v4);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v7, v4);
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(OffGridStateManagerDelegateAdaptor *)&v9 dealloc];
}

- (void)manager:(id)manager offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status context:(id)context
{
  v8 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  v13[15] = updated == 2;
  selfCopy = self;
  sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  AsyncStream.Continuation.yield(_:)();

  (*(v9 + 8))(v11, v8);
}

@end