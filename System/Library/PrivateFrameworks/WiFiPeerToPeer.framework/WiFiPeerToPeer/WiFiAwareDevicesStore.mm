@interface WiFiAwareDevicesStore
- (WiFiAwareDevicesStore)init;
- (WiFiAwareDevicesStoreDelegate)delegate;
- (id)deauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d remove:(BOOL)remove;
- (id)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d;
- (id)remoteObjectInterface;
- (id)removeAllPairedDevices;
- (id)removeAllPairedDevicesFor:(id)for;
- (id)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d;
- (id)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d;
- (id)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name;
- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error;
- (void)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler;
- (void)deauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d remove:(BOOL)remove completionHandler:(id)handler;
- (void)pairedDeviceAdded:(id)added;
- (void)pairedDeviceChanged:(id)changed;
- (void)pairedDeviceRemoved:(id)removed;
- (void)queryPairedDevicesInfo:(id)info;
- (void)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler;
- (void)removeAllPairedDevices:(id)devices;
- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler;
- (void)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler;
- (void)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler;
- (void)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name completionHandler:(id)handler;
@end

@implementation WiFiAwareDevicesStore

- (WiFiAwareDevicesStore)init
{
  v9.receiver = self;
  v9.super_class = WiFiAwareDevicesStore;
  v2 = [(WiFiAwareDevicesStore *)&v9 init];
  if (v2)
  {
    v3 = [WiFiP2PXPCConnection alloc];
    v4 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v5 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiAwarePairedDevicesManager", 0, v4);
    v6 = [(WiFiP2PXPCConnection *)v3 initWithEndpointType:1 queue:v5 retryTimeout:+[WiFiP2PXPCConnection defaultRetryTimeout]];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v6;

    [(WiFiP2PXPCConnection *)v2->_xpcConnection setDelegate:v2];
  }

  return v2;
}

- (id)remoteObjectInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B40C8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_queryPairedDevicesInfo_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)queryPairedDevicesInfo:(id)info
{
  infoCopy = info;
  xpcConnection = self->_xpcConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WiFiAwareDevicesStore_queryPairedDevicesInfo___block_invoke;
  v7[3] = &unk_2787AAE88;
  v8 = infoCopy;
  v6 = infoCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v7];
}

- (void)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler
{
  forCopy = for;
  dCopy = d;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __118__WiFiAwareDevicesStore_authorizeNewPairedDeviceFor_pairingKeyStoreID_storageClass_lifetime_client_completionHandler___block_invoke;
  v21[3] = &unk_2787AAEB0;
  v22 = forCopy;
  v23 = dCopy;
  lifetimeCopy = lifetime;
  clientCopy = client;
  v24 = handlerCopy;
  classCopy = class;
  v18 = handlerCopy;
  v19 = dCopy;
  v20 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v21];
}

- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v16 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __106__WiFiAwareDevicesStore_authorizeNewPairedDeviceFor_pairingKeyStoreID_storageClass_lifetime_client_error___block_invoke;
  v21[3] = &unk_2787AAED8;
  v23 = &v25;
  v24 = &v31;
  v17 = v16;
  v22 = v17;
  [(WiFiAwareDevicesStore *)self authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:class lifetime:client client:v21 completionHandler:lifetime];
  v18 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v36 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  *error = v26[5];
  v19 = v32[3];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v19;
}

void __106__WiFiAwareDevicesStore_authorizeNewPairedDeviceFor_pairingKeyStoreID_storageClass_lifetime_client_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = "[WiFiAwareDevicesStore authorizeNewPairedDeviceFor:pairingKeyStoreID:storageClass:lifetime:client:error:]_block_invoke";
    v11 = 2080;
    v9 = 136316162;
    v12 = "WiFiAwareDevicesStore.m";
    v13 = 1024;
    v14 = 101;
    v15 = 2048;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) DeviceID: %llu, Error: %@", &v9, 0x30u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__WiFiAwareDevicesStore_reauthorizePairedDeviceFor_withDeviceID_completionHandler___block_invoke;
  v13[3] = &unk_2787AAF00;
  v15 = handlerCopy;
  dCopy = d;
  v14 = forCopy;
  v11 = handlerCopy;
  v12 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13];
}

- (id)reauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__WiFiAwareDevicesStore_reauthorizePairedDeviceFor_withDeviceID___block_invoke;
  v12[3] = &unk_2787AAF28;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  [(WiFiAwareDevicesStore *)self reauthorizePairedDeviceFor:forCopy withDeviceID:d completionHandler:v12];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v22 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __65__WiFiAwareDevicesStore_reauthorizePairedDeviceFor_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore reauthorizePairedDeviceFor:withDeviceID:]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 128;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name completionHandler:(id)handler
{
  forCopy = for;
  nameCopy = name;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WiFiAwareDevicesStore_updatePairedDeviceNameFor_withDeviceID_toNewName_completionHandler___block_invoke;
  v17[3] = &unk_2787AAF50;
  v18 = forCopy;
  v19 = nameCopy;
  v20 = handlerCopy;
  dCopy = d;
  v14 = handlerCopy;
  v15 = nameCopy;
  v16 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v17];
}

- (id)updatePairedDeviceNameFor:(id)for withDeviceID:(unint64_t)d toNewName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  forCopy = for;
  nameCopy = name;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v10 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__WiFiAwareDevicesStore_updatePairedDeviceNameFor_withDeviceID_toNewName___block_invoke;
  v15[3] = &unk_2787AAF28;
  v17 = &v18;
  v11 = v10;
  v16 = v11;
  [(WiFiAwareDevicesStore *)self updatePairedDeviceNameFor:forCopy withDeviceID:d toNewName:nameCopy completionHandler:v15];
  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v11, v12) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v25 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __74__WiFiAwareDevicesStore_updatePairedDeviceNameFor_withDeviceID_toNewName___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore updatePairedDeviceNameFor:withDeviceID:toNewName:]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 158;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__WiFiAwareDevicesStore_removePairedDeviceFor_withDeviceID_completionHandler___block_invoke;
  v13[3] = &unk_2787AAF00;
  v15 = handlerCopy;
  dCopy = d;
  v14 = forCopy;
  v11 = handlerCopy;
  v12 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13];
}

- (id)removePairedDeviceFor:(id)for withDeviceID:(unint64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__WiFiAwareDevicesStore_removePairedDeviceFor_withDeviceID___block_invoke;
  v12[3] = &unk_2787AAF28;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  [(WiFiAwareDevicesStore *)self removePairedDeviceFor:forCopy withDeviceID:d completionHandler:v12];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v22 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __60__WiFiAwareDevicesStore_removePairedDeviceFor_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore removePairedDeviceFor:withDeviceID:]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 185;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__WiFiAwareDevicesStore_uninstallPairedDeviceFor_withDeviceID_completionHandler___block_invoke;
  v13[3] = &unk_2787AAF00;
  v15 = handlerCopy;
  dCopy = d;
  v14 = forCopy;
  v11 = handlerCopy;
  v12 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13];
}

- (id)uninstallPairedDeviceFor:(id)for withDeviceID:(unint64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__WiFiAwareDevicesStore_uninstallPairedDeviceFor_withDeviceID___block_invoke;
  v12[3] = &unk_2787AAF28;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  [(WiFiAwareDevicesStore *)self uninstallPairedDeviceFor:forCopy withDeviceID:d completionHandler:v12];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v22 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __63__WiFiAwareDevicesStore_uninstallPairedDeviceFor_withDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore uninstallPairedDeviceFor:withDeviceID:]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 212;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)deauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d remove:(BOOL)remove completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__WiFiAwareDevicesStore_deauthorizePairedDeviceFor_withDeviceID_remove_completionHandler___block_invoke;
  v15[3] = &unk_2787AAF78;
  v17 = handlerCopy;
  dCopy = d;
  removeCopy = remove;
  v16 = forCopy;
  v13 = handlerCopy;
  v14 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15];
}

- (id)deauthorizePairedDeviceFor:(id)for withDeviceID:(unint64_t)d remove:(BOOL)remove
{
  removeCopy = remove;
  v25 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__WiFiAwareDevicesStore_deauthorizePairedDeviceFor_withDeviceID_remove___block_invoke;
  v14[3] = &unk_2787AAF28;
  v16 = &v17;
  v10 = v9;
  v15 = v10;
  [(WiFiAwareDevicesStore *)self deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:removeCopy completionHandler:v14];
  v11 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v11) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v24 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __72__WiFiAwareDevicesStore_deauthorizePairedDeviceFor_withDeviceID_remove___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore deauthorizePairedDeviceFor:withDeviceID:remove:]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 237;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__WiFiAwareDevicesStore_removeAllPairedDevicesFor_completionHandler___block_invoke;
  v11[3] = &unk_2787AAFA0;
  v12 = forCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = forCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11];
}

- (id)removeAllPairedDevicesFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__WiFiAwareDevicesStore_removeAllPairedDevicesFor___block_invoke;
  v10[3] = &unk_2787AAF28;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [(WiFiAwareDevicesStore *)self removeAllPairedDevicesFor:forCopy completionHandler:v10];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v20 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __51__WiFiAwareDevicesStore_removeAllPairedDevicesFor___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore removeAllPairedDevicesFor:]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 262;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removeAllPairedDevices:(id)devices
{
  devicesCopy = devices;
  xpcConnection = self->_xpcConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WiFiAwareDevicesStore_removeAllPairedDevices___block_invoke;
  v7[3] = &unk_2787AAE88;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v7];
}

- (id)removeAllPairedDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__WiFiAwareDevicesStore_removeAllPairedDevices__block_invoke;
  v8[3] = &unk_2787AAF28;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(WiFiAwareDevicesStore *)self removeAllPairedDevices:v8];
  v5 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v4, v5) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v18 = 0x4024000000000000;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WiFiPeerToPeer] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__WiFiAwareDevicesStore_removeAllPairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "[WiFiAwareDevicesStore removeAllPairedDevices]_block_invoke";
    v9 = 2080;
    v10 = "WiFiAwareDevicesStore.m";
    v11 = 1024;
    v12 = 287;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%s:%u) Error: %@", &v7, 0x26u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)pairedDeviceAdded:(id)added
{
  addedCopy = added;
  delegate = [(WiFiAwareDevicesStore *)self delegate];
  [delegate deviceAdded:addedCopy];
}

- (void)pairedDeviceRemoved:(id)removed
{
  removedCopy = removed;
  delegate = [(WiFiAwareDevicesStore *)self delegate];
  [delegate deviceRemoved:removedCopy];
}

- (void)pairedDeviceChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(WiFiAwareDevicesStore *)self delegate];
  [delegate deviceChanged:changedCopy];
}

- (WiFiAwareDevicesStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end