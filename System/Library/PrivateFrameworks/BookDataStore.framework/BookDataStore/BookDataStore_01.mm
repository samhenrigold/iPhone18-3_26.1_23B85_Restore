void sub_1E461C660(uint64_t a1)
{
  v2 = [[BDSOSTransaction alloc] initWithTransactionName:"attachToZone"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E461C7C8;
  aBlock[3] = &unk_1E875A3D0;
  v14 = v2;
  v15 = *(a1 + 48);
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = [*(a1 + 32) accessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E461C828;
  v9[3] = &unk_1E8759CE0;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v8, v9);
}

void sub_1E461C7C8(uint64_t a1)
{
  [*(a1 + 32) endTransaction];
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1E461C828(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v25 = v3;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 1. attachToZones Creating Record Zones - zones:%@", buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E461CA3C;
  v22[3] = &unk_1E875A3F8;
  v7 = v5;
  v23 = v7;
  [v6 enumerateObjectsUsingBlock:v22];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 112);
  *(v12 + 112) = v11;

  v14 = *(a1 + 32);
  v15 = [v14 desiredRecordZoneIDs];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E461CAC0;
  v18[3] = &unk_1E875A420;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v19 = v16;
  v20 = v17;
  v21 = *(a1 + 56);
  [v14 p_createRecordZones:v15 completionHandler:v18];
}

void sub_1E461CA3C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithZoneName:v4 ownerName:*MEMORY[0x1E695B728]];

  [*(a1 + 32) addObject:v6];
}

void sub_1E461CAC0(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E461CCEC;
    v16[3] = &unk_1E875A3D0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v16[4] = *(a1 + 40);
    v17 = v9;
    dispatch_async(v8, v16);

    goto LABEL_14;
  }

  if (!sub_1E461CF04(v3))
  {
    v10 = BDSErrorFromUnderlyingError(@"BDSCloudKitClientError", 2002, v4);
    if (sub_1E461D0E4(v4))
    {
      v11 = 2006;
    }

    else
    {
      v12 = sub_1E461D2D4(v4);
      if (!v12)
      {
        v14 = BDSCloudKitLog(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [*(a1 + 40) containerIdentifier];
          *buf = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_ERROR, "[BCCloudKitDatabaseController (%@)] attachToZones creating record zones failed, ERROR:%@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      v11 = 2007;
    }

    v13 = BDSErrorFromUnderlyingError(@"BDSCloudKitClientError", v11, v4);

    v10 = v13;
LABEL_13:
    [*(a1 + 40) zonesTemporarilyUnreadableWithError:v10 completion:*(a1 + 48)];

    goto LABEL_14;
  }

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695B798]];
  v7 = [v6 allKeys];

  [*(a1 + 40) zonesUnreadableDueToMissingD2DEncryptionIdentity:v7 completion:*(a1 + 48)];
LABEL_14:
}

void sub_1E461CCEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1E461CD7C;
  v2[3] = &unk_1E8759AA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 p_createRecordIDSaltWithCompletion:v2];
}

void sub_1E461CD7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) detachWithError:a2 completion:0];
    v4 = _Block_copy(*(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v4[2]();
      v4 = v5;
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E461CE64;
    v6[3] = &unk_1E8759AA0;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v3 fetchChangesWithCompletion:v6];
  }
}

void sub_1E461CE64(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = BDSErrorFromUnderlyingError(@"BDSCloudKitClientError", 2004, v6);
    [*(a1 + 32) detachWithError:v3 completion:0];
  }

  v4 = _Block_copy(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

uint64_t sub_1E461CF04(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v4)
  {
    goto LABEL_17;
  }

  if ([v1 code] == 112)
  {
    v5 = 1;
    goto LABEL_18;
  }

  if ([v1 code] != 2)
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v6 = [v1 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E695B798]];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 allValues];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 domain];
        if ([v14 isEqualToString:v3])
        {
          v15 = [v13 code];

          if (v15 == 112)
          {
            v5 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v5 = 0;
LABEL_19:

LABEL_18:
  return v5;
}

uint64_t sub_1E461D0E4(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [v1 code];
  v6 = 1;
  if (v5 == 111 || v5 == 5008)
  {
    goto LABEL_19;
  }

  if ([v1 code] != 2)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  v7 = [v1 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E695B798]];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 allValues];
  v6 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v18 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 code];
        v14 = [v12 domain];
        v15 = [v14 isEqualToString:v3];

        if (v15)
        {
          if (v13 == 111 || v13 == 5008)
          {
            v6 = 1;
            goto LABEL_21;
          }
        }
      }

      v6 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

LABEL_21:
    v8 = v18;
  }

LABEL_19:
  return v6;
}

BOOL sub_1E461D2D4(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (v4)
  {
    v5 = [v1 code];
    if (v5 == 2)
    {
      v7 = [v1 userInfo];
      v8 = [v7 objectForKey:*MEMORY[0x1E695B798]];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [v8 allValues];
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v14 code];
            v16 = [v14 domain];
            v17 = [v16 isEqualToString:v3];

            if (v17 && v15 == 36)
            {
              v6 = 1;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_16:
    }

    else
    {
      v6 = v5 == 36;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1E461D58C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    v13 = 138543618;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - Detaching Container:%{public}@, ERROR:%@", &v13, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = 0;

  *(*(a1 + 32) + 13) = 0;
  [*(a1 + 32) p_informObserversOfAttachmentChange];
  v11 = _Block_copy(*(a1 + 48));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
  }
}

void sub_1E461D774(uint64_t a1)
{
  v2 = +[BDSReachability isOffline];
  v3 = _Block_copy(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    (v4)[2](v4, [*(a1 + 32) attachedToContainer], !v2);
    v3 = v4;
  }
}

void sub_1E461D8F4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E695BA90]);
    v3 = [v2 initWithZoneName:*(a1 + 32) ownerName:*MEMORY[0x1E695B728]];
    v4 = *(a1 + 48);
    if (v3)
    {
      v9 = v3;
      v5 = [*(a1 + 40) recordZones];
      v6 = [v5 objectForKeyedSubscript:v9];
      v7 = [v6 recordZone];
      (*(v4 + 16))(v4, v7);

      return;
    }
  }

  else
  {
    v4 = *(a1 + 48);
  }

  v8 = *(v4 + 16);

  v8(v4, 0);
}

void sub_1E461DE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461DE9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v8 = BDSCloudKitLog(WeakRetained);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "CKModifySubscriptionsOperation failed: %{public}@", buf, 0xCu);
    }

    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    if (v10)
    {
      [v10 doubleValue];
      v12 = dispatch_time(0, (v11 * 1000000000.0));
      v13 = [v7 accessQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E461E058;
      v14[3] = &unk_1E875A030;
      v15 = v7;
      v16 = *(a1 + 32);
      dispatch_after(v12, v13, v14);
    }
  }
}

void sub_1E461E3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461E424(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = BDSCloudKitLog(WeakRetained);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v9)
      {
        v10 = [a1[4] containerIdentifier];
        *buf = 138543618;
        v30 = v10;
        v31 = 2114;
        v32 = v5;
        _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "CKModifySubscriptionsOperation (%{public}@) failed: %{public}@", buf, 0x16u);
      }

      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

      if (v12)
      {
        [v12 doubleValue];
        v14 = dispatch_time(0, (v13 * 1000000000.0));
        v15 = [v7 accessQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E461E740;
        block[3] = &unk_1E875A3D0;
        v27 = v7;
        v28 = a1[5];
        dispatch_after(v14, v15, block);

        v16 = v27;
      }

      else
      {
        v22 = _Block_copy(a1[5]);
        v16 = v22;
        if (v22)
        {
          (*(v22 + 2))(v22);
        }
      }

      goto LABEL_17;
    }

    if (v9)
    {
      v17 = [a1[4] containerIdentifier];
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "CKModifySubscriptionsOperation Success for: (%{public}@)", buf, 0xCu);
    }

    v18 = [v7 accessQueue];

    if (v18)
    {
      v19 = [v7 accessQueue];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1E461E74C;
      v23[3] = &unk_1E875A3D0;
      v24 = v7;
      v25 = a1[5];
      dispatch_async(v19, v23);

      goto LABEL_17;
    }
  }

  v20 = _Block_copy(a1[5]);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20);
  }

LABEL_17:
}

uint64_t sub_1E461E74C(uint64_t a1)
{
  [*(a1 + 32) setHasSubscription:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 p_scheduleArchiveWithCompletion:v3];
}

uint64_t sub_1E461ECFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E461ED14(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was deleted: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461EE5C;
  v7[3] = &unk_1E875A030;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1E461EE5C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1E461EEB4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was purged: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461EFFC;
  v7[3] = &unk_1E875A030;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1E461EFFC(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1E461F054(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was deleted due to user encrypted data reset: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461F19C;
  v7[3] = &unk_1E875A030;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1E461F19C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1E461F1F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461F2AC;
  v7[3] = &unk_1E875A030;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_1E461F2AC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation serverChangeToken was updated: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) setServerChangeToken:*(a1 + 32)];
  return [*(a1 + 40) p_scheduleArchiveWithCompletion:&unk_1F5E61FE8];
}

void sub_1E461F36C(uint64_t a1)
{
  v1 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E45E0000, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (changeTokenUpdatedBlock)", v2, 2u);
  }
}

void sub_1E461F3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E461F4A0;
  block[3] = &unk_1E8759FE0;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_1E461F4A0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was changed: %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) zoneName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [*(a1 + 48) changedRecordZoneIDs];
    [v6 addObject:*(a1 + 32)];

    [*(a1 + 48) p_scheduleArchiveWithCompletion:&unk_1F5E62008];
  }
}

void sub_1E461F5A4(uint64_t a1)
{
  v1 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E45E0000, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneWithIDChangedBlock)", v2, 2u);
  }
}

void sub_1E461F60C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [*(*(*(a1 + 48) + 8) + 40) count];
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(*(v10 + 8) + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E461F894;
    v23[3] = &unk_1E875A5B0;
    v23[4] = v10;
    v8 = [v9 zonesDeletedOrReset:v11 completion:v23];
  }

  if (v7)
  {
    v12 = BDSCloudKitLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E47066B0();
    }

    v13 = _Block_copy(*(a1 + 40));
    v14 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    v15 = v13[2];
LABEL_8:
    v15();
LABEL_9:

    goto LABEL_14;
  }

  v16 = BDSCloudKitLog(v8);
  v17 = v16;
  if (!v6)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_INFO, "CKFetchDatabaseChangesOperation Success, but no serverChangeToken", buf, 2u);
    }

    v19 = _Block_copy(*(a1 + 40));
    v14 = v19;
    if (!v19)
    {
      goto LABEL_9;
    }

    v15 = v19[2];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation Success, serverChangeToken: %{public}@", buf, 0xCu);
  }

  v18 = [*(a1 + 32) accessQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E461F944;
  v20[3] = &unk_1E875A470;
  v20[4] = *(a1 + 32);
  v21 = v6;
  v22 = *(a1 + 40);
  dispatch_async(v18, v20);

LABEL_14:
}

void sub_1E461F894(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation - zonesDeletedOrReset DONE: %{public}@", &v4, 0xCu);
  }
}

void sub_1E461F944(uint64_t a1)
{
  [*(a1 + 32) setServerChangeToken:*(a1 + 40)];
  v2 = _Block_copy(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, 0);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E461FA00;
  v5[3] = &unk_1E875A008;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 p_scheduleArchiveWithCompletion:v5];
}

void sub_1E461FA00(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (fetchDatabaseChangesCompletionBlock), serverChangeToken: %{public}@", &v4, 0xCu);
  }
}

void sub_1E461FE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461FE2C(id *a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BDSCloudKitLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 allKeys];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v68 = sub_1E4628A28;
    v69 = &unk_1E875AAB0;
    v70 = v9;
    v10 = v9;
    [v8 enumerateObjectsUsingBlock:&buf];
    v11 = [v10 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "3. BCCloudKitDatabaseController - fetchRecordZonesOperation.fetchRecordZonesCompletionBlock fetchedZones:[%{public}@]", &buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E4620728;
  aBlock[3] = &unk_1E875A628;
  objc_copyWeak(&v62, a1 + 8);
  v61 = a1[7];
  v12 = _Block_copy(aBlock);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_1E4620AA0;
  v52[3] = &unk_1E875A6C8;
  v53 = a1[4];
  v13 = v5;
  v54 = v13;
  v55 = a1[5];
  v56 = a1[6];
  objc_copyWeak(&v59, a1 + 8);
  v57 = a1[7];
  v14 = v12;
  v58 = v14;
  v15 = _Block_copy(v52);
  v16 = v15;
  if (!v6)
  {
    v22 = MEMORY[0x1E695DFD8];
    v23 = [v13 allKeys];
    v21 = [v22 setWithArray:v23];

    v24 = [MEMORY[0x1E695DFD8] setWithArray:a1[4]];
    v25 = [v21 isEqualToSet:v24];

    if (!v25)
    {
      v29 = BDSCloudKitLog(v26);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = a1[4];
        v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v68 = sub_1E4628A28;
        v69 = &unk_1E875AAB0;
        v32 = v31;
        v70 = v32;
        [v30 enumerateObjectsUsingBlock:&buf];
        v33 = [v32 componentsJoinedByString:{@", "}];

        v34 = v33;
        v35 = [v13 allKeys];
        v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v68 = sub_1E4628A28;
        v69 = &unk_1E875AAB0;
        v37 = v36;
        v70 = v37;
        [v35 enumerateObjectsUsingBlock:&buf];
        v38 = [v37 componentsJoinedByString:{@", "}];

        *v63 = 138412546;
        v64 = v34;
        v65 = 2112;
        v66 = v38;
        _os_log_impl(&dword_1E45E0000, v29, OS_LOG_TYPE_ERROR, "CKFetchRecordZonesOperation Wanted:%@ Received:%@", v63, 0x16u);
      }

      v16[2](v16);
      goto LABEL_30;
    }

    v27 = BDSCloudKitLog(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E45E0000, v27, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - calling saveResultsBlock", &buf, 2u);
    }

    v28 = [v13 allValues];
    (*(v14 + 2))(v14, v28, 0);
    goto LABEL_29;
  }

  v17 = BDSCloudKitLog(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - fetchRecordZonesOperation failed, ERROR:%@", &buf, 0xCu);
  }

  v18 = sub_1E461CF04(v6);
  if ((v18 & 1) != 0 || (v18 = sub_1E461D0E4(v6), v18))
  {
    v19 = BDSCloudKitLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - No PCS Identity available", &buf, 2u);
    }

    v20 = _Block_copy(a1[7]);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, v6);
    }

    goto LABEL_30;
  }

  if ([v6 code] == 6 || objc_msgSend(v6, "code") == 7)
  {
    v39 = [v6 userInfo];
    v21 = [v39 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v28 = [WeakRetained accessQueue];

    if (v21 && v28)
    {
      v42 = BDSCloudKitLog(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_1E45E0000, v42, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - fetchRecordZonesOperation failed - retrying, ERROR:%@", &buf, 0xCu);
      }

      [v21 doubleValue];
      v44 = dispatch_time(0, (v43 * 1000000000.0));
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_1E4621320;
      v48[3] = &unk_1E875A678;
      objc_copyWeak(&v51, a1 + 8);
      v50 = a1[7];
      v49 = a1[4];
      dispatch_after(v44, v28, v48);

      objc_destroyWeak(&v51);
    }

    else
    {
      v45 = BDSCloudKitLog(v41);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706780();
      }

      (*(v14 + 2))(v14, 0, v6);
    }

LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if ([v6 code] == 3)
  {
    v46 = BDSCloudKitLog(3);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706780();
    }
  }

  else
  {
    v47 = sub_1E461D2D4(v6);
    if (!v47)
    {
      v16[2](v16);
      goto LABEL_31;
    }

    v46 = BDSCloudKitLog(v47);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706718();
    }
  }

  (*(v14 + 2))(v14, 0, v6);
LABEL_31:

  objc_destroyWeak(&v59);
  objc_destroyWeak(&v62);
}

void sub_1E46206C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_1E4620728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained accessQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E462083C;
    v12[3] = &unk_1E875A030;
    v13 = v8;
    v14 = v5;
    dispatch_async(v9, v12);

    v10 = _Block_copy(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v6);
    }
  }
}

void sub_1E462083C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recordZones];
  v3 = BDSCloudKitLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = *(a1 + 40);
    v6 = objc_alloc_init(v4);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v14 = sub_1E4628A80;
    v15 = &unk_1E875A600;
    v16 = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:&buf];
    v8 = [v7 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - assigning recordZones[%{public}@]", &buf, 0xCu);
  }

  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E4620A0C;
  v11[3] = &unk_1E875A600;
  v12 = v2;
  v10 = v2;
  [v9 enumerateObjectsUsingBlock:v11];
}

void sub_1E4620A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[BCCloudKitRecordZone alloc] initWithRecordZone:v3];
  v4 = *(a1 + 32);
  v5 = [v3 zoneID];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_1E4620AA0(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
  v3 = [*(a1 + 40) allValues];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [*(a1 + 40) allKeys];
  v6 = [v4 setWithArray:v5];
  [v2 minusSet:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E4620E30;
  v25[3] = &unk_1E875A650;
  v8 = v7;
  v26 = v8;
  v9 = BDSCloudKitLog([v2 enumerateObjectsUsingBlock:v25]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v2 allObjects];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v28 = sub_1E4628A28;
    v29 = &unk_1E875AAB0;
    v30 = v11;
    v12 = v11;
    [v10 enumerateObjectsUsingBlock:&buf];
    v13 = [v12 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - One or more zones are missing newRecordZones:[%{public}@]", &buf, 0xCu);
  }

  v14 = [objc_alloc(MEMORY[0x1E695B9B0]) initWithRecordZonesToSave:v8 recordZoneIDsToDelete:0];
  v15 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
  [v15 setContainer:*(a1 + 48)];
  [v14 setConfiguration:v15];
  [v14 setDatabase:*(a1 + 56)];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E4620EA8;
  v18[3] = &unk_1E875A6A0;
  objc_copyWeak(&v24, (a1 + 80));
  v16 = v8;
  v19 = v16;
  v22 = *(a1 + 64);
  v20 = *(a1 + 32);
  v23 = *(a1 + 72);
  v17 = v3;
  v21 = v17;
  [v14 setModifyRecordZonesCompletionBlock:v18];
  [*(a1 + 56) addOperation:v14];

  objc_destroyWeak(&v24);
}

void sub_1E4620E30(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA80];
  v4 = a2;
  v5 = [[v3 alloc] initWithZoneID:v4];

  [*(a1 + 32) addObject:v5];
}

void sub_1E4620EA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = [WeakRetained accessQueue];

    if (v10)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = *(a1 + 64);
      v16 = [*(a1 + 48) arrayByAddingObjectsFromArray:v6];
      (*(v15 + 16))(v15, v16, v8);
    }

    else
    {
      v23 = BDSCloudKitLog(v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = MEMORY[0x1E695DF70];
        v26 = *(a1 + 32);
        v27 = objc_alloc_init(v25);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1E4628A80;
        v37 = &unk_1E875A600;
        v38 = v27;
        v28 = v27;
        [v26 enumerateObjectsUsingBlock:buf];
        v29 = [v28 componentsJoinedByString:{@", "}];

        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_ERROR, "5a CKModifyRecordZonesOperation failed to modify %{public}@ retrying, ERROR:%@", buf, 0x16u);
      }

      [v10 doubleValue];
      v31 = dispatch_time(0, (v30 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E46212A0;
      block[3] = &unk_1E875A678;
      objc_copyWeak(&v35, (a1 + 72));
      v34 = *(a1 + 56);
      v33 = *(a1 + 40);
      dispatch_after(v31, v12, block);

      objc_destroyWeak(&v35);
    }
  }

  else
  {
    v10 = [*(a1 + 48) arrayByAddingObjectsFromArray:v6];
    v17 = BDSCloudKitLog(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x1E695DF70];
      v19 = v10;
      v20 = objc_alloc_init(v18);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A80;
      v37 = &unk_1E875A600;
      v38 = v20;
      v21 = v20;
      [v19 enumerateObjectsUsingBlock:buf];

      v22 = [v21 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "CKModifyRecordZonesOperation success saving: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1E46212A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_createRecordZones:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = _Block_copy(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1E4621320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_createRecordZones:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = _Block_copy(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1E4621574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46215A0(id *a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v32 = objc_alloc(MEMORY[0x1E695DF30]);
    v33 = MEMORY[0x1E696AEC0];
    v34 = [a1[4] containerIdentifier];
    v35 = [v33 stringWithFormat:@"Nil weak self after fetch salt record %@", v34];
    v59 = *MEMORY[0x1E696AA08];
    v36 = v6;
    if (!v6)
    {
      v36 = [MEMORY[0x1E695DFB0] null];
    }

    v60 = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v38 = [v32 initWithName:@"No Books Salt" reason:v35 userInfo:v37];
    v39 = v38;

    if (!v6)
    {
    }

    objc_exception_throw(v38);
  }

  v8 = WeakRetained;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1E461ECFC;
  v57 = sub_1E461ED0C;
  v58 = 0;
  if (!v5 || v6)
  {
    v21 = BDSCloudKitLog(WeakRetained);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = [a1[4] containerIdentifier];
      *buf = 138543874;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      *&buf[24] = v5;
      _os_log_error_impl(&dword_1E45E0000, v21, OS_LOG_TYPE_ERROR, "(%{public}@) Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", buf, 0x20u);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    memset(buf, 0, sizeof(buf));
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x80uLL, buf))
    {
      v40 = objc_alloc(MEMORY[0x1E695DF30]);
      v41 = MEMORY[0x1E696AEC0];
      v42 = [a1[4] containerIdentifier];
      v43 = [v41 stringWithFormat:@"Unable to generate random salt %@", v42];
      v61 = *MEMORY[0x1E696AA08];
      v44 = v6;
      if (!v6)
      {
        v44 = [MEMORY[0x1E695DFB0] null];
      }

      v62 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v46 = [v40 initWithName:@"No Books Record Salt" reason:v43 userInfo:v45];
      v47 = v46;

      if (!v6)
      {
      }

      objc_exception_throw(v46);
    }

    v22 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"recordIDSalt"];
    v23 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"recordIDSalt" recordID:v22];
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:128];
    v25 = [v23 encryptedValuesByKey];
    [v25 setObject:v24 forKeyedSubscript:@"saltEncrypted"];

    v27 = BDSCloudKitSyncLog(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [a1[4] containerIdentifier];
      *v63 = 138543362;
      v64 = v28;
      _os_log_impl(&dword_1E45E0000, v27, OS_LOG_TYPE_INFO, "(%{public}@) Will save record salt", v63, 0xCu);
    }

    v29 = [a1[4] database];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1E4621D04;
    v48[3] = &unk_1E875A718;
    objc_copyWeak(&v52, a1 + 6);
    v48[4] = a1[4];
    v51 = &v53;
    v30 = v24;
    v49 = v30;
    v50 = a1[5];
    [v29 saveRecord:v23 completionHandler:v48];

    objc_destroyWeak(&v52);
  }

  else
  {
    v9 = [v5 encryptedValuesByKey];
    v10 = [v9 objectForKeyedSubscript:@"saltEncrypted"];

    if (!v10)
    {
      v10 = [v5 objectForKeyedSubscript:@"salt"];
    }

    [v8 setRecordIDSalt:v10];
    v11 = [v5 recordChangeTag];
    v12 = v54[5];
    v54[5] = v11;

    v14 = BDSCloudKitSyncLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [a1[4] containerIdentifier];
      v16 = v54[5];
      *buf = 138543874;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      *&buf[24] = v16;
      _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully read existing record salt salt:(%@) changeTag:(%@). Calling completion", buf, 0x20u);
    }

    v17 = v54[5];
    v18 = MEMORY[0x1E695DFD8];
    v19 = [a1[4] desiredRecordZoneIDs];
    v20 = [v18 setWithArray:v19];
    [v8 p_informObserversOfSaltVersionIdentifierChanged:v17 forZones:v20 completion:a1[5]];
  }

  _Block_object_dispose(&v53, 8);
}

void sub_1E4621BE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v21 = objc_begin_catch(a1);
    v22 = BDSCloudKitSyncLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1E47067E8();
    }

    v23 = _Block_copy(*(v18 + 40));
    if (v23)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
      v23[2](v23, v24);
    }

    objc_end_catch();
    JUMPOUT(0x1E462198CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1E4621D04(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v45 = objc_alloc(MEMORY[0x1E695DF30]);
    v46 = MEMORY[0x1E696AEC0];
    v47 = [*(a1 + 32) containerIdentifier];
    v48 = [v46 stringWithFormat:@"Nil weak self after save record %@", v47];
    v53 = *MEMORY[0x1E696AA08];
    v49 = v6;
    if (!v6)
    {
      v49 = [MEMORY[0x1E695DFB0] null];
    }

    v54 = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v51 = [v45 initWithName:@"No Books Record Salt" reason:v48 userInfo:v50];
    v52 = v51;

    if (!v6)
    {
    }

    objc_exception_throw(v51);
  }

  v8 = WeakRetained;
  v9 = BDSCloudKitSyncLog(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v56 = v10;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "(%{public}@) Saving record salt....", buf, 0xCu);
  }

  v11 = [v6 domain];
  if ([v11 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v12 = [v6 code];

    if (v12 == 14)
    {
      v14 = [v6 userInfo];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E695B7C0]];

      v16 = [v15 encryptedValuesByKey];
      v17 = [v16 objectForKeyedSubscript:@"saltEncrypted"];

      if (v15)
      {
        v19 = BDSCloudKitSyncLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 32) containerIdentifier];
          v21 = [v15 recordChangeTag];
          *buf = 138544130;
          v56 = v20;
          v57 = 2112;
          v58 = v17;
          v59 = 2112;
          v60 = v21;
          v61 = 2112;
          v62 = v6;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully established record salt from server record salt:(%@) changeTag:(%@) error:(%@)", buf, 0x2Au);
        }

        [v8 setRecordIDSalt:v17];
        v22 = [v15 recordChangeTag];
        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v6 = 0;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v25 = BDSCloudKitSyncLog(v13);
  v15 = v25;
  if (v6)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706850();
    }
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) containerIdentifier];
      v27 = *(a1 + 40);
      v28 = [v5 recordChangeTag];
      *buf = 138543874;
      v56 = v26;
      v57 = 2112;
      v58 = v27;
      v59 = 2112;
      v60 = v28;
      _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully established record salt for NO ERROR salt:(%@) changeTag:(%@)", buf, 0x20u);
    }

    v29 = [v5 encryptedValuesByKey];
    v30 = [v29 objectForKeyedSubscript:@"saltEncrypted"];
    [v8 setRecordIDSalt:v30];

    v31 = [v5 recordChangeTag];
    v6 = 0;
    v32 = *(*(a1 + 56) + 8);
    v15 = *(v32 + 40);
    *(v32 + 40) = v31;
  }

LABEL_18:

  v33 = [v8 recordIDSalt];

  v35 = BDSCloudKitSyncLog(v34);
  v36 = v35;
  if (v6 || !v33)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1E47068B8();
    }

    v44 = _Block_copy(*(a1 + 48));
    v42 = v44;
    if (v44)
    {
      (*(v44 + 2))(v44, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v8 containerIdentifier];
      v38 = [*(a1 + 32) recordIDSalt];
      v39 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v56 = v37;
      v57 = 2112;
      v58 = v38;
      v59 = 2112;
      v60 = v39;
      _os_log_impl(&dword_1E45E0000, v36, OS_LOG_TYPE_DEFAULT, "(%{public}@) *** Got record salt:(%@) changeTag:(%@)", buf, 0x20u);
    }

    v40 = *(*(*(a1 + 56) + 8) + 40);
    v41 = MEMORY[0x1E695DFD8];
    v42 = [*(a1 + 32) desiredRecordZoneIDs];
    v43 = [v41 setWithArray:v42];
    [v8 p_informObserversOfSaltVersionIdentifierChanged:v40 forZones:v43 completion:*(a1 + 48)];
  }
}

void sub_1E46224BC(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) changedRecordZoneIDs];
  if ([v3 containsObject:v11])
  {
    v4 = [*(a1 + 32) tokenStores];
    v5 = [v4 objectForKeyedSubscript:v11];
    v6 = [v5 cloudSyncEnabled];

    if (v6)
    {
      v7 = 40;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [*(a1 + 32) tokenStores];
  v9 = [v8 objectForKeyedSubscript:v11];
  v10 = [v9 cloudSyncEnabled];

  if (!v10)
  {
    goto LABEL_8;
  }

  v7 = 48;
LABEL_7:
  [*(a1 + v7) addObject:v11];
LABEL_8:
}

void sub_1E46225B4(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    v6 = *(a1 + 40);
    *buf = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- record zone changes; unchangedRecordIDS :%{public}@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 32);
        v13 = [*(*(&v16 + 1) + 8 * v11) zoneName];
        [v12 p_informObserversOfCompletedFetchOfZone:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = _Block_copy(*(a1 + 48));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v3);
  }
}

void sub_1E4622AEC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    if (![*(a1 + 40) containsObject:v5])
    {
      goto LABEL_5;
    }

    v3 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v5];
    v4 = [[BCCloudKitRecordZone alloc] initWithRecordZone:v3];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }

LABEL_5:
}

void sub_1E4622BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tokenStores];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    dispatch_group_enter(*(a1 + 40));
    v6 = [v3 copy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E4622CB8;
    v8[3] = &unk_1E875A7B8;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 40);
    v7 = v6;
    [v5 serverChangeTokenWithCompletion:v8];
  }
}

void sub_1E4622CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4622D98;
  block[3] = &unk_1E8759FE0;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);

  dispatch_group_leave(*(a1 + 56));
}

void sub_1E4622D98(void *a1)
{
  v2 = a1[4];
  if (a1[5])
  {
    v3 = a1[4];

    [v3 setObject:? forKey:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [v2 setObject:v4 forKey:a1[6]];
  }
}

void sub_1E4622E28(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = BDSCloudKitLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) containerIdentifier];
      v5 = *(a1 + 48);
      *buf = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - finished fetching tokens for zones %{public}@", buf, 0x16u);
    }

    v6 = objc_opt_new();
    v7 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E462300C;
    v11[3] = &unk_1E875A790;
    v12 = *(a1 + 32);
    v13 = v6;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:v11];
    [*(a1 + 40) p_fetchRecordZoneChanges:*(a1 + 48) optionsByRecordZoneID:v8 completionHandler:*(a1 + 56)];
  }

  else
  {
    *(*(a1 + 40) + 15) = 1;
    v9 = _Block_copy(*(a1 + 56));
    if (v9)
    {
      v10 = v9;
      (*(v9 + 2))(v9, 0);
      v9 = v10;
    }
  }
}

void sub_1E462300C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = objc_alloc_init(MEMORY[0x1E695B908]);
  if (v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];

    if (v3 != v5)
    {
      [v4 setPreviousServerChangeToken:v3];
    }
  }

  [*(a1 + 40) setObject:v4 forKeyedSubscript:v6];
}

void sub_1E462387C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak((v46 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v47 - 256), 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1E46238EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E46239A8;
  block[3] = &unk_1E875A7E0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1E46239A8(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = [*(a1 + 32) recordType];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController fetchRecordZoneChangesOperation.recordChangedBlock record=%@ %@", &v12, 0x16u);
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [*(a1 + 32) recordType];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = objc_opt_new();
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [*(a1 + 32) recordType];
    [v8 setObject:v7 forKey:v9];
  }

  [v7 addObject:*(a1 + 32)];
  if ([v7 count] >= 0x20)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) recordType];
    [v10 p_informObserversOfRecordsChanged:v7 forRecordType:v11];

    [v7 removeAllObjects];
  }
}

void sub_1E4623B4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4623C28;
  block[3] = &unk_1E8759FE0;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1E4623C28(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController recordWithIDWasDeletedBlock recordID=%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) observers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) databaseController:*(a1 + 40) recordWithIDWasDeleted:*(a1 + 32) recordType:{*(a1 + 48), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

void sub_1E4623DAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4623E9C;
  block[3] = &unk_1E875A858;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_1E4623E9C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = MEMORY[0x1E695DF70];
    v5 = *(a1 + 40);
    v6 = objc_alloc_init(v4);
    *v11 = MEMORY[0x1E69E9820];
    *&v11[8] = 3221225472;
    *&v11[16] = sub_1E4628A28;
    v12 = &unk_1E875AAB0;
    v13 = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:v11];
    v8 = [v7 componentsJoinedByString:{@", ", *v11, *&v11[8], *&v11[16], v12}];

    *v11 = 138543618;
    *&v11[4] = v3;
    *&v11[12] = 2114;
    *&v11[14] = v8;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneChangeTokensUpdatedBlock recordZoneIDs=%{public}@ ", v11, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  v9 = [*(a1 + 32) tokenStores];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];

  [v10 storeServerChangeToken:*(a1 + 56) completion:0];
}

void sub_1E4624070(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = BDSCloudKitLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) containerIdentifier];
    v15 = MEMORY[0x1E695DF70];
    v16 = *(a1 + 40);
    v17 = objc_alloc_init(v15);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v31 = &unk_1E875AAB0;
    v32 = v17;
    v18 = v17;
    [v16 enumerateObjectsUsingBlock:buf];
    v19 = [v18 componentsJoinedByString:{@", "}];

    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    *&buf[22] = 1024;
    LODWORD(v31) = a5;
    _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneFetchCompletionBlock recordZoneIDs=%{public}@ moreComing= %{BOOL}d", buf, 0x1Cu);
  }

  v20 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E46242E0;
  block[3] = &unk_1E875A8A8;
  block[4] = *(a1 + 32);
  v25 = v10;
  v29 = a5;
  v28 = *(a1 + 48);
  v26 = v12;
  v27 = v11;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  dispatch_async(v20, block);
}

void sub_1E46242E0(uint64_t a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) changedRecordZoneIDs];
  [v2 removeObject:*(a1 + 40)];

  [*(a1 + 32) p_scheduleArchiveWithCompletion:&unk_1F5E62028];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = sub_1E461CF04(v3);
    v5 = *(a1 + 48);
    if (v4)
    {
      v6 = [v5 userInfo];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695B798]];
      v32 = [v7 allKeys];

      [*(a1 + 32) zonesUnreadableDueToMissingD2DEncryptionIdentity:v32 completion:0];

      return;
    }

    if (sub_1E461D0E4(v5))
    {
      v16 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44[0] = @"Unreadable keychain - cannot fetch record zones";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v18 = v16;
      v19 = 2006;
    }

    else
    {
      v20 = sub_1E461D2D4(*(a1 + 48));
      if (!v20)
      {
        v23 = BDSCloudKitSyncLog(v20);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v28 = [*(a1 + 32) containerIdentifier];
          v29 = *(a1 + 40);
          v30 = *(a1 + 48);
          v31 = [v29 zoneName];
          *buf = 138544130;
          v34 = v28;
          v35 = 2114;
          v36 = v29;
          v37 = 2114;
          v38 = v30;
          v39 = 2112;
          v40 = v31;
          _os_log_error_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ zoneFetchCompletion failed: %{public}@ time to delete the tokenStore for  %@", buf, 0x2Au);
        }

        v24 = [*(a1 + 32) tokenStores];
        v22 = [v24 objectForKeyedSubscript:*(a1 + 40)];

        [v22 deleteCloudDataWithCompletion:0];
        v25 = [*(a1 + 48) domain];
        v26 = [v25 isEqualToString:*MEMORY[0x1E695B740]];

        if (v26)
        {
          v27 = [*(a1 + 48) code];
          if (v27 <= 0x1C && ((1 << v27) & 0x14200000) != 0)
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:*(a1 + 40)];
          }
        }

        goto LABEL_16;
      }

      v21 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Account temporarily unavailable - cannot fetch record zones";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v18 = v21;
      v19 = 2007;
    }

    v22 = [v18 errorWithDomain:@"BDSCloudKitClientError" code:v19 userInfo:v17];

    [*(a1 + 32) zonesTemporarilyUnreadableWithError:v22 completion:0];
LABEL_16:

    return;
  }

  v8 = BDSCloudKitLog(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) containerIdentifier];
    v10 = [*(a1 + 40) zoneName];
    v11 = *(a1 + 80);
    *buf = 138543874;
    v34 = v9;
    v35 = 2114;
    v36 = v10;
    v37 = 1024;
    LODWORD(v38) = v11;
    _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ success.  More coming: %{BOOL}d", buf, 0x1Cu);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
  if ((*(a1 + 80) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) zoneName];
    [v12 p_informObserversOfCompletedFetchOfZone:v13];
  }

  [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
  v14 = [*(a1 + 32) tokenStores];
  v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];

  [v15 storeServerChangeToken:*(a1 + 56) completion:0];
}

void sub_1E4624758(uint64_t a1)
{
  v1 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E45E0000, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneFetchCompletionBlock)", v2, 2u);
  }
}

void sub_1E46247C0(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock", buf, 0xCu);
  }

  v6 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4624964;
  block[3] = &unk_1E875A948;
  objc_copyWeak(&v17, (a1 + 72));
  v13 = v3;
  v7 = *(a1 + 56);
  v11 = *(a1 + 32);
  v8 = *(&v11 + 1);
  v16 = *(a1 + 64);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v17);
}

void sub_1E4624964(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v3 = *(a1 + 64);
    v4 = *(*(v3 + 8) + 40);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1E4624EFC;
    v40[3] = &unk_1E875A8F8;
    v40[4] = WeakRetained;
    v40[5] = v3;
    [WeakRetained zonesDeletedOrReset:v4 completion:v40];
  }

  v5 = *(a1 + 32);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = *MEMORY[0x1E695B740];
    if ([v7 isEqualToString:*MEMORY[0x1E695B740]])
    {
      v9 = [v6 code];

      if (v9 == 2)
      {
        v10 = [WeakRetained setBackOffInterval:0.0];
      }
    }

    else
    {
    }

    v18 = BDSCloudKitLog(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v30 = [*(a1 + 40) containerIdentifier];
      v31 = MEMORY[0x1E695DF70];
      v32 = *(a1 + 48);
      v33 = objc_alloc_init(v31);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A28;
      v42 = &unk_1E875AAB0;
      v43 = v33;
      v34 = v33;
      [v32 enumerateObjectsUsingBlock:buf];
      v35 = [v34 componentsJoinedByString:{@", "}];

      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2114;
      *&buf[14] = v35;
      *&buf[22] = 2114;
      v42 = v6;
      _os_log_error_impl(&dword_1E45E0000, v18, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock zoneChanges failed: %{public}@ %{public}@", buf, 0x20u);
    }

    v19 = [v6 domain];
    v20 = [v19 isEqualToString:v8];

    if (v20)
    {
      v21 = [v6 code];
      if (v21 <= 0x17 && ((1 << v21) & 0x8000C0) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = [v6 domain];
      v26 = [v25 isEqualToString:*MEMORY[0x1E696A250]];

      if (v26)
      {
LABEL_16:
        v22 = BDSCloudKitLog(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 40) containerIdentifier];
          *buf = 138543618;
          *&buf[4] = v23;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation retrying fetch for error: %@", buf, 0x16u);
        }

        v24 = [WeakRetained accessQueue];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1E4624FD4;
        v36[3] = &unk_1E875A920;
        v36[4] = WeakRetained;
        v37 = v6;
        objc_copyWeak(&v39, (a1 + 80));
        v38 = *(a1 + 40);
        dispatch_async(v24, v36);

        objc_destroyWeak(&v39);
        goto LABEL_23;
      }
    }

    v27 = BDSCloudKitLog(v21);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706920();
    }
  }

  else
  {
    v11 = BDSCloudKitLog([WeakRetained setBackOffInterval:0.0]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) containerIdentifier];
      v13 = MEMORY[0x1E695DF70];
      v14 = *(a1 + 48);
      v15 = objc_alloc_init(v13);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A28;
      v42 = &unk_1E875AAB0;
      v43 = v15;
      v16 = v15;
      [v14 enumerateObjectsUsingBlock:buf];
      v17 = [v16 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock success (%{public}@).", buf, 0x16u);
    }

    [*(a1 + 40) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
    [*(a1 + 40) setFetchRecordZoneChangesSuccess:1];
  }

LABEL_23:
  v28 = _Block_copy(*(a1 + 56));
  v29 = v28;
  if (v28)
  {
    (*(v28 + 2))(v28, v6);
  }
}

void sub_1E4624EFC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - fetchRecordZoneChangesCompletionBlock - zonesDeletedOrReset DONE: %{public}@", &v5, 0x16u);
  }
}

void sub_1E4624FD4(uint64_t a1)
{
  if (([*(a1 + 32) serverFetchPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerFetchPostponed:1];
    [*(a1 + 32) p_updateRetryParametersFromFetchZoneChangesOperationError:*(a1 + 40)];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) accessQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E46250CC;
    v5[3] = &unk_1E875A178;
    objc_copyWeak(&v6, (a1 + 56));
    v5[4] = *(a1 + 48);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_1E46250CC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = BDSCloudKitLog([WeakRetained setServerFetchPostponed:0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) containerIdentifier];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in fetchRecordZoneChangesOperation.fetchRecordZoneChangesCompletionBlock retryFetch", &v7, 0xCu);
    }

    v6 = [v3 coalescedZoneFetch];
    [v6 signalWithCompletion:&unk_1F5E62048];
  }
}

void sub_1E4625258(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = +[BDSReachability isOffline];
  v3 = v2;
  v4 = BDSCloudKitLog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    v6 = v5;
    v7 = @"YES";
    if (v3)
    {
      v7 = @"NO";
    }

    *buf = 138543618;
    v32 = v5;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_internetReachabilityChanged reachable:%@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(a1 + 32) observers];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = [*(a1 + 32) observers];
        v14 = [v13 objectForKeyedSubscript:v12];

        if ([v14 count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              v19 = 0;
              do
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v21 + 1) + 8 * v19++) databaseController:*(a1 + 32) reachabilityChanged:v3 ^ 1u];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

void sub_1E4625880(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BDSCloudKitLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [v6 count];
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "p_informObserversOfRecordsChanged: changedRecords.count=%lu recordType=%{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:v6 forRecordType:v5];
}

void sub_1E4625A64(id *a1)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] containerIdentifier];
    v4 = a1[5];
    v5 = [a1[6] allObjects];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v40 = &unk_1E875AAB0;
    v41[0] = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:buf];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = [a1[4] zoneObservers];
    *buf = 138544130;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v40 = v8;
    LOWORD(v41[0]) = 2112;
    *(v41 + 2) = v9;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfSaltVersionIdentifierChanged: saltVersionIdentifier=%{public}@ zoneIDs=%{public}@ observers:%@", buf, 0x2Au);
  }

  if ([a1[5] length])
  {
    v10 = dispatch_group_create();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = a1[6];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      v27 = v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [v16 zoneName];
          v18 = [v17 length];

          if (v18)
          {
            v19 = [a1[4] zoneObservers];
            v20 = [v16 zoneName];
            v21 = [v19 objectForKey:v20];

            if (v21)
            {
              dispatch_group_enter(v10);
              v23 = a1[4];
              v22 = a1[5];
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v31[0] = sub_1E4625E8C;
              v31[1] = &unk_1E875A9C0;
              v31[2] = v23;
              v31[3] = v16;
              v24 = v22;
              v32 = v24;
              v33 = v10;
              [v21 databaseController:v23 saltVersionIdentifierChanged:v24 completion:v30];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4625F98;
    block[3] = &unk_1E875A2E0;
    v29 = a1[7];
    dispatch_group_notify(v10, v25, block);

    v26 = v29;
    goto LABEL_18;
  }

  v10 = _Block_copy(a1[7]);
  if (v10)
  {
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
    (v10[2].isa)(v10, v26);
LABEL_18:
  }
}

void sub_1E4625E8C(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    v6 = [*(a1 + 40) zoneName];
    v7 = *(a1 + 48);
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "%@ name:%@ salt:%@  success:%{BOOL}d  LEAVE GROUP", &v8, 0x26u);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1E4625F98(uint64_t a1)
{
  v2 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "p_informObserversOfSaltVersionIdentifierChanged DONE", v5, 2u);
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_1E4626CB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = BDSCloudKitLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47069F0();
    }
  }

  v12 = _Block_copy(*(a1 + 40));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v10);
  }
}

void sub_1E4626E70(id *a1)
{
  v2 = [a1[4] desiredRecordZoneIDs];
  v3 = [v2 valueForKey:@"zoneName"];

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSCloudKitClientError" code:2003 userInfo:0];
  v5 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E4626F8C;
  v7[3] = &unk_1E8759CE0;
  v7[4] = v5;
  v8 = a1[5];
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v5 detachWithError:v4 completion:v7];
}

void sub_1E4626F8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E4627044;
  v4[3] = &unk_1E875A420;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _deleteRecordZonesWithIDs:v3 qualityOfService:17 completion:v4];
}

void sub_1E4627044(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E46270D4;
  v3[3] = &unk_1E875A2E0;
  v4 = *(a1 + 48);
  [v1 attachToZones:v2 completion:v3];
}

void sub_1E46270D4(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1E4627228(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E46272B8;
  v3[3] = &unk_1E875A2E0;
  v4 = *(a1 + 48);
  [v1 detachWithError:v2 completion:v3];
}

void sub_1E46272B8(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1E462746C(uint64_t a1)
{
  [*(a1 + 32) invalidateSalt];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E4627504;
  v3[3] = &unk_1E875A2E0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 detachWithError:0 completion:v3];
}

void sub_1E4627504(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1E4627668(uint64_t a1)
{
  v9 = [*(a1 + 32) observers];
  v2 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_opt_new();
    [v9 setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  [v2 addObject:*(a1 + 48)];
  v3 = [*(a1 + 32) container];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) attachedToContainer];

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = [v7 container];
      [v6 databaseController:v7 attachmentChanged:v8 != 0];
    }
  }
}

void sub_1E4627870(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E46279BC;
    v8[3] = &unk_1E875AA10;
    v9 = *(a1 + 48);
    v5 = [v3 indexesOfObjectsPassingTest:v8];
    if ([v5 count])
    {
      [v3 removeObjectsAtIndexes:v5];
    }

    else
    {
      v7 = BDSCloudKitLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706C04();
      }
    }

    v6 = v9;
  }

  else
  {
    v6 = BDSCloudKitLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706C78();
    }
  }
}

void sub_1E4627AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E4627B50;
  v3[3] = &unk_1E875AA38;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1E4627B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E4627C08;
  v6[3] = &unk_1E875AA10;
  v7 = *(a1 + 32);
  v5 = [v4 indexesOfObjectsPassingTest:v6];
  if ([v5 count])
  {
    [v4 removeObjectsAtIndexes:v5];
  }
}

void sub_1E4627CE8(char *a1)
{
  v1 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) && (a1 = [*(a1 + 5) length]) != 0)
  {
    v2 = [*(v1 + 6) zoneObservers];
    [v2 setObject:*(v1 + 4) forKey:*(v1 + 5)];

    v4 = BDSCloudKitSyncLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 4);
      v6 = *(v1 + 5);
      v7 = 134218242;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - Setting observer=%p for zone =%{public}@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = BDSCloudKitSyncLog(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706D5C();
    }
  }
}

void sub_1E4627F58(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = BDSCloudKitLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v30 = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - Registering store for record zone %{public}@", buf, 0xCu);
    }

    v6 = [v3 tokenStores];
    v7 = (a1 + 32);
    v8 = [v6 objectForKeyedSubscript:*(a1 + 32)];

    if (v8)
    {
      v10 = BDSCloudKitLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706E3C(v7, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    else
    {
      v17 = *(a1 + 40);
      v18 = [v3 tokenStores];
      [v18 setObject:v17 forKeyedSubscript:*(a1 + 32)];

      v19 = [*(a1 + 48) attachedToContainer];
      if (v19)
      {
        v20 = [v3 changedRecordZoneIDs];
        v21 = [v20 containsObject:*v7];

        if (v21)
        {
          v23 = BDSCloudKitLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v3 containerIdentifier];
            v25 = *v7;
            *buf = 138543618;
            v30 = v24;
            v31 = 2114;
            v32 = v25;
            _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in registerServerChangeTokenStore:forZoneID: recordZoneID=%{public}@", buf, 0x16u);
          }

          v26 = [v3 coalescedZoneFetch];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = sub_1E4628224;
          v27[3] = &unk_1E875A008;
          v28 = *v7;
          [v26 signalWithCompletion:v27];

          v10 = v28;
        }

        else
        {
          v10 = [*v7 zoneName];
          [v3 p_informObserversOfCompletedFetchOfZone:v10];
        }
      }

      else
      {
        v10 = BDSCloudKitLog(v19);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - skipping fetch, we are not yet attached in registerServerChangeTokenStore:forZoneID:", buf, 2u);
        }
      }
    }
  }
}

void sub_1E4628224(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - performed zone fetch for recordZoneID:%{public}@", &v4, 0xCu);
  }
}

void sub_1E46283E8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained tokenStores];
    v5 = [v4 copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11, v17];
          v13 = v12;
          if (*(a1 + 32) == v12)
          {
            v16 = [v3 tokenStores];
            [v16 removeObjectForKey:v11];

            v15 = v6;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = BDSCloudKitLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706EF0(v15);
    }

LABEL_13:
  }
}

void sub_1E462871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E4628740(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) attachedToContainer];
  v2 = [*(a1 + 32) container];
  v3 = [v2 description];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_1E4628A28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneName];
  [v2 addObject:v3];
}

void sub_1E4628A80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 zoneID];
  v3 = [v4 zoneName];
  [v2 addObject:v3];
}

uint64_t sub_1E4628B54()
{
  qword_1EE2B0510 = objc_alloc_init(BDSBookWidgetDataFile);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4628FE4()
{
  v0 = [MEMORY[0x1E698F540] books];
  v1 = [v0 containerURL];

  v2 = [v1 URLByAppendingPathComponent:@"Library/Application Support/bookdatastored/"];
  v3 = [v2 URLByAppendingPathComponent:@"/currentWidgetData.plist"];
  v4 = qword_1ECF75DF0;
  qword_1ECF75DF0 = v3;

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v6 = [v5 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v9 = BDSWidgetLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E47070FC();
    }
  }
}

__CFString *BDSLibraryContentAssetTypeFromExtension(void *a1)
{
  v1 = a1;
  if ([@"pdf" caseInsensitiveCompare:v1])
  {
    if ([@"epub" caseInsensitiveCompare:v1] && objc_msgSend(@"ibooks", "caseInsensitiveCompare:", v1))
    {
      if ([@"m4a" caseInsensitiveCompare:v1] && objc_msgSend(@"m4b", "caseInsensitiveCompare:", v1) && objc_msgSend(@"m4p", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aa", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aax", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp4", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aac", "caseInsensitiveCompare:", v1) && objc_msgSend(@"adts", "caseInsensitiveCompare:", v1) && objc_msgSend(@"ac3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aif", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aiff", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aifc", "caseInsensitiveCompare:", v1) && objc_msgSend(@"caf", "caseInsensitiveCompare:", v1) && objc_msgSend(@"snd", "caseInsensitiveCompare:", v1) && objc_msgSend(@"au", "caseInsensitiveCompare:", v1) && objc_msgSend(@"sd2", "caseInsensitiveCompare:", v1) && objc_msgSend(@"wav", "caseInsensitiveCompare:", v1))
      {
        v2 = @"LibraryContentAssetTypeUnknown";
      }

      else
      {
        v2 = @"AssetTypeAudiobook";
      }
    }

    else
    {
      v2 = @"AssetTypeEbook";
    }
  }

  else
  {
    v2 = @"AssetTypePDF";
  }

  return v2;
}

void sub_1E46294CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E46294E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E46294FC(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a2];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E46296F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E4629714(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 writeToURL:a2 options:1073741825 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void sub_1E46298FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E4629920(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 removeItemAtURL:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

void sub_1E462A0D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_iCloudIdentityDidChange:0];
}

uint64_t sub_1E462A324(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "iCloud identity changed. {Refreshing with optedIn: %{public}@}", &v5, 0xCu);
  }

  return [*(a1 + 32) dq_archiveCurrentICloudIdentityToken];
}

void sub_1E462A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E462A588(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E462A5A0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) currentICloudIdentityToken];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E462A6C0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    sub_1E4707164((a1 + 40), v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) observers];
  [v11 addObject:*(a1 + 40)];
}

void sub_1E462A808(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

void sub_1E462A9E4(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BDSLiverpoolStatusMonitor: restartObserving was called", buf, 2u);
  }

  [*(a1 + 32) dq_refreshICloudAvailabilityStatus];
  v3 = [*(a1 + 32) lastArchivedICloudIdentityToken];
  v4 = [*(a1 + 32) currentICloudIdentityToken];
  v5 = v4;
  if (v3 == v4)
  {
  }

  else
  {
    v6 = [*(a1 + 32) lastArchivedICloudIdentityToken];
    v7 = [*(a1 + 32) currentICloudIdentityToken];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) dq_archiveCurrentICloudIdentityToken];
      v10 = [*(a1 + 32) currentICloudIdentityToken];
      v11 = [*(a1 + 32) lastArchivedICloudIdentityToken];
      v12 = BDSCloudKitLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_INFO, "BDSLiverpoolStatusMonitor: notifying observers of a token change", v14, 2u);
      }

      [*(a1 + 32) _notifyObserversWithCurrentToken:v10 lastToken:v11];
      goto LABEL_11;
    }
  }

  v10 = BDSCloudKitLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_INFO, "BDSLiverpoolStatusMonitor: tokens match ... so we are not notifying anyone", v13, 2u);
  }

LABEL_11:
}

void sub_1E462AC2C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentICloudIdentityToken];
  [*(a1 + 32) dq_refreshICloudAvailabilityStatus];
  v3 = [*(a1 + 32) currentICloudIdentityToken];
  [*(a1 + 32) dq_archiveCurrentICloudIdentityToken];
  if (v2 != v3)
  {
    v4 = [v2 isEqual:v3];
    if ((v4 & 1) == 0)
    {
      v5 = BDSCloudKitLog(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"YES";
        if (!v3)
        {
          v6 = @"NO";
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "iCloud identity changed. {iCloudEnabled: %@}", &v7, 0xCu);
      }

      [*(a1 + 32) _notifyObserversWithCurrentToken:v3 lastToken:v2];
    }
  }
}

void sub_1E462B254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  if ([a1 count] && !v10 && (a4 & 1) != 0)
  {
    v12 = [a1 pointerAtIndex:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 methodForSelector:a3];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1E462B3E4;
      v19[3] = &unk_1E875ABC0;
      v19[4] = a1;
      v21 = a3;
      v20 = v11;
      v14(v13, a3, v19);
    }

    else
    {
      v17 = _Block_copy(v11);
      if (v17)
      {
        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:1000 userInfo:0];
        v17[2](v17, 0, v18);
      }
    }
  }

  else
  {
    v15 = _Block_copy(v11);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, a4, v10);
    }
  }
}

void sub_1E462B3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removePointerAtIndex:0];
  [*(a1 + 32) bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:*(a1 + 48) successSoFar:a2 errorSoFar:v6 completion:*(a1 + 40)];
}

void sub_1E462B458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a5;
  v10 = a6;
  if (![a1 count])
  {
    v14 = _Block_copy(v10);
    v15 = v14;
    if (v14)
    {
      v16 = v14[2];
LABEL_9:
      v16();
    }

LABEL_10:

    goto LABEL_15;
  }

  if (!v9)
  {
    v17 = _Block_copy(v10);
    v15 = v17;
    if (v17)
    {
      v16 = v17[2];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v11 = [a1 pointerAtIndex:0];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 methodForSelector:a3];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E462B60C;
    v20[3] = &unk_1E875ABC0;
    v20[4] = a1;
    v22 = a3;
    v21 = v10;
    v13(v12, a3, v20);
  }

  else
  {
    v18 = _Block_copy(v10);
    if (v18)
    {
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:1000 userInfo:0];
      v18[2](v18, 0, v19);
    }
  }

LABEL_15:
}

void sub_1E462B60C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removePointerAtIndex:0];
  [*(a1 + 32) bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:*(a1 + 48) successSoFar:a2 errorSoFar:v6 completion:*(a1 + 40)];
}

id sub_1E462B680(void *a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 valueForKey:{v6, v21}];
        objc_opt_class();
        v21 = &unk_1F5E7E050;
        v15 = BUClassAndProtocolCast();
        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:{v15, &unk_1F5E7E050}];

          if (v16)
          {
            v17 = [v8 objectForKeyedSubscript:v15];
            v18 = v7[2](v7, v17, v13);
            [v8 setObject:v18 forKeyedSubscript:v15];
          }

          else
          {
            [v8 setObject:v13 forKeyedSubscript:v15];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = [v8 copy];

  return v19;
}

id sub_1E462B89C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [a1 objectAtIndex:i];
      v10 = [MEMORY[0x1E695DFB0] null];

      if (v9 == v10)
      {
        v11 = _Block_copy(v4);
        v12 = v11;
        if (v11)
        {
          (*(v11 + 2))(v11, i);
        }
      }

      else
      {
        [v5 addObject:v9];
      }
    }
  }

  v13 = [v5 copy];

  return v13;
}

void sub_1E462B9AC(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = a4;
  if (v16)
  {
    v6 = [a1 count];
    if (v6)
    {
      v7 = 0;
      v8 = v6 + a3;
      v9 = -a3;
      v10 = v6;
      do
      {
        v11 = v10 - a3;
        if (v10 >= a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = v10;
        }

        v13 = [a1 subarrayWithRange:{v7, v12}];
        v16[2](v16, v13, v7, v12);

        v8 -= a3;
        if (a3 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = a3;
        }

        v9 += a3;
        v15 = v14 + v9;
        v7 += a3;
        v10 = v11;
      }

      while (v15 < v6);
    }

    else
    {
      (v16[2])();
    }
  }
}

void sub_1E462BABC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addPointer:{*(*(&v13 + 1) + 8 * v12++), v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [v7 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:a3 successSoFar:1 errorSoFar:0 completion:v6];
}

void sub_1E462BBF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addPointer:{*(*(&v14 + 1) + 8 * v12++), v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:0 userInfo:0];
  [v7 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:a3 successSoFar:1 errorSoFar:v13 completion:v6];
}

__CFString *sub_1E462BD5C()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);

  return v1;
}

void sub_1E462BEE0(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = BDSCloudKitLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47071B0(v6, v7);
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) zoneName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Change Token Controller successfully transitioned to a new cloud container for zone: %@", &v9, 0xCu);
    }
  }

LABEL_5:
}

void sub_1E462C26C(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - zoneNeedsUpdate serverSaltVersionIdentifier:(%@)", buf, 0x16u);
  }

  v5 = +[BCSaltVersionIdentifier fetchRequest];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 48);
  v22 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v22];
  v8 = v22;
  if ([v7 count])
  {
    v9 = [v7 count];
    if (v9 == 1)
    {
      v10 = [v7 firstObject];
      v11 = [v10 localSaltVersionIdentifier];
      v12 = [v11 isEqualToString:*(a1 + 40)];
      v13 = v12 ^ 1;
      v14 = BDSCloudKitSyncLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) zoneName];
        v16 = *(a1 + 40);
        *buf = 138413058;
        v24 = v15;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v16;
        v29 = 1024;
        v30 = v13;
        _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@  Comparing local(%@) to server(%@).Need update:%{BOOL}d", buf, 0x26u);
      }

      v17 = _Block_copy(*(a1 + 56));
      v18 = v17;
      if (v17)
      {
        (*(v17 + 2))(v17, v13, 0);
      }

      goto LABEL_18;
    }

    v21 = BDSCloudKitSyncLog(v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707228();
    }

    v10 = _Block_copy(*(a1 + 56));
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1006 userInfo:0];
      (v10)[2](v10, 1, v11);
      goto LABEL_18;
    }
  }

  else
  {
    v19 = BDSCloudKitSyncLog(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) zoneName];
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - no local identifier saved", buf, 0xCu);
    }

    v10 = _Block_copy(*(a1 + 56));
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v10)[2](v10, 0, v11);
LABEL_18:
    }
  }
}

void sub_1E462C6C0(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v34 = v3;
    v35 = 2112;
    *v36 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier serverSaltVersionIdentifier:(%@)", buf, 0x16u);
  }

  v5 = +[BCSaltVersionIdentifier fetchRequest];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 48);
  v32 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v32];
  v8 = v32;
  if (v7)
  {
    if ([v7 count] == 1)
    {
      v9 = [v7 firstObject];
    }

    else
    {
      v10 = [v7 count];
      if (v10 >= 2)
      {
        v11 = [v7 firstObject];
        if ([v7 count] >= 2)
        {
          v12 = 1;
          do
          {
            v13 = *(a1 + 48);
            v14 = [v7 objectAtIndexedSubscript:v12];
            [v13 deleteObject:v14];

            ++v12;
          }

          while ([v7 count] > v12);
        }

LABEL_15:
        [v11 setLocalSaltVersionIdentifier:*(a1 + 40)];
        [v11 setServerSaltVersionIdentifier:*(a1 + 40)];
        v18 = [*(a1 + 48) hasChanges];
        if (v18)
        {
          v19 = *(a1 + 48);
          v31 = v8;
          v20 = [v19 save:&v31];
          v21 = v31;

          v23 = BDSCloudKitSyncLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 32) zoneName];
            *buf = 138412802;
            v34 = v24;
            v35 = 1024;
            *v36 = v20;
            *&v36[4] = 2112;
            *&v36[6] = v21;
            _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier SAVE success %{BOOL}d error:(%@)", buf, 0x1Cu);
          }

          if (v20)
          {
            goto LABEL_25;
          }

          v26 = BDSCloudKitSyncLog(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [*(a1 + 32) zoneName];
            v28 = *(a1 + 40);
            *buf = 138412802;
            v34 = v27;
            v35 = 2112;
            *v36 = v28;
            *&v36[8] = 2114;
            *&v36[10] = v21;
            _os_log_error_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_ERROR, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier Error saving saltVersionIdentifier:(%@) Error:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          v26 = BDSCloudKitSyncLog(v18);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_1E47072D0();
          }

          v21 = v8;
        }

LABEL_25:
        v8 = v21;
        goto LABEL_26;
      }

      v15 = BDSCloudKitSyncLog(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) zoneName];
        v17 = *(a1 + 40);
        *buf = 138412546;
        v34 = v16;
        v35 = 2112;
        *v36 = v17;
        _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier NEW record %@", buf, 0x16u);
      }

      v9 = [[BCSaltVersionIdentifier alloc] initIntoManagedObjectContext:*(a1 + 48)];
    }

    v11 = v9;
    goto LABEL_15;
  }

LABEL_26:
  v29 = _Block_copy(*(a1 + 56));
  v30 = v29;
  if (v29)
  {
    (*(v29 + 2))(v29, v8 == 0, v8);
  }
}

void sub_1E462CB90(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"BCServerChangeToken"];
  v3 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v2];
  [v3 setResultType:1];
  v4 = *(a1 + 32);
  v21 = 0;
  v5 = [v4 executeRequest:v3 error:&v21];
  v6 = v21;
  v7 = v6;
  if (v6)
  {
    v8 = BDSCloudKitLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707374();
    }
  }

  if (v5)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = *(a1 + 32);
    v19 = *MEMORY[0x1E695D350];
    v22[0] = *MEMORY[0x1E695D328];
    v20 = v2;
    v10 = [MEMORY[0x1E695DFD8] set];
    v23[0] = v10;
    v22[1] = *MEMORY[0x1E695D4D0];
    v11 = [MEMORY[0x1E695DFD8] set];
    v23[1] = v11;
    v22[2] = *MEMORY[0x1E695D2F0];
    v12 = MEMORY[0x1E695DFD8];
    v13 = [v5 result];
    v14 = [v12 setWithArray:v13];
    v23[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    [v9 postNotificationName:v19 object:v18 userInfo:v15];

    v2 = v20;
  }

  v16 = _Block_copy(*(a1 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v5 != 0, v7);
  }
}

void sub_1E462D010(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698F550] shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v5 = BDSCloudKitDevelopmentLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) zoneName];
      v7 = *(a1 + 40);
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ storing server change token: %@\", buf, 0x16u);
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"BCServerChangeToken"];
  [v8 setReturnsObjectsAsFaults:0];
  v9 = *(a1 + 48);
  v20 = 0;
  v10 = [v9 executeFetchRequest:v8 error:&v20];
  v11 = v20;
  if ([v10 count])
  {
    [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"BCServerChangeToken" inManagedObjectContext:*(a1 + 48)];
  }
  v12 = ;
  [v12 setValue:*(a1 + 56) forKey:@"serverChangeToken"];

  if ([*(a1 + 48) hasChanges])
  {
    v13 = *(a1 + 48);
    v19 = v11;
    [v13 save:&v19];
    v14 = v19;

    if (v14)
    {
      v16 = BDSCloudKitLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1E4707404();
      }
    }
  }

  else
  {
    v14 = v11;
  }

  v17 = _Block_copy(*(a1 + 64));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17);
  }
}

void sub_1E462D3A0(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"BCServerChangeToken"];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v22 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v22];
  v5 = v22;
  v6 = v5;
  if (v5)
  {
    v7 = BDSCloudKitLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707494();
    }
  }

  v8 = [v4 count];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696ACD0]);
    v10 = [v4 objectAtIndexedSubscript:0];
    v11 = [v10 valueForKey:@"serverChangeToken"];
    v21 = 0;
    v12 = [v9 initForReadingFromData:v11 error:&v21];
    v13 = v21;

    if (v13)
    {
      v15 = BDSCloudKitLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1E4707524(v13, v15);
      }

      v16 = 0;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E695BAB8]) initWithCoder:v12];
      [v12 finishDecoding];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = BDSCloudKitLog(v8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [*(a1 + 40) zoneName];
    *buf = 138412546;
    v24 = v18;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - #recordChange zone: %@ returning server change token: %@", buf, 0x16u);
  }

  v19 = _Block_copy(*(a1 + 48));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v16);
  }
}

void sub_1E462F880(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a3;
  v6 = +[BDSReachability sharedReachabilityForInternetConnection];

  if (v6 == v5)
  {
    +[BDSReachability _updateIsOffline];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"kNetworkReachabilityChangedNotification" object:v5];

  objc_autoreleasePoolPop(v4);
}

void sub_1E4631074(id *a1, int a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [a1[4] delegate];
    v8 = [v7 entityName];
    v9 = v8;
    v10 = @"NO";
    if (a2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412802;
    v20 = v8;
    v22 = v11;
    v21 = 2112;
    if (a3)
    {
      v10 = @"YES";
    }

    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCCloudDataSyncManager: syncCloudData: entityName: %@, attachedState: %@ reachable: %@", buf, 0x20u);
  }

  if (a2 && a3)
  {
    v12 = [a1[4] syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4631258;
    block[3] = &unk_1E875A268;
    objc_copyWeak(&v18, a1 + 7);
    v16 = a1[5];
    v17 = a1[6];
    dispatch_async(v12, block);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = _Block_copy(a1[6]);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_1E4631258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _syncQueueSyncForCloudData:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_1E463154C(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698F550] shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v7 = BDSCloudKitDevelopmentLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) delegate];
      v9 = [v8 entityName];
      v10 = v9;
      v11 = @"NO";
      if (a2)
      {
        v11 = @"YES";
      }

      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudDataSyncManager: databaseController:recordsChanged: entityName: %@, success: %@\", &v12, 0x16u);
    }
  }
}

void sub_1E46318B8(uint64_t a1)
{
  if ([*(a1 + 32) serverPushPostponed])
  {
    v2 = _Block_copy(*(a1 + 40));
    if (v2)
    {
      v6 = v2;
      v2[2]();
      v2 = v6;
    }
  }

  else
  {
    v3 = [*(a1 + 32) cloudKitController];
    v4 = [v3 privateCloudDatabaseController];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E46319C4;
    v7[3] = &unk_1E875ACA8;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 getAttached:v7];
  }
}

void sub_1E46319C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) delegate];
    v8 = [v7 entityName];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudDataSyncManager: startSyncToCKWithCompletion entityName: %{public}@, attachedState: %{public}@ reachable: %{public}@", &v14, 0x20u);
  }

  if (a2 && a3 && ([*(a1 + 32) delegate], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [*(a1 + 32) delegate];
    [v12 syncManager:*(a1 + 32) startSyncToCKWithCompletion:*(a1 + 40)];
  }

  else
  {
    v13 = _Block_copy(*(a1 + 40));
    v12 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_1E46323A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v172 = *MEMORY[0x1E69E9840];
  v108 = a2;
  v112 = a3;
  v113 = a4;
  v119 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v111 = [WeakRetained delegate];
  if (!WeakRetained)
  {
    v10 = 0;
    v110 = 0;
    v11 = 0;
    v12 = v119;
    v13 = *(v119 + 72);
LABEL_44:
    [WeakRetained _leaveDispatchGroup:*(v12 + 32) times:v13 - v10];
    goto LABEL_45;
  }

  if (!v113)
  {
LABEL_5:
    dispatch_group_enter(*(a1 + 32));
    v9 = [WeakRetained syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46336F0;
    block[3] = &unk_1E875A030;
    block[4] = WeakRetained;
    v161 = *(a1 + 32);
    dispatch_async(v9, block);

    goto LABEL_8;
  }

  v7 = [v113 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v8 = [v113 code];

    if (v8 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_8:
  v118 = [MEMORY[0x1E695DF70] array];
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v14 = v108;
  v15 = [v14 countByEnumeratingWithState:&v156 objects:v171 count:16];
  v16 = v15;
  if (v15)
  {
    v17 = *v157;
    do
    {
      v18 = 0;
      do
      {
        if (*v157 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v156 + 1) + 8 * v18);
        v20 = BDSCloudKitLog(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v19 encryptedValuesByKey];
          v22 = [v21 objectForKeyedSubscript:@"localRecordIDEncrypted"];
          *buf = 138412546;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "Successful save of CKRecord id=%@ %@", buf, 0x16u);
        }

        v23 = *(a1 + 40);
        v24 = [v19 recordID];
        v25 = [v23 objectForKeyedSubscript:v24];

        [v25 setSystemFields:v19];
        [v118 addObject:v25];

        ++v18;
      }

      while (v16 != v18);
      v15 = [v14 countByEnumeratingWithState:&v156 objects:v171 count:16];
      v16 = v15;
    }

    while (v15);
  }

  v26 = [v118 count];
  v27 = 0;
  if (v26)
  {
    v28 = v111;
    if (!v111)
    {
      goto LABEL_21;
    }

    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = sub_1E4633730;
    v153[3] = &unk_1E875ACD0;
    v153[4] = WeakRetained;
    v154 = *(a1 + 32);
    v155 = v26;
    [v111 syncManager:WeakRetained updateSyncGenerationFromCloudData:v118 completion:v153];

    v27 = v26;
  }

  v28 = v111;
LABEL_21:
  v107 = v27;
  v29 = [v112 count];
  v30 = [v112 count];
  if (v30 != 0 && v28 != 0)
  {
    v31 = BDSCloudKitLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v112;
      _os_log_impl(&dword_1E45E0000, v31, OS_LOG_TYPE_DEFAULT, "Successful removal of CKRecord ids=%@", buf, 0xCu);
    }

    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = sub_1E4633740;
    v150[3] = &unk_1E875ACD0;
    v150[4] = WeakRetained;
    v151 = *(v119 + 32);
    v152 = v29;
    [v111 syncManager:WeakRetained removeCloudDataForIDs:v112 completion:v150];

    v107 += v29;
  }

  v32 = [v113 code];
  if (!v113)
  {
    v40 = BDSCloudKitLog(v32);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [*(v119 + 48) operationID];
      *buf = 134218498;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v29;
      *&buf[22] = 2114;
      v165 = v41;
      _os_log_impl(&dword_1E45E0000, v40, OS_LOG_TYPE_DEFAULT, "Total success saving %lu records and deleting %lu records OperationID: %{public}@", buf, 0x20u);
    }

    goto LABEL_39;
  }

  v33 = v32;
  v34 = [v113 domain];
  v35 = *MEMORY[0x1E695B740];
  v36 = [v34 isEqualToString:*MEMORY[0x1E695B740]];

  if ((v36 & 1) == 0)
  {
    v42 = BDSCloudKitLog(v37);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707780();
    }

    goto LABEL_38;
  }

  if (v33 > 110)
  {
    switch(v33)
    {
      case 111:
        goto LABEL_58;
      case 112:
        v11 = 0;
        v110 = 1;
        goto LABEL_40;
      case 5008:
LABEL_58:
        v110 = 0;
        v11 = 1;
        goto LABEL_40;
    }

    goto LABEL_90;
  }

  if (v33 > 0x1B)
  {
    goto LABEL_90;
  }

  if (((1 << v33) & 0x88000C0) != 0)
  {
    v38 = BDSCloudKitLog(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707780();
    }

    v39 = [WeakRetained syncQueue];
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = sub_1E46339C8;
    v121[3] = &unk_1E875AD20;
    v121[4] = WeakRetained;
    v122 = v113;
    v123 = *(v119 + 40);
    objc_copyWeak(&v125, (v119 + 64));
    v124 = *(v119 + 56);
    dispatch_async(v39, v121);

    objc_destroyWeak(&v125);
    goto LABEL_39;
  }

  if (v33 != 2)
  {
LABEL_90:
    v42 = BDSCloudKitLog(v37);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707780();
    }

LABEL_38:

LABEL_39:
    v11 = 0;
    v110 = 0;
    goto LABEL_40;
  }

  v51 = [v113 userInfo];
  v103 = [v51 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v53 = BDSCloudKitLog(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = [v103 count];
    *buf = 134218496;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    v165 = v54;
    _os_log_impl(&dword_1E45E0000, v53, OS_LOG_TYPE_INFO, "Partial failure saving %lu records and deleting %lu records.  Failed %lu.", buf, 0x20u);
  }

  if (v111)
  {
    v105 = objc_opt_new();
    v104 = objc_opt_new();
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v56 = v103;
    v57 = [v56 countByEnumeratingWithState:&v146 objects:v170 count:16];
    if (v57)
    {
      v110 = 0;
      v58 = *v147;
      v116 = *MEMORY[0x1E695B7C0];
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v147 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = *(*(&v146 + 1) + 8 * i);
          v61 = [MEMORY[0x1E695DFB0] null];
          v62 = v60 == v61;

          if (!v62)
          {
            v63 = [v56 objectForKeyedSubscript:v60];
            v64 = [v63 domain];
            v65 = [v64 isEqual:v35];

            if (v65)
            {
              v67 = [v63 userInfo];
              v68 = [v67 objectForKey:v116];

              if (v68)
              {
                v70 = [v63 code];
                v71 = v70 == 14;
                v72 = BDSCloudKitLog(v70);
                v73 = v72;
                if (v71)
                {
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    *&buf[4] = v60;
                    *&buf[12] = 2114;
                    *&buf[14] = v63;
                    _os_log_impl(&dword_1E45E0000, v73, OS_LOG_TYPE_INFO, "CKErrorServerRecordChanged record %{public}@ perRecordError %{public}@", buf, 0x16u);
                  }

                  [v105 setObject:v68 forKeyedSubscript:v60];
                }

                else
                {
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *&buf[4] = v68;
                    *&buf[12] = 2114;
                    *&buf[14] = v113;
                    *&buf[22] = 2114;
                    v165 = v63;
                    _os_log_error_impl(&dword_1E45E0000, v73, OS_LOG_TYPE_ERROR, "Error for record %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                  }
                }
              }

              else
              {
                v74 = BDSCloudKitLog(v69);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  *&buf[4] = v60;
                  *&buf[12] = 2114;
                  *&buf[14] = v113;
                  *&buf[22] = 2114;
                  v165 = v63;
                  _os_log_error_impl(&dword_1E45E0000, v74, OS_LOG_TYPE_ERROR, "Unable to retrieve serverRecord for recordID %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                }

                if ([v63 code] == 21 || objc_msgSend(v63, "code") == 14)
                {
                  [v104 addObject:v60];
                }

                else
                {
                  v110 |= [v63 code] == 112;
                }
              }
            }

            else
            {
              v68 = BDSCloudKitLog(v66);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v60;
                *&buf[12] = 2114;
                *&buf[14] = v63;
                _os_log_error_impl(&dword_1E45E0000, v68, OS_LOG_TYPE_ERROR, "Error modifying record:%@ error=%{public}@", buf, 0x16u);
              }
            }
          }
        }

        v57 = [v56 countByEnumeratingWithState:&v146 objects:v170 count:16];
      }

      while (v57);
    }

    else
    {
      v110 = 0;
    }

    v102 = [v105 count];
    if (v102)
    {
      v106 = [MEMORY[0x1E695DFA8] set];
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      obj = [v105 allValues];
      v117 = [obj countByEnumeratingWithState:&v142 objects:v169 count:16];
      if (v117)
      {
        v114 = *v143;
        do
        {
          for (j = 0; j != v117; ++j)
          {
            if (*v143 != v114)
            {
              objc_enumerationMutation(obj);
            }

            v78 = *(*(&v142 + 1) + 8 * j);
            v138 = 0u;
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            v79 = [v78 allKeys];
            v80 = [v79 countByEnumeratingWithState:&v138 objects:v168 count:16];
            if (v80)
            {
              v81 = *v139;
              while (2)
              {
                for (k = 0; k != v80; ++k)
                {
                  if (*v139 != v81)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v83 = *(*(&v138 + 1) + 8 * k);
                  objc_opt_class();
                  v84 = [v78 objectForKeyedSubscript:v83];
                  v85 = BUDynamicCast();

                  if (v85)
                  {
                    v86 = [v78 recordID];

                    if (v86)
                    {
                      v88 = [v78 recordID];
                      [v106 addObject:v88];
                    }

                    else
                    {
                      v88 = BDSCloudKitLog(v87);
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v78;
                        _os_log_error_impl(&dword_1E45E0000, v88, OS_LOG_TYPE_ERROR, "Record ID is nil for record to fetch: %@", buf, 0xCu);
                      }
                    }

                    goto LABEL_117;
                  }
                }

                v80 = [v79 countByEnumeratingWithState:&v138 objects:v168 count:16];
                if (v80)
                {
                  continue;
                }

                break;
              }
            }

LABEL_117:
          }

          v117 = [obj countByEnumeratingWithState:&v142 objects:v169 count:16];
        }

        while (v117);
      }

      v89 = [v106 count];
      if (v89)
      {
        v90 = BDSCloudKitLog(v89);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          v91 = [v106 count];
          *buf = 134217984;
          *&buf[4] = v91;
          _os_log_impl(&dword_1E45E0000, v90, OS_LOG_TYPE_INFO, "Fetching %lu records that had assets on conflict", buf, 0xCu);
        }

        v92 = objc_alloc(MEMORY[0x1E695B938]);
        v93 = [v106 allObjects];
        v94 = [v92 initWithRecordIDs:v93];

        v95 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
        [v94 setConfiguration:v95];

        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = sub_1E4633750;
        v132[3] = &unk_1E875ACF8;
        v133 = v105;
        v134 = v111;
        v135 = WeakRetained;
        v136 = *(v119 + 32);
        v137 = v102;
        [v94 setFetchRecordsCompletionBlock:v132];
        v96 = [WeakRetained cloudKitController];
        v97 = [v96 privateCloudDatabaseController];

        v98 = [v97 database];
        [v98 addOperation:v94];
      }

      else
      {
        v99 = [v105 allValues];
        v129[0] = MEMORY[0x1E69E9820];
        v129[1] = 3221225472;
        v129[2] = sub_1E46339A8;
        v129[3] = &unk_1E875ACD0;
        v129[4] = WeakRetained;
        v130 = *(v119 + 32);
        v131 = v102;
        [v111 syncManager:WeakRetained resolveConflictsForRecords:v99 completion:v129];
      }

      v107 += v102;
    }

    v100 = [v104 count];
    if (v100)
    {
      v101 = *(v119 + 56);
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = sub_1E46339B8;
      v126[3] = &unk_1E875ACD0;
      v126[4] = WeakRetained;
      v127 = *(v119 + 32);
      v128 = v100;
      [v111 syncManager:v101 failedRecordIDs:v104 completion:v126];

      v107 += v100;
    }

    v76 = v105;
  }

  else
  {
    v75 = BDSCloudKitLog(v55);
    v76 = v75;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_1E47077F0();
      v110 = 0;
      v76 = v75;
    }

    else
    {
      v110 = 0;
    }
  }

  v11 = 0;
LABEL_40:

  v12 = v119;
  v13 = *(v119 + 72);
  v10 = v107;
  if (v13 >= v107)
  {
    goto LABEL_44;
  }

  v44 = BDSCloudKitLog(v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707830();
  }

LABEL_45:
  if ((v110 & 1) != 0 || v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v165 = sub_1E4633B90;
    v166 = sub_1E4633BA0;
    v167 = [MEMORY[0x1E695DF70] array];
    v45 = *(v119 + 40);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = sub_1E4633BA8;
    v120[3] = &unk_1E875AD48;
    v120[4] = buf;
    [v45 enumerateKeysAndObjectsUsingBlock:v120];
    if ([*(*&buf[8] + 40) count])
    {
      v46 = [*(v119 + 56) cloudKitController];
      v47 = [v46 privateCloudDatabaseController];

      if (v110)
      {
        [v47 zonesUnreadableDueToMissingD2DEncryptionIdentity:*(*&buf[8] + 40) completion:0];
      }

      else if (v11)
      {
        v48 = MEMORY[0x1E696ABC0];
        v162 = *MEMORY[0x1E696A578];
        v163 = @"Unsynced keychain - cannot modify records";
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
        v50 = [v48 errorWithDomain:@"BDSCloudKitClientError" code:2006 userInfo:v49];

        [v47 zonesTemporarilyUnreadableWithError:v50 completion:0];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_1E46336F0(uint64_t a1)
{
  [*(a1 + 32) setBackOffInterval:0.0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_1E4633750(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BDSCloudKitLog(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707870();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = [v5 count];
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "Successfully fetched %lu records that had assets on conflict", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v5 allValues];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v13 recordID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }
  }

  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = [*(a1 + 32) allValues];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E4633998;
  v22[3] = &unk_1E875ACD0;
  v19 = *(a1 + 56);
  v22[4] = *(a1 + 48);
  v20 = v19;
  v21 = *(a1 + 64);
  v23 = v20;
  v24 = v21;
  [v17 syncManager:v16 resolveConflictsForRecords:v18 completion:v22];
}

void sub_1E46339C8(uint64_t a1)
{
  if (([*(a1 + 32) serverPushPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerPushPostponed:1];
    [*(a1 + 32) _updateRetryParametersFromModifyRecordsOperationError:*(a1 + 40) batchSize:{objc_msgSend(*(a1 + 48), "count")}];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) syncQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E4633AD4;
    v5[3] = &unk_1E875A178;
    objc_copyWeak(&v6, (a1 + 64));
    v5[4] = *(a1 + 56);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_1E4633AD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained setServerPushPostponed:0];
    v3 = [*(a1 + 32) cloudKitController];
    v4 = [v3 transactionManager];
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 entityName];
    [v4 signalSyncToCKTransactionForEntityName:v6 syncManager:*(a1 + 32)];

    WeakRetained = v7;
  }
}

uint64_t sub_1E4633B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4633BA8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 zoneID];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 zoneID];
    [v4 addObject:v5];
  }
}

void sub_1E4634048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setProcessingCloudData:0];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) cloudKitController];
    v3 = [v2 transactionManager];
    v4 = [*(a1 + 32) delegate];
    v5 = [v4 entityName];
    [v3 signalSyncToCKTransactionForEntityName:v5 syncManager:*(a1 + 32)];
  }

  v6 = _Block_copy(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

id sub_1E463423C()
{
  v0 = objc_opt_new();
  [v0 setQualityOfService:17];
  [v0 setDiscretionaryNetworkBehavior:0];
  [v0 setAutomaticallyRetryNetworkFailures:0];

  return v0;
}

void sub_1E46345A4()
{
  v0 = [BCCloudKitController alloc];
  v1 = +[BCCloudKitSecureConfiguration configuration];
  v2 = [(BCCloudKitController *)v0 initWithConfiguration:v1];
  v3 = qword_1ECF75DF8;
  qword_1ECF75DF8 = v2;

  v4 = [BCCloudKitTransactionManager alloc];
  v5 = [(BCCloudKitTransactionManager *)v4 initWithCloudKitController:qword_1ECF75DF8];
  [qword_1ECF75DF8 setTransactionManager:v5];
}

void sub_1E46347F0(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - registerForSecureNotifications", buf, 2u);
  }

  v3 = MEMORY[0x1E695B888];
  v4 = [*(a1 + 32) containerIdentifier];
  v5 = [v3 containerWithIdentifier:v4];

  v6 = [*(a1 + 32) appBundleIdentifier];
  [v5 setSourceApplicationBundleIdentifier:v6];

  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E4634944;
    v10[3] = &unk_1E875ADF8;
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = v7;
    v14 = v8;
    v12 = v9;
    v13 = v5;
    [v13 accountStatusWithCompletionHandler:v10];
  }
}

void sub_1E4634944(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4634A18;
  block[3] = &unk_1E875ADD0;
  v10 = v5;
  v6 = *(a1 + 56);
  v13 = a2;
  v14 = v6;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(v7, block);
}

void sub_1E4634A18(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v12 = BDSCloudKitLog(a1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_INFO, "BCCloudKitController - CKAccountStatusCouldNotDetermine: %@", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = [v14 userInfo];
        v2 = [v15 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

        if (v2)
        {
          [v2 doubleValue];
          v17 = dispatch_time(0, (v16 * 1000000000.0));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E4634D7C;
          block[3] = &unk_1E875A198;
          block[4] = *(a1 + 64);
          dispatch_after(v17, MEMORY[0x1E69E96A0], block);
          goto LABEL_19;
        }
      }

      v2 = BDSCloudKitLog(v14);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v18 = *(a1 + 32);
      *buf = 138543362;
      v23 = v18;
      v3 = "BCCloudKitController - Could not determine iCloud status.  Not syncing anything.  Account status error=%{public}@";
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      v11 = 12;
      goto LABEL_18;
    }

    if (v1 != 1)
    {
      return;
    }

    v7 = BDSCloudKitLog(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_INFO, "BCCloudKitController - Account Available", buf, 2u);
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) privateCloudDatabase];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E4634DDC;
    v19[3] = &unk_1E875A008;
    v10 = *(a1 + 48);
    v20 = *(a1 + 40);
    [v8 connectUserTo:v9 container:v10 updateSubscription:1 completion:&unk_1F5E62168 subscriptionCompletion:v19];

    v2 = v20;
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = BDSCloudKitLog(a1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v3 = "BCCloudKitController - CKAccountStatusRestricted";
LABEL_16:
          v4 = v2;
          v5 = OS_LOG_TYPE_INFO;
LABEL_17:
          v11 = 2;
LABEL_18:
          _os_log_impl(&dword_1E45E0000, v4, v5, v3, buf, v11);
        }

        break;
      case 3:
        v2 = BDSCloudKitLog(a1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v3 = "BCCloudKitController - CKAccountStatusNoAccount";
          goto LABEL_16;
        }

        break;
      case 4:
        v2 = BDSCloudKitLog(a1);
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          break;
        }

        *buf = 0;
        v3 = "BCCloudKitController - CKAccountStatusTemporarilyUnavailable. Account Temporarily Unavailable";
        v4 = v2;
        v5 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      default:
        return;
    }
  }

LABEL_19:
}

void sub_1E4634D84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = BDSCloudKitLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E47078F4();
    }
  }
}

uint64_t sub_1E4634DDC(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - connectUserTo:container: subscription completed.", v4, 2u);
  }

  return [*(a1 + 32) detach];
}

void sub_1E4635314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E463535C(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = BDSCloudKitSyncLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 configuration];
      v8 = [v7 containerIdentifier];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedAttachment", buf, 0xCu);
    }

    v9 = [v5 accessQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4635504;
    v12[3] = &unk_1E87596B0;
    objc_copyWeak(&v14, (a1 + 32));
    v13 = v3;
    dispatch_async(v9, v12);

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = _Block_copy(v3);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

void sub_1E4635504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained p_updateAttachment];

  v3 = _Block_copy(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_1E4635570(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSCloudKitLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1E470795C();
  }
}

void sub_1E46355C4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = BDSCloudKitSyncLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 configuration];
      v8 = [v7 containerIdentifier];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedChangeAttachment", buf, 0xCu);
    }

    v9 = [v5 accessQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4635768;
    v12[3] = &unk_1E875A3D0;
    v13 = v5;
    v14 = v3;
    dispatch_async(v9, v12);
  }

  else
  {
    v10 = _Block_copy(v3);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

void sub_1E4635768(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E463580C;
  v3[3] = &unk_1E8759D88;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _updateAccountCacheWithCompletionBlock:v3];
}

void sub_1E463580C(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = BDSCloudKitSyncLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 containerIdentifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedChangeAttachment hasChanged:%{BOOL}d", &v9, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) p_accountReallyChangedWithCompletion:*(a1 + 40)];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_1E4635928(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSCloudKitSyncLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1E47079C4();
  }
}

unsigned __int8 *sub_1E4635AFC(unsigned __int8 *result)
{
  *(*(result + 4) + 11) = result[40];
  v2 = *(result + 4);
  v3 = result[41];
  if (*(v2 + 10) != v3)
  {
    v4 = result;
    *(v2 + 10) = v3;
    [*(result + 4) _reestablishSyncEngineSalt];
    v5 = *(v4 + 4);

    return [v5 aq_requestUpdateAttachment];
  }

  return result;
}

void sub_1E4635E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4635E58(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained accessQueue];

  if (v7)
  {
    v9 = [WeakRetained accessQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E4635F6C;
    v11[3] = &unk_1E875AE98;
    objc_copyWeak(&v12, (a1 + 40));
    v13 = a2;
    v14 = a3;
    dispatch_async(v9, v11);

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = BDSCloudKitLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707A2C(a1);
    }
  }
}

void sub_1E4635F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 40) reachable:*(a1 + 41)];
}

void sub_1E46363C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46363F4(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained accessQueue];

  if (v7)
  {
    v9 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4636510;
    block[3] = &unk_1E875AF10;
    objc_copyWeak(&v12, (a1 + 40));
    block[4] = *(a1 + 32);
    v13 = a2;
    v14 = a3;
    dispatch_async(v9, block);

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = BDSCloudKitLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707AD4(a1);
    }
  }
}

void sub_1E4636510(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained gettingAccountInfo];
  if (v3)
  {
    goto LABEL_26;
  }

  v4 = BDSCloudKitSyncLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 containerIdentifier];
    if (*(a1 + 48))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 138543874;
    v36 = v6;
    v37 = 2114;
    v38 = v7;
    v39 = 1024;
    v40 = [WeakRetained enableCloudSync];
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - Update Attachment Current State: attached:%{public}@ enableCloudSync:%{BOOL}d", buf, 0x1Cu);
  }

  if (*(a1 + 48))
  {
    goto LABEL_8;
  }

  v8 = [WeakRetained enableCloudSync];
  if ((v8 & 1) == 0)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
LABEL_17:
      v16 = BDSCloudKitSyncLog(v8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 32) configuration];
        v18 = [v17 containerIdentifier];
        *buf = 138543362;
        v36 = v18;
        _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - Update Attachment: No change to attachment.", buf, 0xCu);
      }

      if ([WeakRetained enableCloudSync])
      {
        v19 = [WeakRetained container];
        if (v19)
        {
          v20 = *(a1 + 48);

          if (v20)
          {
            v22 = BDSCloudKitSyncLog(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [*(a1 + 32) configuration];
              v24 = [v23 containerIdentifier];
              v25 = [*(a1 + 32) configuration];
              v26 = [v25 dbSubscriptionID];
              *buf = 138543618;
              v36 = v24;
              v37 = 2114;
              v38 = v26;
              _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: Signaling fetch changes for %{public}@", buf, 0x16u);
            }

            v27 = [WeakRetained transactionManager];
            v28 = [*(a1 + 32) configuration];
            v29 = [v28 dbSubscriptionID];
            [v27 signalFetchChangesTransaction:v29];

            v30 = [WeakRetained transactionManager];
            v31 = [*(a1 + 32) configuration];
            v32 = [v31 dbSubscriptionID];
            [v30 signalFetchChangesTransactionInService:v32];
          }
        }
      }

      [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 48) reachable:*(a1 + 49)];
      goto LABEL_26;
    }

LABEL_8:
    v8 = [WeakRetained enableCloudSync];
    if ((v8 & 1) == 0)
    {
      v9 = BDSCloudKitSyncLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) configuration];
        v11 = [v10 containerIdentifier];
        *buf = 138543362;
        v36 = v11;
        _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: detaching from database controller", buf, 0xCu);
      }

      [*(a1 + 32) setContainer:0];
      v12 = [WeakRetained privateCloudDatabaseController];
      [v12 detach];

      [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 48) reachable:*(a1 + 49)];
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v13 = BDSCloudKitSyncLog(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) configuration];
    v15 = [v14 containerIdentifier];
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: getting account info", buf, 0xCu);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1E46369F8;
  v33[3] = &unk_1E875AEE8;
  v33[4] = *(a1 + 32);
  objc_copyWeak(&v34, (a1 + 40));
  [WeakRetained p_getAccountInfoWithCompletion:v33];
  objc_destroyWeak(&v34);
LABEL_26:
}

void sub_1E46369F8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = BDSCloudKitSyncLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4707B7C(a1);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocks];
  }
}

void sub_1E4636ED4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E4636FCC;
    v9[3] = &unk_1E875AF38;
    v6 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = a2;
    v10 = v5;
    [v6 accountInfoWithCompletionHandler:v9];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, a2, v5, 0, 0);
    }
  }
}

void sub_1E4636FCC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = _Block_copy(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(a1 + 48), *(a1 + 32), v8, v5);
  }
}

void sub_1E4637340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4637364(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained accessQueue];

  if (v10)
  {
    v11 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4637498;
    block[3] = &unk_1E875AFB0;
    objc_copyWeak(v16, (a1 + 40));
    v16[1] = a2;
    v13 = v7;
    v14 = v8;
    v15 = *(a1 + 32);
    dispatch_async(v11, block);

    objc_destroyWeak(v16);
  }
}

void sub_1E4637498(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained container];

    if (v4)
    {
      v5 = [v3 privateCloudDatabaseController];
      v6 = [v3 serviceMode];
      v7 = [v3 configuration];
      v8 = v7;
      if (v6)
      {
        [v7 serviceZones];
      }

      else
      {
        [v7 appZones];
      }
      v9 = ;

      v10 = (a1 + 64);
      v11 = BDSCloudKitSyncLog([v3 setCurrentStatus:*(a1 + 64)]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1E4707C28((a1 + 64), v11);
      }

      v13 = *v10;
      if (*v10 <= 1)
      {
        if (!v13)
        {
          v28 = BDSCloudKitLog(v12);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            *buf = 138543362;
            v57 = v29;
            _os_log_impl(&dword_1E45E0000, v28, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - CKAccountStatusCouldNotDetermine: %{public}@", buf, 0xCu);
          }

          [v5 detach];
          [v3 setGettingAccountInfo:0];
          v31 = (a1 + 32);
          v30 = *(a1 + 32);
          if (v30 && ([v30 userInfo], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "objectForKeyedSubscript:", *MEMORY[0x1E695B748]), v33 = objc_claimAutoreleasedReturnValue(), v32, v33))
          {
            [v33 doubleValue];
            v35 = dispatch_time(0, (v34 * 1000000000.0));
            v36 = [v3 accessQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1E4637A9C;
            block[3] = &unk_1E8759750;
            objc_copyWeak(&v55, (a1 + 56));
            dispatch_after(v35, v36, block);

            objc_destroyWeak(&v55);
          }

          else
          {
            v37 = BDSCloudKitLog(v30);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_1E4707CA4(v31, v37, v38, v39, v40, v41, v42, v43);
            }
          }

          goto LABEL_30;
        }

        if (v13 == 1)
        {
          v17 = BDSCloudKitLog(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v3 configuration];
            v19 = [v18 containerIdentifier];
            *buf = 138543362;
            v57 = v19;
            _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - Account Available for %{public}@", buf, 0xCu);
          }

          v20 = [v3 configuration];
          if ([v20 requiresDeviceToDeviceEncryption])
          {
            v21 = [*(a1 + 40) supportsDeviceToDeviceEncryption];

            if ((v21 & 1) == 0)
            {
              v23 = BDSCloudKitLog(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v3 configuration];
                v25 = [v24 containerIdentifier];
                *buf = 138543362;
                v57 = v25;
                _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_DEFAULT, "Container %{public}@ requires device-to-device encryption but user's account does not support it.  Not connecting.", buf, 0xCu);
              }

              goto LABEL_29;
            }
          }

          else
          {
          }

          v44 = [v3 configuration];
          v45 = [v44 shouldPerformDatabaseSubscriptionForServiceMode:v6];

          v46 = [*(a1 + 48) privateCloudDatabase];
          v47 = *(a1 + 48);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = sub_1E4637ADC;
          v50[3] = &unk_1E875AF88;
          v51 = v5;
          v52 = v9;
          v53 = v3;
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = sub_1E4637BDC;
          v48[3] = &unk_1E875A008;
          v49 = v53;
          [v51 connectUserTo:v46 container:v47 updateSubscription:v45 completion:v50 subscriptionCompletion:v48];
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v14 = BDSCloudKitLog(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 32);
              *buf = 138543362;
              v57 = v26;
              v16 = "Account Restricted.  Not syncing anything.  Account status error=%{public}@";
              goto LABEL_27;
            }

LABEL_28:

LABEL_29:
            [v5 detach];
            [v3 setGettingAccountInfo:0];
            break;
          case 3:
            v14 = BDSCloudKitLog(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(a1 + 32);
              *buf = 138543362;
              v57 = v27;
              v16 = "Books isn't signed into iCloud.  Not syncing anything.  Account status error=%{public}@";
              goto LABEL_27;
            }

            goto LABEL_28;
          case 4:
            v14 = BDSCloudKitLog(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 32);
              *buf = 138543362;
              v57 = v15;
              v16 = "Account Temporarily Unavailable.  Not syncing anything.  Account status error=%{public}@";
LABEL_27:
              _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
              goto LABEL_28;
            }

            goto LABEL_28;
        }
      }

LABEL_30:
    }
  }
}

void sub_1E4637A9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_getAccountInfo];
}

void sub_1E4637ADC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E4637BD0;
    v10[3] = &unk_1E875A008;
    v11 = *(a1 + 48);
    [v6 attachToZones:v7 completion:v10];

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [*(a1 + 48) setGettingAccountInfo:0];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v9 = BDSCloudKitLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707D14();
  }

LABEL_8:
}

void sub_1E4637BDC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 containerIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - connectUserToContainer subscription completed for %{public}@", &v5, 0xCu);
  }
}

void *sub_1E46380FC(uint64_t a1)
{
  result = [*(a1 + 32) enableCloudSync];
  if (result)
  {
    [*(a1 + 32) _reestablishSyncEngineSaltIfNeeded];
    v3 = *(a1 + 32);

    return [v3 aq_requestUpdateAttachment];
  }

  return result;
}

void sub_1E4638448(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E4638470(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained transactionManager];
    [v6 signalFetchChangesTransaction:*(a1 + 32)];
  }

  else
  {
    v7 = [WeakRetained accessQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E463854C;
    v8[3] = &unk_1E875A030;
    v8[4] = v5;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
  }
}

void sub_1E463854C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) enableCloudSync];
  v4 = v3;
  v5 = BDSCloudKitSyncLog(v3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) configuration];
      v8 = [v7 containerIdentifier];
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Asked to fetch changes for %{public}@ while detached - attempt attachment.", &v10, 0x16u);
    }

    [*v2 aq_requestUpdateAttachment];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707D7C(v2);
    }
  }
}

void sub_1E4638678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained enableCloudSync])
  {
    [WeakRetained _reestablishSyncEngineSaltIfNeeded];
  }
}

void sub_1E46388A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E46388C4(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained container];

  v4 = v3 == 0;
  v6 = BDSCloudKitSyncLog(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4707EE8(v7);
    }

    v11 = _Block_copy(*(a1 + 40));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) currentUserIDName];
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = [WeakRetained currentStatus];
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "_updateAccountCacheWithTimeout fetchUserRecordIDWithCompletionHandler currentUserIDName:%@ status:%ld ", buf, 0x16u);
    }

    v9 = [WeakRetained container];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E4638AC4;
    v14[3] = &unk_1E875B0A0;
    objc_copyWeak(&v16, (a1 + 56));
    v14[4] = *(a1 + 32);
    v13 = *(a1 + 40);
    v10 = v13;
    v15 = v13;
    [v9 fetchUserRecordIDWithCompletionHandler:v14];

    objc_destroyWeak(&v16);
  }
}

void sub_1E4638AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained accessQueue];

  if (v8)
  {
    v10 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4638C54;
    block[3] = &unk_1E875B078;
    v17 = v5;
    v11 = WeakRetained;
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    v22 = *(a1 + 48);
    v20 = v6;
    objc_copyWeak(&v23, (a1 + 56));
    v21 = *(a1 + 40);
    dispatch_async(v10, block);

    objc_destroyWeak(&v23);
    v13 = v17;
  }

  else
  {
    v14 = BDSCloudKitSyncLog(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707F2C(v14);
    }

    v15 = _Block_copy(*(a1 + 40));
    v13 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void sub_1E4638C54(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recordName];
  v3 = [*(a1 + 40) currentUserIDName];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v14 = BDSCloudKitSyncLog(v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 48) configuration];
      v16 = [v15 containerIdentifier];
      v17 = [*(a1 + 48) currentUserIDName];
      v18 = [*(a1 + 32) recordName];
      *buf = 138543874;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) currentUserIDName from:%@ to:%@ has changed! ", buf, 0x20u);
    }

    v19 = [*(a1 + 32) recordName];
    [*(a1 + 40) setCurrentUserIDName:v19];

    goto LABEL_13;
  }

  v6 = [*(a1 + 56) domain];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v7)
  {
    goto LABEL_14;
  }

  v9 = [*(a1 + 56) code];
  if (v9 != 9)
  {
    v20 = BDSCloudKitSyncLog(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 48) configuration];
      v22 = [v21 containerIdentifier];
      v23 = [*(a1 + 48) currentUserIDName];
      *buf = 138543618;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "(%{public}@) Unknown error while fetching account. Assuming we had a change with currentUserIDName:%@ ", buf, 0x16u);
    }

LABEL_13:
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_14;
  }

  [*(a1 + 40) setCurrentUserIDName:0];
  v10 = [*(a1 + 40) setCurrentStatus:0];
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v11 = BDSCloudKitSyncLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 48) configuration];
    v13 = [v12 containerIdentifier];
    *buf = 138543362;
    v38 = v13;
    _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) CKErrorNotAuthenticated  resetting current account values ", buf, 0xCu);
  }

LABEL_14:
  v24 = a1 + 72;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v25 = BDSCloudKitSyncLog(v8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4707F70(a1, a1 + 72, v25);
    }

    v26 = _Block_copy(*(a1 + 64));
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, *(*(*v24 + 8) + 24));
    }
  }

  else
  {
    v28 = [*(a1 + 40) container];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1E46390A4;
    v33[3] = &unk_1E875B050;
    objc_copyWeak(&v36, (a1 + 80));
    v31 = *(a1 + 40);
    v29 = v31.i64[0];
    v34 = vextq_s8(v31, v31, 8uLL);
    v32 = *(a1 + 64);
    v30 = v32;
    v35 = v32;
    [v28 accountStatusWithCompletionHandler:v33];

    objc_destroyWeak(&v36);
  }
}

void sub_1E46390A4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained accessQueue];

  if (v5)
  {
    v6 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46391DC;
    block[3] = &unk_1E875B028;
    v19 = a2;
    v7 = WeakRetained;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v13 = *(a1 + 48);
    v10 = v13;
    v18 = v13;
    dispatch_async(v6, block);
  }

  else
  {
    v11 = _Block_copy(*(a1 + 48));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, *(*(*(a1 + 56) + 8) + 24));
    }
  }
}

void sub_1E46391DC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) currentStatus];
  v4 = BDSCloudKitSyncLog(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v2 == v3)
  {
    if (v5)
    {
      sub_1E4708120(a1);
    }
  }

  else
  {
    if (v5)
    {
      sub_1E4708040(a1);
    }

    [*(a1 + 32) setCurrentStatus:*(a1 + 72)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v6 = _Block_copy(*(a1 + 56));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(*(*(a1 + 64) + 8) + 24));
  }
}

void sub_1E46396B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46396E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessQueue];

  if (v3)
  {
    v5 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46397F8;
    block[3] = &unk_1E875A008;
    v10 = WeakRetained;
    dispatch_async(v5, block);

    v6 = v10;
  }

  else
  {
    v6 = BDSCloudKitLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E470848C(v6);
    }
  }

  v7 = _Block_copy(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }
}

uint64_t sub_1E46397F8(uint64_t a1)
{
  [*(a1 + 32) setContainer:0];
  [*(a1 + 32) aq_setGettingAccountInfo:0 willRetryUpdateAttachment:1];
  v2 = *(a1 + 32);

  return [v2 aq_requestUpdateAttachment];
}

void sub_1E46399EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4639A18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessQueue];

  if (v3)
  {
    v4 = [WeakRetained accessQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E4639AE4;
    v7[3] = &unk_1E875A030;
    v5 = WeakRetained;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

uint64_t sub_1E4639AE4(uint64_t a1)
{
  [*(a1 + 32) setContainer:0];
  [*(a1 + 32) aq_setGettingAccountInfo:0 willRetryUpdateAttachment:1];
  [*(a1 + 40) _reestablishSyncEngineSalt];
  v2 = *(a1 + 32);

  return [v2 aq_requestUpdateAttachment];
}

void sub_1E463C0B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

uint64_t BCAnnotationsProtoBookReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BCProtoAnnotation);
          [a1 addAnnotation:v16];
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !BCProtoAnnotationReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_30:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1E463ED9C(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a1 objectForKeyedSubscript:{v11, v15}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

id BookDataStoreBundle(uint64_t a1)
{
  if (qword_1ECF75E10 != -1)
  {
    sub_1E4708DC8();
  }

  v2 = qword_1ECF75E08;

  return v2;
}

uint64_t sub_1E463EF58(uint64_t a1, uint64_t a2)
{
  qword_1ECF75E08 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t BookDataStoreCFBundle(uint64_t a1, uint64_t a2)
{
  if (qword_1ECF75E20 != -1)
  {
    sub_1E4708DDC();
  }

  return qword_1ECF75E18;
}

void sub_1E463EFEC(uint64_t a1)
{
  v3 = BookDataStoreBundle(a1);
  v1 = [v3 bundleURL];

  if (v1)
  {
    v2 = [v3 bundleURL];
    qword_1ECF75E18 = CFBundleCreate(0, v2);
  }
}

id sub_1E463F06C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObjects:{objc_opt_class(), a3, 0}];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v7];

  objc_opt_class();
  v10 = BUDynamicCast();

  return v10;
}

void sub_1E4645534()
{
  v0 = NSTemporaryDirectory();
  v4 = [v0 stringByAppendingPathComponent:@"BDSUnitTest"];

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 removeItemAtPath:v4 error:0];

  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v3 = qword_1ECF75E38;
  qword_1ECF75E38 = v2;
}

BOOL sub_1E4645E54(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, objc_class *a6, void *a7, void *a8, void *a9)
{
  v15 = a5;
  v38 = a7;
  v43 = [a1 changes];
  v16 = [v43 count];
  v39 = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  v41 = NSStringFromClass(a6);
  v42 = v16;
  v17 = *a3;
  v36 = a8;
  if (*a3 < v16 && a4 >= 1)
  {
    v18 = 0;
    v40 = a4;
    v35 = a3;
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [v43 objectAtIndexedSubscript:v17];
      if (![v20 changeType] || objc_msgSend(v20, "changeType") == 1)
      {
        break;
      }

      if ([v20 changeType] != 2)
      {
        goto LABEL_22;
      }

      v28 = [v20 changedObjectID];
      v29 = [v28 entity];
      v30 = [v29 name];
      v31 = [v30 isEqualToString:v41];

      if (v31)
      {
        v21 = [v20 tombstone];
        if (v21)
        {
          [v39 addObject:v21];
          ++v18;
        }

LABEL_15:
      }

      a4 = v40;
LABEL_22:

      objc_autoreleasePoolPop(v19);
      [v15 processPendingChanges];
LABEL_23:
      if (++v17 >= v42 || v18 >= a4)
      {
        goto LABEL_25;
      }
    }

    v21 = [v20 changedObjectID];
    v22 = [v21 entity];
    v23 = [v22 name];
    v24 = [v23 isEqualToString:v41];

    if (!v24)
    {

      objc_autoreleasePoolPop(v19);
      a4 = v40;
      goto LABEL_23;
    }

    v25 = [v15 existingObjectWithID:v21 error:0];
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v25 isDeleted] & 1) == 0)
    {
      v26 = v25;
      if (([v26 deletedFlag] & 1) == 0)
      {
        [v26 setPrivacyDelegate:v38];
        v27 = [v26 mutableCopy];
        [v27 setPrivacyDelegate:v38];
        if (v27)
        {
          [v37 addObject:v27];
          ++v18;
        }

        a3 = v35;
      }
    }

    [v15 refreshObject:v25 mergeChanges:0];

    goto LABEL_15;
  }

LABEL_25:
  v32 = v37;
  *v36 = v37;
  v33 = v39;
  *a9 = v39;
  *a3 = v17;

  return v17 == v42;
}

void sub_1E4646498(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = BDSCloudKitLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47091CC();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) entityName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Successfully transitioned to a new cloud container for entity: %@", &v9, 0xCu);
    }
  }

LABEL_5:
}

void sub_1E464679C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E4646890;
    v9[3] = &unk_1E875B278;
    v12 = a3;
    v10 = v6;
    v11 = *(a1 + 40);
    [v10 syncCloudData:v5 completion:v9];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_1E4646890(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) signalSyncToCK];
  }

  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1E4646AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4646AC0(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4646B34(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    if (*(a1 + 48) >= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    [v6 setFetchLimit:v7];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"editGeneration > syncGeneration"];
    [v6 setPredicate:v8];

    v43 = 0;
    v9 = [v3 executeFetchRequest:v6 error:&v43];
    v10 = v43;
    [WeakRetained _logError:v10 at:@"_dirtyMutableCloudDataWithFetchLimit - fetch"];
    if ([v9 count])
    {
      v33 = v7;
      v34 = a1;
      v35 = v10;
      v37 = v6;
      v32 = [v9 count];
      v11 = BDSCloudKitLog(v32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [WeakRetained entityName];
        v13 = [v9 count];
        *buf = 138543618;
        v46 = v12;
        v47 = 2048;
        v48 = v13;
        _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ startSyncToCKWithCompletion found %lu dirty records", buf, 0x16u);
      }

      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v15 = [WeakRetained privacyDelegate];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v36 = v9;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v39 + 1) + 8 * i);
            [v21 setPrivacyDelegate:v15];
            v22 = [v21 mutableCopy];
            [v3 refreshObject:v21 mergeChanges:1];
            if (v22)
            {
              v23 = [WeakRetained privacyDelegate];
              [v22 setPrivacyDelegate:v23];

              [v14 addObject:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v18);
      }

      v24 = _Block_copy(*(v34 + 32));
      v25 = v24;
      if (v24)
      {
        (*(v24 + 2))(v24, v14, v32 == v33);
      }

      v10 = v35;
      if ([v3 hasChanges])
      {
        v38 = v35;
        [v3 save:&v38];
        v26 = v38;

        [WeakRetained _logError:v26 at:@"_dirtyMutableCloudDataWithFetchLimit - fetch"];
        v10 = v26;
      }

      v9 = v36;
      v6 = v37;
    }

    else
    {
      v29 = BDSCloudKitLog(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [WeakRetained entityName];
        *buf = 138412290;
        v46 = v30;
        _os_log_impl(&dword_1E45E0000, v29, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ startSyncToCKWithCompletion no records need updating", buf, 0xCu);
      }

      v31 = _Block_copy(*(a1 + 32));
      v14 = v31;
      if (v31)
      {
        (*(v31 + 2))(v31, 0, 0);
      }
    }
  }

  else
  {
    v27 = _Block_copy(*(a1 + 32));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0);
    }
  }
}

void sub_1E4647040(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E4647598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46475BC(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_1E464762C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager requesting currentCloudSyncVersions for %@\", &v15, 0xCu);
      }
    }

    v9 = [WeakRetained mq_cloudSyncVersions];
    v10 = [v9 mutableCopy];

    v11 = _Block_copy(*(a1 + 32));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v10);
    }
  }

  else
  {
    v13 = _Block_copy(*(a1 + 32));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void sub_1E46479B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46479DC(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E4647A54(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(a1 + 32) debugDescription];
        *buf = 138412546;
        v42 = v8;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudData %@\", buf, 0x16u);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E695D5E0]);
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setReturnsObjectsAsFaults:0];
    [v12 setFetchLimit:1];
    [v12 setPredicate:*(a1 + 40)];
    v39 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v39];
    v14 = v39;
    [WeakRetained _logError:v14 at:@"setCloudData - fetch"];
    v37 = v13;
    v15 = [v13 firstObject];
    v16 = v15;
    if (!v15)
    {
      v17 = MEMORY[0x1E695D5B8];
      v18 = [WeakRetained entityName];
      v16 = [v17 insertNewObjectForEntityForName:v18 inManagedObjectContext:v3];
    }

    v19 = [WeakRetained privacyDelegate];
    [v16 setPrivacyDelegate:v19];

    v20 = [WeakRetained privacyDelegate];
    [*(a1 + 32) setPrivacyDelegate:v20];

    if (([v16 isEqualExceptForDate:*(a1 + 32) ignoringEmptySalt:*(a1 + 80)] & 1) != 0 || (objc_msgSend(v16, "configureFromCloudData:withMergers:", *(a1 + 32), *(a1 + 48)), v21 = objc_msgSend(v16, "hasChanges"), !v21))
    {
      v25 = 0;
    }

    else
    {
      v22 = BDSCloudKitLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [WeakRetained entityName];
        v24 = [v16 identifier];
        *buf = 138544386;
        v42 = v23;
        v43 = 2160;
        v44 = 1752392040;
        v45 = 2112;
        v46 = v24;
        v47 = 1024;
        v48 = v15 == 0;
        v49 = 2112;
        v50 = v16;
        _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v16 incrementEditGeneration];
      v25 = 1;
    }

    if ([v3 hasChanges])
    {
      [WeakRetained mq_incrementCloudVersion];
      v38 = v14;
      v26 = [v3 save:&v38];
      v27 = v38;

      if (!v15)
      {
        if (v26)
        {
          v28 = [*(a1 + 56) monitor];

          if (v28)
          {
            if (v16)
            {
              v29 = [*(a1 + 56) monitor];
              v30 = *(a1 + 56);
              v40 = v16;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
              [v29 dataManager:v30 didInsertNewRecords:v31];
            }
          }
        }
      }

      [WeakRetained _logError:v27 at:@"setCloudData - save"];
      [WeakRetained mq_signalTransactions];
    }

    else
    {
      v27 = v14;
    }

    v34 = [WeakRetained mq_sanitizeError:v27];

    v35 = _Block_copy(*(a1 + 64));
    v36 = v35;
    if (v35)
    {
      (*(v35 + 2))(v35, v16 != 0, v25, v34);
    }
  }

  else
  {
    v32 = _Block_copy(*(a1 + 64));
    v33 = v32;
    if (v32)
    {
      (*(v32 + 2))(v32, 0, 0, 0);
    }
  }
}

void sub_1E4648148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464816C(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E46481E4(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v37 = [WeakRetained moc];
  if (v37)
  {
    v2 = [MEMORY[0x1E698F550] shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v5 = BDSCloudKitDevelopmentLog(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [WeakRetained entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudDatas\", &buf, 0xCu);
      }
    }

    v7 = objc_alloc(MEMORY[0x1E695D5E0]);
    v8 = [WeakRetained entityName];
    v36 = [v7 initWithEntityName:v8];

    [v36 setReturnsObjectsAsFaults:0];
    [v36 setPredicate:*(a1 + 32)];
    v63 = 0;
    v9 = [v37 executeFetchRequest:v36 error:&v63];
    v10 = v63;
    [WeakRetained _logError:v10 at:@"setCloudData(propertyIDKey) - fetch"];
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v13)
    {
      v14 = *v60;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v59 + 1) + 8 * i);
          v17 = [v16 valueForKey:*(a1 + 40)];
          [v11 setObject:v16 forKey:v17];
        }

        v13 = [v12 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v13);
    }

    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v50[3] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v71 = 0x3032000000;
    v72 = sub_1E4648848;
    v73 = sub_1E4648858;
    v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = *(a1 + 48);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1E4648860;
    v40[3] = &unk_1E875B340;
    v19 = v11;
    v41 = v19;
    v42 = WeakRetained;
    v20 = v37;
    v43 = v20;
    p_buf = &buf;
    v46 = &v51;
    v49 = *(a1 + 88);
    v44 = *(a1 + 56);
    v47 = &v55;
    v48 = v50;
    [v18 enumerateKeysAndObjectsUsingBlock:v40];
    if (([v20 hasChanges] & 1) != 0 || *(v56 + 24) == 1)
    {
      [WeakRetained mq_incrementCloudVersion];
      v39 = v10;
      v21 = [v20 save:&v39];
      v22 = v39;

      [WeakRetained _logError:v22 at:@"setCloudData(propertyIDKey) - save remaining"];
      v23 = BDSCloudKitLog([WeakRetained mq_signalTransactions]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v33 = [WeakRetained entityName];
        v34 = [v20 persistentStoreCoordinator];
        v35 = [v34 persistentStores];
        *v64 = 138412802;
        v65 = v33;
        v66 = 2112;
        v67 = v35;
        v68 = 2112;
        v69 = v22;
        _os_log_debug_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Save to storeID:%@ error:%@", v64, 0x20u);
      }

      if (v21)
      {
        v24 = [*(a1 + 64) monitor];
        if (v24)
        {
          v25 = [*(*(&buf + 1) + 40) count] == 0;

          if (!v25)
          {
            v26 = [*(a1 + 64) monitor];
            [v26 dataManager:*(a1 + 64) didInsertNewRecords:*(*(&buf + 1) + 40)];
          }
        }
      }
    }

    else
    {
      v22 = v10;
    }

    v30 = [WeakRetained mq_sanitizeError:v22];

    v31 = _Block_copy(*(a1 + 72));
    v32 = v31;
    if (v31)
    {
      (*(v31 + 2))(v31, *(v52 + 24), *(v56 + 24), v30);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v50, 8);
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);

    v28 = v36;
  }

  else
  {
    v27 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1E47092F0(WeakRetained);
    }

    v28 = _Block_copy(*(a1 + 72));
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, 0, 0, 0);
      v28 = v29;
    }
  }
}

void sub_1E46487EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E4648848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4648860(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695D5B8];
    v10 = [*(a1 + 40) entityName];
    v7 = [v9 insertNewObjectForEntityForName:v10 inManagedObjectContext:*(a1 + 48)];

    [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
    v8 = 1;
  }

  *(*(*(a1 + 72) + 8) + 24) |= v7 != 0;
  v11 = [*(a1 + 40) privacyDelegate];
  [v7 setPrivacyDelegate:v11];

  v12 = [*(a1 + 40) privacyDelegate];
  [v5 setPrivacyDelegate:v12];

  v13 = [v7 isEqualExceptForDate:v5 ignoringEmptySalt:*(a1 + 96)];
  v14 = v13;
  v15 = BDSCloudKitLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1E470937C(v7);
  }

  if ((v14 & 1) == 0)
  {
    [v7 configureFromCloudData:v5 withMergers:*(a1 + 56)];
    v16 = [v7 hasChanges];
    v17 = v16;
    v18 = BDSCloudKitLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1E470941C(v7);
    }

    if (v17)
    {
      v20 = BDSCloudKitLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(a1 + 40) entityName];
        v22 = [v7 identifier];
        *buf = 138544386;
        v32 = v21;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v22;
        v37 = 1024;
        v38 = v8;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v7 incrementEditGeneration];
      *(*(*(a1 + 80) + 8) + 24) = 1;
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }

  v23 = *(*(a1 + 88) + 8);
  if (*(v23 + 24) >= 0x21uLL)
  {
    *(v23 + 24) = 0;
    if ([*(a1 + 48) hasChanges])
    {
      v24 = *(a1 + 48);
      v30 = 0;
      [v24 save:&v30];
      v25 = v30;
      v26 = BDSCloudKitLog([*(a1 + 40) _logError:v25 at:@"setCloudData(propertyIDKey) - save batch"]);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 40) entityName];
        v28 = [*(a1 + 48) persistentStoreCoordinator];
        v29 = [v28 persistentStores];
        *buf = 138412802;
        v32 = v27;
        v33 = 2112;
        v34 = v29;
        v35 = 2112;
        v36 = v25;
        _os_log_debug_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Batch save to storeID:%@ with error:%@", buf, 0x20u);
      }
    }
  }
}

void sub_1E4648D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4648DBC(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4648E30(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(a1 + 32) debugDescription];
        *buf = 138543618;
        v38 = v8;
        v39 = 2114;
        v40 = v9;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ removeCloudDataForPredicate:%{public}@\", buf, 0x16u);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E695D5E0]);
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setFetchBatchSize:64];
    [v12 setPredicate:*(a1 + 32)];
    v35 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v35];
    v14 = v35;
    [WeakRetained _logError:v14 at:@"removeCloudData - fetch"];
    v15 = [v13 count];
    v16 = v15;
    if (v15)
    {
      v29 = v15;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [v3 deleteObject:{*(*(&v31 + 1) + 8 * i), v29}];
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v19);
      }

      if ([v3 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v30 = v14;
        [v3 save:&v30];
        v22 = v30;

        [WeakRetained _logError:v22 at:@"removeCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v14 = v22;
      }

      v16 = v29;
    }

    else
    {
      v25 = BDSCloudKitLog(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1E47094BC(WeakRetained, (a1 + 32));
      }
    }

    v26 = [WeakRetained mq_sanitizeError:{v14, v29}];

    v27 = _Block_copy(*(a1 + 40));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v16 != 0, v26);
    }
  }

  else
  {
    v23 = _Block_copy(*(a1 + 40));
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }
  }
}

void sub_1E4649380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46493A4(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4649418(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setFetchBatchSize:64];
    [v6 setPredicate:*(a1 + 32)];
    v30 = 0;
    v7 = [v3 executeFetchRequest:v6 error:&v30];
    v8 = v30;
    [WeakRetained _logError:v8 at:@"updateSyncGeneration - fetch"];
    v9 = [v7 count];
    if (v9)
    {
      v10 = [v7 count];
      v11 = [*(a1 + 40) count];
      if (v10 != v11)
      {
        v12 = BDSCloudKitLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1E470957C();
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v32 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1E46497A8;
      v24[3] = &unk_1E875B390;
      v25 = *(a1 + 48);
      v26 = *(a1 + 40);
      v27 = WeakRetained;
      v29 = buf;
      v13 = v3;
      v28 = v13;
      [v7 enumerateObjectsUsingBlock:v24];
      v23 = v8;
      [v13 save:&v23];
      v14 = v23;

      [WeakRetained _logError:v14 at:@"updateSyncGeneration - save remaining"];
      [WeakRetained mq_signalTransactions];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v17 = BDSCloudKitLog(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [WeakRetained entityName];
        v19 = [*(a1 + 40) debugDescription];
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_INFO, "Did not find %{public}@ to update sync gen from cloudData:%@", buf, 0x16u);
      }

      v14 = v8;
    }

    v20 = [WeakRetained mq_sanitizeError:v14];

    v21 = _Block_copy(*(a1 + 56));
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, v9 != 0, v20);
    }
  }

  else
  {
    v15 = _Block_copy(*(a1 + 56));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 0);
    }
  }
}

void sub_1E4649788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E46497A8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueForKey:*(a1 + 32)];
  v5 = [*(a1 + 40) objectForKey:v4];
  v6 = [*(a1 + 48) privacyDelegate];
  [v3 setPrivacyDelegate:v6];

  [v3 setSyncGeneration:{objc_msgSend(v5, "editGeneration")}];
  v7 = [v5 systemFields];
  [v3 setSystemFields:v7];

  v8 = [v5 systemFields];
  v9 = [v8 modificationDate];
  [v3 setModificationDate:v9];

  v11 = BDSCloudKitLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 48) entityName];
    v13 = [v3 debugDescription];
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ updateSyncGeneration %@", buf, 0x16u);
  }

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 24) + 1;
  *(v14 + 24) = v15;
  if (v15 >= 0x21)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    if ([*(a1 + 56) hasChanges])
    {
      v16 = *(a1 + 56);
      v18 = 0;
      [v16 save:&v18];
      v17 = v18;
      [*(a1 + 48) _logError:v17 at:@"updateSyncGeneration - save batch"];
    }
  }
}

void sub_1E4649B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4649B68(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4649BDC(uint64_t a1)
{
  v1 = a1;
  v53 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v50 = v8;
        v51 = 2112;
        v52 = v9;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ deleteCloudDataForPredicate %@\", buf, 0x16u);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E695D5E0]);
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setFetchBatchSize:64];
    [v12 setPredicate:*(v1 + 32)];
    v47 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v47];
    v14 = v47;
    [WeakRetained _logError:v14 at:@"deleteCloudData - fetch"];
    v15 = [v13 count];
    v16 = v15;
    if (v15)
    {
      v36 = v14;
      v37 = v15;
      v39 = v12;
      v40 = v1;
      v41 = v3;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v38 = v13;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        v21 = MEMORY[0x1E695E118];
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            v24 = [WeakRetained privacyDelegate];
            [v23 setPrivacyDelegate:v24];

            [v23 setDifferentNumber:v21 forKey:@"deletedFlag"];
            v25 = [v23 hasChanges];
            if (v25)
            {
              v26 = BDSCloudKitLog(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [WeakRetained entityName];
                *buf = 138543618;
                v50 = v27;
                v51 = 2112;
                v52 = v23;
                _os_log_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ deleteCloudDataForPredicate data:%@", buf, 0x16u);
              }

              [v23 incrementEditGeneration];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v19);
      }

      v3 = v41;
      if ([v41 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v42 = v36;
        [v41 save:&v42];
        v14 = v42;

        [WeakRetained _logError:v14 at:@"deleteCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v12 = v39;
        v1 = v40;
        v16 = v37;
        v13 = v38;
      }

      else
      {
        v12 = v39;
        v1 = v40;
        v16 = v37;
        v13 = v38;
        v14 = v36;
      }
    }

    else
    {
      if (!v14)
      {
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
        v14 = v15;
      }

      v30 = BDSCloudKitLog(v15);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [WeakRetained entityName];
        v32 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v32;
        _os_log_impl(&dword_1E45E0000, v30, OS_LOG_TYPE_INFO, "Did not find %{public}@ to delete for predicate %{public}@", buf, 0x16u);
      }
    }

    v33 = [WeakRetained mq_sanitizeError:{v14, v36}];

    v34 = _Block_copy(*(v1 + 40));
    v35 = v34;
    if (v34)
    {
      (*(v34 + 2))(v34, v16 != 0, v33);
    }
  }

  else
  {
    v28 = _Block_copy(*(v1 + 40));
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, 0, 0);
    }
  }
}

void sub_1E464A254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464A278(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464A2EC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v16 = v8;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager countWithPredicate:%{public}@\", buf, 0xCu);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setPredicate:*(a1 + 32)];
    v14 = 0;
    [v3 countForFetchRequest:v11 error:&v14];
    v12 = v14;
    [WeakRetained _logError:v12 at:@"count"];
    v13 = [WeakRetained mq_sanitizeError:v12];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1E464A5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E464A810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464A82C(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464A8A0(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v22 = v8;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\", buf, 0xCu);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setReturnsObjectsAsFaults:0];
    [v11 setFetchLimit:1];
    [v11 setPredicate:*(a1 + 32)];
    [v11 setSortDescriptors:*(a1 + 40)];
    v20 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v20];
    v13 = v20;
    [WeakRetained _logError:v13 at:@"mutableCloudData - fetch"];
    v14 = [WeakRetained privacyDelegate];
    v15 = [v12 firstObject];
    [v15 setPrivacyDelegate:v14];
    v16 = [v15 mutableCopy];
    [v16 setPrivacyDelegate:v14];
    v17 = [WeakRetained mq_sanitizeError:v13];

    (*(*(a1 + 48) + 16))();
    if ([v3 hasChanges])
    {
      v19 = v17;
      [v3 save:&v19];
      v18 = v19;

      [WeakRetained _logError:v18 at:@"mutableCloudData - save"];
      v17 = v18;
    }

    [v3 refreshObject:v15 mergeChanges:0];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1E464AD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464AD7C(uint64_t a1)
{
  v2 = BDSCloudKitLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E464ADF4(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = BDSCloudKitDevelopmentLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(a1 + 32) debugDescription];
        v10 = v9;
        v11 = *(a1 + 40);
        v12 = @"YES";
        v13 = *(a1 + 72);
        if (!*(a1 + 48))
        {
          v12 = @"NO";
        }

        *buf = 138544386;
        v48 = v8;
        v49 = 2114;
        v50 = v9;
        v51 = 2114;
        v52 = v11;
        v53 = 2114;
        v54 = v12;
        v55 = 2048;
        v56 = v13;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@ sortDescriptors: %{public}@, has a filter: %{public}@, maximumResultCount: %lu\", buf, 0x34u);
      }
    }

    v14 = objc_alloc(MEMORY[0x1E695D5E0]);
    v15 = [WeakRetained entityName];
    v16 = [v14 initWithEntityName:v15];

    [v16 setFetchBatchSize:64];
    [v16 setPredicate:*(a1 + 32)];
    if (*(a1 + 40))
    {
      [v16 setSortDescriptors:?];
    }

    v45 = 0;
    v37 = v16;
    v38 = v3;
    v17 = [v3 executeFetchRequest:v16 error:&v45];
    v36 = v45;
    [WeakRetained _logError:? at:?];
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v39 = WeakRetained;
    v19 = [WeakRetained privacyDelegate];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
LABEL_12:
      v24 = 0;
      while (1)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v41 + 1) + 8 * v24);
        v26 = *(a1 + 48);
        if (!v26 || (*(v26 + 16))(v26, *(*(&v41 + 1) + 8 * v24)))
        {
          [v25 setPrivacyDelegate:v19];
          v27 = [v25 mutableCopy];
          [v27 setPrivacyDelegate:v19];
          if (v27)
          {
            [v18 addObject:v27];
          }

          v28 = [v18 count];
          v29 = *(a1 + 72);

          if (v28 >= v29)
          {
            break;
          }
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v22)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v3 = v38;
    if ([v38 hasChanges])
    {
      v40 = v36;
      [v38 save:&v40];
      v30 = v40;

      WeakRetained = v39;
      [v39 _logError:v30 at:@"cloudDatas(maximumResultCount) - save"];
    }

    else
    {
      WeakRetained = v39;
      v30 = v36;
    }

    v32 = [WeakRetained mq_sanitizeError:v30];

    v33 = *(a1 + 56);
    v34 = [WeakRetained mq_cloudSyncVersions];
    v35 = [v34 mutableCopy];
    (*(v33 + 16))(v33, v18, v35, v32);
  }

  else
  {
    v31 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1E47095B0();
    }

    (*(*(a1 + 56) + 16))();
  }
}