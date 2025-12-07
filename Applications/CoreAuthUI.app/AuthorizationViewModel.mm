@interface AuthorizationViewModel
- (_TtC10CoreAuthUI22AuthorizationViewModel)init;
- (void)authenticationResult:(id)result error:(id)error context:(id)context;
- (void)biometricNoMatch;
- (void)biometryDidBecomeIdle;
@end

@implementation AuthorizationViewModel

- (_TtC10CoreAuthUI22AuthorizationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationResult:(id)result error:(id)error context:(id)context
{
  if (result)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_1000688AC(error);
}

- (void)biometricNoMatch
{
  selfCopy = self;
  sub_100067418();
}

- (void)biometryDidBecomeIdle
{
  v3 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_100067B18(0, 0, v5, &unk_100079F58, v7);
}

@end