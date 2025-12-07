@interface ProximitySessionManager
- (void)extensionDeviceLost;
@end

@implementation ProximitySessionManager

- (void)extensionDeviceLost
{
  v3 = sub_100003320(&qword_100026E08, &qword_100015630);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = objc_opt_self();

  sharedManager = [v7 sharedManager];
  if (sharedManager)
  {
    v9 = sharedManager;
    v10 = String._bridgeToObjectiveC()();
    [v9 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v10];

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = self;
    sub_10000C16C(0, 0, v6, &unk_100015438, v13);
  }

  else
  {
    __break(1u);
  }
}

@end