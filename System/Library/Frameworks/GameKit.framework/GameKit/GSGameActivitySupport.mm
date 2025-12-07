@interface GSGameActivitySupport
+ (_TtC7GameKit21GSGameActivitySupport)shared;
- (_TtC7GameKit21GSGameActivitySupport)init;
- (void)loadAllPendingActivitiesForCurrentGameWithCompletionHandler:(id)handler;
@end

@implementation GSGameActivitySupport

+ (_TtC7GameKit21GSGameActivitySupport)shared
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2811ED610;

  return v3;
}

- (void)loadAllPendingActivitiesForCurrentGameWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2186B7B7C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2186B9230;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B9240;
  v12[5] = v11;
  selfCopy = self;
  sub_2186A12F8(0, 0, v7, &unk_2186B9250, v12);
}

- (_TtC7GameKit21GSGameActivitySupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end