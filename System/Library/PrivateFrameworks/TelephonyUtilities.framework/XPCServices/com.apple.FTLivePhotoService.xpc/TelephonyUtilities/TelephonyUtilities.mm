id FTDefaultLog(uint64_t a1)
{
  if (qword_100059C08 != -1)
  {
    sub_1000381BC();
  }

  v2 = qword_100059C00;

  return v2;
}

void sub_1000020D4(id a1)
{
  qword_100059C00 = os_log_create("com.apple.calls.ftlivephotoservice", "Default");

  _objc_release_x1();
}

void sub_1000024A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 + 40));
  _Unwind_Resume(a1);
}

void sub_1000024E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained connectionInvalidated];
    WeakRetained = v2;
  }
}

void sub_100002530(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained connectionInvalidated];
    WeakRetained = v2;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = _setUpTemporaryDirectory();
  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

id _setUpTemporaryDirectory()
{
  unsetenv("TMPDIR");
  bzero(v5, 0x400uLL);
  [TUBundleIdentifierLivePhotoXPCService UTF8String];
  v0 = _set_user_dir_suffix();
  if (!v0 || (v0 = confstr(65537, v5, 0x400uLL)) == 0 || mkdir(v5, 0x1C0u) && (v0 = __error(), *v0 != 17))
  {
    v3 = FTDefaultLog(v0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000382F8();
    }

LABEL_13:

    exit(1);
  }

  bzero(v4, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v5, v4))
  {
    v3 = FTDefaultLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100038270();
    }

    goto LABEL_13;
  }

  v1 = [NSString stringWithUTF8String:v4];

  return v1;
}

void sub_1000028B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_100002974(uint64_t a1)
{
  qword_100059C10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002CDC(uint64_t a1)
{
  v2 = +[FTServerBag sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 48));
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = &stru_100050FC8;

  v7 = +[NSMutableDictionary dictionary];
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = v7;

  v10 = +[NSMutableDictionary dictionary];
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = v10;

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 56));
  [*(*(a1 + 32) + 56) setDelegate:?];
  [*(*(a1 + 32) + 56) setSandboxDelegate:?];
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 64));
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 72));
  v13 = *(a1 + 80);
  v14 = (*(a1 + 32) + 88);

  objc_storeStrong(v14, v13);
}

FTAVCMomentsProtocol *__cdecl sub_100002DF0(id a1, int64_t a2, NSString *a3, FTAVCMomentsDelegate *a4, OS_dispatch_queue *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = FTDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "videoStreamToken: %ld", &v14, 0xCu);
  }

  v12 = [[_TtC18FTLivePhotoService12FTAVCMoments alloc] initWithStreamToken:a2 requesterID:v10 delegate:v9 dispatchQueue:v8];

  return v12;
}

void sub_1000035AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1000035D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = FTDefaultLog(WeakRetained);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000384B8();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [WeakRetained idsService];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully donated %@ to firewall for service %@", &v9, 0x16u);
  }
}

id mediaTypesCapabilitiesSetForCapabilities(char a1)
{
  v2 = +[NSMutableSet set];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:&off_1000531A8];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:&off_1000531C0];
  if ((a1 & 2) != 0)
  {
LABEL_4:
    [v3 addObject:&off_1000531D8];
  }

LABEL_5:
  v4 = [v3 copy];

  return v4;
}

void sub_1000041F0(uint64_t a1)
{
  v2 = FTDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = TULoggableStringForHandle();
    *buf = 138413058;
    v49 = v3;
    v50 = 2112;
    v51 = v4;
    v52 = 1024;
    *v53 = v5;
    *&v53[4] = 2112;
    *&v53[6] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "url: %@ metadata: %@ isZipped: %d fromIDSDestination: %@", buf, 0x26u);
  }

  v7 = (a1 + 56);
  v8 = [*(a1 + 56) serverBag];
  if (([v8 isMomentsDisabled] & 1) == 0)
  {
    v10 = [objc_opt_class() isFaceTimePhotosAvailable];

    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = [*(a1 + 40) objectForKeyedSubscript:@"CSDMomentsControllerMetadataKeyTransactionID"];
    if (!v11)
    {
      v33 = FTDefaultLog(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000387B8();
      }

      [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
      goto LABEL_39;
    }

    v12 = [*v7 sessionForTransactionID:v11];
    v13 = [v12 activeRequestsByTransactionID];
    v14 = [v13 objectForKeyedSubscript:v11];

    v15 = [v14 avcRequest];
    v16 = [v12 remoteRequesteeIDSDestinationFor:v15];

    v18 = FTDefaultLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 avcRequest];
      v20 = [v19 requesterID];
      v21 = TULoggableStringForHandle();
      *buf = 138412802;
      v49 = v12;
      v50 = 2112;
      v51 = v20;
      v52 = 2112;
      *v53 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "session: %@ request: %@ remoteIDSDestination: %@", buf, 0x20u);
    }

    if (!v12 || !v14 || !v16)
    {
      v34 = FTDefaultLog(v22);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1000385FC(v11, (a1 + 56));
      }

      [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
      goto LABEL_38;
    }

    v47 = 0;
    v23 = [v16 _stripPotentialTokenURIWithToken:&v47];
    v24 = v47;
    v25 = *(a1 + 48);
    v46 = 0;
    v26 = [v25 _stripPotentialTokenURIWithToken:&v46];
    v27 = v46;
    v28 = v27;
    if (v24 && v27)
    {
      v29 = [v24 isEqualToData:v27];
      if (!v29)
      {
        v39 = FTDefaultLog(v29);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000386A4(a1 + 48, v12);
        }

        [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
        goto LABEL_37;
      }

      if (*(a1 + 64) == 1)
      {
        v30 = [*(a1 + 56) fileTransferController];
        v31 = *(a1 + 32);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100004780;
        v43[3] = &unk_100051068;
        v43[4] = *(a1 + 56);
        v44 = v11;
        v45 = *(a1 + 32);
        [v30 unzipArchiveAtURL:v31 completion:v43];
      }

      else
      {
        v40 = FTDefaultLog(v29);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10003874C();
        }

        [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
      }

      [v12 removeActiveRequestForTransactionID:v11];
      v41 = *v7;
      v36 = [v12 moments];
      [v41 cleanUpForMomentIfNecessary:v36];
    }

    else
    {
      v35 = [v14 avcRequest];
      v36 = [v12 remoteRequesteeIDSDestinationFor:v35];

      v38 = FTDefaultLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 48);
        *buf = 138413058;
        v49 = v36;
        v50 = 2112;
        v51 = v24;
        v52 = 2112;
        *v53 = v42;
        *&v53[8] = 2112;
        *&v53[10] = v28;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Could not convert remote IDS destination %@ (token=%@) and/or from IDS destination %@ (token=%@) to token data", buf, 0x2Au);
      }

      [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
    }

LABEL_37:
LABEL_38:

LABEL_39:
    return;
  }

LABEL_17:
  v32 = FTDefaultLog(v9);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_100038824();
  }

  [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
}

void sub_100004780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000485C;
  v8[3] = &unk_100051040;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

id sub_10000485C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = FTDefaultLog(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unzipped resource to URL: %@", &v7, 0xCu);
    }

    [*(a1 + 40) _handleReceivedResourcesAtDirectoryURL:*(a1 + 32) transactionID:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100038864();
    }
  }

  return [*(a1 + 40) deleteContentsAtURL:*(a1 + 56)];
}

void sub_100005548(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TUMomentDescriptor alloc] initWithPhotosAppAssetIdentifier:v3];

  v5 = [*(a1 + 32) queue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100005648;
  v11 = &unk_1000510B8;
  v12 = *(a1 + 32);
  v13 = v4;
  v6 = v4;
  dispatch_async(v5, &v8);

  [*(a1 + 32) deleteContentsAtURL:{*(a1 + 40), v8, v9, v10, v11, v12}];
  v7 = [*(a1 + 32) sandboxURLsByRequestTransactionID];
  [v7 setObject:0 forKeyedSubscript:*(a1 + 48)];
}

void sub_100005798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TUMomentDescriptor alloc] initWithPhotosAppAssetIdentifier:v3];

  v5 = [*(a1 + 32) queue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100005878;
  v10 = &unk_1000510B8;
  v11 = *(a1 + 32);
  v12 = v4;
  v6 = v4;
  dispatch_async(v5, &v7);

  [*(a1 + 32) deleteContentsAtURL:{*(a1 + 40), v7, v8, v9, v10, v11}];
}

void sub_100005A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = FTDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100038AD8();
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void sub_100005C4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = FTDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100038B54();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void sub_100005DE4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionForTransactionID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = FTDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Timeout reached for active request for transaction ID %@", &v9, 0xCu);
    }

    [v3 removeActiveRequestForTransactionID:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = [v3 moments];
    [v6 cleanUpForMomentIfNecessary:v7];

    v8 = [*(a1 + 32) sandboxURLsByRequestTransactionID];
    [v8 setObject:0 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_10000621C(id a1)
{
  if (!qword_100059C28)
  {
    qword_100059C28 = objc_alloc_init(FTMomentsControllerLocalCapabilities);

    _objc_release_x1();
  }
}

void sub_100006354(id a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PreserveFaceTimePhotosFiles", TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  byte_100059C30 = v3;
}

void sub_100006954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FTDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 URL];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received sandbox extension for URL: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) sandboxURLsByRequestTransactionID];
  v7 = [*(a1 + 40) transactionID];
  [v6 setObject:v3 forKeyedSubscript:v7];
}

void sub_100006A58(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = FTDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100038C90();
    }
  }
}

void sub_1000076C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FTDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 URL];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "saving sandboxURL: %@", &v10, 0xCu);
  }

  v9 = [*(a1 + 32) sandboxURLsByRequestTransactionID];
  [v9 setObject:v5 forKeyedSubscript:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

void sub_100007A30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100007A74(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100007AE4(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100059C48 = v1 / v2 / 1000000000.0;
}

void sub_1000083CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008488;
  v5[3] = &unk_100051278;
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 performFileCopierOperation:1 onInputURL:v3 outputURL:v6 completion:v5];
}

void sub_100008488(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v23 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v23];
  v5 = v23;

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v8)
    {
      v17 = v5;
      v18 = a1;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          buf[0] = 0;
          v12 = [NSFileManager defaultManager:v17];
          v13 = [v11 path];
          v14 = [v12 fileExistsAtPath:v13 isDirectory:buf];

          if (v14 && buf[0] == 1)
          {
            v8 = v11;
            goto LABEL_16;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v5 = v17;
      a1 = v18;
    }

    v15 = FTDefaultLog(v16);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "new directory urls: %@, unzippedDirectoryURL: %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = FTDefaultLog(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000391D8();
    }

    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100008A28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FTDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412802;
    v28 = v3;
    v29 = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending resource at URL %@ to destinations %@ with metadata %@", buf, 0x20u);
  }

  v7 = [*(a1 + 48) objectForKeyedSubscript:@"CSDMomentsControllerMetadataKeyTransactionID"];
  if (v3)
  {
    v25 = IDSSendMessageOptionTimeoutKey;
    v8 = [*(a1 + 56) serverBag];
    [v8 momentsRequestTimeout];
    v9 = [NSNumber numberWithDouble:?];
    v26 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    v11 = [*(a1 + 56) service];
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v23 = 0;
    v24 = 0;
    v14 = [v11 sendResourceAtURL:v3 metadata:v12 toDestinations:v13 priority:300 options:v10 identifier:&v24 error:&v23];
    v15 = v24;
    v16 = v23;

    if (v14)
    {
      v17 = *(a1 + 64);
      v18 = [*(a1 + 56) clientFileURLByIdentifier];
      [v18 setObject:v17 forKeyedSubscript:v15];

      v19 = [*(a1 + 56) transactionIDByIDSFileIdentifier];
      [v19 setObject:v7 forKeyedSubscript:v15];

      v21 = FTDefaultLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully started sending resource with identifier %@", buf, 0xCu);
      }
    }

    else
    {
      v22 = FTDefaultLog([*(a1 + 56) cleanUpTemporaryFileIfExistsForClientFileURL:*(a1 + 64)]);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000392D0();
      }

      v21 = [*(a1 + 56) delegate];
      [v21 fileTransferer:*(a1 + 56) didTransferFileAtURL:*(a1 + 64) transactionID:v7 successfully:0];
    }
  }
}

void sub_100008CE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [*(a1 + 32) temporaryFileURLByClientFileURL];
  [v5 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

void sub_10000900C(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [v2 copyFileAtURL:v3 toTemporaryFileWithName:v5];

  if (v6)
  {
    v8 = FTDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Copied resource to temporary URL: %@", &v10, 0xCu);
    }

    v9 = [*(a1 + 32) delegate];
    [v9 fileTransferer:*(a1 + 32) didReceiveResourcesAtURL:v6 withMetadata:*(a1 + 48) isZipped:*(a1 + 72) fromIDSDestination:*(a1 + 56)];
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

uint64_t sub_100009B4C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = FTDefaultLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100039408();
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_100009D98(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 didErrorOccur];
  v5 = v4;
  v6 = FTDefaultLog(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100039484();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[7];
    v9 = a1[4];
    v10 = a1[5];
    v14 = 134218498;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "completed operation: %ld, inputURL: %@, outputURL: %@", &v14, 0x20u);
  }

  [v3 cleanup];
  v11 = a1[6];
  v12 = [v3 didErrorOccur];

  return (*(v11 + 16))(v11, v12 ^ 1);
}

uint64_t sub_10000A130()
{
  v1 = [v0 transactionID];
  v2 = sub_10003986C();

  return v2;
}

id sub_10000A230(SEL *a1)
{
  v4 = 0;
  if ([v1 *a1])
  {
    return v4;
  }

  v3 = v4;
  sub_10003951C();

  return swift_willThrow();
}

Swift::Int sub_10000A378(uint64_t a1, uint64_t a2)
{
  sub_100039C1C();
  swift_getWitnessTable();
  sub_10003968C();
  return sub_100039C3C();
}

uint64_t sub_10000A3E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10000A52C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10000A574(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000A580(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000A5A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_10000A5E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000A638()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError);
  sub_10000C984(v1, *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError + 8));
  return v1;
}

char *sub_10000A684(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_1000399FC();
  sub_10000C9B8();
  v43 = v8;
  v44 = v7;
  __chkstk_darwin(v7);
  sub_10000C9CC();
  v11 = v10 - v9;
  sub_1000399DC();
  sub_10000C9A8();
  __chkstk_darwin(v12);
  sub_10000C9CC();
  v13 = sub_10003976C();
  v14 = sub_10000CA0C(v13);
  __chkstk_darwin(v14);
  sub_10000C9CC();
  v48 = OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcMoments;
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcMoments] = 0;
  v15 = &v3[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing];
  *v15 = 0;
  v15[1] = 0;
  v41 = v15;
  v16 = &v3[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError];
  *v16 = 0;
  v16[1] = 0;
  v42 = v16;
  v17 = OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_uuid;
  v18 = sub_10003962C();
  v51 = *(v18 - 8);
  v52 = v18;
  v40 = v17;
  v47 = a1;
  (*(v51 + 16))(&v3[v17], a1);
  v19 = OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_mediaURL;
  v20 = sub_1000395CC();
  v49 = *(v20 - 8);
  v50 = v20;
  v46 = a2;
  (*(v49 + 16))(&v3[v19], a2);
  sub_10000C944(0, &unk_100059550, OS_dispatch_queue_ptr);
  sub_10003975C();
  v54 = _swiftEmptyArrayStorage;
  sub_10000C610();
  sub_10000BEC0(&qword_100059560, &unk_10003F800);
  sub_10000C668();
  sub_100039A7C();
  (*(v43 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  v21 = sub_100039A1C();
  v22 = OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_queue;
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_queue] = v21;
  v23 = [objc_allocWithZone(type metadata accessor for MessageMomentsAVCDelegate()) init];
  v24 = OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcDelegate;
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcDelegate] = v23;
  v25 = OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_mediaTokens;
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_mediaTokens] = a3;
  v26 = a3;
  v27 = [objc_allocWithZone(AVCMoments) initWithStreamToken:objc_msgSend(v26 requesterID:"combinedAudioStreamToken") delegate:0 dispatchQueue:{*&v4[v24], *&v4[v22]}];
  if (v27)
  {
    v28 = *&v3[v48];
    *&v3[v48] = v27;
    v29 = v27;

    v53.receiver = v4;
    v53.super_class = type metadata accessor for MediaMoments(0);
    v4 = objc_msgSendSuper2(&v53, "init");

    (*(v49 + 8))(v46, v50);
    (*(v51 + 8))(v47, v52);
    *(*&v4[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcDelegate] + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner + 8) = &off_100051770;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_100058AA0 != -1)
    {
      sub_10000C994();
      swift_once();
    }

    v30 = sub_10003972C();
    sub_10000BF30(v30, qword_10005AB20);
    v31 = sub_10003970C();
    v32 = sub_1000399AC();
    v33 = sub_10000CA00();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Could not construct moments", v35, 2u);
      sub_10000C9F4();
    }

    sub_10000C714();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();

    v37 = *(v49 + 8);
    v37(v46, v50);
    v38 = *(v51 + 8);
    v38(v47, v52);

    v38(&v4[v40], v52);
    v37(&v4[v19], v50);

    sub_10000BFCC(*v41, v41[1]);
    sub_10000BFCC(*v42, v42[1]);
    type metadata accessor for MediaMoments(0);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

void sub_10000AC84(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v42 = sub_1000395CC();
  sub_10000C9B8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C9CC();
  v11 = v10 - v9;
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v12 = sub_10003972C();
  sub_10000BF30(v12, qword_10005AB20);
  v13 = sub_10003970C();
  v14 = sub_1000399CC();
  v15 = sub_10000CA00();
  if (os_log_type_enabled(v15, v16))
  {
    v41 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 136446210;
    type metadata accessor for AVCMomentsMediaType(0);
    v19 = sub_10003989C();
    v21 = sub_10000BFDC(v19, v20, &v43);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Generating new request for AVCMomentsMediaType %{public}s", v17, 0xCu);
    sub_10000C54C(v18);
    sub_10000C9F4();

    a2 = v41;
    sub_10000C9F4();
  }

  v22 = [objc_allocWithZone(AVCMediaRecorderRequestConfiguration) init];
  v23 = [a1 sandboxURL];
  v24 = [v23 URL];

  sub_10003958C();
  sub_10003955C(v25);
  v27 = v26;
  (*(v7 + 8))(v11, v42);
  [v22 setDirectoryURL:v27];

  [v22 setMediaType:5];
  [v22 setRequestMode:1];
  v28 = *(v3 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcMoments);
  if (v28 && (v29 = [v28 newRequestWithConfiguration:v22]) != 0)
  {
    v30 = v29;
    a2[3] = sub_10000C944(0, &qword_100058F90, AVCMomentsRequest_ptr);
    a2[4] = &off_1000515F0;

    *a2 = v30;
  }

  else
  {
    v31 = v22;
    v32 = sub_10003970C();
    v33 = sub_1000399AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136446210;
      sub_10000C944(0, &qword_100058C98, AVCMediaRecorderRequestConfiguration_ptr);
      v36 = v31;
      v37 = sub_10003989C();
      v39 = sub_10000BFDC(v37, v38, &v43);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Generating request failed %{public}s", v34, 0xCu);
      sub_10000C54C(v35);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    sub_10000C714();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }
}

uint64_t sub_10000B0B4(uint64_t a1)
{
  sub_10000C88C(a1, &v3, &qword_100058C70, qword_10003F690);
  if (v4)
  {
    sub_10000C5F8(&v3, v5);
    sub_10000BF68(v5, &v3);
    sub_10000BEC0(&qword_100058C80, &unk_10003F280);
    v1 = sub_10003989C();
    sub_10000C54C(v5);
  }

  else
  {
    sub_10000C8EC(&v3, &qword_100058C70, qword_10003F690);
    return 7104878;
  }

  return v1;
}

uint64_t sub_10000B1C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = sub_10000BEC0(a2, a3);
  v9 = sub_10000CA0C(v8);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = a4(0);
  sub_10000C9B8();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v23 - v19;
  sub_10000C88C(a1, v11, a2, a3);
  if (sub_10000BF08(v11, 1, v12) == 1)
  {
    sub_10000C8EC(v11, a2, a3);
    return 7104878;
  }

  else
  {
    (*(v14 + 32))(v20, v11, v12);
    (*(v14 + 16))(v18, v20, v12);
    v21 = sub_10003989C();
    (*(v14 + 8))(v20, v12);
  }

  return v21;
}

uint64_t sub_10000B3C0(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v3 = sub_10000CA0C(v2);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for MessageRequest(0);
  sub_10000C9A8();
  v8 = __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  sub_10000C88C(a1, v5, &qword_100058C90, &unk_10003F290);
  if (sub_10000BF08(v5, 1, v6) == 1)
  {
    sub_10000C8EC(v5, &qword_100058C90, &unk_10003F290);
    return 7104878;
  }

  else
  {
    sub_10000C768(v5, v12);
    sub_10000C7CC(v12, v10);
    v13 = sub_10003989C();
    sub_10000C830(v12);
  }

  return v13;
}

uint64_t sub_10000B540()
{
  sub_10000C714();
  swift_allocError();
  *v0 = 2;
  return swift_willThrow();
}

id sub_10000B5D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMoments(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaMoments(uint64_t a1)
{
  result = qword_100058C60;
  if (!qword_100058C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B760(uint64_t a1)
{
  result = sub_10003962C();
  if (v2 <= 0x3F)
  {
    result = sub_1000395CC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10000B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v11 = sub_10000CA0C(v10);
  __chkstk_darwin(v11);
  v13 = &v54[-1] - v12;
  v14 = sub_1000395CC();
  sub_10000C9B8();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10000C9CC();
  v20 = v19 - v18;
  if (a5)
  {
    swift_errorRetain();
    if (qword_100058AA0 != -1)
    {
      sub_10000C994();
      swift_once();
    }

    v21 = sub_10003972C();
    sub_10000BF30(v21, qword_10005AB20);
    sub_10000BF68(a2, v56);
    swift_errorRetain();
    v22 = sub_10003970C();
    v23 = sub_1000399AC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v24 = 136446466;
      sub_10000BF68(v56, v54);
      v25 = sub_10000B0B4(v54);
      v27 = v26;
      sub_10000C8EC(v54, &qword_100058C70, qword_10003F690);
      sub_10000C54C(v56);
      v28 = sub_10000BFDC(v25, v27, &v55);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v54[0] = a5;
      swift_errorRetain();
      sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
      v29 = sub_10003989C();
      v31 = sub_10000BFDC(v29, v30, &v55);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Moments finished processing request %{public}s with error %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C54C(v56);
    }

    v38 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError);
    if (v38)
    {
      v39 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError + 8);
      sub_10000BF68(a2, v56);

      v38(v56, a5);
      sub_10000BFCC(v38, v39);

      sub_10000C8EC(v56, &qword_100058C70, qword_10003F690);
    }

    else
    {
    }
  }

  else
  {
    sub_10000C88C(a4, v13, &unk_100058FA0, &unk_10003F260);
    if (sub_10000BF08(v13, 1, v14) == 1)
    {
      sub_10000C8EC(v13, &unk_100058FA0, &unk_10003F260);
      if (qword_100058AA0 != -1)
      {
        sub_10000C994();
        swift_once();
      }

      v32 = sub_10003972C();
      sub_10000BF30(v32, qword_10005AB20);
      v33 = sub_10003970C();
      v34 = sub_1000399AC();
      v35 = sub_10000CA00();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Moments finished without an error or a videoURL", v37, 2u);
        sub_10000C9F4();
      }
    }

    else
    {
      (*(v16 + 32))(v20, v13, v14);
      if (qword_100058AA0 != -1)
      {
        sub_10000C994();
        swift_once();
      }

      v40 = sub_10003972C();
      sub_10000BF30(v40, qword_10005AB20);
      sub_10000BF68(a2, v56);
      v41 = sub_10003970C();
      v42 = sub_1000399CC();
      v43 = sub_10000CA00();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v45 = 136446210;
        sub_10000BF68(v56, v54);
        v46 = sub_10000B0B4(v54);
        v48 = v47;
        sub_10000C8EC(v54, &qword_100058C70, qword_10003F690);
        sub_10000C54C(v56);
        v49 = sub_10000BFDC(v46, v48, &v55);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "Moments finished processing request %{public}s", v45, 0xCu);
        sub_10000C54C(v53);
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        sub_10000C54C(v56);
      }

      v50 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing);
      if (v50)
      {
        v51 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing + 8);

        v50(a2, v20);
        sub_10000BFCC(v50, v51);
      }

      (*(v16 + 8))(v20, v14);
    }
  }

  v52 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcMoments);
  *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_avcMoments) = 0;
}

uint64_t sub_10000BEC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000BF30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BFCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000BFDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C0A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000C598(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000C54C(v11);
  return v7;
}

unint64_t sub_10000C0A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C1A0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_100039B3C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000C1A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C1EC(a1, a2);
  sub_10000C304(&off_100051478);
  return v3;
}

char *sub_10000C1EC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1000398DC())
  {
    result = sub_10000C3E8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100039AFC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_100039B3C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000C304(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000C458(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000C3E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000BEC0(&qword_100058C78, &qword_10003F278);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000C458(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000BEC0(&qword_100058C78, &qword_10003F278);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000C54C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000C598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C5F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10000C610()
{
  result = qword_1000591C0;
  if (!qword_1000591C0)
  {
    sub_1000399DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000591C0);
  }

  return result;
}

unint64_t sub_10000C668()
{
  result = qword_1000591D0;
  if (!qword_1000591D0)
  {
    sub_10000C6CC(&qword_100059560, &unk_10003F800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000591D0);
  }

  return result;
}

uint64_t sub_10000C6CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000C714()
{
  result = qword_100058C88;
  if (!qword_100058C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058C88);
  }

  return result;
}

uint64_t sub_10000C768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C830(uint64_t a1)
{
  v2 = type metadata accessor for MessageRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C88C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000BEC0(a3, a4);
  sub_10000C9A8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000C8EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000BEC0(a2, a3);
  sub_10000C9A8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000C944(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000C984(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000C9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_10000BFCC(v5, v6);
}

Swift::Int sub_10000CA50(unsigned __int8 a1)
{
  sub_100039C1C();
  sub_100039C2C(a1);
  return sub_100039C3C();
}

Swift::Int sub_10000CAB4()
{
  v1 = *v0;
  sub_100039C1C();
  sub_100039C2C(v1);
  return sub_100039C3C();
}

id sub_10000CAF8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1000395CC();
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(TUFeatureFlags) init];
  v8 = [v7 transcriptionEvaluationEnabled];

  if (v8)
  {
    v9 = sub_10000D470();
    v10(v9);
    v11 = type metadata accessor for TextCaptionsWriter(0);
    swift_allocObject();
    v12 = sub_10000DB54(v6, a1);
    result = a1;
    v14 = &off_1000519C8;
  }

  else
  {
    v11 = type metadata accessor for WebVTTCaptionsWriter();
    v15 = sub_10000D470();
    v16(v15);
    result = sub_100021914(v6, a1);
    v12 = result;
    v14 = &off_100052400;
  }

  a2[3] = v11;
  a2[4] = v14;
  *a2 = v12;
  return result;
}

void sub_10000CC7C()
{
  v2 = v0;
  sub_10000BF68(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request, v9);
  sub_10000D3B0(v9, v9[3]);
  v3 = sub_10000D45C();
  v4(v3);
  sub_10000C54C(v9);
  if (!v1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine);
    if (v5)
    {
      v6 = v5;
      sub_10000FAEC();
    }

    v7 = *(v2 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine);
    if (v7)
    {
      v8 = v7;
      sub_10000FAEC();
    }

    *(v2 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) = 1;
  }
}

void sub_10000CD58()
{
  v2 = v0;
  sub_10000BF68(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request, v9);
  sub_10000D3B0(v9, v9[3]);
  v3 = sub_10000D45C();
  v4(v3);
  sub_10000C54C(v9);
  if (!v1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine);
    if (v5)
    {
      v6 = v5;
      sub_10000FB14();
    }

    v7 = *(v2 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine);
    if (v7)
    {
      v8 = v7;
      sub_10000FB14();
    }

    *(v2 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) = 2;
  }
}

void sub_10000CE34()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine);
  if (v2)
  {
    v3 = v2;
    sub_10000FB14();
  }

  v4 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine);
  if (v4)
  {
    v5 = v4;
    sub_10000FB14();
  }

  *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) = 3;
}

id sub_10000CEF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaRequest(uint64_t a1)
{
  result = qword_100058CC8;
  if (!qword_100058CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D05C(uint64_t a1)
{
  sub_10003962C();
  if (v1 <= 0x3F)
  {
    sub_10000D154(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000D154(uint64_t a1)
{
  if (!qword_100058CD8)
  {
    sub_1000395CC();
    v1 = sub_100039A3C();
    if (!v2)
    {
      atomic_store(v1, &qword_100058CD8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaRequest.MediaRequestState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaRequest.MediaRequestState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000D30CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000D35C()
{
  result = qword_100058CE0;
  if (!qword_100058CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058CE0);
  }

  return result;
}

void *sub_10000D3B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D3F4(uint64_t a1)
{
  v2 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MessageControllerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageControllerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000D5D8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000D610(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000514A0;
  v6._object = a2;
  v4 = sub_100039B8C(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000D65C(char a1)
{
  result = 0x5364696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0x556E776F6E6B6E75;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6575716552637661;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10000D77C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000D610(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000D7AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000D65C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10000D7DC()
{
  result = qword_100058CE8;
  if (!qword_100058CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058CE8);
  }

  return result;
}

unint64_t sub_10000D840(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051550;
  v6._object = a2;
  v4 = sub_100039B8C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000D8B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000D840(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10000D8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D90C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000D90C(char a1)
{
  if (!a1)
  {
    return 0x676E6974696177;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x64657472617473;
}

uint64_t getEnumTagSinglePayload for MessageControllerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageControllerState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000DAC4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000DB00()
{
  result = qword_100058CF0;
  if (!qword_100058CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058CF0);
  }

  return result;
}

uint64_t sub_10000DB54(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_text);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_fileURL;
  sub_1000395CC();
  sub_10000C9A8();
  (*(v7 + 32))(v2 + v6, a1);
  *(v2 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_queue) = a2;
  return v2;
}

void sub_10000DBE0()
{
  v1 = v0;
  v2 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1000397CC();
  sub_10000C9B8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C9CC();
  v11 = v10 - v9;
  v12 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_queue);
  *(v10 - v9) = v12;
  (*(v7 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v12;
  LOBYTE(v12) = sub_1000397EC();
  (*(v7 + 8))(v11, v5);
  if (v12)
  {
    if (qword_100058AA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000EAE0(&qword_100058AA0);
LABEL_3:
  v14 = sub_10003972C();
  sub_10000BF30(v14, qword_10005AB20);

  v15 = sub_10003970C();
  v16 = sub_1000399CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v1;
    v30 = v18;
    *v17 = 136315394;
    type metadata accessor for TextCaptionsWriter(0);

    v19 = sub_10003989C();
    v21 = sub_10000BFDC(v19, v20, &v30);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_fileURL;
    v23 = sub_1000395CC();
    sub_10000C9A8();
    (*(v24 + 16))(v4, v1 + v22, v23);
    sub_10000E998(v4, 0, 1, v23);
    v25 = sub_10000B198(v4);
    v27 = v26;
    sub_10000C8EC(v4, &unk_100058FA0, &unk_10003F260);
    v28 = sub_10000BFDC(v25, v27, &v30);

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "Start writing for %s to %s", v17, 0x16u);
    swift_arrayDestroy();
    sub_10000EB00(v18);
    sub_10000EB00(v17);
  }
}

uint64_t sub_10000DF00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000397CC();
  sub_10000C9B8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000C9CC();
  v10 = v9 - v8;
  v11 = *(v2 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_queue);
  *(v9 - v8) = v11;
  (*(v6 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v11;
  LOBYTE(v11) = sub_1000397EC();
  result = (*(v6 + 8))(v10, v4);
  if (v11)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      sub_10000E9C0(0, v14, 0);
      v15 = (a1 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        v20 = v19 + 1;

        if (v19 >= v18 >> 1)
        {
          sub_10000E9C0((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20;
        v21 = &_swiftEmptyArrayStorage[2 * v19];
        v21[4] = v17;
        v21[5] = v16;
        v15 += 5;
        --v14;
      }

      while (v14);
    }

    else
    {
      v20 = _swiftEmptyArrayStorage[2];
    }

    v22 = (v2 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_text);
    v23 = *(v2 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_text);
    v24 = *(v2 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_text + 8);
    v29 = v22;

    v25 = 0;
    v26 = &_swiftEmptyArrayStorage[5];
    while (1)
    {
      if (v20 == v25)
      {

        *v29 = v23;
        v29[1] = v24;
      }

      if (v25 >= _swiftEmptyArrayStorage[2])
      {
        break;
      }

      v28 = *(v26 - 1);
      v27 = *v26;
      if (!v23 && v24 == 0xE000000000000000 || (sub_100039BAC() & 1) != 0)
      {
      }

      else
      {

        v30._countAndFlagsBits = 32;
        v30._object = 0xE100000000000000;
        sub_1000398CC(v30);

        v31._countAndFlagsBits = v28;
        v31._object = v27;
        sub_1000398CC(v31);

        v28 = v23;
        v27 = v24;
      }

      v26 += 2;
      ++v25;
      v23 = v28;
      v24 = v27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E1B8()
{
  v1 = v0;
  v2 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_10003988C();
  sub_10000C9B8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C9CC();
  v11 = v10 - v9;
  v12 = sub_1000397CC();
  sub_10000C9B8();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000C9CC();
  v18 = v17 - v16;
  v19 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_queue);
  *(v17 - v16) = v19;
  (*(v14 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v20 = v19;
  LOBYTE(v19) = sub_1000397EC();
  (*(v14 + 8))(v18, v12);
  if (v19)
  {
    if (qword_100058AA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000EAE0(&qword_100058AA0);
LABEL_3:
  v21 = sub_10003972C();
  sub_10000BF30(v21, qword_10005AB20);

  v22 = sub_10003970C();
  v23 = sub_1000399CC();

  v24 = os_log_type_enabled(v22, v23);
  v33 = v5;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35[0] = v26;
    *v25 = 136315138;
    v34 = v1;
    type metadata accessor for TextCaptionsWriter(0);
    v32 = v4;

    v27 = sub_10003989C();
    v29 = sub_10000BFDC(v27, v28, v35);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Stopping %s", v25, 0xCu);
    sub_10000C54C(v26);
    sub_10000EB00(v26);
    sub_10000EB00(v25);
  }

  v30 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_text + 8);
  v35[0] = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_text);
  v35[1] = v30;

  sub_10003987C();
  sub_10000E944();
  sub_100039A5C();
  (*(v7 + 8))(v11, v33);
}

uint64_t sub_10000E708()
{
  v1 = OBJC_IVAR____TtC18FTLivePhotoService18TextCaptionsWriter_fileURL;
  sub_1000395CC();
  sub_10000C9A8();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_10000E784()
{
  sub_10000E708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TextCaptionsWriter(uint64_t a1)
{
  result = qword_100058D28;
  if (!qword_100058D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E830(uint64_t a1)
{
  result = sub_1000395CC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000E944()
{
  result = qword_1000591E0;
  if (!qword_1000591E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000591E0);
  }

  return result;
}

char *sub_10000E9C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E9E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10000BEC0(&qword_100058DF8, &unk_10003F5D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100023BB4(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EAE0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000EB00(uint64_t a1)
{
}

uint64_t sub_10000EB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003962C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000BF08(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10000EBF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003962C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000E998(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MessageRequest(uint64_t a1)
{
  result = qword_100058E58;
  if (!qword_100058E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000ECE8(uint64_t a1)
{
  result = sub_10003962C();
  if (v2 <= 0x3F)
  {
    result = sub_10000ED6C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000ED6C()
{
  result = qword_100058E68;
  if (!qword_100058E68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100058E68);
  }

  return result;
}

id sub_10000EE48(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___FTMomentsRequest_avcRequest] = a1;
  *&v2[OBJC_IVAR___FTMomentsRequest_session] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_10000EF34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000EFE4()
{
  type metadata accessor for FTMessagingIDSService();
  result = sub_100023F48(0xD00000000000002ALL, 0x800000010003DF10);
  qword_100058ED0 = result;
  return result;
}

id sub_10000F054()
{
  if (qword_100058A80 != -1)
  {
    swift_once();
  }

  v1 = qword_100058ED0;

  return v1;
}

id sub_10000F0FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTMessagingIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F158(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    if (a2)
    {
      v7 = sub_10000F94C();
      v8 = &off_1000515F0;
      v9 = a2;
    }

    else
    {
      v7 = sub_10000FA30();
    }

    v13[0] = v9;
    v13[3] = v7;
    v13[4] = v8;
    swift_getObjectType();
    v10 = *(v6 + 16);
    v11 = a2;
    v12 = sub_10000FA18();
    v10(v12);
    swift_unknownObjectRelease();
    return sub_10000F990(v13, &qword_100058C70, qword_10003F690);
  }

  return result;
}

uint64_t sub_10000F248(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    if (a2)
    {
      v7 = sub_10000F94C();
      v8 = &off_1000515F0;
      v9 = a2;
    }

    else
    {
      v7 = sub_10000FA30();
    }

    v13[0] = v9;
    v13[3] = v7;
    v13[4] = v8;
    swift_getObjectType();
    v10 = *(v6 + 24);
    v11 = a2;
    v12 = sub_10000FA18();
    v10(v12);
    swift_unknownObjectRelease();
    return sub_10000F990(v13, &qword_100058C70, qword_10003F690);
  }

  return result;
}

void sub_10000F338(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, a4, a5);
}

uint64_t sub_10000F3D4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000F4EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v18[3] = sub_10000F94C();
    v18[4] = &off_1000515F0;
    v18[0] = a2;
    v15 = a5;
    v16 = *(v13 + 32);
    v17 = a2;
    v16(a1, v18, a3, a4, v15, ObjectType, v13);
    swift_unknownObjectRelease();
    return sub_10000C54C(v18);
  }

  return result;
}

uint64_t sub_10000F77C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000F874()
{
  *&v0[OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageMomentsAVCDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000F8E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessageMomentsAVCDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000F94C()
{
  result = qword_100058F90;
  if (!qword_100058F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100058F90);
  }

  return result;
}

uint64_t sub_10000F990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000BEC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_10000FA44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FA58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10000FB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012C88();
  v6 = v5;
  v8 = v7;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v9);
  sub_10000C9CC();
  v10 = sub_100012C1C();
  sub_10000C9B8();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100012BF4();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  v20[4] = v8;
  v20[5] = v14;
  sub_100012BA0();
  sub_100012BC0(COERCE_DOUBLE(1107296256));
  v20[2] = v15;
  v20[3] = v6;
  v16 = _Block_copy(v20);
  v17 = v3;
  sub_10003974C();
  sub_10001282C();
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_100012884();
  sub_100012BD8();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v16);
  v18 = sub_100012C38();
  v19(v18);
  (*(v12 + 8))(v4, v10);

  sub_100012C70();
}

char *sub_10000FD0C(void *a1, void *a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_avcCaptionsClient] = 0;
  *&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_lastCaptions] = 0;
  v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_hasReceivedAudio] = 0;
  *&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_startTime] = 0;
  *&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_streamToken] = a2;
  *&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_queue] = a4;
  sub_10000BF68(a1, &v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_captionsWriter]);
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v10 = a4;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = sub_10000FE58(a2, a3);

  v13 = sub_10003966C();
  (*(*(v13 - 8) + 8))(a3, v13);
  sub_10000C54C(a1);
  v14 = *(v11 + OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_avcCaptionsClient);
  *(v11 + OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_avcCaptionsClient) = v12;

  return v11;
}

void *sub_10000FE58(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000BEC0(&qword_100059070, &unk_10003F2A0);
  __chkstk_darwin(v7 - 8);
  v9 = v58 - v8;
  if (!a1)
  {
    if (qword_100058AA0 != -1)
    {
      swift_once();
    }

    v37 = sub_10003972C();
    sub_10000BF30(v37, qword_10005AB20);
    v38 = sub_10003970C();
    v39 = sub_1000399AC();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_19;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Requesting captions provider with stream streamToken == 0. Will not create client.", v40, 2u);
    goto LABEL_18;
  }

  v10 = [objc_allocWithZone(AVCCaptionsClient) initWithDelegate:v3 streamToken:a1];
  if (!v10)
  {
    if (qword_100058AA0 != -1)
    {
      swift_once();
    }

    v41 = sub_10003972C();
    sub_10000BF30(v41, qword_10005AB20);
    v38 = sub_10003970C();
    v42 = sub_1000399AC();
    if (!os_log_type_enabled(v38, v42))
    {
      goto LABEL_19;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v59 = a1;
    v60 = v44;
    *v43 = 136315138;
    v45 = sub_10003989C();
    v47 = sub_10000BFDC(v45, v46, &v60);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v42, "Failed to create AVCCaptionsClient with stream token %s.", v43, 0xCu);
    sub_10000C54C(v44);

LABEL_18:

LABEL_19:

    return 0;
  }

  v11 = v10;
  v58[3] = ObjectType;
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v12 = sub_10003972C();
  v13 = sub_10000BF30(v12, qword_10005AB20);
  v14 = v11;
  v15 = sub_10003970C();
  v16 = sub_1000399CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v58[1] = v13;
    v18 = v17;
    v19 = swift_slowAlloc();
    v58[2] = a2;
    v59 = a1;
    v60 = v19;
    *v18 = 136315394;
    v20 = sub_10003989C();
    v22 = sub_10000BFDC(v20, v21, &v60);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v59 = v14;
    sub_1000127D0();
    v23 = v14;
    v24 = sub_10003989C();
    v26 = sub_10000BFDC(v24, v25, &v60);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Captions client created for token %s: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v27 = [objc_allocWithZone(AVCCaptionsConfig) init];
  isa = sub_10003964C().super.isa;
  [v27 setLocale:isa];

  [v27 setUsage:3];
  [v14 configureCaptions:v27];
  v29 = v27;
  v30 = v3;
  v31 = sub_10003970C();
  v32 = sub_1000399CC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = [v29 locale];
    if (v34)
    {
      v35 = v34;
      sub_10003965C();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v48 = sub_10003966C();
    sub_10000E998(v9, v36, 1, v48);
    v49 = sub_10000B170(v9);
    v51 = v50;
    sub_100012768(v9);
    v52 = sub_10000BFDC(v49, v51, &v60);

    *(v33 + 4) = v52;
    *(v33 + 12) = 2080;
    v59 = v30;
    v53 = v30;
    v54 = sub_10003989C();
    v56 = sub_10000BFDC(v54, v55, &v60);

    *(v33 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v31, v32, "Captions client configure with locale: %s self %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v11;
}

uint64_t sub_100010480(char *a1)
{
  swift_getObjectType();
  [objc_opt_self() mediaTimeBase];
  *&a1[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_startTime] = v2;
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v3 = sub_10003972C();
  sub_10000BF30(v3, qword_10005AB20);
  v4 = a1;
  v5 = sub_10003970C();
  v6 = sub_1000399CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = v4;
    v9 = sub_10003989C();
    v11 = sub_10000BFDC(v9, v10, v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_10003989C();
    v14 = sub_10000BFDC(v12, v13, v19);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting captions machine %s at timestamp %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_avcCaptionsClient];
  if (v15)
  {
    [v15 enableCaptions:1];
  }

  sub_10000BF68(&v4[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_captionsWriter], v19);
  v16 = v20;
  v17 = v21;
  sub_10000D3B0(v19, v20);
  (*(v17 + 8))(v16, v17);
  return sub_10000C54C(v19);
}

uint64_t sub_1000106CC(void *a1)
{
  swift_getObjectType();
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10003972C();
  sub_10000BF30(v2, qword_10005AB20);
  v3 = a1;
  v4 = sub_10003970C();
  v5 = sub_1000399CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136315138;
    v8 = v3;
    v9 = sub_10003989C();
    v11 = sub_10000BFDC(v9, v10, v23);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Stopping captions machine %s", v6, 0xCu);
    sub_10000C54C(v7);
  }

  v12 = *&v3[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_avcCaptionsClient];
  if (v12)
  {
    [v12 enableCaptions:0];
  }

  v13 = OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_lastCaptions;
  v14 = *&v3[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_lastCaptions];
  if (v14)
  {
    sub_10000BF68(&v3[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_captionsWriter], v23);
    v15 = v24;
    v16 = v25;
    sub_10000D3B0(v23, v24);
    v17 = v14;
    v18 = sub_100010930(v17);
    (*(v16 + 16))(v18, v15);

    sub_10000C54C(v23);
    v19 = *&v3[v13];
    *&v3[v13] = 0;
  }

  sub_10000BF68(&v3[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_captionsWriter], v23);
  v20 = v24;
  v21 = v25;
  sub_10000D3B0(v23, v24);
  (*(v21 + 24))(v20, v21);
  return sub_10000C54C(v23);
}

uint64_t sub_100010930(void *a1)
{
  [a1 utteranceStartTimestamp];
  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_startTime);
  result = sub_10001292C(a1);
  if (v7)
  {
    v8 = result;
    v9 = v7;
    v10 = v4 - v5;
    [a1 utteranceDuration];
    v12 = v11;
    v13 = [a1 utteranceNumber];
    sub_10000BEC0(&qword_100059098, qword_10003F730);
    result = swift_allocObject();
    *(result + 16) = xmmword_10003F6C0;
    *(result + 32) = v8;
    *(result + 40) = v9;
    *(result + 48) = v12;
    *(result + 56) = v10;
    *(result + 64) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100010B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012C88();
  v26 = v6;
  v25 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v14);
  sub_10000C9CC();
  v27 = sub_100012C1C();
  sub_10000C9B8();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100012BF4();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v11;
  *(v18 + 32) = v9;
  *(v18 + 40) = v4;
  v28[4] = v25;
  v28[5] = v18;
  sub_100012BA0();
  sub_100012BC0(COERCE_DOUBLE(1107296256));
  v28[2] = v19;
  v28[3] = v26;
  v20 = _Block_copy(v28);
  v21 = v13;
  swift_errorRetain();
  v22 = v4;
  sub_10003974C();
  sub_10001282C();
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_100012884();
  sub_100012BD8();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v20);
  v23 = sub_100012C38();
  v24(v23);
  (*(v16 + 8))(v5, v27);

  sub_100012C70();
}

void sub_100010D64(void *a1, char a2, void *a3, void *a4, const char *a5)
{
  swift_getObjectType();
  if (qword_100058AA0 != -1)
  {
    sub_10000EAE0(&qword_100058AA0);
  }

  v9 = sub_10003972C();
  sub_10000BF30(v9, qword_10005AB20);
  v10 = a1;
  swift_errorRetain();
  v11 = a4;
  oslog = sub_10003970C();
  v12 = sub_1000399CC();

  if (os_log_type_enabled(oslog, v12))
  {
    v33 = a5;
    v13 = 7104878;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315906;
    if (a1)
    {
      sub_1000127D0();
      v16 = v10;
      v17 = sub_10003989C();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v22 = sub_10000BFDC(v17, v19, &v35);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2080;
    v23 = sub_10003989C();
    v25 = sub_10000BFDC(v23, v24, &v35);

    *(v14 + 14) = v25;
    *(v14 + 22) = 2080;
    if (a3)
    {
      swift_errorRetain();
      sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
      v13 = sub_10003989C();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_10000BFDC(v13, v27, &v35);

    *(v14 + 24) = v28;
    *(v14 + 32) = 2080;
    v29 = v11;
    v30 = sub_10003989C();
    v32 = sub_10000BFDC(v30, v31, &v35);

    *(v14 + 34) = v32;
    _os_log_impl(&_mh_execute_header, oslog, v12, v33, v14, 0x2Au);
    swift_arrayDestroy();
    sub_10000EB00(v15);
    sub_10000EB00(v14);

    sub_100012C54();
  }

  else
  {
    sub_100012C54();
  }
}

void sub_100011160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012C88();
  v24 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v13);
  sub_10000C9CC();
  v25 = sub_100012C1C();
  sub_10000C9B8();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100012BF4();
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v10;
  *(v17 + 32) = v4;
  v26[4] = v8;
  v26[5] = v17;
  sub_100012BA0();
  sub_100012BC0(COERCE_DOUBLE(1107296256));
  v26[2] = v18;
  v26[3] = v24;
  v19 = _Block_copy(v26);
  v20 = v12;
  v21 = v4;
  sub_10003974C();
  sub_10001282C();
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_100012884();
  sub_100012BD8();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v19);
  v22 = sub_100012C38();
  v23(v22);
  (*(v15 + 8))(v5, v25);

  sub_100012C70();
}

void sub_100011348(void *a1, char a2, void *a3, const char *a4)
{
  swift_getObjectType();
  if (qword_100058AA0 != -1)
  {
    sub_10000EAE0(&qword_100058AA0);
  }

  v7 = sub_10003972C();
  sub_10000BF30(v7, qword_10005AB20);
  v8 = a1;
  v9 = a3;
  oslog = sub_10003970C();
  v10 = sub_1000399CC();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315650;
    if (a1)
    {
      sub_1000127D0();
      v13 = v8;
      v14 = sub_10003989C();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v19 = sub_10000BFDC(v14, v16, &v28);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    type metadata accessor for AVCCaptionsReason(0);
    v20 = sub_10003989C();
    v22 = sub_10000BFDC(v20, v21, &v28);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2080;
    v23 = v9;
    v24 = sub_10003989C();
    v26 = sub_10000BFDC(v24, v25, &v28);

    *(v11 + 24) = v26;
    _os_log_impl(&_mh_execute_header, oslog, v10, a4, v11, 0x20u);
    swift_arrayDestroy();
    sub_10000EB00(v12);
    sub_10000EB00(v11);

    sub_100012C54();
  }

  else
  {
    sub_100012C54();
  }
}

void sub_100011614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012C88();
  v6 = v5;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v7);
  sub_10000C9CC();
  sub_100012C1C();
  sub_10000C9B8();
  __chkstk_darwin(v8);
  sub_100012BF4();
  sub_100012CA0();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  v17[4] = sub_1000129C4;
  v17[5] = v9;
  sub_100012BA0();
  sub_100012BC0(COERCE_DOUBLE(1107296256));
  v17[2] = v10;
  v17[3] = &unk_100051B10;
  v11 = _Block_copy(v17);
  v12 = v4;
  sub_10003974C();
  sub_10001282C();
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_100012884();
  sub_100012BD8();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v11);
  v13 = sub_100012C38();
  v14(v13);
  v15 = sub_100012C44();
  v16(v15);

  sub_100012C70();
}

void sub_1000117EC(char a1, void *a2)
{
  swift_getObjectType();
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v3 = sub_10003972C();
  sub_10000BF30(v3, qword_10005AB20);
  v4 = a2;
  v5 = sub_10003970C();
  v6 = sub_1000399CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_10003989C();
    v10 = sub_10000BFDC(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = v4;
    v12 = sub_10003989C();
    v14 = sub_10000BFDC(v12, v13, &v15);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Captions didDetectGibberish: isGibberish: %s self %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v4 + OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_hasReceivedAudio) = 1;
}

void sub_100011A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012C88();
  v6 = v5;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v7);
  sub_10000C9CC();
  sub_100012C1C();
  sub_10000C9B8();
  __chkstk_darwin(v8);
  sub_100012BF4();
  sub_100012CA0();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v6;
  v18[4] = sub_100012924;
  v18[5] = v9;
  sub_100012BA0();
  sub_100012BC0(COERCE_DOUBLE(1107296256));
  v18[2] = v10;
  v18[3] = &unk_100051AC0;
  v11 = _Block_copy(v18);
  v12 = v6;
  v13 = v4;
  sub_10003974C();
  sub_10001282C();
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_100012884();
  sub_100012BD8();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v11);
  v14 = sub_100012C38();
  v15(v14);
  v16 = sub_100012C44();
  v17(v16);

  sub_100012C70();
}

void sub_100011BFC(void *a1, void *a2)
{
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v4 = sub_10003972C();
  sub_10000BF30(v4, qword_10005AB20);
  v5 = a1;
  v6 = sub_10003970C();
  v7 = sub_1000399CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v62[0] = v9;
    *v8 = 136315138;
    v65 = v5;
    type metadata accessor for CaptionsMachine();
    v10 = v5;
    v11 = sub_10003989C();
    v13 = sub_10000BFDC(v11, v12, v62);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Captions didUpdateCaptions self %s", v8, 0xCu);
    sub_10000C54C(v9);
  }

  v5[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_hasReceivedAudio] = 1;
  v14 = OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_lastCaptions;
  v15 = *&v5[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_lastCaptions];
  if (v15)
  {
    v16 = v15;
    v17 = [v16 utteranceNumber];
    if (a2)
    {
      if (v17 != [a2 utteranceNumber])
      {
        v39 = v5;
        v40 = v16;
        v41 = a2;
        v42 = sub_10003970C();
        v43 = sub_1000399CC();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v62[0] = swift_slowAlloc();
          *v44 = 136315650;
          v65 = v39;
          type metadata accessor for CaptionsMachine();
          v61 = v14;
          v45 = v39;
          v46 = sub_10003989C();
          v48 = sub_10000BFDC(v46, v47, v62);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2080;
          LODWORD(v65) = [v40 utteranceNumber];
          v49 = sub_10003989C();
          v51 = sub_10000BFDC(v49, v50, v62);

          *(v44 + 14) = v51;
          *(v44 + 22) = 2080;
          LODWORD(v65) = [v41 utteranceNumber];
          v52 = sub_10003989C();
          v54 = sub_10000BFDC(v52, v53, v62);

          *(v44 + 24) = v54;
          v14 = v61;
          _os_log_impl(&_mh_execute_header, v42, v43, "updating transcript with lastCaptions because utterance numbers are different %s last: %s current: %s", v44, 0x20u);
          swift_arrayDestroy();
        }

        v55 = *&v5[v14];
        *&v5[v14] = 0;

        sub_10000BF68(&v39[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_captionsWriter], v62);
        v56 = v64;
        sub_10000D3B0(v62, v63);
        sub_100010930(v40);
        (*(v56 + 16))();

        goto LABEL_20;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_10:
  v18 = [a2 utteranceComplete];
  v19 = a2;
  v20 = v5;
  v21 = v19;
  v22 = sub_10003970C();
  v23 = sub_1000399CC();

  v24 = os_log_type_enabled(v22, v23);
  if (v18)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v62[0] = v26;
      *v25 = 136315394;
      v65 = v20;
      type metadata accessor for CaptionsMachine();
      v27 = v20;
      v28 = sub_10003989C();
      v30 = sub_10000BFDC(v28, v29, v62);

      *(v25 + 4) = v30;
      *(v25 + 12) = 1024;
      v31 = [v21 utteranceComplete];

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "updating transcript with utterance complete %s for utterance %{BOOL}d", v25, 0x12u);
      sub_10000C54C(v26);
    }

    else
    {
    }

    v57 = *&v5[v14];
    *&v5[v14] = 0;

    sub_10000BF68(&v20[OBJC_IVAR____TtC18FTLivePhotoService15CaptionsMachine_captionsWriter], v62);
    v58 = v64;
    sub_10000D3B0(v62, v63);
    sub_100010930(v21);
    (*(v58 + 16))();

LABEL_20:
    sub_10000C54C(v62);
    return;
  }

  if (v24)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62[0] = v33;
    *v32 = 136315394;
    v65 = v20;
    type metadata accessor for CaptionsMachine();
    v34 = v20;
    v35 = sub_10003989C();
    v37 = sub_10000BFDC(v35, v36, v62);

    *(v32 + 4) = v37;
    *(v32 + 12) = 1024;
    v38 = [v21 utteranceComplete];

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "updating last caption %s for utterance %{BOOL}d", v32, 0x12u);
    sub_10000C54C(v33);
  }

  else
  {
  }

  v59 = *&v5[v14];
  *&v5[v14] = a2;
  v60 = v21;
}

void sub_100012320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012C88();
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v4);
  sub_10000C9CC();
  sub_100012C1C();
  sub_10000C9B8();
  __chkstk_darwin(v5);
  sub_100012BF4();
  v12[4] = sub_1000124D0;
  v12[5] = 0;
  sub_100012BA0();
  sub_100012BC0(COERCE_DOUBLE(1107296256));
  v12[2] = v6;
  v12[3] = &unk_100051A70;
  v7 = _Block_copy(v12);
  sub_10003974C();
  sub_10001282C();
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_100012884();
  sub_100012BD8();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v7);
  v8 = sub_100012C38();
  v9(v8);
  v10 = sub_100012C44();
  v11(v10);
  sub_100012C70();
}

void sub_1000124D0()
{
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v0 = sub_10003972C();
  sub_10000BF30(v0, qword_10005AB20);
  oslog = sub_10003970C();
  v1 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Captions server did die", v2, 2u);
  }
}

uint64_t sub_100012680()
{
  swift_getObjectType();
  v1._countAndFlagsBits = sub_100039C4C();
  sub_1000398CC(v1);

  v2._countAndFlagsBits = sub_100039B9C();
  sub_1000398CC(v2);

  v3._countAndFlagsBits = 0x3D6E656B6F7420;
  v3._object = 0xE700000000000000;
  sub_1000398CC(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_1000398CC(v4);
  return 60;
}

uint64_t sub_100012768(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100059070, &unk_10003F2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000127D0()
{
  result = qword_100059078;
  if (!qword_100059078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100059078);
  }

  return result;
}

uint64_t sub_100012814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001282C()
{
  result = qword_100059080;
  if (!qword_100059080)
  {
    sub_10003973C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059080);
  }

  return result;
}

unint64_t sub_100012884()
{
  result = qword_100059090;
  if (!qword_100059090)
  {
    sub_10000C6CC(&qword_100059088, &unk_10003FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059090);
  }

  return result;
}

uint64_t sub_1000128E8()
{
  sub_100012CA0();

  return _swift_deallocObject(v1);
}

uint64_t sub_10001292C(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10003986C();

  return v3;
}

uint64_t sub_100012990()
{
  sub_100012CA0();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000129D0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100012A98()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100012B0C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100012C1C()
{

  return sub_10003976C();
}

uint64_t sub_100012CAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100012DA4()
{
  sub_100012C88();
  sub_1000399FC();
  sub_10000C9B8();
  v16 = v1;
  v17 = v0;
  __chkstk_darwin(v0);
  sub_10000C9CC();
  v15 = v3 - v2;
  sub_1000399DC();
  sub_10001B598();
  __chkstk_darwin(v4);
  sub_10000C9CC();
  v5 = sub_10003976C();
  v6 = sub_10000CA0C(v5);
  __chkstk_darwin(v6);
  sub_10000C9CC();
  type metadata accessor for MessageMoments();
  swift_allocObject();
  v7 = sub_1000332A4();

  BSAuditTokenForCurrentProcess();
  v8 = [objc_allocWithZone(type metadata accessor for MediaAssetManager()) init];
  sub_10000BEC0(&qword_1000591A0, &qword_10003F7F8);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000395CC();
  sub_10000C944(0, &qword_1000591A8, RBSAssertion_ptr);
  sub_10001B254(&unk_1000591B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  *(v9 + 112) = sub_10003981C();
  sub_1000396EC();
  v10 = sub_1000396DC();
  v11 = sub_10001AA40(0, v7, v18, v19, v20, v21, v8, v9, v10);

  sub_10000C944(0, &unk_100059550, OS_dispatch_queue_ptr);
  sub_10003975C();
  sub_10001B254(&qword_1000591C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000BEC0(&qword_100059560, &unk_10003F800);
  sub_10001B0D8(&qword_1000591D0, &qword_100059560, &unk_10003F800);
  sub_100039A7C();
  (*(v16 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v12 = sub_100039A1C();
  v13 = [objc_opt_self() sharedInstance];
  type metadata accessor for MediaRecordingController();
  swift_allocObject();
  v14 = sub_1000300D8();
  sub_10001A918(v11, v13, v14, v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_100012C70();
}

uint64_t sub_1000131AC()
{
  v1 = (v0 + OBJC_IVAR___FTMomentsController_messageController);
  swift_beginAccess();
  sub_10000D3B0(v1, v1[3]);
  return sub_10001CE60();
}

id sub_100013350(uint64_t a1)
{
  v2 = v1;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v4 = sub_10003972C();
  sub_10001B574(v4, qword_10005AAF0);
  swift_unknownObjectRetain();
  v5 = sub_10003970C();
  v6 = sub_1000399CC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_10001B508();
    v8 = sub_10001B550();
    v18 = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    sub_10000BEC0(&unk_100059188, &qword_10003F7D0);
    v9 = sub_10003989C();
    v11 = sub_10000BFDC(v9, v10, &v18);

    *(v7 + 4) = v11;
    sub_10001B4B4();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_10000C54C(v8);
    sub_10001B498();
    sub_10001B47C();
  }

  *(v2 + OBJC_IVAR___FTMomentsController_clientObject) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return [*(v2 + OBJC_IVAR___FTMomentsController_livePhotoController) setClientObject:a1];
}

void sub_10001353C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v4 = sub_10003972C();
  sub_10001B574(v4, qword_10005AAF0);
  swift_errorRetain();
  v5 = sub_10003970C();
  v6 = sub_1000399CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_10001B508();
    v8 = sub_10001B624();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    sub_10001B4B4();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100019CD4(v8, &qword_100058DF0, &unk_10003F990);
    sub_10001B498();
    sub_10001B47C();
  }

  v15 = *(v3 + OBJC_IVAR___FTMomentsController_clientObject);
  if (v15)
  {
    swift_unknownObjectRetain();
    v16 = sub_10003950C();
    [v15 didReceiveMessageRecordingError:v16];

    swift_unknownObjectRelease();
  }
}

id sub_1000136B8(void *a1, SEL *a2)
{
  v4 = v2;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v6 = sub_10003972C();
  sub_10000BF30(v6, qword_10005AAF0);
  v7 = a1;
  v8 = sub_10003970C();
  v9 = sub_1000399CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_10001B508();
    v11 = sub_10001B550();
    v17 = v11;
    *v10 = 136315138;
    sub_10000C944(0, &qword_100059198, TUMomentsRawVideoMessageDescriptor_ptr);
    v12 = v7;
    v13 = sub_10003989C();
    v15 = sub_10000BFDC(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Request finished and generated descriptor %s", v10, 0xCu);
    sub_10000C54C(v11);
    sub_10000EB00(v11);
    sub_10001B498();
  }

  result = *(v4 + OBJC_IVAR___FTMomentsController_clientObject);
  if (result)
  {
    return [result *a2];
  }

  return result;
}

void sub_100013830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v4 = sub_10003972C();
  sub_10001B574(v4, qword_10005AAF0);
  swift_errorRetain();
  v5 = sub_10003970C();
  v6 = sub_1000399CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_10001B508();
    v8 = sub_10001B624();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    sub_10001B4B4();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100019CD4(v8, &qword_100058DF0, &unk_10003F990);
    sub_10001B498();
    sub_10001B47C();
  }

  v15 = *(v3 + OBJC_IVAR___FTMomentsController_clientObject);
  if (v15)
  {
    swift_unknownObjectRetain();
    v16 = sub_10003950C();
    [v15 didReceiveMediaRecordingError:v16];

    swift_unknownObjectRelease();
  }
}

void sub_1000139A0()
{
  v1 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v2 = sub_10003972C();
  sub_10000BF30(v2, qword_10005AAF0);
  v3 = sub_10003970C();
  v4 = sub_1000399AC();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_10001B4B4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_10001B47C();
  }

  if (*(v1 + OBJC_IVAR___FTMomentsController_mediaRecordingController))
  {

    sub_10002FD2C(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

id sub_100013C14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100013D08()
{
  sub_100012C88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v9 = sub_10000CA0C(v8);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v23[-v13];
  __chkstk_darwin(v12);
  v16 = &v23[-v15];
  if (*(v5 + OBJC_IVAR___FTMomentsController_mediaRecordingController))
  {

    v1(v7);

    v17 = sub_10003962C();
    v18 = 0;
  }

  else
  {
    v17 = sub_10003962C();
    v18 = 1;
  }

  sub_10000E998(v16, v18, 1, v17);
  sub_100019C64(v16, v14);
  sub_10003962C();
  isa = 0;
  if (sub_10000BF08(v14, 1, v17) != 1)
  {
    isa = sub_1000395EC().super.isa;
    sub_10001B598();
    (*(v20 + 8))(v14, v17);
  }

  v21 = sub_10001B5F0();
  v22(v21);

  sub_100019CD4(v16, &unk_100059160, &unk_10003F780);
  _Block_release(v3);
  sub_100012C70();
}

void sub_1000140F8(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a3;
  v8 = a1;
  sub_100013D08();
  _Block_release(v6);
}

void sub_100014194(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  if (*(a2 + OBJC_IVAR___FTMomentsController_mediaRecordingController))
  {

    sub_10002EBD4(a1);
  }

  a3[2](a3, 0);

  _Block_release(a3);
}

void sub_100014278(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10003950C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000142F8()
{
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v0 = sub_10003972C();
  sub_10001B574(v0, qword_10005AAF0);
  v1 = sub_10003970C();
  v2 = sub_1000399CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Registering XPC client", v3, 2u);
    sub_10000EB00(v3);
  }

  sub_10001B4C4();

  return v4();
}

uint64_t sub_100014468(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10001450C;

  return sub_1000142DC();
}

uint64_t sub_10001450C()
{
  sub_10001B470();
  sub_10001B58C();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_10001B460();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_10001B4C4();

  return v6();
}

void sub_10001463C(uint64_t a1, const char *a2)
{
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v3 = sub_10003972C();
  sub_10001B574(v3, qword_10005AAF0);
  swift_unknownObjectRetain();
  oslog = sub_10003970C();
  v4 = sub_1000399CC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_10001B508();
    v6 = sub_10001B550();
    v11 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    sub_10000BEC0(&unk_100059188, &qword_10003F7D0);
    v7 = sub_10003989C();
    v9 = sub_10000BFDC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 0xCu);
    sub_10000C54C(v6);
    sub_10001B47C();
    sub_10000EB00(v5);
  }

  else
  {
  }
}

void sub_1000147B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_10001463C(a3, a4);
  swift_unknownObjectRelease();
}

void sub_100014824()
{
  sub_100012C88();
  v3 = v2;
  v28 = v4;
  v27 = v5;
  v7 = v6;
  v9 = v8;
  v26 = v10;
  v12 = v11;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v13);
  sub_10000C9CC();
  sub_10001B450();
  v29 = sub_10003976C();
  sub_10000C9B8();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000C9CC();
  sub_10001B568();
  v17 = [*&v0[OBJC_IVAR___FTMomentsController_livePhotoController] queue];
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v12;
  *(v18 + 32) = v26;
  *(v18 + 40) = v9;
  *(v18 + 48) = v7;
  *(v18 + 56) = v27;
  *(v18 + 64) = v28;
  *(v18 + 72) = v3;
  sub_10001B42C(v18);
  v30[1] = 1107296256;
  sub_10001B418();
  v30[2] = v19;
  v30[3] = &unk_1000520B0;
  v20 = _Block_copy(v30);

  v21 = v0;

  sub_10003974C();
  sub_10001B400();
  sub_10001B254(v22, v23, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_10001B0D8(&qword_100059090, &qword_100059088, &unk_10003FF50);
  sub_10001B530();
  sub_10001B5D0();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v20);

  v24 = sub_10001B5A4();
  v25(v24);
  (*(v15 + 8))(v1, v29);

  sub_100012C70();
}

void sub_100014AB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, Class a5, char a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v14 = *(a1 + OBJC_IVAR___FTMomentsController_livePhotoController);
  if (!a4)
  {
    v18 = v14;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v14;
  v12 = sub_10003985C();
  if (a5)
  {
LABEL_3:
    a5 = sub_1000397FC().super.isa;
  }

LABEL_4:
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a7;
  v16[4] = a8;
  v19[4] = sub_10001A530;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1000150C0;
  v19[3] = &unk_100052100;
  v17 = _Block_copy(v19);

  [v14 registerStreamToken:a2 requesterID:v12 remoteIDSDestinations:a5 remoteMomentsAvailable:a6 & 1 reply:v17];
  _Block_release(v17);
}

void sub_100014C28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v7 = sub_10003972C();
    sub_10000BF30(v7, qword_10005AAF0);
    swift_errorRetain();
    v8 = sub_10003970C();
    v9 = sub_1000399AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = a4;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37 = v13;
      *v11 = 136315394;
      v14 = sub_10003989C();
      v16 = sub_10000BFDC(v14, v15, &v37);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error registering streamToken %s %@", v11, 0x16u);
      sub_100019CD4(v12, &qword_100058DF0, &unk_10003F990);

      sub_10000C54C(v13);

      a4 = v10;
    }

    swift_errorRetain();
    a4(a1, a2);
  }

  else if (a1)
  {
    v18 = qword_100058A90;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_10003972C();
    sub_10000BF30(v20, qword_10005AAF0);
    v21 = v19;
    v22 = sub_10003970C();
    v23 = sub_1000399CC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = a4;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v25 = 136315394;
      v28 = sub_10003989C();
      v30 = sub_10000BFDC(v28, v29, &v37);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v21;
      *v26 = a1;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "Registered streamToken %s %@", v25, 0x16u);
      sub_100019CD4(v26, &qword_100058DF0, &unk_10003F990);

      sub_10000C54C(v27);

      a4 = v24;
    }

    v32 = v21;
    a4(a1, 0);
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v33 = sub_10003972C();
    sub_10000BF30(v33, qword_10005AAF0);
    v34 = sub_10003970C();
    v35 = sub_1000399BC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown error registering streamToken", v36, 2u);
    }

    a4(0, 0);
  }
}

void sub_1000150C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100015264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10003950C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1000152D4()
{
  sub_100012C88();
  v3 = v0;
  v5 = v4;
  v36 = v6;
  v8 = v7;
  v9 = sub_10003973C();
  sub_10000C9B8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000C9CC();
  sub_10001B450();
  sub_10003976C();
  sub_10000C9B8();
  v37 = v14;
  v38 = v13;
  __chkstk_darwin(v13);
  sub_10000C9CC();
  sub_10001B568();
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v15 = sub_10003972C();
  sub_10001B574(v15, qword_10005AAF0);
  v16 = sub_10003970C();
  v17 = sub_1000399CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_10001B508();
    v35 = v5;
    v34 = sub_10001B550();
    v39[0] = v34;
    *v18 = 136315138;
    v19 = v8;
    v20 = sub_10003989C();
    v22 = v2;
    v23 = v1;
    v24 = v9;
    v25 = v3;
    v26 = sub_10000BFDC(v20, v21, v39);

    *(v18 + 4) = v26;
    v3 = v25;
    v9 = v24;
    v1 = v23;
    v2 = v22;
    v8 = v19;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unregistering streamToken %s", v18, 0xCu);
    sub_10000C54C(v34);
    v5 = v35;
    sub_10000EB00(v34);
    sub_10000EB00(v18);
  }

  v27 = [*&v3[OBJC_IVAR___FTMomentsController_livePhotoController] queue];
  v28 = swift_allocObject();
  v28[2] = v3;
  v28[3] = v8;
  v28[4] = v36;
  v28[5] = v5;
  sub_10001B42C(v28);
  v39[1] = 1107296256;
  sub_10001B418();
  v39[2] = v29;
  v39[3] = &unk_100051FE8;
  v30 = _Block_copy(v39);
  v31 = v3;

  sub_10003974C();
  sub_10001B400();
  sub_10001B254(v32, v33, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_10001B0D8(&qword_100059090, &qword_100059088, &unk_10003FF50);
  sub_10001B530();
  sub_10001B5D0();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v30);

  (*(v11 + 8))(v1, v9);
  (*(v37 + 8))(v2, v38);

  sub_100012C70();
}

void sub_100015650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR___FTMomentsController_livePhotoController);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_10001A4B4;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100015A74;
  v11[3] = &unk_100052038;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 unregisterStreamToken:a2 reply:v9];
  _Block_release(v9);
}

uint64_t sub_10001575C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v5 = sub_10003972C();
    sub_10000BF30(v5, qword_10005AAF0);
    swift_errorRetain();
    v6 = sub_10003970C();
    v7 = sub_1000399AC();

    if (!os_log_type_enabled(v6, v7))
    {

      return a3(a1);
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    v11 = sub_10003989C();
    v13 = sub_10000BFDC(v11, v12, &v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error unregistering streamToken %s %@", v8, 0x16u);
    sub_100019CD4(v9, &qword_100058DF0, &unk_10003F990);

    sub_10000C54C(v10);
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v15 = sub_10003972C();
    sub_10000BF30(v15, qword_10005AAF0);
    v6 = sub_10003970C();
    v16 = sub_1000399CC();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_10003989C();
      v21 = sub_10000BFDC(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v6, v16, "Unregistered streamToken %s", v17, 0xCu);
      sub_10000C54C(v18);
    }
  }

  return a3(a1);
}

void sub_100015A74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100015B74()
{
  sub_100012C88();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v47 = v8;
  v48 = v9;
  v11 = v10;
  v51 = v12;
  v53 = v13;
  v52 = v14;
  v15 = sub_10003973C();
  sub_10000C9B8();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000C9CC();
  sub_10001B450();
  sub_10003976C();
  sub_10000C9B8();
  v49 = v20;
  v50 = v19;
  __chkstk_darwin(v19);
  sub_10000C9CC();
  sub_10001B568();
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v21 = sub_10003972C();
  sub_10001B574(v21, qword_10005AAF0);

  v22 = sub_10003970C();
  v23 = sub_1000399CC();

  if (os_log_type_enabled(v22, v23))
  {
    v43 = v7;
    v44 = v5;
    v45 = v3;
    v46 = v17;
    v24 = sub_10001B550();
    v25 = swift_slowAlloc();
    v54 = v25;
    *v24 = 136315650;
    LODWORD(v55) = v52;
    type metadata accessor for TUMomentsMediaType(0);
    v26 = sub_10003989C();
    v28 = sub_10000BFDC(v26, v27, &v54);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v55 = v53;
    v29 = sub_10003989C();
    v31 = sub_10000BFDC(v29, v30, &v54);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    if (v11)
    {
      v55 = v51;
      v56 = v11;

      v32 = sub_10003989C();
      v34 = v33;
    }

    else
    {
      v34 = 0xE300000000000000;
      v32 = 7104878;
    }

    v35 = sub_10000BFDC(v32, v34, &v54);

    *(v24 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v22, v23, "Start request mediaType %s streamToken %s requesteeID %s", v24, 0x20u);
    swift_arrayDestroy();
    sub_10000EB00(v25);
    sub_10000EB00(v24);

    v3 = v45;
    v17 = v46;
    v7 = v43;
    v5 = v44;
  }

  else
  {
  }

  v36 = [*&v3[OBJC_IVAR___FTMomentsController_livePhotoController] queue];
  v37 = swift_allocObject();
  *(v37 + 16) = v3;
  *(v37 + 24) = v52;
  *(v37 + 32) = v53;
  *(v37 + 40) = v51;
  *(v37 + 48) = v11;
  *(v37 + 56) = v47;
  *(v37 + 64) = v48;
  *(v37 + 72) = v7;
  *(v37 + 80) = v5;
  v59 = sub_10001A380;
  v60 = v37;
  v55 = _NSConcreteStackBlock;
  v56 = 1107296256;
  sub_10001B418();
  v57 = v38;
  v58 = &unk_100051F20;
  v39 = _Block_copy(&v55);

  v40 = v3;
  sub_10003974C();
  v54 = _swiftEmptyArrayStorage;
  sub_10001B400();
  sub_10001B254(v41, v42, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_10001B0D8(&qword_100059090, &qword_100059088, &unk_10003FF50);
  sub_10001B5D0();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v39);

  (*(v17 + 8))(v1, v15);
  (*(v49 + 8))(v2, v50);

  sub_100012C70();
}

void sub_100015FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a1 + OBJC_IVAR___FTMomentsController_livePhotoController);
  if (a5)
  {
    v16 = v15;
    v17 = sub_10003985C();
  }

  else
  {
    v18 = v15;
    v17 = 0;
  }

  if (a7)
  {
    a7 = sub_10003985C();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a8;
  *(v19 + 56) = a9;
  v21[4] = sub_10001A3FC;
  v21[5] = v19;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001678C;
  v21[3] = &unk_100051F70;
  v20 = _Block_copy(v21);

  [v15 startRequestWithMediaType:a2 forStreamToken:a3 requesteeID:v17 destinationID:a7 reply:v20];
  _Block_release(v20);
}

uint64_t sub_100016180(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void))
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v11 = sub_10003972C();
    sub_10000BF30(v11, qword_10005AAF0);
    swift_errorRetain();

    v12 = sub_10003970C();
    v13 = sub_1000399AC();

    if (os_log_type_enabled(v12, v13))
    {
      v54 = a8;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v14 = 136315906;
      type metadata accessor for TUMomentsMediaType(0);
      v16 = sub_10003989C();
      v18 = sub_10000BFDC(v16, v17, &v55);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_10003989C();
      v21 = sub_10000BFDC(v19, v20, &v55);

      *(v14 + 14) = v21;
      *(v14 + 22) = 2080;
      if (a7)
      {

        v22 = sub_10003989C();
        v24 = v23;
      }

      else
      {
        v22 = 7104878;
        v24 = 0xE300000000000000;
      }

      v46 = sub_10000BFDC(v22, v24, &v55);

      *(v14 + 24) = v46;
      *(v14 + 32) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 34) = v47;
      *v15 = v47;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error starting request mediaType %s streamToken %s requesteeID %s error %@", v14, 0x2Au);
      sub_100019CD4(v15, &qword_100058DF0, &unk_10003F990);

      swift_arrayDestroy();

      a8 = v54;
    }

    else
    {
    }

    swift_errorRetain();
    a8(0, 0, a3);
  }

  else
  {
    if (a2)
    {
      if (qword_100058A90 != -1)
      {
        swift_once();
      }

      v27 = sub_10003972C();
      sub_10000BF30(v27, qword_10005AAF0);

      v28 = sub_10003970C();
      v29 = sub_1000399CC();

      if (os_log_type_enabled(v28, v29))
      {
        v53 = v29;
        v30 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v30 = 136315906;
        type metadata accessor for TUMomentsMediaType(0);
        v31 = sub_10003989C();
        v33 = sub_10000BFDC(v31, v32, &v55);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2080;
        v34 = sub_10003989C();
        v36 = sub_10000BFDC(v34, v35, &v55);

        *(v30 + 14) = v36;
        *(v30 + 22) = 2080;
        if (a7)
        {

          v37 = sub_10003989C();
          v39 = v38;
        }

        else
        {
          v37 = 7104878;
          v39 = 0xE300000000000000;
        }

        v49 = sub_10000BFDC(v37, v39, &v55);

        *(v30 + 24) = v49;
        *(v30 + 32) = 2080;

        v50 = sub_10003989C();
        v52 = sub_10000BFDC(v50, v51, &v55);

        *(v30 + 34) = v52;
        _os_log_impl(&_mh_execute_header, v28, v53, "Started request mediaType %s streamToken %s requesteeID %s transactionID %s", v30, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
      }

      v44 = a1;
      v45 = a2;
    }

    else
    {
      if (qword_100058A90 != -1)
      {
        swift_once();
      }

      v40 = sub_10003972C();
      sub_10000BF30(v40, qword_10005AAF0);
      v41 = sub_10003970C();
      v42 = sub_1000399BC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Unknown error starting request", v43, 2u);
      }

      v44 = 0;
      v45 = 0;
    }

    return (a8)(v44, v45, 0);
  }
}

uint64_t sub_10001678C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_10003986C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_10001693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_10003985C();
    if (a3)
    {
LABEL_3:
      v7 = sub_10003950C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1000169CC()
{
  sub_100012C88();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_10003973C();
  sub_10000C9B8();
  __chkstk_darwin(v10);
  sub_10000C9CC();
  sub_10001B450();
  v23 = sub_10003976C();
  sub_10000C9B8();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000C9CC();
  sub_10001B568();
  v14 = [*&v0[OBJC_IVAR___FTMomentsController_livePhotoController] queue];
  sub_10001B5C4();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v9;
  v15[4] = v7;
  v15[5] = v5;
  v15[6] = v3;
  sub_10001B42C(v15);
  v24[1] = 1107296256;
  sub_10001B418();
  v24[2] = v16;
  v24[3] = &unk_100051E58;
  v17 = _Block_copy(v24);
  v18 = v0;

  sub_10003974C();
  sub_10001B400();
  sub_10001B254(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000BEC0(&qword_100059088, &unk_10003FF50);
  sub_10001B0D8(&qword_100059090, &qword_100059088, &unk_10003FF50);
  sub_10001B530();
  sub_10001B5D0();
  sub_100039A7C();
  sub_100012C0C();
  sub_100039A0C();
  _Block_release(v17);

  v21 = sub_10001B5A4();
  v22(v21);
  (*(v12 + 8))(v1, v23);

  sub_100012C70();
}

void sub_100016C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR___FTMomentsController_livePhotoController);
  v10 = sub_10003985C();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v13[4] = sub_10001A31C;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015A74;
  v13[3] = &unk_100051EA8;
  v12 = _Block_copy(v13);

  [v9 endRequestWithTransactionID:v10 reply:v12];
  _Block_release(v12);
}

uint64_t sub_100016D58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v8 = sub_10003972C();
    sub_10000BF30(v8, qword_10005AAF0);
    swift_errorRetain();

    v9 = sub_10003970C();
    v10 = sub_1000399AC();

    if (!os_log_type_enabled(v9, v10))
    {

      return a4(a1);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_10000BFDC(a2, a3, &v20);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error ending request transactionID %s error %@", v11, 0x16u);
    sub_100019CD4(v12, &qword_100058DF0, &unk_10003F990);

    sub_10000C54C(v13);
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v15 = sub_10003972C();
    sub_10000BF30(v15, qword_10005AAF0);

    v9 = sub_10003970C();
    v16 = sub_1000399CC();

    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10000BFDC(a2, a3, &v20);
      _os_log_impl(&_mh_execute_header, v9, v16, "Ended request transactionID %s", v17, 0xCu);
      sub_10000C54C(v18);
    }
  }

  return a4(a1);
}

uint64_t sub_10001711C(uint64_t a1, uint64_t a2)
{
  v6 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v7 = sub_10000CA0C(v6);
  __chkstk_darwin(v7);
  sub_10001B450();
  sub_10003993C();
  sub_10001B5B8();
  sub_10000E998(v8, v9, v10, v11);
  sub_10001B5C4();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v2;

  v14 = sub_10001B540();
  sub_100025224(v14, v15, v3, v16, v12);
}

uint64_t sub_1000171FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_100017220, 0, 0);
}

uint64_t sub_100017220()
{
  sub_10001B470();
  sub_10001B4E4();
  sub_10001B63C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1000172BC;

  return sub_10001CF2C();
}

uint64_t sub_1000172BC()
{
  sub_10001B470();
  sub_10001B58C();
  sub_10001B520();
  *v3 = v2;
  v4 = *v1;
  sub_10001B460();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_100017418;
  }

  else
  {
    v7 = sub_1000173B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000173B8()
{
  sub_10001B470();
  (*(v0 + 48))(0);
  sub_10001B4C4();

  return v1();
}

uint64_t sub_100017418()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  swift_errorRetain();
  v2(v1);

  sub_10001B4C4();

  return v3();
}

void sub_10001752C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v7 = __chkstk_darwin(v6 - 8);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v58 = (&v52 - v10);
  v11 = __chkstk_darwin(v9);
  v54 = &v52 - v12;
  __chkstk_darwin(v11);
  v55 = &v52 - v13;
  v14 = sub_10003962C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  if (qword_100058A90 != -1)
  {
    swift_once();
  }

  v21 = sub_10003972C();
  sub_10000BF30(v21, qword_10005AAF0);
  v22 = sub_10003970C();
  v23 = sub_1000399CC();
  v24 = os_log_type_enabled(v22, v23);
  v59 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v53 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v56 = v15;
    v52 = v27;
    v62[0] = v27;
    *v26 = 136315138;
    LODWORD(v61[0]) = a1;
    type metadata accessor for TUMessageMediaType(0);
    v28 = sub_10003989C();
    v30 = v18;
    v31 = v14;
    v32 = v20;
    v33 = a1;
    v34 = sub_10000BFDC(v28, v29, v62);

    *(v26 + 4) = v34;
    a1 = v33;
    v20 = v32;
    v14 = v31;
    v18 = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Start recording message mediaType %s", v26, 0xCu);
    sub_10000C54C(v52);
    v15 = v56;

    a2 = v53;
  }

  v35 = (a2 + OBJC_IVAR___FTMomentsController_messageController);
  swift_beginAccess();
  sub_10000D3B0(v35, v35[3]);
  sub_10001D1FC(a1, v20);
  v58 = *(v15 + 16);
  v58(v18, v20, v14);
  v36 = sub_10003970C();
  v37 = sub_1000399CC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v56 = v15;
    v39 = v38;
    v57 = swift_slowAlloc();
    v61[0] = v57;
    *v39 = 136315394;
    v60 = a1;
    type metadata accessor for TUMessageMediaType(0);
    v40 = sub_10003989C();
    v42 = sub_10000BFDC(v40, v41, v61);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    sub_10001B254(&unk_100059178, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = sub_100039B9C();
    v45 = v44;
    v46 = *(v56 + 8);
    v46(v18, v14);
    v47 = sub_10000BFDC(v43, v45, v61);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "Started recording message mediaType %s uuid %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v46 = *(v15 + 8);
    v46(v18, v14);
  }

  v48 = v59;
  v49 = v55;
  v58(v55, v20, v14);
  sub_10000E998(v49, 0, 1, v14);
  v50 = v54;
  sub_100019C64(v49, v54);
  if (sub_10000BF08(v50, 1, v14) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000395EC().super.isa;
    v46(v50, v14);
  }

  (v48)[2](v48, isa, 0);

  sub_100019CD4(v49, &unk_100059160, &unk_10003F780);
  v46(v20, v14);
  _Block_release(v48);
}

void sub_100017DA8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v46 = a2;
  v5 = sub_10003962C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - v10;
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  if (qword_100058A90 != -1)
  {
    swift_once();
  }

  v14 = sub_10003972C();
  v15 = sub_10000BF30(v14, qword_10005AAF0);
  v44 = *(v6 + 16);
  v44(v13, a1, v5);
  v45 = v15;
  v16 = sub_10003970C();
  v17 = sub_1000399CC();
  v18 = os_log_type_enabled(v16, v17);
  v48 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v42 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = v5;
    v41 = v21;
    v50[0] = v21;
    *v20 = 136315138;
    sub_10001B254(&unk_100059178, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = sub_100039B9C();
    v23 = v11;
    v24 = a3;
    v26 = v25;
    v27 = *(v6 + 8);
    v27(v13, v47);
    v28 = sub_10000BFDC(v22, v26, v50);
    a3 = v24;
    v11 = v23;

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "End recording message uuid %s", v20, 0xCu);
    sub_10000C54C(v41);
    v5 = v47;

    a1 = v42;
  }

  else
  {

    v27 = *(v6 + 8);
    v27(v13, v5);
  }

  v29 = (v46 + OBJC_IVAR___FTMomentsController_messageController);
  swift_beginAccess();
  sub_10000D3B0(v29, v29[3]);
  sub_10001D7E4(a1);
  v30 = a3;
  v44(v11, a1, v5);
  v31 = sub_10003970C();
  v32 = sub_1000399CC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v27;
    v35 = swift_slowAlloc();
    v49 = v35;
    *v33 = 136315138;
    sub_10001B254(&unk_100059178, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = sub_100039B9C();
    v38 = v37;
    v34(v11, v5);
    v39 = sub_10000BFDC(v36, v38, &v49);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Ended recording message uuid %s", v33, 0xCu);
    sub_10000C54C(v35);
  }

  else
  {

    v27(v11, v5);
  }

  v30[2](v30, 0);
  _Block_release(v30);
}

void sub_1000184A8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_10003962C();
  __chkstk_darwin(v6);
  v7 = (a2 + OBJC_IVAR___FTMomentsController_messageController);
  swift_beginAccess();
  sub_10000D3B0(v7, v7[3]);
  swift_beginAccess();
  sub_100035ED0(a1);
  swift_endAccess();
  a3[2](a3, 0);
  _Block_release(a3);
}

uint64_t sub_10001886C(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(uint64_t, id, void *))
{
  v8 = sub_10003962C();
  sub_10000C9B8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000C9CC();
  v14 = v13 - v12;
  v15 = _Block_copy(a4);
  sub_10003960C();
  _Block_copy(v15);
  v16 = a1;
  a5(v14, v16, v15);
  _Block_release(v15);

  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_100018978(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v9 = sub_10000CA0C(v8);
  __chkstk_darwin(v9);
  sub_10001B568();
  sub_10003993C();
  sub_10001B5B8();
  sub_10000E998(v10, v11, v12, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v3;
  v16 = a1;

  v17 = sub_10001B540();
  sub_100025224(v17, v18, v4, v19, v14);
}

uint64_t sub_100018A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_100018A8C, 0, 0);
}

uint64_t sub_100018A8C()
{
  sub_10001B470();
  sub_10001B4E4();
  sub_10001B63C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  sub_10001B5DC(v1);

  return sub_10001E0E8();
}

uint64_t sub_100018B24()
{
  sub_10001B470();
  sub_10001B58C();
  sub_10001B520();
  *v3 = v2;
  v4 = *v1;
  sub_10001B460();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_100018C80;
  }

  else
  {
    v7 = sub_100018C20;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100018C20()
{
  sub_10001B470();
  (*(v0 + 56))(0);
  sub_10001B4C4();

  return v1();
}

uint64_t sub_100018C80()
{
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v1 = v0[6];
  v2 = sub_10003972C();
  sub_10001B574(v2, qword_10005AAF0);
  v3 = v1;
  swift_errorRetain();
  v4 = sub_10003970C();
  v5 = sub_1000399AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error sending video message request %@ error %@", v7, 0x16u);
    sub_10000BEC0(&qword_100058DF0, &unk_10003F990);
    swift_arrayDestroy();
    sub_10001B498();
    sub_10000EB00(v7);
  }

  v11 = v0[10];
  v12 = v0[7];

  swift_errorRetain();
  v12(v11);

  sub_10001B4C4();

  return v13();
}

void sub_100018EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100012C88();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_10003962C();
  sub_10000C9B8();
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  v35 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v36 = sub_10000CA0C(v35);
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  sub_10003993C();
  sub_10001B5B8();
  sub_10000E998(v39, v40, v41, v42);
  (*(v31 + 16))(&a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v29);
  v43 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v20;
  (*(v31 + 32))(&v44[v43], &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v45 = &v44[(v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v45 = v26;
  *(v45 + 1) = v24;
  v46 = v20;

  v47 = sub_10001B540();
  sub_100025224(v47, v48, v38, v49, v44);

  sub_100012C70();
}

uint64_t sub_100019094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_10003962C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100019158, 0, 0);
}

uint64_t sub_100019158()
{
  sub_10001B470();
  sub_10001B4E4();
  sub_10001B63C();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  sub_10001B5DC(v1);

  return sub_10001F8E0();
}

uint64_t sub_1000191F0()
{
  sub_10001B470();
  sub_10001B58C();
  sub_10001B520();
  *v3 = v2;
  v4 = *v1;
  sub_10001B460();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_100019354;
  }

  else
  {
    v7 = sub_1000192EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000192EC()
{
  sub_10001B470();
  (*(v0 + 56))(0);

  sub_10001B4C4();

  return v1();
}

uint64_t sub_100019354()
{
  v27 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0(&qword_100058A90);
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = sub_10003972C();
  sub_10000BF30(v5, qword_10005AAF0);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_10003970C();
  v7 = sub_1000399AC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = sub_10001B624();
    v25 = sub_10001B550();
    v26 = v25;
    *v11 = 136315394;
    sub_10001B254(&unk_100059178, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_100039B9C();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_10000BFDC(v13, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error saving video message uuid %s error %@", v11, 0x16u);
    sub_100019CD4(v12, &qword_100058DF0, &unk_10003F990);
    sub_10000EB00(v12);
    sub_10000C54C(v25);
    sub_10000EB00(v25);
    sub_10000EB00(v11);
  }

  else
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[13];
  v22 = v0[7];
  swift_errorRetain();
  v22(v21);

  sub_10001B4C4();

  return v23();
}

void sub_100019734(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v7 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  if (qword_100058A90 != -1)
  {
    swift_once();
  }

  v8 = sub_10003972C();
  sub_10000BF30(v8, qword_10005AAF0);
  v9 = sub_10003970C();
  v10 = sub_1000399CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MomentsController resetting message controller", v11, 2u);
  }

  v12 = (a2 + OBJC_IVAR___FTMomentsController_messageController);
  swift_beginAccess();
  sub_10000D3B0(v12, v12[3]);
  sub_100020208(a1);
  a3[2](a3, 0);
  _Block_release(a3);
}

uint64_t sub_100019C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019CD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000BEC0(a2, a3);
  sub_10001B598();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100019D30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100019D70()
{
  v1 = sub_10003962C();
  sub_10000C9B8();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100019E48(uint64_t a1)
{
  v3 = *(sub_10003962C() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019F78;
  sub_10001B4D0();

  return sub_100019094(v8, v9, v10, v11, v12, v5, v6);
}

uint64_t sub_100019F78()
{
  sub_10001B470();
  sub_10001B58C();
  v1 = *v0;
  sub_10001B460();
  *v2 = v1;

  sub_10001B4C4();

  return v3();
}

uint64_t sub_10001A058()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A0A8(uint64_t a1)
{
  v3 = v1[5];
  v5 = v1[6];
  v4 = v1[7];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001B3BC;
  sub_10001B4D0();

  return sub_100018A68(v7, v8, v9, v10, v3, v5, v4);
}

uint64_t sub_10001A170()
{
  swift_unknownObjectRelease();

  sub_10001B5C4();

  return _swift_deallocObject(v1);
}

uint64_t sub_10001A1B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001B3BC;
  sub_10001B4D0();

  return sub_1000171FC(v6, v7, v8, v9, v3, v4);
}

uint64_t sub_10001A270()
{

  sub_10001B5C4();

  return _swift_deallocObject(v1);
}

uint64_t sub_10001A2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A2DC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A330()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A3BC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A430()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A47C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A4C8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A53C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10001A57C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001B3BC;

  return sub_100014468(v2, v3);
}

char *sub_10001A628(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5)
{
  v37[3] = type metadata accessor for MessageController(0);
  v37[4] = &off_100052328;
  v37[0] = a1;
  *&a5[OBJC_IVAR___FTMomentsController_clientObject] = 0;
  v10 = OBJC_IVAR___FTMomentsController_mediaRecordingController;
  *&a5[OBJC_IVAR___FTMomentsController_mediaRecordingController] = 0;
  sub_10001B300(v37, &a5[OBJC_IVAR___FTMomentsController_messageController]);
  *&a5[OBJC_IVAR___FTMomentsController_livePhotoController] = a2;
  *&a5[v10] = a3;
  *&a5[OBJC_IVAR___FTMomentsController_queue] = a4;
  v36.receiver = a5;
  v36.super_class = type metadata accessor for MomentsController();
  v34 = a2;
  v35 = a4;

  v11 = objc_msgSendSuper2(&v36, "init");
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = v11 + OBJC_IVAR___FTMomentsController_messageController;
  swift_beginAccess();
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);
  sub_10001B12C(v13, v15);
  v16 = *(v14 + 16);
  v17 = v11;
  v16(sub_10001B1B4, v12, v15, v14);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = *(v13 + 24);
  v20 = *(v13 + 32);
  sub_10001B12C(v13, v19);
  v21 = *(v20 + 40);
  v22 = v17;
  v21(sub_10001B1D8, v18, v19, v20);
  swift_endAccess();

  sub_10000C54C(v37);
  v23 = OBJC_IVAR___FTMomentsController_mediaRecordingController;
  v24 = *&v22[OBJC_IVAR___FTMomentsController_mediaRecordingController];
  if (v24 && (v25 = swift_allocObject(), *(v25 + 16) = v22, v26 = *(v24 + 56), v27 = *(v24 + 64), *(v24 + 56) = sub_10001B1FC, *(v24 + 64) = v25, v28 = v22, , sub_10000BFCC(v26, v27), , (v29 = *&v22[v23]) != 0))
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v31 = *(v29 + 72);
    v32 = *(v29 + 80);
    *(v29 + 72) = sub_10001B220;
    *(v29 + 80) = v30;

    sub_10000BFCC(v31, v32);
  }

  else
  {
  }

  return v22;
}

char *sub_10001A918(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = type metadata accessor for MessageController(0);
  v18 = &off_100052328;
  v16[0] = a1;
  v8 = objc_allocWithZone(type metadata accessor for MomentsController());
  v9 = sub_10001B12C(v16, v17);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10001A628(*v11, a2, a3, a4, v8);
  sub_10000C54C(v16);
  return v13;
}

char *sub_10001AA40(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, objc_class *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v59 = a8;
  v57 = a7;
  v53 = a6;
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v11 = *a9;
  v12 = sub_10003952C();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000395CC();
  v58 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MessageStore(0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[4] = &protocol witness table for VideoMessagingController;
  v67[3] = v11;
  v67[0] = a9;
  v66[3] = &type metadata for MessageControllerStateMachine;
  v66[4] = &off_100052C48;
  LOBYTE(v66[0]) = a1;
  v65[3] = type metadata accessor for MessageMoments();
  v65[4] = &off_100052A40;
  v65[0] = a2;
  v64[3] = &type metadata for AudioManager;
  v64[4] = &off_100052310;
  v20 = swift_allocObject();
  v64[0] = v20;
  v21 = v50;
  v20[2] = v49;
  v20[3] = v21;
  v22 = v53;
  v20[4] = v51;
  v20[5] = v22;
  v53 = type metadata accessor for MessageController(0);
  v23 = objc_allocWithZone(v53);
  v24 = sub_10001B12C(v66, &type metadata for MessageControllerStateMachine);
  v25 = sub_10001B12C(v64, &type metadata for AudioManager);
  v26 = *v24;
  v27 = v25[1];
  v68 = *v25;
  v69 = v27;
  v63[3] = &type metadata for MessageControllerStateMachine;
  v63[4] = &off_100052C48;
  LOBYTE(v63[0]) = v26;
  v62[3] = &type metadata for AudioManager;
  v62[4] = &off_100052310;
  v28 = swift_allocObject();
  v62[0] = v28;
  v29 = v69;
  *(v28 + 16) = v68;
  *(v28 + 32) = v29;
  v30 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_currentRequest;
  v31 = type metadata accessor for MessageRequest(0);
  sub_10000E998(&v23[v30], 1, 1, v31);
  v51 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_processAssertionManager;
  *&v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_processAssertionManager] = 0;
  v32 = &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestFinishedProcessing];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestError];
  *v33 = 0;
  *(v33 + 1) = 0;
  sub_10001B300(v63, &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine]);
  sub_10001B300(v65, &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_moments]);
  sub_10001B300(v62, &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager]);
  sub_10003954C();
  v34 = v52;
  (*(v58 + 16))(v19, v15, v52);
  sub_10003962C();
  sub_10001B254(&qword_1000591D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&v19[*(v17 + 32)] = sub_10003981C();
  sub_10000C944(0, &qword_100059198, TUMomentsRawVideoMessageDescriptor_ptr);
  *&v19[*(v17 + 36)] = sub_10003981C();
  strcpy(v60, "VideoMessages");
  v60[7] = -4864;
  v36 = v54;
  v35 = v55;
  v37 = v56;
  (*(v55 + 104))(v54, enum case for URL.DirectoryHint.inferFromPath(_:), v56);
  sub_10000E944();
  sub_1000395BC();
  (*(v35 + 8))(v36, v37);
  (*(v58 + 8))(v15, v34);
  sub_10001B29C(v19, &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore]);
  *&v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_mediaManager] = v57;
  *&v23[v51] = v59;

  sub_10001B300(v67, &v23[OBJC_IVAR____TtC18FTLivePhotoService17MessageController_videoMessagingController]);
  v61.receiver = v23;
  v61.super_class = v53;
  v38 = objc_msgSendSuper2(&v61, "init");
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v40 = v38 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_moments;
  swift_beginAccess();
  v41 = *(v40 + 24);
  v42 = *(v40 + 32);
  sub_10001B12C(v40, v41);
  v43 = *(v42 + 16);
  v44 = v38;
  v43(sub_10001B360, v39, v41, v42);
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  v46 = *(v40 + 24);
  v47 = *(v40 + 32);
  sub_10001B12C(v40, v46);
  (*(v47 + 40))(sub_10001B368, v45, v46, v47);
  swift_endAccess();

  sub_10000C54C(v67);
  sub_10000C54C(v65);
  sub_10000C54C(v62);
  sub_10000C54C(v63);
  sub_10000C54C(v64);
  sub_10000C54C(v66);
  return v44;
}

uint64_t sub_10001B0D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C6CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B12C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10001B17C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001B254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageStore(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B300(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_10001B598();
  (*v3)(a2);
  return a2;
}

uint64_t sub_10001B3E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10001B42C(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10001B47C()
{
}

uint64_t sub_10001B498()
{
}

uint64_t sub_10001B4E4()
{

  return swift_beginAccess();
}

uint64_t sub_10001B508()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B550()
{

  return swift_slowAlloc();
}

void sub_10001B604(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10001B624()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[121] = a4;
  v4[120] = a3;
  v4[119] = a2;
  v4[118] = a1;
  return _swift_task_switch(sub_10001B688, 0, 0);
}

uint64_t sub_10001B688()
{
  if (qword_100058A98 != -1)
  {
    sub_10001C35C(&qword_100058A98);
  }

  v1 = sub_10003972C();
  *(v0 + 976) = sub_10000BF30(v1, qword_10005AB08);
  v2 = sub_10003970C();
  v3 = sub_1000399CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_10001C394(&_mh_execute_header, v5, v6, "AudioManager start");
    sub_10000EB00(v4);
  }

  v7 = *(v0 + 968);
  v42 = v7;
  v8 = *(v0 + 960);
  v9 = *(v0 + 952);
  v10 = *(v0 + 944);

  v43 = HIDWORD(v7);
  v44 = objc_opt_self();
  sub_10000BEC0(&qword_1000591F0, &qword_10003F858);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003F810;
  v12 = kMXSessionProperty_AudioCategory;
  *(v0 + 872) = kMXSessionProperty_AudioCategory;
  v13 = v12;
  sub_10000BEC0(&qword_1000591F8, &qword_10003F860);
  sub_10001C170();
  sub_10001C37C(v0 + 872);
  *(inited + 96) = &type metadata for String;
  strcpy((inited + 72), "PlayAndRecord");
  *(inited + 86) = -4864;
  v14 = kMXSessionProperty_AudioMode;
  *(v0 + 880) = kMXSessionProperty_AudioMode;
  v15 = v14;
  sub_10001C37C(v0 + 880);
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = 0x6168436F65646956;
  *(inited + 152) = 0xE900000000000074;
  v16 = kMXSessionProperty_ClientPriority;
  *(v0 + 888) = kMXSessionProperty_ClientPriority;
  v17 = v16;
  sub_10001C37C(v0 + 888);
  *(inited + 240) = &type metadata for Int;
  *(inited + 216) = 10;
  v18 = kMXSessionProperty_CreateSpeakerDevice;
  *(v0 + 896) = kMXSessionProperty_CreateSpeakerDevice;
  v19 = v18;
  sub_10001C37C(v0 + 896);
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = 0;
  v20 = kMXSessionProperty_PrefersToPlayDuringWombat;
  *(v0 + 904) = kMXSessionProperty_PrefersToPlayDuringWombat;
  v21 = v20;
  sub_10001C37C(v0 + 904);
  *(inited + 384) = &type metadata for Int;
  *(inited + 360) = 1;
  *(v0 + 856) = 0xD000000000000020;
  *(v0 + 864) = 0x800000010003E2F0;
  sub_100039ADC();
  *(inited + 456) = &type metadata for Int;
  *(inited + 432) = 2;
  v22 = kMXSessionProperty_InitiationDescription;
  *(v0 + 912) = kMXSessionProperty_InitiationDescription;
  v23 = v22;
  sub_10001C37C(v0 + 912);
  sub_10000BEC0(&qword_100059208, &qword_10003F868);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10003F820;
  *(v24 + 32) = sub_10003986C();
  *(v24 + 40) = v25;
  *(v24 + 48) = sub_100039A4C();
  *(v24 + 56) = sub_10003986C();
  *(v24 + 64) = v26;
  *(v24 + 72) = sub_100039A4C();
  *(v24 + 80) = sub_10003986C();
  *(v24 + 88) = v27;
  *(v24 + 96) = sub_10003997C();
  sub_10000C944(0, &qword_100059210, NSNumber_ptr);
  v28 = sub_10003981C();
  *(inited + 528) = sub_10000BEC0(&qword_100059218, &qword_10003F870);
  *(inited + 504) = v28;
  v29 = kMXSessionProperty_HostProcessAttribution;
  *(v0 + 920) = kMXSessionProperty_HostProcessAttribution;
  v30 = v29;
  sub_10001C37C(v0 + 920);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10003F830;
  v32 = kMXSession_HostProcessAttributionKey_BundleID;
  *(v0 + 928) = kMXSession_HostProcessAttributionKey_BundleID;
  v33 = v32;
  sub_10001C37C(v0 + 928);
  *(v31 + 96) = &type metadata for String;
  *(v31 + 72) = 0xD00000000000001CLL;
  *(v31 + 80) = 0x800000010003E320;
  v34 = kMXSession_HostProcessAttributionKey_AuditToken;
  *(v0 + 936) = kMXSession_HostProcessAttributionKey_AuditToken;
  v35 = v34;
  sub_10001C37C(v0 + 936);
  v36 = objc_opt_self();
  *(v0 + 992) = v10;
  *(v0 + 1000) = v9;
  *(v0 + 1008) = v8;
  *(v0 + 1016) = v42;
  *(v0 + 1020) = v43;
  v37 = [v36 tu_dataForAuditToken:v0 + 992];
  *(v31 + 168) = sub_10000C944(0, &qword_100059220, NSData_ptr);
  *(v31 + 144) = v37;
  v38 = sub_10003981C();
  *(inited + 600) = sub_10000BEC0(&qword_100059228, &qword_10003F878);
  *(inited + 576) = v38;
  v39 = sub_10003981C();
  sub_10001C24C(v39, v44);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1024;
  *(v0 + 24) = sub_10001BCCC;
  v40 = swift_continuation_init();
  *(v0 + 848) = sub_10000BEC0(&qword_100059230, &unk_10003F880);
  *(v0 + 824) = v40;
  *(v0 + 792) = _NSConcreteStackBlock;
  *(v0 + 800) = 1107296256;
  *(v0 + 808) = sub_10001C018;
  *(v0 + 816) = &unk_100052268;
  [v44 startAudioSessionWithCompletionHandler:?];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10001BCCC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 984) = v1;
  if (v1)
  {
    v2 = sub_10001BEDC;
  }

  else
  {
    v2 = sub_10001BDDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001BDDC(uint64_t a1)
{
  v2 = *(v1 + 1024);
  v3 = sub_10003970C();
  if (v2 == 1)
  {
    v4 = sub_1000399CC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "AudioManager started successfully ";
  }

  else
  {
    v4 = sub_1000399BC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "AudioManager AVAudioClient didn't throw, but the session didn't start";
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  _os_log_impl(&_mh_execute_header, v3, v4, v5, v6, 2u);
  sub_10000EB00(v6);
LABEL_7:

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_10001BEDC()
{
  swift_willThrow();
  swift_errorRetain();
  v1 = sub_10003970C();
  v2 = sub_1000399AC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "AudioManager start failed with error %{public}@", v3, 0xCu);
    sub_10001C2E4(v4);
    sub_10000EB00(v4);
    sub_10000EB00(v3);
  }

  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001C018(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10002C5B0();
  }

  else
  {
    v8 = *v5;

    return sub_100029944(v8, v4);
  }
}

id sub_10001C09C()
{
  if (qword_100058A98 != -1)
  {
    sub_10001C35C(&qword_100058A98);
  }

  v0 = sub_10003972C();
  sub_10000BF30(v0, qword_10005AB08);
  v1 = sub_10003970C();
  v2 = sub_1000399CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    sub_10001C394(&_mh_execute_header, v4, v5, "AudioManager stop");
    sub_10000EB00(v3);
  }

  v6 = objc_opt_self();

  return [v6 stopAudioSession];
}

unint64_t sub_10001C170()
{
  result = qword_100059200;
  if (!qword_100059200)
  {
    sub_10000C6CC(&qword_1000591F8, &qword_10003F860);
    sub_10001C1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059200);
  }

  return result;
}

unint64_t sub_10001C1F4()
{
  result = qword_100058B40;
  if (!qword_100058B40)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058B40);
  }

  return result;
}

void sub_10001C24C(uint64_t a1, void *a2)
{
  isa = sub_1000397FC().super.isa;

  [a2 setAudioSessionProperties:isa];
}

uint64_t sub_10001C2E4(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100058DF0, &unk_10003F990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C35C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10001C37C(uint64_t a1)
{

  return sub_100039ADC();
}

void sub_10001C394(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10001C3F0(void *a1, uint64_t a2)
{
  v34 = a2;
  v4 = type metadata accessor for MessageStore(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v8 = __chkstk_darwin(v7 - 8);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for MessageRequest(0);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore;
  swift_beginAccess();
  v35 = v2;
  sub_1000212EC(v2 + v15, v6);
  v17 = a1[3];
  v16 = a1[4];
  sub_10000D3B0(a1, v17);
  v18 = (*(v16 + 8))(v17, v16);
  sub_1000352C0(v18, v19, v11);

  sub_100021348(v6, type metadata accessor for MessageStore);
  if (sub_10000BF08(v11, 1, v12) == 1)
  {
    sub_10000C8EC(v11, &qword_100058C90, &unk_10003F290);
    if (qword_100058A98 != -1)
    {
      swift_once();
    }

    v20 = sub_10003972C();
    sub_10000BF30(v20, qword_10005AB08);
    sub_10000BF68(a1, v38);
    v21 = sub_10003970C();
    v22 = sub_1000399AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      sub_10000BF68(v38, v36);
      v25 = sub_10000B0B4(v36);
      v27 = v26;
      sub_10000C8EC(v36, &qword_100058C70, qword_10003F690);
      sub_10000C54C(v38);
      v28 = sub_10000BFDC(v25, v27, &v37);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Couldn't find processing request that apparently finished %{public}s", v23, 0xCu);
      sub_10000C54C(v24);
    }

    else
    {

      sub_10000C54C(v38);
    }
  }

  else
  {
    sub_10000C768(v11, v14);
    v29 = v35;
    swift_beginAccess();
    v30 = sub_100036430(v14, v34);
    swift_endAccess();
    v31 = *(v29 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestFinishedProcessing);
    if (v31)
    {
      v32 = *(v29 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestFinishedProcessing + 8);

      v31(v30);
      sub_10000BFCC(v31, v32);
    }

    sub_100021348(v14, type metadata accessor for MessageRequest);
  }
}

uint64_t sub_10001C9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002164C();
  v7 = type metadata accessor for MessageStore(v6);
  v8 = sub_10000CA0C(v7);
  __chkstk_darwin(v8);
  sub_10000C9CC();
  v11 = v10 - v9;
  v12 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v13 = sub_10000CA0C(v12);
  __chkstk_darwin(v13);
  sub_10002152C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = type metadata accessor for MessageRequest(0);
  sub_10000C9A8();
  __chkstk_darwin(v21);
  sub_10000C9CC();
  v24 = v23 - v22;
  sub_10000C88C(v3, &v53, &qword_100058C70, qword_10003F690);
  if (v54)
  {
    v50 = a2;
    sub_10000C5F8(&v53, v55);
    v25 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore;
    sub_1000215BC();
    swift_beginAccess();
    sub_1000212EC(a3 + v25, v11);
    v27 = v56;
    v26 = v57;
    sub_10000D3B0(v55, v56);
    v28 = (*(v26 + 8))(v27, v26);
    sub_1000352C0(v28, v29, v19);

    sub_100021348(v11, type metadata accessor for MessageStore);
    if (sub_10000BF08(v19, 1, v20) == 1)
    {
      sub_10000C8EC(v19, &qword_100058C90, &unk_10003F290);
      if (qword_100058A98 != -1)
      {
        sub_1000214D0();
        swift_once();
      }

      v30 = sub_10003972C();
      sub_10000BF30(v30, qword_10005AB08);
      sub_10000BF68(v55, &v53);
      v31 = sub_10003970C();
      v32 = sub_1000399AC();
      v33 = sub_1000215D4();
      if (os_log_type_enabled(v33, v34))
      {
        sub_10002154C();
        v35 = swift_slowAlloc();
        sub_100021598();
        v36 = swift_slowAlloc();
        v52 = v36;
        *v35 = 136446210;
        sub_10000BF68(&v53, v51);
        v37 = sub_10000B0B4(v51);
        v39 = v38;
        sub_10000C8EC(v51, &qword_100058C70, qword_10003F690);
        sub_10000C54C(&v53);
        v40 = sub_10000BFDC(v37, v39, &v52);

        *(v35 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Couldn't find processing request that apparently finished %{public}s", v35, 0xCu);
        sub_10000C54C(v36);
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        sub_10000C54C(&v53);
      }
    }

    else
    {
      sub_10000C768(v19, v24);
      v45 = a3 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestError;
      v46 = *(a3 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestError);
      if (v46)
      {
        v47 = *(v45 + 8);
        sub_100021570();
        sub_1000212EC(v24, v16);
        sub_10000E998(v16, 0, 1, v20);

        v46(v16, v50);
        sub_10000BFCC(v46, v47);
        sub_10000C8EC(v16, &qword_100058C90, &unk_10003F290);
      }

      sub_1000214E4();
      sub_100021348(v24, v48);
    }

    return sub_10000C54C(v55);
  }

  else
  {
    result = sub_10000C8EC(&v53, &qword_100058C70, qword_10003F690);
    v42 = a3 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestError;
    v43 = *(a3 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_onRequestError);
    if (v43)
    {
      v44 = *(v42 + 8);
      sub_10000E998(v16, 1, 1, v20);

      v43(v16, a2);
      sub_10000BFCC(v43, v44);
      return sub_10000C8EC(v16, &qword_100058C90, &unk_10003F290);
    }
  }

  return result;
}

uint64_t sub_10001CE60()
{
  v1 = type metadata accessor for MessageStore(0);
  v2 = sub_10000CA0C(v1);
  __chkstk_darwin(v2);
  sub_10000C9CC();
  v5 = v4 - v3;
  v6 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore;
  sub_1000215BC();
  swift_beginAccess();
  sub_1000212EC(v0 + v6, v5);
  sub_10003553C();
  return sub_100021348(v5, type metadata accessor for MessageStore);
}

uint64_t sub_10001CF40()
{
  sub_100021628();
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v1 = sub_10003972C();
  sub_10000BF30(v1, qword_10005AB08);
  v2 = sub_10003970C();
  sub_1000399CC();
  v3 = sub_10000CA00();
  if (os_log_type_enabled(v3, v4))
  {
    *sub_1000216D8() = 0;
    sub_100021678(&_mh_execute_header, v5, v6, "MessageController prewarm audio client");
    sub_10000C9F4();
  }

  swift_beginAccess();
  v7 = sub_100021640();
  sub_10001B12C(v7, v8);
  v9 = sub_1000215B0();
  v10(v9);
  v11 = sub_10000D3B0((*(v0 + 40) + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager), *(*(v0 + 40) + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager + 24));
  v12 = v11[2];
  v13 = v11[3];
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = sub_10001D118;
  v15 = sub_100021640();

  return sub_10001B65C(v15, v16, v12, v13);
}

uint64_t sub_10001D118()
{
  sub_10001B470();
  sub_10001B58C();
  v1 = *v0;
  sub_1000215C8();
  *v2 = v1;

  sub_10001B4C4();

  return v3();
}

uint64_t sub_10001D1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v62 = a2;
  v7 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v8 = sub_10000CA0C(v7);
  __chkstk_darwin(v8);
  v64 = &v60 - v9;
  v10 = type metadata accessor for MessageRequest(0);
  sub_10000C9A8();
  __chkstk_darwin(v11);
  sub_10002152C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v66 = &v60 - v16;
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v17 = sub_10003972C();
  v63 = sub_10000BF30(v17, qword_10005AB08);
  v18 = sub_10003970C();
  v19 = sub_1000399CC();
  v20 = sub_10000CA00();
  v22 = os_log_type_enabled(v20, v21);
  v65 = v10;
  if (v22)
  {
    sub_10002154C();
    v23 = swift_slowAlloc();
    v61 = v5;
    v24 = v23;
    sub_100021598();
    v25 = swift_slowAlloc();
    v60 = v3;
    v26 = v25;
    v67[0] = v25;
    *v24 = 136446210;
    v68 = a1;
    type metadata accessor for TUMessageMediaType(0);
    v27 = sub_10003989C();
    v29 = v14;
    v30 = sub_10000BFDC(v27, v28, v67);

    *(v24 + 4) = v30;
    v14 = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "MessageController will start recording mediaType %{public}s", v24, 0xCu);
    sub_10000C54C(v26);
    v4 = v60;
    sub_10000C9F4();

    v5 = v61;
    sub_10000C9F4();
  }

  result = sub_10001D6B0(a1, v66);
  if (!v4)
  {
    v32 = v5 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine;
    sub_1000215EC(v5 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine, v67);
    v33 = *(v32 + 24);
    v34 = *(v32 + 32);
    v35 = sub_1000215B0();
    sub_10001B12C(v35, v36);
    (*(v34 + 16))(v33, v34);
    swift_endAccess();
    v37 = v65;
    sub_10000D3B0((v66 + *(v65 + 20)), *(v66 + *(v65 + 20) + 24));
    v38 = sub_1000215B0();
    v39(v38);
    v41 = v66;
    v42 = v64;
    sub_1000212EC(v66, v64);
    sub_10000E998(v42, 0, 1, v37);
    v43 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_currentRequest;
    sub_1000215EC(v5 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_currentRequest, v67);
    sub_10002127C(v42, v5 + v43);
    swift_endAccess();
    sub_1000212EC(v41, v14);
    v44 = sub_10003970C();
    v45 = sub_1000399CC();
    v46 = sub_1000215D4();
    if (os_log_type_enabled(v46, v47))
    {
      sub_10002154C();
      v48 = swift_slowAlloc();
      sub_100021598();
      v49 = swift_slowAlloc();
      v67[0] = v49;
      *v48 = 136446210;
      sub_10003962C();
      sub_1000214FC();
      sub_100021410(v50, v51, &protocol conformance descriptor for UUID);
      v52 = sub_100039B9C();
      v54 = v53;
      sub_1000214E4();
      sub_100021348(v14, v55);
      v56 = sub_10000BFDC(v52, v54, v67);

      *(v48 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "MessageController started recording with UUID %{public}s", v48, 0xCu);
      sub_10000C54C(v49);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_1000214E4();
      sub_100021348(v14, v57);
    }

    sub_10003962C();
    sub_10000C9A8();
    v59 = v66;
    (*(v58 + 16))(v62, v66);
    sub_1000214E4();
    return sub_100021348(v59, v40);
  }

  return result;
}

uint64_t sub_10001D6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10003962C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003961C();
  sub_100021128(a1);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 32))(a2, v8, v5);
  v10 = type metadata accessor for MessageRequest(0);
  return sub_10000C5F8(&v12, a2 + *(v10 + 20));
}

uint64_t sub_10001D7E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MessageRequest(0);
  sub_10000C9A8();
  __chkstk_darwin(v5);
  sub_10000C9CC();
  v86 = v7 - v6;
  v8 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v9 = sub_10000CA0C(v8);
  __chkstk_darwin(v9);
  sub_10002152C();
  v85 = v10 - v11;
  sub_1000215A4();
  __chkstk_darwin(v12);
  sub_1000215E0();
  v92 = v13;
  sub_1000215A4();
  __chkstk_darwin(v14);
  v93 = &v82 - v15;
  v16 = sub_10003962C();
  sub_10000C9B8();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10002152C();
  v94 = (v20 - v21);
  sub_1000215A4();
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v25 = sub_10003972C();
  v26 = sub_10000BF30(v25, qword_10005AB08);
  v27 = *(v18 + 16);
  v89 = v18 + 16;
  v87 = v27;
  v27(v24, a1, v16);
  v90 = v26;
  v28 = sub_10003970C();
  v29 = sub_1000399CC();
  v30 = os_log_type_enabled(v28, v29);
  v91 = v18;
  if (v30)
  {
    sub_10002154C();
    v31 = swift_slowAlloc();
    v82 = a1;
    v32 = v31;
    sub_100021598();
    v33 = swift_slowAlloc();
    v83 = v2;
    v84 = v4;
    v34 = v33;
    v95[0] = v33;
    *v32 = 136446210;
    sub_1000214FC();
    sub_100021410(v35, v36, &protocol conformance descriptor for UUID);
    v37 = sub_100039B9C();
    v38 = v16;
    v40 = v39;
    v88 = *(v18 + 8);
    v88(v24, v38);
    v41 = sub_10000BFDC(v37, v40, v95);
    v16 = v38;

    *(v32 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "MessageController will end recording with UUID %{public}s", v32, 0xCu);
    sub_10000C54C(v34);
    v2 = v83;
    v4 = v84;
    sub_10000C9F4();

    a1 = v82;
    sub_10000C9F4();
  }

  else
  {

    v88 = *(v18 + 8);
    v88(v24, v16);
  }

  v42 = v96;
  result = sub_10001DF08(a1);
  if (!v42)
  {
    v44 = v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine;
    sub_1000215EC(v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine, v95);
    v45 = *(v44 + 24);
    v46 = *(v44 + 32);
    v47 = sub_1000215B0();
    sub_10001B12C(v47, v48);
    (*(v46 + 24))(v45, v46);
    swift_endAccess();
    v49 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_currentRequest;
    sub_1000215BC();
    swift_beginAccess();
    v96 = v49;
    v50 = v2 + v49;
    v51 = v93;
    sub_10000C88C(v50, v93, &qword_100058C90, &unk_10003F290);
    v52 = sub_10002161C();
    if (sub_10000BF08(v52, v53, v4))
    {
      sub_10000C8EC(v51, &qword_100058C90, &unk_10003F290);
    }

    else
    {
      sub_10000BF68(v51 + *(v4 + 20), v95);
      sub_10000C8EC(v51, &qword_100058C90, &unk_10003F290);
      sub_10000D3B0(v95, v95[3]);
      v80 = sub_1000215B0();
      v81(v80);
      sub_10000C54C(v95);
    }

    v54 = v94;
    v87(v94, a1, v16);
    v55 = sub_10003970C();
    v56 = sub_1000399CC();
    v57 = sub_1000215D4();
    if (os_log_type_enabled(v57, v58))
    {
      sub_10002154C();
      v59 = swift_slowAlloc();
      sub_100021598();
      v60 = v54;
      v94 = swift_slowAlloc();
      v95[0] = v94;
      *v59 = 136446210;
      sub_1000214FC();
      sub_100021410(v61, v62, &protocol conformance descriptor for UUID);
      v63 = sub_100039B9C();
      v64 = v16;
      v65 = v4;
      v66 = v2;
      v68 = v67;
      v88(v60, v64);
      v69 = sub_10000BFDC(v63, v68, v95);
      v2 = v66;
      v4 = v65;

      *(v59 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v55, v56, "MessageController ended recording with UUID %{public}s", v59, 0xCu);
      sub_10000C54C(v94);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      v88(v54, v16);
    }

    sub_10000D3B0((v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager), *(v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager + 24));
    sub_10001C09C();
    v70 = v96;
    v71 = v92;
    sub_10000C88C(v2 + v96, v92, &qword_100058C90, &unk_10003F290);
    v72 = sub_10002161C();
    if (sub_10000BF08(v72, v73, v4) == 1)
    {
      sub_10000C8EC(v71, &qword_100058C90, &unk_10003F290);
      sub_100021228();
      sub_100021634();
      swift_allocError();
      *v74 = 0;
      return swift_willThrow();
    }

    else
    {
      v75 = v86;
      sub_10000C768(v71, v86);
      sub_1000215EC(v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore, v95);
      sub_1000358E4(v75);
      swift_endAccess();
      sub_1000214E4();
      sub_100021348(v75, v76);
      v77 = v85;
      v78 = sub_10002161C();
      sub_10000E998(v78, v79, 1, v4);
      sub_1000215EC(v2 + v70, v95);
      sub_10002127C(v77, v2 + v70);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_10001DF08(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for MessageRequest(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_currentRequest;
  swift_beginAccess();
  sub_10000C88C(v1 + v8, v4, &qword_100058C90, &unk_10003F290);
  if (sub_10000BF08(v4, 1, v5) == 1)
  {
    sub_10000C8EC(v4, &qword_100058C90, &unk_10003F290);
    sub_100021228();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_10000C768(v4, v7);
    if ((sub_1000395FC() & 1) == 0)
    {
      sub_100021228();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
    }

    return sub_100021348(v7, type metadata accessor for MessageRequest);
  }
}

uint64_t sub_10001E0E8()
{
  sub_10001B470();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1000396CC();
  v1[7] = v3;
  sub_10002153C(v3);
  v1[8] = v4;
  v1[9] = sub_100021604();
  v5 = sub_1000395CC();
  v1[10] = v5;
  sub_10002153C(v5);
  v1[11] = v6;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = type metadata accessor for MessageStore(0);
  v1[14] = v7;
  sub_10000CA0C(v7);
  v1[15] = sub_100021604();
  v8 = sub_10003962C();
  v1[16] = v8;
  sub_10002153C(v8);
  v1[17] = v9;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001E278, 0, 0);
}

uint64_t sub_10001E278()
{
  v72 = v0;
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_10003972C();
  v3 = sub_10000BF30(v2, qword_10005AB08);
  v4 = v1;
  v5 = v3;
  v6 = sub_10003970C();
  v7 = sub_1000399CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 40);
    sub_10002154C();
    v12 = swift_slowAlloc();
    sub_100021598();
    v70 = swift_slowAlloc();
    v71 = v70;
    *v12 = 136446210;
    v13 = [v11 sessionUUID];
    sub_10003960C();

    sub_1000214FC();
    sub_100021410(v14, v15, &protocol conformance descriptor for UUID);
    v16 = sub_100039B9C();
    v18 = v17;
    (*(v9 + 8))(v8, v10);
    v19 = sub_10000BFDC(v16, v18, &v71);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "MessageController sending message with uuid %{public}s", v12, 0xCu);
    v5 = v70;
    sub_10000C54C(v70);
    sub_10000C9F4();

    sub_10000C9F4();
  }

  v20 = [*(v0 + 40) destinationHandles];
  sub_10002164C();
  sub_1000213CC();
  sub_100021410(&qword_1000592E0, sub_1000213CC, &protocol conformance descriptor for NSObject);
  v21 = sub_10003995C();

  v22 = sub_10001EBA4(v21);

  if (v22 < 1)
  {
    v54 = sub_10003970C();
    sub_1000399AC();
    v60 = sub_10000CA00();
    if (!os_log_type_enabled(v60, v61))
    {
      v59 = 4;
      goto LABEL_18;
    }

    *sub_1000216D8() = 0;
    sub_100021698(&_mh_execute_header, v62, v63, "Skipping message send as there are no sender handles");
    v59 = 4;
  }

  else
  {
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    v27 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore;
    sub_1000215BC();
    swift_beginAccess();
    sub_100021558();
    sub_1000212EC(v26 + v27, v24);
    v28 = [v25 sessionUUID];
    sub_10003960C();

    v29 = *(v24 + *(v23 + 28));
    if (*(v29 + 16))
    {
      v30 = sub_10003042C(*(v0 + 144));
      if (v31)
      {
        v32 = *(v0 + 144);
        v34 = *(v0 + 128);
        v33 = *(v0 + 136);
        v35 = *(v0 + 120);
        v66 = *(v0 + 104);
        v67 = *(v0 + 88);
        v68 = *(v0 + 96);
        v69 = *(v0 + 80);
        v36 = *(v0 + 40);
        v37 = *(*(v29 + 56) + 8 * v30);
        *(v0 + 160) = v37;
        v38 = *(v33 + 8);
        v39 = v37;
        v38(v32, v34);
        sub_100021514();
        sub_100021348(v35, v40);
        v41 = [v39 videoURL];
        v42 = [v41 URL];

        sub_10003958C();
        v43 = [v36 destinationHandles];
        v44 = sub_10003995C();

        sub_10001EBC4(v44, v45);

        v46 = [v36 conversationID];
        sub_10003960C();

        v47 = [v36 senderHandle];
        v48 = [v47 value];

        sub_10003986C();
        (*(v67 + 16))(v68, v66, v69);
        sub_1000396AC();
        v49 = swift_task_alloc();
        *(v0 + 168) = v49;
        *v49 = v0;
        v49[1] = sub_10001E8D0;
        v50 = *(v0 + 72);

        return sub_10001EE88(v50);
      }
    }

    v52 = *(v0 + 120);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    sub_100021514();
    sub_100021348(v52, v53);
    v54 = sub_10003970C();
    sub_1000399AC();
    v55 = sub_10000CA00();
    if (!os_log_type_enabled(v55, v56))
    {
      v59 = 1;
      goto LABEL_18;
    }

    *sub_1000216D8() = 0;
    sub_100021698(&_mh_execute_header, v57, v58, "Trying to send a message with an unknown UUID");
    v59 = 1;
  }

  sub_10000C9F4();

LABEL_18:

  sub_100021228();
  sub_100021634();
  swift_allocError();
  *v64 = v59;
  swift_willThrow();
  sub_100021658();

  sub_10001B4C4();

  return v65();
}

uint64_t sub_10001E8D0()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v3 = v2;
  v4 = *v1;
  sub_1000215C8();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_10001EAD0;
  }

  else
  {
    v7 = sub_10001E9D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001E9D4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);

  sub_10001B4C4();

  return v7();
}

uint64_t sub_10001EAD0()
{
  sub_100021628();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = sub_100021640();
  v5(v4);
  sub_100021658();

  sub_10001B4C4();

  return v6();
}

uint64_t sub_10001EBA4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return __CocoaSet.count.getter(a1);
  }

  return __CocoaSet.count.getter(a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10001EBC4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100039A9C();
    sub_1000213CC();
    sub_100021410(&qword_1000592E0, sub_1000213CC, &protocol conformance descriptor for NSObject);
    sub_10003996C();
    result = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v23 = v4;
  v24 = _swiftEmptyArrayStorage;
  v25 = result;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (result < 0)
  {
    if (!sub_100039ABC() || (sub_1000213CC(), swift_dynamicCast(), v14 = v31, v5 = v10, v6 = v11, !v31))
    {
LABEL_27:
      result = v25;
LABEL_28:
      sub_100021458(result);
      return v24;
    }

LABEL_18:
    v15 = [v14 value];
    if (!v15)
    {
      sub_10003986C();
      v15 = sub_10003985C();
    }

    v16 = sub_100021460(v15);
    v18 = v17;

    v10 = v5;
    v11 = v6;
    result = v25;
    if (v18)
    {
      v19 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100023AAC(0, *(v24 + 2) + 1, 1, v24);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_100023AAC((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v24 = v19;
      v22 = &v19[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
      result = v25;
      goto LABEL_8;
    }
  }

  v12 = v10;
  v13 = v11;
  v5 = v10;
  if (v11)
  {
LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(result + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001EE88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100021588();
}

uint64_t sub_10001EE9C()
{
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v1 = sub_10003972C();
  v0[4] = sub_10000BF30(v1, qword_10005AB08);
  v2 = sub_10003970C();
  sub_1000399CC();
  v3 = sub_10000CA00();
  if (os_log_type_enabled(v3, v4))
  {
    *sub_1000216D8() = 0;
    sub_100021678(&_mh_execute_header, v5, v6, "SENDING USING NEW DAEMON METHOD");
    sub_10000C9F4();
  }

  v7 = v0[3];

  v8 = (v7 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_videoMessagingController);
  v9 = *(v7 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_videoMessagingController + 24);
  v10 = v8[4];
  sub_10000D3B0(v8, v9);
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_10001EFF0;
  v12 = v0[2];

  return dispatch thunk of VideoMessagingDataSource.sendVideoMessage(_:)(v12, v9, v10);
}

uint64_t sub_10001EFF0()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v3 = v2;
  v4 = *v1;
  sub_1000215C8();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_10001F150;
  }

  else
  {
    v7 = sub_10001F0F4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001F0F4()
{
  sub_10001B470();
  sub_10001F29C(*(v0 + 16));
  sub_10001B4C4();

  return v1();
}

uint64_t sub_10001F150()
{
  sub_100021628();
  swift_errorRetain();
  v1 = sub_10003970C();
  v2 = sub_1000399AC();

  if (os_log_type_enabled(v1, v2))
  {
    sub_10002154C();
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to send video message using daemon %{public}@", v3, 0xCu);
    sub_10000C8EC(v4, &qword_100058DF0, &unk_10003F990);
    sub_10000C9F4();

    sub_10000C9F4();
  }

  v6 = *(v0 + 16);

  swift_willThrow();
  sub_10001F29C(v6);
  sub_10001B4C4();

  return v7();
}

void sub_10001F29C(void *a1)
{
  v2 = sub_1000395CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000396CC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v13 = sub_10003972C();
  v14 = sub_10000BF30(v13, qword_10005AB08);
  v15 = *(v7 + 16);
  v56 = a1;
  v52 = v15;
  v53 = v7 + 16;
  v15(v12, a1, v6);
  v55 = v14;
  v16 = sub_10003970C();
  v17 = sub_1000399CC();
  v18 = os_log_type_enabled(v16, v17);
  v57 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v19 = 136446210;
    sub_1000396BC();
    sub_100021410(&qword_1000592D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = sub_100039B9C();
    v51 = v10;
    v21 = v5;
    v22 = v6;
    v23 = v3;
    v24 = v2;
    v26 = v25;
    (*(v23 + 8))(v21, v24);
    v54 = *(v57 + 8);
    v54(v12, v22);
    v27 = sub_10000BFDC(v20, v26, &v58);
    v2 = v24;
    v3 = v23;
    v6 = v22;
    v5 = v21;
    v10 = v51;

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cleaning up video message at URL %{public}s", v19, 0xCu);
    sub_10000C54C(v50);
  }

  else
  {

    v54 = *(v7 + 8);
    v54(v12, v6);
  }

  v28 = [objc_opt_self() defaultManager];
  v29 = v56;
  sub_1000396BC();
  sub_10003955C(v30);
  v32 = v31;
  v33 = *(v3 + 8);
  v33(v5, v2);
  v58 = 0;
  v34 = [v28 removeItemAtURL:v32 error:&v58];

  v35 = v58;
  if (v34)
  {

    v36 = v35;
  }

  else
  {
    v51 = v58;
    v37 = v58;
    v38 = sub_10003951C();

    v51 = v38;
    swift_willThrow();
    v52(v10, v29, v6);
    v39 = sub_10003970C();
    v40 = sub_1000399AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v6;
      v56 = v42;
      v43 = v2;
      v58 = v42;
      *v41 = 136446210;
      sub_1000396BC();
      sub_100021410(&qword_1000592D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v44 = sub_100039B9C();
      v45 = v10;
      v47 = v46;
      v33(v5, v43);
      v54(v45, v55);
      v48 = sub_10000BFDC(v44, v47, &v58);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to clean up video message %{public}s", v41, 0xCu);
      sub_10000C54C(v56);
    }

    else
    {

      v54(v10, v6);
    }
  }
}

uint64_t sub_10001F8E0()
{
  sub_10001B470();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_1000395CC();
  v1[25] = v3;
  sub_10002153C(v3);
  v1[26] = v4;
  v1[27] = sub_100021604();
  v5 = type metadata accessor for MessageStore(0);
  v1[28] = v5;
  sub_10000CA0C(v5);
  v1[29] = sub_100021604();
  v6 = sub_10003962C();
  v1[30] = v6;
  sub_10002153C(v6);
  v1[31] = v7;
  v1[32] = sub_100021604();

  return _swift_task_switch(sub_10001F9FC, 0, 0);
}

uint64_t sub_10001F9FC()
{
  v51 = v0;
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[23];
  v5 = sub_10003972C();
  v0[33] = sub_10000BF30(v5, qword_10005AB08);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_10003970C();
  v7 = sub_1000399CC();
  v8 = sub_1000215D4();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  if (v10)
  {
    sub_10002154C();
    v14 = swift_slowAlloc();
    sub_100021598();
    v15 = swift_slowAlloc();
    v50 = v15;
    *v14 = 136446210;
    sub_1000214FC();
    sub_100021410(v16, v17, &protocol conformance descriptor for UUID);
    v18 = sub_100039B9C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_10000BFDC(v18, v20, &v50);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "MessageController saving video message %{public}s", v14, 0xCu);
    sub_10000C54C(v15);
    sub_10000C9F4();

    sub_10000C9F4();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[28];
  v23 = v0[29];
  v24 = v0[24];
  v25 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_messageStore;
  sub_1000215BC();
  swift_beginAccess();
  sub_100021558();
  sub_1000212EC(v24 + v25, v23);
  v26 = *(v23 + *(v22 + 28));
  if (*(v26 + 16) && (v27 = sub_10003042C(v0[23]), (v28 & 1) != 0))
  {
    v29 = v0[29];
    v31 = v0[26];
    v30 = v0[27];
    v33 = v0[24];
    v32 = v0[25];
    v34 = *(*(v26 + 56) + 8 * v27);
    v0[34] = v34;
    v35 = v34;
    sub_100021514();
    sub_100021348(v29, v36);
    v37 = *(v33 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_mediaManager);
    v0[35] = v37;
    v38 = v37;
    v39 = [v35 videoURL];
    v40 = [v39 URL];

    sub_10003958C();
    sub_10003955C(v41);
    v43 = v42;
    v0[36] = v42;
    (*(v31 + 8))(v30, v32);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10001FE50;
    v44 = swift_continuation_init();
    v0[17] = sub_10000BEC0(&qword_1000592C8, &qword_10003F988);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100020170;
    v0[13] = &unk_1000523A0;
    v0[14] = v44;
    [v38 saveVideoWithURL:v43 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100021514();
    sub_100021348(v45, v46);
    sub_100021228();
    sub_100021634();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();

    sub_10001B4C4();

    return v48();
  }
}

uint64_t sub_10001FE50()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = sub_1000200D4;
  }

  else
  {
    v5 = sub_10001FF54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001FF54()
{
  v14 = v0;
  v1 = *(v0 + 288);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = sub_10003970C();
  v5 = sub_1000399CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    sub_10002154C();
    v8 = swift_slowAlloc();
    sub_100021598();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    v10 = sub_10000BFDC(v3, v2, &v13);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "MessageController saved video message with new asset identifier %{public}s", v8, 0xCu);
    sub_10000C54C(v9);
    sub_10000C9F4();

    sub_10000C9F4();
  }

  else
  {
  }

  sub_10001B4C4();

  return v11();
}

uint64_t sub_1000200D4()
{
  sub_100021628();
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  swift_willThrow();

  sub_10001B4C4();

  return v4();
}

uint64_t sub_100020170(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_10002C5B0();
  }

  else
  {
    v8 = sub_10003986C();

    return sub_100029964(v4, v8, v7);
  }
}

id sub_100020208(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10002164C();
  v142 = type metadata accessor for MessageRequest(v3);
  sub_10000C9A8();
  __chkstk_darwin(v4);
  sub_10002152C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v126 = &v123 - v9;
  v139 = sub_10003962C();
  sub_10000C9B8();
  v135 = v10;
  __chkstk_darwin(v11);
  sub_10000C9CC();
  v125 = v13 - v12;
  v136 = sub_10000BEC0(&qword_1000592B0, &qword_10003F980);
  sub_10000C9A8();
  __chkstk_darwin(v14);
  v16 = &v123 - v15;
  v17 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v18 = sub_10000CA0C(v17);
  __chkstk_darwin(v18);
  sub_10002152C();
  v128 = v19 - v20;
  sub_1000215A4();
  __chkstk_darwin(v21);
  sub_1000215E0();
  v123 = v22;
  sub_1000215A4();
  __chkstk_darwin(v23);
  sub_1000215E0();
  v129 = v24;
  sub_1000215A4();
  __chkstk_darwin(v25);
  v27 = &v123 - v26;
  v28 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v29 = sub_10000CA0C(v28);
  __chkstk_darwin(v29);
  sub_10002152C();
  v127 = v30 - v31;
  sub_1000215A4();
  v33 = __chkstk_darwin(v32);
  v35 = &v123 - v34;
  __chkstk_darwin(v33);
  sub_1000215E0();
  v131 = v36;
  sub_1000215A4();
  __chkstk_darwin(v37);
  sub_1000215E0();
  v137 = v38;
  sub_1000215A4();
  __chkstk_darwin(v39);
  v41 = &v123 - v40;
  if (qword_100058A98 != -1)
  {
    sub_1000214D0();
    swift_once();
  }

  v42 = sub_10003972C();
  v43 = sub_10000BF30(v42, qword_10005AB08);
  v138 = v1;
  v44 = sub_100021640();
  sub_10000C88C(v44, v45, v46, v47);
  v133 = v43;
  v48 = sub_10003970C();
  v49 = sub_1000399CC();
  v50 = sub_10000CA00();
  v52 = os_log_type_enabled(v50, v51);
  v124 = v7;
  v134 = v35;
  if (v52)
  {
    sub_10002154C();
    v53 = swift_slowAlloc();
    v132 = v2;
    v54 = v53;
    sub_100021598();
    v55 = swift_slowAlloc();
    v141[0] = v55;
    *v54 = 136446210;
    v56 = sub_10000B398(v41);
    v58 = v57;
    sub_10000C8EC(v41, &unk_100059160, &unk_10003F780);
    v59 = sub_10000BFDC(v56, v58, v141);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v48, v49, "MessageController resetting for session %{public}s", v54, 0xCu);
    sub_10000C54C(v55);
    sub_10000C9F4();

    v2 = v132;
    sub_10000C9F4();
  }

  else
  {

    sub_10000C8EC(v41, &unk_100059160, &unk_10003F780);
  }

  v60 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_currentRequest;
  sub_1000215BC();
  swift_beginAccess();
  sub_10000C88C(v2 + v60, v27, &qword_100058C90, &unk_10003F290);
  v61 = 1;
  v62 = sub_10000BF08(v27, 1, v142);
  v63 = v139;
  v64 = v137;
  if (!v62)
  {
    (*(v135 + 16))(v137, v27, v139);
    v61 = 0;
  }

  sub_10000C8EC(v27, &qword_100058C90, &unk_10003F290);
  sub_10000E998(v64, v61, 1, v63);
  v65 = *(v136 + 48);
  sub_10000C88C(v138, v16, &unk_100059160, &unk_10003F780);
  sub_10000C88C(v64, &v16[v65], &unk_100059160, &unk_10003F780);
  sub_1000216B8(v16);
  v66 = "FTLivePhotoService";
  v132 = v60;
  if (!v68)
  {
    v67 = v131;
    sub_10000C88C(v16, v131, &unk_100059160, &unk_10003F780);
    sub_1000216B8(&v16[v65]);
    if (!v68)
    {
      v89 = v135;
      v90 = &v16[v65];
      v91 = v125;
      (*(v135 + 32))(v125, v90, v63);
      sub_1000214FC();
      sub_100021410(v92, v93, &protocol conformance descriptor for UUID);
      sub_1000215B0();
      v94 = sub_10003984C();
      v95 = *(v89 + 8);
      v95(v91, v139);
      sub_10000C8EC(v64, &unk_100059160, &unk_10003F780);
      v95(v67, v139);
      v66 = "FTLivePhotoService";
      v63 = v139;
      sub_10000C8EC(v16, &unk_100059160, &unk_10003F780);
      if (v94)
      {
        goto LABEL_24;
      }

LABEL_17:
      v69 = v134;
      sub_10000C88C(v138, v134, &unk_100059160, &unk_10003F780);
      v70 = v2;
      v71 = sub_10003970C();
      v72 = sub_1000399CC();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v140[0] = swift_slowAlloc();
        *v73 = 136315394;
        v74 = v128;
        sub_10000C88C(&v132[v2], v128, &qword_100058C90, &unk_10003F290);
        v75 = 1;
        v76 = sub_10000BF08(v74, 1, v142);
        v77 = v127;
        if (!v76)
        {
          (*(v135 + 16))(v127, v74, v63);
          v75 = 0;
        }

        sub_10000C8EC(v74, &qword_100058C90, &unk_10003F290);
        sub_10000E998(v77, v75, 1, v63);
        v78 = sub_10000B398(v77);
        v80 = v79;
        sub_10000C8EC(v77, &unk_100059160, &unk_10003F780);
        v81 = sub_10000BFDC(v78, v80, v140);

        *(v73 + 4) = v81;
        *(v73 + 12) = 2080;
        v82 = v134;
        v83 = sub_10000B398(v134);
        v85 = v84;
        sub_10000C8EC(v82, &unk_100059160, &unk_10003F780);
        v86 = sub_10000BFDC(v83, v85, v140);

        *(v73 + 14) = v86;
        _os_log_impl(&_mh_execute_header, v71, v72, "Current request UUID %s doesn't match reset request UUID %s", v73, 0x16u);
        swift_arrayDestroy();
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        sub_10000C8EC(v69, &unk_100059160, &unk_10003F780);
      }

      sub_100021228();
      sub_100021634();
      swift_allocError();
      *v87 = 1;
      return swift_willThrow();
    }

    sub_10000C8EC(v64, &unk_100059160, &unk_10003F780);
    (*(v135 + 8))(v67, v63);
LABEL_16:
    sub_10000C8EC(v16, &qword_1000592B0, &qword_10003F980);
    goto LABEL_17;
  }

  sub_10000C8EC(v64, &unk_100059160, &unk_10003F780);
  sub_1000216B8(&v16[v65]);
  if (!v68)
  {
    goto LABEL_16;
  }

  sub_10000C8EC(v16, &unk_100059160, &unk_10003F780);
LABEL_24:
  v96 = v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine;
  sub_1000215EC(v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_stateMachine, v140);
  v97 = *(v96 + 24);
  v98 = *(v96 + 32);
  sub_10001B12C(v96, v97);
  (*(v98 + 32))(v97, v98);
  swift_endAccess();
  v99 = v132;
  v100 = v129;
  sub_10000C88C(&v132[v2], v129, &qword_100058C90, &unk_10003F290);
  v101 = sub_10002161C();
  if (sub_10000BF08(v101, v102, v142) == 1)
  {
    sub_10000C8EC(v100, &qword_100058C90, &unk_10003F290);
  }

  else
  {
    v103 = v126;
    sub_10000C768(v100, v126);
    sub_100021570();
    v104 = v124;
    sub_1000212EC(v103, v124);
    v105 = sub_10003970C();
    v106 = sub_1000399CC();
    v107 = sub_1000215D4();
    if (os_log_type_enabled(v107, v108))
    {
      sub_10002154C();
      v109 = swift_slowAlloc();
      v138 = v109;
      sub_100021598();
      v139 = swift_slowAlloc();
      v140[0] = v139;
      *v109 = *(v66 + 61);
      v110 = v123;
      sub_1000212EC(v104, v123);
      sub_10000E998(v110, 0, 1, v142);
      v111 = sub_10000B3C0(v110);
      v113 = v112;
      sub_10000C8EC(v110, &qword_100058C90, &unk_10003F290);
      sub_100021348(v104, type metadata accessor for MessageRequest);
      v114 = sub_10000BFDC(v111, v113, v140);

      v115 = v138;
      *(v138 + 1) = v114;
      _os_log_impl(&_mh_execute_header, v105, v106, "Rejecting current active request %{public}s", v115, 0xCu);
      sub_10000C54C(v139);
      v103 = v126;
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_1000214E4();
      sub_100021348(v104, v116);
    }

    v117 = (v103 + *(v142 + 20));
    v118 = v117[3];
    v119 = v117[4];
    sub_10000D3B0(v117, v118);
    v120 = v130;
    (*(v119 + 32))(v118, v119);
    if (v120)
    {
      return sub_100021348(v103, type metadata accessor for MessageRequest);
    }

    v121 = v123;
    sub_10000E998(v123, 1, 1, v142);
    sub_1000215EC(&v99[v2], v140);
    sub_10002127C(v121, &v99[v2]);
    swift_endAccess();
    sub_1000214E4();
    sub_100021348(v103, v122);
  }

  sub_10000D3B0((v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager), *(v2 + OBJC_IVAR____TtC18FTLivePhotoService17MessageController_audioManager + 24));
  return sub_10001C09C();
}

id sub_100020E20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessageController(uint64_t a1)
{
  result = qword_100059298;
  if (!qword_100059298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020F94(uint64_t a1)
{
  sub_100021088(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageStore(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100021088(uint64_t a1)
{
  if (!qword_1000592A8)
  {
    type metadata accessor for MessageRequest(255);
    v1 = sub_100039A3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000592A8);
    }
  }
}

uint64_t sub_100021128(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v2 = 2;
LABEL_5:
    v3 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_moments;
    swift_beginAccess();
    sub_10000BF68(v1 + v3, v8);
    v4 = v9;
    v5 = v10;
    sub_10000D3B0(v8, v9);
    (*(v5 + 56))(v2, v4, v5);
    return sub_10000C54C(v8);
  }

  sub_100021228();
  swift_allocError();
  *v7 = 2;
  return swift_willThrow();
}

unint64_t sub_100021228()
{
  result = qword_1000592B8;
  if (!qword_1000592B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000592B8);
  }

  return result;
}

uint64_t sub_10002127C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000212EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002164C();
  v5(v4);
  sub_10000C9A8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100021348(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000C9A8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000213CC()
{
  result = qword_1000592D8;
  if (!qword_1000592D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000592D8);
  }

  return result;
}

uint64_t sub_100021410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021460(void *a1)
{
  v2 = [a1 IDSFormattedDestinationID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10003986C();

  return v3;
}

uint64_t sub_1000215EC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100021604()
{

  return swift_task_alloc();
}

uint64_t sub_100021658()
{
}

void sub_100021678(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_100021698(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1000216D8()
{

  return swift_slowAlloc();
}

id sub_100021838()
{
  v0[OBJC_IVAR___MockMomentsServerBag_isLoaded] = 1;
  v0[OBJC_IVAR___MockMomentsServerBag_isMomentsDisabled] = 0;
  *&v0[OBJC_IVAR___MockMomentsServerBag_momentsRequestTimeout] = 0x3FF0000000000000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockMomentsServerBag();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000218BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockMomentsServerBag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100021914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100021C1C(a1);
  v5 = sub_1000395CC();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = swift_allocObject();

  return sub_100023C50(v4, a2, v6);
}