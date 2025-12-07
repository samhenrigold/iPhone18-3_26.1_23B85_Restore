@interface CRLBoardDataStore
- (NSURL)dataDirectory;
- (_TtC22FreeformDataclassOwner17CRLBoardDataStore)init;
- (_TtC22FreeformDataclassOwner19CRLAssetFileManager)assetFileManager;
- (void)closeDatabaseWithCompletion:(id)completion;
- (void)closeDatabaseWithCompletionHandler:(id)handler;
- (void)openDatabaseWithCompletion:(id)completion;
- (void)openDatabaseWithCompletionHandler:(id)handler;
@end

@implementation CRLBoardDataStore

- (NSURL)dataDirectory
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_dataDirectory, v3);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (_TtC22FreeformDataclassOwner19CRLAssetFileManager)assetFileManager
{
  selfCopy = self;
  v3 = CRLBoardDataStore.assetFileManager.getter();

  return v3;
}

- (void)openDatabaseWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CRLBoardDataStore.openDatabase(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v5, &unk_4E5B0, partial apply for closure #1 in CRLBoardDataStore.openDatabase(completion:), &block_descriptor_63);
}

- (void)openDatabaseWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
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
  v11[4] = &async function pointer to partial apply for @objc closure #1 in CRLBoardDataStore.openDatabase();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_47Tu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_52Tu, v12);
}

- (void)closeDatabaseWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CRLBoardDataStore.openDatabase(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v5, &unk_4E498, partial apply for closure #1 in CRLBoardDataStore.closeDatabase(completion:), &block_descriptor_0);
}

- (void)closeDatabaseWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
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
  v11[4] = &async function pointer to partial apply for @objc closure #1 in CRLBoardDataStore.closeDatabase();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (_TtC22FreeformDataclassOwner17CRLBoardDataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end