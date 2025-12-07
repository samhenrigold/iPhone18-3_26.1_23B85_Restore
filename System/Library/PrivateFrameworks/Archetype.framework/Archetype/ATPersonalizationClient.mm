@interface ATPersonalizationClient
- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler;
- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler;
@end

@implementation ATPersonalizationClient

- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = events;
  *(v10 + 24) = v9;
  *(v10 + 32) = self;
  v11 = sub_240FAEA00();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240FAF498;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240FAF4A0;
  v13[5] = v12;
  selfCopy = self;
  sub_240FACE24(0, 0, v8, &unk_240FAF4A8, v13);
}

- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420);
  MEMORY[0x28223BE20]();
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = k;
  v16[3] = start;
  v16[4] = end;
  v16[5] = type;
  v16[6] = v15;
  v16[7] = self;
  v17 = sub_240FAEA00();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_240FAF478;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_240FAF480;
  v19[5] = v18;
  typeCopy = type;
  selfCopy = self;
  sub_240FACE24(0, 0, v14, &unk_240FAF488, v19);
}

- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = identifier;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_240FAEA00();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240FAF430;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240FAF440;
  v13[5] = v12;
  identifierCopy = identifier;
  selfCopy = self;
  sub_240FACE24(0, 0, v8, &unk_240FAF450, v13);
}

@end