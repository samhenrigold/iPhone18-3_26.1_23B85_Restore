@interface GCConfigurationAssetManagementServiceXPCProxy
- (GCConfigurationAssetManagementServiceXPCProxy)init;
- (GCConfigurationAssetManagementServiceXPCProxy)initWithService:(id)service;
- (id)checkForNewAssets:(BOOL)assets forceCatalogRefresh:(BOOL)refresh reply:(id)reply;
- (void)assetsWithReply:(id)reply;
- (void)currentAsset:(BOOL)asset withReply:(id)reply;
- (void)lastUpdateDateWithReply:(id)reply;
@end

@implementation GCConfigurationAssetManagementServiceXPCProxy

- (GCConfigurationAssetManagementServiceXPCProxy)initWithService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    [(GCConfigurationAssetManagementServiceXPCProxy *)a2 initWithService:?];
  }

  v9.receiver = self;
  v9.super_class = GCConfigurationAssetManagementServiceXPCProxy;
  v6 = [(GCConfigurationAssetManagementServiceXPCProxy *)&v9 init];
  service = v6->_service;
  v6->_service = serviceCopy;

  return v6;
}

- (GCConfigurationAssetManagementServiceXPCProxy)init
{
  [(GCConfigurationAssetManagementServiceXPCProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)assetsWithReply:(id)reply
{
  service = self->_service;
  replyCopy = reply;
  assets = [(GCConfigurationAssetManagementService *)service assets];
  v10 = 0;
  v11 = 0;
  [assets waitForResult:&v11 error:&v10];
  v6 = v11;
  v7 = v10;
  v8 = v6;

  v9 = [v8 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_6];

  replyCopy[2](replyCopy, v9, v7);
}

GCConfigurationAssetXPCProxy *__65__GCConfigurationAssetManagementServiceXPCProxy_assetsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GCConfigurationAssetXPCProxy alloc] initWithAsset:v2];

  return v3;
}

- (void)currentAsset:(BOOL)asset withReply:(id)reply
{
  assetCopy = asset;
  replyCopy = reply;
  v7 = _os_activity_create(&dword_1D2C3B000, "[Config Service/XPC/AssetManagementService] Current Asset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [(GCConfigurationAssetManagementService *)self->_service currentAsset:assetCopy];
  v13 = 0;
  v14 = 0;
  [v8 waitForResult:&v14 error:&v13];
  v9 = v14;
  v10 = v13;

  if ([v9 conformsToProtocol:&unk_1F4E3ADA0])
  {
    null = [[GCConfigurationAssetXPCProxy alloc] initWithAsset:v9];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12 = null;
  replyCopy[2](replyCopy, null, v10);

  os_activity_scope_leave(&state);
}

- (void)lastUpdateDateWithReply:(id)reply
{
  service = self->_service;
  replyCopy = reply;
  lastUpdateDate = [(GCConfigurationAssetManagementService *)service lastUpdateDate];
  v9 = 0;
  v10 = 0;
  [lastUpdateDate waitForResult:&v10 error:&v9];
  v6 = v10;
  v7 = v9;
  v8 = v6;

  replyCopy[2](replyCopy, v8, v7);
}

- (id)checkForNewAssets:(BOOL)assets forceCatalogRefresh:(BOOL)refresh reply:(id)reply
{
  refreshCopy = refresh;
  assetsCopy = assets;
  replyCopy = reply;
  v9 = _os_activity_create(&dword_1D2C3B000, "[Config Service/XPC/AssetManagementService] Check For New Assets", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v9, &v12);
  v10 = [(GCConfigurationAssetManagementService *)self->_service checkForNewAssets:assetsCopy forceCatalogRefresh:refreshCopy completion:replyCopy];
  os_activity_scope_leave(&v12);

  return v10;
}

- (void)initWithService:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCConfigurationAssetManagementServiceXPCProxy.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %s", "service != nil"}];
}

@end