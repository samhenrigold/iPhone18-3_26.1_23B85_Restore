uint64_t start()
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v0 = objc_autoreleasePoolPush();
  v1 = _set_user_dir_suffix();
  if ((v1 & 1) == 0)
  {
    v3 = sub_100004064(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000B564(v3);
    }
  }

  v4 = NSTemporaryDirectory();
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v6 = qword_100019D70;
  qword_100019D70 = v5;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001824;
  handler[3] = &unk_1000144A8;
  handler[4] = &v13;
  dispatch_source_set_event_handler(qword_100019D70, handler);
  dispatch_resume(qword_100019D70);
  v7 = +[ServerController sharedController];
  [v7 start];

  objc_autoreleasePoolPop(v0);
  while ((v14[3] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = +[NSRunLoop currentRunLoop];
    v10 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    [v9 runUntilDate:v10];

    objc_autoreleasePoolPop(v8);
  }

  _Block_object_dispose(&v13, 8);
  return 0;
}

void sub_1000013B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000141C(id a1)
{
  qword_100019D60 = objc_alloc_init(ServerController);

  _objc_release_x1();
}

void sub_100001CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D2C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v6 = [v12 clipBundleID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v12 clipIpaURL];
    v9 = [v8 absoluteString];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_10000204C(id a1)
{
  v1 = qword_100019D78;
  qword_100019D78 = &off_100015008;
}

void sub_1000021A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000021C0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_10000239C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v10 = xpc_activity_set_state(v2, 4);
    v11 = v10;
    v13 = sub_100004064(v10, v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Running cleanup activity", buf, 2u);
      }

      v15 = os_transaction_create();
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v17 = +[CPSClipCleanupManager sharedManager];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000027AC;
      v37[3] = &unk_1000145A8;
      v18 = v2;
      v38 = v18;
      v19 = v16;
      v39 = v19;
      [v17 removeFailedClipInstallsWithCompletionHandler:v37];

      dispatch_group_enter(v19);
      v20 = objc_alloc_init(CPSImageStore);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100002950;
      v35[3] = &unk_100014580;
      v21 = v19;
      v36 = v21;
      [v20 purgeOldImagesWithCompletionHandler:v35];

      dispatch_group_enter(v21);
      v22 = +[CPSWebClipStore sharedStore];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000029BC;
      v33[3] = &unk_100014580;
      v23 = v21;
      v34 = v23;
      [v22 purgeDuplicateWebClipsWithCompletionHandler:v33];

      dispatch_group_enter(v23);
      v24 = +[CPSWebClipStore sharedStore];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100002A28;
      v31[3] = &unk_100014580;
      v32 = v23;
      v25 = v23;
      [v24 removeExpiredPoweredByWebClipsWithCompletionHandler:v31];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002A94;
      block[3] = &unk_1000145A8;
      v29 = v18;
      v30 = v15;
      v26 = v15;
      dispatch_group_notify(v25, &_dispatch_main_q, block);
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100002B04(v14);
      }

      xpc_activity_set_completion_status();
    }
  }

  else
  {
    v5 = state;
    if (state)
    {
      v27 = sub_100004064(state, v4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = v5;
        v7 = "Current cleanup activity state is %ld. Not taking any action until the activity state is Run";
        v8 = v27;
        v9 = 12;
        goto LABEL_11;
      }
    }

    else
    {
      v6 = sub_100004064(0, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "Checked in cleanup activity";
        v8 = v6;
        v9 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, buf, v9);
      }
    }
  }
}

void sub_1000027AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished cleaning up failed clip installs", buf, 2u);
  }

  should_defer = xpc_activity_should_defer(*(a1 + 32));
  if (should_defer)
  {
    v6 = sub_100004064(should_defer, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferring cleanup activity", buf, 2u);
    }

    xpc_activity_set_completion_status();
  }

  else
  {
    v7 = +[CPSClipCleanupManager sharedManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000028E4;
    v8[3] = &unk_100014580;
    v9 = *(a1 + 40);
    [v7 uninstallClipsWithParentAppInstalledWithCompletionHandler:v8];
  }
}

void sub_1000028E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished cleaning up app clips with installed parent apps", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002950(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished purging image store", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000029BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished purging duplicate web clips", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002A28(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished removing expired web clips", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100002A94(uint64_t a1, uint64_t a2)
{
  v2 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Done with cleanup activity", v4, 2u);
  }

  return xpc_activity_set_completion_status();
}

void sub_100002D44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _appForBundleID:*(a1 + 32) createIfNeeded:1];
    v5 = [v4 downloadedURL];
    if (v5 && (v6 = v5, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), [v4 downloadedURL], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "fileExistsAtPath:", v9), v9, v8, v7, v6, v10))
    {
      v11 = *(a1 + 40);
      v12 = [v4 bundleID];
      (*(v11 + 16))(v11, v12, 0);
    }

    else
    {
      v13 = [NSURLRequest alloc];
      v14 = [v4 ipaLink];
      v12 = [v13 initWithURL:v14 cachePolicy:1 timeoutInterval:20.0];

      v17 = sub_100004064(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = [v4 ipaLink];
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "start downloading IPA from demo server: URL: %@", buf, 0xCu);
      }

      v20 = +[NSURLSession sharedSession];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_100002FC0;
      v25 = &unk_1000145D0;
      v27 = *(a1 + 40);
      v26 = v4;
      v21 = [v20 dataTaskWithRequest:v12 completionHandler:&v22];

      [v21 resume];
    }
  }
}

void sub_100002FC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) bundleID];
    (*(v9 + 16))(v9, v10, v8);
  }

  else
  {
    if (v18)
    {
      v11 = NSTemporaryDirectory();
      v12 = [*(a1 + 32) ipaLink];
      v13 = [v12 lastPathComponent];
      v10 = [v11 stringByAppendingPathComponent:v13];

      if ([v18 writeToFile:v10 atomically:1])
      {
        v14 = [NSURL URLWithString:v10];
        [*(a1 + 32) setDownloadedURL:v14];
      }

      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) bundleID];
      (*(v15 + 16))(v15, v16, 0);
    }

    else
    {
      v17 = *(a1 + 40);
      v10 = [*(a1 + 32) bundleID];
      v16 = [NSError cps_errorWithCode:4];
      (*(v17 + 16))(v17, v10, v16);
    }
  }
}

void sub_100003370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _appForBundleID:*(a1 + 32) createIfNeeded:1];
    v5 = [v4 downloadedURL];
    if (v5 && (v6 = v5, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), [v4 downloadedURL], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "fileExistsAtPath:", v9), v9, v8, v7, v6, v10))
    {
      v11 = v3[5];
      v12 = [v4 bundleID];
      v13 = [v4 downloadedURL];
      v14 = [v13 path];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000035FC;
      v26[3] = &unk_100014648;
      v28 = *(a1 + 48);
      v27 = v4;
      [v11 installDownloadedAppWithBundleID:v12 localFilePath:v14 completionHandler:v26];

      v15 = v28;
    }

    else
    {
      v16 = [v4 ipaLink];

      if (!v16)
      {
        v18 = *(a1 + 48);
        v19 = *(a1 + 32);
        v20 = [NSError cps_errorWithCode:4];
        (*(v18 + 16))(v18, v19, v20);

        goto LABEL_9;
      }

      v17 = *(a1 + 32);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000036B4;
      v21[3] = &unk_100014670;
      v21[4] = v3;
      v22 = v17;
      v23 = *(a1 + 40);
      v25 = *(a1 + 48);
      v24 = v4;
      [v3 downloadAppWithBundleID:v22 completionHandler:v21];

      v15 = v22;
    }

LABEL_9:
  }
}

void sub_1000035FC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) bundleID];
  v5 = v4;
  if (v7)
  {
    v6 = [NSError cps_errorWithCode:6 underlyingError:v7];
    (*(v3 + 16))(v3, v5, v6);
  }

  else
  {
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_1000036B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 56) bundleID];
    (*(v4 + 16))(v4, v5, v6);
  }

  else
  {
    [*(a1 + 32) _installAppWithBundleID:*(a1 + 40) applicationIconFileURL:*(a1 + 48) completionHandler:*(a1 + 64)];
  }
}

void sub_100003A44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_100004064(v6, v7);
  if (os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "End Fetching ABR metadata", v11, 2u);
  }

  v9 = *(a1 + 32);
  v10 = [v6 clipURL];

  (*(v9 + 16))(v9, v10, v5);
}

void sub_100003C58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_100004064(v6, v7);
  v9 = os_signpost_enabled(v8);
  if (v9)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "End Fetching ABR metadata", buf, 2u);
  }

  if (v5)
  {
    v11 = sub_100004064(v9, v10);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AppMetaData", "Start Fetching App metadata", buf, 2u);
    }

    v12 = *(*(a1 + 32) + 8);
    v13 = [v5 clipBundleID];
    v14 = *(a1 + 40);
    v15 = *(a1 + 64);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003E28;
    v16[3] = &unk_1000146E8;
    v17 = v5;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    [v12 lookUpClipMetadataByBundleID:v13 sourceBundleID:v14 downloadIconIfNeeded:v15 skipCaching:0 completionHandler:v16];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100003E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_100004064(v6, v7);
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AppMetaData", "End Fetching App metadata", v9, 2u);
  }

  [*(a1 + 32) setClipRequestURL:*(a1 + 40)];
  [*(a1 + 32) _updateWithAMSMetadata:v6];

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100004064(uint64_t a1, uint64_t a2)
{
  if (qword_100019D90 != -1)
  {
    sub_1000040E0();
  }

  return qword_100019D88;
}

void sub_10000409C(id a1)
{
  qword_100019D88 = os_log_create("com.apple.ClipServices.clipserviced", "ClipServicesDaemon");

  _objc_release_x1();
}

void sub_1000043F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_100004448(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPSDaemonProtocol];
  v2 = qword_100019D98;
  qword_100019D98 = v1;

  v3 = qword_100019D98;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [NSSet setWithArray:v4];
  [v3 setClasses:v5 forSelector:"fetchClipMetadataWithURL:reply:" argumentIndex:1 ofReply:1];

  v6 = qword_100019D98;
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v9 count:2];
  v8 = [NSSet setWithArray:v7];
  [v6 setClasses:v8 forSelector:"uninstallClipsWithBundleIDs:reply:" argumentIndex:1 ofReply:0];
}

void sub_1000045D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): connection interrupted: %@", &v7, 0x16u);
  }
}

void sub_1000046AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v8 = 134218242;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): connection invalidated: %@", &v8, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _remoteClientDisconnected];
}

void sub_100004990(void *a1, uint64_t a2, void *a3)
{
  v4 = [a3 clipBundleID];
  v6 = sub_100004064(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 134218499;
    v10 = v7;
    v11 = 2117;
    v12 = v8;
    v13 = 2113;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "RemoteClient (%p): isClipURL: %{sensitive}@ resolvedBundleID: %{private}@", &v9, 0x20u);
  }

  (*(a1[6] + 16))(a1[6], [v4 length] != 0);
}

void sub_100004B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100004064(v3, v4);
  if (os_signpost_enabled(v5))
  {
    v6 = v5;
    v7 = [v3 logID];
    *buf = 138543618;
    v16 = v7;
    v17 = 2082;
    v18 = "[begin] prewarmClipWithURL";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ClipPrewarm", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004D30;
  v9[3] = &unk_1000147F0;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v13 = *(a1 + 56);
  v11 = *(a1 + 40);
  v14 = *(a1 + 64);
  v12 = *(a1 + 48);
  v8 = v3;
  [v8 fetchMetadataWithCompletion:v9];
}

void sub_100004D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clipBundleID];
  if (v4)
  {
    [*(a1 + 40) fetchHeroImage];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000504C;
    v23[3] = &unk_100014580;
    v24 = *(a1 + 40);
    v5 = objc_retainBlock(v23);
    if ([v3 clipIncompatibleWithCurrentDevice] & 1) != 0 || (objc_msgSend(v3, "deviceCapabilitiesDontMatch"))
    {
      (v5[2])(v5);
      v6 = *(a1 + 64);
      v7 = [NSError cps_errorWithCode:11];
      (*(v6 + 16))(v6, v7);

LABEL_20:
      v8 = v24;
      goto LABEL_21;
    }

    if (![v3 hasFullAppInstalledOnSystem])
    {
      if (+[CPSClipURL usesDemoMetadata])
      {
        v11 = [*(*(a1 + 32) + 40) appLinkResolver];
        [v11 saveLinkWithURL:*(a1 + 48) metadata:v3];
      }

      v12 = [*(a1 + 40) configuration];
      v13 = [v12 isInvokedByPhysicalCode] ? objc_msgSend(v3, "canUpdateOnPhysicalInovcation") : 0;

      if (*(a1 + 72) == 1)
      {
        v14 = [v3 invocationPolicy];
        if ([v14 isEligible])
        {
          v15 = [v3 fullAppOnly] | v13;

          if ((v15 & 1) == 0)
          {
            v16 = [*(a1 + 56) clipInstaller];
            v17 = [v3 clipBundleID];
            v18 = *(a1 + 40);
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_100005130;
            v19[3] = &unk_1000147C8;
            v21 = v5;
            v20 = *(a1 + 40);
            v22 = *(a1 + 64);
            [v16 prewarmClipWithBundleID:v17 session:v18 completion:v19];

            goto LABEL_20;
          }
        }

        else
        {
        }
      }
    }

    (v5[2])(v5);
    (*(*(a1 + 64) + 16))();
    goto LABEL_20;
  }

  v8 = [NSError cps_errorWithCode:2];
  v10 = sub_100004064(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10000923C();
  }

  (*(*(a1 + 64) + 16))();
LABEL_21:
}

void sub_10000504C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 logID];
    v7 = 138543618;
    v8 = v6;
    v9 = 2082;
    v10 = "[end] prewarmClipWithURL";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ClipPrewarm", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v7, 0x16u);
  }
}

void sub_100005130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v6 = sub_100004064(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000092BC(a1, v6, v3);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000528C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v4 = [*(a1 + 32) clipInstaller];
    [v4 cancelPrewarmForBundleID:v6 completion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = [NSError cps_errorWithCode:2];
    (*(v5 + 16))(v5, v4);
  }
}

void sub_1000057D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_100005A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 configuration];
  v5 = [v4 launchReason];

  v6 = [v3 metadata];
  v7 = [v6 invocationPolicy];
  if ([v7 reason] != 14 || (objc_msgSend(v5, "isEqualToString:", CPSSessionLaunchReasonAppClipCode) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CPSSessionLaunchReasonQR) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CPSSessionLaunchReasonNFC) & 1) != 0)
  {
  }

  else
  {
    v26 = [v5 isEqualToString:CPSSessionLaunchReasonMessages];

    if ((v26 & 1) == 0)
    {
      v27 = *(a1 + 48);
      v28 = [NSError cps_errorWithCode:11];
      (*(v27 + 16))(v27, v28);

      goto LABEL_13;
    }
  }

  v8 = [*(a1 + 32) _canSkipShowingAppClipCardOnLaunchForSession:v3];
  v9 = v8;
  v11 = sub_100004064(v8, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = v11;
      v16 = [v3 configuration];
      v17 = [v16 launchReason];
      v29 = 134218755;
      v30 = v13;
      v31 = 2117;
      v32 = v14;
      v33 = 2112;
      v34 = v17;
      v35 = 2048;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Opening clip directly with URL (%{sensitive}@) with launch reason (%@), session (%p)", &v29, 0x2Au);
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [v3 launchOptions];
    [v18 _openClipDirectlyWithURL:v19 launchOptions:v20 reply:*(a1 + 48)];
  }

  else
  {
    if (v12)
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = v11;
      v24 = [v3 configuration];
      v25 = [v24 launchReason];
      v29 = 134218755;
      v30 = v21;
      v31 = 2117;
      v32 = v22;
      v33 = 2112;
      v34 = v25;
      v35 = 2048;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Opening clip with invocation UI for URL (%{sensitive}@) with launch reason (%@), session (%p)", &v29, 0x2Au);
    }

    [*(a1 + 32) _openClipWithInvocationUIWithURL:*(a1 + 40) reply:*(a1 + 48)];
  }

LABEL_13:
}

void sub_100005E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = sub_100004064(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000093EC(a1, v6, v5);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100005F6C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_100004064(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = 134218243;
      v8 = v5;
      v9 = 2117;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): user did not open clip for url: %{sensitive}@", &v7, 0x16u);
    }

    v3 = [NSError cps_errorWithCode:8];
  }

  (*(a1[6] + 16))();
}

void sub_1000064D0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 metadata];
  v71 = 0;
  v70 = 0;
  v8 = a1[4];
  v9 = [a1[5] predefinedBundleID];
  v10 = [v8 _validateIngestedBundleID:v9 forSession:v5 appInstalled:&v71 + 1 clipRequestsLocationConfirmation:&v71 clipRequestsNotification:&v70];

  if (v10 && ([v7 clipBundleID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v10), v11, (v12 & 1) == 0))
  {
    if (v7)
    {
      v16 = sub_100004064(v13, v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[4];
        *buf = 134217984;
        v73 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): client ingested bundleID replaced the existing clip bundleID", buf, 0xCu);
      }

      [v7 setClipBundleID:v10];
    }

    else
    {
      v18 = [CPSClipMetadata alloc];
      v77[0] = a1[6];
      v76[0] = CPSClipMetadataKeyClipTargetURL;
      v76[1] = CPSClipMetadataKeyClipURL;
      v19 = [NSURL cps_preIngestedURLWithBundleIdentifier:v10];
      v77[1] = v19;
      v77[2] = v10;
      v76[2] = CPSClipMetadataKeyClipBundleID;
      v76[3] = CPSClipMetadataKeyClipRequestsNotificationPermission;
      v20 = [NSNumber numberWithBool:v70];
      v77[3] = v20;
      v76[4] = CPSClipMetadataKeyClipRequestsLocationConfirmationPermission;
      v21 = [NSNumber numberWithBool:v71];
      v77[4] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:5];
      v7 = [v18 initWithUncheckedDictionary:v22];

      [v5 setPreloadedMetadata:v7];
    }

    v23 = v10;

    v6 = v23;
  }

  else
  {
    buf[0] = 0;
    v15 = [v7 hasUpToDateVersionInstalledOnSystemIsPlaceholder:buf];
    HIBYTE(v71) = v15 & (buf[0] ^ 1);
  }

  v24 = [a1[4] _deducedInstalledFullAppBundleIDForSession:v5];
  v26 = v24;
  if (v24)
  {
    v27 = sub_100004064(v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a1[4];
      *buf = 134218243;
      v73 = v28;
      v74 = 2117;
      v75 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Obtained deduced full app bundleID: %{sensitive}@", buf, 0x16u);
    }

    v29 = [v5 configuration];
    v30 = [v29 fallbackClipBundleID];

    [v7 hasFullAppInstalledOnSystem];
    v6 = v30;
    goto LABEL_15;
  }

  if ([v7 hasFullAppInstalledOnSystem])
  {
LABEL_15:
    v31 = +[CPSWebClipStore sharedStore];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100006B5C;
    v61[3] = &unk_100014958;
    v62 = v5;
    v63 = a1[5];
    v64 = v7;
    v32 = v26;
    v33 = a1[4];
    v65 = v32;
    v66 = v33;
    v67 = a1[6];
    v69 = a1[8];
    v6 = v6;
    v68 = v6;
    [v31 createOrUpdateExistingWebClipWithMetadata:v64 comletionHandler:v61];

    v34 = v62;
    goto LABEL_16;
  }

  if (v6)
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100006F08;
    v51[3] = &unk_1000149D0;
    v52 = v5;
    v53 = v7;
    v35 = a1[5];
    v36 = a1[4];
    v54 = v35;
    v55 = v36;
    v6 = v6;
    v56 = v6;
    v60 = HIBYTE(v71);
    v57 = a1[6];
    v59 = a1[8];
    v58 = a1[7];
    v37 = objc_retainBlock(v51);
    if ((+[CPSUtilities deviceIsLocked]& 1) != 0)
    {
      v38 = objc_alloc_init(SBSLockScreenService);
      v40 = sub_100004064(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = a1[4];
        *buf = 134218243;
        v73 = v41;
        v74 = 2113;
        v75 = v6;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): attempting device unlock for %{private}@", buf, 0x16u);
      }

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000075AC;
      v45[3] = &unk_100014A20;
      v46 = v38;
      v50 = HIBYTE(v71);
      v42 = v6;
      v43 = a1[4];
      v47 = v42;
      v48 = v43;
      v49 = v37;
      v44 = v38;
      [v44 requestPasscodeUnlockUIWithOptions:0 withCompletion:v45];
    }

    else
    {
      (v37[2])(v37);
    }

    v34 = v52;
  }

  else
  {
    v34 = [NSError cps_errorWithCode:2];
    [RemoteClient _didEndOpenAppForURL:a1[6] adamID:0 error:v34 completionHandler:a1[8]];
  }

LABEL_16:
}

void sub_100006B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) updateClipDataForEntryPointWithWebClip:v3 launchOptions:*(a1 + 40)];
  v4 = objc_alloc_init(CPSClipEventsReporter);
  [v4 logClipLaunchEventForSession:*(a1 + 32)];
  v5 = [*(a1 + 48) fullAppBundleID];
  v6 = v5;
  if (!v5)
  {
    v6 = *(a1 + 56);
  }

  v7 = v6;

  v10 = sub_100004064(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = v10;
    v14 = [v12 clipLaunchURL];
    v15 = v14;
    if (!v14)
    {
      v15 = *(a1 + 72);
    }

    v16 = *(a1 + 32);
    *buf = 134218755;
    v29 = v11;
    v30 = 2117;
    v31 = v15;
    v32 = 2117;
    v33 = v7;
    v34 = 2048;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Opening URL (%{sensitive}@) in full app (%{sensitive}@), session (%p)", buf, 0x2Au);
  }

  v17 = [*(a1 + 48) clipLaunchURL];
  v18 = v17;
  if (!v17)
  {
    v18 = *(a1 + 72);
  }

  v19 = [*(a1 + 32) configuration];
  v20 = [v19 originIsControlCenter];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100006E4C;
  v26[3] = &unk_100014908;
  v27 = *(a1 + 88);
  [CPSUtilities openURL:v18 inAppWithBundleIdentifier:v7 promptForUnlock:1 originIsControlCenter:v20 completionHandler:v26];

  if (([*(a1 + 48) isPoweredByThirdParty] & 1) == 0)
  {
    v21 = +[CPSWebClipStore sharedStore];
    v22 = [v3 identifier];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100006E5C;
    v24[3] = &unk_100014930;
    v24[4] = *(a1 + 64);
    v25 = v7;
    [v21 removeWebClipWithIdentifier:v22 completionHandler:v24];
  }

  if (*(a1 + 80))
  {
    v23 = *(a1 + 80);
  }

  else
  {
    v23 = v7;
  }

  [*(a1 + 64) _logOpenAppClipEventForBundleID:v23 session:*(a1 + 32) didOpenFullApp:1 requiresAppClipInstall:0];
}

void sub_100006E5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 134218243;
    v7 = v4;
    v8 = 2113;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): remove an web clip since the app clip is not powered-by, and its parent app (%{private}@) is installed.", &v6, 0x16u);
  }
}

void sub_100006F08(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 logID];
    *buf = 138543618;
    v23 = v6;
    v24 = 2082;
    v25 = "[begin] installing clip";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  [*(a1 + 32) setOpeningWebClipFromDaemon:1];
  v7 = +[CPSWebClipStore sharedStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007100;
  v12[3] = &unk_1000149A8;
  v8 = *(a1 + 40);
  v13 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v21 = *(a1 + 96);
  v17 = *(a1 + 40);
  v18 = *(a1 + 72);
  v20 = *(a1 + 88);
  v19 = *(a1 + 80);
  [v7 createOrUpdateExistingWebClipWithMetadata:v8 comletionHandler:v12];
}

void sub_100007100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  [*(a1 + 32) updateClipDataForEntryPointWithWebClip:v3 launchOptions:*(a1 + 40)];
  if (([*(a1 + 40) skipsLaunching] & 1) == 0)
  {
    v5 = [v3 identifier];
    v7 = sub_100004064(v5, v6);
    v8 = v7;
    if (v5)
    {
      if (os_signpost_enabled(v7))
      {
        v9 = *v4;
        v10 = v8;
        v11 = [v9 logID];
        *buf = 138543618;
        v36 = v11;
        v37 = 2082;
        v38 = "[begin] opening clip";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "OpenClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
      }

      v12 = [*(a1 + 32) configuration];
      v13 = [v12 originIsControlCenter];

      [SBSWebClipService launchWebClipWithIdentifier:v5 origin:v13];
      [*(a1 + 48) _logOpenAppClipEventForBundleID:*(a1 + 56) session:*(a1 + 32) didOpenFullApp:0 requiresAppClipInstall:(*(a1 + 96) & 1) == 0];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000094B8();
    }
  }

  v14 = [*v4 configuration];
  if ([v14 isInvokedByPhysicalCode])
  {
    v15 = [*(a1 + 64) canUpdateOnPhysicalInovcation];
  }

  else
  {
    v15 = 0;
  }

  if ((*(a1 + 96) & 1) != 0 || v15)
  {
    v21 = sub_100004064(v16, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 48);
      v23 = *(a1 + 72);
      v24 = *(a1 + 32);
      *buf = 134218499;
      v36 = v22;
      v37 = 2117;
      v38 = v23;
      v39 = 2048;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Skipping clip install for URL (%{sensitive}@) since bundle already installed or update disallowed, session (%p)", buf, 0x20u);
    }

    v25 = [RemoteClient _didEndOpenAppForURL:*(a1 + 72) adamID:0 error:0 completionHandler:*(a1 + 88)];
    v27 = sub_100004064(v25, v26);
    if (os_signpost_enabled(v27))
    {
      v28 = *v4;
      v29 = v27;
      v30 = [v28 logID];
      *buf = 138543618;
      v36 = v30;
      v37 = 2082;
      v38 = "[end] installing clip";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
    }
  }

  else
  {
    v18 = [*(a1 + 80) clipInstaller];
    v19 = *(a1 + 56);
    v20 = *(a1 + 32);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000074AC;
    v31[3] = &unk_100014980;
    v32 = *(a1 + 72);
    v34 = *(a1 + 88);
    v33 = *(a1 + 32);
    [v18 installClipWithBundleID:v19 session:v20 completion:v31];
  }
}

void sub_1000074AC(void *a1, uint64_t a2)
{
  v3 = [RemoteClient _didEndOpenAppForURL:a1[4] adamID:0 error:a2 completionHandler:a1[6]];
  v5 = sub_100004064(v3, v4);
  if (os_signpost_enabled(v5))
  {
    v6 = a1[5];
    v7 = v5;
    v8 = [v6 logID];
    v9 = 138543618;
    v10 = v8;
    v11 = 2082;
    v12 = "[end] installing clip";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v9, 0x16u);
  }
}

void sub_1000075AC(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007694;
  block[3] = &unk_1000149F8;
  v4 = *(a1 + 32);
  v12 = a2;
  v13 = *(a1 + 64);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v8;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100007694(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidate];
  if (*(a1 + 64))
  {
    v4 = sub_100004064(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 134218243;
      v13 = v5;
      v14 = 2113;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): device unlocked, begin installing clip for %{private}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else if ((*(a1 + 65) & 1) == 0)
  {
    v7 = +[CPSSessionManager sharedManager];
    v8 = [v7 clipInstaller];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007814;
    v10[3] = &unk_100014930;
    v9 = *(a1 + 40);
    v11 = vextq_s8(v9, v9, 8uLL);
    [v8 cancelPrewarmForBundleID:v9.i64[0] completion:v10];
  }
}

void sub_100007814(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100004064(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = [v3 cps_privacyPreservingDescription];
    v10 = 134218499;
    v11 = v6;
    v12 = 2113;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): unlock failed, cancelled prewarm for %{private}@, error: %{public}@", &v10, 0x20u);
  }
}

void sub_100008194(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 32);

    [a2 addRemoteObjectProxy:v3];
  }

  else
  {
    v4 = sub_100004064(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000096A0();
    }

    v5 = [*(a1 + 40) connection];
    v6 = v5;
    if (v5)
    {
      objc_msgSend_auditToken(v5);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v7 = [LSBundleProxy bundleProxyWithAuditToken:&v14 error:0];

    v8 = [v7 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.ClipViewService"];
    if (v9)
    {
      v11 = sub_100004064(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100009714();
      }

      v12 = *(*(a1 + 40) + 32);
      v13 = [NSError cps_errorWithCode:10, v14, v15];
      [v12 didFinishLoadingWithError:v13];
    }
  }
}

void sub_1000083B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 40) + 32);

    [a2 removeRemoteObjectProxy:v2];
  }

  else
  {
    v3 = sub_100004064(a1, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100009754();
    }
  }
}

void sub_1000084F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    v5 = [v3 userNotificationGranted];
    v6 = [v5 BOOLValue];
    [v8 lastProxCardLaunchTime];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    (*(v4 + 16))(v4, v6, v7, 0);
  }

  else
  {
    v5 = [NSError cps_errorWithCode:10];
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

void sub_1000086E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[NSDate now];
    [v3 setLastActivatedTime:v4];

    v5 = +[CPSWebClipStore sharedStore];
    [v5 saveWebClip:v3 completionHandler:0];

    v6 = +[CPSSessionManager sharedManager];
    v7 = [v3 pageURL];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008860;
    v10[3] = &unk_100014AC0;
    v13 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v3;
    v14 = *(a1 + 48);
    [v6 getSessionWithURL:v7 completion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [NSError cps_errorWithCode:2];
    (*(v8 + 16))(v8, v9);
  }
}

void sub_100008860(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = sub_100004064(v3, v4);
    if (os_signpost_enabled(v6))
    {
      v7 = v6;
      v8 = [v5 logID];
      v25 = 138543618;
      v26 = v8;
      v27 = 2082;
      v28 = "[end] opening clip enableTelemetry=YES ";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "OpenClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v25, 0x16u);
    }

    if (([v5 isOpeningWebClipFromDaemon] & 1) == 0)
    {
      if ([*(a1 + 32) length])
      {
        v9 = *(a1 + 32);
      }

      else
      {
        v9 = @"com.apple.springboard";
      }

      v12 = [v5 configuration];
      [v12 setReferrerBundleID:v9];

      v13 = +[CPSAnalyticsLogger sharedLogger];
      v14 = [*(a1 + 40) applicationBundleIdentifier];
      v15 = [v5 configuration];
      v16 = [v15 analyticsLaunchReason];
      v17 = [v5 url];
      v18 = [v17 cps_fallbackBundleIdentifier];
      [v13 recordDidOpenAppClipWithBundleID:v14 launchReason:v16 didShowCard:0 didOpenFullApp:0 didInstallAppClip:0 isOutOfBoxURL:v18 != 0];
    }

    [v5 setOpeningWebClipFromDaemon:0];
    v19 = [v5 metadata];
    v20 = [v19 webClipID];

    if (!v20)
    {
      v21 = [*(a1 + 40) bundleIdentifier];
      v22 = [v5 metadata];
      [v22 setWebClipID:v21];
    }

    if ([v5 registeredForTest])
    {
      [v5 didCompleteTestSessionAtTime:*(a1 + 56)];
      v23 = +[CPSSessionManager sharedManager];
      v24 = [*(a1 + 40) pageURL];
      [v23 clearSessionWithURL:v24];
    }

    else
    {
      v23 = +[CPSClipEventsReporter reporter];
      [v23 logClipLaunchEventForSession:v5];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = [NSError cps_errorWithCode:2];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_100008C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [CPSClipLaunchOptions optionsForAppClipRecord:a2];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

uint64_t sub_100008DF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 checkAndConsumeShowsAppAttributionBannerLaunchOption];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1000090D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_100004064(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000097C8(a1, v8, v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000091CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000923C()
{
  sub_100009208();
  sub_1000091EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000092BC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 logID];
  *v13 = 138543618;
  *&v13[4] = v6;
  *&v13[12] = 2114;
  *&v13[14] = a3;
  sub_1000091CC(&_mh_execute_header, v7, v8, "Fail to prewarm clip download. ID = [%{public}@] Error: %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

void sub_1000093EC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 cps_privacyPreservingDescription];
  v8 = 134218499;
  v9 = v4;
  v10 = 2117;
  v11 = v5;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "RemoteClient (%p): unable to open clip url %{sensitive}@ without invocation UI: %{public}@", &v8, 0x20u);
}

void sub_1000094B8()
{
  sub_100009208();
  v4 = 2113;
  v5 = v0;
  v6 = 2048;
  v7 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "RemoteClient (%p): Could not launch clip with bundleId: %{private}@ because there is no corresponding web clip identifier, session (%p)", v3, 0x20u);
}

void sub_100009550(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  LODWORD(v13) = 134218242;
  *(&v13 + 4) = a1;
  sub_1000091F8();
  sub_1000091CC(&_mh_execute_header, v7, v8, "RemoteClient (%p): error in downloading clip: %{public}@", v9, v10, v11, v12, v13, DWORD2(v13));
}

void sub_1000095F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  LODWORD(v13) = 134218242;
  *(&v13 + 4) = a1;
  sub_1000091F8();
  sub_1000091CC(&_mh_execute_header, v7, v8, "RemoteClient (%p): error in opening clip: %{public}@", v9, v10, v11, v12, v13, DWORD2(v13));
}

void sub_1000096A0()
{
  sub_100009208();
  sub_1000091EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100009754()
{
  sub_100009208();
  sub_1000091EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000097C8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v7 = 134218242;
  v8 = v4;
  sub_1000091F8();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "RemoteClient (%p): error fetching AMP diagnostics: %{public}@", &v7, 0x16u);
}

void sub_1000098C4(id a1)
{
  v3 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/clipserviced/"];
  v1 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v2 = qword_100019DA8;
  qword_100019DA8 = v1;
}

void sub_1000099E0(uint64_t a1)
{
  v3 = [*(a1 + 32) daemonLibraryDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"DomainHashFiles" isDirectory:1];
  v2 = qword_100019DB8;
  qword_100019DB8 = v1;
}

void sub_100009AE4(uint64_t a1)
{
  v3 = [*(a1 + 32) daemonLibraryDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"URLLookup.db" isDirectory:1];
  v2 = qword_100019DC8;
  qword_100019DC8 = v1;
}

void sub_100009D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void sub_100009D68(id a1)
{
  qword_100019DD8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPSDaemonProtocolNonEntitled];

  _objc_release_x1();
}

void sub_100009DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "RemoteClientNotEntitled %p: connection interrupted: %@", &v7, 0x16u);
  }
}

void sub_100009E8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "RemoteClientNotEntitled %p: connection invalidated: %@", &v7, 0x16u);
  }
}

void sub_10000A1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3 && ([v3 applicationBundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 32)), v6, (v7 & 1) != 0))
  {
    v8 = +[CPSClipDataSQLiteStore defaultStore];
    v9 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A3C4;
    v17[3] = &unk_100014C88;
    v18 = v9;
    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v23 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v5;
    v22 = *(a1 + 56);
    [v8 getAppClipRecordWithBundleID:v18 completion:v17];

    v13 = v18;
  }

  else
  {
    v14 = sub_100004064(v3, v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138477827;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The app clip requesting location confirmation or its url is not available. bundleID: %{private}@", buf, 0xCu);
    }

    v16 = *(a1 + 64);
    v13 = [NSError cps_errorWithCode:10];
    (*(v16 + 16))(v16, 0, v13);
  }
}

void sub_10000A3C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v12 = sub_100004064(0, v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138477827;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The app clip requesting location confirmation was not launched by clipserviced. bundleID: %{private}@", buf, 0xCu);
    }

    v14 = *(a1 + 72);
    v15 = 10;
    goto LABEL_10;
  }

  if (![v3 locationConfirmationState])
  {
    v16 = sub_100004064(0, v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138477827;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "The app clip was not launch by QR, NFC or app clip code; or the app clip has request location confirmation before. bundleID: %{private}@", buf, 0xCu);
    }

    v14 = *(a1 + 72);
    v15 = 15;
LABEL_10:
    v11 = [NSError cps_errorWithCode:v15];
    (*(v14 + 16))(v14, 0, v11);
    goto LABEL_11;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) applicationBundleIdentifier];
  v10 = [*(a1 + 64) localizedName];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000A60C;
  v18[3] = &unk_100014C60;
  v19 = v5;
  v22 = *(a1 + 72);
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  [v7 _requestLocationConsentWithRegion:v8 clipBundleID:v9 appName:v10 record:v19 completion:v18];

  v11 = v19;
LABEL_11:
}

void sub_10000A60C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) locationConfirmationGranted];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      if ([*(a1 + 32) locationConfirmationState])
      {
        v8 = +[CPSLocationProvider sharedProvider];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000A938;
        v19[3] = &unk_100014C38;
        v9 = *(a1 + 48);
        v20 = *(a1 + 40);
        v21 = *(a1 + 32);
        v22 = *(a1 + 56);
        [v8 confirmCurrentLocationInRegion:v9 completion:v19];

        v10 = v20;
        goto LABEL_14;
      }

      v14 = sub_100004064(0, v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        *buf = 138477827;
        v26 = v17;
        v16 = "This app clip has request location confirmation since launched. bundleID: %{private}@";
        goto LABEL_12;
      }
    }

    else
    {
      v14 = sub_100004064(v5, v6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        *buf = 138477827;
        v26 = v15;
        v16 = "User has denied location confirmation for bundleID: %{private}@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

    v18 = *(a1 + 56);
    v10 = [NSError cps_errorWithCode:15];
    (*(v18 + 16))(v18, 0, v10);
    goto LABEL_14;
  }

  v11 = sub_100004064(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User has denied location confirmation on the consent dialog.", buf, 2u);
  }

  [*(a1 + 32) setLocationConfirmationState:0];
  v12 = +[CPSClipDataSQLiteStore defaultStore];
  v13 = *(a1 + 32);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000A8CC;
  v23[3] = &unk_100014BE8;
  v24 = *(a1 + 56);
  [v12 saveAppClipRecord:v13 completion:v23];

  v10 = v24;
LABEL_14:
}

void sub_10000A8CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError cps_errorWithCode:15];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10000A938(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = sub_100004064(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138478083;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Location confirmation request finished. bundleID: %{private}@ error: %@", buf, 0x16u);
  }

  if ([v5 code] != 14)
  {
    [*(a1 + 40) setLocationConfirmationState:0];
  }

  v9 = +[CPSClipDataSQLiteStore defaultStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AAB4;
  v13[3] = &unk_100014C10;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v16 = a2;
  v14 = v5;
  v15 = v11;
  v12 = v5;
  [v9 saveAppClipRecord:v10 completion:v13];
}

void sub_10000AC50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = sub_100004064(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot get user's current location. Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = [[CPSLocationConfirmationRequest alloc] initWithRequestState:objc_msgSend(*(a1 + 32) clipBundleID:"locationConfirmationState") applicationName:*(a1 + 40) deviceLocation:*(a1 + 48) expectedRegion:{v5, *(a1 + 56)}];
    v11 = +[CPSOpenClipCardPresenter sharedPresenter];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000ADEC;
    v12[3] = &unk_100014CD8;
    v13 = *(a1 + 64);
    [v11 showLocationConfirmationSheetWithRequest:v10 completion:v12];
  }
}

uint64_t sub_10000ADEC(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

LABEL_7:
    v3 = +[NSUserDefaults cps_clipServicesDefaults];
    [v3 setCps_didShowFirstTimeLocationConsent:1];
  }

  v4 = *(*(v2 + 32) + 16);

  return v4();
}

void sub_10000B43C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error when try to find the app clip requesting location confirmation: %@", &v2, 0xCu);
}

void sub_10000B4C8(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ServerController: Connection rejected (disabled) for pid %d", v4, 8u);
}