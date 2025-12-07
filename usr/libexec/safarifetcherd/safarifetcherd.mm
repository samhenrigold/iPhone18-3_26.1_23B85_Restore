void sub_100001674(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_100001CD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001CE8(uint64_t a1)
{
  v2 = [*(a1 + 32) _bestImageWithData:*(*(*(a1 + 48) + 8) + 40) forWidth:*(a1 + 56)];
  [v2 size];
  v4 = v3;
  v6 = v5;
  v7 = v5 < 57.0 && v3 < 57.0;
  if (v7)
  {
    v8 = [WBSSiteIconKeyColorExtractor keyColorForIcon:v2];
  }

  else
  {
    v29.width = *(a1 + 56);
    v29.height = v29.width;
    UIGraphicsBeginImageContextWithOptions(v29, 0, 1.0);
    v9 = *(a1 + 56);
    +[_SFSiteIcon cornerRadius];
    v11 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v9, v9, v10 * *(a1 + 64)];
    [v11 addClip];
    v12 = *(a1 + 56);
    if (v4 <= v6)
    {
      y = CGPointZero.y;
      v13 = v12 / v4;
      v16 = (v6 - v4) * -0.5 * (v12 / v4);
      x = 0.0;
      if (v4 < v6)
      {
        y = v16;
      }

      else
      {
        x = CGPointZero.x;
      }
    }

    else
    {
      v13 = v12 / v6;
      x = (v4 - v6) * -0.5 * (v12 / v6);
      y = 0.0;
    }

    [v2 drawInRect:{x, y, v4 * v13, v6 * v13}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    v18 = UIImagePNGRepresentation(v17);
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    UIGraphicsEndImageContext();
    v8 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F58;
  block[3] = &unk_10001C6F0;
  v21 = *(a1 + 32);
  v28 = v7;
  block[4] = v21;
  v26 = v8;
  v24 = *(a1 + 40);
  v22 = v24;
  v27 = v24;
  v23 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100001F58(uint64_t a1)
{
  *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  if (*(a1 + 64) == 1)
  {
    [WeakRetained siteIconDownloadRequest:v3 didComputeIconKeyColor:*(a1 + 40)];
  }

  else
  {
    [WeakRetained siteIconDownloadRequest:v3 didLoadIconData:*(*(*(a1 + 56) + 8) + 40) withIconURL:*(a1 + 48)];
  }
}

void sub_100002678(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100002790(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ReadingListFetcher;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id sub_100002E30(uint64_t a1)
{
  v2 = +[SafariFetcherServer sharedServer];
  v3 = [*(*(a1 + 32) + 8) UUID];
  [v2 deliverReadingListFetchingDidStopForItemWithUUID:v3];

  v4 = *(a1 + 32);

  return [v4 didFinishFetchingDocument:0];
}

void *sub_1000037C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[1])
  {
    return [result _fetchNextItem];
  }

  return result;
}

void sub_1000039F8(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (([v16 isEqualToString:@"CompletedItemCount"] & 1) == 0)
  {
    v6 = v16;
    v7 = [*(a1 + 32) bookmarkWithUUID:v6];
    if (!v7)
    {
      [*(a1 + 40) addObject:v6];
LABEL_18:

      goto LABEL_19;
    }

    v8 = [v5 objectForKey:@"Address"];
    if (v8 && [v7 isAddedLocally])
    {
      [v7 setAddress:v8];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 objectForKey:@"ArchiveStatus"];
    v11 = v10;
    if (v10)
    {
      [v7 setArchiveStatus:{objc_msgSend(v10, "unsignedIntValue")}];
      v9 = 1;
    }

    v12 = [v5 objectForKey:@"DateLastArchived"];
    if (v12)
    {
      [v7 setDateLastArchived:v12];
      v9 = 1;
    }

    v13 = [v5 objectForKey:@"PreviewText"];
    if (v13)
    {
      [v7 setPreviewText:v13];
    }

    else if ((v9 & 1) == 0)
    {
      v14 = +[NSUserDefaults safari_browserDefaults];
      v15 = [v7 shouldReattemptArchiveWithAutomaticArchivingEnabled:{objc_msgSend(v14, "safari_shouldAutomaticallyDownloadReadingListItems")}];

      if (v15)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (([*(a1 + 32) saveBookmark:v7 startReadingListFetcher:0] & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    [*(a1 + 40) addObject:v6];
    goto LABEL_17;
  }

LABEL_19:
}

void sub_100003E10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:&v17];
  v4 = v17;
  v6 = v4;
  if (!v3)
  {
    v12 = sub_100009E64(v4, v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10000A4B4();
    }

    goto LABEL_11;
  }

  v7 = [*(a1 + 40) pendingBookmarkChangesFilePath];
  v16 = v6;
  v8 = [v3 writeToFile:v7 options:1 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v13 = sub_100009E64(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v9 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10000A42C();
    }

    v12 = sub_100009E64(v14, v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 40) pendingBookmarkChangesFilePath];
      objc_claimAutoreleasedReturnValue();
      sub_10000A470();
    }

    v6 = v9;
LABEL_11:

    goto LABEL_12;
  }

  v6 = v9;
LABEL_12:
}

void sub_10000409C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) pendingBookmarkChangesFilePath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [*(a1 + 32) pendingBookmarkChangesFilePath];
    v12 = 0;
    v7 = [v5 removeItemAtPath:v6 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v11 = sub_100009E64(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v8 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10000A4F8();
      }
    }
  }
}

void sub_1000055A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100005730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100005768(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v7 = sub_100009E64(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [a4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10000A7D4();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1 + 32));
}

void *sub_100005F24(uint64_t a1)
{
  v2 = sub_100005F74();
  result = dlsym(v2, "PLShouldLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100022D50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100005F74()
{
  v3[0] = 0;
  if (!qword_100022D58)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100006074;
    v3[4] = &unk_10001C6C8;
    v3[5] = v3;
    v4 = off_10001C840;
    v5 = 0;
    qword_100022D58 = _sl_dlopen();
  }

  v0 = qword_100022D58;
  v1 = v3[0];
  if (!qword_100022D58)
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

uint64_t sub_100006074(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100022D58 = result;
  return result;
}

void *sub_1000060E8(uint64_t a1)
{
  v2 = sub_100005F74();
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100022D60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100006144(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t sub_100006160(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2082;
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_100006178(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_100006190(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1000061AC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1000061C8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_1000061E4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_1000062EC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5)
  {
    v9 = a1[5];
    v27 = v6;
    v10 = [v5 writeToFile:v9 options:0x40000000 error:&v27];
    v11 = v27;

    v14 = sub_100009E64(v12, v13);
    v15 = v14;
    if (v10)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = a1[4];
        v18 = v15;
        v19 = [v17 _mainFrameURL];
        v20 = a1[5];
        v21 = [v11 safari_privacyPreservingDescription];
        *buf = 138478339;
        v29 = v19;
        v30 = 2114;
        v31 = v20;
        v32 = 2114;
        v33 = v21;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Successfully wrote archive: %{private}@ to path: %{public}@: %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = a1[4];
      v23 = v15;
      v24 = [v22 _mainFrameURL];
      v25 = a1[5];
      v26 = [v11 safari_privacyPreservingDescription];
      *buf = 138478339;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not archive: %{private}@ to path: %{public}@: %{public}@", buf, 0x20u);
    }

    v8 = v11;
  }

  else
  {
    v16 = sub_100009E64(v6, v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000A8B4(a1, v16);
    }
  }

  (*(a1[6] + 16))();
}

uint64_t sub_100006BBC(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 64) & 1) == 0)
  {
    [*(a1 + 32) _createSymlinkInDirectory:*(a1 + 40) pointingToPath:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100006C4C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100006C6C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t start()
{
  getpid();
  if (!sandbox_container_path_for_pid())
  {
    setenv("HOME", __value, 1);
    setenv("CFFIXED_USER_HOME", __value, 1);
    if (strlcat(__value, "/tmp/", 0x400uLL) >= 0x400)
    {
      exit(1);
    }

    setenv("TMPDIR", __value, 1);
  }

  v0 = objc_autoreleasePoolPush();
  GSInitialize();
  v1 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  [v1 webui_applySafariCookieAcceptPolicy];

  v2 = +[SafariFetcherServer sharedServer];
  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_100007118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007150(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state = xpc_activity_get_state(v3);
    if (state)
    {
      v7 = state;
      should_defer = xpc_activity_should_defer(v3);
      if (should_defer)
      {
        v10 = xpc_activity_set_state(v3, 3);
        if (v10)
        {
          v12 = sub_100009E64(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = [WeakRetained name];
            *buf = 138543362;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "background activity [%{public}@] is deferred.", buf, 0xCu);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100007450;
          block[3] = &unk_10001C8B0;
          block[4] = WeakRetained;
          v27 = v3;
          dispatch_async(&_dispatch_main_q, block);
          v15 = v27;
          goto LABEL_17;
        }
      }

      else if (v7 == 2)
      {
        v21 = sub_100009E64(should_defer, v9);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = [WeakRetained name];
          *buf = 138543362;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "background activity [%{public}@] is runnable.", buf, 0xCu);
        }

        if (xpc_activity_set_state(v3, 4))
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100007460;
          v24[3] = &unk_10001C8B0;
          v24[4] = WeakRetained;
          v25 = v3;
          dispatch_async(&_dispatch_main_q, v24);
          v15 = v25;
LABEL_17:
        }
      }
    }

    else
    {
      v16 = sub_100009E64(0, v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [WeakRetained name];
        *buf = 138543362;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "background activity [%{public}@] is checked in.", buf, 0xCu);
      }

      v19 = xpc_activity_copy_criteria(v3);

      if (!v19)
      {
        v20 = [WeakRetained requirements];
        xpc_activity_set_criteria(v3, v20);
      }
    }
  }
}

id sub_100008418(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 16);
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  [v3 setArchiveStatus:v4];
  v5 = *(a1 + 32);

  return [v5 _saveAndSelfExpire];
}

void *sub_1000088DC(void *result)
{
  if ((result[7] & 1) == 0)
  {
    v1 = result;
    if (![*(result[4] + 16) iconData])
    {
      v2 = [WebMIMETypeRegistry isSupportedImageMIMEType:v1[5]];
      if (v2)
      {
        v4 = sub_100009E64(v2, v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_10000AF28();
        }

        *(v1[4] + 24) = -[SiteIconDownloadRequest initWithBookmark:singleResourceURL:]([SiteIconDownloadRequest alloc], "initWithBookmark:singleResourceURL:", *(v1[4] + 16), [v1[6] _mainFrameURL]);
        [*(v1[4] + 24) setDelegate:?];
        [*(v1[4] + 24) start];
      }
    }

    v5 = v1[4];
    if (*(v5 + 35))
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    [*(v5 + 16) setArchiveStatus:v6];
    return [v1[4] _saveAndSelfExpire];
  }

  return result;
}

id sub_100008BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) isReaderAvailable];

  return [v3 _didCollectReadingListInfo:a2 withAvailability:v4];
}

void sub_100008F34(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_100009278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 120));
  _Unwind_Resume(a1);
}

void sub_1000092E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerConnectionForReadingListFetcherUpdates:v3];
}

void sub_10000933C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startReadingListFetcher];
}

void sub_10000937C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unregisterConnectionForReadingListFetcherUpdates:v3];
}

void sub_1000093D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearAllReadingListArchivesForConnection:v3];
}

void sub_100009434(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connection:v6 clearReadingListArchiveWithMessage:v5];
}

uint64_t sub_100009594(uint64_t a1)
{
  qword_100022D68 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_100009E64(uint64_t a1, uint64_t a2)
{
  if (qword_100022D80 != -1)
  {
    sub_10000B0E0();
  }

  return qword_100022D78;
}

void sub_100009E9C(id a1)
{
  qword_100022D78 = os_log_create("com.apple.mobilesafari", "OfflineArticleFetcher");

  _objc_release_x1();
}

void sub_100009F14()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061AC(&_mh_execute_header, v3, v4, "Failed to read pending bookmark changes file into plist because %{public}@", v5);
}

void sub_100009F58(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Device uptime = %.2f seconds", &v2, 0xCu);
}

void sub_10000A008(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Fetching %{private}@ with UUID %{public}@", buf, 0x16u);
}

void sub_10000A1B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Exceeded maximum number of failed attempts to load a Reading List item with UUID %{public}@", &v2, 0xCu);
}

void sub_10000A228(char a1, NSObject *a2)
{
  v2[0] = 67109376;
  v2[1] = a1 & 1;
  v3 = 1024;
  v4 = 0;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to save bookmark after maximum number of failed attempts to load a Reading List item - lockObtained %d saveSucceeded %d", v2, 0xEu);
}

void sub_10000A2B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire lock when attempting initial load of Reading List item with UUID %{public}@", &v2, 0xCu);
}

void sub_10000A42C()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061AC(&_mh_execute_header, v3, v4, "Failed attempt to save pending bookmark changes because %{public}@", v5);
}

void sub_10000A470()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.808e-34);
  sub_1000061C8(&_mh_execute_header, v3, v4, "Pending bookmark change path: %{private}@", v5);
}

void sub_10000A4B4()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061AC(&_mh_execute_header, v3, v4, "Failed to create data from pending bookmark changes because %{public}@", v5);
}

void sub_10000A4F8()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061AC(&_mh_execute_header, v3, v4, "Could not remove pending changes file because %{public}@", v5);
}

void sub_10000A624()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "BackgroundTaskAgentJob (%{public}@) got a Job Request Error", v4, 0xCu);
}

void sub_10000A674()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061C8(&_mh_execute_header, v3, v4, "BackgroundTaskAgentJob %{public}@ became Unsatisfied - Network conditions failed - no longer wifi", v5);
}

void sub_10000A6B8()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061C8(&_mh_execute_header, v3, v4, "BackgroundTaskAgentJob %{public}@ became Unsatisfied - Battery level failed - device is now low battery", v5);
}

void sub_10000A6FC()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061AC(&_mh_execute_header, v3, v4, "BackgroundTaskAgentJob %{public}@ became Unsatisfied - Unknown reason for failure", v5);
}

void sub_10000A740()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061C8(&_mh_execute_header, v3, v4, "BackgroundTaskAgentJob %{public}@ became Unsatisfied - Power conditions failed - no longer plugged in", v5);
}

void sub_10000A784()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "BackgroundTaskAgentJob %{public}@ became Unsatisfied - Unknown reason for failure", v4, 0xCu);
}

void sub_10000A7D4()
{
  sub_100006184();
  sub_100006178(v1, v2, 5.8381e-34);
  sub_1000061AC(&_mh_execute_header, v3, v4, "ReadingListFetcher got an error checking free disk space: %{public}@", v5);
}

void sub_10000A8B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _mainFrameURL];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100006C40() safari_privacyPreservingDescription];
  sub_100006C28();
  sub_100006C4C(&_mh_execute_header, v5, v6, "Could not archive: %{private}@: %{public}@", v7, v8, v9, v10);
}

void sub_10000A964(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  sub_100006C28();
  sub_100006C4C(&_mh_execute_header, v6, v7, "Could not remove sym link: %{public}@: %{public}@", v8, v9, v10, v11);
}

void sub_10000AA04(void *a1)
{
  v2 = a1;
  v3 = [sub_100006C40() safari_privacyPreservingDescription];
  LODWORD(v10) = 138543362;
  *(&v10 + 4) = v3;
  sub_100006C6C(&_mh_execute_header, v4, v5, "Could not create Directory for Reading List item archives: %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

void sub_10000AADC(void *a1)
{
  v2 = a1;
  v3 = [sub_100006C40() safari_privacyPreservingDescription];
  LODWORD(v10) = 138543362;
  *(&v10 + 4) = v3;
  sub_100006C6C(&_mh_execute_header, v4, v5, "Could not create hard link for quicklook content: %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
}

void sub_10000ABB4(void *a1)
{
  v2 = a1;
  v3 = [sub_100006C40() UUID];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Writing Reading List archive to disk for bookmark UUID %{public}@.", &v4, 0xCu);
}

void sub_10000AC58(char a1, NSObject *a2)
{
  v2 = &stru_10001CD88;
  if (a1)
  {
    v2 = @", queued";
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saving bookmark%{public}@.", &v3, 0xCu);
}

void sub_10000AE04(void *a1)
{
  [a1 UUID];
  sub_100008F28();
  sub_100008F34(&_mh_execute_header, v1, v2, "Retrying to load %{public}@", v3, v4, v5, v6);
}

void sub_10000AE7C(void *a1)
{
  [a1 UUID];
  sub_100008F28();
  sub_100008F34(&_mh_execute_header, v1, v2, "Loading bookmark with UUID: %{public}@", v3, v4, v5, v6);
}

void sub_10000AF5C(void *a1, NSObject *a2)
{
  [a1 safari_privacyPreservingDescription];
  sub_100008F28();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ReadingListFetcher loading finished: %{public}@", v3, 0xCu);
}