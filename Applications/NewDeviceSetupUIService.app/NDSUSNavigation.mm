@interface NDSUSNavigation
- (_TtC23NewDeviceSetupUIService15NDSUSNavigation)init;
- (void)proxCardFlowDidDismiss;
@end

@implementation NDSUSNavigation

- (void)proxCardFlowDidDismiss
{
  v3 = sub_100003320(&qword_100026E08, &qword_100015630);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = objc_opt_self();
  selfCopy = self;
  sharedManager = [v7 sharedManager];
  if (sharedManager)
  {
    v10 = sharedManager;
    v11 = String._bridgeToObjectiveC()();
    [v10 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v11];

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = selfCopy;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_10000BEAC(0, 0, v6, &unk_100015698, v15);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC23NewDeviceSetupUIService15NDSUSNavigation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end