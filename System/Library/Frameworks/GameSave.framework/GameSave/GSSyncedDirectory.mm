@interface GSSyncedDirectory
+ (id)openDirectoryForContainerIdentifier:(id)identifier;
+ (void)cleanupDirectoryForContainerIdentifier:(id)identifier;
- (GSSyncedDirectory)init;
- (GSSyncedDirectoryState)directoryState;
- (id)init:(id)init;
- (void)close;
- (void)finishSyncing:(UIWindow *)syncing completionHandler:(id)handler;
- (void)finishSyncingWithCompletionHandler:(id)handler;
- (void)resolveConflictsWithVersion:(id)version;
- (void)triggerPendingUploadWithCompletionHandler:(id)handler;
@end

@implementation GSSyncedDirectory

- (id)init:(id)init
{
  if (init)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  type metadata accessor for GameSaveSyncedDirectory(0);
  v7 = static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(v4, v6, 1);

  *(&self->super.isa + OBJC_IVAR___GSSyncedDirectory_directory) = v7;
  v9.receiver = self;
  v9.super_class = GSSyncedDirectory;
  return [(GSSyncedDirectory *)&v9 init];
}

+ (id)openDirectoryForContainerIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x23EE6B6E0](v3);
  }

  else
  {
    v4 = 0;
  }

  init_ = [objc_allocWithZone(GSSyncedDirectory) init_];

  return init_;
}

+ (void)cleanupDirectoryForContainerIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = identifier;
  v11[5] = v8;
  v11[6] = v9;
  v12 = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:), v11);

  OS_dispatch_group.wait()();
}

- (void)close
{
  selfCopy = self;

  GameSaveSyncedDirectory.close()();
}

- (void)finishSyncingWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_40Tu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_45Tu, v12);
}

- (void)resolveConflictsWithVersion:(id)version
{
  v3 = *(version + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v3)
  {
    versionCopy = version;
    selfCopy = self;

    GameSaveSyncedDirectory.resolveConflicts(with:)(v3);
  }
}

- (void)triggerPendingUploadWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in GSSyncedDirectory.triggerPendingUpload();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_25Tu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_30Tu, v12);
}

- (void)finishSyncing:(UIWindow *)syncing completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = syncing;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  syncingCopy = syncing;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

- (GSSyncedDirectoryState)directoryState
{
  selfCopy = self;
  v3 = GSSyncedDirectory.directoryState.getter();

  return v3;
}

- (GSSyncedDirectory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end