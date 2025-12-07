void sub_1001BBF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BBF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _disconnectPluginConnection:*(a1 + 32)];
}

void sub_1001BC024(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BC39C;
    block[3] = &unk_100328EA8;
    v29 = *(a1 + 40);
    v28 = v2;
    dispatch_async(v4, block);

    v5 = v29;
    goto LABEL_20;
  }

  if (!v3[9])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v10 = *(location + 4);
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Requesting plugin connection", location, 12);

      if (!v11)
      {
LABEL_16:

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.sbplugin.requestconnection", 0, 0, 1u);
        v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 16));
        v14 = *(a1 + 32);
        v15 = *(v14 + 72);
        *(v14 + 72) = v13;

        v16 = *(*(a1 + 32) + 72);
        v17 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v16, v17, 0, 0);
        objc_initWeak(location, *(a1 + 32));
        v18 = *(*(a1 + 32) + 72);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1001BC3B0;
        handler[3] = &unk_100328150;
        objc_copyWeak(&v26, location);
        dispatch_source_set_event_handler(v18, handler);
        dispatch_resume(*(*(a1 + 32) + 72));
        objc_destroyWeak(&v26);
        objc_destroyWeak(location);
        v3 = *(a1 + 32);
        goto LABEL_17;
      }

      v9 = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      v24 = v9;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:
  if (!v3[10])
  {
    v19 = objc_alloc_init(NSMutableArray);
    v20 = *(a1 + 32);
    v21 = *(v20 + 80);
    *(v20 + 80) = v19;
  }

  v5 = [*(a1 + 40) copy];
  v22 = *(*(a1 + 32) + 80);
  v23 = objc_retainBlock(v5);
  [v22 addObject:v23];

LABEL_20:
}

void sub_1001BC3B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeoutPluginConnection];
}

void sub_1001BC6B0(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithInteger:*(a1 + 48)];
  [*(*(a1 + 32) + 96) setObject:v2 forKey:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC790;
  block[3] = &unk_1003281A0;
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = *(a1 + 32);
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_1001BC790(void *a1)
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:a1[4] forKey:BKSApplicationStateDisplayIDKey];
  [v3 setObject:a1[5] forKey:BKSApplicationStateKey];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"SpringBoardUtilityApplicationStateChangeNotification" object:a1[6] userInfo:v3];
}

void sub_1001BC8CC(uint64_t a1)
{
  [*(*(a1 + 32) + 96) addEntriesFromDictionary:*(a1 + 40)];
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BC980;
  v6[3] = &unk_100327238;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_1001BC980(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001BCA18;
  v5[3] = &unk_10032B440;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1001BCA18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:v6 forKey:BKSApplicationStateDisplayIDKey];

  [v7 setObject:v5 forKey:BKSApplicationStateKey];
  [*(a1 + 32) postNotificationName:@"SpringBoardUtilityApplicationStateChangeNotification" object:*(a1 + 40) userInfo:v7];
}

id sub_1001BD7EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[SSLogConfig sharedStoreServicesConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      v30 = 138543874;
      v31 = v12;
      v32 = 2114;
      v33 = v13;
      v34 = 2114;
      v35 = v6;
      v14 = v12;
      v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 16, "[%{public}@]: [%{public}@] Error encountered with fetching account: %{public}@", &v30, 32);

      if (!v15)
      {
LABEL_14:

        goto LABEL_28;
      }

      v11 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v16 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v17) = v16 | 2;
  }

  else
  {
    LODWORD(v17) = v16;
  }

  v18 = [v8 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v19 = objc_opt_class();
  v20 = *(a1 + 40);
  v30 = 138543618;
  v31 = v19;
  v32 = 2114;
  v33 = v20;
  v21 = v19;
  v22 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v18, 1, "[%{public}@]: [%{public}@] Account fetching complete for shimmed purchases", &v30, 22);

  if (v22)
  {
    v18 = [NSString stringWithCString:v22 encoding:4];
    free(v22);
    SSFileLog();
LABEL_26:
  }

  [*(a1 + 48) setAccount:v5];
LABEL_28:
  v23 = [AMSPurchaseTask alloc];
  v24 = *(a1 + 48);
  v25 = [*(a1 + 32) bag];
  v26 = [v23 initWithPurchase:v24 bag:v25];

  [v26 setDelegate:*(a1 + 32)];
  v27 = [v26 valueForKey:@"purchaseInfo"];
  [v27 setHasBeenAuthedForBuy:{objc_msgSend(*(a1 + 48), "isPreauthenticated")}];
  v28 = [v26 performPurchase];

  return v28;
}

uint64_t sub_1001BE474(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_100384070;
  qword_100384070 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_1001BE548(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(NSCountedSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  [v2 addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) countForObject:*(a1 + 40)];
  if (result == 1)
  {
    v7 = *(a1 + 32);
    v8 = v7[4];

    return [v7 _sendDownloadKindsUsingNetwork:v8];
  }

  return result;
}

id sub_1001BE670(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    v3 = [result countForObject:*(a1 + 40)];
    result = [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
    if (v3 == 1)
    {
      v4 = *(a1 + 32);
      v5 = v4[4];

      return [v4 _sendDownloadKindsUsingNetwork:v5];
    }
  }

  return result;
}

void sub_1001BE8DC(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 downloadKinds];
        v9 = [v8 intersectsSet:a1[5]];

        if (v9)
        {
          [v7 sendChangeset:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1001BEAEC(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 downloadKinds];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          [v7 sendDownloadStateChangedWithID:a1[7] externalValues:a1[6] propertyValues:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1001BED00(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 downloadKinds];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          [v7 sendDownloadStateChangedWithID:a1[7] externalValues:0 propertyValues:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

BOOL sub_1001BF2D4(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  [(DownloadsTransaction *)v2 deletePersistentDownloadManagerWithClientID:@"com.apple.springboard" persistenceID:@"SSDownloadQueue"];
  v3 = [(DownloadsSession *)v2 pipeline];

  [v3 reconnectWithURLSessionTasks];
  return 1;
}

void sub_1001BF330(id a1)
{
  if (+[DownloadsDatabaseGarbageCollectionOperation garbageCollectionTimerIsExpired])
  {
    v2 = objc_alloc_init(DownloadsDatabaseGarbageCollectionOperation);
    v1 = +[ISOperationQueue mainQueue];
    [v1 addOperation:v2];
  }
}

void sub_1001BF564(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(WorkspaceDownloadObserverClient);
  v4 = [*(a1 + 32) _downloadPersistentIDsFromBundleIDs:*(a1 + 40)];
  if ([v4 count])
  {
    v5 = *(a1 + 32);
    v6 = [v4 allValues];
    [v5 _pauseDownloads:v6 isForced:1 client:v3];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001BF7A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(WorkspaceDownloadObserverClient);
  v4 = [*(a1 + 32) _downloadPersistentIDsFromBundleIDs:*(a1 + 40)];
  if ([v4 count])
  {
    v5 = *(a1 + 32);
    v6 = [v4 allValues];
    v7 = [NSOrderedSet orderedSetWithArray:v6];
    [v5 _resumeDownloads:v7 client:v3];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001BFA00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(WorkspaceDownloadObserverClient);
  v4 = [*(a1 + 32) _downloadPersistentIDsFromBundleIDs:*(a1 + 40)];
  if ([v4 count])
  {
    v5 = *(a1 + 32);
    v6 = [v4 allValues];
    [v5 _cancelDownloads:v6 client:v3];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001BFC3C(uint64_t a1)
{
  v2 = +[DownloadsDatabase downloadsDatabase];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BFCEC;
  v6[3] = &unk_1003294E0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = [v2 modifyUsingTransactionBlock:v6];
}

uint64_t sub_1001BFCEC(uint64_t a1, void *a2)
{
  v39 = a2;
  v38 = [v39 database];
  v40 = objc_alloc_init(NSMutableOrderedSet);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = [*(a1 + 32) count] == 1;
  v59[0] = @"IFNULL(download_state.blocked_reason, 0)";
  v59[1] = @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)";
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v2)
  {
    v3 = *v47;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v47 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v46 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        if ([ApplicationWorkspace keepSafeHarborDataForBundleID:v5])
        {
          *(v51 + 24) = 0;
          v7 = +[SSLogConfig sharedDaemonConfig];
          if (!v7)
          {
            v7 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v8) = [v7 shouldLog];
          v9 = [v7 shouldLogToDisk];
          v10 = [v7 OSLogObject];
          v11 = v10;
          if (v9)
          {
            LODWORD(v8) = v8 | 2;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v8 = v8;
          }

          else
          {
            v8 &= 2u;
          }

          if (v8)
          {
            v12 = objc_opt_class();
            v54 = 138412546;
            v55 = v12;
            v56 = 2112;
            v57 = v5;
            v13 = v12;
            LODWORD(v36) = 22;
            v14 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Unable to rescue VPP Applicaton with bundleID: %@", &v54, v36);

            if (!v14)
            {
              goto LABEL_19;
            }

            v11 = [NSString stringWithCString:v14 encoding:4];
            free(v14);
            v35 = v11;
            SSFileLog();
          }
        }

        else
        {
          v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v5];
          v11 = [DownloadEntity queryWithDatabase:v38 predicate:v7];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1001C03FC;
          v42[3] = &unk_10032B4D0;
          v45 = &v50;
          v43 = v40;
          v44 = v39;
          [v11 enumeratePersistentIDsAndProperties:v59 count:2 usingBlock:v42];
        }

LABEL_19:
        objc_autoreleasePoolPop(v6);
      }

      v2 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v2);
  }

  if ([v40 count])
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    v17 = [v15 shouldLogToDisk];
    v18 = [v15 OSLogObject];
    v19 = v18;
    if (v17)
    {
      v16 |= 2u;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = v16;
    }

    else
    {
      v20 = v16 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = [v40 count];
      v54 = 138412546;
      v55 = v21;
      v56 = 2048;
      v57 = v22;
      LODWORD(v36) = 22;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 1, "%@: Reset %ld downloads after prioritize", &v54, v36);

      if (!v23)
      {
LABEL_33:

        [v39 resetDownloadsWithIdentifiers:v40];
        [*(a1 + 40) _retryRestoreIfNecessaryForTransaction:v39];
        goto LABEL_34;
      }

      v19 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      v35 = v19;
      SSFileLog();
    }

    goto LABEL_33;
  }

LABEL_34:
  if (*(v51 + 24) == 1)
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    v26 = [v24 shouldLogToDisk];
    v27 = [v24 OSLogObject];
    v28 = v27;
    if (v26)
    {
      v25 |= 2u;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = v25;
    }

    else
    {
      v29 = v25 & 2;
    }

    if (v29)
    {
      LOWORD(v54) = 0;
      LODWORD(v36) = 2;
      v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, v28, 16, "[Download]: User triggered prioritization but placeholder has no corresponding download.", &v54, v36);

      if (!v30)
      {
LABEL_46:

        v31 = *(a1 + 40);
        v32 = [*(a1 + 32) anyObject];
        [v31 _rescueStuckPlaceholderWithBundleID:v32];

        goto LABEL_47;
      }

      v28 = [NSString stringWithCString:v30 encoding:4];
      free(v30);
      SSFileLog();
    }

    goto LABEL_46;
  }

LABEL_47:
  for (j = 1; j != -1; --j)
  {
  }

  _Block_object_dispose(&v50, 8);

  return 1;
}

void sub_1001C0390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C03FC(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = [[NSNumber alloc] initWithLongLong:a2];
  *(*(*(a1 + 48) + 8) + 24) = 0;
  if ([*a3 integerValue] || (objc_msgSend(a3[1], "isEqualToString:", SSDownloadPhaseFailed) & 1) != 0 || objc_msgSend(a3[1], "isEqualToString:", SSDownloadPhasePaused))
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    [*(a1 + 40) prioritizeDownloadWithID:a2 aboveDownloadWithID:0 error:0];
  }
}

void sub_1001C0574(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[DownloadsDatabase downloadsDatabase];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C0674;
  v12[3] = &unk_100328C60;
  v13 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v10 = v5;
  v11 = [v7 modifyUsingTransactionBlock:v12];

  xpc_dictionary_set_BOOL(v6, "0", 1);
}

uint64_t sub_1001C0674(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v5 database];
  v7 = [v3 downloadsQueryForMessage:v4 database:v6];

  v8 = [v7 copyEntityIdentifiers];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = v10 | 2;
  }

  else
  {
    LODWORD(v11) = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = objc_opt_class();
  v14 = v13;
  v15 = [v8 count];
  v16 = a1[4];
  v19 = 138412802;
  v20 = v13;
  v21 = 2048;
  v22 = v15;
  v23 = 2112;
  v24 = v16;
  v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v12, 1, "%@: Canceling all %lu downloads for %@", &v19, 32);

  if (v17)
  {
    v12 = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_12:
  }

  [v5 finishDownloadsWithIdentifiers:v8 finalPhase:SSDownloadPhaseCanceled];
  return 1;
}

void sub_1001C093C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v6 count])
  {
    v7 = [*(a1 + 40) _cancelDownloads:v6 client:v8];
  }

  else
  {
    v7 = 1;
  }

  xpc_dictionary_set_BOOL(v5, "0", v7);
}

void sub_1001C0AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = xpc_dictionary_get_value(*(a1 + 32), "1");
  v8 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_array && xpc_array_get_count(v8))
  {
    v9 = +[DownloadsDatabase downloadsDatabase];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001C0BE0;
    v13[3] = &unk_100328C60;
    v14 = v5;
    v10 = v8;
    v11 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v12 = [v9 modifyUsingTransactionBlock:v13];
  }

  xpc_dictionary_set_BOOL(v6, "0", 1);
}

uint64_t sub_1001C0BE0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 database];
  v6 = [v4 persistentDownloadManagerInDatabase:v5];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = a1[5];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1001C0E74;
    applier[3] = &unk_100328088;
    v9 = v7;
    v22 = v9;
    xpc_array_apply(v8, applier);
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = v11 | 2;
    }

    else
    {
      LODWORD(v12) = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [v9 count];
      v17 = a1[4];
      v23 = 138412802;
      v24 = v14;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v18 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v13, 1, "%@: Finishing %lu downloads for client: %@", &v23, 32);

      if (!v18)
      {
LABEL_14:

        v19 = [v6 finishPersistentDownloadsWithDownloadIDs:v9];
        [v3 unionChangeset:v19];

        goto LABEL_15;
      }

      v13 = [NSString stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return 1;
}

uint64_t sub_1001C0E74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_int64)
  {
    v5 = [[NSNumber alloc] initWithLongLong:xpc_int64_get_value(v4)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

void sub_1001C0F04(id a1, DownloadManagerClient *a2, OS_xpc_object *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = xpc_array_create(0, 0);
  v7 = +[DownloadsDatabase downloadsDatabase];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C1000;
  v10[3] = &unk_100329490;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  [v7 readUsingTransactionBlock:v10];

  xpc_dictionary_set_value(v5, "0", v8);
}

void sub_1001C1000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [v3 activeDownloadIdentifiers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) longLongValue];
        v11 = [[DownloadEntity alloc] initWithPersistentID:v10 inDatabase:v4];
        if ([*(a1 + 32) canAccessDownload:v11])
        {
          xpc_array_set_int64(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v10);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_1001C120C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  objc_opt_class();
  v8 = SSXPCDictionaryCopyCFObjectWithClass();
  v9 = v8;
  if (int64 && [v8 count])
  {
    v10 = +[DownloadsDatabase downloadsDatabase];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001C1360;
    v11[3] = &unk_10032B560;
    v16 = int64;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = v9;
    v15 = v6;
    [v10 readUsingTransactionBlock:v11];
  }
}

void sub_1001C1360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadAssetEntity alloc];
  v5 = *(a1 + 64);
  v6 = [v3 database];
  v7 = [(DownloadAssetEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if (([*(a1 + 32) hasEntitlements] & 1) != 0 || objc_msgSend(*(a1 + 32), "canAccessAsset:", v7))
  {
    if (xpc_dictionary_get_int64(*(a1 + 40), "0") == 10)
    {
      v8 = [(DownloadAssetEntity *)v7 copyXPCEncodedValuesForClientProperties:*(a1 + 48)];
      xpc_dictionary_set_value(*(a1 + 56), "0", v8);
    }

    else
    {
      v17 = v7;
      v9 = xpc_array_create(0, 0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = *(a1 + 48);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [v3 valueForExternalProperty:*(*(&v18 + 1) + 8 * i) ofAssetID:*(a1 + 64)];
            if (v15)
            {
              SSXPCArraySetCFObject();
            }

            else
            {
              v16 = +[NSNull null];
              SSXPCArraySetCFObject();
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      xpc_dictionary_set_value(*(a1 + 56), "0", v9);
      v7 = v17;
    }
  }
}

void sub_1001C1638(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  objc_opt_class();
  v8 = SSXPCDictionaryCopyCFObjectWithClass();
  v9 = v8;
  if (int64)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = +[DownloadsDatabase downloadsDatabase];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C1774;
    v12[3] = &unk_10032B5B0;
    v16 = int64;
    v13 = v5;
    v14 = v9;
    v15 = v6;
    [v11 readUsingTransactionBlock:v12];
  }
}

void sub_1001C1774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadEntity alloc];
  v5 = *(a1 + 56);
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if ([*(a1 + 32) canAccessDownload:v7])
  {
    v8 = [(DownloadEntity *)v7 copyAssetsWithAssetType:*(a1 + 40)];
    v9 = xpc_array_create(0, 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          xpc_array_set_int64(v9, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v15 + 1) + 8 * v14) persistentID]);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    xpc_dictionary_set_value(*(a1 + 48), "0", v9);
  }
}

void sub_1001C1984(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a3;
  [v3 allObjects];
  SSXPCDictionarySetCFObject();
}

void sub_1001C1A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  objc_opt_class();
  v8 = SSXPCDictionaryCopyCFObjectWithClass();
  v9 = v8;
  if (int64 && [v8 count])
  {
    v10 = +[DownloadsDatabase downloadsDatabase];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001C1BE4;
    v11[3] = &unk_10032B560;
    v16 = int64;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = v9;
    v15 = v6;
    [v10 readUsingTransactionBlock:v11];
  }
}

void sub_1001C1BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadEntity alloc];
  v5 = *(a1 + 64);
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if (([*(a1 + 32) hasEntitlements] & 1) != 0 || objc_msgSend(*(a1 + 32), "canAccessDownload:", v7))
  {
    if (xpc_dictionary_get_int64(*(a1 + 40), "0") == 13)
    {
      v8 = [(DownloadEntity *)v7 copyXPCEncodedValuesForClientProperties:*(a1 + 48)];
      xpc_dictionary_set_value(*(a1 + 56), "0", v8);
    }

    else
    {
      v17 = v7;
      v9 = xpc_array_create(0, 0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = *(a1 + 48);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [v3 valueForExternalProperty:*(*(&v18 + 1) + 8 * i) ofDownloadID:*(a1 + 64)];
            if (v15)
            {
              SSXPCArraySetCFObject();
            }

            else
            {
              v16 = +[NSNull null];
              SSXPCArraySetCFObject();
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      xpc_dictionary_set_value(*(a1 + 56), "0", v9);
      v7 = v17;
    }
  }
}

void sub_1001C1EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[DownloadsDatabase downloadsDatabase];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C1FA8;
  v12[3] = &unk_10032B650;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  [v7 readUsingTransactionBlock:v12];
}

void sub_1001C1FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v32 = xpc_array_create(0, 0);
  v34 = [v3 database];
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) prefetchedDownloadProperties];
  v6 = [v5 mutableCopy];

  v7 = *(a1 + 40);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1001C2484;
  v58[3] = &unk_10032B5D8;
  v8 = v6;
  v59 = v8;
  v9 = v4;
  v60 = v9;
  [v7 _filterAndTranslateProperties:v8 usingBlock:v58];
  v10 = [v8 count];
  v11 = [NSMutableArray alloc];
  v12 = [v11 initWithObjects:{SSDownloadPropertyIsDiverted, SSDownloadPropertyDivertedJobID, 0}];
  v13 = *(a1 + 40);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1001C24F0;
  v55[3] = &unk_10032B5D8;
  v14 = v12;
  v56 = v14;
  v15 = v9;
  v57 = v15;
  [v13 _filterAndTranslateProperties:v14 usingBlock:v55];
  v16 = [v14 count];
  v17 = [*(a1 + 32) prefetchedDownloadExternalProperties];
  v18 = [v17 mutableCopy];

  v19 = &v10[v16];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001C255C;
  v45[3] = &unk_10032B600;
  v51 = &v10[v16];
  v52 = [v18 count];
  v20 = v32;
  v46 = v20;
  v53 = v10;
  v33 = v8;
  v47 = v33;
  v54 = v16;
  v30 = v14;
  v48 = v30;
  v21 = v18;
  v49 = v21;
  v31 = v3;
  v50 = v31;
  v22 = objc_retainBlock(v45);
  v23 = v15;
  if (v19 < 1)
  {
    v25 = 0;
    v24 = 0;
  }

  else
  {
    v24 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
    v25 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
    [v23 getObjects:v24 range:{0, v19}];
  }

  v26 = xpc_dictionary_get_value(*(a1 + 48), "2");
  v27 = v26;
  if (v26 && xpc_get_type(v26) == &_xpc_type_array && xpc_array_get_count(v27))
  {
    v29 = [*(a1 + 32) hasEntitlements];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1001C2838;
    applier[3] = &unk_10032B628;
    v36 = v34;
    v42 = v29;
    v37 = *(a1 + 32);
    v39 = v19;
    v40 = v25;
    v41 = v24;
    v38 = v22;
    xpc_array_apply(v27, applier);

    v28 = v36;
  }

  else
  {
    v28 = [*(a1 + 32) downloadsQueryForMessage:*(a1 + 48) database:v34];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001C2828;
    v43[3] = &unk_10032A708;
    v44 = v22;
    [v28 enumeratePersistentIDsAndProperties:v24 count:v19 usingBlock:v43];
  }

  if (v24)
  {
    free(v24);
  }

  if (v25)
  {
    free(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  xpc_dictionary_set_value(*(a1 + 56), "0", v20);
}

void sub_1001C2484(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removeObjectsAtIndexes:a2];
  [*(a1 + 40) addObjectsFromArray:v6];
}

void sub_1001C24F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removeObjectsAtIndexes:a2];
  [*(a1 + 40) addObjectsFromArray:v6];
}

void sub_1001C255C(uint64_t a1, int64_t value, uint64_t a3)
{
  if (*(a1 + 72) == 0)
  {
    v24 = *(a1 + 32);

    xpc_array_set_int64(v24, 0xFFFFFFFFFFFFFFFFLL, value);
  }

  else
  {
    valuea = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(valuea, "0", value);
    if (*(a1 + 72) >= 1)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = +[NSNull null];
      if (*(a1 + 88) >= 1)
      {
        v8 = 0;
        do
        {
          if (*(a3 + 8 * v8))
          {
            v9 = *(a3 + 8 * v8);
          }

          else
          {
            v9 = v7;
          }

          v10 = [*(a1 + 40) objectAtIndex:v8];
          [v6 setObject:v9 forKey:v10];

          ++v8;
        }

        while (v8 < *(a1 + 88));
      }

      SSXPCDictionarySetCFObject();
    }

    if (*(a1 + 96) >= 1)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = +[NSNull null];
      if (*(a1 + 96) >= 1)
      {
        v13 = 0;
        v14 = a3 + 8 * *(a1 + 88);
        do
        {
          if (*(v14 + 8 * v13))
          {
            v15 = *(v14 + 8 * v13);
          }

          else
          {
            v15 = v12;
          }

          v16 = [*(a1 + 48) objectAtIndex:v13];
          [v11 setObject:v15 forKey:v16];

          ++v13;
        }

        while (v13 < *(a1 + 96));
      }

      SSXPCDictionarySetCFObject();
    }

    if (*(a1 + 80) >= 1)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = +[NSNull null];
      if (*(a1 + 80) >= 1)
      {
        v19 = 0;
        do
        {
          v20 = [*(a1 + 56) objectAtIndex:v19];
          v21 = [*(a1 + 64) valueForExternalProperty:v20 ofDownloadID:value];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = v18;
          }

          [v17 setObject:v23 forKey:v20];

          ++v19;
        }

        while (v19 < *(a1 + 80));
      }

      SSXPCDictionarySetCFObject();
    }

    xpc_array_append_value(*(a1 + 32), valuea);
  }
}

uint64_t sub_1001C2838(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_int64)
  {
    v5 = [[DownloadEntity alloc] initWithPersistentID:xpc_int64_get_value(v4) inDatabase:*(a1 + 32)];
    if (((*(a1 + 80) & 1) != 0 || [*(a1 + 40) canAccessDownload:v5]) && -[DownloadEntity existsInDatabase](v5, "existsInDatabase"))
    {
      if (*(a1 + 56) >= 1)
      {
        [(DownloadEntity *)v5 getValues:*(a1 + 64) forProperties:*(a1 + 72) count:?];
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), [(DownloadEntity *)v5 persistentID], *(a1 + 64));
    }
  }

  return 1;
}

void sub_1001C29BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  if (int64)
  {
    v8 = +[DownloadsDatabase downloadsDatabase];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C2B00;
    v9[3] = &unk_10032B678;
    v10 = *(a1 + 32);
    v11 = &v13;
    v12 = int64;
    [v8 readUsingTransactionBlock:v9];
  }

  xpc_dictionary_set_BOOL(v6, "0", *(v14 + 24));
  _Block_object_dispose(&v13, 8);
}

void sub_1001C2AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C2B00(uint64_t a1, void *a2)
{
  v9 = a2;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "0");
  if (int64 == 53)
  {
    v4 = off_1003251E8;
  }

  else
  {
    if (int64 != 52)
    {
      goto LABEL_7;
    }

    v4 = off_1003251F0;
  }

  v5 = objc_alloc(*v4);
  v6 = *(a1 + 48);
  v7 = [v9 database];
  v8 = [v5 initWithPersistentID:v6 inDatabase:v7];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 existsInDatabase];
  }

LABEL_7:
}

void sub_1001C2C7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (SSDeviceSupportsDownload())
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 100;
    *v57 = 0;
    *&v57[8] = v57;
    *&v57[16] = 0x3032000000;
    v58 = sub_1001C3248;
    v59 = sub_1001C3258;
    v60 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0;
    if ([v5 hasEntitlements])
    {
      v7 = xpc_dictionary_get_value(*(a1 + 40), "3");
      v8 = v7;
      if (v7 && xpc_get_type(v7) == &_xpc_type_array)
      {
        v9 = +[DownloadsDatabase downloadsDatabase];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1001C3260;
        v33[3] = &unk_10032B6C8;
        v34 = v8;
        v10 = v5;
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v35 = v10;
        v36 = v11;
        v38 = &v43;
        v39 = v42;
        v37 = v12;
        v40 = v57;
        v41 = &v47;
        v13 = [v9 modifyUsingTransactionBlock:v33];
      }
    }

    else
    {
      v44[3] = 107;
    }

    if (v48[3])
    {
      v23 = 1;
LABEL_33:
      xpc_dictionary_set_BOOL(v6, "0", v23 & 1);
      xpc_dictionary_set_int64(v6, "1", v44[3]);
      _Block_object_dispose(v42, 8);
      _Block_object_dispose(v57, 8);

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      goto LABEL_36;
    }

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v25) = [v24 shouldLog];
    v26 = [v24 shouldLogToDisk];
    v27 = [v24 OSLogObject];
    v28 = v27;
    if (v26)
    {
      LODWORD(v25) = v25 | 2;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v29 = objc_opt_class();
      v30 = v44[3];
      v31 = [v5 clientIdentifier];
      v51 = 138543874;
      v52 = v29;
      v53 = 2048;
      v54 = v30;
      v55 = 2114;
      v56 = v31;
      v32 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, v28, 16, "%{public}@: Download insert failed with error code: %ld client: %{public}@", &v51, 32);

      if (!v32)
      {
LABEL_32:

        v23 = *(v48 + 24);
        goto LABEL_33;
      }

      v28 = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      SSFileLog();
    }

    goto LABEL_32;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  v15 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    LODWORD(v16) = v15 | 2;
  }

  else
  {
    LODWORD(v16) = v15;
  }

  v17 = [v14 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v16 = v16;
  }

  else
  {
    v16 &= 2u;
  }

  if (v16)
  {
    v18 = objc_opt_class();
    v19 = v18;
    v20 = [v5 clientIdentifier];
    *v57 = 138543618;
    *&v57[4] = v18;
    *&v57[12] = 2114;
    *&v57[14] = v20;
    v21 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v17, 16, "%{public}@: Download insert failed, not supported on this device, client: %{public}@", v57, 22);

    if (v21)
    {
      v22 = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }
  }

  else
  {
  }

  xpc_dictionary_set_BOOL(v6, "0", 0);
  xpc_dictionary_set_int64(v6, "1", 157);
LABEL_36:
}

void sub_1001C31EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C3248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001C3260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1001C387C;
  applier[3] = &unk_10032B6A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v54 = v6;
  v55 = v7;
  v57 = *(a1 + 64);
  v8 = v4;
  v56 = v8;
  xpc_array_apply(v5, applier);
  v9 = [v8 count] + *(*(*(a1 + 72) + 8) + 24);
  count = xpc_array_get_count(*(a1 + 32));
  v11 = +[SSLogConfig sharedDaemonConfig];
  v12 = v11;
  if (v9 == count)
  {
    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = v13 | 2;
    }

    else
    {
      LODWORD(v14) = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [v8 count];
      [*(a1 + 40) clientIdentifier];
      v20 = v19 = v3;
      v58 = 138543874;
      v59 = v16;
      v60 = 2048;
      v61 = v18;
      v62 = 2114;
      v63 = v20;
      v21 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v15, 0, "%{public}@: Inserting %lu downloads for %{public}@", &v58, 32);

      v3 = v19;
      if (!v21)
      {
        goto LABEL_14;
      }

      v15 = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      v51 = v15;
      SSFileLog();
    }

LABEL_14:
    int64 = xpc_dictionary_get_int64(*(a1 + 56), "1");
    v23 = xpc_dictionary_get_int64(*(a1 + 56), "2");
    if ([v8 count])
    {
      if (int64)
      {
        v24 = [v3 insertDownloads:v8 beforeDownloadWithID:int64];
      }

      else
      {
        if (v23)
        {
          [v3 insertDownloads:v8 afterDownloadWithID:v23];
        }

        else
        {
          [v3 addDownloads:v8];
        }
        v24 = ;
      }

      v35 = *(*(a1 + 80) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v24;
    }

    v37 = [*(*(*(a1 + 80) + 8) + 40) count];
    if (v37 == [v8 count])
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
      goto LABEL_50;
    }

    v38 = +[SSLogConfig sharedDaemonConfig];
    if (!v38)
    {
      v38 = +[SSLogConfig sharedConfig];
    }

    v39 = [v38 shouldLog];
    if ([v38 shouldLogToDisk])
    {
      v40 = v39 | 2;
    }

    else
    {
      v40 = v39;
    }

    v41 = [v38 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v44 = *(*(*(a1 + 80) + 8) + 40);
      v45 = v43;
      v46 = [v44 count];
      v47 = [v8 count];
      v58 = 138543874;
      v59 = v43;
      v60 = 2048;
      v61 = v46;
      v62 = 2048;
      v63 = v47;
      LODWORD(v52) = 32;
      v48 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &_mh_execute_header, v41, 16, "%{public}@: Inserted IDs did not equal the number of downloads (%lu != %lu)", &v58, v52);

      if (!v48)
      {
LABEL_49:

        *(*(*(a1 + 64) + 8) + 24) = 112;
        goto LABEL_50;
      }

      v41 = [NSString stringWithCString:v48 encoding:4];
      free(v48);
      SSFileLog();
    }

    goto LABEL_49;
  }

  if (!v11)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v25 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v12 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 & 2;
  }

  if (!v28)
  {
    goto LABEL_28;
  }

  v29 = objc_opt_class();
  v30 = v29;
  v31 = [v8 count];
  v32 = *(*(*(a1 + 72) + 8) + 24);
  v33 = xpc_array_get_count(*(a1 + 32));
  v58 = 138544130;
  v59 = v29;
  v60 = 2048;
  v61 = v31;
  v62 = 2048;
  v63 = v32;
  v64 = 2048;
  v65 = v33;
  v34 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 16, "%{public}@: Skipping import - not all downloads were valid (%lu + %lu != %lu)", &v58, 42);

  if (v34)
  {
    v27 = [NSString stringWithCString:v34 encoding:4];
    free(v34);
    SSFileLog();
LABEL_28:
  }

LABEL_50:
  v49 = *(*(*(a1 + 88) + 8) + 24);

  return v49;
}

BOOL sub_1001C387C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v22 = 0;
  v6 = [v5 newDownloadWithClientXPCDownload:v4 error:&v22];
  v7 = v22;
  if (v6)
  {
    v8 = [v6 copyStoreDownloadMetadata];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v6 copyInMemoryStoreDownloadMetadata];
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    v17 = [v9 kind];
    IsBookToShimKind = SSDownloadKindIsBookToShimKind();

    if (IsBookToShimKind)
    {
      v19 = [v9 downloadPermalink];
      if (v19 || ([v9 valueForFirstAvailableKey:{@"download_permalink", 0}], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        ++*(*(*(a1 + 64) + 8) + 24);

        v23 = v9;
        v20 = [NSArray arrayWithObjects:&v23 count:1];
        [BookAssetDaemonUtility sendBookStoreDownloads:v20 withReason:@"insert download via SSDownloadManager"];

LABEL_23:
        goto LABEL_24;
      }
    }

LABEL_22:
    [*(a1 + 48) addObject:v6];
    goto LABEL_23;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = v11 | 2;
  }

  else
  {
    LODWORD(v12) = v11;
  }

  v13 = [v10 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  v14 = objc_opt_class();
  v24 = 138543874;
  v25 = v14;
  v26 = 2114;
  v27 = v7;
  v28 = 2114;
  v29 = v4;
  v15 = v14;
  v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v13, 16, "%{public}@: Failed to create download error: %{public}@\n%{public}@", &v24, 32);

  if (v16)
  {
    v13 = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_15:
  }

  *(*(*(a1 + 56) + 8) + 24) = [v7 code];
LABEL_24:

  return v6 != 0;
}

void sub_1001C3BFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v8 = xpc_dictionary_get_int64(*(a1 + 32), "2");
  v9 = xpc_dictionary_get_int64(*(a1 + 32), "3");
  v10 = +[DownloadsDatabase downloadsDatabase];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C3D60;
  v12[3] = &unk_10032B6F0;
  v12[4] = &v13;
  v12[5] = v8;
  v12[6] = int64;
  v12[7] = v9;
  v11 = [v10 modifyUsingTransactionBlock:v12];

  xpc_dictionary_set_BOOL(v6, "0", *(v14 + 24));
  _Block_object_dispose(&v13, 8);
}

void sub_1001C3D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C3D60(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[5])
  {
    v5 = [v3 moveDownloadWithID:a1[6] beforeDownloadWithID:?];
LABEL_5:
    *(*(a1[4] + 8) + 24) = v5;
    goto LABEL_6;
  }

  if (a1[7])
  {
    v5 = [v3 moveDownloadWithID:a1[6] afterDownloadWithID:?];
    goto LABEL_5;
  }

LABEL_6:
  v6 = *(*(a1[4] + 8) + 24);

  return v6;
}

void sub_1001C3E7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = SSXPCDictionaryCopyCFObjectWithClass();
  v6 = [v5 objectForKey:@"downloadID"];
  v7 = [v5 objectForKey:@"phase"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v10 = +[DownloadsDatabase downloadsDatabase];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C3FE0;
    v14[3] = &unk_100328C60;
    v15 = v6;
    v11 = v7;
    v12 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    v13 = [v10 modifyUsingTransactionBlock:v14];
  }

  xpc_dictionary_set_BOOL(v4, "0", v9);
}

uint64_t sub_1001C3FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadEntity alloc];
  v5 = [*(a1 + 32) longLongValue];
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if (([*(a1 + 40) isEqualToString:SSDownloadPhaseCanceled] & 1) == 0 && !objc_msgSend(*(a1 + 40), "isEqualToString:", SSDownloadPhaseFinished))
  {
    [(DownloadEntity *)v7 setValue:*(a1 + 40) forProperty:@"download_state.phase"];
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = v18 | 2;
    }

    else
    {
      LODWORD(v19) = v18;
    }

    v20 = [v17 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v27 = 138412802;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      v24 = v21;
      v25 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v20, 1, "%@: Updated download with phase: %@ downloadID: %@", &v27, 32);

      if (!v25)
      {
LABEL_28:

        goto LABEL_29;
      }

      v20 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = v9 | 2;
  }

  else
  {
    LODWORD(v10) = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v12 = objc_opt_class();
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v27 = 138412802;
  v28 = v12;
  v29 = 2112;
  v30 = v13;
  v31 = 2112;
  v32 = v14;
  v15 = v12;
  v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Updated download with final phase: %@ downloadID: %@", &v27, 32);

  if (v16)
  {
    v11 = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_14:
  }

  [v3 finishDownloadWithID:objc_msgSend(*(a1 + 32) finalPhase:{"longLongValue"), *(a1 + 40)}];
LABEL_29:

  return 1;
}

void sub_1001C4418(uint64_t a1, uint64_t a2, void *a3)
{
  xdict = a3;
  objc_opt_class();
  v4 = SSXPCDictionaryCopyCFObjectWithClass();
  v5 = [v4 objectForKey:@"downloadID"];
  v6 = [v4 objectForKey:@"kind"];
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    [*(a1 + 40) notifyClientsOfExternalPropertyChanges:v4 forDownloadID:objc_msgSend(v5 downloadKind:{"longLongValue"), v6}];
  }

  xpc_dictionary_set_BOOL(xdict, "0", v8);
}

void sub_1001C45B8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v6 count])
  {
    v7 = [*(a1 + 40) _pauseDownloads:v6 isForced:xpc_dictionary_get_BOOL(*(a1 + 32) client:{"2"), v8}];
  }

  else
  {
    v7 = 1;
  }

  xpc_dictionary_set_BOOL(v5, "0", v7);
}

void sub_1001C4730(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v9 = xpc_dictionary_get_int64(*(a1 + 32), "2");
  v10 = *(a1 + 40);
  v11 = [NSNumber numberWithLongLong:int64];
  v12 = [NSNumber numberWithLongLong:v9];
  v15 = 0;
  v13 = [v10 _prioritizeDownload:v11 aboveDownload:v12 client:v5 error:&v15];
  v14 = v15;

  xpc_dictionary_set_BOOL(v6, "0", v13);
  if (v14)
  {
    SSXPCDictionarySetCFObject();
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1001C4B98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_connection_create_from_endpoint(*(a1 + 32));
  if (!v4)
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v8 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v5 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 48);
      v34 = 138412546;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      v14 = v12;
      v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 0, "%@: Could not create connection for endpoint: %@", &v34, 22);

      if (!v15)
      {
        goto LABEL_30;
      }

      v10 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_30;
  }

  objc_opt_class();
  v5 = SSXPCDictionaryCopyCFObjectWithClass();
  v6 = xpc_dictionary_get_value(*(a1 + 56), "3");
  [v3 setClientOptions:v6];

  [v3 setOutputConnectionWithConnection:v4];
  if (v5)
  {
    v7 = [NSSet setWithArray:v5];
    [v3 setDownloadKinds:v7];
  }

  else
  {
    [v3 setDownloadKinds:0];
  }

  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (v20)
  {
    v21 = v4;
    v22 = objc_opt_class();
    v30 = v22;
    v23 = [v3 persistenceIdentifier];
    v24 = [v3 downloadKinds];
    v34 = 138413058;
    v35 = v22;
    v4 = v21;
    v36 = 2112;
    v37 = v3;
    v38 = 2112;
    v39 = v23;
    v40 = 2112;
    v41 = v24;
    v25 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 1, "%@: Registered client: %@, %@, %@", &v34, 42);

    if (v25)
    {
      v26 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }
  }

  else
  {
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001C5018;
  v31[3] = &unk_100327238;
  v27 = v3;
  v32 = v27;
  v33 = *(a1 + 48);
  [v27 loadSpringBoardStateWithCompletionBlock:v31];
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = [v27 outputConnection];
  [v29 sendMessage:v28];

LABEL_30:
}

void sub_1001C5018(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationState];
  v3 = [*(a1 + 32) copyApplicationBackgroundModes];
  v4 = [*(a1 + 32) clientType];
  v5 = +[DownloadsDatabase downloadsDatabase];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001C5128;
  v9[3] = &unk_10032B718;
  v6 = *(a1 + 32);
  v13 = v4;
  v14 = v2;
  v10 = v6;
  v11 = v3;
  v12 = *(a1 + 40);
  v7 = v3;
  v8 = [v5 modifyUsingTransactionBlock:v9];
}

uint64_t sub_1001C5128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 database];
  [v4 reloadPersistenceStateInDatabase:v5];

  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 64);
    v7 = v6 == 32 || v6 == 8;
    if (v7 && [*(a1 + 40) containsObject:@"newsstand-content"])
    {
      [v3 prioritizeDownloadsWithKind:SSDownloadKindNewsstandContent clientID:*(a1 + 48)];
    }

    v8 = *(a1 + 32);
    v9 = [v3 database];
    [v8 addClientEntityToDatabase:v9];
  }

  return 1;
}

void sub_1001C5298(uint64_t a1, void *a2)
{
  v2 = [a2 clientIdentifier];
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = +[DownloadsDatabase downloadsDatabase];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C53A4;
    v7[3] = &unk_1003294E0;
    v8 = v2;
    v9 = v3;
    v6 = [v5 modifyUsingTransactionBlock:v7];
  }
}

uint64_t sub_1001C551C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_int64)
  {
    v5 = [[NSNumber alloc] initWithLongLong:xpc_int64_get_value(v4)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

void sub_1001C559C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  xdict = a3;
  [v4 _resumeDownloads:v5 client:a2];
  xpc_dictionary_set_BOOL(xdict, "0", 1);
}

uint64_t sub_1001C577C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_int64)
  {
    v5 = [[NSNumber alloc] initWithLongLong:xpc_int64_get_value(v4)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

void sub_1001C57FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  xdict = a3;
  [v4 _restartDownloads:v5 client:a2];
  xpc_dictionary_set_BOOL(xdict, "0", 1);
}

void sub_1001C587C(id a1)
{
  +[RestoreDownloadsOperation resetShouldSuppressTermsAndConditionsDialogs];
  v2 = +[DownloadsDatabase downloadsDatabase];
  v1 = [v2 modifyUsingTransactionBlock:&stru_10032B7A8];
}

BOOL sub_1001C58E0(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_state.restore_state" equalToLongLong:2];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_state.restore_state" equalToLongLong:3];
  v5 = [NSArray arrayWithObjects:v3, v4, 0];
  v6 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v5];

  LOBYTE(v5) = [(DownloadsTransaction *)v2 resetDownloadsMatchingPredicate:v6];
  [(DownloadsExternalTransaction *)v2 addDownloadChangeTypes:128];

  return v5;
}

void sub_1001C5A74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  if (int64)
  {
    v8 = +[DownloadsDatabase downloadsDatabase];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001C5BD0;
    v10[3] = &unk_1003295D0;
    v14 = int64;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = &v15;
    v9 = [v8 modifyUsingTransactionBlock:v10];
  }

  xpc_dictionary_set_BOOL(v6, "0", *(v16 + 24));
  _Block_object_dispose(&v15, 8);
}

void sub_1001C5BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C5BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadAssetEntity alloc];
  v5 = *(a1 + 56);
  v6 = [v3 database];
  v7 = [(DownloadAssetEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if (([*(a1 + 32) hasEntitlements] & 1) != 0 || objc_msgSend(*(a1 + 32), "canAccessAsset:", v7))
  {
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    v9 = [DownloadAssetEntity copyDatabaseDictionaryToSetClientDictionary:v8];
    [(DownloadAssetEntity *)v7 setValuesWithDictionary:v9];
    [v9 objectForKey:@"url"];

    v10 = objc_alloc_init(DownloadsChangeset);
    [(DownloadsChangeset *)v10 addDownloadChangeTypes:16];
    v11 = [(DownloadAssetEntity *)v7 valueForProperty:@"download_id"];
    -[DownloadsChangeset addUpdatedDownloadID:](v10, "addUpdatedDownloadID:", [v11 longLongValue]);

    [v3 unionChangeset:v10];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v12 = *(*(*(a1 + 48) + 8) + 24);

  return v12;
}

void sub_1001C5E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1001C3248;
  v36 = sub_1001C3258;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v5 = xpc_dictionary_get_int64(*(a1 + 32), "2");
  if (int64)
  {
    v6 = v5;
    v7 = +[DownloadsDatabase downloadsDatabase];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001C61A0;
    v21[3] = &unk_10032B7D0;
    v26 = int64;
    v24 = &v32;
    v8 = v3;
    v9 = *(a1 + 40);
    v22 = v8;
    v23 = v9;
    v27 = v6;
    v25 = &v28;
    v10 = [v7 modifyUsingTransactionBlock:v21];
  }

  if ((v29[3] & 1) == 0)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v12) = [v11 shouldLog];
    v13 = [v11 shouldLogToDisk];
    v14 = [v11 OSLogObject];
    v15 = v14;
    if (v13)
    {
      LODWORD(v12) = v12 | 2;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v16 = objc_opt_class();
      v17 = v33[5];
      v38 = 138412546;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      v18 = v16;
      v19 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v15, 0, "%@: Failed to apply download handler: %@", &v38, 22);

      if (!v19)
      {
LABEL_15:

        goto LABEL_16;
      }

      v15 = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(reply, "0", *(v29 + 24));
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 48), reply);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_1001C6158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t sub_1001C61A0(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v4 = [[DownloadEntity alloc] initWithPersistentID:*(a1 + 64) inDatabase:v3];
  if ((-[DownloadEntity existsInDatabase](v4, "existsInDatabase") & 1) == 0 || ([*(a1 + 32) canAccessDownload:v4] & 1) == 0)
  {
    v19 = SSError();
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    goto LABEL_22;
  }

  v5 = @"handler_id";
  v34[0] = v5;
  v34[1] = @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)";
  v32 = 0;
  v33 = 0;
  [(DownloadEntity *)v4 getValues:&v32 forProperties:v34 count:2];
  if ([v32 longLongValue] != *(a1 + 72))
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v12 = *(a1 + 64);
      v11 = *(a1 + 72);
      v13 = *(a1 + 32);
      v24 = 138413058;
      v25 = v10;
      v26 = 2048;
      v27 = v11;
      v28 = 2048;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      v14 = v10;
      v15 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Setting handler: %lld for download: %lld client: %@", &v24, 42);

      if (!v15)
      {
        goto LABEL_16;
      }

      v9 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

LABEL_16:
    v16 = [NSNumber numberWithLongLong:*(a1 + 72)];
    [(DownloadEntity *)v4 setValue:v16 forProperty:v5];

    if (*(a1 + 72))
    {
      v17 = [[DownloadSessionProperties alloc] initWithClientIdentifier:0 handlerIdentifier:*(a1 + 72)];
      [(DownloadSessionProperties *)v17 setDownloadPhase:v33];
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  for (i = 1; i != -1; --i)
  {
  }

LABEL_22:
  v22 = *(*(*(a1 + 56) + 8) + 24);

  return v22;
}

void sub_1001C6588(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  if (int64)
  {
    v8 = +[DownloadsDatabase downloadsDatabase];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001C66E4;
    v10[3] = &unk_1003295D0;
    v14 = int64;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = &v15;
    v9 = [v8 modifyUsingTransactionBlock:v10];
  }

  xpc_dictionary_set_BOOL(v6, "0", *(v16 + 24));
  _Block_object_dispose(&v15, 8);
}

void sub_1001C66CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C66E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadEntity alloc];
  v5 = *(a1 + 56);
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if (([*(a1 + 32) hasEntitlements] & 1) != 0 || objc_msgSend(*(a1 + 32), "canAccessDownload:", v7))
  {
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    if (xpc_dictionary_get_int64(*(a1 + 40), "0") == 32)
    {
      [v3 setExternalPropertyValues:v8 forDownloadWithID:*(a1 + 56)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v9 = [DownloadEntity copyDatabaseDictionaryToSetClientDictionary:v8];
      [(DownloadEntity *)v7 setValuesWithDictionary:v9];
      v10 = [v9 objectForKey:@"duet_transfer_type"];
      v11 = v10;
      if (v10 && ![v10 integerValue])
      {
        v12 = [(DownloadEntity *)v7 valueForProperty:@"download_state.blocked_reason"];
        if ([v12 integerValue] == 4)
        {
          v13 = [NSOrderedSet alloc];
          v14 = [NSNumber numberWithLongLong:[(DownloadEntity *)v7 persistentID]];
          v15 = [v13 initWithObject:v14];

          [v3 resetDownloadsWithIdentifiers:v15];
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v16 = objc_alloc_init(DownloadsChangeset);
    [(DownloadsChangeset *)v16 addDownloadChangeTypes:16];
    v17 = [(DownloadEntity *)v7 downloadKind];
    [(DownloadsChangeset *)v16 addDownloadKind:v17];

    [(DownloadsChangeset *)v16 addUpdatedDownloadID:*(a1 + 56)];
    [v3 unionChangeset:v16];
  }

  v18 = *(*(*(a1 + 48) + 8) + 24);

  return v18;
}

void sub_1001C69E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (SSDeviceSupportsDownload())
  {
    *v33 = 0;
    *&v33[8] = v33;
    *&v33[16] = 0x2020000000;
    v34 = 1;
    v7 = xpc_dictionary_get_value(*(a1 + 40), "2");
    v8 = v7;
    if (v7 && xpc_get_type(v7) == &_xpc_type_array)
    {
      v9 = [v5 clientIdentifier];
      v10 = [v5 hasEntitlements];
      v11 = +[DownloadsDatabase downloadsDatabase];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001C6D6C;
      v25[3] = &unk_10032B870;
      v26 = v5;
      v12 = *(a1 + 40);
      v13 = *(a1 + 32);
      v27 = v12;
      v28 = v13;
      v29 = v8;
      v14 = v9;
      v30 = v14;
      v31 = v33;
      v32 = v10;
      v15 = [v11 modifyUsingTransactionBlock:v25];
    }

    xpc_dictionary_set_BOOL(v6, "0", *(*&v33[8] + 24));

    _Block_object_dispose(v33, 8);
  }

  else
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = v17 | 2;
    }

    else
    {
      LODWORD(v18) = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [v5 clientIdentifier];
      *v33 = 138543618;
      *&v33[4] = v20;
      *&v33[12] = 2114;
      *&v33[14] = v22;
      v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}@: Download insert failed, not supported on this device, client: %{public}@", v33, 22);

      if (v23)
      {
        v24 = [NSString stringWithCString:v23 encoding:4];
        free(v23);
        SSFileLog();
      }
    }

    else
    {
    }

    xpc_dictionary_set_BOOL(v6, "0", 0);
    xpc_dictionary_set_int64(v6, "1", 157);
  }
}

void sub_1001C6D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C6D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v60 = objc_alloc_init(DownloadsChangeset);
  v4 = [v3 database];
  v58 = objc_alloc_init(NSMutableOrderedSet);
  v59 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v63 = [NSArray arrayWithObjects:@"download_state.phase", @"kind", @"download_state.restore_state", 0];
  v62 = [*(a1 + 32) downloadsQueryForMessage:*(a1 + 40) database:v4];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_1001C7638;
  v82[3] = &unk_10032B820;
  v6 = v5;
  v83 = v6;
  [v62 enumerateMemoryEntitiesWithProperties:v63 usingBlock:v82];
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = v8 | 2;
  }

  else
  {
    LODWORD(v9) = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v6 count];
    *&v14 = COERCE_DOUBLE(xpc_array_get_count(*(a1 + 56)));
    v15 = *(a1 + 64);
    *v91 = 138413058;
    *&v91[4] = v11;
    *&v91[12] = 2048;
    *&v91[14] = v13;
    *&v91[22] = 2048;
    v92 = *&v14;
    v93 = 2112;
    v94 = v15;
    LODWORD(v56) = 42;
    v16 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 1, "%@: Replacing %lu downloads with %zu downloads for client: %@", v91, v56);

    if (!v16)
    {
      goto LABEL_13;
    }

    v10 = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    v55 = v10;
    SSFileLog();
  }

LABEL_13:
  [objc_opt_class() orderKeyIncrement];
  v18 = v17;
  *v91 = 0;
  *&v91[8] = v91;
  *&v91[16] = 0x2020000000;
  v19 = [DownloadEntity maxValueForProperty:@"order_key" predicate:0 database:v4];
  [v19 doubleValue];
  v21 = v20;

  v92 = v18 + v21;
  v22 = *(a1 + 56);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1001C76C4;
  applier[3] = &unk_10032B848;
  v61 = v6;
  v69 = v61;
  v57 = v4;
  v70 = v57;
  v78 = v91;
  v23 = v60;
  v71 = v23;
  v24 = v58;
  v25 = *(a1 + 72);
  v72 = v24;
  v79 = v25;
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  v73 = v26;
  v74 = v27;
  v81 = *(a1 + 80);
  v75 = *(a1 + 64);
  v28 = v3;
  v76 = v28;
  v80 = v18;
  v29 = v59;
  v77 = v29;
  xpc_array_apply(v22, applier);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v30 = objc_alloc_init(NSMutableOrderedSet);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v31 = v61;
    v32 = [v31 countByEnumeratingWithState:&v64 objects:v90 count:16];
    if (v32)
    {
      v33 = *v65;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v65 != v33)
          {
            objc_enumerationMutation(v31);
          }

          [v30 addObject:{*(*(&v64 + 1) + 8 * i), v55}];
        }

        v32 = [v31 countByEnumeratingWithState:&v64 objects:v90 count:16];
      }

      while (v32);
    }

    if (![v30 count])
    {
LABEL_34:
      if ([v29 count])
      {
        [v28 reconcileSoftwareDownloads:v29 fromITunesStore:0];
      }

      if (![v24 count])
      {
        goto LABEL_49;
      }

      v44 = +[SSLogConfig sharedDaemonConfig];
      if (!v44)
      {
        v44 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v45) = [v44 shouldLog];
      v46 = [v44 shouldLogToDisk];
      v47 = [v44 OSLogObject];
      v48 = v47;
      if (v46)
      {
        LODWORD(v45) = v45 | 2;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v45 = v45;
      }

      else
      {
        v45 &= 2u;
      }

      if (v45)
      {
        v49 = objc_opt_class();
        v50 = [v24 count];
        v51 = *(a1 + 64);
        v84 = 138412802;
        v85 = v49;
        v86 = 2048;
        v87 = v50;
        v88 = 2112;
        v89 = v51;
        LODWORD(v56) = 32;
        v52 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, v48, 1, "%@: Retry %lu downloads for client: %@", &v84, v56);

        if (!v52)
        {
LABEL_48:

          [v28 retryDownloadsWithIdentifiers:v24];
LABEL_49:

          goto LABEL_50;
        }

        v48 = [NSString stringWithCString:v52 encoding:4];
        free(v52);
        v55 = v48;
        SSFileLog();
      }

      goto LABEL_48;
    }

    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v36) = [v35 shouldLog];
    v37 = [v35 shouldLogToDisk];
    v38 = [v35 OSLogObject];
    v39 = v38;
    if (v37)
    {
      LODWORD(v36) = v36 | 2;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v36 = v36;
    }

    else
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v40 = objc_opt_class();
      v41 = [v30 count];
      v42 = *(a1 + 64);
      v84 = 138412802;
      v85 = v40;
      v86 = 2048;
      v87 = v41;
      v88 = 2112;
      v89 = v42;
      LODWORD(v56) = 32;
      v43 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, v39, 1, "%@: Cancel %lu downloads for client: %@", &v84, v56);

      if (!v43)
      {
LABEL_33:

        *(*(*(a1 + 72) + 8) + 24) = [v28 finishDownloadsWithIdentifiers:v30 finalPhase:SSDownloadPhaseCanceled];
        goto LABEL_34;
      }

      v39 = [NSString stringWithCString:v43 encoding:4];
      free(v43);
      v55 = v39;
      SSFileLog();
    }

    goto LABEL_33;
  }

LABEL_50:
  [v28 unionChangeset:{v23, v55}];
  v53 = *(*(*(a1 + 72) + 8) + 24);

  _Block_object_dispose(v91, 8);
  return v53 & 1;
}

void sub_1001C7638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v3, "databaseID")}];
  [*(a1 + 32) setObject:v3 forKey:v4];
}

uint64_t sub_1001C76C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v5 = [[NSNumber alloc] initWithLongLong:{xpc_dictionary_get_int64(v4, "0")}];
    v6 = [*(a1 + 32) objectForKey:v5];
    if (v6)
    {
      v46 = [v5 longLongValue];
      v7 = [[DownloadEntity alloc] initWithPersistentID:v46 inDatabase:*(a1 + 40)];
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = [NSNumber numberWithDouble:*(*(*(a1 + 104) + 8) + 24)];
      [v8 setObject:v9 forKey:@"order_key"];

      v10 = [v6 valueForProperty:@"download_state.restore_state"];
      v11 = [v10 integerValue];

      v12 = v7;
      if ((v11 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v44 = v5;
        [(DownloadEntity *)v7 resetAssetLocalPaths];
        v13 = [NSNumber numberWithInteger:0];
        [v8 setObject:v13 forKey:@"download_state.blocked_reason"];

        v14 = [v6 valueForProperty:@"download_state.phase"];
        if ((SSDownloadPhaseIsFinishedPhase() & 1) != 0 || [v14 isEqualToString:SSDownloadPhaseFailed])
        {
          [v8 setObject:SSDownloadPhaseWaiting forKey:@"download_state.phase"];
          [*(a1 + 48) addDownloadChangeTypes:2];
          [*(a1 + 48) addStatusChangedDownloadID:v46];
          [*(a1 + 48) addDownloadToPipelineWithID:v46];
        }

        if (v11 == 1)
        {
          v15 = [NSNumber numberWithInteger:0];
          [v8 setObject:v15 forKey:@"download_state.restore_state"];

          [*(a1 + 48) addDownloadChangeTypes:32];
          [*(a1 + 48) addRestorableDownloadID:v46];
        }

        else
        {
          [*(a1 + 56) addObject:v44];
        }

        v12 = v7;

        v5 = v44;
      }

      *(*(*(a1 + 112) + 8) + 24) = [(DownloadEntity *)v12 setValuesWithDictionary:v8];
      [*(a1 + 48) addDownloadChangeTypes:1];
      v26 = v12;
      v27 = *(a1 + 48);
      v28 = [v6 valueForProperty:@"kind"];
      [v27 addDownloadKind:v28];

      [*(a1 + 32) removeObjectForKey:v5];
      goto LABEL_45;
    }

    v16 = [*(a1 + 64) newDownloadWithClientXPCDownload:v4 error:0];
    v17 = [v16 valueForProperty:@"kind"];
    if (v16)
    {
      if (*(a1 + 128) & 1) != 0 || ([*(a1 + 64) supportsDownloadKind:v17])
      {
        v18 = [[NSArray alloc] initWithObjects:{v16, 0}];
        v19 = [*(a1 + 88) importDownloads:v18 initialOrderKey:*(*(*(a1 + 104) + 8) + 24) orderKeyIncrement:*(a1 + 120)];
        *(*(*(a1 + 112) + 8) + 24) = [v19 count]== 1;
        if (*(*(*(a1 + 112) + 8) + 24) == 1)
        {
          v20 = v5;
          v21 = [v16 valueForProperty:@"is_restore"];
          v22 = [v21 BOOLValue];

          v23 = *(a1 + 48);
          if (v22)
          {
            [v23 addDownloadChangeTypes:32];
            v24 = *(a1 + 48);
            v25 = [v19 firstObject];
            [v24 addRestorableDownloadID:{objc_msgSend(v25, "longLongValue")}];
          }

          else
          {
            [v23 addDownloadsToPipelineWithIDs:v19];
          }

          v5 = v20;
          if (SSDownloadKindIsSoftwareKind())
          {
            v39 = [v16 valueForProperty:@"bundle_id"];
            if (v39)
            {
              v40 = *(a1 + 96);
              v41 = [v19 lastObject];
              v42 = v40;
              v5 = v20;
              [v42 setObject:v41 forKey:v39];

              v6 = 0;
            }
          }
        }

        goto LABEL_43;
      }

      v45 = v5;
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v33 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v33 |= 2u;
      }

      v34 = [v18 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v33;
      }

      else
      {
        v35 = v33 & 2;
      }

      if (!v35)
      {

        v5 = v45;
        goto LABEL_44;
      }

      v36 = objc_opt_class();
      v37 = *(a1 + 80);
      v47 = 138412802;
      v48 = v36;
      v49 = 2112;
      v50 = v37;
      v51 = 2112;
      v52 = v17;
      v38 = v36;
      v32 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, v34, 0, "%@: Client '%@' cannot access kind: %@", &v47, 32);

      v6 = 0;
      v5 = v45;
      if (!v32)
      {
LABEL_44:

LABEL_45:
        *(*(*(a1 + 104) + 8) + 24) = *(a1 + 120) + *(*(*(a1 + 104) + 8) + 24);

        goto LABEL_46;
      }
    }

    else
    {
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v29) = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        LODWORD(v29) = v29 | 2;
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v29;
      }

      else
      {
        v29 &= 2u;
      }

      if (!v29)
      {
        goto LABEL_43;
      }

      v47 = 138412290;
      v48 = objc_opt_class();
      v30 = v5;
      v31 = v48;
      v32 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, v19, 0, "%@: Could not create import download for client download", &v47, 12);

      v5 = v30;
      if (!v32)
      {
        goto LABEL_44;
      }
    }

    v19 = [NSString stringWithCString:v32 encoding:4];
    free(v32);
    SSFileLog();
LABEL_43:

    goto LABEL_44;
  }

LABEL_46:

  return 1;
}

void sub_1001C7F9C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:kSSNotificationAutomaticDownloadSettingsChanged object:0];
}

void sub_1001C80BC(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v3 = xpc_dictionary_get_value(*(a1 + 32), "2");
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_endpoint)
  {
    v5 = xpc_connection_create_from_endpoint(v4);
    if (v5)
    {
      v8 = [[DownloadHandlerClient alloc] initWithInputConnection:*(a1 + 48)];
      [(DownloadHandlerClient *)v8 setHandlerIdentifier:int64];
      [(XPCClient *)v8 setOutputConnectionWithConnection:v5];
      v12 = xpc_dictionary_get_value(*(a1 + 32), "3");
      v13 = v12;
      if (v12 && xpc_get_type(v12) == &_xpc_type_BOOL)
      {
        [(DownloadHandlerClient *)v8 setSessionsShouldBlockOtherDownloads:xpc_BOOL_get_value(v13)];
      }

      v14 = xpc_dictionary_get_value(*(a1 + 32), "4");

      if (v14 && xpc_get_type(v14) == &_xpc_type_array)
      {
        v15 = SSXPCCreateCFObjectFromXPCObject();
        v16 = [NSSet setWithArray:v15];
        [(DownloadHandlerClient *)v8 setDownloadPhasesToIgnore:v16];
      }

      v17 = xpc_dictionary_get_value(*(a1 + 32), "5");

      if (v17 && xpc_get_type(v17) == &_xpc_type_BOOL)
      {
        [(DownloadHandlerClient *)v8 setSessionsNeedPowerAssertion:xpc_BOOL_get_value(v17)];
      }

      v18 = +[DownloadHandlerManager handlerManager];
      [v18 addDownloadHandler:v8];

      v19 = xpc_dictionary_create(0, 0, 0);
      v20 = [(XPCClient *)v8 outputConnection];
      [v20 sendMessage:v19];
    }

    else
    {
      v8 = +[SSLogConfig sharedDaemonConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v21 = [(DownloadHandlerClient *)v8 shouldLog];
      if ([(DownloadHandlerClient *)v8 shouldLogToDisk])
      {
        LODWORD(v22) = v21 | 2;
      }

      else
      {
        LODWORD(v22) = v21;
      }

      v23 = [(DownloadHandlerClient *)v8 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v27 = 138412546;
        v28 = objc_opt_class();
        v29 = 2048;
        v30 = int64;
        v24 = v28;
        v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v23, 0, "%@: Could not create connection for endpoint: %lld", &v27, 22);

        if (v25)
        {
          v26 = [NSString stringWithCString:v25 encoding:4];
          free(v25);
          SSFileLog();
        }
      }

      else
      {
      }
    }

    goto LABEL_25;
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
LABEL_25:

    goto LABEL_26;
  }

  v27 = 138412546;
  v28 = objc_opt_class();
  v29 = 2048;
  v30 = int64;
  v9 = v28;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%@: No endpoint for asset handler: %lld", &v27, 22);

  if (v10)
  {
    v11 = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
  }

LABEL_26:
}

void sub_1001C860C(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v3 = xpc_dictionary_get_int64(*(a1 + 32), "2");
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v31 = 138412802;
    v32 = objc_opt_class();
    v33 = 2048;
    v34 = int64;
    v35 = 2048;
    v36 = v3;
    v8 = v32;
    v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Finish session %lld with type %lld", &v31, 32);

    if (!v9)
    {
      goto LABEL_13;
    }

    v7 = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    v27 = v7;
    SSFileLog();
  }

LABEL_13:
  v10 = +[DownloadHandlerManager handlerManager];
  v11 = v10;
  if (v3 > 999)
  {
    if (v3 <= 1001)
    {
      if (v3 == 1000)
      {
        [v10 cancelAuthenticationSessionWithID:int64];
      }

      else
      {
        [v10 continueAuthenticationSessionWithID:int64];
      }

      goto LABEL_59;
    }

    if (v3 != 1002)
    {
      if (v3 == 1003)
      {
        [v10 performDefaultForAuthenticationSessionWithID:int64];
      }

      else if (v3 == 1004)
      {
        [v10 rejectSpaceForAuthenticationSessionWithID:int64];
      }

      goto LABEL_59;
    }

    v14 = xpc_dictionary_get_value(*(a1 + 32), "3");
    v15 = v14;
    if (!v14 || xpc_get_type(v14) != &_xpc_type_data)
    {
      v16 = 0;
LABEL_58:
      [v11 useCredential:v16 forAuthenticationSessionWithID:{int64, v27}];

      goto LABEL_59;
    }

    v17 = SSXPCCreateCFObjectFromXPCObject();
    v30 = 0;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v30];
    v18 = v30;
    if (!v18)
    {
LABEL_57:

      goto LABEL_58;
    }

    v29 = v17;
    v19 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v31 = 138543618;
      v32 = v24;
      v33 = 2114;
      v34 = v18;
      v25 = v24;
      LODWORD(v28) = 22;
      v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v22, 16, "%{public}@: Failed to unarchive credential. Error = %{public}@", &v31, v28);

      v17 = v29;
      if (!v26)
      {
LABEL_56:

        goto LABEL_57;
      }

      v22 = [NSString stringWithCString:v26 encoding:4];
      free(v26);
      v27 = v22;
      SSFileLog();
    }

    else
    {
      v17 = v29;
    }

    goto LABEL_56;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        [v10 releaseDownloadSessionWithID:int64];
      }

      goto LABEL_59;
    }

    v12 = xpc_dictionary_get_value(*(a1 + 32), "3");
    if (v12)
    {
      v13 = [[NSError alloc] initWithXPCEncoding:v12];
    }

    else
    {
      v13 = 0;
    }

    [v11 failDownloadSessionWithID:int64 error:{v13, v27}];
LABEL_41:

    goto LABEL_59;
  }

  if (v3 == 2)
  {
    [v10 finishDownloadSessionWithID:int64];
    goto LABEL_59;
  }

  if (v3 == 3)
  {
    v12 = xpc_dictionary_get_value(*(a1 + 32), "3");
    if (v12)
    {
      v13 = [[NSError alloc] initWithXPCEncoding:v12];
    }

    else
    {
      v13 = 0;
    }

    [v11 disavowDownloadSessionWithID:int64 error:{v13, v27}];
    goto LABEL_41;
  }

LABEL_59:
}

void sub_1001C8BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v5 = +[DownloadHandlerManager handlerManager];
  v6 = [v5 sessionForSessionID:int64];

  if (v6)
  {
    v7 = [v6 sessionProperties];
    xpc_dictionary_set_int64(v3, "0", [v7 downloadIdentifier]);
    xpc_dictionary_set_int64(v3, "1", [v7 assetIdentifier]);
    v8 = [v7 downloadPhase];
    if (v8)
    {
LABEL_20:
      SSXPCDictionarySetCFObject();

      goto LABEL_21;
    }

    v9 = [v7 authenticationChallenge];
    if (!v9)
    {
      v8 = 0;
      goto LABEL_20;
    }

    v10 = v9;
    v19 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v19];
    v11 = v19;

    if (!v11)
    {
LABEL_18:

      goto LABEL_20;
    }

    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = v13 | 2;
    }

    else
    {
      LODWORD(v14) = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v11;
      v17 = v16;
      v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v15, 16, "%{public}@: Failed to archive auth challenge. Error = %{public}@", &v20, 22);

      if (!v18)
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = [NSString stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_21:
}

void sub_1001C8F3C(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v2 = +[DownloadHandlerManager handlerManager];
  [v2 resetDisavowedSessionsForHandlerWithID:int64];
}

void sub_1001C906C(uint64_t a1)
{
  v5 = [[DownloadHandlerClient alloc] initWithInputConnection:*(a1 + 32)];
  v2 = [(XPCClient *)v5 clientIdentifier];
  if (v2)
  {
    int64 = xpc_dictionary_get_int64(*(a1 + 40), "1");
    v4 = +[DownloadHandlerManager handlerManager];
    [v4 setGlobalDownloadHandlerID:int64 forClientID:v2];
  }
}

void sub_1001C91BC(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v3 = +[DownloadHandlerManager handlerManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C9288;
  v6[3] = &unk_10032B8B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  v9 = int64;
  [v3 modifyDownloadHandlerWithID:int64 usingBlock:v6];
}

void sub_1001C9288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_value(*(a1 + 32), "2");
  v5 = v4;
  if (!v4 || xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    goto LABEL_27;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = v7 | 2;
  }

  else
  {
    LODWORD(v8) = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 48);
    v20 = 138412802;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    v24 = 2112;
    v25 = v3;
    v12 = v10;
    v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Changing handler properties: %lld, %@", &v20, 32);

    if (!v13)
    {
      goto LABEL_15;
    }

    v9 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
  }

LABEL_15:
  v14 = xpc_dictionary_get_value(v5, SSDownloadHandlerPropertySessionsShouldBlockOtherDownloads);
  v15 = v14;
  if (v14 && xpc_get_type(v14) == &_xpc_type_BOOL)
  {
    [v3 setSessionsShouldBlockOtherDownloads:xpc_BOOL_get_value(v15)];
  }

  v16 = xpc_dictionary_get_value(v5, SSDownloadHandlerPropertyDownloadPhasesToIgnore);

  if (v16)
  {
    if (xpc_get_type(v16) == &_xpc_type_null)
    {
      [v3 setDownloadPhasesToIgnore:0];
    }

    else if (xpc_get_type(v16) == &_xpc_type_array)
    {
      v17 = SSXPCCreateCFObjectFromXPCObject();
      v18 = [NSSet setWithArray:v17];
      [v3 setDownloadPhasesToIgnore:v18];
    }
  }

  v19 = xpc_dictionary_get_value(v5, SSDownloadHandlerPropertySessionsNeedPowerAssertion);

  if (v19 && xpc_get_type(v19) == &_xpc_type_BOOL)
  {
    [v3 setSessionsNeedPowerAssertion:xpc_BOOL_get_value(v19)];
  }

LABEL_27:
}

void sub_1001C964C(uint64_t a1)
{
  v5 = [[NSNumber alloc] initWithDouble:{xpc_dictionary_get_double(*(a1 + 32), "2")}];
  v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{v5, @"percent", 0}];
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v4 = +[DownloadHandlerManager handlerManager];
  [v4 setSessionProperties:v2 forSessionWithID:int64];
}

void sub_1001C97C8(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), "2");
  if (v2)
  {
    xdict = v2;
    v3 = xpc_get_type(v2) == &_xpc_type_dictionary;
    v2 = xdict;
    if (v3)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = xpc_dictionary_get_value(xdict, "3");
      v6 = v5;
      if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL)
      {
        v7 = [NSNumber numberWithBool:xpc_BOOL_get_value(v6)];
        [v4 setObject:v7 forKey:@"blocks"];
      }

      v8 = xpc_dictionary_get_value(xdict, "4");

      if (v8 && xpc_get_type(v8) == &_xpc_type_BOOL)
      {
        v9 = [NSNumber numberWithBool:xpc_BOOL_get_value(v8)];
        [v4 setObject:v9 forKey:@"pausable"];
      }

      v10 = xpc_dictionary_get_value(xdict, "5");

      if (v10 && xpc_get_type(v10) == &_xpc_type_BOOL)
      {
        v11 = [NSNumber numberWithBool:xpc_BOOL_get_value(v10)];
        [v4 setObject:v11 forKey:@"needspowerassert"];
      }

      if ([v4 count])
      {
        int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
        v13 = +[DownloadHandlerManager handlerManager];
        [v13 setSessionProperties:v4 forSessionWithID:int64];
      }

      v2 = xdict;
    }
  }
}

void sub_1001C9AA0(uint64_t a1)
{
  objc_opt_class();
  v5 = SSXPCDictionaryCopyCFObjectWithClass();
  v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{v5, @"status", 0}];
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "1");
  v4 = +[DownloadHandlerManager handlerManager];
  [v4 setSessionProperties:v2 forSessionWithID:int64];
}

void sub_1001C9C04(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(*(a1 + 40) + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C9E6C;
  v15[3] = &unk_10032B8E0;
  v4 = v2;
  v16 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v15];
  v5 = [*(*(a1 + 40) + 24) count];
  while (v5-- >= 1)
  {
    v7 = [*(*(a1 + 40) + 24) objectAtIndex:v5];

    if (v7 == v4)
    {
      v8 = +[SSLogConfig sharedDaemonConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        LODWORD(v10) = v9 | 2;
      }

      else
      {
        LODWORD(v10) = v9;
      }

      v11 = [v8 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v4;
        v13 = v12;
        v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Client disconnect: %@", &v17, 22);

        if (v14)
        {
          v11 = [NSString stringWithCString:v14 encoding:4];
          free(v14);
          SSFileLog();
          goto LABEL_15;
        }
      }

      else
      {
LABEL_15:
      }

      [v4 setOutputConnectionWithConnection:0];
      [*(*(a1 + 40) + 24) removeObjectAtIndex:v5];
      break;
    }
  }
}

void sub_1001C9FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C9FB8(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = [v32 database];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v31 = SSDownloadPhaseCanceled;
    p_info = &OBJC_METACLASS___ISFairPlayRentalInfo.info;
    v30 = v3;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [objc_alloc((p_info + 16)) initWithPersistentID:objc_msgSend(v9 inDatabase:{"longLongValue"), v3}];
        if (([*(a1 + 40) canAccessDownload:v10] & 1) == 0)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          goto LABEL_35;
        }

        v11 = @"download_state.can_cancel";
        v44 = 0;
        v45 = v11;
        [v10 getValues:&v44 forProperties:&v45 count:1];
        if (v44 && ![v44 BOOLValue])
        {
          v19 = +[SSLogConfig sharedDaemonConfig];
          if (!v19)
          {
            v19 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v20) = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            LODWORD(v20) = v20 | 2;
          }

          v21 = [v19 OSLogObject];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v20 = v20;
          }

          else
          {
            v20 &= 2u;
          }

          if (v20)
          {
            v22 = objc_opt_class();
            v23 = *(a1 + 40);
            v38 = 138412802;
            v39 = v22;
            v40 = 2112;
            v41 = v9;
            v42 = 2112;
            v43 = v23;
            v24 = v22;
            LODWORD(v29) = 32;
            v25 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v21, 1, "%@: Cancel requested for a non-cancellable download %@ for client: %@", &v38, v29);

            v3 = v30;
            if (v25)
            {
              v21 = [NSString stringWithCString:v25 encoding:4];
              free(v25);
              v28 = v21;
              SSFileLog();
              goto LABEL_32;
            }
          }

          else
          {
LABEL_32:
          }

          goto LABEL_34;
        }

        v12 = +[SSLogConfig sharedDaemonConfig];
        if (!v12)
        {
          v12 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v13) = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          LODWORD(v13) = v13 | 2;
        }

        v14 = [v12 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v13 = v13;
        }

        else
        {
          v13 &= 2u;
        }

        if (!v13)
        {
          goto LABEL_19;
        }

        v15 = objc_opt_class();
        v16 = *(a1 + 40);
        v38 = 138412802;
        v39 = v15;
        v40 = 2112;
        v41 = v9;
        v42 = 2112;
        v43 = v16;
        v17 = v15;
        LODWORD(v29) = 32;
        v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 1, "%@: Canceling download %@ for client: %@", &v38, v29);

        v3 = v30;
        if (v18)
        {
          v14 = [NSString stringWithCString:v18 encoding:4];
          free(v18);
          v28 = v14;
          SSFileLog();
LABEL_19:
        }

        *(*(*(a1 + 56) + 8) + 24) = [v32 finishDownloadWithID:objc_msgSend(v9 finalPhase:{"longLongValue"), v31}];
LABEL_34:

        p_info = (&OBJC_METACLASS___ISFairPlayRentalInfo + 32);
LABEL_35:
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v5);
  }

  v26 = *(*(*(a1 + 56) + 8) + 24);
  return v26;
}

void sub_1001CA500(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadController"];
}

void sub_1001CA648(uint64_t a1, void *a2)
{
  v18 = a2;
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  [v3 addObject:v5];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [SSSQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v11];
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v13 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];
  [v3 addObject:v13];
  v14 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v3];
  v15 = [v18 database];
  v16 = [DownloadEntity queryWithDatabase:v15 predicate:v14];

  v25 = @"bundle_id";
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001CA8F8;
  v19[3] = &unk_100327958;
  v20 = *(a1 + 40);
  [v16 enumeratePersistentIDsAndProperties:&v25 count:1 usingBlock:v19];

  objc_autoreleasePoolPop(context);
}

void sub_1001CA8F8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v4 = *(a1 + 32);
    v5 = [NSNumber numberWithLongLong:a2];
    [v4 setObject:v5 forKey:*a3];
  }
}

void sub_1001CAA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [DownloadEntity databasePropertyToGetClientProperty:a2];
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }
}

void sub_1001CABB8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _managerClientForConnection:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

void sub_1001CAD00(uint64_t a1)
{
  message = xpc_dictionary_create_reply(*(a1 + 32));
  v2 = *(a1 + 56);
  v3 = [*(a1 + 40) _managerClientForConnection:*(a1 + 48)];
  (*(v2 + 16))(v2, v3, message);

  xpc_connection_send_message(*(a1 + 48), message);
}

void sub_1001CAF14(uint64_t a1)
{
  message = xpc_dictionary_create_reply(*(a1 + 32));
  (*(*(a1 + 48) + 16))();
  xpc_connection_send_message(*(a1 + 40), message);
}

void sub_1001CB3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CB3F0(uint64_t a1, void *a2)
{
  v33 = a2;
  v36 = [v33 database];
  v34 = objc_alloc_init(NSMutableOrderedSet);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [v7 longLongValue];
        v9 = [[DownloadEntity alloc] initWithPersistentID:v8 inDatabase:v36];
        if (([*(a1 + 40) canAccessDownload:v9] & 1) == 0)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          goto LABEL_49;
        }

        v10 = [(DownloadEntity *)v9 downloadKind];
        IsSoftwareKind = SSDownloadKindIsSoftwareKind();

        if (IsSoftwareKind)
        {
          v12 = +[SSLogConfig sharedDaemonConfig];
          if (!v12)
          {
            v12 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v13) = [v12 shouldLog];
          if ([v12 shouldLogToDisk])
          {
            LODWORD(v13) = v13 | 2;
          }

          v14 = [v12 OSLogObject];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v13 = v13;
          }

          else
          {
            v13 &= 2u;
          }

          if (v13)
          {
            v15 = objc_opt_class();
            v44 = 138412546;
            v45 = v15;
            v46 = 2112;
            v47 = v7;
            v16 = v15;
            LODWORD(v32) = 22;
            v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 1, "[%@]: Ignoring pausing of software downloadID: %@", &v44, v32);

            if (v17)
            {
              v14 = [NSString stringWithCString:v17 encoding:4];
              free(v17);
              v31 = v14;
              SSFileLog();
              goto LABEL_18;
            }
          }

          else
          {
LABEL_18:
          }

          *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64) > 1;
          goto LABEL_49;
        }

        v43[0] = @"download_state.phase";
        v43[1] = @"IFNULL(download_state.can_pause, 1)";
        v41 = 0;
        v42 = 0;
        [(DownloadEntity *)v9 getValues:&v41 forProperties:v43 count:2];
        if (*(a1 + 72) & 1) != 0 || ([v42 BOOLValue])
        {
          if (SSDownloadPhaseIsPausable())
          {
            [v34 addObject:v7];
            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_47;
          }

          v18 = +[SSLogConfig sharedDaemonConfig];
          if (!v18)
          {
            v18 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v19) = [v18 shouldLog];
          if ([v18 shouldLogToDisk])
          {
            LODWORD(v19) = v19 | 2;
          }

          v20 = [v18 OSLogObject];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v19;
          }

          else
          {
            v19 &= 2u;
          }

          if (!v19)
          {
            goto LABEL_45;
          }

          v21 = objc_opt_class();
          v44 = 138412546;
          v45 = v21;
          v46 = 2112;
          v47 = v41;
          v22 = v21;
          LODWORD(v32) = 22;
          v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v20, 0, "%@: Can't pause phase: %@", &v44, v32);
        }

        else
        {
          v18 = +[SSLogConfig sharedDaemonConfig];
          if (!v18)
          {
            v18 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v24) = [v18 shouldLog];
          if ([v18 shouldLogToDisk])
          {
            LODWORD(v24) = v24 | 2;
          }

          v20 = [v18 OSLogObject];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v24;
          }

          else
          {
            v24 &= 2u;
          }

          if (!v24)
          {
            goto LABEL_45;
          }

          v25 = objc_opt_class();
          v44 = 138412546;
          v45 = v25;
          v46 = 2048;
          v47 = v8;
          v22 = v25;
          LODWORD(v32) = 22;
          v23 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v20, 0, "%@: Can't pause download: %lld", &v44, v32);
        }

        v26 = v23;

        if (v26)
        {
          v20 = [NSString stringWithCString:v26 encoding:4];
          free(v26);
          v31 = v20;
          SSFileLog();
LABEL_45:
        }

        *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64) > 1;
LABEL_47:
        for (j = 1; j != -1; --j)
        {
        }

LABEL_49:
        v28 = *(*(*(a1 + 56) + 8) + 24);

        if (v28 != 1)
        {
          goto LABEL_52;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v4);
  }

LABEL_52:

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && [v34 count])
  {
    *(*(*(a1 + 56) + 8) + 24) = [v33 pauseDownloadsWithIdentifiers:v34];
  }

  v29 = *(*(*(a1 + 56) + 8) + 24);

  return v29;
}

void sub_1001CBBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

uint64_t sub_1001CBBDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DownloadEntity alloc];
  v5 = [*(a1 + 32) longLongValue];
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v4 initWithPersistentID:v5 inDatabase:v6];

  if (([*(a1 + 40) canAccessDownload:v7] & 1) == 0)
  {
    v19 = SSError();
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

LABEL_20:
    v18 = *(*(*(a1 + 72) + 8) + 24);
    goto LABEL_21;
  }

  v8 = [(DownloadEntity *)v7 downloadKind];
  IsSoftwareKind = SSDownloadKindIsSoftwareKind();

  if (!IsSoftwareKind)
  {
    v22 = [*(a1 + 32) longLongValue];
    v23 = [*(a1 + 56) longLongValue];
    v28 = 0;
    v24 = [v3 prioritizeDownloadWithID:v22 aboveDownloadWithID:v23 error:&v28];
    v25 = v28;
    v26 = v28;
    *(*(*(a1 + 72) + 8) + 24) = v24;
    if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v25);
    }

    goto LABEL_20;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = v11 | 2;
  }

  else
  {
    LODWORD(v12) = v11;
  }

  v13 = [v10 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = objc_opt_class();
  v15 = *(a1 + 32);
  v29 = 138412546;
  v30 = v14;
  v31 = 2112;
  v32 = v15;
  v16 = v14;
  v17 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v13, 0, "[%@]: Unable to prioritize software downloadID: %@", &v29, 22);

  if (v17)
  {
    v13 = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_14:
  }

  v18 = 0;
LABEL_21:

  return v18 & 1;
}

void sub_1001CC274(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) object];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CC358;
  v10 = v9[3] = &unk_10032B9D0;
  v6 = *(a1 + 40);
  v14 = a2;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 48);
  v7 = v5;
  v8 = v10;
  [v8 _dispatchAsync:v9];
}

id sub_1001CC358(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = 138413058;
  v14 = v6;
  v15 = 2112;
  v16 = v8;
  v17 = 1024;
  v18 = v7;
  v19 = 2112;
  v20 = v9;
  v10 = v6;
  v11 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Rescue for %@, success: %d, error: %@", &v13, 38);

  if (v11)
  {
    v5 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
LABEL_12:
  }

  return [*(*(a1 + 56) + 40) removeObject:*(a1 + 40)];
}

uint64_t sub_1001CC774(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 database];
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = a1;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v25 = v3;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v9 longLongValue], v3);
        if ([*(v27 + 40) canAccessDownload:v10])
        {
          v11 = [(DownloadEntity *)v10 downloadKind];
          IsSoftwareKind = SSDownloadKindIsSoftwareKind();

          if (IsSoftwareKind)
          {
            v13 = v4;
            v14 = +[SSLogConfig sharedDaemonConfig];
            if (!v14)
            {
              v14 = +[SSLogConfig sharedConfig];
            }

            v15 = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              LODWORD(v16) = v15 | 2;
            }

            else
            {
              LODWORD(v16) = v15;
            }

            v17 = [v14 OSLogObject];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v16;
            }

            else
            {
              v16 &= 2u;
            }

            if (v16)
            {
              v18 = objc_opt_class();
              v32 = 138412546;
              v33 = v18;
              v34 = 2112;
              v35 = v9;
              v19 = v18;
              LODWORD(v23) = 22;
              v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v17, 0, "[%@]: Unable to resume software downloadID: %@", &v32, v23);

              if (v20)
              {
                v17 = [NSString stringWithCString:v20 encoding:4];
                free(v20);
                v22 = v17;
                SSFileLog();
                goto LABEL_19;
              }
            }

            else
            {
LABEL_19:
            }

            v4 = v13;
            v3 = v25;
            goto LABEL_22;
          }

          [v4 addObject:v9];
        }

LABEL_22:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    [v24 resetDownloadsWithIdentifiers:v4];
  }

  [*(v27 + 48) _retryRestoreIfNecessaryForTransaction:{v24, v22}];

  return 1;
}

uint64_t sub_1001CCCF8(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 database];
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = a1;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v25 = v3;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v9 longLongValue], v3);
        if ([*(v27 + 40) canAccessDownload:v10])
        {
          v11 = [(DownloadEntity *)v10 downloadKind];
          IsSoftwareKind = SSDownloadKindIsSoftwareKind();

          if (IsSoftwareKind)
          {
            v13 = v4;
            v14 = +[SSLogConfig sharedDaemonConfig];
            if (!v14)
            {
              v14 = +[SSLogConfig sharedConfig];
            }

            v15 = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              LODWORD(v16) = v15 | 2;
            }

            else
            {
              LODWORD(v16) = v15;
            }

            v17 = [v14 OSLogObject];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v16;
            }

            else
            {
              v16 &= 2u;
            }

            if (v16)
            {
              v18 = objc_opt_class();
              v32 = 138412546;
              v33 = v18;
              v34 = 2112;
              v35 = v9;
              v19 = v18;
              LODWORD(v23) = 22;
              v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v17, 0, "[%@]: Unable to restart software downloadID: %@", &v32, v23);

              if (v20)
              {
                v17 = [NSString stringWithCString:v20 encoding:4];
                free(v20);
                v22 = v17;
                SSFileLog();
                goto LABEL_19;
              }
            }

            else
            {
LABEL_19:
            }

            v4 = v13;
            v3 = v25;
            goto LABEL_22;
          }

          [v4 addObject:v9];
        }

LABEL_22:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    [v24 restartDownloadsWithIdentifiers:v4];
  }

  return 1;
}

void sub_1001CD768(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = [*(*(a1 + 32) + 80) count];
    v9 = 134217984;
    v10 = v6;
    v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 16, "Received SIGTERM, releasing %lu transactions", &v9);
    if (v7)
    {
      v8 = v7;
      [NSString stringWithCString:v7 encoding:4];
      free(v8);
      SSFileLog();
    }
  }

  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 80) = 0;
}

id sub_1001CD9F8(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100384080 = result;
  return result;
}

id sub_1001CDC6C(uint64_t a1, _xpc_activity_s *a2)
{
  [*(a1 + 32) takeKeepAliveAssertion:*(a1 + 40)];
  v4 = [*(a1 + 40) UTF8String];
  if (xpc_activity_get_state(a2) == 2 && v4)
  {
    [*(a1 + 32) _handleWakeWithName:v4 job:*(a1 + 48)];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 releaseKeepAliveAssertion:v6];
}

id sub_1001CDD5C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:*(a1 + 32) selector:"_operationCountChanged:" name:ISOperationQueueOperationCountChangedNotification object:*(a1 + 40)];
    [*(*(a1 + 32) + 88) addObject:*(a1 + 40)];
    v4 = *(a1 + 32);

    return [v4 _reloadOperationKeepAliveTransaction];
  }

  return result;
}

void sub_1001CDE80(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (v2)
  {
    [v2 addObject:a1[6]];
  }

  else
  {
    v3 = [[NSMutableSet alloc] initWithObjects:{a1[6], 0}];
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = *(a1[4] + 112);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1001CDFE0;
  applier[3] = &unk_10032BA48;
  applier[4] = a1[5];
  applier[5] = v4;
  xpc_dictionary_apply(v5, applier);
  if (xpc_dictionary_get_count(v4))
  {
    v6 = dispatch_queue_create("com.apple.itunesstored.Daemon.observers", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CE04C;
    block[3] = &unk_10032A7D8;
    v7 = a1[6];
    block[5] = v6;
    block[6] = v7;
    block[4] = v4;
    dispatch_async(v6, block);
  }

  xpc_release(v4);
}

uint64_t sub_1001CDFE0(uint64_t a1, const char *a2, void *a3)
{
  v6 = [[NSString alloc] initWithUTF8String:a2];
  if ([v6 hasPrefix:*(a1 + 32)])
  {
    xpc_dictionary_set_value(*(a1 + 40), a2, a3);
  }

  return 1;
}

void sub_1001CE04C(uint64_t a1)
{
  v2 = *(a1 + 32);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1001CE0D4;
  applier[3] = &unk_10032BA70;
  applier[4] = *(a1 + 48);
  xpc_dictionary_apply(v2, applier);
  dispatch_release(*(a1 + 40));
}

uint64_t sub_1001CE0D4(uint64_t a1, uint64_t a2)
{
  v3 = [[NSString alloc] initWithUTF8String:a2];
  (*(*(a1 + 32) + 16))();

  return 1;
}

void sub_1001CE2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001CE2F0(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 40) objectForKey:{a1[5]), "object"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

void sub_1001CE3AC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(DaemonCachedObject);
    [(DaemonCachedObject *)v2 setObject:*(a1 + 32)];
    if (*(a1 + 56) > 2.22044605e-16)
    {
      v3 = [SSWeakReference weakReferenceWithObject:*(a1 + 40)];
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 40) + 56));
      v5 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      dispatch_source_set_timer(v4, v5, 0, 0);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001CE54C;
      v10[3] = &unk_100327350;
      v6 = *(a1 + 48);
      v10[4] = v3;
      v10[5] = v6;
      dispatch_source_set_event_handler(v4, v10);
      [(DaemonCachedObject *)v2 setExpirationTimer:v4];
      dispatch_resume(v4);
      dispatch_release(v4);
    }

    v7 = *(*(a1 + 40) + 40);
    if (!v7)
    {
      *(*(a1 + 40) + 40) = objc_alloc_init(NSMutableDictionary);
      v7 = *(*(a1 + 40) + 40);
    }

    [v7 setObject:v2 forKey:*(a1 + 48)];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 40);

    [v9 removeObjectForKey:v8];
  }
}

id sub_1001CE54C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _expireCachedObjectForKey:v3];
}

void sub_1001CE5FC(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  xpc_activity_unregister(v2);
  v3 = +[SSLogConfig sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v8 = *(a1 + 32);
    v11 = 138543362;
    v12 = v8;
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 0, "Canceled activity: %{public}@", &v11, 12);
    if (v9)
    {
      v10 = v9;
      [NSString stringWithCString:v9 encoding:4];
      free(v10);
      SSFileLog();
    }
  }

  xpc_dictionary_set_value(*(*(a1 + 40) + 112), v2, 0);
}

uint64_t sub_1001CE7EC(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 48);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 48) = v4;
  }

  return result;
}

void sub_1001CE988(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    if (*(v2 + 80))
    {
      [v3 addObject:*(a1 + 40)];
      if ([*(*(a1 + 32) + 72) countForObject:*(a1 + 40)] == 1)
      {
        [*(a1 + 40) UTF8String];
        v4 = os_transaction_create();
        [*(*(a1 + 32) + 80) setObject:v4 forKeyedSubscript:*(a1 + 40)];
      }
    }
  }
}

id sub_1001CEAB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 72);
  if (result)
  {
    if (*(v2 + 80))
    {
      [result removeObject:*(a1 + 40)];
      result = [*(*(a1 + 32) + 72) countForObject:*(a1 + 40)];
      if (!result)
      {
        v4 = *(a1 + 40);
        v5 = *(*(a1 + 32) + 80);

        return [v5 setObject:0 forKeyedSubscript:v4];
      }
    }
  }

  return result;
}

id sub_1001CEBA8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 16) objectForKey:*(*(&v8 + 1) + 8 * v6)];
        if (v7)
        {
          [v7 removeObject:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

id sub_1001CEDA4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:*(a1 + 32) name:ISOperationQueueOperationCountChangedNotification object:*(a1 + 40)];
  [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 _reloadOperationKeepAliveTransaction];
}

void sub_1001CFD58(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(reply, "0", *(*(a1 + 40) + 48) > 0);
  xpc_connection_send_message(*(a1 + 48), reply);

  xpc_release(reply);
}

void sub_1001D023C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * i) + 16))();
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  dispatch_release(*(a1 + 56));
}

void sub_1001D03AC(id a1)
{
  v1 = objc_alloc_init(SubscriptionOperation);
  [(SubscriptionOperation *)v1 setOperationType:2];
  [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
}

BOOL sub_1001D0408(id a1)
{
  v1 = [objc_msgSend(objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if (!v1)
  {
    return [objc_msgSend(+[SSDevice currentDevice](SSDevice "currentDevice")] > 0;
  }

  v2 = v1;
  v3 = objc_alloc_init(SSVFairPlaySubscriptionController);
  LOBYTE(v2) = [objc_msgSend(v3 subscriptionStatusForAccountUniqueIdentifier:{v2), "hasSubscriptionSlot"}];

  if (v2)
  {
    return 1;
  }

  v5 = dispatch_semaphore_create(0);
  dispatch_retain(v5);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_1001CE2D4;
  v17 = sub_1001CE2E4;
  v18 = 0;
  v6 = +[SSVSubscriptionStatusCoordinator sharedCoordinator];
  v19 = SSVSubscriptionStatusOptionAuthenticatesIfNecessary;
  v20 = &__kCFBooleanFalse;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D0640;
  v12[3] = &unk_10032BB20;
  v12[4] = v5;
  v12[5] = &v13;
  [v6 getStatusWithOptions:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary statusBlock:{"dictionaryWithObjects:forKeys:count:", &v20, &v19, 1), v12}];
  v7 = dispatch_time(0, 60000000000);
  v8 = dispatch_semaphore_wait(v5, v7);
  dispatch_release(v5);
  v9 = v14;
  if (v8 || (v10 = v14[5]) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v10 accountStatus] == 3;
    v9 = v14;
  }

  _Block_object_dispose(&v13, 8);
  return v4;
}

void sub_1001D0624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D0640(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    dispatch_semaphore_signal(*(a1 + 32));
    v4 = *(a1 + 32);

    dispatch_release(v4);
  }
}

uint64_t sub_1001D091C(uint64_t a1)
{
  if ((+[ISFileProtectionClassMigrator migrate]& 1) == 0)
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v10[0] = 0;
      v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 16, "Data Protection migration to class C failed", v10, 2);
      if (v7)
      {
        v8 = v7;
        [NSString stringWithCString:v7 encoding:4];
        free(v8);
        SSFileLog();
      }
    }
  }

  return notify_cancel(*(a1 + 32));
}

void sub_1001D0BF4()
{
  v0 = +[SSLogConfig sharedDaemonConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 2;
  }

  if (v5)
  {
    LOWORD(v74) = 0;
    v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v3, 0, "Daemon: Setup finished", &v74, 2);
    if (v6)
    {
      v7 = v6;
      v8 = [NSString stringWithCString:v6 encoding:4];
      free(v7);
      v67 = v8;
      SSFileLog();
    }
  }

  v9 = off_100383730(v4);
  v10 = +[SSLogConfig sharedAccountsConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      LOWORD(v74) = 0;
      LODWORD(v71) = 2;
      v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 0, "Daemon: Not performing silent auth because setup has not finished", &v74, v71);
      goto LABEL_23;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v18 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v11 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      LOWORD(v74) = 0;
      LODWORD(v71) = 2;
      v22 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v20, 0, "Daemon: Attempting to perform silent auth.", &v74, v71);
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4];
        free(v23);
        v68 = v24;
        SSFileLog();
      }
    }

    if ([+[AMSDevice deviceOffers](AMSDevice deviceOffers])
    {
      v25 = +[ACAccountStore ams_sharedAccountStore];
      v26 = [v25 ams_activeiTunesAccount];
      if (v26)
      {
        goto LABEL_50;
      }

      v27 = +[SSLogConfig sharedAccountsConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      v28 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = v28 | 2;
      }

      else
      {
        v29 = v28;
      }

      v30 = [v27 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v29;
      }

      else
      {
        v31 = v29 & 2;
      }

      if (v31)
      {
        LOWORD(v74) = 0;
        LODWORD(v71) = 2;
        v32 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v30, 0, "Daemon: There's no active iTunes account. Trying to find an inactive iTunes account matching the active iCloud account.", &v74, v71);
        if (v32)
        {
          v33 = v32;
          v34 = [NSString stringWithCString:v32 encoding:4];
          free(v33);
          v69 = v34;
          SSFileLog();
        }
      }

      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1001D20A4;
      v73[3] = &unk_10032BC28;
      v73[4] = [v25 ams_activeiCloudAccount];
      v26 = [objc_msgSend(v25 "ams_iTunesAccounts")];
      if (v26)
      {
LABEL_50:
        v35 = v26;
        v72 = 0;
        v36 = [+[ACAccountStore ams_sharedAccountStore](ACAccountStore "ams_sharedAccountStore")];
        if (v72)
        {
          v37 = +[SSLogConfig sharedAccountsConfig];
          if (!v37)
          {
            v37 = +[SSLogConfig sharedConfig];
          }

          v38 = [v37 shouldLog];
          if ([v37 shouldLogToDisk])
          {
            v39 = v38 | 2;
          }

          else
          {
            v39 = v38;
          }

          v40 = [v37 OSLogObject];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = v39;
          }

          else
          {
            v41 = v39 & 2;
          }

          if (v41)
          {
            v74 = 138543362;
            v75 = v72;
            LODWORD(v71) = 12;
            v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &_mh_execute_header, v40, 16, "Daemon: Failed to fetch IDMS account with error: %{public}@", &v74, v71);
            if (v42)
            {
              v43 = v42;
              v44 = [NSString stringWithCString:v42 encoding:4];
              free(v43);
              v69 = v44;
              SSFileLog();
            }
          }
        }

        if (v36 && [+[AKAccountManager securityLevelForAccount:"securityLevelForAccount:"]
        {
          v45 = +[SSLogConfig sharedAccountsConfig];
          if (!v45)
          {
            v45 = +[SSLogConfig sharedConfig];
          }

          v46 = [v45 shouldLog];
          if ([v45 shouldLogToDisk])
          {
            v47 = v46 | 2;
          }

          else
          {
            v47 = v46;
          }

          v48 = [v45 OSLogObject];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v47;
          }

          else
          {
            v49 = v47 & 2;
          }

          if (v49)
          {
            LOWORD(v74) = 0;
            LODWORD(v71) = 2;
            v50 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, v48, 0, "Daemon: Setting PET to nil", &v74, v71);
            if (v50)
            {
              v51 = v50;
              v52 = [NSString stringWithCString:v50 encoding:4];
              free(v51);
              v70 = v52;
              SSFileLog();
            }
          }

          [v35 ams_setPassword:{0, v70}];
          [+[ACAccountStore ams_sharedAccountStore](ACAccountStore "ams_sharedAccountStore")];
        }

        else
        {
          v53 = +[SSLogConfig sharedAccountsConfig];
          if (!v53)
          {
            v53 = +[SSLogConfig sharedConfig];
          }

          v54 = [v53 shouldLog];
          if ([v53 shouldLogToDisk])
          {
            v55 = v54 | 2;
          }

          else
          {
            v55 = v54;
          }

          v56 = [v53 OSLogObject];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v55;
          }

          else
          {
            v57 = v55 & 2;
          }

          if (v57)
          {
            LOWORD(v74) = 0;
            LODWORD(v71) = 2;
            v58 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &_mh_execute_header, v56, 0, "Daemon: Skip Setting PET to nil", &v74, v71);
            if (v58)
            {
              v59 = v58;
              [NSString stringWithCString:v58 encoding:4];
              free(v59);
              SSFileLog();
            }
          }
        }

        v60 = objc_alloc_init(AMSAuthenticateOptions);
        [v60 setAuthenticationType:1];
        [v60 setCanMakeAccountActive:0];
        v61 = [[AMSAuthenticateTask alloc] initWithAccount:v35 options:v60];
        qword_100384090 = [v61 performAuthentication];
        [qword_100384090 addSuccessBlock:&stru_10032BC68];
        [qword_100384090 addErrorBlock:&stru_10032BCA8];
      }

      else
      {
        v62 = +[SSLogConfig sharedAccountsConfig];
        if (!v62)
        {
          v62 = +[SSLogConfig sharedConfig];
        }

        v63 = [v62 shouldLog];
        if ([v62 shouldLogToDisk])
        {
          v64 = v63 | 2;
        }

        else
        {
          v64 = v63;
        }

        v65 = [v62 OSLogObject];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = v64;
        }

        else
        {
          v66 = v64 & 2;
        }

        if (v66)
        {
          LOWORD(v74) = 0;
          LODWORD(v71) = 2;
          v16 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, v65, 16, "Daemon: We don't have an iTunes account to perform the silent auth with.", &v74, v71);
LABEL_23:
          if (v16)
          {
            v17 = v16;
            [NSString stringWithCString:v16 encoding:4];
            free(v17);
            SSFileLog();
          }
        }
      }
    }
  }
}

void sub_1001D1470(id a1, NSNotification *a2)
{
  v2 = +[SpringBoardUtility sharedInstance];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v12[0] = 0;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 1, "Removing default png snapshots after storefront change", v12, 2);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v11 = v10;
      SSFileLog();
    }
  }

  [(SpringBoardUtility *)v2 removeDefaultPNGSnapshotsForIdentifier:@"com.apple.AppStore", v11];
  [(SpringBoardUtility *)v2 removeDefaultPNGSnapshotsForIdentifier:@"com.apple.MobileStore"];
}

uint64_t sub_1001D15B8(uint64_t a1)
{
  v1 = +[SSLogConfig sharedDaemonConfig];
  if (!v1)
  {
    v1 = +[SSLogConfig sharedConfig];
  }

  v2 = [v1 shouldLog];
  if ([v1 shouldLogToDisk])
  {
    LODWORD(v3) = v2 | 2;
  }

  else
  {
    LODWORD(v3) = v2;
  }

  v4 = [v1 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v3;
  }

  else
  {
    v3 &= 2u;
  }

  if (v3)
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v5 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &_mh_execute_header, v4, 0, "[%@]: Received low memory warning", &v8, 12);
    if (v5)
    {
      v6 = v5;
      [NSString stringWithCString:v5 encoding:4];
      free(v6);
      SSFileLog();
    }
  }

  CFPreferencesAppSynchronize(kITunesStoreDaemonDefaultsID);
  +[PurchaseManifest jetsam];
  +[NSURLCache sharedURLCache];
  return ISURLCachePurgeMemoryCache();
}

void sub_1001D1734()
{
  v0 = +[SSLogConfig sharedDaemonConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (v4)
  {
    v18[0] = 0;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v3, 0, "Daemon: Language changed. Telling libxpc to kill us.", v18, 2);
    if (v5)
    {
      v6 = v5;
      v7 = [NSString stringWithCString:v5 encoding:4];
      free(v6);
      v15 = v7;
      SSFileLog();
    }
  }

  xpc_transaction_exit_clean();
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v12)
  {
    v17[0] = 0;
    LODWORD(v16) = 2;
    v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v11, 0, "Daemon: Language changed. Told libxpc to kill us.", v17, v16);
    if (v13)
    {
      v14 = v13;
      [NSString stringWithCString:v13 encoding:4];
      free(v14);
      SSFileLog();
    }
  }

  exit(0);
}

void sub_1001D190C(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (!string)
  {
    return;
  }

  v4 = string;
  if (!strcmp("com.apple.LaunchServices.applicationRegistered", string))
  {
    value = xpc_dictionary_get_value(a2, "UserInfo");
    if (value)
    {
      if (xpc_get_type(value) != &_xpc_type_dictionary)
      {
        v13 = +[SSLogConfig sharedDaemonConfig];
        if (!v13)
        {
          v13 = +[SSLogConfig sharedConfig];
        }

        v14 = [v13 shouldLog];
        if ([v13 shouldLogToDisk])
        {
          v15 = v14 | 2;
        }

        else
        {
          v15 = v14;
        }

        v9 = [v13 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v15;
        }

        else
        {
          v10 = v15 & 2;
        }

        if (v10)
        {
          goto LABEL_15;
        }

        return;
      }

      if (_CFXPCCreateCFObjectFromXPCObject())
      {
        return;
      }

      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      v26 = [v24 shouldLogToDisk] ? v25 | 2 : v25;
      v27 = [v24 OSLogObject];
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT) ? v26 : v26 & 2u;
      if (!v28)
      {
        return;
      }

      goto LABEL_69;
    }

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (!v20)
    {
      return;
    }

LABEL_37:
    v11 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 0, "Didn't get any user info from event: %s", &v33);
    goto LABEL_70;
  }

  if (strcmp("com.apple.LaunchServices.applicationUnregistered", v4))
  {
    return;
  }

  v5 = xpc_dictionary_get_value(a2, "UserInfo");
  if (!v5)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v19 = [v21 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v23;
    }

    else
    {
      v20 = v23 & 2;
    }

    if (!v20)
    {
      return;
    }

    goto LABEL_37;
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    if (_CFXPCCreateCFObjectFromXPCObject())
    {
      return;
    }

    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    v30 = [v29 shouldLog];
    v31 = [v29 shouldLogToDisk] ? v30 | 2 : v30;
    v27 = [v29 OSLogObject];
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT) ? v31 : v31 & 2u;
    if (!v28)
    {
      return;
    }

LABEL_69:
    v11 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 0, "Failed to convert user info XPC dictionary to CF dictionary for event: %s", &v33);
LABEL_70:
    if (v11)
    {
      v32 = v11;
      [NSString stringWithCString:v11 encoding:4];
      free(v32);
      SSFileLog();
    }

    return;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (v10)
  {
LABEL_15:
    v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 0, "User info was not a dictionary for event: %s", &v33);
    goto LABEL_70;
  }
}

void sub_1001D1E04(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    if (!strcmp("com.apple.itunesstored.invalidatebags", string))
    {
      v4 = +[ISURLBagCache sharedCache];

      [v4 invalidateAllURLBags];
    }

    else if (!strcmp("com.apple.Preferences.ResetPrivacyWarningsNotification", v3))
    {
      v5 = +[ISDevice sharedInstance];

      [(ISDevice *)v5 resetLocationAndPrivacy];
    }
  }
}

void sub_1001D1EB4(id a1, OS_xpc_object *a2)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (v6)
  {
    v9[0] = 0;
    v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 2, "Daemon: Launched by nsurlsessiond", v9, 2);
    if (v7)
    {
      v8 = v7;
      [NSString stringWithCString:v7 encoding:4];
      free(v8);
      SSFileLog();
    }
  }
}

uint64_t sub_1001D20A4(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "ams_altDSID")] & 1) != 0 || objc_msgSend(*(a1 + 32), "ams_DSID") && (objc_msgSend(objc_msgSend(a2, "ams_DSID"), "isEqualToNumber:", objc_msgSend(*(a1 + 32), "ams_DSID")))
  {
    return 1;
  }

  v5 = [a2 username];
  v6 = [*(a1 + 32) username];

  return [v5 isEqualToString:v6];
}

void sub_1001D2164(id a1, AMSAuthenticateResult *a2)
{
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v10 = 138543362;
    v11 = a2;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 0, "Daemon: Device offers auth succeeded with result: %{public}@", &v10, 12);
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4];
      free(v9);
      SSFileLog();
    }
  }
}

void sub_1001D22A8(id a1, NSError *a2)
{
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v10 = 138543362;
    v11 = a2;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 0, "Daemon: Device offers auth failed with error: %{public}@", &v10, 12);
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4];
      free(v9);
      SSFileLog();
    }
  }
}

uint64_t sub_1001D23EC()
{
  if (qword_100384098 != -1)
  {
    sub_100272574();
  }

  v0 = dlsym(qword_1003840A0, "BYSetupAssistantNeedsToRun");
  off_100383730 = v0;

  return (v0)();
}

uint64_t sub_1001D2470()
{
  if (qword_100384098 != -1)
  {
    sub_100272574();
  }

  v0 = dlsym(qword_1003840A0, "BYSetupAssistantFinishedDarwinNotification");
  if (v0)
  {
    result = *v0;
    qword_1003840A8 = result;
  }

  else
  {
    result = qword_1003840A8;
  }

  off_100383668 = sub_1001D24E0;
  return result;
}

id sub_1001D3078(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 executeSQL:@"PRAGMA legacy_file_format = 0;"] && objc_msgSend(v3, "executeSQL:", @"CREATE TABLE IF NOT EXISTS purchase_intents_table (product_identifier TEXT, app_bundle_id TEXT, timestamp INTEGER, pid INTEGER PRIMARY KEY, product_name TEXT, app_name TEXT);") && objc_msgSend(v3, "executeSQL:", @"CREATE TABLE IF NOT EXISTS install_attribution_params_table (app_adam_id INTEGER PRIMARY KEY, ad_network_id TEXT, campaign_id INTEGER, impression_id TEXT, timestamp INTEGER, attribution_signature TEXT, local_timestamp INTEGER);") && objc_msgSend(v3, "executeSQL:", @"CREATE TABLE IF NOT EXISTS install_attribution_pingback_table (app_adam_id INTEGER PRIMARY KEY, ad_network_id TEXT, campaign_id INTEGER, transaction_id TEXT, attribution_signature TEXT, pingback_url TEXT, pending INTEGER, retry_count INTEGER, local_timestamp INTEGER);"))
  {
    [v3 executeSQL:@"PRAGMA journal_mode = WAL;"];
    *a2 = 11302;
    v4 = [v3 setUserVersion:11302];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001D3124(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 executeSQL:@"ALTER TABLE purchase_intents_table ADD COLUMN product_name TEXT;"] && objc_msgSend(v3, "executeSQL:", @"ALTER TABLE purchase_intents_table ADD COLUMN app_name TEXT;"))
  {
    *a2 = 11001;
    v4 = [v3 setUserVersion:11001];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001D3198(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 executeSQL:{@"CREATE TABLE IF NOT EXISTS install_attribution_params_table (app_adam_id INTEGER PRIMARY KEY, ad_network_id TEXT, campaign_id INTEGER, impression_id TEXT, timestamp INTEGER, attribution_signature TEXT, local_timestamp INTEGER);"}] && objc_msgSend(v3, "executeSQL:", @"CREATE TABLE IF NOT EXISTS install_attribution_pingback_table (app_adam_id INTEGER PRIMARY KEY, ad_network_id TEXT, campaign_id INTEGER, transaction_id TEXT, attribution_signature TEXT, pingback_url TEXT, pending INTEGER, retry_count INTEGER, local_timestamp INTEGER);"))
  {
    *a2 = 11302;
    v4 = [v3 setUserVersion:11302];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1001D320C(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 executeSQL:@"ALTER TABLE install_attribution_params_table ADD COLUMN local_timestamp INTEGER;"] && (objc_msgSend(v3, "executeSQL:", @"ALTER TABLE install_attribution_pingback_table ADD COLUMN retry_count INTEGER;") & 1) != 0)
  {
    *a2 = 11301;
    v4 = [v3 setUserVersion:11301];
  }

  else
  {
    [v3 executeSQL:@"DROP TABLE install_attribution_params_table;"];
    [v3 executeSQL:@"DROP TABLE install_attribution_pingback_table;"];
    sub_1001D3198(v3, a2);
    v4 = 1;
  }

  return v4;
}

id sub_1001D32AC(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 executeSQL:@"ALTER TABLE install_attribution_pingback_table ADD COLUMN local_timestamp INTEGER;"])
  {
    *a2 = 11302;
    v4 = [v3 setUserVersion:11302];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001D3350(id a1)
{
  v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
  v1 = [v4 stringByAppendingPathComponent:@"com.apple.itunesstored"];
  v2 = [v1 stringByAppendingPathComponent:@"purchase_intents.sqlitedb"];
  v3 = qword_1003840B0;
  qword_1003840B0 = v2;
}

void sub_1001D4E44(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 56) _mediaAssetsForDownloadIdentifier:objc_msgSend(v11 session:{"databaseID"), *(a1 + 32)}];
  v4 = [v11 valueForProperty:{@"IFNULL(download_state.restore_state, 0)"}];
  v5 = [v4 integerValue];

  if ([v3 count] | v5)
  {
    v6 = [v11 valueForProperty:@"policy_id"];
    v7 = [v6 longLongValue];

    v8 = [PrepareDownloadOperation alloc];
    v9 = [*(a1 + 40) downloadPolicyForID:v7];
    v10 = [(PrepareDownloadOperation *)v8 _initWithDownload:v11 mediaAssets:v3 policy:v9];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1001D7834(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 valueForProperty:@"url"];
  if (v3)
  {
    v4 = [[NSURL alloc] initWithString:v3];
    if (v4)
    {
      v5 = v4;
      v6 = [v8 valueForProperty:@"asset_type"];
      if ([v6 isEqualToString:SSDownloadAssetTypeMedia])
      {
        v7 = 32;
      }

      else
      {
        if (![v6 isEqualToString:SSDownloadAssetTypeDeltaPackage])
        {
LABEL_8:

          goto LABEL_9;
        }

        v7 = 40;
      }

      [*(a1 + v7) addObject:v8];
      goto LABEL_8;
    }
  }

LABEL_9:
}

intptr_t sub_1001D87E0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = +[SSLogConfig sharedDaemonConfig];
  v8 = v7;
  if (!a2)
  {
    if (!v7)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v17 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v18) = v17 | 2;
    }

    else
    {
      LODWORD(v18) = v17;
    }

    v19 = [v8 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 40);
      v22 = v20;
      v25 = 138412802;
      v26 = v20;
      v27 = 2048;
      v28 = [v21 databaseID];
      v29 = 2112;
      v30 = a4;
      v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v19, 0, "%@: No local cache URL for asset: %lld, error: %@", &v25, 32);

      if (!v23)
      {
        goto LABEL_27;
      }

      v19 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_27;
  }

  if (!v7)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = v9 | 2;
  }

  else
  {
    LODWORD(v10) = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = objc_opt_class();
  v13 = *(a1 + 40);
  v14 = v12;
  v25 = 138412802;
  v26 = v12;
  v27 = 2048;
  v28 = [v13 databaseID];
  v29 = 2112;
  v30 = a2;
  v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Replacing URL for asset: %lld, with local cache URL: %@", &v25, 32);

  if (v15)
  {
    v11 = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
LABEL_13:
  }

  v16 = *(a1 + 40);
  v8 = [a2 absoluteString];
  [v16 setValue:v8 forProperty:@"url"];
LABEL_27:

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001D8EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001D8F10(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, BOOL *a5)
{
  result = [*a3 length];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a5 = result != 0;
  return result;
}

id sub_1001DAB8C(uint64_t a1)
{
  v7[0] = @"Client";
  v7[1] = @"Kind";
  v2 = *(a1 + 40);
  v8[0] = *(a1 + 32);
  v8[1] = v2;
  v7[2] = @"IsFromStoreQueue";
  v3 = [NSNumber numberWithBool:*(a1 + 56)];
  v7[3] = @"URL";
  v4 = *(a1 + 48);
  v8[2] = v3;
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_1001DB980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001DBA08(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 56) + 8) + 24) = a2 == 0;
  if (!a2)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(*(a1 + 32) + 96);
      v13 = v11;
      v14 = [v12 databaseID];
      v15 = [*(a1 + 40) databaseID];
      v19 = 138413314;
      v20 = v11;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = a3;
      v27 = 2112;
      v28 = a4;
      v16 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 0, "%@: Not enough disk space for %lld/%lld, only %llu is available: %@", &v19, 52);

      if (v16)
      {
        v17 = [NSString stringWithCString:v16 encoding:4];
        free(v16);
        SSFileLog();
      }
    }

    else
    {
    }
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001DD1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DD22C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DD244(uint64_t a1, void *a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 taskIdentifier] == *(a1 + 48))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001DFD7C(uint64_t a1)
{
  v2 = SSXPCConnectionCopyExecutablePath();
  if (v2 && (v3 = CFURLCreateWithFileSystemPath(0, v2, kCFURLPOSIXPathStyle, 0)) != 0)
  {
    v4 = v3;
    v5 = _CFBundleCopyBundleURLForExecutableURL();
    if (v5)
    {
      v6 = v5;
      v7 = [LSApplicationProxy applicationProxyForBundleURL:v5];
      v8 = [v7 dataContainerURL];
      v9 = [v8 path];

      v10 = v9 != 0;
      if (v9)
      {
        v11 = [v7 profileValidated];
        v12 = [v9 stringByAppendingPathComponent:@"StoreKit"];
        v13 = v12;
        if (v11)
        {
          v14 = @"sandboxReceipt";
        }

        else
        {
          v14 = @"receipt";
        }

        v16 = [v12 stringByAppendingPathComponent:v14];
      }

      else
      {
        v16 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v16 = 0;
      v10 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v16 = 0;
    v10 = 0;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  xpc_dictionary_set_BOOL(reply, "0", v10);
  SSXPCDictionarySetObject();
  xpc_connection_send_message(*(a1 + 32), reply);
}

void sub_1001E04FC(uint64_t a1)
{
  v2 = [[ReceiptRefreshOperation alloc] initWithClient:*(a1 + 32) requestingClientIdentifier:*(a1 + 40) receiptFlags:*(a1 + 72)];
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_1001E05C8;
  v6 = &unk_10032BE00;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [(ReceiptRefreshOperation *)v2 setResultBlock:&v3];
  [*(a1 + 64) _addOperation:{v2, v3, v4, v5, v6}];
}

void sub_1001E05C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    v5 = sub_1001FA200();
    sub_1001FA20C(reply, "1", v5);
    xpc_connection_send_message(*(a1 + 40), reply);
  }
}

uint64_t sub_1001E06E8(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_1003840C0;
  qword_1003840C0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1001E0864(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.ReceiptRevocation"];
}

void sub_1001E0B18(id a1)
{
  v1 = objc_alloc_init(MetricsController);
  v2 = qword_1003840D0;
  qword_1003840D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001E0EA4(uint64_t a1)
{
  v2 = [@"com.apple.itunesstored.MetricsController.Duet" UTF8String];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v10 = 138543618;
  v11 = objc_opt_class();
  v12 = 2080;
  v13 = v2;
  v7 = v11;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 0, "%{public}@: Adding a background wakeup listener for activity: %s", &v10, 22);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001E10A4;
  handler[3] = &unk_100329B68;
  handler[4] = *(a1 + 32);
  xpc_activity_register(v2, XPC_ACTIVITY_CHECK_IN, handler);
}

void sub_1001E10A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[Daemon daemon];
  [v4 takeKeepAliveAssertion:@"com.apple.itunesstored.MetricsController.Duet"];

  state = xpc_activity_get_state(v3);
  if (!state)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = v13 | 2;
    }

    else
    {
      LODWORD(v14) = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v30 = 138543362;
      v31 = objc_opt_class();
      v16 = v31;
      v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v15, 0, "%{public}@: XPC activity checking in", &v30, 12);

      if (!v17)
      {
        goto LABEL_28;
      }

      v15 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v28 = v15;
      SSFileLog();
    }

LABEL_28:
    v18 = xpc_activity_copy_criteria(v3);
    if (v18)
    {
LABEL_42:

      goto LABEL_43;
    }

    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = v20 | 2;
    }

    else
    {
      LODWORD(v21) = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v30 = 138543362;
      v31 = v23;
      v24 = v23;
      LODWORD(v29) = 12;
      v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 0, "%{public}@: No XPC activity criteria set, adding criteria", &v30, v29);

      if (!v25)
      {
LABEL_41:

        v26 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v26, XPC_ACTIVITY_REPEATING, 1);
        xpc_dictionary_set_BOOL(v26, XPC_ACTIVITY_ALLOW_BATTERY, 1);
        xpc_dictionary_set_string(v26, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        xpc_dictionary_set_BOOL(v26, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
        xpc_dictionary_set_int64(v26, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
        xpc_dictionary_set_BOOL(v26, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
        xpc_dictionary_set_BOOL(v26, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
        xpc_activity_set_criteria(v3, v26);

        goto LABEL_42;
      }

      v22 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      v28 = v22;
      SSFileLog();
    }

    goto LABEL_41;
  }

  if (state == 2)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v30 = 138543362;
      v31 = objc_opt_class();
      v10 = v31;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 0, "%{public}@: Executing XPC activity to flush metrics (if needed)", &v30, 12);

      if (!v11)
      {
LABEL_15:

        [*(a1 + 32) _reportEventsIfNeeded];
        goto LABEL_43;
      }

      v9 = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      v28 = v9;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_43:
  v27 = +[Daemon daemon];
  [v27 releaseKeepAliveAssertion:@"com.apple.itunesstored.MetricsController.Duet"];
}

void sub_1001E2558(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E25D0;
  v4[3] = &unk_1003274E8;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

id sub_1001E25D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _scheduleBackoffRetry];
  }

  else
  {
    return [v2 _cancelBackoffRetry];
  }
}

id sub_1001E2C64(uint64_t a1)
{
  [*(a1 + 32) _reportEvents];
  v2 = *(a1 + 32);

  return [v2 _cancelBackoffRetryTimer];
}

void sub_1001E3144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E3160(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E3178(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001E4318(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 valueForKey:@"ExplicitOffAndPreferencesEnabled"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 valueForKey:@"ExplicitOffAndPreferencesDisabled"];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 BOOLValue];
    v5 |= v7;
  }

  else
  {
    v7 = 0;
  }

  v56 = 0;
  v8 = [*(a1 + 32) explicitPreferencesDisabled:&v56];
  v9 = &CFDictionaryGetValue_ptr;
  if (!v56 || v7 != v8)
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = +[SSLogConfig sharedDaemonConfig];
    v12 = v11;
    v55 = v4;
    if (v7)
    {
      if (!v11)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v12 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 2;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        v57 = 138543362;
        v58 = v17;
        v18 = v17;

        if (!v19)
        {
LABEL_22:

          [v10 MCSetBoolRestriction:MCFeatureExplicitContentAllowed value:0];
LABEL_35:
          v26 = [NSBundle bundleForClass:objc_opt_class()];
          v27 = [v26 localizedStringForKey:@"ITUNES_STORE" value:&stru_10033CC30 table:0];

          v9 = &CFDictionaryGetValue_ptr;
          v28 = +[MCProfileConnection sharedConnection];
          [v28 applyRestrictionDictionary:v10 clientType:@"com.apple.itunesstored" clientUUID:SSRestrictionsExplicitUUID localizedClientDescription:v27 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:0];

          v4 = v55;
          goto LABEL_36;
        }

        v15 = [NSString stringWithCString:v19 encoding:4];
        free(v19);
        SSFileLog();
      }

      goto LABEL_22;
    }

    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v20 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v20 |= 2u;
    }

    v21 = [v12 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v57 = 138543362;
      v58 = v23;
      v24 = v23;

      if (!v25)
      {
LABEL_34:

        goto LABEL_35;
      }

      v21 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_34;
  }

LABEL_36:
  [*(a1 + 32) setExplicitPreferencesDisabled:v7];
  if ((v7 & 1) == 0)
  {
    v29 = [v9[329] sharedConnection];
    v30 = MCFeatureExplicitContentAllowed;
    v31 = [v29 effectiveBoolValueForSetting:MCFeatureExplicitContentAllowed];

    if (!v31)
    {
      v36 = +[SSLogConfig sharedDaemonConfig];
      if (!v36)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      v43 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v43 |= 2u;
      }

      v38 = [v36 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 2;
      }

      if (!v44)
      {
        goto LABEL_60;
      }

      v45 = objc_opt_class();
      v57 = 138543618;
      v58 = v45;
      v59 = 1024;
      v60 = v5 & 1;
      v41 = v45;
      LODWORD(v54) = 18;
      v42 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, v38, 1, "%{public}@: No explicit restriction in place. Setting to [bagExplicitOff: %d]", &v57, v54);
      goto LABEL_58;
    }

    v32 = [*(a1 + 32) lastChangeInducingBagExplicitOff:0];
    v33 = (v31 != 1) ^ v32;
    v34 = v5 ^ v32;
    v35 = +[SSLogConfig sharedDaemonConfig];
    v36 = v35;
    if (v33 & 1) == 0 && (v34)
    {
      if (!v35)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      v37 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v37 |= 2u;
      }

      v38 = [v36 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 2;
      }

      if (!v39)
      {
        goto LABEL_60;
      }

      v40 = objc_opt_class();
      v57 = 138543618;
      v58 = v40;
      v59 = 1024;
      v60 = v5 & 1;
      v41 = v40;
      LODWORD(v54) = 18;
      v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, v38, 1, "%{public}@: User hasn't overriden explicit restriction, but bag default has changed. Setting new restriction to [bagExplicitOff: %d]", &v57, v54);
LABEL_58:
      v46 = v42;

      if (!v46)
      {
LABEL_61:

        v47 = +[MCProfileConnection sharedConnection];
        [v47 setBoolValue:(v5 & 1) == 0 forSetting:v30];

        [*(a1 + 32) setLastChangeInducingBagExplicitOff:v5 & 1];
        goto LABEL_74;
      }

      v38 = [NSString stringWithCString:v46 encoding:4];
      free(v46);
      SSFileLog();
LABEL_60:

      goto LABEL_61;
    }

    if (!v35)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v48 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v48 |= 2u;
    }

    v49 = [v36 OSLogObject];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = v48;
    }

    else
    {
      v50 = v48 & 2;
    }

    if (v50)
    {
      v51 = objc_opt_class();
      v57 = 138543874;
      v58 = v51;
      v59 = 1024;
      v60 = v33;
      v61 = 1024;
      v62 = v34 & 1;
      v52 = v51;
      LODWORD(v54) = 24;
      v53 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &_mh_execute_header, v49, 1, "%{public}@: No need to update explicit restrictions. [isUserOverriden: %d, bagValueChangedSinceLastChangeInducingExplicitOff: %d]", &v57, v54);

      if (!v53)
      {
LABEL_73:

        goto LABEL_74;
      }

      v49 = [NSString stringWithCString:v53 encoding:4];
      free(v53);
      SSFileLog();
    }

    goto LABEL_73;
  }

LABEL_74:
  CFPreferencesAppSynchronize(kITunesStoreDaemonDefaultsID);
}

uint64_t sub_1001E4C90(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_1003840E0;
  qword_1003840E0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1001E583C(uint64_t a1)
{
  v2 = [*(a1 + 32) activationHandler];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) didActivate];

    if ((v4 & 1) == 0)
    {
      v5 = [*(a1 + 32) activationHandler];
      v5[2](v5, 0);

      v6 = *(a1 + 32);

      [v6 setDidActivate:1];
    }
  }
}

void sub_1001E8100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E8140(uint64_t a1, void *a2)
{
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{*(a1 + 32), @"policy_data", 0}];
  v5 = -[DownloadPolicyEntity initWithPropertyValues:inDatabase:]([DownloadPolicyEntity alloc], "initWithPropertyValues:inDatabase:", v4, [a2 database]);
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(DownloadPolicy);
    *(*(*(a1 + 48) + 8) + 24) = [(DownloadPolicyEntity *)v6 persistentID];
    [(DownloadPolicy *)v7 setDatabaseID:*(*(*(a1 + 48) + 8) + 24)];
    [(DownloadPolicy *)v7 setPolicyData:*(a1 + 32)];
    [*(a1 + 40) _addPolicy:v7];
  }

  return 1;
}

id sub_1001E894C(uint64_t a1, void *a2)
{
  v3 = +[DownloadPolicy queryWithDatabase:predicate:](DownloadPolicy, "queryWithDatabase:predicate:", [a2 database], 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E89E8;
  v5[3] = &unk_10032BEF0;
  v5[4] = *(a1 + 32);
  return [v3 enumerateMemoryEntitiesUsingBlock:v5];
}

id sub_1001E91E4(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_1003840F0 = result;
  return result;
}

void sub_1001E9280(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(*(a1 + 32), "handlerIdentifier")}];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v17 = 138412802;
    v18 = v7;
    v19 = 2112;
    v20 = v2;
    v21 = 2112;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 1, "%@: Adding download handler: %@, %@", &v17, 32);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v16 = v11;
      SSFileLog();
    }
  }

  v12 = [*(*(a1 + 40) + 8) objectForKey:{v2, v16}];
  if (!v12)
  {
    [*(*(a1 + 40) + 8) setObject:*(a1 + 32) forKey:v2];
    [*(a1 + 40) _endDisconnectedSessionsForClientID:{objc_msgSend(*(a1 + 32), "clientIdentifier")}];
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v12 copyInputConnection];
  v15 = [*(a1 + 32) copyInputConnection];
  if (v15 != v14)
  {
    [*(*(a1 + 40) + 8) setObject:*(a1 + 32) forKey:v2];
    if (!v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  [v13 setDownloadPhasesToIgnore:{objc_msgSend(*(a1 + 32), "downloadPhasesToIgnore")}];
  [v13 setSessionsNeedPowerAssertion:{objc_msgSend(*(a1 + 32), "sessionsNeedPowerAssertion")}];
  [v13 setSessionsShouldBlockOtherDownloads:{objc_msgSend(*(a1 + 32), "sessionsShouldBlockOtherDownloads")}];
  if (v14)
  {
LABEL_15:
    xpc_release(v14);
  }

LABEL_16:
  if (v15)
  {
    xpc_release(v15);
  }

LABEL_19:
  [*(a1 + 40) _notifyObserversOfHandlersChange];
}

void sub_1001E9680(uint64_t a1)
{
  v4 = [[NSNumber alloc] initWithLongLong:*(a1 + 56)];
  v2 = [*(*(a1 + 32) + 56) objectForKey:?];
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(*(a1 + 32) _clientForSession:{v2), "beginBackgroundTaskWithReason:expirationBlock:", *(a1 + 64), *(a1 + 40)}];
    v3 = *(*(*(a1 + 48) + 8) + 40);
  }
}

id sub_1001E9790(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Begin session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4];
      free(v9);
      SSFileLog();
    }
  }

  v10 = [[NSNumber alloc] initWithLongLong:*(a1 + 40)];
  if ([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 56) objectForKey:{v10), "sessionProperties"), "authenticationChallenge"}])
  {
    v11 = 1005;
  }

  else
  {
    v11 = 1000;
  }

  return [*(a1 + 32) _sendMessage:v11 forSessionID:? replyBlock:?];
}

uint64_t sub_1001E998C(uint64_t a1, xpc_object_t object)
{
  if (object == &_xpc_error_connection_interrupted || object == &_xpc_error_connection_invalid)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 disconnectDownloadSessionWithID:v5];
  }

  else if (object && xpc_get_type(object) == &_xpc_type_dictionary && (value = xpc_dictionary_get_value(object, "0")) != 0 && (v10 = value, xpc_get_type(value) == &_xpc_type_BOOL))
  {
    result = xpc_BOOL_get_value(v10);
    if ((result & 1) == 0)
    {
      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        LODWORD(v13) = v12 | 2;
      }

      else
      {
        LODWORD(v13) = v12;
      }

      v14 = [v11 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v16 = *(a1 + 40);
        v22 = 138412546;
        v23 = v15;
        v24 = 2048;
        v25 = v16;
        v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 1, "%@: Client handler returned NO for open session: %lld", &v22, 22);
        if (v17)
        {
          v18 = v17;
          v19 = [NSString stringWithCString:v17 encoding:4];
          free(v18);
          v21 = v19;
          SSFileLog();
        }
      }

      return [*(a1 + 32) releaseDownloadSessionWithID:{*(a1 + 40), v21}];
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v7 failDownloadSessionWithID:v8 error:0];
  }

  return result;
}

id sub_1001E9C60(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Cancel authentication session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{1, v12}];
}

id sub_1001E9E40(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Cancel session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  [*(a1 + 32) _sendMessage:1001 forSessionID:*(a1 + 40) replyBlock:{0, v12}];
  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:8];
}

id sub_1001EA06C(uint64_t a1)
{
  result = [*(a1 + 32) _clientForProperties:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  return result;
}

void sub_1001EA120(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithLongLong:*(a1 + 40)];
  [*(*(a1 + 32) + 56) removeObjectForKey:v2];
}

id sub_1001EA1F8(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Continue authentication session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{2, v12}];
}

id sub_1001EA3DC(uint64_t a1)
{
  result = [*(a1 + 32) _popDownloadSessionForSessionID:*(a1 + 48)];
  if (result)
  {
    v3 = result;
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Disavow session with ID: %lld error: %@", &v15, 32);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v14 = v13;
        SSFileLog();
      }
    }

    [objc_msgSend(*(a1 + 32) _clientForSession:{v3, v14), "addDisavowedSessionProperties:", objc_msgSend(v3, "sessionProperties")}];
    [v3 setError:*(a1 + 40)];
    [v3 setSessionState:6];
    return [*(a1 + 32) _notifyObserversOfSessionChange:v3];
  }

  return result;
}

id sub_1001EA620(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Disconnect session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{7, v12}];
}

void sub_1001EA804(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithLongLong:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 56) objectForKey:v2];
  if (v3 && (v4 = [*(a1 + 32) _clientForSession:v3]) != 0)
  {
    [v4 endBackgroundTaskWithIdentifier:*(a1 + 40)];
  }

  else
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001EA8D4;
    v6[3] = &unk_10032BF68;
    v6[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

id sub_1001EA95C(uint64_t a1)
{
  result = [*(a1 + 32) _popDownloadSessionForSessionID:*(a1 + 48)];
  if (result)
  {
    v3 = result;
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Fail session with ID: %lld error: %@", &v15, 32);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v14 = v13;
        SSFileLog();
      }
    }

    [v3 setError:{*(a1 + 40), v14}];
    [v3 setSessionState:8];
    return [*(a1 + 32) _notifyObserversOfSessionChange:v3];
  }

  return result;
}

id sub_1001EAB7C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Finish session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{9, v12}];
}

void sub_1001EAE50(void *a1)
{
  v2 = [[NSNumber alloc] initWithLongLong:a1[6]];
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 8) objectForKey:v2];
}

void sub_1001EAFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EAFC0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForProperties:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [[DownloadHandlerSession alloc] initWithSessionProperties:*(a1 + 40)];
    -[DownloadHandlerSession setActiveHandlerIdentifier:](v4, "setActiveHandlerIdentifier:", [v3 handlerIdentifier]);
    -[DownloadHandlerSession setBlocksOtherDownloads:](v4, "setBlocksOtherDownloads:", [v3 sessionsShouldBlockOtherDownloads]);
    -[DownloadHandlerSession setNeedsPowerAssertion:](v4, "setNeedsPowerAssertion:", [v3 sessionsNeedPowerAssertion]);
    [*(*(a1 + 32) + 56) setObject:v4 forKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", -[DownloadHandlerSession sessionID](v4, "sessionID"))}];
    *(*(*(a1 + 48) + 8) + 40) = [(DownloadHandlerSession *)v4 copy];
  }
}

id sub_1001EB13C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Pause session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _sendMessage:1002 forSessionID:*(a1 + 40) replyBlock:{0, v12}];
}

id sub_1001EB320(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Perform default authentication for session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{3, v12}];
}

id sub_1001EB500(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Reject space for authentication session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{4, v12}];
}

id sub_1001EB6E0(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Release session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:{10, v12}];
}

void sub_1001EB940(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithLongLong:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) objectForKey:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 resetDisavowedSessionProperties];
    if ([v5 count])
    {
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = v7 | 2;
      }

      else
      {
        LODWORD(v8) = v7;
      }

      v9 = [v6 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v14 = 138412802;
        v15 = objc_opt_class();
        v16 = 2048;
        v17 = [v5 count];
        v18 = 2112;
        v19 = v4;
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Reset %ld disavowed properties for client: %@", &v14, 32);
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4];
          free(v11);
          v13 = v12;
          SSFileLog();
        }
      }

      [*(a1 + 32) _notifyObserversOfHandlersChange];
    }
  }
}

id sub_1001EBB84(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Retry session with ID: %lld", &v13, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  [*(a1 + 32) _sendMessage:1001 forSessionID:*(a1 + 40) replyBlock:{0, v12}];
  return [*(a1 + 32) _endSessionWithID:*(a1 + 40) state:7];
}