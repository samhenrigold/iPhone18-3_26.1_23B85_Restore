@interface CoreTelephonyClientActiveSubscriptionsDelegateAdaptor
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
@end

@implementation CoreTelephonyClientActiveSubscriptionsDelegateAdaptor

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v9 + 16))(&v13 - v10, self + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStreamContinuation, v8);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, selfCopy + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStreamContinuation, v4);
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v7, v4);
  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(CoreTelephonyClientActiveSubscriptionsDelegateAdaptor *)&v13 dealloc];
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  v5 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  selfCopy = self;
  AsyncStream.Continuation.yield<A>()();

  (*(v6 + 8))(v8, v5);
}

- (void)activeSubscriptionsDidChange
{
  v3 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  selfCopy = self;
  AsyncStream.Continuation.yield<A>()();

  (*(v4 + 8))(v6, v3);
}

@end