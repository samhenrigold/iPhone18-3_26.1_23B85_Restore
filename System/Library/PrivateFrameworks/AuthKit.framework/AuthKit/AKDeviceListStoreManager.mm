@interface AKDeviceListStoreManager
+ (AKDeviceListStoreManager)sharedManager;
- (AKDeviceListStoreManager)init;
- (void)clearDatabaseWithCompletionHandler:(id)handler;
- (void)clearStaleDevicesWithAccountManager:(AKAccountManager *)manager completionHandler:(id)handler;
- (void)deleteDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler;
- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context cdpFactory:(AKCDPFactory *)factory serviceController:(AKServiceControllerImpl *)controller accountManager:(AKAccountManager *)manager completionHandler:(id)handler;
- (void)updateCacheWithContext:(AKDeviceListRequestContext *)context deviceListResponse:(AKDeviceListResponse *)response completionHandler:(id)handler;
- (void)verifyCacheSyncStatusFromResponse:(AKDeviceListResponse *)response context:(AKDeviceListRequestContext *)context accountManager:(AKAccountManager *)manager reporter:(AAFAnalyticsReporter *)reporter completionHandler:(id)handler;
@end

@implementation AKDeviceListStoreManager

+ (AKDeviceListStoreManager)sharedManager
{
  if (qword_100371BF8 != -1)
  {
    swift_once();
  }

  v3 = qword_1003776D0;

  return v3;
}

- (void)clearDatabaseWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
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
  v11[4] = &unk_10029F798;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E060;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029E3B0, v12);
}

- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context cdpFactory:(AKCDPFactory *)factory serviceController:(AKServiceControllerImpl *)controller accountManager:(AKAccountManager *)manager completionHandler:(id)handler
{
  v13 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = context;
  v17[3] = factory;
  v17[4] = controller;
  v17[5] = manager;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10029F788;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10029E040;
  v20[5] = v19;
  contextCopy = context;
  factoryCopy = factory;
  controllerCopy = controller;
  managerCopy = manager;
  selfCopy = self;
  sub_100244978(0, 0, v15, &unk_10029E390, v20);
}

- (void)deleteDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F768;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F770;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F778, v14);
}

- (void)clearStaleDevicesWithAccountManager:(AKAccountManager *)manager completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = manager;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F748;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F750;
  v14[5] = v13;
  managerCopy = manager;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F758, v14);
}

- (void)verifyCacheSyncStatusFromResponse:(AKDeviceListResponse *)response context:(AKDeviceListRequestContext *)context accountManager:(AKAccountManager *)manager reporter:(AAFAnalyticsReporter *)reporter completionHandler:(id)handler
{
  v13 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = response;
  v17[3] = context;
  v17[4] = manager;
  v17[5] = reporter;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10029F728;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10029F730;
  v20[5] = v19;
  responseCopy = response;
  contextCopy = context;
  managerCopy = manager;
  reporterCopy = reporter;
  selfCopy = self;
  sub_100244978(0, 0, v15, &unk_10029F738, v20);
}

- (void)updateCacheWithContext:(AKDeviceListRequestContext *)context deviceListResponse:(AKDeviceListResponse *)response completionHandler:(id)handler
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F718;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029C6A0;
  v16[5] = v15;
  contextCopy = context;
  responseCopy = response;
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029CEE0, v16);
}

- (AKDeviceListStoreManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end