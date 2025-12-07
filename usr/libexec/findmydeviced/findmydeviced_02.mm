void sub_10014495C(uint64_t a1)
{
  v2 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 32)];
  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to delete register context for accessory %@", &v5, 0xCu);
  }

  [FMPreferencesUtil removeKey:v2 inDomain:kFMDNotBackedUpPrefDomain];
  v4 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 32)];
  [AccessoryRegisterAction saveAccessoryRegisterDigest:0 forKey:v4];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100002880(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "findmydeviced has been launched", v5, 2u);
  }

  v2 = +[FMDDaemon sharedInstance];
  [v2 initialize];

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_10014503C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10014505C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 httpResponseError];
  if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_5;
  }

  if ([v3 cancelled])
  {
LABEL_5:
    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_10:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v11 = [v3 httpResponseStatus];
      v12 = [v3 httpResponseError];
      *buf = 138412802;
      v28 = v10;
      v29 = 2048;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v14 = [v3 httpResponseHeaders];
  v26 = [v14 objectForKeyedSubscript:@"Last-Modified"];

  v15 = [v3 httpResponseHeaders];
  v25 = [v15 objectForKeyedSubscript:@"etag"];

  v24 = [FMDStandardAsset alloc];
  v16 = [WeakRetained asset];
  v17 = [v16 fileURL];
  v18 = [WeakRetained asset];
  v19 = [v18 assetType];
  v20 = [WeakRetained asset];
  v21 = [v20 url];
  v22 = [(FMDStandardAsset *)v24 initWithFileURL:v17 lastModified:v26 etag:v25 type:v19 url:v21];

  v23 = [v3 fileLocation];
  [WeakRetained _saveAsset:v22 fromLocation:v23];

LABEL_12:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_100146878(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_100146BEC(id a1)
{
  v1 = sub_100002880(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10022730C(v1);
  }

  v2 = [[FMIPConfig alloc] initSingleton];
  v3 = qword_1003145D0;
  qword_1003145D0 = v2;
}

void sub_100147AF8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100002880(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100227450(v5, v6);
    }
  }

  v7 = sub_100002880(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote Lock: CDP update result %i", v8, 8u);
  }
}

void sub_100147C6C(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else if (![(FMDRequest *)v2 cancelled])
    {
      [FMDPreferencesMgr setNeedsLostModeExitAuth:0];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, FMDLostModeExitAuthCompleteNotification, 0, 0, 1u);
      v6 = sub_100002880(v15);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v8 = [(FMDRequest *)v2 fm_logID];
      v16 = 138412546;
      v17 = v8;
      v18 = 2048;
      v19 = [(FMDRequest *)v2 httpResponseStatus];
      v9 = "%@: successful with status %ld.";
      v10 = v6;
      v11 = 22;
      goto LABEL_9;
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = v4;
    v6 = sub_100002880(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(FMDRequest *)v2 fm_logID];
        v16 = 138412290;
        v17 = v8;
        v9 = "%@: Cancelled";
        v10 = v6;
        v11 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
LABEL_12:
      }
    }

    else if (v7)
    {
      v8 = [(FMDRequest *)v2 fm_logID];
      v12 = [(FMDRequest *)v2 httpResponseStatus];
      v13 = [(FMDRequest *)v2 httpResponseError];
      v16 = 138412802;
      v17 = v8;
      v18 = 2048;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v16, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

void sub_100147FF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending %ld tracked locations", &v7, 0xCu);
    }

    v6 = [[FMDLocation alloc] initWithLocation:*(a1 + 32) eventType:0 positionType:255];
    [*(a1 + 40) sendTrackedLocations:v4 withCurrentLocation:v6];
  }

  else
  {
    v6 = sub_100002880(v3);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "No tracked locations available. Not sending anything", &v7, 2u);
    }
  }
}

NSDictionary *__cdecl sub_1001482EC(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_10014833C(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_1001483B8(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else
    {
      v14 = [(FMDRequest *)v2 cancelled];
      if ((v14 & 1) == 0)
      {
        v6 = sub_100002880(v14);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v8 = [(FMDRequest *)v2 fm_logID];
        v15 = 138412546;
        v16 = v8;
        v17 = 2048;
        v18 = [(FMDRequest *)v2 httpResponseStatus];
        v9 = "%@: successful with status %ld";
        v10 = v6;
        v11 = 22;
        goto LABEL_9;
      }
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = v4;
    v6 = sub_100002880(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(FMDRequest *)v2 fm_logID];
        v15 = 138412290;
        v16 = v8;
        v9 = "%@: Cancelled";
        v10 = v6;
        v11 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
LABEL_12:
      }
    }

    else if (v7)
    {
      v8 = [(FMDRequest *)v2 fm_logID];
      v12 = [(FMDRequest *)v2 httpResponseStatus];
      v13 = [(FMDRequest *)v2 httpResponseError];
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v15, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

void sub_100148B58(id a1)
{
  v1 = objc_alloc_init(FMDLocalActivationLockInfoManager);
  v2 = qword_1003145E0;
  qword_1003145E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100148CB8(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = [v2 retrieveMaskedAppleID];
  [*(a1 + 32) setMaskedAppleID:v3];

  v4 = [*(a1 + 32) store];
  v5 = [v4 retrieveActivationLockStatus];
  [*(a1 + 32) setActivationLockStatus:v5];

  v6 = [*(a1 + 32) store];
  v7 = [v6 retrieveOfflineFindingStatus];
  [*(a1 + 32) setOfflineFindingStatus:v7];

  v8 = [*(a1 + 32) store];
  v9 = [v8 retrieveOfflineFindingInfo];
  [*(a1 + 32) setOfflineFindingInfo:v9];

  v11 = sub_100002880(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) fm_logID];
    v13 = [*(a1 + 32) maskedAppleID];
    v14 = [*(a1 + 32) activationLockStatus];
    v15 = [*(a1 + 32) offlineFindingStatus];
    v16 = [*(a1 + 32) offlineFindingInfo];
    if (v16)
    {
      v17 = @"(not-nil)";
    }

    else
    {
      v17 = @"(nil)";
    }

    v18 = [*(a1 + 32) offlineFindingInfo];
    v19 = 138413570;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v17;
    v29 = 2048;
    v30 = [v18 length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Cached local AL/SP state from persistent store. maskedAppleID %@ AL %@ OfflineFinding %@ offlineFindingInfo %@ datalen %lu", &v19, 0x3Eu);
  }
}

void sub_100148FB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) fm_logID];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Got BA status - %@ with reason - %@", &v10, 0x20u);
  }

  v9 = [v5 isEqualToString:SPServiceStateEnabled];
  if ((v9 & 1) != 0 || [v5 isEqualToString:SPServiceStateDisabled])
  {
    [*(a1 + 32) updateOfflineFindingStatus:v9];
  }
}

void sub_100149190(uint64_t a1)
{
  v2 = [*(a1 + 32) activationLockStatus];
  if (!v2 || (v3 = v2, [*(a1 + 32) activationLockStatus], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v6 = *(a1 + 40), v4, v3, v6 != v5))
  {
    v7 = [NSNumber numberWithBool:*(a1 + 40)];
    v8 = [*(a1 + 32) store];
    [v8 updateActivationLockStatus:v7];

    [*(a1 + 32) setActivationLockStatus:v7];
    v9 = sub_100002880([*(a1 + 32) _postLocalActivationLockInfoChangedNotification]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) fm_logID];
      v11 = v10;
      v12 = @"NO";
      if (*(a1 + 40))
      {
        v12 = @"YES";
      }

      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Updating activation lock status with %@", &v13, 0x16u);
    }
  }
}

void sub_1001493B0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[FMDServiceProvider activeServiceProvider];
    v3 = [v2 fmipState];
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL) != 2;
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v5 = sub_100002880(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) fm_logID];
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Overriding offlineFindingStatus to NO since FMIP is OFF", &v17, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [*(a1 + 32) offlineFindingStatus];
  if (!v7 || (v8 = v7, [*(a1 + 32) offlineFindingStatus], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v4 != v10))
  {
    v11 = [NSNumber numberWithBool:*(a1 + 40)];
    v12 = [*(a1 + 32) store];
    [v12 updateOfflineFindingStatus:v11];

    [*(a1 + 32) setOfflineFindingStatus:v11];
    v13 = sub_100002880([*(a1 + 32) _postLocalActivationLockInfoChangedNotification]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) fm_logID];
      v15 = v14;
      v16 = @"NO";
      if (*(a1 + 40))
      {
        v16 = @"YES";
      }

      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Updating offlineFindingStatus with %@", &v17, 0x16u);
    }
  }
}

id sub_100149850(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 clearMaskedAppleID];

  [*(a1 + 32) setMaskedAppleID:0];
  v3 = *(a1 + 32);

  return [v3 _postLocalActivationLockInfoChangedNotification];
}

void sub_10014998C(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActivationLockInfo);
  v3 = [*(a1 + 32) maskedAppleID];
  [v2 setMaskedAppleID:v3];

  v4 = [*(a1 + 32) activationLockStatus];
  [v2 setIsActivationLocked:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) offlineFindingStatus];
  [v2 setIsOfflineFindingEnabled:{objc_msgSend(v5, "BOOLValue")}];

  v6 = +[FMDRestrictedRegions sharedInstance];
  [v2 setIsRestrictedSKU:{objc_msgSend(v6, "isRestrictedSKU")}];

  [v2 setIsFindMyLPEMEnabled:{objc_msgSend(*(a1 + 32), "_readIODeviceSupportsFindMy")}];
  [*(a1 + 32) _addLocalizedStrings:v2];
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100149B0C;
  v10[3] = &unk_1002CD8B0;
  v8 = *(a1 + 40);
  v11 = v2;
  v12 = v8;
  v9 = v2;
  dispatch_async(v7, v10);
}

void sub_100149C04(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 updateOfflineFindingInfo:*(a1 + 40)];

  [*(a1 + 32) setOfflineFindingInfo:*(a1 + 40)];
  [*(a1 + 32) _postLocalActivationLockInfoChangedNotification];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149CD4;
  block[3] = &unk_1002CE250;
  v5 = *(a1 + 48);
  dispatch_async(v3, block);
}

void sub_100149DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOfflineFindingInfoInternal];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100149FB0;
    block[3] = &unk_1002CD8B0;
    v15 = *(a1 + 40);
    v14 = v2;
    dispatch_async(v3, block);

    v4 = v15;
  }

  else if ([*(a1 + 32) _isWithinDaemonStartupThreshold])
  {
    v5 = dispatch_time(0, 3000000000);
    v6 = [*(a1 + 32) storeAccessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100149FC8;
    v11[3] = &unk_1002CE228;
    v7 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v7;
    dispatch_after(v5, v6, v11);

    v4 = v12;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10014A0C4;
    v9[3] = &unk_1002CE250;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);

    v4 = v10;
  }
}

void sub_100149FC8(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fm_logID];
    v5 = 138412546;
    v6 = v3;
    v7 = 2048;
    v8 = 0x4008000000000000;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Executing fetchOfflineInfo after delay %f", &v5, 0x16u);
  }

  v4 = [*(a1 + 32) _fetchOfflineFindingInfoInternal];
  (*(*(a1 + 40) + 16))();
}

void sub_10014A228(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 clearOfflineFindingInfo];

  [*(a1 + 32) setOfflineFindingInfo:0];
  [*(a1 + 32) _postLocalActivationLockInfoChangedNotification];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A2F8;
  block[3] = &unk_1002CE250;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

id sub_10014A3A0(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 clearMaskedAppleID];

  [*(a1 + 32) setMaskedAppleID:0];
  v3 = [*(a1 + 32) store];
  [v3 updateActivationLockStatus:&__kCFBooleanFalse];

  [*(a1 + 32) setActivationLockStatus:0];
  v4 = [*(a1 + 32) store];
  [v4 updateOfflineFindingStatus:&__kCFBooleanFalse];

  [*(a1 + 32) setOfflineFindingStatus:0];
  v5 = [*(a1 + 32) store];
  [v5 clearOfflineFindingInfo];

  [*(a1 + 32) setOfflineFindingInfo:0];
  v6 = *(a1 + 32);

  return [v6 _postLocalActivationLockInfoChangedNotification];
}

void sub_10014AC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014ACD4(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if ((result + 1) >= 2)
  {
    return IOObjectRelease(result);
  }

  return result;
}

void sub_10014BFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014C014(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completion];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }
}

void sub_10014C8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014C940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 134217984;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) Timeout waiting for device to connect.", buf, 0xCu);
  }

  v5 = [WeakRetained accessory];
  v6 = [v5 connectionState];

  if (v6 == 1)
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"Timeout waiting for in-ear state.";
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.FMDAccessoryPlaySoundAction" code:1 userInfo:v7];
    [WeakRetained setTimeoutError:v8];

    v9 = [WeakRetained commandStatusForInternalAccessoryAudioSafetyStatus:{objc_msgSend(WeakRetained, "defaultAudioSafetyStatus")}];
  }

  else
  {
    v9 = [NSNumber numberWithInteger:qword_100312B18];
  }

  v10 = v9;
  [WeakRetained notifyCompletionWithStatus:v9];

  [WeakRetained terminate];
}

void sub_10014CC10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained terminated];
  if (v3)
  {
    v4 = sub_100002880(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134218240;
      v85 = v5;
      v86 = 1024;
      LODWORD(v87) = [WeakRetained terminated];
      v6 = "AccessoryPlaySoundAction (0x%lX) attempting to execute after being terminated T%i";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  v7 = [WeakRetained playingSound];
  if (!v7)
  {
    v4 = [WeakRetained accessory];
    if (![v4 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        [*(a1 + 32) _executePlaySoundUsingExtensions];
      }

      else
      {
        v13 = sub_100002880(isKindOfClass);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          *buf = 134217984;
          v85 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) could not find an audio accessory", buf, 0xCu);
        }

        [*(a1 + 32) cancelTimer];
        v15 = [NSNumber numberWithInteger:qword_100312B10];
        [WeakRetained notifyCompletionWithStatus:v15];

        [WeakRetained terminate];
      }

      goto LABEL_78;
    }

    v4 = v4;
    v9 = [WeakRetained channels];
    if (![v9 count])
    {
      [WeakRetained cancelTimer];
      v16 = [WeakRetained rampDownDuration];
      v17 = sub_100002880(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 134218242;
        v85 = v18;
        v86 = 2112;
        v87 = v4;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PlaySoundAction (0x%lX) Stopping sound for accessory %@", buf, 0x16u);
      }

      v19 = [WeakRetained accessoryRegistry];
      v80[0] = _NSConcreteStackBlock;
      v80[1] = 3221225472;
      v80[2] = sub_10014DA20;
      v80[3] = &unk_1002CD4C8;
      v80[4] = WeakRetained;
      [v19 updateAccessory:v4 playbackChannels:v9 completion:v80];
      v20 = +[FMDFMIPManager sharedInstance];
      [v16 doubleValue];
      v22 = v21;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_10014DA88;
      v76[3] = &unk_1002CE2D8;
      v23 = v4;
      v24 = *(a1 + 32);
      v77 = v23;
      v78 = v24;
      v79 = WeakRetained;
      [v20 stopPlayingSoundForAccessory:v23 rampDownDuration:v76 completion:v22];

      goto LABEL_21;
    }

    if ([v4 connectionState]!= 1)
    {
      v25 = [WeakRetained forceConnection];
      if (v25)
      {
        v26 = sub_100002880(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          *buf = 134218242;
          v85 = v27;
          v86 = 2112;
          v87 = v4;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) Waiting to play sound 'till accessory is connected : %@", buf, 0x16u);
        }

        v28 = [WeakRetained bluetoothManager];
        v29 = [v4 address];
        [v28 connectToDeviceAddress:v29];
      }

      goto LABEL_77;
    }

    v10 = [WeakRetained bypassInEarCheck];
    if (v10)
    {
      goto LABEL_12;
    }

    v30 = +[FMSystemInfo sharedInstance];
    if ([v30 isInternalBuild])
    {
      v31 = [FMPreferencesUtil BOOLForKey:@"DisableInEarCheck" inDomain:kFMDNotBackedUpPrefDomain];

      if (v31)
      {
LABEL_12:
        v11 = 1;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v10 = [v4 playingSound];
    v11 = v10;
LABEL_31:
    v32 = sub_100002880(v10);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 32);
      *buf = 134218496;
      v85 = v33;
      v86 = 2050;
      v87 = v4;
      v88 = 2048;
      v89 = [v4 audioSafetyStatus];
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) audioAccessory<%{public}p>.inEar %lu", buf, 0x20u);
    }

    v35 = sub_100002880(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 32);
      v37 = [v4 playingSound];
      *buf = 134218496;
      v85 = v36;
      v86 = 2050;
      v87 = v4;
      v88 = 1024;
      LODWORD(v89) = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) audioAccessory<%{public}p>.playingSound %i", buf, 0x1Cu);
    }

    if (v11)
    {
      v39 = sub_100002880(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 32);
        *buf = 134217984;
        v85 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) ear check disabled.", buf, 0xCu);
      }

LABEL_39:
      [WeakRetained _playSoundNow:v4];
      goto LABEL_77;
    }

    v41 = [v4 audioSafetyStatus];
    if (v41 > 3)
    {
      if (v41 > 5)
      {
        if (v41 == 6)
        {
          v73 = sub_100002880(6);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = *(a1 + 32);
            *buf = 134217984;
            v85 = v74;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found onTableTop true - waiting for user warning.", buf, 0xCu);
          }

          v44 = &qword_100312B48;
        }

        else
        {
          if (v41 != 7)
          {
            goto LABEL_77;
          }

          v47 = sub_100002880(7);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(a1 + 32);
            *buf = 134217984;
            v85 = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found carryingCaseClosed true - waiting for user warning.", buf, 0xCu);
          }

          v44 = &qword_100312B50;
        }
      }

      else if (v41 == 4)
      {
        v59 = sub_100002880(4);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = *(a1 + 32);
          *buf = 134217984;
          v85 = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found onNeck true - waiting for user warning.", buf, 0xCu);
        }

        v44 = &qword_100312B38;
      }

      else
      {
        v42 = sub_100002880(5);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a1 + 32);
          *buf = 134217984;
          v85 = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found onHead true - waiting for user warning.", buf, 0xCu);
        }

        v44 = &qword_100312B40;
      }
    }

    else
    {
      if (v41 <= 1)
      {
        if (v41)
        {
          if (v41 != 1)
          {
            goto LABEL_77;
          }

          goto LABEL_39;
        }

        v49 = sub_100002880(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = *(a1 + 32);
          *buf = 134217984;
          v85 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found inEar Unknown - waiting for update.", buf, 0xCu);
        }

        v51 = [WeakRetained inEarTimer];

        if (v51)
        {
          goto LABEL_77;
        }

        v52 = [FMDispatchTimer alloc];
        v53 = [*(a1 + 32) inEarDetectionTimeout];
        [v53 doubleValue];
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_10014D8A4;
        v81[3] = &unk_1002CD478;
        v54 = *(a1 + 32);
        v81[4] = WeakRetained;
        v81[5] = v54;
        v55 = [v52 initWithQueue:&_dispatch_main_q timeout:v81 completion:?];
        [WeakRetained setInEarTimer:v55];

        v56 = [WeakRetained inEarTimer];
        [v56 start];

        v16 = sub_100002880(v57);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 32);
          *buf = 134217984;
          v85 = v58;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) started pending in ear detection timer (from unknown).", buf, 0xCu);
        }

LABEL_21:

LABEL_77:
        goto LABEL_78;
      }

      if (v41 == 2)
      {
        v61 = sub_100002880(2);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(a1 + 32);
          *buf = 134217984;
          v85 = v62;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found inEar pending - waiting for other bud to report.", buf, 0xCu);
        }

        v63 = [WeakRetained inEarTimer];

        if (!v63)
        {
          v64 = [FMDispatchTimer alloc];
          v65 = [*(a1 + 32) inEarDetectionTimeout];
          [v65 doubleValue];
          v67 = v66;
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_10014D7F4;
          v82[3] = &unk_1002CDD98;
          v82[4] = *(a1 + 32);
          v82[5] = WeakRetained;
          v83 = v4;
          v68 = [v64 initWithQueue:&_dispatch_main_q timeout:v82 completion:v67];
          [WeakRetained setInEarTimer:v68];

          v69 = [WeakRetained inEarTimer];
          [v69 start];

          v71 = sub_100002880(v70);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = *(a1 + 32);
            *buf = 134217984;
            v85 = v72;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) started pending in ear detection timer (from pending).", buf, 0xCu);
          }
        }

        goto LABEL_77;
      }

      v45 = sub_100002880(3);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(a1 + 32);
        *buf = 134217984;
        v85 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found inEar true - waiting for user warning.", buf, 0xCu);
      }

      v44 = &qword_100312B20;
    }

    v75 = [NSNumber numberWithInteger:*v44];
    [WeakRetained notifyCompletionWithStatus:v75];

    [WeakRetained terminate];
    goto LABEL_77;
  }

  v4 = sub_100002880(v7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218240;
    v85 = v8;
    v86 = 1024;
    LODWORD(v87) = [WeakRetained playingSound];
    v6 = "AccessoryPlaySoundAction (0x%lX) attempting to execute after starting playback P%i";
    goto LABEL_7;
  }

LABEL_78:
}

id sub_10014D7F4(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) done waiting for in-ear, playing sound now.", &v5, 0xCu);
  }

  return [*(a1 + 40) _playSoundNow:*(a1 + 48)];
}

void sub_10014D8A4(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10014D938;
  v3[3] = &unk_1002CD478;
  v4 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  dispatch_sync(v2, v3);
}

id sub_10014D938(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) done waiting for in-ear. Asking for audio safety warning confirmation.", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 commandStatusForInternalAccessoryAudioSafetyStatus:{objc_msgSend(v4, "defaultAudioSafetyStatus")}];
  [v4 notifyCompletionWithStatus:v5];

  return [*(a1 + 40) terminate];
}

void sub_10014DA20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:qword_100312B10];
  [v1 notifyCompletionWithStatus:v2];
}

void sub_10014DA88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002276EC();
    }
  }

  v6 = [*(a1 + 40) discovery];
  [v6 stopDiscovery];

  [*(a1 + 48) terminate];
}

void sub_10014DC54(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_10017DBC8(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100227768();
    }
  }
}

void sub_10014EBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014ECA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:qword_100312B10];
  [v1 notifyCompletionWithStatus:v2];
}

void sub_10014ED10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_10017DBC8(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002276EC();
    }
  }

  [*(a1 + 40) terminate];
}

void sub_10014ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3 || (a2 & 1) == 0)
  {
    v5 = sub_10017DBC8(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100227A64();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10014EDF0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_10017DBC8(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a2;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "safe = %d alertType = %@ error = %@", v13, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10014EF08(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10017DBC8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "discovery started with error %@", &v4, 0xCu);
  }
}

void sub_10014EFB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10017DBC8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSDate date];
    *buf = 138412546;
    v40 = v5;
    v41 = 2112;
    v42 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "completion called at %@ error = %@", buf, 0x16u);
  }

  if (v3)
  {
    v7 = sub_10017DBC8(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100227AA0();
    }

    v8 = [*(a1 + 32) timeoutDate];
    v9 = +[NSDate date];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = [*(a1 + 32) playSoundRetryCounter];
    if (v12 > 5 || v11 < 1.0)
    {
      v28 = sub_100002880(v12);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 48);
        v32 = [*(a1 + 32) playSoundRetryCounter];
        *buf = 138412802;
        v40 = v31;
        v41 = 2048;
        v42 = v11;
        v43 = 2048;
        v44 = v32;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Timed out waiting for accessory[%@]: wait time remaining: %lu for retry count: %lu", buf, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v30 = [NSNumber numberWithInteger:qword_100312B18];
      [WeakRetained notifyCompletionWithStatus:v30];

      [*(a1 + 32) terminate];
    }

    else
    {
      v13 = dispatch_time(0, 1000000000);
      v14 = [*(a1 + 32) serialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10014F5F4;
      block[3] = &unk_1002CD4C8;
      block[4] = *(a1 + 32);
      dispatch_after(v13, v14, block);
    }
  }

  else
  {
    [*(a1 + 32) setPlayingSound:1];
    [*(a1 + 32) cancelTimer];
    v15 = objc_loadWeakRetained((a1 + 56));
    v16 = *(a1 + 40);
    v17 = [v15 accessory];
    v18 = [v15 channels];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10014F484;
    v37[3] = &unk_1002CD518;
    objc_copyWeak(&v38, (a1 + 56));
    [v16 updateAccessory:v17 playbackChannels:v18 completion:v37];

    v19 = +[NSDate date];
    v20 = [FMDispatchTimer alloc];
    v21 = &_dispatch_main_q;
    v22 = [v15 duration];
    [v22 doubleValue];
    v24 = v23;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10014F4F8;
    v34[3] = &unk_1002CE3B8;
    objc_copyWeak(&v36, (a1 + 56));
    v34[4] = *(a1 + 32);
    v25 = v19;
    v35 = v25;
    v26 = [v20 initWithQueue:&_dispatch_main_q timeout:v34 completion:v24];
    [v15 setTimeoutTimer:v26];

    v27 = [v15 timeoutTimer];
    [v27 start];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
  }
}

void sub_10014F484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSNumber numberWithInteger:qword_100312B10];
  [WeakRetained notifyCompletionWithStatus:v1];
}

void sub_10014F4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_10017DBC8(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:*(a1 + 40)];
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) ending, sound played %f", &v7, 0x16u);
  }

  [WeakRetained terminate];
}

void sub_100150014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100150040(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (!v3)
  {
    v19 = [*(a1 + 40) accessoryRegistry];
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100150754;
    v39[3] = &unk_1002CD518;
    objc_copyWeak(&v40, (a1 + 64));
    [v19 updateAccessory:v20 playbackChannels:v21 completion:v39];
    v22 = +[NSDate date];
    v23 = [FMDispatchTimer alloc];
    v24 = &_dispatch_main_q;
    [*(a1 + 56) doubleValue];
    v26 = v25;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001507C8;
    v36[3] = &unk_1002CE3B8;
    objc_copyWeak(&v38, (a1 + 64));
    v36[4] = *(a1 + 40);
    v27 = v22;
    v37 = v27;
    v28 = [v23 initWithQueue:&_dispatch_main_q timeout:v36 completion:v26];
    [v5 setTimeoutTimer:v28];

    v29 = [v5 timeoutTimer];
    [v29 start];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);

    goto LABEL_14;
  }

  v6 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100227ADC();
  }

  v7 = [v3 domain];
  if (![v7 isEqualToString:kFMDAccessoryPlaySoundErrorDomain])
  {

    goto LABEL_13;
  }

  v8 = [v3 code] == 0;

  if (!v8)
  {
LABEL_13:
    v30 = [NSNumber numberWithInteger:qword_100312B18];
    [v5 notifyCompletionWithStatus:v30];

    [v5 terminate];
    goto LABEL_14;
  }

  v9 = [v5 timeoutDate];
  v10 = +[NSDate date];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  v14 = sub_100002880(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    *buf = 134218240;
    v46 = v15;
    v47 = 2048;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) waiting for routable accessory for: %lu", buf, 0x16u);
  }

  v16 = [*(a1 + 40) playSoundRetryCounter];
  if (v16 > 5 || v12 < 0.0)
  {
    v31 = sub_100002880(v16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      v34 = [*(a1 + 40) playSoundRetryCounter];
      *buf = 138412802;
      v46 = v33;
      v47 = 2048;
      v48 = v12;
      v49 = 2048;
      v50 = v34;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Timed out routing for accessory[%@]: wait time remaining: %lu for retry count: %lu", buf, 0x20u);
    }

    v32 = [NSNumber numberWithInteger:qword_100312B18];
    [v5 notifyCompletionWithStatus:v32];

    [*(a1 + 40) terminate];
  }

  else
  {
    v17 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100150550;
    block[3] = &unk_1002CE408;
    v35 = *(a1 + 32);
    v18 = v35.i64[0];
    v42 = vextq_s8(v35, v35, 8uLL);
    v44 = v12;
    v43 = v5;
    dispatch_after(v17, &_dispatch_main_q, block);
  }

LABEL_14:
}

void sub_100150550(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) playSoundRetryCounter];
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction: RETRY: %lu", buf, 0xCu);
  }

  v4 = +[FMDFMIPManager sharedInstance];
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100150698;
  v9[3] = &unk_1002CE2D8;
  v7 = v5;
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 32);
  [v4 waitForRoutableAccessory:v7 timeout:v9 completion:v6];
}

void sub_100150698(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100227B58();
    }

    v6 = *(a1 + 40);
    v7 = [NSNumber numberWithInteger:qword_100312B18];
    [v6 notifyCompletionWithStatus:v7];

    [*(a1 + 48) terminate];
  }

  else
  {
    [*(a1 + 40) setPlayingSound:0];
    [*(a1 + 40) _playSoundNow:*(a1 + 32)];
  }
}

void sub_100150754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSNumber numberWithInteger:qword_100312B10];
  [WeakRetained notifyCompletionWithStatus:v1];
}

void sub_1001507C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:*(a1 + 40)];
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) ending, sound played %f", &v7, 0x16u);
  }

  [WeakRetained terminate];
}

void sub_100150C00(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002880(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100227BD4();
    }
  }

  v5 = sub_100002880(v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stop sound from panning done!", v6, 2u);
  }
}

void sub_100151000(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id sub_10015102C(uint64_t a1, void *a2)
{

  return [a2 code];
}

void sub_1001515AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[FMDNanoRegistryAccessory alloc] initWithNRDevice:v3];

  [(FMDNanoRegistryAccessory *)v6 setMigrationPossible:1];
  v4 = *(a1 + 32);
  v5 = [(FMDNanoRegistryAccessory *)v6 accessoryIdentifier];
  [v4 fm_safeSetObject:v6 forKey:v5];
}

void sub_100151774(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32) || ([v10 valueForProperty:?], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v5 = v10, v4))
  {
    v6 = [[FMDNanoRegistryAccessory alloc] initWithNRDevice:v10];
    v7 = *(a1 + 40);
    v8 = [(FMDNanoRegistryAccessory *)v6 accessoryIdentifier];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      [(FMDNanoRegistryAccessory *)v6 setMigrationPossible:1];
    }

    [*(a1 + 48) addObject:v6];

    v5 = v10;
  }
}

id sub_100151958(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_1002DCE08 table:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100151BD0(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([a1[4] containsObject:v7] & 1) == 0)
  {
    v6 = [a1[6] _digestObject:v5 withExclusionKeys:a1[4]];
    if (v6)
    {
      [a1[5] setObject:v6 forKey:v7];
    }
  }
}

uint64_t sub_100151D64(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) _digestObject:a2 withExclusionKeys:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_100151DCC(id a1)
{
  v1 = [[FMDSystemConfig_ios alloc] initSingleton];
  v2 = qword_1003145F0;
  qword_1003145F0 = v1;

  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = qword_1003145F0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#start - inited system config instance %@", &v5, 0xCu);
  }
}

void sub_100151FC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  *(*(a1 + 32) + 104) = 1;
}

void sub_100152354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015236C(double *a1)
{
  v2 = *(*(a1 + 4) + 96);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 5) + 8) + 40), v2);
  }

  else
  {
    v3 = objc_opt_new();
    v4 = sub_100002880(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 6);
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching BA-UUID with timeout - %f", buf, 0xCu);
    }

    v6 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:a1[6]];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1001524F4;
    v12 = &unk_1002CE578;
    v7 = *(a1 + 5);
    v13 = v6;
    v14 = v7;
    v8 = v6;
    [v3 getLocalPairingDataWithCompletion:&v9];
    [v8 wait];
    objc_storeStrong((*(a1 + 4) + 96), *(*(*(a1 + 5) + 8) + 40));
  }
}

id sub_1001524F4(uint64_t a1, void *a2)
{
  v3 = [a2 UUIDString];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return [v6 signal];
}

void sub_100152554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got BA status - %@ with reason - %@", &v9, 0x16u);
  }

  if ([v5 isEqualToString:SPServiceStateEnabled])
  {
    v8 = 3;
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = v8;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:SPServiceStateDisabled])
  {
    v8 = 2;
    goto LABEL_7;
  }

LABEL_8:
  [*(a1 + 32) signal];
}

void sub_100153AB4(id a1)
{
  v1 = sub_100002880(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100227EB8(v1);
  }

  v2 = [[FMDXPCManager alloc] initSingleton];
  v3 = qword_100314608;
  qword_100314608 = v2;
}

id *sub_100154E2C(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = result;
    v6 = (a2 + a3);
    do
    {
      v7 = *v6++;
      result = [v5[4] appendFormat:@"%02lx", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_10015593C(id a1)
{
  v1 = objc_alloc_init(FMDSharedConfigurationManager);
  v2 = qword_100314618;
  qword_100314618 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100155B00(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

id sub_100155B78(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_100155F58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100155F8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(*(a1[5] + 8) + 40) lock];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = 1;
  [*(*(a1[5] + 8) + 40) unlock];
  if ((v6 & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  return v6 ^ 1u;
}

void sub_100156018(uint64_t a1, uint64_t a2)
{
  v3 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100228220();
    }
  }
}

void sub_1001560B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) invalidate];
  v6 = (*(*(a1 + 48) + 16))();
  if (v6)
  {
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"true";
      v9 = *(a1 + 40);
      v10 = 138543874;
      if (!a2)
      {
        v8 = @"false";
      }

      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "T&L device coverage %{public}@ for serialNumber: %@, error: %@", &v10, 0x20u);
    }
  }
}

void sub_1001561C8(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
  v3 = (*(*(a1 + 48) + 16))();
  if (v3)
  {
    v4 = sub_100002880(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100228288(a1, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  dispatch_source_cancel(*(a1 + 40));
}

void sub_100156688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_1001566D4(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);

  return [v5 unlock];
}

uint64_t sub_100156738(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002880(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100228220();
  }

  v4 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return (*(*(a1 + 32) + 16))();
}

void sub_1001567D8(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void sub_100156C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_100156CB0(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);

  return [v5 unlock];
}

uint64_t sub_100156D14(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100156D88(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void sub_100157184(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001571B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(*(a1[5] + 8) + 40) lock];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = 1;
  [*(*(a1[5] + 8) + 40) unlock];
  if ((v6 & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  return v6 ^ 1u;
}

void sub_100157244(uint64_t a1, uint64_t a2)
{
  v3 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002283C8();
    }
  }
}

void sub_1001572E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) invalidate];
  v6 = (*(*(a1 + 40) + 16))();
  if (v6)
  {
    v7 = sub_100002880(v6);
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100228430();
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "postTheftAndLossCFU: Requested a CFU (shouldEnable: %d)", v9, 8u);
    }
  }
}

void sub_1001573E4(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = sub_100002880(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100228498(v4);
    }
  }

  dispatch_source_cancel(*(a1 + 32));
}

void sub_1001577DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100157810(void *a1, void *a2)
{
  v3 = a2;
  [*(*(a1[5] + 8) + 40) lock];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = 1;
  [*(*(a1[5] + 8) + 40) unlock];
  if ((v5 & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  return v5 ^ 1u;
}

void sub_100157894(uint64_t a1, uint64_t a2)
{
  v3 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002284DC();
    }
  }
}

void sub_100157930(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    v5 = sub_100002880(v4);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100228544();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clearTheftAndLossCFU: Cleared a CFU", v7, 2u);
    }
  }
}

void sub_1001579E8(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = sub_100002880(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1002285AC(v4);
    }
  }

  dispatch_source_cancel(*(a1 + 32));
}

void sub_100157C9C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002880(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Could Not complete command notify : %@", &v5, 0xCu);
    }
  }
}

NSDictionary *__cdecl sub_1001580BC(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_10015810C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ServerDeviceInfo sharedInstance];
  v4 = [*(a1 + 40) account];
  if (v2)
  {
    [v3 deviceInfoForAccount:v4 accessory:*(a1 + 32)];
  }

  else
  {
    [v3 deviceInfoForAccount:v4];
  }
  v5 = ;

  return v5;
}

void sub_1001581A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

uint64_t sub_100158A28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100158A40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100158E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [*(a1 + 32) handleRatchetError:v6];
  }

  else if (v5)
  {
    v8 = [v5 objectForKeyedSubscript:&off_1002E7A98];
    v9 = sub_10017DEB4(v8);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) ratchetIdentifier];
        v17 = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ratchet armed %@, proceeding with operation.", &v17, 0xCu);
      }

      v12 = [*(a1 + 32) currentTask];
      [v12 finishWithNoResult];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1002285F0(a1);
      }

      v12 = [*(a1 + 32) currentTask];
      v16 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:0];
      [v12 finishWithError:v16];
    }
  }

  else
  {
    v13 = sub_10017DEB4(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100228684(a1);
    }

    v14 = [*(a1 + 32) currentTask];
    v15 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:0];
    [v14 finishWithError:v15];
  }
}

void sub_10015951C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Exception caught in -URLByReplacingHost: -- %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1001594D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_10015ACB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015ACD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v24 = 138413058;
    v25 = v3;
    v26 = 2048;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v24, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_7;
  }

  if ([v3 cancelled])
  {
LABEL_7:
    v10 = [v3 cancelled];
    v11 = v10;
    v12 = sub_10000BE38(v10);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = [v3 fm_logID];
      v24 = 138412290;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v24, 0xCu);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = [v3 fm_logID];
      v15 = [v3 httpResponseStatus];
      v16 = [v3 httpResponseError];
      v24 = 138412802;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v24, 0x20u);
    }

    goto LABEL_12;
  }

  v12 = [v3 httpResponseBody];
  v18 = sub_10000BE38(v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v3 httpResponseBody];
    v20 = [v19 objectForKeyedSubscript:@"statusCode"];
    v24 = 138412546;
    v25 = v20;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Got server response code %@ for request %@", &v24, 0x16u);
  }

  v21 = [v3 httpResponseBody];
  v22 = [v21 objectForKeyedSubscript:@"statusCode"];
  v23 = [v22 isEqualToString:@"200"];

  if (v23)
  {
    v14 = [WeakRetained registry];
    [v14 updateSupportedAccessoryTypes:v12];
LABEL_12:
  }

LABEL_13:

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

void sub_10015B1EC(id a1)
{
  v1 = sub_100002880(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100228848(v1);
  }

  v2 = objc_alloc_init(ServerDeviceInfo);
  v3 = qword_100314638;
  qword_100314638 = v2;
}

void sub_10015CE30(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100228990(v2, v3);
  }
}

void sub_10015DB90(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Retrying request now...", &v8, 0xCu);
  }

  v3 = +[NSDate date];
  [*(a1 + 32) setLastRetryTime:v3];

  v4 = *(a1 + 32);
  v5 = [v4 nextRetryType];
  [v4 _incrementRetryCountForType:v5];

  v6 = [*(a1 + 32) retryAction];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }
}

void sub_10015EE40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_10015EFE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained synchronizer];
  [v1 signal];
}

void sub_10015F59C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v12 = @"status";
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v13 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 didHandleCommandWithAckData:v10];
  }

  else
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = &off_1002E8D68;
    }

    [*(a1 + 32) didHandleCommandWithAckData:v11];
  }
}

void sub_10015F6AC(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = +[FMDStartupRegisterManager sharedInstance];
    [v2 eventDidOccur:10];
  }
}

void sub_10015F9A8(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = +[FMDStartupRegisterManager sharedInstance];
    [v2 eventDidOccur:10];
  }
}

void sub_10015FD28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) dictionaryForError:v6];
    [v4 addObject:v5];
  }
}

void sub_100160990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _logEvent:*(a1 + 32)];
}

void sub_100160D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100160D54(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v15 = a2;
  v7 = [v15 groupValue];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) precision];
  [v10 doubleValue];
  v12 = v11;

  v13 = *(a1 + 48) - v9;
  if (v13 >= 0.0)
  {
    v14 = *(a1 + 48) - v9;
  }

  else
  {
    v14 = -v13;
  }

  if (v14 <= v12)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = v14 <= v12;
}

void sub_100160FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100161010(uint64_t a1)
{
  v6 = [*(a1 + 32) logs];
  v2 = [v6 copy];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100161328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = [WeakRetained setLogs:?];
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    [v3 setLogs:v5];
  }

  v6 = sub_100002880(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 logs];
    v8 = [v7 count];
    v9 = [v3 cachedLogFileURL];
    v10 = 134218242;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found existing logs %ld %@", &v10, 0x16u);
  }
}

void sub_100161550(id a1)
{
  v1 = objc_alloc_init(FMDNVRAMUtil);
  v2 = qword_100314648;
  qword_100314648 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100162E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) fm_logID];
    v9 = *(a1 + 40);
    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Future completed for command %@", buf, 0x16u);
  }

  if (v6)
  {
    v10 = *(a1 + 32);
    v22 = @"status";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v23 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v10 didHandleCommandWithAckData:v12];

    [*(a1 + 48) removeFutureForCommandId:*(a1 + 40)];
  }

  else
  {
    v13 = *(a1 + 32);
    if (v5)
    {
      v14 = [*(a1 + 32) didHandleCommandWithAckData:v5];
    }

    else
    {
      v15 = [NSNumber numberWithInteger:qword_100312B10, @"status"];
      v21 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v13 didHandleCommandWithAckData:v16];
    }

    v17 = sub_100002880(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 56);
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDCommandHandlerMessage marking command complete %@", buf, 0xCu);
    }

    v19 = [*(a1 + 64) commandContext];
    [v19 setActionCompleted:*(a1 + 56)];
  }
}

id sub_1001630CC(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

id sub_100163184(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

id sub_10016323C(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

id sub_1001632F4(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

NSDictionary *__cdecl sub_100163840(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100163890(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ServerDeviceInfo sharedInstance];
  v4 = [*(a1 + 40) account];
  if (v2)
  {
    [v3 deviceInfoForAccount:v4 accessory:*(a1 + 32)];
  }

  else
  {
    [v3 deviceInfoForAccount:v4];
  }
  v5 = ;

  return v5;
}

void sub_10016392C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_1001645AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_55;
  }

  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_6;
  }

  v17 = [v3 cancelled];
  if ((v17 & 1) == 0)
  {
    v18 = sub_100002880(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v3 fm_logID];
      *buf = 138412546;
      v58 = v19;
      v59 = 2048;
      v60 = [v3 httpResponseStatus];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
    }

    v10 = [v3 httpResponseBody];
    v20 = [v10 count];
    v21 = sub_100002880(v20);
    v11 = v21;
    if (!v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100229378();
      }

      goto LABEL_51;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10022912C(v10, v11);
    }

    v11 = [v10 objectForKeyedSubscript:@"message1"];
    v22 = +[NSNull null];
    v23 = 0;
    if (([v11 isEqual:v22]& 1) == 0 && v11)
    {
      v23 = [[NSData alloc] initWithBase64EncodedString:v11 options:1];
    }

    v24 = [v10 objectForKeyedSubscript:@"message2"];
    v25 = +[NSNull null];
    if (([v24 isEqual:v25] & 1) != 0 || !v24)
    {

      v29 = 0;
      v26 = 0;
      v28 = v23 != 0;
    }

    else
    {
      v26 = [[NSData alloc] initWithBase64EncodedString:v24 options:1];

      v28 = v23 != 0;
      v29 = v26 != 0;
      if (v23 && v26)
      {
        v30 = sub_100002880(v27);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_1002291A4();
        }

        v32 = sub_100002880(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_1002291D8(a1);
        }

        v33 = sub_100224ABC([*(a1 + 32) pscSessionRef], objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"), objc_msgSend(v26, "bytes"), objc_msgSend(v26, "length"));
        if (v33)
        {
          v34 = v33;
          v35 = sub_100002880(v33);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            sub_100229258(v34, v35);
          }

          v36 = [*(a1 + 32) pscError];
          if (v36)
          {
            [*(a1 + 32) setPscError:v36];
          }

          else
          {
            v55 = @"kFMDUnderlyingErrorCodeKey";
            v52 = [NSNumber numberWithInt:v34];
            v56 = v52;
            v49 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v50 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:2 userInfo:v49];
            [*(a1 + 32) setPscError:v50];
          }

          [*(a1 + 32) _destroySession];
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    v40 = sub_100002880(v27);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1002292D0(v28, v29, v40);
    }

    v41 = [*(a1 + 32) pscError];
    if (v41)
    {
      [*(a1 + 32) setPscError:v41];
    }

    else
    {
      v53 = @"kFMDUnderlyingErrorCodeKey";
      v42 = [NSNumber numberWithInteger:(v23 == 0) | (2 * (v26 == 0))];
      v54 = v42;
      [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v51 = v23;
      v43 = v26;
      v45 = v44 = v24;
      v46 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:7 userInfo:v45];
      [*(a1 + 32) setPscError:v46];

      v24 = v44;
      v26 = v43;
      v23 = v51;
    }

    goto LABEL_50;
  }

LABEL_6:
  v5 = [v3 cancelled];
  v6 = v5;
  v7 = sub_100002880(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 fm_logID];
      *buf = 138412290;
      v58 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    v10 = [*(a1 + 32) pscError];
    if (!v10)
    {
      v11 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:6 userInfo:0];
      [*(a1 + 32) setPscError:v11];
LABEL_51:

      goto LABEL_52;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1002293B8(v3, v8);
    }

    v12 = [v3 httpResponseError];

    v13 = [*(a1 + 32) pscError];
    v10 = v13;
    if (v12)
    {
      if (!v13)
      {
        v63 = @"kFMDUnderlyingErrorCodeKey";
        v11 = [v3 httpResponseError];
        v14 = [NSNumber numberWithInteger:[v11 code]];
        v64 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v16 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:4 userInfo:v15];
        [*(a1 + 32) setPscError:v16];

        goto LABEL_51;
      }
    }

    else if (!v13)
    {
      v61 = @"kFMDUnderlyingErrorCodeKey";
      v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 httpResponseStatus]);
      v62 = v37;
      v38 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v39 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:5 userInfo:v38];
      [*(a1 + 32) setPscError:v39];

      goto LABEL_52;
    }
  }

  [*(a1 + 32) setPscError:v10];
LABEL_52:

  v48 = sub_100002880(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    sub_100229494();
  }

  [*(a1 + 40) signal];
LABEL_55:
}

void sub_1001651D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1001651F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1001652B4(id a1)
{
  v1 = sub_100002880(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100229588();
  }

  v2 = [[FMDAppleAccountManager alloc] initSingleton];
  v3 = qword_100314658;
  qword_100314658 = v2;
}

void sub_100165C3C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_1002CF240 + a2);
  }

  v8 = sub_100002880(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) aa_personID];
    v10 = @" Error: ";
    v13 = 138413058;
    v14 = v9;
    v11 = &stru_1002DCE08;
    v15 = 2112;
    if (!v6)
    {
      v10 = &stru_1002DCE08;
    }

    v16 = v7;
    if (v6)
    {
      v11 = v6;
    }

    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "forceUserAuth (renewCredentials) of account %@ completed with status %@.%@%@", &v13, 0x2Au);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2 != 0);
  }
}

void sub_10016617C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_1002CF240 + a2);
  }

  v8 = sub_100002880(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = @" Error: ";
    v12 = 138413058;
    if (!v6)
    {
      v10 = &stru_1002DCE08;
    }

    v13 = v9;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = &stru_1002DCE08;
    }

    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Renew account credentials for account %@ - status %@.%@%@", &v12, 0x2Au);
  }
}

void sub_100166380(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = sub_100002880(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) aa_personID];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Account %@ failed to save kAccountDataclassDeviceLocator: %@", &v9, 0x16u);
    }
  }
}

void sub_1001665A4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100167044(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

uint64_t sub_100167298(const __CFString *a1, const void *a2)
{
  if (a1 && a2)
  {
    v7 = sub_100229758();
    if (v7)
    {
      v8 = v7;
      v4 = IORegistryEntrySetCFProperty(v7, a1, a2);
      v9 = sub_100002880(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IORegistryEntrySetCFProperty returned:%d", v11, 8u);
      }

      IOObjectRelease(v8);
    }

    else
    {
      v10 = sub_100002880(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1002297A8();
      }

      return 0;
    }
  }

  else
  {
    v3 = sub_100002880(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002297DC();
    }

    return 4;
  }

  return v4;
}

uint64_t sub_1001673C0(const __CFString *a1, CFDataRef *a2)
{
  if (a1 && a2)
  {
    v7 = sub_100229758();
    if (v7)
    {
      v8 = v7;
      CFProperty = IORegistryEntryCreateCFProperty(v7, a1, kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v10 = CFProperty;
        v11 = CFGetTypeID(CFProperty);
        if (v11 == CFDataGetTypeID())
        {
          *a2 = CFDataCreateCopy(kCFAllocatorDefault, v10);
        }

        CFRelease(v10);
        v4 = 0;
      }

      else
      {
        v4 = 4294967294;
      }

      IOObjectRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = sub_100002880(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100229810();
    }

    return 4;
  }

  return v4;
}

void sub_100167828(id a1)
{
  v1 = objc_alloc_init(FMDEventLogger);
  v2 = qword_100314668;
  qword_100314668 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100167B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) facilitiesDictionary];
  v5 = [v4 objectForKey:v3];

  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Logging event to facility %@", &v8, 0xCu);
  }

  [v5 logEvent:*(a1 + 40)];
}

void sub_1001683B8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignature alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignature *)v11 initWithData:v12];
  v15 = sub_100002880(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FMDNanoSupportProtoNeedSignature *)v13 udid];
    v17 = [(FMDNanoSupportProtoNeedSignature *)v13 serialNumber];
    v18 = [(FMDNanoSupportProtoNeedSignature *)v13 productType];
    *buf = 138413058;
    v25 = v8;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign some data %@,%@,%@. Sending back an error as it is unsupported.", buf, 0x2Au);
  }

  v19 = objc_alloc_init(FMDNanoSupportProtoSignedData);
  [(FMDNanoSupportProtoSignedData *)v19 setErrorOccurred:1];
  v20 = [IDSProtobuf alloc];
  v21 = [(FMDNanoSupportProtoSignedData *)v19 data];
  v22 = [v20 initWithProtobufData:v21 type:2 isResponse:1];

  v23 = [*(a1 + 32) idsManager];
  [v23 sendMessageWithProtobuf:v22 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
}

void sub_1001685C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignatureV3 alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignatureV3 *)v11 initWithData:v12];
  v15 = sub_100002880(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FMDNanoSupportProtoNeedSignatureV3 *)v13 requestJsonData];
    *buf = 138412546;
    v23 = v8;
    v24 = 2048;
    v25 = [v16 length];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign data of length %lu. Sending back an error as it is unsupported.", buf, 0x16u);
  }

  v17 = objc_alloc_init(FMDNanoSupportProtoSignedDataV3);
  [(FMDNanoSupportProtoSignedDataV3 *)v17 setErrorOccurred:1];
  v18 = [IDSProtobuf alloc];
  v19 = [(FMDNanoSupportProtoSignedDataV3 *)v17 data];
  v20 = [v18 initWithProtobufData:v19 type:4 isResponse:1];

  v21 = [*(a1 + 32) idsManager];
  [v21 sendMessageWithProtobuf:v20 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
}

void sub_1001687A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignatureV4 alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignatureV4 *)v11 initWithData:v12];
  v15 = sub_100002880(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FMDNanoSupportProtoNeedSignatureV4 *)v13 requestJsonData];
    *buf = 138412546;
    v23 = v8;
    v24 = 2048;
    v25 = [v16 length];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign data of length %lu. Sending back an error as it is unsupported.", buf, 0x16u);
  }

  v17 = objc_alloc_init(FMDNanoSupportProtoSignedDataV4);
  [(FMDNanoSupportProtoSignedDataV4 *)v17 setErrorOccurred:1];
  v18 = [IDSProtobuf alloc];
  v19 = [(FMDNanoSupportProtoSignedDataV4 *)v17 data];
  v20 = [v18 initWithProtobufData:v19 type:8 isResponse:1];

  v21 = [*(a1 + 32) idsManager];
  [v21 sendMessageWithProtobuf:v20 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
}

void sub_100168980(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignatureV5 alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignatureV5 *)v11 initWithData:v12];
  v15 = sub_100002880(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FMDNanoSupportProtoNeedSignatureV5 *)v13 requestJsonData];
    *buf = 138412546;
    v50 = v8;
    v51 = 2048;
    v52 = [v16 length];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign data of length %lu", buf, 0x16u);
  }

  v17 = [(FMDNanoSupportProtoNeedSignatureV5 *)v13 requestJsonData];
  v48 = 0;
  v18 = [NSJSONSerialization JSONObjectWithData:v17 options:0 error:&v48];
  v19 = v48;

  v20 = [(FMDNanoSupportProtoNeedSignatureV5 *)v13 activationLockRequestUUIDString];
  v21 = v20;
  if (v20)
  {
    v20 = [[NSUUID alloc] initWithUUIDString:v20];
    v46 = v20;
  }

  else
  {
    v46 = 0;
  }

  v22 = a1;
  v47 = v18;
  if (!v19)
  {
    v24 = [v18 objectForKeyedSubscript:@"dsid"];
    v29 = +[NSNull null];
    v30 = [(FMDNanoSupportProtoSignedDataV5 *)v24 isEqual:v29];

    if (v30)
    {
      v32 = sub_100002880(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1002298D0(v32);
      }
    }

    v33 = sub_100002880(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Fetching FMIP account...", buf, 2u);
    }

    v34 = +[FMDServiceProvider activeServiceProvider];
    v27 = [v34 account];

    v45 = v9;
    if (v27)
    {
      v36 = [v27 dsid];
      v37 = [(FMDNanoSupportProtoSignedDataV5 *)v24 isEqualToString:v36];

      v39 = sub_100002880(v38);
      v40 = v39;
      if (v37)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Proceeding with signing the requested data...", buf, 2u);
        }

        v28 = [*(v22 + 32) _v5SignedResponseForRequestBody:v47 activationLockRequestUUID:v46];
        goto LABEL_26;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100229914(v27, v24, v40);
      }
    }

    else
    {
      v40 = sub_100002880(v35);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1002299C4(v40);
      }
    }

    v28 = objc_alloc_init(FMDNanoSupportProtoSignedDataV5);
    [(FMDNanoSupportProtoSignedDataV5 *)v28 setErrorOccurred:1];
LABEL_26:
    v41 = [IDSProtobuf alloc];
    v42 = [(FMDNanoSupportProtoSignedDataV5 *)v28 data];
    v43 = [v41 initWithProtobufData:v42 type:10 isResponse:1];

    v44 = [*(v22 + 32) idsManager];
    v9 = v45;
    [v44 sendMessageWithProtobuf:v43 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v45 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];

    goto LABEL_27;
  }

  v23 = sub_100002880(v20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100229858(v19, v23);
  }

  v24 = objc_alloc_init(FMDNanoSupportProtoSignedDataV5);
  [(FMDNanoSupportProtoSignedDataV5 *)v24 setErrorOccurred:1];
  v25 = [IDSProtobuf alloc];
  v26 = [(FMDNanoSupportProtoSignedDataV5 *)v24 data];
  v27 = [v25 initWithProtobufData:v26 type:10 isResponse:1];

  v28 = [*(v22 + 32) idsManager];
  [(FMDNanoSupportProtoSignedDataV5 *)v28 sendMessageWithProtobuf:v27 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
LABEL_27:
}

void sub_100168E70(id a1, FMNanoIDSManager *a2, IDSProtobuf *a3, NSString *a4, NSString *a5)
{
  v6 = a4;
  v7 = a5;
  v8 = sub_100002880(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request %@ to exit lost mode for watch.", buf, 0xCu);
  }

  v9 = +[FMDFMIPManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100168FB4;
  v11[3] = &unk_1002CD868;
  v12 = v6;
  v10 = v6;
  [v9 initiateLostModeExitAuthForIDSDeviceID:v7 withCompletion:v11];
}

void sub_100168FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100229A08(a1, v4, v5);
    }
  }
}

void sub_100169984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001699C0(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [v15 signature];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v15 attestation];
    v14 = *(*(a1 + 56) + 8);
    v9 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [*(a1 + 32) signal];
}

NSDictionary *__cdecl sub_100169FD4(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist"];
  if (v2)
  {
    [v1 addEntriesFromDictionary:v2];
  }

  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist"];
  if (v3)
  {
    [v1 addEntriesFromDictionary:v3];
  }

  return v1;
}

void sub_10016BD48(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10016CCA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10016CDEC;
  v20 = &unk_1002CF458;
  v10 = *(a1 + 48);
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, &v17);
  v14 = [*(a1 + 32) requestModifierLock];
  [v14 lock];

  v15 = [*(a1 + 32) requests];
  [v15 removeObjectForKey:*(a1 + 40)];

  v16 = [*(a1 + 32) requestModifierLock];
  [v16 unlock];
}

void sub_10016CDEC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) statusCode];
  v5 = [*(a1 + 32) allHeaderFields];
  v4 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v3, v5, v4, 0, *(a1 + 48));
}

void sub_10016D9AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(CMMotionActivityManager);
  [WeakRetained setMotionActivityManager:v2];

  v3 = objc_alloc_init(NSOperationQueue);
  [WeakRetained setActivityUpdateQueue:v3];

  v4 = [WeakRetained activityUpdateQueue];
  [v4 setMaxConcurrentOperationCount:1];

  v5 = objc_alloc_init(FMDDeviceMotion);
  v6 = +[NSDate date];
  [(FMDDeviceMotion *)v5 setActivityStartDate:v6];

  [(FMDDeviceMotion *)v5 setActivityState:0];
  [WeakRetained setLastKnownDeviceMotion:v5];
  v7 = [WeakRetained motionActivityManager];
  v8 = [WeakRetained activityUpdateQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016DB14;
  v9[3] = &unk_1002CF4A8;
  v9[4] = WeakRetained;
  [v7 startActivityUpdatesToQueue:v8 withHandler:v9];
}

void sub_10016DB14(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _deviceMotionFrom:a2];
  [*(a1 + 32) setLastKnownDeviceMotion:v3];
}

void sub_10016DC1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained motionActivityManager];
  [v1 stopActivityUpdates];

  [WeakRetained setMotionActivityManager:0];
  [WeakRetained setActivityUpdateQueue:0];
  [WeakRetained setLastKnownDeviceMotion:0];
}

void sub_10016E424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016E448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkShutdownSoonRegistration];
}

void sub_10016E4CC(id a1)
{
  v1 = objc_alloc_init(FMDAccountStoreFMIP);
  v2 = qword_100314678;
  qword_100314678 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10016F0B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = +[FMDMagSafeDataStore sharedInstance];
    [v5 clearDataStore];

    v6 = *(a1 + 40);
    v8.receiver = *(a1 + 32);
    v8.super_class = FMDFMIPServiceProvider;
    objc_msgSendSuper2(&v8, "accountRemoveRequestedWithCompletion:", v6);
    v7 = +[FMDCoreFollowUpManager sharedInstance];
    [v7 requestTheftAndLossCFU:1];
  }
}

void sub_10016F2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016F2EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkShutdownSoonRegistration];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"FMDSystemShutdownSoonNotification" object:0];

  v4 = +[FMSystemInfo sharedInstance];
  if (![v4 isInternalBuild])
  {
    goto LABEL_4;
  }

  v5 = +[FMDPreferencesMgr notifyOnShutdownSoon];

  if (v5)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateStyle:1];
    [v4 setTimeStyle:2];
    v6 = objc_alloc_init(FMDBatteryInfo);
    [(FMDBatteryInfo *)v6 batteryLevel];
    v8 = v7 * 100.0;

    v9 = objc_alloc_init(FMAlert);
    v10 = +[NSDate date];
    v11 = [v4 stringFromDate:v10];
    v12 = [NSString stringWithFormat:@"Shutdown soon notification\n%@\nBattery level : %.2f%%", v11, *&v8];
    [v9 setMsgText:v12];

    [v9 setMsgTitle:@"Find My iPhone"];
    [v9 setShowMsgInLockScreen:1];
    v13 = +[FMAlertManager sharedInstance];
    [v13 activateAlert:v9];

LABEL_4:
  }

  v14 = [NSString stringWithFormat:@"LaunchEvent.%@", *(a1 + 32)];
  v15 = [[FMDEventLoggerEventScalar alloc] initWithEventName:v14];
  v16 = +[FMDEventLogger sharedLogger];
  v17 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v19 = v17;
  v18 = [NSArray arrayWithObjects:&v19 count:1];
  [v16 logEvent:v15 toFacilitiesNamed:v18];
}

void sub_10016F604(uint64_t a1)
{
  v1 = [*(a1 + 32) account];
  v2 = [v1 authToken];
  v3 = [v2 length];

  if (!v3)
  {
    v4 = +[FMDAppleAccountManager sharedInstance];
    [v4 fixFMIPAuthTokenShouldForce:0];
  }
}

void sub_10016F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10016F784(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = FMDFMIPServiceProvider;
  result = objc_msgSendSuper2(&v3, "essentialServerInfoMissingError");
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10016FABC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v7 = [*(a1 + 32) account];
      v12 = sub_100002880(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v3 fm_logID];
        v18 = 138412546;
        v19 = v13;
        v20 = 2048;
        v21 = [v3 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", &v18, 0x16u);
      }

      v14 = +[NSDate date];
      [v7 setLastIdentityTime:v14];

      v15 = [*(a1 + 32) accountStore];
      v16 = [*(a1 + 32) account];
      [v15 saveAccount:v16];

      v17 = +[FMDStartupRegisterManager sharedInstance];
      [v17 eventDidOccur:12];

      [FMPreferencesUtil setInteger:*(a1 + 40) forKey:@"identityVersion" inDomain:kFMDNotBackedUpPrefDomain];
      [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
      v9 = +[FMDLocalActivationLockInfoManager sharedInstance];
      [v9 updateActivationLockStatus:1];
      goto LABEL_11;
    }

    v5 = [v3 cancelled];
    v6 = v5;
    v7 = sub_100002880(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v18, 0xCu);
LABEL_11:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v10 = [v3 httpResponseStatus];
      v11 = [v3 httpResponseError];
      v18 = 138412802;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v18, 0x20u);

      goto LABEL_11;
    }
  }
}

NSDictionary *__cdecl sub_100170140(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100170198(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) account];
  v4 = [v3 authId];
  [v2 fm_safeSetObject:v4 forKey:@"X-Apple-PrsId"];

  return v2;
}

void sub_100170220(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_16;
  }

  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_6;
  }

  v19 = [v3 cancelled];
  if (v19)
  {
LABEL_6:
    v5 = [v3 cancelled];
    v6 = v5;
    v7 = sub_10017DE2C(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_11:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v10 = [v3 httpResponseStatus];
      v11 = [v3 httpResponseError];
      *buf = 138412802;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_11;
    }

    v12 = [v3 httpResponseError];

    if (v12)
    {
      v13 = [v3 httpResponseError];
      v14 = [NSString stringWithFormat:@"Error contacting the server: %@", v13];
    }

    else
    {
      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
    }

    v15 = *(a1 + 32);
    v16 = kFMDErrorDomain;
    v22 = NSLocalizedFailureReasonErrorKey;
    v23 = v14;
    v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [NSError errorWithDomain:v16 code:12 userInfo:v17];
    (*(v15 + 16))(v15, v18);

    goto LABEL_16;
  }

  v20 = sub_10017DE2C(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v3 fm_logID];
    *buf = 138412546;
    v25 = v21;
    v26 = 2048;
    v27 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_16:
}

void sub_100170CC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10017DD1C(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022A2A0();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got ephemeral token for repair device.", v10, 2u);
    }

    v9 = *(a1 + 32);
    [v9 setEphemeralToken:v5];
    [*(a1 + 40) _enableRepairWithContext:v9 callingClient:*(a1 + 48) completion:*(a1 + 56)];
  }
}

NSDictionary *__cdecl sub_1001712A8(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100171300(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) account];
  v4 = [v3 authId];
  [v2 fm_safeSetObject:v4 forKey:@"X-Apple-PrsId"];

  return v2;
}

void sub_100171448(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else
    {
      v19 = [v3 cancelled];
      if ((v19 & 1) == 0)
      {
        v20 = sub_10017DD1C(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v3 fm_logID];
          *buf = 138412546;
          v28 = v21;
          v29 = 2048;
          v30 = [v3 httpResponseStatus];
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", buf, 0x16u);
        }

        v22 = [FMDRepairDeviceResult alloc];
        v24 = *(a1 + 32);
        v23 = [NSArray arrayWithObjects:&v24 count:1];
        v14 = [v22 initWithEligibleDevices:&__NSArray0__struct devicesInRepairMode:v23];

        (*(*(a1 + 40) + 16))();
        goto LABEL_16;
      }
    }

    v5 = [v3 cancelled];
    v6 = v5;
    v7 = sub_10017DD1C(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        *buf = 138412290;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_11:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v10 = [v3 httpResponseStatus];
      v11 = [v3 httpResponseError];
      *buf = 138412802;
      v28 = v9;
      v29 = 2048;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_11;
    }

    v12 = [v3 httpResponseError];

    if (v12)
    {
      v13 = [v3 httpResponseError];
      v14 = [NSString stringWithFormat:@"Error contacting the server: %@", v13];
    }

    else
    {
      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
    }

    v15 = *(a1 + 40);
    v16 = kFMDErrorDomain;
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = v14;
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [NSError errorWithDomain:v16 code:3 userInfo:v17];
    (*(v15 + 16))(v15, 0, v18);

LABEL_16:
  }
}

void sub_100171B38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authContext: %@", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  (*(v8 + 16))(v8, v9, v6);
}

void sub_1001720F8(void *a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = +[FMDPreferencesMgr errorForUnregister];
    v5 = [v3 httpResponseError];
    if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399 || v4)
    {
    }

    else
    {
      v18 = [v3 cancelled];
      if ((v18 & 1) == 0)
      {
        v19 = sub_100002880(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v3 fm_logID];
          v21 = a1[4];
          *buf = 138412802;
          v72 = v20;
          v73 = 2112;
          v74 = v21;
          v75 = 2048;
          v76 = [v3 httpResponseStatus];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ for paired device %@: successful with status %ld", buf, 0x20u);
        }

        v22 = a1[6];
        if (v22)
        {
          (*(v22 + 16))(v22, 0);
        }

LABEL_49:

        goto LABEL_50;
      }
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v3 fm_logID];
      *buf = 138412290;
      v72 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v3 fm_logID];
      v11 = a1[4];
      v12 = [v3 httpResponseStatus];
      v13 = [v3 httpResponseError];
      *buf = 138413058;
      v72 = v10;
      v73 = 2112;
      v74 = v11;
      v75 = 2048;
      v76 = v12;
      v77 = 2112;
      v78 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ for paired device %@: Error (%ld) %@", buf, 0x2Au);
    }

LABEL_11:
    v14 = [v3 httpResponseError];

    if (v14)
    {
      v15 = [v3 httpResponseError];
      v16 = [NSString stringWithFormat:@"Error contacting the server: %@", v15];
    }

    else
    {
      if (v4)
      {
        v17 = v4;
      }

      else
      {
        v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
      }

      v16 = v17;
    }

    v23 = sub_100002880(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v59 = v16;
    v60 = v4;
    if (v4)
    {
      v24 = [v4 containsString:@"network"];
      v25 = &qword_100258680;
      if (!v24)
      {
        v25 = &qword_100258670;
      }

      v26 = *v25;
      v27 = a1[5];
    }

    else
    {
      v28 = [v3 alertFromServerResponse];

      if (v28)
      {
        goto LABEL_32;
      }

      v58 = a1[5];
      v26 = [v3 responseErrorType];
      v27 = v58;
    }

    [v27 _showPairedDeviceDisableFMIPErrorForResponseError:v26];
LABEL_32:
    v61 = v3;
    +[NSDate timeIntervalSinceReferenceDate];
    v62 = [NSNumber numberWithDouble:?];
    v29 = +[NRPairedDeviceRegistry sharedInstance];
    v30 = [v29 getPairedDevices];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v64;
      v35 = NRDevicePropertyIsPaired;
      v36 = NRDevicePropertyUDID;
      while (2)
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v64 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v38 = *(*(&v63 + 1) + 8 * i);
          v39 = [v38 valueForProperty:v35];
          v40 = [v39 BOOLValue];

          if (v40)
          {
            v41 = a1[4];
            if (v41)
            {
              v42 = [v38 valueForProperty:v36];
              v43 = [v41 isEqualToString:v42];

              if (v43)
              {
                v44 = [v38 valueForProperty:NRDevicePropertyPairingID];
                v45 = [v38 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
                v46 = [NPSDomainAccessor alloc];
                v47 = [v46 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v44 pairingDataStore:v45];
                v48 = sub_100002880(v47);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v72 = v62;
                  v73 = 2112;
                  v74 = v44;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Syncing registerForceTime %@ to device with pairing ID %@", buf, 0x16u);
                }

                [v47 setObject:v62 forKey:@"LastRegisterForceTime"];
                v49 = [v47 synchronize];
                v50 = objc_opt_new();
                v51 = kFMDWatchNotBackedUpPrefDomain;
                v69 = @"LastRegisterForceTime";
                v52 = [NSArray arrayWithObjects:&v69 count:1];
                v53 = [NSSet setWithArray:v52];
                [v50 synchronizeNanoDomain:v51 keys:v53];

                goto LABEL_46;
              }
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v63 objects:v70 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:

    v54 = a1[6];
    if (v54)
    {
      v55 = kFMDErrorDomain;
      v67 = NSLocalizedFailureReasonErrorKey;
      v68 = v59;
      v56 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v57 = [NSError errorWithDomain:v55 code:12 userInfo:v56];
      (*(v54 + 16))(v54, v57);
    }

    v4 = v60;
    v3 = v61;
    goto LABEL_49;
  }

LABEL_50:
}

void sub_100172DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_36;
  }

  v4 = +[FMDPreferencesMgr errorForUnregister];
  v5 = [v3 httpResponseError];
  if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399 || v4)
  {

    goto LABEL_5;
  }

  if ([v3 cancelled])
  {
LABEL_5:
    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v3 fm_logID];
      *buf = 138412290;
      v92 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v3 fm_logID];
      v11 = [v3 httpResponseStatus];
      v12 = [v3 httpResponseError];
      *buf = 138412802;
      v92 = v10;
      v93 = 2048;
      v94 = v11;
      v95 = 2112;
      v96 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);
    }

LABEL_11:
    [*(a1 + 32) setUnregisterState:3];
    v13 = +[NSDate date];
    [*(a1 + 32) setLastUnregisterFailedTime:v13];

    v14 = [*(a1 + 40) accountStore];
    [v14 saveAccount:*(a1 + 32)];

    v16 = sub_100002880(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10022A370(v3, v16);
    }

    v71 = v3;
    v69 = v4;
    if (v4)
    {
      v17 = [v4 isEqualToString:@"network"];
      v18 = &qword_100258680;
      if (!v17)
      {
        v18 = &qword_100258670;
      }

      v19 = *v18;
      [*(a1 + 40) _showUnregisterDeviceErrorForResponseError:*v18 inContext:{objc_msgSend(*(a1 + 32), "fmipDisableContext")}];
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) fmipDisableContext];
      v22 = v20;
      v23 = v19;
    }

    else
    {
      v24 = [v3 alertFromServerResponse];

      if (v24)
      {
        v68 = 0;
        goto LABEL_20;
      }

      [*(a1 + 40) _showUnregisterDeviceErrorForResponseError:objc_msgSend(v3 inContext:{"responseErrorType"), objc_msgSend(*(a1 + 32), "fmipDisableContext")}];
      v65 = *(a1 + 40);
      v66 = [v3 responseErrorType];
      v21 = [*(a1 + 32) fmipDisableContext];
      v22 = v65;
      v23 = v66;
    }

    v68 = [v22 _unregisterDeviceErrorForResponseError:v23 inContext:v21];
LABEL_20:
    v25 = objc_alloc_init(FMDFMIPAccount);
    [(FMDFMIPAccount *)v25 copyInfoFromAccount:*(a1 + 32)];
    v26 = [*(a1 + 32) lastIdentityTime];
    [(FMDFMIPAccount *)v25 setLastIdentityTime:v26];

    v70 = a1;
    v27 = [*(a1 + 32) lastUnregisterFailedTime];
    v67 = v25;
    [(FMDAccount *)v25 setLastUnregisterFailedTime:v27];

    +[NSDate timeIntervalSinceReferenceDate];
    v76 = [NSNumber numberWithDouble:?];
    v28 = +[NRPairedDeviceRegistry sharedInstance];
    v29 = [v28 getPairedDevices];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v85 objects:v90 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v86;
      v34 = NRDevicePropertyIsPaired;
      v73 = NRDevicePropertyPairingID;
      v72 = NRDevicePropertyLocalPairingDataStorePath;
      v35 = &ADClientAddValueForScalarKey_ptr;
      v74 = *v86;
      v75 = v30;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v86 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v85 + 1) + 8 * i);
          v38 = [v37 valueForProperty:v34];
          v39 = [v38 BOOLValue];

          if (v39)
          {
            v40 = [objc_alloc(v35[404]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
            v41 = [v37 supportsCapability:v40];

            if (v41)
            {
              v42 = [v37 valueForProperty:v73];
              v43 = [v37 valueForProperty:v72];
              v44 = [NPSDomainAccessor alloc];
              v45 = [v44 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v42 pairingDataStore:v43];
              v46 = sub_100002880(v45);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v92 = v76;
                v93 = 2112;
                v94 = v42;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Syncing registerForceTime %@ to device with pairing ID %@", buf, 0x16u);
              }

              [v45 setObject:v76 forKey:@"LastRegisterForceTime"];
              v47 = [v45 synchronize];
              v48 = objc_opt_new();
              v49 = kFMDWatchNotBackedUpPrefDomain;
              v89 = @"LastRegisterForceTime";
              v50 = [NSArray arrayWithObjects:&v89 count:1];
              v51 = [NSSet setWithArray:v50];
              [v48 synchronizeNanoDomain:v49 keys:v51];

              v33 = v74;
              v30 = v75;
              v35 = &ADClientAddValueForScalarKey_ptr;
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v85 objects:v90 count:16];
      }

      while (v32);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001736F8;
    block[3] = &unk_1002CD478;
    a1 = v70;
    block[4] = *(v70 + 40);
    v84 = v67;
    v52 = v67;
    dispatch_async(&_dispatch_main_q, block);

    v3 = v71;
    v53 = v68;
    v4 = v69;
    goto LABEL_33;
  }

  [*(a1 + 32) setUnregisterState:2];
  v55 = +[FMXPCTransactionManager sharedInstance];
  [v55 beginTransaction:@"FMDFMIPServiceProvider-unregisterDeviceWithCompletion"];

  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_100173704;
  v82[3] = &unk_1002CD4C8;
  v82[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v82);
  v56 = [v3 httpResponseBody];

  if (v56)
  {
    v58 = [v3 httpResponseBody];
    v59 = [v58 objectForKeyedSubscript:@"oneTimeUnregisterTokens"];

    v60 = [v59 fm_nullToNil];

    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100173784;
    v77[3] = &unk_1002CF640;
    v78 = @"token";
    v79 = @"udid";
    v61 = *(a1 + 40);
    v80 = @"expiryTime";
    v81 = v61;
    [v60 enumerateObjectsUsingBlock:v77];
  }

  v62 = sub_100002880(v57);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v3 fm_logID];
    v64 = [v3 httpResponseStatus];
    *buf = 138412546;
    v92 = v63;
    v93 = 2048;
    v94 = v64;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
  }

  v53 = 0;
LABEL_33:
  v54 = *(a1 + 48);
  if (v54)
  {
    (*(v54 + 16))(v54, v53);
  }

LABEL_36:
}

void sub_100173704(uint64_t a1)
{
  [*(a1 + 32) removeAccount];
  v2 = [*(a1 + 32) accountStore];
  [v2 saveAccount:0];

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:@"FMDFMIPServiceProvider-unregisterDeviceWithCompletion"];
}

void sub_100173784(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [v4 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  v7 = [v6 fm_nullToNil];

  if (v7)
  {
    v8 = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v7 integerValue]);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v11)
  {
    v9 = [[FMDAccessoryIdentifier alloc] initWithString:v5];
    v10 = [*(a1 + 56) unregisterTokenStore];
    [v10 saveUnregisterToken:v11 identifier:v9 expiryDate:v8];
  }

LABEL_7:
}

void sub_100173D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = +[FMDPreferencesMgr errorForMarkAsMissing];
    v5 = [v3 httpResponseError];
    if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399 || v4)
    {
    }

    else
    {
      v17 = [v3 cancelled];
      if ((v17 & 1) == 0)
      {
        v18 = sub_100002880(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v3 fm_logID];
          *buf = 138412546;
          v35 = v19;
          v36 = 2048;
          v37 = [v3 httpResponseStatus];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
        }

        v20 = *(a1 + 40);
        if (v20)
        {
          (*(v20 + 16))(v20, 0);
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v3 fm_logID];
      *buf = 138412290;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v3 fm_logID];
      v11 = [v3 httpResponseStatus];
      v12 = [v3 httpResponseError];
      *buf = 138412802;
      v35 = v10;
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);
    }

LABEL_11:
    v13 = [v3 httpResponseError];

    if (v13)
    {
      v14 = [v3 httpResponseError];
      v15 = [NSString stringWithFormat:@"Error contacting the server: %@", v14];
    }

    else
    {
      if (v4)
      {
        v16 = v4;
      }

      else
      {
        v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
      }

      v15 = v16;
    }

    v21 = sub_100002880(v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (v4)
    {
      v22 = [v4 containsString:@"network"];
      v23 = &qword_100258680;
      if (!v22)
      {
        v23 = &qword_100258670;
      }

      v24 = *v23;
      v25 = *(a1 + 32);
    }

    else
    {
      v26 = [v3 alertFromServerResponse];

      if (v26)
      {
        goto LABEL_32;
      }

      v31 = *(a1 + 32);
      v24 = [v3 responseErrorType];
      v25 = v31;
    }

    [v25 _showMarkAsMissingErrorForResponseError:v24];
LABEL_32:
    v27 = *(a1 + 40);
    if (v27)
    {
      v28 = kFMDErrorDomain;
      v32 = NSLocalizedFailureReasonErrorKey;
      v33 = v15;
      v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v30 = [NSError errorWithDomain:v28 code:12 userInfo:v29];
      (*(v27 + 16))(v27, v30);
    }

    goto LABEL_35;
  }

LABEL_36:
}

void sub_10017485C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pendingSecureMessage];
  if (v2)
  {
  }

  else
  {
    v3 = [WeakRetained pendingLocateAlert];

    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if ([WeakRetained lockStateNotifyToken] == -1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10017493C;
    handler[3] = &unk_1002CF690;
    handler[4] = WeakRetained;
    notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, WeakRetained + 49, &_dispatch_main_q, handler);
  }

LABEL_6:
}

id sub_10017493C(uint64_t a1)
{
  result = MKBGetDeviceLockState();
  if (result == 3 || !result)
  {
    v3 = *(a1 + 32);

    return [v3 _showPendingHomescreenAlertNow];
  }

  return result;
}

void sub_100174A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pendingSecureMessage];

  if (v1)
  {
    v2 = +[FMAlertManager sharedInstance];
    v3 = [WeakRetained pendingSecureMessage];
    [v2 activateAlert:v3];

    [WeakRetained setPendingSecureMessage:0];
  }

  v4 = [WeakRetained pendingLocateAlert];

  if (v4)
  {
    v5 = +[FMAlertManager sharedInstance];
    v6 = [WeakRetained pendingLocateAlert];
    [v5 activateAlert:v6];

    [WeakRetained setPendingLocateAlert:0];
  }

  if ([WeakRetained lockStateNotifyToken] != -1)
  {
    notify_cancel([WeakRetained lockStateNotifyToken]);
    [WeakRetained setLockStateNotifyToken:0xFFFFFFFFLL];
  }
}

void sub_100174C90(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = sub_100002880(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Buddy is done", v14, 2u);
    }

    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:*(a1 + 32) name:@"purplebuddy.setupdone" object:0];

    v4 = [*(a1 + 32) buddyWaitTimer];

    if (v4)
    {
      v5 = [*(a1 + 32) buddyWaitTimer];
      [v5 invalidate];

      [*(a1 + 32) setBuddyWaitTimer:0];
    }

    [*(a1 + 32) setWaitingForBuddy:0];
    [*(a1 + 32) syncFMIPStateToWatch];
    if (*(a1 + 41) == 1)
    {
      v6 = +[FMDAppleAccountManager sharedInstance];
      [v6 syncFMIPAccountInfo];

      if ([*(a1 + 32) waitingToMakeProviderActive])
      {
        v7 = +[FMXPCTransactionManager sharedInstance];
        [v7 endTransaction:@"FMIPWaitingForBuddy"];

        [*(a1 + 32) makeProviderActive];
      }
    }
  }

  else
  {
    if (([*(a1 + 32) waitingForBuddy] & 1) == 0)
    {
      [*(a1 + 32) setWaitingForBuddy:1];
      v8 = +[FMXPCTransactionManager sharedInstance];
      [v8 beginTransaction:@"FMIPWaitingForBuddy"];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:*(a1 + 32) selector:"buddyDidComplete:" name:@"purplebuddy.setupdone" object:0];
    }

    v10 = [*(a1 + 32) buddyWaitTimer];
    [v10 invalidate];

    v11 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_buddyCompletionCheckTimerFired:" selector:0 userInfo:0 repeats:10.0];
    [*(a1 + 32) setBuddyWaitTimer:v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMIP is not active yet since buddy is yet to complete.", buf, 2u);
    }
  }
}

void sub_1001758DC(uint64_t a1)
{
  v2 = +[FMDLocalActivationLockInfoManager sharedInstance];
  v3 = [*(a1 + 32) isActivationLocked];
  v4 = sub_100002880([v2 updateActivationLockStatus:v3]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "synchronizeLocationActivationState %d", v5, 8u);
  }
}

void sub_100175AD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:*(a1 + 32)];
}

void sub_100175CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100175CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serialQueue_sendDeviceIdentityIfEligibleWithIdentityInfo:*(a1 + 32)];
}

void sub_100176008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100176024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preferences application state did change: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkAndSendPendingDeviceIdentityWithIdentityInfo:*(a1 + 32)];
}

void sub_100176260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10017627C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serialQueue_checkAndSendPendingDeviceIdentityWithIdentityInfo:*(a1 + 32)];
}

NSDictionary *__cdecl sub_1001768B0(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100176900(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_10017809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001780E4(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [v15 signature];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v15 attestation];
    v14 = *(*(a1 + 56) + 8);
    v9 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [*(a1 + 32) signal];
}

void sub_10017A1B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10017A298(id a1)
{
  v1 = objc_alloc_init(FMDCoreFollowUpManager);
  v2 = qword_100314688;
  qword_100314688 = v1;

  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 serialNumber];
  [qword_100314688 setSerialNumber:v4];

  v5 = [qword_100314688 serialNumber];

  if (!v5)
  {
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022AA8C(v7);
    }

    v8 = qword_100314688;
    qword_100314688 = 0;
  }
}

void sub_10017A4F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = +[FMDSharedConfigurationManager sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10017A5E8;
    v10[3] = &unk_1002CF220;
    v10[4] = *(a1 + 32);
    [v8 postTheftAndLossCFU:v5 completion:v10];
  }

  else
  {
    v9 = sub_100002880(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022AB54();
    }
  }
}

void sub_10017A5E8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002880(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022ABD4();
    }

LABEL_4:

    goto LABEL_5;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Theft and Loss CFU posted", buf, 2u);
    }

    goto LABEL_4;
  }

  if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Theft and Loss CFU should not be posted, clearing", v9, 2u);
  }

  [*(a1 + 32) clearTheftAndLossCFU];
LABEL_5:
}

uint64_t sub_10017A7B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v6 = [*(a1 + 32) _getDeviceClassesFromCoverage:a2];
    v7 = +[FMDSharedConfiguration sharedInstance];
    v8 = [v7 entryForConfiguration:FMDSharedConfigurationKeyTheftAndLoss deviceClasses:v6];

    v9 = [v8 objectForKeyedSubscript:@"followUpStrings"];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9, 0);
    }
  }

  return _objc_release_x2();
}

void sub_10017AA6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.findmy.theftandlosscfu"];
    [v8 setRequiresNetworkConnectivity:1];
    [v8 setRequiresExternalPower:0];
    v9 = [v5 reminderInMins];
    v10 = [v9 longValue];

    if (v10 == -1)
    {
      v14 = sub_100002880(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v28 = -1;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Bail on scheduling TnL reminder timer. Reminder interval (%ld).", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v12 = [v5 reminderInMins];
    v13 = (60 * [v12 longValue]);

    v14 = [*(a1 + 32) dateByAddingTimeInterval:v13];
    v15 = objc_alloc_init(NSDate);
    v16 = [v14 compare:v15];
    v17 = 0.0;
    if (v16 == 1)
    {
      [v14 timeIntervalSinceDate:v15, 0.0];
    }

    [v8 setScheduleAfter:v17];
    [v8 setPriority:2];
    [v8 setRequiresProtectionClass:4];
    v18 = +[BGSystemTaskScheduler sharedScheduler];
    v26 = 0;
    v19 = [v18 submitTaskRequest:v8 error:&v26];
    v20 = v26;

    v22 = sub_100002880(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v23)
      {
        [v8 scheduleAfter];
        *buf = 138412546;
        v28 = @"com.apple.findmy.theftandlosscfu";
        v29 = 2048;
        v30 = v24;
        v25 = "submitTaskRequest %@ to run in %f seconds.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
      }
    }

    else if (v23)
    {
      *buf = 138412546;
      v28 = @"com.apple.findmy.theftandlosscfu";
      v29 = 2112;
      v30 = v20;
      v25 = "submitTaskRequest for %@ failed with error (%@).";
      goto LABEL_14;
    }

LABEL_16:
    goto LABEL_17;
  }

  v8 = sub_100002880(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10022AC3C();
  }

LABEL_17:
}

void sub_10017AFCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _handleTheftAndLossReminderBackgroundTask];
  [v3 setTaskCompleted];
}

void sub_10017B020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022ACBC();
    }
  }

  [*(a1 + 32) submitTheftAndLossReminderBackgroundTask:*(a1 + 40)];
}

void sub_10017B300(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 requestTheftAndLossCFU:4];
  [v3 setTaskCompleted];
}

void sub_10017B56C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002880(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022AE7C();
    }

LABEL_4:

    [*(a1 + 32) clearTheftAndLossCFU];
    goto LABEL_9;
  }

  v7 = sub_100002880(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is not covered by Theft and Loss when turning off FMiP, clearing CFU", v10, 2u);
    }

    goto LABEL_4;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is covered by Theft and Loss when turning off FMiP, scheduling CFU", buf, 2u);
  }

  v9 = +[FMDSharedConfiguration sharedInstance];
  [v9 writeFindMySignOutTimeToFile];

  [*(a1 + 32) _registerTheftAndLossCFUBackgroundTask];
LABEL_9:
}

void sub_10017B6F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10022AEE4();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleared the Theft and Loss CFU", v5, 2u);
  }
}

void sub_10017B840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002880(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022AF4C();
    }
  }

  else if (a2)
  {
    v8 = +[FMDFMIPManager sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10017B974;
    v10[3] = &unk_1002CF7C0;
    v10[4] = *(a1 + 32);
    [v8 fmipStateWithCompletion:v10];
  }

  else
  {
    v9 = sub_100002880(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device does not have coverage. Make best effort to clear the CFU.", buf, 2u);
    }

    [*(a1 + 32) clearTheftAndLossCFU];
  }
}

void sub_10017B974(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002880(v5);
  v7 = v6;
  if (a2 < 2 || v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10022AFB4();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device got TnL coverage. Immediately display the CFU.", v8, 2u);
    }

    [*(a1 + 32) _forceTheftAndLossCFU];
  }
}

void sub_10017BCD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupAgent completed with error %@", &v5, 0xCu);
  }

  [*(a1 + 32) setSetupAgent:0];
}

void sub_10017BFA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterAccessoriesIfNeeded];
  v2 = [[FMDEventLoggerEventScalar alloc] initWithEventName:@"FMDNanoMigratorJanitor"];
  v3 = +[FMDEventLogger sharedLogger];
  v4 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 logEvent:v2 toFacilitiesNamed:v5];
}

void sub_10017C318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 udid];

  v6 = [[FMDAccessoryIdentifier alloc] initWithString:v5];
  v7 = [FMDRequestWatchUnregister alloc];
  v8 = [v3 unregisterToken];
  v9 = [(FMDRequestWatchUnregister *)v7 initWithDeviceUDID:v5 unregisterToken:v8];

  objc_initWeak(&location, *(a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10017C53C;
  v14[3] = &unk_1002CF898;
  objc_copyWeak(v17, &location);
  v17[1] = *(a1 + 40);
  v10 = v6;
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v12 = sub_10017DFC4([(FMDRequest *)v9 setCompletionHandler:v14]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Watch Migration: Watch unregister request enqueued %@", buf, 0xCu);
  }

  v13 = [*(a1 + 32) serverInteractionController];
  [v13 enqueueRequest:v9];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void sub_10017C510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017C53C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_27;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 56);
  v6 = sub_10017DFC4(WeakRetained);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 134217984;
    v37 = COERCE_DOUBLE([v3 httpResponseStatus]);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch Migration: Watch Unregister request response code %li", &v36, 0xCu);
  }

  v7 = [v3 httpResponseError];
  if (v7 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v29 = [WeakRetained unregisterTokenStore];
    [v29 removeUnregisterTokenForIdentifier:*(a1 + 32)];

    v31 = sub_100002880(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      [v3 fm_logID];
      v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v33 = COERCE_DOUBLE([v3 httpResponseStatus]);
      v36 = 138412546;
      v37 = v32;
      v38 = 2048;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", &v36, 0x16u);
    }

    v18 = sub_10017DFC4(v34);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      v36 = 138412290;
      v37 = v35;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Watch Migration: Watch unregister success %@", &v36, 0xCu);
    }

    goto LABEL_24;
  }

  v8 = [v3 cancelled];
  v9 = v8;
  v10 = sub_100002880(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

    [v3 fm_logID];
    v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v36 = 138412290;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v36, 0xCu);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_14;
    }

    [v3 fm_logID];
    v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v13 = COERCE_DOUBLE([v3 httpResponseStatus]);
    v14 = [v3 httpResponseError];
    v36 = 138412802;
    v37 = v12;
    v38 = 2048;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v36, 0x20u);
  }

LABEL_14:
  v16 = sub_100002880(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10022B038(v3, v16);
  }

  v17 = [v3 httpResponseHeaders];
  v18 = [v17 objectForKeyedSubscript:@"X-Apple-Retry-After"];

  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = [v18 doubleValue];
  v5 = v20;
  v21 = sub_100002880(v19);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 0.0)
  {
    if (v22)
    {
      [WeakRetained fm_logID];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v36 = 138412290;
      v37 = v23;
      v24 = "%@ Server requested that no more retries be done.";
      v25 = v21;
      v26 = 12;
      goto LABEL_22;
    }
  }

  else if (v22)
  {
    [WeakRetained fm_logID];
    v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v36 = 138412546;
    v37 = v23;
    v38 = 2048;
    v39 = v5;
    v24 = "%@ Server requested a retry after %f seconds";
    v25 = v21;
    v26 = 22;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, &v36, v26);
  }

LABEL_24:
  v28 = sub_10017DFC4(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 134217984;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Watch Migration: Retry After %f", &v36, 0xCu);
  }

  [*(a1 + 40) scheduleJanitor:v5];
LABEL_27:
}

void sub_10017CF90(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [FMDAccessoryIdentifier alloc];
  v4 = [v9 udid];
  v5 = [v3 initWithString:v4];

  v6 = [*(a1 + 32) unregisterTokenStore];
  v7 = [v6 unregisterTokenForIdentifier:v5];

  if (v7)
  {
    v8 = [[FMDFMIPUnregisterDeviceInfoAccessoryAdaptor alloc] initWithAccessory:v9 unregisterToken:v7];
    [*(a1 + 40) fm_safeAddObject:v8];
  }
}

void sub_10017D4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017D508(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v22 = 138413058;
    v23 = v3;
    v24 = 2048;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v22, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_7;
  }

  if ([v3 cancelled])
  {
LABEL_7:
    v10 = [v3 cancelled];
    v11 = v10;
    v12 = sub_10000BE38(v10);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [v3 fm_logID];
        v22 = 138412290;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v22, 0xCu);
LABEL_12:
      }
    }

    else if (v13)
    {
      v14 = [v3 fm_logID];
      v15 = [v3 httpResponseStatus];
      v16 = [v3 httpResponseError];
      v22 = 138412802;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v22, 0x20u);

      goto LABEL_12;
    }

    v17 = [WeakRetained onCompletionHandler];

    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [WeakRetained onCompletionHandler];
    v19 = [v3 httpResponseError];
    (v18)[2](v18, v19);

    goto LABEL_15;
  }

  v21 = [WeakRetained onCompletionHandler];

  if (v21)
  {
    v18 = [WeakRetained onCompletionHandler];
    v18[2](v18, 0);
LABEL_15:
  }

LABEL_16:
  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))();
  }
}

void sub_10017D964(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "_");
  v2 = qword_1003146A0;
  qword_1003146A0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017D9A8(uint64_t a1)
{
  if (qword_1003146A8 != -1)
  {
    sub_10022B108();
  }

  v2 = qword_1003146B0;

  return v2;
}

void sub_10017D9EC(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "locations");
  v2 = qword_1003146B0;
  qword_1003146B0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DA30(uint64_t a1)
{
  if (qword_1003146B8 != -1)
  {
    sub_10022B11C();
  }

  v2 = qword_1003146C0;

  return v2;
}

void sub_10017DA74(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "accessory");
  v2 = qword_1003146C0;
  qword_1003146C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10017DAB8(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "traffic");
  v2 = qword_1003146D0;
  qword_1003146D0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DAFC(uint64_t a1)
{
  if (qword_1003146D8 != -1)
  {
    sub_10022B144();
  }

  v2 = qword_1003146E0;

  return v2;
}

void sub_10017DB40(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "encoder");
  v2 = qword_1003146E0;
  qword_1003146E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10017DB84(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "extensions");
  v2 = qword_1003146F0;
  qword_1003146F0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DBC8(uint64_t a1)
{
  if (qword_1003146F8 != -1)
  {
    sub_10022B16C();
  }

  v2 = qword_100314700;

  return v2;
}

void sub_10017DC0C(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");
  v2 = qword_100314700;
  qword_100314700 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10017DC50(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");
  v2 = qword_100314710;
  qword_100314710 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DC94(uint64_t a1)
{
  if (qword_100314718 != -1)
  {
    sub_10022B180();
  }

  v2 = qword_100314720;

  return v2;
}

void sub_10017DCD8(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");
  v2 = qword_100314720;
  qword_100314720 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DD1C(uint64_t a1)
{
  if (qword_100314728 != -1)
  {
    sub_10022B194();
  }

  v2 = qword_100314730;

  return v2;
}

void sub_10017DD60(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");
  v2 = qword_100314730;
  qword_100314730 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DDA4(uint64_t a1)
{
  if (qword_100314738 != -1)
  {
    sub_10022B1A8();
  }

  v2 = qword_100314740;

  return v2;
}

void sub_10017DDE8(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");
  v2 = qword_100314740;
  qword_100314740 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DE2C(uint64_t a1)
{
  if (qword_100314748 != -1)
  {
    sub_10022B1BC();
  }

  v2 = qword_100314750;

  return v2;
}

void sub_10017DE70(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");
  v2 = qword_100314750;
  qword_100314750 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DEB4(uint64_t a1)
{
  if (qword_100314758 != -1)
  {
    sub_10022B1D0();
  }

  v2 = qword_100314760;

  return v2;
}

void sub_10017DEF8(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");
  v2 = qword_100314760;
  qword_100314760 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DF3C(uint64_t a1)
{
  if (qword_100314768 != -1)
  {
    sub_10022B1E4();
  }

  v2 = qword_100314770;

  return v2;
}

void sub_10017DF80(id a1)
{
  v1 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");
  v2 = qword_100314770;
  qword_100314770 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10017DFC4(uint64_t a1)
{
  if (qword_100314778 != -1)
  {
    sub_10022B1F8();
  }

  v2 = qword_100314780;

  return v2;
}

void sub_10017E008(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    v1 = os_log_create("com.apple.icloud.findmydeviced", "automation");
    v2 = qword_100314780;
    qword_100314780 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_10017E630(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  [v2 sendDeviceIdentityWithIdentityInfo:*(a1 + 40)];

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:@"kFMDCommandHandlerIdentityV5TransactionName"];
}

void sub_10017E840(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_10017ED9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017EDC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didCompleteQueueCheckRequest:v3 completion:*(a1 + 32)];
}

void sub_10017FAD8(id a1)
{
  v1 = objc_alloc_init(FMDOperationManager);
  v2 = qword_100314790;
  qword_100314790 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10017FCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017FCD0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = sub_10017DA30(a1);
    if (!os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *buf = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v14 = "%@ found nil action for identifier %@";
LABEL_14:
    _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
    goto LABEL_15;
  }

  if (!*(a1 + 48))
  {
    v3 = sub_10017DA30(a1);
    if (!os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    v14 = "%@ found nil identifier for action %@";
    goto LABEL_14;
  }

  v2 = [*(a1 + 40) actionQueueMap];
  v3 = [v2 objectForKey:*(a1 + 48)];

  v5 = sub_10017DA30(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ found queue - %@", buf, 0x16u);
  }

  if (!v3)
  {
    v3 = [[FMDOperationQueue alloc] initWithIdentifier:*(a1 + 48)];
    v7 = [*(a1 + 40) actionQueueMap];
    [v7 setObject:v3 forKey:*(a1 + 48)];

    v8 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v3];
    v9 = sub_10017DA30(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ creating queue(%@) with identifier - %@", buf, 0x20u);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = [(FMDOperationQueue *)v3 addRequest:*(a1 + 32)];
LABEL_15:
}

void sub_10018006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100180084(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = sub_10017DA30(a1);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v10 = "%@ found nil action to be removed for identifier %@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);
    goto LABEL_14;
  }

  if (!*(a1 + 48))
  {
    v3 = sub_10017DA30(a1);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v10 = "%@ found nil identifier to remove action %@";
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) actionQueueMap];
  v3 = [v2 objectForKey:*(a1 + 48)];

  v5 = sub_10017DA30(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ found queue for removal - %@", &v13, 0x16u);
  }

  if (v3)
  {
    v7 = [v3 cancelRequest:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v7;
LABEL_14:
}

void sub_1001804BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_10000BE38(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10022B310();
  }
}

void sub_1001806F0(id a1)
{
  v1 = qword_1003147A0;
  qword_1003147A0 = &off_1002E8DB8;
}

void sub_10018372C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100183878;
  v20 = &unk_1002CF458;
  v10 = *(a1 + 48);
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, &v17);
  v14 = [*(a1 + 32) requestModifierLock];
  [v14 lock];

  v15 = [*(a1 + 32) requests];
  [v15 removeObjectForKey:*(a1 + 40)];

  v16 = [*(a1 + 32) requestModifierLock];
  [v16 unlock];
}

void sub_100183878(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) statusCode];
  v5 = [*(a1 + 32) allHeaderFields];
  v4 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v3, v5, v4, 0, *(a1 + 48));
}

void sub_1001846F4(uint64_t a1)
{
  v28 = 0;
  v2 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:&v28];
  v3 = v28;
  if (v3)
  {
    v4 = [v2 count];
    if (v4)
    {
      v5 = sub_100002880(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10022B54C();
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v20 = v3;
        v21 = v2;
        v8 = *v25;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v24 + 1) + 8 * i);
            v11 = [v10 btAddressData];
            v12 = [v11 fm_MACAddressString];
            v13 = [v12 isEqualToString:*(a1 + 32)];

            if (v13)
            {
              v15 = sub_100002880(v14);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v10 btAddressData];
                v17 = [v16 fm_MACAddressString];
                *buf = 138412290;
                v30 = v17;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager forcing a connection to device %@", buf, 0xCu);
              }

              v18 = objc_alloc_init(CBConnection);
              [v18 setPeerDevice:v10];
              [v18 setConnectionFlags:16];
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3221225472;
              v22[2] = sub_1001849E8;
              v22[3] = &unk_1002CD868;
              v23 = v18;
              v19 = v18;
              [v19 activateWithCompletion:v22];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v24 objects:v31 count:16];
        }

        while (v7);
        v3 = v20;
        v2 = v21;
      }
    }
  }

  else
  {
    v5 = sub_100002880(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager did not find any paired devices\n", buf, 2u);
    }
  }
}

void sub_1001849E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002880(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022B5B4();
    }
  }

  [*(a1 + 32) invalidate];
}

void sub_100184BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100184BE4(uint64_t a1)
{
  v2 = [*(a1 + 32) _cbPoweredOff];
  if (!v2)
  {
    v25 = 0;
    v6 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:&v25];
    v5 = v25;
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (v5)
    {
      v10 = sub_100002880(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022B61C();
      }

      v11 = dispatch_get_global_queue(0, 0);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100184F78;
      v22[3] = &unk_1002CD8B0;
      v24 = *(a1 + 40);
      v5 = v5;
      v23 = v5;
      dispatch_async(v11, v22);

      v12 = v24;
      goto LABEL_16;
    }

    v13 = [*(*(*(a1 + 48) + 8) + 40) count];
    v14 = sub_100002880(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        v16 = "FMDBluetoothManager returned (allPairedDevices.count) devices";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "FMDBluetoothManager did not find any paired devices";
      goto LABEL_14;
    }

    v17 = [*(a1 + 32) accessoriesQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100184FE0;
    v20[3] = &unk_1002CFC78;
    v20[4] = *(a1 + 32);
    v19 = *(a1 + 40);
    v18 = v19;
    v21 = v19;
    dispatch_async(v17, v20);

    v12 = v21;
LABEL_16:

    goto LABEL_17;
  }

  v3 = sub_100002880(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager powered off. Not able to return accessories.", buf, 2u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184EE8;
  block[3] = &unk_1002CE250;
  v27 = *(a1 + 40);
  dispatch_async(v4, block);

  v5 = v27;
LABEL_17:
}

void sub_100184EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:9 userInfo:0];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_100184F78(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_100184FE0(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = *(*(a1[6] + 8) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100185134;
  v11[3] = &unk_1002CFC50;
  v11[4] = a1[4];
  v4 = v2;
  v12 = v4;
  [v3 enumerateObjectsUsingBlock:v11];
  v5 = a1[5];
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100185554;
    block[3] = &unk_1002CEEC0;
    v10 = v5;
    v8 = v4;
    v9 = 0;
    dispatch_async(v6, block);
  }
}

void sub_100185134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceFlags];
  if ((v4 & 0x2000000) != 0)
  {
    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager Ignoring shared device %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 32) bluetoothManagerDeviceForBluetoothDevice:v3];
    v6 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:v5];
    v7 = [*(a1 + 32) supportedAccessoryRegistry];
    v8 = [v7 assetsForAccessory:v6];
    v9 = [v8 fm_filter:&stru_1002CFC00];
    v10 = [v9 firstObject];

    [(FMDBluetoothAccessory *)v6 updateAudioAsset:v10];
    v11 = [(FMDBluetoothAccessory *)v6 address];
    v12 = [NSData dataWithMACAddressString:v11];

    if (v12)
    {
      v13 = objc_opt_new();
      v14 = [v13 ownerSession];

      v15 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:5.0];
      v16 = sub_100002880(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(FMDBluetoothAccessory *)v6 address];
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrieving baUUID for MAC: %@", buf, 0xCu);
      }

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10018542C;
      v22 = &unk_1002CFC28;
      v23 = v6;
      v24 = v15;
      v18 = v15;
      [v14 beaconingIdentifierForMACAddress:v12 completion:&v19];
      [v18 wait];
    }

    [*(a1 + 40) addObject:v6];
  }
}

void sub_10018542C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 UUIDString];
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) address];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received baUUID: %@ for %@, %@", &v8, 0x20u);
  }

  if (v3)
  {
    [*(a1 + 32) updateWithBeaconingIdentifier:v3];
  }

  [*(a1 + 40) signal];
}

void sub_1001856B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001856D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = sub_100002880(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022B6EC();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [a2 bluetoothState] == 4;
  }

  v8 = [*(a1 + 32) btController];
  [v8 invalidate];

  dispatch_group_leave(*(a1 + 40));
}

void sub_10018596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018599C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100002880(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 btAddressData];
    v7 = [v6 fm_MACAddressString];
    v8 = [v3 name];
    *buf = 138412546;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager FoundHandler - device (%@) with name (%@)", buf, 0x16u);
  }

  v9 = [v3 deviceFlags];
  if ((v9 & 0x4000) == 0)
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "FMDBluetoothManager FoundHandler - only BT classic devices are supported, ignoring device";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v12 = [v3 deviceFlags];
  if ((v12 & 0x2000000) == 0)
  {
    v10 = [WeakRetained delegate];
    v13 = sub_100002880(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager notifying delegate bluetoothManagerDidConnectDevice %@", buf, 0xCu);
    }

    if (([v3 discoveryFlags] & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    v14 = [v3 btAddressData];
    v15 = [v14 fm_MACAddressString];

    v16 = [WeakRetained bluetoothManagerDevicesByAddress];
    v17 = [v16 objectForKeyedSubscript:v15];

    if (v17)
    {
      v18 = [v17 bluetoothDevice];
      v19 = [v18 name];
      v20 = [v3 name];
      v21 = [v19 compare:v20];

      if (!v21)
      {
LABEL_18:

        goto LABEL_19;
      }

      v22 = [WeakRetained bluetoothDiscoveryQueue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100185E28;
      v25[3] = &unk_1002CDD98;
      v26 = v17;
      v27 = v3;
      v28 = WeakRetained;
      dispatch_async(v22, v25);

      v23 = v26;
    }

    else
    {
      v24 = [WeakRetained bluetoothDiscoveryQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100185D64;
      block[3] = &unk_1002CDD98;
      block[4] = WeakRetained;
      v30 = v3;
      v31 = v10;
      dispatch_async(v24, block);

      v23 = v30;
    }

    goto LABEL_18;
  }

  v10 = sub_100002880(v12);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "FMDBluetoothManager FoundHandler - ignoring temporary device";
    goto LABEL_15;
  }

LABEL_19:
}

void sub_100185D64(uint64_t a1)
{
  v2 = [*(a1 + 32) _bluetoothManagerDeviceForBluetoothDevice:*(a1 + 40)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100185E1C;
  v4[3] = &unk_1002CD478;
  v5 = *(a1 + 48);
  v6 = v2;
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_100185E28(id *a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] bluetoothDevice];
    v4 = [v3 name];
    v5 = [a1[5] name];
    *buf = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager deviceNameChanged (%@) => (%@)", buf, 0x16u);
  }

  v6 = [a1[6] _bluetoothManagerDeviceForBluetoothDevice:a1[5]];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100185F9C;
  v8[3] = &unk_1002CD478;
  v8[4] = a1[6];
  v9 = v6;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_100185F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 bluetoothManagerDidUpdateDevice:*(a1 + 40)];
}

void sub_100185FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceFlags];
  v5 = v4;
  WeakRetained = sub_100002880(v4);
  v7 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 0x4000) != 0)
  {
    if (v7)
    {
      v11 = [v3 btAddressData];
      v12 = [v11 fm_MACAddressString];
      v13 = [v3 name];
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager LostHandler - device (%@) with name (%@)", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v14 = [v3 deviceFlags];
    if ((v14 & 0x2000000) != 0)
    {
      v16 = sub_100002880(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "FMDBluetoothManager LostHandler - ignoring temporary device";
        goto LABEL_12;
      }
    }

    else
    {
      v15 = [WeakRetained _cbPoweredOff];
      if (!v15)
      {
        v18 = [WeakRetained delegate];
        v19 = sub_100002880(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager notifying delegate bluetoothManagerDidDisconnectDevice %@", buf, 0xCu);
        }

        [WeakRetained bluetoothManagerDeviceForBluetoothDevice:v3];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10018630C;
        v21[3] = &unk_1002CD478;
        v23 = v22 = v18;
        v20 = v23;
        v16 = v18;
        dispatch_async(&_dispatch_main_q, v21);

        goto LABEL_16;
      }

      v16 = sub_100002880(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "Ignore notification. Bailing.";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v7)
  {
    v8 = [v3 btAddressData];
    v9 = [v8 fm_MACAddressString];
    v10 = [v3 name];
    *buf = 138412546;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager LostHandler - only BT classic devices are supported, ignoring device (%@) with name (%@)", buf, 0x16u);
  }

LABEL_17:
}

void sub_100186318(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10022B754();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting BT Discovery", v5, 2u);
  }
}

void sub_1001865F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_100186640(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bluetoothDiscoveryQueue];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100186700;
    v6[3] = &unk_1002CD478;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

id sub_100186700(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager didDiscoverDevice %@", &v5, 0xCu);
  }

  return [*(a1 + 40) didDiscoverDevice:*(a1 + 32)];
}

void sub_1001867B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bluetoothDiscoveryQueue];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100186870;
    v6[3] = &unk_1002CD478;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

id sub_100186870(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager didLoseDevice %@", &v5, 0xCu);
  }

  return [*(a1 + 40) didLoseDevice:*(a1 + 32)];
}

void sub_100186920(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bluetoothDiscoveryQueue];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001869BC;
    block[3] = &unk_1002CD4C8;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

id sub_1001869BC(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager discovery ended - setting all channels inactive.", v4, 2u);
  }

  return [*(a1 + 32) setAllAudioChannelsActive:0];
}

void sub_100186A34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bluetoothDiscoveryQueue];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100186AD0;
    block[3] = &unk_1002CD4C8;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

id sub_100186AD0(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager discovery started - setting all channels active.", v4, 2u);
  }

  return [*(a1 + 32) setAllAudioChannelsActive:1];
}

void sub_100186BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v9 = a3;
  v5 = [v9 bluetoothDevice];
  v6 = [v5 vendorID];
  v7 = [v9 bluetoothDevice];
  v8 = [v4 profileWithVendorID:v6 productID:{objc_msgSend(v7, "productID")}];

  [*(a1 + 32) setInternalDeviceAudioChannels:v9 profile:v8 active:*(a1 + 40)];
}

void sub_100186E48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FMDAudioChannelStatus alloc] initWithName:v3 active:*(a1 + 40)];

  [*(a1 + 32) addAudioChannelStatus:v4];
}

void sub_100187054(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[FMDBLEBeacon alloc] initWithConfiguration:v4];
  [(FMDBLEBeacon *)v6 setActive:*(a1 + 40)];
  [*(a1 + 32) addBLEBeacon:v6];
  v5 = [[FMDAudioChannelStatus alloc] initWithConfiguration:v4];

  [(FMDBLEBeacon *)v5 setActive:*(a1 + 40)];
  [*(a1 + 32) addAudioChannelStatus:v5];
}

void sub_100187230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100187248(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothAddress];
  v3 = [v2 fm_MACAddressString];

  if (v3)
  {
    v4 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v16;
      *&v6 = 138412290;
      v14 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 deviceFlags];
          if ((v11 & 0x2000000) != 0)
          {
            v13 = sub_100002880(v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v14;
              v20 = v10;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager ignoring temporary device - %@", buf, 0xCu);
            }
          }

          else
          {
            v12 = [v10 btAddressData];
            v13 = [v12 fm_MACAddressString];

            if ([v13 isEqualToString:v3])
            {
              objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

void sub_100187558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100187570(uint64_t a1)
{
  v2 = [*(a1 + 32) _bluetoothManagerDeviceForBluetoothDevice:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10018826C(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v4 = [v7 channelName];
    v5 = [v3 containsObject:v4];

    v6 = [NSNumber numberWithBool:v5];
    [v7 setPlayingSound:v6];
  }

  else
  {
    [v7 setPlayingSound:0];
  }
}

void sub_100188760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1001887A8(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10018AEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v24 - 72));
  _Unwind_Resume(a1);
}

void sub_10018AF30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logPublishedLocation:v9 reason:a4 publisher:v8];
}

void sub_10018AFB0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = sub_100002880(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMCompareLocatorPublisher publishing to primary publisher.", v12, 2u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v8, a4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10018B0A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018B144;
  v6[3] = &unk_1002CFEE0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 startPublishingWithBlock:v6];
}

uint64_t sub_10018BA60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10018C0BC(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022B920(a1, v2);
  }

  v3 = [*(a1 + 40) delegates];
  [v3 addPointer:*(a1 + 32)];
}

void sub_10018C1AC(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [objc_opt_class() defaultStorageLocation];
  v8 = 0;
  [v2 removeItemAtURL:v3 error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = [v4 fm_isFileNotFoundError];
    if ((v5 & 1) == 0)
    {
      v6 = sub_100002880(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10022B99C(v4, v6);
      }
    }
  }

  v7 = objc_opt_new();
  [*(a1 + 32) setAccessoriesByIdentifier:v7];
}

void sub_10018C39C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained accessoriesByIdentifier];
  v4 = [a1[4] accessoryIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1[5];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 assetType] == 1 && objc_msgSend(v5, "conformsToProtocol:", &OBJC_PROTOCOL___FMDAudioAccessory))
        {
          v12 = [v5 updateAudioAsset:v11];

          if (v12)
          {
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 3221225472;
            v13[2] = sub_10018C5A0;
            v13[3] = &unk_1002CD288;
            objc_copyWeak(&v15, a1 + 6);
            v14 = a1[4];
            dispatch_async(&_dispatch_main_q, v13);

            objc_destroyWeak(&v15);
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10018C5A0(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry is updating assets.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained accessoryDidUpdate:*(a1 + 32)];
}

void sub_10018C770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained accessoriesByIdentifier];
  v4 = [*(a1 + 32) accessoryIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];
  v7 = v5;
  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = *(a1 + 32);
  }

  v8 = [v7 updatePlaybackChannels:*(a1 + 40)];
LABEL_6:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C8C0;
  v10[3] = &unk_1002CFFE0;
  v13 = v8;
  v10[4] = WeakRetained;
  v11 = v5;
  v12 = *(a1 + 48);
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

uint64_t sub_10018C8C0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = sub_100002880(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry is updating playbackChannels.", v4, 2u);
    }

    [*(a1 + 32) accessoryDidUpdate:*(a1 + 40)];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10018CA34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10018CA58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSources];
  [v2 addObjectsFromArray:*(a1 + 32)];
}

void sub_10018CB9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10018CBC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSources];
  [v2 addObject:*(a1 + 32)];
}

void sub_10018CCE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained computeAccessoryRegistry];
}

void sub_10018D274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018D28C(uint64_t a1)
{
  v6 = [*(a1 + 32) delegates];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10018D3F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained accessoriesByIdentifier];
  v3 = [v2 allValues];
  v4 = [v3 copy];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void sub_10018D948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10018D9A4(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018DA70;
  v9[3] = &unk_1002D0058;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v8 = *(a1 + 56);
  v7 = v8;
  v13 = v8;
  v14 = *(a1 + 72);
  [a2 getAccessoriesWithCompletion:v9];
}

void sub_10018DA70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 72) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:v5];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10018DB7C;
    v14 = &unk_1002D0030;
    v10 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = v10;
    [v5 enumerateObjectsUsingBlock:&v11];
    if (!--*(*(*(a1 + 64) + 8) + 24))
    {
      [*(a1 + 56) signal];
    }
  }
}

void sub_10018DB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryIdentifier];

  if (v4)
  {
    if ([*(a1 + 32) supportsAccessory:v3])
    {
      v6 = *(a1 + 40);
      v7 = [v3 accessoryIdentifier];
      [v6 addObject:v7];
    }
  }

  else
  {
    v8 = sub_100002880(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022BAC4(v3, v8);
    }
  }
}

void sub_10018DC28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018DCBC;
  block[3] = &unk_1002CD4C8;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void sub_10018DCC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0 && objc_msgSend(v5, "category") != 3)
  {
    [*(a1 + 40) _removeAccessory:v5];
  }
}

void sub_10018DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018DF50(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoriesByIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10018E2D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained accessoryDidPair:*(a1 + 32)];
  [*(a1 + 40) postConnectionStatusChangeNotification];
}

void sub_10018E4EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained accessoryDidUnpair:*(a1 + 32)];
  [*(a1 + 40) postConnectionStatusChangeNotification];
}

void sub_10018E860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v4 = sub_100002880([WeakRetained accessoryDidUpdate:*(a1 + 32)]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : accessory updated %@", &v12, 0xCu);
    }
  }

  if (*(a1 + 57) == 1)
  {
    v6 = sub_100002880(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) name];
      v8 = *(a1 + 32);
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : accessory name: %@ disconnected %@", &v12, 0x16u);
    }

    [v3 accessoryDidDisconnect:*(a1 + 32)];
  }

  else if (*(a1 + 58) == 1)
  {
    v9 = sub_100002880(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) name];
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : accessory name: %@ connected %@", &v12, 0x16u);
    }

    [v3 accessoryDidConnect:*(a1 + 32)];
  }

  [*(a1 + 40) postConnectionStatusChangeNotification];
}

void sub_10018EDB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAccessory:*(a1 + 32) previouslyPaired:0];
}

void sub_10018EEF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAccessory:*(a1 + 32)];
}

void sub_10018F018(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoriesByIdentifier];
  v3 = [v2 allValues];
  v4 = [v3 copy];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018F0D0;
  v5[3] = &unk_1002D00D0;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void sub_10018F0D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 address];
  v5 = [NSData dataWithMACAddressString:v4];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v6 ownerSession];

    v8 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:5.0];
    v9 = sub_100002880(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 address];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry Retrieving baUUID for MAC: %@", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10018F2AC;
    v14[3] = &unk_1002D0120;
    v11 = v3;
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    v17 = v8;
    v13 = v8;
    [v7 beaconingIdentifierForMACAddress:v5 completion:v14];
    [v13 wait];
  }
}

void sub_10018F2AC(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 UUIDString];
    v6 = [a1[4] name];
    v7 = [a1[4] address];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry Received baUUID: %@ for %@, %@", &v10, 0x20u);
  }

  if (v3)
  {
    v8 = [a1[4] baUUID];
    v9 = [v3 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [a1[4] updateWithBeaconingIdentifier:v3];
      [a1[5] updateAccessory:a1[4]];
    }
  }

  [a1[6] signal];
}

void sub_10018F7D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dataArchiver];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v4, v5, v6, v7, v8, objc_opt_class(), 0];
  v19 = 0;
  v10 = [v3 readDictionaryAndClasses:v9 error:&v19];
  v11 = v19;
  v12 = &__NSDictionary0__struct;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if (v11)
  {
    v14 = [v11 fm_isFileNotFoundError];
    if ((v14 & 1) == 0)
    {
      v15 = sub_100002880(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10022BCB0();
      }

      v16 = +[FMDEventLoggerGeneral sharedInstance];
      [v16 sendError:v11 forEventName:@"FMDAccessoryRegistryFailedReadEventName"];
    }
  }

  v17 = [v13 allValues];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018F9E0;
  v18[3] = &unk_1002D00D0;
  v18[4] = *(a1 + 32);
  [v17 enumerateObjectsUsingBlock:v18];
}

id *sub_10018FEF4(id *result)
{
  if (*(result + 48) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = sub_100002880(result);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry is updating channel availability.", v5, 2u);
    }

    return [v3[4] accessoryDidUpdate:v3[5]];
  }

  return result;
}

void sub_100190990(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = (*(v16 + 16))(v16, 1);
      }

      v8 = sub_100002880(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = [v3 fm_logID];
      v17 = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 httpResponseStatus];
      v11 = "%@: successful with status %ld";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = v6;
    v8 = sub_100002880(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v10;
        v11 = "%@: Cancelled";
        v12 = v8;
        v13 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_14:
      }
    }

    else if (v9)
    {
      v10 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v10;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_100190BE4(id a1)
{
  v1 = objc_alloc_init(FMDProtectedContextManager);
  v2 = qword_1003147B0;
  qword_1003147B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100190F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100190F78(void *a1)
{
  v2 = [FMPreferencesUtil stringForKey:a1[4] inDomain:kFMDNotBackedUpPrefDomain];
  if (v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:v2];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022BEC0(a1 + 4, (a1 + 5), v7);
    }

    v8 = [[FMDProtectedContext alloc] initWithContextKey:a1[4] contextUUID:*(*(a1[5] + 8) + 40)];
    v9 = *(a1[7] + 8);
    obj = *(v9 + 40);
    v10 = [(FMDProtectedContext *)v8 context:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1001911DC(uint64_t a1)
{
  [*(a1 + 32) setProtectionClass:*(a1 + 56)];
  [*(a1 + 32) saveContext:*(a1 + 40)];
  v3 = [*(a1 + 32) contextUUID];
  v2 = [v3 UUIDString];
  [FMPreferencesUtil setString:v2 forKey:*(a1 + 48) inDomain:kFMDNotBackedUpPrefDomain];
}

void sub_1001913C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001913E0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [FMDProtectedContext directoryURLForContextKey:*(a1 + 32)];
  v4 = [FMPreferencesUtil stringForKey:*v2 inDomain:kFMDNotBackedUpPrefDomain];
  if (v4)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:v4];
    v6 = [v5 isEqual:*(a1 + 40)];
    if (v6)
    {
      v7 = sub_100002880(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10022BF58((a1 + 32), v7);
      }

      [FMPreferencesUtil removeKey:*(a1 + 32) inDomain:kFMDNotBackedUpPrefDomain];
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) cleanOutCurrentContextDirectoryURL:v3 preservingContextUUID:0 obliterateDirectory:*(a1 + 64)];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v8 = sub_100002880(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trying to delete an outdated protected context %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) cleanOutCurrentContextDirectoryURL:v3 preservingContextUUID:0 obliterateDirectory:*(a1 + 64)];
  }
}

void sub_10019168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001916A4(uint64_t a1)
{
  v2 = [FMDProtectedContext directoryURLForContextKey:*(a1 + 32)];
  [FMPreferencesUtil removeKey:*(a1 + 32) inDomain:kFMDNotBackedUpPrefDomain];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) cleanOutCurrentContextDirectoryURL:v2 preservingContextUUID:0 obliterateDirectory:1];
}

void sub_1001918B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001918D0(uint64_t a1)
{
  v2 = sub_100002880(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDProtectedContextManager start cleanupblock", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _startCleaningEmptyFolders];
  if (v4)
  {
    [FMPreferencesUtil setBool:1 forKey:@"kFMDProtectedContextCleanedUpEmptyFolders" inDomain:kFMDNotBackedUpPrefDomain];
    [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
    v5 = +[FMXPCNotificationsUtil sharedInstance];
    v6 = [v5 isHandlerRegisteredForDarwinNotification:*(a1 + 32)];

    if (v6)
    {
      v8 = +[FMXPCNotificationsUtil sharedInstance];
      [v8 deregisterHandlerForDarwinNotification:*(a1 + 32)];
    }

    v9 = sub_100002880(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "FMDProtectedContextManager finished cleaning up empty folders";
      v11 = &v13;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }
  }

  else
  {
    v9 = sub_100002880(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v10 = "FMDProtectedContextManager failed to clean up empty folders";
      v11 = &v12;
      goto LABEL_10;
    }
  }
}

void sub_100191B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100191BB8(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 lastPathComponent];

    *(*(*(a1 + 32) + 8) + 24) = [WeakRetained cleanupAllContextsForKey:v5];
  }

  else
  {
    *(v2 + 24) = 0;
  }
}