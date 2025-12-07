@interface ADIDManager
@end

@implementation ADIDManager

void __28__ADIDManager_Private__init__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Received clear monthly reset count notification", objc_opt_class()];
  _ADLog();

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setMonthlyResetArray:v5];

  objc_sync_exit(v4);
  v6 = [*(a1 + 32) save];
}

void __50__ADIDManager_Private__setDSID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  [v2 reloadNoServicesRestrictions];

  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CE9638] sharedInstance];
  v6 = [v3 stringWithFormat:@"[%@]: Reloaded no services regional restriction: %d", v4, objc_msgSend(v5, "isRestrictedRegion")];
  _ADLog();

  if ((ADSimulatedCrashKillCode_InternalInconsistency_block_invoke_settingDSID & 1) != 0 || (v7 = *(*(*(a1 + 48) + 8) + 40), [*(a1 + 32) activeDSIDRecord], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "DSID"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "isEqualToString:", v9), v9, v8, v7))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ setDSID]: DSID already set to %@.", objc_opt_class(), *(*(*(a1 + 48) + 8) + 40)];
    _ADLog();

    [*(a1 + 32) saveDataForPCD];
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *(v11 + 16);

      v12();
    }

    return;
  }

  ADSimulatedCrashKillCode_InternalInconsistency_block_invoke_settingDSID = 1;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  if (v14)
  {
    if ([v14 length])
    {
      goto LABEL_12;
    }

    v13 = *(*(a1 + 48) + 8);
  }

  v15 = *(v13 + 40);
  *(v13 + 40) = @"0";

LABEL_12:
  v32 = [*(a1 + 32) save];
  if (v32)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = [*(a1 + 32) activeDSIDRecord];
    v19 = [v18 DSID];
    v20 = [v16 stringWithFormat:@"[%@]: Failed to save record for current DSID %@", v17, v19];
    _ADLog();
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Request to set DSID to %@", objc_opt_class(), *(*(*(a1 + 48) + 8) + 40)];
  _ADLog();

  v22 = *(*(*(a1 + 48) + 8) + 40);
  v23 = [*(a1 + 32) activeDSIDRecord];
  v24 = [v23 DSID];
  LOBYTE(v22) = [v22 isEqualToString:v24];

  if (v22)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: DSID already set to %@, skipping.", objc_opt_class(), *(*(*(a1 + 48) + 8) + 40)];
    _ADLog();
LABEL_18:

    goto LABEL_19;
  }

  v26 = [*(a1 + 32) reloadRecords:*(*(*(a1 + 48) + 8) + 40)];
  v27 = [*(a1 + 32) activeDSIDRecord];

  if (!v27)
  {
    v25 = [objc_alloc(MEMORY[0x277CE96F0]) initWithDSID:*(*(*(a1 + 48) + 8) + 40) serializedRecord:0 version:3];
    [*(a1 + 32) setActiveDSIDRecord:v25];
    goto LABEL_18;
  }

LABEL_19:
  v28 = [*(a1 + 32) activeDSIDRecord];
  v29 = [MEMORY[0x277CBEAA8] date];
  [v28 setPersonalizedAdsTimestamp:{objc_msgSend(v29, "AD_toServerTime")}];

  v30 = [*(a1 + 32) activeDSIDRecord];
  [v30 ensureiAdIDs];

  ADSimulatedCrashKillCode_InternalInconsistency_block_invoke_settingDSID = 0;
  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))();
  }
}

uint64_t __38__ADIDManager_Private__deleteRecords___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActiveDSIDRecord:0];
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  [v2 clearDSIDRecords];

  v3 = ADWriteDataToKeychain();
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting APIDAccountsSettings: %d", v3];
    _ADLog();
  }

  v5 = ADWriteDataToKeychain();
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting DPID: %d", v5];
    _ADLog();
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __50__ADIDManager_Private__incrementMonthlyResetCount__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 doubleValue];
  if (v3 > *(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __54__ADIDManager_Private__finishedReconciling_withError___block_invoke()
{
  v0 = +[ADAdTrackingSchedulingManager sharedInstance];
  [v0 handleAccountChange];
}

void __42__ADIDManager_Private__updateAccountData___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v3)
    {
LABEL_3:
      v5 = a1[5];
      v6 = WeakRetained;
      v7 = v3;
LABEL_8:
      [v6 finishedReconciling:v5 withError:v7];
      goto LABEL_9;
    }
  }

  else
  {
    ADSimulateCrash();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v8 = +[ADAdTrackingSchedulingManager sharedInstance];
  v9 = [v8 isAdEnabledLocality];

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = [a1[4] activeDSIDRecord];
    v14 = [v13 DSID];
    v15 = [MEMORY[0x277CE9638] sharedInstance];
    v16 = [v15 iTunesStorefront];
    v17 = [v11 stringWithFormat:@"[%@]: Not reconciling DPID nor sending segments to Ad Platforms. This is not an Ad-enabled locality (dsid: %@ storefront: %@)", v12, v14, v16];
    _ADLog();

    v6 = a1[4];
    v5 = a1[5];
    v7 = 0;
    goto LABEL_8;
  }

  v10 = +[ADClientDPIDManager sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__ADIDManager_Private__updateAccountData___block_invoke_2;
  v18[3] = &unk_278C58468;
  objc_copyWeak(&v20, a1 + 6);
  v19 = a1[5];
  [v10 reconcileDPID:v18];

  objc_destroyWeak(&v20);
LABEL_9:
}

void __42__ADIDManager_Private__updateAccountData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    ADSimulateCrash();
  }

  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Error reconciling DPID - %@", objc_opt_class(), v3];
    _ADLog();
  }

  v6 = [WeakRetained activeDSIDRecord];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ADIDManager_Private__updateAccountData___block_invoke_3;
  v8[3] = &unk_278C58440;
  v7 = v3;
  v9 = v7;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  [v6 sendPersonalizedAdsStatusToAdPlatforms:v8];

  objc_destroyWeak(&v11);
}

void __42__ADIDManager_Private__updateAccountData___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = a1[4];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    ADSimulateCrash();
  }

  v5 = [WeakRetained activeDSIDRecord];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ADIDManager_Private__updateAccountData___block_invoke_4;
  v7[3] = &unk_278C58440;
  v6 = v3;
  v8 = v6;
  objc_copyWeak(&v10, a1 + 6);
  v9 = a1[5];
  [v5 sendSegmentDataToAdPlatforms:v7];

  objc_destroyWeak(&v10);
}

void __42__ADIDManager_Private__updateAccountData___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(a1 + 32);
  }

  v5 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained finishedReconciling:*(a1 + 40) withError:v5];
}

void __34__ADIDManager_Private__reconcile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activeDSIDRecord];

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = v6;
    if (v4)
    {
      v8 = [v3 activeDSIDRecord];
      v9 = [v8 DSID];
      v10 = [v5 stringWithFormat:@"[%@]: Set current DSID to %@. Beginning reconciliation process.", v7, v9];
      _ADLog();

      v11 = [MEMORY[0x277CE9638] sharedInstance];
      v12 = [v11 iTunesStorefront];

      if (!v12 || ([v12 isEqualToString:@"NONE"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"ERROR"))
      {
        v13 = [MEMORY[0x277CE9638] sharedInstance];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __34__ADIDManager_Private__reconcile___block_invoke_2;
        v20[3] = &unk_278C584B8;
        objc_copyWeak(&v23, (a1 + 56));
        v22 = *(a1 + 40);
        v21 = v12;
        [v13 reloadStorefront:v20];

        objc_destroyWeak(&v23);
      }

      else
      {
        [v3 updateAccountData:*(a1 + 40)];
        if (([v12 isEqualToString:@"NONE"] & 1) == 0)
        {
          ADSaveToPromotedContentKeychain();
        }
      }
    }

    else
    {
      v12 = [v5 stringWithFormat:@"[%@]: Failed to get or create record for DSID %@", v6, *(a1 + 32)];
      v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:0 andDescription:v12];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      [*(*(*(a1 + 48) + 8) + 40) AD_Log:@"iAdInternalLogging"];
      [v3 finishedReconciling:*(a1 + 40) withError:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"weakSelf is nil in setDSID completionHandler"];
    _ADLog();

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: weakSelf was nil in reconcile", objc_opt_class()];
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:13 andDescription:v12];
    [v15 AD_Log:@"iAdInternalLogging"];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }
}

uint64_t __34__ADIDManager_Private__reconcile___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateAccountData:*(a1 + 40)];

  result = *(a1 + 32);
  if (result)
  {
    result = [result isEqualToString:@"NONE"];
    if ((result & 1) == 0)
    {

      return ADSaveToPromotedContentKeychain();
    }
  }

  return result;
}

void __44__ADIDManager_Private__handleAccountChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDSIDRecord];
  v3 = [v2 DSID];

  v4 = [MEMORY[0x277CE9638] sharedInstance];
  v5 = [v4 iTunesAccountDSID];

  v6 = [*(a1 + 32) activeDSIDRecord];
  v7 = [v6 iCloudDSID];

  v8 = [MEMORY[0x277CE9638] sharedInstance];
  v9 = [v8 iCloudDSID];

  v10 = [*(a1 + 32) activeDSIDRecord];
  v11 = [v10 lastJingleAccountStatus];

  if (v3 && ![v5 isEqualToString:v3])
  {
    v13 = 1;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v3)
    {
      v12 = 1;
    }

    else
    {
      v12 = v5 == 0;
    }

    v13 = !v12;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (![v9 isEqualToString:v7])
  {
    v15 = 1;
    goto LABEL_20;
  }

LABEL_13:
  if (v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 == 0;
  }

  v15 = !v14;
LABEL_20:
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = &stru_285107440;
  if (v11 == -1)
  {
    v18 = @"not ";
  }

  v33 = v5;
  v19 = [v16 stringWithFormat:@"[%@ handleAccountChange]: iTunesAccountDSID is %@, current DSID is %@. iCloudAccountDSID is %@, current iCloud DSID is %@. Account has %@been reconciled once.", v17, v5, v3, v9, v7, v18];
  _ADLog();

  v20 = [MEMORY[0x277CE9638] sharedInstance];
  v21 = [v20 isProtoU13state];

  v22 = [MEMORY[0x277CE9638] sharedInstance];
  v23 = [v22 isProtoTeenState];

  if (((v13 | v15) & 1) != 0 || v11 == -1 || (v21 & 1) != 0 || v23)
  {
    [*(a1 + 32) rotateAccountToken];
    if (v13)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Current iTunes account has changed from %@ to %@.", objc_opt_class(), v3, v33];
      _ADLog();
    }

    if (v15)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Current iCloud account has changed from %@ to %@.", objc_opt_class(), v7, v9];
      _ADLog();
    }

    if (v11 == -1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Current DSID record has never been through reconcile.", objc_opt_class()];
      _ADLog();

      if (!v21)
      {
LABEL_34:
        if (!v23)
        {
LABEL_36:
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __44__ADIDManager_Private__handleAccountChange___block_invoke_2;
          v34[3] = &unk_278C57FA0;
          v30 = *(a1 + 32);
          v35 = *(a1 + 40);
          [v30 reconcile:v34];

          v24 = v33;
          goto LABEL_37;
        }

LABEL_35:
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Device is Proto Teen State.", objc_opt_class()];
        _ADLog();

        goto LABEL_36;
      }
    }

    else if (!v21)
    {
      goto LABEL_34;
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Device is Proto U13 State.", objc_opt_class()];
    _ADLog();

    if (!v23)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v24 = v33;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] handleAccountChange: Current accounts (iTunes: %@, iCloud: %@) have not changed.", objc_opt_class(), v33, v9];
  _ADLog();

  v26 = *(a1 + 40);
  if (v26)
  {
    (*(v26 + 16))(v26, 0);
  }

LABEL_37:
}

uint64_t __44__ADIDManager_Private__handleAccountChange___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __32__ADIDManager_Private__runTask___block_invoke(uint64_t a1)
{
  [*(a1 + 32) checkForLateReconcile];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__ADIDManager_Private__runTask___block_invoke_2;
  v3[3] = &unk_278C58508;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 reconcile:v3];
}

void __32__ADIDManager_Private__runTask___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) requestIdentifier];
  v7 = [v3 stringWithFormat:@"[%@]: Finished task %@ with error %@", v5, v6, v4];

  _ADLog();
  if (([*(a1 + 40) finishTask] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: Unable to mark the task as finished. Please file a radar...", objc_opt_class()];
    _ADLog();
  }
}

@end