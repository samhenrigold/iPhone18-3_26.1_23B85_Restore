@interface CPGameCenterUtilities
+ (id)shared;
- (CPGameCenterUtilities)init;
- (void)fetchGameCenterMultiplayerGameStatusForBundleID:(id)d handler:(id)handler;
- (void)fetchOnDeviceMultiplayerBundleIDsWithHandler:(id)handler;
@end

@implementation CPGameCenterUtilities

- (CPGameCenterUtilities)init
{
  v6.receiver = self;
  v6.super_class = CPGameCenterUtilities;
  v2 = [(CPGameCenterUtilities *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CPThreadSafeMutableSet);
    supportedBundleIDs = v2->_supportedBundleIDs;
    v2->_supportedBundleIDs = v3;
  }

  return v2;
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[CPGameCenterUtilities shared];
  }

  v3 = shared_sCPGameCenterUtilities;

  return v3;
}

uint64_t __31__CPGameCenterUtilities_shared__block_invoke()
{
  shared_sCPGameCenterUtilities = objc_alloc_init(CPGameCenterUtilities);

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchOnDeviceMultiplayerBundleIDsWithHandler:(id)handler
{
  handlerCopy = handler;
  daemonProxy = [getGKDaemonProxyClass() daemonProxy];
  multiplayerService = [daemonProxy multiplayerService];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CPGameCenterUtilities_fetchOnDeviceMultiplayerBundleIDsWithHandler___block_invoke;
  v8[3] = &unk_1E7A45C20;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [multiplayerService fetchOnDeviceMultiplayerBundleIDsWithHandler:v8];
}

void __70__CPGameCenterUtilities_fetchOnDeviceMultiplayerBundleIDsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = cpGameCenterLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1AEB26000, v8, OS_LOG_TYPE_DEFAULT, "error encountered calling fetchOnDeviceMultiplayerBundleIDsWithHandler: error: %@", &v13, 0xCu);
    }
  }

  v9 = cpGameCenterLog(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1AEB26000, v9, OS_LOG_TYPE_DEFAULT, "fetched on device multiplayer bundleIDs: %@", &v13, 0xCu);
  }

  v10 = [*(a1 + 32) supportedBundleIDs];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  [v10 unionSet:v11];

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v5, v7);
  }
}

- (void)fetchGameCenterMultiplayerGameStatusForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  daemonProxy = [getGKDaemonProxyClass() daemonProxy];
  multiplayerService = [daemonProxy multiplayerService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CPGameCenterUtilities_fetchGameCenterMultiplayerGameStatusForBundleID_handler___block_invoke;
  v12[3] = &unk_1E7A45C48;
  v13 = dCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  [multiplayerService isGameCenterMultiplayerGameForBundleID:v11 handler:v12];
}

void __81__CPGameCenterUtilities_fetchGameCenterMultiplayerGameStatusForBundleID_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = cpGameCenterLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1AEB26000, v7, OS_LOG_TYPE_DEFAULT, "error encountered calling fetchGameCenterMultiplayerGameStatusForBundleID:handler: error: %@", &v13, 0xCu);
    }
  }

  v8 = cpGameCenterLog(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1AEB26000, v8, OS_LOG_TYPE_DEFAULT, "fetched Game Center multiplayer game status for: %@, is: %@", &v13, 0x16u);
  }

  if (a2)
  {
    v11 = [*(a1 + 40) supportedBundleIDs];
    [v11 addObject:*(a1 + 32)];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v6);
  }
}

@end