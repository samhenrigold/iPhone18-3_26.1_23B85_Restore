@interface CUPairingManager(APPairingClientCoreUtils)
- (id)peersMatchingPairingGroupID:()APPairingClientCoreUtils;
- (uint64_t)savePairedPeer:()APPairingClientCoreUtils;
- (uint64_t)updatePairingGroupInfo:()APPairingClientCoreUtils forPairingGroupID:;
- (void)pairingGroupInfoForPairingGroupID:()APPairingClientCoreUtils;
@end

@implementation CUPairingManager(APPairingClientCoreUtils)

- (void)pairingGroupInfoForPairingGroupID:()APPairingClientCoreUtils
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:a3 forKeyedSubscript:@"groupID"];
  v6 = [self peersMatchingPairingGroupID:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__CUPairingManager_APPairingClientCoreUtils__pairingGroupInfoForPairingGroupID___block_invoke;
  v8[3] = &unk_27849D208;
  v8[4] = dictionary;
  [v6 enumerateObjectsUsingBlock:v8];
  return dictionary;
}

- (id)peersMatchingPairingGroupID:()APPairingClientCoreUtils
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = dispatch_semaphore_create(0);
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if (a3 && !IsAppleInternalBuild())
    {
      v6 = @"#Redacted#";
    }

    else
    {
      v6 = a3;
    }

    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) peersMatchingPairingGroupID:]", 33554482, "Getting paired peers matching pairing group ID %@\n", v6);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke;
  v9[3] = &unk_27849D230;
  v9[5] = v5;
  v9[6] = &v10;
  v9[4] = a3;
  [self getPairedPeersWithGroupID:a3 options:4 completion:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
    dispatch_release(v5);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (uint64_t)updatePairingGroupInfo:()APPairingClientCoreUtils forPairingGroupID:
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = dispatch_semaphore_create(0);
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if (a4 && !IsAppleInternalBuild())
    {
      v8 = @"#Redacted#";
    }

    else
    {
      v8 = a4;
    }

    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) updatePairingGroupInfo:forPairingGroupID:]", 33554482, "Updating group info for pairing group ID %@\n", v8);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke;
  v11[3] = &unk_27849D258;
  v11[5] = v7;
  v11[6] = &v12;
  v11[4] = a4;
  [self updatePairedPeersWithGroupID:a4 groupInfo:a3 options:4 completion:v11];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v7)
  {
    dispatch_release(v7);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (uint64_t)savePairedPeer:()APPairingClientCoreUtils
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = dispatch_semaphore_create(0);
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    if (a3 && !IsAppleInternalBuild())
    {
      v6 = @"#Redacted#";
    }

    else
    {
      v6 = a3;
    }

    LogPrintF(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) savePairedPeer:]", 33554482, "Saving paired peer [%{ptr}]: %@\n", a3, v6);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke;
  v9[3] = &unk_27849D258;
  v9[5] = v5;
  v9[6] = &v10;
  v9[4] = a3;
  [self savePairedPeer:a3 options:4 completion:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
    dispatch_release(v5);
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

@end