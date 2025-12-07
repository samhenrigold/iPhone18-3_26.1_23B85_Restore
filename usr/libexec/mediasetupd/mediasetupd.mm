uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100033238();
  }

  v1 = NSTemporaryDirectory();
  v2 = sub_100030FE4(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mediasetupd launching", v6, 2u);
  }

  v3 = +[MSDManager sharedInstance];
  objc_autoreleasePoolPop(v0);
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  return 0;
}

void sub_1000017D8(uint64_t a1)
{
  v5 = +[MSDCloudManager sharedManager];
  v2 = +[MSDHomeManager sharedManager];
  v3 = [objc_alloc(*(a1 + 32)) initWithCloudDataManager:v5 homeManager:v2];
  v4 = qword_100059A18;
  qword_100059A18 = v3;
}

void sub_100001A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const __CFString *MSDDataRefreshReasonToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_100050908[a1];
  }
}

void sub_100001A64(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    LOBYTE(v6[3]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v6 + 2);
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, a2, v8);
    }
  }
}

void sub_100001CE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Hit error when trying to fetch subscription %@", &v16, 0xCu);
    }

    if (([v7 CKErrorHasErrorCode:3] & 1) != 0 || (objc_msgSend(v7, "CKErrorHasErrorCode:", 4) & 1) != 0 || objc_msgSend(v7, "isErrorFatal"))
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))(v9, 0, v7);
      }
    }

    else
    {
      [*(a1 + 40) _addSubscriptionWithIdentifier:*(a1 + 32) completion:*(a1 + 48)];
    }
  }

  else
  {
    v10 = [v5 objectForKey:*(a1 + 32)];
    v11 = sub_100030FE4(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "There exists a subscription for %@", &v16, 0xCu);
      }

      v14 = *(a1 + 48);
      if (v14)
      {
        (*(v14 + 16))(v14, 1, 0);
      }
    }

    else
    {
      if (v12)
      {
        v15 = *(a1 + 32);
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding subscription for %@", &v16, 0xCu);
      }

      [*(a1 + 40) _addSubscriptionWithIdentifier:*(a1 + 32) completion:*(a1 + 48)];
    }
  }
}

void sub_10000210C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 count];
  v9 = sub_100030FE4(v8);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138477827;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Subscription saved %{private}@", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000022A0(v7, v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v6 != 0, v7);
  }
}

void sub_1000022A0(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save Subscription, %{private}@", &v2, 0xCu);
}

uint64_t sub_1000023D8(uint64_t a1)
{
  qword_100059A30 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

uint64_t sub_100002E3C(uint64_t a1)
{
  qword_100059A40 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100002F0C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100002F34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create NSData object, %@", &v2, 0xCu);
}

void sub_100003048(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error unarchiving object for key %@, %@", &v3, 0x16u);
}

void sub_100003890(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[CADisplay mainDisplay];
    v3[2] = [v2 pointScale];

    WeakRetained = v3;
  }
}

void sub_100003FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003FE8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v9 = sub_100030FE4(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100004814();
    }

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000425C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [a3 statusCode];
  if (!v7 || v8)
  {
    v13 = sub_100030FE4(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100004884();
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v12 = *(v14 + 16);
      goto LABEL_13;
    }
  }

  else
  {
    if (v9 == 200)
    {
      v10 = sub_100030FE4(200);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully fetched data from URL", v15, 2u);
      }
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);
LABEL_13:
      v12();
    }
  }
}

void sub_1000045B4()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100004664(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 path];
  sub_1000045A8();
  v7 = 2113;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error creating directory for icon file path: %{private}@, %{private}@", v6, 0x16u);
}

void sub_100004814()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100004884()
{
  sub_1000045A8();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received error from server %@, status code %ld", v2, 0x16u);
}

void sub_100004908()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100004978()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_100004FE4(id a1, MSDDefaultsInfo *a2)
{
  v2 = a2;
  v3 = [(MSDDefaultsInfo *)v2 service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  if ([v5 isEqualToString:kAppleMusicServiceIdentifier])
  {

    v6 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v7 = [(MSDDefaultsInfo *)v2 recordType];
  v8 = [v7 isEqualToString:MSServiceAccountRecordType];

  if (v8)
  {
    v3 = [(MSDDefaultsInfo *)v2 service];
    v6 = [v3 serviceID];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

id sub_1000050D8(id a1, MSDDefaultsInfo *a2)
{
  v2 = a2;
  v3 = [(MSDDefaultsInfo *)v2 service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  if ([v5 isEqualToString:kAppleMusicServiceIdentifier])
  {

    v6 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v7 = [(MSDDefaultsInfo *)v2 recordType];
  v8 = [v7 isEqualToString:MSServiceAccountRecordType];

  if (v8)
  {
    v3 = [(MSDDefaultsInfo *)v2 service];
    v6 = [v3 serviceID];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

uint64_t sub_1000051CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSServiceAccountRecordType])
  {
    v5 = [v3 service];
    v6 = [v5 serviceID];
    v7 = [*(a1 + 32) service];
    v8 = [v7 serviceID];
    if ([v6 isEqual:v8])
    {
      v9 = [v3 service];
      v10 = [v9 updateListeningHistoryEnabled];
      v11 = [*(a1 + 32) service];
      v12 = v10 ^ [v11 updateListeningHistoryEnabled];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1000052E0(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  v11 = [v2 copy];

  v3 = [*(a1 + 32) service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  v6 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v5];

  v7 = [*(a1 + 32) homeID];
  v8 = [*(a1 + 32) homeUserID];
  [v11 populateMediaService:v6 homeID:v7 homeUserID:v8];

  v9 = +[MSServiceUpdatedHandler shared];
  v10 = [*(a1 + 32) homeUserID];
  [v9 mediaServiceChanged:v11 homeUserID:v10];
}

void sub_1000054C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000055F0;
  v10[3] = &unk_100050A98;
  v5 = v3;
  v11 = v5;
  v6 = [v4 na_firstObjectPassingTest:v10];
  if (v6)
  {
    v7 = dispatch_time(0, 500000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000568C;
    v8[3] = &unk_100050AC0;
    v9 = v6;
    dispatch_after(v7, &_dispatch_main_q, v8);
  }
}

id sub_1000055F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSServiceAccountRecordType])
  {
    v5 = [v3 service];
    v6 = [v5 serviceID];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10000568C(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  v11 = [v2 copy];

  v3 = [*(a1 + 32) service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  v6 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v5];

  v7 = [*(a1 + 32) homeID];
  v8 = [*(a1 + 32) homeUserID];
  [v11 populateMediaService:v6 homeID:v7 homeUserID:v8];

  v9 = +[MSServiceUpdatedHandler shared];
  v10 = [*(a1 + 32) homeUserID];
  [v9 mediaServiceChanged:v11 homeUserID:v10];
}

void sub_10000586C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000599C;
  v10[3] = &unk_100050A98;
  v5 = v3;
  v11 = v5;
  v6 = [v4 na_firstObjectPassingTest:v10];
  if (v6)
  {
    v7 = dispatch_time(0, 500000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005A38;
    v8[3] = &unk_100050AC0;
    v9 = v6;
    dispatch_after(v7, &_dispatch_main_q, v8);
  }
}

id sub_10000599C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSServiceAccountRecordType])
  {
    v5 = [v3 service];
    v6 = [v5 serviceID];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100005A38(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  v11 = [v2 copy];

  v3 = [*(a1 + 32) service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  v6 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v5];

  v7 = [*(a1 + 32) homeID];
  v8 = [*(a1 + 32) homeUserID];
  [v11 populateMediaService:v6 homeID:v7 homeUserID:v8];

  v9 = +[MSServiceUpdatedHandler shared];
  v10 = [*(a1 + 32) homeUserID];
  [v9 mediaServiceRemoved:v11 homeUserID:v10];
}

id sub_100005DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSDefaultServiceRecordType])
  {
    v5 = [v3 homeUserID];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100005E50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSServiceAccountRecordType])
  {
    v5 = [v3 homeUserID];
    if ([v5 isEqual:*(a1 + 32)])
    {
      v6 = [v3 service];
      v7 = [v6 serviceID];
      v8 = [v7 isEqual:*(a1 + 40)];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100005F14(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  v11 = [v2 copy];

  v3 = [*(a1 + 32) service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  v6 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v5];

  v7 = [*(a1 + 32) homeID];
  v8 = [*(a1 + 32) homeUserID];
  [v11 populateMediaService:v6 homeID:v7 homeUserID:v8];

  v9 = +[MSServiceUpdatedHandler shared];
  v10 = [*(a1 + 32) homeUserID];
  [v9 defaultMediaServiceUpdated:v11 homeUserID:v10];
}

id sub_1000062B0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stopwatch];
  [v4 stop];

  v5 = [*(a1 + 32) stopwatch];
  [v5 toggleLock:1];

  [*(a1 + 32) setDidSucceed:a2];
  v6 = *(a1 + 32);

  return [MSAnalytics sendServiceEvent:v6];
}

void sub_100006338(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  v31 = v5;
  if (v5)
  {
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000CBB4();
    }
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000068F0;
  v59[3] = &unk_100050B60;
  v60 = *(a1 + 32);
  v33 = [v32 na_firstObjectPassingTest:v59];
  if (v33)
  {
    v36 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v36 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v36 setUserInitiatedRequest:0];
    v7 = dispatch_group_create();
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = sub_100006964;
    v57[4] = sub_100006974;
    v58 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v56 = 1;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v8)
    {
      v9 = *v52;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          dispatch_group_enter(v7);
          v12 = [v11 homeID];
          v13 = [v12 UUIDString];

          v14 = [v11 homeUserID];
          v15 = [v14 UUIDString];

          v16 = *(a1 + 48);
          v17 = [*(a1 + 32) bundleIdentifier];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10000697C;
          v42[3] = &unk_100050BB0;
          v49 = v57;
          v50 = v55;
          v43 = v7;
          v44 = *(a1 + 32);
          v18 = v13;
          v45 = v18;
          v19 = v15;
          v20 = *(a1 + 48);
          v46 = v19;
          v47 = v20;
          v48 = v36;
          [v16 fetchRecordZoneFor:v18 user:v19 withOptions:v48 withAttribution:v17 completion:v42];
        }

        v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v8);
    }

    v21 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006E08;
    block[3] = &unk_100050C00;
    v22 = *(a1 + 64);
    v40 = v55;
    obja = *(a1 + 48);
    v23 = *(&obja + 1);
    v24 = *(a1 + 72);
    *&v25 = v22;
    *(&v25 + 1) = v24;
    v38 = obja;
    v39 = v25;
    v41 = v57;
    dispatch_group_notify(v7, v21, block);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(v57, 8);

    goto LABEL_18;
  }

  (*(*(a1 + 64) + 16))();
  v26 = [*(a1 + 32) serviceID];
  v36 = [NSString stringWithFormat:@"Failed to retrieve publicInfo for service %@", v26];

  v28 = sub_100030FE4(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_10000CC24();
  }

  v29 = *(a1 + 72);
  if (v29)
  {
    v62 = MSUserInfoErrorStringKey;
    v63 = v36;
    v7 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v30 = [NSError errorWithDomain:MSErrorDomain code:7 userInfo:v7];
    (*(v29 + 16))(v29, 0, v30);

LABEL_18:
  }
}

void sub_1000068B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000068F0(uint64_t a1, void *a2)
{
  v3 = [a2 serviceID];
  v4 = [*(a1 + 32) serviceID];
  v5 = [v4 UUIDString];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

uint64_t sub_100006964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000697C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
    *(*(*(a1 + 88) + 8) + 24) = 0;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [*(a1 + 40) serviceID];
    v9 = [v8 UUIDString];
    v10 = MSServiceAccountRecordType;
    v11 = [v5 zoneID];
    v12 = [CKRecord createRecordWithName:v9 recordType:v10 recordZone:v11];

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v34[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    v34[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    v15 = *(a1 + 56);
    v35[0] = v13;
    v35[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v12 populateCKRecordInfo:v14 userInfo:v16 recordType:v10];

    if (v12)
    {
      v17 = *(a1 + 64);
      v33 = v12;
      v18 = [NSArray arrayWithObjects:&v33 count:1];
      v19 = [*(a1 + 40) bundleIdentifier];
      v20 = *(a1 + 72);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100006C58;
      v26[3] = &unk_100050B88;
      v27 = *(a1 + 56);
      v21 = *(a1 + 48);
      v32 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
      v22 = *(a1 + 64);
      v28 = v21;
      v29 = v22;
      v30 = v5;
      v31 = *(a1 + 32);
      [v17 modifyCKRecordWithRecordsToSave:v18 recordIDSToDelete:0 missingManateeIdentity:0 withAttribution:v19 withOptions:v20 completion:v26];
    }

    else
    {
      v23 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      *(*(*(a1 + 88) + 8) + 24) = 0;
      dispatch_group_leave(*(a1 + 32));
    }
  }
}

void sub_100006C58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 firstObject];
  v8 = sub_100030FE4(v7);
  v9 = v8;
  if (v6 || !v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC94();
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
    v12 = *(*(a1 + 80) + 8);
    v13 = v6;
    v9 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v18 = 136315651;
    v19 = "[CKDatabase(MediaService) addMediaService:usingSetupBundles:transaction:completion:]_block_invoke_2";
    v20 = 2113;
    v21 = v10;
    v22 = 2113;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Successfully saved record for user: %{private}@ home: %{private}@", &v18, 0x20u);
  }

  v14 = [v6 CKErrorHasErrorCode:112];
  if (v14)
  {
    v15 = sub_100030FE4(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD10();
    }

    v16 = *(a1 + 48);
    v17 = [*(a1 + 56) zoneID];
    [v16 handleCKErrorMissingManateeIdentity:v17 homeUserID:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_100006E08(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = objc_opt_new();
    [v2 setUserInitiatedRequest:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100006F14;
    v5[3] = &unk_100050BD8;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 refreshDatabase:0 completion:v5];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 72) + 8) + 40));
  }

  return result;
}

void sub_100006F14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100030FE4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD4C();
    }
  }

  [*(a1 + 32) releaseTransaction];
}

void sub_1000071BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v7);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 zoneID];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000072F0;
    v13[3] = &unk_100050C50;
    v16 = *(a1 + 56);
    v14 = v5;
    v15 = *(a1 + 40);
    [v8 fetchAllRecordsForRecordZoneID:v9 userInfo:v10 withOptions:v11 completion:v13];
  }
}

void sub_1000072F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v37 = 0;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000077AC;
    v51[3] = &unk_100050A98;
    v52 = *(a1 + 32);
    v38 = v5;
    v8 = [v5 na_filter:v51];
    v39 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = v8;
    v46 = [v9 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (!v46)
    {
      goto LABEL_18;
    }

    v10 = *v48;
    v11 = MSDefaultServiceRecordType;
    v44 = kCKDatabaseAccessUserInfoHomeIDKey;
    v45 = MSPlaceholderRecordType;
    v40 = kCKDatabaseAccessUserInfoHomeUserIDKey;
    v41 = *v48;
    v42 = MSDefaultServiceRecordType;
    v43 = a1;
    while (1)
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [v13 recordType];
        if (([v14 isEqualToString:v11] & 1) == 0)
        {
          v15 = [v13 recordType];
          v16 = [v15 isEqualToString:v45];

          if (v16)
          {
            continue;
          }

          v14 = [v13 homeID];
          v17 = [v14 UUIDString];
          v18 = [*(a1 + 40) objectForKey:v44];
          if ([v17 isEqualToString:v18])
          {
            [v13 homeUserID];
            v20 = v19 = v9;
            v21 = [v20 UUIDString];
            v22 = [*(a1 + 40) objectForKey:v40];
            v23 = [v21 isEqualToString:v22];

            a1 = v43;
            v11 = v42;

            v9 = v19;
            v10 = v41;

            if (!v23)
            {
              continue;
            }

            v24 = [v13 service];
            v25 = [v24 serviceID];
            v26 = [v25 UUIDString];
            v14 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v26];

            v11 = v42;
            v27 = [v13 service];
            v17 = [v27 copy];

            v28 = [v13 homeID];
            v29 = [v13 homeUserID];
            [v17 populateMediaService:v14 homeID:v28 homeUserID:v29];

            a1 = v43;
            [v39 na_safeAddObject:v17];
          }

          else
          {
          }
        }
      }

      v46 = [v9 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (!v46)
      {
LABEL_18:

        if ([v39 count])
        {
          v30 = *(a1 + 48);
          v5 = v38;
          if (v30)
          {
            (*(v30 + 16))(v30, v39, 0);
          }
        }

        else
        {
          v32 = sub_100030FE4(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10000CDF8();
          }

          v33 = *(a1 + 48);
          v5 = v38;
          if (v33)
          {
            v34 = MSErrorDomain;
            v53 = MSUserInfoErrorStringKey;
            v54 = @"Fetched records but couldn't create valid service objects";
            v35 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            v36 = [NSError errorWithDomain:v34 code:2 userInfo:v35];
            (*(v33 + 16))(v33, 0, v36);
          }
        }

        v7 = v37;
        goto LABEL_28;
      }
    }
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    (*(v31 + 16))(v31, 0, v7);
  }

LABEL_28:
}

id sub_1000077AC(uint64_t a1, void *a2)
{
  v3 = [a2 recordZoneName];
  v4 = [*(a1 + 32) zoneID];
  v5 = [v4 zoneName];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void sub_100007A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007AC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, v7);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = [CKRecordID alloc];
    v10 = MSDefaultServiceRecordName;
    v11 = [v5 zoneID];
    v12 = [v9 initWithRecordName:v10 zoneID:v11];

    v13 = [*(a1 + 32) serviceID];
    v14 = [v13 UUIDString];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007C30;
    v17[3] = &unk_100050CA0;
    v15 = *(a1 + 40);
    v18 = *(a1 + 48);
    [WeakRetained _updateDefaultService:v12 serviceID:v14 userInfo:v15 completion:v17];
  }
}

uint64_t sub_100007C30(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100007D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007DAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 || (v8 = [v6 CKErrorHasErrorCode:11], (v8 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v10 = [v5 copy];
    if (!v10)
    {
      v11 = [CKRecord alloc];
      v10 = [v11 initWithRecordType:MSDefaultServiceRecordType recordID:*(a1 + 32)];
      v12 = MSHomeParticipantHomeUserIdentifier;
      v13 = [*(a1 + 40) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      [v10 setRecordFieldForKey:v12 value:v13];
    }

    [v10 setRecordFieldForKey:MediaServiceIdentifier value:*(a1 + 48)];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007FF8;
    v17[3] = &unk_100050CF0;
    v20 = *(a1 + 56);
    v17[4] = WeakRetained;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    [WeakRetained saveRecord:v10 completionHandler:v17];

    v14 = v20;
    goto LABEL_7;
  }

  v15 = sub_100030FE4(v8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10000CEB4();
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, 0, v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([v7 CKErrorHasErrorCode:112])
  {
    v10 = [*(a1 + 32) zoneID];
    v14 = [*(a1 + 40) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [WeakRetained handleCKErrorMissingManateeIdentity:v10 homeUserID:v14];
LABEL_7:
  }
}

void sub_100007FF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF38();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 recordID];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully updated default service %@", &v14, 0xCu);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v5 != 0, v6);
  }

  if ([v6 CKErrorHasErrorCode:112])
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) zoneID];
    v13 = [*(a1 + 48) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [v11 handleCKErrorMissingManateeIdentity:v12 homeUserID:v13];
  }
}

void sub_10000842C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008458(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v7);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = [v5 zoneID];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008598;
    v13[3] = &unk_100050D40;
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 56);
    [WeakRetained fetchAllRecordsForRecordZoneID:v9 userInfo:v10 withOptions:v11 completion:v13];
  }
}

void sub_100008598(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000891C;
  v30[3] = &unk_100050B10;
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v6 = a2;
  v7 = [v6 na_firstObjectPassingTest:v30];
  v8 = sub_100030FE4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 service];
    v10 = [v9 serviceID];
    *buf = 138477827;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found default service record in cached info, serviceID: %{private}@", buf, 0xCu);
  }

  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100008A10;
  v28 = &unk_100050A98;
  v11 = v7;
  v29 = v11;
  v12 = [v6 na_firstObjectPassingTest:&v25];

  if (v12)
  {
    v13 = [v12 service];
    v14 = [v13 copy];

    v15 = [v14 serviceID];
    v16 = [v15 UUIDString];
    v17 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v16];

    v18 = [v12 homeID];
    v19 = [v12 homeUserID];
    [v14 populateMediaService:v17 homeID:v18 homeUserID:v19];

    v20 = *(a1 + 48);
    if (v20)
    {
      (*(v20 + 16))(v20, v14, v5);
    }

    goto LABEL_10;
  }

  v14 = [NSString stringWithFormat:@"Failed to find default service for user %@", *(a1 + 32), v25, v26, v27, v28];
  v21 = sub_100030FE4(v14);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10000CC24();
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = MSErrorDomain;
    v33 = MSUserInfoErrorStringKey;
    v34 = v14;
    v17 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v24 = [NSError errorWithDomain:v23 code:2 userInfo:v17];
    (*(v22 + 16))(v22, 0, v24);

LABEL_10:
  }
}

id sub_10000891C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSDefaultServiceRecordType])
  {
    v5 = [v3 homeUserID];
    v6 = [v5 UUIDString];
    if ([v6 isEqualToString:*(a1 + 32)])
    {
      v7 = [v3 recordZoneName];
      v8 = [*(a1 + 40) zoneID];
      v9 = [v8 zoneName];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100008A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSServiceAccountRecordType])
  {
    v5 = [v3 service];
    v6 = [v5 serviceID];
    v7 = [*(a1 + 32) service];
    v8 = [v7 serviceID];
    if ([v6 isEqual:v8])
    {
      v9 = [v3 homeUserID];
      v10 = [*(a1 + 32) homeUserID];
      if ([v9 isEqual:v10])
      {
        [v3 recordZoneName];
        v11 = v15 = v9;
        v12 = [*(a1 + 32) recordZoneName];
        v13 = [v11 isEqualToString:v12];

        v9 = v15;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_100008EC8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stopwatch];
  [v4 stop];

  v5 = [*(a1 + 32) stopwatch];
  [v5 toggleLock:1];

  [*(a1 + 32) setDidSucceed:a2];
  v6 = *(a1 + 32);

  return [MSAnalytics sendServiceEvent:v6];
}

void sub_100008F50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 64) + 16))();
    v14 = *(a1 + 72);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v7);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 zoneID];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000090C4;
    v15[3] = &unk_100050E08;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v16 = *(a1 + 56);
    v17 = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 32);
    v18 = v12;
    v19 = v13;
    [v8 fetchAllRecordsForRecordZoneID:v9 userInfo:v10 withOptions:v11 completion:v15];
  }
}

void sub_1000090C4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000096C4;
    v53[3] = &unk_100050D90;
    v54 = a1[4];
    v55 = a1[5];
    v56 = a1[6];
    v8 = [v5 na_firstObjectPassingTest:v53];
    if (v8)
    {
      v9 = [CKRecordID alloc];
      v10 = [v8 recordName];
      v11 = [a1[6] zoneID];
      v12 = [v9 initWithRecordName:v10 zoneID:v11];

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10000984C;
      v51[3] = &unk_100050A98;
      v52 = a1[5];
      v13 = [v5 na_firstObjectPassingTest:v51];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10000990C;
      v47[3] = &unk_100050DB8;
      v49 = a1[8];
      v14 = v12;
      v48 = v14;
      v50 = a1[9];
      v15 = objc_retainBlock(v47);
      v40 = v13;
      v16 = [v13 service];
      v17 = [v16 serviceID];
      v39 = v8;
      v18 = [v8 service];
      v19 = [v18 serviceID];
      LODWORD(v11) = [v17 isEqual:v19];

      if (v11)
      {
        v21 = sub_100030FE4(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "User is removing Default service. Updating Default service to apple music", buf, 2u);
        }

        v22 = [MSDPublicDBManager getCachedPublicInfoForServiceID:kAppleMusicServiceIdentifier];
        v23 = [CKRecordID alloc];
        v24 = MSDefaultServiceRecordName;
        v25 = [a1[6] zoneID];
        v26 = [v23 initWithRecordName:v24 zoneID:v25];

        v28 = sub_100030FE4(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          [v22 serviceID];
          v30 = v29 = v26;
          *buf = 136315394;
          v58 = "[CKDatabase(MediaService) removeMediaService:withUserInfo:completion:]_block_invoke";
          v59 = 2112;
          v60 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Updating Default service to %@", buf, 0x16u);

          v26 = v29;
        }

        v31 = a1[7];
        v32 = [v22 serviceID];
        v33 = a1[5];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000099F4;
        v41[3] = &unk_100050DE0;
        v41[4] = a1[7];
        v42 = v14;
        v44 = v15;
        v43 = a1[4];
        v45 = a1[8];
        v46 = a1[9];
        [v31 _updateDefaultService:v26 serviceID:v32 userInfo:v33 completion:v41];
      }

      else
      {
        [a1[7] _deleteRecord:v14 completion:v15];
      }

      v38 = v52;
      v8 = v39;
    }

    else
    {
      v35 = sub_100030FE4(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10000CFB0();
      }

      (*(a1[8] + 2))();
      v36 = a1[9];
      if (!v36)
      {
        goto LABEL_19;
      }

      v37 = MSErrorDomain;
      v61 = MSUserInfoErrorStringKey;
      v62 = @"Failed to remove service, no record found";
      v14 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v38 = [NSError errorWithDomain:v37 code:2 userInfo:v14];
      v36[2](v36, 0, v38);
    }

LABEL_19:
    goto LABEL_20;
  }

  (*(a1[8] + 2))();
  v34 = a1[9];
  if (v34)
  {
    v34[2](v34, 0, v7);
  }

LABEL_20:
}

id sub_1000096C4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSServiceAccountRecordType])
  {
    v5 = [v3 service];
    v6 = [v5 serviceID];
    v7 = [a1[4] serviceID];
    if ([v6 isEqual:v7])
    {
      v8 = [v3 homeUserID];
      v9 = [v8 UUIDString];
      v10 = [a1[5] objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      if ([v9 isEqualToString:v10])
      {
        [v3 recordZoneName];
        v11 = v16 = v9;
        v12 = [a1[6] zoneID];
        [v12 zoneName];
        v13 = v17 = v8;
        v14 = [v11 isEqualToString:v13];

        v8 = v17;
        v9 = v16;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_10000984C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSDefaultServiceRecordType])
  {
    v5 = [v3 homeUserID];
    v6 = [v5 UUIDString];
    v7 = [*(a1 + 32) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10000990C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = (*(*(a1 + 40) + 16))();
  v8 = sub_100030FE4(v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed service", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10000CFEC();
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void sub_1000099F4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) _deleteRecord:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) serviceID];
      v10 = 138477827;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to update default service, not removing service (%{private}@)", &v10, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
    v9 = *(a1 + 72);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

uint64_t sub_100009C6C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100009EF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, v7);
    }
  }

  else
  {
    v8 = [CKRecordID alloc];
    v9 = [*(a1 + 32) serviceID];
    v10 = [v9 UUIDString];
    v11 = [v5 zoneID];
    v12 = [v8 initWithRecordName:v10 zoneID:v11];

    v13 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A07C;
    v17[3] = &unk_100050E80;
    v21 = *(a1 + 64);
    v14 = *(a1 + 48);
    v17[4] = *(a1 + 40);
    v18 = v12;
    v19 = v14;
    v20 = *(a1 + 56);
    v15 = v12;
    [v13 fetchRecordWithID:v15 completionHandler:v17];
  }
}

void sub_10000A07C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = *(a1 + 56);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000A288;
    v23[3] = &unk_100050E58;
    v9 = v5;
    v24 = v9;
    v25 = *(a1 + 64);
    [v8 enumerateKeysAndObjectsUsingBlock:v23];
    v10 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000A44C;
    v19[3] = &unk_100050CF0;
    v11 = *(a1 + 64);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v22 = v11;
    v19[4] = v12;
    v20 = v13;
    v21 = *(a1 + 48);
    [v10 saveRecord:v9 completionHandler:v19];

    v14 = v24;
LABEL_10:

    goto LABEL_11;
  }

  v15 = sub_100030FE4(v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10000D0A0();
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, 0, v7);
  }

  if ([v7 CKErrorHasErrorCode:112])
  {
    v17 = *(a1 + 32);
    v14 = [*(a1 + 40) zoneID];
    v18 = [*(a1 + 48) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [v17 handleCKErrorMissingManateeIdentity:v14 homeUserID:v18];

    goto LABEL_10;
  }

LABEL_11:
}

void sub_10000A288(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = sub_100030FE4(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 134217984;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unsupported propertyType %lu", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = MSErrorDomain;
      v13 = MSUserInfoErrorStringKey;
      v14 = @"Unsupported property type passed";
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = [NSError errorWithDomain:v10 code:1 userInfo:v11];
      (*(v9 + 16))(v9, 0, v12);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 67109120;
      LODWORD(v16) = [v5 BOOLValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating Listening history enabled : %d", buf, 8u);
    }

    [*(a1 + 32) setRecordFieldForKey:MediaServiceUpdateListeningHistory value:v5];
  }
}

void sub_10000A44C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000D110();
    }
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v5 != 0, v7);
  }

  if ([v7 CKErrorHasErrorCode:112])
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) zoneID];
    v12 = [*(a1 + 48) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [v10 handleCKErrorMissingManateeIdentity:v11 homeUserID:v12];
  }
}

void sub_10000A724(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 CKErrorHasErrorCode:112] && CKErrorIsCode())
    {
      v8 = [v7 userInfo];
      v9 = [v8 objectForKey:CKPartialErrorsByItemIDKey];

      v10 = [v9 allKeys];
      v11 = sub_100030FE4(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Zones with Manatee Identity Lost %@", buf, 0xCu);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000A920;
      v16[3] = &unk_100050ED0;
      v12 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      v17 = v12;
      [v10 enumerateObjectsUsingBlock:v16];
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }
  }

  else
  {
    v14 = [v5 allValues];
    v15 = [v14 ms_objectsPassingTest:&stru_100050F10];

    [*(a1 + 32) _serviceConfigInfoFor:v15 homeUserIDS:*(a1 + 40) serviceID:*(a1 + 48) completion:*(a1 + 56)];
  }
}

BOOL sub_10000A930(id a1, CKRecordZone *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(CKRecordZone *)a2 zoneID:a3];
  v5 = [v4 zoneName];
  v6 = [v5 isEqualToString:CKRecordZoneDefaultName];

  return v6 ^ 1;
}

void sub_10000ADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AE1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
LABEL_8:
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_12;
  }

  v8 = [v5 recordFieldForKey:MSHomeParticipantHomeUserIdentifier];
  v9 = [[NSUUID alloc] initWithUUIDString:v8];
  v10 = [*(a1 + 32) containsObject:v9];
  v11 = v10;
  v12 = sub_100030FE4(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = *(a1 + 48);
      v19 = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully fetched record for homeUser: %@ matching serviceID: %@", &v19, 0x16u);
    }

    v15 = [NSUUID alloc];
    v16 = [v5 recordFieldForKey:MSHomeParticipantHomeIdentifier];
    v17 = [v15 initWithUUIDString:v16];

    v18 = [v5 createMediaServiceObjectFromRecord];
    [v18 populateMediaService:*(a1 + 56) homeID:v17 homeUserID:v9];
    [*(a1 + 64) na_safeSetObject:v18 forKey:v9];

    goto LABEL_8;
  }

  if (v13)
  {
    v19 = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "User did not request info for %@", &v19, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
LABEL_12:
}

void sub_10000B308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = sub_100030FE4(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D200();
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v7);
    }
  }

  else
  {
    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000B534;
    v18[3] = &unk_100050FB0;
    v10 = v8;
    v19 = v10;
    v20 = v5;
    v11 = sub_100030FE4([v9 enumerateObjectsUsingBlock:v18]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to remove services %@", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000B5E4;
    v16[3] = &unk_100050988;
    v17 = *(a1 + 56);
    [v12 modifyCKRecordWithRecordsToSave:0 recordIDSToDelete:v10 missingManateeIdentity:0 withAttribution:0 withOptions:v13 completion:v16];
  }
}

void sub_10000B534(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [CKRecordID alloc];
  v8 = [v4 UUIDString];

  v6 = [*(a1 + 40) zoneID];
  v7 = [v5 initWithRecordName:v8 zoneID:v6];
  [v3 na_safeAddObject:v7];
}

void sub_10000B5E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100030FE4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed services %@", &v10, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6 != 0, v7);
  }
}

void sub_10000B9C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v18 = *(a1 + 56);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v7);
    }
  }

  else
  {
    v8 = [CKRecordID alloc];
    v9 = [*(a1 + 32) serviceID];
    v10 = [v9 UUIDString];
    v11 = [v5 zoneID];
    v12 = [v8 initWithRecordName:v10 zoneID:v11];

    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000BB54;
    v20[3] = &unk_100050CF0;
    v15 = *(a1 + 56);
    *&v16 = *(a1 + 32);
    *(&v16 + 1) = *(a1 + 40);
    v19 = v16;
    *&v17 = *(a1 + 48);
    *(&v17 + 1) = v15;
    v21 = v19;
    v22 = v17;
    [v13 fetchRecordWithID:v12 withOptions:v14 completion:v20];
  }
}

void sub_10000BB54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v16 = sub_100030FE4(v5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D28C();
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v6);
    }
  }

  else
  {
    v7 = [a2 copy];
    v8 = [*(a1 + 32) authConfiguration];
    v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

    v10 = [*(a1 + 32) authCredential];
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];

    if (v11)
    {
      [v7 setRecordFieldForKey:MediaServiceAuthCredential value:v11];
    }

    if (v9)
    {
      [v7 setRecordFieldForKey:MediaServiceAuthConfiguration value:v9];
    }

    v12 = MediaServiceAuthFatalError;
    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) authFatalError]);
    [v7 setRecordFieldForKey:v12 value:v13];

    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000BD6C;
    v18[3] = &unk_100051018;
    v18[4] = v14;
    v19 = *(a1 + 56);
    [v14 saveRecord:v7 withOptions:v15 completion:v18];
  }
}

void sub_10000BD6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000D30C();
    }
  }

  else
  {
    [*(a1 + 32) refreshDatabase:0 completion:&stru_100050FF0];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5 != 0, v7);
  }
}

void sub_10000BE18(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100030FE4(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Error updating caches after saving authInfo %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Successfully updated caches after saving authInfo";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_10000C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C1F4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D38C();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000C300;
    v8[3] = &unk_100051040;
    v7 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [MSAuthTokenProvider validateConfigurationResourceForMediaService:v7 networkActivity:0 completion:v8];
  }
}

void sub_10000C300(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D3FC();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000C384(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100006964;
    v29[4] = sub_100006974;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_100006964;
    v27[4] = sub_100006974;
    v28 = 0;
    v3 = dispatch_group_create();
    dispatch_group_enter(v3);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) UUIDString];
    v6 = [*(a1 + 48) UUIDString];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C670;
    v21[3] = &unk_1000510B8;
    v25 = v29;
    v7 = v3;
    v22 = v7;
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v23 = v8;
    v24 = v9;
    v26 = v27;
    [v4 fetchRecordZoneFor:v5 user:v6 withOptions:0 completion:v21];

    v10 = dispatch_get_global_queue(33, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000C8B0;
    v15[3] = &unk_100051128;
    v19 = v27;
    v20 = v29;
    v18 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *&v13 = *(a1 + 56);
    *(&v13 + 1) = *(a1 + 32);
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v16 = v14;
    v17 = v13;
    dispatch_group_notify(v7, v10, v15);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }
}

void sub_10000C64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000C670(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = sub_100030FE4(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D46C();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [CKRecordID alloc];
    v9 = [*(a1 + 40) serviceID];
    v10 = [v9 UUIDString];
    v11 = [v5 zoneID];
    v12 = [v8 initWithRecordName:v10 zoneID:v11];

    v13 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000C7F8;
    v15[3] = &unk_100051090;
    v17 = *(a1 + 56);
    v16 = *(a1 + 32);
    [v13 fetchRecordWithID:v12 withOptions:0 completion:v15];
  }
}

void sub_10000C7F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000D4DC();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000C8B0(void *a1)
{
  v1 = a1;
  if (*(*(a1[9] + 8) + 40))
  {
    v2 = *(*(a1[10] + 8) + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    a1 = (*(a1[8] + 16))();
  }

  v3 = sub_100030FE4(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully fetched old user info, switching account info", buf, 2u);
  }

  v13[0] = kCKDatabaseAccessUserInfoHomeIDKey;
  v4 = [v1[4] UUIDString];
  v14[0] = v4;
  v13[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
  v5 = [v1[5] UUIDString];
  v14[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  [*(*(v1[9] + 8) + 40) populateCKRecordInfo:v1[6] userInfo:v6 recordType:MSServiceAccountRecordType];
  v7 = *(*(v1[9] + 8) + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CA94;
  v10[3] = &unk_100051100;
  v8 = v1[7];
  v9 = v1[8];
  v10[4] = v1[7];
  v11 = v9;
  [v8 saveRecord:v7 withOptions:0 completion:v10];
}

id sub_10000CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (!a3)
  {
    v6 = *(a1 + 32);

    return [v6 refreshDatabase:0 completion:&stru_1000510D8];
  }

  return result;
}

void sub_10000CAFC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100030FE4(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000D54C();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully updated local caches post user account switch", v5, 2u);
  }
}

void sub_10000CBB4()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CC24()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CC94()
{
  sub_10000CBA0();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000CD10()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CD4C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CDBC()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CE78()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CEB4()
{
  v2[0] = 138412546;
  sub_10000CB90();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to fetch record with ID %@, %@", v2, 0x16u);
}

void sub_10000CF38()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CF74()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CFB0()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D064()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D0A0()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D110()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D200()
{
  v3[0] = 136315651;
  sub_10000CBA0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Fetched recordZone %{private}@, error %{private}@", v3, 0x20u);
}

void sub_10000D28C()
{
  sub_10000CB90();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000D30C()
{
  sub_10000CB90();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000D38C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D3FC()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D46C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D4DC()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D54C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_10000D65C(uint64_t a1)
{
  qword_100059A50 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DAD8(uint64_t a1)
{
  result = [*(a1 + 32) isHomeKitReady];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _noteHomesStillLoading];
  }

  return result;
}

void sub_10000DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DC28(uint64_t a1)
{
  result = [*(a1 + 32) isHomeKitReady];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _noteHomesStillLoading];
  }

  return result;
}

void sub_10000DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DD78(uint64_t a1)
{
  result = [*(a1 + 32) isHomeKitReady];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _noteHomesStillLoading];
  }

  return result;
}

void sub_10000DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DF0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DF24(uint64_t a1)
{
  v2 = [*(a1 + 32) currentHome];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) queuedAwaitingCurrentHome];
    v5 = objc_retainBlock(*(a1 + 40));
    [v6 addObject:v5];
  }
}

void sub_10000E0A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100030FE4(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000F734();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully registered to accept shared for CloudKitContainer %{private}@", &v7, 0xCu);
  }
}

void sub_10000E34C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully finished refresh after home was added", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000F79C();
  }
}

void sub_10000EAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EAC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 26) == 1)
  {
    v3 = *(v2 + 25);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3 & 1;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = sub_100030FE4(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Detected first start up. Finishing initialization steps and refreshing CloudKit.", &v14, 2u);
    }

    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) homes];
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Homes Loaded: %{private}@", &v14, 0xCu);
    }

    v9 = MSDSignpostFacility(v8);
    v10 = v9;
    v11 = *(*(a1 + 32) + 8);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = [*(a1 + 40) homes];
      v13 = [v12 count];
      v14 = 134349056;
      v15 = v13;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "LookupHomes", "LookupFinishedWithCount=%{signpost.description:attribute,public}lu", &v14, 0xCu);
    }
  }
}

void sub_10000ECA0(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100030FE4(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000F804();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully refreshed data after HomeKit initialization", v6, 2u);
  }
}

void sub_10000EE44(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully finished refresh after MultiUserEnablement status changed", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000F86C();
  }
}

void sub_10000F048(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (!a3 || v6)
  {
    v11 = sub_100030FE4(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000F8D4();
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, 0, v7);
    }
  }

  else
  {
    v8 = [a3 dataUsingEncoding:4];
    v9 = [[HMUserCloudShareClientInfo alloc] initWithAccountAuthToken:v8];
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 1, v9, 0);
    }
  }
}

void sub_10000F274(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully finished refresh after home was removed", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000F93C();
  }
}

void sub_10000F600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 currentHome];
  [v1 homeManager:v2 didHomeKitSyncComplete:v3];
}

void sub_10000F718(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000FCC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000FDC4;
    v10[3] = &unk_100051338;
    v7 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v7 acceptShareWithShareMetadata:a2 completion:v10];
  }

  else
  {
    v8 = sub_100030FE4(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100010DE8();
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, 0, v6);
    }
  }
}

void sub_10000FDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    v10 = sub_100030FE4(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CKShareAcceptance token %{private}@", &v14, 0xCu);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, 1, v8, 0);
    }
  }

  else
  {
    v12 = sub_100030FE4(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100010E58();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0, v6);
    }
  }
}

void sub_100010298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = [v6 CKErrorHasErrorCode:11];
    v16 = v15;
    v17 = sub_100030FE4(v15);
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Share has underlying error of CKErrorUnknownItem", &v23, 2u);
      }

      [*(a1 + 40) _saveRecordAndShare:*(a1 + 32) completion:*(a1 + 48)];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100010FF4(a1, v7, v18);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v8 = sub_100030FE4(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 recordID];
      v23 = 138477827;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched record %{private}@", &v23, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 participants];
    v13 = [v12 count];

    if (v13 >= 2)
    {
      if (v13 == 2)
      {
        [*(a1 + 40) _handleMultiplePeopleOnShare:v11 completion:*(a1 + 48)];
      }

      else
      {
        v19 = sub_100030FE4(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100010F84();
        }

        v21 = *(a1 + 48);
        if (v21)
        {
          v22 = [NSError errorWithDomain:CKErrorDomain code:29 userInfo:0];
          (*(v21 + 16))(v21, 0, v22);
        }
      }
    }

    else
    {
      [*(a1 + 40) shareRecordWithOwner:v11 completion:*(a1 + 48)];
    }
  }
}

void sub_100010710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully established share with owner %{private}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100011160();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010BE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100011248();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 recordID];
      v13 = 138477827;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully saved Share %{private}@", &v13, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = sub_100030FE4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138477827;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Now using share... %{private}@", &v13, 0xCu);
    }

    [*(a1 + 32) shareRecordWithOwner:v11 completion:*(a1 + 40)];
  }
}

void sub_100010DAC()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010DE8()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010E58()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010EC8()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010F84()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010FF4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) recordID];
  sub_1000045A8();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error fetching CKShare %{private}@, error %@", v6, 0x16u);
}

void sub_1000110A4()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100011160()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000111D0()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001120C()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100011248()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

id MSDSignpostFacility(uint64_t a1)
{
  if (qword_100059A60 != -1)
  {
    sub_100011994();
  }

  v2 = qword_100059A58;

  return v2;
}

void sub_100011918(id a1)
{
  qword_100059A58 = os_log_create("com.apple.mediasetupd.signposts", "signposts");

  _objc_release_x1();
}

os_signpost_id_t MSDGenerateSignpostID(uint64_t a1)
{
  v1 = MSDSignpostFacility(a1);
  v2 = os_signpost_id_generate(v1);

  return v2;
}

uint64_t sub_1000121E4(uint64_t a1)
{
  qword_100059A68 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100012448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001246C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performStartup];
}

void sub_1000127B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1000127CC(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = string;
  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
    v4 = string;
  }

  v5 = sub_100030FE4(string);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138477827;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received Darwin Notification %{private}@", &v18, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v4 isEqualToString:kHomeMultiUserStatusChangedNotification];
  if (!v7)
  {
    v9 = [v4 isEqualToString:kHomeUserCloudShareChangedNotification];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = sub_100030FE4(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Previously registered to accept shares, should receive HomeKit callback on this one", &v18, 2u);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!WeakRetained)
  {
    v10 = sub_100030FE4(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100017BD8(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_14;
  }

  v8 = WeakRetained[6];
  if (v8)
  {
    [v8 trigger];
  }

LABEL_15:
}

void sub_100012B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012B88(id a1)
{
  v1 = sub_100030FE4(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection to CUCoalescer invalidated", v2, 2u);
  }
}

void sub_100012BF0(uint64_t a1)
{
  v2 = sub_100030FE4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting action handler on CUCoalescer", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleRefreshTask];
}

void sub_100012D70(id a1)
{
  v1 = +[MSDDataController sharedInstance];
  [v1 refreshDataForReason:5 completion:&stru_1000514B8];
}

void sub_100012DC4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100030FE4(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100017C50();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully refreshed data after HomeMUStatusChanged", v6, 2u);
  }
}

void sub_100013020(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100030FE4(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully saved public DB info", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100017D20();
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100013268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001328C(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000134BC;
  v21[3] = &unk_100051508;
  v21[4] = &v22;
  [v3 setExpirationHandler:v21];
  if (*(v23 + 24) != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      if (WeakRetained->data)
      {
        v15 = +[MSDPublicDBManager shared];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000134D0;
        v17[3] = &unk_1000514E0;
        v18 = v3;
        [v15 syncDataWithCloudKit:v17];

        goto LABEL_13;
      }

      v16 = sub_100030FE4(WeakRetained);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "HomeKit not ready, deferring publicDB refresh", buf, 2u);
      }
    }

    [v3 setTaskCompleted];
    goto LABEL_13;
  }

  v20 = 0;
  v4 = [v3 setTaskExpiredWithRetryAfter:&v20 error:300.0];
  v5 = v20;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100017D88(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    [v3 setTaskCompleted];
  }

LABEL_13:

  _Block_object_dispose(&v22, 8);
}

void sub_1000134D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100030FE4(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduled background sync finished, error: %@", &v6, 0xCu);
  }

  [*(a1 + 32) setTaskCompleted];
}

void sub_1000138F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100017EB8();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138477827;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Services configured on account %{private}@", &v11, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v6 translateCKErrorToMSError];
    (*(v9 + 16))(v9, v5, v10);
  }
}

void sub_100013C3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100017F20();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138477827;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Services configured on account in cache %{private}@", &v11, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v6 translateCKErrorToMSError];
    (*(v9 + 16))(v9, v5, v10);
  }
}

void sub_100014014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014040(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100030FE4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001803C();
    }

    (*(a1[7] + 2))();
    [a1[4] releaseTransaction];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    if (WeakRetained)
    {
      v7 = a1[5];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10001429C;
      v25[3] = &unk_1000515E8;
      v8 = a1[7];
      v9 = a1[4];
      v10 = a1[5];
      *&v11 = a1[6];
      *(&v11 + 1) = v8;
      *&v12 = v9;
      *(&v12 + 1) = v10;
      v26 = v12;
      v27 = v11;
      [MSAuthTokenProvider validateConfigurationResourceForMediaService:v7 networkActivity:0 completion:v25];

      v13 = *(&v27 + 1);
    }

    else
    {
      v14 = sub_100030FE4(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000180A4(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = a1[7];
      v23 = MSErrorDomain;
      v28 = NSLocalizedDescriptionKey;
      v29 = @"Nil self";
      v13 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v24 = [NSError errorWithDomain:v23 code:1 userInfo:v13];
      v22[2](v22, 0, v24);
    }
  }
}

void sub_10001429C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100030FE4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001811C();
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) releaseTransaction];
  }

  else
  {
    v6 = +[MSDDataController sharedInstance];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000143EC;
    v10[3] = &unk_1000515C0;
    v11 = v7;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    [v6 addMediaService:v11 usingSetupBundles:v8 transaction:v9 completion:v10];
  }
}

void sub_1000143EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100030FE4(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100018184(a1, v5, v7);
    }

    [*(a1 + 40) releaseTransaction];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) serviceID];
      v11 = 138477827;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully added service %{private}@", &v11, 0xCu);
    }
  }

  v9 = *(a1 + 48);
  v10 = [v5 translateCKErrorToMSError];
  (*(v9 + 16))(v9, a2, v10);
}

void sub_100014940(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100030FE4(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000182AC();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) serviceID];
      v13 = 138477827;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully removed service %{private}@", &v13, 0xCu);
    }

    v9 = *(a1 + 40);
    v7 = [*(a1 + 32) serviceID];
    v10 = [v7 UUIDString];
    [v9 _clearCachedIconImage:v10];
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [v5 translateCKErrorToMSError];
    (*(v11 + 16))(v11, a2, v12);
  }
}

void sub_100014D68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001838C();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v6 translateCKErrorToMSError];
    (*(v8 + 16))(v8, a2, v9);
  }
}

void sub_1000150A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001846C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 serviceID];
    v12 = 136315395;
    v13 = "[MSDManager getDefaultMediaService:homeUserID:completion:]_block_invoke";
    v14 = 2113;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Fetched Default Service (%{private}@)", &v12, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = [v6 translateCKErrorToMSError];
    (*(v10 + 16))(v10, v5, v11);
  }
}

void sub_10001559C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001854C();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v6 translateCKErrorToMSError];
    (*(v8 + 16))(v8, a2, v9);
  }
}

void sub_100015864(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001862C();
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v7 translateCKErrorToMSError];
    (*(v9 + 16))(v9, v5, v10);
  }
}

void sub_100015AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = sub_100030FE4(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138477827;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error fetching publicDB info for %{private}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000161C0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v7 = [a2 allObjects];
    v6 = [NSArray arrayWithArray:v7];
    (*(v3 + 16))(v3, v6, 0);
  }
}

void sub_1000164B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100030FE4(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error switching account info, %@", &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v6 = [*(a1 + 32) serviceID];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully switched account info for %@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = [v3 translateCKErrorToMSError];
  (*(v7 + 16))(v7, v8);
}

uint64_t sub_100016E54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016E6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001870C();
    }
  }

  v9 = [v5 mutableCopy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_10001741C(id a1, MSPublicDBInfo *a2)
{
  v2 = a2;
  v3 = [NSUUID alloc];
  v4 = [(MSPublicDBInfo *)v2 serviceID];

  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

id sub_100017498(id a1, MSPublicDBInfo *a2)
{
  v2 = a2;
  v3 = [NSUUID alloc];
  v4 = [(MSPublicDBInfo *)v2 serviceID];

  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

id sub_100017514(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [NSUUID alloc];
  v4 = [(NSDictionary *)v2 objectForKey:MediaServiceIdentifier];

  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

void sub_10001759C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully deleted remanent services on account", buf, 2u);
    }

    if ([*(a1 + 32) count])
    {
      v8 = [*(a1 + 40) mutableCopy];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100017838;
      v20[3] = &unk_1000517C8;
      v9 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = v8;
      v10 = v8;
      [v9 enumerateObjectsUsingBlock:v20];
      v11 = +[MSDDefaultsManager sharedManager];
      [v11 setObjectWithCustomClass:v10 forDefault:@"publicDBData"];
    }

    else
    {
      v17 = sub_100030FE4(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "There are no valid MediaService Developer profiles installed on device, clearing defaults", buf, 2u);
      }

      v10 = +[MSDDefaultsManager sharedManager];
      [v10 clearDeveloperDefaults];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000178E0;
    v19[3] = &unk_100050AE8;
    v18 = *(a1 + 48);
    v19[4] = *(a1 + 56);
    [v18 enumerateObjectsUsingBlock:v19];
  }

  else
  {
    v12 = [v5 CKErrorHasErrorCode:11];
    v13 = v12;
    v14 = sub_100030FE4(v12);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100018828(a1, v6, v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "There are no valid MediaService Developer profiles installed on device, clearing defaults", buf, 2u);
      }

      v16 = +[MSDDefaultsManager sharedManager];
      [v16 clearDeveloperDefaults];
    }
  }
}

void sub_100017838(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [NSUUID alloc];
  v5 = [v7 serviceID];
  v6 = [v4 initWithUUIDString:v5];
  LODWORD(v3) = [v3 na_safeContainsObject:v6];

  if (v3)
  {
    [*(a1 + 40) removeObjectIdenticalTo:v7];
  }
}

void sub_1000178E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  [v2 _clearCachedIconImage:v3];
}

id sub_1000179C0(uint64_t a1)
{
  v2 = sub_100030FE4([*(a1 + 32) _markHomeKitInitialized]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Refreshing public DB info in cache after startup", buf, 2u);
  }

  v3 = sub_100030FE4([*(a1 + 32) _savePublicDBInfoInDefaults]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Syncing any installed developer profiles", v7, 2u);
  }

  v4 = sub_100030FE4([*(*(a1 + 32) + 64) syncStatusOfInstalledProfiles]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finishing setup for multi-user", v6, 2u);
  }

  [*(a1 + 32) _setupMultiUser];
  return [*(a1 + 32) _initializeCoalescerObject];
}

void sub_100017BD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDManager _setupNotifications]_block_invoke";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s nil strongSelf", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100017D88(const __CFString *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"Unknown reason";
  if (a1)
  {
    v8 = a1;
  }

  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v8;
  sub_10000F718(&_mh_execute_header, a2, a3, "Failed to expire publicDB refresh task: %@", a5, a6, a7, a8, v9, DWORD2(v9));
}

void sub_100017E04()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017E40(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to fetch available services, NIL identifiers provided";
  sub_10000F718(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100017F88()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017FC4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDManager addMediaService:usingSetupBundles:completion:]";
  sub_10000F718(&_mh_execute_header, a1, a3, "Encountered unexpected error. No completion handler provided for %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000180A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDManager addMediaService:usingSetupBundles:completion:]_block_invoke";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s Nil StrongSelf", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100018184(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) serviceID];
  sub_1000045A8();
  v7 = 2113;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error adding service %{private}@ to home: %{private}@", v6, 0x16u);
}

void sub_100018234(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to remove service, NIL identifiers provided";
  sub_10000F718(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100018314(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to update default service, NIL identifiers provided";
  sub_10000F718(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000183F4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to fetch default service, NIL identifiers provided";
  sub_10000F718(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000184D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to update property, NIL identifiers provided";
  sub_10000F718(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000185B4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to fetch service config info for Nil homeUserID";
  sub_10000F718(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100018694()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000186D0()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018774()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000187B0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDManager profilesManager:didUpdateProfiles:]";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s CurrentHome is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100018828(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = 138478083;
  v5 = v3;
  v6 = 2113;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error deleting service %{private}@ from account %{private}@", &v4, 0x16u);
}

void sub_100018C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018C70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100018C88(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = sub_100030FE4(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100019638(v9, v7, v10);
      }
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    os_unfair_lock_unlock(v9 + 2);
  }
}

void sub_10001914C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1000191B4(id a1)
{
  qword_100059A78 = [[MSDExpireCache alloc] initWithExpiration:60.0];

  _objc_release_x1();
}

void sub_1000191FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100019750();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    *(*(*(a1 + 48) + 8) + 24) = [WeakRetained _accountHasLocalPlayableContent:*(a1 + 32)];

    v11 = sub_100030FE4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v12 = @"has";
      }

      else
      {
        v12 = @"does not have";
      }

      v25 = 138412290;
      v26 = v12;
      v13 = "The account %@ localPlaybackContent";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = [v5 subscriptionStatus];
    v18 = [v17 capabilities] & 1;

    *(*(*(a1 + 48) + 8) + 24) = v18;
    v11 = sub_100030FE4(v19);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v25 = 67109120;
      LODWORD(v26) = v18;
      v13 = "Fetched Subscription Status %d";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 8;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v25, v16);
    }
  }

  v21 = MSDSignpostFacility(v20);
  v22 = v21;
  v23 = *(a1 + 64);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v24 = NSStringFromBOOL();
    v25 = 138543362;
    v26 = v24;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v23, "CheckSubscriptionStatus", "LookupFinishedWithStatus=%{signpost.description:attribute,public}@", &v25, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100019638(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 24);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error fetching iTunes account for HomeIdentifier %@, %@", &v4, 0x16u);
}

void sub_10001A1B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v19 = a1;
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 service];
          v13 = [v12 copy];

          v14 = [v13 serviceID];
          v15 = [v14 UUIDString];
          v16 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v15];

          v17 = [v11 homeID];
          v18 = [v11 homeUserID];
          [v13 populateMediaService:v16 homeID:v17 homeUserID:v18];

          [v6 addObject:v13];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    (*(*(v19 + 32) + 16))();
  }
}

uint64_t sub_10001A728(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [v4 isEqualToString:MSServiceAccountRecordType];

  if (v5 && ([v3 homeUserID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", *(a1 + 32)), v6, v7))
  {
    if (*(a1 + 40))
    {
      v8 = [v3 service];
      v9 = [v8 serviceID];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 40) serviceID];
      v12 = [v10 isEqualToString:v11];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_10001A824(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Failed to remove services, NIL identifiers passed";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void sub_10001AAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001AB10(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5 && (a2 & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      if (WeakRetained[2] == 0.0)
      {
        [WeakRetained _performDataRefresh:*(a1 + 40)];
        goto LABEL_18;
      }

      [WeakRetained refreshDataAfterDelay];
      v9 = *(a1 + 40);
      if (!v9)
      {
LABEL_18:

        goto LABEL_19;
      }

      v10 = *(v9 + 16);
    }

    else
    {
      v13 = sub_100030FE4(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001F68C(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v21 = *(a1 + 40);
      if (!v21)
      {
        goto LABEL_18;
      }

      v10 = *(v21 + 16);
    }

    v10();
    goto LABEL_18;
  }

  v11 = sub_100030FE4(v5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CloudKit is not available...returning...", v22, 2u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v6);
  }

  [objc_opt_class() clearLastRefreshTSForHomes];
LABEL_19:
}

BOOL sub_10001AF8C(id a1, HMHome *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(HMHome *)v4 hasAccessoryTypeHomePod]& 1) != 0 || (v5 = [(HMHome *)v4 isMultiUserEnabled], (v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}@ HomeMUEnabled = NO AND User does not have any HomePods in configured.", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

void sub_10001B05C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001B18C;
    v8[3] = &unk_100051930;
    v8[4] = v3;
    v10 = *(a1 + 48);
    v9 = *(a1 + 40);
    [v3 _deleteZombieRecordZonesIfAnyInHomes:v4 completion:v8];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = [NSError errorWithDomain:MSCloudKitErrorDomain code:0 userInfo:0];
      (*(v5 + 16))(v5, 0, v6);
    }

    v7 = objc_opt_class();

    [v7 clearLastRefreshTSForHomes];
  }
}

void sub_10001B18C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = [v3 CKErrorHasErrorCode:11];
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = sub_100030FE4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10001F704();
  }

  v7 = [v4 isErrorFatal];
  if (v7)
  {
    v8 = sub_100030FE4(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      v19 = "[MSDDataRefresh _performDataRefresh:]_block_invoke";
      v20 = 2113;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Fatal error %{private}@", buf, 0x16u);
    }

    [objc_opt_class() clearLastRefreshTSForHomes];
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v4);
    }
  }

  else
  {
LABEL_10:
    v10 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001B360;
    v13[3] = &unk_100051908;
    v11 = v4;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    [v10 _refreshDatabases:v13];
  }
}

void sub_10001B360(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isErrorFatal];
  if (v4)
  {
    v5 = sub_100030FE4(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v10 = 136315395;
      v11 = "[MSDDataRefresh _performDataRefresh:]_block_invoke";
      v12 = 2113;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Fatal error %{private}@", &v10, 0x16u);
    }

    [objc_opt_class() clearLastRefreshTSForHomes];
    v7 = a1[7];
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_10:
      v8();
    }
  }

  else
  {
    if (!v3)
    {
      [objc_opt_class() cacheLastRefreshforHomes:a1[6]];
    }

    v9 = a1[7];
    if (v9)
    {
      v8 = *(v9 + 16);
      goto LABEL_10;
    }
  }
}

void sub_10001B7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isErrorFatal];
    *(*(*(a1 + 48) + 8) + 24) = v5;
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001F76C();
    }
  }

  else
  {
    v6 = sub_100030FE4(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138477827;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully Validated Service Configuration Info %{private}@", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_10001B90C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24) == 0);
  }

  return result;
}

id sub_10001BB34(id a1, HMHome *a2)
{
  v2 = [(HMHome *)a2 currentUser];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

void sub_10001BB84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v29 = v5;
  v30 = v6;
  if (v5 && !v6)
  {
    group = dispatch_group_create();
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    v54 = 0x3032000000;
    v55 = sub_10001C0EC;
    v56 = sub_10001C0FC;
    v57 = 0;
    v7 = sub_100030FE4(group);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 136315394;
      v50 = "[MSDDataRefresh _deleteZombieRecordZonesIfAnyInHomes:completion:]_block_invoke";
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s User is part of homes %@", buf, 0x16u);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = [v5 allValues];
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v10)
    {
      v11 = *v42;
      v31 = MSPlaceholderRecordName;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [v13 zoneID];
          v15 = [v14 zoneName];
          v16 = [v15 isEqualToString:CKRecordZoneDefaultName];

          if ((v16 & 1) == 0)
          {
            dispatch_group_enter(group);
            v17 = [CKRecordID alloc];
            v18 = [v13 zoneID];
            v19 = [v17 initWithRecordName:v31 zoneID:v18];

            v20 = *(a1 + 32);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10001C104;
            v36[3] = &unk_100051A38;
            v21 = *(a1 + 56);
            v36[4] = v13;
            v36[5] = v21;
            v40 = &v53;
            v37 = group;
            v38 = *(a1 + 48);
            v22 = v19;
            v39 = v22;
            [v20 fetchRecordWithID:v22 completionHandler:v36];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v10);
    }

    v23 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C594;
    block[3] = &unk_100051980;
    v34 = *(a1 + 64);
    v35 = &v53;
    dispatch_group_notify(group, v23, block);

    _Block_object_dispose(&v53, 8);
LABEL_24:

    goto LABEL_25;
  }

  v24 = sub_100030FE4(v6);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10001F814();
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    (*(v25 + 16))(v25, v30);
  }

  if ([v30 CKErrorHasErrorCode:{112, v5}] && CKErrorIsCode())
  {
    v26 = [v30 userInfo];
    group = [v26 objectForKey:CKPartialErrorsByItemIDKey];

    v27 = [group allKeys];
    v28 = sub_100030FE4(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v53) = 138412290;
      *(&v53 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Zones with ManateeIdentity Lost %@", &v53, 0xCu);
    }

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001C0DC;
    v45[3] = &unk_100050ED0;
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    [v27 enumerateObjectsUsingBlock:v45];

    goto LABEL_24;
  }

LABEL_25:
}

uint64_t sub_10001C0EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C104(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    v9 = [NSUUID alloc];
    v10 = [v6 recordFieldForKey:MSHomeParticipantHomeIdentifier];
    v11 = [v9 initWithUUIDString:v10];

    if (v11 && (v13 = *(a1 + 56), v28[0] = _NSConcreteStackBlock, v28[1] = 3221225472, v28[2] = sub_10001C4EC, v28[3] = &unk_100051A10, v3 = &v29, v29 = v11, v12 = [v13 ms_anyPassingTest:v28], (v12 & 1) != 0))
    {
      dispatch_group_leave(*(a1 + 48));
    }

    else
    {
      v21 = sub_100030FE4(v12);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 64) recordName];
        *buf = 138477827;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Detected Zombie recordZone %{private}@", buf, 0xCu);
      }

      v23 = *(a1 + 40);
      v24 = [*(a1 + 32) zoneID];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10001C530;
      v25[3] = &unk_1000519E8;
      v27 = *(a1 + 72);
      v26 = *(a1 + 48);
      [v23 _deleteRecordZone:v24 completion:v25];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

LABEL_17:
    goto LABEL_18;
  }

  v14 = [v7 CKErrorHasErrorCode:11];
  v15 = v14;
  v16 = sub_100030FE4(v14);
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) zoneID];
      *buf = 138477827;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Possibly a zombie recordZone, deleting %{private}@", buf, 0xCu);
    }

    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) zoneID];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001C488;
    v30[3] = &unk_1000519E8;
    v32 = *(a1 + 72);
    v31 = *(a1 + 48);
    [v19 _deleteRecordZone:v20 completion:v30];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001F87C();
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 48));
  }

LABEL_18:
}

void sub_10001C488(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

id sub_10001C4EC(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10001C530(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10001C594(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_10001C6A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100030FE4(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001F8E4(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138477827;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully Zombie deleted recordZone %{private}@", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_10001C994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10001C9B8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [v4 isErrorFatal];
  if (v5)
  {
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001F984();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001CA54(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = +[CKContainer MSDCloudKitContainer];
    v6 = [v5 sharedCloudDatabase];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001CC0C;
    v14[3] = &unk_100051AB0;
    v16 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v15 = v4;
    v7 = v4;
    [v6 refreshDatabase:0 completion:v14];

    v8 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001CCBC;
    block[3] = &unk_100051980;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v12 = v9;
    v13 = v10;
    dispatch_group_notify(v7, v8, block);
  }
}

void sub_10001CC0C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [v4 isErrorFatal];
  if (v5)
  {
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001FA00();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10001CCBC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

id sub_10001CE44(id a1, HMHome *a2)
{
  v2 = [(HMHome *)a2 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

void sub_10001D020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001D0AC;
    v3[3] = &unk_100051B20;
    v3[4] = WeakRetained;
    [WeakRetained _performDataRefresh:v3];
  }
}

void sub_10001D0AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001FABC(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MSDDataRefreshReasonToString(*(*(a1 + 32) + 8));
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated data after %@", &v8, 0xCu);
  }
}

void sub_10001D358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D37C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = kAppleMusicApplicationIdentifier;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001D4E4;
    v11[3] = &unk_100051B48;
    v14 = a1[5];
    objc_copyWeak(&v15, a1 + 6);
    v12 = v5;
    v13 = a1[4];
    [MSDPublicDBManager getPublicInfoForServiceName:v8 completion:v11];

    objc_destroyWeak(&v15);
  }

  else
  {
    v9 = sub_100030FE4(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001FB60();
    }

    v10 = a1[5];
    if (v10)
    {
      v10[2](v10, v7);
    }
  }
}

void sub_10001D4E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _checkDataSanity:*(a1 + 32) publicDBInfo:v3 home:*(a1 + 40) completion:*(a1 + 48)];
LABEL_7:

    goto LABEL_8;
  }

  v5 = sub_100030FE4(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10001FBC8(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    WeakRetained = [NSError errorWithDomain:MSErrorDomain code:7 userInfo:0];
    (*(v13 + 16))(v13, WeakRetained);
    goto LABEL_7;
  }

LABEL_8:
}

void sub_10001D88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D8B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 || (v7 = objc_loadWeakRetained((a1 + 80)), v8 = [v7 _shouldProceedWithExecution:v6], v7, (v8 & 1) != 0))
  {
    v9 = [v5 objectForKey:*(a1 + 32)];
    v10 = [v5 objectForKey:*(a1 + 40)];
    v11 = MediaServiceIdentifier;
    v12 = [v9 recordFieldForKey:MediaServiceIdentifier];
    v13 = [v10 recordFieldForKey:v11];
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v12)
      {
        if (v13)
        {
LABEL_22:

          goto LABEL_23;
        }

        v16 = sub_100030FE4(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User missing default service record, defaulting to Apple Music", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 80));
        v25 = *(a1 + 48);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001DC3C;
        v26[3] = &unk_100051B98;
        v29 = *(a1 + 72);
        objc_copyWeak(&v30, (a1 + 80));
        v27 = v9;
        v28 = *(a1 + 48);
        [WeakRetained _updateDefaultService:v25 record:v27 completion:v26];

        objc_destroyWeak(&v30);
        v18 = v29;
      }

      else
      {
        v23 = sub_100030FE4(v13);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "User missing Apple Music record, creating a new one", buf, 2u);
        }

        v18 = objc_loadWeakRetained((a1 + 80));
        v24 = [*(a1 + 56) zoneID];
        [v18 _createAndSaveAppleMusicRecord:v24 publicDBInfo:*(a1 + 64) home:*(a1 + 48) completion:*(a1 + 72)];
      }
    }

    else
    {
      v19 = sub_100030FE4(v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v10 recordFieldForKey:MSHomeParticipantHomeUserIdentifier];
        *buf = 138477827;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "User's (%{private}@) Apple Music and Default Service are configured correctly", buf, 0xCu);
      }

      v18 = objc_loadWeakRetained((a1 + 80));
      [v18 _shareThisRecordIfApplicable:v9 home:*(a1 + 48) completion:*(a1 + 72)];
    }

    goto LABEL_22;
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    (*(v22 + 16))(v22, v6);
  }

LABEL_23:
}

void sub_10001DC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DC3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _shareThisRecordIfApplicable:*(a1 + 32) home:*(a1 + 40) completion:*(a1 + 48)];
  }

  return _objc_release_x1();
}

void sub_10001E054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E080(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001FD24();
    }

    v11 = a1[5];
    if (v11)
    {
      v11[2](v11, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Now updating default Service to AppleMusic..", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001E238;
    v12[3] = &unk_100051B98;
    v10 = a1[4];
    v15 = a1[5];
    objc_copyWeak(&v16, a1 + 6);
    v13 = v5;
    v14 = a1[4];
    [WeakRetained _updateDefaultService:v10 record:v13 completion:v12];

    objc_destroyWeak(&v16);
  }
}

void sub_10001E238(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error creating default service for user %{private}@", &v9, 0xCu);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v5);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _shareThisRecordIfApplicable:*(a1 + 32) home:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10001E560(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) currentUser];
      v11 = [v10 uniqueIdentifier];
      v13 = 138477827;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully shared data with owner for participant %{private}@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10001FD8C();
  }

  v9 = [v6 isErrorFatal];
  if (v9)
  {
    v8 = sub_100030FE4(v9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001FDF4();
    }

LABEL_9:
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v6);
  }
}

void sub_10001E934(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001FE70();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully updated default service", v10, 2u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5 != 0, v6);
  }
}

void sub_10001EB9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001FED8();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully saved AppleMusic record", v10, 2u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void sub_10001ED68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [NSString alloc];
    v9 = [v5 clientInfo];
    v10 = [v9 accountAuthToken];
    v11 = [v8 initWithData:v10 encoding:4];

    if (v11)
    {
      goto LABEL_11;
    }

    v13 = sub_100030FE4(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001FF40();
    }
  }

  else if (v6)
  {
    v14 = sub_100030FE4(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138477827;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received Nil HMHomeCloudShareResponse, error %{private}@", &v16, 0xCu);
    }

    [*(a1 + 32) _handleCKShareError:v7 home:*(a1 + 40)];
  }

  v11 = 0;
LABEL_11:
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v11, v7);
  }
}

id sub_10001F074(id a1, HMHome *a2)
{
  v2 = [(HMHome *)a2 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

void sub_10001F444(id a1, id a2)
{
  v2 = a2;
  v3 = [[MSDDataRefresh alloc] initWithReason:8];
  [(MSDDataRefresh *)v3 performRefreshWithCompletion:&stru_100051CE0];
  v2[2](v2, 1);
}

void sub_10001F4C4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100030FE4(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001FF80();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully synched data with CloudKit", v9, 2u);
    }

    v6 = +[MSDDefaultsManager sharedManager];
    v7 = [v6 dictionaryRepresentation];
    v5 = [v7 allKeys];

    v8 = [v5 ms_objectsPassingTest:&stru_100051D20];
    [v8 enumerateObjectsUsingBlock:&stru_100051D60];
  }
}

void sub_10001F5F0(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[MSDDefaultsManager sharedManager];
  [v5 setObject:&off_100053970 forDefault:v4];
}

void sub_10001F66C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10001F68C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDDataRefresh performRefreshWithCompletion:]_block_invoke";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s StrongSelf is Nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001F76C()
{
  sub_1000045A8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error creating service config block %{private}@, Error is Fatal %@", v2, 0x16u);
}

void sub_10001F8E4(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneName];
  sub_1000045A8();
  sub_10001F66C(&_mh_execute_header, v2, v3, "Failed to Zombie delete record zoneID %{private}@, error %{private}@", v4, v5, v6, v7);
}

void sub_10001F984()
{
  sub_10000CBA0();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001FA00()
{
  sub_10000CBA0();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001FABC(uint64_t a1)
{
  v1 = MSDDataRefreshReasonToString(*(*(a1 + 32) + 8));
  sub_1000045A8();
  sub_10001F66C(&_mh_execute_header, v2, v3, "Error refreshing data after %@, %@", v4, v5, v6, v7);
}

void sub_10001FBC8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138477827;
  *(&v8 + 4) = kAppleMusicApplicationIdentifier;
  sub_10000F718(&_mh_execute_header, a1, a3, "Failed to fetch publicDB Info for %{private}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FC44(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDDataRefresh _checkDataSanity:publicDBInfo:home:completion:]";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s Failed to fetch data with Nil AppleMusic recordID and Nil defaultService recordID", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001FDF4()
{
  sub_10000CBA0();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_100020248(uint64_t a1)
{
  qword_100059A88 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000203E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_10002040C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = sub_100030FE4(WeakRetained);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 || (a2 & 1) == 0)
  {
    if (v8)
    {
      *buf = 138412290;
      v27 = *&v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to add subscription to database %@", buf, 0xCu);
    }

    v9 = [v5 CKErrorHasErrorCode:15];
    if (v9)
    {
      v10 = sub_100030FE4(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000218F8();
      }

      WeakRetained[1] = 3;
    }

    else if (([v5 CKErrorHasErrorCode:6] & 1) != 0 || objc_msgSend(v5, "CKErrorHasErrorCode:", 7))
    {
      v11 = [v5 userInfo];
      v12 = [v11 objectForKey:CKErrorRetryAfterKey];
      [v12 doubleValue];
      v14 = v13;

      v16 = sub_100030FE4(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CloudKit asked us to re-try after %f", buf, 0xCu);
      }

      v18 = WeakRetained[1] + 1;
      WeakRetained[1] = v18;
      if (v18 <= 2)
      {
        v19 = v14 + 1.0;
        v20 = sub_100030FE4(v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Retrying...add subscription to database", buf, 2u);
        }

        v21 = dispatch_time(0, (v19 * 1000000000.0));
        v22 = dispatch_get_global_queue(0, 0);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100020724;
        v23[3] = &unk_100051D88;
        objc_copyWeak(&v24, (a1 + 32));
        objc_copyWeak(&v25, (a1 + 40));
        dispatch_after(v21, v22, v23);

        objc_destroyWeak(&v25);
        objc_destroyWeak(&v24);
      }
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully added database subscription", buf, 2u);
    }
  }
}

void sub_100020724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addSubscriptionForDatabase:v2];
}

void sub_1000208B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = *(*(a1 + 32) + 16);
    goto LABEL_12;
  }

  if (![v5 accountStatus])
  {
    v9 = *(*(a1 + 32) + 16);
    goto LABEL_12;
  }

  v8 = [v5 accountStatus];
  if (v8 == 1)
  {
    v8 = [v5 supportsDeviceToDeviceEncryption];
    if (v8)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_12:
      v9();
      goto LABEL_13;
    }
  }

  v10 = sub_100030FE4(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [v5 accountStatus];
    v11 = CKStringFromAccountStatus();
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current account state %@", &v14, 0xCu);
  }

  v12 = *(a1 + 32);
  v13 = [NSError errorWithDomain:CKErrorDomain code:6 userInfo:0];
  (*(v12 + 16))(v12, 0, v13);

LABEL_13:
}

void sub_100020CEC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100030FE4(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021A64();
    }
  }
}

void sub_100020D44(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100030FE4(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021AD4();
    }
  }
}

void sub_100020E5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100020E80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = sub_100030FE4(WeakRetained);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100021B44();
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000211B4;
      v31[3] = &unk_100050AC0;
      v31[4] = v8;
      v11 = v31;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 supportsDeviceToDeviceEncryption];
        [v5 accountStatus];
        v14 = CKStringFromAccountStatus();
        *buf = 138412802;
        v33 = v5;
        v34 = 1024;
        v35 = v13;
        v36 = 2112;
        v37 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetched accountInfo %@ : Status of encryption: %d AccountStatus: %@", buf, 0x1Cu);
      }

      v15 = [v5 accountStatus];
      if (v15 == 3)
      {
        [v8 _handleAccountStatusUnsupported];
      }

      else if (v15 == 1)
      {
        v16 = [v5 supportsDeviceToDeviceEncryption];
        if (v16)
        {
          v17 = v8[4];
          block = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_1000211C0;
          v28 = &unk_100051E40;
          objc_copyWeak(&v30, (a1 + 32));
          v29 = v5;
          dispatch_async(v17, &block);

          objc_destroyWeak(&v30);
        }

        else
        {
          v18 = sub_100030FE4(v16);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100021BB4();
          }

          v19 = +[MSDDefaultsManager sharedManager];
          [v19 setObject:&__kCFBooleanFalse forDefault:@"CKAccountSupportsManatee"];

          [v8 setAccountInfo:0];
        }
      }

      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100021210;
      v23 = &unk_100050AC0;
      v24 = v8;
      v11 = &v20;
    }

    [v8 _withAccountCheckLock:{v11, v20, v21, v22, v23, v24, block, v26, v27, v28}];
  }

  else
  {
    v12 = sub_100030FE4(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100021BF0();
    }
  }
}

void sub_1000211C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDeviceSupportsEncryption:*(a1 + 32)];
}

void sub_100021430(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100030FE4(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021C68();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully refreshed data after CKAccountInfo changed", v6, 2u);
  }
}

void sub_10002160C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100021728;
    v6[3] = &unk_100051EB0;
    v6[4] = WeakRetained;
    v6[5] = &v7;
    [WeakRetained _withAccountCheckLock:v6];
    if (*(v8 + 24) == 1)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      [v4 _checkAccountStatus];
    }

    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v5 = sub_100030FE4(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100021BF0();
    }
  }
}

void sub_100021710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021728(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_100021810(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100021830()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002186C(void *a1)
{
  [a1 databaseScope];
  v1 = CKDatabaseScopeString();
  sub_1000045A8();
  sub_100021810(&_mh_execute_header, v2, v3, "Error adding subscription, unsupported database %@", v4, v5, v6, v7);
}

void sub_1000218F8()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021968()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000219A4()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000219E0(void *a1)
{
  v1 = [a1 userInfo];
  sub_1000045A8();
  sub_100021810(&_mh_execute_header, v2, v3, "Failed to create CkNotification from APSIncomingMessage %@", v4, v5, v6, v7);
}

void sub_100021A64()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021AD4()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021B44()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021BB4()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021BF0()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021C2C()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021C68()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_100021E4C(uint64_t a1)
{
  qword_100059A98 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100021FA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    if (v4)
    {
      [v4 shutdown];
      v5 = v3[1];
      v3[1] = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [*(a1 + 40) _determinePushEnvironment];
    }

    v9 = v7;
    v10 = objc_alloc_init(NSMutableArray);
    [v10 addObject:kAPSTopic];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [*(a1 + 40) consumers];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          if ([v16 shouldEnablePushTopic])
          {
            v17 = [v16 pushTopic];
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    v19 = sub_100030FE4(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting APS connection env - %@, topics %@", buf, 0x16u);
    }

    v20 = [APSConnection alloc];
    v21 = [v20 initWithEnvironmentName:v9 namedDelegatePort:kAPSDelegatePort queue:v3[3]];
    [v21 _setEnabledTopics:v10];
    v22 = sub_100030FE4([v21 setDelegate:*(a1 + 40)]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v21 isConnected];
      *buf = 67109120;
      LODWORD(v32) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ApplePushService Connection Status %d", buf, 8u);
    }

    v24 = v3[1];
    v3[1] = v21;
    v25 = v21;

    v26 = v3[2];
    v3[2] = v9;
    v8 = v9;
  }

  else
  {
    v8 = sub_100030FE4(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100022798(v8);
    }
  }
}

void sub_100022798(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDPushService _statConnectionWithEnvironment:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Nil StrongSelf", &v1, 0xCu);
}

void sub_10002281C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching server preferred push env, %@", &v2, 0xCu);
}

void sub_100023770(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100023A14(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000237DC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138477827;
  *(&v8 + 4) = a1;
  sub_10000F718(&_mh_execute_header, a2, a3, "Failed to get publicDB info for %{private}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100023848(void *a1, NSObject *a2)
{
  v3 = [a1 recordType];
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized record type %{private}@", &v4, 0xCu);
}

void sub_100023924(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[CKRecord(MSDCloudDataRecord) createMediaServiceObjectFromRecord]";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s ServiceIdentifier is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10002399C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[CKRecord(MSDCloudDataRecord) _attemptToLoadPublicInfoAgain]";
  sub_10000F718(&_mh_execute_header, a1, a3, "%s Semaphore timed out!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100023A14(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000F718(&_mh_execute_header, a2, a3, "Error fetching data %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100023B20(uint64_t a1, uint64_t a2)
{
  v7 = objc_opt_new();
  [v7 setUseZoneWidePCS:1];
  v2 = [CKContainerID alloc];
  v3 = [objc_opt_class() MSDCloudKitContainerID];
  v4 = [v2 initWithContainerIdentifier:v3 environment:1];

  v5 = [[CKContainer alloc] initWithContainerID:v4 options:v7];
  v6 = qword_100059AA8;
  qword_100059AA8 = v5;
}

void sub_100023C8C(uint64_t a1)
{
  v1 = [CKContainerID alloc];
  v2 = [objc_opt_class() MSDPublicCloudKitContainerID];
  v5 = [v1 initWithContainerIdentifier:v2 environment:1];

  v3 = [[CKContainer alloc] initWithContainerID:v5];
  v4 = qword_100059AB8;
  qword_100059AB8 = v3;
}

void sub_100023F68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100030FE4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100024450(v10, v11);
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v8, v10);
  }
}

void sub_1000242FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100030FE4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002450C(v10, v11);
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v8, v10);
  }
}

void sub_1000243A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100030FE4(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138477827;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fetchShareMetadataCompletionBlock, any errors %{private}@", &v4, 0xCu);
  }
}

void sub_100024450(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error accepting shares %{private}@", &v2, 0xCu);
}

void sub_10002450C(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching share meta data %{private}@", &v2, 0xCu);
}

uint64_t sub_100024624(uint64_t a1)
{
  qword_100059AC8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000248F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100027A80();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [*(a1 + 48) _getMatchingObjectForServiceName:v5 serviceName:*(a1 + 32)];
    (*(v9 + 16))(v9, v10);
  }
}

void sub_100024A68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100027A80();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [*(a1 + 48) _getMatchingObjectForServiceID:v5 serviceID:*(a1 + 32)];
    (*(v9 + 16))(v9, v10);
  }
}

void sub_100024BDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100027A80();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [*(a1 + 48) _getMatchingObjectForBundleID:v5 bundleID:*(a1 + 32)];
    (*(v9 + 16))(v9, v10);
  }
}

void sub_100025A9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24])
  {
    if (*(a1 + 40))
    {
      v4 = [v2 queuedPendingRequests];
      v3 = objc_retainBlock(*(a1 + 40));
      [v4 addObject:v3];
    }
  }

  else
  {
    v2[24] = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t sub_100025B38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100025B50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100030FE4(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Public] Deleted RecordID %{private}@", &v5, 0xCu);
  }

  [*(*(*(a1 + 32) + 8) + 40) na_safeAddObject:v3];
}

void sub_100025C1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100030FE4(v9);
  v11 = v10;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100027BE4();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138477827;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Public] Adding record - %{private}@", &v12, 0xCu);
    }

    [*(*(*(a1 + 32) + 8) + 40) na_safeAddObject:v8];
  }
}

void sub_100025D48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100030FE4(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished sync with public db", buf, 2u);
    }

    v7 = *(a1 + 32);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100026264;
    v40[3] = &unk_100052030;
    v8 = *(a1 + 48);
    v40[5] = v7;
    v40[6] = v8;
    v40[4] = v5;
    [v7 _withLock:v40];
    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (!v9)
    {
      v9 = v3;
    }

    v10 = v9;
    if (!v10)
    {
      v13 = sub_100030FE4(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Public] Returning information stored in defaults", buf, 2u);
      }

      v5[4] = 0;
      v14 = +[MSDDefaultsManager sharedManager];
      v15 = [v14 objectForDefaultWithCustomClass:@"publicDBData"];

      v16 = *(a1 + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, v15, 0);
      }

      v17 = *(*(*(a1 + 48) + 8) + 40);
      v18 = v5;
      v19 = v15;
      v20 = 0;
      goto LABEL_24;
    }

    IsCode = CKErrorIsCode();
    if (IsCode)
    {
      v12 = sub_100030FE4(IsCode);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Public] Change token expired clearing cached data and fetching data again", buf, 2u);
      }

      [v5 _clearAllDefaultsData];
      [v5 syncDataWithCloudKit:&stru_100052070];
      goto LABEL_21;
    }

    v21 = CKErrorIsCode();
    if ((v21 & 1) != 0 || (v21 = CKErrorIsCode(), v21))
    {
      v22 = sub_100030FE4(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v42 = *&v10;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Public] Received cloud zone deletion error: %{private}@", buf, 0xCu);
      }

      [v5 _clearAllDefaultsData];
      goto LABEL_21;
    }

    if ((CKErrorIsCode() & 1) != 0 || (v25 = CKErrorIsCode(), v25))
    {
      v26 = [v10 userInfo];
      v27 = [v26 objectForKey:CKErrorRetryAfterKey];
      [v27 doubleValue];
      v29 = v28;

      v31 = sub_100030FE4(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received rate limited error by the server, re-trying after %f", buf, 0xCu);
      }

      if (v5[4] < 2uLL)
      {
        v33 = dispatch_time(0, (v29 * 1000000000.0));
        v34 = dispatch_get_global_queue(0, 0);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100026340;
        v39[3] = &unk_100050AC0;
        v39[4] = v5;
        dispatch_after(v33, v34, v39);

LABEL_21:
        v23 = +[MSDDefaultsManager sharedManager];
        v15 = [v23 objectForDefaultWithCustomClass:@"publicDBData"];

        v24 = *(a1 + 40);
        if (v24)
        {
          (*(v24 + 16))(v24, v15, v10);
        }

        v17 = *(*(*(a1 + 48) + 8) + 40);
        v18 = v5;
        v19 = v15;
        v20 = v10;
LABEL_24:
        [v18 executePendingRequests:v17 forPublicDBInfo:v19 error:v20];

        goto LABEL_25;
      }

      v35 = sub_100030FE4(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v36 = "Retry failed, skipping publicDb Update";
        v37 = v35;
        v38 = 2;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
      }
    }

    else
    {
      v35 = sub_100030FE4(v25);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v42 = *&v10;
        v36 = "[Public] Some other error occurred %{private}@";
        v37 = v35;
        v38 = 12;
        goto LABEL_36;
      }
    }

    goto LABEL_21;
  }

LABEL_25:
}

void sub_100026264(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = [*(a1 + 40) queuedPendingRequests];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 40) queuedPendingRequests];
  [v6 removeAllObjects];
}

void sub_1000262E8(id a1, NSArray *a2, NSError *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100030FE4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100027C58();
    }
  }
}

id sub_100026340(uint64_t a1)
{
  ++*(*(a1 + 32) + 32);
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000263C0;
  v3[3] = &unk_1000514E0;
  v3[4] = v1;
  return [v1 syncDataWithCloudKit:v3];
}

void sub_1000263C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  *(*(a1 + 32) + 32) = 0;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100027CC0();
    }
  }
}

void sub_100026424(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v12 = sub_100030FE4(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 zoneName];
    *buf = 138478083;
    v33 = v10;
    v34 = 2113;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Public] Fetched all changes, ChangeToken: %{private}@, RecordZoneName: %{private}@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
  if (v11)
  {
    v15 = sub_100030FE4(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100027D28();
    }

    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

  else if ([*(*(*(a1 + 48) + 8) + 40) count] || objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"))
  {
    v20 = *(a1 + 32);
    v21 = [*(*(*(a1 + 48) + 8) + 40) copy];
    v22 = [*(*(*(a1 + 56) + 8) + 40) copy];
    v31 = 0;
    v23 = [v20 _handleRecordsChanged:v21 deletedRecordIDS:v22 error:&v31];
    v24 = v31;

    if (v24 || (v25 = [v23 count]) == 0)
    {
      v26 = sub_100030FE4(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100027D90();
      }
    }

    else
    {
      v27 = +[MSDDefaultsManager sharedManager];
      [v27 setObjectWithCustomClass:v23 forDefault:@"publicDBData"];

      v28 = *(a1 + 32);
      v29 = [v9 zoneName];
      [v28 _updateDefaultsWithChangeToken:v29 serverChangeToken:v10];

      notify_post([kMediaSetupServicesChanged UTF8String]);
      [*(a1 + 32) _updateLastRefreshTS];
    }
  }

  else
  {
    v30 = sub_100030FE4(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PublicDB records didn't change since last check", buf, 2u);
    }

    [*(a1 + 32) _updateLastRefreshTS];
  }
}

id sub_100026EA8(uint64_t a1, void *a2)
{
  v3 = [a2 serviceID];
  v4 = [*(a1 + 32) serviceID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100027440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100027E38();
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v7);
  }
}

id sub_100027584(uint64_t a1, void *a2)
{
  v3 = [a2 serviceID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100027678(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIDS];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id sub_10002776C(uint64_t a1, void *a2)
{
  v3 = [a2 serviceName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100027894(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100027A60(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100027DF8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create PublicDB object", buf, 2u);
}

void MSDUpdateCKOperationForAttribution(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting applicationBundleIdentifierOverrideForNetworkAttribution to %@ for operation %@", &v8, 0x16u);
    }

    v7 = objc_opt_new();
    [v7 setApplicationBundleIdentifierOverrideForNetworkAttribution:v5];
    [v3 setConfiguration:v7];
  }
}

void sub_1000282DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = sub_100030FE4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) databaseScope];
    v9 = CKDatabaseScopeString();
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Fetched changes for Database", &v18, 0xCu);
  }

  if (v7)
  {
    v11 = sub_100030FE4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030054(a1);
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      (*(v12 + 16))(v12, v7);
    }
  }

  else
  {
    if (v6)
    {
      v13 = [*(a1 + 32) _handleRecordZonesChanged:*(a1 + 40) deletedRecordZones:*(a1 + 48)];
      v14 = sub_100030FE4(v13);
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100030100((a1 + 32));
        }
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          [*(a1 + 32) databaseScope];
          v16 = CKDatabaseScopeString();
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Updating ServerChangeToken for DatabaseOperation", &v18, 0xCu);
        }

        v15 = +[MSDDefaultsManager sharedManager];
        [v15 setObjectWithCustomClass:v6 forDefault:*(a1 + 56)];
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      (*(v17 + 16))(v17, v13);
    }
  }
}

void sub_10002886C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000288A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v15 = sub_100030FE4(WeakRetained);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 allValues];
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fetched RecordZones %@", buf, 0xCu);
    }

    v17 = [v5 allValues];
    v18 = [v17 copy];

    v19 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v76 = sub_10002926C;
    v77 = sub_10002927C;
    v78 = 0;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100029284;
    v62[3] = &unk_1000521F8;
    v62[4] = WeakRetained;
    v66 = buf;
    v63 = *(a1 + 48);
    v64 = *(a1 + 40);
    v20 = v19;
    v65 = v20;
    v12 = [v18 ms_objectsPassingTest:v62];

    if (*(*&buf[8] + 40))
    {
      v22 = *(a1 + 72);
      if (v22)
      {
        (*(v22 + 16))(v22, 0);
      }

      goto LABEL_44;
    }

    v23 = sub_100030FE4(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 138477827;
      v72 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Filtered zoneResult %{private}@", v71, 0xCu);
    }

    v24 = [v12 firstObject];
    v25 = [WeakRetained databaseScope];
    if (v25 == 2)
    {
      v25 = [v12 count];
      if (v25 >= 2)
      {
        v26 = sub_100030FE4(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "There are duplicate recordZones found with the same account, selecting the one created first", v71, 2u);
        }

        v27 = [v20 allKeys];
        v52 = [v27 sortedArrayUsingSelector:"compare:"];

        v29 = sub_100030FE4(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          log = v29;
          v51 = [v52 firstObject];
          v50 = [v20 objectForKey:v51];
          v49 = [v50 zoneID];
          v30 = [v49 zoneName];
          v31 = [v52 firstObject];
          *v71 = 138478083;
          v72 = v30;
          v73 = 2112;
          v74 = v31;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "First zone was created at: %{private}@ created at %@", v71, 0x16u);

          v29 = log;
        }

        v32 = [v52 firstObject];
        v33 = [v20 objectForKey:v32];

        v34 = [v52 firstObject];
        [v20 removeObjectForKey:v34];

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1000294FC;
        v60[3] = &unk_100052240;
        v60[4] = WeakRetained;
        v61 = *(a1 + 56);
        [v20 enumerateKeysAndObjectsUsingBlock:v60];

        v24 = v33;
      }
    }

    if (v24)
    {
      v35 = sub_100030FE4(v25);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 138477827;
        v72 = v24;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Successfully fetched record zone %{private}@", v71, 0xCu);
      }

      v36 = [v24 zoneID];
      [WeakRetained _updateUserInfoToRecordZoneIDMap:v36 userID:*(a1 + 40)];

      v37 = *(a1 + 72);
      if (v37)
      {
        (*(v37 + 16))(v37, v24, 0);
      }

      goto LABEL_43;
    }

    v38 = [WeakRetained databaseScope];
    if (v38 == 2)
    {
      if ([*(a1 + 56) createNewZoneIfMissing])
      {
        v39 = +[NSUUID UUID];
        v40 = [v39 UUIDString];

        v53 = [[CKRecordZone alloc] initWithZoneName:v40];
        v41 = sub_100030FE4(v53);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 138477827;
          v72 = v53;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Saving Record Zone  %{private}@", v71, 0xCu);
        }

        v42 = *(a1 + 56);
        v43 = *(a1 + 64);
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1000295BC;
        v54[3] = &unk_100050EA8;
        v59 = *(a1 + 72);
        v55 = *(a1 + 48);
        v56 = *(a1 + 40);
        v57 = WeakRetained;
        v44 = v53;
        v58 = v44;
        [WeakRetained _saveRecordZone:v44 withAttribution:v43 andOptions:v42 completion:v54];
      }

      else
      {
        v47 = *(a1 + 72);
        if (!v47)
        {
LABEL_43:

LABEL_44:
          _Block_object_dispose(buf, 8);

LABEL_45:
          goto LABEL_46;
        }

        v69 = MSUserInfoErrorStringKey;
        v70 = @"No matching zone found and did not create a new one";
        v40 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v44 = [NSError errorWithDomain:MSErrorDomain code:3 userInfo:v40];
        (*(v47 + 16))(v47, 0, v44);
      }
    }

    else
    {
      v45 = sub_100030FE4(v38);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Zone is missing, but we dont have enough permissions to create", v71, 2u);
      }

      v46 = *(a1 + 72);
      if (!v46)
      {
        goto LABEL_43;
      }

      v40 = [[NSError alloc] initWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(v46 + 16))(v46, 0, v40);
    }

    goto LABEL_43;
  }

  v8 = sub_100030FE4(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100030194();
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v7);
  }

  if ([v7 CKErrorHasErrorCode:112] && CKErrorIsCode())
  {
    v10 = [v7 userInfo];
    WeakRetained = [v10 objectForKey:CKPartialErrorsByItemIDKey];

    v12 = [WeakRetained allKeys];
    v13 = sub_100030FE4(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CKDatabase(MSDCloudDatabase) fetchRecordZoneFor:user:withOptions:withAttribution:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Zones with ManateeIdentity Lost %@", buf, 0x16u);
    }

    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10002925C;
    v67[3] = &unk_100050ED0;
    v14 = *(a1 + 40);
    v67[4] = *(a1 + 32);
    v68 = v14;
    [v12 enumerateObjectsUsingBlock:v67];

    goto LABEL_45;
  }

LABEL_46:
}

uint64_t sub_10002926C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100029284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneID];
  v5 = [v4 zoneName];
  v6 = [v5 isEqualToString:CKRecordZoneDefaultName];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v3 zoneID];
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    v11 = [v8 _fetchPlaceholderRecordData:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = sub_100030FE4(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003021C();
      }

      v7 = 0;
    }

    else
    {
      v13 = [v11 objectForKey:MSHomeParticipantHomeIdentifier];
      v14 = [v11 objectForKey:MSHomeParticipantHomeUserIdentifier];
      v15 = [v11 objectForKey:@"PlaceholderRecordCreationDate"];
      v16 = sub_100030FE4(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v3 zoneID];
        v18 = [v17 zoneName];
        *buf = 138478083;
        v22 = v18;
        v23 = 2113;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Placeholder Record for %{private}@ %{private}@", buf, 0x16u);
      }

      if ([v13 isEqualToString:*(a1 + 40)])
      {
        v7 = [v14 isEqualToString:*(a1 + 48)];
        if (v7 && v15)
        {
          [*(a1 + 56) na_safeSetObject:v3 forKey:v15];
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

void sub_1000294FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 zoneID];
  [v4 deleteRecordZone:v5 withOptions:*(a1 + 40) completion:&stru_100052218];
}

void sub_100029564(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100030FE4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003029C();
    }
  }
}

void sub_1000295BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003030C();
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }
  }

  else
  {
    v10 = MSPlaceholderRecordName;
    v11 = MSPlaceholderRecordType;
    v12 = [v5 zoneID];
    v13 = [CKRecord createRecordWithName:v10 recordType:v11 recordZone:v12];

    [v13 setRecordFieldForKey:MSHomeParticipantHomeIdentifier value:*(a1 + 32)];
    v14 = sub_100030FE4([v13 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:*(a1 + 40)]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138478083;
      v23 = v15;
      v24 = 2113;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to save PlaceHolder record with HomeID: %{private}@, HomeUserID : %{private}@", buf, 0x16u);
    }

    v17 = *(a1 + 48);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002980C;
    v18[3] = &unk_100052290;
    v18[4] = v17;
    v19 = *(a1 + 56);
    v21 = *(a1 + 64);
    v20 = v5;
    [v17 saveRecord:v13 completionHandler:v18];
  }
}

void sub_10002980C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003037C();
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) zoneID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000299AC;
    v11[3] = &unk_100052268;
    v13 = *(a1 + 56);
    v12 = v4;
    [v7 deleteRecordZone:v8 withOptions:0 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) zoneID];
      *buf = 138477827;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully saved record to Zone %{private}@", buf, 0xCu);
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 48), 0);
    }
  }
}

void sub_1000299AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000303EC();
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, *(a1 + 32));
  }
}

void sub_100029D80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100030FE4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003045C();
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v8 != 0, v10);
  }
}

void sub_100029FCC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v7 = [a2 objectForKey:v5];
    (*(v3 + 16))(v3, v7, v6);
  }
}

uint64_t sub_10002A21C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002A7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v51 - 248), 8);
  _Block_object_dispose((v51 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_10002A830(uint64_t a1, void *a2)
{
  v3 = a2;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10002AF20;
  v49[3] = &unk_100050B38;
  v50 = *(a1 + 32);
  v4 = objc_retainBlock(v49);
  v5 = *(*(*(a1 + 80) + 8) + 40);
  if (!v5)
  {
    v5 = v3;
  }

  v6 = v5;
  if (!v6)
  {
    v9 = [*(*(*(a1 + 88) + 8) + 40) na_filter:&stru_100052320];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 40) _checkShareStatusIfApplicable:*(*(&v45 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v11);
    }

    v14 = [*(*(*(a1 + 88) + 8) + 40) na_filter:&stru_100052340];
    v15 = [v14 mutableCopy];

    if ([v15 count] || objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "count"))
    {
      v16 = [*(a1 + 40) _handleChangedRecords:v15 andDeletedRecordIDS:*(*(*(a1 + 96) + 8) + 40)];
      v17 = +[MSDDefaultsManager sharedManager];
      v18 = [v17 objectForDefaultWithCustomClass:*(a1 + 64)];

      v44 = [v18 na_map:&stru_100052360];
      v19 = sub_100030FE4(v44);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v52 = v44;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Services stored in defaults %{private}@", buf, 0xCu);
      }

      if (v16 && (v20 = [v16 count]) != 0)
      {
        [*(a1 + 40) _notifyObserversDataChanged:v16 cachedData:v18];
        [*(a1 + 40) _attemptToRecordServiceRequestLapse:v16 fromRecords:*(*(*(a1 + 88) + 8) + 40)];
        v21 = +[MSDDefaultsManager sharedManager];
        [v21 setObjectWithCustomClass:v16 forDefault:*(a1 + 64)];

        v22 = +[MSDDefaultsManager sharedManager];
        v23 = [v22 objectForDefaultWithCustomClass:*(a1 + 64)];

        v43 = [v23 na_map:&stru_100052380];
        v24 = sub_100030FE4(v43);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v52 = v43;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Services stored in defaults after update %{private}@", buf, 0xCu);
        }

        [*(a1 + 40) _updateServerChangeTokenMap:*(a1 + 48) serverChangeToken:*(*(*(a1 + 104) + 8) + 40)];
        (v4[2])(v4, 1);
        v25 = *(a1 + 72);
        if (v25)
        {
          (*(v25 + 16))(v25, v16, 0);
        }
      }

      else
      {
        v30 = sub_100030FE4(v20);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10003073C();
        }

        (v4[2])(v4, 0);
        v31 = *(a1 + 72);
        if (v31)
        {
          v32 = [NSError errorWithDomain:MSErrorDomain code:7 userInfo:0];
          (*(v31 + 16))(v31, v18, v32);
        }
      }
    }

    else
    {
      (v4[2])(v4, 1);
      v40 = +[MSDDefaultsManager sharedManager];
      v16 = [v40 objectForDefaultWithCustomClass:*(a1 + 64)];

      v41 = *(a1 + 72);
      if (v41)
      {
        (*(v41 + 16))(v41, v16, 0);
      }
    }

    goto LABEL_36;
  }

  IsCode = CKErrorIsCode();
  if (!IsCode)
  {
    if ([v6 code] == 112)
    {
      v26 = sub_100030FE4(112);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000306C4();
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = [*(a1 + 56) objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      [v27 handleCKErrorMissingManateeIdentity:v28 homeUserID:v29];

      goto LABEL_41;
    }

    v33 = CKErrorIsCode();
    if (v33)
    {
      v34 = sub_100030FE4(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100030634(a1);
      }

      v35 = *(a1 + 40);
      v54 = *(a1 + 48);
      v36 = [NSArray arrayWithObjects:&v54 count:1];
      [v35 _purgeDeletedZonesFromDefaults:v36];

      goto LABEL_41;
    }

    if ((CKErrorIsCode() & 1) == 0)
    {
      v37 = CKErrorIsCode();
      if (!v37)
      {
        v42 = sub_100030FE4(v37);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1000305C4();
        }

        goto LABEL_41;
      }
    }

    v38 = +[MSDDefaultsManager sharedManager];
    v9 = [v38 objectForDefaultWithCustomClass:*(a1 + 64)];

    v39 = *(a1 + 72);
    if (v39)
    {
      (*(v39 + 16))(v39, v9, 0);
    }

    (v4[2])(v4, 0);
LABEL_36:

    goto LABEL_43;
  }

  v8 = sub_100030FE4(IsCode);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100030700();
  }

  [*(a1 + 40) _handleCKErrorChangeTokenExpired:*(a1 + 48) userInfo:*(a1 + 56)];
LABEL_41:
  if (*(a1 + 72))
  {
    (v4[2])(v4, 0);
    (*(*(a1 + 72) + 16))();
  }

LABEL_43:
}

id sub_10002AF20(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stopwatch];
  [v4 stop];

  v5 = [*(a1 + 32) stopwatch];
  [v5 toggleLock:1];

  [*(a1 + 32) setDidSucceed:a2];
  v6 = *(a1 + 32);

  return [MSAnalytics sendServiceEvent:v6];
}

BOOL sub_10002AFA8(id a1, CKRecord *a2)
{
  v2 = [(CKRecord *)a2 recordID];
  v3 = [v2 recordName];
  v4 = [v3 isEqualToString:CKRecordNameZoneWideShare];

  return v4;
}

BOOL sub_10002B008(id a1, CKRecord *a2)
{
  v2 = a2;
  v3 = [(CKRecord *)v2 recordType];
  if ([v3 isEqualToString:MSServiceAccountRecordType])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CKRecord *)v2 recordType];
    v4 = [v5 isEqualToString:MSDefaultServiceRecordType];
  }

  return v4;
}

id sub_10002B090(id a1, MSDDefaultsInfo *a2)
{
  v2 = a2;
  v3 = [(MSDDefaultsInfo *)v2 recordName];
  v4 = [(MSDDefaultsInfo *)v2 recordZoneName];

  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

id sub_10002B124(id a1, MSDDefaultsInfo *a2)
{
  v2 = a2;
  v3 = [(MSDDefaultsInfo *)v2 recordName];
  v4 = [(MSDDefaultsInfo *)v2 recordZoneName];

  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

void sub_10002B1B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v12 = sub_100030FE4(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138478083;
    v27 = v9;
    v28 = 2113;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetch Records Completion: recordZoneID %{private}@ serverChangeToken %{private}@", &v26, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
  v14 = sub_100030FE4(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) databaseScope];
    v15 = CKDatabaseScopeString();
    v26 = 138412802;
    v27 = v15;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Fetched all records for recordZoneID %@, serverChangeToken %@", &v26, 0x20u);
  }

  if (v11)
  {
    v17 = sub_100030FE4(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100030778();
    }

    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  else
  {
    v22 = *(*(a1 + 64) + 8);
    v23 = v10;
    v21 = *(v22 + 40);
    *(v22 + 40) = v23;
  }

  if (![*(*(*(a1 + 48) + 8) + 40) count] && !objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count"))
  {
    v24 = sub_100030FE4(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) databaseScope];
      v25 = CKDatabaseScopeString();
      v26 = 138412290;
      v27 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ database did not change since last check", &v26, 0xCu);
    }
  }
}

void sub_10002B434(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) databaseScope];
    v8 = CKDatabaseScopeString();
    v9 = 138412803;
    v10 = v8;
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Deleted RecordID %{private}@ and type %{private}@", &v9, 0x20u);
  }

  [*(*(*(a1 + 40) + 8) + 40) na_safeAddObject:v5];
}

void sub_10002B544(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100030FE4(v9);
  v11 = v10;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) databaseScope];
      v13 = CKDatabaseScopeString();
      v14 = 138412802;
      v15 = v13;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Error fetching record changes for recordID %@, error %@", &v14, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) databaseScope];
      v12 = CKDatabaseScopeString();
      v14 = 138412547;
      v15 = v12;
      v16 = 2113;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Adding recordID %{private}@", &v14, 0x16u);
    }

    [*(*(*(a1 + 40) + 8) + 40) na_safeAddObject:v8];
  }
}

void sub_10002B95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B984(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100030FE4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000307E8(a1, v6, v7);
    }

    if ([v6 CKErrorHasErrorCode:112])
    {
      [*(a1 + 40) handleCKErrorMissingManateeIdentity:*(a1 + 32) homeUserID:0];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_10002BF60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordZoneName];
  v4 = [v2 containsObject:v3];

  return v4;
}

id sub_10002BFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10002C008(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002C0C8;
  v9[3] = &unk_1000524D8;
  v8 = v6;
  v10 = v8;
  if ([v7 na_any:v9])
  {
    [*(a1 + 40) na_safeAddObject:v5];
  }
}

id sub_10002C0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ownerName];
  v5 = [*(a1 + 32) ownerName];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 zoneName];
    v7 = [*(a1 + 32) zoneName];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10002C3C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100030FE4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030884();
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v7 firstObject];
    (*(v12 + 16))(v12, v13, v10);
  }
}

NSCopying *__cdecl sub_10002C828(id a1, MSDDefaultsInfo *a2)
{
  v2 = a2;
  v3 = [(MSDDefaultsInfo *)v2 recordName];
  v4 = [(MSDDefaultsInfo *)v2 recordZoneName];

  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

id sub_10002CE38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:MSDefaultServiceRecordType])
  {
    v5 = [v3 homeUserID];
    if ([v5 isEqual:*(a1 + 32)])
    {
      v6 = [v3 recordZoneName];
      v7 = [*(a1 + 40) recordZoneName];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10002CF04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [v4 isEqualToString:MSDefaultServiceRecordType];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 service];
    v8 = [v7 serviceID];
    v9 = [*(a1 + 32) service];
    v10 = [v9 serviceID];
    if ([v8 isEqual:v10])
    {
      v11 = [v3 homeID];
      v12 = [*(a1 + 32) homeID];
      if ([v11 isEqual:v12])
      {
        v13 = [v3 homeUserID];
        v14 = [*(a1 + 32) homeUserID];
        if ([v13 isEqual:v14])
        {
          [v3 recordZoneName];
          v15 = v18 = v14;
          [*(a1 + 32) recordZoneName];
          v16 = v19 = v13;
          v6 = [v15 isEqualToString:v16];

          v13 = v19;
          v14 = v18;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_10002D270(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    v7 = [a2 firstObject];
    (*(v4 + 16))(v4, v7, v6);
  }
}

uint64_t sub_10002D4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 != 0, a4);
  }

  return result;
}

void sub_10002D748(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100030FE4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Encountered error when modifying record %@", &v13, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v10);
  }
}

void sub_10002DA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002DA6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100030FE4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100030AA4();
    }
  }

  else
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = MSHomeParticipantHomeIdentifier;
    v11 = [v5 recordFieldForKey:MSHomeParticipantHomeIdentifier];
    [v9 na_safeSetObject:v11 forKey:v10];

    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = MSHomeParticipantHomeUserIdentifier;
    v14 = [v5 recordFieldForKey:MSHomeParticipantHomeUserIdentifier];
    [v12 na_safeSetObject:v14 forKey:v13];

    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [v5 creationDate];
    [v15 na_safeSetObject:v16 forKey:@"PlaceholderRecordCreationDate"];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002DDD4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 zoneName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
    [v9 setPreviousServerChangeToken:v10];
    [*(a1 + 40) na_safeSetObject:v9 forKey:*(a1 + 32)];
  }
}

void sub_10002E3AC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100030FE4(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100030C5C();
    }
  }
}

id sub_10002E404(uint64_t a1, void *a2)
{
  v3 = [a2 recordZoneName];
  v4 = [*(a1 + 32) zoneName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10002E6AC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100030FE4(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did handle Manatee loss on SharedDatabase %@", &v4, 0xCu);
  }
}

void sub_10002E8CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100030CCC(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) databaseScope];
    v7 = CKDatabaseScopeString();
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Successfully deleted share after Manatee Loss detected", &v9, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v4);
  }
}

void sub_10002EB04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100030D78();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) databaseScope];
      v7 = CKDatabaseScopeString();
      v8 = [*(a1 + 40) zoneName];
      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Successfully deleted recordZone(%@)", buf, 0x16u);
    }

    v9 = +[MSDDefaultsManager sharedManager];
    v6 = [v9 objectForDefaultWithCustomClass:@"privateDatabaseData"];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002EE04;
    v20[3] = &unk_100050A98;
    v21 = *(a1 + 40);
    v10 = [v6 na_filter:v20];
    if ([v10 count])
    {
      v11 = [CKRecordZone alloc];
      v12 = +[NSUUID UUID];
      v13 = [v12 UUIDString];
      v14 = [v11 initWithZoneName:v13];

      v15 = *(a1 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10002EE68;
      v17[3] = &unk_1000525F8;
      v17[4] = v15;
      v18 = v10;
      v19 = *(a1 + 40);
      [v15 _saveRecordZone:v14 withAttribution:0 andOptions:0 completion:v17];
    }

    else
    {
      v14 = sub_100030FE4(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 40) zoneName];
        *buf = 138412290;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No cached Info associated with Zone %@", buf, 0xCu);
      }
    }
  }
}

id sub_10002EE04(uint64_t a1, void *a2)
{
  v3 = [a2 recordZoneName];
  v4 = [*(a1 + 32) zoneName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10002EE68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully saved new zone %@", buf, 0xCu);
    }

    [*(a1 + 32) _populateRecordZoneWithCachedInfo:v5 cachedInfo:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100030DE8();
    }
  }

  v9 = *(a1 + 32);
  v11 = *(a1 + 48);
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v9 _purgeDeletedZonesFromDefaults:v10];
}

BOOL sub_10002F600(id a1, MSDDefaultsInfo *a2)
{
  v2 = [(MSDDefaultsInfo *)a2 recordType];
  v3 = [v2 isEqualToString:MSServiceAccountRecordType];

  return v3;
}

void sub_10002F648(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = sub_100030FE4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030E94();
    }
  }

  v12 = [v7 count];
  v13 = [*(a1 + 32) count];
  if (v12 == v13)
  {
    v14 = sub_100030FE4(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully saved records after manatee loss", v15, 2u);
    }
  }
}

BOOL sub_10002F988(id a1, CKShareParticipant *a2)
{
  v2 = a2;
  v3 = [(CKShareParticipant *)v2 role]!= 1 && [(CKShareParticipant *)v2 invitationTokenStatus]== 3;

  return v3;
}

void sub_10002F9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100030FE4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100030F04();
    }
  }

  else
  {
    objc_opt_class();
    v7 = *(a1 + 32);
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = +[MSDHomeManager sharedManager];
    v11 = [v10 currentHome];
    v12 = [MSDHomeCloudShareCreate cloudShareForHome:v11];

    [v12 shareRecordWithOwner:v9 completion:&stru_1000526E8];
  }
}

void sub_10002FAE0(id a1, HMHomeCloudShareResponse *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100030FE4(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100030F74();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully established share after manatee loss", v6, 2u);
  }
}

id sub_10002FF94(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 serviceID];
  v5 = [v4 UUIDString];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

BOOL sub_100030000(id a1, CKRecord *a2)
{
  v2 = [(CKRecord *)a2 recordFieldForKey:MediaServiceIdentifier];
  v3 = v2 != 0;

  return v3;
}

void sub_100030054(uint64_t a1)
{
  [*(a1 + 32) databaseScope];
  v1 = CKDatabaseScopeString();
  sub_1000045A8();
  sub_100030044();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100030100(id *a1)
{
  [*a1 databaseScope];
  v1 = CKDatabaseScopeString();
  sub_1000045A8();
  sub_100030044();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003029C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003030C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003037C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000303EC()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}