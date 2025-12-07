@interface PersonalizedReflectionPromptGenerator
- (_TtC26MomentsIntelligenceService37PersonalizedReflectionPromptGenerator)init;
- (void)generatePersonalizedReflectionPromptWithSystemPrompt:(id)prompt input:(id)input completion:(id)completion;
@end

@implementation PersonalizedReflectionPromptGenerator

- (void)generatePersonalizedReflectionPromptWithSystemPrompt:(id)prompt input:(id)input completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = _Block_copy(completion);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v10;
  v18[5] = v12;
  v18[6] = v13;
  v18[7] = v15;
  v18[8] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> ();
  v18[9] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)partial apply, v18);
}

- (_TtC26MomentsIntelligenceService37PersonalizedReflectionPromptGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PersonalizedReflectionPromptGenerator();
  return [(PersonalizedReflectionPromptGenerator *)&v3 init];
}

@end