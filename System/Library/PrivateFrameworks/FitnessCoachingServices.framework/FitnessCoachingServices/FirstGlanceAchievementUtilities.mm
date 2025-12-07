@interface FirstGlanceAchievementUtilities
+ (void)achievementShouldSuggestRecoveryWithAchievement:(ACHAchievement *)achievement completion:(id)completion;
- (FirstGlanceAchievementUtilities)init;
@end

@implementation FirstGlanceAchievementUtilities

+ (void)achievementShouldSuggestRecoveryWithAchievement:(ACHAchievement *)achievement completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = achievement;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2278C7840();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2278C9FE8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2278C9FF0;
  v14[5] = v13;
  achievementCopy = achievement;
  sub_227888270(0, 0, v9, &unk_2278CDDA0, v14);
}

- (FirstGlanceAchievementUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FirstGlanceAchievementUtilities();
  return [(FirstGlanceAchievementUtilities *)&v3 init];
}

@end