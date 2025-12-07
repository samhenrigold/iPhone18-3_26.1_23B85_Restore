@interface GKChallengeDefinitionSupport
+ (_TtC7GameKit28GKChallengeDefinitionSupport)shared;
- (_TtC7GameKit28GKChallengeDefinitionSupport)init;
- (void)hasActiveChallengesWithDefinitionID:(NSString *)d completionHandler:(id)handler;
- (void)loadChallengeDefinitionsWithCompletionHandler:(id)handler;
@end

@implementation GKChallengeDefinitionSupport

+ (_TtC7GameKit28GKChallengeDefinitionSupport)shared
{
  if (qword_27CC07C28 != -1)
  {
    swift_once();
  }

  v3 = qword_27CC07C30;

  return v3;
}

- (void)loadChallengeDefinitionsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_2186B9720;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B9728;
  v12[5] = v11;
  selfCopy = self;
  sub_2186A12F8(0, 0, v7, &unk_2186B9730, v12);
}

- (void)hasActiveChallengesWithDefinitionID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2186B7B7C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2186B96D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2186B96E0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_2186A12F8(0, 0, v9, &unk_2186B96F0, v14);
}

- (_TtC7GameKit28GKChallengeDefinitionSupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end