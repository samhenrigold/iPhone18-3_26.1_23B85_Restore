@interface BDSSaltVersionIdentifierManager
- (BCCloudChangeTokenController)tokenController;
- (BDSCloudKitSupportZoneRecovery)zoneDataManager;
- (BDSSaltVersionIdentifierManager)initWithZoneDataManager:(id)manager tokenController:(id)controller databaseController:(id)databaseController;
- (NSString)description;
- (void)handleSaltVersionIdentifierChange:(id)change completion:(id)completion;
@end

@implementation BDSSaltVersionIdentifierManager

- (BDSSaltVersionIdentifierManager)initWithZoneDataManager:(id)manager tokenController:(id)controller databaseController:(id)databaseController
{
  v28 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  controllerCopy = controller;
  databaseControllerCopy = databaseController;
  v21.receiver = self;
  v21.super_class = BDSSaltVersionIdentifierManager;
  v11 = [(BDSSaltVersionIdentifierManager *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_zoneDataManager, managerCopy);
    objc_storeWeak(&v12->_tokenController, controllerCopy);
    zoneName = [controllerCopy zoneName];
    v14 = [zoneName copy];
    zoneName = v12->_zoneName;
    v12->_zoneName = v14;

    v16 = BDSCloudKitSyncLog([databaseControllerCopy addObserver:v12 zoneID:v12->_zoneName]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&v12->_zoneDataManager);
      v18 = objc_loadWeakRetained(&v12->_tokenController);
      v19 = v12->_zoneName;
      *buf = 138412802;
      v23 = WeakRetained;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "[BDSSaltVersionIdentifierManager] init with %@ %@. Adding to zone:(%@)", buf, 0x20u);
    }
  }

  return v12;
}

- (void)handleSaltVersionIdentifierChange:(id)change completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  zoneName = [(BDSSaltVersionIdentifierManager *)self zoneName];
  v9 = BDSCloudKitSyncLog(zoneName);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = zoneName;
    v31 = 2112;
    v32 = changeCopy;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ ---1. %@  ", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E4601680;
  aBlock[3] = &unk_1E8759CE0;
  aBlock[4] = self;
  v10 = zoneName;
  v26 = v10;
  v11 = changeCopy;
  v27 = v11;
  v12 = completionCopy;
  v28 = v12;
  v13 = _Block_copy(aBlock);
  tokenController = [(BDSSaltVersionIdentifierManager *)self tokenController];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E4601A30;
  v19[3] = &unk_1E8759D30;
  v23 = v13;
  v24 = v12;
  v20 = v10;
  selfCopy = self;
  v22 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  [tokenController zoneNeedsUpdate:v15 completion:v19];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  zoneName = [(BDSSaltVersionIdentifierManager *)self zoneName];
  zoneDataManager = [(BDSSaltVersionIdentifierManager *)self zoneDataManager];
  v8 = [v3 stringWithFormat:@"<%@:%p zoneName=%@ zoneDataManager=%@>", v5, self, zoneName, zoneDataManager];

  return v8;
}

- (BDSCloudKitSupportZoneRecovery)zoneDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_zoneDataManager);

  return WeakRetained;
}

- (BCCloudChangeTokenController)tokenController
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenController);

  return WeakRetained;
}

@end