@interface KSCloudKitManager
@end

@implementation KSCloudKitManager

void __47___KSCloudKitManager_userIdentityWithResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___KSCloudKitManager_userIdentityWithResponse___block_invoke_2;
  block[3] = &unk_2797F6520;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __47___KSCloudKitManager_userIdentityWithResponse___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) recordName];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

uint64_t __44___KSCloudKitManager_setupAccountDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke_2;
  v3[3] = &unk_2797F65C0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 queryAccountStatusWithCompletionHandler:v3];
}

void __44___KSCloudKitManager_setupAccountDidChange___block_invoke_2(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke_3;
  v11[3] = &unk_2797F6570;
  v11[4] = *(a1 + 32);
  v11[5] = a2;
  v12 = *(a1 + 40);
  v13 = a4;
  v14 = a3;
  v7 = MEMORY[0x259C41CB0](v11);
  if (a2 == 1 && ((a3 & 1) != 0 || ([*(a1 + 32) needsDeviceToDevice] & 1) == 0))
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke_4;
    v9[3] = &unk_2797F6598;
    v9[4] = v8;
    v10 = v7;
    [v8 setupRecordZoneWithCompletionHandler:v9 ignoreDefaults:0];
  }

  else
  {
    v7[2](v7, 0);
  }
}

void __44___KSCloudKitManager_setupAccountDidChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v12[0] = @"KSCloudKitAccountDidChangeStatusKey";
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v13[0] = v6;
  v12[1] = @"KSCloudKitAccountDidChangeAccountChangedKey";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v13[1] = v7;
  v12[2] = @"KSCloudKitAccountDidChangeUserChangedKey";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v13[2] = v8;
  v12[3] = @"KSCloudKitAccountDidChangeDeviceToDeviceKey";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 50)];
  v13[3] = v9;
  v12[4] = @"KSCloudKitAccountDidSuccessfullyCreateZone";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v13[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  [v4 postNotificationName:@"KSCloudKitAccountDidChange" object:v5 userInfo:v11];
}

uint64_t __44___KSCloudKitManager_setupAccountDidChange___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = KSCategory(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[_KSCloudKitManager setupAccountDidChange:]_block_invoke_4";
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  Failed to set up record zone", &v5, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) setupSubscription];
  }

  return (*(*(a1 + 40) + 16))();
}

void __45___KSCloudKitManager_accountStatusDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setupAccountDidChange:1];
  v3[2](v3, 0);
}

void __60___KSCloudKitManager_shouldDetectAccountChangeWithResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  if ([a3 code] == 9)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v6 = v19;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = +[_KSUtilities userDefaultsSuiteName];
  v9 = [v7 initWithSuiteName:v8];

  v10 = [*(a1 + 32) lastKnownUserKey];
  v11 = [v9 stringForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 stringForKey:@"KSLastKnownUserID"];
  }

  v14 = v13;

  if (v6 | v14)
  {
    if (v6 || !v14)
    {
      v5 = [v14 isEqualToString:v6] ^ 1;
      if (v6)
      {
        v18 = [*(a1 + 32) lastKnownUserKey];
        [v9 setObject:v6 forKey:v18];

        goto LABEL_12;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = [*(a1 + 32) lastKnownUserKey];
  [v9 removeObjectForKey:v15];

  [v9 removeObjectForKey:@"KSLastKnownUserID"];
LABEL_12:

LABEL_13:
  v16 = v19;
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v5);
    v16 = v19;
  }
}

void __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[_KSCloudKitManager queryAccountStatusWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> checking account status", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_91;
  v4[3] = &unk_2797F66B0;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _checkAccountStatusWithCompletionHandler:v4 withRetryCount:0];
}

void __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_91(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_2797F6688;
  v9 = a2;
  v6 = *(a1 + 40);
  v10 = a3;
  v7[4] = *(a1 + 32);
  v8 = v6;
  dispatch_async(v5, v7);
}

void __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) | 4) == 4)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = KSCategory(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[_KSCloudKitManager queryAccountStatusWithCompletionHandler:]_block_invoke_2";
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  >>> account is set up", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_92;
    v7[3] = &unk_2797F6660;
    v7[4] = v4;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = v5;
    v9 = v6;
    v10 = *(a1 + 56);
    [v4 shouldDetectAccountChangeWithResponse:v7];
  }
}

uint64_t __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_92(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = KSCategory(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[_KSCloudKitManager queryAccountStatusWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  >>> user logged in has changed", &v10, 0xCu);
    }

    v4 = objc_alloc(MEMORY[0x277CBEBD0]);
    v5 = +[_KSUtilities userDefaultsSuiteName];
    v6 = [v4 initWithSuiteName:v5];

    v7 = [*(a1 + 32) recordZoneKey];
    [v6 removeObjectForKey:v7];

    v8 = [*(a1 + 32) subscriptionKey];
    [v6 removeObjectForKey:v8];
  }

  return (*(*(a1 + 40) + 16))();
}

void __40___KSCloudKitManager_isAccountAvailable__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___KSCloudKitManager_isAccountAvailable__block_invoke_2;
  v4[3] = &unk_2797F6700;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _checkAccountStatusWithCompletionHandler:v4 withRetryCount:0];
}

void __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if (![v7 isEqualToString:*MEMORY[0x277CBBF50]] || objc_msgSend(v6, "code") != 3 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9)
  {

    goto LABEL_9;
  }

  v8 = *(a1 + 48);

  if (v8 > 1)
  {
LABEL_9:
    v17 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_99;
    block[3] = &unk_2797F6778;
    v29 = *(a1 + 40);
    v28 = v5;
    dispatch_async(v17, block);

    v18 = v29;
    goto LABEL_14;
  }

  v9 = [v6 userInfo];
  v10 = *MEMORY[0x277CBBF68];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

  if (v11)
  {
    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:v10];
    [v13 doubleValue];
    v15 = v14;

    v16 = (v15 * 1000000000.0);
  }

  else
  {
    v16 = 60000000000;
  }

  v19 = dispatch_time(0, v16);
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v22 = *(v21 + 8);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_2;
  v30[3] = &unk_2797F6750;
  v30[4] = v21;
  v23 = v20;
  v24 = *(a1 + 48);
  v31 = v23;
  v32 = v24;
  dispatch_after(v19, v22, v30);
  v26 = KSCategory(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_cold_1();
  }

  v18 = v31;
LABEL_14:
}

uint64_t __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_99(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) accountStatus];
  v4 = [*(a1 + 32) supportsDeviceToDeviceEncryption];
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v7 = [a2 zoneID];
      v8 = [v7 zoneName];
      v9 = [*(a1 + 32) recordZone];
      v10 = [v9 zoneID];
      v11 = [v10 zoneName];
      v12 = [v8 isEqualToString:v11];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) recordZoneKey];
        [v13 setBool:1 forKey:v14];
      }
    }
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2;
  block[3] = &unk_2797F67C8;
  block[4] = v15;
  v17 = *(a1 + 48);
  v20 = v6;
  v21 = v17;
  v18 = v6;
  dispatch_async(v16, block);
}

uint64_t __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setRecordZoneOperationInProgress:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) recordZoneOperationInProgress] & 1) == 0)
  {
    v2 = KSCategory([*(a1 + 32) setRecordZoneOperationInProgress:1]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[_KSCloudKitManager setupRecordZoneWithCompletionHandler:ignoreDefaults:]_block_invoke_3";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> creating record zone", buf, 0xCu);
    }

    v3 = *(a1 + 32);
    v4 = [v3 recordZone];
    v5 = [v4 zoneID];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_102;
    v7[3] = &unk_2797F6840;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    v9 = *(a1 + 48);
    [v3 _ckFetchRecordZoneWithID:v5 completionHandler:v7];
  }
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v8)
  {
    v9 = [v6 code];
    switch(v9)
    {
      case 26:
        goto LABEL_5;
      case 112:
        v14 = *(a1 + 32);
        v15 = *(v14 + 8);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_104;
        v16[3] = &unk_2797F66D8;
        v16[4] = v14;
        v17 = *(a1 + 48);
        dispatch_async(v15, v16);
        v13 = v17;
        goto LABEL_8;
      case 28:
LABEL_5:
        v10 = *(a1 + 32);
        v11 = [v10 recordZone];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103;
        v18[3] = &unk_2797F6818;
        v12 = *(a1 + 40);
        v18[4] = *(a1 + 32);
        v19 = v12;
        [v10 _ckSaveRecordZone:v11 completionHandler:v18];

        v13 = v19;
LABEL_8:

        goto LABEL_9;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_9:
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = KSCategory(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103_cold_1(a1, v7, v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_104(uint64_t a1)
{
  [*(a1 + 32) setRecordZoneOperationInProgress:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 resetZoneWithDelete:2 withCompletionHandler:v3];
}

void __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) recordZoneOperationInProgress])
  {
    return;
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_7;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) recordZoneKey];
  [v4 setBool:v3 forKey:v5];

LABEL_7:
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) recordZoneKey];
  LODWORD(v6) = [v6 BOOLForKey:v7];

  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = KSCategory([v8 setRecordZoneOperationInProgress:1]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[_KSCloudKitManager resetZoneWithDelete:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  >>> deleting record zone", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [v10 recordZone];
    v12 = [v11 zoneID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke_105;
    v16[3] = &unk_2797F6890;
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v16[4] = *(a1 + 32);
    v19 = v13;
    v18 = v14;
    v17 = *(a1 + 40);
    [v10 _ckDeleteRecordZoneWithID:v12 completionHandler:v16];
  }

  else
  {
    v15 = *(a1 + 48);

    [v8 setupRecordZoneWithCompletionHandler:v15 ignoreDefaults:0];
  }
}

void __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke_105(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  [*(a1 + 32) setRecordZoneOperationInProgress:0];
  if (!v10)
  {
LABEL_6:
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) recordZoneKey];
    [v6 setBool:0 forKey:v7];

    v8 = *(a1 + 32);
    v9 = *(a1 + 48);

    [v8 setupRecordZoneWithCompletionHandler:v9 ignoreDefaults:0];
    return;
  }

  if (*(a1 + 56) == 2)
  {
    v4 = [v10 domain];
    if ([v4 isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v5 = [v10 code];

      if (v5 == 26)
      {

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __79___KSCloudKitManager_recordWithName_type_cloudData_attributes_encryptedFields___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 encryptedValuesByKey];
  [v7 setObject:v5 forKey:v6];
}

void __69___KSCloudKitManager_recordWithName_type_attributes_encryptedFields___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 encryptedValuesByKey];
  [v7 setObject:v5 forKey:v6];
}

void __39___KSCloudKitManager_setupSubscription__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) subscriptionOperationInProgress] & 1) == 0)
  {
    v2 = KSCategory([*(a1 + 32) setSubscriptionOperationInProgress:1]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[_KSCloudKitManager setupSubscription]_block_invoke";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Creating subscription", buf, 0xCu);
    }

    v3 = objc_alloc(MEMORY[0x277CBC618]);
    v4 = [*(a1 + 32) recordZone];
    v5 = [v4 zoneID];
    v6 = [v3 initWithZoneID:v5 subscriptionID:*(a1 + 40)];

    v7 = objc_opt_new();
    [v7 setShouldBadge:0];
    [v6 setNotificationInfo:v7];
    v8 = objc_alloc(MEMORY[0x277CBC4B0]);
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v10 = [v8 initWithSubscriptionsToSave:v9 subscriptionIDsToDelete:0];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39___KSCloudKitManager_setupSubscription__block_invoke_118;
    v14[3] = &unk_2797F6908;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = v11;
    v16 = v12;
    v17 = v13;
    [v10 setModifySubscriptionsCompletionBlock:v14];
    [*(a1 + 32) addOperation:v10];
  }
}

void __39___KSCloudKitManager_setupSubscription__block_invoke_118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = *(a1 + 48);
    v6 = [a4 userInfo];
    NSLog(&cfstr_ErrorFailedToC.isa, v5, v6);
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = [*(a1 + 40) subscriptionKey];
    [v7 setBool:1 forKey:v6];
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___KSCloudKitManager_setupSubscription__block_invoke_2;
  block[3] = &unk_2797F6310;
  block[4] = v8;
  dispatch_async(v9, block);
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v9)
    {
      if ([v7 code] == 14)
      {
        v10 = [v7 userInfo];
        v11 = *MEMORY[0x277CBBFD8];
        v25[0] = *MEMORY[0x277CBBFE8];
        v25[1] = v11;
        v25[2] = *MEMORY[0x277CBBFE0];
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
        v13 = [v10 dictionaryWithValuesForKeys:v12];

        [*(a1 + 32) addObject:v13];
      }

      else if ([v7 code] == 3 || objc_msgSend(v7, "code") == 4 || objc_msgSend(v7, "code") == 6 || objc_msgSend(v7, "code") == 23 || (v14 = objc_msgSend(v7, "code"), v14 == 6))
      {
        [*(a1 + 40) addObject:v5];
      }

      else
      {
        v15 = KSCategory(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v5 recordID];
          v17 = [v16 recordName];
          v18 = [v7 localizedDescription];
          v19 = 136315650;
          v20 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke";
          v21 = 2112;
          v22 = v17;
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&dword_2557E2000, v15, OS_LOG_TYPE_INFO, "%s  >>> Could not save recordName=%@; error=%@", &v19, 0x20u);
        }
      }
    }
  }
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KSCategory(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
    v10 = [v7 localizedDescription];
    *buf = 136315650;
    v86 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke";
    v87 = 2112;
    v88 = v9;
    v89 = 2112;
    v90 = v10;
    _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  >>> modify operation completed with rrorCode: %@ description: %@", buf, 0x20u);
  }

  if ([v7 code] == 2)
  {
    v11 = KSCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 userInfo];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
      *buf = 136315394;
      v86 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke";
      v87 = 2112;
      v88 = v13;
      _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  >>> partial failure : %@", buf, 0x16u);
    }
  }

  if ([v7 code] == 28)
  {
    v14 = *(a1 + 32);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_128;
    v84[3] = &unk_2797F69A8;
    v84[4] = v14;
    [v14 resetZoneWithDelete:0 withCompletionHandler:v84];
  }

  v15 = [v7 domain];
  v16 = *MEMORY[0x277CBBF50];
  if ([v15 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    if ([v7 code] == 3 || objc_msgSend(v7, "code") == 6 || objc_msgSend(v7, "code") == 23)
    {

LABEL_14:
      v18 = KSCategory(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      v26 = [v7 userInfo];
      v27 = *MEMORY[0x277CBBF68];
      v28 = [v26 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

      if (v28)
      {
        v29 = [v7 userInfo];
        v30 = [v29 objectForKeyedSubscript:v27];
        [v30 doubleValue];
        v32 = v31;

        v33 = (v32 * 1000000000.0);
      }

      else
      {
        v33 = 60000000000;
      }

      v55 = dispatch_time(0, v33);
      v57 = *(a1 + 32);
      v56 = *(a1 + 40);
      v58 = *(v57 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_129;
      block[3] = &unk_2797F69D0;
      block[4] = v57;
      v79 = v56;
      v59 = v6;
      v61 = *(a1 + 64);
      v60 = *(a1 + 72);
      v80 = v59;
      v82 = v60;
      v62 = v61;
      v63 = *(a1 + 80);
      v81 = v62;
      v83 = v63;
      dispatch_after(v55, v58, block);

      v51 = v79;
      goto LABEL_31;
    }

    v65 = [v7 code];

    if (v65 == 7)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v34 = [v7 domain];
  if ([v34 isEqualToString:v16])
  {
    v35 = [v7 code];

    if (v35 == 26)
    {
      v37 = KSCategory(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_1(v37, v38, v39, v40, v41, v42, v43, v44);
      }

      v45 = *(a1 + 32);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_130;
      v70[3] = &unk_2797F69F8;
      v70[4] = v45;
      v71 = *(a1 + 40);
      v46 = v6;
      v48 = *(a1 + 64);
      v47 = *(a1 + 72);
      v72 = v46;
      v76 = v47;
      v49 = v48;
      v50 = *(a1 + 80);
      v75 = v49;
      v77 = v50;
      v73 = *(a1 + 48);
      v74 = v7;
      [v45 setupRecordZoneWithCompletionHandler:v70 ignoreDefaults:1];

      v51 = v71;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v52 = [*(a1 + 56) count];
  v53 = *(a1 + 32);
  if (!v52)
  {
    v64 = v53[1];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_3;
    v66[3] = &unk_2797F6520;
    v69 = *(a1 + 64);
    v67 = *(a1 + 48);
    v68 = v7;
    dispatch_async(v64, v66);

    v51 = v69;
LABEL_31:

    goto LABEL_34;
  }

  v54 = [v53 resolveConflicts:*(a1 + 56)];
  if ([v54 count])
  {
    [*(a1 + 32) updateRecords:v54 deleteRecordIDs:0 withPriority:*(a1 + 72) completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

LABEL_34:
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_128(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) recordZone];
  v3 = [v2 zoneID];
  v4 = [v3 zoneName];
  [v5 userDidDeleteRecordZone:v4];
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CBBF50]), v5, (v6 & 1) != 0))
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_2;
    v15[3] = &unk_2797F69D0;
    v15[4] = v8;
    v16 = v7;
    v10 = *(a1 + 48);
    v12 = *(a1 + 72);
    v11 = *(a1 + 80);
    v17 = v10;
    v19 = v11;
    v13 = v12;
    v14 = *(a1 + 88);
    v18 = v13;
    v20 = v14;
    dispatch_async(v9, v15);
  }
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordName];
  [v2 addObject:v3];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 zoneName];
  v7 = [*(a1 + 32) recordZone];
  v8 = [v7 zoneID];
  v9 = [v8 zoneName];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v15 = KSCategory(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 136315394;
        v33 = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_3";
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_2557E2000, v15, OS_LOG_TYPE_INFO, "%s  server change token updated: %@", buf, 0x16u);
      }

      v17 = [*(a1 + 40) copy];
      v18 = [*(a1 + 48) copy];
      v19 = *(*(a1 + 32) + 8);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_137;
      v27 = &unk_2797F6A98;
      v20 = *(a1 + 56);
      v28 = v17;
      v29 = v18;
      v21 = *(a1 + 64);
      v30 = v20;
      v31 = v21;
      v22 = v18;
      v23 = v17;
      dispatch_async(v19, &v24);
      [*(a1 + 40) removeAllObjects];
      [*(a1 + 48) removeAllObjects];
    }
  }
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v109 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [a2 zoneName];
  v13 = [*(a1 + 32) recordZone];
  v14 = [v13 zoneID];
  v15 = [v14 zoneName];
  v16 = [v12 isEqualToString:v15];

  if (v16)
  {
    v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (v11)
    {
      v20 = [v11 domain];
      if (v20 == *MEMORY[0x277CBBF50])
      {
        v21 = *(a1 + 72);

        if (v21 <= 1)
        {
          v22 = [v11 code];
          if (v22 == 28)
          {
            v23 = *(a1 + 32);
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v106[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3_140;
            v106[3] = &unk_2797F69A8;
            v106[4] = v23;
            v22 = [v23 resetZoneWithDelete:0 withCompletionHandler:v106];
          }

          v24 = KSCategory(v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_1(v11);
          }

          if ([v11 code] == 9)
          {
            v25 = [v11 userInfo];
            v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];
            [v26 doubleValue];
            v28 = fmin(v27, 60.0);

            v29 = dispatch_time(0, (v28 * 1000000000.0));
            v30 = *(a1 + 32);
            v31 = *(v30 + 8);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_141;
            block[3] = &unk_2797F6B10;
            v32 = *(a1 + 80);
            block[4] = v30;
            v104 = v32;
            v78 = *(a1 + 56);
            v33 = v78;
            v103 = v78;
            v105 = *(a1 + 72);
            dispatch_after(v29, v31, block);
            v34 = v103;
          }

          else if ([v11 code] == 3 || objc_msgSend(v11, "code") == 6 || objc_msgSend(v11, "code") == 23 || objc_msgSend(v11, "code") == 7)
          {
            v40 = [v11 userInfo];
            v41 = [v40 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];
            [v41 doubleValue];
            v43 = v42;

            v44 = dispatch_time(0, (v43 * 1000000000.0));
            v45 = *(a1 + 32);
            v46 = *(v45 + 8);
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v98[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3_143;
            v98[3] = &unk_2797F6B10;
            v47 = *(a1 + 80);
            v98[4] = v45;
            v100 = v47;
            v79 = *(a1 + 56);
            v48 = v79;
            v99 = v79;
            v101 = *(a1 + 72);
            dispatch_after(v44, v46, v98);
            v34 = v99;
          }

          else if ([v11 code] == 21)
          {
            v49 = KSCategory(21);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v108 = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_4";
              _os_log_impl(&dword_2557E2000, v49, OS_LOG_TYPE_INFO, "%s  CloudKit said our change token has expired!", buf, 0xCu);
            }

            v50 = *(*(a1 + 32) + 8);
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_145;
            v93[3] = &unk_2797F6B38;
            v51 = *(a1 + 56);
            v52 = *(a1 + 40);
            v53 = *(a1 + 48);
            *&v54 = *(a1 + 32);
            *(&v54 + 1) = v51;
            *&v55 = v52;
            *(&v55 + 1) = v53;
            v97 = a5;
            v94 = v55;
            v95 = v54;
            v96 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
            dispatch_async(v50, v93);

            v34 = *(&v95 + 1);
          }

          else
          {
            v56 = [v11 code];
            v57 = KSCategory(v56);
            v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
            if (v56 == 26)
            {
              if (v58)
              {
                __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_3(v57, v59, v60, v61, v62, v63, v64, v65);
              }

              v66 = *(a1 + 32);
              v89[0] = MEMORY[0x277D85DD0];
              v89[1] = 3221225472;
              v89[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_146;
              v89[3] = &unk_2797F6B60;
              v67 = *(a1 + 56);
              v68 = *(a1 + 40);
              v69 = *(a1 + 48);
              *&v70 = v68;
              *(&v70 + 1) = v69;
              *&v71 = v67;
              *(&v71 + 1) = *(a1 + 64);
              v91 = v71;
              v90 = v70;
              v92 = a5;
              [v66 setupRecordZoneWithCompletionHandler:v89 ignoreDefaults:1];

              v34 = v91;
            }

            else
            {
              if (v58)
              {
                __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_2(v11);
              }

              v72 = *(*(a1 + 32) + 8);
              v85[0] = MEMORY[0x277D85DD0];
              v85[1] = 3221225472;
              v85[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_147;
              v85[3] = &unk_2797F6B88;
              v73 = *(a1 + 56);
              v74 = *(a1 + 40);
              v75 = *(a1 + 48);
              *&v76 = v74;
              *(&v76 + 1) = v75;
              *&v77 = v73;
              *(&v77 + 1) = *(a1 + 64);
              v86 = v76;
              v87 = v77;
              v88 = a5;
              dispatch_async(v72, v85);

              v34 = v87;
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v35 = *(*(a1 + 32) + 8);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_148;
    v80[3] = &unk_2797F6BB0;
    v36 = *(a1 + 40);
    v37 = *(a1 + 48);
    *&v38 = *(a1 + 56);
    *(&v38 + 1) = *(a1 + 64);
    *&v39 = v36;
    *(&v39 + 1) = v37;
    v81 = v39;
    v82 = v38;
    v83 = a5;
    v84 = v11 == 0;
    dispatch_async(v35, v80);

    v34 = v81;
LABEL_13:
  }
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3_140(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) recordZone];
  v3 = [v2 zoneID];
  v4 = [v3 zoneName];
  [v5 userDidDeleteRecordZone:v4];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_141(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_142;
  v6[3] = &unk_2797F6AE8;
  v3 = *(a1 + 56);
  v6[4] = v2;
  v8 = v3;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v9 = *(a1 + 64);
  [v2 queryAccountStatusWithCompletionHandler:v6];
}

id *__105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_142(id *result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [result[4] fetchRecordsWithPriority:result[7] changeToken:*(*(result[6] + 1) + 40) completionHandler:result[5] retryCount:result[8] + 1];
  }

  return result;
}

uint64_t __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_145(void *a1)
{
  (*(a1[7] + 16))();
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9] + 1;

  return [v2 fetchRecordsWithPriority:v4 changeToken:0 completionHandler:v3 retryCount:v5];
}

uint64_t __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_148(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
    v6 = 136315650;
    v7 = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Completed fetching # records : %@, deleted records: %@", &v6, 0x20u);
  }

  return (*(*(a1 + 48) + 16))();
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:*(*(&v13 + 1) + 8 * v7)];

        v4 = v8;
        [v2 addObject:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_151;
  v11[3] = &unk_2797F6C00;
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v10;
  [v9 setFetchRecordsCompletionBlock:v11];
  [*(a1 + 40) addOperation:v9];
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_2;
  block[3] = &unk_2797F6520;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) allValues];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke(id *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBC3D0]);
  v12[0] = a1[4];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v4 initWithRecordZoneIDs:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke_2;
  v8[3] = &unk_2797F6C50;
  v10 = a1[6];
  v9 = a1[4];
  v11 = v3;
  v7 = v3;
  [v6 setFetchRecordZonesCompletionBlock:v8];
  [a1[5] _inconvenientOperation:v6];
}

void __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[5];
  if (v5)
  {
    v7 = a1[4];
    v8 = a3;
    v9 = [a2 objectForKeyedSubscript:v7];
    v10 = [MEMORY[0x277CBC560] itemErrorFromError:v8 forID:a1[4]];

    (*(v5 + 16))(v5, v9, v10);
  }

  v11 = a1[6];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 0];
  (*(v11 + 16))(v11, v12);
}

void __58___KSCloudKitManager__ckSaveRecordZone_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v11 = [a2 firstObject];
    v8 = MEMORY[0x277CBC560];
    v9 = [*(a1 + 32) zoneID];
    v10 = [v8 itemErrorFromError:v7 forID:v9];

    (*(v4 + 16))(v4, v11, v10);
  }
}

void __66___KSCloudKitManager__ckDeleteRecordZoneWithID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v9 = [a3 firstObject];
    v8 = [MEMORY[0x277CBC560] itemErrorFromError:v7 forID:*(a1 + 32)];

    (*(v4 + 16))(v4, v9, v8);
  }
}

void __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2();
  v3 = v0;
  _os_log_error_impl(&dword_2557E2000, v1, OS_LOG_TYPE_ERROR, "%s  Error in getting account status: %@", v2, 0x16u);
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) recordZone];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];
  v8 = [a2 localizedDescription];
  v11[0] = 136315650;
  OUTLINED_FUNCTION_2();
  v12 = v7;
  v13 = v9;
  v14 = v10;
  _os_log_error_impl(&dword_2557E2000, a3, OS_LOG_TYPE_ERROR, "%s  !!!ERROR: Could not save Record Zone %@: %@", v11, 0x20u);
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke_2";
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  >>> Record zone not found", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke_2";
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  >>> ERROR reaching the network", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_1(void *a1)
{
  v1 = [a1 userInfo];
  v8 = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  >>> ERROR for fetch records operation: %@", v4, v5, v6, v7, v8);
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  v8 = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  Could not fetch record changes: %@", v4, v5, v6, v7, v8);
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_2";
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  >>> Record zone not found", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[_KSCloudKitManager fetchPublicRecordsWithNames:completionHandler:]_block_invoke";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  Couldn't create recordID", buf, 0xCu);
}

@end