@interface AchievementDataSource
- (_TtC23FitnessCoachingServices21AchievementDataSource)init;
- (void)monthlyChallengeWithCompletion:(id)completion;
- (void)progressAchievementsWithNames:(NSArray *)names completion:(id)completion;
@end

@implementation AchievementDataSource

- (_TtC23FitnessCoachingServices21AchievementDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)monthlyChallengeWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2278C7840();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2278CDDD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2278CDDE0;
  v12[5] = v11;
  selfCopy = self;
  sub_227888270(0, 0, v7, &unk_2278CDDE8, v12);
}

- (void)progressAchievementsWithNames:(NSArray *)names completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = names;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2278C7840();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2278CDD80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2278C9FF0;
  v14[5] = v13;
  namesCopy = names;
  selfCopy = self;
  sub_227888270(0, 0, v9, &unk_2278CDDA0, v14);
}

@end