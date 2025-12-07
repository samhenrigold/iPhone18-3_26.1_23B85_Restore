@interface AKDeviceListRequester
- (AKDeviceListRequester)init;
- (AKDeviceListRequester)initWithStoreManager:(id)manager cdpFactory:(id)factory accountManager:(id)accountManager client:(id)client;
- (void)clearDeviceListCacheWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler;
- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler;
@end

@implementation AKDeviceListRequester

- (AKDeviceListRequester)initWithStoreManager:(id)manager cdpFactory:(id)factory accountManager:(id)accountManager client:(id)client
{
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_storeManager) = manager;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_cdpFactory) = factory;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_accountManager) = accountManager;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_client) = client;
  v15.receiver = self;
  v15.super_class = type metadata accessor for DeviceListRequester();
  managerCopy = manager;
  factoryCopy = factory;
  accountManagerCopy = accountManager;
  clientCopy = client;
  return [(AKDeviceListRequester *)&v15 init];
}

- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler
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
  v13[4] = &unk_10029E190;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E198;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029E1A0, v14);
}

- (void)clearDeviceListCacheWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler
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
  v13[4] = &unk_10029E180;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

- (AKDeviceListRequester)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end