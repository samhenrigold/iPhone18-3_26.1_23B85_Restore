@interface GameSyncedDirectoryHolder
- (NSURL)presentedItemURL;
- (void)dealloc;
- (void)presentedItemDidGainVersion:(id)version;
- (void)savePresentedItemChangesWithCompletionHandler:(id)handler;
- (void)setPresentedItemOperationQueue:(id)queue;
- (void)setPresentedItemURL:(id)l;
@end

@implementation GameSyncedDirectoryHolder

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  outlined init with copy of URL?(self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, &v13 - v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v9 = v11;
  }

  return v9;
}

- (void)setPresentedItemURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  outlined assign with take of URL?(v7, self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL);
}

- (void)setPresentedItemOperationQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemOperationQueue) = queue;
  queueCopy = queue;
}

- (void)dealloc
{
  selfCopy = self;
  GameSyncedDirectoryHolder.stopMonitoringApplicationActivity()();
  GameSyncedDirectoryHolder.stopHoldingItem()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for GameSyncedDirectoryHolder(0);
  [(GameSyncedDirectoryHolder *)&v3 dealloc];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)handler
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
  v11[4] = &async function pointer to partial apply for @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (void)presentedItemDidGainVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  GameSyncedDirectoryHolder.presentedItemDidGain(_:)(versionCopy);
}

@end