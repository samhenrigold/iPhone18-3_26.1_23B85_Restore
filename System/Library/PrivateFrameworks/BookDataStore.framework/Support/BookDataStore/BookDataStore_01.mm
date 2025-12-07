void sub_10002C858(uint64_t a1)
{
  v2 = [*(a1 + 32) changedRecordZoneIDs];
  [v2 removeObject:*(a1 + 40)];

  [*(a1 + 32) p_scheduleArchiveWithCompletion:&stru_100240920];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = sub_1000254B0(v3);
    v5 = *(a1 + 48);
    if (v4)
    {
      v6 = [v5 userInfo];
      v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v29 = [v7 allKeys];

      [*(a1 + 32) zonesUnreadableDueToMissingD2DEncryptionIdentity:v29 completion:0];

      return;
    }

    if (sub_100025690(v5))
    {
      v40 = NSLocalizedDescriptionKey;
      v41 = @"Unreadable keychain - cannot fetch record zones";
      v16 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v17 = 2006;
    }

    else
    {
      v18 = sub_100025880(*(a1 + 48));
      if (!v18)
      {
        v20 = sub_10000DC08(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v25 = [*(a1 + 32) containerIdentifier];
          v26 = *(a1 + 40);
          v27 = *(a1 + 48);
          v28 = [v26 zoneName];
          *buf = 138544130;
          v31 = v25;
          v32 = 2114;
          v33 = v26;
          v34 = 2114;
          v35 = v27;
          v36 = 2112;
          v37 = v28;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ zoneFetchCompletion failed: %{public}@ time to delete the tokenStore for  %@", buf, 0x2Au);
        }

        v21 = [*(a1 + 32) tokenStores];
        v19 = [v21 objectForKeyedSubscript:*(a1 + 40)];

        [v19 deleteCloudDataWithCompletion:0];
        v22 = [*(a1 + 48) domain];
        v23 = [v22 isEqualToString:CKErrorDomain];

        if (v23)
        {
          v24 = [*(a1 + 48) code];
          if (v24 <= 0x1C && ((1 << v24) & 0x14200000) != 0)
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:*(a1 + 40)];
          }
        }

        goto LABEL_16;
      }

      v38 = NSLocalizedDescriptionKey;
      v39 = @"Account temporarily unavailable - cannot fetch record zones";
      v16 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v17 = 2007;
    }

    v19 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:v17 userInfo:v16];

    [*(a1 + 32) zonesTemporarilyUnreadableWithError:v19 completion:0];
LABEL_16:

    return;
  }

  v8 = sub_100002660(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) containerIdentifier];
    v10 = [*(a1 + 40) zoneName];
    v11 = *(a1 + 80);
    *buf = 138543874;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    v34 = 1024;
    LODWORD(v35) = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ success.  More coming: %{BOOL}d", buf, 0x1Cu);
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

void sub_10002CCD0(id a1)
{
  v1 = sub_100002660(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneFetchCompletionBlock)", v2, 2u);
  }
}

void sub_10002CD38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002660(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock", buf, 0xCu);
  }

  v6 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CEDC;
  block[3] = &unk_100240A08;
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

void sub_10002CEDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v3 = *(a1 + 64);
    v4 = *(*(v3 + 8) + 40);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002D474;
    v37[3] = &unk_100240998;
    v37[4] = WeakRetained;
    v37[5] = v3;
    [WeakRetained zonesDeletedOrReset:v4 completion:v37];
  }

  v5 = *(a1 + 32);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:CKErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == 2)
      {
        v9 = [WeakRetained setBackOffInterval:0.0];
      }
    }

    else
    {
    }

    v16 = sub_100002660(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = [*(a1 + 40) containerIdentifier];
      v29 = *(a1 + 48);
      v30 = objc_alloc_init(NSMutableArray);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003104C;
      v39 = &unk_100240B70;
      v40 = v30;
      v31 = v30;
      [v29 enumerateObjectsUsingBlock:buf];
      v32 = [v31 componentsJoinedByString:{@", "}];

      *buf = 138543874;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v32;
      *&buf[22] = 2114;
      v39 = v6;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock zoneChanges failed: %{public}@ %{public}@", buf, 0x20u);
    }

    v17 = [v6 domain];
    v18 = [v17 isEqualToString:CKErrorDomain];

    if (v18)
    {
      v19 = [v6 code];
      if (v19 <= 0x17 && ((1 << v19) & 0x8000C0) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = [v6 domain];
      v24 = [v23 isEqualToString:NSCocoaErrorDomain];

      if (v24)
      {
LABEL_16:
        v20 = sub_100002660(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 40) containerIdentifier];
          *buf = 138543618;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation retrying fetch for error: %@", buf, 0x16u);
        }

        v22 = [WeakRetained accessQueue];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10002D54C;
        v33[3] = &unk_1002409E0;
        v33[4] = WeakRetained;
        v34 = v6;
        objc_copyWeak(&v36, (a1 + 80));
        v35 = *(a1 + 40);
        dispatch_async(v22, v33);

        objc_destroyWeak(&v36);
        goto LABEL_23;
      }
    }

    v25 = sub_100002660(v19);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF560();
    }
  }

  else
  {
    v10 = sub_100002660([WeakRetained setBackOffInterval:0.0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) containerIdentifier];
      v12 = *(a1 + 48);
      v13 = objc_alloc_init(NSMutableArray);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003104C;
      v39 = &unk_100240B70;
      v40 = v13;
      v14 = v13;
      [v12 enumerateObjectsUsingBlock:buf];
      v15 = [v14 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock success (%{public}@).", buf, 0x16u);
    }

    [*(a1 + 40) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
    [*(a1 + 40) setFetchRecordZoneChangesSuccess:1];
  }

LABEL_23:
  v26 = objc_retainBlock(*(a1 + 56));
  v27 = v26;
  if (v26)
  {
    (*(v26 + 2))(v26, v6);
  }
}

void sub_10002D474(uint64_t a1)
{
  v2 = sub_10000DC08(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - fetchRecordZoneChangesCompletionBlock - zonesDeletedOrReset DONE: %{public}@", &v5, 0x16u);
  }
}

void sub_10002D54C(uint64_t a1)
{
  if (([*(a1 + 32) serverFetchPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerFetchPostponed:1];
    [*(a1 + 32) p_updateRetryParametersFromFetchZoneChangesOperationError:*(a1 + 40)];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002D644;
    v5[3] = &unk_10023F9A8;
    objc_copyWeak(&v6, (a1 + 56));
    v5[4] = *(a1 + 48);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_10002D644(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100002660([WeakRetained setServerFetchPostponed:0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) containerIdentifier];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in fetchRecordZoneChangesOperation.fetchRecordZoneChangesCompletionBlock retryFetch", &v7, 0xCu);
    }

    v6 = [v3 coalescedZoneFetch];
    [v6 signalWithCompletion:&stru_1002409B8];
  }
}

void sub_10002D7D0(uint64_t a1)
{
  v2 = +[BDSReachability isOffline];
  v3 = v2;
  v4 = sub_100002660(v2);
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_internetReachabilityChanged reachable:%@", buf, 0x16u);
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

                [*(*(&v21 + 1) + 8 * v19) databaseController:*(a1 + 32) reachabilityChanged:v3 ^ 1u];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

void sub_10002DDF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [v6 count];
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "p_informObserversOfRecordsChanged: changedRecords.count=%lu recordType=%{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:v6 forRecordType:v5];
}

void sub_10002DFDC(id *a1)
{
  v2 = sub_10000DC08(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] containerIdentifier];
    v4 = a1[5];
    v5 = [a1[6] allObjects];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v39 = &unk_100240B70;
    v40[0] = objc_alloc_init(NSMutableArray);
    v6 = v40[0];
    [v5 enumerateObjectsUsingBlock:buf];
    v7 = [v6 componentsJoinedByString:{@", "}];

    v8 = [a1[4] zoneObservers];
    *buf = 138544130;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v39 = v7;
    LOWORD(v40[0]) = 2112;
    *(v40 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfSaltVersionIdentifierChanged: saltVersionIdentifier=%{public}@ zoneIDs=%{public}@ observers:%@", buf, 0x2Au);
  }

  if ([a1[5] length])
  {
    v9 = dispatch_group_create();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = a1[6];
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v26 = v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 zoneName];
          v17 = [v16 length];

          if (v17)
          {
            v18 = [a1[4] zoneObservers];
            v19 = [v15 zoneName];
            v20 = [v18 objectForKey:v19];

            if (v20)
            {
              dispatch_group_enter(v9);
              v22 = a1[4];
              v21 = a1[5];
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v30[0] = sub_10002E404;
              v30[1] = &unk_100240A80;
              v30[2] = v22;
              v30[3] = v15;
              v23 = v21;
              v31 = v23;
              v32 = v9;
              [v20 databaseController:v22 saltVersionIdentifierChanged:v23 completion:v29];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    v24 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E510;
    block[3] = &unk_1002402E0;
    v28 = a1[7];
    dispatch_group_notify(v9, v24, block);

    v25 = v28;
    goto LABEL_18;
  }

  v9 = objc_retainBlock(a1[7]);
  if (v9)
  {
    v25 = [NSError errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
    (v9[2].isa)(v9, v25);
LABEL_18:
  }
}

void sub_10002E404(uint64_t a1, int a2)
{
  v4 = sub_10000DC08(a1);
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ name:%@ salt:%@  success:%{BOOL}d  LEAVE GROUP", &v8, 0x26u);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_10002E510(uint64_t a1)
{
  v2 = sub_10000DC08(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "p_informObserversOfSaltVersionIdentifierChanged DONE", v5, 2u);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_10002F2C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100002660(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF630();
    }
  }

  v12 = objc_retainBlock(*(a1 + 40));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v10);
  }
}

void sub_10002F480(id *a1)
{
  v2 = [a1[4] desiredRecordZoneIDs];
  v3 = [v2 valueForKey:@"zoneName"];

  v4 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2003 userInfo:0];
  v5 = a1[4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F59C;
  v7[3] = &unk_100240488;
  v7[4] = v5;
  v8 = a1[5];
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v5 detachWithError:v4 completion:v7];
}

void sub_10002F59C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F654;
  v4[3] = &unk_100240460;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _deleteRecordZonesWithIDs:v3 qualityOfService:17 completion:v4];
}

void sub_10002F654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002F6E4;
  v3[3] = &unk_1002402E0;
  v4 = *(a1 + 48);
  [v1 attachToZones:v2 completion:v3];
}

void sub_10002F6E4(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10002F838(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002F8C8;
  v3[3] = &unk_1002402E0;
  v4 = *(a1 + 48);
  [v1 detachWithError:v2 completion:v3];
}

void sub_10002F8C8(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10002FA7C(uint64_t a1)
{
  [*(a1 + 32) invalidateSalt];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002FB14;
  v3[3] = &unk_1002402E0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 detachWithError:0 completion:v3];
}

void sub_10002FB14(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10002FC78(uint64_t a1)
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

void sub_10002FE80(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002FFCC;
    v8[3] = &unk_100240AD0;
    v9 = *(a1 + 48);
    v5 = [v3 indexesOfObjectsPassingTest:v8];
    if ([v5 count])
    {
      [v3 removeObjectsAtIndexes:v5];
    }

    else
    {
      v7 = sub_100002660(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001BF844();
      }
    }

    v6 = v9;
  }

  else
  {
    v6 = sub_100002660(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF8B8();
    }
  }
}

void sub_1000300C0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100030160;
  v3[3] = &unk_100240AF8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100030160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030218;
  v6[3] = &unk_100240AD0;
  v7 = *(a1 + 32);
  v5 = [v4 indexesOfObjectsPassingTest:v6];
  if ([v5 count])
  {
    [v4 removeObjectsAtIndexes:v5];
  }
}

void sub_1000302F8(char *a1)
{
  v1 = a1;
  if (*(a1 + 4) && (a1 = [*(a1 + 5) length]) != 0)
  {
    v2 = [*(v1 + 6) zoneObservers];
    [v2 setObject:*(v1 + 4) forKey:*(v1 + 5)];

    v4 = sub_10000DC08(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 4);
      v6 = *(v1 + 5);
      v7 = 134218242;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - Setting observer=%p for zone =%{public}@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = sub_10000DC08(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF99C();
    }
  }
}

void sub_100030568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - Registering store for record zone %{public}@", buf, 0xCu);
    }

    v6 = [v3 tokenStores];
    v7 = (a1 + 32);
    v8 = [v6 objectForKeyedSubscript:*(a1 + 32)];

    if (v8)
    {
      v10 = sub_100002660(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001BFA7C(v7, v10, v11, v12, v13, v14, v15, v16);
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
          v23 = sub_100002660(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v3 containerIdentifier];
            v25 = *v7;
            *buf = 138543618;
            v30 = v24;
            v31 = 2114;
            v32 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in registerServerChangeTokenStore:forZoneID: recordZoneID=%{public}@", buf, 0x16u);
          }

          v26 = [v3 coalescedZoneFetch];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100030834;
          v27[3] = &unk_10023F6B0;
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
        v10 = sub_100002660(v19);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - skipping fetch, we are not yet attached in registerServerChangeTokenStore:forZoneID:", buf, 2u);
        }
      }
    }
  }
}

void sub_100030834(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - performed zone fetch for recordZoneID:%{public}@", &v4, 0xCu);
  }
}

void sub_1000309F8(uint64_t a1)
{
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
        for (i = 0; i != v8; i = i + 1)
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

    v15 = sub_100002660(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFB30(v15);
    }

LABEL_13:
  }
}

void sub_100030D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100030D50(uint64_t a1)
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

void sub_10003104C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneName];
  [v2 addObject:v3];
}

void sub_1000310A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 zoneID];
  v3 = [v4 zoneName];
  [v2 addObject:v3];
}

void sub_100031120(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100031154(void *a1, int a2, void *a3)
{
  v10 = NSUnderlyingErrorKey;
  v11 = a3;
  v5 = a3;
  v6 = a1;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSError errorWithDomain:v6 code:a2 userInfo:v7];

  return v8;
}

void sub_10003163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100031660(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BFB74(v5, v6, v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained delegate];

  if (v9)
  {
    v11 = [WeakRetained delegate];
    [v11 handleNotification:v5];
  }

  else
  {
    v11 = sub_100002660(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFBFC(v11);
    }
  }
}

void sub_1000330DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100033108(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleFetchNotificationNames:v5 latestChangeToken:a3 forClient:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100033398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000333BC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained _postServiceNotificationNames:v5 latestChangeToken:a2];
}

id sub_100033754(uint64_t a1)
{
  [*(a1 + 32) cq_postServiceNotificationNames:*(a1 + 40) latestChangeToken:*(a1 + 64) forClients:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 endTransaction];
}

void sub_1000371E8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    if (v3)
    {
      v3[2](v3, v4);
    }
  }

  else if (v3)
  {
    v3[2](v3, 0);
  }
}

void sub_100038248(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1000384A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000023E8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning widget infos: %@", &v10, 0xCu);
  }

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5, v6);
  }
}

void sub_100038C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100038C9C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v7)
  {
    v4 = [WeakRetained priceTracker];
    [v4 updateTrackedPricesIgnoringScheduleForNewItemsWithCompletionHandler:&stru_100240D40];
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void sub_100038DF8(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100038F18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_retainBlock(*(a1 + 56));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4, v3);
    }
  }

  else
  {
    v6 = [*(a1 + 32) priceTracker];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BFDBC;
    v8[3] = &unk_1002404D8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 bdsctl_addTrackedItem:v7 completion:v8];
  }
}

void sub_10003901C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_1000023E8(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BDSService] Item '%@' is already in WTR collection", buf, 0xCu);
    }

    v5 = objc_retainBlock(*(a1 + 40));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }
  }

  else
  {
    v7 = [*(a1 + 32) adamID];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100039198;
    v8[3] = &unk_10023FEB0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [BDSServiceCenter addStoreID:v7 toCollectionID:@"Want_To_Read_Collection_ID" completion:v8];

    v6 = v9;
  }
}

void sub_100039198(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_1000023E8(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BDSService] Item '%@' added to WTR collection", &v8, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:@"BDSErrorDomain" code:-1 userInfo:&off_100250EF0];
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v5);
  }
}

void sub_10003936C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100039B00(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_100039F1C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_10003A5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained performWorkWithCompletion:v3];
  }

  else
  {
    v5 = objc_retainBlock(v3);

    if (v5)
    {
      v5[2](v5);
    }

    v3 = v5;
  }
}

void sub_10003A634(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002660(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_coalescedNotification in %@ did not call notification within 10s.", &v4, 0xCu);
  }
}

void sub_10003A834(uint64_t a1)
{
  [*(a1 + 32) setClientCount:{objc_msgSend(*(a1 + 32), "clientCount") + 1}];
  v2 = [*(a1 + 32) transactionLifetime];

  if (v2)
  {
    v3 = [*(a1 + 32) transactionLifetime];
    dispatch_source_cancel(v3);
  }
}

void sub_10003AA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003AA64(uint64_t a1)
{
  v2 = [*(a1 + 32) lifecycleAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003AB14;
  v3[3] = &unk_10023F9A8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
}

void sub_10003AB14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[BULogUtilities shared];
    v4 = [v3 verboseLoggingEnabled];

    if (v4)
    {
      v6 = sub_10000DB80(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) transactionName];
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\Transaction client decrementing for %@\", &v13, 0xCu);
      }
    }

    [WeakRetained setClientCount:{objc_msgSend(WeakRetained, "clientCount") - 1}];
    if (![WeakRetained clientCount])
    {
      v8 = +[BULogUtilities shared];
      v9 = [v8 verboseLoggingEnabled];

      if (v9)
      {
        v11 = sub_10000DB80(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) transactionName];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\\Transaction clientCount 0 for %@\", &v13, 0xCu);
        }
      }

      [WeakRetained laq_scheduleTransactionLifetime];
    }
  }
}

id sub_10003AEDC(uint64_t a1)
{
  v2 = +[BULogUtilities shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v5 = sub_10000DB80(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) transactionName];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\\Transaction Timer Completion fired for %@\", &v9, 0xCu);
    }
  }

  v7 = [*(a1 + 32) delegate];
  [v7 transactionCompleted:*(a1 + 32)];

  [*(a1 + 32) setDelegate:0];
  return [*(a1 + 32) setTransactionLifetime:0];
}

id sub_10003AFF4(uint64_t a1)
{
  v2 = +[BULogUtilities shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v5 = sub_10000DB80(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) transactionName];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\\Transaction Timer Cancel fired for %@\", &v8, 0xCu);
    }
  }

  return [*(a1 + 32) setTransactionLifetime:0];
}

void sub_10003C808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003C838(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [NSData dataWithContentsOfURL:a2];

  return _objc_release_x1();
}

void sub_10003CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10003CA50(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 writeToURL:a2 options:1073741825 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void sub_10003CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10003CC5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v4 removeItemAtURL:v3 error:&obj];

  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_100041040(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitDataChangedTransaction transactionNameForEntityName:*(a1 + 40)];
  v6 = [v2 objectForKey:v3];

  if (!v6)
  {
    v6 = [[BCCloudKitDataChangedTransaction alloc] initWithEntityName:*(a1 + 40) notificationName:*(a1 + 48) delegate:*(a1 + 32)];
    v4 = [*(a1 + 32) transactions];
    v5 = [(BCCloudKitTransaction *)v6 transactionName];
    [v4 setObject:v6 forKey:v5];
  }

  [(BCCloudKitTransaction *)v6 clientConnected];
  [(BCCloudKitTransaction *)v6 signal];
}

void sub_100041238(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitSyncToCKTransaction transactionNameForEntityName:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  v5 = [(BCCloudKitTransaction *)v4 transactionName];
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v4 = [[BCCloudKitSyncToCKTransaction alloc] initWithEntityName:*(a1 + 40) syncManager:*(a1 + 48) delegate:*(a1 + 32)];
    v7 = [(BCCloudKitTransaction *)v4 transactionName];

    v8 = [*(a1 + 32) transactions];
    [v8 setObject:v4 forKey:v7];

    v9 = objc_alloc_init(NSMutableArray);
    v10 = [*(a1 + 32) transactionCompletionCallbacks];
    [v10 setObject:v9 forKeyedSubscript:v7];

    v12 = sub_100002660(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C0300(v7, v12);
    }
  }

  if (*(a1 + 56))
  {
    v13 = sub_100002660(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C0378((a1 + 56), v7, v13);
    }

    v14 = [*(a1 + 32) transactionCompletionCallbacks];
    v15 = [v14 objectForKeyedSubscript:v7];
    v16 = objc_retainBlock(*(a1 + 56));
    [v15 addObject:v16];
  }

  [(BCCloudKitTransaction *)v4 clientConnected];
  [(BCCloudKitTransaction *)v4 signal];
}

void sub_1000414F0(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitFetchChangesTransaction transactionNameForEntityName:@"iBooks"];
  v8 = [v2 objectForKey:v3];

  if (!v8)
  {
    v4 = [BCCloudKitFetchChangesTransaction alloc];
    v5 = [*(a1 + 32) cloudKitController];
    v8 = [(BCCloudKitFetchChangesTransaction *)v4 initWithCloudKitController:v5 delegate:*(a1 + 32)];

    v6 = [*(a1 + 32) transactions];
    v7 = [(BCCloudKitTransaction *)v8 transactionName];
    [v6 setObject:v8 forKey:v7];
  }

  [(BCCloudKitTransaction *)v8 clientConnected];
  [(BCCloudKitTransaction *)v8 signal];
}

void sub_1000416B8(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionName];
  v3 = sub_100002660(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BCCloudKitTransactionManager] Transaction completed %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = a1;
  v4 = [*(a1 + 40) transactionCompletionCallbacks];
  v5 = [v4 objectForKeyedSubscript:v2];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = sub_100002660(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_retainBlock(v10);
          *buf = 138412546;
          v23 = v14;
          v24 = 2112;
          v25 = v2;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Calling block %@ for transaction %@ ", buf, 0x16u);
        }

        v12 = objc_retainBlock(v10);
        v13 = v12;
        if (v12)
        {
          (*(v12 + 2))(v12);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      v7 = v6;
    }

    while (v6);
  }

  v15 = [*(v17 + 40) transactions];
  [v15 removeObjectForKey:v2];

  v16 = [*(v17 + 40) transactionCompletionCallbacks];
  [v16 removeObjectForKey:v2];
}

void sub_100041CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100041CEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100041D04(uint64_t a1)
{
  v21 = +[BDSBookWidgetInfoMO fetchRequest];
  v2 = [*(a1 + 32) assetID];
  v3 = [NSPredicate predicateWithFormat:@"assetID == %@", v2];
  [v21 setPredicate:v3];

  [v21 setFetchLimit:1];
  v4 = [*(a1 + 40) executeFetchRequest:v21 error:0];
  v5 = [v4 firstObject];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [[BDSBookWidgetInfoMO alloc] initWithContext:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) assetID];
  [*(*(*(a1 + 48) + 8) + 40) setAssetID:v11];

  v12 = *(*(*(a1 + 48) + 8) + 40);
  v13 = [*(a1 + 32) title];
  [v12 bl_setNonNilValue:v13 forKey:@"title"];

  v14 = *(*(*(a1 + 48) + 8) + 40);
  v15 = [*(a1 + 32) coverURL];
  [v14 bl_setNonNilValue:v15 forKey:@"coverURL"];

  v16 = *(*(*(a1 + 48) + 8) + 40);
  v17 = [*(a1 + 32) totalDuration];
  [v16 bl_setNonNilValue:v17 forKey:@"totalDuration"];

  v18 = [*(a1 + 32) pageProgressionDirection];
  [*(*(*(a1 + 48) + 8) + 40) setPageProgressionDirection:v18];

  v19 = [*(a1 + 32) cloudAssetType];
  [*(*(*(a1 + 48) + 8) + 40) setCloudAssetType:v19];

  v20 = [*(a1 + 32) libraryContentAssetType];
  [*(*(*(a1 + 48) + 8) + 40) setLibraryContentAssetType:v20];

  [*(*(*(a1 + 48) + 8) + 40) setIsExplicit:{objc_msgSend(*(a1 + 32), "isExplicit")}];
}

void sub_100043794(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 _l_cancelWithManagers:v2];
}

void sub_100043BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043BD0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentProgress];

  if (v2)
  {
    v4 = sub_10000DC90(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = @"YES";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Doing nothing because alreadyRunning is %{public}@", buf, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v5 = [*(a1 + 32) managers];
    [v5 addObject:*(a1 + 40)];

    objc_initWeak(buf, *(a1 + 32));
    v6 = [*(a1 + 32) currentObserverIdentifier] + 1;
    [*(a1 + 32) setCurrentObserverIdentifier:v6];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100043E6C;
    v14[3] = &unk_100240ED8;
    objc_copyWeak(v15, buf);
    v15[1] = v6;
    [*(a1 + 32) setObserver:v14];
    v7 = [NSProgress progressWithTotalUnitCount:1];
    [*(a1 + 32) setCurrentProgress:v7];

    v8 = [*(a1 + 32) currentProgress];
    [v8 setCancellationHandler:&stru_100240EF8];

    v10 = sub_10000DC90(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "About to enable sync", v13, 2u);
    }

    v11 = +[BCCloudCollectionsManager sharedManager];
    v12 = [*(a1 + 32) observer];
    [v11 setEnableCloudSync:1 completion:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }
}

void sub_100043E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100043E6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_10000DC90(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSAutomaticPinningListUpdater[%p] _updateCloudDataWithManager - About to call requestUpdateAttachment", buf, 0xCu);
  }

  v4 = +[BCCloudKitController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043FC8;
  v5[3] = &unk_100240EB0;
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = *(a1 + 40);
  [v4 requestUpdateAttachmentWithCompletion:v5];

  objc_destroyWeak(v6);
}

void sub_100043FC8(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = sub_10000DC90(WeakRetained);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    v9 = WeakRetained;
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BDSAutomaticPinningListUpdater[%p] _updateCloudDataWithManager - requestUpdateAttachment completion: attached:%d, reachable:%d", &v8, 0x18u);
  }

  [WeakRetained _updateAttachmentCompletedFromObserver:*(a1 + 40) attached:a2];
}

void sub_1000440B8(id a1)
{
  v1 = +[BCCloudCollectionsManager sharedManager];
  [v1 setEnableCloudSync:0];
}

void sub_100044238(uint64_t a1)
{
  v2 = [*(a1 + 32) currentProgress];
  if ([v2 isCancelled])
  {

LABEL_9:
    v7 = sub_10000DC90(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) currentObserverIdentifier];
      *buf = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Was cancelled before fetching records finished. currentObserver:%lu", buf, 0xCu);
    }

    return;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) currentObserverIdentifier];

  if (v4 != v5)
  {
    goto LABEL_9;
  }

  v6 = [*(a1 + 32) observer];
  v9 = objc_retainBlock(v6);

  if (v9)
  {
    [*(a1 + 32) setObserver:0];
  }

  [*(a1 + 32) _l_finishedFetchingCollectionsWithManager:*(a1 + 48)];
}

void sub_10004456C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100044608;
    v3[3] = &unk_10023F6B0;
    v3[4] = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    sub_100044608(v3);
    os_unfair_lock_unlock(v2 + 2);
  }
}

void sub_100044B28(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100044C20(id a1)
{
  qword_100274A68 = objc_alloc_init(BCCloudDataNullPrivacyDelegate);

  _objc_release_x1();
}

uint64_t sub_1000463BC(uint64_t a1)
{
  qword_100274A80 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100046528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100046550(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_10000DE28(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSWidgetCenterManager - reload timeline", v20, 2u);
  }

  v6 = [WeakRetained timelineController];
  v7 = [v6 reloadTimelineWithReason:@"bookdatastored"];

  v8 = objc_loadWeakRetained((a1 + 32));
  LODWORD(v6) = [v8 shouldDonateRelevance];

  if (v6)
  {
    v10 = sub_10000DE28(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSWidgetCenterManager - donating relevance", v20, 2u);
    }

    v11 = objc_alloc_init(INRelevantShortcut);
    [v11 setWidgetKind:@"BooksWidget"];
    v12 = [INDateRelevanceProvider alloc];
    v13 = +[NSDate now];
    v14 = [v12 initWithStartDate:v13 endDate:0];
    v22 = v14;
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    [v11 setRelevanceProviders:v15];

    v16 = +[INRelevantShortcutStore defaultStore];
    v21 = v11;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    [v16 setRelevantShortcuts:v17 completionHandler:&stru_100240FA0];
  }

  v18 = objc_retainBlock(v3);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }
}

void sub_1000467A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000DE28(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0A60(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BDSWidgetCenterManager - relevance donation succeeded", v5, 2u);
  }
}

void sub_100048584(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002660(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0CEC();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) entityName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Successfully transitioned to a new cloud container for entity: %@", &v9, 0xCu);
    }
  }

LABEL_5:
}

void sub_100048888(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004897C;
    v9[3] = &unk_100240FF0;
    v12 = a3;
    v10 = v6;
    v11 = *(a1 + 40);
    [v10 syncCloudData:v5 completion:v9];
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_10004897C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) signalSyncToCK];
  }

  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_100048B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100048BAC(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_100048C20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [NSFetchRequest alloc];
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
    v8 = [NSPredicate predicateWithFormat:@"editGeneration > syncGeneration"];
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
      v11 = sub_100002660(v32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [WeakRetained entityName];
        v13 = [v9 count];
        *buf = 138543618;
        v46 = v12;
        v47 = 2048;
        v48 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ startSyncToCKWithCompletion found %lu dirty records", buf, 0x16u);
      }

      v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
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
          for (i = 0; i != v18; i = i + 1)
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

      v24 = objc_retainBlock(*(v34 + 32));
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
      v29 = sub_100002660(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [WeakRetained entityName];
        *buf = 138412290;
        v46 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ startSyncToCKWithCompletion no records need updating", buf, 0xCu);
      }

      v31 = objc_retainBlock(*(a1 + 32));
      v14 = v31;
      if (v31)
      {
        (*(v31 + 2))(v31, 0, 0);
      }
    }
  }

  else
  {
    v27 = objc_retainBlock(*(a1 + 32));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0);
    }
  }
}

void sub_10004912C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_100049684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000496A8(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_100049718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager requesting currentCloudSyncVersions for %@\", &v15, 0xCu);
      }
    }

    v9 = [WeakRetained mq_cloudSyncVersions];
    v10 = [v9 mutableCopy];

    v11 = objc_retainBlock(*(a1 + 32));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v10);
    }
  }

  else
  {
    v13 = objc_retainBlock(*(a1 + 32));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void sub_100049AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100049AC8(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_100049B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(a1 + 32) debugDescription];
        *buf = 138412546;
        v41 = v8;
        v42 = 2112;
        v43 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudData %@\", buf, 0x16u);
      }
    }

    v10 = [NSFetchRequest alloc];
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setReturnsObjectsAsFaults:0];
    [v12 setFetchLimit:1];
    [v12 setPredicate:*(a1 + 40)];
    v38 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v38];
    v14 = v38;
    [WeakRetained _logError:v14 at:@"setCloudData - fetch"];
    v36 = v13;
    v15 = [v13 firstObject];
    v16 = v15;
    if (!v15)
    {
      v17 = [WeakRetained entityName];
      v16 = [NSEntityDescription insertNewObjectForEntityForName:v17 inManagedObjectContext:v3];
    }

    v18 = [WeakRetained privacyDelegate];
    [v16 setPrivacyDelegate:v18];

    v19 = [WeakRetained privacyDelegate];
    [*(a1 + 32) setPrivacyDelegate:v19];

    if (([v16 isEqualExceptForDate:*(a1 + 32) ignoringEmptySalt:*(a1 + 80)] & 1) != 0 || (objc_msgSend(v16, "configureFromCloudData:withMergers:", *(a1 + 32), *(a1 + 48)), v20 = objc_msgSend(v16, "hasChanges"), !v20))
    {
      v24 = 0;
    }

    else
    {
      v21 = sub_100002660(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [WeakRetained entityName];
        v23 = [v16 identifier];
        *buf = 138544386;
        v41 = v22;
        v42 = 2160;
        v43 = 1752392040;
        v44 = 2112;
        v45 = v23;
        v46 = 1024;
        v47 = v15 == 0;
        v48 = 2112;
        v49 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v16 incrementEditGeneration];
      v24 = 1;
    }

    if ([v3 hasChanges])
    {
      [WeakRetained mq_incrementCloudVersion];
      v37 = v14;
      v25 = [v3 save:&v37];
      v26 = v37;

      if (!v15)
      {
        if (v25)
        {
          v27 = [*(a1 + 56) monitor];

          if (v27)
          {
            if (v16)
            {
              v28 = [*(a1 + 56) monitor];
              v29 = *(a1 + 56);
              v39 = v16;
              v30 = [NSArray arrayWithObjects:&v39 count:1];
              [v28 dataManager:v29 didInsertNewRecords:v30];
            }
          }
        }
      }

      [WeakRetained _logError:v26 at:@"setCloudData - save"];
      [WeakRetained mq_signalTransactions];
    }

    else
    {
      v26 = v14;
    }

    v33 = [WeakRetained mq_sanitizeError:v26];

    v34 = objc_retainBlock(*(a1 + 64));
    v35 = v34;
    if (v34)
    {
      (*(v34 + 2))(v34, v16 != 0, v24, v33);
    }
  }

  else
  {
    v31 = objc_retainBlock(*(a1 + 64));
    v32 = v31;
    if (v31)
    {
      (*(v31 + 2))(v31, 0, 0, 0);
    }
  }
}

void sub_10004A234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A258(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004A2D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v37 = [WeakRetained moc];
  if (v37)
  {
    v2 = +[BULogUtilities shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v5 = sub_10000DB80(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [WeakRetained entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudDatas\", &buf, 0xCu);
      }
    }

    v7 = [NSFetchRequest alloc];
    v8 = [WeakRetained entityName];
    v36 = [v7 initWithEntityName:v8];

    [v36 setReturnsObjectsAsFaults:0];
    [v36 setPredicate:*(a1 + 32)];
    v63 = 0;
    v9 = [v37 executeFetchRequest:v36 error:&v63];
    v10 = v63;
    [WeakRetained _logError:v10 at:@"setCloudData(propertyIDKey) - fetch"];
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
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
        for (i = 0; i != v13; i = i + 1)
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
    v72 = sub_10004A934;
    v73 = sub_10004A944;
    v74 = objc_alloc_init(NSMutableArray);
    v18 = *(a1 + 48);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10004A94C;
    v40[3] = &unk_1002410B8;
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
      v23 = sub_100002660([WeakRetained mq_signalTransactions]);
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
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Save to storeID:%@ error:%@", v64, 0x20u);
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

    v31 = objc_retainBlock(*(a1 + 72));
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
    v27 = sub_100002660(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0E10(WeakRetained);
    }

    v28 = objc_retainBlock(*(a1 + 72));
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, 0, 0, 0);
      v28 = v29;
    }
  }
}

void sub_10004A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A934(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004A94C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) entityName];
    v7 = [NSEntityDescription insertNewObjectForEntityForName:v9 inManagedObjectContext:*(a1 + 48)];

    [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
    v8 = 1;
  }

  *(*(*(a1 + 72) + 8) + 24) |= v7 != 0;
  v10 = [*(a1 + 40) privacyDelegate];
  [v7 setPrivacyDelegate:v10];

  v11 = [*(a1 + 40) privacyDelegate];
  [v5 setPrivacyDelegate:v11];

  v12 = [v7 isEqualExceptForDate:v5 ignoringEmptySalt:*(a1 + 96)];
  v13 = v12;
  v14 = sub_100002660(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C0E9C(v7);
  }

  if ((v13 & 1) == 0)
  {
    [v7 configureFromCloudData:v5 withMergers:*(a1 + 56)];
    v15 = [v7 hasChanges];
    v16 = v15;
    v17 = sub_100002660(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C0F3C(v7);
    }

    if (v16)
    {
      v19 = sub_100002660(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 40) entityName];
        v21 = [v7 identifier];
        *buf = 138544386;
        v31 = v20;
        v32 = 2160;
        v33 = 1752392040;
        v34 = 2112;
        v35 = v21;
        v36 = 1024;
        v37 = v8;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v7 incrementEditGeneration];
      *(*(*(a1 + 80) + 8) + 24) = 1;
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }

  v22 = *(*(a1 + 88) + 8);
  if (*(v22 + 24) >= 0x21uLL)
  {
    *(v22 + 24) = 0;
    if ([*(a1 + 48) hasChanges])
    {
      v23 = *(a1 + 48);
      v29 = 0;
      [v23 save:&v29];
      v24 = v29;
      v25 = sub_100002660([*(a1 + 40) _logError:v24 at:@"setCloudData(propertyIDKey) - save batch"]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [*(a1 + 40) entityName];
        v27 = [*(a1 + 48) persistentStoreCoordinator];
        v28 = [v27 persistentStores];
        *buf = 138412802;
        v31 = v26;
        v32 = 2112;
        v33 = v28;
        v34 = 2112;
        v35 = v24;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Batch save to storeID:%@ with error:%@", buf, 0x20u);
      }
    }
  }
}

void sub_10004AE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004AEA8(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004AF1C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [a1[4] debugDescription];
        *buf = 138543618;
        v38 = v8;
        v39 = 2114;
        v40 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ removeCloudDataForPredicate:%{public}@\", buf, 0x16u);
      }
    }

    v10 = [NSFetchRequest alloc];
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setFetchBatchSize:64];
    [v12 setPredicate:a1[4]];
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
          for (i = 0; i != v19; i = i + 1)
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
      v25 = sub_100002660(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0FDC(WeakRetained, a1 + 4);
      }
    }

    v26 = [WeakRetained mq_sanitizeError:{v14, v29}];

    v27 = objc_retainBlock(a1[5]);
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v16 != 0, v26);
    }
  }

  else
  {
    v23 = objc_retainBlock(a1[5]);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }
  }
}

void sub_10004B46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004B490(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004B504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [NSFetchRequest alloc];
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
        v12 = sub_100002660(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1001C109C();
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v32 = 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10004B894;
      v24[3] = &unk_100241108;
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
      v17 = sub_100002660(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [WeakRetained entityName];
        v19 = [*(a1 + 40) debugDescription];
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Did not find %{public}@ to update sync gen from cloudData:%@", buf, 0x16u);
      }

      v14 = v8;
    }

    v20 = [WeakRetained mq_sanitizeError:v14];

    v21 = objc_retainBlock(*(a1 + 56));
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, v9 != 0, v20);
    }
  }

  else
  {
    v15 = objc_retainBlock(*(a1 + 56));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 0);
    }
  }
}

void sub_10004B874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004B894(uint64_t a1, void *a2)
{
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

  v11 = sub_100002660(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 48) entityName];
    v13 = [v3 debugDescription];
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ updateSyncGeneration %@", buf, 0x16u);
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

void sub_10004BC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004BC54(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004BCC8(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v49 = v8;
        v50 = 2112;
        v51 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ deleteCloudDataForPredicate %@\", buf, 0x16u);
      }
    }

    v10 = [NSFetchRequest alloc];
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setFetchBatchSize:64];
    [v12 setPredicate:*(v1 + 32)];
    v46 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v46];
    v14 = v46;
    [WeakRetained _logError:v14 at:@"deleteCloudData - fetch"];
    v15 = [v13 count];
    v16 = v15;
    if (v15)
    {
      v35 = v14;
      v36 = v15;
      v38 = v12;
      v39 = v1;
      v40 = v3;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v37 = v13;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v43;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v42 + 1) + 8 * i);
            v23 = [WeakRetained privacyDelegate];
            [v22 setPrivacyDelegate:v23];

            [v22 setDifferentNumber:&__kCFBooleanTrue forKey:@"deletedFlag"];
            v24 = [v22 hasChanges];
            if (v24)
            {
              v25 = sub_100002660(v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [WeakRetained entityName];
                *buf = 138543618;
                v49 = v26;
                v50 = 2112;
                v51 = v22;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ deleteCloudDataForPredicate data:%@", buf, 0x16u);
              }

              [v22 incrementEditGeneration];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v19);
      }

      v3 = v40;
      if ([v40 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v41 = v35;
        [v40 save:&v41];
        v14 = v41;

        [WeakRetained _logError:v14 at:@"deleteCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v12 = v38;
        v1 = v39;
        v16 = v36;
        v13 = v37;
      }

      else
      {
        v12 = v38;
        v1 = v39;
        v16 = v36;
        v13 = v37;
        v14 = v35;
      }
    }

    else
    {
      if (!v14)
      {
        v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
        v14 = v15;
      }

      v29 = sub_100002660(v15);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [WeakRetained entityName];
        v31 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v49 = v30;
        v50 = 2114;
        v51 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Did not find %{public}@ to delete for predicate %{public}@", buf, 0x16u);
      }
    }

    v32 = [WeakRetained mq_sanitizeError:{v14, v35}];

    v33 = objc_retainBlock(*(v1 + 40));
    v34 = v33;
    if (v33)
    {
      (*(v33 + 2))(v33, v16 != 0, v32);
    }
  }

  else
  {
    v27 = objc_retainBlock(*(v1 + 40));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0);
    }
  }
}

void sub_10004C340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004C364(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004C3D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager countWithPredicate:%{public}@\", buf, 0xCu);
      }
    }

    v9 = [NSFetchRequest alloc];
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

void sub_10004C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004C918(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004C98C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\", buf, 0xCu);
      }
    }

    v9 = [NSFetchRequest alloc];
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

void sub_10004CE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004CE68(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004CEE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
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
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@ sortDescriptors: %{public}@, has a filter: %{public}@, maximumResultCount: %lu\", buf, 0x34u);
      }
    }

    v14 = [NSFetchRequest alloc];
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
    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
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
    v31 = sub_100002660(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1001C10D0();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10004D4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004D4E8(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004D560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  v4 = +[BULogUtilities shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v7 = sub_10000DB80(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained entityName];
      v9 = [*(a1 + 32) debugDescription];
      *buf = 138543618;
      v39 = v8;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\", buf, 0x16u);
    }
  }

  v10 = [NSFetchRequest alloc];
  v11 = [WeakRetained entityName];
  v12 = [v10 initWithEntityName:v11];

  [v12 setFetchBatchSize:64];
  v29 = a1;
  [v12 setPredicate:*(a1 + 32)];
  v36 = 0;
  v30 = v3;
  v13 = [v3 executeFetchRequest:v12 error:&v36];
  v14 = v36;
  [WeakRetained _logError:v14 at:@"cloudDatas - fetch"];
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
  v16 = [WeakRetained privacyDelegate];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        [v22 setPrivacyDelegate:v16];
        v23 = [v22 mutableCopy];
        [v23 setPrivacyDelegate:v16];
        if (v23)
        {
          [v15 addObject:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v19);
  }

  if ([v30 hasChanges])
  {
    v31 = v14;
    [v30 save:&v31];
    v24 = v31;

    [WeakRetained _logError:v24 at:@"cloudDatas - save"];
    v14 = v24;
  }

  v25 = [WeakRetained mq_sanitizeError:v14];

  v26 = *(v29 + 40);
  v27 = [WeakRetained mq_cloudSyncVersions];
  v28 = [v27 mutableCopy];
  (*(v26 + 16))(v26, v15, v28, v25);
}

void sub_10004DA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004DAB4(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004DB28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained entityName];
        v9 = [*(a1 + 32) debugDescription];
        *buf = 138543618;
        v31 = v8;
        v32 = 2114;
        v33 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\", buf, 0x16u);
      }
    }

    v10 = [NSFetchRequest alloc];
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setFetchBatchSize:64];
    [v12 setPredicate:*(a1 + 32)];
    v28 = 0;
    v23 = v3;
    v13 = [v3 executeFetchRequest:v12 error:&v28];
    v14 = v28;
    [WeakRetained _logError:v14 at:@"transformedCloudDatas"];
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = (*(*(a1 + 40) + 16))();
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    v22 = [WeakRetained mq_sanitizeError:v14];

    (*(*(a1 + 48) + 16))();
    v3 = v23;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004E0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004E0DC(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004E150(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained moc];

  if (v5)
  {
    v6 = [WeakRetained moc];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004E2F0;
    v14[3] = &unk_1002411F8;
    objc_copyWeak(&v19, (a1 + 72));
    v15 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13 = *(a1 + 48);
    v9 = *(&v13 + 1);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v16 = v10;
    v17 = v13;
    v18 = *(a1 + 64);
    [v6 performBlock:v14];

    objc_destroyWeak(&v19);
  }

  else
  {
    v11 = objc_retainBlock(*(a1 + 64));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

void sub_10004E2F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = +[BULogUtilities shared];
    v6 = [v5 verboseLoggingEnabled];

    if (!v4)
    {
      if (v6)
      {
        v20 = sub_10000DB80(v7);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 40) debugDescription];
          *buf = 138543362;
          v51 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\", buf, 0xCu);
        }
      }

      v22 = [NSFetchRequest alloc];
      v23 = [WeakRetained entityName];
      v12 = [v22 initWithEntityName:v23];

      [v12 setReturnsObjectsAsFaults:0];
      [v12 setFetchLimit:1];
      [v12 setPredicate:*(a1 + 40)];
      v47 = 0;
      v24 = [v3 executeFetchRequest:v12 error:&v47];
      v25 = v47;
      [WeakRetained _logError:v25 at:@"resolvedCloudData - fetch (new)"];
      v26 = [v24 firstObject];
      v27 = [WeakRetained privacyDelegate];
      [v26 setPrivacyDelegate:v27];

      v28 = [WeakRetained mq_sanitizeError:v25];

      v29 = [v26 mutableCopy];
      v30 = objc_retainBlock(*(a1 + 72));
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30, v29, v28);
      }

      goto LABEL_36;
    }

    if (v6)
    {
      v8 = sub_10000DB80(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) debugDescription];
        *buf = 138543362;
        v51 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@\", buf, 0xCu);
      }
    }

    v10 = [NSFetchRequest alloc];
    v11 = [WeakRetained entityName];
    v12 = [v10 initWithEntityName:v11];

    [v12 setReturnsObjectsAsFaults:0];
    [v12 setFetchLimit:1];
    [v12 setPredicate:*(a1 + 40)];
    v49 = 0;
    v13 = [v3 executeFetchRequest:v12 error:&v49];
    v14 = v49;
    [WeakRetained _logError:v14 at:@"resolvedCloudData - fetch (existing)"];
    v15 = [WeakRetained privacyDelegate];
    v16 = [v13 firstObject];
    if (v16)
    {
      v17 = v16;
      [v16 setPrivacyDelegate:v15];
      [v17 resolveConflictsFromRecord:*(a1 + 32) withResolvers:*(a1 + 48)];
      if (!v14)
      {
LABEL_30:
        if ([v17 hasChanges])
        {
          [WeakRetained mq_incrementCloudVersion];
          v48 = 0;
          [v3 save:&v48];
          v14 = v48;
          [WeakRetained _logError:v14 at:@"resolvedCloudData - save"];
          [WeakRetained mq_signalTransactions];
        }

        else
        {
          v14 = 0;
        }
      }

LABEL_33:
      v43 = [WeakRetained mq_sanitizeError:v14];

      v44 = [v17 mutableCopy];
      v45 = objc_retainBlock(*(a1 + 72));
      v46 = v45;
      if (v45)
      {
        (*(v45 + 2))(v45, v44, v43);
      }

LABEL_36:
      goto LABEL_37;
    }

    v32 = +[BULogUtilities shared];
    v33 = [v32 verboseLoggingEnabled];

    if (v33)
    {
      v35 = sub_10000DB80(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [*(a1 + 32) recordID];
        v37 = [v36 recordName];
        v38 = *(a1 + 32);
        *buf = 138543618;
        v51 = v37;
        v52 = 2112;
        v53 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@ did not find existing record.  Creating new from %@\", buf, 0x16u);
      }
    }

    v39 = [*(a1 + 56) dataMapper];

    if (v39)
    {
      v40 = [*(a1 + 56) dataMapper];
      v41 = [v40 cloudDataFromRecord:*(a1 + 32)];

      if (v41)
      {
LABEL_26:
        v42 = [WeakRetained entityName];
        v17 = [NSEntityDescription insertNewObjectForEntityForName:v42 inManagedObjectContext:v3];

        [v17 setPrivacyDelegate:v15];
        [v41 setPrivacyDelegate:v15];
        [v17 configureFromCloudData:v41 withMergers:*(a1 + 64)];
        goto LABEL_29;
      }
    }

    else
    {
      v41 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
      if (v41)
      {
        goto LABEL_26;
      }
    }

    v17 = 0;
LABEL_29:

    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v18 = objc_retainBlock(*(a1 + 72));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, 0, 0);
  }

LABEL_37:
}

void sub_10004EACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004EAF0(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004EB68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v1 = [WeakRetained moc];
  if (!v1)
  {
    v57 = objc_retainBlock(*(a1 + 64));
    v58 = v57;
    if (v57)
    {
      (*(v57 + 2))(v57, 0, 0, 0);
    }

    goto LABEL_81;
  }

  v65 = [WeakRetained privacyDelegate];
  v66 = +[NSMutableArray array];
  v2 = sub_100002660(v66);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10005213C;
    v99 = &unk_100241310;
    *v100 = objc_alloc_init(NSMutableArray);
    v4 = *v100;
    [v3 enumerateObjectsUsingBlock:buf];
    v5 = [v4 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange resolveConflictsForRecords: %{public}@", buf, 0xCu);
  }

  v73 = [*(a1 + 32) count];
  v69 = objc_opt_new();
  v68 = objc_alloc_init(NSMutableDictionary);
  v78 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v7)
  {
    v8 = *v94;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v94 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v93 + 1) + 8 * i);
        v11 = [v10 encryptedValuesByKey];
        v12 = [v11 objectForKeyedSubscript:@"localRecordIDEncrypted"];

        if (!v12)
        {
          v12 = [v10 valueForKey:@"localRecordID"];
          if (!v12)
          {
            v13 = sub_100002660(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v10;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CKRecord unexpected with no local identifier: %{public}@", buf, 0xCu);
            }

            v12 = @"keyFromMyKitchenDrawer";
          }
        }

        [v78 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v7);
  }

  v67 = [objc_msgSend(WeakRetained "immutableClass")];
  v14 = [WeakRetained entityName];
  v64 = v14;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  if (!v73)
  {
    v76 = 0;
    goto LABEL_73;
  }

  v63 = 0;
  v74 = 0;
  v76 = 0;
  v15 = 0;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v72 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v16 = [*(a1 + 32) objectAtIndexedSubscript:v15];
    if ((v15 & 0xF) != 0)
    {
      v17 = v76;
LABEL_20:
      v18 = [BCCloudData localIdentifierFromRecord:v16];
      v19 = [v17 objectForKeyedSubscript:v18];
      if (v19)
      {
        goto LABEL_21;
      }

      v33 = [v68 objectForKeyedSubscript:v18];
      v34 = v33 == 0;

      if (v34)
      {
        goto LABEL_36;
      }

      v19 = [v68 objectForKeyedSubscript:v18];
      v35 = sub_100002660(v19);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v52 = [v16 recordID];
        v53 = [v52 recordName];
        *buf = 138544386;
        *&buf[4] = v53;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v99 = v18;
        *v100 = 2112;
        *&v100[2] = v19;
        v101 = 2112;
        v102 = v16;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ Already seen (localId: %{mask.hash}@) %@. Updating from %@", buf, 0x34u);
      }

      if (v19)
      {
LABEL_21:
        [v19 setPrivacyDelegate:v65];
        [v19 resolveConflictsFromRecord:v16 withResolvers:*(a1 + 40)];
      }

      else
      {
LABEL_36:
        v36 = [*(a1 + 48) dataMapper];
        v37 = v36 == 0;

        if (v37)
        {
          v39 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
          if (!v39)
          {
LABEL_52:

            v19 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v38 = [*(a1 + 48) dataMapper];
          v39 = [v38 cloudDataFromRecord:v16];

          if (!v39)
          {
            goto LABEL_52;
          }
        }

        v40 = [*(a1 + 48) cloudKitController];
        v41 = [v40 configuration];
        v42 = [v41 shouldArchiveData:v39];

        if (!v42)
        {
          v47 = sub_100002660(v43);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v54 = [v16 recordID];
            v55 = [v54 recordName];
            *buf = 138543618;
            *&buf[4] = v55;
            *&buf[12] = 2112;
            *&buf[14] = v16;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ configuration did not allow creation of new record from %@", buf, 0x16u);
          }

          goto LABEL_52;
        }

        v44 = sub_100002660(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v16 recordID];
          v46 = [v45 recordName];
          *buf = 138544130;
          *&buf[4] = v46;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v99 = v18;
          *v100 = 2112;
          *&v100[2] = v16;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager resolveConflictsForRecords:%{public}@ (localId: %{mask.hash}@) did not find existing record. Creating new from %@", buf, 0x2Au);
        }

        v19 = [NSEntityDescription insertNewObjectForEntityForName:v64 inManagedObjectContext:v1];
        [v68 setObject:v19 forKeyedSubscript:v18];
        [v19 setPrivacyDelegate:v65];
        [v39 setPrivacyDelegate:v65];
        [v19 configureFromCloudData:v39 withMergers:*(a1 + 56)];

        if (!v19)
        {
LABEL_23:
          if (v15 == v74 + v71 - 1)
          {
            if (!v72 && [v1 hasChanges])
            {
              v84 = 0;
              [v1 save:&v84];
              v20 = v84;
              if (v20)
              {
                v21 = v20;
                [WeakRetained _logError:v20 at:@"resolveConflicts - save batch"];
                [v66 removeObjectsInArray:v69];
                v63 = 1;
                v22 = 4;
                v72 = v21;
LABEL_63:

                v76 = v17;
                goto LABEL_64;
              }

              v63 = 1;
            }

            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v48 = v69;
            v49 = [v48 countByEnumeratingWithState:&v80 objects:v97 count:16];
            if (v49)
            {
              v50 = *v81;
              do
              {
                for (j = 0; j != v49; j = j + 1)
                {
                  if (*v81 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  [v1 refreshObject:*(*(&v80 + 1) + 8 * j) mergeChanges:0];
                }

                v49 = [v48 countByEnumeratingWithState:&v80 objects:v97 count:16];
              }

              while (v49);
            }

            [v48 removeAllObjects];
            [v68 removeAllObjects];
          }

          v22 = 0;
          goto LABEL_63;
        }
      }

      [v66 addObject:v19];
      [v69 addObject:v19];
      goto LABEL_23;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = &v73[-v15];
    if (&v73[-v15] >= 0x10)
    {
      v24 = 16;
    }

    v74 = v24;
    v25 = [NSFetchRequest alloc];
    v26 = [WeakRetained entityName];
    v27 = [v25 initWithEntityName:v26];

    v28 = [v78 subarrayWithRange:{v15, v74}];
    v29 = [v28 mutableCopy];

    [v29 removeObject:@"keyFromMyKitchenDrawer"];
    v30 = [NSPredicate predicateWithFormat:@"%K IN %@", v67, v29];
    [v27 setPredicate:v30];

    v88 = v72;
    v31 = [v1 executeFetchRequest:v27 error:&v88];
    v32 = v88;

    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10004F7F4;
    v85[3] = &unk_100241248;
    v86 = v67;
    v87 = &v89;
    v17 = [v31 bds_dictionaryUsingPropertyAsKey:v86 uniquingKeysWith:v85];

    if (v32)
    {
      [WeakRetained _logError:v32 at:@"resolveConflicts - fetch"];
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    objc_autoreleasePoolPop(v23);
    if (!v32)
    {
      v71 = v15;
      v72 = 0;
      goto LABEL_20;
    }

    v76 = v17;
    v71 = v15;
    v72 = v32;
LABEL_64:

    objc_autoreleasePoolPop(context);
    if (v22)
    {
      break;
    }

    ++v15;
  }

  while (v15 != v73);
  v56 = v72;
  if ((v63 & (v72 == 0)) != 1)
  {
    goto LABEL_74;
  }

  [WeakRetained mq_incrementCloudVersion];
  v14 = [v1 hasChanges];
  if (v14)
  {
    v79 = 0;
    [v1 save:&v79];
    v56 = v79;
    v14 = [WeakRetained _logError:v56 at:@"resolveConflicts - save remaining"];
    goto LABEL_74;
  }

LABEL_73:
  v56 = 0;
LABEL_74:
  if (*(v90 + 6))
  {
    v59 = sub_100002660(v14);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1001C1104();
    }
  }

  [WeakRetained mq_signalTransactions];
  v60 = [WeakRetained mq_sanitizeError:v56];

  v61 = objc_retainBlock(*(a1 + 64));
  v62 = v61;
  if (v61)
  {
    (*(v61 + 2))(v61, 1, v66, v60);
  }

  _Block_object_dispose(&v89, 8);
LABEL_81:
}

void sub_10004F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004F7F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:*(a1 + 32)];
  v8 = sub_100002660(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 141558786;
    v11 = 1752392040;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords: Encountered duplicates for %{mask.hash}@, entry=%@, existing=%@", &v10, 0x2Au);
  }

  ++*(*(*(a1 + 40) + 8) + 24);

  return v5;
}

void sub_10004FAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004FAD4(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004FB48(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained moc];
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002660(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1184(a1, v5, v6);
    }

    v7 = [NSFetchRequest alloc];
    v8 = [WeakRetained entityName];
    v9 = [v7 initWithEntityName:v8];

    v10 = [a1[4] valueForKey:@"recordName"];
    v11 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v10];
    [v9 setPredicate:v11];

    v31 = 0;
    v12 = [v4 executeFetchRequest:v9 error:&v31];
    v13 = v31;
    [WeakRetained _logError:v13 at:@"resolveConflicts - failedRecordIDs - fetch"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v27 + 1) + 8 * i) setSystemFields:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    if ([v4 hasChanges])
    {
      v26 = v13;
      [v4 save:&v26];
      v19 = v26;

      [WeakRetained _logError:v19 at:@"resolveConflicts - failedRecordIDs - save"];
      v20 = [WeakRetained syncManager];
      [v20 signalSyncToCK];

      v13 = v19;
    }

    v21 = [WeakRetained mq_sanitizeError:v13];

    v22 = objc_retainBlock(a1[5]);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 1, v21);
    }
  }

  else
  {
    v24 = objc_retainBlock(a1[5]);
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, 0);
    }
  }
}

void sub_100050328(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100050354(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1001C11F8(a1);
  }

  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, 0, 0);
  }
}

void sub_1000503D8(uint64_t a1)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [WeakRetained mq_cloudSyncVersions];
    v89 = 0;
    v5 = [*(a1 + 32) cloudVersion];
    v6 = [v4 cloudVersion];
    v70 = v4;
    if (v5 <= v6)
    {
      v12 = [*(a1 + 32) historyToken];
      v89 = [*(a1 + 32) historyTokenOffset];
    }

    else
    {
      v7 = sub_100002660(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) entityName];
        v9 = v3;
        v10 = *(a1 + 32);
        v11 = [v4 mutableCopy];
        *buf = 138543874;
        v91 = v8;
        v92 = 2114;
        v93 = v10;
        v3 = v9;
        v94 = 2114;
        v95 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince -- About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x20u);
      }

      v12 = 0;
    }

    v17 = (a1 + 40);
    v16 = *(a1 + 40);
    v88 = 0;
    v18 = [v16 _fetchHistoryAfterToken:v12 inMoc:v3 error:&v88];
    v19 = v88;
    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = v19;
    v21 = [*v17 _isTokenInvalidError:v19];
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = sub_100002660(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v63 = [*(a1 + 40) entityName];
      v64 = WeakRetained;
      v65 = v3;
      v66 = *(a1 + 32);
      v72 = v18;
      v67 = [v70 mutableCopy];
      *buf = 138544130;
      v91 = v63;
      v92 = 2114;
      v93 = v20;
      v94 = 2114;
      v95 = v66;
      v3 = v65;
      WeakRetained = v64;
      v96 = 2114;
      v97 = v67;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ getChangesSince -- fetchHistoryAfterToken encountered error: %{public}@. About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x2Au);

      v18 = v72;
    }

    v89 = 0;
    v23 = *v17;
    v87 = 0;
    v24 = [v23 _fetchHistoryAfterToken:0 inMoc:v3 error:&v87];
    v20 = v87;

    v12 = 0;
    v18 = v24;
    if (v20)
    {
LABEL_16:
      v71 = v18;
      v25 = sub_100002660(v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1001C128C((a1 + 40));
      }

      [WeakRetained _logError:v20 at:@"getChangesSince - fetchHistory error"];
      v26 = [WeakRetained mq_sanitizeError:v20];

      v27 = objc_retainBlock(*(a1 + 48));
      v28 = v27;
      if (v27)
      {
        (*(v27 + 2))(v27, 0, 0, 0, v26, 0);
      }

      v29 = 0;
      v15 = v70;
    }

    else
    {
LABEL_21:
      v69 = v12;
      v77 = +[NSMutableSet set];
      v76 = +[NSMutableSet set];
      objc_opt_class();
      v71 = v18;
      if (objc_opt_isKindOfClass())
      {
        v30 = v18;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obj = [v30 result];
        v31 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
        if (v31)
        {
          v32 = v31;
          v68 = v30;
          v74 = v3;
          v33 = 0;
          v78 = 0;
          v34 = *v84;
          while (2)
          {
            v35 = 0;
            v73 = v32;
            do
            {
              if (*v84 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v83 + 1) + 8 * v35);
              v37 = objc_autoreleasePoolPush();
              if ([WeakRetained signalDataChangedTransaction] && v33 > 0x1F)
              {
                objc_autoreleasePoolPop(v37);
                v48 = 1;
                goto LABEL_38;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = v36;
                v39 = a1;
                v40 = *(a1 + 64);
                v41 = WeakRetained;
                v42 = [WeakRetained privacyDelegate];
                v81 = 0;
                v82 = 0;
                v43 = [v38 bds_atOffset:&v89 getAtMost:32 - v33 moc:v74 entityClass:v40 privacyDelegate:v42 updated:&v82 tombstones:&v81];
                v44 = v82;
                v45 = v81;

                if (v43)
                {
                  v46 = [v38 token];

                  v89 = 0;
                  v78 = v46;
                }

                [v76 addObjectsFromArray:v44];
                [v77 addObjectsFromArray:v45];
                v47 = [v76 count];
                v33 = &v47[[v77 count]];

                a1 = v39;
                WeakRetained = v41;
                v32 = v73;
              }

              objc_autoreleasePoolPop(v37);
              v35 = v35 + 1;
            }

            while (v32 != v35);
            v32 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }

          v48 = 0;
LABEL_38:
          v3 = v74;
          v49 = v78;
          v30 = v68;
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      v15 = v70;
      v50 = [v70 syncVersion];
      if (v50 != [v70 cloudVersion])
      {
        [v70 setSyncVersion:{objc_msgSend(v70, "cloudVersion")}];
      }

      if (v49)
      {
        [v70 setHistoryToken:v49];
      }

      [v70 setHistoryTokenOffset:v89];
      if ([v70 hasChanges])
      {
        v51 = [WeakRetained moc];
        v80 = 0;
        [v51 save:&v80];
        v52 = v80;

        [WeakRetained _logError:v52 at:@"getChangesSince - save"];
      }

      v53 = [v70 mutableCopy];
      v54 = sub_100002660(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [WeakRetained entityName];
        v56 = [v76 count];
        *buf = 138544386;
        v91 = v55;
        v92 = 2048;
        v93 = v56;
        v94 = 2112;
        v95 = v76;
        v96 = 2114;
        v97 = v53;
        v98 = 1024;
        v99 = v48;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning changedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v79 = v49;

      v58 = sub_100002660(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [WeakRetained entityName];
        v60 = [v77 count];
        *buf = 138544386;
        v91 = v59;
        v92 = 2048;
        v93 = v60;
        v94 = 2112;
        v95 = v77;
        v96 = 2114;
        v97 = v53;
        v98 = 1024;
        v99 = v48;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning deletedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v26 = [WeakRetained mq_sanitizeError:0];
      v61 = objc_retainBlock(*(a1 + 48));
      v62 = v61;
      v28 = v77;
      if (v61)
      {
        (*(v61 + 2))(v61, v76, v77, v53, v26, v48);
      }

      v12 = v69;
      v29 = v79;
    }
  }

  else
  {
    v13 = sub_100002660(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001C1318(a1);
    }

    v14 = objc_retainBlock(*(a1 + 48));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0, 0, 0);
    }
  }

  kdebug_trace();
}

void sub_100050E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100050E34(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_100050EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002660(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained entityName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #dissociateCloudData", &buf, 0xCu);
    }

    v7 = [WeakRetained entityName];
    v8 = [NSFetchRequest fetchRequestWithEntityName:v7];

    [v8 setFetchBatchSize:20];
    v27 = 0;
    v9 = [v4 executeFetchRequest:v8 error:&v27];
    v10 = v27;
    [WeakRetained _logError:v10 at:@"dissociateCloudData - fetch"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x2020000000;
    v30 = v10 == 0;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000511C0;
    v23 = &unk_1002412C0;
    v25 = WeakRetained;
    p_buf = &buf;
    v24 = v4;
    [v9 bds_traverseBatchesOfSize:20 block:&v20];
    if ([WeakRetained signalDataChangedTransaction])
    {
      v11 = [WeakRetained cloudKitController];
      v12 = [v11 transactionManager];
      v13 = [WeakRetained entityName];
      v14 = [WeakRetained notificationName];
      [v12 signalDataChangeTransactionForEntityName:v13 notificationName:v14];
    }

    v15 = [WeakRetained mq_sanitizeError:v10];

    v16 = objc_retainBlock(*(a1 + 32));
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, *(*(&buf + 1) + 24), v15);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = objc_retainBlock(*(a1 + 32));
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0);
    }
  }
}

void sub_10005119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000511C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [v8 setSyncGeneration:0];
        [v8 setValue:0 forKey:@"saltedHashedID"];
        [v8 setSystemFields:0];
        [v8 setCkSystemFields:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v9 = *(a1 + 32);
    v22 = 0;
    [v9 save:&v22];
    v10 = v22;
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    if (v10)
    {
      v12 = 0;
    }

    *(v11 + 24) = v12;
    [*(a1 + 40) _logError:v10 at:@"dissociateCloudData - save"];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 32) refreshObject:*(*(&v18 + 1) + 8 * j) mergeChanges:{0, v18}];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v15);
  }
}

void sub_1000515D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100051600(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "No managed object context! #hasSaltChangedWithCompletion", v5, 2u);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    v3[2](v3, 0, v4);
  }
}

void sub_1000516C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [NSFetchRequest alloc];
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setReturnsObjectsAsFaults:0];
    [v6 setFetchLimit:1];
    v7 = [NSPredicate predicateWithFormat:@"syncGeneration >= 1"];
    [v6 setPredicate:v7];

    v8 = +[BULogUtilities shared];
    v9 = [v8 verboseLoggingEnabled];

    if (v9)
    {
      v11 = sub_10000DB80(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager hasSaltChangedWithCompletion:%{public}@\", buf, 0xCu);
      }
    }

    v25 = 0;
    v12 = [v3 executeFetchRequest:v6 error:&v25];
    v13 = v25;
    if ([v12 count])
    {
      v14 = [v12 firstObject];
      v15 = [WeakRetained privacyDelegate];
      [v14 setPrivacyDelegate:v15];

      v16 = [v14 hasValidSalt] ^ 1;
      v17 = +[BULogUtilities shared];
      v18 = [v17 verboseLoggingEnabled];

      if (v18)
      {
        v20 = sub_10000DB80(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v27 = v14;
          v28 = 1024;
          v29 = v16;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "\\Testing with %@  %{BOOL}d\", buf, 0x12u);
        }
      }

      v21 = objc_retainBlock(*(a1 + 32));
      v22 = v21;
      if (v21)
      {
        (*(v21 + 2))(v21, v16, 0);
      }
    }

    else
    {
      v14 = objc_retainBlock(*(a1 + 32));
      if (!v14)
      {
LABEL_20:

        goto LABEL_21;
      }

      v22 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v14)[2](v14, 0, v22);
    }

    goto LABEL_20;
  }

  v23 = sub_100002660(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [WeakRetained entityName];
    *buf = 138412290;
    v27 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "BCCloudDataManager %@ #hasSaltChangedWithCompletion no moc", buf, 0xCu);
  }

  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v13 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    (*(v6 + 2))(v6, 0, v13);
LABEL_21:
  }
}

void sub_100051C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100051C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained moc];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002660(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C13AC(WeakRetained);
    }

    v5 = [NSFetchRequest alloc];
    v6 = [WeakRetained entityName];
    v7 = [v5 initWithEntityName:v6];

    [v7 setFetchBatchSize:64];
    v8 = [NSPredicate predicateWithFormat:@"editGeneration > syncGeneration"];
    [v7 setPredicate:v8];

    v33 = 0;
    v9 = [v3 executeFetchRequest:v7 error:&v33];
    v10 = v33;
    [WeakRetained _logError:v10 at:@"diagnosticDirtyCloudDataInfos"];
    v11 = [v9 count];
    if (v11)
    {
      v25 = v10;
      v26 = v7;
      v12 = sub_100002660(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [WeakRetained entityName];
        v14 = [v9 count];
        *buf = 138412546;
        v36 = v13;
        v37 = 2048;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager diagnosticDirtyCloudDataInfos %@, returning %lu results", buf, 0x16u);
      }

      v27 = WeakRetained;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v20 identifier];
            objc_opt_class();
            v22 = [v20 valueForKey:@"saltedHashedID"];
            v23 = BUDynamicCast();

            v24 = [[BDSCloudSyncDiagnosticCloudDataInfo alloc] initWithIdentifier:v21 saltedHashedID:v23];
            [*(*(*(a1 + 32) + 8) + 40) addObject:v24];
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
      }

      WeakRetained = v27;
      v7 = v26;
      v10 = v25;
    }
  }
}

void sub_10005213C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordID];
  v5 = [v4 recordName];
  v6 = [v3 recordChangeTag];

  v7 = [NSString stringWithFormat:@"%@-%@", v5, v6];

  [*(a1 + 32) addObject:v7];
}

void sub_100052210(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10005248C(id *a1, int a2, int a3)
{
  v6 = sub_100002660(a1);
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudDataSyncManager: syncCloudData: entityName: %@, attachedState: %@ reachable: %@", buf, 0x20u);
  }

  if (a2 && a3)
  {
    v12 = [a1[4] syncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052670;
    block[3] = &unk_100240228;
    objc_copyWeak(&v18, a1 + 7);
    v16 = a1[5];
    v17 = a1[6];
    dispatch_async(v12, block);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = objc_retainBlock(a1[6]);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_100052670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _syncQueueSyncForCloudData:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100052964(uint64_t a1, int a2)
{
  v4 = +[BULogUtilities shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v7 = sub_10000DB80(v6);
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudDataSyncManager: databaseController:recordsChanged: entityName: %@, success: %@\", &v12, 0x16u);
    }
  }
}

void sub_100052CD0(uint64_t a1)
{
  if ([*(a1 + 32) serverPushPostponed])
  {
    v2 = objc_retainBlock(*(a1 + 40));
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

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100052DDC;
    v7[3] = &unk_100241380;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 getAttached:v7];
  }
}

void sub_100052DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002660(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) delegate];
    v8 = [v7 entityName];
    v9 = [NSNumber numberWithBool:a2];
    v10 = [NSNumber numberWithBool:a3];
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudDataSyncManager: startSyncToCKWithCompletion entityName: %{public}@, attachedState: %{public}@ reachable: %{public}@", &v14, 0x20u);
  }

  if (a2 && a3 && ([*(a1 + 32) delegate], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [*(a1 + 32) delegate];
    [v12 syncManager:*(a1 + 32) startSyncToCKWithCompletion:*(a1 + 40)];
  }

  else
  {
    v13 = objc_retainBlock(*(a1 + 40));
    v12 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_1000537BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v106 = a2;
  v110 = a3;
  v111 = a4;
  v116 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v109 = [WeakRetained delegate];
  if (!WeakRetained)
  {
    v10 = 0;
    v108 = 0;
    v11 = 0;
    v12 = v116;
    v13 = *(v116 + 72);
LABEL_44:
    [WeakRetained _leaveDispatchGroup:*(v12 + 32) times:v13 - v10];
    goto LABEL_45;
  }

  if (!v111)
  {
LABEL_5:
    dispatch_group_enter(*(a1 + 32));
    v9 = [WeakRetained syncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054B08;
    block[3] = &unk_10023F938;
    block[4] = WeakRetained;
    v158 = *(a1 + 32);
    dispatch_async(v9, block);

    goto LABEL_8;
  }

  v7 = [v111 domain];
  if ([v7 isEqualToString:CKErrorDomain])
  {
    v8 = [v111 code];

    if (v8 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_8:
  v115 = +[NSMutableArray array];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v14 = v106;
  v15 = [v14 countByEnumeratingWithState:&v153 objects:v168 count:16];
  v16 = v15;
  if (v15)
  {
    v17 = *v154;
    do
    {
      v18 = 0;
      do
      {
        if (*v154 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v153 + 1) + 8 * v18);
        v20 = sub_100002660(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v19 encryptedValuesByKey];
          v22 = [v21 objectForKeyedSubscript:@"localRecordIDEncrypted"];
          *buf = 138412546;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successful save of CKRecord id=%@ %@", buf, 0x16u);
        }

        v23 = *(a1 + 40);
        v24 = [v19 recordID];
        v25 = [v23 objectForKeyedSubscript:v24];

        [v25 setSystemFields:v19];
        [v115 addObject:v25];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v15 = [v14 countByEnumeratingWithState:&v153 objects:v168 count:16];
      v16 = v15;
    }

    while (v15);
  }

  v26 = [v115 count];
  v27 = 0;
  if (v26)
  {
    v28 = v109;
    if (!v109)
    {
      goto LABEL_21;
    }

    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_100054B48;
    v150[3] = &unk_1002413A8;
    v150[4] = WeakRetained;
    v151 = *(a1 + 32);
    v152 = v26;
    [v109 syncManager:WeakRetained updateSyncGenerationFromCloudData:v115 completion:v150];

    v27 = v26;
  }

  v28 = v109;
LABEL_21:
  v105 = v27;
  v29 = [v110 count];
  v30 = [v110 count];
  if (v30 != 0 && v28 != 0)
  {
    v31 = sub_100002660(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v110;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Successful removal of CKRecord ids=%@", buf, 0xCu);
    }

    v147[0] = _NSConcreteStackBlock;
    v147[1] = 3221225472;
    v147[2] = sub_100054B58;
    v147[3] = &unk_1002413A8;
    v147[4] = WeakRetained;
    v148 = *(v116 + 32);
    v149 = v29;
    [v109 syncManager:WeakRetained removeCloudDataForIDs:v110 completion:v147];

    v105 = &v105[v29];
  }

  v32 = [v111 code];
  if (!v111)
  {
    v39 = sub_100002660(v32);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [*(v116 + 48) operationID];
      *buf = 134218498;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v29;
      *&buf[22] = 2114;
      v162 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Total success saving %lu records and deleting %lu records OperationID: %{public}@", buf, 0x20u);
    }

    goto LABEL_39;
  }

  v33 = v32;
  v34 = [v111 domain];
  v35 = [v34 isEqualToString:CKErrorDomain];

  if ((v35 & 1) == 0)
  {
    v41 = sub_100002660(v36);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1001C143C();
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
        v108 = 1;
        goto LABEL_40;
      case 5008:
LABEL_58:
        v108 = 0;
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
    v37 = sub_100002660(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1001C143C();
    }

    v38 = [WeakRetained syncQueue];
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 3221225472;
    v118[2] = sub_100054DE0;
    v118[3] = &unk_1002413F8;
    v118[4] = WeakRetained;
    v119 = v111;
    v120 = *(v116 + 40);
    objc_copyWeak(&v122, (v116 + 64));
    v121 = *(v116 + 56);
    dispatch_async(v38, v118);

    objc_destroyWeak(&v122);
    goto LABEL_39;
  }

  if (v33 != 2)
  {
LABEL_90:
    v41 = sub_100002660(v36);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1001C143C();
    }

LABEL_38:

LABEL_39:
    v11 = 0;
    v108 = 0;
    goto LABEL_40;
  }

  v49 = [v111 userInfo];
  v101 = [v49 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v51 = sub_100002660(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [v101 count];
    *buf = 134218496;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    v162 = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Partial failure saving %lu records and deleting %lu records.  Failed %lu.", buf, 0x20u);
  }

  if (v109)
  {
    v103 = objc_opt_new();
    v102 = objc_opt_new();
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v54 = v101;
    v55 = [v54 countByEnumeratingWithState:&v143 objects:v167 count:16];
    if (v55)
    {
      v108 = 0;
      v56 = *v144;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v144 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v58 = *(*(&v143 + 1) + 8 * i);
          v59 = +[NSNull null];
          v60 = v58 == v59;

          if (!v60)
          {
            v61 = [v54 objectForKeyedSubscript:v58];
            v62 = [v61 domain];
            v63 = [v62 isEqual:CKErrorDomain];

            if (v63)
            {
              v65 = [v61 userInfo];
              v66 = [v65 objectForKey:CKRecordChangedErrorServerRecordKey];

              if (v66)
              {
                v68 = [v61 code];
                v69 = v68 == 14;
                v70 = sub_100002660(v68);
                v71 = v70;
                if (v69)
                {
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    *&buf[4] = v58;
                    *&buf[12] = 2114;
                    *&buf[14] = v61;
                    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "CKErrorServerRecordChanged record %{public}@ perRecordError %{public}@", buf, 0x16u);
                  }

                  [v103 setObject:v66 forKeyedSubscript:v58];
                }

                else
                {
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *&buf[4] = v66;
                    *&buf[12] = 2114;
                    *&buf[14] = v111;
                    *&buf[22] = 2114;
                    v162 = v61;
                    _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Error for record %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                  }
                }
              }

              else
              {
                v72 = sub_100002660(v67);
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  *&buf[4] = v58;
                  *&buf[12] = 2114;
                  *&buf[14] = v111;
                  *&buf[22] = 2114;
                  v162 = v61;
                  _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Unable to retrieve serverRecord for recordID %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                }

                if ([v61 code] == 21 || objc_msgSend(v61, "code") == 14)
                {
                  [v102 addObject:v58];
                }

                else
                {
                  v108 |= [v61 code] == 112;
                }
              }
            }

            else
            {
              v66 = sub_100002660(v64);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v58;
                *&buf[12] = 2114;
                *&buf[14] = v61;
                _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Error modifying record:%@ error=%{public}@", buf, 0x16u);
              }
            }
          }
        }

        v55 = [v54 countByEnumeratingWithState:&v143 objects:v167 count:16];
      }

      while (v55);
    }

    else
    {
      v108 = 0;
    }

    v100 = [v103 count];
    if (v100)
    {
      v104 = +[NSMutableSet set];
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      obj = [v103 allValues];
      v114 = [obj countByEnumeratingWithState:&v139 objects:v166 count:16];
      if (v114)
      {
        v112 = *v140;
        do
        {
          for (j = 0; j != v114; j = j + 1)
          {
            if (*v140 != v112)
            {
              objc_enumerationMutation(obj);
            }

            v76 = *(*(&v139 + 1) + 8 * j);
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v77 = [v76 allKeys];
            v78 = [v77 countByEnumeratingWithState:&v135 objects:v165 count:16];
            if (v78)
            {
              v79 = *v136;
              while (2)
              {
                for (k = 0; k != v78; k = k + 1)
                {
                  if (*v136 != v79)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v81 = *(*(&v135 + 1) + 8 * k);
                  objc_opt_class();
                  v82 = [v76 objectForKeyedSubscript:v81];
                  v83 = BUDynamicCast();

                  if (v83)
                  {
                    v84 = [v76 recordID];

                    if (v84)
                    {
                      v86 = [v76 recordID];
                      [v104 addObject:v86];
                    }

                    else
                    {
                      v86 = sub_100002660(v85);
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v76;
                        _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Record ID is nil for record to fetch: %@", buf, 0xCu);
                      }
                    }

                    goto LABEL_117;
                  }
                }

                v78 = [v77 countByEnumeratingWithState:&v135 objects:v165 count:16];
                if (v78)
                {
                  continue;
                }

                break;
              }
            }

LABEL_117:
          }

          v114 = [obj countByEnumeratingWithState:&v139 objects:v166 count:16];
        }

        while (v114);
      }

      v87 = [v104 count];
      if (v87)
      {
        v88 = sub_100002660(v87);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = [v104 count];
          *buf = 134217984;
          *&buf[4] = v89;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "Fetching %lu records that had assets on conflict", buf, 0xCu);
        }

        v90 = [CKFetchRecordsOperation alloc];
        v91 = [v104 allObjects];
        v92 = [v90 initWithRecordIDs:v91];

        v93 = +[CKOperationConfiguration bds_defaultConfiguration];
        [v92 setConfiguration:v93];

        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_100054B68;
        v129[3] = &unk_1002413D0;
        v130 = v103;
        v131 = v109;
        v132 = WeakRetained;
        v133 = *(v116 + 32);
        v134 = v100;
        [v92 setFetchRecordsCompletionBlock:v129];
        v94 = [WeakRetained cloudKitController];
        v95 = [v94 privateCloudDatabaseController];

        v96 = [v95 database];
        [v96 addOperation:v92];
      }

      else
      {
        v97 = [v103 allValues];
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_100054DC0;
        v126[3] = &unk_1002413A8;
        v126[4] = WeakRetained;
        v127 = *(v116 + 32);
        v128 = v100;
        [v109 syncManager:WeakRetained resolveConflictsForRecords:v97 completion:v126];
      }

      v105 = &v105[v100];
    }

    v98 = [v102 count];
    if (v98)
    {
      v99 = *(v116 + 56);
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_100054DD0;
      v123[3] = &unk_1002413A8;
      v123[4] = WeakRetained;
      v124 = *(v116 + 32);
      v125 = v98;
      [v109 syncManager:v99 failedRecordIDs:v102 completion:v123];

      v105 = &v105[v98];
    }

    v74 = v103;
  }

  else
  {
    v73 = sub_100002660(v53);
    v74 = v73;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_1001C14AC();
      v108 = 0;
      v74 = v73;
    }

    else
    {
      v108 = 0;
    }
  }

  v11 = 0;
LABEL_40:

  v12 = v116;
  v13 = *(v116 + 72);
  v10 = v105;
  if (v13 >= v105)
  {
    goto LABEL_44;
  }

  v43 = sub_100002660(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_1001C14EC();
  }

LABEL_45:
  if ((v108 & 1) != 0 || v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v162 = sub_100054FA8;
    v163 = sub_100054FB8;
    v164 = +[NSMutableArray array];
    v44 = *(v116 + 40);
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_100054FC0;
    v117[3] = &unk_100241420;
    v117[4] = buf;
    [v44 enumerateKeysAndObjectsUsingBlock:v117];
    if ([*(*&buf[8] + 40) count])
    {
      v45 = [*(v116 + 56) cloudKitController];
      v46 = [v45 privateCloudDatabaseController];

      if (v108)
      {
        [v46 zonesUnreadableDueToMissingD2DEncryptionIdentity:*(*&buf[8] + 40) completion:0];
      }

      else if (v11)
      {
        v159 = NSLocalizedDescriptionKey;
        v160 = @"Unsynced keychain - cannot modify records";
        v47 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v48 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2006 userInfo:v47];

        [v46 zonesTemporarilyUnreadableWithError:v48 completion:0];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_100054B08(uint64_t a1)
{
  [*(a1 + 32) setBackOffInterval:0.0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100054B68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C152C();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully fetched %lu records that had assets on conflict", buf, 0xCu);
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
        for (i = 0; i != v10; i = i + 1)
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
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100054DB0;
  v22[3] = &unk_1002413A8;
  v19 = *(a1 + 56);
  v22[4] = *(a1 + 48);
  v20 = v19;
  v21 = *(a1 + 64);
  v23 = v20;
  v24 = v21;
  [v17 syncManager:v16 resolveConflictsForRecords:v18 completion:v22];
}

void sub_100054DE0(uint64_t a1)
{
  if (([*(a1 + 32) serverPushPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerPushPostponed:1];
    [*(a1 + 32) _updateRetryParametersFromModifyRecordsOperationError:*(a1 + 40) batchSize:{objc_msgSend(*(a1 + 48), "count")}];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) syncQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100054EEC;
    v5[3] = &unk_10023F9A8;
    objc_copyWeak(&v6, (a1 + 64));
    v5[4] = *(a1 + 56);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_100054EEC(uint64_t a1)
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

uint64_t sub_100054FA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100054FC0(uint64_t a1, void *a2)
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

void sub_100055460(uint64_t a1)
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

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

void sub_1000560B4(id a1)
{
  qword_100274A90 = objc_alloc_init(BDSNBPinningManager);

  _objc_release_x1();
}

void sub_10005652C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000DC90(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Parsed master playlist, using streamInf: %@", &v17, 0xCu);
  }

  if (v5)
  {
    v9 = [v5 averageBandwidthFallbackToPeak];
    v10 = sub_10000DC90([BLMediaItemUtils setBitrate:v9 forItem:*(a1 + 32)]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v17 = 134218242;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set bitrate to %lu on item %@", &v17, 0x16u);
    }

    v12 = objc_retainBlock(*(a1 + 40));
    v13 = v12;
    if (v12)
    {
      v14 = v12[2];
LABEL_12:
      v14();
    }
  }

  else
  {
    v15 = sub_10000DC90(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1618(v6, v15);
    }

    v16 = objc_retainBlock(*(a1 + 40));
    v13 = v16;
    if (v16)
    {
      v14 = v16[2];
      goto LABEL_12;
    }
  }
}

BOOL sub_1000573D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 collectionMemberID];
    v6 = [BCCollectionMember assetIDFromCollectionMemberID:v5];

    v7 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v6];
    if (v7)
    {
      dispatch_group_enter(*(a1 + 40));
      v9 = sub_10000DC90(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1001C16A4();
      }

      v10 = *(a1 + 48);
      v11 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
      [v10 addObject:v11];

      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100057664;
      v19[3] = &unk_10023F6F8;
      v20 = *(a1 + 40);
      [v12 _prepareMediaItemForPinningIfNeeded:v7 parentProgress:v13 completion:v19];
      v4 = 1;
      v14 = v20;
    }

    else
    {
      v14 = [*(a1 + 56) _jaliscoAudiobookWithAssetId:v6];
      v4 = v14 != 0;
      v15 = sub_10000DC90(v14);
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_1001C170C();
        }

        v17 = *(a1 + 48);
        v16 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
        [v17 addObject:v16];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "found wantToRead member with assetID %@ that has no MediaItem or Jalisco item.", buf, 0xCu);
      }
    }
  }

  return v4;
}

BOOL sub_100057674(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 assetID];
    v6 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v5];

    if (v6)
    {
      dispatch_group_enter(*(a1 + 40));
      v8 = sub_10000DC90(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001C1774(v3);
      }

      v9 = *(a1 + 48);
      v10 = [v3 assetID];
      v11 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
      [v9 addObject:v11];

      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100057934;
      v24[3] = &unk_10023F6F8;
      v25 = *(a1 + 40);
      [v12 _prepareMediaItemForPinningIfNeeded:v6 parentProgress:v13 completion:v24];
      v4 = 1;
      v14 = v25;
    }

    else
    {
      v15 = *(a1 + 56);
      v16 = [v3 assetID];
      v14 = [v15 _jaliscoAudiobookWithAssetId:v16];

      v4 = v14 != 0;
      v18 = sub_10000DC90(v17);
      v19 = v18;
      if (v14)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_1001C17F8(v3);
        }

        v20 = *(a1 + 48);
        v19 = [v3 assetID];
        v21 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
        [v20 addObject:v21];
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v3 assetID];
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "found readingNow member with assetID %@ that has no MediaItem or Jalisco item.", buf, 0xCu);
      }
    }
  }

  return v4;
}

void sub_100057944(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DC90(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C187C(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated bitrate on pinned item: %@", &v13, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100057A20(uint64_t a1)
{
  v2 = 3 - [*(a1 + 32) count];
  if (v2 >= 1)
  {
    v3 = [NSProgress progressWithTotalUnitCount:1];
    [*(a1 + 40) addChild:v3 withPendingUnitCount:v2];
    [v3 setCompletedUnitCount:1];
  }

  v4 = [*(a1 + 48) count];
  v5 = 3 - v4;
  if (3 - v4 >= 1)
  {
    v6 = [NSProgress progressWithTotalUnitCount:1];
    [*(a1 + 56) addChild:v6 withPendingUnitCount:v5];
    [v6 setCompletedUnitCount:1];
  }

  if (*(a1 + 88) == 1)
  {
    v7 = sub_10000DC90(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      v9 = *(a1 + 32);
      *buf = 134218242;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "pinning %lu audiobooks to wantToRead list (%@)", buf, 0x16u);
    }

    v10 = [*(a1 + 32) copy];
    [*(a1 + 64) setWantToReadAudiobooks:v10];
  }

  if (*(a1 + 89) == 1)
  {
    v11 = sub_10000DC90(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) count];
      v13 = *(a1 + 48);
      *buf = 134218242;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "pinning %lu audiobooks to readingNow list (%@)", buf, 0x16u);
    }

    v14 = [*(a1 + 48) copy];
    [*(a1 + 64) setReadingNowAudiobooks:v14];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = *(a1 + 72);
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      v19 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * v19);
        v21 = sub_10000DC90(v16);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v20 stringValue];
          *buf = 138412290;
          v32 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "unpinning assetID: %@", buf, 0xCu);
        }

        v16 = [*(a1 + 64) unpinAudiobook:v20];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v17 = v16;
    }

    while (v16);
  }

  v23 = [*(a1 + 64) readingNowAudiobooks];
  v24 = objc_retainBlock(*(a1 + 80));
  v25 = v24;
  if (v24)
  {
    (*(v24 + 2))(v24, 0);
  }
}

uint64_t sub_100057F18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100057F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 assetID];
  v5 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v4];

  if (v5)
  {
    v7 = [v3 assetID];
    v9 = *(a1 + 32);
    v8 = a1 + 32;
    v10 = *(v9 + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v7;

    v13 = sub_10000DC90(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C18EC(v8, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    v13 = sub_10000DC90(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v20 = [v3 assetID];
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "found readingNow member with assetID %@ that has no MediaItem.", &v22, 0xCu);
    }
  }

  return v5 != 0;
}

void sub_100058084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_10000DC90(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "returning mostRecentAudiobook with assetID: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000582E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DC90(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1964(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated bitrate for item with adadmID: %@", &v15, 0xCu);
  }

  v13 = objc_retainBlock(*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v3);
  }
}

void sub_100058480(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v5 = v3;
    v4 = [NSNumber numberWithBool:a2];
    v5[2](v5, v4, 0);

    v3 = v5;
  }
}

void sub_10005856C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_100058588(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_100058A3C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002660(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C19D4(v6, v7);
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) zoneName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Change Token Controller successfully transitioned to a new cloud container for zone: %@", &v9, 0xCu);
    }
  }

LABEL_5:
}

void sub_100058DC8(uint64_t a1)
{
  v2 = sub_10000DC08(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - zoneNeedsUpdate serverSaltVersionIdentifier:(%@)", buf, 0x16u);
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
      v14 = sub_10000DC08(v12);
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
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@  Comparing local(%@) to server(%@).Need update:%{BOOL}d", buf, 0x26u);
      }

      v17 = objc_retainBlock(*(a1 + 56));
      v18 = v17;
      if (v17)
      {
        (*(v17 + 2))(v17, v13, 0);
      }

      goto LABEL_18;
    }

    v21 = sub_10000DC08(v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1A4C();
    }

    v10 = objc_retainBlock(*(a1 + 56));
    if (v10)
    {
      v11 = [NSError errorWithDomain:@"BDSErrorDomain" code:1006 userInfo:0];
      (v10)[2](v10, 1, v11);
      goto LABEL_18;
    }
  }

  else
  {
    v19 = sub_10000DC08(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) zoneName];
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - no local identifier saved", buf, 0xCu);
    }

    v10 = objc_retainBlock(*(a1 + 56));
    if (v10)
    {
      v11 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v10)[2](v10, 0, v11);
LABEL_18:
    }
  }
}

void sub_10005921C(uint64_t a1)
{
  v2 = sub_10000DC08(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v34 = v3;
    v35 = 2112;
    *v36 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier serverSaltVersionIdentifier:(%@)", buf, 0x16u);
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

          v23 = sub_10000DC08(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 32) zoneName];
            *buf = 138412802;
            v34 = v24;
            v35 = 1024;
            *v36 = v20;
            *&v36[4] = 2112;
            *&v36[6] = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier SAVE success %{BOOL}d error:(%@)", buf, 0x1Cu);
          }

          if (v20)
          {
            goto LABEL_25;
          }

          v26 = sub_10000DC08(v25);
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
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier Error saving saltVersionIdentifier:(%@) Error:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          v26 = sub_10000DC08(v18);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_1001C1AF4();
          }

          v21 = v8;
        }

LABEL_25:
        v8 = v21;
        goto LABEL_26;
      }

      v15 = sub_10000DC08(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) zoneName];
        v17 = *(a1 + 40);
        *buf = 138412546;
        v34 = v16;
        v35 = 2112;
        *v36 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier NEW record %@", buf, 0x16u);
      }

      v9 = [[BCSaltVersionIdentifier alloc] initIntoManagedObjectContext:*(a1 + 48)];
    }

    v11 = v9;
    goto LABEL_15;
  }

LABEL_26:
  v29 = objc_retainBlock(*(a1 + 56));
  v30 = v29;
  if (v29)
  {
    (*(v29 + 2))(v29, v8 == 0, v8);
  }
}

void sub_1000596EC(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BCServerChangeToken"];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v3 setResultType:1];
  v4 = *(a1 + 32);
  v19 = 0;
  v5 = [v4 executeRequest:v3 error:&v19];
  v6 = v19;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100002660(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1B98();
    }
  }

  if (v5)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    v17 = *(a1 + 32);
    v20[0] = NSInsertedObjectsKey;
    v18 = v2;
    v10 = +[NSSet set];
    v21[0] = v10;
    v20[1] = NSUpdatedObjectsKey;
    v11 = +[NSSet set];
    v21[1] = v11;
    v20[2] = NSDeletedObjectIDsKey;
    v12 = [v5 result];
    v13 = [NSSet setWithArray:v12];
    v21[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    [v9 postNotificationName:NSManagedObjectContextDidSaveNotification object:v17 userInfo:v14];

    v2 = v18;
  }

  v15 = objc_retainBlock(*(a1 + 48));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v5 != 0, v7);
  }
}

void sub_100059B6C(uint64_t a1)
{
  v2 = +[BULogUtilities shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v5 = sub_10000DB80(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) zoneName];
      v7 = *(a1 + 40);
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ storing server change token: %@\", buf, 0x16u);
    }
  }

  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BCServerChangeToken"];
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
    [NSEntityDescription insertNewObjectForEntityForName:@"BCServerChangeToken" inManagedObjectContext:*(a1 + 48)];
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
      v16 = sub_100002660(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001C1C28();
      }
    }
  }

  else
  {
    v14 = v11;
  }

  v17 = objc_retainBlock(*(a1 + 64));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17);
  }
}

void sub_100059EFC(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCServerChangeToken"];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v22 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v22];
  v5 = v22;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002660(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1CB8();
    }
  }

  v8 = [v4 count];
  if (v8)
  {
    v9 = [NSKeyedUnarchiver alloc];
    v10 = [v4 objectAtIndexedSubscript:0];
    v11 = [v10 valueForKey:@"serverChangeToken"];
    v21 = 0;
    v12 = [v9 initForReadingFromData:v11 error:&v21];
    v13 = v21;

    if (v13)
    {
      v15 = sub_100002660(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001C1D48(v13, v15);
      }

      v16 = 0;
    }

    else
    {
      v16 = [[CKServerChangeToken alloc] initWithCoder:v12];
      [v12 finishDecoding];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100002660(v8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [*(a1 + 40) zoneName];
    *buf = 138412546;
    v24 = v18;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - #recordChange zone: %@ returning server change token: %@", buf, 0x16u);
  }

  v19 = objc_retainBlock(*(a1 + 48));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v16);
  }
}

void sub_10005A258(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10005A878(id a1)
{
  qword_100274A98 = [[BCCloudAssetManager alloc] initService];

  _objc_release_x1();
}

void sub_10005B65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10005B68C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) currentSaltVersionIdentifier];

  return _objc_release_x1();
}

void sub_10005B7C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained wq_refreshSalt:*(a1 + 32)];
}

void sub_10005B908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100002660(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained currentSalt];
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = [WeakRetained isSaltRefreshInProgress];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager refreshSaltIfNeeded - currentSalt: %@, isSaltRefreshInProgress: %{BOOL}d", &v6, 0x12u);
  }

  v5 = [WeakRetained currentSalt];
  if (v5)
  {
  }

  else if (([WeakRetained isSaltRefreshInProgress] & 1) == 0)
  {
    [WeakRetained wq_refreshSalt:*(a1 + 32)];
  }
}

void sub_10005BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005BBE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = [NSException alloc];
    v11 = [NSString stringWithFormat:@"Nil weak self after fetch salt record"];
    v21 = NSUnderlyingErrorKey;
    v12 = v6;
    if (!v6)
    {
      v12 = +[NSNull null];
    }

    v22 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v10 initWithName:@"No Books Salt" reason:v11 userInfo:v13];
    v15 = v14;

    if (!v6)
    {
    }

    objc_exception_throw(v14);
  }

  v9 = [WeakRetained workQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005BEBC;
  v16[3] = &unk_1002416D8;
  v16[4] = v8;
  v17 = v6;
  v18 = v5;
  objc_copyWeak(&v20, (a1 + 40));
  v19 = *(a1 + 32);
  dispatch_async(v9, v16);

  objc_destroyWeak(&v20);
}

void sub_10005BEBC(id *a1)
{
  v2 = [a1[4] setIsSaltRefreshInProgress:0];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10005B674;
  v37 = sub_10005B684;
  v38 = 0;
  v3 = a1 + 5;
  if (a1[5] || (v2 = a1[6]) == 0)
  {
    v4 = sub_100002660(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1E3C(a1 + 5, a1, v4);
    }

    memset(bytes, 0, sizeof(bytes));
    if (SecRandomCopyBytes(kSecRandomDefault, 0x80uLL, bytes))
    {
      v20 = [NSException alloc];
      v21 = [NSString stringWithFormat:@"Unable to generate random salt"];
      v39 = NSUnderlyingErrorKey;
      v22 = *v3;
      if (*v3)
      {
        v23 = *v3;
      }

      else
      {
        v23 = +[NSNull null];
      }

      v40 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v25 = [v20 initWithName:@"No Books Record Salt" reason:v21 userInfo:v24];
      v26 = v25;

      if (!v22)
      {
      }

      objc_exception_throw(v25);
    }

    v5 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
    v6 = [[CKRecord alloc] initWithRecordType:@"recordIDSalt" recordID:v5];
    v7 = [NSData dataWithBytes:bytes length:128];
    v8 = [v6 encryptedValuesByKey];
    [v8 setObject:v7 forKeyedSubscript:@"saltEncrypted"];

    v10 = sub_10000DC08(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BDSSyncEngineSaltManager: Will save record salt", buf, 2u);
    }

    v11 = [a1[4] database];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005C390;
    v27[3] = &unk_1002416B0;
    objc_copyWeak(&v31, a1 + 8);
    v30 = &v33;
    v12 = v7;
    v28 = v12;
    v29 = a1[7];
    [v11 saveRecord:v6 completionHandler:v27];

    objc_destroyWeak(&v31);
  }

  else
  {
    v13 = [v2 encryptedValuesByKey];
    v14 = [v13 objectForKeyedSubscript:@"saltEncrypted"];

    if (!v14)
    {
      v14 = [a1[6] objectForKeyedSubscript:@"salt"];
    }

    [a1[4] setCurrentSalt:v14];
    v15 = [a1[6] recordChangeTag];
    v16 = v34[5];
    v34[5] = v15;

    v17 = sub_10000DC08([a1[4] setCurrentSaltVersionIdentifier:v34[5]]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v34[5];
      LODWORD(bytes[0]) = 138412546;
      *(bytes + 4) = v14;
      WORD6(bytes[0]) = 2112;
      *(bytes + 14) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully read existing record salt salt:(%@) changeTag:(%@). Calling completion", bytes, 0x16u);
    }

    v19 = [a1[4] observer];
    [v19 saltManager:a1[4] updatedSaltWithVersion:v34[5]];
  }

  _Block_object_dispose(&v33, 8);
}

void sub_10005C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005C390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v39 = [NSException alloc];
    v40 = [NSString stringWithFormat:@"Nil weak self after save record"];
    v45 = NSUnderlyingErrorKey;
    v41 = v6;
    if (!v6)
    {
      v41 = +[NSNull null];
    }

    v46 = v41;
    v42 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v43 = [v39 initWithName:@"No Books Record Salt" reason:v40 userInfo:v42];
    v44 = v43;

    if (!v6)
    {
    }

    objc_exception_throw(v43);
  }

  v8 = WeakRetained;
  v9 = sub_10000DC08(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BDSSyncEngineSaltManager: Saving record salt....", buf, 2u);
  }

  v10 = [v6 domain];
  if ([v10 isEqualToString:CKErrorDomain])
  {
    v11 = [v6 code];

    if (v11 == 14)
    {
      v13 = [v6 userInfo];
      v14 = [v13 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      v15 = [v14 encryptedValuesByKey];
      v16 = [v15 objectForKeyedSubscript:@"saltEncrypted"];

      if (v14)
      {
        v18 = sub_10000DC08(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v14 recordChangeTag];
          *buf = 138412802;
          v48 = v16;
          v49 = 2112;
          v50 = v19;
          v51 = 2112;
          v52 = v6;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully established record salt from server record salt:(%@) changeTag:(%@) error:(%@)", buf, 0x20u);
        }

        [v8 setCurrentSalt:v16];
        v20 = [v14 recordChangeTag];
        v21 = *(*(a1 + 48) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        [v8 setCurrentSaltVersionIdentifier:*(*(*(a1 + 48) + 8) + 40)];
        v6 = 0;
      }

LABEL_15:
      goto LABEL_19;
    }
  }

  else
  {
  }

  v23 = sub_10000DC08(v12);
  v14 = v23;
  if (v6)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1ECC();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = [v5 recordChangeTag];
    *buf = 138412546;
    v48 = v24;
    v49 = 2112;
    v50 = v25;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully established record salt for NO ERROR salt:(%@) changeTag:(%@)", buf, 0x16u);
  }

  v26 = [v5 encryptedValuesByKey];
  v27 = [v26 objectForKeyedSubscript:@"saltEncrypted"];
  [v8 setCurrentSalt:v27];

  v28 = [v5 recordChangeTag];
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  [v8 setCurrentSaltVersionIdentifier:*(*(*(a1 + 48) + 8) + 40)];
  v6 = 0;
LABEL_19:
  v31 = [v8 currentSalt];

  v33 = sub_10000DC08(v32);
  v34 = v33;
  if (v6 || !v31)
  {
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1F34();
    }

    v38 = objc_retainBlock(*(a1 + 40));
    v37 = v38;
    if (v38)
    {
      (*(v38 + 2))(v38, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v8 currentSalt];
      v36 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v48 = v35;
      v49 = 2112;
      v50 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: *** Got record salt:(%@) changeTag:(%@)", buf, 0x16u);
    }

    v37 = [v8 observer];
    [v37 saltManager:v8 updatedSaltWithVersion:*(*(*(a1 + 48) + 8) + 40)];
  }
}

void sub_10005C968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained wq_invalidateSalt];
}

void sub_10005CAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CB04(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSalt];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10005CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CCC0(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) _wq_saltedAndHashedIDFromLocalID:?];
    if (v3)
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        v4 = @"-";
      }

      v5 = [NSString stringWithFormat:@"%@.%@", v4, v3];
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    if (v3)
    {
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = sub_100002660(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1F9C(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void sub_10005D9D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10005DB4C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10005E2B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10005E464(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10005E728(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  if (v7)
  {
    v8 = [v6 value];
    v7[2](v7, v8, v9);
  }
}

void sub_10005E88C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v7 = [v8 value];
    v6[2](v6, v7, v5);
  }
}

void sub_10005EA0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    [(BCMutableSecureUserDatum *)v3 setValue:*(a1 + 40)];
  }

  else
  {
    v4 = [[BCMutableSecureUserDatum alloc] initWithKey:*(a1 + 32)];
    [(BCMutableSecureUserDatum *)v4 setValue:*(a1 + 40)];
    [(BCMutableCloudData *)v4 setModificationDate:0];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005EAEC;
  v6[3] = &unk_1002417E8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 setUserDatum:v4 completion:v6];
}

void sub_10005EAEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void sub_10005F3DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = +[BULogUtilities shared];
  v8 = [v7 verboseLoggingEnabled];

  if (v8)
  {
    v10 = sub_10000DB80(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (a2)
      {
        v11 = @"YES";
      }

      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudAssetDetailManager resolveConflictsForRecords completion success:%@\", &v14, 0xCu);
    }
  }

  v12 = objc_retainBlock(*(a1 + 32));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, a2, v6);
  }
}

void sub_10005F608(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_100060010(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = BUDynamicCast();

  v9 = sub_100002660(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed fetch of assetDetailForAssetID on assetID:%@ with error:%@", &v13, 0x16u);
  }

  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v7, v5);
  }
}

void sub_1000602FC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10006058C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, v6);
  }
}

id sub_1000607C0(id a1, BCCloudData *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = BUDynamicCast();

  if (v3)
  {
    v4 = [v3 assetID];
    v8[0] = v4;
    v5 = [v3 dateFinished];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000608B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v19 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = BUDynamicCast();

        objc_opt_class();
        v13 = [v10 objectAtIndexedSubscript:1];
        v14 = BUDynamicCast();

        if (v12)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v5 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = objc_retainBlock(*(a1 + 32));
  if (v16)
  {
    v17 = [v5 copy];
    v16[2](v16, v17, v19);
  }
}

uint64_t sub_100060C68(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();

  v5 = *(a1 + 32);
  v6 = [v4 dateFinished];
  v7 = [v5 component:4 fromDate:v6];

  v8 = [NSNumber numberWithInteger:v7];
  v9 = [NSString stringWithFormat:@"%@", v8];

  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue] + 1);
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];

  return 0;
}

void sub_100060D8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 40));
  if (v4)
  {
    v5 = [*(a1 + 32) copy];
    v4[2](v4, v5, v6);
  }
}

void sub_100062820(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_100062C20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062CD0;
  v4[3] = &unk_100241948;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 q_fetchNotificationNamesAfterToken:v3 withCompletion:v4];
}

void sub_100062CD0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7, a3);
  }

  [*(a1 + 32) endTransaction];
}

void sub_100062EC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062F74;
  v4[3] = &unk_100241998;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 q_enqueueNotificationName:v3 withCompletion:v4];
}

id sub_100062F74(uint64_t a1, uint64_t a2)
{
  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, a2);
  }

  v6 = *(a1 + 32);

  return [v6 endTransaction];
}

int64_t sub_1000631E4(id a1, BDSServiceNotificationInfo *a2, BDSServiceNotificationInfo *a3)
{
  v4 = a3;
  v5 = [(BDSServiceNotificationInfo *)a2 changeToken];
  v6 = [(BDSServiceNotificationInfo *)v4 changeToken];

  return v5 <= v6;
}

void sub_100063E94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_100064008(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_100064740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100064768(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100064780(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  v3 = [*(a1 + 32) allKeys];
  v4 = [NSPredicate predicateWithFormat:@"assetID IN %@ and readingNowDetail == nil", v3];
  [v2 setPredicate:v4];

  v24 = 0;
  v5 = [v2 execute:&v24];
  v6 = v24;
  v7 = v6;
  if (v5)
  {
    v19 = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v13 assetID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v10);
    }

    v17 = sub_100002660(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 count];
      *buf = 134217984;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found %lu WidgetInfos with missing relationships while setting ReadingNowDetails", buf, 0xCu);
    }

    v7 = v19;
  }

  else
  {
    v17 = sub_100002660(v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2758(v7, v17);
    }
  }
}

uint64_t sub_1000649C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [v5 assetID];
  if (v6)
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v6];
    v8 = [v7 setReadingNowDetail:v5];
    if (v7)
    {
      v9 = sub_100002660(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated WidgetInfo relationship while creating ReadingNowDetail.", v11, 2u);
      }
    }
  }

  return 0;
}

void sub_100065050(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  if (a2)
  {
    [NSSet setWithArray:a2];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  (*(v6 + 16))(v6);
}

void sub_100065400(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 count];
  v9 = sub_100002660(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13[0] = 67109634;
    v13[1] = v8 != 0;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "needsReadingNowAssetTypePopulation:(%{BOOL}d) predicate %@ results %@", v13, 0x1Cu);
  }

  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v8 != 0, v7);
  }
}

id sub_100067A48(uint64_t a1)
{
  v2 = sub_1000023E8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering event handlers", v4, 2u);
  }

  return [*(a1 + 32) _registerNotificationEventHandler];
}

void sub_100067B54(id a1, OS_xpc_object *a2)
{
  type = a2;
  v3 = type;
  if (type && (type = xpc_get_type(type), type == &_xpc_type_dictionary))
  {
    string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
    v6 = sub_1000023E8(string);
    v4 = v6;
    if (string)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [NSString stringWithUTF8String:string];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Posting notification: %@", &v9, 0xCu);
      }

      v4 = +[NSNotificationCenter defaultCenter];
      v8 = [NSString stringWithUTF8String:string];
      [v4 postNotificationName:v8 object:0];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2B2C(v4);
    }
  }

  else
  {
    v4 = sub_1000023E8(type);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2B70(v4);
    }
  }
}

void sub_1000689EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_100068B60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_1000693BC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10006A64C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DE28(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Need to create these details:%@", &v7, 0xCu);
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void sub_10006A7C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DE28(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got existing:%@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) readingNowDetailManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A8F8;
  v6[3] = &unk_100241860;
  v7 = *(a1 + 40);
  [v5 getRecentBooksExcludingAssetIDs:v3 completion:v6];
}

void sub_10006A8F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_10000DE28(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Need to create these details:%@", &v13, 0xCu);
  }

  v11 = objc_retainBlock(*(a1 + 32));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v7, v8, v9);
  }
}

void sub_10006AABC(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  [v2 setResultType:2];
  v15 = @"assetID";
  v3 = [NSArray arrayWithObjects:&v15 count:1];
  [v2 setPropertiesToFetch:v3];

  v4 = [*(a1 + 32) context];
  v14 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v14];
  v6 = v14;

  if (v5)
  {
    v8 = [v5 valueForKey:@"assetID"];
    v9 = [NSSet setWithArray:v8];

    v10 = objc_retainBlock(*(a1 + 40));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }

  else
  {
    v12 = sub_10000DE28(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2DDC();
    }

    v13 = objc_retainBlock(*(a1 + 40));
    v9 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void sub_10006AD30(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"readingNowDetail.lastEngagedDate" ascending:0];
  v33[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:1];
  v33[1] = v4;
  v5 = [NSArray arrayWithObjects:v33 count:2];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:*(a1 + 48)];
  v6 = [*(a1 + 32) context];
  v29 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v29];
  v8 = v29;

  v9 = objc_alloc_init(NSMutableArray);
  v10 = v9;
  if (v7)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v25 + 1) + 8 * i) getBookWidgetInfoObject];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = sub_10000DE28(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 count];
      *buf = 134217984;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WidgetInfoManager getInfosWithLimit success with %lu items", buf, 0xCu);
    }

    v20 = objc_retainBlock(*(a1 + 40));
    v21 = v20;
    if (v20)
    {
      v22 = v20[2];
LABEL_17:
      v22();
    }
  }

  else
  {
    v23 = sub_10000DE28(v9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2E44();
    }

    v24 = objc_retainBlock(*(a1 + 40));
    v21 = v24;
    if (v24)
    {
      v22 = v24[2];
      goto LABEL_17;
    }
  }
}

void sub_10006B0E8(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"cloudAssetType", *(a1 + 32)];
  [v2 setPredicate:v3];

  v16 = @"assetID";
  v4 = [NSArray arrayWithObjects:&v16 count:1];
  [v2 setPropertiesToFetch:v4];

  v5 = [*(a1 + 40) context];
  v15 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v15];
  v7 = v15;

  if (v6)
  {
    v9 = [v6 valueForKey:@"assetID"];
    v10 = [NSSet setWithArray:v9];

    v11 = objc_retainBlock(*(a1 + 48));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v10);
    }
  }

  else
  {
    v13 = sub_10000DE28(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2EAC();
    }

    v14 = objc_retainBlock(*(a1 + 48));
    v10 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }
  }
}

void sub_10006B430(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DE28(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C2F18();
  }

  [*(a1 + 32) setBookWidgetInfoOnly:v3 completion:*(a1 + 40)];
}

void sub_10006B650(uint64_t a1)
{
  v1 = [*(a1 + 32) valueForKey:@"assetID"];
  v2 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", v1];
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BCReadingNowDetail"];
  v49 = v2;
  [v3 setPredicate:v2];
  v72 = @"assetID";
  v4 = [NSArray arrayWithObjects:&v72 count:1];
  [v3 setPropertiesToFetch:v4];

  v65 = 0;
  v48 = v3;
  v5 = [v3 execute:&v65];
  v51 = v65;
  v6 = sub_10000DE28(v51);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C2F8C();
  }

  v7 = +[NSMutableDictionary dictionary];
  if ([v5 count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v62;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v62 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v61 + 1) + 8 * i);
          v14 = [v13 assetID];
          [v7 setObject:v13 forKeyedSubscript:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v10);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_16;
    }

    v8 = sub_10000DE28(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3000();
    }
  }

LABEL_16:
  v47 = v5;
  v50 = v1;
  v15 = [*(a1 + 40) ubiquityManager];
  v16 = [v15 isEnabled];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = *(a1 + 32);
  v17 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v58;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v58 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v57 + 1) + 8 * j);
        v22 = [v21 cloudAssetType];
        v23 = [v22 isEqualToString:@"SideloadedUbiquity"];

        if (v16 & 1 | ((v23 & 1) == 0))
        {
          v25 = [v21 insertMatchingManagedObjectIntoContext:*(a1 + 48)];
          v26 = [v21 assetID];
          v27 = [v7 objectForKeyedSubscript:v26];
          [v25 setReadingNowDetail:v27];

          v28 = [v25 readingNowDetail];

          v30 = sub_10000DE28(v29);
          v31 = v30;
          if (v28)
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v52 = [v25 assetID];
              v53 = [v7 objectForKeyedSubscript:v26];
              v32 = [v53 identifier];
              *buf = 138412546;
              v67 = v52;
              v68 = 2112;
              v69 = v32;
              v33 = v32;
              _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "BDSBookWidgetInfoMO %@ linked to %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v34 = [v25 assetID];
            *buf = 138412290;
            v67 = v34;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "BDSBookWidgetInfoMO %@ has NO readingNowDetail", buf, 0xCu);
          }
        }

        else
        {
          v25 = sub_10000DE28(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = v21;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Ignoring donated info since Ubiquity is turned off: %@", buf, 0xCu);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v18);
  }

  v35 = *(a1 + 48);
  v56 = v51;
  v36 = [v35 save:&v56];
  v37 = v56;

  if (v36)
  {

    v40 = sub_10000DE28(v39);
    v42 = v49;
    v41 = v50;
    v43 = v48;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [*(a1 + 32) count];
      *buf = 134217984;
      v67 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Creation/Update of %lu WidgetInfos succeeded.", buf, 0xCu);
    }

    v37 = 0;
  }

  else
  {
    v40 = sub_10000DE28(v38);
    v42 = v49;
    v41 = v50;
    v43 = v48;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3068();
    }
  }

  v45 = objc_retainBlock(*(a1 + 56));
  v46 = v45;
  if (v45)
  {
    (*(v45 + 2))(v45, v37);
  }
}