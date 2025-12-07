@interface VoiceRefreshViewModel
- (void)timerFired;
@end

@implementation VoiceRefreshViewModel

- (void)timerFired
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_26EF3B30C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26EF3B2DC();
  swift_retain_n();
  v7 = sub_26EF3B2CC();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = self;
  sub_26EE2C388(0, 0, v5, &unk_26EF41578, v8);
}

@end