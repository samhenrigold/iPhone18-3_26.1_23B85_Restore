uint64_t start()
{
  fpfs_enable_fts_thread_fchdir();
  if ((fpfs_enable_vnode_rapid_aging() & 0x80000000) != 0)
  {
    v0 = fp_current_or_default_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = *__error();
      v6[0] = 67109120;
      v6[1] = v1;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to activate VNODE rapid aging: %{errno}d", v6, 8u);
    }
  }

  fpfs_allow_operation();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000253C(v5);
    }

    exit(1);
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v2 = objc_opt_new();
  v3 = +[NSXPCListener serviceListener];
  [v3 setDelegate:v2];
  [v3 resume];

  return 0;
}

void sub_100001430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000144C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v2[24] = 1;
    objc_sync_exit(v2);

    WeakRetained = v3;
  }
}

void sub_100001790(uint64_t a1)
{
  v2 = fpfs_adopt_log();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] 🧹 FPCKService, starting FPCK", buf, 2u);
  }

  v4 = *(a1 + 32);
  if (v4[8])
  {
    v5 = v4;
    objc_sync_enter(v5);
    if (*(*(a1 + 32) + 24) == 1)
    {
      (*(*(a1 + 48) + 16))();
      objc_sync_exit(v5);
    }

    else
    {
      objc_sync_exit(v5);

      dispatch_semaphore_signal(*(*(a1 + 32) + 16));
      v45 = [[FPXPCAutomaticErrorProxy alloc] initWithConnection:*(a1 + 40) protocol:&OBJC_PROTOCOL___FPCKUpdateReceiving orError:0 name:@"UpdateReceiverProxy" requestPid:getpid()];
      v46 = [v45 synchronousRemoteObjectProxy];
      v47 = &stru_1000082C0;
      v48 = &stru_100008300;
      if (*(a1 + 40) && v46)
      {
        *buf = 0;
        v76 = buf;
        v77 = 0x3032000000;
        v78 = sub_100001FDC;
        v79 = sub_100001FEC;
        v80 = [FPCKTask buildPauseResult:0 semaphore:0];
        v71[0] = 0;
        v71[1] = v71;
        v71[2] = 0x3032000000;
        v71[3] = sub_100001FDC;
        v71[4] = sub_100001FEC;
        v72 = +[NSDate now];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100001FF4;
        v66[3] = &unk_100008350;
        v69 = v71;
        v70 = buf;
        v8 = v46;
        v9 = *(a1 + 32);
        v67 = v8;
        v68 = v9;
        v47 = objc_retainBlock(v66);
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1000021D0;
        v64[3] = &unk_100008378;
        v65 = v8;
        v48 = objc_retainBlock(v64);

        _Block_object_dispose(v71, 8);
        _Block_object_dispose(buf, 8);
      }

      v10 = objc_alloc_init(NSMutableArray);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v11 = *(*(a1 + 32) + 88);
      v12 = [v11 countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v12)
      {
        v13 = *v61;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v61 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v60 + 1) + 8 * i);
            v16 = [v15 url];
            v17 = [v16 startAccessingSecurityScopedResource];

            if (v17)
            {
              v18 = [v15 url];
              [v10 addObject:v18];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v12);
      }

      v19 = [*(*(a1 + 32) + 72) url];
      [v19 startAccessingSecurityScopedResource];

      v20 = [*(*(a1 + 32) + 80) url];
      [v20 startAccessingSecurityScopedResource];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = *(*(a1 + 32) + 96);
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v73 count:16];
      if (v22)
      {
        v23 = *v57;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v57 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v56 + 1) + 8 * j);
            v26 = [v25 url];
            v27 = [v26 startAccessingSecurityScopedResource];

            if ((v27 & 1) == 0)
            {
              v28 = fp_current_or_default_log();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_100002610(buf, v25, &buf[4], v28);
              }
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v56 objects:v73 count:16];
        }

        while (v22);
      }

      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000021DC;
      v55[3] = &unk_1000083A0;
      v55[4] = *(a1 + 32);
      v29 = objc_retainBlock(v55);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000021E4;
      v53[3] = &unk_1000083C8;
      v54 = *(a1 + 40);
      v43 = objc_retainBlock(v53);
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1000021F0;
      v51[3] = &unk_1000083C8;
      v52 = *(a1 + 40);
      v44 = objc_retainBlock(v51);
      v42 = *(*(a1 + 32) + 56);
      v41 = *(*(a1 + 32) + 64);
      v30 = [*(*(a1 + 32) + 72) url];
      v31 = [*(*(a1 + 32) + 80) url];
      v32 = *(a1 + 32);
      v33 = *(v32 + 52);
      v34 = *(v32 + 104);
      v35 = *(v32 + 112);
      v36 = *(v32 + 48);
      v37 = a1;
      v38 = v29;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000021FC;
      v49[3] = &unk_1000083F0;
      v49[4] = v32;
      v39 = *(v37 + 56);
      v50 = *(v37 + 48);
      LOWORD(v40) = v36;
      [FPCKTask runFPCKForDomain:v42 domainUserInfo:v41 domainRootURL:v30 databaseBackupPath:v31 urls:v10 volumeRole:v33 options:v34 reason:v35 fpfs:v40 iCDPackageDetection:v47 shouldPause:v43 sendDiagnostics:v48 saveCheckpoint:v44 reingestItems:v38 isInvalidated:v39 contentBarrier:v49 completionHandler:?];

      v5 = v45;
    }
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000025CC(v6);
    }

    v7 = *(a1 + 48);
    v5 = [NSError fp_invalidArgumentError:@"Prepare!"];
    (*(v7 + 16))(v7, 0, 0, 0, v5);
  }
}

uint64_t sub_100001FDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001FF4(void *a1)
{
  [*(*(a1[6] + 8) + 40) timeIntervalSinceNow];
  if (v2 < -5.0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000020D4;
    v10[3] = &unk_100008328;
    v3 = a1[7];
    v4 = a1[4];
    v10[4] = a1[5];
    v10[5] = v3;
    [v4 shouldPauseWithCompletion:v10];
    v5 = +[NSDate now];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(*(a1[7] + 8) + 40);

  return v8;
}

void sub_1000020D4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000026A0(v5, v6);
    }
  }

  if (a2)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] 🧹 FPCKService will pause because pause checker indicated", v13, 2u);
    }

    v8 = *(*(a1 + 32) + 16);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [FPCKTask buildPauseResult:v9 semaphore:v8];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_1000021FC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(*(a1 + 32) + 72) url];
  [v13 stopAccessingSecurityScopedResource];

  v14 = [*(*(a1 + 32) + 80) url];
  [v14 stopAccessingSecurityScopedResource];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = *(*(a1 + 32) + 88);
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v31 + 1) + 8 * v19) url];
        [v20 stopAccessingSecurityScopedResource];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v17);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = *(*(a1 + 32) + 96);
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v27 + 1) + 8 * v25) url];
        [v26 stopAccessingSecurityScopedResource];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v23);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000253C(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[ERROR] failed to set ignore permissions iopolicy %d\n", v3, 8u);
}

void sub_100002610(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 url];
  v8 = [v7 fp_shortDescription];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "[ERROR] Failed accessing url: %@", a1, 0xCu);
}

void sub_1000026A0(void *a1, NSObject *a2)
{
  v3 = [a1 fp_prettyDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ERROR] Pause checker error: %@", &v4, 0xCu);
}