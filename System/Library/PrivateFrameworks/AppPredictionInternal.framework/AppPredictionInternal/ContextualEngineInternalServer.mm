@interface ContextualEngineInternalServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC21AppPredictionInternal30ContextualEngineInternalServer)init;
- (void)fetchAllSnapshotsWithCompletion:(id)completion;
- (void)fetchSnapshotOverrideWithCompletion:(id)completion;
- (void)overrideWithSnapshot:(ATXContextualSuggestionSnapshot *)snapshot completion:(id)completion;
- (void)updateWithCompletion:(id)completion;
@end

@implementation ContextualEngineInternalServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2267BB2B4(connectionCopy);

  return v9 & 1;
}

- (void)fetchAllSnapshotsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_226836628();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_226874108;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_226874110;
  v12[5] = v11;
  selfCopy = self;
  sub_22679FE8C(0, 0, v7, &unk_226874118, v12);
}

- (void)fetchSnapshotOverrideWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_226836628();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2268740E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2268740F0;
  v12[5] = v11;
  selfCopy = self;
  sub_22679FE8C(0, 0, v7, &unk_2268740F8, v12);
}

- (void)overrideWithSnapshot:(ATXContextualSuggestionSnapshot *)snapshot completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = snapshot;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_226836628();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2268740C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2268740D0;
  v14[5] = v13;
  snapshotCopy = snapshot;
  selfCopy = self;
  sub_22679FE8C(0, 0, v9, &unk_2268740D8, v14);
}

- (void)updateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_226836628();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_226874080;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_226874090;
  v12[5] = v11;
  selfCopy = self;
  sub_22679FE8C(0, 0, v7, &unk_2268740A0, v12);
}

- (_TtC21AppPredictionInternal30ContextualEngineInternalServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end