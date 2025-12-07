@interface NDProxyScoringServiceConnection
+ (NDProxyScoringServiceConnection)sharedInstance;
- (void)popInterest;
- (void)pushInterest;
@end

@implementation NDProxyScoringServiceConnection

+ (NDProxyScoringServiceConnection)sharedInstance
{
  if (qword_280C8CB98 != -1)
  {
    swift_once();
  }

  v3 = qword_280C8C9C0;

  return v3;
}

- (void)pushInterest
{
  selfCopy = self;

  sub_25BE4B7AC();

  v2 = *(&selfCopy->super.isa + OBJC_IVAR___NDProxyScoringServiceConnection_xpcConnectionInterest);
  v3 = __OFADD__(v2, 1);
  v4 = (v2 + 1);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(&selfCopy->super.isa + OBJC_IVAR___NDProxyScoringServiceConnection_xpcConnectionInterest) = v4;

    sub_25BE4B7BC();
  }
}

- (void)popInterest
{
  selfCopy = self;
  ProxyScoringServiceConnection.popInterest()();
}

@end