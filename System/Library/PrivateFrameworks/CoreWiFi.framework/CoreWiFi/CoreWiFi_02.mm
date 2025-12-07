uint64_t sub_1E0BF2DDC(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v4 RNRBSSList];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 channel];
        v13 = [v12 is6GHz];

        if (v13)
        {
          v14 = [v11 shortSSID];
          if (v14)
          {
            if (v14 == [v4 shortSSID])
            {
              goto LABEL_14;
            }
          }

          else if ([v11 isSameSSID])
          {
LABEL_14:
            v15 = 1;
            goto LABEL_16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v15 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [v5 RNRBSSList];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v21 channel];
        v23 = [v22 is6GHz];

        if (v23)
        {
          v24 = [v21 shortSSID];
          if (v24)
          {
            if (v24 == [v5 shortSSID])
            {
              goto LABEL_30;
            }
          }

          else if ([v21 isSameSSID])
          {
LABEL_30:

            goto LABEL_31;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (v15)
  {
LABEL_31:
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t sub_1E0BF304C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 SSID];
  v8 = [*(a1 + 32) SSID];
  v9 = [v7 isEqualToData:v8];

  v10 = [v6 SSID];
  v11 = [*(a1 + 32) SSID];
  v12 = [v10 isEqualToData:v11];

  v13 = 0;
  if (((v9 | v12) & 1) != 0 && v9 != v12)
  {
    if (v9 && [v6 RSSI] < -67)
    {
      goto LABEL_7;
    }

    if (v12)
    {
      if ([v5 RSSI] <= -68)
      {
LABEL_7:
        if (v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_17;
      }

      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    v15 = [v5 RSSI];
    v16 = [v6 RSSI];
    v17 = [v5 RSSI];
    v18 = [v6 RSSI];
    v19 = v18 - v17;
    if (v15 >= v16)
    {
      v19 = v17 - v18;
    }

    if (v19 >= 17)
    {
      v13 = 0;
    }

    else
    {
      v13 = v14;
    }
  }

LABEL_17:

  return v13;
}

uint64_t sub_1E0BF31A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithBool:v6(a2)];
  v9 = MEMORY[0x1E696AD98];
  v10 = (*(a1 + 32))(v7);

  v11 = [v9 numberWithBool:v10];
  v12 = [v8 compare:v11];

  return v12;
}

uint64_t sub_1E0BF3254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithInt:{objc_msgSend(v6, "compare:", a2) != *(a1 + 40)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) compare:v7];

  v11 = [v9 numberWithInt:v10 != *(a1 + 40)];
  v12 = [v8 compare:v11];

  return v12;
}

void sub_1E0BF3464(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 67109120;
    v12[1] = a2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 2, "[corewifi] SCNetworkReachability event: flags=0x%X", v12);
  }

  if ([v6 isMonitoringEvents])
  {
    v10 = [v6 eventHandler];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, v6, a2);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1E0BF3678(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 32) & 1) == 0)
  {
    *(v3 + 32) = 1;
    SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BF3748(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 0;
    SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 24), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BF3854(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 32);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BF3F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BF3F68()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE81AB8;
  v6 = qword_1ECE81AB8;
  if (!qword_1ECE81AB8)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAsset");
    qword_1ECE81AB8 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF4054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BF406C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE81AB0;
  v6 = qword_1ECE81AB0;
  if (!qword_1ECE81AB0)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAssetSet");
    qword_1ECE81AB0 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF4158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF43A0(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    v19 = 1024;
    v20 = 210;
    v21 = 2080;
    v22 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Setting assetRootToProcess TRUE", buf, 0x1Cu);
  }

  [*(a1 + 32) setAssetRootToProcess:1];
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v3 containsObject:{v9, v12}] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [[CWFAssetCreatorFromRoot alloc] initWithPaths:v3];
  [*(a1 + 32) setAssetFromRoot:v10];

  +[CWFAssetSetManager endAllPreviousLocks];
  [*(a1 + 32) lockAndHandOffCanBlock:1 forcedFetch:1];
  [*(a1 + 32) setAssetRootToProcess:0];
  v11 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    v19 = 1024;
    v20 = 230;
    v21 = 2080;
    v22 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Setting assetRootToProcess FALSE", buf, 0x1Cu);
  }
}

uint64_t sub_1E0BF461C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    v6 = 1024;
    v7 = 234;
    v8 = 2080;
    v9 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Root Removed, freeing rootAsset", &v4, 0x1Cu);
  }

  [*(a1 + 32) setAssetRootToProcess:0];
  return [*(a1 + 32) setAssetFromRoot:0];
}

void sub_1E0BF4FB0(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    if ([v2 code] == -536870201 || objc_msgSend(a1[4], "code") == -3903)
    {
      [a1[5] __stopPeriodicCheckA11];
      v3 = +[CWFAssetPowerTable isSupportedOTAPTDownloadOnly];
      v4 = CWFGetOTAOSLog();
      v5 = v4;
      if (v3)
      {
        if (v4)
        {
          v6 = CWFGetOTAOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v15 = a1[4];
          *v33 = 136315394;
          *&v33[4] = "[CWFAssetSetManager processQueryResults:withError:]_block_invoke";
          *&v33[12] = 2112;
          *&v33[14] = v15;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[OTA_SET] %s: Download only platform or firmware. Disabling future a11 checks and proceeding with download-only path. error = %@", v33, 22);
        }

        [a1[5] __startAssetTracking];
        return;
      }

      if (v4)
      {
        v11 = CWFGetOTAOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[4];
        *v33 = 136315394;
        *&v33[4] = "[CWFAssetSetManager processQueryResults:withError:]_block_invoke";
        *&v33[12] = 2112;
        *&v33[14] = v17;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[OTA_SET] %s: Unsupported platform or firmware, disabling future a11 checks. error = %@, ", v33, 22, *v33, *&v33[8]);
      }
    }

    else
    {
      v13 = CWFGetOTAOSLog();
      if (v13)
      {
        v11 = CWFGetOTAOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v22 = a1[4];
        *v33 = 136315394;
        *&v33[4] = "[CWFAssetSetManager processQueryResults:withError:]_block_invoke";
        *&v33[12] = 2112;
        *&v33[14] = v22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[OTA_SET] %s: Supported platform or firmware, transient error = %@", v33, 22, *v33, *&v33[8]);
      }
    }

LABEL_45:

    return;
  }

  v7 = a1[6];
  if (!v7 || ![v7 count])
  {
    v12 = CWFGetOTAOSLog();
    if (v12)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[6];
      v20 = [a1[5] apiMajorVersion];
      *v33 = 136315650;
      *&v33[4] = "[CWFAssetSetManager processQueryResults:withError:]_block_invoke";
      *&v33[12] = 2112;
      *&v33[14] = v19;
      *&v33[22] = 2112;
      v34 = v20;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[OTA_SET] %s: Not processing queryResults=%@, existing apiMajorversion=%@", v33, 32);
    }

    goto LABEL_45;
  }

  v8 = [a1[5] apiMajorVersion];

  if (!v8)
  {
    v11 = [a1[6] objectForKey:@"PTV_API_MAJOR_VERSION"];
    v23 = [v11 stringValue];
    v24 = v23;
    if (v23 && ([v23 isEqualToString:&stru_1F5B8FC80] & 1) == 0)
    {
      [a1[5] setApiMajorVersion:v24];
      v30 = [a1[5] assetPowerTable];
      [v30 setPowerTableAPIMajorVersion:v24];

      [a1[5] __stopPeriodicCheckA11];
      [a1[5] __startAssetTracking];
    }

    else
    {
      v25 = CWFGetOTAOSLog();
      if (v25)
      {
        v26 = CWFGetOTAOSLog();
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v32 = a1[6];
        *v33 = 136315650;
        *&v33[4] = "[CWFAssetSetManager processQueryResults:withError:]_block_invoke";
        *&v33[12] = 2112;
        *&v33[14] = v24;
        *&v33[22] = 2112;
        v34 = v32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v26, 16, "[OTA_SET] %s: invalid apiMajorVersion=%@, processing queryResults=%@", v33, 32);
      }
    }

    goto LABEL_45;
  }

  v9 = CWFGetOTAOSLog();
  if (v9)
  {
    v10 = CWFGetOTAOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v28 = [a1[5] apiMajorVersion];
    v29 = a1[6];
    *v33 = 136315650;
    *&v33[4] = "[CWFAssetSetManager processQueryResults:withError:]_block_invoke";
    *&v33[12] = 2112;
    *&v33[14] = v28;
    *&v33[22] = 2112;
    v34 = v29;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA_SET] %s: Existing self.apiMajorVersion=%@, queryResults=%@, disabling future checks.", v33, 32);
  }

  [a1[5] __stopPeriodicCheckA11];
}

void sub_1E0BF5934(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isMobileAssetDaemonReady];
  v3 = CWFGetOTAOSLog();
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      v5 = CWFGetOTAOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[OTA_SET] %s: About to start tracking Assets", &v19);
    }

    v7 = +[CWFAssetPowerTable sharedObj];
    v8 = [v7 assetSpecifierToTrack];
    [*(a1 + 32) setAssetSpecifier:v8];

    v9 = [*(a1 + 32) assetSpecifier];

    if (v9)
    {
      v10 = +[CWFAssetPowerTableTelemetry sharedObj];
      v11 = [*(a1 + 32) assetSpecifier];
      [v10 setAssetSpecifier:v11];

      v12 = [*(a1 + 32) makeAutoAssetSetWithEntry:0];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1E0BF5C48;
      v17[3] = &unk_1E86E6088;
      v17[4] = *(a1 + 32);
      v18 = v12;
      v13 = v12;
      [v13 needForAtomic:@"reason-started-monitoring" withNeedPolicy:0 completion:v17];
    }

    else
    {
      v14 = CWFGetOTAOSLog();
      if (v14)
      {
        v13 = CWFGetOTAOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[OTA_SET] %s: Empty or nil wifichipset data", &v19);
      }
    }
  }

  else
  {
    if (v3)
    {
      v13 = CWFGetOTAOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[OTA_SET] %s: mobileassetd is not ready", &v19);
    }
  }
}

void sub_1E0BF5C48(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 13)
    {
      v8 = CWFGetOTAOSLog();
      if (v8)
      {
        v9 = CWFGetOTAOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315138;
        v26 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[OTA_SET] %s: Daemon became unavailable - will retry", &v25);
      }

      [*(a1 + 32) scheduleReadinessRetry];
    }

    v22 = CWFGetOTAOSLog();
    if (v22)
    {
      v20 = CWFGetOTAOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315650;
      v26 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[OTA_SET] %s:  Interest registration failed for %@ with error: %@", &v25, 32);
    }

    goto LABEL_23;
  }

  [*(a1 + 32) setInterestExpressed:1];
  v10 = CWFGetOTAOSLog();
  if (v10)
  {
    v11 = CWFGetOTAOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) assetSetIdentifier];
    v25 = 136315394;
    v26 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
    v27 = 2112;
    v28 = v13;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[OTA_SET] %s:  Interest registration succeeded for %@", &v25, 22);
  }

  v14 = dispatch_time(0, 30000000000);
  v15 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF6044;
  block[3] = &unk_1E86E6010;
  block[4] = *(a1 + 32);
  dispatch_after(v14, v15, block);

  [*(a1 + 32) _registerForAssetDiscoveredNotification:&unk_1F5B89A10];
  [*(a1 + 32) _registerForAssetDownloadedNotification:&unk_1F5B89910];
  v16 = MGCopyAnswer();
  LODWORD(v15) = [v16 BOOLValue];

  if (v15)
  {
    [*(a1 + 32) forTestingEnablePeriodicCheck];
  }

  v17 = [*(a1 + 32) forTestingPeriodicCheckTimer];

  if (v17)
  {
    v18 = [*(a1 + 32) forTestingPeriodicCheckTimer];
    v19 = dispatch_walltime(0, 1000000000 * [*(a1 + 32) forTestingPeriodicityInSecs] + 30000000000);
    dispatch_source_set_timer(v18, v19, 1000000000 * [*(a1 + 32) forTestingPeriodicityInSecs], 0);

    v20 = [*(a1 + 32) forTestingPeriodicCheckTimer];
    dispatch_activate(v20);
LABEL_23:
  }
}

uint64_t sub_1E0BF6044(uint64_t a1)
{
  +[CWFAssetSetManager endAllPreviousLocks];
  v2 = *(a1 + 32);

  return [v2 lockAndHandOffCanBlock:1 forcedFetch:0];
}

void sub_1E0BF608C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = CWFGetOTAOSLog();
  if (v1)
  {
    v2 = CWFGetOTAOSLog();
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CWFAssetSetManager __startAssetTracking]_block_invoke_2";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v2, 0, "[OTA_SET] %s:  --- Received asset discovered notificaiton --- ", &v4);
  }
}

void sub_1E0BF6174(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = CWFGetOTAOSLog();
  if (v1)
  {
    v2 = CWFGetOTAOSLog();
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v2, 0, "[OTA_SET] %s:  --- Received asset download notificaiton --- ", &v4);
  }
}

id sub_1E0BF67F0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86930;
  v6 = qword_1ECE86930;
  if (!qword_1ECE86930)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAssetSetNotifications");
    qword_1ECE86930 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF68DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF68F4(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = CWFGetOTAOSLog();
  if (v4)
  {
    v5 = CWFGetOTAOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CWFAssetSetManager _registerForAssetDiscoveredNotification:]_block_invoke";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[OTA_SET] %s:  Begin: Asset discovered completion handler", &v11);
  }

  state64 = 0;
  if (notify_is_valid_token(a2))
  {
    notify_get_state(a2, &state64);
  }

  [*(a1 + 32) _handleAssetDiscoveredNotification];
  v7 = CWFGetOTAOSLog();
  if (v7)
  {
    v8 = CWFGetOTAOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CWFAssetSetManager _registerForAssetDiscoveredNotification:]_block_invoke";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[OTA_SET] %s:  End: Asset discovered completion handler", &v11);
  }
}

void sub_1E0BF6C90(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CWFGetOTAOSLog();
  if (v4)
  {
    v5 = CWFGetOTAOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CWFAssetSetManager _registerForAssetDownloadedNotification:]_block_invoke";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[OTA_SET] %s:  Begin: notify_register_dispatch's completion handler", &v12);
  }

  state64 = 0;
  if (notify_is_valid_token(a2))
  {
    notify_get_state(a2, &state64);
  }

  v7 = +[CWFAssetPowerTableTelemetry sharedObj];
  [v7 setAssetVersionDownloadNotifcation:*(a1 + 32) reason:state64];

  [*(a1 + 40) _handleAssetDownloadedNotification];
  v8 = CWFGetOTAOSLog();
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CWFAssetSetManager _registerForAssetDownloadedNotification:]_block_invoke";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[OTA_SET] %s:  End: notify_register_dispatch's completion handler", &v12);
  }
}

id sub_1E0BF730C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86938;
  v6 = qword_1ECE86938;
  if (!qword_1ECE86938)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAssetSetPolicy");
    qword_1ECE86938 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF8854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF9E30(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CWFGetOTAOSLog();
  if (v6)
  {
    v7 = CWFGetOTAOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 localizedDescription];
    v10 = 136315650;
    v11 = "+[CWFAssetSetManager endAllPreviousLocks]_block_invoke";
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[OTA_SET] %s: Completed for assetSetIdentifier: %@ with error: %@", &v10, 32);
  }
}

void sub_1E0BFA23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1E0BFA4F0(uint64_t a1)
{
  if (!qword_1ED7E38B8)
  {
    qword_1ED7E38B8 = _sl_dlopen();
  }

  result = objc_getClass("SUCoreRestoreVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E38B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0BFA5F4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E38B8 = result;
  return result;
}

Class sub_1E0BFA668(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE81AB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0BFA6B8()
{
  if (!qword_1ECE81AE0)
  {
    qword_1ECE81AE0 = _sl_dlopen();
  }
}

uint64_t sub_1E0BFA788(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE81AE0 = result;
  return result;
}

Class sub_1E0BFA7FC(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE81AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA84C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSetNotifications");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86930 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA89C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSetPolicy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86938 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA8EC(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSelector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86940 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA93C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetPolicy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86948 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA98C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSetEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86950 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1E0BFC038()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86958;
  v6 = qword_1ECE86958;
  if (!qword_1ECE86958)
  {
    sub_1E0BFE784();
    v4[3] = objc_getClass("SUCoreRestoreVersion");
    qword_1ECE86958 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BFC124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BFCECC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86968;
  v6 = qword_1ECE86968;
  if (!qword_1ECE86968)
  {
    sub_1E0BFE784();
    v4[3] = objc_getClass("SUCoreDevice");
    qword_1ECE86968 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BFCFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1E0BFE734(uint64_t a1)
{
  sub_1E0BFE784();
  result = objc_getClass("SUCoreRestoreVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0BFE784()
{
  if (!qword_1ECE86960)
  {
    qword_1ECE86960 = _sl_dlopen();
  }
}

uint64_t sub_1E0BFE854(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE86960 = result;
  return result;
}

Class sub_1E0BFE8C8(uint64_t a1)
{
  sub_1E0BFE784();
  result = objc_getClass("SUCoreDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0BFE96C()
{
  qword_1ED7E38C0 = objc_alloc_init(CWFAssetPowerTableTelemetry);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1E0BFF2C8(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:*(*(a1 + 32) + 24) forKeyedSubscript:@"assetSpecifier"];
  [v2 setObject:*(*(a1 + 32) + 56) forKeyedSubscript:@"assetType"];
  [v2 setObject:*(*(a1 + 32) + 64) forKeyedSubscript:@"assetVersion"];
  [v2 setObject:*(*(a1 + 32) + 40) forKeyedSubscript:@"deviceSKU"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"isSupportedChipset"];

  [v2 setObject:*(*(a1 + 32) + 48) forKeyedSubscript:@"notificationString"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 72)];
  [v2 setObject:v4 forKeyedSubscript:@"assetAvailable"];

  [v2 setObject:*(*(a1 + 32) + 80) forKeyedSubscript:@"assetBuild"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 104)];
  [v2 setObject:v5 forKeyedSubscript:@"assetVersionSanity"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 105)];
  [v2 setObject:v6 forKeyedSubscript:@"osVersionSanity"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 106)];
  [v2 setObject:v7 forKeyedSubscript:@"osRestoreVersionSanity"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 107)];
  [v2 setObject:v8 forKeyedSubscript:@"skuSanity"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 108)];
  [v2 setObject:v9 forKeyedSubscript:@"assetBuildSanity"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 109)];
  [v2 setObject:v10 forKeyedSubscript:@"transferSuccess"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 110)];
  [v2 setObject:v11 forKeyedSubscript:@"transferAssetAlreadyHere"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 111)];
  [v2 setObject:v12 forKeyedSubscript:@"transferPreviousAssetCleaned"];

  if (*(a1 + 40))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v2 setObject:v13 forKeyedSubscript:@"latencyPTBuildToCatalogPosted"];
  }

  if (*(a1 + 48))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v2 setObject:v14 forKeyedSubscript:@"latencyCatalogPostedToChecked"];
  }

  if (*(a1 + 56))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v2 setObject:v15 forKeyedSubscript:@"latencyCatalogCheckedToPTAvailable"];
  }

  if (*(a1 + 64) == 1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 65)];
    [v2 setObject:v16 forKeyedSubscript:@"assetAvailableAfterCWFInit"];
  }

  v17 = *(a1 + 32);
  if (v17[16])
  {
    [v2 setObject:v17[15] forKeyedSubscript:@"assetVersionInfoVersion"];
    [v2 setObject:*(*(a1 + 32) + 136) forKeyedSubscript:@"assetVersionInfoDate"];
    v17 = *(a1 + 32);
  }

  v18 = v17[18];
  if (v18 && [v18 code])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 144), "code")}];
    [v2 setObject:v19 forKeyedSubscript:@"error"];
  }

  v20 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136446722;
    v23 = "[CWFAssetPowerTableTelemetry sendTelemetryAndClear]_block_invoke";
    v24 = 1024;
    v25 = 269;
    v26 = 2112;
    v27 = v2;
    _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sent telemetry metricDict: %@", &v22, 0x1Cu);
  }

  return v2;
}

void sub_1E0C009F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C00A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained stopAccounting];
    WeakRetained = v2;
  }
}

void sub_1E0C00A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained issueFullBandScan];
    WeakRetained = v2;
  }
}

void sub_1E0C00C48(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = [v3 _lastSubmissionTimePreAJ];
  LOBYTE(v3) = [v3 canSubmitToCA:v4];

  if ((v3 & 1) == 0)
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 197;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) Restricting post to CA once every 24hrs, exiting\n", v37, 28, *v37, *&v37[8], *v38);
    }

    goto LABEL_54;
  }

  if ([*(a1 + 32) _activity] == 2)
  {
    v25 = CWFGetOSLog();
    if (v25)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 201;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) AJ accounting already started, exiting\n", v37, 28, *v37, *&v37[8], *v38);
    }

    goto LABEL_54;
  }

  if ([*(a1 + 32) _activity] == 1)
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 205;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) We are still in the middle of post TD eval, but RSSI is now good enough for AJ, terminating post TD & starting AJ accounting", v37, 28);
    }

    [*(a1 + 32) gatherCellularDataUsageSoFar:0];
    [*(a1 + 32) __stopCellularDataUsageAccountingPostTD];
  }

  v8 = [*(a1 + 32) gatherCellularDataStats];

  if (!v8)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 211;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid cellular callback reference\n", v37, v36, *v37, *&v37[8], *v38);
    }

    goto LABEL_54;
  }

  if (!*(a1 + 40))
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 215;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid TD network provided\n", v37, v36, *v37, *&v37[8], *v38);
    }

    goto LABEL_54;
  }

  if (*(a1 + 48) >= 180)
  {
    v9 = 180;
  }

  else
  {
    v9 = *(a1 + 48);
  }

  [*(a1 + 32) set_boundaryTime:v9];
  v10 = [*(a1 + 32) _boundaryTimer];
  dispatch_activate(v10);

  v11 = [*(a1 + 32) _boundaryTimer];
  v12 = dispatch_walltime(0, 1000000000 * [*(a1 + 32) _boundaryTime]);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

  v13 = [*(a1 + 32) gatherCellularDataStats];
  v14 = (v13)[2](v13, v2);

  if ((v14 & 1) == 0)
  {
    v28 = CWFGetOSLog();
    if (v28)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 229;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get cellular data usage at init\n", v37, v36, *v37, *&v37[8], *v38);
    }

    goto LABEL_54;
  }

  if (([*(a1 + 32) checkCellularDataSanity:v2] & 1) == 0)
  {
    v29 = CWFGetOSLog();
    if (v29)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136446722;
      *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      *&v37[12] = 2082;
      *&v37[14] = "CWFJITTDImpactEstimator.m";
      *&v37[22] = 1024;
      *v38 = 233;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) Data obtained for cellular stats is invalid, exiting\n", v37, v36, *v37, *&v37[8], *v38);
    }

LABEL_54:

    goto LABEL_23;
  }

  [*(a1 + 32) storeCellularDataUsage:v2];
  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) _boundaryTime];
    v19 = [*(a1 + 32) _totalCellularInBytes];
    v20 = [*(a1 + 32) _totalCellularOutBytes];
    v21 = [*(a1 + 32) _totalCellularInPackets];
    v22 = [*(a1 + 32) _totalCellularOutPackets];
    *&v37[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    *&v37[12] = 2082;
    *v37 = 136448002;
    *&v37[14] = "CWFJITTDImpactEstimator.m";
    *&v37[22] = 1024;
    *v38 = 238;
    *&v38[4] = 2048;
    *&v38[6] = v18;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v20;
    v43 = 2112;
    v44 = v21;
    v45 = 2112;
    v46 = v22;
    LODWORD(v36) = 78;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] %{public}s (%{public}s:%u) Starting pre AJ accounting with boundary time %ld initial data stats inBytes[%@] outBytes[%@] inPackets[%@] outPackets[%@]", v37, v36);
  }

  [*(a1 + 32) set_activity:2];
  [*(a1 + 32) set_rssi:*(a1 + 56)];
  [*(a1 + 32) set_tdNetwork:*(a1 + 40)];
LABEL_23:
}

void sub_1E0C01490(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [*(a1 + 32) gatherCellularDataStats];

  if (v3)
  {
    [*(a1 + 32) cancelBoundaryTimer];
    if ([*(a1 + 32) _activity] == 2)
    {
      v4 = [*(a1 + 32) gatherCellularDataStats];
      v5 = (v4)[2](v4, v2);

      if (v5)
      {
        if ([*(a1 + 32) checkCellularDataSanity:v2])
        {
          v6 = [*(a1 + 32) computeDataUsageInCurrentSession:v2];
          [*(a1 + 32) postCellularDataUsageAccountingPreAJ:v6];
        }

        else
        {
          v10 = CWFGetOSLog();
          if (v10)
          {
            v6 = CWFGetOSLog();
          }

          else
          {
            v6 = MEMORY[0x1E69E9C10];
            v14 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *v15 = 136446722;
            *&v15[4] = "[CWFJITTDImpactEstimator stopCellularDataUsageAccountingDelayedAJ]_block_invoke";
            *&v15[12] = 2082;
            *&v15[14] = "CWFJITTDImpactEstimator.m";
            *&v15[22] = 1024;
            LODWORD(v16) = 271;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Data obtained for cellular stats is invalid, exiting\n", v15, 28, *v15, *&v15[8], v16);
          }
        }
      }

      else
      {
        v9 = CWFGetOSLog();
        if (v9)
        {
          v6 = CWFGetOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v15 = 136446722;
          *&v15[4] = "[CWFJITTDImpactEstimator stopCellularDataUsageAccountingDelayedAJ]_block_invoke";
          *&v15[12] = 2082;
          *&v15[14] = "CWFJITTDImpactEstimator.m";
          *&v15[22] = 1024;
          LODWORD(v16) = 267;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get cellular data usage at init\n", v15, 28, *v15, *&v15[8], v16);
        }
      }
    }

    else
    {
      v8 = CWFGetOSLog();
      if (v8)
      {
        v6 = CWFGetOSLog();
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v15 = 136446722;
        *&v15[4] = "[CWFJITTDImpactEstimator stopCellularDataUsageAccountingDelayedAJ]_block_invoke";
        *&v15[12] = 2082;
        *&v15[14] = "CWFJITTDImpactEstimator.m";
        *&v15[22] = 1024;
        LODWORD(v16) = 261;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid state we are not in pre AJ data eval zone\n", v15, 28, *v15, *&v15[8], v16);
      }
    }
  }

  else
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136446722;
      *&v15[4] = "[CWFJITTDImpactEstimator stopCellularDataUsageAccountingDelayedAJ]_block_invoke";
      *&v15[12] = 2082;
      *&v15[14] = "CWFJITTDImpactEstimator.m";
      *&v15[22] = 1024;
      LODWORD(v16) = 255;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid cellular callback reference\n", v15, 28, *v15, *&v15[8], v16);
    }
  }

  [*(a1 + 32) resetStores];
}

void sub_1E0C018BC(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([*(a1 + 32) _legacyAccountingComplete])
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator notifyAJDelayedOnlyDueToJITTD]_block_invoke";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 290;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Legacy accounting already stopped\n", v18, 28, *v18, *&v18[8], v19);
    }

    goto LABEL_33;
  }

  v3 = [*(a1 + 32) gatherCellularDataStats];

  if (!v3)
  {
    v9 = CWFGetOSLog();
    if (v9)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator notifyAJDelayedOnlyDueToJITTD]_block_invoke";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 294;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid cellular callback reference\n", v18, 28, *v18, *&v18[8], v19);
    }

    goto LABEL_33;
  }

  if ([*(a1 + 32) _activity] != 2)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator notifyAJDelayedOnlyDueToJITTD]_block_invoke";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 298;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid state we are not in pre AJ data eval zone\n", v18, 28, *v18, *&v18[8], v19);
    }

    goto LABEL_33;
  }

  v4 = [*(a1 + 32) gatherCellularDataStats];
  v5 = (v4)[2](v4, v2);

  if ((v5 & 1) == 0)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator notifyAJDelayedOnlyDueToJITTD]_block_invoke";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 304;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get cellular data usage at init\n", v18, 28, *v18, *&v18[8], v19);
    }

    goto LABEL_33;
  }

  if (([*(a1 + 32) checkCellularDataSanity:v2] & 1) == 0)
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator notifyAJDelayedOnlyDueToJITTD]_block_invoke";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 308;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Data obtained for cellular stats is invalid, exiting\n", v18, 28, *v18, *&v18[8], v19);
    }

LABEL_33:

    goto LABEL_7;
  }

  v6 = [*(a1 + 32) computeDataUsageInCurrentSession:v2];
  [*(a1 + 32) set_cellularDataUsageInLegacyBoundary:v6];

  [*(a1 + 32) set_legacyAccountingComplete:1];
LABEL_7:
}

void sub_1E0C01DC8(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = [v3 _lastSubmissionTimePostTD];
  LOBYTE(v3) = [v3 canSubmitToCA:v4];

  if ((v3 & 1) == 0)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136446722;
      *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
      *&v34[12] = 2082;
      *&v34[14] = "CWFJITTDImpactEstimator.m";
      *&v34[22] = 1024;
      *v35 = 332;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Restricting post to CA once every 24hrs, exiting\n", v34, 28, *v34, *&v34[8], *v35);
    }

    goto LABEL_44;
  }

  v5 = [*(a1 + 32) gatherCellularDataStats];

  if (!v5)
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136446722;
      *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
      *&v34[12] = 2082;
      *&v34[14] = "CWFJITTDImpactEstimator.m";
      *&v34[22] = 1024;
      *v35 = 336;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid cellular callback reference\n", v34, 28, *v34, *&v34[8], *v35);
    }

    goto LABEL_44;
  }

  v6 = [*(a1 + 32) scanForNetworkHandler];

  if (!v6)
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136446722;
      *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
      *&v34[12] = 2082;
      *&v34[14] = "CWFJITTDImpactEstimator.m";
      *&v34[22] = 1024;
      *v35 = 340;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid scan reference\n", v34, 28, *v34, *&v34[8], *v35);
    }

    goto LABEL_44;
  }

  if (!*(a1 + 40))
  {
    v25 = CWFGetOSLog();
    if (v25)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136446722;
      *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
      *&v34[12] = 2082;
      *&v34[14] = "CWFJITTDImpactEstimator.m";
      *&v34[22] = 1024;
      *v35 = 344;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid TD network provided\n", v34, 28, *v34, *&v34[8], *v35);
    }

    goto LABEL_44;
  }

  v7 = [*(a1 + 32) gatherCellularDataStats];
  v8 = (v7)[2](v7, v2);

  if ((v8 & 1) == 0)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136446722;
      *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
      *&v34[12] = 2082;
      *&v34[14] = "CWFJITTDImpactEstimator.m";
      *&v34[22] = 1024;
      *v35 = 350;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get cellular data usage at init\n", v34, 28, *v34, *&v34[8], *v35);
    }

    goto LABEL_44;
  }

  if (([*(a1 + 32) checkCellularDataSanity:v2] & 1) == 0)
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136446722;
      *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
      *&v34[12] = 2082;
      *&v34[14] = "CWFJITTDImpactEstimator.m";
      *&v34[22] = 1024;
      *v35 = 354;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Data obtained for cellular stats is invalid, exiting\n", v34, 28, *v34, *&v34[8], *v35);
    }

LABEL_44:

    goto LABEL_13;
  }

  [*(a1 + 32) storeCellularDataUsage:v2];
  [*(a1 + 32) set_boundaryTime:180];
  v9 = [*(a1 + 32) _boundaryTimer];
  dispatch_activate(v9);

  v10 = [*(a1 + 32) _boundaryTimer];
  v11 = dispatch_walltime(0, 1000000000 * [*(a1 + 32) _boundaryTime]);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);

  [*(a1 + 32) setupPeriodicTimerForScan];
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v16 = [*(a1 + 32) _boundaryTime];
    v17 = [*(a1 + 32) _totalCellularInBytes];
    v18 = [*(a1 + 32) _totalCellularOutBytes];
    v19 = [*(a1 + 32) _totalCellularInPackets];
    v20 = [*(a1 + 32) _totalCellularOutPackets];
    *v34 = 136448258;
    *&v34[4] = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingPostTD:withMinRSSI:]_block_invoke";
    *&v34[12] = 2082;
    *&v34[14] = "CWFJITTDImpactEstimator.m";
    *&v34[22] = 1024;
    *v35 = 369;
    *&v35[4] = 2048;
    *&v35[6] = v15;
    v36 = 2048;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v44 = 2112;
    v45 = v20;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] %{public}s (%{public}s:%u) Starting post TD accounting with stop RSSI[%ld] boundary time %ld initial data stats inBytes[%@] outBytes[%@] inPackets[%@] outPackets[%@]", v34, 88);
  }

  [*(a1 + 32) set_activity:1];
  [*(a1 + 32) set_rssi:*(a1 + 48)];
  [*(a1 + 32) set_tdNetwork:*(a1 + 40)];
  [*(a1 + 32) gatherCellularDataUsageSoFar:v2];
LABEL_13:
}

void sub_1E0C03714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C0404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CWFLog(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, a1))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, a1, "[corewifi] %{public}@", &v7, 12);
  }
}

id CWFBootArgs()
{
  mainPort = 0;
  if (!MEMORY[0x1E12E9640](*MEMORY[0x1E69E99F8], &mainPort))
  {
    v0 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v0)
    {
      v1 = v0;
      CFProperty = IORegistryEntryCreateCFProperty(v0, @"boot-args", *MEMORY[0x1E695E480], 0);
      if (CFProperty)
      {
        v3 = CFProperty;
        v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v5 = [v3 componentsSeparatedByCharactersInSet:v4];

        IOObjectRelease(v1);
        CFRelease(v3);
        goto LABEL_5;
      }

      IOObjectRelease(v1);
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

id CWFGetBootTime()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 0;
  *v5 = 0x1500000001;
  v2 = 16;
  if (sysctl(v5, 2u, &v3, &v2, 0, 0) == -1)
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v4 / 1000000.0 + v3];
  }

  return v0;
}

id CWFMachineSerialNumber()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = [MEMORY[0x1E696AEC0] stringWithString:CFProperty];
      CFRelease(v5);
    }

    else
    {
      v6 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id CWFDataFromHumanReadableString(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = qword_1E0D818A0[v4];
      v8 = [v3 dataUsingEncoding:v7];
      if (v8)
      {
        break;
      }

      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v9 = v8;
    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

id CWFDataFromHexadecimalString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [v1 componentsSeparatedByCharactersInSet:v2];
    v4 = [v3 componentsJoinedByString:&stru_1F5B8FC80];

    v5 = [MEMORY[0x1E695DF88] data];
    if ([v4 length] >= 2)
    {
      v6 = 2;
      do
      {
        v7 = [v4 substringWithRange:{v6 - 2, 2}];
        v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
        v11 = 0;
        if ([v8 scanHexInt:&v11])
        {
          [v5 appendBytes:&v11 length:1];
        }

        v6 += 2;
      }

      while (v6 <= [v4 length]);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [v5 copy];

  return v9;
}

id CWFDebugDescriptionForLQMSummary(char *a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithInt:*a1];
    [v2 setObject:v3 forKeyedSubscript:@"CCA"];

    v4 = [MEMORY[0x1E696AD98] numberWithInt:a1[1]];
    [v2 setObject:v4 forKeyedSubscript:@"RSSI"];

    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
    [v2 setObject:v5 forKeyedSubscript:@"SNR"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 1)];
    [v2 setObject:v6 forKeyedSubscript:@"DataStallScore"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 2)];
    [v2 setObject:v7 forKeyedSubscript:@"NetScore"];

    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 2)];
    [v2 setObject:v8 forKeyedSubscript:@"TxRetries"];

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 3)];
    [v2 setObject:v9 forKeyedSubscript:@"TxFails"];

    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 4)];
    [v2 setObject:v10 forKeyedSubscript:@"TxFrames"];

    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 5)];
    [v2 setObject:v11 forKeyedSubscript:@"RxFCSErrors"];

    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 6)];
    [v2 setObject:v12 forKeyedSubscript:@"RxPLCPErrors"];

    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 7)];
    [v2 setObject:v13 forKeyedSubscript:@"RxCRSGlitches"];

    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 8)];
    [v2 setObject:v14 forKeyedSubscript:@"RxDupErrors"];

    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 9)];
    [v2 setObject:v15 forKeyedSubscript:@"RxAmpduDupErrors"];

    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 10)];
    [v2 setObject:v16 forKeyedSubscript:@"RxUcastReplayErrors"];

    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 11)];
    [v2 setObject:v17 forKeyedSubscript:@"RxUcastDecryptErrors"];

    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 12)];
    [v2 setObject:v18 forKeyedSubscript:@"RxMcastReplayErrors"];

    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 13)];
    [v2 setObject:v19 forKeyedSubscript:@"RxMcastDecryptErrors"];

    v20 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 14)];
    [v2 setObject:v20 forKeyedSubscript:@"RxRetries"];

    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 15)];
    [v2 setObject:v21 forKeyedSubscript:@"RxGoodPLCPS"];

    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 16)];
    [v2 setObject:v22 forKeyedSubscript:@"RxUcastFrames"];

    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 17)];
    [v2 setObject:v23 forKeyedSubscript:@"RxMcastFrames"];

    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 18)];
    [v2 setObject:v24 forKeyedSubscript:@"RxTotalFrames"];

    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 19)];
    [v2 setObject:v25 forKeyedSubscript:@"RxRTSUCast"];
  }

  else
  {
    v2 = 0;
  }

  v26 = [v2 copy];

  return v26;
}

id CWFEthernetAddressDataFromString(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 UTF8String]) != 0 && (v8 = 0, v7 = 0, sscanf(v3, "%x:%x:%x:%x:%x:%x", v9, &v9[1], &v9[2], &v9[3], &v9[4], &v9[5]) == 6))
  {
    for (i = 0; i != 6; ++i)
    {
      *(&v7 + i) = v9[i];
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t CWFWeakestSecurityType(__int16 a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x200) != 0)
  {
    return 512;
  }

  if ((a1 & 0x100) != 0)
  {
    return 256;
  }

  if ((a1 & 1) != 0 && a3 != 5)
  {
    return 1;
  }

  if ((a1 & 2) != 0 && a2 != 2)
  {
    return 2;
  }

  if ((a1 & 4) != 0)
  {
    return 4;
  }

  if ((a1 & 0x10) != 0)
  {
    return 16;
  }

  v3 = 64;
  if ((a1 & 0x40) == 0)
  {
    v3 = 1;
  }

  if ((a1 & 0x41) == 0)
  {
    v3 = 2;
  }

  if ((a1 & 0x43) == 0)
  {
    if ((a1 & 8) != 0)
    {
      return 8;
    }

    else
    {
      v3 = a1 & 0x80;
      if ((a1 & 0x20) != 0)
      {
        return 32;
      }
    }
  }

  return v3;
}

uint64_t CWFCompareSecurityType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    if (a1 == 128 || a4 == 128)
    {
      v6 = a1 == 128;
      goto LABEL_35;
    }

    if (a1 == 32 || a4 == 32)
    {
      v6 = a1 == 32;
      goto LABEL_35;
    }

    if (a1 == 8 || a4 == 8)
    {
      v6 = a1 == 8;
      goto LABEL_35;
    }

    if (a1 == 2 && a3 == 2)
    {
      return 1;
    }

    if (a4 != 2 || a6 != 2)
    {
      if (a1 == 1 && a2 == 5)
      {
        return 1;
      }

      if (a4 != 1 || a5 != 5)
      {
        if (a1 == 64 || a4 == 64)
        {
          v6 = a1 == 64;
        }

        else if (a1 == 16 || a4 == 16)
        {
          v6 = a1 == 16;
        }

        else if (a1 == 4 || a4 == 4)
        {
          v6 = a1 == 4;
        }

        else
        {
          if (a1 != 2 && a4 != 2)
          {
            if (a1 == 1 || a4 == 1)
            {
              if (a1 == 1)
              {
                return 1;
              }

              else
              {
                return -1;
              }
            }

            if (a4 == 256)
            {
              v7 = -1;
            }

            else
            {
              v7 = 0;
            }

            v8 = a1 == 256;
            goto LABEL_27;
          }

          v6 = a1 == 2;
        }

LABEL_35:
        v7 = 1;
        if (!v6)
        {
          return -1;
        }

        return v7;
      }
    }

    return -1;
  }

  if (a1 == 2 && ((a6 - 1) | (a3 - 1)) <= 1)
  {
    v6 = a3 == 2;
    goto LABEL_35;
  }

  v7 = 0;
  if (a1 != 1 || (a2 - 1) > 4 || (a5 - 1) > 4)
  {
    return v7;
  }

  if (a2 == 2 || a5 == 2)
  {
    v6 = a2 == 2;
    goto LABEL_35;
  }

  if (a2 == 4 || a5 == 4)
  {
    v6 = a2 == 4;
    goto LABEL_35;
  }

  if (a2 == 1 || a5 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (a5 == 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = a2 == 3;
LABEL_27:
  if (v8)
  {
    return 1;
  }

  return v7;
}

uint64_t CWFFastestPHYMode(__int16 a1)
{
  v1 = a1 & 4;
  if ((a1 & 8) != 0)
  {
    v1 = 8;
  }

  if ((a1 & 2) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x10) != 0)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0x80) != 0)
  {
    v4 = 128;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 256;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 & 0x200) != 0)
  {
    return 512;
  }

  else
  {
    return v5;
  }
}

uint64_t CWFSlowestPHYMode(__int16 a1)
{
  v1 = a1 & 0x200;
  if ((a1 & 0x100) != 0)
  {
    v1 = 256;
  }

  if ((a1 & 0x80) != 0)
  {
    v2 = 128;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x10) != 0)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 8) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 & 4) != 0)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

uint64_t CWFComparePHYMode(int a1, int a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 == 512 || a2 == 512)
  {
    v4 = a1 == 512;
    goto LABEL_27;
  }

  if (a1 == 256 || a2 == 256)
  {
    v4 = a1 == 256;
    goto LABEL_27;
  }

  if (a1 == 128 || a2 == 128)
  {
    v4 = a1 == 128;
    goto LABEL_27;
  }

  if (a1 == 16 || a2 == 16)
  {
    v4 = a1 == 16;
    goto LABEL_27;
  }

  if (a1 == 2 || a2 == 2)
  {
    v4 = a1 == 2;
    goto LABEL_27;
  }

  if (a1 == 8 || a2 == 8)
  {
    v4 = a1 == 8;
LABEL_27:
    if (v4)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (a2 == 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t CWFScanResultHas6GHzOnlyBSS(void *a1, void *a2, void *a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v74 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v75 = v5;
  if (v5 && v6)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v79 = [MEMORY[0x1E695DF70] array];
    if (v74)
    {
      v10 = [v74 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF70] array];
    }

    v11 = v10;
    [v10 addObject:v5];
    v12 = 0x1E86E4000uLL;
    v13 = [CWFScanResult alloc];
    v14 = (v7)[2](v7, v5);
    v15 = [(CWFScanResult *)v13 initWithScanRecord:v14 includeProperties:0];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = v11;
    v81 = v15;
    v82 = v7;
    v86 = [obj countByEnumeratingWithState:&v106 objects:v115 count:16];
    if (v86)
    {
      v83 = *v107;
      do
      {
        v16 = 0;
        do
        {
          if (*v107 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v106 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          v19 = v7[2](v7, v17);
          v20 = [objc_alloc(*(v12 + 3688)) initWithScanRecord:v19 includeProperties:0];
          v21 = [v20 channel];
          context = v18;
          v92 = v16;
          v88 = v19;
          if ([v21 is6GHz])
          {
          }

          else
          {
            v22 = [v20 RNRBSSList];
            v23 = [v22 count];

            if (v23)
            {
              [v79 addObject:v20];
            }
          }

          v24 = [v20 channel];
          v25 = [v24 is6GHz];

          if (v25)
          {
            v26 = [(CWFScanResult *)v15 SSID];
            if (v26)
            {
              v27 = v26;
              v28 = [v20 SSID];
              if (!v28)
              {

                goto LABEL_32;
              }

              v29 = v28;
              v30 = [(CWFScanResult *)v15 SSID];
              v31 = [v20 SSID];
              v32 = [v30 isEqual:v31];

              if (v32)
              {
                v33 = [(CWFScanResult *)v15 supportedSecurityTypes];
                if (([v20 supportedSecurityTypes] & v33) != 0)
                {
                  v34 = [v20 age];
                  if (v34 > -[CWFScanResult age](v15, "age") || (v35 = -[CWFScanResult age](v15, "age"), (v35 - [v20 age]) <= 0x7530))
                  {
                    if (![v9 count])
                    {
                      goto LABEL_30;
                    }

                    v36 = 0;
                    while (1)
                    {
                      v37 = objc_autoreleasePoolPush();
                      v38 = [v9 objectAtIndexedSubscript:v36];
                      v39 = [v20 BSSID];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = [v38 BSSID];
                        if (v41)
                        {
                          v42 = v41;
                          v43 = [v20 BSSID];
                          v44 = [v38 BSSID];
                          v45 = [v43 isEqual:v44];

                          if (v45)
                          {
                            v46 = [v20 hasNon6GHzRNRChannel];
                            if (!v46 || [v38 hasNon6GHzRNRChannel])
                            {

                              objc_autoreleasePoolPop(v37);
LABEL_31:
                              v15 = v81;
                              v7 = v82;
                              v12 = 0x1E86E4000;
                              break;
                            }

                            [v9 removeObjectAtIndex:v36];

                            objc_autoreleasePoolPop(v37);
LABEL_30:
                            [v9 addObject:v20];
                            goto LABEL_31;
                          }
                        }

                        else
                        {
                        }
                      }

                      objc_autoreleasePoolPop(v37);
                      if (++v36 >= [v9 count])
                      {
                        goto LABEL_30;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_32:

          objc_autoreleasePoolPop(context);
          v16 = v92 + 1;
        }

        while ((v92 + 1) != v86);
        v47 = [obj countByEnumeratingWithState:&v106 objects:v115 count:16];
        v86 = v47;
      }

      while (v47);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v87 = v9;
    v48 = [v87 countByEnumeratingWithState:&v102 objects:v114 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v103;
      v76 = *v103;
      while (2)
      {
        v51 = 0;
        v77 = v49;
        do
        {
          if (*v103 != v50)
          {
            objc_enumerationMutation(v87);
          }

          v52 = *(*(&v102 + 1) + 8 * v51);
          if (([v52 hasNon6GHzRNRChannel] & 1) == 0 && objc_msgSend(v52, "RSSI") >= -80)
          {
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            contexta = v79;
            v84 = [contexta countByEnumeratingWithState:&v98 objects:v113 count:16];
            if (v84)
            {
              v53 = *v99;
              v85 = v51;
              v78 = *v99;
              do
              {
                v54 = 0;
                do
                {
                  if (*v99 != v53)
                  {
                    objc_enumerationMutation(contexta);
                  }

                  v89 = v54;
                  v55 = *(*(&v98 + 1) + 8 * v54);
                  v94 = 0u;
                  v95 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v93 = v55;
                  v56 = [v55 RNRBSSList];
                  v57 = [v56 countByEnumeratingWithState:&v94 objects:v112 count:16];
                  if (v57)
                  {
                    v58 = v57;
                    v59 = *v95;
                    do
                    {
                      for (i = 0; i != v58; ++i)
                      {
                        if (*v95 != v59)
                        {
                          objc_enumerationMutation(v56);
                        }

                        v61 = *(*(&v94 + 1) + 8 * i);
                        v62 = [v61 shortSSID];
                        if (!v62)
                        {
                          if ([v61 isSameSSID])
                          {
                            v62 = [v93 shortSSID];
                          }

                          else
                          {
                            v62 = 0;
                          }
                        }

                        if (v62 == [v52 shortSSID])
                        {
                          v63 = [v61 BSSID];
                          if (v63)
                          {
                            v64 = v63;
                            v65 = [v52 BSSID];
                            if (v65)
                            {
                              v66 = v65;
                              v67 = [v61 BSSID];
                              v68 = [v52 BSSID];
                              v69 = [v67 isEqual:v68];

                              if (v69)
                              {

                                v15 = v81;
                                v7 = v82;
                                v50 = v76;
                                v49 = v77;
                                v51 = v85;
                                goto LABEL_72;
                              }
                            }

                            else
                            {
                            }
                          }
                        }
                      }

                      v58 = [v56 countByEnumeratingWithState:&v94 objects:v112 count:16];
                    }

                    while (v58);
                  }

                  v54 = v89 + 1;
                  v7 = v82;
                  v15 = v81;
                  v53 = v78;
                }

                while (v89 + 1 != v84);
                v84 = [contexta countByEnumeratingWithState:&v98 objects:v113 count:16];
              }

              while (v84);
            }

            v70 = CWFGetOSLog();
            if (v70)
            {
              v71 = CWFGetOSLog();
            }

            else
            {
              v71 = MEMORY[0x1E69E9C10];
              v72 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v110 = 138543362;
              v111 = v52;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v71, 16, "[corewifi] 6G STAND Alone : (%{public}@)", &v110, 12);
            }

            v8 = 1;
            goto LABEL_81;
          }

LABEL_72:
          ++v51;
        }

        while (v51 != v49);
        v49 = [v87 countByEnumeratingWithState:&v102 objects:v114 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_81:
  }

  return v8;
}

id CWFFilteredANQPResults(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v25 = [v4 maximumAge];
  v5 = [v4 minimumTimestamp];
  if (v3)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E695DF70] array];
    if ([v3 count])
    {
      v24 = v4;
      v8 = 0;
      if (v25)
      {
        v9 = v6 == 0;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      do
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [v3 objectAtIndexedSubscript:v8];
        v13 = [v12 ANQPResponse];
        v14 = [v13 objectForKeyedSubscript:@"TIMESTAMP"];
        v15 = [v14 unsignedLongLongValue];

        if (v10)
        {
          v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v15 > v25;
        }

        else
        {
          v16 = 0;
        }

        v17 = v15 >= v6 || v6 == 0;
        if (!v17 || v16)
        {
          v18 = [v12 scanRecord];
          v19 = [v18 mutableCopy];

          [v19 setObject:0 forKeyedSubscript:@"ANQP_PARSED"];
          v20 = [CWFScanResult alloc];
          v21 = [v12 matchingKnownNetworkProfile];
          v22 = [(CWFScanResult *)v20 initWithScanRecord:v19 knownNetworkProfile:v21 includeProperties:0];

          v12 = v22;
        }

        [v7 addObject:{v12, v24}];

        objc_autoreleasePoolPop(v11);
        ++v8;
      }

      while (v8 < [v3 count]);
      v4 = v24;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

CWFScanResult *sub_1E0C08314(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = [(CWFScanResult *)v5 channel];
  v7 = [v6 is6GHz];

  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = [v4 channel];
  if (![v8 is6GHz])
  {

    goto LABEL_26;
  }

  v9 = [v4 hasNon6GHzRNRChannel];

  if (!v9)
  {
LABEL_26:
    v23 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_28;
  }

  v10 = [v4 scanRecord];
  v11 = [v10 objectForKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];

  if (![v11 count])
  {
    v23 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  v12 = [(CWFScanResult *)v5 scanRecord];
  v13 = [v12 objectForKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];
  v14 = [v13 mutableCopy];

  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v11;
  v15 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = 0;
  v17 = *v28;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v27 + 1) + 8 * i);
      if (([v14 containsObject:{v19, v27}] & 1) == 0)
      {
        [v14 addObject:v19];
        v16 = 1;
      }
    }

    v15 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v15);

  if ((v16 & 1) == 0)
  {
LABEL_24:
    v23 = 0;
LABEL_28:
    v15 = 0;
    goto LABEL_22;
  }

  v20 = [(CWFScanResult *)v5 scanRecord];
  v15 = [v20 mutableCopy];

  if (!v15)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  [v15 setObject:v14 forKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];
  v21 = [CWFScanResult alloc];
  v22 = [(CWFScanResult *)v5 matchingKnownNetworkProfile];
  v23 = [(CWFScanResult *)v21 initWithScanRecord:v15 knownNetworkProfile:v22 includeProperties:0];

  if (!v23)
  {
LABEL_22:
    v24 = v5;
    goto LABEL_23;
  }

  v23 = v23;

  v24 = v23;
LABEL_23:
  v25 = v24;

  return v24;
}

uint64_t CWFKnownNetworkAssociatedDuringAWDLRealTimeMode(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = _os_feature_enabled_impl();
  v7 = 0;
  if (v3 && v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [v3 BSSList];
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          [v5 timeIntervalSinceReferenceDate];
          v15 = v14;
          v16 = [v13 AWDLRealTimeModeTimestamp];
          [v16 timeIntervalSinceReferenceDate];
          v18 = v15 - v17;

          if (v18 < 604800.0)
          {
            v19 = [v13 location];
            v20 = v19;
            if (!v4 || !v19 || ([v4 horizontalAccuracy], v21 < 0.0) || (objc_msgSend(v4, "horizontalAccuracy"), v22 > 100.0) || (objc_msgSend(v20, "horizontalAccuracy"), v23 < 0.0) || (objc_msgSend(v20, "horizontalAccuracy"), v24 > 100.0) || (objc_msgSend(v20, "distanceFromLocation:", v4), v25 <= 300.0))
            {

              v7 = 1;
              goto LABEL_22;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_22:
  }

  return v7;
}

uint64_t sub_1E0C0883C(void *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = 0;
    if (a3)
    {
      v11 = [v6 bytes];
      v12 = [v8 bytes];
      if ([v6 length])
      {
        v30 = a4;
        v34 = 0;
        v35 = 0;
        v13 = 0;
        v14 = 0;
        v10 = 0;
        v32 = v6;
        v33 = v8;
        do
        {
          if ([v8 length])
          {
            v15 = 0;
            v36 = v13;
            do
            {
              v16 = v14 + v13;
              if (v14 + v13 >= [v6 length])
              {
                break;
              }

              if (*(v11 + v16) == *(v12 + v15))
              {
                v17 = v11;
                v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                v19 = [v10 objectForKeyedSubscript:v18];
                [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
                v21 = v20 = v10;
                v22 = [v19 containsObject:v21];

                if (v22)
                {
                  v14 = 0;
                  v6 = v32;
                  v8 = v33;
                  v10 = v20;
                  v11 = v17;
                }

                else
                {
                  v10 = v20;
                  if (!v20)
                  {
                    v10 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                  v24 = [v10 objectForKeyedSubscript:v23];

                  v11 = v17;
                  if (!v24)
                  {
                    v24 = [MEMORY[0x1E695DFA8] set];
                    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                    [v10 setObject:v24 forKeyedSubscript:v25];
                  }

                  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
                  [v24 addObject:v26];

                  if (v34 <= v14 + 1)
                  {
                    v27 = v14 + 1;
                  }

                  else
                  {
                    v27 = v34;
                  }

                  v28 = v35;
                  if (v14 + 1 == a3)
                  {
                    v28 = v35 + 1;
                  }

                  v34 = v27;
                  v35 = v28;

                  ++v14;
                  v6 = v32;
                  v8 = v33;
                }

                v13 = v36;
              }

              else
              {
                v14 = 0;
              }

              ++v15;
            }

            while (v15 < [v8 length]);
          }

          ++v13;
        }

        while (v13 < [v6 length]);
        if (v30)
        {
          v9 = v35;
          if (v35)
          {
            *v30 = v34;
          }
        }

        else
        {
          v9 = v35;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v9;
}

id CWFColocatedNetworksMatchingScanResult(void *a1, void *a2, void *a3)
{
  v221 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v160 = v6;
    v161 = v5;
    v159 = v7;
    if ([v5 isWiFi6E])
    {
      v8 = v5;
      v9 = v6;
      v10 = v7;
      v11 = [MEMORY[0x1E695DFA8] set];
      v165 = v9;
      if (v9)
      {
        v12 = [v8 SSID];
        v13 = [v12 length];

        if (v13)
        {
          v14 = v8;
          if (([v8 isIBSS] & 1) == 0 && (objc_msgSend(v8, "isEAP") & 1) == 0 && (objc_msgSend(v8, "isWAPI") & 1) == 0 && (objc_msgSend(v8, "isWEP") & 1) == 0 && (objc_msgSend(v8, "isWPA") & 1) == 0)
          {
            if ([v8 isOpen])
            {
              v178 = 1;
            }

            else
            {
              v178 = [v8 isOWE];
            }

            if ([v8 isPSK])
            {
              if ([v8 isWPA2])
              {
                v74 = 1;
LABEL_56:
                v210 = 0u;
                v211 = 0u;
                v208 = 0u;
                v209 = 0u;
                v75 = [v8 RNRBSSList];
                v76 = [v75 countByEnumeratingWithState:&v208 objects:v220 count:16];
                v185 = v8;
                v174 = v11;
                v175 = v10;
                v183 = v74;
                if (!v76)
                {

                  goto LABEL_130;
                }

                v77 = v76;
                v78 = 0;
                v166 = *v209;
                v162 = v75;
                while (1)
                {
                  v79 = 0;
                  v163 = v77;
                  do
                  {
                    if (*v209 != v166)
                    {
                      objc_enumerationMutation(v75);
                    }

                    if (v78)
                    {

LABEL_192:
                      v9 = 0;
                      v147 = v11;
                      goto LABEL_198;
                    }

                    v80 = *(*(&v208 + 1) + 8 * v79);
                    v180 = [v80 shortSSID];
                    if (!v180 && (![v80 isSameSSID] || (v180 = objc_msgSend(v14, "shortSSID")) == 0))
                    {
                      v78 = 0;
                      goto LABEL_122;
                    }

                    v206 = 0u;
                    v207 = 0u;
                    v204 = 0u;
                    v205 = 0u;
                    v176 = v165;
                    v190 = [v176 countByEnumeratingWithState:&v204 objects:&v216 count:16];
                    if (!v190)
                    {
                      v78 = 0;
                      goto LABEL_121;
                    }

                    v168 = v79;
                    obja = *v205;
LABEL_67:
                    v81 = 0;
                    while (1)
                    {
                      if (*v205 != obja)
                      {
                        objc_enumerationMutation(v176);
                      }

                      v82 = *(*(&v204 + 1) + 8 * v81);
                      v83 = [v82 SSID];
                      if (v83)
                      {
                        v84 = v83;
                        v85 = [v14 SSID];
                        if (v85)
                        {
                          v86 = v85;
                          v87 = [v82 SSID];
                          v88 = [v14 SSID];
                          v89 = [v87 isEqual:v88];

                          v14 = v185;
                          if (v89)
                          {
                            goto LABEL_116;
                          }
                        }

                        else
                        {
                        }
                      }

                      v90 = [v82 SSID];
                      v91 = [v90 length];

                      if (!v91)
                      {
                        goto LABEL_116;
                      }

                      v92 = [v82 channel];
                      v93 = [v92 is5GHz];

                      if (!v93 || ([v82 isIBSS] & 1) != 0 || (objc_msgSend(v82, "isEAP") & 1) != 0 || (objc_msgSend(v82, "isWAPI") & 1) != 0 || (objc_msgSend(v82, "isWEP") & 1) != 0 || (objc_msgSend(v82, "isWPA") & 1) != 0)
                      {
                        goto LABEL_116;
                      }

                      v94 = ([v82 isOpen] & 1) != 0 ? 1 : objc_msgSend(v82, "isOWE");
                      v95 = [v82 isPSK];
                      if (v95)
                      {
                        break;
                      }

LABEL_89:
                      if ((v94 | v95))
                      {
                        goto LABEL_90;
                      }

LABEL_116:
                      if (v190 == ++v81)
                      {
                        v190 = [v176 countByEnumeratingWithState:&v204 objects:&v216 count:16];
                        if (!v190)
                        {
                          v78 = 0;
                          goto LABEL_119;
                        }

                        goto LABEL_67;
                      }
                    }

                    if (([v82 isWPA2] & 1) == 0)
                    {
                      v95 = [v82 isWPA3];
                      goto LABEL_89;
                    }

                    v95 = 1;
LABEL_90:
                    if (v178 != v94 || ((v183 ^ v95) & 1) != 0)
                    {
                      goto LABEL_116;
                    }

                    if ([v82 shortSSID] == v180)
                    {
                      v96 = [v82 BSSID];
                      if (v96)
                      {
                        v97 = [v80 BSSID];
                        if (v97)
                        {
                          v98 = [v82 BSSID];
                          v99 = [v80 BSSID];
                          if ([v98 isEqual:v99])
                          {
                            v172 = [v82 channel];
                            v100 = [v172 channel];
                            v101 = [v80 channel];
                            if (v100 == [v101 channel])
                            {
                              v170 = [v82 channel];
                              v102 = [v170 band];
                              v103 = [v80 channel];
                              v104 = v102 == [v103 band] ? objc_msgSend(v80, "isColocatedAP") : 0;
                            }

                            else
                            {
                              v104 = 0;
                            }
                          }

                          else
                          {
                            v104 = 0;
                          }

                          v11 = v174;
                          v10 = v175;
                        }

                        else
                        {
                          v104 = 0;
                        }
                      }

                      else
                      {
                        v104 = 0;
                      }

                      v14 = v185;
                    }

                    else
                    {
                      v104 = 0;
                    }

                    if ([v80 isColocatedAP])
                    {
                      v105 = [v82 RNRBSSList];
                      v106 = [v105 containsObject:v80];
                    }

                    else
                    {
                      v106 = 0;
                    }

                    if (((v104 | v106) & 1) == 0)
                    {
                      goto LABEL_116;
                    }

                    v107 = sub_1E0BECB78(v82, v10);

                    if (!v107)
                    {
                      [v11 addObject:v82];
                      goto LABEL_116;
                    }

                    v78 = 1;
LABEL_119:
                    v75 = v162;
                    v77 = v163;
                    v79 = v168;
LABEL_121:

                    v74 = v183;
LABEL_122:
                    v79 = v79 + 1;
                  }

                  while (v79 != v77);
                  v108 = [v75 countByEnumeratingWithState:&v208 objects:v220 count:16];
                  v77 = v108;
                  if (!v108)
                  {

                    if (v78)
                    {
                      goto LABEL_192;
                    }

LABEL_130:
                    v202 = 0u;
                    v203 = 0u;
                    v200 = 0u;
                    v201 = 0u;
                    v164 = v165;
                    v169 = [v164 countByEnumeratingWithState:&v200 objects:v215 count:16];
                    v109 = 0;
                    if (!v169)
                    {
                      goto LABEL_194;
                    }

                    v167 = *v201;
LABEL_132:
                    v110 = 0;
LABEL_133:
                    if (*v201 != v167)
                    {
                      v111 = v110;
                      objc_enumerationMutation(v164);
                      v110 = v111;
                    }

                    if (v109)
                    {
                      v109 = 1;
                      goto LABEL_194;
                    }

                    v171 = v110;
                    v112 = *(*(&v200 + 1) + 8 * v110);
                    v113 = [v112 SSID];
                    v191 = v112;
                    if (v113)
                    {
                      v114 = v113;
                      v115 = [v14 SSID];
                      if (v115)
                      {
                        v116 = v115;
                        v117 = [v112 SSID];
                        v118 = [v14 SSID];
                        v119 = [v117 isEqual:v118];

                        v112 = v191;
                        if (v119)
                        {
                          goto LABEL_139;
                        }
                      }

                      else
                      {
                      }
                    }

                    v120 = [v112 SSID];
                    v121 = [v120 length];

                    if (!v121 || ([v112 channel], v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v122, "is5GHz"), v122, !v123) || (objc_msgSend(v112, "isIBSS") & 1) != 0 || (objc_msgSend(v112, "isEAP") & 1) != 0 || (objc_msgSend(v112, "isWAPI") & 1) != 0 || (objc_msgSend(v112, "isWEP") & 1) != 0 || (objc_msgSend(v112, "isWPA") & 1) != 0)
                    {
LABEL_139:
                      v109 = 0;
                      goto LABEL_186;
                    }

                    if ([v112 isOpen])
                    {
                      v124 = 1;
                    }

                    else
                    {
                      v124 = [v112 isOWE];
                    }

                    v125 = [v112 isPSK];
                    if (v125)
                    {
                      if ([v112 isWPA2])
                      {
                        v125 = 1;
                        goto LABEL_156;
                      }

                      v125 = [v112 isWPA3];
                    }

                    if (((v124 | v125) & 1) == 0)
                    {
                      goto LABEL_139;
                    }

LABEL_156:
                    v109 = 0;
                    if (v178 != v124 || ((v74 ^ v125) & 1) != 0)
                    {
                      goto LABEL_186;
                    }

                    v198 = 0u;
                    v199 = 0u;
                    v196 = 0u;
                    v197 = 0u;
                    v126 = [v112 RNRBSSList];
                    v127 = [v126 countByEnumeratingWithState:&v196 objects:v213 count:16];
                    if (!v127)
                    {
                      v109 = 0;
                      goto LABEL_185;
                    }

                    v128 = v127;
                    v129 = *v197;
                    objb = v126;
                    v177 = *v197;
                    while (2)
                    {
                      v130 = 0;
LABEL_161:
                      if (*v197 != v129)
                      {
                        objc_enumerationMutation(v126);
                      }

                      v131 = *(*(&v196 + 1) + 8 * v130);
                      v132 = [v131 shortSSID];
                      if ((v132 || [v131 isSameSSID] && (v132 = objc_msgSend(v112, "shortSSID")) != 0) && objc_msgSend(v14, "shortSSID") == v132)
                      {
                        v133 = [v14 BSSID];
                        if (v133)
                        {
                          v134 = v133;
                          v135 = [v131 BSSID];
                          if (!v135)
                          {

                            goto LABEL_180;
                          }

                          v136 = v135;
                          v137 = [v14 BSSID];
                          v138 = [v131 BSSID];
                          if (![v137 isEqual:v138])
                          {

                            v126 = objb;
                            v112 = v191;
                            goto LABEL_180;
                          }

                          v181 = v137;
                          v139 = [v14 channel];
                          v140 = [v139 channel];
                          v141 = [v131 channel];
                          if (v140 == [v141 channel])
                          {
                            v142 = [v14 channel];
                            v173 = [v142 band];
                            v143 = [v131 channel];
                            if (v173 == [v143 band])
                            {
                              v144 = [v131 isColocatedAP];

                              v14 = v185;
                              v126 = objb;
                              v112 = v191;
                              v129 = v177;
                              if (v144)
                              {
                                v145 = sub_1E0BECB78(v191, v175);

                                if (v145)
                                {
                                  v109 = 1;
                                  goto LABEL_183;
                                }

                                [v174 addObject:v191];
                              }

                              goto LABEL_180;
                            }

                            v14 = v185;
                          }

                          else
                          {
                          }

                          v126 = objb;
                          v112 = v191;
                          v129 = v177;
                        }
                      }

LABEL_180:
                      if (v128 == ++v130)
                      {
                        v128 = [v126 countByEnumeratingWithState:&v196 objects:v213 count:16];
                        if (v128)
                        {
                          continue;
                        }

                        v109 = 0;
LABEL_183:
                        v10 = v175;
                        v74 = v183;
LABEL_185:

LABEL_186:
                        v110 = v171 + 1;
                        if (v171 + 1 == v169)
                        {
                          v146 = [v164 countByEnumeratingWithState:&v200 objects:v215 count:16];
                          v169 = v146;
                          if (!v146)
                          {
LABEL_194:

                            v147 = v174;
                            if ([v174 count])
                            {
                              v148 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:0 comparator:&unk_1F5B8ABE0];
                              v149 = MEMORY[0x1E696AEB0];
                              v194[0] = MEMORY[0x1E69E9820];
                              v194[1] = 3221225472;
                              v194[2] = sub_1E0C0FCA4;
                              v194[3] = &unk_1E86E5660;
                              v150 = v14;
                              v195 = v150;
                              v151 = [v149 sortDescriptorWithKey:0 ascending:0 comparator:v194];
                              v152 = MEMORY[0x1E696AEB0];
                              v192[0] = MEMORY[0x1E69E9820];
                              v192[1] = 3221225472;
                              v192[2] = sub_1E0C0FECC;
                              v192[3] = &unk_1E86E5660;
                              v193 = v150;
                              v153 = [v152 sortDescriptorWithKey:0 ascending:0 comparator:v192];
                              v154 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B89350];
                              v155 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
                              v156 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
                              v212[0] = v148;
                              v212[1] = v151;
                              v212[2] = v153;
                              v212[3] = v154;
                              v212[4] = v155;
                              v212[5] = v156;
                              v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:6];
                              v9 = [v174 sortedArrayUsingDescriptors:v157];

                              v10 = v175;
                              v14 = v185;

                              if ((v109 & 1) == 0)
                              {
LABEL_199:

                                v6 = v160;
                                v5 = v161;
                                v7 = v159;
                                goto LABEL_200;
                              }
                            }

                            else
                            {
                              v9 = 0;
                              if (!v109)
                              {
                                goto LABEL_199;
                              }
                            }

LABEL_198:
                            [v147 removeAllObjects];
                            goto LABEL_199;
                          }

                          goto LABEL_132;
                        }

                        goto LABEL_133;
                      }

                      goto LABEL_161;
                    }
                  }
                }
              }

              v74 = [v8 isWPA3];
            }

            else
            {
              v74 = 0;
            }

            if ((v178 | v74))
            {
              goto LABEL_56;
            }
          }

          v9 = 0;
LABEL_209:
          v147 = v11;
          goto LABEL_199;
        }

        v9 = 0;
      }

      v14 = v8;
      goto LABEL_209;
    }

    v189 = v5;
    v15 = v6;
    v182 = v7;
    v16 = [MEMORY[0x1E695DFA8] set];
    v17 = _os_feature_enabled_impl();
    v9 = 0;
    v179 = v15;
    v18 = 0;
    if (!v15 || !v17)
    {
      goto LABEL_53;
    }

    v19 = [v189 SSID];
    v20 = [v19 length];

    if (!v20 || ([v189 isIBSS] & 1) != 0 || (objc_msgSend(v189, "isEAP") & 1) != 0 || (objc_msgSend(v189, "isWAPI") & 1) != 0 || (objc_msgSend(v189, "isWEP") & 1) != 0 || (objc_msgSend(v189, "isWPA") & 1) != 0)
    {
      v9 = 0;
      v18 = 0;
      goto LABEL_53;
    }

    v184 = v16;
    LODWORD(v204) = 0;
    v21 = MEMORY[0x1E696AE88];
    v22 = [v189 BSSID];
    v23 = [v22 componentsSeparatedByString:@":"];
    v24 = [v23 lastObject];
    v25 = [v21 scannerWithString:v24];
    [v25 scanHexInt:&v204];

    v18 = [MEMORY[0x1E695DFA8] set];
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v189 BSSID];
    v28 = [v27 substringToIndex:14];
    v29 = [v26 stringWithFormat:@"%@:%02x", v28, (v204 + 1)];
    [v18 addObject:v29];

    v30 = MEMORY[0x1E696AEC0];
    v31 = [v189 BSSID];
    v32 = [v31 substringToIndex:14];
    v33 = [v30 stringWithFormat:@"%@:%02x", v32, (v204 + 2)];
    [v18 addObject:v33];

    v34 = MEMORY[0x1E696AEC0];
    v35 = [v189 BSSID];
    v36 = [v35 substringToIndex:14];
    v37 = [v34 stringWithFormat:@"%@:%02x", v36, (v204 - 1)];
    [v18 addObject:v37];

    v38 = MEMORY[0x1E696AEC0];
    v39 = [v189 BSSID];
    v40 = [v39 substringToIndex:14];
    v41 = [v38 stringWithFormat:@"%@:%02x", v40, (v204 - 2)];
    [v18 addObject:v41];

    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    obj = v179;
    v42 = [obj countByEnumeratingWithState:&v216 objects:v220 count:16];
    if (!v42)
    {
      goto LABEL_42;
    }

    v43 = v42;
    v44 = *v217;
LABEL_22:
    v45 = 0;
    while (1)
    {
      if (*v217 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(*(&v216 + 1) + 8 * v45);
      v47 = [v46 SSID];
      if (!v47)
      {
        goto LABEL_30;
      }

      v48 = v47;
      v49 = v18;
      v50 = [v189 SSID];
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = [v46 SSID];
      v53 = [v189 SSID];
      v54 = [v52 isEqual:v53];

      v18 = v49;
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_40:
      if (v43 == ++v45)
      {
        v43 = [obj countByEnumeratingWithState:&v216 objects:v220 count:16];
        if (!v43)
        {
LABEL_42:
          v62 = 0;
          goto LABEL_43;
        }

        goto LABEL_22;
      }
    }

LABEL_30:
    v55 = [v46 SSID];
    v56 = [v55 length];

    if (v56)
    {
      v57 = [v46 channel];
      v58 = [v57 is5GHz];

      if (v58)
      {
        if (([v46 isIBSS] & 1) == 0 && (objc_msgSend(v46, "isEAP") & 1) == 0 && (objc_msgSend(v46, "isWAPI") & 1) == 0 && (objc_msgSend(v46, "isWEP") & 1) == 0 && (objc_msgSend(v46, "isWPA") & 1) == 0)
        {
          [v46 isPSK];
          [v189 isPSK];
          v59 = [v46 BSSID];
          v60 = [v18 containsObject:v59];

          if (v60)
          {
            v61 = sub_1E0BECB78(v46, v182);

            if (v61)
            {
              v62 = 1;
LABEL_43:
              v16 = v184;

              if ([v184 count])
              {
                v63 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:0 comparator:&unk_1F5B8AC00];
                v64 = MEMORY[0x1E696AEB0];
                v213[0] = MEMORY[0x1E69E9820];
                v213[1] = 3221225472;
                v213[2] = sub_1E0C102FC;
                v213[3] = &unk_1E86E5660;
                v65 = v189;
                v214 = v65;
                v66 = [v64 sortDescriptorWithKey:0 ascending:0 comparator:v213];
                v67 = MEMORY[0x1E696AEB0];
                *&v208 = MEMORY[0x1E69E9820];
                *(&v208 + 1) = 3221225472;
                *&v209 = sub_1E0C10524;
                *(&v209 + 1) = &unk_1E86E5660;
                *&v210 = v65;
                v68 = [v67 sortDescriptorWithKey:0 ascending:0 comparator:&v208];
                [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AC20];
                v70 = v69 = v18;
                v71 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
                v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
                v215[0] = v63;
                v215[1] = v66;
                v215[2] = v68;
                v215[3] = v70;
                v215[4] = v71;
                v215[5] = v72;
                v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v215 count:6];
                v9 = [v184 sortedArrayUsingDescriptors:v73];

                v18 = v69;
                v16 = v184;

                v6 = v160;
                v5 = v161;
                v7 = v159;
                if ((v62 & 1) == 0)
                {
                  goto LABEL_53;
                }

LABEL_52:
                [v16 removeAllObjects];
              }

              else
              {
                v9 = 0;
                v6 = v160;
                v5 = v161;
                v7 = v159;
                if (v62)
                {
                  goto LABEL_52;
                }
              }

LABEL_53:

              goto LABEL_200;
            }

            [v184 addObject:v46];
          }
        }
      }
    }

    goto LABEL_40;
  }

  v9 = 0;
LABEL_200:

  return v9;
}

uint64_t CWFCompareLowDataMode(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 1;
  if (a1 == 1)
  {
    v2 = -1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t CWFKnownNetworkSupportsSeamlessSSIDTransition(void *a1, void *a2)
{
  v180[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v96 = CWFGetOSLog();
    if (v96)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v122 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1934;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) CoreWiFi/SSIDTransition disabled", &v164, 28);
    }

    goto LABEL_257;
  }

  if (!v3)
  {
    v98 = CWFGetOSLog();
    if (v98)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v123 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1936;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) associatedBSS was NULL", &v164, 28);
    }

    goto LABEL_257;
  }

  v5 = [v3 matchingKnownNetworkProfile];

  if (!v5)
  {
    v99 = CWFGetOSLog();
    if (v99)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v124 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1937;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) associatedBSS.matchingKnownNetworkProfile was NULL", &v164, 28);
    }

    goto LABEL_257;
  }

  if (!v4)
  {
    v100 = CWFGetOSLog();
    if (v100)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v125 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1938;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) candidateNetwork was NULL", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v3 isOpen])
  {
    v101 = CWFGetOSLog();
    if (v101)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v126 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1941;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is Open", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v3 isEAP])
  {
    v102 = CWFGetOSLog();
    if (v102)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v127 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1942;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is EAP", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v3 isWEP])
  {
    v103 = CWFGetOSLog();
    if (v103)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v128 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1943;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is WEP", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v3 isWAPI])
  {
    v104 = CWFGetOSLog();
    if (v104)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v129 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1944;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is WAPI", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v3 isWPA])
  {
    v105 = CWFGetOSLog();
    if (v105)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v130 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1945;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is WPA", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v3 isOWE])
  {
    v106 = CWFGetOSLog();
    if (v106)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v131 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1946;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is OWE", &v164, 28);
    }

    goto LABEL_257;
  }

  v6 = [v3 matchingKnownNetworkProfile];
  v7 = [v6 isCaptive];

  if (v7)
  {
    v107 = CWFGetOSLog();
    if (v107)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v132 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1947;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated known network is captive", &v164, 28);
    }

    goto LABEL_257;
  }

  if (([v3 isPSK] & 1) == 0)
  {
    v108 = CWFGetOSLog();
    if (v108)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v133 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1948;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is not PSK", &v164, 28);
    }

    goto LABEL_257;
  }

  if (([v3 isWPA2] & 1) == 0 && (objc_msgSend(v3, "isWPA3") & 1) == 0)
  {
    v120 = CWFGetOSLog();
    if (v120)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v145 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1949;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS is not WPA2 or WPA3", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isOpen])
  {
    v109 = CWFGetOSLog();
    if (v109)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v134 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1951;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is Open", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isEAP])
  {
    v110 = CWFGetOSLog();
    if (v110)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v135 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1952;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is EAP", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isWEP])
  {
    v111 = CWFGetOSLog();
    if (v111)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v136 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1953;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is WEP", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isWAPI])
  {
    v112 = CWFGetOSLog();
    if (v112)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v137 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1954;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is WAPI", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isWPA])
  {
    v113 = CWFGetOSLog();
    if (v113)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v138 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1955;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is WPA", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isOWE])
  {
    v114 = CWFGetOSLog();
    if (v114)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v139 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1956;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is OWE", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isCaptive])
  {
    v115 = CWFGetOSLog();
    if (v115)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v140 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1957;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated known network is captive", &v164, 28);
    }

    goto LABEL_257;
  }

  if (([v4 isPSK] & 1) == 0)
  {
    v116 = CWFGetOSLog();
    if (v116)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v141 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1958;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is not PSK", &v164, 28);
    }

    goto LABEL_257;
  }

  if (([v4 isWPA2] & 1) == 0 && (objc_msgSend(v4, "isWPA3") & 1) == 0)
  {
    v121 = CWFGetOSLog();
    if (v121)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v146 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1959;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate known network is not WPA2 or WPA3", &v164, 28);
    }

    goto LABEL_257;
  }

  v8 = [v3 matchingKnownNetworkProfile];
  v180[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:1];
  v10 = sub_1E0BED85C(v3, v9);

  if (!v10)
  {
    v117 = CWFGetOSLog();
    if (v117)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v142 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1962;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Associated known network does not match associated BSS", &v164, 28);
    }

    goto LABEL_257;
  }

  if ([v4 isAutoJoinDisabled])
  {
    v118 = CWFGetOSLog();
    if (v118)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v143 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446722;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1965;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Auto-join is disabled for candidate known network", &v164, 28);
    }

    goto LABEL_257;
  }

  v11 = [v3 matchingKnownNetworkProfile];
  v12 = [v11 isPrivacyProxyEnabled];
  v13 = [v4 isPrivacyProxyEnabled];

  if (v12 != v13)
  {
    v119 = CWFGetOSLog();
    if (v119)
    {
      v97 = CWFGetOSLog();
    }

    else
    {
      v97 = MEMORY[0x1E69E9C10];
      v144 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446978;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 1968;
      v170 = 1024;
      LODWORD(v171) = [v4 isPrivacyProxyEnabled];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Privacy proxy setting (%d) for candidate known network does not match associated known network", &v164, 34);
    }

LABEL_257:

    v88 = 0;
    goto LABEL_123;
  }

  v149 = v4;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v14 = [v3 matchingKnownNetworkProfile];
  v15 = [v14 BSSList];

  v16 = [v15 countByEnumeratingWithState:&v160 objects:v179 count:16];
  if (!v16)
  {
LABEL_42:

    v31 = CWFGetOSLog();
    if (v31)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v71 = MEMORY[0x1E69E9C10];
    }

    v4 = v149;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v164 = 136446978;
      v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v166 = 2082;
      v167 = "CWFUtilPrivate.m";
      v168 = 1024;
      v169 = 2004;
      v170 = 2112;
      v171 = v3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS has no matching BSS history entry (%@)", &v164, 38);
    }

    v68 = 0;
    goto LABEL_103;
  }

  v17 = v16;
  v18 = *v161;
  v154 = v3;
LABEL_30:
  v19 = 0;
  while (1)
  {
    if (*v161 != v18)
    {
      objc_enumerationMutation(v15);
    }

    v155 = *(*(&v160 + 1) + 8 * v19);
    v20 = [v155 BSSID];
    v21 = [v3 BSSID];
    v22 = v21;
    if (v20 == v21)
    {
      break;
    }

    v23 = [v155 BSSID];
    if (v23)
    {
      v24 = v23;
      v25 = [v3 BSSID];
      if (v25)
      {
        v26 = v25;
        v27 = [v155 BSSID];
        [v154 BSSID];
        v28 = v18;
        v30 = v29 = v15;
        v152 = [v27 isEqual:v30];

        v15 = v29;
        v18 = v28;

        v3 = v154;
        if (v152)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }
    }

LABEL_40:
    if (v17 == ++v19)
    {
      v17 = [v15 countByEnumeratingWithState:&v160 objects:v179 count:16];
      if (!v17)
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }
  }

LABEL_45:
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v4 = v149;
  obj = [v149 BSSList];
  v153 = [obj countByEnumeratingWithState:&v156 objects:v178 count:16];
  if (!v153)
  {
    v68 = 0;
    goto LABEL_102;
  }

  v148 = v15;
  v32 = *v157;
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v157 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v156 + 1) + 8 * v33);
      v35 = [v3 channel];
      if ([v35 is6GHz])
      {
        v36 = [v34 channel];
        v37 = [v36 is5GHz];

        if (!v37)
        {
          goto LABEL_87;
        }
      }

      else
      {
      }

      v38 = [v34 IPv4NetworkSignature];
      if (v38)
      {
        v39 = [v155 IPv4NetworkSignature];
        if (v39)
        {
          v40 = [v34 IPv4NetworkSignature];
          v41 = [v155 IPv4NetworkSignature];
          v42 = [v40 isEqual:v41];
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = [v34 IPv6NetworkSignature];
      if (v43)
      {
        v44 = [v155 IPv6NetworkSignature];
        if (v44)
        {
          v45 = [v34 IPv6NetworkSignature];
          v46 = [v155 IPv6NetworkSignature];
          v47 = [v45 isEqual:v46];
        }

        else
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
      }

      v48 = [v34 DHCPServerID];
      if (v48)
      {
        v49 = [v155 DHCPServerID];
        if (v49)
        {
          v50 = [v34 DHCPServerID];
          [v155 DHCPServerID];
          v52 = v51 = v42;
          v53 = [v50 isEqual:v52];

          v42 = v51;
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v53 = 0;
      }

      v54 = [v34 DHCPv6ServerID];
      if (v54)
      {
        v55 = [v155 DHCPv6ServerID];
        if (v55)
        {
          [v34 DHCPv6ServerID];
          v56 = v150 = v42;
          [v155 DHCPv6ServerID];
          v57 = v34;
          v58 = v47;
          v60 = v59 = v32;
          v61 = [v56 isEqual:v60];

          v32 = v59;
          v47 = v58;
          v34 = v57;

          v42 = v150;
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        v61 = 0;
      }

      if ((v42 & v53 & 1) != 0 || (v47 & v61) != 0)
      {
        v69 = CWFGetOSLog();
        if (v69)
        {
          v70 = CWFGetOSLog();
        }

        else
        {
          v70 = MEMORY[0x1E69E9C10];
          v72 = MEMORY[0x1E69E9C10];
        }

        v3 = v154;
        v4 = v149;

        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v73 = [v154 networkName];
          v74 = [v149 networkName];
          v164 = 136447746;
          v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
          v166 = 2082;
          v167 = "CWFUtilPrivate.m";
          v168 = 1024;
          v169 = 1989;
          v170 = 2112;
          v171 = v73;
          v172 = 2112;
          v173 = v155;
          v174 = 2112;
          v175 = v74;
          v176 = 2112;
          v177 = v34;
          LODWORD(v147) = 68;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 2, "[corewifi] %{public}s (%{public}s:%u) Matched IP config match (%@/%@ --> %@/%@)", &v164, v147);
        }

        v68 = 1;
        goto LABEL_101;
      }

      v62 = v42 | v47 | v53 | v61;
      v3 = v154;
      if (v62)
      {
        v63 = CWFGetOSLog();
        if (v63)
        {
          v64 = CWFGetOSLog();
        }

        else
        {
          v64 = MEMORY[0x1E69E9C10];
          v65 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v66 = [v154 networkName];
          v67 = [v149 networkName];
          v164 = 136447746;
          v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
          v166 = 2082;
          v167 = "CWFUtilPrivate.m";
          v168 = 1024;
          v169 = 1995;
          v170 = 2112;
          v171 = v66;
          v172 = 2112;
          v173 = v155;
          v174 = 2112;
          v175 = v67;
          v176 = 2112;
          v177 = v34;
          LODWORD(v147) = 68;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v64, 2, "[corewifi] %{public}s (%{public}s:%u) Partial IP config match (%@/%@ --> %@/%@)", &v164, v147);
        }
      }

LABEL_87:
      if (v153 != ++v33)
      {
        continue;
      }

      break;
    }

    v153 = [obj countByEnumeratingWithState:&v156 objects:v178 count:16];
    if (v153)
    {
      continue;
    }

    break;
  }

  v68 = 0;
  v4 = v149;
LABEL_101:
  v15 = v148;
LABEL_102:

LABEL_103:
  v75 = [v4 SSID];
  if (v75)
  {
    v76 = [v3 matchingKnownNetworkProfile];
    v77 = [v76 seamlessSSIDList];
    v78 = [v4 SSID];
    v79 = [v77 containsObject:v78];
  }

  else
  {
    v79 = 0;
  }

  v80 = CWFGetOSLog();
  if (v80)
  {
    v81 = CWFGetOSLog();
  }

  else
  {
    v81 = MEMORY[0x1E69E9C10];
    v82 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    if (v68)
    {
      v83 = "";
    }

    else
    {
      v83 = " NOT";
    }

    v164 = 136446978;
    v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v166 = 2082;
    v167 = "CWFUtilPrivate.m";
    v168 = 1024;
    v169 = 2014;
    v170 = 2080;
    v171 = v83;
    LODWORD(v147) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v81, 2, "[corewifi] %{public}s (%{public}s:%u) IP config for associated BSS does%s match a previously joined BSS for candidate known network", &v164, v147);
  }

  v84 = CWFGetOSLog();
  if (v84)
  {
    v85 = CWFGetOSLog();
  }

  else
  {
    v85 = MEMORY[0x1E69E9C10];
    v86 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    if (v79)
    {
      v87 = "";
    }

    else
    {
      v87 = " NOT";
    }

    v164 = 136446978;
    v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v166 = 2082;
    v167 = "CWFUtilPrivate.m";
    v168 = 1024;
    v169 = 2016;
    v170 = 2080;
    v171 = v87;
    LODWORD(v147) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v85, 2, "[corewifi] %{public}s (%{public}s:%u) Seamless SSID list for associated known network does%s contain the candidate known network SSID", &v164, v147);
  }

  v88 = v68 | v79;
LABEL_123:
  v89 = CWFGetOSLog();
  if (v89)
  {
    v90 = CWFGetOSLog();
  }

  else
  {
    v90 = MEMORY[0x1E69E9C10];
    v91 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    if (v88)
    {
      v92 = "supported";
    }

    else
    {
      v92 = "NOT supported";
    }

    v93 = [v3 networkName];
    v94 = [v4 networkName];
    v164 = 136447490;
    v165 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v166 = 2082;
    v167 = "CWFUtilPrivate.m";
    v168 = 1024;
    v169 = 2024;
    v170 = 2080;
    v171 = v92;
    v172 = 2112;
    v173 = v93;
    v174 = 2112;
    v175 = v94;
    LODWORD(v147) = 58;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v90, 2, "[corewifi] %{public}s (%{public}s:%u) Seamless SSID transition %s for known network (%@ --> %@)", &v164, v147);
  }

  return v88 & 1;
}

uint64_t CWFScanResultSupportsSeamlessSSIDTransition(void *a1, void *a2)
{
  v152[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v103 = CWFGetOSLog();
    if (v103)
    {
      v104 = CWFGetOSLog();
    }

    else
    {
      v104 = MEMORY[0x1E69E9C10];
      v110 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_155;
    }

    v136 = 136446722;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2036;
    v111 = "[corewifi] %{public}s (%{public}s:%u) CoreWiFi/SSIDTransition disabled";
LABEL_153:
    v115 = v104;
    v116 = 2;
    goto LABEL_154;
  }

  if (!v3)
  {
    v105 = CWFGetOSLog();
    if (v105)
    {
      v104 = CWFGetOSLog();
    }

    else
    {
      v104 = MEMORY[0x1E69E9C10];
      v112 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_155;
    }

    v136 = 136446722;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2038;
    v111 = "[corewifi] %{public}s (%{public}s:%u) associatedBSS was NULL";
LABEL_146:
    v115 = v104;
    v116 = 0;
LABEL_154:
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v115, v116, v111, &v136, 28);
LABEL_155:

    goto LABEL_156;
  }

  v5 = [v3 matchingKnownNetworkProfile];

  if (!v5)
  {
    v106 = CWFGetOSLog();
    if (v106)
    {
      v104 = CWFGetOSLog();
    }

    else
    {
      v104 = MEMORY[0x1E69E9C10];
      v113 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_155;
    }

    v136 = 136446722;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2039;
    v111 = "[corewifi] %{public}s (%{public}s:%u) associatedBSS.matchingKnownNetworkProfile was NULL";
    goto LABEL_153;
  }

  if (!v4)
  {
    v107 = CWFGetOSLog();
    if (v107)
    {
      v104 = CWFGetOSLog();
    }

    else
    {
      v104 = MEMORY[0x1E69E9C10];
      v114 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_155;
    }

    v136 = 136446722;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2040;
    v111 = "[corewifi] %{public}s (%{public}s:%u) candidateBSS was NULL";
    goto LABEL_146;
  }

  v6 = [v4 matchingKnownNetworkProfile];

  if (!v6)
  {
    v108 = CWFGetOSLog();
    if (v108)
    {
      v104 = CWFGetOSLog();
    }

    else
    {
      v104 = MEMORY[0x1E69E9C10];
      v117 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_155;
    }

    v136 = 136446722;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2041;
    v111 = "[corewifi] %{public}s (%{public}s:%u) candidateBSS.matchingKnownNetworkProfile was NULL";
    goto LABEL_153;
  }

  v7 = [v4 matchingKnownNetworkProfile];
  v152[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:1];
  v9 = sub_1E0BED85C(v4, v8);

  if (!v9)
  {
    v109 = CWFGetOSLog();
    if (v109)
    {
      v104 = CWFGetOSLog();
    }

    else
    {
      v104 = MEMORY[0x1E69E9C10];
      v118 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_155;
    }

    v136 = 136446722;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2044;
    v111 = "[corewifi] %{public}s (%{public}s:%u) Candidate known network does not match candidate BSS";
    goto LABEL_153;
  }

  v10 = [v4 matchingKnownNetworkProfile];
  v11 = CWFKnownNetworkSupportsSeamlessSSIDTransition(v3, v10);

  if (!v11)
  {
LABEL_156:
    v95 = 0;
    goto LABEL_113;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v12 = [v3 matchingKnownNetworkProfile];
  v13 = [v12 BSSList];

  v14 = [v13 countByEnumeratingWithState:&v132 objects:v151 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v125 = *v133;
  v123 = v4;
  obj = v13;
LABEL_10:
  v16 = 0;
  v17 = v125;
  while (1)
  {
    if (*v133 != v17)
    {
      objc_enumerationMutation(obj);
    }

    v18 = *(*(&v132 + 1) + 8 * v16);
    v19 = [v18 BSSID];
    v20 = [v3 BSSID];
    v21 = v20;
    v127 = v18;
    if (v19 == v20)
    {
      break;
    }

    v22 = [v18 BSSID];
    if (v22)
    {
      v23 = v22;
      v24 = [v3 BSSID];
      if (v24)
      {
        v25 = v24;
        v26 = [v127 BSSID];
        [v3 BSSID];
        v28 = v27 = v3;
        v29 = [v26 isEqual:v28];

        v3 = v27;
        v17 = v125;

        v4 = v123;
        if (v29)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    if (v15 == ++v16)
    {
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v132 objects:v151 count:16];
      if (!v15)
      {
LABEL_22:

        v30 = CWFGetOSLog();
        if (v30)
        {
          v31 = CWFGetOSLog();
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
          v77 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v136 = 136446978;
          v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
          v138 = 2082;
          v139 = "CWFUtilPrivate.m";
          v140 = 1024;
          v141 = 2089;
          v142 = 2112;
          v143 = v3;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v31, 2, "[corewifi] %{public}s (%{public}s:%u) Associated BSS has no matching BSS history entry (%@)", &v136, 38);
        }

        v72 = 0;
        goto LABEL_95;
      }

      goto LABEL_10;
    }
  }

LABEL_25:
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v32 = [v4 matchingKnownNetworkProfile];
  v33 = [v32 BSSList];

  v126 = [v33 countByEnumeratingWithState:&v128 objects:v150 count:16];
  if (v126)
  {
    v120 = v3;
    v34 = 0;
    v124 = *v129;
    v122 = v33;
LABEL_27:
    v35 = 0;
    while (1)
    {
      if (*v129 != v124)
      {
        objc_enumerationMutation(v122);
      }

      v36 = *(*(&v128 + 1) + 8 * v35);
      v37 = [v36 BSSID];
      v38 = [v4 BSSID];
      v39 = v38;
      if (v37 == v38)
      {
      }

      else
      {
        v40 = [v36 BSSID];
        if (!v40)
        {
          goto LABEL_41;
        }

        v41 = v40;
        v42 = [v4 BSSID];
        if (!v42)
        {

LABEL_41:
LABEL_72:

          goto LABEL_73;
        }

        v43 = v42;
        v44 = [v36 BSSID];
        v45 = [v4 BSSID];
        v46 = [v44 isEqual:v45];

        v4 = v123;
        if (!v46)
        {
          goto LABEL_73;
        }
      }

      v47 = [v36 IPv4NetworkSignature];
      if (v47)
      {
        v48 = v127;
        v49 = [v127 IPv4NetworkSignature];
        if (v49)
        {
          v50 = [v36 IPv4NetworkSignature];
          v51 = [v127 IPv4NetworkSignature];
          v52 = [v50 isEqual:v51];
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
        v48 = v127;
      }

      v53 = [v36 IPv6NetworkSignature];
      if (v53)
      {
        v54 = [v48 IPv6NetworkSignature];
        if (v54)
        {
          v55 = [v36 IPv6NetworkSignature];
          v56 = [v48 IPv6NetworkSignature];
          v57 = [v55 isEqual:v56];
        }

        else
        {
          v57 = 0;
        }
      }

      else
      {
        v57 = 0;
      }

      v58 = [v36 DHCPServerID];
      if (v58)
      {
        v59 = [v48 DHCPServerID];
        if (v59)
        {
          v60 = [v36 DHCPServerID];
          v61 = [v48 DHCPServerID];
          v62 = [v60 isEqual:v61];
        }

        else
        {
          v62 = 0;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = [v36 DHCPv6ServerID];
      if (v63)
      {
        v64 = [v48 DHCPv6ServerID];
        if (v64)
        {
          v65 = [v36 DHCPv6ServerID];
          v66 = [v48 DHCPv6ServerID];
          v67 = [v65 isEqual:v66];

          v48 = v127;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      if ((v52 & v62 & 1) != 0 || (v57 & v67) != 0)
      {
        v73 = CWFGetOSLog();
        v4 = v123;
        if (v73)
        {
          v74 = CWFGetOSLog();
        }

        else
        {
          v74 = MEMORY[0x1E69E9C10];
          v78 = MEMORY[0x1E69E9C10];
        }

        v31 = obj;
        v76 = v122;

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v79 = [v120 networkName];
          v80 = [v123 networkName];
          v136 = 136447746;
          v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
          v138 = 2082;
          v139 = "CWFUtilPrivate.m";
          v140 = 1024;
          v141 = 2068;
          v142 = 2112;
          v143 = v79;
          v144 = 2112;
          v145 = v127;
          v146 = 2112;
          v147 = v80;
          v148 = 2112;
          v149 = v36;
          LODWORD(v119) = 68;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v74, 2, "[corewifi] %{public}s (%{public}s:%u) Matched IP config match (%@/%@ --> %@/%@)", &v136, v119);
        }

        v72 = 1;
        v3 = v120;
        goto LABEL_94;
      }

      if ((v52 | v57 | v62 | v67))
      {
        v68 = CWFGetOSLog();
        v4 = v123;
        if (v68)
        {
          v37 = CWFGetOSLog();
        }

        else
        {
          v37 = MEMORY[0x1E69E9C10];
          v69 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v70 = [v120 networkName];
          v71 = [v123 networkName];
          v136 = 136447746;
          v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
          v138 = 2082;
          v139 = "CWFUtilPrivate.m";
          v140 = 1024;
          v141 = 2074;
          v142 = 2112;
          v143 = v70;
          v144 = 2112;
          v145 = v48;
          v146 = 2112;
          v147 = v71;
          v148 = 2112;
          v149 = v36;
          LODWORD(v119) = 68;
          v34 = 1;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v37, 2, "[corewifi] %{public}s (%{public}s:%u) Partial IP config match (%@/%@ --> %@/%@)", &v136, v119);
        }

        else
        {
          v34 = 1;
        }

        goto LABEL_72;
      }

      v34 = 1;
      v4 = v123;
LABEL_73:
      if (v126 == ++v35)
      {
        v126 = [v122 countByEnumeratingWithState:&v128 objects:v150 count:16];
        if (v126)
        {
          goto LABEL_27;
        }

        v3 = v120;
        if (v34)
        {
          v72 = 0;
          v31 = obj;
          goto LABEL_95;
        }

        goto LABEL_80;
      }
    }
  }

LABEL_80:
  v75 = CWFGetOSLog();
  v31 = obj;
  if (v75)
  {
    v76 = CWFGetOSLog();
  }

  else
  {
    v76 = MEMORY[0x1E69E9C10];
    v81 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    v136 = 136446978;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2081;
    v142 = 2112;
    v143 = v4;
    LODWORD(v119) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v76, 2, "[corewifi] %{public}s (%{public}s:%u) Candidate BSS has no matching BSS history entry (%@)", &v136, v119);
  }

  v72 = 0;
LABEL_94:

LABEL_95:
  v82 = [v4 SSID];
  if (v82)
  {
    v83 = [v3 matchingKnownNetworkProfile];
    v84 = [v83 seamlessSSIDList];
    v85 = [v4 SSID];
    v86 = [v84 containsObject:v85];
  }

  else
  {
    v86 = 0;
  }

  v87 = CWFGetOSLog();
  if (v87)
  {
    v88 = CWFGetOSLog();
  }

  else
  {
    v88 = MEMORY[0x1E69E9C10];
    v89 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
  {
    v90 = " NOT";
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v136 = 136446978;
    if (v72)
    {
      v90 = "";
    }

    v140 = 1024;
    v141 = 2099;
    v142 = 2080;
    v143 = v90;
    LODWORD(v119) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v88, 2, "[corewifi] %{public}s (%{public}s:%u) IP config for associated BSS does%s match a previously joined BSS for candidate known network", &v136, v119);
  }

  v91 = CWFGetOSLog();
  if (v91)
  {
    v92 = CWFGetOSLog();
  }

  else
  {
    v92 = MEMORY[0x1E69E9C10];
    v93 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
  {
    v94 = " NOT";
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v136 = 136446978;
    if (v86)
    {
      v94 = "";
    }

    v140 = 1024;
    v141 = 2101;
    v142 = 2080;
    v143 = v94;
    LODWORD(v119) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v92, 2, "[corewifi] %{public}s (%{public}s:%u) Seamless SSID list for associated known network does%s contain the candidate known network SSID", &v136, v119);
  }

  v95 = v72 | v86;
LABEL_113:
  v96 = CWFGetOSLog();
  if (v96)
  {
    v97 = CWFGetOSLog();
  }

  else
  {
    v97 = MEMORY[0x1E69E9C10];
    v98 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
  {
    if (v95)
    {
      v99 = "supported";
    }

    else
    {
      v99 = "NOT supported";
    }

    v100 = [v3 networkName];
    v101 = [v4 networkName];
    v136 = 136447490;
    v137 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v138 = 2082;
    v139 = "CWFUtilPrivate.m";
    v140 = 1024;
    v141 = 2109;
    v142 = 2080;
    v143 = v99;
    v144 = 2112;
    v145 = v100;
    v146 = 2112;
    v147 = v101;
    LODWORD(v119) = 58;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v97, 2, "[corewifi] %{public}s (%{public}s:%u) Seamless SSID transition %s for BSS (%@ --> %@)", &v136, v119);
  }

  return v95 & 1;
}

id CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult(void *a1, void *a2, char a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v48 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v5)
  {
    if ([v6 count])
    {
      v7 = [v5 matchingKnownNetworkProfile];

      if (v7)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (!v9)
        {
          goto LABEL_34;
        }

        v10 = v9;
        v46 = v6;
        v47 = v5;
        v51 = *v53;
        v11 = v48;
        v49 = v8;
        v50 = a3;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v53 != v51)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v52 + 1) + 8 * v12);
            if (a3)
            {
              if (CWFKnownNetworkSupportsSeamlessSSIDTransition(v5, *(*(&v52 + 1) + 8 * v12)))
              {
                goto LABEL_26;
              }

              v14 = [v5 SSID];
              v15 = [v13 SSID];
              v16 = v15;
              if (v14 == v15)
              {

                goto LABEL_26;
              }

              v17 = [v5 SSID];
              if (!v17)
              {

LABEL_31:
                a3 = v50;
                goto LABEL_27;
              }

              v18 = v17;
              v19 = [v13 SSID];
              if (!v19)
              {

                v8 = v49;
                goto LABEL_31;
              }

              v20 = v19;
              v21 = [v5 SSID];
              v22 = [v13 SSID];
              v23 = [v21 isEqual:v22];

              v11 = v48;
              v5 = v47;

              v8 = v49;
              a3 = v50;
              if (v23)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v24 = [v5 SSID];
              v25 = [v13 SSID];
              v26 = v25;
              if (v24 == v25)
              {

                goto LABEL_27;
              }

              v27 = [v5 SSID];
              if (!v27)
              {
                goto LABEL_24;
              }

              v28 = v27;
              v29 = [v13 SSID];
              if (!v29)
              {

                v8 = v49;
LABEL_24:

                a3 = v50;
LABEL_25:
                if ((CWFKnownNetworkSupportsSeamlessSSIDTransition(v5, v13) & 1) == 0)
                {
                  goto LABEL_27;
                }

LABEL_26:
                [v11 addObject:v13];
                goto LABEL_27;
              }

              v30 = v29;
              v31 = [v5 SSID];
              v32 = [v13 SSID];
              v33 = [v31 isEqual:v32];

              v11 = v48;
              v5 = v47;

              v8 = v49;
              a3 = v50;
              if ((v33 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

LABEL_27:
            ++v12;
          }

          while (v10 != v12);
          v34 = [v8 countByEnumeratingWithState:&v52 objects:v56 count:16];
          v10 = v34;
          if (!v34)
          {
            v6 = v46;
            goto LABEL_34;
          }
        }
      }

      v41 = CWFGetOSLog();
      if (v41)
      {
        v42 = CWFGetOSLog();
      }

      else
      {
        v42 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
      }

      v8 = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v57 = 136446722;
        v58 = "CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult";
        v59 = 2082;
        v60 = "CWFUtilPrivate.m";
        v61 = 1024;
        v62 = 2121;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 2, "[corewifi] %{public}s (%{public}s:%u) associatedBSS.matchingKnownNetworkProfile was NULL", &v57, 28);
      }
    }

    else
    {
      v39 = CWFGetOSLog();
      if (v39)
      {
        v40 = CWFGetOSLog();
      }

      else
      {
        v40 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      v8 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v57 = 136446722;
        v58 = "CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult";
        v59 = 2082;
        v60 = "CWFUtilPrivate.m";
        v61 = 1024;
        v62 = 2120;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 2, "[corewifi] %{public}s (%{public}s:%u) knownNetworks.count was 0", &v57, 28);
      }
    }
  }

  else
  {
    v37 = CWFGetOSLog();
    if (v37)
    {
      v38 = CWFGetOSLog();
    }

    else
    {
      v38 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    v8 = v38;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v57 = 136446722;
      v58 = "CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult";
      v59 = 2082;
      v60 = "CWFUtilPrivate.m";
      v61 = 1024;
      v62 = 2119;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v38, 2, "[corewifi] %{public}s (%{public}s:%u) associatedBSS was NULL", &v57, 28);
    }
  }

LABEL_34:

  v35 = [v48 copy];

  return v35;
}

id CWFIPv4Subnets(void *a1, void *a2)
{
  v3 = a1;
  v22 = a2;
  v20 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    if (v22)
    {
      v4 = [v3 count];
      if (v4 == [v22 count])
      {
        if ([v3 count])
        {
          v5 = 0;
          v21 = v3;
          do
          {
            v6 = [v3 objectAtIndexedSubscript:v5];
            v7 = [v22 objectAtIndexedSubscript:v5];
            v30 = v6;
            v8 = [v6 componentsSeparatedByString:@"."];
            v29 = v7;
            v9 = [v7 componentsSeparatedByString:@"."];
            v26 = MEMORY[0x1E696AEC0];
            v28 = [v8 objectAtIndexedSubscript:0];
            LODWORD(v6) = [v28 intValue];
            v27 = [v9 objectAtIndexedSubscript:0];
            v24 = [v27 intValue] & v6;
            v25 = [v8 objectAtIndexedSubscript:1];
            v10 = [v25 intValue];
            v11 = [v9 objectAtIndexedSubscript:1];
            v23 = [v11 intValue] & v10;
            v12 = [v8 objectAtIndexedSubscript:2];
            LODWORD(v7) = [v12 intValue];
            v13 = [v9 objectAtIndexedSubscript:2];
            v14 = [v13 intValue] & v7;
            v15 = [v8 objectAtIndexedSubscript:3];
            LODWORD(v7) = [v15 intValue];
            v16 = [v9 objectAtIndexedSubscript:3];
            v17 = [v26 stringWithFormat:@"%d.%d.%d.%d", v24, v23, v14, objc_msgSend(v16, "intValue") & v7];

            if (v17)
            {
              [v20 addObject:v17];
            }

            ++v5;
            v3 = v21;
          }

          while (v5 < [v21 count]);
        }
      }
    }
  }

  if ([v20 count])
  {
    v18 = [v20 copy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id CWFIPv4AddressesFromDHCPOptionData(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [v1 bytes];
  v4 = [v1 length];
  if (v4)
  {
    v5 = v4;
    if ((v4 & 3) == 0)
    {
      for (i = 0; i < v5; i += 4)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d.%d", *(v3 + i), *(v3 + i + 1), *(v3 + i + 2), *(v3 + i + 3)];
        if (v7)
        {
          [v2 addObject:v7];
        }
      }
    }
  }

  if ([v2 count])
  {
    v8 = [v2 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL CWFIsIPv4AddressLoopback(void *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  HIDWORD(v3[0]) = 0;
  v3[1] = 0;
  return inet_pton(2, [a1 UTF8String], v3 + 4) == 1 && BYTE4(v3[0]) == 127;
}

BOOL CWFIsIPv4AddressLinkLocal(void *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  HIDWORD(v3[0]) = 0;
  v3[1] = 0;
  return inet_pton(2, [a1 UTF8String], v3 + 4) == 1 && WORD2(v3[0]) == 65193;
}

BOOL CWFIsIPv6AddressLinkLocal(void *a1)
{
  v4[0] = 0;
  v5 = 0;
  v4[1] = 0;
  v1 = inet_pton(30, [a1 UTF8String], v4);
  result = 0;
  if (v1 == 1)
  {
    return LOBYTE(v4[0]) == 254 && (BYTE1(v4[0]) & 0xC0) == 128;
  }

  return result;
}

__CFString *CWFStringFromDenyListAddReason(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86E6278[a1];
  }
}

__CFString *CWFStringFromDenyListRemoveReason(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86E62E0[a1 - 1];
  }
}

__CFString *CWFStringFromDenyListState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86E6318[a1 - 1];
  }
}

uint64_t CWFPrivateMACAddressAllowFallbackForAssociationError(void *a1)
{
  v1 = a1;
  if (!_os_feature_enabled_impl())
  {
    v3 = 1;
    goto LABEL_11;
  }

  v2 = [v1 code];
  v3 = 1;
  if (v2 <= -103)
  {
    if ((v2 + 3941) > 0x28 || ((1 << (v2 + 101)) & 0x16020033C01) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if (v2 <= 0x2D && ((1 << v2) & 0x200000400063) != 0 || (v2 + 102) < 3 || v2 == 82)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v3;
}

BOOL CWFPrivateMACShouldShowPrivateMACAddressDisabledWarning(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 != 1)
  {
    goto LABEL_10;
  }

  if ([v5 privateMACAddressModeUserSetting] || objc_msgSend(v6, "privateMACAddressModeConfigurationProfileSetting") | a2)
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (![v6 privateMACAddressDisabledByEvaluation])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = 120.0;
    }

    else
    {
      v8 = 14400.0;
    }
  }

  else
  {
    v8 = 14400.0;
  }

  v10 = [v6 lastJoinedAt];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = [v6 privateMACAddressEvaluatedAt];
  [v13 timeIntervalSinceReferenceDate];
  v7 = v12 - v14 > v8;

LABEL_11:
  return v7;
}

BOOL CWFPrivateMACShouldEnablePrivateMACAddressForEvaluation(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = 240.0;
    }

    else
    {
      v2 = 86400.0;
    }
  }

  else
  {
    v2 = 86400.0;
  }

  if ([v1 privateMACAddressDisabledByEvaluation])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = [v1 privateMACAddressEvaluatedAt];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v4 - v6 > v2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unsigned __int8 *CWFNetworkStackMACAddressWithInterfaceName(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  size = 0;
  *v9 = xmmword_1E0D81890;
  v10 = 3;
  v11 = if_nametoindex([a1 UTF8String]);
  sysctl(v9, 6u, 0, &size, 0, 0);
  if (size)
  {
    v1 = malloc_type_malloc(size, 0xF7AD663uLL);
    if (!v1)
    {
      goto LABEL_8;
    }

    if (sysctl(v9, 6u, v1, &size, 0, 0) < 0)
    {
      free(v1);
    }

    else
    {
      v2 = &v1[v1[117]];
      v3 = *(v2 + 30);
      *&v7.octet[4] = *(v2 + 62);
      *v7.octet = v3;
      v4 = ether_ntoa(&v7);
      free(v1);
      if (v4)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
        v1 = CWFCorrectEthernetAddressString(v5);

        goto LABEL_8;
      }
    }
  }

  v1 = 0;
LABEL_8:

  return v1;
}

id CWFGetPHOSLog()
{
  if (qword_1ED7E38E8 != -1)
  {
    dispatch_once(&qword_1ED7E38E8, &unk_1F5B89950);
  }

  v1 = qword_1ED7E38E0;

  return v1;
}

uint64_t sub_1E0C0DE9C()
{
  qword_1ED7E38E0 = os_log_create("com.apple.WiFiManager", "PersonalHotspot");

  return MEMORY[0x1EEE66BB8]();
}

id CWFGetOTAOSLog()
{
  if (qword_1ED7E38F8 != -1)
  {
    dispatch_once(&qword_1ED7E38F8, &unk_1F5B8ABA0);
  }

  v1 = qword_1ED7E38F0;

  return v1;
}

uint64_t sub_1E0C0DF34()
{
  qword_1ED7E38F0 = os_log_create("com.apple.WiFiManager", "OTA");

  return MEMORY[0x1EEE66BB8]();
}

id CWFGetLinkQualityOSLog()
{
  if (qword_1ED7E3908 != -1)
  {
    dispatch_once(&qword_1ED7E3908, &unk_1F5B89570);
  }

  v1 = qword_1ED7E3900;

  return v1;
}

uint64_t sub_1E0C0DFCC()
{
  qword_1ED7E3900 = os_log_create("com.apple.WiFiManager", "WiFiLinkQuality");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CWFNetworkHas2GHzBSSPresence(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  v34 = v5;
  if (v5 && v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      obj = v10;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = v8[2](v8, *(*(&v35 + 1) + 8 * i));
          v16 = [[CWFScanResult alloc] initWithScanRecord:v15 includeProperties:0];
          v17 = [(CWFScanResult *)v16 networkName];
          v18 = [v34 networkName];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v20 = [(CWFScanResult *)v16 channel];
            v21 = [v20 is2GHz];

            if (v21)
            {
              goto LABEL_18;
            }
          }

          else if ([(CWFScanResult *)v16 isPasspoint])
          {
            v22 = [(CWFScanResult *)v16 domainNameList];
            v23 = [v34 domainName];
            v24 = [v22 containsObject:v23];

            if (v24)
            {
              v25 = [(CWFScanResult *)v16 channel];
              v26 = [v25 is2GHz];

              if (v26)
              {
LABEL_18:

                v9 = 1;
                v6 = v32;
                v28 = obj;
                goto LABEL_23;
              }
            }
          }
        }

        v10 = obj;
        v12 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v27 = CWFGetOSLog();
    if (v27)
    {
      v28 = CWFGetOSLog();
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    v6 = v32;

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = [v34 networkName];
      v39 = 136446978;
      v40 = "CWFNetworkHas2GHzBSSPresence";
      v41 = 2082;
      v42 = "CWFUtilPrivate.m";
      v43 = 1024;
      v44 = 2627;
      v45 = 2112;
      v46 = v30;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 16, "[corewifi] %{public}s (%{public}s:%u) No 2GHz present for network [%@]", &v39, 38);
    }

    v9 = 0;
LABEL_23:
  }

  return v9;
}

unint64_t CWFRecentlyJoinedNetworkHasNo2GHzPresence(void *a1, unint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF00] now];
  if (a2)
  {
    if ([v3 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        v9 = a2;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            if (([v11 isPersonalHotspot] & 1) == 0)
            {
              v12 = [v11 lastJoinedAt];
              if (v12)
              {
                [v4 timeIntervalSinceReferenceDate];
                v14 = v13;
                [v12 timeIntervalSinceReferenceDate];
                if (v14 - v15 < v9 && ([v11 is2GHzBssPresent] & 1) == 0)
                {
                  v16 = CWFGetOSLog();
                  if (v16)
                  {
                    v17 = CWFGetOSLog();
                  }

                  else
                  {
                    v17 = MEMORY[0x1E69E9C10];
                    v18 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    v19 = [v11 networkName];
                    v25 = 136446978;
                    v26 = "CWFRecentlyJoinedNetworkHasNo2GHzPresence";
                    v27 = 2082;
                    v28 = "CWFUtilPrivate.m";
                    v29 = 1024;
                    v30 = 2654;
                    v31 = 2112;
                    v32 = v19;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 16, "[corewifi] %{public}s (%{public}s:%u) Network with no 2GHz presence found: [%@]", &v25, 38, v21);
                  }

                  a2 = 1;
                  goto LABEL_22;
                }
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      a2 = 0;
LABEL_22:
    }

    else
    {
      a2 = 0;
    }
  }

  return a2;
}

uint64_t CWFShouldPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v5 = 0;
    v34 = 0;
    goto LABEL_37;
  }

  v2 = 86400;
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"PHBBHNotificationPresentationTimestamps"];

  v47 = v4;
  v5 = [v4 objectForKeyedSubscript:v1];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:@"PHBBHNotificationResponseTimestamps"];

  v8 = [v7 objectForKeyedSubscript:v1];
  v9 = [MEMORY[0x1E695DF00] date];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v10 = _os_feature_enabled_impl();
    if (v10)
    {
      v2 = 10;
      v11 = 10;
    }

    else
    {
      v11 = 180;
    }

    v12 = v10 != 0;
  }

  else
  {
    v12 = 0;
    v11 = 180;
  }

  [v9 timeIntervalSinceReferenceDate];
  v14 = v13;
  [v5 timeIntervalSinceReferenceDate];
  v16 = v14 - v15;
  v17 = v11;
  if (v14 - v15 > v11)
  {
    [v9 timeIntervalSinceReferenceDate];
    v20 = v19;
    [v8 timeIntervalSinceReferenceDate];
    LODWORD(v18) = v20 - v21 > v2;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v46 = v2;
  v22 = CWFGetOSLog();
  if (v22)
  {
    v23 = CWFGetOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v18 == 0;
    v45 = v18;
    v18 = v11;
    v26 = v12;
    v27 = v9;
    v28 = v8;
    v29 = v7;
    v30 = v5;
    if (v25)
    {
      v31 = "NOT ";
    }

    else
    {
      v31 = "";
    }

    v32 = [v1 redactedForWiFi];
    v51 = 136446466;
    v52 = v31;
    v5 = v30;
    v7 = v29;
    v8 = v28;
    v9 = v27;
    v12 = v26;
    v11 = v18;
    LOBYTE(v18) = v45;
    v53 = 2114;
    v54 = v32;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 0, "[corewifi] [bbh] PH BBH notification is %{public}sallowed (network=%{public}@)", &v51, 22);
  }

  if (v18)
  {
    v33 = 1;
LABEL_24:
    v34 = v47;
    goto LABEL_25;
  }

  if (v12)
  {
    v33 = 0;
    goto LABEL_24;
  }

  v34 = v47;
  if (!objc_opt_class())
  {
LABEL_37:
    v33 = 0;
    goto LABEL_25;
  }

  v36 = v8;
  v49[0] = @"user_did_join";
  v49[1] = @"was_suppressed";
  v50[0] = MEMORY[0x1E695E110];
  v50[1] = MEMORY[0x1E695E118];
  v49[2] = @"suppression_interval";
  if (v16 > v17)
  {
    v37 = v46;
  }

  else
  {
    v37 = v11;
  }

  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
  v50[2] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];

  v40 = CWFGetOSLog();
  if (v40)
  {
    v41 = CWFGetOSLog();
  }

  else
  {
    v41 = MEMORY[0x1E69E9C10];
    v42 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 138543618;
    v52 = @"com.apple.wifi.bbh-ph-alert";
    v53 = 2114;
    v54 = v39;
    LODWORD(v44) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v41, 0, "[corewifi] [bbh] Sending '%{public}@' CoreAnalytics metric (%{public}@)", &v51, v44);
  }

  v48 = v39;
  v43 = v39;
  AnalyticsSendEventLazy();

  v33 = 0;
  v8 = v36;
LABEL_25:

  return v33;
}

void CWFDidPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    sub_1E0C0EBE0(v1, v2);

    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v1 redactedForWiFi];
      v7 = 138543362;
      v8 = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] [bbh] PH BBH notification was presented (network=%{public}@), ", &v7, 12);
    }
  }
}

void sub_1E0C0EBE0(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"PHBBHNotificationPresentationTimestamps"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:v3];
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v7 forKey:@"PHBBHNotificationPresentationTimestamps"];

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1E0BCC248(v4);
    v13 = [v3 redactedForWiFi];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] [bbh] Updated PH BBH notification presentation timestamp (%{public}@) for network (%{public}@)", &v14, 22);
  }
}

void CWFDidReceiveResponseToPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      sub_1E0C0EBE0(v3, 0);
      sub_1E0C0F100(v4, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E695DF00] date];
      sub_1E0C0F100(v4, v5);
    }

    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 redactedForWiFi];
      v10 = v9;
      v11 = "no";
      if (a2)
      {
        v11 = "yes";
      }

      v23 = 138543618;
      v24 = v9;
      v25 = 2082;
      v26 = v11;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] [bbh] PH BBH notification was dismissed (network=%{public}@, userDidJoin=%{public}s), ", &v23, 22);
    }

    if ((!os_variant_has_internal_content() || !_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0) && objc_opt_class())
    {
      v12 = MEMORY[0x1E695E118];
      if (!a2)
      {
        v12 = MEMORY[0x1E695E110];
      }

      v21[0] = @"user_did_join";
      v21[1] = @"was_suppressed";
      v22[0] = v12;
      v22[1] = MEMORY[0x1E695E110];
      v21[2] = @"suppression_interval";
      v13 = [MEMORY[0x1E696AD98] numberWithInt:86400];
      v22[2] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543618;
        v24 = @"com.apple.wifi.bbh-ph-alert";
        v25 = 2114;
        v26 = v14;
        LODWORD(v19) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] [bbh] Sending '%{public}@' CoreAnalytics metric (%{public}@)", &v23, v19);
      }

      v20 = v14;
      v18 = v14;
      AnalyticsSendEventLazy();
    }
  }
}

void sub_1E0C0F100(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"PHBBHNotificationResponseTimestamps"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:v3];
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v7 forKey:@"PHBBHNotificationResponseTimestamps"];

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1E0BCC248(v4);
    v13 = [v3 redactedForWiFi];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] [bbh] Updated PH BBH notification response timestamp (%{public}@) for network (%{public}@)", &v14, 22);
  }
}

void CWFDidReceiveResponseToNearbyCaptiveAssistNotification(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 redactedForWiFi];
      v8 = v7;
      v9 = "no";
      if (a2)
      {
        v9 = "yes";
      }

      v20 = 138543618;
      v21 = v7;
      v22 = 2082;
      v23 = v9;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 1, "[corewifi] Nearby captive assist notification was dismissed (network=%{public}@, userDidJoin=%{public}s), ", &v20, 22);
    }

    if (objc_opt_class())
    {
      if (a2)
      {
        v10 = MEMORY[0x1E695E118];
      }

      else
      {
        v10 = MEMORY[0x1E695E110];
      }

      v18 = @"user_did_join";
      v19 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        v21 = @"com.apple.wifi.nearby-captive-assist-alert";
        v22 = 2114;
        v23 = v11;
        LODWORD(v16) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] [bbh] Sending '%{public}@' CoreAnalytics metric (%{public}@)", &v20, v16);
      }

      v17 = v11;
      v15 = v11;
      AnalyticsSendEventLazy();
    }
  }
}

void CWFResetPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    sub_1E0C0F100(v1, 0);
    sub_1E0C0EBE0(v2, 0);
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2 redactedForWiFi];
      v7 = 138543362;
      v8 = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] [bbh] Reset PH BBH notification timestamps (network=%{public}@), ", &v7, 12);
    }
  }
}

id CWFHashedChipsetName()
{
  if (qword_1ED7E3918 != -1)
  {
    dispatch_once(&qword_1ED7E3918, &unk_1F5B8ABC0);
  }

  v1 = qword_1ED7E3910;

  return v1;
}

void sub_1E0C0F6E8()
{
  v0 = [MEMORY[0x1E695DF88] dataWithLength:32];
  v1 = [@"6d5f310d90c76047738c74f73403948f" dataUsingEncoding:4];
  v2 = MGCopyAnswer();
  v3 = [v2 dataUsingEncoding:4];
  memset(&v6, 0, sizeof(v6));
  CC_SHA256_Init(&v6);
  CC_SHA256_Update(&v6, [v1 bytes], objc_msgSend(v1, "length"));
  CC_SHA256_Update(&v6, [v3 bytes], objc_msgSend(v3, "length"));
  CC_SHA256_Final([v0 mutableBytes], &v6);
  v4 = [v0 base64EncodedStringWithOptions:0];
  v5 = qword_1ED7E3910;
  qword_1ED7E3910 = v4;
}

__CFString *CWFWiFiNetworkSharingErrorDescription(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E86E6330[a1];
  }
}

id CWFErrorDescription(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:*MEMORY[0x1E696A768]])
  {
    v4 = SecCopyErrorMessageString(a2, 0);
    if (v4)
    {
      v5 = v4;
      v6 = [(__CFString *)v4 copy];
      CFRelease(v5);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"com.apple.corewifi.error.apple80211"])
  {
    v7 = Apple80211ErrToStr();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if ([v3 isEqualToString:@"WiFiNetworkSharingError"])
    {
      v8 = CWFWiFiNetworkSharingErrorDescription(a2);
      goto LABEL_9;
    }

    if ([v3 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v7 = strerror(a2);
      if (v7)
      {
LABEL_6:
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
LABEL_9:
        v6 = v8;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v6 = 0;
LABEL_13:

  return v6;
}

id CWFErrorWithDescription(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = a3;
    a3 = [v6 dictionary];
    [a3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:a2 userInfo:a3];

  return v8;
}

id CWFErrorWithUpdatedDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 localizedDescription];

  v3 = v1;
  if (!v2)
  {
    v4 = [v1 domain];
    v5 = CWFErrorDescription(v4, [v1 code]);
    v3 = v1;
    if (v5)
    {
      v6 = [v1 userInfo];
      v7 = [v6 mutableCopy];

      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF90] dictionary];
      }

      [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];
      v8 = MEMORY[0x1E696ABC0];
      v9 = [v1 domain];
      v3 = [v8 errorWithDomain:v9 code:objc_msgSend(v1 userInfo:{"code"), v7}];
    }
  }

  return v3;
}

void sub_1E0C0FB58()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = qword_1ED7E3920;
  qword_1ED7E3920 = v0;

  [qword_1ED7E3920 setFormatOptions:1907];
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [qword_1ED7E3920 setTimeZone:v2];
}

uint64_t sub_1E0C0FBD8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 is6GHz];
  if (v6 == [v5 is6GHz])
  {
    v8 = [v4 is5GHz];
    if (v8 == [v5 is5GHz])
    {
      v9 = [v4 isDFS];
      if (v9 == [v5 isDFS])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v7 = [v5 isDFS];
    }

    else
    {
      v7 = [v5 is5GHz];
    }
  }

  else
  {
    v7 = [v5 is6GHz];
  }

  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

LABEL_10:

  return v10;
}

uint64_t sub_1E0C0FCA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v7 = [*(a1 + 32) SSID];
  v8 = [v5 SSID];
  v33 = sub_1E0C0883C(v7, v8, 4, &v36);

  v9 = [*(a1 + 32) SSID];
  v10 = [v9 length];
  v11 = [v5 SSID];
  v12 = [v11 length];
  v13 = [*(a1 + 32) SSID];
  v14 = [v13 length];
  v34 = v5;
  v15 = [v5 SSID];
  v16 = [v15 length];

  if (v10 >= v12)
  {
    v17 = v14 - v16;
  }

  else
  {
    v17 = v16 - v14;
  }

  v35 = 0;
  v18 = [*(a1 + 32) SSID];
  v19 = [v6 SSID];
  v20 = sub_1E0C0883C(v18, v19, 4, &v35);

  v21 = [*(a1 + 32) SSID];
  v22 = [v21 length];
  v23 = [v6 SSID];
  v24 = [v23 length];
  v25 = [*(a1 + 32) SSID];
  v26 = [v25 length];
  v27 = [v6 SSID];
  v28 = [v27 length];
  if (v22 >= v24)
  {
    v29 = v26 - v28;
  }

  else
  {
    v29 = v28 - v26;
  }

  v30 = v36 > v35;
  if (v36 != v35)
  {
    goto LABEL_12;
  }

  v30 = v33 > v20;
  if (v33 != v20)
  {
    goto LABEL_12;
  }

  v31 = 0;
  if (v33 && v17 != v29)
  {
    v30 = v29 > v17;
LABEL_12:
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = -1;
    }
  }

  return v31;
}

uint64_t sub_1E0C0FECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = a3;
  v6 = [v5 BSSID];
  v7 = [v6 substringToIndex:2];
  if (v7)
  {
    v8 = [*(a1 + 32) BSSID];
    v9 = [v8 substringToIndex:2];
    if (v9)
    {
      [v5 BSSID];
      v10 = v29 = v5;
      v11 = [v10 substringToIndex:2];
      v12 = [*(a1 + 32) BSSID];
      v13 = [v12 substringToIndex:2];
      v14 = a1;
      v15 = [v11 isEqual:v13];

      v16 = v15;
      a1 = v14;

      v5 = v29;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [v31 BSSID];
  v18 = [v17 substringToIndex:2];
  if (v18)
  {
    v19 = [*(a1 + 32) BSSID];
    v20 = [v19 substringToIndex:2];
    if (v20)
    {
      [v31 BSSID];
      v21 = v30 = v16;
      v22 = [v21 substringToIndex:2];
      v23 = [*(a1 + 32) BSSID];
      v24 = [v23 substringToIndex:2];
      v25 = [v22 isEqual:v24];

      v16 = v30;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 1;
  if (!v16)
  {
    v26 = -1;
  }

  if (v25 == v16)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  return v27;
}

uint64_t sub_1E0C100F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  v5 = [a2 BSSID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v6 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    [v6 scanHexLongLong:&v17];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 BSSID];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];

    [v11 scanHexLongLong:&v16];
    v12 = v16;

    v6 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  if (v17 >= v12)
  {
    v13 = -1;
  }

  if (v17 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

uint64_t sub_1E0C10230(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 is6GHz];
  if (v6 == [v5 is6GHz])
  {
    v8 = [v4 is5GHz];
    if (v8 == [v5 is5GHz])
    {
      v9 = [v4 isDFS];
      if (v9 == [v5 isDFS])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v7 = [v5 isDFS];
    }

    else
    {
      v7 = [v5 is5GHz];
    }
  }

  else
  {
    v7 = [v5 is6GHz];
  }

  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

LABEL_10:

  return v10;
}

uint64_t sub_1E0C102FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v7 = [*(a1 + 32) SSID];
  v8 = [v5 SSID];
  v33 = sub_1E0C0883C(v7, v8, 4, &v36);

  v9 = [*(a1 + 32) SSID];
  v10 = [v9 length];
  v11 = [v5 SSID];
  v12 = [v11 length];
  v13 = [*(a1 + 32) SSID];
  v14 = [v13 length];
  v34 = v5;
  v15 = [v5 SSID];
  v16 = [v15 length];

  if (v10 >= v12)
  {
    v17 = v14 - v16;
  }

  else
  {
    v17 = v16 - v14;
  }

  v35 = 0;
  v18 = [*(a1 + 32) SSID];
  v19 = [v6 SSID];
  v20 = sub_1E0C0883C(v18, v19, 4, &v35);

  v21 = [*(a1 + 32) SSID];
  v22 = [v21 length];
  v23 = [v6 SSID];
  v24 = [v23 length];
  v25 = [*(a1 + 32) SSID];
  v26 = [v25 length];
  v27 = [v6 SSID];
  v28 = [v27 length];
  if (v22 >= v24)
  {
    v29 = v26 - v28;
  }

  else
  {
    v29 = v28 - v26;
  }

  v30 = v36 > v35;
  if (v36 != v35)
  {
    goto LABEL_12;
  }

  v30 = v33 > v20;
  if (v33 != v20)
  {
    goto LABEL_12;
  }

  v31 = 0;
  if (v33 && v17 != v29)
  {
    v30 = v29 > v17;
LABEL_12:
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = -1;
    }
  }

  return v31;
}

uint64_t sub_1E0C10524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = a3;
  v6 = [v5 BSSID];
  v7 = [v6 substringToIndex:2];
  if (v7)
  {
    v8 = [*(a1 + 32) BSSID];
    v9 = [v8 substringToIndex:2];
    if (v9)
    {
      [v5 BSSID];
      v10 = v29 = v5;
      v11 = [v10 substringToIndex:2];
      v12 = [*(a1 + 32) BSSID];
      v13 = [v12 substringToIndex:2];
      v14 = a1;
      v15 = [v11 isEqual:v13];

      v16 = v15;
      a1 = v14;

      v5 = v29;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [v31 BSSID];
  v18 = [v17 substringToIndex:2];
  if (v18)
  {
    v19 = [*(a1 + 32) BSSID];
    v20 = [v19 substringToIndex:2];
    if (v20)
    {
      [v31 BSSID];
      v21 = v30 = v16;
      v22 = [v21 substringToIndex:2];
      v23 = [*(a1 + 32) BSSID];
      v24 = [v23 substringToIndex:2];
      v25 = [v22 isEqual:v24];

      v16 = v30;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 1;
  if (!v16)
  {
    v26 = -1;
  }

  if (v25 == v16)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  return v27;
}

uint64_t sub_1E0C10750(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  v5 = [a2 BSSID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v6 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    [v6 scanHexLongLong:&v17];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 BSSID];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];

    [v11 scanHexLongLong:&v16];
    v12 = v16;

    v6 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  if (v17 >= v12)
  {
    v13 = -1;
  }

  if (v17 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

void sub_1E0C10D9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedRotationKeyHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedRotationKeyHandler];
    v5 = [*(a1 + 32) rotationKey];
    v6 = [*(a1 + 32) rotationKeyUpdatedAt];
    (v4)[2](v4, v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C11088(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedRotationKeyHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedRotationKeyHandler];
    v5 = [*(a1 + 32) rotationKey];
    v6 = [*(a1 + 32) rotationKeyUpdatedAt];
    (v4)[2](v4, v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1139C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedDeviceKeyHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedDeviceKeyHandler];
    v5 = [*(a1 + 32) deviceKey];
    (v4)[2](v4, v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C11680(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedSystemSettingHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedSystemSettingHandler];
    v4[2](v4, [*(a1 + 32) systemSetting]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C11830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C11858(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) allowRotationHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) allowRotationHandler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C11978;
    v8[3] = &unk_1E86E63A8;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v5 = v7;
    v9 = v7;
    (v4)[2](v4, v8);
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v6, 1u);
    if (!v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0C11978(void *result, char a2)
{
  v2 = 0;
  *(*(result[5] + 8) + 24) = a2;
  atomic_compare_exchange_strong((*(result[6] + 8) + 24), &v2, 1u);
  if (!v2)
  {
    return (*(result[4] + 16))();
  }

  return result;
}

void sub_1E0C12240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C12268(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) effectiveHardwareMACAddress];

  if (v3)
  {
    v4 = [*(a1 + 32) effectiveHardwareMACAddress];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C12388;
    v8[3] = &unk_1E86E63F8;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v5 = v7;
    v9 = v7;
    (v4)[2](v4, v8);
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v6, 1u);
    if (!v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C12388(void *a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v4, 1u);
  if (!v4)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C13698(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedNetworkIDHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedNetworkIDHandler];
    v4[2](v4, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C14B78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 64) & 1) == 0)
  {
    *(v3 + 64) = 1;
    IONotificationPortSetDispatchQueue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C14C48(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 64) == 1)
  {
    *(v3 + 64) = 0;
    IONotificationPortSetDispatchQueue(*(*(a1 + 32) + 24), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C14D54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 64);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1547C(void *a1, io_iterator_t a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v31 = v5;
  if (v5)
  {
    v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 134219778;
      v34 = v8 / 0x3B9ACA00;
      v35 = 2048;
      v36 = v8 % 0x3B9ACA00 / 0x3E8;
      v37 = 2082;
      v38 = "__IO80211Callback";
      v39 = 2082;
      v40 = "CWFIO80211.m";
      v41 = 1024;
      v42 = 50;
      v43 = 2048;
      v44 = v31;
      v45 = 1024;
      *v46 = [v31 isMonitoringEvents];
      *&v46[4] = 2112;
      *&v46[6] = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) __IO80211Callback, io80211[%p] monitoring[%u] type(%@)", &v33, 74);
    }

    if ([v31 isMonitoringEvents])
    {
      v27 = v7;
      v30 = [v31 eventHandler];
      if (v30)
      {
        v13 = IOIteratorNext(a2);
        if (v13)
        {
          v14 = v13;
          v15 = *MEMORY[0x1E695E480];
          v29 = a2;
          v28 = v6;
          do
          {
            CFProperty = IORegistryEntryCreateCFProperty(v14, @"IOClass", v15, 0);
            v17 = IORegistryEntryCreateCFProperty(v14, @"IOInterfaceName", v15, 0);
            v18 = IORegistryEntryCreateCFProperty(v14, @"BSD Name", v15, 0);
            v19 = IORegistryEntryCreateCFProperty(v14, @"IO80211VirtualInterfaceRole", v15, 0);
            v20 = IORegistryEntryCreateCFProperty(v14, @"IOInterfaceNamePrefix", v15, 0);
            cf = IORegistryEntryCreateCFProperty(v14, @"IOInterfaceUnit", v15, 0);
            v21 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
            v22 = CWFGetOSLog();
            if (v22)
            {
              v23 = CWFGetOSLog();
            }

            else
            {
              v23 = MEMORY[0x1E69E9C10];
              v24 = MEMORY[0x1E69E9C10];
            }

            v6 = v28;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v33 = 134221058;
              v34 = v21 / 0x3B9ACA00;
              v35 = 2048;
              v36 = v21 % 0x3B9ACA00 / 0x3E8;
              v37 = 2082;
              v38 = "__IO80211Callback";
              v39 = 2082;
              v40 = "CWFIO80211.m";
              v41 = 1024;
              v42 = 68;
              v43 = 2112;
              v44 = v17;
              v45 = 2112;
              *v46 = v28;
              *&v46[8] = 2112;
              *&v46[10] = v18;
              v47 = 1024;
              v48 = v14;
              v49 = 2112;
              v50 = CFProperty;
              v51 = 2112;
              v52 = v19;
              v53 = 2112;
              v54 = v20;
              v55 = 2112;
              v56 = cf;
              LODWORD(v26) = 124;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IO80211 event: intf=%@ type=%@, bsdName(%@) ioObject[%u] ioclass(%@) vifRole(%@) ifnamePrefix(%@) ifUnit(%@)", &v33, v26);
            }

            v25 = [v17 copy];
            (v30)[2](v30, v31, v25, v28);

            if (v18)
            {
              CFRelease(v18);
            }

            if (v17)
            {
              CFRelease(v17);
            }

            if (CFProperty)
            {
              CFRelease(CFProperty);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            IOObjectRelease(v14);
            v14 = IOIteratorNext(v29);
          }

          while (v14);
        }
      }

      v7 = v27;
    }
  }

  else
  {
    while (1)
    {
      v11 = IOIteratorNext(a2);
      if (!v11)
      {
        break;
      }

      IOObjectRelease(v11);
    }
  }

  objc_autoreleasePoolPop(v7);
}