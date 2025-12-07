@interface WorkoutAppInstallationUtility
- (_TtC11WorkoutCore29WorkoutAppInstallationUtility)init;
- (void)dealloc;
@end

@implementation WorkoutAppInstallationUtility

- (_TtC11WorkoutCore29WorkoutAppInstallationUtility)init
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility(0));
  v6 = specialized WorkoutAppInstallationUtility.init(dependencies:)(v2, v4, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedDeviceConnection = [v3 sharedDeviceConnection];
  if (sharedDeviceConnection)
  {
    v6 = sharedDeviceConnection;
    [sharedDeviceConnection removeObserver_];

    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for WorkoutAppInstallationUtility(0);
    [(WorkoutAppInstallationUtility *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end