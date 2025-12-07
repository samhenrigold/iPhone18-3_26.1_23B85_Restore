@interface NDProxyTodayFeedServiceConnection
+ (NDProxyTodayFeedServiceConnection)sharedInstance;
- (void)popInterest;
- (void)pushInterest;
- (void)withTodayFeedService:(id)service;
@end

@implementation NDProxyTodayFeedServiceConnection

+ (NDProxyTodayFeedServiceConnection)sharedInstance
{
  if (qword_280C8C880 != -1)
  {
    swift_once();
  }

  v3 = qword_280C8C888;

  return v3;
}

- (void)withTodayFeedService:(id)service
{
  v4 = _Block_copy(service);
  _Block_copy(v4);
  selfCopy = self;
  sub_25BE2F400(selfCopy, v4);

  _Block_release(v4);
}

- (void)pushInterest
{
  selfCopy = self;

  sub_25BE4B7AC();

  v2 = *(&selfCopy->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionInterest);
  v3 = __OFADD__(v2, 1);
  v4 = (v2 + 1);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(&selfCopy->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionInterest) = v4;

    sub_25BE4B7BC();
  }
}

- (void)popInterest
{
  selfCopy = self;
  ProxyTodayFeedServiceConnection.popInterest()();
}

@end