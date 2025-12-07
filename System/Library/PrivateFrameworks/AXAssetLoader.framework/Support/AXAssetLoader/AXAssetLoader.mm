NSObject *sub_100002548(uint64_t a1, uint64_t a2)
{
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Installing SIGTERM handler.", v6, 2u);
  }

  signal(15, 1);
  v3 = dispatch_get_global_queue(2, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3);

  dispatch_source_set_event_handler(v4, &stru_100018700);
  dispatch_resume(v4);

  return v4;
}

void sub_10000261C(id a1)
{
  v1 = AXLogAssetDaemon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received SIGTERM. Terminating now.", v2, 2u);
  }

  exit(15);
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  v1 = AXLogAssetDaemon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[NSProcessInfo processInfo];
    v3 = [v2 environment];
    v4 = [v3 objectForKey:@"MallocStackLogging"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "axasstsd is starting up. MallocStackLogging=%@", &buf, 0xCu);
  }

  v7 = sub_100002548(v5, v6);
  v8 = qword_10001DFE0;
  qword_10001DFE0 = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = +[AXAssetsDaemon sharedInstance];
  v11 = +[AXImageCaptionModelAssetPolicy policy];
  v12 = [AXManagedAsset assetWithPolicy:v11];
  v49[0] = v12;
  v13 = +[AXUltronModelAssetPolicy policy];
  v14 = [AXManagedAsset assetWithPolicy:v13];
  v49[1] = v14;
  v15 = +[AXMagnifierAssetPolicy policy];
  v16 = [AXManagedAsset assetWithPolicy:v15];
  v49[2] = v16;
  v17 = [NSArray arrayWithObjects:v49 count:3];
  [v10 registerManagedAssets:v17];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v18 = off_10001DFF8;
  v48 = off_10001DFF8;
  if (!off_10001DFF8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v51 = sub_100002E0C;
    v52 = &unk_100018728;
    v53 = &v45;
    v19 = sub_100002E5C();
    v20 = dlsym(v19, "AXDeviceSupportsBackTap");
    *(v53[1] + 24) = v20;
    off_10001DFF8 = *(v53[1] + 24);
    v18 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v18)
  {
    goto LABEL_33;
  }

  if (v18())
  {
    v21 = +[AXPhoenixAssetPolicy policy];
    v22 = [AXManagedAsset assetWithPolicy:v21];
    [v10 registerManagedAsset:v22];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v23 = off_10001E008;
  v48 = off_10001E008;
  if (!off_10001E008)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v51 = sub_100002FD0;
    v52 = &unk_100018728;
    v53 = &v45;
    v24 = sub_100002E5C();
    v25 = dlsym(v24, "AXDeviceSupportsVoiceTriggers");
    *(v53[1] + 24) = v25;
    off_10001E008 = *(v53[1] + 24);
    v23 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v23)
  {
LABEL_33:
    sub_10000DB94();
    __break(1u);
  }

  if (v23())
  {
    v26 = +[AXVoiceTriggerAssetPolicy policy];
    v27 = [AXManagedAsset assetWithPolicy:v26];
    [v10 registerManagedAsset:v27];
  }

  v28 = +[NSProcessInfo processInfo];
  if ([v28 physicalMemory] > 0x773593FF && AXRuntimeCheck_HasANE())
  {

LABEL_18:
    v28 = +[AXElementVisionModelAssetPolicy policy];
    v29 = [AXManagedAsset assetWithPolicy:v28];
    [v10 registerManagedAsset:v29];
    goto LABEL_19;
  }

  v29 = +[NSProcessInfo processInfo];
  if ([v29 physicalMemory] > 0x773593FF)
  {
    v30 = AXRuntimeCheck_HasANE();

    if (!v30)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_19:

LABEL_20:
  v31 = +[AXIconVisionModelAssetPolicy policy];
  v32 = [AXManagedAsset assetWithPolicy:v31];
  [v10 registerManagedAsset:v32];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v33 = off_10001E010;
  v48 = off_10001E010;
  if (!off_10001E010)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v51 = sub_100003020;
    v52 = &unk_100018728;
    v53 = &v45;
    v34 = sub_100002E5C();
    v35 = dlsym(v34, "AXDeviceSupportsAudiogramIngestion");
    *(v53[1] + 24) = v35;
    off_10001E010 = *(v53[1] + 24);
    v33 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v33)
  {
    goto LABEL_33;
  }

  if (v33())
  {
    v36 = +[AXAudiogramIngestionAssetPolicy policy];
    v37 = [AXManagedAsset assetWithPolicy:v36];
    [v10 registerManagedAsset:v37];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v38 = off_10001E018;
  v48 = off_10001E018;
  if (!off_10001E018)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v51 = sub_100003070;
    v52 = &unk_100018728;
    v53 = &v45;
    v39 = sub_100002E5C();
    v40 = dlsym(v39, "AXDeviceSupportsComfortSounds");
    *(v53[1] + 24) = v40;
    off_10001E018 = *(v53[1] + 24);
    v38 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v38)
  {
    goto LABEL_33;
  }

  if (v38())
  {
    v41 = +[AXComfortSoundsAssetPolicy policy];
    v42 = [AXManagedAsset assetWithPolicy:v41];
    [v10 registerManagedAsset:v42];
  }

  objc_autoreleasePoolPop(v9);
  v43 = AXLogAssetDaemon();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "axassetsd will begin servicing requests", &buf, 2u);
  }

  [v10 run];
  return 0;
}

void sub_100002DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100002E0C(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsBackTap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001DFF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002E5C()
{
  v3[0] = 0;
  if (!qword_10001E000)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100002F5C;
    v3[4] = &unk_100018760;
    v3[5] = v3;
    v4 = off_100018748;
    v5 = 0;
    qword_10001E000 = _sl_dlopen();
  }

  v0 = qword_10001E000;
  v1 = v3[0];
  if (!qword_10001E000)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100002F5C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10001E000 = result;
  return result;
}

void *sub_100002FD0(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsVoiceTriggers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003020(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsAudiogramIngestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E010 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003070(uint64_t a1)
{
  v2 = sub_100002E5C();
  result = dlsym(v2, "AXDeviceSupportsComfortSounds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000032B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dequeueNextTask];
}

void sub_1000034AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000034D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AXAssetsXPCActivity alloc] initWithActivity:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [(AXAssetsXPCActivity *)v4 state];
  v7 = AXLogAssetDaemon();
  v8 = v7;
  if (v6 == 2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "XPC Activity handler called. %@. Asset:%@", &v11, 0x16u);
    }

    [(AXAssetsXPCActivity *)v4 updateState:4];
    v8 = [AXManagedAssetTaskContext contextWithActivity:v4];
    [WeakRetained enqueueAssetUpdateTaskWithContext:v8];
  }

  else if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000DBB8(v4, a1, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "XPC Activity handler called. %@. Asset:%@", &v11, 0x16u);
  }
}

void sub_100003884(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) policy];
    v4 = [v3 assetType];
    v5 = *(a1 + 40);
    v6 = [*(*(a1 + 32) + 24) count];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[AXManagedAsset: %@]: enqeueing task: [%@]. Total queued: %lu", &v8, 0x20u);
  }

  v7 = *(a1 + 32);
  if (!*(v7 + 32))
  {
    dispatch_source_merge_data(*(v7 + 16), 1uLL);
  }
}

void sub_100003A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003AB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003ACC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    [v3 removeObserver:? forKeyPath:? context:?];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v2 = *(a1 + 32);
  }

  if ([*(v2 + 24) count])
  {
    v6 = [*(*(a1 + 32) + 24) objectAtIndex:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    [*(*(a1 + 32) + 32) addObserver:*(a1 + 32) forKeyPath:@"finished" options:1 context:off_10001DDF0];
    [*(*(a1 + 32) + 24) removeObjectAtIndex:0];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = AXLogAssetDaemon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [*(a1 + 32) policy];
      v13 = [v12 assetType];
      v14 = *(a1 + 32);
      v15 = *(*(*(a1 + 40) + 8) + 40);
      v16 = [*(v14 + 24) count];
      v21 = 138412802;
      v22 = v13;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v17 = "[AXManagedAsset: %@]: dequeuing next task: [%@]. Total queued: %lu";
      v18 = v10;
      v19 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    }
  }

  else if (v11)
  {
    v12 = [*(a1 + 32) policy];
    v13 = [v12 assetType];
    v20 = [*(*(a1 + 32) + 24) count];
    v21 = 138412546;
    v22 = v13;
    v23 = 2048;
    v24 = v20;
    v17 = "[AXManagedAsset: %@]: Did finish dequeueing all queued tasks. (confirming queue count: %lu)";
    v18 = v10;
    v19 = 22;
    goto LABEL_10;
  }
}

void sub_100005310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_100005344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted from PID %d", v3, 8u);
  }

  [WeakRetained invalidate];
}

void sub_100005404(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogAssetDaemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated from PID %d", v3, 8u);
  }
}

void sub_1000056A0(id a1)
{
  v1 = [[AXAssetsDaemon alloc] _init];
  v2 = qword_10001E020;
  qword_10001E020 = v1;

  v3 = +[_TtC9axassetsd14TTSTraceServer shared];
}

void sub_1000058BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000058E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshAssetCatalogForAssetType:v8 withOverrideTimeout:v7 forceCatalogRefresh:a4];
}

void sub_100005968(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAssetForAssetType:v3];
}

void sub_100005CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005D24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005D4C(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithCString:xpc_dictionary_get_string(xdict encoding:_xpc_event_key_name), 4];
  v4 = AXLogAssetDaemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recieved notification %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDarwinNotification:v3];
}

uint64_t sub_1000061C4(uint64_t a1)
{
  CFPreferencesFlushCaches();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_100006964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A10;
  block[3] = &unk_100018938;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void sub_100006A10(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = AXLogAssetDaemon();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AXATM: Delegate completed but active reason added while transitioning to idle. Keeping transaction alive", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AXATM: Delegate completed and no new reason added. Will end os_transaction now", buf, 2u);
    }

    [*(a1 + 32) setTransaction:0];
  }
}

void sub_100006C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AXAssetMetadataStore store];
  v5 = [*(a1 + 32) assetType];
  [v4 recordAssetRefreshEventForAssetType:v5];

  v9 = v3;
  v6 = +[AXAssetMetadataStore store];
  v7 = [*(a1 + 32) assetType];
  v8 = [AXUpdateAssetTaskRestorationState restoreOrCreateStateFromStore:v6 assetType:v7];
  [v9 setRestorationState:v8];

  [v9 _housekeeping_op1_refreshAssets];
}

void sub_100006F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006F90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = AXLogAssetDaemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE4(v8, v6);
    }

    [v8 _completeWithResult:1];
  }

  else if (([WeakRetained _deferIfNeeded] & 1) == 0)
  {
    [v8 _housekeeping_op2_purgeAssets:v5];
  }
}

void sub_100007508(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = AXLogAssetDaemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000DE78(v6, v4);
    }

    [v6 _completeWithResult:1];
  }

  else if (([WeakRetained _deferIfNeeded] & 1) == 0)
  {
    [v6 _housekeeping_op3_downloadAssets:*(a1 + 32)];
  }
}

void sub_100007AFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100007B28(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
LABEL_7:
    v6 = AXLogAssetDaemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Finished all subtasks with success.", &v7, 0xCu);
    }

    [WeakRetained _completeWithResult:0];
    goto LABEL_10;
  }

  v4 = _AXAssetMakeError();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000DF50(WeakRetained, v4);
  }

  [WeakRetained _completeWithResult:1];
LABEL_10:
}

void sub_100008054(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100008074()
{
  result = [objc_allocWithZone(type metadata accessor for VoiceManagerWrapper()) init];
  static VoiceManagerWrapper.shared = result;
  return result;
}

id VoiceManagerWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *VoiceManagerWrapper.shared.unsafeMutableAddressor()
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  return &static VoiceManagerWrapper.shared;
}

id static VoiceManagerWrapper.shared.getter()
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static VoiceManagerWrapper.shared;

  return v0;
}

void static VoiceManagerWrapper.shared.setter(uint64_t a1)
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static VoiceManagerWrapper.shared;
  static VoiceManagerWrapper.shared = a1;
}

uint64_t (*static VoiceManagerWrapper.shared.modify(uint64_t a1))()
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t variable initialization expression of VoiceManagerWrapper.daemon()
{
  sub_10000854C(&qword_10001DF28, &qword_100010840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100010830;
  v1 = type metadata accessor for TTSVBVoiceLoader();
  v2 = TTSVBVoiceLoader.__allocating_init()();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_100008594();
  *(v0 + 32) = v2;
  type metadata accessor for VoiceDatabaseDaemon();
  swift_allocObject();
  return VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)();
}

void sub_100008494(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activityTransactionManager];

  v6 = String._bridgeToObjectiveC()();
  [v5 *a3];
}

uint64_t sub_10000854C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008594()
{
  result = qword_10001DF30;
  if (!qword_10001DF30)
  {
    type metadata accessor for TTSVBVoiceLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DF30);
  }

  return result;
}

uint64_t sub_10000860C()
{
  v3 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize() + async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000086BC;

  return v3();
}

uint64_t sub_1000086BC()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100008930(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000089A8, 0, 0);
}

uint64_t sub_1000089A8()
{
  v3 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize() + async function pointer to dispatch thunk of VoiceDatabaseDaemon.initialize());
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100008A58;

  return v3();
}

uint64_t sub_100008A58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100008BB4, 0, 0);
  }

  else
  {

    v4 = *(v2 + 24);
    v4[2](v4);
    _Block_release(v4);
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_100008BB4()
{
  v1 = *(v0 + 24);
  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VoiceManagerWrapper.handleDarwinNotification(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100008C54, 0, 0);
}

uint64_t sub_100008C54()
{
  v5 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:) + async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100008D0C;
  v3 = v0[2];
  v2 = v0[3];

  return v5(v3, v2);
}

uint64_t sub_100008D0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008F88(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_100009014, 0, 0);
}

uint64_t sub_100009014()
{
  v5 = (&async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:) + async function pointer to dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1000090CC;
  v3 = v0[4];
  v2 = v0[5];

  return v5(v3, v2);
}

uint64_t sub_1000090CC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id VoiceManagerWrapper.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon;
  sub_10000854C(&qword_10001DF28, &qword_100010840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100010830;
  v4 = type metadata accessor for TTSVBVoiceLoader();
  v5 = TTSVBVoiceLoader.__allocating_init()();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_100008594();
  *(v3 + 32) = v5;
  type metadata accessor for VoiceDatabaseDaemon();
  swift_allocObject();
  *&v1[v2] = VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for VoiceManagerWrapper();
  return objc_msgSendSuper2(&v7, "init");
}

id VoiceManagerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceManagerWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000949C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000A358;

  return v6();
}

uint64_t sub_100009584(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000966C;

  return v7();
}

uint64_t sub_10000966C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_100009F9C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000A00C(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = String.utf8CString.getter() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_10000A00C(a3);

    return v20;
  }

LABEL_8:
  sub_10000A00C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100009A1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009B14;

  return v6(a1);
}

uint64_t sub_100009B14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100009C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000854C(&qword_10001DF70, &unk_1000108F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000C440(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100009D10()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009D58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000966C;

  return sub_100008F88(v2, v3, v4);
}

uint64_t sub_100009E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A358;

  return sub_10000949C(v2, v3, v4);
}

uint64_t sub_100009ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A358;

  return sub_100009584(a1, v4, v5, v6);
}

uint64_t sub_100009F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000854C(&qword_10001DF68, &qword_100010888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A00C(uint64_t a1)
{
  v2 = sub_10000854C(&qword_10001DF68, &qword_100010888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A0AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A358;

  return sub_100009A1C(a1, v4);
}

uint64_t sub_10000A164(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000966C;

  return sub_100009A1C(a1, v4);
}

uint64_t sub_10000A21C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A25C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000A358;

  return sub_100008930(v2, v3);
}

uint64_t sub_10000A308()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10000A35C()
{
  result = [objc_allocWithZone(type metadata accessor for TTSTraceServer()) init];
  static TTSTraceServer.shared = result;
  return result;
}

uint64_t *TTSTraceServer.shared.unsafeMutableAddressor()
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  return &static TTSTraceServer.shared;
}

id static TTSTraceServer.shared.getter()
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static TTSTraceServer.shared;

  return v0;
}

void static TTSTraceServer.shared.setter(uint64_t a1)
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TTSTraceServer.shared;
  static TTSTraceServer.shared = a1;
}

uint64_t (*static TTSTraceServer.shared.modify(uint64_t a1))()
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_10000A664()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC9axassetsd14TTSTraceServer_clientTimeoutTasks;
  *&v1[v5] = sub_100009C0C(&_swiftEmptyArrayStorage);
  v6 = type metadata accessor for TTSTraceServer();
  v11.receiver = v1;
  v11.super_class = v6;
  v7 = objc_msgSendSuper2(&v11, "init");
  if (TTSIsInternalBuild())
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = ObjectType;
    sub_10000B2A4(0, 0, v4, &unk_100010928, v9);
  }

  return v7;
}

uint64_t sub_10000A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v5 = sub_10000854C(&qword_10001DFA8, &qword_100010930);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10000854C(&qword_10001DFB0, &qword_100010938);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000A938, 0, 0);
}

uint64_t sub_10000A938()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  type metadata accessor for TTSSettings();
  static TTSSettings.shared.getter();
  dispatch thunk of TTSSettings.speechTraceClientsStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10000AA48;
  v5 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 6, 0, 0, v5);
}

uint64_t sub_10000AA48()
{

  return _swift_task_switch(sub_10000AB44, 0, 0);
}

uint64_t sub_10000AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 8;
    v8 = -1;
    v9 = -1 << *(v5 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v5[8];
    v11 = (63 - v9) >> 6;
    v30 = v11;
    v31 = v5 + 8;
    v32 = v4[6];
    while (v10)
    {
LABEL_11:
      v14 = v4[8];
      v13 = v4[9];
      v33 = v4[7];
      v15 = (v5[6] + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = *v15;
      v17 = v15[1];
      v18 = type metadata accessor for TaskPriority();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 1, 1, v18);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = v33;
      sub_100009F9C(v13, v14);
      LODWORD(v14) = (*(v19 + 48))(v14, 1, v18);

      v21 = v4[8];
      if (v14 == 1)
      {
        sub_10000DA6C(v4[8], &qword_10001DF68, &qword_100010888);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v19 + 8))(v21, v18);
      }

      v22 = v20[2];
      swift_unknownObjectRetain();

      if (v22)
      {
        swift_getObjectType();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      sub_10000DA6C(v4[9], &qword_10001DF68, &qword_100010888);
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_100010948;
      *(v26 + 24) = v20;
      if (v25 | v23)
      {
        v4[2] = 0;
        v4[3] = 0;
        v4[4] = v23;
        v4[5] = v25;
      }

      v10 &= v10 - 1;
      swift_task_create();

      v7 = v31;
      v5 = v32;
      v11 = v30;
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v5, a2, a3, a4);
      }

      if (v12 >= v11)
      {
        break;
      }

      v10 = v7[v12];
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_11;
      }
    }

    v27 = swift_task_alloc();
    v4[16] = v27;
    *v27 = v4;
    v27[1] = sub_10000AA48;
    a4 = v4[13];
    v5 = v4 + 6;
    a2 = 0;
    a3 = 0;

    return AsyncStream.Iterator.next(isolation:)(v5, a2, a3, a4);
  }

  else
  {
    (*(v4[14] + 8))(v4[15], v4[13], a3, a4);

    v28 = v4[1];

    return v28();
  }
}

uint64_t sub_10000AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000AF54, 0, 0);
}

uint64_t sub_10000AF54()
{
  sub_10000D53C(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10000AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100009F9C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000DA6C(v10, &qword_10001DF68, &qword_100010888);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100009F9C(a3, v21 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_10000DA6C(v9, &qword_10001DF68, &qword_100010888);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DA6C(a3, &qword_10001DF68, &qword_100010888);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000B564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000B660, 0, 0);
}

uint64_t sub_10000B660()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10000B72C;

  return sub_10000BF88(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_10000B72C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10000BA10;
  }

  else
  {
    v5 = sub_10000B89C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000B89C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  v6[5] = v2;
  sub_10000AFB4(0, 0, v1, &unk_100010988, v6);

  swift_beginAccess();

  sub_10000BDBC(0, v3, v2);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000BA10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_10000854C(&qword_10001DFC0, &qword_100010990);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000BB5C, v7, v6);
}

uint64_t sub_10000BB5C()
{

  type metadata accessor for TTSSettings();
  static TTSSettings.shared.getter();
  v1 = dispatch thunk of TTSSettings.speechTraceClients.getter();

  if (*(v1 + 16) && (v2 = sub_10000C440(v0[6], v0[7]), (v3 & 1) != 0))
  {
    v4 = v2;
    v5 = v0[8];
    v6 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v7 = *(v1 + 56);
    v8 = type metadata accessor for TTSSettings.SpeechTracingClient();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v6, v7 + *(v9 + 72) * v4, v8);

    (*(v9 + 56))(v6, 0, 1, v8);
    sub_10000DA6C(v6, &qword_10001DFC0, &qword_100010990);
    static TTSSettings.shared.getter();
    v10 = dispatch thunk of TTSSettings.speechTraceClients.modify();
    sub_10000C570(v15, v16, v5);
    sub_10000DA6C(v5, &qword_10001DFC0, &qword_100010990);
    v10(v0 + 2, 0);
  }

  else
  {
    v11 = v0[9];

    v12 = type metadata accessor for TTSSettings.SpeechTracingClient();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_10000DA6C(v11, &qword_10001DFC0, &qword_100010990);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10000BDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10000CD24(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000C440(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10000CEA0();
        v14 = v16;
      }

      result = sub_10000C988(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_10000BEB4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v7 = a3;
    sub_10000D53C(v4, v6);
  }
}

id TTSTraceServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSTraceServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000C088, 0, 0);
}

uint64_t sub_10000C088()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10000DACC(&qword_10001DFD0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000DACC(&qword_10001DFD8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10000C218;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10000C218()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10000C3D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10000C3D4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10000C440(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000C4B8(a1, a2, v4);
}

unint64_t sub_10000C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000C570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000C440(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000D010();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for TTSSettings.SpeechTracingClient();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_10000CB38(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for TTSSettings.SpeechTracingClient();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

Swift::Int sub_10000C6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000854C(&qword_10001DF70, &unk_1000108F8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000C988(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10000CB38(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for TTSSettings.SpeechTracingClient() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000CD24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C440(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000C6E0(v16, a4 & 1);
      v11 = sub_10000C440(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000CEA0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_10000CEA0()
{
  v1 = v0;
  sub_10000854C(&qword_10001DF70, &unk_1000108F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10000D010()
{
  v1 = v0;
  v35 = type metadata accessor for TTSSettings.SpeechTracingClient();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000854C(&qword_10001DFC8, &qword_100010998);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10000D290()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A358;

  return sub_10000A7C0(a1, v4, v5, v6);
}

uint64_t sub_10000D384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A358;

  return sub_10000AF34(a1, v4, v5, v6, v7);
}

uint64_t sub_10000D44C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A358;

  return sub_100009A1C(a1, v4);
}

void sub_10000D53C(uint64_t a1, uint64_t a2)
{
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v5 = &v20 - v4;
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static TTSTraceServer.shared;
  v7 = OBJC_IVAR____TtC9axassetsd14TTSTraceServer_clientTimeoutTasks;
  swift_beginAccess();
  v8 = *(*&v6[v7] + 16);
  v9 = v6;
  if (v8)
  {

    sub_10000C440(a1, a2);
    if (v10)
    {

      sub_10000854C(&qword_10001DFB8, &qword_100010970);
      Task.cancel()();
    }

    else
    {
    }
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v9;
  v13 = v9;

  v14 = sub_10000B2A4(0, 0, v5, &unk_100010968, v12);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *&v6[v7];
  *&v6[v7] = 0x8000000000000000;
  sub_10000CD24(v14, a1, a2, isUniquelyReferenced_nonNull_native);
  *&v6[v7] = v20;
  swift_endAccess();
  v16 = CFNotificationCenterGetDarwinNotifyCenter();
  v17 = String._bridgeToObjectiveC()();
  CFNotificationCenterRemoveObserver(v16, 0, v17, 0);

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  v19 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v18, 0, sub_10000BEB4, v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_10000D848()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000966C;

  return sub_10000B564(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000D960(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10000D9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000966C;

  return sub_10000BA80(a1, v4, v5, v7, v6);
}

uint64_t sub_10000DA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000854C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000DB1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "task [%@] being asked to complete, but is already fiinished!", &v2, 0xCu);
}

void sub_10000DB94()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_10000DBB8(v1, v2, v3);
}

void sub_10000DBB8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "XPC Activity handler called with unexpected state. %@. Asset:%@", &v4, 0x16u);
}

void sub_10000DC44(void *a1, uint64_t a2, NSObject *a3)
{
  v5[0] = 67109378;
  v5[1] = [a1 processIdentifier];
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Rejecting connecting client with pid:(%d) appID:(%@). Missing required entitlement", v5, 0x12u);
}

void sub_10000DCF4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXATM: Active reason already exists for adding: '%@'. This will almost certainly lead to unwanted os_transaction problems.", &v2, 0xCu);
}

void sub_10000DD6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXATM: Active reason does not exist for removal: '%@'. This will almost certainly lead to unwanted os_transaction problems", &v2, 0xCu);
}

void sub_10000DDE4(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000803C();
  sub_100008054(&_mh_execute_header, v3, v4, "%@: Could not refresh assets: %@", v5, v6, v7, v8);
}

void sub_10000DE78(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000803C();
  sub_100008054(&_mh_execute_header, v3, v4, "%@: Could not purge assets: %@", v5, v6, v7, v8);
}

void sub_10000DF50(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000803C();
  sub_100008054(&_mh_execute_header, v3, v4, "%@: Could not kick off asset downloads: %@", v5, v6, v7, v8);
}