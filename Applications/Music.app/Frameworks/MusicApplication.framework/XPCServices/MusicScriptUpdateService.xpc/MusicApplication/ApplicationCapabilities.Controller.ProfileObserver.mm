@interface ApplicationCapabilities.Controller.ProfileObserver
- (_TtCCV9MusicCore23ApplicationCapabilities10ControllerP33_3C92A9FA31E0FE3D8D536795352BB0D115ProfileObserver)init;
- (void)dealloc;
@end

@implementation ApplicationCapabilities.Controller.ProfileObserver

- (_TtCCV9MusicCore23ApplicationCapabilities10ControllerP33_3C92A9FA31E0FE3D8D536795352BB0D115ProfileObserver)init
{
  swift_weakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver(0, v3);
  v4 = [(ApplicationCapabilities.Controller.ProfileObserver *)&v9 init];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedConnection];
  if (result)
  {
    v8 = result;
    [(ApplicationCapabilities.Controller.ProfileObserver *)result registerObserver:v6];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedConnection = [v3 sharedConnection];
  if (sharedConnection)
  {
    v6 = sharedConnection;
    [sharedConnection unregisterObserver:selfCopy];

    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver(0, v7);
    [(ApplicationCapabilities.Controller.ProfileObserver *)&v8 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end