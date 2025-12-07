@interface CUPairingManager
@end

@implementation CUPairingManager

void *__80__CUPairingManager_APPairingClientCoreUtils__pairingGroupInfoForPairingGroupID___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 groupInfo];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [a2 groupInfo];

    return [v5 addEntriesFromDictionary:v6];
  }

  return result;
}

intptr_t __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = NSErrorToOSStatus();
  if (v5)
  {
    __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_1(gLogCategory_APPairingClientCoreUtils, a1, v5);
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
    {
      __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_2(a2, a1);
    }

    *(*(*(a1 + 48) + 8) + 40) = a2;
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

intptr_t __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = NSErrorToOSStatus();
  v5 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_1(gLogCategory_APPairingClientCoreUtils);
  }

  else if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_2(a1, v4, v5);
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

intptr_t __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = NSErrorToOSStatus();
  v4 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v5 = *(*(*(a1 + 48) + 8) + 24);
  if (v5)
  {
    __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_1(gLogCategory_APPairingClientCoreUtils, v4, v5);
  }

  else if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_2(a1, v4, v5);
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

uint64_t __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APPairingClientCoreUtils), result))
    {
      if (*(a2 + 32))
      {
        IsAppleInternalBuild();
      }

      return OUTLINED_FUNCTION_4_0(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) peersMatchingPairingGroupID:]_block_invoke", a3, "Failed to get paired peers matching pairing group ID %@: %#m\n");
    }
  }

  return result;
}

uint64_t __74__CUPairingManager_APPairingClientCoreUtils__peersMatchingPairingGroupID___block_invoke_cold_2(void *a1, uint64_t a2)
{
  [a1 count];
  if (*(a2 + 32))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) peersMatchingPairingGroupID:]_block_invoke", v3, "Got %d paired peers matching pairing group ID %@\n");
}

uint64_t __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_1(uint64_t result)
{
  if (result <= 90)
  {
    OUTLINED_FUNCTION_4_15();
    if (!v3 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APPairingClientCoreUtils), result))
    {
      if (*(v1 + 32))
      {
        IsAppleInternalBuild();
      }

      return OUTLINED_FUNCTION_4_0(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) updatePairingGroupInfo:forPairingGroupID:]_block_invoke", v2, "Failed to update group info for pairing group ID %@: %#m\n");
    }
  }

  return result;
}

uint64_t __87__CUPairingManager_APPairingClientCoreUtils__updatePairingGroupInfo_forPairingGroupID___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) updatePairingGroupInfo:forPairingGroupID:]_block_invoke", a3, "Updated group info for pairing group ID %@\n");
}

uint64_t __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) savePairedPeer:]_block_invoke", a3, "Failed to save paired peer [%{ptr}]: %#m\n");
    }

    result = OUTLINED_FUNCTION_4_3(&gLogCategory_APPairingClientCoreUtils);
    if (result)
    {
      a3 = *(*(*a2 + 8) + 24);
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) savePairedPeer:]_block_invoke", a3, "Failed to save paired peer [%{ptr}]: %#m\n");
    }
  }

  return result;
}

uint64_t __61__CUPairingManager_APPairingClientCoreUtils__savePairedPeer___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientCoreUtils, "[CUPairingManager(APPairingClientCoreUtils) savePairedPeer:]_block_invoke", a3, "Saved paired peer [%{ptr}]: %@\n");
}

@end