uint64_t sub_100001464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001474(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000014A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001AD0(uint64_t a1)
{
  result = [*(a1 + 32) _isDatabaseOpen];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _databaseWillBeOpened];
    v3 = *(a1 + 32);
    v4 = v3[1];

    return [v3 _openDatabase:v4 deleteDatabaseFileOnError:1];
  }

  return result;
}

uint64_t sub_100001B78(uint64_t a1, uint64_t a2)
{
  if (qword_1001540D0 != -1)
  {
    sub_1000D263C();
  }

  return qword_1001540C8;
}

id sub_100001C30(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002960;
  v3[3] = &unk_100134E60;
  v3[4] = *(a1 + 32);
  return [a2 fetchDevicesWithCompletionHandler:v3];
}

id sub_100001E04(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [[WBSSQLiteStatement alloc] initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 execute];
    [v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:objc_msgSend(v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

id sub_100002034(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[WBSSQLiteStatement alloc] initWithDatabase:v3 query:v4];
  v6 = [v5 fetch];

  return v6;
}

void sub_100002960(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002A48;
  v14[3] = &unk_1001311E8;
  v14[4] = v10;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 _handleManateeErrorIfNeeded:v11 completionHandler:v14];
}

void sub_100002A48(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  v7 = *(a1 + 32);
  v2 = *(v7 + 8);
  block[1] = 3221225472;
  block[2] = sub_100002B8C;
  block[3] = &unk_1001311E8;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void sub_100002B8C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 96);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v10 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100131408;
  block[4] = v7;
  dispatch_async(v8, block);
}

void sub_100002CE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = [*(*(a1 + 32) + 104) count];
  if (v4)
  {
    v6 = v4;
    v7 = sub_100001B78(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing a fetch to fulfill request from %ld outstanding callers", &v14, 0xCu);
    }

    v8 = [*(*(a1 + 32) + 104) copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 96);
    *(v9 + 96) = v8;

    v11 = +[NSMutableArray array];
    v12 = *(a1 + 32);
    v13 = *(v12 + 104);
    *(v12 + 104) = v11;

    [*(a1 + 32) _fetchDevices];
  }

  xpc_transaction_end();
}

id sub_100002DF8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 userInfo];
    v3 = [v2 safari_numberForKey:CKErrorRetryAfterKey];

    if (v3)
    {
      v9 = CKErrorRetryAfterKey;
      v10 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else
    {
      v4 = 0;
    }

    v6 = [v1 domain];
    v7 = [v1 code];

    v5 = [NSError errorWithDomain:v6 code:v7 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100002FA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) createOperationGroupWithName:@"Cloud Settings Fetch Setting Changes Immediately" useLargerExpectedSendSize:0];
  [*(a1 + 32) _attemptCloudSettingsSyncForTrigger:1 inOperationGroup:v2];
}

uint64_t sub_10000300C(uint64_t a1, uint64_t a2)
{
  if (qword_1001540E0 != -1)
  {
    sub_1000D2650();
  }

  return qword_1001540D8;
}

const __CFString *sub_100003044(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"User Did Update Database";
  }

  else
  {
    return off_100132188[a1 - 1];
  }
}

void sub_10000306C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

const __CFString *stringFromCloudSettingsSyncResult(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Success";
  }

  else
  {
    return off_100133BB0[a1 - 1];
  }
}

uint64_t start(WTF *a1)
{
  WTF::initializeMainThread(a1);
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(SafariBookmarksSyncAgent);
  v3 = qword_100153E28;
  qword_100153E28 = v2;

  objc_autoreleasePoolPop(v1);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}

id sub_100003294(uint64_t a1)
{
  if (qword_100153E38 != -1)
  {
    sub_1000080A0();
  }

  v2 = qword_100153E30;

  return v2;
}

void sub_100003624(uint64_t a1)
{
  v2 = [CKFetchSubscriptionsOperation alloc];
  v11 = @"CloudExtensionZoneSubscription";
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v4 = [v2 initWithSubscriptionIDs:v3];

  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10000374C;
  v8 = &unk_100130E28;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v4 setFetchSubscriptionCompletionBlock:&v5];
  [*(a1 + 32) _scheduleOperation:v4 inOperationGroup:*(a1 + 40) operationQueue:{*(*(a1 + 32) + 24), v5, v6, v7, v8, v9}];
}

void sub_10000374C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:@"CloudExtensionZoneSubscription"];
  v8 = sub_1000D23FC(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000080E8(v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched CloudExtensions zone subscription", buf, 2u);
  }

  v10 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003894;
  block[3] = &unk_100130E00;
  v11 = *(a1 + 40);
  v16 = v6;
  v17 = v11;
  v15 = v5;
  v12 = v6;
  v13 = v5;
  dispatch_async(v10, block);
}

void sub_100003894(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CloudExtensionZoneSubscription"];
  if ([*(a1 + 40) safari_isCloudKitNonExistentRecordError])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  (*(v2 + 16))(v2, v4, v3);
}

void sub_100003A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003A70(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v10 = sub_1000D23FC(WeakRetained, v9);
    v11 = v10;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription failed because of missing zone, attempting to create zone", buf, 2u);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100003BF4;
      v13[3] = &unk_100130E78;
      v12 = a1[4];
      v15 = a1[5];
      v13[4] = WeakRetained;
      v14 = a1[4];
      [WeakRetained createCloudExtensionsRecordZoneInOperationGroup:v12 completionHandler:v13];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100008178();
      }

      (*(a1[5] + 2))();
    }
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void sub_100003BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_1000D23FC(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000081AC();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription after creating zone", v7, 2u);
    }

    [*(a1 + 32) _saveRecordZoneSubscriptionInOperationGroup:*(a1 + 40) operationQueue:*(*(a1 + 32) + 24) completionHandler:*(a1 + 48)];
  }
}

void sub_100003E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003E88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v9 && *(a1 + 64) == 1 && (v11 = [v9 safari_isOrContainsCloudKitMissingZoneError], (v11 & 1) != 0))
  {
    v13 = sub_1000D23FC(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudExtensions zone before retrying save", buf, 2u);
    }

    v14 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000406C;
    v15[3] = &unk_100130EF0;
    objc_copyWeak(&v22, (a1 + 56));
    v21 = *(a1 + 48);
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = *(a1 + 40);
    v20 = *(a1 + 32);
    [WeakRetained createCloudExtensionsRecordZoneInOperationGroup:v14 completionHandler:v15];

    objc_destroyWeak(&v22);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000406C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = WeakRetained[5];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000041CC;
      v9[3] = &unk_100130EC8;
      v13 = *(a1 + 72);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      dispatch_async(v7, v9);
    }

    else
    {
      v8 = sub_1000D23FC(WeakRetained, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrying save after creating CloudExtensionsZone", buf, 2u);
      }

      [v6 saveCloudExtensionsRecordBatch:*(a1 + 56) createCloudExtensionsZoneIfMissing:0 inOperationGroup:*(a1 + 64) completionHandler:*(a1 + 72)];
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void sub_100004580(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
    [v5 addObject:v6];
  }

  [*(a1 + 40) removeObject:*(a1 + 48)];
  if (![*(a1 + 40) count])
  {
    v7 = [NSError safari_errorFromErrors:*(a1 + 32)];
    v9 = v7;
    if (v7)
    {
      v10 = sub_1000D23FC(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000081E0(v10);
      }
    }

    v11 = *(*(a1 + 56) + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000046BC;
    v14[3] = &unk_100130F40;
    v12 = *(a1 + 64);
    v15 = v9;
    v16 = v12;
    v13 = v9;
    dispatch_async(v11, v14);
  }
}

void sub_100004D28(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v7 = *(a1[4] + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004E14;
  v12[3] = &unk_100130FB8;
  v9 = a1[5];
  v8 = a1[6];
  v13 = v6;
  v16 = v8;
  v14 = v9;
  v15 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_100004E14(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) safari_isUnrecoverableCloudKitError];
  if ((v3 & 1) != 0 || (v3 = [*v2 safari_isOrContainsCloudKitMissingZoneError], v3))
  {
    v5 = sub_1000D23FC(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000843C(v2, v5);
    }

LABEL_5:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return;
  }

  v6 = [*v2 safari_isCloudKitBatchTooLargeError];
  if (v6)
  {
    v8 = sub_1000D23FC(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100008408();
    }

    goto LABEL_5;
  }

  v9 = *v2;
  if (!*v2)
  {
    goto LABEL_14;
  }

  if (*(a1 + 48))
  {
    v10 = [v9 domain];
    v11 = [v10 isEqualToString:CKErrorDomain];

    if ((v11 & 1) == 0)
    {
      v19 = sub_1000D23FC(v12, v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100008270(v2, v19);
      }

      goto LABEL_5;
    }

    v14 = [*v2 code];
    if (v14 == 22)
    {
LABEL_14:
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);

      [v16 addObject:v17];
      return;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v20 = sub_1000D23FC(v14, v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000082F8(v2, v20);
    }
  }

  else
  {
    v18 = sub_1000D23FC(v9, v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100008380(v2, v18);
    }
  }
}

void sub_100004FA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v10 = *(*(a1 + 32) + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100005158;
  v21[3] = &unk_100131058;
  v22 = v9;
  v23 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v24 = v11;
  v25 = v12;
  v13 = *(a1 + 80);
  v30 = *(a1 + 88);
  v26 = v7;
  v27 = v8;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = *(a1 + 72);
  *(&v16 + 1) = v13;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v28 = v17;
  v29 = v16;
  v18 = v8;
  v19 = v7;
  v20 = v9;
  objc_copyWeak(&v31, (a1 + 96));
  dispatch_async(v10, v21);
  objc_destroyWeak(&v31);
}

void sub_100005158(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) safari_isUnrecoverableCloudKitError];
  if ((v3 & 1) != 0 || (v3 = [*v2 safari_isOrContainsCloudKitMissingZoneError], v3))
  {
    v5 = sub_1000D23FC(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008560(v2, v5);
    }

    v6 = [*(a1 + 40) copy];
    v7 = [*(a1 + 48) copy];
    v8 = *(*(a1 + 56) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005824;
    block[3] = &unk_100130EC8;
    v81 = *(a1 + 104);
    v78 = v6;
    v79 = v7;
    v80 = *(a1 + 32);
    v9 = v7;
    v10 = v6;
    dispatch_async(v8, block);
    *(*(*(a1 + 112) + 8) + 24) = 1;

    goto LABEL_6;
  }

  if ([*(a1 + 64) count])
  {
    [*(a1 + 40) addObjectsFromArray:*(a1 + 64)];
  }

  v11 = [*(a1 + 72) count];
  if (v11)
  {
    v11 = [*(a1 + 48) addObjectsFromArray:*(a1 + 72)];
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v13 = sub_1000D23FC(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000852C();
    }

    v14 = [*(a1 + 40) copy];
    v15 = [*(a1 + 48) copy];
    v16 = *(*(a1 + 56) + 40);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_10000583C;
    v72[3] = &unk_100130EC8;
    v76 = *(a1 + 104);
    v73 = v14;
    v74 = v15;
    v75 = *(a1 + 32);
    v17 = v15;
    v10 = v14;
    dispatch_async(v16, v72);

    v18 = v76;
LABEL_15:

LABEL_6:
    return;
  }

  if ([*v2 safari_isCloudKitBatchTooLargeError])
  {
    v19 = [*(a1 + 80) count];
    if (v19 > 1)
    {
      v35 = v19;
      v36 = v19 >> 1;
      v10 = [*(a1 + 80) subarrayWithRange:{0, v19 >> 1}];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10000586C;
      v57[3] = &unk_100131008;
      v58 = *(a1 + 40);
      v37 = *(a1 + 48);
      v38 = *(a1 + 56);
      v59 = v37;
      v60 = v38;
      v64 = *(a1 + 104);
      v61 = *(a1 + 80);
      v65 = v36;
      v66 = v35;
      v62 = *(a1 + 88);
      v63 = *(a1 + 96);
      v39 = objc_retainBlock(v57);
      v41 = sub_1000D23FC(v39, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Batch record save operation completed but we need to re-batch", buf, 2u);
      }

      [*(a1 + 56) _saveCloudExtensionsRecordBatch:v10 previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) retryManager:*(a1 + 88) inOperationGroup:*(a1 + 96) completionHandler:v39];

      goto LABEL_6;
    }

    v21 = sub_1000D23FC(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000084F8();
    }

    v22 = [*(a1 + 40) copy];
    v23 = [*(a1 + 48) copy];
    v24 = *(*(a1 + 56) + 40);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100005854;
    v67[3] = &unk_100130EC8;
    v71 = *(a1 + 104);
    v68 = v22;
    v69 = v23;
    v70 = *(a1 + 32);
    v17 = v23;
    v10 = v22;
    dispatch_async(v24, v67);

    v18 = v71;
    goto LABEL_15;
  }

  v25 = *(a1 + 88);
  v26 = *(a1 + 32);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100005A1C;
  v47[3] = &unk_100131030;
  objc_copyWeak(&v55, (a1 + 120));
  v48 = *(a1 + 32);
  v49 = *(a1 + 40);
  v50 = *(a1 + 48);
  v54 = *(a1 + 104);
  v51 = *(a1 + 80);
  v52 = *(a1 + 88);
  v53 = *(a1 + 96);
  v27 = [v25 scheduleRetryIfNeededForError:v26 usingBlock:v47];
  if (v27 != 1)
  {
    if (v27 == 2)
    {
      v29 = sub_1000D23FC(2, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000084C4();
      }
    }

    v30 = [*(a1 + 40) copy];
    v31 = [*(a1 + 48) copy];
    v32 = *(*(a1 + 56) + 40);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100005B0C;
    v42[3] = &unk_100130EC8;
    v46 = *(a1 + 104);
    v43 = v30;
    v44 = v31;
    v45 = *(a1 + 32);
    v33 = v31;
    v34 = v30;
    dispatch_async(v32, v42);
  }

  objc_destroyWeak(&v55);
}

void sub_10000586C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_isCloudKitBatchTooLargeError];
  v7 = v6;
  v9 = sub_1000D23FC(v6, v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000085F0();
    }

    v11 = [*(a1 + 32) copy];
    v12 = [*(a1 + 40) copy];
    v13 = *(*(a1 + 48) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005A04;
    block[3] = &unk_100130EC8;
    v21 = *(a1 + 80);
    v18 = v11;
    v19 = v12;
    v20 = v5;
    v14 = v12;
    v15 = v11;
    dispatch_async(v13, block);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to re-batch record save", v16, 2u);
    }

    v15 = [*(a1 + 56) subarrayWithRange:{*(a1 + 88), *(a1 + 96) - *(a1 + 88)}];
    [*(a1 + 48) _saveCloudExtensionsRecordBatch:v15 previouslySavedRecords:*(a1 + 32) previouslyDeletedRecordIDs:*(a1 + 40) retryManager:*(a1 + 64) inOperationGroup:*(a1 + 72) completionHandler:*(a1 + 80)];
  }
}

void sub_100005A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v4 = sub_1000D23FC(WeakRetained, v3);
  v5 = v4;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to retry batch save request", v8, 2u);
    }

    [WeakRetained _saveCloudExtensionsRecordBatch:*(a1 + 56) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) retryManager:*(a1 + 64) inOperationGroup:*(a1 + 72) completionHandler:*(a1 + 80)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008624(a1, v5);
    }

    v6 = [*(a1 + 40) copy];
    v7 = [*(a1 + 48) copy];
    (*(*(a1 + 80) + 16))();
  }
}

void sub_100006090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 144));
  _Unwind_Resume(a1);
}

void sub_1000060CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_1000D23FC(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000086B4();
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000061A8;
  v9[3] = &unk_100130F40;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void sub_1000061BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_1000D23FC(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008728();
  }

  v9 = *(*(a1 + 32) + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000062AC;
  v12[3] = &unk_100130F40;
  v10 = *(a1 + 40);
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t sub_1000062C0(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100006470;
  v16[3] = &unk_100131120;
  objc_copyWeak(&v22, a1 + 10);
  v5 = v3;
  v17 = v5;
  v6 = a1[7];
  v7 = a1[4];
  v8 = a1[5];
  v20 = a1[8];
  v21 = a1[9];
  *&v9 = a1[6];
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v18 = v10;
  v19 = v9;
  v11 = [v4 scheduleRetryIfNeededForError:v5 usingBlock:v16];
  if (v11 == 1)
  {
    v14 = 1;
  }

  else
  {
    if (v11 == 2)
    {
      v13 = sub_1000D23FC(2, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000087AC();
      }
    }

    v14 = 0;
  }

  objc_destroyWeak(&v22);
  return v14;
}

void sub_100006470(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006604;
    block[3] = &unk_1001310F8;
    block[4] = WeakRetained;
    v9 = a1[5];
    v10 = a1[6];
    v12 = a1[9];
    v13 = a1[10];
    v11 = a1[7];
    v14 = a1[8];
    dispatch_async(v5, block);
  }

  else
  {
    v6 = sub_1000D23FC(0, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000087E0(a1, v6);
    }

    v7 = objc_retainBlock(a1[8]);
    objc_sync_enter(v7);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      (*(a1[8] + 2))();
    }

    objc_sync_exit(v7);
  }
}

void sub_10000661C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = [a6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v12 = *(*(a1 + 32) + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000674C;
  v18[3] = &unk_100131170;
  v19 = v11;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v23 = v13;
  v20 = v14;
  v24 = *(a1 + 48);
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  dispatch_async(v12, v18);
}

void sub_10000674C(uint64_t a1)
{
  v2 = a1 + 32;
  if (*(a1 + 32))
  {
    v3 = (*(*(a1 + 64) + 16))();
    if (v3)
    {
      return;
    }

    v5 = sub_1000D23FC(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008878(v2, v5);
    }

    v6 = *(*(a1 + 40) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006914;
    block[3] = &unk_100130F40;
    v7 = &v18;
    v18 = *(a1 + 72);
    v8 = &v17;
    v17 = *(a1 + 32);
    dispatch_async(v6, block);
  }

  else
  {
    v9 = sub_1000D23FC(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Fetch records from record zone operation completed for CloudExtensions record zone", buf, 2u);
    }

    v10 = *(*(a1 + 40) + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000069A0;
    v11[3] = &unk_100130E00;
    v7 = &v14;
    v14 = *(a1 + 72);
    v8 = &v12;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    dispatch_async(v10, v11);
  }
}

void sub_100006914(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_1000069A0(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_100006A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];

    v6 = (*(*(a1 + 40) + 16))();
    if ((v6 & 1) == 0)
    {
      v8 = sub_1000D23FC(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100008900(v8);
      }

      v9 = *(*(a1 + 32) + 40);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100006B44;
      v10[3] = &unk_100130F40;
      v12 = *(a1 + 48);
      v5 = v5;
      v11 = v5;
      dispatch_async(v9, v10);
    }
  }

  else
  {
    v5 = 0;
  }
}

void sub_100006B44(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

id sub_100006FB8(uint64_t a1)
{
  [*(a1 + 32) setDatabase:*(*(a1 + 40) + 8)];
  if (*(a1 + 48))
  {
    [*(a1 + 32) setGroup:?];
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v2 addOperation:v3];
}

void sub_100007164(id *a1)
{
  v2 = sub_100003294(a1);
  v3 = [CKModifyRecordZonesOperation alloc];
  v4 = [[CKRecordZone alloc] initWithZoneID:v2];
  v20 = v4;
  v5 = [NSArray arrayWithObjects:&v20 count:1];
  v6 = [v3 initWithRecordZonesToSave:v5 recordZoneIDsToDelete:0];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100007328;
  v13 = &unk_100131238;
  v7 = v2;
  v14 = v7;
  v15 = a1[4];
  objc_copyWeak(&v19, a1 + 8);
  v18 = a1[7];
  v8 = a1[5];
  v9 = a1[6];
  v16 = v8;
  v17 = v9;
  [v6 setModifyRecordZonesCompletionBlock:&v10];
  [a1[6] _scheduleOperation:v6 inOperationGroup:a1[5] operationQueue:{*(a1[6] + 3), v10, v11, v12, v13}];

  objc_destroyWeak(&v19);
}

void sub_100007328(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v21 = sub_1000D23FC(0, v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully created CloudExtensions zone", buf, 2u);
    }

    v17 = 0;
    goto LABEL_12;
  }

  v11 = v9;
  v12 = [v9 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];

  v15 = sub_1000D23FC(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100008990(v15, v12);
  }

  v16 = *(a1 + 40);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100007600;
  v28[3] = &unk_100131210;
  objc_copyWeak(&v33, (a1 + 72));
  v32 = *(a1 + 64);
  v17 = v12;
  v29 = v17;
  v30 = *(a1 + 48);
  v31 = *(a1 + 40);
  v18 = [v16 scheduleRetryIfNeededForError:v17 usingBlock:v28];
  if (v18 != 1)
  {
    if (v18 == 2)
    {
      v20 = sub_1000D23FC(2, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100008A28();
      }
    }

    objc_destroyWeak(&v33);
LABEL_12:
    v22 = *(*(a1 + 56) + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000076C0;
    v24[3] = &unk_100130F40;
    v26 = *(a1 + 64);
    v17 = v17;
    v25 = v17;
    dispatch_async(v22, v24);

    goto LABEL_16;
  }

  v23 = sub_1000D23FC(1, v19);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Waiting to retry creation of CloudExtensions zone", buf, 2u);
  }

  objc_destroyWeak(&v33);
LABEL_16:
}

void sub_100007600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = sub_1000D23FC(WeakRetained, v3);
  v5 = v4;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrying creation of CloudExtensions zone", v6, 2u);
    }

    [WeakRetained _createCloudExtensionsRecordZoneInOperationGroup:*(a1 + 40) withRetryManager:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008A5C();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000077F4(uint64_t a1)
{
  v2 = [CKRecordZoneSubscription alloc];
  v3 = sub_100003294(v2);
  v4 = [v2 initWithZoneID:v3 subscriptionID:@"CloudExtensionZoneSubscription"];

  v5 = [v4 setNotificationInfo:*(a1 + 32)];
  v7 = sub_1000D23FC(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to save zone subscription for CloudExtensions zone", buf, 2u);
  }

  v8 = [CKModifySubscriptionsOperation alloc];
  v20 = v4;
  v9 = [NSArray arrayWithObjects:&v20 count:1];
  v10 = [v8 initWithSubscriptionsToSave:v9 subscriptionIDsToDelete:0];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000079A4;
  v16 = &unk_100131288;
  v11 = *(a1 + 64);
  v17 = v4;
  v18 = v11;
  v12 = v4;
  [v10 setModifySubscriptionsCompletionBlock:&v13];
  [*(a1 + 40) _scheduleOperation:v10 inOperationGroup:*(a1 + 48) operationQueue:{*(a1 + 56), v13, v14, v15, v16}];
}

void sub_1000079A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v12 = [a2 firstObject];
  v8 = [*(a1 + 32) subscriptionID];
  v9 = [CKPrettyError itemErrorFromError:v7 forID:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  (*(v6 + 16))(v6, v12, v11);
}

void sub_100007B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007B90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v6 = *(*(a1 + 32) + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007C6C;
  v10[3] = &unk_1001312D8;
  objc_copyWeak(&v14, (a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, v10);

  objc_destroyWeak(&v14);
}

void sub_100007C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    v5 = sub_1000D23FC(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008A90(a1 + 32, v5);
    }

    WeakRetained = [*(a1 + 40) _recursivelyCancelDependentOperations:v4 operationQueue:*(*(a1 + 40) + 24)];
  }

  v6 = sub_1000D23FC(WeakRetained, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished %@", buf, 0xCu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(*(a1 + 40) + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007DE4;
    v9[3] = &unk_100130F40;
    v11 = v7;
    v10 = *(a1 + 32);
    dispatch_async(v8, v9);
  }
}

void sub_100007FD4(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"CloudExtensions" ownerName:CKCurrentUserDefaultName];
  v2 = qword_100153E30;
  qword_100153E30 = v1;
}

void sub_100008028(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100008048(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id sub_100008088(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1000080E8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to fetch CloudExtensions zone subscription by ID with error: %{public}@", v6, v7, v8, v9);
}

void sub_1000081E0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Deleting records failed: %{public}@", v6, v7, v8, v9);
}

void sub_100008270(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to unexpected error outside the CKErrorDomain: %{public}@", v6, v7, v8, v9);
}

void sub_1000082F8(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to CloudKit error which could not be handled: %{public}@", v6, v7, v8, v9);
}

void sub_100008380(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to unexpected error: %{public}@", v6, v7, v8, v9);
}

void sub_10000843C(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to unrecoverable error: %{public}@", v6, v7, v8, v9);
}

void sub_100008560(uint64_t a1, void *a2)
{
  v3 = sub_100008088(a1, a2);
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Batch record save operation completed but failed to save records due to unrecoverable error: %{public}@", v7, v8, v9, v10);
}

void sub_100008624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Modify records operation failed due to deallocation with error %{public}@", v7, v8, v9, v10);
}

void sub_100008728()
{
  sub_100008064();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Record of type %{public}@ deleted: <%@>", v2, 0x16u);
}

void sub_1000087E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Bailing out from record fetch due to deallocation with error %{public}@", v7, v8, v9, v10);
}

void sub_100008878(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Fetch record changes failed: %{public}@", v6, v7, v8, v9);
}

void sub_100008900(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Fetch record zone changes operation failed: %{public}@", v6, v7, v8, v9);
}

void sub_100008990(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to create CloudExtensions zone with error: %{public}@", v7, v8, v9, v10);
}

void sub_100008A90(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Error occurred deleting records, canceling dependent operations: %{public}@", v6, v7, v8, v9);
}

void sub_100009354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id sub_100009384(uint64_t a1)
{
  v4 = @"localMigrationState";
  [*(*(a1 + 32) + 104) migrationState];
  v1 = stringFromLocalMigrationState();
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100009434(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000094D8;
  block[3] = &unk_1001313B8;
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = a2;
  v6[2] = a3;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
}

void sub_1000094D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v5 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v8 = v5;
    v9 = WBSStringFromCKContainerManateeState();
    v10 = WBSStringFromCKAccountTermsState();
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received PCS or terms and condition state change notification with PCS state %{public}@ and terms verification state %{public}@", buf, 0x16u);
  }

  if (v4[47] != *(a1 + 40))
  {
    v17 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v6, v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = WBSStringFromCKContainerManateeState();
      *buf = 138543362;
      v25 = v19;
      v20 = "Updating PCS state in response to PCS change notification with state %{public}@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }

LABEL_13:
    v21 = v4[46];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000976C;
    v22[3] = &unk_100131390;
    v23 = v4;
    [v21 determineAccountStateWithCompletion:v22];

    goto LABEL_14;
  }

  v11 = v4[48];
  v12 = *(a1 + 48);
  v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v6, v7);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11 != v12)
  {
    if (v14)
    {
      v18 = v13;
      v19 = WBSStringFromCKAccountTermsState();
      *buf = 138543362;
      v25 = v19;
      v20 = "Updating terms and condition state in response to notification with state %{public}@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v14)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    *buf = 134218240;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring PCS or terms and condition state change notification because neither have changed. PCS state is %ld and terms verification state is %ld", buf, 0x16u);
  }

LABEL_14:
}

uint64_t sub_10000976C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(result + 32) + 376) = a2;
  *(*(result + 32) + 384) = a3;
  return result;
}

uint64_t sub_100009780(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(result + 32) + 376) = a2;
  *(*(result + 32) + 384) = a3;
  return result;
}

void sub_100009C48(uint64_t a1)
{
  [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:1 resetSubscriptions:63 qualityOfService:17 delay:0];

  xpc_transaction_end();
}

void sub_100009D14(uint64_t a1)
{
  [*(a1 + 32) _userAccountDidChange:*(a1 + 40)];

  xpc_transaction_end();
}

void sub_10000A188(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    v8 = sub_10000300C(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001AA20(v8);
    }
  }

  else
  {
    v9 = [a2 supportsDeviceToDeviceEncryption];
    v11 = sub_10000300C(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"does not";
      if (v9)
      {
        v12 = @"does";
      }

      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cloud settings container %{public}@ support encryption", &v13, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000A328(uint64_t a1)
{
  [*(a1 + 32) _userDidUpdateBookmarkDatabase];

  xpc_transaction_end();
}

void sub_10000A594(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 72) = 0;
  ct_green_tea_logger_create_static();
  v6 = getCTGreenTeaOsLogHandle();
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Transmitted Internet Records", &v18, 2u);
  }

  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v8, v9);
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001AAB8();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = WBSStringFromCloudBookmarksSyncResult();
    v18 = 138543362;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "*** CloudKit bookmark sync finished with result: %{public}@", &v18, 0xCu);
  }

  kdebug_trace();
  [*(a1 + 32) _sendNotificationForSyncResult:a2];
  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, a2);
  }

  xpc_transaction_end();
  [*(a1 + 32) _sendDetectedBugNotificationIfNeeded];
  [*(a1 + 32) _performHiearchyCheck];
  [*(a1 + 32) _scheduleHierarchyCheckTimer];
  if (a2 == 2)
  {
    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:1 qualityOfService:9 delay:0];
    v15 = [v5 safari_isUserDeletedZoneError];
    if (v15)
    {
      v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Attempting migration from DAV to CloudKit since we got back an explicit 'zone deleted' error", &v18, 2u);
      }

      [*(a1 + 32) _beginMigrationFromDAVInOperationGroup:*(a1 + 40)];
    }

    else
    {
      [*(a1 + 32) observeRemoteMigrationStateForSecondaryMigration];
    }
  }
}

id sub_10000A9A4()
{
  v0 = WBSCloudBookmarksErrorDomain;
  v4 = NSLocalizedFailureReasonErrorKey;
  v5 = @"The attempted operation requires an entitlement";
  v1 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v2 = [NSError errorWithDomain:v0 code:1 userInfo:v1];

  return v2;
}

void sub_10000AB90(uint64_t a1)
{
  v2 = [*(a1 + 32) isSyncEnabled];
  if (v2)
  {
    v4 = [*(*(a1 + 32) + 24) createMigrationStateCheckOperationGroupWithXPCActivity:*(a1 + 40) qualityOfService:*(a1 + 56)];
    v5 = *(*(a1 + 32) + 24);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000ACE8;
    v9[3] = &unk_1001314A8;
    v10 = *(a1 + 48);
    [v5 fetchRemoteMigrationInfoInOperationGroup:v4 withCompletionHandler:v9];
  }

  else
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v2, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Simulating fetch of 'Unknown' migration state because Safari sync is disabled", buf, 2u);
    }

    v7 = *(a1 + 48);
    v8 = [NSError errorWithDomain:WBSCloudBookmarksErrorDomain code:0 userInfo:0];
    (*(v7 + 16))(v7, -1, 0, v8);

    xpc_transaction_end();
  }
}

void sub_10000ACE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001AB68(v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v14 = 134217984;
    v15 = [v5 migrationState];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fetched remote migration state: %ld", &v14, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [v5 migrationState];
  v13 = [v5 migratorDeviceIdentifier];
  (*(v11 + 16))(v11, v12, v13, v6);

  xpc_transaction_end();
}

void sub_10000AED0(uint64_t a1)
{
  [*(a1 + 32) _beginMigrationFromDAVInOperationGroupInternal:*(a1 + 40)];

  xpc_transaction_end();
}

void sub_10000B270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }

  xpc_transaction_end();
}

void sub_10000B430(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100002DF8(a2);
  (*(v2 + 16))(v2, v3);

  xpc_transaction_end();
}

void sub_10000B574(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100002DF8(a2);
  (*(v2 + 16))(v2, v3);

  xpc_transaction_end();
}

void sub_10000B6B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100002DF8(a2);
  (*(v2 + 16))(v2, v3);

  xpc_transaction_end();
}

void sub_10000B8A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B998;
  v14[3] = &unk_1001315B0;
  v15 = v7;
  v16 = v8;
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, v14);
}

void sub_10000B998(uint64_t a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 wbsCloudTabDeviceDictionary];
        if (v9)
        {
          v10 = [WBSFetchedCloudTabDeviceOrCloseRequest alloc];
          v11 = [v8 deviceUUIDString];
          v12 = [v10 initWithUUIDString:v11 deviceOrCloseRequestDictionary:v9];
          [v2 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = a1;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        v20 = [v19 wbsCloudTabCloseRequestDictionaryRepresentation];
        if (v20)
        {
          v21 = [WBSFetchedCloudTabDeviceOrCloseRequest alloc];
          v22 = [v19 requestUUIDString];
          v23 = [v21 initWithUUIDString:v22 deviceOrCloseRequestDictionary:v20];
          [v13 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v24 = *(v26 + 56);
  v25 = sub_100002DF8(*(v26 + 48));
  (*(v24 + 16))(v24, v2, v13, v25);

  xpc_transaction_end();
}

void sub_10000BD2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 wbsCloudTabDeviceDictionary];
        if (v11)
        {
          v12 = [WBSFetchedCloudTabDeviceOrCloseRequest alloc];
          v13 = [v10 deviceUUIDString];
          v14 = [v12 initWithUUIDString:v13 deviceOrCloseRequestDictionary:v11];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  xpc_transaction_end();
}

uint64_t sub_10000BFFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 usesManateeContainer];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

id sub_10000C250(uint64_t a1)
{
  if (qword_100153E58 != -1)
  {
    sub_10001AC00();
  }

  v2 = qword_100153E50;

  return v2;
}

void sub_10000C294(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  v7 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C388;
  v5[3] = &unk_100131628;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 saveRecords:v3 inOperationGroup:v4 successCompletionHandler:v5];
}

void sub_10000C388(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  xpc_transaction_end();
}

void sub_10000C7D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C8B4;
  block[3] = &unk_1001316A0;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10000C8B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  v8 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C9C0;
  v5[3] = &unk_100131678;
  v7 = *(a1 + 64);
  v6 = *(a1 + 56);
  [v2 savePerSiteRecords:v3 inOperationGroup:v4 completionHandler:v5];
}

uint64_t sub_10000C9C0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_10000C9D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CAB0;
  v9[3] = &unk_1001316F0;
  v6 = v4;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v13 = *(a1 + 48);
  v8 = v3;
  [v5 _getPerSiteSettingRecordNameWithDictionaryRepresentation:v8 inOperationGroup:v6 completionHandler:v9];
}

void sub_10000CAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    v8 = sub_10000300C(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001AC14();
    }
  }

  else
  {
    v9 = [*(a1 + 40) _createNewPerSiteCloudKitRecordWithDictionaryRepresentation:*(a1 + 48) precomputedRecordName:a2 inOperationGroup:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000CB44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 && [v5 length])
  {
    v7 = [*(a1 + 32) _modifyExistingPerSiteCloudKitRecordWithData:v6 dictionaryRepresentation:*(a1 + 40) inOperationGroup:*(a1 + 48)];
    if (v7)
    {
      v8 = *(*(a1 + 56) + 16);
    }

    else
    {
      v8 = *(*(a1 + 64) + 16);
    }

    v8();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000CC98;
    v17[3] = &unk_1001316F0;
    v11 = *(a1 + 48);
    v16 = *(a1 + 32);
    v12 = v16.i64[1];
    v13 = *(a1 + 56);
    v14.i64[0] = v11;
    v14.i64[1] = v13;
    v15 = vzip2q_s64(v16, v14);
    v14.i64[1] = v16.i64[0];
    v18 = v14;
    v19 = v15;
    [v9 _getPerSiteSettingRecordNameWithDictionaryRepresentation:v10 inOperationGroup:v11 completionHandler:v17];
  }
}

void sub_10000CC98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = sub_10000300C(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001AC14();
    }
  }

  else
  {
    v10 = [*(a1 + 40) _perSitePreferencesStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000CDD4;
    v12[3] = &unk_100131740;
    v11 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v11;
    v14 = v5;
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    [v10 getDeletedCloudKitSyncDataForRecordName:v14 completionHandler:v12];
  }
}

void sub_10000CDD4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7 = v5;
  if (!a3 || ![v5 length] || (objc_msgSend(*(a1 + 32), "_modifyExistingPerSiteCloudKitRecordWithData:dictionaryRepresentation:inOperationGroup:", v7, *(a1 + 40), *(a1 + 56)), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [*(a1 + 32) _createNewPerSiteCloudKitRecordWithDictionaryRepresentation:*(a1 + 40) precomputedRecordName:*(a1 + 48) inOperationGroup:*(a1 + 56)];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10000D82C(id a1)
{
  v1 = [WBSPerSitePreferencesSQLiteStore alloc];
  v4 = +[WBSPerSitePreferencesSQLiteStore defaultDatabaseURL];
  v2 = [v1 initWithDatabaseURL:v4];
  v3 = qword_100153E40;
  qword_100153E40 = v2;
}

void sub_10000DA68(uint64_t a1)
{
  [*(a1 + 32) _cancelBackgroundImageSaveDelayTimer];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DB6C;
  v10[3] = &unk_1001317B0;
  v9 = *(a1 + 32);
  v2 = *(&v9 + 1);
  v13 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v11 = v9;
  v12 = v5;
  v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:10.0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  *(v7 + 312) = v6;
}

id sub_10000DB6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  *(v2 + 312) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  return [v4 _saveCloudBackgroundImageWithURL:v5 isLightAppearance:v6 inOperationGroup:v7 successCompletionHandler:v8];
}

void sub_10000DD98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  v3 = [CKRecordID alloc];
  v4 = WBSSafariBackgroundImageKey;
  v5 = sub_10000C250(v3);
  v6 = [v3 initWithRecordName:v4 zoneID:v5];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DEF0;
  v9[3] = &unk_100131678;
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v2 deleteRecords:v7 inOperationGroup:v8 completionHandler:v9];
}

id sub_10000DF74(uint64_t a1)
{
  result = [*(a1 + 32) _isDeviceToDeviceEncryptionEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateCloudSettingsSyncCoordinatorAfterUserAccountChange:0];
  }

  return result;
}

id sub_10000E14C(uint64_t a1)
{
  result = [*(a1 + 32) _isDeviceToDeviceEncryptionEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateCloudSettingsSyncCoordinatorAfterUserAccountChange:0];
  }

  return result;
}

void sub_10000E36C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E434;
  v4[3] = &unk_100131888;
  objc_copyWeak(&v6, (a1 + 56));
  v5 = *(a1 + 48);
  [v3 beginInitialSyncUpInOperationGroup:v2 completionHandler:v4];

  objc_destroyWeak(&v6);
}

void sub_10000E434(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v24 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  WeakRetained[296] = 0;
  v8 = sub_10000300C(WeakRetained, v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = stringFromCloudSettingsSyncResult(a2);
      v12 = [v5 safari_privacyPreservingDescription];
      v13 = [*(a1 + 32) safari_logDescription];
      *buf = 138543874;
      v34 = v11;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "*** Per site settings initial fetch failed with result %{public}@: %{public}@ with %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v9;
    v15 = stringFromCloudSettingsSyncResult(a2);
    v16 = [*(a1 + 32) safari_logDescription];
    *buf = 138543618;
    v34 = v15;
    v35 = 2114;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Per Site settings initial fetch finished with result: %{public}@ with %{public}@", buf, 0x16u);
  }

  if (a2 == 2)
  {
    [WeakRetained _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:16 qualityOfService:9 delay:0];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = +[WBSPerSitePreferencesSQLiteStore staticSyncablePerSiteSettings];
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        v23 = [WeakRetained _perSitePreferencesStore];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10000E750;
        v25[3] = &unk_100131860;
        v25[4] = v22;
        v26 = *(v24 + 32);
        v27 = WeakRetained;
        [v23 getAllPreferenceInformationForPreference:v22 completionHandler:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }
}

void sub_10000E750(void *a1, void *a2, char a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = *v26;
      v10 = WBSCloudPerSiteSettingName;
      v11 = WBSCloudPerSiteSettingDomain;
      v12 = WBSCloudPerSiteSettingValue;
      obj = v7;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v30[0] = a1[4];
          v29[0] = v10;
          v29[1] = v11;
          v15 = [v14 domain];
          v30[1] = v15;
          v29[2] = v12;
          v16 = [v14 value];
          v30[2] = v16;
          v17 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

          v18 = a1[5];
          v19 = a1[6];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10000E98C;
          v23[3] = &unk_100131408;
          v24 = v18;
          [v19 _saveCloudPerSiteSettingWithDictionaryRepresentation:v17 inOperationGroup:v24 successCompletionHandler:v23];
        }

        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v20 = sub_10000300C(v5, v6);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10001AEB0(a1, v20);
    }
  }
}

void sub_10000E98C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000300C(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 safari_logDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Safari's per-site settings have been updated in CloudKit with %{public}@", &v7, 0xCu);
  }
}

void sub_10000EBA8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EC98;
  v4[3] = &unk_1001318D8;
  objc_copyWeak(&v8, (a1 + 72));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v3 beginInitialSyncUpInOperationGroup:v2 completionHandler:v4];

  objc_destroyWeak(&v8);
}

void sub_10000EC98(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  WeakRetained[296] = 0;
  v8 = sub_10000300C(WeakRetained, v7);
  v9 = v8;
  v46 = a1;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = stringFromCloudSettingsSyncResult(a2);
      v12 = [v5 safari_privacyPreservingDescription];
      v13 = [a1[4] safari_logDescription];
      *buf = 138543874;
      v59 = v11;
      v60 = 2114;
      v61 = v12;
      v62 = 2114;
      v63 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "*** Cloud settings initial fetch failed with result %{public}@: %{public}@ with %{public}@", buf, 0x20u);

      a1 = v46;
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v9;
    v15 = stringFromCloudSettingsSyncResult(a2);
    v16 = [a1[4] safari_logDescription];
    *buf = 138543618;
    v59 = v15;
    v60 = 2114;
    v61 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Cloud settings initial fetch finished with result: %{public}@ with %{public}@", buf, 0x16u);
  }

  v45 = v5;
  if (a2 == 2)
  {
    [WeakRetained _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:16 qualityOfService:9 delay:0];
  }

  v50 = +[NSMutableArray array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = a1[5];
  v17 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v49 = *v54;
    v19 = WBSCloudSettingRecordName;
    v20 = WBSCloudSettingValue;
    v47 = WBSCloudSettingRecordType;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v54 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v53 + 1) + 8 * i);
        v23 = *(WeakRetained + 38);
        v24 = [v22 objectForKeyedSubscript:v19];
        v25 = [v23 objectForKeyedSubscript:v24];

        if (v25)
        {
          v26 = [v22 objectForKeyedSubscript:v20];
          v27 = *(WeakRetained + 38);
          v28 = [v22 objectForKeyedSubscript:v19];
          v29 = [v27 objectForKeyedSubscript:v28];
          v30 = [v29 safari_encryptedValues];
          [v30 setObject:v26 forKeyedSubscript:v20];

          v31 = *(WeakRetained + 38);
          v32 = [v22 objectForKeyedSubscript:v19];
          v33 = [v31 objectForKeyedSubscript:v32];
          [v50 addObject:v33];
        }

        else
        {
          v34 = [CKRecord alloc];
          v35 = [CKRecordID alloc];
          v36 = [v22 objectForKeyedSubscript:v19];
          v37 = sub_10000C250(v36);
          v38 = [v35 initWithRecordName:v36 zoneID:v37];
          v32 = [v34 initWithRecordType:v47 recordID:v38];

          v39 = [v22 objectForKeyedSubscript:v20];
          v40 = [v32 safari_encryptedValues];
          [v40 setObject:v39 forKeyedSubscript:v20];

          [v50 addObject:v32];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v18);
  }

  v41 = *(WeakRetained + 35);
  v42 = [v50 copy];
  v43 = v46[4];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10000F19C;
  v51[3] = &unk_100131628;
  v52 = v46[6];
  [v41 saveRecords:v42 inOperationGroup:v43 successCompletionHandler:v51];

  v44 = *(WeakRetained + 38);
  *(WeakRetained + 38) = 0;
}

void sub_10000F2D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_10000F49C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_10000F658(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
  v14 = v7;
  if (v7)
  {
    v9 = a3;
    v10 = a2;
    v11 = [v14 domain];
    v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v11, [v14 code], 0);
    (*(v8 + 16))(v8, v10, v9, v12);
  }

  else
  {
    v13 = *(v8 + 16);
    v12 = a3;
    v11 = a2;
    v13(v8, v11, v12, 0);
  }
}

void sub_10000F874(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_10000FA18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 344);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000FAC0;
  v3[3] = &unk_100130F40;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 deleteDatabaseWithCompletionHandler:v3];
}

void sub_10000FBB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 392) profiles];
  v4 = sub_1000D2478(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v9 = 134217984;
    v10 = [v2 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Beginning to fetch %zu profile entities for focus", &v9, 0xCu);
  }

  v6 = [v2 count];
  v7 = *(a1 + 40);
  if (v6 == 1)
  {
    (*(v7 + 16))(v7, &__NSArray0__struct);
  }

  else
  {
    v8 = [v2 safari_mapAndFilterObjectsUsingBlock:&stru_100131968];
    (*(v7 + 16))(v7, v8);
  }
}

NSDictionary *__cdecl sub_10000FCE0(id a1, WBProfile *a2)
{
  v2 = a2;
  v4 = sub_1000D2478(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [(WBProfile *)v2 identifier];
    v7 = [(WBProfile *)v2 title];
    *buf = 138543875;
    v15 = v6;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2117;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Mapping profile identifier %{public}@ to title %{sensitive, mask.hash}@", buf, 0x20u);
  }

  v8 = [(WBProfile *)v2 identifier];
  v13[0] = v8;
  v12[1] = WBSSafariBookmarksSyncAgentProfileTitleKey;
  v9 = [(WBProfile *)v2 title];
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

void sub_10000FF28(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 392) namedTabGroupsInDefaultProfile];
  v4 = sub_1000D2478(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v8 = 134217984;
    v9 = [v2 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Beginning to fetch %zu tab group entities for focus", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [v2 safari_mapObjectsUsingBlock:&stru_1001319D0];
  (*(v6 + 16))(v6, v7);
}

NSDictionary *__cdecl sub_10001002C(id a1, WBTabGroup *a2)
{
  v2 = a2;
  v4 = sub_1000D2478(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [(WBTabGroup *)v2 uuid];
    v7 = [(WBTabGroup *)v2 title];
    *buf = 138543875;
    v15 = v6;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2117;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Mapping tab group UUID %{public}@ to title %{sensitive, mask.hash}@", buf, 0x20u);
  }

  v8 = [(WBTabGroup *)v2 uuid];
  v13[0] = v8;
  v12[1] = WBSSafariBookmarksSyncAgentTabGroupTitleKey;
  v9 = [(WBTabGroup *)v2 title];
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

uint64_t sub_10001032C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000103D4;
  v4[3] = &unk_1001319F8;
  v4[4] = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
  [*(a1 + 40) _performTabGroupSyncForManager:*(*(a1 + 40) + 400) withTrigger:0 completionHandler:0];
  return (*(*(a1 + 48) + 16))();
}

void sub_1000103D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [*(*(a1 + 32) + 392) tabGroupWithUUID:v3];
  if (v5)
  {
    [*(*(a1 + 32) + 392) deleteTabGroup:v5];
  }

  else
  {
    v6 = sub_1000D2478(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001AF94();
    }
  }
}

void sub_100010534(uint64_t a1)
{
  v2 = [*(a1 + 32) _cyclerAssistant];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000105D4;
  v3[3] = &unk_100131520;
  v4 = *(a1 + 40);
  [v2 resetToDAVDatabaseWithCompletionHandler:v3];
}

void sub_1000105D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_1000106F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _cyclerAssistant];
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000107A0;
  v4[3] = &unk_100131520;
  v5 = *(a1 + 40);
  [v2 clearLocalDataIncludingMigrationState:v3 completionHandler:v4];
}

void sub_1000107A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_1000108AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _cyclerAssistant];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001094C;
  v3[3] = &unk_100131520;
  v4 = *(a1 + 40);
  [v2 generateDAVServerIDsForExistingBookmarksWithCompletionHandler:v3];
}

void sub_10001094C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_100010A58(uint64_t a1)
{
  *(*(a1 + 32) + 73) = 1;
  v2 = [*(a1 + 32) _cyclerAssistant];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100010B08;
  v4[3] = &unk_100131A70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 migrateToCloudKitWithCompletionHandler:v4];
}

void sub_100010B08(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010BB8;
  block[3] = &unk_100130E50;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100010BB8(void *a1)
{
  *(a1[4] + 73) = 0;
  (*(a1[6] + 16))(a1[6], a1[5]);

  xpc_transaction_end();
}

void sub_100010EDC(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = WBSCloudPerSiteSettingName;
    v7 = WBSCloudPerSiteSettingDomain;
    v8 = WBSCloudPerSiteSettingValue;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 32) valueOfPreference:*(a1 + 40) forDomain:v10];
        v19[0] = v6;
        v12 = [*(a1 + 32) preferenceNameForPreference:*(a1 + 40)];
        v20[0] = v12;
        v20[1] = v10;
        v19[1] = v7;
        v19[2] = v8;
        v20[2] = v11;
        v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

        [*(a1 + 48) _saveCloudPerSiteSettingWithDictionaryRepresentation:v13 inOperationGroup:*(a1 + 56) successCompletionHandler:&stru_100131A90];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_10001175C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    WeakRetained[5] = 0;
    v6 = WeakRetained;

    v4 = v6[6];
    v6[6] = 0;

    [v6 _fetchUpdatedZonesInPushNotificationForContainer:*(a1 + 32) trigger:*(a1 + 48)];
    v5 = v6[7];
    v6[7] = 0;

    WeakRetained = v6;
  }
}

void sub_100011FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100012014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 ckShortDescription];
    v11 = [*(a1 + 32) safari_logDescription];
    v56 = 138543618;
    v57 = v10;
    v58 = 2114;
    v59 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "recordZoneChangedBlock for zone ID: %{public}@, %{public}@", &v56, 0x16u);
  }

  v12 = [v5[3] bookmarksRecordZoneID];
  v13 = [v12 isEqual:v6];

  if (v13)
  {
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 safari_logDescription];
      v56 = 138543362;
      v57 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Bookmarks zone changed with %{public}@", &v56, 0xCu);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 24) | 1;
LABEL_23:
    *(v20 + 24) = v21;
    goto LABEL_24;
  }

  v22 = [v5[50] handlesRecordChangesToRecordZoneWithID:v6];
  if (v22)
  {
    v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      v26 = v24;
      v27 = [v25 safari_logDescription];
      v56 = 138543362;
      v57 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Tab Groups zone changed with %{public}@", &v56, 0xCu);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 24) | 4;
    goto LABEL_23;
  }

  v28 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
  v29 = [v28 isEqual:v6];

  if (v29)
  {
    v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = *(a1 + 32);
      v34 = v32;
      v35 = [v33 safari_logDescription];
      v56 = 138543362;
      v57 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Cloud Tabs zone changed with %{public}@", &v56, 0xCu);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 24) | 2;
    goto LABEL_23;
  }

  v36 = +[CloudSettingStore cloudSettingsRecordZoneID];
  v37 = [v36 isEqual:v6];

  if (v37)
  {
    v40 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = *(a1 + 32);
      v42 = v40;
      v43 = [v41 safari_logDescription];
      v56 = 138543362;
      v57 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Cloud Settings zone changed with %{public}@", &v56, 0xCu);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 24) | 0x10;
    goto LABEL_23;
  }

  v44 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v45 = [v44 isEqual:v6];

  v48 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v46, v47);
  v49 = v48;
  if (v45)
  {
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v50 = *(a1 + 32);
      v51 = v49;
      v52 = [v50 safari_logDescription];
      v56 = 138543362;
      v57 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Cloud Extensions zone changed with %{public}@", &v56, 0xCu);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 24) | 0x20;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v49;
    v54 = [v6 ckShortDescription];
    v55 = [*(a1 + 32) safari_logDescription];
    v56 = 138543618;
    v57 = v54;
    v58 = 2114;
    v59 = v55;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "recordZoneChangedBlock did not handle zone ID: %{public}@, %{public}@", &v56, 0x16u);
  }

LABEL_24:
}

void sub_1000124DC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012634;
  block[3] = &unk_100131B30;
  v19 = v9;
  v20 = *(a1 + 32);
  v21 = v11;
  v22 = *(a1 + 40);
  v12 = *(a1 + 48);
  v27 = *(a1 + 80);
  v23 = v12;
  v24 = v10;
  v28 = *(a1 + 88);
  v17 = *(a1 + 56);
  v13 = v17;
  v25 = v17;
  v26 = *(a1 + 72);
  v14 = v10;
  v15 = v11;
  v16 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100012634(uint64_t a1)
{
  v2 = a1 + 40;
  [*(*(a1 + 32) + 224) removeObject:*(a1 + 40)];
  v3 = [*(v2 + 8) safari_isCloudKitExpiredChangeTokenError];
  if (v3)
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v2, v5, a1);
    }

LABEL_4:
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 removeObjectForKey:*(a1 + 64)];

    [*(a1 + 32) _beginFetchingUpdatedZonesInContainer:*(a1 + 40) isRetry:1 trigger:*(a1 + 104) operationGroup:*(a1 + 56)];
    return;
  }

  if (*(a1 + 72))
  {
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v9 = v7;
        v10 = [v8 containerIdentifier];
        v11 = *(a1 + 72);
        v12 = [*(a1 + 56) safari_logDescription];
        v56 = 138543874;
        v57 = v10;
        v58 = 2114;
        v59 = v11;
        v60 = 2114;
        v61 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did finish fetching database change operations for container with identifier: %{public}@, new server change token: %{public}@, %{public}@", &v56, 0x20u);
      }

      v13 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 72) requiringSecureCoding:1 error:0];
      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 setObject:v13 forKey:*(a1 + 64)];

      v17 = *(*(*(a1 + 96) + 8) + 24);
      if (v17)
      {
        v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = *(a1 + 56);
          v33 = v31;
          v34 = [v32 safari_logDescription];
          v56 = 138543362;
          v57 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Attempting to sync Bookmarks in response to a push notification after checking container zones with %{public}@", &v56, 0xCu);
        }

        v15 = [*(a1 + 32) _attemptSyncAndFallBackToMigrationIfPossibleForTrigger:*(a1 + 104)];
        v17 = *(*(*(a1 + 96) + 8) + 24);
        if ((v17 & 4) == 0)
        {
LABEL_11:
          if ((v17 & 2) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_31;
        }
      }

      else if ((v17 & 4) == 0)
      {
        goto LABEL_11;
      }

      v35 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(a1 + 56);
        v37 = v35;
        v38 = [v36 safari_logDescription];
        v56 = 138543362;
        v57 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Attempting to sync Tab Groups in response to a push notification after checking container zones with %{public}@", &v56, 0xCu);
      }

      v15 = [*(a1 + 32) _attemptTabGroupsSyncForManager:*(*(a1 + 32) + 400) withTrigger:*(a1 + 104)];
      v17 = *(*(*(a1 + 96) + 8) + 24);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_34;
      }

LABEL_31:
      v39 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 56);
        v41 = v39;
        v42 = [v40 safari_logDescription];
        v56 = 138543362;
        v57 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Attempting to sync CloudKit Tabs in response to a push notification after checking container zones with %{public}@", &v56, 0xCu);
      }

      v15 = [*(a1 + 32) _attemptCloudTabsSyncForPushNotification];
      v17 = *(*(*(a1 + 96) + 8) + 24);
      if ((v17 & 0x10) == 0)
      {
LABEL_13:
        if ((v17 & 0x20) == 0)
        {
          goto LABEL_40;
        }

LABEL_37:
        v47 = sub_1000D23FC(v15, v16);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = *(a1 + 56);
          v49 = v47;
          v50 = [v48 safari_logDescription];
          v56 = 138543362;
          v57 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Attempting to sync extension state in response to a push notification after checking container zones with %{public}@", &v56, 0xCu);
        }

        [*(a1 + 32) _attemptCloudExtensionsSyncForPushNotification];
        goto LABEL_40;
      }

LABEL_34:
      v43 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = *(a1 + 56);
        v45 = v43;
        v46 = [v44 safari_logDescription];
        v56 = 138543362;
        v57 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Attempting to sync settings in response to a push notification after checking container zones with %{public}@", &v56, 0xCu);
      }

      v15 = [*(a1 + 32) _attemptCloudSettingsSyncForTrigger:*(a1 + 104) inOperationGroup:*(a1 + 56)];
      if ((*(*(*(a1 + 96) + 8) + 24) & 0x20) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if ((*(a1 + 112) & 1) == 0 && *(a1 + 80))
    {
      v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        v25 = v23;
        v26 = [v24 containerIdentifier];
        v28 = *(a1 + 72);
        v27 = *(a1 + 80);
        v29 = [*(a1 + 56) safari_logDescription];
        v56 = 138544130;
        v57 = v26;
        v58 = 2114;
        v59 = v27;
        v60 = 2114;
        v61 = v28;
        v62 = 2114;
        v63 = v29;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "We received a push notification for container with identifier: %{public}@ but got no changes from server change token: %{public}@, new server change token: %{public}@, will retry from nil with %{public}@", &v56, 0x2Au);
      }

      goto LABEL_4;
    }

    v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v51 = *(a1 + 40);
      v52 = v30;
      v53 = [v51 containerIdentifier];
      v54 = *(a1 + 72);
      v55 = [*(a1 + 56) safari_logDescription];
      v56 = 138543874;
      v57 = v53;
      v58 = 2114;
      v59 = v54;
      v60 = 2114;
      v61 = v55;
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "We received a push notification for container with identifier: %{public}@ but got no changes fetching from nil server change token, new server change token: %{public}@, will not retry with %{public}@", &v56, 0x20u);
    }

    v13 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 72) requiringSecureCoding:1 error:0];
    v21 = +[NSUserDefaults standardUserDefaults];
    [v21 setObject:v13 forKey:*(a1 + 64)];
  }

  else
  {
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v19 = *(a1 + 40);
    v20 = v18;
    v13 = [v19 containerIdentifier];
    v21 = [*(a1 + 48) safari_privacyPreservingDescription];
    v22 = [*(a1 + 56) safari_logDescription];
    v56 = 138543874;
    v57 = v13;
    v58 = 2114;
    v59 = v21;
    v60 = 2114;
    v61 = v22;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch database changes for container: %{public}@ with error: %{public}@, %{public}@", &v56, 0x20u);
  }

LABEL_40:
}

void sub_100012E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012E90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B150(v10, v6);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v13 = *(WeakRetained + 3);
        v14 = *(a1 + 32);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100013048;
        v15[3] = &unk_100131B80;
        objc_copyWeak(&v17, (a1 + 48));
        v16 = *(a1 + 40);
        [v13 saveBookmarksZoneSubscriptionInOperationGroup:v14 withCompletionHandler:v15];

        objc_destroyWeak(&v17);
        goto LABEL_12;
      }

      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Bookmarks zone subscription already exists", buf, 2u);
      }

      v11 = *(*(a1 + 40) + 16);
    }
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();
LABEL_12:
}

void sub_100013048(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B1F0(v11);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Saving Bookmarks zone subscription succeeded", v13, 2u);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);
  }

  v12();
}

void sub_100013234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013250(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013348;
  v6[3] = &unk_100131BD0;
  objc_copyWeak(&v10, a1 + 6);
  v9 = a1[5];
  v5 = v3;
  v7 = v5;
  v8 = a1[4];
  [v5 fetchCloudTabsZoneSubscriptionInOperationGroup:v4 withCompletionHandler:v6];

  objc_destroyWeak(&v10);
}

void sub_100013348(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = sub_100001B78(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B288(v10, v6);
      }

      v11 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (!v5)
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000134FC;
        v15[3] = &unk_100131B80;
        objc_copyWeak(&v17, (a1 + 56));
        v16 = *(a1 + 48);
        [v13 saveCloudTabsZoneSubscriptionInOperationGroup:v14 withCompletionHandler:v15];

        objc_destroyWeak(&v17);
        goto LABEL_12;
      }

      v12 = sub_100001B78(WeakRetained, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CloudTabs zone subscription already exists", buf, 2u);
      }

      v11 = *(*(a1 + 48) + 16);
    }
  }

  else
  {
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
LABEL_12:
}

void sub_1000134FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = sub_100001B78(WeakRetained, v8);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B328(v11);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving CloudTabs zone subscription succeeded", v13, 2u);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);
  }

  v12();
}

void sub_100013724(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_1000137D0();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000138E0;
  v5[3] = &unk_100131C98;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v5[5] = v4;
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.BookmarkSyncNetworkConnectivity" criteria:v3 registerIfNeeded:1 performBlock:v5];
}

id sub_1000137D0()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);

  return v0;
}

void sub_1000138E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_transaction_create();
  v4[2](v4, 1, 0);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000139B8;
  block[3] = &unk_100131C70;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000139B8(uint64_t a1, uint64_t a2)
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v4)
  {
    v6 = *(a1 + 48);
    v7 = v3;
    v8 = sub_100003044(v6);
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will attempt sync/migration in response to trigger: %{public}@", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9[73] == 1)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v4, v5);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v11 = "Ignoring request to sync/migrate because migration is in progress";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    return;
  }

  if (v9[72] == 1)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v4, v5);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v11 = "Ignoring request to sync/migrate because sync is in progress";
    goto LABEL_9;
  }

  v12 = *(a1 + 48);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100013B80;
  v15[3] = &unk_100131C48;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = v14;
  v16 = v13;
  [v9 _performBookmarkSyncForTrigger:v12 inOperationGroup:0 completionHandler:v15];
}

void sub_100013B80(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 4 && a2 != 0)
  {
    v17 = v2;
    v18 = v3;
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching remote migration state since we tried syncing while not locally migrated", buf, 2u);
    }

    v8 = *(a1 + 48);
    if (v8 > 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1000E8C30[v8];
    }

    v10 = os_transaction_create();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013CA4;
    v13[3] = &unk_100131C20;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v12 = v10;
    [v11 _fetchRemoteMigrationStateWithXPCActivity:0 qualityOfService:v9 completionHandler:v13];
  }
}

void sub_100013CA4(uint64_t a1, uint64_t a2)
{
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched remote migration state: %ld", &v5, 0xCu);
  }

  if ((a2 | 2) == 2)
  {
    [*(a1 + 40) beginMigrationFromDAV];
  }
}

void sub_100013E3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013EC0;
  block[3] = &unk_100131408;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100013EC0(uint64_t a1, uint64_t a2)
{
  v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Notifying Safari of iCloud Tabs changes in response to a push notification", v4, 2u);
  }

  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 postNotificationName:WBSSafariBookmarksSyncAgentCloudTabsWereUpdatedOnServerNotificationName object:0];
}

void sub_100014018(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 10);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001419C;
  v5[3] = &unk_100131CE8;
  v5[4] = *(a1 + 32);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.InitialManateeCloudTabFetchRetry" criteria:v3 registerIfNeeded:v4 performBlock:v5];

  xpc_transaction_end();
}

void sub_10001419C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = sub_100001B78(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Retrying initial CloudTab fetch", buf, 2u);
  }

  v7 = *(*(a1 + 32) + 248);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014280;
  v9[3] = &unk_100131588;
  v10 = v4;
  v8 = v4;
  [v7 fetchDevicesWithCompletionHandler:v9];
}

void sub_100014280(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = sub_100001B78(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 safari_privacyPreservingDescription];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished initial CloudTab fetch with error %{public}@", &v11, 0xCu);
  }

  if (!v5)
  {
    v10 = +[NSDistributedNotificationCenter defaultCenter];
    [v10 postNotificationName:WBSSafariBookmarksSyncAgentCloudTabsWereUpdatedOnServerNotificationName object:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100014494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000144B0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    v11 = sub_10000300C(0, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001B490(a1, v11);
    }

    goto LABEL_5;
  }

  if (v6)
  {
    v10 = sub_10000300C(WeakRetained, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B3C0(v10, v6, a1);
    }

LABEL_5:
    (*(a1[5] + 2))();
    goto LABEL_14;
  }

  if (v5)
  {
    v12 = sub_10000300C(WeakRetained, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = [v13 safari_logDescription];
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CloudSettings zone subscription already exists with %{public}@", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v16 = *(WeakRetained + 34);
    v17 = a1[4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100014710;
    v18[3] = &unk_100131D38;
    objc_copyWeak(&v21, a1 + 6);
    v19 = a1[4];
    v20 = a1[5];
    [v16 saveCloudSettingsZoneSubscriptionInOperationGroup:v17 withCompletionHandler:v18];

    objc_destroyWeak(&v21);
  }

LABEL_14:
}

void sub_100014710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = sub_10000300C(WeakRetained, v8);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B530();
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v11;
      v16 = [v14 safari_logDescription];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription succeeded with %{public}@", &v17, 0xCu);
    }

    v13 = *(*(a1 + 40) + 16);
  }

  else
  {
    v12 = sub_10000300C(0, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B5E4(a1, v12);
    }

    v13 = *(*(a1 + 40) + 16);
  }

  v13();
}

void sub_100014D08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 296) = 0;
  v7 = sub_10000300C(v5, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = stringFromCloudSettingsSyncResult(a2);
      v11 = [v5 safari_privacyPreservingDescription];
      v12 = [*(a1 + 40) safari_logDescription];
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "*** Cloud settings sync failed with result %{public}@: %{public}@ with %{public}@", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8;
    v14 = stringFromCloudSettingsSyncResult(a2);
    v15 = [*(a1 + 40) safari_logDescription];
    v17 = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** Cloud settings sync finished with result: %{public}@ with %{public}@", &v17, 0x16u);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, a2);
  }

  if (a2 == 2)
  {
    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:16 qualityOfService:9 delay:0];
  }
}

void sub_1000150E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015184;
  v4[3] = &unk_100131628;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 saveImageRecord:v1 inOperationGroup:v3 successCompletionHandler:v4];
}

void sub_100015364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015380(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = sub_1000D23FC(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B67C(v10, v6);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v14 = *(WeakRetained + 42);
        v15 = *(a1 + 32);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100015558;
        v16[3] = &unk_100131B80;
        objc_copyWeak(&v18, (a1 + 48));
        v17 = *(a1 + 40);
        [v14 saveCloudExtensionsZoneSubscriptionInOperationGroup:v15 completionHandler:v16];

        objc_destroyWeak(&v18);
        goto LABEL_14;
      }

      v13 = sub_1000D23FC(WeakRetained, v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudExtensions zone subscription already exists", buf, 2u);
      }

      v11 = *(*(a1 + 40) + 16);
    }
  }

  else
  {
    v12 = sub_1000D23FC(0, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B71C();
    }

    v11 = *(*(a1 + 40) + 16);
  }

  v11();
LABEL_14:
}

void sub_100015558(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = sub_1000D23FC(WeakRetained, v8);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B750(v11);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription succeeded", v14, 2u);
    }

    v13 = *(*(a1 + 32) + 16);
  }

  else
  {
    v12 = sub_1000D23FC(0, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B7E8();
    }

    v13 = *(*(a1 + 32) + 16);
  }

  v13();
}

void sub_100016274(uint64_t a1)
{
  [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:2 qualityOfService:9 delay:20];

  xpc_transaction_end();
}

void sub_100016538(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100016814;
    v29 = &unk_100131E28;
    v14 = v3;
    v15 = *(a1 + 64);
    v30 = v14;
    v31 = v15;
    v16 = xpc_activity_add_eligibility_changed_handler();
    if (xpc_activity_set_state(v14, 4))
    {
      xpc_transaction_begin();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000168CC;
      v22[3] = &unk_100131E78;
      v17 = *(a1 + 56);
      v22[4] = *(a1 + 48);
      v23 = v14;
      v24 = v16;
      v25 = *(a1 + 64);
      (*(v17 + 16))(v17, v23, v22);
    }

    else
    {
      if (v16)
      {
        xpc_activity_remove_eligibility_changed_handler();
      }

      xpc_activity_set_state(v14, 3);
    }

    v10 = v30;
    goto LABEL_20;
  }

  if (!state)
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 64);
      *buf = 136446210;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checked In xpc activity with identifier %{public}s", buf, 0xCu);
    }

    v8 = xpc_activity_copy_criteria(v3);
    v10 = v8;
    if (v8)
    {
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 64);
        *buf = 136446210;
        v33 = v12;
        v13 = "An activity with identifier %{public}s is already scheduled";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
      }
    }

    else
    {
      v18 = *(a1 + 72);
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v9);
      v19 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v18 != 1)
      {
        if (v19)
        {
          v21 = *(a1 + 64);
          *buf = 136446210;
          v33 = v21;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No prior %{public}s activity was found and registration is not requested", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v19)
      {
        v20 = *(a1 + 64);
        *buf = 136446210;
        v33 = v20;
        v13 = "No prior %{public}s activity was found. Registering a new one";
        goto LABEL_17;
      }
    }

    xpc_activity_set_criteria(v3, *(a1 + 32));
LABEL_19:
    dispatch_semaphore_signal(*(a1 + 40));
LABEL_20:
  }
}

BOOL sub_100016814(uint64_t a1)
{
  result = xpc_activity_should_defer(*(a1 + 32));
  if (result)
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(result, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = 136446210;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deferred xpc activity with identifier %{public}s", &v6, 0xCu);
    }

    return xpc_activity_set_state(*(a1 + 32), 3);
  }

  return result;
}

void sub_1000168CC(uint64_t a1, char a2, char a3)
{
  v5 = *(*(a1 + 32) + 120);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001697C;
  v6[3] = &unk_100131E50;
  v9 = a3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = a2;
  dispatch_async(v5, v6);
}

void sub_10001697C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 57))
    {
      v2 = 5;
    }

    else
    {
      v2 = 3;
    }

    xpc_activity_set_state(*(a1 + 32), v2);
    if (*(a1 + 40))
    {
      xpc_activity_remove_eligibility_changed_handler();
    }
  }

  else
  {
    xpc_activity_set_state(*(a1 + 32), 5);
    if (*(a1 + 40))
    {
      xpc_activity_remove_eligibility_changed_handler();
    }

    xpc_activity_unregister(*(a1 + 48));
  }

  xpc_transaction_end();
}

id sub_100016DB8(char a1)
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Bookmarks"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"CloudKit Tabs"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"Tab Groups Private Database"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"Tab Groups Shared Database"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:@"Customization Sync"];
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    [v3 addObject:@"Extension State Sync"];
  }

LABEL_8:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_1000170F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, v3);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  v5 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017288;
  v6[3] = &unk_100131F40;
  v6[5] = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v6[6] = *(a1 + 56);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.ZoneSubscriptionRegistration" criteria:v4 registerIfNeeded:v5 performBlock:v6];

  xpc_transaction_end();
}

void sub_100017288(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  dispatch_source_set_timer(v7, 0, (*(a1 + 40) * 1000000000.0), 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100017440;
  handler[3] = &unk_1001314F8;
  handler[4] = *(a1 + 32);
  v8 = v7;
  v24 = v8;
  dispatch_source_set_cancel_handler(v8, handler);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017464;
  v17[3] = &unk_100131F18;
  v9 = v8;
  v10 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  v11 = *(a1 + 48);
  v21 = v6;
  v22 = v11;
  v20 = v5;
  v12 = v5;
  v13 = v6;
  dispatch_source_set_event_handler(v9, v17);
  v14 = *(a1 + 32);
  v15 = *(v14 + 128);
  *(v14 + 128) = v9;
  v16 = v9;

  dispatch_resume(v16);
}

void sub_100017440(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 128);
  if (v2 == v3)
  {
    *(v1 + 128) = 0;
  }
}

void sub_100017464(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  *(*(a1 + 40) + 160) = 1;
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 40) + 144);
    v6 = v4;
    v7 = sub_100016DB8(v5);
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to save %{public}@ subscriptions", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (*(v8 + 161) == 1)
  {
    *(v8 + 152) = 0;
    v8 = *(a1 + 40);
  }

  *(v8 + 161) = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017604;
  block[3] = &unk_100131F18;
  v12 = *(a1 + 32);
  v9 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v16 = v10;
  v17 = v11;
  v15 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100017604(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) aa_primaryAppleAccount];
  v3 = [*(*(a1 + 32) + 96) accountPropertiesStore];
  [v3 setNeedsDataclassEnabledCheck];

  v4 = [*(a1 + 32) isSyncEnabled];
  v5 = v4;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v4, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      *buf = 138477827;
      v19 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to register CloudKit subscriptions for account: %{private}@", buf, 0xCu);
    }

    v9 = [CKOperationGroup safari_operationGroupWithName:@"CloudKit Subscription Request" qualityOfService:*(a1 + 64) xpcActivity:*(a1 + 48)];
    v10 = *(a1 + 32);
    v12 = v10[17];
    v11 = v10[18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100017820;
    v15[3] = &unk_100131EF0;
    v15[4] = v10;
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    [v10 _registerRemainingCloudKitSubscriptions:v11 withLastSuccessfulSubscriptions:v12 inOperationGroup:v9 withCompletionHandler:v15];
  }

  else
  {
    if (v8)
    {
      *buf = 138477827;
      v19 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Not attempting to register CloudKit subscriptions because syncing is not available for account: %{private}@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v9 = [NSError safari_errorWithCloudBookmarksCode:8 userInfo:0];
    [v13 _didRegisterCloudKitSubscriptions:0 timer:v14 lastError:v9 completionHandler:*(a1 + 56)];
  }
}

void sub_100017820(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000178F4;
  block[3] = &unk_100131EC8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100017C64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = v8;
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  if (v7)
  {
    v11 |= a2;
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = sub_100016DB8(a2);
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Registering %{public}@ subscription succeeded or we were already subscribed", buf, 0xCu);
    }
  }

  else
  {
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001B8B4();
    }
  }

  v20 = CKErrorDomain;
  v21 = &off_10013C8F0;
  v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v18 = [v10 safari_matchesErrorDomainsAndCodes:v17];

  if (v18)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _registerRemainingCloudKitSubscriptions:v12 & ~a2 withLastSuccessfulSubscriptions:v11 inOperationGroup:*(a1 + 40) withCompletionHandler:*(a1 + 48)];
  }

  return v18 ^ 1;
}

void sub_100017E14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(a1[6] + 16))() && [v4 safari_isOrContainsCloudKitMissingZoneError])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017EEC;
    v6[3] = &unk_1001314F8;
    v5 = a1[5];
    v6[4] = a1[4];
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_100017F8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 74) & 1) == 0)
  {
    *(v2 + 74) = 1;
    [*(a1 + 32) _registerPeriodicRemoteMigrationStateObserverXPCActivityRegisteringIfNeeded:1];
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_100018058(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 2 * XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018200;
  v5[3] = &unk_100131CE8;
  v5[4] = *(a1 + 32);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.PeriodicRemoteMigrationStateObserver" criteria:v3 registerIfNeeded:v4 performBlock:v5];

  xpc_transaction_end();
}

void sub_100018200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Checking remote migration state for a chance to migrate as a secondary device", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018308;
  block[3] = &unk_100131A20;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100018308(uint64_t a1)
{
  *(*(a1 + 32) + 74) = 1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000183CC;
  v4[3] = &unk_100132008;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _fetchRemoteMigrationStateWithXPCActivity:v5 qualityOfService:17 completionHandler:v4];
}

void sub_1000183CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000184A0;
  block[3] = &unk_100131EC8;
  v12 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000184A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if ((v3 + 1) >= 3)
  {
    if (v3 != 2)
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B964();
      }

      goto LABEL_21;
    }

    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Remote migration state is set to finished; determining if secondary device migration can proceed", buf, 2u);
    }

    v6 = sub_1000328C4(*(*(a1 + 32) + 16));
    if ([v6 isEqualToString:*(a1 + 40)])
    {
    }

    else
    {
      v10 = *(*(a1 + 32) + 73);

      if ((v10 & 1) == 0)
      {
        v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Attempting to migrate as secondary device", v22, 2u);
        }

        v17 = [*(*(a1 + 32) + 24) createMigrationFromDAVOperationGroupWithXPCActivity:*(a1 + 48)];
        [*(a1 + 32) _beginMigrationFromDAVInOperationGroup:v17];

        goto LABEL_21;
      }
    }

    v11 = *(*(a1 + 32) + 73);
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == 1)
    {
      if (v13)
      {
        v21 = 0;
        v14 = "Not proceeding with migration because there is already an ongoing migration";
        v15 = &v21;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, v15, 2u);
      }
    }

    else if (v13)
    {
      *v20 = 0;
      v14 = "Not proceeding with migration because this device was the primary migrator";
      v15 = v20;
      goto LABEL_17;
    }

LABEL_21:
    *(*(a1 + 32) + 74) = 0;
    return (*(*(a1 + 56) + 16))();
  }

  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No device has migrated yet; continuing to periodically check the remote migration state", v19, 2u);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100018780(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 1);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018904;
  v5[3] = &unk_100131CE8;
  v5[4] = *(a1 + 32);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.migration" criteria:v3 registerIfNeeded:v4 performBlock:v5];

  xpc_transaction_end();
}

void sub_100018904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000189D0;
  block[3] = &unk_100130E50;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  block[4] = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000189D0(uint64_t a1, uint64_t a2)
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CloudKit bookmarks migration activity is running", buf, 2u);
  }

  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v4, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to migrate to CloudKit", buf, 2u);
  }

  v9 = *(a1 + 32);
  if (*(v9 + 73) == 1)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bailing out from migration since migration was already in progress", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    *(v9 + 73) = 1;
    v11 = [*(*(a1 + 32) + 24) createMigrationFromDAVOperationGroupWithXPCActivity:*(a1 + 40)];
    v12 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100018B70;
    v13[3] = &unk_100132030;
    v13[4] = v12;
    v14 = *(a1 + 48);
    [v12 _migrateFromDAVInOperationGroup:v11 completionHandler:v13];
  }
}

uint64_t sub_100018B70(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Migration to CloudKit finished with status: %d", v6, 8u);
  }

  kdebug_trace();
  *(*(a1 + 32) + 73) = 0;
  [*(a1 + 32) userDidUpdateBookmarkDatabase];
  if (v2)
  {
    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:1 qualityOfService:17 delay:0];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100018D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B998(v10, v6);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v13 = *(WeakRetained + 50);
        v14 = *(a1 + 32);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100018F58;
        v15[3] = &unk_100131B80;
        objc_copyWeak(&v17, (a1 + 48));
        v16 = *(a1 + 40);
        [v13 savePrivateDatabaseSubscriptionInOperationGroup:v14 withCompletionHandler:v15];

        objc_destroyWeak(&v17);
        goto LABEL_11;
      }

      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "TabGroups database private subscription already exists", buf, 2u);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    v11();
  }

LABEL_11:
}

void sub_100018F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001BA38(v11);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Saving TabGroups private database subscription succeeded", v12, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001914C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001BAD0(v10, v6);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v13 = *(WeakRetained + 50);
        v14 = *(a1 + 32);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000192F0;
        v15[3] = &unk_100131B80;
        objc_copyWeak(&v17, (a1 + 48));
        v16 = *(a1 + 40);
        [v13 saveSharedDatabaseSubscriptionInOperationGroup:v14 withCompletionHandler:v15];

        objc_destroyWeak(&v17);
        goto LABEL_11;
      }

      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "TabGroups shared database subscription already exists", buf, 2u);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    v11();
  }

LABEL_11:
}

void sub_1000192F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(WeakRetained, v8);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001BB70(v11);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Saving TabGroups shared database subscription succeeded", v12, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019538(void *a1)
{
  v2 = a1[5];
  v3 = sub_1000137D0();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000195F8;
  v7[3] = &unk_100132080;
  v4 = a1[6];
  v7[4] = a1[5];
  v5 = v4;
  v6 = a1[7];
  v8 = v5;
  v9 = v6;
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.TabGroupSyncNetworkConnectivity" criteria:v3 registerIfNeeded:1 performBlock:v7];
}

void sub_1000195F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_transaction_create();
  v4[2](v4, 1, 0);

  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = nullsub_19;
  v10[3] = &unk_100132058;
  v11 = v5;
  v9 = v5;
  [v6 _runTabGroupsSyncForManager:v7 withTrigger:v8 completionHandler:v10];
}

id *sub_100019854(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(result, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Retry tab groups sync because running outside of XPC activity failed.", v4, 2u);
    }

    return [v2[5] _runTabGroupSyncUsingXPCActivityForManager:v2[6] tigger:v2[7]];
  }

  return result;
}

void sub_100019994(uint64_t a1, uint64_t a2)
{
  v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = sub_100003044(v4);
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will attempt tab group sync in response to trigger: %{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019AD0;
  v11[3] = &unk_1001320F8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 32);
  v12 = v10;
  [v7 _performTabGroupSyncForManager:v8 withTrigger:v9 completionHandler:v11];
}

uint64_t sub_100019AD0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 2)
  {
    if ((a2 - 1) >= 2)
    {
      if (a2)
      {
        return result;
      }
    }

    else
    {
      [*(result + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:12 qualityOfService:9 delay:0];
    }
  }

  else if ((a2 - 4) >= 2)
  {
    if (a2 == 3)
    {
      result = *(result + 40);
      if (!result)
      {
        return result;
      }

      v3 = *(result + 16);
      goto LABEL_11;
    }

    if (a2 != 6)
    {
      return result;
    }
  }

  result = *(v2 + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(result + 16);
LABEL_11:

  return v3();
}

void sub_100019DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_16;
    }

    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:12 qualityOfService:9 delay:5];
  }

  v7 = [*(*(a1 + 32) + 8) safari_primaryAppleAccount];
  v8 = [v7 safari_accountHash];

  v9 = [*(a1 + 40) configuration];
  [v9 storeOwner];
  v10 = WBNSStringFromCollectionStoreOwner();

  v11 = [*(*(a1 + 32) + 200) objectForKeyedSubscript:v10];
  v13 = v11;
  if (v11 && (v11 = [v11 isEqualToData:v8], v11))
  {
    v14 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Migration already initiated for manager %{public}@ on current account, skipping duplicate attempt", &v17, 0xCu);
    }
  }

  else
  {
    v15 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"<present>";
      if (!v8)
      {
        v16 = @"<none>";
      }

      v17 = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Starting migration for manager %{public}@ on account with hash %{public}@", &v17, 0x16u);
    }

    [*(*(a1 + 32) + 200) setObject:v8 forKeyedSubscript:v10];
    [*(a1 + 40) startMigrationIfNeeded];
  }

LABEL_16:
}

void sub_10001A948(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"CloudSettings" ownerName:CKCurrentUserDefaultName];
  v2 = qword_100153E50;
  qword_100153E50 = v1;
}

void sub_10001AA20(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001AAB8()
{
  sub_10001A9E0();
  v3 = v2;
  sub_10001A9D4();
  WBSStringFromCloudBookmarksSyncResult();
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10001AB68(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001AC14()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001ACC8(void *a1, void *a2, void *a3)
{
  v5 = WBSCloudPerSiteSettingName;
  v6 = a1;
  v7 = [a2 objectForKeyedSubscript:v5];
  v8 = [a2 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];
  v14 = [a3 safari_logDescription];
  sub_10001A9B4();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x34u);
}

void sub_10001ADEC()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10001AEB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [sub_10000807C() safari_logDescription];
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10001B008(void *a1)
{
  v2 = a1;
  [sub_10000807C() processIdentifier];
  sub_10001A9B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10001B098(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [sub_10001A9D4() containerIdentifier];
  v7 = [*(a3 + 56) safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_10001B150(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B1F0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001B288(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B328(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001B3C0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v12 = [*(a3 + 32) safari_logDescription];
  sub_10001A9B4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10001B490(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B530()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B5E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B67C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B750(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001B81C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000807C();
  v5 = sub_100016DB8(v4);
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10001B8B4()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = sub_10001A9D4();
  sub_100016DB8(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B998(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001BA38(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001BAD0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001BB70(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001BC08(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 sortedArrayUsingSelector:"localizedStandardCompare:"];
  v5 = [v4 componentsJoinedByString:@"&"];
  sub_100008064();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10001BD04(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 componentsJoinedByString:@"&"];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

__CFString *sub_10001C04C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [NSMutableArray arrayWithCapacity:5];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Update Remote"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"Update Local"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 addObject:@"Update Local Parent Or Position"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
LABEL_8:
        v4 = [v3 componentsJoinedByString:{@", "}];
        v5 = [NSString stringWithFormat:@"<%@>", v4];

        goto LABEL_10;
      }

LABEL_7:
      [v3 addObject:@"Undelete Local"];
      goto LABEL_8;
    }

LABEL_16:
    [v3 addObject:@"Delete Local"];
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = @"<None>";
LABEL_10:

  return v5;
}

const __CFString *sub_10001CDE0(uint64_t a1, void *a2)
{
  v2 = [a2 itemTypeForChange:a1];
  if (v2 == 1)
  {
    return @"Folder";
  }

  if (!v2)
  {
    return @"Bookmark";
  }

  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v2, v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100022E5C();
  }

  return 0;
}

__CFString *sub_10001CE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changeTypeForChange:a1];
  if (v4 == 2)
  {
    v5 = @"Delete";
  }

  else if (v4 == 1)
  {
    v6 = [v3 changeIsMoveChange:a1];
    v7 = @"Modify";
    if (v6)
    {
      v7 = @"Move";
    }

    v5 = v7;
  }

  else if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"Add";
  }

  return v5;
}

__CFString *sub_10001D42C(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"<Unknown CKBABookmarkType %ld>", a1];
  }

  else
  {
    v2 = off_100132318[a1];
  }

  return v2;
}

__CFString *sub_10001D49C(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"<Unknown CKBAFolderType %ld>", a1];
  }

  else
  {
    v2 = off_100132330[a1];
  }

  return v2;
}

void sub_10001FB54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) generationKeyForKey:v5];
  v8 = [*(*(a1 + 32) + 40) safari_generationForKey:v7];
  if ([v8 isValid])
  {
    v9 = [*(*(a1 + 32) + 32) valueTransformerForAttributeKey:v5];
    v10 = [objc_opt_class() transformedValueClass];
    if ([v10 isEqual:objc_opt_class()])
    {
      v11 = [*(*(a1 + 32) + 56) copySaveURLForAssetWithKey:v5 item:*(*(a1 + 32) + 48)];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001FCBC;
      v13[3] = &unk_100132208;
      v12 = *(a1 + 40);
      v13[4] = *(a1 + 32);
      v14 = v5;
      [v12 saveAssetAtURL:v6 toURL:v11 completionHandler:v13];
    }
  }
}

void sub_10001FCBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100023C74(v6);
    }
  }

  else
  {
    [*(*(a1 + 32) + 56) notifyForSaveOfAssetWithKey:*(a1 + 40) item:*(*(a1 + 32) + 48)];
  }
}

void sub_100020798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000207C0(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = [v5 valueTransformerForAttributeKey:v16];
  v8 = [v7 attributeRequiresEncryption];
  v9 = [v7 transformedValueOrNull:v6];

  v10 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v11 = [v10 safari_encryptedValues];
    [v11 setObject:v9 forKeyedSubscript:v16];
  }

  else
  {
    [v10 setObject:v9 forKeyedSubscript:v16];
  }

  if ([*(*(a1 + 32) + 32) isIdentityHashKey:v16])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v12 = [*(*(a1 + 32) + 32) generationKeyForKey:v16];
  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  v15 = [*(v13 + 8) generationForKey:v12];
  [v14 safari_setGeneration:v15 forKey:v12];
}

void sub_100020B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100020B54(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = a2;
  v12 = [v5 valueTransformerForAttributeKey:v7];
  v8 = [v12 attributeRequiresEncryption];
  v9 = [v12 transformedValueOrNull:v6];

  v10 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v11 = [v10 safari_encryptedValues];
    [v11 setObject:v9 forKeyedSubscript:v7];

    v7 = v11;
  }

  else
  {
    [v10 setObject:v9 forKeyedSubscript:v7];
  }
}

void sub_100020C44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) generationKeyForKey:v5];
  if ([*(a1 + 40) containsObject:v7])
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_12;
  }

  if ([*(*(a1 + 32) + 8) hasGenerationForKey:v7])
  {
    goto LABEL_12;
  }

  v8 = [*(*(a1 + 32) + 32) isIdentityHashKey:v5];
  if (!v8)
  {
LABEL_9:
    (*(*(a1 + 56) + 16))();
    [*(*(a1 + 32) + 8) incrementGenerationForKey:v7 withDeviceIdentifier:*(a1 + 48)];
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    v15 = [*(v13 + 8) generationForKey:v7];
    [v14 safari_setGeneration:v15 forKey:v7];

    [*(a1 + 40) addObject:v7];
    goto LABEL_12;
  }

  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v8, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    sub_100023E0C();
  }

  if (*(a1 + 72))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    goto LABEL_9;
  }

  v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v11, v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100023E74();
  }

LABEL_12:
}

void sub_100020EEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 first];
    v11 = [v6 second];
    v12 = *(*(a1 + 32) + 64);
    v18 = 138544130;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did apply reference %{public}@ generation: %{public}@ to attribute %{public}@ of record name: %{public}@", &v18, 0x2Au);
  }

  v13 = [*(*(a1 + 32) + 32) valueTransformerForAttributeKey:v5];
  v14 = [v6 first];
  v15 = [v13 reverseTransformedValueOrNull:v14];
  [*(*(a1 + 32) + 16) setObject:v15 forKeyedSubscript:v5];

  v16 = *(*(a1 + 32) + 8);
  v17 = [v6 second];
  [v16 setGeneration:v17 forKey:v5];
}

void sub_1000226F0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100022710(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100022738(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_10002279C()
{

  return [v0 itemTypeWithItem:v1];
}

void sub_1000227EC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10002280C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10002282C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_10002284C()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022888(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CloudBookmark cloudBookmarkWithRecordName:inDatabase:databaseAccessor:updater:]";
  sub_100022710(&_mh_execute_header, a1, a3, "%{public}s Unknown item type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100022900()
{
  sub_10001A9E0();
  v2 = v1;
  [sub_1000227B8() copyServerIdWithItem:?];
  v9 = 136446466;
  sub_1000226B8();
  sub_100022738(&_mh_execute_header, v3, v4, "%{public}s Unknown item type %{public}@", v5, v6, v7, v8, v9);
}

void sub_100022A04()
{
  sub_10001A9E0();
  v2 = v1;
  *v9 = 136446466;
  *&v9[4] = "+[CloudBookmark cloudBookmarkToMigrateItemWithRecordName:inDatabase:databaseAccessor:updater:]";
  *&v9[12] = 2048;
  *&v9[14] = [sub_1000227B8() itemTypeWithItem:?];
  sub_100022738(&_mh_execute_header, v3, v4, "%{public}s Unknown item type %ld", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void sub_100022B10(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_1000227D4();
  v8 = sub_10001CE58(v6, v7);
  v9 = [a3 copyServerIdWithChange:a2];
  v10 = sub_1000227D4();
  v12 = sub_10001CDE0(v10, v11);
  sub_100022770();
  sub_10002282C(&_mh_execute_header, v13, v14, "Change of type %{public}@ for bookmark %{public}@ of type %{public}@ given without an associated item", v15, v16, v17, v18);
}

void sub_100022BE0()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = sub_10001CDE0(v1, v0);
  v5 = [v0 copyServerIdWithChange:v1];
  *v12 = 138543618;
  *&v12[4] = v4;
  *&v12[12] = 2114;
  *&v12[14] = v5;
  sub_100022738(&_mh_execute_header, v6, v7, "Cannot find configuration for change with type %{public}@ for bookmark %{public}@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

void sub_100022D1C()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "No record object found in decoded sync data of deleted change %{private}@ to update with record name: %{public}@.");
}

void sub_100022D88()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Could not decode sync data in deleted change %{private}@ to update with record name: %{public}@.");
}

void sub_100022EC4()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_100022738(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeFolder type for local item %p, but got %ld", v5, v6, v7, v8);
}

void sub_100022F4C()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_1000227EC(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeFolder type for local item %{private}@, but got %ld", v5, v6, v7, v8);
}

void sub_100022FD4()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_100022738(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeBookmark type for local item %p, but got %ld", v5, v6, v7, v8);
}

void sub_10002305C()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_1000227EC(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeBookmark type for local item %{private}@, but got %ld", v5, v6, v7, v8);
}

void sub_1000230E4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() recordType];
  sub_1000226B8();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002318C()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Cannot find configuration for item with record name: %{public}@ to apply pending references %{public}@");
}

void sub_1000231F8()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Could not find item with record name %{public}@ in database to apply pending references %{public}@");
}

void sub_100023264()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000232A0()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226B8();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002331C()
{
  sub_100022790(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Assigning new record with record name %{public}@ to locally modified item, this could create an empty record on the server", v2, v3, v4, v5);
}

void sub_100023384(void *a1)
{
  v2 = a1;
  sub_10000807C();
  objc_opt_class();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100023410()
{
  sub_10001A9E0();
  v2 = v1;
  [sub_1000227B8() copyServerIdWithChange:?];
  v9 = 136446466;
  sub_1000226B8();
  sub_100022738(&_mh_execute_header, v3, v4, "%{public}s Unknown item type for record name %{public}@", v5, v6, v7, v8, v9);
}

void sub_1000234AC()
{
  sub_100022790(__stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Deleted bookmark change with record name %{public}@ contains the CKRecord of another bookmark with record name %{public}@");
}

void sub_100023514()
{
  sub_100022790(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Deleted bookmark change with record name %{public}@ does not have a CKRecord attached to it", v2, v3, v4, v5);
}

void sub_1000235E4()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023620()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002365C()
{
  sub_100022790(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "CKRecord %{private}@ with invalid record name was received; ignoring it", v2, v3, v4, v5);
}

void sub_1000236C4()
{
  sub_100022790(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Migrated record %{public}@ known to the server has no position!", v2, v3, v4, v5);
}

void sub_100023794()
{
  sub_100008064();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100023804(void *a1)
{
  v2 = a1;
  sub_10000807C();
  v3 = WBDescriptionForBookmarkSyncModifiedAttributes();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10002389C(void *a1)
{
  v2 = a1;
  sub_10000807C();
  v3 = WBDescriptionForBookmarkSyncModifiedAttributes();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100023934()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Trying to read the value for a key even though the key was not modified locally in record. Record name: <%{public}@>, key: %{public}@.");
}

void sub_10002399C()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Trying to read the value for a key on a record that was deleted locally. Record name: <%{public}@>, key: %{public}@.");
}

void sub_100023A04()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Trying to read the transformed value for a key even though the key was not modified locally in record. Record name: <%{public}@>, key: %{public}@.");
}

void sub_100023A6C()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Trying to read the transformed value for a key on a record that was deleted locally. Record name: <%{public}@>, key: %{public}@.");
}

void sub_100023AD4()
{
  sub_100022764(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Trying to read the value of ParentFolder on a record whose parent was not updated locally. Record name: <%{public}@>.", v2, v3, v4, v5);
}

void sub_100023B3C()
{
  sub_100022764(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Trying to read the value of ParentFolder on a record that was deleted locally. Record name: <%{public}@>.", v2, v3, v4, v5);
}

void sub_100023BA4()
{
  sub_100022764(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Trying to read the value of IdentityHash on a record whose Title or URL was not updated locally. Record name: <%{public}@>.", v2, v3, v4, v5);
}

void sub_100023C0C()
{
  sub_100022764(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Trying to read the value of IdentityHash on a record that was deleted locally. Record name: <%{public}@>.", v2, v3, v4, v5);
}

void sub_100023C74(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100023D0C(void *a1)
{
  v2 = a1;
  sub_10000807C();
  v3 = WBDescriptionForBookmarkSyncModifiedAttributes();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100023DA4()
{
  sub_100022790(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Non-built-in record with name %{public}@ does not have a position", v2, v3, v4, v5);
}

void sub_100023E74()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023EB0()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023EEC()
{
  sub_100008070();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023F28()
{
  sub_100008070();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023F64()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226A0();
  sub_10002280C(&_mh_execute_header, v0, v1, "Merging parent and position for record Name: %{public}@, local and remote generations are equal: %{public}@");
}

void sub_100023FCC()
{
  sub_100022764(__stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v0, v1, "Local and remote minimum API versions differ, even though generations are the same. Record name: %{public}@.", v2, v3, v4, v5);
}

void sub_100024034()
{
  sub_100022764(__stack_chk_guard);
  sub_1000226A0();
  sub_10002280C(&_mh_execute_header, v0, v1, "Merging minimum API version for record name: %{public}@, local and remote generations are equal: %{public}@");
}

void sub_10002409C()
{
  sub_100008064();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_10002410C(char a1)
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Zone Sync Requirement"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"CKShare"];
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v3 addObject:@"Participant Extras"];
  }

LABEL_5:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_100024498(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  [*(a1 + 32) addObject:v5];
}

void sub_100024888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000248A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100024F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100024F44(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 integerValue];
  if (v5 > [objc_opt_class() currentAPIVersion])
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) |= [v6 unsignedIntegerValue];
  }
}

void sub_100025430(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  if (v4 == *(v5 + 416))
  {
    v9 = v2;
    v10 = v3;
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not updating push topic", v8, 2u);
    }
  }

  else
  {
    *(v5 + 416) = v4;
    v7 = *(a1 + 32);

    [v7 updatePushTopicSubscriptions];
  }
}

void sub_100026048(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000260D0;
  v2[3] = &unk_100131990;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000261D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D23FC(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving extension state for the current device to CloudKit", v12, 2u);
  }

  v4 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v5 = [CloudExtensionDevice cloudExtensionDeviceWithDictionaryRepresentation:*(a1 + 32) extensionSettingsDictionaryForDevice:*(a1 + 40) cloudExtensionsRecordZoneID:v4];
  v7 = v5;
  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = [v5 deviceUUIDString];
    v10 = [CloudExtensionState cloudExtensionStatesFromStatesDictionaryRepresentation:v8 owningDeviceUUIDString:v9 cloudExtensionsRecordZoneID:v4];
    [v7 setCloudExtensionStates:v10];

    [*(a1 + 48) _saveCloudExtensionDevice:v7 shouldUpdateExtensionStatesWhenSavingDevice:1 completionHandler:*(a1 + 56)];
  }

  else
  {
    v11 = sub_1000D23FC(0, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002BD38();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000263E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D23FC(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving current device excluding extension states to CloudKit", v8, 2u);
  }

  v4 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v6 = [CloudExtensionDevice cloudExtensionDeviceWithDictionaryRepresentation:*(a1 + 32) extensionSettingsDictionaryForDevice:0 cloudExtensionsRecordZoneID:v4];
  if (v6)
  {
    [*(a1 + 40) _saveCloudExtensionDevice:v6 shouldUpdateExtensionStatesWhenSavingDevice:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v7 = sub_1000D23FC(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002BDB0();
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_1000265C0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  *(*(a1 + 32) + 88) = *(a1 + 56);
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  [*(*(a1 + 32) + 16) openDatabaseIfNecessary];
  v7 = *(a1 + 32);

  return [v7 _continueSavingExtensionStates];
}

void sub_10002694C(uint64_t a1)
{
  [*(a1 + 32) _suspendFetchingQueue];
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000269EC;
  v2[3] = &unk_100132470;
  v2[4] = *(a1 + 32);
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void sub_1000269EC(uint64_t a1)
{
  [*(a1 + 32) set_cloudExtensionStoreError:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(v2 + 80) deviceUUIDString];
  v5 = *(*(a1 + 32) + 88);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026AD4;
  v6[3] = &unk_100132448;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 loadCloudExtensionDeviceWithUUIDString:v4 includeCloudExtensionStates:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
}

void sub_100026AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026B8C;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100026B8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudExtensionStoreError];
    v6 = v4;
    if (v4)
    {
      v7 = sub_1000D23FC(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002BE28(v7);
      }

      [v3 _resumeFetchingQueue];
      [v3 _handleSevereSQLiteErrorWhileMergingExistingDevice:v6];
    }

    else
    {
      v8 = [v3 _resumeFetchingQueue];
      if (*(a1 + 32))
      {
        v10 = *(v3 + 88);
        v11 = sub_1000D23FC(v8, v9);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
        if (v10 == 1)
        {
          if (v12)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Merging device and extension states into existing device from SQLite database", buf, 2u);
          }

          v13 = [*(a1 + 32) updateFromCloudExtensionDevice:v3[10]];
          v14 = v3[14];
          v3[14] = v13;
        }

        else
        {
          if (v12)
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Merging device into existing device from SQLite database", v17, 2u);
          }

          [*(a1 + 32) updateFromCloudExtensionDeviceWithoutUpdatingExtensionStates:v3[10]];
        }

        objc_storeStrong(v3 + 10, *(a1 + 32));
      }

      else
      {
        v15 = sub_1000D23FC(v8, v9);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16[0] = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No existing device found in SQLite database", v16, 2u);
        }
      }

      [v3 _continueSavingExtensionStates];
    }
  }
}

void sub_100026FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100026FDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027094;
  v7[3] = &unk_100132420;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v9);
}

void sub_100027094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    if (v6)
    {
      v7 = sub_1000D23FC(WeakRetained, v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002BEB8(v5, v7);
      }

      objc_storeStrong(v4 + 15, *v5);
    }

    v8 = sub_1000D23FC(WeakRetained, v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Finished saving extension state record batch", v9, 2u);
    }

    [v4 _saveNextRecordBatchCreatingCloudExtensionsZoneIfMissing:0];
  }
}

void sub_1000272B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000272DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027394;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100027394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v7 = sub_1000D23FC(WeakRetained, v3);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002BF40(v5, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done deleting obsolete extension state records from CloudKit", v9, 2u);
    }

    [v4 _continueSavingExtensionStates];
  }
}

void sub_10002752C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027548(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027600;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100027600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v7 = sub_1000D23FC(WeakRetained, v3);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002BFC8(v5, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done updating SQLite store from CloudKit after saving extension state", v9, 2u);
    }

    [v4 _continueSavingExtensionStates];
  }
}

void sub_100027820(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(*(a1 + 32) + 120);
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_1000278C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027948;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100027E78(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D23FC(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching extension state data from CloudKit", buf, 2u);
  }

  [*(a1 + 32) _suspendFetchingQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027F50;
  v5[3] = &unk_100131990;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_100027F50(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 192), *(*(a1 + 32) + 184));
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;

  *(*(a1 + 32) + 224) = 1;
  v5 = *(a1 + 32);

  return [v5 _beginFetchingExtensionStates];
}

void sub_100028154(uint64_t a1)
{
  [*(a1 + 32) _suspendFetchingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028204;
  block[3] = &unk_100131A20;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100028204(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  *(v3 + 240) = v2;

  *(*(a1 + 32) + 224) = 2;
  v5 = *(a1 + 32);

  return [v5 _beginFetchingExtensionStates];
}

void sub_100028544(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100028560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[216] = 1;
    v2 = *(WeakRetained + 26);
    *(WeakRetained + 25) = 0;
    *(WeakRetained + 26) = 0;
    v7 = WeakRetained;

    v3 = *(v7 + 31);
    *(v7 + 31) = 0;

    v4 = *(v7 + 32);
    *(v7 + 32) = 0;

    v5 = *(v7 + 33);
    *(v7 + 33) = 0;

    v6 = *(v7 + 34);
    *(v7 + 34) = 0;

    [*(v7 + 2) openDatabaseIfNecessary];
    [v7 _continueFetchingExtensionStates];
    WeakRetained = v7;
  }
}

void sub_100028704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100028720(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000287D8;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000287D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = sub_1000D23FC(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished reading server change token from the SQLite database", buf, 2u);
    }

    v6 = [v4 _cloudExtensionStoreError];
    v8 = v6;
    if (v6)
    {
      v9 = sub_1000D23FC(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002C050(v9, v8);
      }

      [v4 _handleSevereSQLiteErrorWhileFetching:v8];
      goto LABEL_27;
    }

    if ([*(a1 + 32) length])
    {
      v11 = [NSKeyedUnarchiver alloc];
      v12 = *(a1 + 32);
      v33[0] = 0;
      v13 = [v11 initForReadingFromData:v12 error:v33];
      v14 = v33[0];
      v16 = v14;
      if (v14)
      {
        v17 = sub_1000D22B4(v14, v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v16 safari_privacyPreservingDescription];
          sub_10002C0E8(v18, buf, v17);
        }
      }

      v19 = [v13 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [v13 finishDecoding];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v21 = isKindOfClass;
      v23 = sub_1000D23FC(isKindOfClass, v22);
      v24 = v23;
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Found server change token data in the SQLite database", v32, 2u);
        }

        v25 = v19;
        v26 = *(v4 + 31);
        *(v4 + 31) = v25;
      }

      else
      {
        v28 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        if (v28)
        {
          sub_10002C198();
        }

        if ((*(v4 + 216) & 1) == 0)
        {
          [v4 _deleteDatabaseAndRestartFetch];

          goto LABEL_27;
        }

        v30 = sub_1000D23FC(v28, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10002C1D4();
        }

        v31 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:2 userInfo:0];
        v26 = *(v4 + 26);
        *(v4 + 26) = v31;
      }
    }

    else
    {
      v27 = sub_1000D23FC(0, v10);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "No server change token found in the SQLite database", buf, 2u);
      }
    }

    [v4 _continueFetchingExtensionStates];
LABEL_27:
  }
}

void sub_100028AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v12 = sub_1000D23FC(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v10 name];
      sub_10002C140(v13, va, v12);
    }

    objc_end_catch();
    JUMPOUT(0x100028958);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028D34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100028D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028DF8;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100028E04(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028EA0;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100028EA0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 272);
  v2 = [*(a1 + 40) recordName];
  [v1 addObject:v2];
}

void sub_100028EF8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028FDC;
  block[3] = &unk_100132588;
  v16 = *(a1 + 48);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v7;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = v6;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v15);
}

void sub_100028FDC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = sub_1000D23FC(a1, a2);
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished fetching changes from CloudKit", buf, 2u);
    }

    v15 = *(a1 + 48);
    v16 = (*(a1 + 40) + 248);
LABEL_16:
    objc_storeStrong(v16, v15);
    [*(a1 + 40) _continueFetchingExtensionStates];
    return;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10002C210(v3, v6);
  }

  if (*(a1 + 64) != 1 || (v7 = [*v3 safari_isOrContainsCloudKitMissingZoneError], !v7))
  {
    v13 = *(a1 + 40);
    if ((v13[27] & 1) == 0)
    {
      v14 = [v13 _shouldDeleteDatabaseForError:*(a1 + 32)];
      v13 = *(a1 + 40);
      if (v14)
      {
        [v13 _deleteDatabaseAndRestartFetch];
        return;
      }
    }

    v15 = *(a1 + 32);
    v16 = v13 + 26;
    goto LABEL_16;
  }

  v9 = sub_1000D23FC(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudExtensions zone before retrying fetch", buf, 2u);
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  v12 = *(v10 + 192);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100029198;
  v17[3] = &unk_1001324C0;
  objc_copyWeak(&v18, (a1 + 56));
  [v11 createCloudExtensionsRecordZoneInOperationGroup:v12 completionHandler:v17];
  objc_destroyWeak(&v18);
}

void sub_100029198(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029250;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100029250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudExtensionsZoneCompletedWithError:*(a1 + 32)];
}

void sub_1000293D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000293EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] openDatabaseIfNecessary];
    [v2 _continueFetchingExtensionStates];
    WeakRetained = v2;
  }
}

void sub_1000295D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000295F4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029684;
  block[3] = &unk_1001324E8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100029684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _cloudExtensionStoreError];
    v5 = sub_1000D23FC(v3, v4);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002C338(v6);
      }

      [v2 _handleSevereSQLiteErrorWhileFetching:v3];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished removing deleted records from SQLite", v8, 2u);
      }

      v7 = v2[34];
      v2[34] = 0;

      [v2 _continueFetchingExtensionStates];
    }
  }
}

void sub_100029920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029944(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000299DC;
  v3[3] = &unk_100132600;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_1000299DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[32];
    WeakRetained[32] = 0;

    v5 = v3[33];
    v3[33] = 0;

    v6 = [v3 _cloudExtensionStoreError];
    v8 = v6;
    if (v6)
    {
      v9 = sub_1000D23FC(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002C3C8(v9);
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v8];
    }

    else
    {
      v10 = *(a1 + 40);
      v11 = sub_1000D23FC(0, v7);
      v12 = v11;
      if (v10 == 101)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Finished saving modified device and extension state records to the SQLite database", v13, 2u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10002C458();
      }

      [v3 _continueFetchingExtensionStates];
    }
  }
}

void sub_100029C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029C7C(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100029D14;
  v3[3] = &unk_100132600;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_100029D14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudExtensionStoreError];
    v6 = v4;
    if (v4)
    {
      v7 = sub_1000D23FC(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002C568(v7);
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v6];
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = sub_1000D23FC(0, v5);
      v10 = v9;
      if (v8 == 101)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Done saving server change token to SQLite", v11, 2u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002C5F8();
      }

      [v3 _continueFetchingExtensionStates];
    }
  }
}

void sub_100029F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A028;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10002A028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudExtensionStoreError];
    v6 = sub_1000D23FC(v4, v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10002C670(v7);
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v4];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Finished loading devices and extension states from SQLite", v8, 2u);
      }

      objc_storeStrong(v3 + 35, *(a1 + 32));
      [v3 _continueFetchingExtensionStates];
    }
  }
}

id sub_10002A2B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  *(v2 + 224) = 0;
  if (v3 == 2)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 192);
    *(v14 + 192) = 0;

    v4 = objc_retainBlock(*(*(a1 + 32) + 240));
    v16 = *(a1 + 32);
    v17 = *(v16 + 240);
    *(v16 + 240) = 0;

    if (v4)
    {
      v4[2](v4, *(a1 + 40));
    }
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    v4 = *(*(a1 + 32) + 280);
    v5 = *(a1 + 32);
    v6 = *(v5 + 280);
    *(v5 + 280) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 192);
    *(v7 + 192) = 0;

    v9 = objc_retainBlock(*(*(a1 + 32) + 232));
    v10 = *(a1 + 32);
    v11 = *(v10 + 232);
    *(v10 + 232) = 0;

    if (v9)
    {
      v12 = [*(a1 + 32) _cloudExtensionStatesDictionaryFromCloudExtensionDevices:v4];
      v13 = [*(a1 + 32) _cloudExtensionDevicesDictionaryFromCloudExtensionDevices:v4];
      v9[2](v9, v12, v13, *(a1 + 40));
    }
  }

LABEL_9:
  v18 = *(a1 + 32);

  return [v18 _resumeFetchingQueue];
}

void sub_10002A404(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A488;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10002A768(uint64_t a1)
{
  [*(a1 + 32) _suspendSavingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A818;
  block[3] = &unk_100131A20;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10002A818(uint64_t a1)
{
  v2 = [*(a1 + 32) _recordIDsFromRecordNames:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  v5 = objc_retainBlock(*(a1 + 48));
  v6 = *(a1 + 32);
  v7 = *(v6 + 144);
  *(v6 + 144) = v5;

  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = 0;

  [*(*(a1 + 32) + 16) openDatabaseIfNecessary];
  v10 = *(a1 + 32);

  return [v10 _continueDeleting];
}

void sub_10002AA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002AAA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002AB5C;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10002AB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v7 = sub_1000D23FC(WeakRetained, v3);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002C808(v5, v8);
      }

      objc_storeStrong(v4 + 20, *v5);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done deleting extension device records from CloudKit", v9, 2u);
    }

    [v4 _continueDeleting];
  }
}

void sub_10002AD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002AD20(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002ADD8;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10002ADD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v7 = sub_1000D23FC(WeakRetained, v3);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002C890(v5, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done updating SQLite store from CloudKit after deleting extension device records", v9, 2u);
    }

    [v4 _continueDeleting];
  }
}

void sub_10002AFD4(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 144));
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(*(a1 + 32) + 160);
  v5 = *(a1 + 32);
  v6 = *(v5 + 160);
  *(v5 + 160) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_10002B078(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B0FC;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10002B9FC(id a1)
{
  v3[0] = WBSSafariExtensionStateEnabledKey;
  v3[1] = WBSSafariExtensionStateEnabledByUserGestureKey;
  v3[2] = WBSSafariExtensionStateLastEnabledModificationDate;
  v3[3] = WBSSafariExtensionStateProfileIdentifier;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_100153E68;
  qword_100153E68 = v1;
}

void sub_10002BC8C(id a1)
{
  v1 = [(CloudKitSQLiteStore *)CloudExtensionSQLiteStore databaseURLForFilename:@"CloudExtensions.db"];
  v2 = qword_100153E78;
  qword_100153E78 = v1;
}

void sub_10002BCFC()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002BE28(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while merging device with existing device: %{public}@", v6, v7, v8, v9);
}

void sub_10002BEB8(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Did fail to save extension state record batch with error: %{public}@", v6, v7, v8, v9);
}

void sub_10002BF40(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to delete obsolete extension state records with error: %{public}@", v6, v7, v8, v9);
}

void sub_10002BFC8(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Updating SQLite store from CloudKit after saving extension state failed with error: %{public}@", v6, v7, v8, v9);
}

void sub_10002C050(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while reading server change token: %{public}@", v7, v8, v9, v10);
}

void sub_10002C0E8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read from server change token data: %{public}@", buf, 0xCu);
}

void sub_10002C140(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to decode server change token with exception: %{public}@", buf, 0xCu);
}

void sub_10002C198()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C1D4()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C210(uint64_t a1, void *a2)
{
  v3 = sub_100008088(a1, a2);
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to fetch changes with error: %{public}@", v7, v8, v9, v10);
}

void sub_10002C2A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to create CloudExtensions zone when fetching changes with error: %{public}@", v7, v8, v9, v10);
}

void sub_10002C338(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while deleting records: %{public}@", v6, v7, v8, v9);
}

void sub_10002C3C8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while saving records: %{public}@", v6, v7, v8, v9);
}

void sub_10002C4D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to archive server change token: %{public}@", v7, v8, v9, v10);
}

void sub_10002C568(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while saving server change token: %{public}@", v6, v7, v8, v9);
}

void sub_10002C670(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while loading records: %{public}@", v6, v7, v8, v9);
}

void sub_10002C700(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() recordType];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Fetched an unrecognized record from CloudKit of type %{public}@", v6, v7, v8, v9);
}

void sub_10002C790()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C7CC()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C808(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to delete extension device records with error: %{public}@", v6, v7, v8, v9);
}

void sub_10002C890(uint64_t a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Updating SQLite store from CloudKit after deleting extension devices failed with error: %{public}@", v6, v7, v8, v9);
}

void sub_10002C918(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error: %{public}@", v6, v7, v8, v9);
}

_BYTE *sub_10002D444(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10002D454(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_10002D554(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_recordName];
  sub_100008064();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CKRecord in item has a different record name %{public}@ from record name of the item: %{public}@", v7, 0x16u);
}

void sub_10002D610(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordType];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Record type %{public}@ of CKRecord in item does not match the expected BookmarkList type.", v7, v8, v9, v10);
}

void sub_10002D6A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordType];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Record type %{public}@ of CKRecord in item does not match the expected BookmarkLeaf type.", v7, v8, v9, v10);
}

void sub_10002E4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v32 + 80));
  _Block_object_dispose((v33 - 208), 8);
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_10002E508(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(a1, a2);
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 ckShortDescription];
      v9 = [*(a1 + 40) safari_logDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "•*• Successfully updated presence to tabRecordID: %{public}@, %{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003113C(a1, v5);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10002E63C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v21 = sub_10002E984;
    v22 = &unk_100132750;
    v24 = *(a1 + 64);
    v25 = &v26;
    v23 = WeakRetained;
    v4 = v20;
    os_unfair_lock_lock(v3 + 14);
    v21(v4);

    os_unfair_lock_unlock(v3 + 14);
    v5 = [v3 _clearRetryHandlerIsCancelling:1];
    if (v27[3])
    {
      dispatch_suspend(*(v3 + 1));
      v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) ckShortDescription];
        v11 = [*(a1 + 40) safari_logDescription];
        *buf = 138543618;
        v31 = v10;
        v32 = 2114;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "•*• Starting updating presence to tabRecordID: %{public}@, %{public}@", buf, 0x16u);
      }

      v12 = *(a1 + 40);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10002EADC;
      v16[3] = &unk_1001327A0;
      v19 = *(a1 + 56);
      v16[4] = v3;
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      [v3 _cacheUserRecordIDIfNeededInOperationGroup:v12 withCompletionHandler:v16];
    }

    else
    {
      v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v5, v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(a1 + 32) ckShortDescription];
        v15 = [*(a1 + 40) safari_logDescription];
        *buf = 138543618;
        v31 = v14;
        v32 = 2114;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "•*• Cancelling updating presence to tabRecordID: %{public}@, %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10002E954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002E984(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002EA20;
  v2[3] = &unk_100132728;
  v3 = *(a1 + 48);
  v2[4] = *(a1 + 32);
  os_unfair_lock_lock(v1 + 8);
  sub_10002EA20(v2);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_10002EA20(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2 && (v3 = a1[4], v4 = *(v3 + 48), v4 == v2))
  {
    v5 = *(v3 + 40);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v3 = a1[4];
      v4 = *(v3 + 48);
    }

    *(v3 + 48) = 0;

    v6 = a1[4];
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    *(a1[4] + 32) = dispatch_time(0, 3000000000);
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

void sub_10002EADC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002EBC8;
    v8[3] = &unk_100132778;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8[4] = *(a1 + 32);
    v9 = v6;
    [v3 _updatePresenceInTabIfNeededWithRecordID:v4 inOperationGroup:v5 isRetry:0 completionHandler:v8];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v7 = *(*(a1 + 32) + 8);

    dispatch_resume(v7);
  }
}

void sub_10002EBC8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_10002EC10(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002ECB8;
  v2[3] = &unk_1001327F0;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  os_unfair_lock_lock(v1 + 8);
  sub_10002ECB8(v2);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_10002ECB8(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 40))
  {
    (*(*(a1 + 32) + 16))();
    v1 = *(*(a1 + 40) + 8);
    v3 = *(v1 + 40);
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 40) = 0;
}

void sub_10002ED24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    dispatch_block_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v2 = *(a1 + 32);
    v5 = *(v2 + 40);
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 40) = 0;

  v6 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v9 = *(*(a1 + 32) + 32);
  v10 = dispatch_time(0, 0);
  v11 = *(*(a1 + 32) + 8);
  if (v9 <= v10)
  {
    dispatch_async(v11, *(*(*(a1 + 40) + 8) + 40));
    *(*(a1 + 32) + 32) = dispatch_time(0, 3000000000);
  }

  else
  {
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    dispatch_source_set_event_handler(*(*(a1 + 32) + 40), *(*(*(a1 + 40) + 8) + 40));
    dispatch_source_set_timer(*(*(a1 + 32) + 40), *(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v15 = *(*(a1 + 32) + 40);

    dispatch_activate(v15);
  }
}

void sub_10002EF68(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v7, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Successfully cached UserRecordID", &v16, 2u);
    }

    objc_storeStrong((*(a1 + 32) + 80), a2);
    v11 = [*(a1 + 32) _sharedPresenceRecordNameForUserRecordID:v6];
    v12 = *(a1 + 32);
    v13 = *(v12 + 88);
    *(v12 + 88) = v11;
  }

  else if (v10)
  {
    v14 = v9;
    v15 = [v7 safari_privacyPreservingDescription];
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Could not cache UserRecordID, the user has probably not interacted with the server or it is not possible to communicate with the serve, giving up, error: %{public}@", &v16, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002F238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002F25C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v8 || (v10 = [v8 safari_matchesErrorDomain:CKErrorDomain andCode:11], (v10 & 1) != 0))
    {
      v12 = [v7 objectForKeyedSubscript:@"TabGroupTab"];
      v14 = v12;
      if (*(a1 + 32) | v12)
      {
        if (v7)
        {
          v15 = [v7 objectForKeyedSubscript:@"Lock"];
          v16 = [v15 integerValue];

          if (v16)
          {
            if (v16 != 1)
            {
LABEL_26:

              goto LABEL_27;
            }

            if (*(a1 + 64) != 1)
            {
              [WeakRetained _checkPrivatePresenceLockValidityWithRecord:v7 toUpdatePresenceInTabWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
              goto LABEL_26;
            }

            v19 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *v26 = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Presence record is still locked after retry; giving up", v26, 2u);
            }

            v20 = *(*(a1 + 48) + 16);
LABEL_15:
            v20();
            goto LABEL_26;
          }

          v24 = [v14 recordID];
          v25 = [v24 isEqual:*(a1 + 32)];

          if (v25)
          {
            [WeakRetained _performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
            goto LABEL_26;
          }

          objc_storeStrong(WeakRetained + 9, a2);
        }

        else
        {
          v23 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v12, v13);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Private presence record is missing, create it", v27, 2u);
          }
        }

        [WeakRetained _acquireLockToSetPresenceInTabWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) isRetry:*(a1 + 64) completionHandler:*(a1 + 48)];
        goto LABEL_26;
      }

      v21 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v12, v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Presence update not needed because the old and new presence are both nil", buf, 2u);
      }

      v20 = *(*(a1 + 48) + 16);
      goto LABEL_15;
    }

    v22 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v10, v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000311F8(v22);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_27:
}

void sub_10002F74C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_5:
    v12 = *(*(a1 + 56) + 16);
    goto LABEL_6;
  }

  if (v7)
  {
    v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100031290(v11);
    }

    goto LABEL_5;
  }

  if (([v6 isExpired] & 1) != 0 || (objc_msgSend(v6, "expirationDate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceNow"), v15 = v14, v13, v15 <= 600.0))
  {
    [v6 setExpirationAfterTimeInterval:&off_10013C2B0];
    v16 = v10[12];
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002F8EC;
    v19[3] = &unk_1001328B8;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    [v16 saveOrLoadRecord:v6 inDatabase:v17 operationGroup:v18 completionHandler:v19];

    goto LABEL_7;
  }

  v12 = *(*(a1 + 56) + 16);
LABEL_6:
  v12();
LABEL_7:
}

void sub_10002F8EC(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v10 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v8, v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100031328(a1, v11);
    }
  }

  else
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (a3)
    {
      if (!v12)
      {
        goto LABEL_10;
      }

      v13 = *(a1 + 32);
      v14 = v11;
      v15 = [v13 ckShortDescription];
      v19 = 138543362;
      v20 = v15;
      v16 = "Did prolong lifetime of shared presence record for tabRecordID: %{public}@";
    }

    else
    {
      if (!v12)
      {
        goto LABEL_10;
      }

      v17 = *(a1 + 32);
      v14 = v11;
      v15 = [v17 ckShortDescription];
      v19 = 138543362;
      v20 = v15;
      v16 = "Failed to prolong lifetime of shared presence record for tabRecordID: %{public}@ because it was updated before we could save it";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v16, &v19, 0xCu);
  }

LABEL_10:
  if (v8)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v18);
}

void sub_10002FE00(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_15:
    (*(*(a1 + 56) + 16))();
    goto LABEL_24;
  }

  if (a3)
  {
    v12 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Did acquire lock to update presence", v24, 2u);
    }

    v13 = *(a1 + 32);
    if (!v13)
    {
      v14 = [v11[9] recordChangeTag];
      v15 = [v14 length];

      if (v15)
      {
        v13 = [v11[9] copy];
      }

      else
      {
        v13 = 0;
      }
    }

    [v11 _replaceSharedPresenceRecordWithTabRecordID:*(a1 + 40) currentPrivatePresenceRecord:v7 previousPrivatePresenceRecord:v13 inOperationGroup:*(a1 + 48) isRetry:*(a1 + 72) completionHandler:*(a1 + 56)];

    goto LABEL_24;
  }

  if (!v7)
  {
    v19 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100031448(v19);
    }

    goto LABEL_15;
  }

  if (*(a1 + 32))
  {
    v16 = *(a1 + 72);
    v17 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v10);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16 == 1)
    {
      if (v18)
      {
        sub_100031414();
      }

      goto LABEL_15;
    }

    if (v18)
    {
      sub_1000313E0();
    }

    [v11 _setUpRetryTimerToSetPresenceInTabWithRecordID:*(a1 + 40) inOperationGroup:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v20 = [v7 objectForKeyedSubscript:@"Lock"];
    v21 = [v20 integerValue];

    if (v21 == 1)
    {
      [v11 _checkPrivatePresenceLockValidityWithRecord:v7 toUpdatePresenceInTabWithRecordID:*(a1 + 40) inOperationGroup:*(a1 + 48) completionHandler:*(a1 + 56)];
    }

    else if (!v21)
    {
      v22 = *(a1 + 40);
      v23 = [v7 copy];
      [v11 _acquireLockUsingPrivatePresenceRecord:v7 toSetPresenceInTabWithRecordID:v22 previousPrivatePresenceRecord:v23 inOperationGroup:*(a1 + 48) isRetry:0 completionHandler:*(a1 + 56)];
    }
  }

LABEL_24:
}

void sub_100030518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_100030570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v6);
    v9 = v8;
    if (v4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000314E0(a1, v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did delete old presence record with ID %{public}@", &v11, 0xCu);
    }

    [v7 _createSharedPresenceRecordWithTabRecordID:*(a1 + 40) currentPrivatePresenceRecord:*(a1 + 48) inOperationGroup:*(a1 + 56) isRetry:*(a1 + 80) completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100030954(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Did successfully create shared presence record.", v14, 2u);
      }
    }

    else
    {
      v12 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(WeakRetained, v9);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (a2)
      {
        if (v13)
        {
          sub_10003158C();
        }
      }

      else if (v13)
      {
        sub_1000315C0(v12);
      }
    }

    [v10 _releaseLockForPrivatePresenceRecord:*(a1 + 32) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100030C18(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v10 = v8;
  if (a3)
  {
    v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Did successfully release lock private presence record.", v17, 2u);
    }
  }

  else
  {
    v12 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v8, v9);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v13)
      {
        sub_100031658();
      }
    }

    else if (v13)
    {
      sub_10003168C(v12);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v7;
  v16 = v7;

  (*(*(a1 + 40) + 16))();
}

void sub_100030EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_object_t *)WeakRetained _clearRetryHandlerIsCancelling:0];
    dispatch_suspend(v3[1]);
    [(dispatch_object_t *)v3 _updatePresenceInTabIfNeededWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) isRetry:1 completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003113C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 ckShortDescription];
  v6 = [*(a1 + 40) safari_logDescription];
  LODWORD(v13) = 138543618;
  *(&v13 + 4) = v5;
  sub_10003112C();
  sub_100022738(&_mh_execute_header, v7, v8, "•*• Failed to update presence to tabRecordID: %{public}@, %{public}@", v9, v10, v11, v12, v13, DWORD2(v13));
}

void sub_1000311F8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100031290(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100031328(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 ckShortDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_privacyPreservingDescription];
  LODWORD(v11) = 138543618;
  *(&v11 + 4) = v2;
  sub_10003112C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to prolong lifetime of shared presence record for tabRecordID: %{public}@, error: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_100031448(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000314E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000315C0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003168C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100031838(id a1)
{
  v1 = objc_alloc_init(CloudBookmarkCompressedJSONValueTransformer);
  v2 = qword_100153E88;
  qword_100153E88 = v1;
}

void sub_1000318B8(id a1)
{
  v1 = [[CloudBookmarkCompressedJSONValueTransformer alloc] initWithRootJSONObjectType:objc_opt_class()];
  v2 = qword_100153E98;
  qword_100153E98 = v1;
}

void sub_10003195C(id a1)
{
  v1 = [[CloudBookmarkCompressedJSONValueTransformer alloc] initWithRootJSONObjectType:objc_opt_class()];
  v2 = qword_100153EA8;
  qword_100153EA8 = v1;
}

void sub_100031CA4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a2;
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = objc_opt_class();
  v5 = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unexpected JSON root type, expecting: %{public}@ instead got: %{public}@", &v6, 0x16u);
}

void sub_100032774(void *a1)
{
  v2 = a1[4];
  v3 = +[NSNull null];
  LODWORD(v2) = [v2 isEqual:v3];

  v4 = a1[5];
  v5 = a1[6];
  if (v2)
  {
    v9 = 0;
    [v4 removeItemAtURL:v5 error:&v9];
    v6 = v9;
  }

  else
  {
    v7 = a1[4];
    v8 = 0;
    [v4 safari_replaceItemAtURL:v5 withItemFromURL:v7 error:&v8];
    v6 = v8;
  }

  (*(a1[7] + 16))();
}

id sub_1000328C4(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults safari_cloudBookmarksDefaults];
  v3 = [v2 objectForKey:@"CloudBookmarksOverrideDeviceIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v1 copyDeviceIdentifier];
  }

  v5 = v4;

  return v5;
}

void sub_100032958(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    [v5 resetDeviceIdentifier];
    v5 = v6;
  }

  [v5 setLocalCloudKitMigrationState:a2 database:a1];
}

void sub_1000330C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v10 name];
      sub_1000331CC(v13, va, v12);
    }

    objc_end_catch();
    JUMPOUT(0x10003303CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100033174(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read from cloud bookmark transformed value data: %{public}@", buf, 0xCu);
}