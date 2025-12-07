@interface PregnancyStateInputSignal
- (NSString)description;
- (_TtC14HealthPlatform25PregnancyStateInputSignal)init;
@end

@implementation PregnancyStateInputSignal

- (NSString)description
{
  v2 = sub_22855C85C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280DEB2E8);
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v10(v6, v8, v2);
  sub_22855E19C();
  v11 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_22855D1BC();
  (*(v3 + 8))(v8, v2);
  v12 = sub_22855D17C();

  return v12;
}

- (_TtC14HealthPlatform25PregnancyStateInputSignal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end