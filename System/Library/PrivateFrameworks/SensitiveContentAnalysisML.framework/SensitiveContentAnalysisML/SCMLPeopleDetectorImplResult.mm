@interface SCMLPeopleDetectorImplResult
- (NSDictionary)people;
- (_TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult)init;
- (void)setPeople:(id)people;
@end

@implementation SCMLPeopleDetectorImplResult

- (NSDictionary)people
{
  swift_beginAccess();
  type metadata accessor for SCMLPersonAttributes();

  v2 = sub_1B8AF0598();

  return v2;
}

- (void)setPeople:(id)people
{
  type metadata accessor for SCMLPersonAttributes();
  v4 = sub_1B8AF05B8();
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end