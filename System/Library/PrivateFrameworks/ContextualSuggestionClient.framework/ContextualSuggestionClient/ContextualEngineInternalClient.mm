@interface ContextualEngineInternalClient
- (_TtC26ContextualSuggestionClient30ContextualEngineInternalClient)init;
- (void)fetchAllSnapshotsWithCompletion:(id)completion;
- (void)fetchSnapshotOverrideWithCompletion:(id)completion;
- (void)overrideWithSnapshot:(ATXContextualSuggestionSnapshot *)snapshot completion:(id)completion;
- (void)updateWithCompletion:(id)completion;
@end

@implementation ContextualEngineInternalClient

- (void)fetchAllSnapshotsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2441D8D9C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2441DB238;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB240;
  v12[5] = v11;

  sub_2441AD2EC(0, 0, v7, &unk_2441DB248, v12);
}

- (void)fetchSnapshotOverrideWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2441D8D9C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2441DB218;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB220;
  v12[5] = v11;

  sub_2441AD2EC(0, 0, v7, &unk_2441DB228, v12);
}

- (void)overrideWithSnapshot:(ATXContextualSuggestionSnapshot *)snapshot completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = snapshot;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2441D8D9C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DB1F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2441DB200;
  v14[5] = v13;
  snapshotCopy = snapshot;

  sub_2441AD2EC(0, 0, v9, &unk_2441DB208, v14);
}

- (void)updateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2441D8D9C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2441DB1B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB1C0;
  v12[5] = v11;

  sub_2441AD2EC(0, 0, v7, &unk_2441DB1D0, v12);
}

- (_TtC26ContextualSuggestionClient30ContextualEngineInternalClient)init
{
  swift_defaultActor_initialize();
  *&self->_anon_60[8] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContextualEngineInternalClient();
  return [(ContextualEngineInternalClient *)&v4 init];
}

@end