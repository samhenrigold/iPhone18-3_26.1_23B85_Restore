void sub_1E0CA6C8C(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 56) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - *(*(*(a1 + 64) + 8) + 24);
  *(*(*(a1 + 80) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v48 = [*(*(a1 + 32) + 104) networkInterfaceNames];
  *(*(*(a1 + 88) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24) - *(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 104) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = [*(a1 + 32) apple80211WithInterfaceName:0];
  v3 = [v2 interfaceNames:0];

  *(*(*(a1 + 112) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 120) + 8) + 24) = *(*(*(a1 + 112) + 8) + 24) - *(*(*(a1 + 104) + 8) + 24);
  *(*(*(a1 + 128) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = [*(a1 + 32) apple80211WithInterfaceName:0];
  v5 = [v4 virtualInterfaceNames:0];

  *(*(*(a1 + 136) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 144) + 8) + 24) = *(*(*(a1 + 136) + 8) + 24) - *(*(*(a1 + 128) + 8) + 24);
  v6 = [MEMORY[0x1E695DF70] array];
  v47 = v3;
  [v6 addObjectsFromArray:v3];
  v46 = v5;
  [v6 addObjectsFromArray:v5];
  v7 = [*(a1 + 32) wifiInterfaceNames];
  v45 = [v7 mutableCopy];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v70;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v69 + 1) + 8 * i);
        *(*(*(a1 + 152) + 8) + 24) = 0;
        *(*(*(a1 + 160) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v13 = [*(a1 + 32) apple80211WithInterfaceName:v12];
        if (!v13)
        {
          *(*(*(a1 + 152) + 8) + 24) = 1;
          v14 = [[CWFApple80211 alloc] initWithInterfaceName:v12];
          v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
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

          v19 = v14 == 0;
          v20 = (16 * v19);
          if (os_log_type_enabled(v17, (16 * v19)))
          {
            v73 = 134218754;
            v74 = v15 / 0x3B9ACA00;
            v75 = 2048;
            v76 = v15 % 0x3B9ACA00 / 0x3E8;
            v77 = 2080;
            v21 = "Successfully created";
            if (!v14)
            {
              v21 = "Failed to create";
            }

            v78 = v21;
            v79 = 2112;
            v80 = v12;
            LODWORD(v44) = 42;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, v20, "[corewifi] @[%llu.%06llu] [iflist] %s CWFApple80211 (%@)", &v73, v44);
          }

          v22 = *(a1 + 32);
          v23 = *(v22 + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E0CA7478;
          block[3] = &unk_1E86E6060;
          block[4] = v22;
          block[5] = v12;
          v13 = v14;
          v68 = v13;
          dispatch_sync(v23, block);
        }

        *(*(*(a1 + 168) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        *(*(*(a1 + 176) + 8) + 24) = *(*(*(a1 + 168) + 8) + 24) - *(*(*(a1 + 160) + 8) + 24);
        if (*(*(*(a1 + 152) + 8) + 24) == 1)
        {
          v24 = *(a1 + 32);
          v25 = *(v24 + 16);
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = sub_1E0CA74C4;
          v66[3] = &unk_1E86E6420;
          v66[4] = v24;
          v66[5] = v12;
          dispatch_async(v25, v66);
        }

        v26 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
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

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(*(*(a1 + 176) + 8) + 24);
          v31 = *(*(*(a1 + 152) + 8) + 24);
          v73 = 134219266;
          v74 = v26 / 0x3B9ACA00;
          v75 = 2048;
          v76 = v26 % 0x3B9ACA00 / 0x3E8;
          v77 = 2114;
          v78 = v12;
          v79 = 2048;
          v80 = v30 / 0x3B9ACA00;
          v81 = 2048;
          v82 = v30 % 0x3B9ACA00 / 0x3E8;
          v83 = 1024;
          v84 = v31;
          LODWORD(v44) = 58;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 0, "[corewifi] @[%llu.%06llu] [iflist] %{public}@: apple80211 [%llu.%06llu] %d", &v73, v44);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
    }

    while (v9);
  }

  v32 = *(a1 + 32);
  v33 = *(v32 + 16);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_1E0CA7594;
  v51[3] = &unk_1E86E7FC0;
  v52 = v48;
  v53 = obj;
  v54 = v32;
  v55 = v45;
  v60 = *(a1 + 184);
  v34 = *(a1 + 72);
  v61 = *(a1 + 200);
  v62 = v34;
  v35 = *(a1 + 40);
  v36 = *(a1 + 96);
  v37 = *(a1 + 120);
  v56 = v35;
  v57 = v47;
  v38 = *(a1 + 144);
  v64 = v37;
  v65 = v38;
  v63 = v36;
  v58 = v46;
  v59 = *(a1 + 48);
  v39 = v46;
  v40 = v47;
  v41 = v45;
  v42 = obj;
  v43 = v48;
  dispatch_async(v33, v51);

  objc_autoreleasePoolPop(context);
}

void sub_1E0CA7478(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 64) setObject:a1[6] forKeyedSubscript:a1[5]];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA74C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __setupEventHandlersWithInterfaceName:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 136);
  v4 = [*(a1 + 32) __interfaceSpecificEventIDs:*(*(a1 + 32) + 136)];
  v5 = [v4 mutableCopy];

  [v5 minusSet:v3];
  objc_storeStrong((*(a1 + 32) + 136), v5);
  v6 = *(a1 + 32);
  if (v6[144] == 1)
  {
    [v6 __startMonitoringDefaultEventIDsForInterfaceName:*(a1 + 40)];
    [*(a1 + 32) __updateMonitoring:1 eventIDs:v5];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA7594(uint64_t a1)
{
  v118 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v76 objects:v117 count:16];
  v3 = &unk_1E0D81000;
  if (v2)
  {
    v4 = v2;
    v5 = *v77;
    do
    {
      v6 = 0;
      do
      {
        if (*v77 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v76 + 1) + 8 * v6);
        if ([*(a1 + 40) containsObject:v7])
        {
          [*(a1 + 56) removeObject:v7];
          [*(*(a1 + 48) + 56) removeObject:v7];
          if ([*(*(a1 + 48) + 72) containsObject:v7])
          {
            goto LABEL_14;
          }

          [*(*(a1 + 48) + 72) addObject:v7];
          v8 = *(a1 + 48);
          v9 = *(v8 + 24);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E0CA7F58;
          block[3] = &unk_1E86E6420;
          block[4] = v7;
          block[5] = v8;
          dispatch_async(v9, block);
          v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v11 = CWFGetOSLog();
          if (v11)
          {
            v12 = CWFGetOSLog();
          }

          else
          {
            v12 = MEMORY[0x1E69E9C10];
            v13 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v80 = 134218498;
            v81 = v10 / 0x3B9ACA00;
            v82 = 2048;
            v83 = v10 % 0x3B9ACA00 / 0x3E8;
            v84 = 2114;
            v85 = v7;
            LODWORD(v57) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] @[%llu.%06llu] [iflist] WiFi network interface added (%{public}@), posted notification", &v80, v57);
          }

          goto LABEL_13;
        }

        if (([*(*(a1 + 48) + 56) containsObject:v7] & 1) == 0)
        {
          [*(*(a1 + 48) + 56) addObject:v7];
          v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v15 = CWFGetOSLog();
          if (v15)
          {
            v12 = CWFGetOSLog();
          }

          else
          {
            v12 = MEMORY[0x1E69E9C10];
            v16 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v14 / 0x3B9ACA00;
            v63 = v14 % 0x3B9ACA00 / 0x3E8;
            v18 = [*(*(a1 + 48) + 56) allObjects];
            v19 = [v18 componentsJoinedByString:{@", "}];
            v80 = 134218754;
            v81 = v17;
            v3 = &unk_1E0D81000;
            v82 = 2048;
            v83 = v63;
            v84 = 2112;
            v85 = v7;
            v86 = 2112;
            v87 = v19;
            LODWORD(v57) = 42;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] @[%llu.%06llu] [iflist] %@ is a valid network interface, but was not a valid 80211 interface (non80211=%@)", &v80, v57);
          }

LABEL_13:
        }

LABEL_14:
        ++v6;
      }

      while (v4 != v6);
      v20 = [obj countByEnumeratingWithState:&v76 objects:v117 count:16];
      v4 = v20;
    }

    while (v20);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v21 = *(a1 + 56);
  v22 = [v21 countByEnumeratingWithState:&v71 objects:v116 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v72;
    v25 = v3[190];
    do
    {
      v26 = 0;
      do
      {
        if (*v72 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v71 + 1) + 8 * v26);
        if ([*(*(a1 + 48) + 72) containsObject:v27])
        {
          [*(*(a1 + 48) + 72) removeObject:v27];
          v28 = *(a1 + 48);
          v29 = *(v28 + 24);
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = v25;
          v70[2] = sub_1E0CA8014;
          v70[3] = &unk_1E86E6420;
          v70[4] = v27;
          v70[5] = v28;
          dispatch_async(v29, v70);
          v30 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v31 = CWFGetOSLog();
          if (v31)
          {
            v32 = CWFGetOSLog();
          }

          else
          {
            v32 = MEMORY[0x1E69E9C10];
            v33 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v80 = 134218498;
            v81 = v30 / 0x3B9ACA00;
            v82 = 2048;
            v83 = v30 % 0x3B9ACA00 / 0x3E8;
            v84 = 2114;
            v85 = v27;
            LODWORD(v57) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 0, "[corewifi] @[%llu.%06llu] [iflist] WiFi network interface removed (%{public}@), posted notification", &v80, v57);
          }
        }

        else
        {
          v34 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v35 = CWFGetOSLog();
          if (v35)
          {
            v32 = CWFGetOSLog();
          }

          else
          {
            v32 = MEMORY[0x1E69E9C10];
            v36 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v80 = 134218498;
            v81 = v34 / 0x3B9ACA00;
            v82 = 2048;
            v83 = v34 % 0x3B9ACA00 / 0x3E8;
            v84 = 2114;
            v85 = v27;
            LODWORD(v57) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 0, "[corewifi] @[%llu.%06llu] [iflist] WiFi interface not eligible for removal (%{public}@)", &v80, v57);
          }
        }

        ++v26;
      }

      while (v23 != v26);
      v37 = [v21 countByEnumeratingWithState:&v71 objects:v116 count:16];
      v23 = v37;
    }

    while (v37);
  }

  *(*(*(a1 + 96) + 8) + 24) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) - *(*(*(a1 + 104) + 8) + 24);
  v38 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v39 = CWFGetOSLog();
  if (v39)
  {
    v40 = CWFGetOSLog();
  }

  else
  {
    v40 = MEMORY[0x1E69E9C10];
    v41 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v67 = v38 / 0x3B9ACA00;
    obja = v38 % 0x3B9ACA00 / 0x3E8;
    v42 = *(*(*(a1 + 112) + 8) + 24);
    v64 = v42 / 0x3B9ACA00;
    v65 = v42 % 0x3B9ACA00 / 0x3E8;
    v43 = *(*(*(a1 + 120) + 8) + 24);
    v44 = v43 / 0x3B9ACA00;
    v62 = v43 % 0x3B9ACA00 / 0x3E8;
    v45 = *(*(*(a1 + 128) + 8) + 24);
    v46 = v45 / 0x3B9ACA00;
    v60 = v45 % 0x3B9ACA00 / 0x3E8;
    v61 = *(a1 + 32);
    v47 = *(*(*(a1 + 136) + 8) + 24);
    v48 = v47 / 0x3B9ACA00;
    v49 = *(a1 + 64);
    v58 = *(a1 + 72);
    v59 = v47 % 0x3B9ACA00 / 0x3E8;
    v50 = *(*(*(a1 + 144) + 8) + 24);
    v51 = v50 / 0x3B9ACA00;
    v52 = v50 % 0x3B9ACA00 / 0x3E8;
    v53 = *(a1 + 80);
    v54 = [*(*(a1 + 48) + 64) allKeys];
    v55 = *(*(a1 + 48) + 72);
    v80 = 134222338;
    v81 = v67;
    v82 = 2048;
    v83 = obja;
    v84 = 2048;
    v85 = v64;
    v86 = 2048;
    v87 = v65;
    v88 = 2048;
    v89 = v44;
    v90 = 2048;
    v91 = v62;
    v92 = 2114;
    v93 = v49;
    v94 = 2048;
    v95 = v46;
    v96 = 2048;
    v97 = v60;
    v98 = 2114;
    v99 = v61;
    v100 = 2048;
    v101 = v48;
    v102 = 2048;
    v103 = v59;
    v104 = 2114;
    v105 = v58;
    v106 = 2048;
    v107 = v51;
    v108 = 2048;
    v109 = v52;
    v110 = 2114;
    v111 = v53;
    v112 = 2114;
    v113 = v54;
    v114 = 2114;
    v115 = v55;
    LODWORD(v57) = 182;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 0, "[corewifi] @[%llu.%06llu] [iflist] Updating Apple80211 interfaces took [%llu.%06llu], waited [%llu.%06llu], reason: (%{public}@), scnet: [%llu.%06llu] (%{public}@), ifnames: [%llu.%06llu] (%{public}@), vifnames: [%llu.%06llu] (%{public}@), apple80211Map: (%{public}@), eligibleForRemoval: (%{public}@)", &v80, v57);
  }

  v56 = *(a1 + 88);
  if (v56)
  {
    (*(v56 + 16))();
  }

  objc_autoreleasePoolPop(context);
}

void sub_1E0CA7F58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v3 setType:10];
  [(CWFXPCEvent *)v3 setInterfaceName:*(a1 + 32)];
  v4 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v3 setTimestamp:v4];

  v5 = [*(a1 + 40) delegate];
  v6 = v5;
  if (v5)
  {
    [v5 XPCRequestProxy:*(a1 + 40) sendXPCEvent:v3 reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA8014(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v3 setType:11];
  [(CWFXPCEvent *)v3 setInterfaceName:*(a1 + 32)];
  v4 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v3 setTimestamp:v4];

  v5 = [*(a1 + 40) delegate];
  v6 = v5;
  if (v5)
  {
    [v5 XPCRequestProxy:*(a1 + 40) sendXPCEvent:v3 reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0CA8198(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v3, sel___updateSystemConfigurationInterfacesWithReason_reply_);
}

void sub_1E0CA882C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] [bbh] FAILED to update broken backhaul state for %{public}@, returned error (%{public}@)", &v14, 22);
    }
  }

  else
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1E0BD3BE8(*(a1 + 40));
      v11 = sub_1E0BD3BE8(*(a1 + 48));
      v12 = [*(a1 + 32) networkName];
      v13 = [v12 redactedForWiFi];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] [bbh] Updated broken backhaul state from %{public}@ --> %{public}@ for network '%{public}@'", &v14, 32);
    }
  }
}

void sub_1E0CA8A24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CA96E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x250]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak((v74 - 200));
  objc_destroyWeak((v74 - 160));
  objc_destroyWeak((v74 - 120));
  objc_destroyWeak((v74 - 112));
  _Unwind_Resume(a1);
}

void sub_1E0CA9894(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    if ([v7 isEqualToString:@"IOServiceMatched"])
    {
      v9 = [WeakRetained apple80211WithInterfaceName:v6];
      v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134219778;
        v18 = v10 / 0x3B9ACA00;
        v19 = 2048;
        v20 = v10 % 0x3B9ACA00 / 0x3E8;
        v21 = 2082;
        v22 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
        v23 = 2082;
        v24 = "CWFXPCRequestProxy.m";
        v25 = 1024;
        v26 = 3903;
        v27 = 2114;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        v31 = 2048;
        v32 = v9;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) [iflist] CWFIO80211: (%{public}@) (%{public}@), a11[%p]", &v17, 78);
      }

LABEL_12:
      goto LABEL_13;
    }

    if ([v7 isEqualToString:@"IOServiceTerminate"])
    {
      v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v14 = CWFGetOSLog();
      if (v14)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134219522;
        v18 = v13 / 0x3B9ACA00;
        v19 = 2048;
        v20 = v13 % 0x3B9ACA00 / 0x3E8;
        v21 = 2082;
        v22 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
        v23 = 2082;
        v24 = "CWFXPCRequestProxy.m";
        v25 = 1024;
        v26 = 3908;
        v27 = 2114;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) [iflist] CWFIO80211: (%{public}@) (%{public}@)", &v17, 68);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  [WeakRetained __updateWiFiInterfacesWithReason:@"io80211" reply:0];
}

void sub_1E0CA9BDC(uint64_t a1, void *a2, void *a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v69 objects:v87 count:16];
  if (v8)
  {
    v9 = v8;
    v60 = *v70;
    v10 = *MEMORY[0x1E6982338];
    v58 = *MEMORY[0x1E6982340];
    v56 = *MEMORY[0x1E6982328];
    v57 = *MEMORY[0x1E6982330];
    v55 = *MEMORY[0x1E6982348];
    v54 = *MEMORY[0x1E69822E8];
    do
    {
      v11 = 0;
      do
      {
        if (*v70 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v69 + 1) + 8 * v11);
        if ([v12 containsString:v10])
        {
          v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v14 = CWFGetOSLog();
          if (v14)
          {
            v15 = CWFGetOSLog();
          }

          else
          {
            v15 = MEMORY[0x1E69E9C10];
            v22 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 134219266;
            v76 = v13 / 0x3B9ACA00;
            v77 = 2048;
            v78 = v13 % 0x3B9ACA00 / 0x3E8;
            v79 = 2082;
            v80 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
            v81 = 2082;
            v82 = "CWFXPCRequestProxy.m";
            v83 = 1024;
            v84 = 3928;
            v85 = 2114;
            v86 = obj;
            LODWORD(v53) = 58;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) SCNetworkConfiguration: CWFSCNetworkConfiguration/kSCEntNetIPv4: (%{public}@)", &v75, v53);
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v23 = [WeakRetained interfaceNames];
          v24 = [v23 countByEnumeratingWithState:&v65 objects:v74 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v66;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v66 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [WeakRetained updateJoinStatusWithIPv4:*(*(&v65 + 1) + 8 * i)];
              }

              v25 = [v23 countByEnumeratingWithState:&v65 objects:v74 count:16];
            }

            while (v25);
          }

          v19 = [v5 IPv4Addresses];
          v20 = [v5 IPv4Router];
          v21 = 19;
          goto LABEL_39;
        }

        if ([v12 containsString:v58])
        {
          v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v17 = CWFGetOSLog();
          if (v17)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v18 = MEMORY[0x1E69E9C10];
            v31 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 134219266;
            v76 = v16 / 0x3B9ACA00;
            v77 = 2048;
            v78 = v16 % 0x3B9ACA00 / 0x3E8;
            v79 = 2082;
            v80 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
            v81 = 2082;
            v82 = "CWFXPCRequestProxy.m";
            v83 = 1024;
            v84 = 3942;
            v85 = 2114;
            v86 = obj;
            LODWORD(v53) = 58;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) SCNetworkConfiguration: CWFSCNetworkConfiguration/kSCEntNetIPv6: (%{public}@)", &v75, v53);
          }

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v32 = [WeakRetained interfaceNames];
          v33 = [v32 countByEnumeratingWithState:&v61 objects:v73 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v62;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v62 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                [WeakRetained updateJoinStatusWithIPv6:*(*(&v61 + 1) + 8 * j)];
              }

              v34 = [v32 countByEnumeratingWithState:&v61 objects:v73 count:16];
            }

            while (v34);
          }

          v19 = [v5 IPv6Addresses];
          v20 = [v5 IPv6Router];
          v21 = 20;
          goto LABEL_39;
        }

        if ([v12 containsString:v57])
        {
          v19 = [v5 DNSServerAddresses];
          v20 = 0;
          v21 = 21;
LABEL_39:
          v37 = objc_alloc_init(CWFXPCEvent);
          [(CWFXPCEvent *)v37 setType:v21];
          v38 = [MEMORY[0x1E695DF00] date];
          [(CWFXPCEvent *)v37 setTimestamp:v38];

          if (v19 | v20)
          {
            v39 = [MEMORY[0x1E695DF90] dictionary];
            v40 = v39;
            if (v19)
            {
              [v39 setObject:v19 forKey:@"Addresses"];
            }

            if (v20)
            {
              [v40 setObject:v20 forKey:@"Router"];
            }

            [(CWFXPCEvent *)v37 setInfo:v40];
          }

          v41 = [WeakRetained delegate];
          v42 = v41;
          if (v41)
          {
            [v41 XPCRequestProxy:WeakRetained sendXPCEvent:v37 reply:0];
          }

          goto LABEL_48;
        }

        if ([v12 containsString:v56])
        {
          v28 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v29 = CWFGetOSLog();
          if (v29)
          {
            v30 = CWFGetOSLog();
          }

          else
          {
            v30 = MEMORY[0x1E69E9C10];
            v49 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 134219266;
            v76 = v28 / 0x3B9ACA00;
            v77 = 2048;
            v78 = v28 % 0x3B9ACA00 / 0x3E8;
            v79 = 2082;
            v80 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
            v81 = 2082;
            v82 = "CWFXPCRequestProxy.m";
            v83 = 1024;
            v84 = 3960;
            v85 = 2114;
            v86 = obj;
            LODWORD(v53) = 58;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) SCNetworkConfiguration: CWFSCNetworkConfiguration/kSCEntNetDHCP: (%{public}@)", &v75, v53);
          }

          v20 = 0;
          v19 = 0;
          v21 = 22;
          goto LABEL_39;
        }

        if ([v12 containsString:v55])
        {
          v43 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v44 = CWFGetOSLog();
          if (v44)
          {
            v45 = CWFGetOSLog();
          }

          else
          {
            v45 = MEMORY[0x1E69E9C10];
            v50 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 134218498;
            v76 = v43 / 0x3B9ACA00;
            v77 = 2048;
            v78 = v43 % 0x3B9ACA00 / 0x3E8;
            v79 = 2114;
            v80 = obj;
            LODWORD(v53) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 0, "[corewifi] @[%llu.%06llu] [iflist] CWFSCNetworkConfiguration/kSCEntNetInterface: (%{public}@)", &v75, v53);
          }

          [WeakRetained __updateWiFiInterfacesWithReason:@"kSCEntNetInterface" reply:0];
        }

        else if ([v12 containsString:v54])
        {
          v46 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v47 = CWFGetOSLog();
          if (v47)
          {
            v48 = CWFGetOSLog();
          }

          else
          {
            v48 = MEMORY[0x1E69E9C10];
            v51 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 134218498;
            v76 = v46 / 0x3B9ACA00;
            v77 = 2048;
            v78 = v46 % 0x3B9ACA00 / 0x3E8;
            v79 = 2114;
            v80 = obj;
            LODWORD(v53) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v48, 0, "[corewifi] @[%llu.%06llu] [iflist] CWFSCNetworkConfiguration/kSCDynamicStoreDomainSetup: (%{public}@)", &v75, v53);
          }

          [WeakRetained __updateWiFiInterfacesWithReason:@"kSCDynamicStoreDomainSetup" reply:0];
          [WeakRetained __updateWiFiNetworkServices];
        }

LABEL_48:
        ++v11;
      }

      while (v11 != v9);
      v52 = [obj countByEnumeratingWithState:&v69 objects:v87 count:16];
      v9 = v52;
    }

    while (v52);
  }
}

void sub_1E0CAA5C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v1 setType:24];
  v2 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v1 setTimestamp:v2];

  v3 = [WeakRetained delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:WeakRetained sendXPCEvent:v1 reply:0];
  }
}

void sub_1E0CAA678(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __handleBrokenBackhaulState:a2 timestamp:v5];
}

void sub_1E0CAA6E4(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0;
  v2 = [WeakRetained __queryMobileAssetA11:&v7];
  v3 = v7;
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke_3";
    v10 = 2082;
    v11 = "CWFXPCRequestProxy.m";
    v12 = 1024;
    v13 = 4028;
    v14 = 2080;
    v15 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke_3";
    v16 = 2112;
    v17 = v2;
    v18 = 2112;
    v19 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] %{public}s (%{public}s:%u) [OTA] %s: Query Results:%@, with error:%@", &v8, 58);
  }

  [WeakRetained[40] processQueryResults:v2 withError:v3];
}

void sub_1E0CAA868(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained wifiNetworkSharingAppXPCConnection];

  if (v8)
  {
    v9 = [WeakRetained wifiNetworkSharingAppXPCConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0CAA96C;
    v10[3] = &unk_1E86E8290;
    v12 = v6;
    v10[4] = WeakRetained;
    v11 = v5;
    (v9)[2](v9, v11, v10);
  }
}

void sub_1E0CAA96C(id *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = [a2 isVisible];
    v5 = v3[2];

    v5(v3, v4);
  }

  else
  {
    v6 = [a1[4] wifiNetworkSharingAppexXPCConnections];

    if (v6)
    {
      v7 = [a1[4] wifiNetworkSharingAppexXPCConnections];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1E0CAAA80;
      v8[3] = &unk_1E86E8128;
      v9 = a1[5];
      v10 = a1[6];
      (v7)[2](v7, v8);
    }
  }
}

void sub_1E0CAAA80(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 containingAppBundleID];
        if (v8 == *(a1 + 32))
        {
          v11 = [v7 isContainingAppVisible];
        }

        else
        {
          v9 = [v7 containingAppBundleID];
          if (!v9 || !*(a1 + 32))
          {
            goto LABEL_15;
          }

          v10 = [v7 containingAppBundleID];
          if (([v10 isEqual:*(a1 + 32)] & 1) == 0)
          {

LABEL_15:
            continue;
          }

          v11 = [v7 isContainingAppVisible];
        }

        if (v11)
        {
          goto LABEL_18;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

LABEL_18:

  (*(*(a1 + 40) + 16))();
}

void sub_1E0CAAC2C(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v8 setType:201];
  v17 = @"NetworkProfile";
  v18[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [(CWFXPCRequest *)v8 setInfo:v9];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = sub_1E0CAADA0;
  v15 = &unk_1E86E6A50;
  v16 = v5;
  v10 = v5;
  [(CWFXPCRequest *)v8 setResponse:&v12];
  v11 = [WeakRetained delegate];
  [v11 XPCRequestProxy:WeakRetained XPCConnection:WeakRetained[35] receivedXPCRequest:v8];
}

void sub_1E0CAADA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"Result"];
  (*(*(a1 + 32) + 16))();
}

void sub_1E0CAAE2C(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v8 setType:262];
  v17 = @"NetworkProfile";
  v18[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [(CWFXPCRequest *)v8 setInfo:v9];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = sub_1E0CAAFA0;
  v15 = &unk_1E86E6A50;
  v16 = v5;
  v10 = v5;
  [(CWFXPCRequest *)v8 setResponse:&v12];
  v11 = [WeakRetained delegate];
  [v11 XPCRequestProxy:WeakRetained XPCConnection:WeakRetained[35] receivedXPCRequest:v8];
}

void sub_1E0CAAFA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"Result"];
  (*(*(a1 + 32) + 16))();
}

void sub_1E0CAB02C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:54];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0CAB11C;
  v8[3] = &unk_1E86E6A50;
  v9 = v3;
  v6 = v3;
  [(CWFXPCRequest *)v5 setResponse:v8];
  v7 = [WeakRetained delegate];
  [v7 XPCRequestProxy:WeakRetained XPCConnection:WeakRetained[35] receivedXPCRequest:v5];
}

void sub_1E0CAB11C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"Result"];
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(v5 + 16))(v5, 0);
  }
}

void sub_1E0CAB1CC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v4 = [WeakRetained autoJoinManager];
    v5 = [v4 hiddenSSIDList];
    v6[2](v6, v5);
  }
}

void sub_1E0CAB268(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  if (v8)
  {
    v9 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v9 setType:64];
    v10 = objc_alloc_init(CWFRequestParameters);
    v11 = [v8 interfaceName];
    [(CWFRequestParameters *)v10 setInterfaceName:v11];

    [(CWFXPCRequest *)v9 setRequestParameters:v10];
    v21 = @"ScanParams";
    v22[0] = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(CWFXPCRequest *)v9 setInfo:v12];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1E0CAB484;
    v19 = &unk_1E86E6A50;
    v20 = v6;
    [(CWFXPCRequest *)v9 setResponse:&v16];
    [WeakRetained __performScan:v9 XPCConnection:{WeakRetained[35], v16, v17, v18, v19}];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v15 = CWFErrorWithDescription(v13, 6, v14);
    (*(v6 + 2))(v6, v15, 0);
  }
}

void sub_1E0CAB484(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"Result"];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1E0CAB510(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained wifiNetworkSharingAppexXPCConnections];

  if (v8)
  {
    v9 = [WeakRetained wifiNetworkSharingAppexXPCConnections];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0CAB60C;
    v10[3] = &unk_1E86E8128;
    v11 = v5;
    v12 = v6;
    (v9)[2](v9, v10);
  }
}

void sub_1E0CAB60C(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(CWFWiFiNetworkSharingEventID);
  [(CWFEventID *)v4 setType:46];
  [(CWFWiFiNetworkSharingEventID *)v4 setClientID:*(a1 + 32)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 registeredEventIDs];
        v12 = [v11 containsObject:v4];

        if (v12)
        {
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

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 32);
            v31 = 136446978;
            v32 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke_14";
            v33 = 2082;
            v34 = "CWFXPCRequestProxy.m";
            v35 = 1024;
            v36 = 4142;
            v37 = 2114;
            v38 = v18;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] Found matching appex with accessory scan handler (clientID=%{public}@)", &v31, 38);
          }

          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = sub_1E0CAB9D4;
          v24[3] = &unk_1E86E65F0;
          v25 = *(a1 + 32);
          v26 = *(a1 + 40);
          [v10 performWiFiNetworkSharingAccessoryScanWithReply:v24];

          v19 = v25;
          v20 = v5;
          goto LABEL_22;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    v31 = 136446978;
    v32 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
    v33 = 2082;
    v34 = "CWFXPCRequestProxy.m";
    v35 = 1024;
    v36 = 4154;
    v37 = 2114;
    v38 = v22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] No matching appex with accessory scan handler (clientID=%{public}@)", &v31, 38);
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    v20 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xCuLL);
    v19 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 12, v20);
    (*(v23 + 16))(v23, v19, 0);
LABEL_22:
  }
}

void sub_1E0CAB9D4(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v12 = 136447490;
    v13 = "[CWFXPCRequestProxy __setupEventHandlers]_block_invoke";
    v14 = 2082;
    v15 = "CWFXPCRequestProxy.m";
    v16 = 1024;
    v17 = 4145;
    v18 = 2114;
    v19 = v10;
    v20 = 2112;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] Received accessory scan response from appex (clientID=%{public}@, error=%{publiv}@, results=%{public}@)", &v12, 58);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

void sub_1E0CABB50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained wifiUserAgentConnection];

  if (v11)
  {
    v12 = [WeakRetained wifiUserAgentConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CABC74;
    v13[3] = &unk_1E86E8290;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    (v12)[2](v12, v13);
  }
}

void sub_1E0CABC74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CABD14;
  v5[3] = &unk_1E86E8268;
  v6 = *(a1 + 48);
  [a2 presentWiFiNetworkSharingAuthorizationProxCardForClientID:v3 accessoryName:v4 reply:v5];
}

uint64_t sub_1E0CABD14(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0CABD2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained wifiUserAgentConnection];

  if (v11)
  {
    v12 = [WeakRetained wifiUserAgentConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CABE50;
    v13[3] = &unk_1E86E8290;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    (v12)[2](v12, v13);
  }
}

void sub_1E0CABE50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CABEF0;
  v5[3] = &unk_1E86E82E0;
  v6 = *(a1 + 48);
  [a2 presentWiFiNetworkSharingAskToShareProxCardForClientID:v3 accessoryName:v4 reply:v5];
}

uint64_t sub_1E0CABEF0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0CABF08(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained wifiUserAgentConnection];

  if (v14)
  {
    v15 = [WeakRetained wifiUserAgentConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CAC04C;
    v16[3] = &unk_1E86E8330;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    (v15)[2](v15, v16);
  }
}

void sub_1E0CAC04C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0CAC0F0;
  v6[3] = &unk_1E86E7B28;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [a2 presentWiFiNetworkSharingAskToShareUserNotificationForClientID:v3 network:v4 accessoryName:v5 reply:v6];
}

uint64_t sub_1E0CAC0F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0CAC108(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v11 setType:43];
  v12 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v11 setTimestamp:v12];

  v15 = @"WiFiNetworkSharingNetworksUpdate";
  v16[0] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [(CWFXPCEvent *)v11 setInfo:v13];
  [(CWFXPCEvent *)v11 setWifiNetworkSharingClientID:v9];

  [(CWFXPCEvent *)v11 setWifiNetworkSharingNetworkListUpdateEventPredicateData:v7];
  v14 = [WeakRetained delegate];
  [v14 XPCRequestProxy:WeakRetained sendXPCEvent:v11 reply:0];
}

void sub_1E0CAC264(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v8 setType:44];
  v9 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:v9];

  v12 = @"WiFiNetworkSharingAskToShareNetworkList";
  v13[0] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [(CWFXPCEvent *)v8 setInfo:v10];
  [(CWFXPCEvent *)v8 setWifiNetworkSharingClientID:v6];

  v11 = [WeakRetained delegate];
  [v11 XPCRequestProxy:WeakRetained sendXPCEvent:v8 reply:0];
}

void sub_1E0CAC3A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v8 setType:45];
  v9 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:v9];

  v13 = @"WiFiNetworkSharingAskToShareStatus";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(CWFXPCEvent *)v8 setInfo:v11];

  [(CWFXPCEvent *)v8 setWifiNetworkSharingClientID:v6];
  v12 = [WeakRetained delegate];
  [v12 XPCRequestProxy:WeakRetained sendXPCEvent:v8 reply:0];
}

void sub_1E0CAC4F8(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v8 setType:47];
  v9 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:v9];

  if (v6)
  {
    v12 = @"WiFiNetworkSharingAuthorizationLevel";
    v13[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(CWFXPCEvent *)v8 setInfo:v10];
  }

  [(CWFXPCEvent *)v8 setWifiNetworkSharingClientID:v5];
  v11 = [WeakRetained delegate];
  [v11 XPCRequestProxy:WeakRetained sendXPCEvent:v8 reply:0];
}

void sub_1E0CAC864(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CACAB0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CACD28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CACEC4(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    if (*(a1 + 48) && *(a1 + 56) && ([v3 IPv4AssignedAt], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      [v3 setIPv4AssignedAt:v4];
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      if ([v7 isEqualToString:*(a1 + 40)])
      {
        v8 = [v3 IPv4PrimaryAt];

        if (!v8)
        {
          [v3 setIPv4PrimaryAt:v4];
          v6 = 1;
        }
      }
    }

    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v26 = 134220034;
      v27 = v9 / 0x3B9ACA00;
      v28 = 2048;
      v29 = v9 % 0x3B9ACA00 / 0x3E8;
      v30 = 2082;
      v31 = "[CWFXPCRequestProxy updateJoinStatusWithIPv4:]_block_invoke";
      v32 = 2082;
      v33 = "CWFXPCRequestProxy.m";
      v34 = 1024;
      v35 = 4376;
      v36 = 2114;
      v37 = v13;
      v38 = 1024;
      v39 = v6;
      v40 = 2114;
      v41 = v14;
      v42 = 2114;
      v43 = v15;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IPv4: interface(%{public}@), shouldPost[%u], addresses(%{public}@), router(%{public}@)", &v26, 84);
    }

    if (v6)
    {
      v16 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v16 setType:13];
      [(CWFXPCEvent *)v16 setInterfaceName:*(a1 + 40)];
      [(CWFXPCEvent *)v16 setTimestamp:v4];
      v24 = @"JoinStatus";
      v17 = [v3 copy];
      v25 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [(CWFXPCEvent *)v16 setInfo:v18];

      v19 = *(a1 + 32);
      v20 = *(v19 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAD23C;
      block[3] = &unk_1E86E6420;
      block[4] = v19;
      v23 = v16;
      v21 = v16;
      dispatch_async(v20, block);
      [*(a1 + 32) __updateAutoJoinStatusWithJoin:*(a1 + 40)];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAD23C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAD3D8(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    if (*(a1 + 48) && *(a1 + 56) && ([v3 IPv6AssignedAt], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      [v3 setIPv6AssignedAt:v4];
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      if ([v7 isEqualToString:*(a1 + 40)])
      {
        v8 = [v3 IPv6PrimaryAt];

        if (!v8)
        {
          [v3 setIPv6PrimaryAt:v4];
          v6 = 1;
        }
      }
    }

    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v26 = 134220034;
      v27 = v9 / 0x3B9ACA00;
      v28 = 2048;
      v29 = v9 % 0x3B9ACA00 / 0x3E8;
      v30 = 2082;
      v31 = "[CWFXPCRequestProxy updateJoinStatusWithIPv6:]_block_invoke";
      v32 = 2082;
      v33 = "CWFXPCRequestProxy.m";
      v34 = 1024;
      v35 = 4427;
      v36 = 2114;
      v37 = v13;
      v38 = 1024;
      v39 = v6;
      v40 = 2114;
      v41 = v14;
      v42 = 2114;
      v43 = v15;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) IPv6: interface(%{public}@), shouldPost[%u], addresses(%{public}@), router(%{public}@)", &v26, 84);
    }

    if (v6)
    {
      v16 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v16 setType:13];
      [(CWFXPCEvent *)v16 setInterfaceName:*(a1 + 40)];
      [(CWFXPCEvent *)v16 setTimestamp:v4];
      v24 = @"JoinStatus";
      v17 = [v3 copy];
      v25 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [(CWFXPCEvent *)v16 setInfo:v18];

      v19 = *(a1 + 32);
      v20 = *(v19 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAD750;
      block[3] = &unk_1E86E6420;
      block[4] = v19;
      v23 = v16;
      v21 = v16;
      dispatch_async(v20, block);
      [*(a1 + 32) __updateAutoJoinStatusWithJoin:*(a1 + 40)];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAD750(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAD99C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CADBE0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CADD9C(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 48);
    if (v5 != [v3 EAP8021XSupplicantState] || (v6 = *(a1 + 52), v6 != objc_msgSend(v4, "EAP8021XControlMode")) || (v7 = *(a1 + 56), v7 != objc_msgSend(v4, "EAP8021XControlState")) || (v8 = *(a1 + 60), v8 != objc_msgSend(v4, "EAP8021XClientStatus")))
    {
      [v4 setEAP8021XSupplicantState:*(a1 + 48)];
      [v4 setEAP8021XControlMode:*(a1 + 52)];
      [v4 setEAP8021XControlState:*(a1 + 56)];
      [v4 setEAP8021XClientStatus:*(a1 + 60)];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:*(a1 + 40)];
      v10 = [MEMORY[0x1E695DF00] date];
      [(CWFXPCEvent *)v9 setTimestamp:v10];

      v18 = @"JoinStatus";
      v11 = [v4 copy];
      v19[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [(CWFXPCEvent *)v9 setInfo:v12];

      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CADFC0;
      block[3] = &unk_1E86E6420;
      block[4] = v13;
      v17 = v9;
      v15 = v9;
      dispatch_async(v14, block);
      [*(a1 + 32) __updateAutoJoinStatusWithJoin:*(a1 + 40)];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CADFC0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAE300(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAE6FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAEA18(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAEC70(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAED74(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) interfaceName];
  v4 = [*(a1 + 32) info];
  v5 = [v4 objectForKeyedSubscript:@"ScanResult"];
  v6 = [v4 objectForKeyedSubscript:@"IsAutoJoin"];
  v7 = [v6 BOOLValue];

  if (v5)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [*(a1 + 40) __knownNetworkProfiles];
    v10 = sub_1E0BED85C(v5, v9);

    v11 = *(a1 + 40);
    v12 = *(v11 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CAEEF8;
    block[3] = &unk_1E86E7820;
    block[4] = v11;
    v15 = v5;
    v16 = v10;
    v18 = v7;
    v17 = v3;
    v13 = v10;
    dispatch_async(v12, block);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAEEF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __addJoinStatusWithScanResult:*(a1 + 40) knownNetworkProfile:*(a1 + 48) isAutoJoin:*(a1 + 64) interfaceName:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAEFDC(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) interfaceName];
  v4 = [*(a1 + 32) info];
  v5 = [v4 objectForKeyedSubscript:@"ScanResult"];
  v6 = [v4 objectForKeyedSubscript:@"Error"];
  if (v5)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [*(a1 + 40) __updateJoinStatusWithError:v6 interaceName:v3];
    if (_os_feature_enabled_impl() && !v6)
    {
      v8 = [*(a1 + 40) __privateMACManager];
      v9 = [v5 networkProfile];
      [v8 setTemporaryUserSetting:0 networkProfile:v9];
    }

    if (_os_feature_enabled_impl())
    {
      v20 = [*(a1 + 40) __networkStackMACAddressWithInterfaceName:v3];
      v10 = [*(a1 + 40) __apple80211WithInterfaceName:v3];
      v11 = [v10 currentNetwork:0];
      v12 = CWFGetPHOSLog();
      if (v12)
      {
        v13 = CWFGetPHOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 displayName];
        v21 = 136447490;
        v22 = "[CWFXPCRequestProxy __handleAssocDoneInternalEvent:]_block_invoke";
        v23 = 2082;
        v24 = "CWFXPCRequestProxy.m";
        v25 = 1024;
        v26 = 4775;
        v27 = 2112;
        v28 = v3;
        v29 = 2112;
        v30 = v15;
        v31 = 1024;
        v32 = [v11 isPersonalHotspot];
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi-PH] %{public}s (%{public}s:%u) interfaceName = %@ currentNetwork = %@ isPH %{BOOL}d", &v21, 54);
      }

      v16 = [v11 isPersonalHotspot];
      v17 = [*(a1 + 40) __hotspotClientManager];
      v18 = v17;
      if (v16)
      {
        v19 = v20;
        [v17 clientAssociatedToHostPersonalHotspot:v20];
      }

      else
      {
        [v17 hotspotDisabled];
        v19 = v20;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CAF358(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) interfaceName];
  v4 = [*(a1 + 32) info];
  v5 = [v4 objectForKeyedSubscript:@"AutoJoinTrigger"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"AutoJoinState"];
  v8 = [v7 integerValue];

  v9 = [v4 objectForKeyedSubscript:@"AutoJoinResult"];
  v10 = v9;
  if (v6)
  {
    [*(a1 + 40) __autoJoinStartedWithTrigger:v6 interfaceName:v3];
  }

  else
  {
    v11 = *(a1 + 40);
    if (v9)
    {
      [v11 __autoJoinEndedWithResult:objc_msgSend(v9 interfaceName:{"BOOLValue"), v3}];
    }

    else
    {
      [v11 __updateAutoJoinState:v8 interfaceName:v3];
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0CAF7BC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 age];
  if (v6 == [v5 age])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 age];
    if (v8 < [v5 age])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

BOOL sub_1E0CAFE6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 matchingKnownNetworkProfile];
  v4 = [v3 isCaptive];

  v5 = v4 && [v2 RSSI] >= -75 && objc_msgSend(v2, "age") < 0xEA61;
  return v5;
}

void sub_1E0CAFEE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 XPCRequestProxy:*(a1 + 32) sendXPCEvent:*(a1 + 40) reply:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB05F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateJoinStatusWithKnownNetwork:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 216);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0CB06F0;
  v4[3] = &unk_1E86E7058;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 48);
  [v3 addOperationSerializedByName:@"updateKnownNetwork" block:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB06D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E0CB06F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) interfaceName];
  v4 = [WeakRetained __currentNetworkProfileWithInterfaceName:v3];

  if (v4)
  {
    [WeakRetained __setCachedKnownNetwork:v4];
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0CB078C(void *result, void *a2)
{
  if (a2)
  {
    return [a2 rememberCloudNetworkProfile:result[4] reply:&unk_1F5B890B0];
  }

  return result;
}

void *sub_1E0CB07AC(void *result, void *a2)
{
  if (a2)
  {
    return [a2 rememberCloudNetworkProfile:result[4] reply:&unk_1F5B89090];
  }

  return result;
}

void sub_1E0CB07CC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
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
    v6 = *(a1 + 32);
    v9 = 138543362;
    v10 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] Forgetting IP configuration for removed known network (%{public}@)", &v9, 12);
  }

  v7 = [*(a1 + 40) interfaceName];
  v8 = [*(a1 + 32) networkName];
  IPConfigurationForgetNetwork();

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB0900(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
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
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] Forgetting captive configuration for removed known network (%{public}@)", &v8, 12);
  }

  v7 = [*(a1 + 32) SSID];
  sub_1E0C9BC90(v7);

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0CB0A18(void *result, void *a2)
{
  if (a2)
  {
    return [a2 forgetCloudNetworkProfile:result[4] reply:&unk_1F5B89450];
  }

  return result;
}

void sub_1E0CB0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CB0D7C(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  v6 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0CB102C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0CB13B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CB13F4(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10)
  {
    v6 = [v5 objectForKeyedSubscript:@"Result"];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v9, 1u);
  if (!v9)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0CB17D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CB1818(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10)
  {
    v6 = [v5 objectForKeyedSubscript:@"Result"];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v9, 1u);
  if (!v9)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0CB1BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CB1BF4(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10)
  {
    v6 = [v5 objectForKeyedSubscript:@"Result"];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v9, 1u);
  if (!v9)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0CB1D78(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    *(*(a1[6] + 8) + 24) = [*(a1[5] + 56) containsObject:?];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB2868(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __apple80211WithInterfaceName:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB29E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __apple80211WithVirtualInterfaceRole:*(a1 + 56) parentInterfaceName:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB2D10(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __EAP8021XWithInterfaceName:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB3038(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __SCNetworkServiceWithInterfaceName:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB3360(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __SCNetworkInterfaceWithInterfaceName:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB37F4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __interfaceSpecificEventIDs:*(a1 + 40)];
  if (([v3 isEqualToSet:*(*(a1 + 32) + 136)] & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 144) == 1)
    {
      v5 = [*(v4 + 136) mutableCopy];
      [v5 minusSet:v3];
      [*(a1 + 32) __updateMonitoring:0 eventIDs:v5];
      v6 = [v3 mutableCopy];
      [v6 minusSet:*(*(a1 + 32) + 136)];
      [*(a1 + 32) __updateMonitoring:1 eventIDs:v6];

      v4 = *(a1 + 32);
    }

    objc_storeStrong((v4 + 136), v3);
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(a1 + 32) + 136);
      v12 = 138543362;
      v13 = v10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 1, "[corewifi] Updated registered event types: %{public}@", &v12, 12);
    }

    v11 = [*(a1 + 32) wifiNetworkSharingManager];
    [v11 didUpdateRegisteredEventIDs:v3];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CB44C4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"Result"];
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v31 = 138543362;
    v32 = v7;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 1, "[corewifi] Received scan response from daemon (results=%{public}@)", &v31, 12);
  }

  if (([*(a1 + 32) includeBeaconCacheResults] & 1) != 0 || objc_msgSend(*(a1 + 32), "includeBackgroundScanCacheResults"))
  {
    if (v7)
    {
      v11 = [v7 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] array];
    }

    v12 = v11;
    if ([*(a1 + 32) includeBeaconCacheResults])
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 40);
        v31 = 138543362;
        v32 = v16;
        LODWORD(v28) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 1, "[corewifi] Including beacon scan cache results (req=%{public}@)", &v31, v28);
      }

      v17 = [*(a1 + 48) beaconCache:0];
      if ([v17 count])
      {
        [v12 addObjectsFromArray:v17];
      }
    }

    if ([*(a1 + 32) includeBackgroundScanCacheResults])
    {
      v18 = CWFGetOSLog();
      if (v18)
      {
        v19 = CWFGetOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 40);
        v31 = 138543362;
        v32 = v21;
        LODWORD(v28) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 1, "[corewifi] Including background scan cache results (req=%{public}@)", &v31, v28);
      }

      v22 = [*(a1 + 48) backgroundScanCache:0];
      if ([v22 count])
      {
        [v12 addObjectsFromArray:v22];
      }
    }

    v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v24 = *(a1 + 56);
    if ([*(a1 + 32) addScanDurationToMaxAge])
    {
      [*(a1 + 32) setMaximumAge:{objc_msgSend(*(a1 + 32), "maximumAge") + (v23 - v24) / 0xF4240}];
    }

    v25 = CWFFilteredScanResults(v12, *(a1 + 32));

    v26 = [*(a1 + 40) response];
    v29 = @"Result";
    v30 = v25;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    (v26)[2](v26, v5, v27);

    v7 = v25;
  }

  else
  {
    v12 = [*(a1 + 40) response];
    (v12)[2](v12, v5, v6);
  }
}

void sub_1E0CBC328(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E0CBC344(uint64_t a1)
{
  v123 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = [WeakRetained apple80211WithInterfaceName:*(a1 + 32)];
  v5 = [WeakRetained SCNetworkServiceWithInterfaceName:*(a1 + 32)];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [v4 BSSID:0];
    v9 = [WeakRetained __currentNetworkProfileWithInterfaceName:*(a1 + 32)];
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_110:

      goto LABEL_111;
    }

    v112 = a1;
    v113 = v6;
    v106 = v4;
    v107 = v3;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v114 = v9;
    v11 = [v9 BSSList];
    v12 = [v11 countByEnumeratingWithState:&v117 objects:v122 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v118;
      v105 = WeakRetained;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v118 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v117 + 1) + 8 * i);
          v17 = [v16 BSSID];
          v18 = v17;
          if (v17 == v8)
          {

LABEL_23:
            v23 = v16;
            WeakRetained = v105;
            goto LABEL_25;
          }

          v19 = [v16 BSSID];
          if (v19)
          {
            v20 = v19;
            v21 = [v16 BSSID];
            v22 = [v21 isEqual:v8];

            if (v22)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v117 objects:v122 count:16];
        v23 = 0;
        WeakRetained = v105;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_25:

    v24 = v113;
    v25 = [v113 IPv4NetworkSignature];
    v26 = [v113 IPv6NetworkSignature];
    v27 = [v113 DHCPServerID];
    v28 = [v113 DHCPv6ServerID];
    v110 = v25;
    v111 = v27;
    v108 = v28;
    v109 = v26;
    if (!v23)
    {
      v30 = 0;
      v29 = v112;
      goto LABEL_77;
    }

    v29 = v112;
    if (!v25 && !v26 && !v27 && !v28)
    {
      v30 = 0;
      goto LABEL_77;
    }

    v31 = [v23 IPv4NetworkSignature];
    if (v25 != v31)
    {
      if (!v25)
      {
        goto LABEL_74;
      }

      v32 = [v23 IPv4NetworkSignature];
      if (!v32)
      {
        v38 = 0;
LABEL_73:

        goto LABEL_74;
      }

      v100 = v32;
      v11 = [v23 IPv4NetworkSignature];
      if (![v25 isEqual:v11])
      {
LABEL_72:

        v38 = v100;
        goto LABEL_73;
      }
    }

    v33 = [v23 IPv6NetworkSignature];
    if (v26 == v33)
    {
      v97 = v11;
      v98 = v31;
      v102 = v33;
LABEL_42:
      v35 = [v23 DHCPServerID];
      if (v27 != v35)
      {
        if (!v27 || ([v23 DHCPServerID], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v39 = 1;
          goto LABEL_64;
        }

        v31 = v36;
        v37 = [v23 DHCPServerID];
        if (([v27 isEqual:v37] & 1) == 0)
        {
          v46 = v23;

          v48 = 1;
          v49 = v102;
          v44 = v95;
          if (v26 != v102)
          {
LABEL_56:
            v102 = v49;

            v29 = v112;
            v11 = v97;
            v31 = v98;
            goto LABEL_58;
          }

LABEL_113:

          v11 = v97;
          v31 = v98;
          v29 = v112;
          if (v25 == v98)
          {
LABEL_60:

            if (v48)
            {
              goto LABEL_75;
            }

LABEL_69:
            v30 = 0;
            v23 = v46;
LABEL_76:
            v27 = v111;
LABEL_77:
            v55 = [WeakRetained __linkDownStatusWithInterfaceName:*(v29 + 32)];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v57 = v56;
            v58 = [v55 timestamp];
            [v58 timeIntervalSinceReferenceDate];
            v60 = v57 - v59;

            if (v60 >= 30.0)
            {
              v77 = 0;
LABEL_101:
              if ((v30 | v77) == 1)
              {
                v85 = [MEMORY[0x1E695DFA8] set];
                v86 = v85;
                if (v30)
                {
                  [v85 addObject:&unk_1F5BBCAF0];
                }

                v104 = v55;
                if (v77)
                {
                  [v86 addObject:&unk_1F5BBCB08];
                }

                v87 = [MEMORY[0x1E695DF90] dictionary];
                [v87 setObject:v114 forKeyedSubscript:@"NetworkProfile"];
                [v87 setObject:v86 forKeyedSubscript:@"NetworkProfileProperties"];
                v88 = objc_alloc_init(CWFXPCRequest);
                [(CWFXPCRequest *)v88 setType:61];
                [(CWFXPCRequest *)v88 setInfo:v87];
                v89 = objc_alloc_init(CWFRequestParameters);
                [(CWFRequestParameters *)v89 setInterfaceName:*(v112 + 32)];
                [(CWFXPCRequest *)v88 setRequestParameters:v89];
                v90 = [MEMORY[0x1E695DF00] date];
                [(CWFXPCRequest *)v88 setReceivedAt:v90];

                v115[0] = MEMORY[0x1E69E9820];
                v115[1] = 3221225472;
                v115[2] = sub_1E0CBCE24;
                v115[3] = &unk_1E86E6C80;
                v116 = v114;
                [(CWFXPCRequest *)v88 setResponse:v115];
                v91 = [WeakRetained delegate];
                v92 = v91;
                if (v91)
                {
                  [v91 XPCRequestProxy:WeakRetained XPCConnection:WeakRetained[35] receivedXPCRequest:v88];
                }

                v27 = v111;
                v55 = v104;
              }

              v4 = v106;
              v3 = v107;
              v6 = v113;
              v9 = v114;
              goto LABEL_110;
            }

            v61 = [WeakRetained __linkDownNetworkWithInterfaceName:*(v29 + 32)];
            v62 = [v61 SSID];
            if (v62)
            {
              v63 = v62;
              v64 = [v114 SSID];

              if (v64)
              {
                v101 = v23;
                v103 = v55;
                v65 = [v114 seamlessSSIDList];
                v66 = [v65 mutableCopy];

                v67 = [WeakRetained __currentScanResultWithInterfaceName:*(v112 + 32) forceNoCache:1];
                v68 = [v114 copy];
                v69 = [v67 scanResultWithMatchingKnownNetworkProfile:v68];

                v70 = [v69 matchingKnownNetworkProfile];
                [v70 setSeamlessSSIDList:0];

                v121 = v61;
                v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
                v72 = CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult(v69, v71, 0);
                v73 = [v72 count];

                if (v73)
                {
                  if (!v66)
                  {
                    v66 = [MEMORY[0x1E695DF70] array];
                  }

                  v74 = [v61 SSID];
                  v75 = [v66 containsObject:v74];

                  v23 = v101;
                  if (v75)
                  {
LABEL_90:
                    v27 = v111;
                    v78 = [v114 seamlessSSIDList];
                    v79 = v78;
                    if (v66 == v78)
                    {

                      v77 = 0;
                      goto LABEL_99;
                    }

                    v99 = v69;
                    v80 = v66;
                    if (v66 && ([v114 seamlessSSIDList], (v81 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v82 = v81;
                      v83 = [v114 seamlessSSIDList];
                      v84 = [v80 isEqual:v83];

                      v27 = v111;
                      if (v84)
                      {
                        v77 = 0;
                        v23 = v101;
                        v66 = v80;
LABEL_97:
                        v69 = v99;
LABEL_99:

                        v55 = v103;
                        goto LABEL_100;
                      }
                    }

                    else
                    {
                    }

                    v66 = v80;
                    [v114 setSeamlessSSIDList:v80];
                    v77 = 1;
                    v23 = v101;
                    goto LABEL_97;
                  }

                  v76 = [v61 SSID];
                  [v66 addObject:v76];
                }

                else
                {
                  v76 = [v61 SSID];
                  [v66 removeObject:v76];
                  v23 = v101;
                }

                goto LABEL_90;
              }

              v77 = 0;
              v27 = v111;
            }

            else
            {
              v77 = 0;
            }

LABEL_100:

            goto LABEL_101;
          }

LABEL_59:

          goto LABEL_60;
        }

        v94 = v37;
      }

      v40 = [v23 DHCPv6ServerID];
      v41 = v40;
      v39 = v108 != v40;
      if (!v108 || v108 == v40)
      {

        if (v27 == v35)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v42 = [v23 DHCPv6ServerID];
        if (v42)
        {
          v43 = v42;
          v93 = v31;
          v44 = v95;
          v45 = v27;
          v46 = v23;
          v47 = [v23 DHCPv6ServerID];
          v48 = [v108 isEqual:v47] ^ 1;

          if (v45 != v35)
          {
          }

          v25 = v110;
          v49 = v102;
          v24 = v113;
          if (v109 != v102)
          {
            goto LABEL_56;
          }

          goto LABEL_113;
        }

        v39 = 1;
        v24 = v113;
        if (v27 == v35)
        {
LABEL_64:
          v46 = v23;

          v50 = v102;
          if (v109 != v102)
          {

            v50 = v102;
          }

          v29 = v112;
          if (v110 != v98)
          {
          }

          if (v39)
          {
            goto LABEL_75;
          }

          goto LABEL_69;
        }
      }

      goto LABEL_64;
    }

    if (v26)
    {
      v102 = v33;
      v34 = [v23 IPv6NetworkSignature];
      if (!v34)
      {
        v46 = v23;
        v48 = 1;
LABEL_58:

        if (v25 == v31)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v98 = v31;
      v96 = v34;
      v31 = [v23 IPv6NetworkSignature];
      if ([v26 isEqual:v31])
      {
        v97 = v11;
        v95 = v31;
        goto LABEL_42;
      }

      v31 = v98;
    }

    else
    {
    }

    if (v25 != v31)
    {
      goto LABEL_72;
    }

LABEL_74:
    v46 = v23;

LABEL_75:
    v51 = [v24 IPv4NetworkSignature];
    v23 = v46;
    [v46 setIPv4NetworkSignature:v51];

    v52 = [v24 IPv6NetworkSignature];
    [v46 setIPv6NetworkSignature:v52];

    v53 = [v24 DHCPServerID];
    [v46 setDHCPServerID:v53];

    v54 = [v24 DHCPv6ServerID];
    [v46 setDHCPv6ServerID:v54];

    v30 = 1;
    goto LABEL_76;
  }

LABEL_111:

  objc_autoreleasePoolPop(v3);
}

void sub_1E0CBCE24(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) networkName];
      v9 = *(a1 + 32);
      *v12 = 138543874;
      *&v12[4] = v8;
      *&v12[12] = 2114;
      *&v12[14] = v3;
      *&v12[22] = 2114;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] FAILED to update IP config for known network '%{public}@' (error=%{public}@, network=%{public}@)", v12, 32, *v12, *&v12[8], v9);
LABEL_12:
    }
  }

  else
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) networkName];
      v11 = *(a1 + 32);
      *v12 = 138543618;
      *&v12[4] = v8;
      *&v12[12] = 2114;
      *&v12[14] = v11;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] Updated IP config for known network '%{public}@' (network=%{public}@)", v12, 22, *v12, *&v12[8], v13);
      goto LABEL_12;
    }
  }
}

void sub_1E0CBDB14(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CBE444(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v12 = 136447234;
      v13 = "[CWFXPCRequestProxy __updateNetworkProfile:updateProperties:interfaceName:reply:]_block_invoke";
      v14 = 2082;
      v15 = "CWFXPCRequestProxy.m";
      v16 = 1024;
      v17 = 8210;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Failed to update network (%{public}@), returned error %{public}@", &v12, 48);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }
}

void sub_1E0CBE7E4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) count];
      v12 = 136447234;
      v13 = "[CWFXPCRequestProxy __updateMultipleKnownNetworks:updateProperties:interfaceName:reply:]_block_invoke";
      v14 = 2082;
      v15 = "CWFXPCRequestProxy.m";
      v16 = 1024;
      v17 = 8245;
      v18 = 1024;
      v19 = v10;
      v20 = 2114;
      v21 = v5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Failed to update %d network profiles, returned error %{public}@", &v12, 44);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }
}

void sub_1E0CBEB98(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v12 = 136447234;
      v13 = "[CWFXPCRequestProxy __removeNetworkProfile:reason:interfaceName:reply:]_block_invoke";
      v14 = 2082;
      v15 = "CWFXPCRequestProxy.m";
      v16 = 1024;
      v17 = 8280;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) Failed to remove network (%{public}@), returned error %{public}@", &v12, 48);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }
}

void sub_1E0CBF5FC(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __currentNetworkProfileWithInterfaceName:*(a1 + 40)];
  v4 = [v3 identifier];
  v5 = [*(a1 + 48) identifier];
  v6 = v5;
  if (v4 == v5)
  {

LABEL_7:
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 48);
      v19 = 138543362;
      v20 = v17;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] PRIVATE MAC: Disconnect from known network with changed private MAC setting (%{public}@)", &v19, 12);
    }

    if ([*(a1 + 48) privateMACAddressDisabledByEvaluation])
    {
      v18 = 32;
    }

    else
    {
      v18 = 33;
    }

    [*(a1 + 32) __disassocWithReason:v18 interfaceName:*(a1 + 40)];
    v4 = objc_alloc_init(CWFAutoJoinParameters);
    [(CWFAutoJoinParameters *)v4 setMode:0];
    [(CWFAutoJoinParameters *)v4 setTrigger:60];
    [(CWFAutoJoinParameters *)v4 setTargetNetworkProfile:*(a1 + 48)];
    [*(a1 + 32) __performAutoJoinWithParameters:v4 interfaceName:*(a1 + 40)];
    goto LABEL_18;
  }

  v7 = [v3 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 48) identifier];
    if (v9)
    {
      v10 = v9;
      v11 = [v3 identifier];
      v12 = [*(a1 + 48) identifier];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }
  }

LABEL_18:
LABEL_19:

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CBF834(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 216) addOperation:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CBFA10(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 knownNetworkProfile];
  v5 = [v3 scanResult];
  if (![v4 privateMACAddressEvaluationState])
  {
    goto LABEL_47;
  }

  v6 = [v5 privateMACAddress];
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = v6;
  v8 = [v3 linkUpAt];

  if (!v8)
  {
    goto LABEL_47;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (!CWFIsIPv4AddressLinkLocal(*(*(&v42 + 1) + 8 * i)))
        {
          v14 = 1;
          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = *(a1 + 56);
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v16)
  {
    v17 = *v39;
    while (2)
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if (!CWFIsIPv6AddressLinkLocal(*(*(&v38 + 1) + 8 * j)))
        {
          LODWORD(v16) = 1;
          goto LABEL_24;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  if ((!v14 || !*(a1 + 64) && ([v4 isCarPlay] & 1) == 0) && (!v16 || !*(a1 + 72) && !objc_msgSend(v4, "isCarPlay")))
  {
    v20 = *(a1 + 80);
    v21 = [v3 linkUpAt];
    [v21 timeIntervalSinceReferenceDate];
    v23 = v20 - v22;

    if (v23 >= 30.0)
    {
      [*(a1 + 32) __privateMACEvaluationCompletedWithState:3 knownNetwork:v4 interfaceName:*(a1 + 40)];
      v25 = [*(a1 + 32) __privateMACManager];
      if ([v4 privateMACAddressEnabledForEvaluation])
      {
        v28 = @"RoutabilityFailFallback";
      }

      else
      {
        v28 = @"RoutabilityFail";
      }

      [v25 submitPrivateMACStatsMetricWithEventType:v28 networkProfile:v4];
LABEL_40:

      goto LABEL_41;
    }

LABEL_34:
    v24 = *(a1 + 80);
    v25 = [v3 linkUpAt];
    [v25 timeIntervalSinceReferenceDate];
    if (ceil(v26 - v24 + 30.0) <= 0.0)
    {
      v27 = [v3 linkUpAt];
      [v27 timeIntervalSinceReferenceDate];
    }

    goto LABEL_40;
  }

  if (([v4 isCaptive] & 1) == 0)
  {
    v19 = [v4 captiveWebsheetLoginDate];

    if (!v19)
    {
      goto LABEL_34;
    }
  }

  [*(a1 + 32) __privateMACEvaluationCompletedWithState:0 knownNetwork:v4 interfaceName:*(a1 + 40)];
LABEL_41:
  v29 = *(a1 + 32);
  v30 = *(v29 + 240);
  if (!v30)
  {
    v31 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v29 + 8));
    v32 = *(a1 + 32);
    v33 = *(v32 + 240);
    *(v32 + 240) = v31;

    v34 = *(a1 + 32);
    v35 = *(v34 + 240);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0CBFE68;
    handler[3] = &unk_1E86E6010;
    handler[4] = v34;
    dispatch_source_set_event_handler(v35, handler);
    dispatch_source_set_timer(*(*(a1 + 32) + 240), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(*(a1 + 32) + 240));
    v29 = *(a1 + 32);
    v30 = *(v29 + 240);
  }

  if (*(v29 + 248) < 1)
  {
    v36 = -1;
  }

  else
  {
    v36 = dispatch_time(0, 0);
  }

  dispatch_source_set_timer(v30, v36, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_47:

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CBFE68(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) interfaceNames];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) privateMACEvaluationCheckConnectivityWithInterfaceName:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1E0CC0A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0CC0A80(uint64_t a1, int a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  uint64 = xpc_dictionary_get_uint64(v5, *MEMORY[0x1E69B37A8]);

  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 67109376;
    *v32 = a2;
    *&v32[4] = 2048;
    *&v32[6] = uint64;
    LODWORD(v30) = 18;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] Received NETRB event (respID=%d, notification=%lld)", &v31, v30);
  }

  if (a2 == 1002)
  {
    if (uint64 == 5003)
    {
      v14 = *(WeakRetained + 39);
      if (!v14)
      {
LABEL_29:
        *(WeakRetained + 39) = 0;
LABEL_30:

        goto LABEL_31;
      }

      v18 = *MEMORY[0x1E696A798];
      v19 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v20 = CWFErrorWithDescription(v18, 6, v19);
      (*(v14 + 16))(v14, v20);
    }

    else
    {
      if (uint64 != 5002)
      {
        goto LABEL_31;
      }

      if ((_NETRBClientSetHostCount() & 1) == 0)
      {
        v24 = CWFGetOSLog();
        if (v24)
        {
          v25 = CWFGetOSLog();
        }

        else
        {
          v25 = MEMORY[0x1E69E9C10];
          v28 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v31 = 136446722;
          *v32 = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]_block_invoke";
          *&v32[8] = 2082;
          *&v32[10] = "CWFXPCRequestProxy.m";
          v33 = 1024;
          v34 = 8592;
          LODWORD(v30) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientSetHostCount() FAILED", &v31, v30);
        }
      }

      if ((_NETRBClientDestroy() & 1) == 0)
      {
        v26 = CWFGetOSLog();
        if (v26)
        {
          v27 = CWFGetOSLog();
        }

        else
        {
          v27 = MEMORY[0x1E69E9C10];
          v29 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v31 = 136446722;
          *v32 = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]_block_invoke";
          *&v32[8] = 2082;
          *&v32[10] = "CWFXPCRequestProxy.m";
          v33 = 1024;
          v34 = 8594;
          LODWORD(v30) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientDestroy() FAILED", &v31, v30);
        }
      }

      *(WeakRetained + 36) = 0;
      v13 = *(WeakRetained + 39);
      if (!v13)
      {
        v14 = 0;
        goto LABEL_29;
      }

      (*(v13 + 16))(v13, 0);
    }

    v14 = *(WeakRetained + 39);
    goto LABEL_29;
  }

  if (a2 == 1001)
  {
    if (uint64 == 5003)
    {
      v14 = *(WeakRetained + 38);
      if (v14)
      {
        v15 = *MEMORY[0x1E696A798];
        v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
        v17 = CWFErrorWithDescription(v15, 6, v16);
        (*(v14 + 16))(v14, v17);

        v14 = *(WeakRetained + 38);
      }

      *(WeakRetained + 38) = 0;
      goto LABEL_30;
    }

    if (uint64 == 5002)
    {
      v11 = *(WeakRetained + 38);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
        v12 = *(WeakRetained + 38);
      }

      else
      {
        v12 = 0;
      }

      *(WeakRetained + 38) = 0;

      if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.wifi.hostap", WeakRetained + 74))
      {
        v21 = CWFGetOSLog();
        if (v21)
        {
          v14 = CWFGetOSLog();
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v23 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v31 = 136446722;
          *v32 = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]_block_invoke";
          *&v32[8] = 2082;
          *&v32[10] = "CWFXPCRequestProxy.m";
          v33 = 1024;
          v34 = 8575;
          LODWORD(v30) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] %{public}s (%{public}s:%u) IOPMAssertionCreateWithName() FAILED", &v31, v30);
        }

        goto LABEL_30;
      }
    }
  }

LABEL_31:

  return 0;
}

void sub_1E0CC1880(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 && [*(a1 + 32) bridgeMode] && objc_msgSend(*(a1 + 32), "bridgeType"))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(v10 + 16);
    block[2] = sub_1E0CC19F4;
    block[3] = &unk_1E86E8420;
    v12 = v9;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v10;
    *(&v16 + 1) = v12;
    v18 = v16;
    v19 = v15;
    v20 = *(a1 + 64);
    dispatch_async(v11, block);
  }

  else
  {
    v7 = [*(a1 + 48) response];

    if (v7)
    {
      v8 = [*(a1 + 48) response];
      (v8)[2](v8, v5, 0);
    }
  }
}

void sub_1E0CC19F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestParameters];
  v5 = [v4 interfaceName];
  v6 = [v3 __apple80211WithVirtualInterfaceRole:7 parentInterfaceName:v5];

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = [v6 interfaceName];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0CC1B44;
  v13[3] = &unk_1E86E85A8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v16 = v6;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v12 = v6;
  [v7 __startNetworkRelayBridgeWithHostAPConfiguration:v8 interfaceName:v9 reply:v13];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CC1B44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v4 setType:221];
    v5 = [*(a1 + 32) requestParameters];
    [(CWFXPCRequest *)v4 setRequestParameters:v5];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CC1C8C;
    v9[3] = &unk_1E86E8580;
    v6 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v6;
    v11 = *(a1 + 32);
    [(CWFXPCRequest *)v4 setResponse:v9];
    [*(a1 + 56) XPCRequestProxy:*(a1 + 40) XPCConnection:*(a1 + 64) receivedXPCRequest:v4];
  }

  v7 = [*(a1 + 32) response];

  if (v7)
  {
    v8 = [*(a1 + 32) response];
    (v8)[2](v8, v3, 0);
  }
}

void sub_1E0CC1C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0CC1D58;
  v8[3] = &unk_1E86E7EA8;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void sub_1E0CC1D58(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v12 = 136446978;
      v13 = "[CWFXPCRequestProxy __startHostAPMode:XPCConnection:]_block_invoke_5";
      v14 = 2082;
      v15 = "CWFXPCRequestProxy.m";
      v16 = 1024;
      v17 = 8739;
      v18 = 2114;
      v19 = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Failed to stop AP mode, returned error %{public}@", &v12, 38);
    }
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) interfaceName];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0CC1F2C;
  v9[3] = &unk_1E86E6690;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  [v3 __stopNetworkRelayBridgeForInterfaceName:v4 reply:v9];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CC1F2C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = v6;
    }

    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CC2238(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CC22F0;
  block[3] = &unk_1E86E6060;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_1E0CC22F0(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v16 = 136446978;
      v17 = "[CWFXPCRequestProxy __stopHostAPMode:XPCConnection:]_block_invoke_2";
      v18 = 2082;
      v19 = "CWFXPCRequestProxy.m";
      v20 = 1024;
      v21 = 8785;
      v22 = 2114;
      v23 = v12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[corewifi] %{public}s (%{public}s:%u) Failed to stop AP mode, returned error %{public}@", &v16, 38);
    }
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) requestParameters];
  v5 = [v4 interfaceName];
  v6 = [v3 __apple80211WithVirtualInterfaceRole:7 parentInterfaceName:v5];

  v7 = *(a1 + 40);
  v8 = [v6 interfaceName];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0CC2510;
  v13[3] = &unk_1E86E6690;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  [v7 __stopNetworkRelayBridgeForInterfaceName:v8 reply:v13];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CC2510(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = v6;
    }

    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CC2A70(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Result"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

void sub_1E0CC2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CC2D84(uint64_t a1, void *a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (v7)
    {
      v8 = [v7 SSID];
      v9 = [v6 SSID];
      v10 = v9;
      if (v8 == v9)
      {

        goto LABEL_9;
      }

      v11 = [*(*(*(a1 + 40) + 8) + 40) SSID];
      if (v11)
      {
        v12 = v11;
        v13 = [v6 SSID];
        if (v13)
        {
          v14 = v13;
          v15 = [*(*(*(a1 + 40) + 8) + 40) SSID];
          v16 = [v6 SSID];
          v17 = [v15 isEqual:v16];

          if (!v17)
          {
            goto LABEL_12;
          }

LABEL_9:
          v18 = [v6 scanRecord];
          v19 = [v18 mutableCopy];

          v20 = [*(*(*(a1 + 40) + 8) + 40) scanRecord];
          [v19 addEntriesFromDictionary:v20];

          v21 = [CWFScanResult alloc];
          v22 = [v6 matchingKnownNetworkProfile];
          v23 = [(CWFScanResult *)v21 initWithScanRecord:v19 knownNetworkProfile:v22 includeProperties:0];
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = v23;

          v26 = [v6 OSSpecificAttributes];
          [*(*(*(a1 + 40) + 8) + 40) setOSSpecificAttributes:v26];

LABEL_13:
          goto LABEL_14;
        }
      }
    }

LABEL_12:
    v27 = *(*(a1 + 40) + 8);
    v28 = v6;
    v19 = *(v27 + 40);
    *(v27 + 40) = v28;
    goto LABEL_13;
  }

LABEL_14:
  v29 = [*(a1 + 32) response];

  if (v29)
  {
    v30 = [*(a1 + 32) response];
    v31 = v30;
    v32 = *(*(*(a1 + 40) + 8) + 40);
    if (v32)
    {
      v34 = @"Result";
      v35[0] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      (v31)[2](v31, 0, v33);
    }

    else
    {
      (*(v30 + 16))(v30, 0, 0);
    }
  }
}

void sub_1E0CC32E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CC3304(uint64_t a1, void *a2, void *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v7 SSID];
  v9 = [v6 SSID];
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_9;
  }

  v11 = [*(*(*(a1 + 48) + 8) + 40) SSID];
  if (!v11)
  {
LABEL_11:

LABEL_12:
    v25 = *(*(a1 + 48) + 8);
    v26 = v6;
    v17 = *(v25 + 40);
    *(v25 + 40) = v26;
    goto LABEL_13;
  }

  v12 = [v6 SSID];
  if (!v12)
  {

    goto LABEL_11;
  }

  v13 = [*(*(*(a1 + 48) + 8) + 40) SSID];
  v14 = [v6 SSID];
  v15 = [v13 isEqual:v14];

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_9:
  v16 = [v6 scanRecord];
  v17 = [v16 mutableCopy];

  v18 = [*(*(*(a1 + 48) + 8) + 40) scanRecord];
  [v17 addEntriesFromDictionary:v18];

  v19 = [CWFScanResult alloc];
  v20 = [v6 matchingKnownNetworkProfile];
  v21 = [(CWFScanResult *)v19 initWithScanRecord:v17 knownNetworkProfile:v20 includeProperties:0];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = [v6 OSSpecificAttributes];
  [*(*(*(a1 + 48) + 8) + 40) setOSSpecificAttributes:v24];

LABEL_13:
  if ([*(a1 + 32) cellularOutrankWiFiNotificationToken] == -1)
  {
    objc_initWeak(&location, *(a1 + 32));
    v27 = [@"com.apple.symptoms.celloutrankrecommendation" UTF8String];
    v28 = *(a1 + 32);
    v29 = *(v28 + 48);
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = sub_1E0CC3738;
    v39 = &unk_1E86E8620;
    objc_copyWeak(&v41, &location);
    v40 = *(a1 + 56);
    notify_register_dispatch(v27, (v28 + 376), v29, &v36);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  *(*(*(a1 + 56) + 8) + 24) |= [*(*(*(a1 + 48) + 8) + 40) CWFNetworkWarningFlagsFromScanResult];
  v30 = [*(*(*(a1 + 48) + 8) + 40) matchingKnownNetworkProfile];

  if (v30)
  {
    v31 = [*(*(*(a1 + 48) + 8) + 40) matchingKnownNetworkProfile];
    *(*(*(a1 + 56) + 8) + 24) |= [v31 CWFNetworkWarningFlagsFromNetworkProfile];
  }

LABEL_17:
  v32 = [*(a1 + 40) response];

  if (v32)
  {
    v33 = [*(a1 + 40) response];
    v43 = @"Result";
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
    v44[0] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    (v33)[2](v33, 0, v35);
  }
}

void sub_1E0CC370C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0CC3738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) |= [WeakRetained _updateCellularRankingState];
}

void sub_1E0CC3BB8(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v29 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [MEMORY[0x1E695DF90] dictionary];
        v12 = [v10 sourceAddresses];
        v13 = [v12 allObjects];
        [v11 setObject:v13 forKey:@"addresses"];

        v14 = [v10 serviceNames];
        v15 = [v14 allObjects];
        [v11 setObject:v15 forKey:@"services"];

        v16 = [v10 name];
        [v5 setObject:v11 forKey:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v7);
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v29;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v32 + 1) + 8 * j) description];
        [v17 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v20);
  }

  v24 = [MEMORY[0x1E695DF90] dictionary];
  v40[0] = @"valid";
  v40[1] = @"filtered";
  v41[0] = v5;
  v41[1] = v17;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v24 setObject:v25 forKeyedSubscript:@"Result"];

  v26 = [*(a1 + 32) response];

  if (v26)
  {
    v27 = [*(a1 + 32) response];
    v28 = [v24 copy];
    (v27)[2](v27, 0, v28);
  }
}

id sub_1E0CC3F20(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) processName];
  if (v3)
  {
    [v2 setObject:v3 forKey:@"process"];
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    v4 = [*(a1 + 56) profilesContainsHomeProfile:?];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [v2 setObject:v5 forKey:@"home"];

    v6 = [*(a1 + 48) objectForKeyedSubscript:@"mapLabelArrayForCalloutsKey"];
    if (v6)
    {
      v22 = v6;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      [v2 setObject:v7 forKey:@"networkCount"];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [*(a1 + 48) objectForKeyedSubscript:@"mapLabelArrayForCalloutsKey"];
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v24 = *v26;
        v10 = 1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:@"mapLabelCalloutDeviceCountKey"];

            if (v13)
            {
              v14 = [v12 objectForKeyedSubscript:@"mapLabelCalloutDeviceCountKey"];
              v13 = [v14 integerValue];
            }

            v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"network%dDeviceCount", v10];
            [v2 setObject:v15 forKey:v16];

            v17 = [v12 objectForKeyedSubscript:@"mapLabelCalloutDeviceNamesKey"];
            v18 = v17 != 0;

            v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"network%dDeviceName", v10];
            [v2 setObject:v19 forKey:v20];

            v10 = (v10 + 1);
          }

          v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v9);
      }

      v6 = v22;
    }
  }

  else
  {
    [v2 setObject:&unk_1F5BBCB80 forKey:@"networkCount"];
  }

  return v2;
}

void sub_1E0CC4824(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CC4EC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CC5000;
    v9[3] = &unk_1E86E86C0;
    v10 = *(a1 + 32);
    [a2 queryNearbyRecommendedNetworksAndReply:v9];
  }

  else
  {
    v4 = [*(a1 + 32) response];

    if (v4)
    {
      v8 = [*(a1 + 32) response];
      v5 = *MEMORY[0x1E696A798];
      v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v7 = CWFErrorWithDescription(v5, 6, v6);
      v8[2](v8, v7, 0);
    }
  }
}

void sub_1E0CC5000(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) response];

  if (v7)
  {
    v8 = [*(a1 + 32) response];
    v9 = v8;
    if (v6)
    {
      v11 = @"Result";
      v12[0] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      (v9)[2](v9, v5, v10);
    }

    else
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

void sub_1E0CC5278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CC5290(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 344))
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = *(*(a1 + 32) + 344);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(*(a1 + 40) + 8) + 40);
          v12 = [*(*(&v13 + 1) + 8 * v10) matchingKnownNetworkProfile];
          [v11 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CC5594(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0CC56DC;
    v10[3] = &unk_1E86E84C0;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    [a2 dumpLogs:v4 reply:v10];
  }

  else
  {
    v5 = [*(a1 + 40) response];

    if (v5)
    {
      v9 = [*(a1 + 40) response];
      v6 = *MEMORY[0x1E696A798];
      v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v8 = CWFErrorWithDescription(v6, 6, v7);
      v9[2](v9, v8, 0);
    }
  }
}

void sub_1E0CC56DC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CC5830(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CC5968;
    v9[3] = &unk_1E86E86C0;
    v10 = *(a1 + 32);
    [a2 queryCloudNetworksAndReply:v9];
  }

  else
  {
    v4 = [*(a1 + 32) response];

    if (v4)
    {
      v8 = [*(a1 + 32) response];
      v5 = *MEMORY[0x1E696A798];
      v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v7 = CWFErrorWithDescription(v5, 6, v6);
      v8[2](v8, v7, 0);
    }
  }
}

void sub_1E0CC5968(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) response];

  if (v7)
  {
    v8 = [*(a1 + 32) response];
    v9 = v8;
    if (v6)
    {
      v11 = @"Result";
      v12[0] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      (v9)[2](v9, v5, v10);
    }

    else
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

void sub_1E0CC5C18(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0CC5D60;
    v10[3] = &unk_1E86E6C80;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    [a2 queryCaptivePortalCredentialsForKnownNetworkProfile:v4 reply:v10];
  }

  else
  {
    v5 = [*(a1 + 40) response];

    if (v5)
    {
      v9 = [*(a1 + 40) response];
      v6 = *MEMORY[0x1E696A798];
      v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v8 = CWFErrorWithDescription(v6, 6, v7);
      v9[2](v9, v8, 0);
    }
  }
}

void sub_1E0CC5D60(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) response];

  if (v7)
  {
    v8 = [*(a1 + 32) response];
    v9 = v8;
    if (v6)
    {
      v11 = @"Result";
      v12[0] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      (v9)[2](v9, v5, v10);
    }

    else
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

void sub_1E0CC6058(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0CC61A8;
    v11[3] = &unk_1E86E84C0;
    v12 = *(a1 + 48);
    [a2 setCaptivePortalCredentials:v4 knownNetworkProfile:v5 reply:v11];
  }

  else
  {
    v6 = [*(a1 + 48) response];

    if (v6)
    {
      v10 = [*(a1 + 48) response];
      v7 = *MEMORY[0x1E696A798];
      v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v9 = CWFErrorWithDescription(v7, 6, v8);
      v10[2](v10, v9, 0);
    }
  }
}

void sub_1E0CC61A8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) response];

  if (v3)
  {
    v4 = [*(a1 + 32) response];
    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CC6BBC(uint64_t a1, void *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) response];

  if (v5)
  {
    if (v6)
    {
      v7 = [*(a1 + 32) response];
      (v7)[2](v7, v5, 0);
    }
  }

  else if (v6)
  {
    v8 = [*(a1 + 32) response];
    v11 = @"Result";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    (v8)[2](v8, 0, v10);
  }
}

void sub_1E0CC74C0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 16, "[corewifi] FAILED to remove unused known network, (error=%@, network=%@)", &v8, 22);
    }
  }
}

void sub_1E0CC75CC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 16, "[corewifi] FAILED to remove unused known network, (error=%@, network=%@)", &v8, 22);
    }
  }
}

void sub_1E0CC83D4(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiNetworkSharingManager];
  [v2 cancelAskToShareFromAppexRequestForClientID:*(a1 + 40)];
}

void sub_1E0CC8428(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = [*(a1 + 32) response];

    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) response];
    (v6)[2](v6, v10, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v6 setObject:v7 forKeyedSubscript:@"Result"];

    v8 = [*(a1 + 32) response];

    if (v8)
    {
      v9 = [*(a1 + 32) response];
      v9[2](v9, 0, v6);
    }
  }

LABEL_7:
}

void sub_1E0CC8790(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiNetworkSharingManager];
  [v2 cancelAskToShareFromAppRequestForClientID:*(a1 + 40)];
}

void sub_1E0CC87E4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = [*(a1 + 32) response];

    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) response];
    (v6)[2](v6, v10, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v6 setObject:v7 forKeyedSubscript:@"Result"];

    v8 = [*(a1 + 32) response];

    if (v8)
    {
      v9 = [*(a1 + 32) response];
      v9[2](v9, 0, v6);
    }
  }

LABEL_7:
}

void sub_1E0CC8F30(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiNetworkSharingManager];
  [v2 cancelAuthorizationRequestForClientID:*(a1 + 40)];
}

void sub_1E0CC8F84(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 32) response];

    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) response];
    (v7)[2](v7, v10, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v5 forKeyedSubscript:@"Result"];
    v8 = [*(a1 + 32) response];

    if (v8)
    {
      v9 = [*(a1 + 32) response];
      v9[2](v9, 0, v7);
    }
  }

LABEL_7:
}

uint64_t sub_1E0CC93AC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E3868 = result;
  return result;
}

void *sub_1E0CC9420(void *a1)
{
  v6 = 0;
  v2 = sub_1E0BCE1A8(&v6);
  if (!v2)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CaptiveNetworkLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"CWFXPCRequestProxy.m" lineNumber:72 description:{@"%s", v6}];

    __break(1u);
    goto LABEL_5;
  }

  v3 = v2;
  v4 = v6;
  if (v6)
  {
LABEL_5:
    free(v4);
  }

  result = dlsym(v3, "CNForgetSSID");
  *(*(a1[4] + 8) + 24) = result;
  off_1ECE86980 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1E0CC9500(uint64_t a1)
{
  if (!qword_1ECE86988)
  {
    qword_1ECE86988 = _sl_dlopen();
  }

  return qword_1ECE86988;
}

uint64_t sub_1E0CC95D0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE86988 = result;
  return result;
}

void sub_1E0CC9644(void *a1)
{
  v6 = 0;
  if (sub_1E0CC9500(&v6))
  {
    v2 = v6;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:a1 file:@"CWFXPCRequestProxy.m" lineNumber:82 description:{@"%s", v6}];

    __break(1u);
  }

  free(v2);
LABEL_3:
  *(*(a1[4] + 8) + 24) = objc_getClass("LSApplicationProxy");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ECE86990 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLSApplicationProxyClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFXPCRequestProxy.m" lineNumber:83 description:{@"Unable to find class %s", "LSApplicationProxy"}];

    __break(1u);
  }
}

id sub_1E0CC9E44()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE81AA8;
  v6 = qword_1ECE81AA8;
  if (!qword_1ECE81AA8)
  {
    sub_1E0CD2F60(0);
    v4[3] = objc_getClass("RPCompanionLinkClient");
    qword_1ECE81AA8 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0CC9F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CC9FEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __startMonitoringCloudKeychainSyncStateEvents];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CCA084;
  v5[3] = &unk_1E86E84C0;
  v5[4] = v3;
  [v4 activateWithCompletion:v5];
  objc_autoreleasePoolPop(v2);
}

void sub_1E0CCA084(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [nearbysync] Rapport discovery client activation complete (error=%{public}@)", &v14, 12);
  }

  [*(a1 + 32) setActivated:1];
  v7 = [*(a1 + 32) associationState];
  v8 = *(a1 + 32);
  if (v7 == 2)
  {
    v9 = [v8 nearbySyncNetwork];
    if ([v9 isNearbySyncable])
    {
    }

    else
    {
      v10 = [*(a1 + 32) nearbySyncNetwork];
      v11 = [v10 isNearbyRecommendable];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    [*(a1 + 32) __sendAutoJoinAssistRequestToAllNearbyDevices];
LABEL_13:
    v12 = [*(a1 + 32) nearbySyncNetwork];
    v13 = [v12 isNearbyBrokenBackhaulStateSyncable];

    if (v13)
    {
      [*(a1 + 32) __sendBrokenBackhaulRestoreEventToAllNearbyDevices];
    }

    goto LABEL_15;
  }

  if ([v8 associationState] == 1)
  {
    [*(a1 + 32) __sendNeedsConnectivityRequestToAllNearbyDevices];
  }

LABEL_15:
}

void sub_1E0CCA2D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __stopMonitoringCloudKeychainSyncStateEvents];
  [*(a1 + 32) setAllowNearbySyncableNetworkHandler:0];
  [*(*(a1 + 32) + 16) invalidate];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CCA5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CCA5FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) allowNearbySyncableNetworkHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) allowNearbySyncableNetworkHandler];
    v5 = [*(a1 + 40) knownNetworkProfile];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CCA740;
    v9[3] = &unk_1E86E63A8;
    v11 = *(a1 + 64);
    v8 = *(a1 + 48);
    v6 = v8;
    v10 = v8;
    (v4)[2](v4, v5, v9);
  }

  else
  {
    v7 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v7, 1u);
    if (!v7)
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0CCA740(void *result, char a2)
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

void sub_1E0CCA9DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E0CCA9FC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 description];
    v7 = [v6 redactedForWiFi];
    v8 = 138543362;
    v9 = v7;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 16, "[corewifi] [nearbysync] Rapport device lost (%{public}@)", &v8, 12);
  }
}

void sub_1E0CCAB14()
{
  v0 = CWFGetOSLog();
  if (v0)
  {
    v1 = CWFGetOSLog();
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v1, 16, "[corewifi] [nearbysync] Rapport client invalidated", v3, 2);
  }
}

void sub_1E0CCABBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 description];
    v14 = [v13 redactedSensitiveContentForWiFi];
    v15 = [v8 description];
    v16 = [v15 redactedSensitiveContentForWiFi];
    v17 = 138543874;
    v18 = @"com.apple.corewifi.auto-join-assist";
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v16;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] Rapport request received (id=%{public}@, req=%{public}@, options=%{public}@)", &v17, 32);
  }

  [*(a1 + 32) __respondToAutoJoinAssistRequest:v7 options:v8 responseHandler:v9];
}

void sub_1E0CCAD64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 description];
    v14 = [v13 redactedSensitiveContentForWiFi];
    v15 = [v8 description];
    v16 = [v15 redactedSensitiveContentForWiFi];
    v17 = 138543874;
    v18 = @"com.apple.corewifi.needs-connectivity";
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v16;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] Rapport request received (id=%{public}@, req=%{public}@, options=%{public}@)", &v17, 32);
  }

  [*(a1 + 32) __respondToNeedsConnectivityRequest:v7 options:v8 responseHandler:v9];
}

void sub_1E0CCAF0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 description];
    v14 = [v13 redactedSensitiveContentForWiFi];
    v15 = [v8 description];
    v16 = [v15 redactedSensitiveContentForWiFi];
    v17 = 138543874;
    v18 = @"com.apple.corewifi.bbh-confirm";
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v16;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] Rapport request received (id=%{public}@, req=%{public}@, options=%{public}@)", &v17, 32);
  }

  [*(a1 + 32) __respondToConfirmBrokenBackhaulRequest:v7 options:v8 responseHandler:v9];
}

void sub_1E0CCB0B4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 description];
    v11 = [v10 redactedSensitiveContentForWiFi];
    v12 = [v6 description];
    v13 = [v12 redactedSensitiveContentForWiFi];
    v14 = 138543874;
    v15 = @"com.apple.corewifi.bbh-restore";
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v13;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] [nearbysync] Rapport event received (id=%{public}@, event=%{public}@, options=%{public}@)", &v14, 32);
  }

  [*(a1 + 32) __handleBrokenBackhaulRestoreEvent:v5 options:v6];
}

void sub_1E0CCB88C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1ECE86998;
  v9 = qword_1ECE86998;
  if (!qword_1ECE86998)
  {
    v1 = sub_1E0CD30F4();
    v7[3] = dlsym(v1, "RPOptionStatusFlags");
    qword_1ECE86998 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRPOptionStatusFlags(void)"];
    [v4 handleFailureInFunction:v5 file:@"CWFNearbySyncManager.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0CCB9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CCB9F0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1ECE869A0;
  v9 = qword_1ECE869A0;
  if (!qword_1ECE869A0)
  {
    v1 = sub_1E0CD30F4();
    v7[3] = dlsym(v1, "RPOptionSenderID");
    qword_1ECE869A0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRPOptionSenderID(void)"];
    [v4 handleFailureInFunction:v5 file:@"CWFNearbySyncManager.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0CCBB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CCBB54()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1ECE869A8;
  v9 = qword_1ECE869A8;
  if (!qword_1ECE869A8)
  {
    v1 = sub_1E0CD30F4();
    v7[3] = dlsym(v1, "RPOptionSenderDeviceName");
    qword_1ECE869A8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRPOptionSenderDeviceName(void)"];
    [v4 handleFailureInFunction:v5 file:@"CWFNearbySyncManager.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0CCBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CCBCB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) autoJoinAssistEventHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) autoJoinAssistEventHandler];
    v4[2](v4, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CCBDAC(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1ED7E39F0;
  v9 = off_1ED7E39F0;
  if (!off_1ED7E39F0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E0CD3244;
    v5[3] = &unk_1E86E5600;
    v5[4] = &v6;
    sub_1E0CD3244(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"GestaltDeviceClass SOFT_GestaltProductTypeStringToDeviceClass(NSString *__strong)"];
    [v3 handleFailureInFunction:v4 file:@"CWFNearbySyncManager.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0CCBEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CCC54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0CCC574(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CCC650;
  v5[3] = &unk_1E86E8828;
  v3 = a1[4];
  v6 = a1[5];
  v7 = a1[4];
  v8 = a1[6];
  v9 = WeakRetained;
  v4 = WeakRetained;
  [v3 activateWithCompletion:v5];
}

void sub_1E0CCC650(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [nearbysync/bbh] Rapport connection client activation complete (device=%{public}@, error=%{public}@)", &v13, 22);
  }

  if (v3)
  {
    [*(a1 + 56) decrementCompletionCounter];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) externalForm];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0CCC804;
    v10[3] = &unk_1E86E6690;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    [v8 sendEventID:@"com.apple.corewifi.bbh-restore" event:v9 options:0 completion:v10];
  }
}

void sub_1E0CCC804(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = @"com.apple.corewifi.bbh-restore";
    v9 = 2114;
    v10 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [nearbysync/bbh] [RPCompanionLinkClient sendEventID:event:options:completion:] complete (id=%{public}@, error=%{public}@)", &v7, 22);
  }

  [*(a1 + 32) invalidate];
  [*(a1 + 40) decrementCompletionCounter];
}

void sub_1E0CCCAE8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = *(a1 + 40);
  if ((v5 - [a3 unsignedLongLongValue]) >= 0x6FC23AC01)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_1E0CCD5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0CCD5FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CCD710;
  v10[3] = &unk_1E86E88C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = *(a1 + 80);
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v6;
  v8 = *(a1 + 64);
  v13 = WeakRetained;
  v14 = v8;
  v9 = WeakRetained;
  [v3 activateWithCompletion:v10];
}

void sub_1E0CCD710(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v21 = 138543618;
    v22 = v7;
    v23 = 2114;
    v24 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [nearbysync/bbh] Rapport connection client activation complete (device=%{public}@, error=%{public}@)", &v21, 22);
  }

  if (v3)
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      (*(v8 + 16))(v8, v3, 0);
    }

    [*(a1 + 64) decrementCompletionCounter];
  }

  else
  {
    v19[0] = @"Network";
    v9 = [*(a1 + 40) externalForm];
    v20[0] = v9;
    v19[1] = @"Timeout";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    v20[1] = v10;
    v19[2] = @"Count";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
    v20[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0CCD9A0;
    v14[3] = &unk_1E86E88A0;
    v13 = *(a1 + 48);
    v14[4] = *(a1 + 56);
    v15 = *(a1 + 32);
    v18 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    [v13 sendRequestID:@"com.apple.corewifi.bbh-confirm" request:v12 options:0 responseHandler:v14];
  }
}

void sub_1E0CCD9A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 description];
    v14 = [v13 redactedSensitiveContentForWiFi];
    v15 = [v8 description];
    v16 = [v15 redactedSensitiveContentForWiFi];
    v27 = 138544130;
    v28 = @"com.apple.corewifi.bbh-confirm";
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v16;
    v33 = 2114;
    v34 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync/bbh] [RPCompanionLinkClient sendRequestID:request:options:completion:] complete (id=%{public}@, resp=%{public}@, options=%{public}@, error=%{public}@)", &v27, 42);
  }

  v17 = [v7 objectForKeyedSubscript:@"State"];
  v18 = [v17 integerValue];

  v19 = *(a1 + 32);
  objc_sync_enter(v19);
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC)];
  v21 = *(*(a1 + 32) + 64);
  v22 = [*(a1 + 40) identifier];
  [v21 setObject:v20 forKeyedSubscript:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
  v24 = *(*(a1 + 32) + 56);
  v25 = [*(a1 + 40) identifier];
  [v24 setObject:v23 forKeyedSubscript:v25];

  objc_sync_exit(v19);
  v26 = *(a1 + 64);
  if (v26)
  {
    (*(v26 + 16))(v26, v9, v18);
  }

  [*(a1 + 48) invalidate];
  [*(a1 + 56) decrementCompletionCounter];
}

void sub_1E0CCDF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CCDF3C(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v14 = *(a1 + 80);
      v13 = *(a1 + 88);
      v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v16 = *(a1 + 96);
      v17 = [*(a1 + 40) description];
      v18 = [v17 redactedForWiFi];
      v19 = 138544386;
      v20 = v12;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = (v15 - v16) / 0xF4240;
      v27 = 2114;
      v28 = v18;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 16, "[corewifi] [nearbysync/bbh] FAILED to perform probe to remote endpoint (network=%{public}@, timeout=%lu, count=%lu, maxAge=%llums) on nearby device (%{public}@)", &v19, 52);
    }
  }

  else
  {
    v8 = *(a1 + 48);
    objc_sync_enter(v8);
    v9 = *(*(a1 + 72) + 8);
    if (*(v9 + 24) != 1)
    {
      if (a3 == 3)
      {
        *(v9 + 24) = 3;
      }

      else if (a3 == 1)
      {
        *(v9 + 24) = 1;
        v10 = *(a1 + 64);
        if (v10)
        {
          (*(v10 + 16))(v10, 0, *(*(*(a1 + 72) + 8) + 24));
        }
      }
    }

    objc_sync_exit(v8);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1E0CCE174(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(v2 + 16))(v2, 0);
    }
  }

  [*(a1 + 32) __purgeBBHCache];
  objc_sync_exit(obj);
}

void sub_1E0CCE6C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) confirmBrokenBackhaulHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmBrokenBackhaulHandler];
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0CCE7B0;
    v8[3] = &unk_1E86E7B28;
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    (v4)[2](v4, v7, v5, v6, v8);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CCE7B0(uint64_t a1, void *a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      (*(v7 + 16))(v7, 0, 0, v5);
    }

    else
    {
      v10 = @"State";
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v11[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      (*(v7 + 16))(v7, v9, 0, 0);
    }
  }
}

void sub_1E0CCED0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) restoredBackhaulEventHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) restoredBackhaulEventHandler];
    v4[2](v4, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CCFA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0CCFAC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CCFBC0;
  v10[3] = &unk_1E86E89B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v6;
  v8 = *(a1 + 72);
  v13 = WeakRetained;
  v14 = v8;
  v9 = WeakRetained;
  [v3 activateWithCompletion:v10];
}

void sub_1E0CCFBC0(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v21 = 138543618;
    v22 = v7;
    v23 = 2114;
    v24 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [nearbysync] Rapport connection client activation complete (device=%{public}@, error=%{public}@)", &v21, 22);
  }

  if (v3)
  {
    [*(a1 + 64) decrementCompletionCounter];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) externalForm];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CCFDC4;
    v16[3] = &unk_1E86E8990;
    v15 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v20 = *(a1 + 72);
    v12 = *(a1 + 40);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v15;
    *(&v14 + 1) = v10;
    v17 = v14;
    v18 = v13;
    v19 = *(a1 + 64);
    [v8 sendRequestID:@"com.apple.corewifi.auto-join-assist" request:v9 options:0 responseHandler:v16];
  }
}

void sub_1E0CCFDC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 description];
    v14 = [v13 redactedSensitiveContentForWiFi];
    v15 = [v8 description];
    v16 = [v15 redactedSensitiveContentForWiFi];
    v34 = 138544130;
    v35 = @"com.apple.corewifi.auto-join-assist";
    v36 = 2114;
    v37 = v14;
    v38 = 2114;
    v39 = v16;
    v40 = 2114;
    v41 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] [RPCompanionLinkClient sendRequestID:request:options:completion:] complete (id=%{public}@, resp=%{public}@, options=%{public}@, error=%{public}@)", &v34, 42);
  }

  if (!v9)
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = [*(a1 + 48) knownNetworkProfile];
    [v21 __updateNearbyNetworkSyncRequestTimestampForDevice:v22 network:v23];
LABEL_21:

    goto LABEL_22;
  }

  v17 = *(a1 + 72);
  v18 = CWFGetOSLog();
  v19 = v18;
  if (v17 > 4)
  {
    if (v18)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = [*(a1 + 40) description];
      v30 = [v29 redactedForWiFi];
      v34 = 138543874;
      v35 = @"com.apple.corewifi.auto-join-assist";
      v36 = 2114;
      v37 = v30;
      v38 = 1024;
      LODWORD(v39) = 5;
      LODWORD(v33) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] [nearbysync] Failed to send %{public}@ to nearby device (%{public}@) after %d retries", &v34, v33);
    }

    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    v23 = [*(a1 + 48) knownNetworkProfile];
    [v31 __updateFailedNearbyNetworkSyncRequestTimestampForDevice:v32 network:v23];
    goto LABEL_21;
  }

  if (v18)
  {
    v20 = CWFGetOSLog();
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v26 = [*(a1 + 40) description];
    v27 = [v26 redactedForWiFi];
    v34 = 138543618;
    v35 = @"com.apple.corewifi.auto-join-assist";
    v36 = 2114;
    v37 = v27;
    LODWORD(v33) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] [nearbysync] Failed to send %{public}@ to nearby device (%{public}@), retrying", &v34, v33);
  }

  [*(a1 + 32) __sendAutoJoinAssistRequestToNearbyDevice:*(a1 + 40) retryCount:*(a1 + 72) + 1];
LABEL_22:
  [*(a1 + 56) invalidate];
  [*(a1 + 64) decrementCompletionCounter];
}

void sub_1E0CD0E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0CD0E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0CD0F14;
  v8[3] = &unk_1E86E8A30;
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = *(a1 + 64);
  v12 = WeakRetained;
  v13 = v6;
  v7 = WeakRetained;
  [v3 activateWithCompletion:v8];
}

void sub_1E0CD0F14(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v19 = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v3;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [nearbysync] Rapport connection client activation complete (device=%{public}@, error=%{public}@)", &v19, 22);
  }

  if (v3)
  {
    [*(a1 + 56) decrementCompletionCounter];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CD10F8;
    v15[3] = &unk_1E86E8A08;
    v8 = *(a1 + 40);
    v14 = *(a1 + 48);
    v9 = *(a1 + 32);
    v18 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v14;
    *(&v13 + 1) = v9;
    v16 = v13;
    v17 = v12;
    [v8 sendRequestID:@"com.apple.corewifi.needs-connectivity" request:MEMORY[0x1E695E0F8] options:0 responseHandler:v15];
  }
}

void sub_1E0CD10F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 description];
    v14 = [v13 redactedSensitiveContentForWiFi];
    v15 = [v8 description];
    v16 = [v15 redactedSensitiveContentForWiFi];
    v29 = 138544130;
    v30 = @"com.apple.corewifi.needs-connectivity";
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v16;
    v35 = 2114;
    v36 = v9;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] [RPCompanionLinkClient sendRequestID:request:options:completion:] complete (id=%{public}@, resp=%{public}@, options=%{public}@, error=%{public}@)", &v29, 42);
  }

  if (v9)
  {
    v17 = *(a1 + 64);
    v18 = CWFGetOSLog();
    v19 = v18;
    if (v17 > 4)
    {
      if (v18)
      {
        v21 = CWFGetOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(a1 + 40) description];
        v27 = [v26 redactedForWiFi];
        v29 = 138543874;
        v30 = @"com.apple.corewifi.needs-connectivity";
        v31 = 2114;
        v32 = v27;
        v33 = 1024;
        LODWORD(v34) = 5;
        LODWORD(v28) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] [nearbysync] Failed to send %{public}@ to nearby device (%{public}@) after %d retries", &v29, v28);
      }

      [*(a1 + 32) __updateFailedNearbyNetworkSyncRequestTimestampForDevice:*(a1 + 40) network:0];
    }

    else
    {
      if (v18)
      {
        v20 = CWFGetOSLog();
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = [*(a1 + 40) description];
        v24 = [v23 redactedForWiFi];
        v29 = 138543618;
        v30 = @"com.apple.corewifi.needs-connectivity";
        v31 = 2114;
        v32 = v24;
        LODWORD(v28) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] [nearbysync] Failed to send %{public}@ to nearby device (%{public}@), retrying", &v29, v28);
      }

      [*(a1 + 32) __sendNeedsConnectivityRequestToNearbyDevice:*(a1 + 40) retryCount:*(a1 + 64) + 1];
    }
  }

  else
  {
    [*(a1 + 32) __handleAutoJoinAssistPayload:v7 options:v8];
    [*(a1 + 32) __updateNearbyNetworkSyncRequestTimestampForDevice:*(a1 + 40) network:0];
  }

  [*(a1 + 48) invalidate];
  [*(a1 + 56) decrementCompletionCounter];
}

void sub_1E0CD1E74(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [v3 __sendAutoJoinAssistRequestToAllNearbyDevices];
  }

  else
  {
    [v3 __sendNeedsConnectivityRequestToAllNearbyDevices];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CD1EC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __sendBrokenBackhaulRestoreEventToAllNearbyDevices];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CD2364(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v10 = v9;

  v11 = -v10;
  if (v8 >= 0.0)
  {
    v11 = v10;
  }

  if (v11 > *(a1 + 48))
  {
    [*(a1 + 40) addObject:v12];
  }
}

void sub_1E0CD25F8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v10 = v9;

  v11 = -v10;
  if (v8 >= 0.0)
  {
    v11 = v10;
  }

  if (v11 > *(a1 + 48))
  {
    [*(a1 + 40) addObject:v12];
  }
}

uint64_t sub_1E0CD2C40(uint64_t a1)
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 0, "[corewifi] [nearbysync] Received cloud keychain sync state change event", v6, 2);
  }

  return [*(a1 + 32) __checkCloudKeychainSyncState];
}

Class sub_1E0CD2F0C(uint64_t a1)
{
  sub_1E0CD2F60(0);
  result = objc_getClass("RPCompanionLinkClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE81AA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0CD2F60(uint64_t a1)
{
  if (!qword_1ECE81AD8)
  {
    qword_1ECE81AD8 = _sl_dlopen();
  }

  return qword_1ECE81AD8;
}

uint64_t sub_1E0CD3030(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE81AD8 = result;
  return result;
}

void *sub_1E0CD30A4(uint64_t a1)
{
  v2 = sub_1E0CD30F4();
  result = dlsym(v2, "RPOptionStatusFlags");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0CD30F4()
{
  v5 = 0;
  v0 = sub_1E0CD2F60(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RapportLibrary(void)"];
    [v1 handleFailureInFunction:v4 file:@"CWFNearbySyncManager.m" lineNumber:38 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

void *sub_1E0CD31A4(uint64_t a1)
{
  v2 = sub_1E0CD30F4();
  result = dlsym(v2, "RPOptionSenderID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE869A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0CD31F4(uint64_t a1)
{
  v2 = sub_1E0CD30F4();
  result = dlsym(v2, "RPOptionSenderDeviceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE869A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0CD3244(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED7E39F8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1E0CD33C8;
    v5[4] = &unk_1E86E55D8;
    v5[5] = v5;
    v6 = xmmword_1E86E8AB8;
    v7 = 0;
    qword_1ED7E39F8 = _sl_dlopen();
  }

  v2 = qword_1ED7E39F8;
  if (!qword_1ED7E39F8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreUtilsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CWFNearbySyncManager.m" lineNumber:47 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "GestaltProductTypeStringToDeviceClass");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED7E39F0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1E0CD33C8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E39F8 = result;
  return result;
}

void sub_1E0CD5ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CD5F08(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) set_serviceRegistrationError:v3];
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) localizedDescription];
      v8 = 138543618;
      v9 = v7;
      v10 = 2048;
      v11 = [v3 code];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 16, "[corewifi] CWFHomeManager failed to register for charateristic notification %{public}@[%ld]", &v8, 22);
    }
  }

  dispatch_group_leave(*(*(*(a1 + 48) + 8) + 40));
}

void sub_1E0CD6048(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _accessory];
    v6 = [*(a1 + 32) _serviceRegistrationError];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 0, "[corewifi] Registered for service notification %{public}@ with error %{public}@", &v10, 22);
  }

  if ([*(a1 + 32) _attempt] <= 2 && (objc_msgSend(*(a1 + 32), "_serviceRegistrationError"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [*(a1 + 32) set_serviceRegistrationError:0];
    [*(a1 + 32) set_attempt:{objc_msgSend(*(a1 + 32), "_attempt") + 1}];
    [*(a1 + 32) registerForPrimaryServiceNotificationWith:*(a1 + 40)];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) _serviceRegistrationError];
    (*(v8 + 16))(v8, v9);
  }
}

void sub_1E0CD65B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CD65EC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) set_serviceRegistrationError:v3];
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) localizedDescription];
      v8 = 138543618;
      v9 = v7;
      v10 = 2048;
      v11 = [v3 code];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 16, "[corewifi] CWFHomeManager failed to register for characteristic notification %{public}@[%ld]", &v8, 22);
    }
  }

  dispatch_group_leave(*(*(*(a1 + 48) + 8) + 40));
}

void sub_1E0CD672C(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessory];
  [v2 setDelegate:0];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) _serviceRegistrationError];
  (*(v3 + 16))(v3, v4);
}

void sub_1E0CD6A70(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if ([a1[4] isPrimaryService])
  {
    v28 = [a1[5] properties];
    v2 = off_1ED7E3810();
    if ([v28 containsObject:v2])
    {
      v3 = [a1[5] properties];
      v4 = off_1ED7E3808();
      v5 = [v3 containsObject:v4];

      if (v5)
      {
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
          v9 = [a1[5] localizedDescription];
          v10 = [a1[5] value];
          v31 = 138543618;
          v32 = v9;
          v33 = 2114;
          v34 = v10;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] Trigger sensing for activity %{public}@ with value %{public}@", &v31, 22);
        }

        v11 = [a1[6] _sensingParams];
        v12 = [v11 mutableCopy];

        v13 = [a1[5] localizedDescription];

        if (v13)
        {
          v14 = [a1[5] localizedDescription];
          v30 = v14;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          [v12 setObject:v15 forKeyedSubscript:@"SENSING_PARAMS_ACTIVITY_LABELS"];
        }

        else
        {
          [v12 setObject:&unk_1F5BB9CE8 forKeyedSubscript:@"SENSING_PARAMS_ACTIVITY_LABELS"];
        }

        v16 = [a1[5] value];

        if (v16)
        {
          v17 = [a1[5] value];
          v29 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          [v12 setObject:v18 forKeyedSubscript:@"SENSING_PARAMS_ACTIVITY_VALUE"];
        }

        else
        {
          [v12 setObject:&unk_1F5BB9D00 forKeyedSubscript:@"SENSING_PARAMS_ACTIVITY_VALUE"];
        }

        v19 = [a1[7] uniqueIdentifier];
        v20 = [v19 UUIDString];
        [v12 setObject:v20 forKeyedSubscript:@"SENSING_PARAMS_COMMENT"];

        v21 = [a1[7] room];
        v22 = [v21 name];
        [v12 setObject:v22 forKeyedSubscript:@"SENSING_PARAMS_PLACE_LABELS"];

        [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SENSING_PARAMS_SUBMIT_METRIC"];
        v23 = [a1[6] _delegate];
        v24 = [v23 performSensingFor:v12];

        if (v24)
        {
          v25 = CWFGetOSLog();
          if (v25)
          {
            v26 = CWFGetOSLog();
          }

          else
          {
            v26 = MEMORY[0x1E69E9C10];
            v27 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 67109120;
            LODWORD(v32) = v24;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v26, 0, "[corewifi] sensing trigger failed with error %d", &v31);
          }
        }
      }
    }

    else
    {
    }
  }
}

id sub_1E0CD6FA0()
{
  if (qword_1ECE869C8 != -1)
  {
    dispatch_once(&qword_1ECE869C8, &unk_1F5B89BF0);
  }

  v1 = qword_1ECE869C0;

  return v1;
}

void sub_1E0CD6FF4()
{
  v0 = sub_1E0CD7040();
  v1 = dlsym(v0, "HMCharacteristicPropertySupportsEventNotification");
  if (v1)
  {
    objc_storeStrong(&qword_1ECE869C0, *v1);
  }

  off_1ED7E3808 = sub_1E0CD7194;
}

void *sub_1E0CD7040()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ECE869B0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1E0CD71A0;
    v4[4] = &unk_1E86E55D8;
    v4[5] = v4;
    v5 = xmmword_1E86E8AF8;
    v6 = 0;
    qword_1ECE869B0 = _sl_dlopen();
  }

  v0 = qword_1ECE869B0;
  if (!qword_1ECE869B0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HomeKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CWFSensingHMADataCollector.m" lineNumber:30 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1E0CD71A0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE869B0 = result;
  return result;
}

id sub_1E0CD7214()
{
  if (qword_1ECE869D0 != -1)
  {
    dispatch_once(&qword_1ECE869D0, &unk_1F5B89610);
  }

  v1 = qword_1ECE869B8;

  return v1;
}

void sub_1E0CD7268()
{
  v0 = sub_1E0CD7040();
  v1 = dlsym(v0, "HMCharacteristicPropertyReadable");
  if (v1)
  {
    objc_storeStrong(&qword_1ECE869B8, *v1);
  }

  off_1ED7E3810 = sub_1E0CD72B4;
}

uint64_t sub_1E0CD79D8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 stringByDeletingLastPathComponent];
  v6 = [v5 pathComponents];
  v7 = [v6 count];

  v8 = [v4 stringByDeletingLastPathComponent];

  v9 = [v8 pathComponents];
  v10 = [v9 count];

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

void sub_1E0CD8790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0CD88D0(uint64_t a1)
{
  if (!qword_1ECE81B20)
  {
    qword_1ECE81B20 = _sl_dlopen();
  }

  return qword_1ECE81B20;
}

uint64_t sub_1E0CD89A0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE81B20 = result;
  return result;
}

void sub_1E0CD8A14(void *a1)
{
  v6 = 0;
  if (sub_1E0CD88D0(&v6))
  {
    v2 = v6;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull SharingLibrary(void)"];
    [v3 handleFailureInFunction:a1 file:@"CWFAssocParameters.m" lineNumber:21 description:{@"%s", v6}];

    __break(1u);
  }

  free(v2);
LABEL_3:
  *(*(a1[4] + 8) + 24) = objc_getClass("SFRemoteHotspotDevice");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ECE81B10 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getSFRemoteHotspotDeviceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFAssocParameters.m" lineNumber:22 description:{@"Unable to find class %s", "SFRemoteHotspotDevice"}];

    __break(1u);
  }
}

void sub_1E0CD8DD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E0CD8DEC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD8EB4;
  block[3] = &unk_1E86E8C10;
  v13 = a3;
  v11 = v5;
  v12 = WeakRetained;
  v8 = WeakRetained;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_1E0CD8EB4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
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
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] [cloudsync] Received cloud KVS change event (keys=%@)", &v7, 12);
    }

    [*(a1 + 40) __handleCloudKVSChangedKeys:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CD9154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1E0CD917C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 8) dictionaryRepresentation];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[5] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CD9390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1E0CD93B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __cloudNetworkProfiles];
  v4 = [v3 allObjects];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v7, 1u);
  if (!v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CD94FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) activate];
  [*(a1 + 32) __startMonitoringCloudKeychainSyncStateEvents];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CD95EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setAllowCloudSyncableNetworkHandler:0];
  [*(a1 + 32) setFetchAllLocalNetworksHandler:0];
  [*(a1 + 32) setHasKeychainPasswordHandler:0];
  [*(a1 + 32) setRememberLocalNetworkHandler:0];
  [*(a1 + 32) setForgetLocalNetworkHandler:0];
  [*(*(a1 + 32) + 8) invalidate];
  [*(a1 + 32) __stopMonitoringCloudKeychainSyncStateEvents];
  [*(a1 + 32) __stopMonitoringKeychainChangeEvents];
  v3 = *(*(a1 + 32) + 32);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CDA0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CDA10C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 __updateCloudNetwork:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = 0;
  *(*(a1[7] + 8) + 24) = v6;
  atomic_compare_exchange_strong((*(a1[9] + 8) + 24), &v7, 1u);
  if (!v7)
  {
    (*(a1[6] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CDA3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CDA414(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 __updateCloudNetwork:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = 0;
  *(*(a1[7] + 8) + 24) = v6;
  atomic_compare_exchange_strong((*(a1[9] + 8) + 24), &v7, 1u);
  if (!v7)
  {
    (*(a1[6] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0CDA9D0(uint64_t a1)
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 0, "[corewifi] [cloudsync] Received cloud keychain sync state change event", v6, 2);
  }

  return [*(a1 + 32) __checkCloudKeychainSyncState];
}

void sub_1E0CDAEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CDAEF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) hasKeychainPasswordHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) hasKeychainPasswordHandler];
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v7 = *(a1 + 48);
    v10 = *(a1 + 64);
    v8[2] = sub_1E0CDAFE8;
    v8[3] = &unk_1E86E7AD8;
    v6 = v7;
    v9 = v7;
    (v4)[2](v4, v5, v8);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CDAFE8(void *a1, void *a2, char a3)
{
  v7 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v6 = 0;
  *(*(a1[6] + 8) + 24) = a3;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v6, 1u);
  if (!v6)
  {
    (*(a1[4] + 16))();
  }
}

uint64_t sub_1E0CDB8BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = *(*(a1 + 32) + 64);
  v11 = [v6 identifier];

  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 unsignedIntegerValue];

  v14 = 1;
  if (v9 <= v13)
  {
    v14 = -1;
  }

  if (v9 == v13)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_1E0CDB984(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastJoinedOnAnyDeviceAt];
  v6 = [v4 lastJoinedOnAnyDeviceAt];

  if (v5 && v6)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

void sub_1E0CDBA10(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) rememberLocalNetworkHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) rememberLocalNetworkHandler];
    v5 = [*(a1 + 40) filteredCloudNetworkProfile];
    (v4)[2](v4, v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1E0CDBC80(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastJoinedOnAnyDeviceAt];
  v6 = [v4 lastJoinedOnAnyDeviceAt];

  if (v5 && v6)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

uint64_t sub_1E0CDBE60(uint64_t a1)
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 0, "[corewifi] [cloudsync] Received keychain change event", v6, 2);
  }

  return [*(a1 + 32) __handleKeychainChangeEvent];
}

void sub_1E0CDC134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CDC15C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) allowCloudSyncableNetworkHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) allowCloudSyncableNetworkHandler];
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CDC290;
    v9[3] = &unk_1E86E63A8;
    v11 = *(a1 + 64);
    v8 = *(a1 + 48);
    v6 = v8;
    v10 = v8;
    (v4)[2](v4, v5, v9);
  }

  else
  {
    v7 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v7, 1u);
    if (!v7)
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0CDC290(void *result, char a2)
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

void sub_1E0CDC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CDC504(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) fetchAllLocalNetworksHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) fetchAllLocalNetworksHandler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0CDC624;
    v8[3] = &unk_1E86E8CB0;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v5 = v7;
    v9 = v7;
    (v4)[2](v4, v8);
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v6, 1u);
    if (!v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CDC624(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  v7 = 0;
  atomic_compare_exchange_strong((*(a1[7] + 8) + 24), &v7, 1u);
  if (!v7)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0CDD478(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) forgetLocalNetworkHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) forgetLocalNetworkHandler];
    v5 = [*(a1 + 40) filteredCloudNetworkProfile];
    (v4)[2](v4, v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0CDF460(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = CWFGetOSLog();
    if (v2)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]_block_invoke";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s DenyList has been updated", &v5, 12);
    }
  }
}

void sub_1E0CE0684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CE06AC(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
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

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        v15 = 136446466;
        v16 = "[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:]_block_invoke";
        v17 = 2048;
        v18 = v9;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 16, "[corewifi] %{public}s DenyListTrigger %lu ignored as device connected to external power supply", &v15, 22);
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    if (a4 >= 0x51 && *(a1 + 40) == 2)
    {
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        v15 = 136446722;
        v16 = "[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:]_block_invoke";
        v17 = 2048;
        v18 = v13;
        v19 = 1024;
        v20 = a4;
        LODWORD(v14) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s DenyListTrigger %lu ignored as battery level is %d", &v15, v14);
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

void sub_1E0CE158C(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = CWFGetOSLog();
    if (v2)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]_block_invoke";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s DenyList has been updated", &v5, 12);
    }
  }
}

void sub_1E0CE2758(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = CWFGetOSLog();
    if (v2)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "[CWFNetworkDenyList removeExpiredDenyListedState:]_block_invoke_2";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s DenyList has been updated", &v5, 12);
    }
  }
}

void sub_1E0CE2B14(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = CWFGetOSLog();
    if (v2)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "[CWFNetworkDenyList removeAllDenyListedItems]_block_invoke_2";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s DenyList has been updated", &v5, 12);
    }
  }
}

void sub_1E0CE3DD8(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = CWFGetOSLog();
    if (v2)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]_block_invoke";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s DenyList has been updated", &v5, 12);
    }
  }
}

void sub_1E0CE4304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0CE4340(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    if (a3)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_1E0CE4B9C(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = CWFGetOSLog();
    if (v2)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136446210;
      v6 = "[CWFNetworkDenyList removeAllDenyListEntriesWithNetworkName:]_block_invoke_2";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s DenyList has been updated", &v5, 12);
    }
  }
}

void sub_1E0CE7AC8(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    v24 = 67109120;
    LODWORD(v25) = a2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] CWFPinger: Connection state changed to: %d", &v24);
  }

  switch(a2)
  {
    case 5:
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi] CWFPinger: Connection Cancelled", &v24, 2);
      }

      break;
    case 4:
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v16 = [v5 debugDescription];
        }

        else
        {
          v16 = @"Unknown error";
        }

        v24 = 138412290;
        v25 = v16;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] CWFPinger: Connection failed: %@", &v24, 12);
        if (v5)
        {
        }
      }

      v19 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23 = @"Connection failed";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.CWFPinger" code:-1 userInfo:v20];

      [*(a1 + 32) completePingWithError:v21];
      break;
    case 3:
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] CWFPinger: Connection ready, starting to ping...", &v24, 2);
      }

      [*(a1 + 32) sendPing];
      break;
  }
}

void sub_1E0CE8180(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 debugDescription];
      v13 = 138412290;
      v14 = v7;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] CWFPinger: Send error: %@", &v13, 12);
    }

    v8 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12 = @"Failed to send ping packet";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.CWFPinger" code:-1 userInfo:v9];

    [*(a1 + 32) completePingWithError:v10];
  }

  else
  {
    [*(a1 + 32) receiveReply];
  }
}

void sub_1E0CE83A0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v10 debugDescription];
      v33 = 138412290;
      v34 = v26;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] CWFPinger: Receive error: %@", &v33, 12);
    }
  }

  else
  {
    if (v8)
    {
      size = dispatch_data_get_size(v8);
      if (size >= 0x30)
      {
        v14 = malloc_type_malloc(size, 0xAA4F1E15uLL);
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = sub_1E0CE86CC;
        applier[3] = &unk_1E86E8DE0;
        applier[4] = v14;
        dispatch_data_apply(v8, applier);
        v15 = &v14[*v14 & 0xF];
        if (!*v15)
        {
          v16 = bswap32(*(v15 + 2));
          if ([*(a1 + 32) identifier] == HIWORD(v16))
          {
            v17 = [MEMORY[0x1E695DF00] date];
            [v17 timeIntervalSince1970];
            v19 = v18;

            v20 = (v19 - *(v15 + 28)) * 1000.0;
            v21 = [*(a1 + 32) latencyValues];
            v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
            [v21 addObject:v22];

            v23 = CWFGetOSLog();
            if (v23)
            {
              v24 = CWFGetOSLog();
            }

            else
            {
              v24 = MEMORY[0x1E69E9C10];
              v27 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v28.s_addr = v14[3];
              v29 = inet_ntoa(v28);
              v30 = bswap32(*(v15 + 3));
              v33 = 136315650;
              v34 = v29;
              v35 = 1024;
              v36 = HIWORD(v30);
              v37 = 2048;
              v38 = v20;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 0, "[corewifi] CWFPinger: Reply from %s: seq=%d time=%.2fms", &v33, 28, v31);
            }
          }
        }

        free(v14);
      }
    }

    [*(a1 + 32) sendPing];
  }
}

void sub_1E0CE8840(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v5 = [*(a1 + 40) completion];
    (*(v5 + 2))(v5, 0, *(a1 + 32));
  }

  else
  {
    v2 = MEMORY[0x1E695DEC8];
    v3 = [*(a1 + 40) latencyValues];
    v5 = [v2 arrayWithArray:v3];

    v4 = [*(a1 + 40) completion];
    (v4)[2](v4, v5, 0);
  }
}

void sub_1E0CE8CA8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_loadWeakRetained((a1 + 40));
  objc_sync_enter(v6);
  if (v6[289])
  {
    objc_sync_exit(v6);
  }

  else
  {
    v6[289] = 1;
    objc_sync_exit(v6);

    (*(*(a1 + 32) + 16))();
    [v6 decrementCompletionCounter];
  }
}

void sub_1E0CEA110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEA23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1E0CEA258(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 integerValue];
    *(*(v3[4] + 8) + 24) = result;
  }

  return result;
}

void sub_1E0CEA38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1E0CEA3A8(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 integerValue];
    *(*(v3[4] + 8) + 24) = result;
  }

  return result;
}

void sub_1E0CEA5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEA738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEA754(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEA8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEA918(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEAABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEAAD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEAD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEAF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEB1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEB1FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t sub_1E0CEB438(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_1E0CEB454(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0CEB6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEB6EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t sub_1E0CEB928(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_1E0CEB944(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0CEBB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0CEBD24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1E0CEBD3C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0CEBFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEC000(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEC1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEC1C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEC36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEC388(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEC598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEC5B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEC758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEC774(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0CEC918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0CEC934(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}