id sub_1760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v11 = 138543618;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present iCloud up-sell workflow", &v11, 0x16u);
  }

  v7 = objc_alloc_init(ICQUICloudStorageOffersManager);
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  [*(*(a1 + 32) + 24) setDelegate:?];
  return [*(*(a1 + 32) + 24) beginFlowWithNavigationController:*(a1 + 40) modally:1];
}

void sub_185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> User cancelled insufficient iCloud storage alert", &v7, 0x16u);
  }
}

void sub_1F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1FD8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 48) = 0;
  [*(a1 + 32) _updateStateForEnableCPLOptionTip];
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *buf = 138543618;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did enable iCloud Photos", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      *buf = 138543874;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Failed to enable iCloud Photos: %@", buf, 0x20u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_27D8;
    v12[3] = &unk_8308;
    v12[4] = *(a1 + 32);
    v13 = v5;
    dispatch_async(&_dispatch_main_q, v12);
  }
}

void sub_21A0(uint64_t a1, _BYTE *a2, double a3)
{
  LODWORD(a3) = -1.0;
  [*(a1 + 32) setActivationPercent:a3];
  [*(*(a1 + 40) + 40) enableOptimizedMode:1];
  *a2 = 1;
  LODWORD(v5) = 1.0;
  [*(a1 + 32) setActivationPercent:v5];
  [*(a1 + 32) setEventualGain:0];
  [*(a1 + 32) setImmediateGain:0];
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did enable iCloud Photos optimized mode", &v9, 0x16u);
  }
}

void sub_22B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> User cancelled confirmation to empty recently deleted items", &v10, 0x16u);
  }

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 keyWindow];
  v9 = [v8 rootViewController];
  [v9 dismissViewControllerAnimated:1 completion:0];
}

void sub_23C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    *buf = 138543618;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will empty recently deleted items", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2534;
  v10[3] = &unk_83D0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  objc_copyWeak(&v13, (a1 + 48));
  [v7 _performTipOperation:v10];
  objc_destroyWeak(&v13);
}

void sub_2534(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = -1.0;
  [*(a1 + 32) setActivationPercent:a3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2614;
  v8[3] = &unk_83A8;
  v8[4] = v6;
  v9 = v5;
  v10[1] = a2;
  objc_copyWeak(v10, (a1 + 48));
  [v7 expungeRecentlyDeletedItemsWithCompletionBlock:v8];
  objc_destroyWeak(v10);
}

void sub_2614(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v20 = 138543618;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      v10 = "<%{public}@:%p> Succesfully emptied recently deleted items";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v11, v12, v10, &v20, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = *(a1 + 32);
    v20 = 138543874;
    v21 = v14;
    v22 = 2048;
    v23 = v15;
    v24 = 2112;
    v25 = v5;
    v10 = "<%{public}@:%p> Failed to empty recently deleted items: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
    goto LABEL_6;
  }

  LODWORD(v16) = 1.0;
  [*(a1 + 40) setActivationPercent:v16];
  [*(a1 + 40) setEventualGain:0];
  [*(a1 + 40) setImmediateGain:0];
  [*(a1 + 40) setSize:0];
  v17 = PULocalizedString();
  [*(a1 + 40) setInfoText:v17];
  **(a1 + 56) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _refreshSizeGainForICPLEnableTip];

  v19 = objc_loadWeakRetained((a1 + 48));
  [v19 notifyUsageChanged];
}

uint64_t sub_293C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  do
  {
    result = usleep(0x7A120u);
  }

  while (*(*(*(a1 + 40) + 8) + 24) != 1);
  return result;
}

void sub_2ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_alloc_init(STStorageActionTipItem);
  v4 = [v3 originalMetadataProperties];
  [v7 setSize:{objc_msgSend(v4, "originalFilesize")}];
  [v7 setRecoverable:*(a1 + 40)];
  v5 = [v3 modificationDate];
  [v7 setLastUsedDate:v5];

  v6 = [v3 creationDate];

  [v7 setCreatedDate:v6];
  [*(a1 + 32) addObject:v7];
}

id sub_2DA4(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 setImmediateGain:v3];
}

id sub_31AC(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 setImmediateGain:v3];
}

void sub_38F8(id a1)
{
  qword_C908 = [@"com.apple.mobileslideshow" stringByAppendingString:@"PhotosStorageManagementSettings"];

  _objc_release_x1();
}

id sub_39F4(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 setImmediateGain:v3];
}