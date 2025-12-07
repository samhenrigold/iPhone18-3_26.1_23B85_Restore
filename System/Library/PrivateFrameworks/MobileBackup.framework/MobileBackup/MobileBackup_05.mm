void sub_100110344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100110370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _cancelDisconnectTimer];
    WeakRetained = v4;
    v2 = atomic_load(v4 + 99);
    if (v2)
    {
      v3 = [MBError errorWithCode:15 format:@"Timed out"];
      [v4 _finishWithError:v3];

      WeakRetained = v4;
    }
  }
}

void sub_100110F6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100110FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FT session completion handler called: %@", buf, 0xCu);
      _MBLog(@"Df", "FT session completion handler called: %@", v3);
    }

    [WeakRetained _finishWithError:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001110A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v8 = v3;
      v9 = 2048;
      v10 = [v3 linkType];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FT session progress handler called with %@, linkType:%ld", buf, 0x16u);
      _MBLog(@"Df", "FT session progress handler called with %@, linkType:%ld", v3, [v3 linkType]);
    }

    [WeakRetained _handleFileTransferSessionProgress:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001111CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      v13 = objc_opt_class();
      _MBLog(@"E ", "Failed to handle %@: %@", v13, v8);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v7);
  }

  atomic_store(1u, (*(a1 + 32) + 102));
  v12 = objc_opt_new();
  v9[2](v9, v12, 0);

  [*(a1 + 32) cancel];
}

void sub_100111B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100111BA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100111BBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v18 = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&v18];
  objc_storeStrong((v3 + 40), v18);
  if (v4)
  {
    v5 = [*(a1 + 32) peerInitResponse];
    if (v5)
    {
      v6 = dispatch_get_global_queue(17, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100111D28;
      block[3] = &unk_1003BEDF0;
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v13 = v7;
      v14 = v8;
      v17 = *(a1 + 56);
      v15 = v5;
      v16 = *(a1 + 40);
      dispatch_async(v6, block);
    }

    else
    {
      v9 = [MBError errorWithCode:1 format:@"nil init response"];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100111D28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackPreflightStart];
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100111E04;
  v7[3] = &unk_1003BEF58;
  v9 = *(a1 + 72);
  v7[4] = v3;
  v8 = *(a1 + 48);
  v4 = [v3 _perform:v7];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 56));
  objc_autoreleasePoolPop(v2);
}

BOOL sub_100111E04(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _requestPreflightWithSourceInfo:*(a1 + 40) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void sub_100111E60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackPreflightEnd];
  if (!*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startPreflightWithCompletion:]_block_invoke_4", "MBTargetDeviceTransferEngine.m", 543, "preflightResponse || error");
  }

  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218242;
      v35 = v3;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed preflight (freeDiskSpace:%llu): %@", buf, 0x16u);
      _MBLog(@"E ", "Failed preflight (freeDiskSpace:%llu): %@", v3, *(*(*(a1 + 64) + 8) + 40));
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished preflight (freeDiskSpace:%llu)", buf, 0xCu);
      _MBLog(@"Df", "Finished preflight (freeDiskSpace:%llu)", v3);
    }

    [*(a1 + 40) setPeerPreflightResponse:*(*(*(a1 + 56) + 8) + 40)];
    v8 = [*(*(*(a1 + 56) + 8) + 40) uploadFileCount];
    v9 = [*(*(*(a1 + 56) + 8) + 40) uploadSize];
    v10 = [*(*(*(a1 + 56) + 8) + 40) uploadSizeExcludingHardlinksAndClones];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = [*(*(*(a1 + 56) + 8) + 40) purgeableDiskSpace];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      v35 = v8;
      v36 = 2048;
      v37 = v9;
      v38 = 2048;
      v39 = v11;
      v40 = 2048;
      v41 = v12;
      v42 = 2048;
      v43 = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "uploadFileCount:%llu, uploadSize:%llu(%llu), sourcePurgeableSpaceSize:%llu, freeDiskSpace:%llu", buf, 0x34u);
      _MBLog(@"Df", "uploadFileCount:%llu, uploadSize:%llu(%llu), sourcePurgeableSpaceSize:%llu, freeDiskSpace:%llu", v8, v9, v11, v12, v3);
    }

    v14 = objc_opt_new();
    [v14 setSourceDeviceDataSize:v11];
    [v14 setTargetDeviceFreeSpaceSize:v3];
    [v14 setSourcePurgeableSpaceSize:v12];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v17 = *(a1 + 40);
    v18 = *(*(a1 + 64) + 8);
    obj = *(v18 + 40);
    v19 = [v17 _checkFreeDiskSpace:v3 preflightInfo:v14 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    if ((v19 & 1) == 0)
    {
      v20 = *(*(a1 + 64) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = 0;
    }

    v22 = [*(*(*(a1 + 56) + 8) + 40) propertiesData];
    if (v22)
    {
      v32 = 0;
      v23 = [[MBProperties alloc] initWithData:v22 error:&v32];
      v24 = v32;
      v25 = MBGetDefaultLog();
      v26 = v25;
      if (v23)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v23;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Deserialized preflight properties: %@", buf, 0xCu);
          _MBLog(@"Df", "Deserialized preflight properties: %@", v23);
        }

        v26 = [(MBProperties *)v23 activeAppleID];
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found activeAppleID: %@", buf, 0xCu);
          _MBLog(@"Df", "Found activeAppleID: %@", v26);
        }

        v28 = [(MBProperties *)v23 appleIDs];
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Found appleIDs: %@", buf, 0xCu);
          _MBLog(@"Df", "Found appleIDs: %@", v28);
        }

        [v14 setActiveAppleID:v26];
        [v14 setAppleIDs:v28];
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to deserialize preflight properties: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to deserialize preflight properties: %@", v24);
      }
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        *buf = 138412290;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Not preflight properties found on %@", buf, 0xCu);
        v31 = objc_opt_class();
        _MBLog(@"E ", "Not preflight properties found on %@", v31);
      }
    }

    [*(a1 + 40) setPeerPreflightInfo:v14];
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001127B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1001127E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v18 = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&v18];
  objc_storeStrong((v3 + 40), v18);
  if (v4)
  {
    v5 = [*(a1 + 32) peerInitResponse];
    if (v5)
    {
      v6 = dispatch_get_global_queue(17, 0);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100112938;
      v13[3] = &unk_1003BEE40;
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = v7;
      v15 = v8;
      v17 = *(a1 + 56);
      v16 = v9;
      dispatch_async(v6, v13);
    }

    else
    {
      v10 = [MBError errorWithCode:1 format:@"nil init response"];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100112938(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackKeychainTransferStart];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001129F0;
  v8[3] = &unk_1003BEE18;
  v4 = *(a1 + 64);
  v8[4] = v3;
  v8[5] = v4;
  v5 = [v3 _perform:v8];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_group_leave(*(a1 + 48));
  objc_autoreleasePoolPop(v2);
}

BOOL sub_1001129F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 peerInitResponse];
  v6 = [v4 _requestKeychainWithSourceInfo:v5 error:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void sub_100112A70(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataTransferWithCompletion:]_block_invoke_4", "MBTargetDeviceTransferEngine.m", 632, "keychainTransferResponse || error");
  }

  v2 = objc_autoreleasePoolPush();
  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218242;
      v11 = v3;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed keychain data transfer (freeDiskSpace:%llu): %@", buf, 0x16u);
      _MBLog(@"E ", "Failed keychain data transfer (freeDiskSpace:%llu): %@", v3, *(*(*(a1 + 64) + 8) + 40));
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134218242;
      v11 = v3;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished keychain data transfer (freeDiskSpace:%llu): %@", buf, 0x16u);
      _MBLog(@"Df", "Finished keychain data transfer (freeDiskSpace:%llu): %@", v3, *(*(*(a1 + 56) + 8) + 40));
    }

    [*(a1 + 32) setPeerKeychainTransferResponse:*(*(*(a1 + 56) + 8) + 40)];
    v8 = objc_opt_new();
    [*(a1 + 32) setPeerKeychainInfo:v8];
  }

  [*(a1 + 40) trackKeychainTransferEnd];
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100112FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100112FC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 40));
    return;
  }

  v5 = [*(a1 + 32) peerInitResponse];
  v6 = [*(a1 + 32) peerKeychainTransferResponse];
  v7 = [*(a1 + 32) peerKeychainInfo];
  v8 = v7;
  if (!v5)
  {
    v14 = @"nil init response";
LABEL_13:
    v15 = [MBError errorWithCode:1 format:v14];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    goto LABEL_14;
  }

  if (!v6)
  {
    v14 = @"nil keychain data transfer response";
    goto LABEL_13;
  }

  if (!v7)
  {
    v14 = @"nil keychain info";
    goto LABEL_13;
  }

  v9 = [*(a1 + 48) uuid];
  v10 = [v8 uuid];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      *buf = 138412546;
      v29 = v13;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid keychain info: %@ != %@", buf, 0x16u);
      _MBLog(@"E ", "Invalid keychain info: %@ != %@", *(a1 + 48), v8);
    }

    v14 = @"Invalid keychain info";
    goto LABEL_13;
  }

LABEL_14:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v18 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011328C;
    block[3] = &unk_1003BEEB8;
    v19 = *(a1 + 56);
    v26 = *(a1 + 64);
    v20 = *(a1 + 32);
    v22 = v19;
    v23 = v20;
    v24 = v6;
    v25 = *(a1 + 40);
    dispatch_async(v18, block);
  }
}

void sub_10011328C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackKeychainRestoreStart];
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113360;
  v7[3] = &unk_1003BEE90;
  v7[4] = v3;
  v8 = *(a1 + 48);
  v4 = [v3 _perform:v7];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 56));
  objc_autoreleasePoolPop(v2);
}

void sub_100113370(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackKeychainRestoreEnd];
  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218242;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed keychain data import (freeDiskSpace:%llu): %@", buf, 0x16u);
      _MBLog(@"E ", "Failed keychain data import (freeDiskSpace:%llu): %@", v3, *(*(*(a1 + 48) + 8) + 40));
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished keychain data import (freeDiskSpace:%llu)", buf, 0xCu);
    _MBLog(@"Df", "Finished keychain data import (freeDiskSpace:%llu)");
  }

  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
}

void sub_1001137C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001137E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v12 = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&v12];
  objc_storeStrong((v3 + 40), v12);
  if (v4)
  {
    [*(a1 + 32) _disableInfraWiFi];
    v5 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100113908;
    block[3] = &unk_1003BEF08;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v6 = *(a1 + 48);
    v11[4] = *(a1 + 64);
    v7 = *(a1 + 40);
    v13.val[0].f64[0] = v8;
    v13.val[1] = v9;
    *&v13.val[0].f64[1] = v7;
    vst2q_f64(v11, v13);
    dispatch_async(v5, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100113908(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) peerInitResponse];
  v4 = [*(a1 + 32) peerPreflightInfo];
  v5 = v4;
  if (!v3)
  {
    v14 = @"nil init response";
LABEL_12:
    v17 = [MBError errorWithCode:1 format:v14];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_13;
  }

  if (!v4)
  {
    v14 = @"nil preflight info";
    goto LABEL_12;
  }

  v6 = [*(a1 + 40) uuid];
  v7 = [v5 uuid];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      *buf = 138412546;
      v36 = v16;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid preflight info: %@ != %@", buf, 0x16u);
      _MBLog(@"E ", "Invalid preflight info: %@ != %@", *(a1 + 40), v5);
    }

    v14 = @"Invalid preflight info";
    goto LABEL_12;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  v34 = 0;
  v11 = [v9 _checkFreeDiskSpace:v10 preflightInfo:v5 error:&v34];
  v12 = v34;
  v13 = v34;
  if ((v11 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
  }

LABEL_13:
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v20 = *(a1 + 32);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100113C60;
    v31[3] = &unk_1003BEEE0;
    v31[4] = v20;
    v21 = v3;
    v32 = v21;
    v33 = v5;
    v22 = [v20 _perform:v31];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      dispatch_group_leave(*(a1 + 48));
    }

    else
    {
      v25 = *(a1 + 32);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100113C74;
      v29[3] = &unk_1003BEE90;
      v29[4] = v25;
      v30 = v21;
      v26 = [v25 _perform:v29];
      v27 = *(*(a1 + 56) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      dispatch_group_leave(*(a1 + 48));
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100113C84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218242;
      v12 = v3;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed data transfer (freeDiskSpace:%llu): %@", buf, 0x16u);
      _MBLog(@"E ", "Failed data transfer (freeDiskSpace:%llu): %@", v3, *(*(*(a1 + 48) + 8) + 40));
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished data transfer (freeDiskSpace:%llu)", buf, 0xCu);
    _MBLog(@"Df", "Finished data transfer (freeDiskSpace:%llu)");
  }

  if (MBIsInternalInstall() && v3 >> 30 <= 6 && !dword_100421790 && !atomic_fetch_add_explicit(&dword_100421790, 1u, memory_order_relaxed))
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v12 = v3;
      v13 = 2048;
      v14 = 0x1C0000000;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Unexpected free disk space left on target after transfer(%llu < %llu)", buf, 0x16u);
      _MBLog(@"F ", "Unexpected free disk space left on target after transfer(%llu < %llu)", v3, 0x1C0000000);
    }
  }

  v9 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113F34;
  block[3] = &unk_1003BC0B0;
  block[4] = *(a1 + 32);
  dispatch_async(v9, block);

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithError:*(*(*(a1 + 48) + 8) + 40)];
  objc_autoreleasePoolPop(v2);
}

void sub_1001144B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001144C8(uint64_t a1)
{
  v2 = objc_opt_new();
  v6 = 0;
  v3 = [v2 holdWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {

    v2 = 0;
  }

  [*(a1 + 32) setDeviceLockAssertion:v2];

  return 1;
}

BOOL sub_100114548(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) trackInitMessageStart];
  v4 = [*(a1 + 40) _requestInitWithError:a2];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 32) trackInitMessageEnd];
  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void sub_100114EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100114F38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100115550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100115598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100115B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100115B64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001168B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  _Block_object_dispose((v32 - 176), 8);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100116928(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained peerPreflightResponse];
    *(a2 + 16) = [v5 uploadFileCount];

    v6 = [v4 peerPreflightResponse];
    *(a2 + 24) = [v6 uploadSize];

    v7 = [v4 progressModel];
    v8 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v8;
    [v7 updateTotalProgressWithPhase:3 transferInfo:v9];
  }
}

void sub_1001169CC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100117598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to send %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to send %@: %@", *(a1 + 32), v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
      _MBLog(@"Df", "Received %@", v5);
    }

    atomic_store(1u, (*(a1 + 40) + 101));
    [*(a1 + 40) _stopTrackingPeerConnectionStatus];
  }

  atomic_store(0, (*(a1 + 40) + 100));
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001179A8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[MBPeerRestoreProgressRequest alloc] initWithPercentage:a1[6]];
  v4 = dispatch_semaphore_create(0);
  v5 = a1[4];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100117B78;
  v16 = &unk_1003BF048;
  v6 = v3;
  v7 = a1[5];
  v17 = v6;
  v18 = v7;
  v8 = v4;
  v19 = v8;
  [MBPeerMessenger sendRequest:v6 session:v5 responseHandler:&v13];
  v9 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for %@", buf, 0xCu);
      v12 = objc_opt_class();
      _MBLog(@"E ", "Timed out waiting for %@", v12, v13, v14, v15, v16, v17, v18);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100117B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to send %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to send %@: %@", *(a1 + 32), v6);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    _MBLog(@"Df", "Received %@", v5);
  }

  atomic_store(0, (*(a1 + 40) + 103));
  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_100117E8C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) connection];
  [v2 connection:v3 didUpdateDeviceTransferProgress:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _postTransferProgressNotification:v5];
}

void sub_1001194D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100119530(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 deleted])
  {
    v4 = 0;
    goto LABEL_44;
  }

  v5 = [*(a1 + 32) parentEngine];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreDomainEngine cleanUpAfterError:]_block_invoke", "MBCKRestoreDomainEngine.m", 121, "parentEngine");
  }

  v6 = v5;
  [v3 setupWithDomain:*(a1 + 40)];
  v39 = 0;
  v7 = [*(a1 + 32) restorePolicy];
  v38 = 0;
  v8 = [v7 shouldRestoreFile:v3 markFileAsSkipped:&v39 error:&v38];
  v9 = v38;

  if (v8)
  {
    v10 = [*(a1 + 32) restorePolicy];
    v11 = [v10 deprecated_destinationPathForiCloudRestorable:v3 safeHarborDir:0];

    v12 = v11;
    v13 = [v12 fileSystemRepresentation];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=ckdomain-engine= Removing staged item at %@", &buf, 0xCu);
      _MBLog(@"Db", "=ckdomain-engine= Removing staged item at %@", v12);
    }

    memset(&buf, 0, sizeof(buf));
    if (lstat(v13, &buf))
    {
      if (*__error() == 2)
      {
LABEL_9:
        v15 = 1;
        v16 = v9;
        goto LABEL_31;
      }

      v16 = [MBError posixErrorWithCode:101 path:v12 format:@"lstat error"];
      v19 = v16;
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *__error();
        *v40 = 138412546;
        *&v40[4] = v12;
        v41 = 1024;
        v42 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckdomain-engine= lstat failed at %@: %{errno}d", v40, 0x12u);
        v22 = __error();
        _MBLog(@"E ", "=ckdomain-engine= lstat failed at %@: %{errno}d", v12, *v22);
      }
    }

    else
    {
      if ((buf.st_mode & 0xF000) != 0x4000)
      {
        v24 = +[NSFileManager defaultManager];
        *v40 = 0;
        v15 = [v24 removeItemAtPath:v12 error:v40];
        v25 = *v40;

        v16 = v9;
        if ((v15 & 1) == 0)
        {
          v16 = [MBError errorWithCode:102 error:v25 path:v12 format:@"Error removing existing item at %@", v12];
          v26 = v16;
        }

LABEL_31:
        v17 = v16;

        if ((v15 & 1) == 0)
        {
          v4 = v17;
LABEL_42:

          goto LABEL_43;
        }

        if ([v3 isDirectory])
        {
          v27 = *(*(a1 + 56) + 8);
          v28 = *(v27 + 24) + 1;
          *(v27 + 24) = v28;
          if (__ROR8__(0xD288CE703AFB7E91 * v28, 4) <= 0x68DB8BAC710CBuLL)
          {
            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 48);
              v31 = *(*(*(a1 + 56) + 8) + 24);
              buf.st_dev = 134218242;
              *&buf.st_mode = v31;
              WORD2(buf.st_ino) = 2114;
              *(&buf.st_ino + 6) = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed %llu dirs for %{public}@", &buf, 0x16u);
              _MBLog(@"Df", "=ckdomain-engine= Removed %llu dirs for %{public}@", *(*(*(a1 + 56) + 8) + 24), *(a1 + 48));
            }

LABEL_40:
          }
        }

        else
        {
          v32 = *(*(a1 + 64) + 8);
          v33 = *(v32 + 24) + 1;
          *(v32 + 24) = v33;
          if (__ROR8__(0xD288CE703AFB7E91 * v33, 4) <= 0x68DB8BAC710CBuLL)
          {
            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(*(*(a1 + 64) + 8) + 24);
              v35 = *(a1 + 48);
              buf.st_dev = 134218242;
              *&buf.st_mode = v34;
              WORD2(buf.st_ino) = 2114;
              *(&buf.st_ino + 6) = v35;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed %llu files for %{public}@", &buf, 0x16u);
              _MBLog(@"Df", "=ckdomain-engine= Removed %llu files for %{public}@", *(*(*(a1 + 64) + 8) + 24), *(a1 + 48));
            }

            goto LABEL_40;
          }
        }

        v4 = 0;
        goto LABEL_42;
      }

      if (!rmdir(v13))
      {
        goto LABEL_9;
      }

      if (*__error() == 66)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v40 = 138412290;
          *&v40[4] = v12;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=ckdomain-engine= Leaving non-empty staged directory at %@", v40, 0xCu);
          _MBLog(@"I ", "=ckdomain-engine= Leaving non-empty staged directory at %@", v12);
        }

        goto LABEL_9;
      }

      v16 = [MBError posixErrorWithCode:102 path:v12 format:@"rmdir error"];
      v37 = v16;
    }

    v15 = 0;
    goto LABEL_31;
  }

  v4 = 0;
  if ((v39 & 1) == 0 && v9)
  {
    if (([MBError isError:v9 withCode:213]& 1) == 0)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 138412546;
        *&buf.st_mode = v3;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v9;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if file %@ should be cleaned up after error: %@", &buf, 0x16u);
        _MBLog(@"E ", "=ckdomain-engine= Failed to determine if file %@ should be cleaned up after error: %@", v3, v9);
      }

      v17 = v9;
      v4 = v17;
      goto LABEL_43;
    }

    v4 = 0;
  }

  v17 = v9;
LABEL_43:

LABEL_44:

  return v4;
}

uint64_t sub_100119BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100119BD8(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

BOOL sub_100119C34(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_100119F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011B5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v65 - 208), 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_10011B65C(uint64_t a1, void *a2)
{
  v53 = a2;
  v3 = [*(a1 + 32) debugContext];
  v4 = [v3 isFlagSet:@"SimulateProcessBatchErrorDuringDomainRestore"];

  if (v4)
  {
    v5 = [NSError errorWithDomain:CKErrorDomain code:4 userInfo:0];
  }

  else
  {
    v55 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v53, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v6 = v53;
    v7 = [v6 countByEnumeratingWithState:&v88 objects:v104 count:16];
    if (v7)
    {
      v8 = *v89;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v89 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v88 + 1) + 8 * i);
          v11 = [CKRecordID alloc];
          v12 = [*(a1 + 40) defaultZoneID];
          v13 = [v11 initWithRecordName:v10 zoneID:v12];

          v14 = [[CKReference alloc] initWithRecordID:v13 action:0];
          [v55 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v88 objects:v104 count:16];
      }

      while (v7);
    }

    v15 = [NSPredicate predicateWithFormat:@"recordID IN %@", v55];
    v16 = [CKQuery alloc];
    v17 = +[(MBCKModel *)MBCKFile];
    v18 = [v16 initWithRecordType:v17 predicate:v15];

    val = [[CKQueryOperation alloc] initWithQuery:v18];
    v19 = [*(a1 + 40) defaultZoneID];
    [val setZoneID:v19];

    v20 = [*(a1 + 32) persona];
    v21 = [v20 shouldRestoreFilesSparse];

    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setSparseAware:&__kCFBooleanTrue];
      v102 = @"contents";
      v103 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      [val setAssetTransferOptionsByKey:v23];
    }

    v24 = objc_opt_new();
    objc_initWeak(&location, val);
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 0xBFF0000000000000;
    v25 = dispatch_semaphore_create(10);
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10011BE94;
    v63[3] = &unk_1003BF0F0;
    v71 = &v75;
    v72 = &v83;
    v73 = *(a1 + 72);
    v27 = v24;
    v28 = *(a1 + 32);
    v64 = v27;
    v65 = v28;
    v74 = &v79;
    v66 = *(a1 + 48);
    v67 = *(a1 + 40);
    v29 = v25;
    v68 = v29;
    v30 = v26;
    v69 = v30;
    v70 = *(a1 + 56);
    [val setRecordFetchedBlock:v63];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10011C4EC;
    v56[3] = &unk_1003BF118;
    objc_copyWeak(&v62, &location);
    v61 = &v83;
    v57 = v6;
    v58 = *(a1 + 64);
    v31 = v27;
    v59 = v31;
    v32 = v30;
    v60 = v32;
    [val setQueryCompletionBlock:v56];
    +[NSDate timeIntervalSinceReferenceDate];
    v34 = v33;
    [*(a1 + 40) addDatabaseOperation:val];
    MBGroupWaitForever();
    v35 = v76[3];
    v36 = -1.0;
    if (v34 >= v35)
    {
      v37 = -1.0;
    }

    else
    {
      v37 = v35 - v34;
    }

    if (v37 > 0.0)
    {
      v36 = v80[3] / v37 / 1000000.0;
    }

    v38 = MBGetDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = *(a1 + 64);
      v40 = v84[3];
      v41 = v80[3];
      *buf = 138413314;
      v93 = v39;
      v94 = 2048;
      v95 = v40;
      v96 = 2048;
      v97 = v41;
      v98 = 2048;
      v99 = v37;
      v100 = 2048;
      v101 = v36;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finished download batch for %@ (%lu, %llu) in %.3fs at %.3fMB/s", buf, 0x34u);
      _MBLog(@"I ", "=ckdomain-engine= Finished download batch for %@ (%lu, %llu) in %.3fs at %.3fMB/s", *(a1 + 64), v84[3], v80[3], *&v37, *&v36);
    }

    if ([v31 count])
    {
      v42 = MBGetDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = v42;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(a1 + 64);
          v45 = [v55 count];
          v46 = v80[3];
          *buf = 138413058;
          v93 = v44;
          v94 = 2048;
          v95 = v45;
          v96 = 2048;
          v97 = v46;
          v98 = 2112;
          v99 = *&v31;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to download batch for %@ (%lu, %llu): %@", buf, 0x2Au);
        }

        v47 = *(a1 + 64);
        v48 = [v55 count];
        _MBLog(@"E ", "=ckdomain-engine= Failed to download batch for %@ (%lu, %llu): %@", v47, v48, v80[3], v31);
      }

      v5 = [MBError errorWithErrors:v31];
    }

    else
    {
      v49 = objc_opt_new();
      v50 = *(*(a1 + 80) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;

      v5 = 0;
    }

    objc_destroyWeak(&v62);
    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(&v83, 8);
    objc_destroyWeak(&location);
  }

  return v5;
}

void sub_10011BE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011BE94(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSDate timeIntervalSinceReferenceDate];
  *(*(*(a1 + 88) + 8) + 24) = v4;
  ++*(*(*(a1 + 96) + 8) + 24);
  v5 = *(*(*(a1 + 104) + 8) + 40);
  v6 = [v3 recordID];
  v7 = [v6 recordName];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(*(*(a1 + 104) + 8) + 40);
  v10 = [v3 recordID];
  v11 = [v10 recordName];
  [v9 removeObjectForKey:v11];

  if (!v8)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to find file to restore: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckdomain-engine= Failed to find file to restore: %@", 0);
    }

    v22 = *(a1 + 32);
    objc_sync_enter(v22);
    v23 = *(a1 + 32);
    v24 = [MBError errorWithCode:4 format:@"Failed to find file to restore: %@", 0];
    [v23 addObject:v24];

    objc_sync_exit(v22);
    goto LABEL_12;
  }

  if (([*(a1 + 40) isCanceled] & 1) == 0)
  {
    [v8 refreshWithRecord:v3];
    v12 = [v8 size];
    v13 = &v12[[v8 resourcesSize]];
    *(*(*(a1 + 112) + 8) + 24) += v13;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = [*(a1 + 40) cache];
    v17 = [*(a1 + 40) device];
    v32 = 0;
    LOBYTE(v15) = [v8 stashAssetsToTemporaryDirectoryWithAccount:v14 operationTracker:v15 cache:v16 device:v17 error:&v32];
    v18 = v32;

    if (v15)
    {
      dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
      v19 = *(a1 + 72);
      v20 = *(a1 + 80);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011C28C;
      block[3] = &unk_1003BD018;
      block[4] = *(a1 + 40);
      v28 = v8;
      v29 = *(a1 + 32);
      v31 = v13;
      v30 = *(a1 + 64);
      dispatch_group_async(v19, v20, block);
    }

    else
    {
      v25 = *(a1 + 32);
      objc_sync_enter(v25);
      [*(a1 + 32) addObject:v18];
      objc_sync_exit(v25);

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v8;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to stash downloaded asset for file: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckdomain-engine= Failed to stash downloaded asset for file: %@", v8);
      }
    }

    v22 = v18;
LABEL_12:
  }
}

void sub_10011C28C(uint64_t a1)
{
  v2 = [*(a1 + 32) parentEngine];
  if (!v2)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]_block_invoke", "MBCKRestoreDomainEngine.m", 428, "parentEngine");
  }

  v3 = [*(a1 + 32) restorePolicy];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) safeHarborDir];
  v6 = [v3 deprecated_destinationPathForiCloudRestorable:v4 safeHarborDir:v5];

  v7 = [[MBCKRestoreFileEngine alloc] initWithRestoreEngine:v2 file:*(a1 + 40) destinationPath:v6 shouldSetProtectionClass:1];
  v15 = 0;
  v8 = [(MBCKRestoreFileEngine *)v7 runWithError:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = [v2 progressModel];
    [v10 finishedItem:*(a1 + 40) size:*(a1 + 64)];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 40) fileTypeString];
      v13 = *(a1 + 40);
      *buf = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore %{public}@ %@: %@", buf, 0x20u);

      v14 = [*(a1 + 40) fileTypeString];
      _MBLog(@"E ", "=ckdomain-engine= Failed to restore %{public}@ %@: %@", v14, *(a1 + 40), v9);
    }

    v10 = *(a1 + 48);
    objc_sync_enter(v10);
    [*(a1 + 48) addObject:v9];
    objc_sync_exit(v10);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10011C4EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [WeakRetained operationID];

  if (v6)
  {
    goto LABEL_2;
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  if (v12 == [*(a1 + 32) count])
  {
    v6 = 0;
    goto LABEL_14;
  }

  v6 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Batch file operation %@ fetched incorrect number of file records (%lu of %lu)", v8, *(*(*(a1 + 64) + 8) + 24), [*(a1 + 32) count]);
  if (MBIsInternalInstall() && !dword_100421794 && !atomic_fetch_add_explicit(&dword_100421794, 1u, memory_order_relaxed))
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = *(*(*(a1 + 64) + 8) + 24);
      v15 = [*(a1 + 32) count];
      *buf = 138412802;
      v17 = v8;
      v18 = 2048;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "=ckdomain-engine= =ckdomain-engine= Operation %@ fetched an incorrect number of file records (%lu of %lu)", buf, 0x20u);
      _MBLog(@"F ", "=ckdomain-engine= =ckdomain-engine= Operation %@ fetched an incorrect number of file records (%lu of %lu)", v8, *(*(*(a1 + 64) + 8) + 24), [*(a1 + 32) count]);
    }
  }

  if (v6)
  {
LABEL_2:
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Batch download operation %{public}@ for %@ failed: %@", buf, 0x20u);
      _MBLog(@"E ", "=ckdomain-engine= Batch download operation %{public}@ for %@ failed: %@", v8, *(a1 + 40), v6);
    }

    v11 = *(a1 + 48);
    objc_sync_enter(v11);
    [*(a1 + 48) addObject:v6];
    objc_sync_exit(v11);
  }

LABEL_14:
  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_10011C7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v4 handleCancelation:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    if ([v3 deleted])
    {
      v7 = 1;
      goto LABEL_57;
    }

    [v3 setupWithDomain:*(a1 + 40)];
    v51 = 0;
    v8 = [*(a1 + 32) restorePolicy];
    v50 = 0;
    v9 = [v8 shouldRestoreFile:v3 markFileAsSkipped:&v51 error:&v50];
    v10 = v50;

    if ((v9 & 1) == 0)
    {
      if (([v3 isRegularFile] & 1) == 0)
      {
        v19 = [v3 size];
        v20 = [v3 resourcesSize];
        v21 = [*(a1 + 48) progressModel];
        [v21 finishedItem:v3 size:&v19[v20]];
      }

      if (v51 == 1)
      {
        if ([v3 isDirectory])
        {
          v22 = *(*(*(a1 + 72) + 8) + 40);
          v23 = [v3 fileID];
          [v22 addObject:v23];
        }

        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Skipping file: %@", buf, 0xCu);
          _MBLog(@"Df", "=ckdomain-engine= Skipping file: %@", v3);
        }
      }

      else
      {
        if (!v10)
        {
          v7 = 1;
LABEL_56:

          goto LABEL_57;
        }

        if (![MBError isError:v10 withCode:213])
        {
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = v3;
            v55 = 2112;
            v56 = v10;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if file %@ should be restored: %@", buf, 0x16u);
            _MBLog(@"E ", "=ckdomain-engine= Failed to determine if file %@ should be restored: %@", v3, v10);
          }

          v36 = *(*(a1 + 64) + 8);
          v17 = v10;
          v7 = 0;
          v13 = *(v36 + 40);
          *(v36 + 40) = v17;
          goto LABEL_55;
        }

        if ([v3 isDirectory])
        {
          v32 = *(*(*(a1 + 72) + 8) + 40);
          v33 = [v3 fileID];
          [v32 addObject:v33];
        }

        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Skipping file during FG restore: %@", buf, 0xCu);
          _MBLog(@"Df", "=ckdomain-engine= Skipping file during FG restore: %@", v3);
        }
      }

LABEL_54:
      v7 = 1;
      v17 = v10;
LABEL_55:

      v10 = v17;
      goto LABEL_56;
    }

    if ([v3 downloaded])
    {
      goto LABEL_7;
    }

    if ([v3 resourcesSize])
    {
LABEL_47:
      v38 = *(*(*(a1 + 80) + 8) + 40);
      v39 = [v3 recordIDString];
      [v38 setObject:v3 forKeyedSubscript:v39];

      if ([*(*(*(a1 + 88) + 8) + 40) count] >= *(a1 + 104) || *(*(*(a1 + 96) + 8) + 24) >= *(a1 + 112))
      {
        v40 = (*(*(a1 + 56) + 16))();
        v41 = *(*(a1 + 64) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        *(*(*(a1 + 96) + 8) + 24) = 0;
        if (*(*(*(a1 + 64) + 8) + 40))
        {
          v7 = 0;
          goto LABEL_56;
        }
      }

      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [v3 downloaded];
        *buf = 138412546;
        v54 = v3;
        v55 = 1024;
        LODWORD(v56) = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "=ckdomain-engine= Adding file to download batch: %@ (%d)", buf, 0x12u);
        _MBLog(@"I ", "=ckdomain-engine= Adding file to download batch: %@ (%d)", v3, [v3 downloaded]);
      }

      v45 = *(*(*(a1 + 96) + 8) + 24);
      v46 = [v3 size];
      *(*(*(a1 + 96) + 8) + 24) = [v3 resourcesSize] + v46 + v45;
      v47 = *(*(*(a1 + 88) + 8) + 40);
      v13 = [v3 recordIDString];
      [v47 addObject:v13];
      goto LABEL_54;
    }

    v24 = +[NSFileManager defaultManager];
    v25 = [*(a1 + 32) cache];
    v26 = [v3 signature];
    v27 = [v25 fileAssetMetadataForSignature:v26 volumeType:{objc_msgSend(v3, "volumeType")}];

    v28 = [v27 decodedAssetPath];
    v29 = [v27 stashedAssetPath];
    v30 = v29;
    if (v28)
    {
      if ([v24 fileExistsAtPath:v28])
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v54 = v3;
          v55 = 2112;
          v56 = v28;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=ckdomain-engine= Already decoded file contents for this file(%@), so don't download again: %@", buf, 0x16u);
          _MBLog(@"I ", "=ckdomain-engine= Already decoded file contents for this file(%@), so don't download again: %@", v3, v28);
        }

LABEL_42:

LABEL_7:
        v11 = [*(a1 + 32) restorePolicy];
        v12 = [*(a1 + 32) safeHarborDir];
        v13 = [v11 deprecated_destinationPathForiCloudRestorable:v3 safeHarborDir:v12];

        v14 = -[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]([MBCKRestoreFileEngine alloc], "initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:", *(a1 + 48), v3, v13, [v3 isDirectory] ^ 1);
        v49 = v10;
        v15 = [(MBCKRestoreFileEngine *)v14 runWithError:&v49];
        v16 = v49;
        v17 = v49;

        if (v15)
        {
          if (([v3 isDirectory] & 1) == 0)
          {
            v18 = [*(a1 + 48) progressModel];
            [v18 finishedItem:v3];
          }

          v7 = 1;
        }

        else
        {
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = v3;
            v55 = 2112;
            v56 = v17;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore %@: %@", buf, 0x16u);
            _MBLog(@"E ", "=ckdomain-engine= Failed to restore %@: %@", v3, v17);
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
          v7 = 0;
        }

        goto LABEL_55;
      }

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    else if (!v29)
    {
LABEL_46:

      goto LABEL_47;
    }

    if ([v24 fileExistsAtPath:v30])
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v54 = v3;
        v55 = 2112;
        v56 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=ckdomain-engine= Already stashed file contents for this file(%@), so don't download again: %@", buf, 0x16u);
        _MBLog(@"I ", "=ckdomain-engine= Already stashed file contents for this file(%@), so don't download again: %@", v3, v30);
      }

      goto LABEL_42;
    }

LABEL_43:
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v54 = v3;
      v55 = 2112;
      v56 = v28;
      v57 = 2112;
      v58 = v30;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "=ckdomain-engine= Had cached stash path or decoded path for this file(%@), but they were not on disk anymore: %@, %@", buf, 0x20u);
      _MBLog(@"F ", "=ckdomain-engine= Had cached stash path or decoded path for this file(%@), but they were not on disk anymore: %@, %@", v3, v28, v30);
    }

    goto LABEL_46;
  }

  v7 = 0;
LABEL_57:

  return v7;
}

uint64_t sub_10011D054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 handleCancelation:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(*(*(a1 + 64) + 8) + 40);
    v9 = [v3 fileID];
    LOBYTE(v8) = [v8 containsObject:v9];

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      [v3 setupWithDomain:*(a1 + 40)];
      v10 = [v3 size];
      v11 = [v3 resourcesSize];
      v12 = [*(a1 + 32) restorePolicy];
      v13 = [*(a1 + 32) safeHarborDir];
      v14 = [v12 deprecated_destinationPathForiCloudRestorable:v3 safeHarborDir:v13];

      v15 = [[MBCKRestoreFileEngine alloc] initWithRestoreEngine:*(a1 + 48) file:v3 destinationPath:v14 shouldSetProtectionClass:1];
      v24 = 0;
      v7 = [(MBCKRestoreFileEngine *)v15 runWithError:&v24];
      v16 = v24;
      if (v7)
      {
        v17 = [*(a1 + 48) progressModel];
        [v17 finishedItem:v3 size:&v10[v11]];
      }

      else
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v3 fileTypeString];
          *buf = 138543874;
          v27 = v19;
          v28 = 2112;
          v29 = v3;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore %{public}@ %@: %@", buf, 0x20u);

          v20 = [v3 fileTypeString];
          _MBLog(@"E ", "=ckdomain-engine= Failed to restore %{public}@ %@: %@", v20, v3, v16);
        }

        v21 = *(*(a1 + 56) + 8);
        v22 = v16;
        v17 = *(v21 + 40);
        *(v21 + 40) = v22;
      }
    }
  }

  return v7;
}

void sub_10011E4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10011E514(void *a1, void *a2)
{
  v3 = a2;
  if ([*(a1[4] + 32) shouldRestoreFile:v3 markFileAsSkipped:0 error:0])
  {
    ++*(*(a1[8] + 8) + 24);
    v4 = a1[5];
    if (v4)
    {
      v5 = [v3 absolutePath];
      v6 = [v4 stringByAppendingPathComponent:v5];
    }

    else
    {
      v5 = [*(a1[4] + 32) restoreRootForDomain:a1[6]];
      v7 = [v3 relativePath];
      v6 = [v5 stringByAppendingPathComponent:v7];
    }
  }

  else
  {
    v6 = 0;
    ++*(*(a1[7] + 8) + 24);
  }

  return v6;
}

void sub_10011ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10011EDCC(void *a1, void *a2)
{
  v3 = a2;
  if ([*(a1[4] + 32) shouldRestoreFile:v3 markFileAsSkipped:0 error:0])
  {
    ++*(*(a1[7] + 8) + 24);
    v4 = a1[5];
    v5 = [v3 relativePath];
    v6 = [v4 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
    ++*(*(a1[6] + 8) + 24);
  }

  return v6;
}

void sub_10011F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F268(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10011F280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v4 _checkForCancellation:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = (*(*(a1 + 56) + 16))();
    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "=verifier= Verifying item: %@", buf, 0xCu);
        _MBLog(@"Db", "=verifier= Verifying item: %@", v3);
      }

      v9 = [*(a1 + 32) _verifyRestoreMetadataForFile:v3 localPath:v7 fileList:*(a1 + 40)];
      if (v9)
      {
        [*(a1 + 48) addObject:v9];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=verifier= Skipping item: %@", buf, 0xCu);
      _MBLog(@"I ", "=verifier= Skipping item: %@", v3);
    }
  }

  return v6;
}

void sub_1001201B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001201F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=verifier= Failed to fetch the device record:%@(%@)", buf, 0x16u);
      _MBLog(@"E ", "=verifier= Failed to fetch the device record:%@(%@)", v7, v9);
    }

    v11 = 40;
  }

  else
  {
    v11 = 48;
    a4 = a3;
  }

  objc_storeStrong((*(*(a1 + v11) + 8) + 40), a4);
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001207B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 baseRecordID];
  v7 = [MBDomainRecord recordIDFromBaseRecordID:v6 pageIndex:0];

  v8 = MBFileListDBPath(*(a1 + 32), *(a1 + 40), v5);
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 recordName];
    *buf = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=verifier= Fetched domain %@ with recordID %@ and stashed file list to %@", buf, 0x20u);

    v11 = [v7 recordName];
    _MBLog(@"I ", "=verifier= Fetched domain %@ with recordID %@ and stashed file list to %@", v5, v11, v8);
  }

  [*(a1 + 48) setObject:v7 forKeyedSubscript:v5];
}

void sub_100120F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100120E70);
  }

  _Unwind_Resume(exception_object);
}

id sub_100120FE8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) domainForName:a2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = [*(a1 + 80) account];
  v10 = [v9 persona];
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v17 = 0;
  v13 = [v4 _verifyFileListForDomain:v3 snapshotDirectory:v5 snapshotTacker:v6 domainRecordIDsByDomainName:v7 device:v8 persona:v10 recordsDB:v11 commitID:v12 error:&v17];
  v14 = v17;
  v15 = v17;

  if ((v13 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v14);
  }

  return v13;
}

void sub_1001218EC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x100121788);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100121B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100121B28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]_block_invoke", "MBSnapshotIntegrityVerifier.m", 711, "assetRecordIDSuffix");
  }

  if (!a3)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]_block_invoke", "MBSnapshotIntegrityVerifier.m", 712, "enumerationError");
  }

  v6 = v5;
  v7 = [MBAssetRecord recordIDFromAssetIDPrefix:*(a1 + 32) recordIDSuffix:v5];
  v8 = *(a1 + 40);
  v9 = [v7 recordName];
  v10 = [v8 hasAssetReference:v9 error:a3];

  if (v10)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v11 = [*(a1 + 48) name];
    v12 = [v7 recordName];
    v13 = [NSString stringWithFormat:@"Missing server-side asset reference for domain %@, recordID %@", v11, v12];

    [*(a1 + 56) _logFailureAndAppendToAttemptSummary:v13];
    *a3 = [MBError errorWithCode:500 description:v13];
  }

  return v10;
}

void sub_100123C1C(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v7 = v3;
  if (!*a1)
  {
    v4 = +[NSMutableArray array];
    v5 = v4;
    v3 = v7;
    *a1 = v4;
  }

  v6 = v3[2]();
  [v4 addObject:v6];
}

void sub_100124AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100124B18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100124B30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to remove domain: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to remove domain: %@", v5);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100125318(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v10];
  if (!v8)
  {
    __assert_rtn("[MBDomainReferenceConsolidator enumerateConsolidatedDomainNamesAndReference:]_block_invoke", "MBDomainReferenceConsolidator.m", 73, "reference");
  }

  v9 = v8;
  *a4 = (*(*(a1 + 40) + 16))() ^ 1;
}

void sub_10012635C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v4 manager:v5 didScanBundleWithID:v6 bytesUsed:{objc_msgSend(a3, "unsignedLongLongValue")}];
}

void sub_1001263C8(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v11 = [v5 _bundleIDForDomainName:v7];
  v9 = a1[5];
  v8 = a1[6];
  v10 = [v6 unsignedLongLongValue];

  [v9 manager:v8 didScanDomainWithName:v7 forBundleID:v11 bytesUsed:v10];
}

void sub_100126470(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _bundleIDForDomainName:v7];
  [*(a1 + 40) manager:*(a1 + 48) didScanFiles:v6 forDomainWithName:v7 bundleID:v8];
}

void sub_100127064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(a1 + 32) + 304) objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        v9 += [v12 unsignedLongLongValue];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = [NSNumber numberWithUnsignedLongLong:v9];
  [*(a1 + 40) setObject:v13 forKeyedSubscript:v5];
}

int64_t sub_1001273C8(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_1000714E4(v4);
  if (v6 == sub_1000714E4(v5))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v9 = [v7 compare:v8];
  }

  else
  {
    v10 = sub_1000714E4(v4);
    if (v10 >= sub_1000714E4(v5))
    {
      v11 = sub_1000714E4(v4);
      v9 = v11 != sub_1000714E4(v5);
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

void sub_1001279CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v13 = MBDomainHMACForDomainName(v7, v5);
  v8 = [*(a1 + 40) objectForKeyedSubscript:v13];
  v9 = [v8 quota];

  v10 = [v6 unsignedLongLongValue];
  if (v10 <= v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - v9;
  }

  v12 = [NSNumber numberWithLongLong:v11];
  [*(*(a1 + 48) + 304) setObject:v12 forKeyedSubscript:v7];
}

id sub_1001282A8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100421798;
  qword_100421798 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_100421798 setLocale:v3];

  v4 = qword_100421798;

  return [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"];
}

void sub_100128848(uint64_t a1)
{
  [*(a1 + 32) timeout];
  v3 = v2;
  v4 = [*(a1 + 32) _fetchPluginFieldsFromDelegate];
  v5 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 32) lock];
  v7 = [*(a1 + 32) account];
  v13 = 0;
  v8 = [v6 saveLockWithAccount:v7 timeout:v4 pluginFields:&v13 error:v3];
  v9 = v13;

  if (v8)
  {
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 lockManagerDidAcquireLock:*(a1 + 32)];
    }

    v10 = +[NSDate date];
    [*(a1 + 32) setLastAcquired:v10];

    [*(a1 + 32) setLastDuration:v3];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to renew lock: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to renew lock: %@", v9);
    }

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 lockManager:*(a1 + 32) failedToAcquireLockWithError:v9];
    }
  }

  v12 = *(a1 + 32);
  [v12 renewInterval];
  [v12 _scheduleTimerWithInterval:?];
}

id sub_100128B1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 renewInterval];

  return [v1 _scheduleTimerWithInterval:?];
}

void sub_100128F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose((v18 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100128F78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100128F90(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchPluginFieldsFromDelegate];
  v3 = [*(a1 + 32) lock];
  v4 = [*(a1 + 32) account];
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v3 saveLockWithAccount:v4 timeout:v2 pluginFields:&obj error:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v7;
}

void sub_10012A024(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = [NSString stringWithFormat:@"%s.keybagIsLocking", class_getName(v1)];
  v2 = v7;
  v3 = [v7 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  v6 = qword_1004217B0;
  qword_1004217B0 = v5;
}

void sub_10012A0D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 48) _findMissingEncryptionKeysWithAccount:*(a1 + 32) serviceManager:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10012A120(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10012A3B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 48) _findMissingEncryptionKeysWithAccount:*(a1 + 32) serviceManager:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10012AD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (a2)
  {
    _Block_object_dispose(&a29, 8);
    _Block_object_dispose(va, 8);
    objc_begin_catch(exception_object);
    if (!a17)
    {
      JUMPOUT(0x10012ACD4);
    }

    JUMPOUT(0x10012ACC8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012B1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B1F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10012B20C(void *a1, void *a2)
{
  v3 = a2;
  memset(&v42, 0, sizeof(v42));
  if (!stat([v3 fileSystemRepresentation], &v42))
  {
    st_ino = v42.st_ino;
    v9 = MBVolumeTypeFromPath();
    v10 = *(a1[7] + 8);
    obj = *(v10 + 40);
    v11 = [MBKeyBagFile keybagFileWithPath:v3 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    if (!v11)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        *buf = 138412546;
        v44 = v3;
        v45 = 2112;
        v46 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=encryption key= Error opening file to get encryption key %@: %@", buf, 0x16u);

        v35 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        _MBLog(@"Df", "=encryption key= Error opening file to get encryption key %@: %@", v3, v35);
      }

      *(*(a1[6] + 8) + 24) = 0;
      v7 = 1;
      goto LABEL_24;
    }

    v12 = *(a1[7] + 8);
    v40 = *(v12 + 40);
    v13 = [v11 encryptionKeyWithError:&v40];
    objc_storeStrong((v12 + 40), v40);
    v14 = MBGetDefaultLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = [v13 length];
        *buf = 134218754;
        v44 = v16;
        v45 = 2048;
        v46 = st_ino;
        v47 = 2048;
        v48 = v9;
        v49 = 2112;
        v50 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=encryption key= Found encryption key (size: %tu) for inode:%lld volumeType:%lu at %@", buf, 0x2Au);
        _MBLog(@"Df", "=encryption key= Found encryption key (size: %tu) for inode:%lld volumeType:%lu at %@", [v13 length], st_ino, v9, v3);
      }

      v17 = *(*(a1[8] + 8) + 40);
      if (v17 || (v18 = *(a1[7] + 8), v19 = *(v18 + 40), *(v18 + 40) = 0, v19, v20 = a1[4], v21 = a1[5], v22 = *(a1[7] + 8), v39 = *(v22 + 40), [v20 openCacheWithAccount:v21 accessType:1 error:&v39], v23 = objc_claimAutoreleasedReturnValue(), objc_storeStrong((v22 + 40), v39), v24 = *(a1[8] + 8), v25 = *(v24 + 40), *(v24 + 40) = v23, v25, (v17 = *(*(a1[8] + 8) + 40)) != 0))
      {
        v26 = [v17 setFileEncryptionKey:v13 forInodeNumber:st_ino volumeType:v9 atPath:v3];
        v27 = *(a1[7] + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        if (*(*(a1[7] + 8) + 40))
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *(*(a1[7] + 8) + 40);
            *buf = 134218754;
            v44 = st_ino;
            v45 = 2048;
            v46 = v9;
            v47 = 2112;
            v48 = v3;
            v49 = 2112;
            v50 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=encryption key= Failed to set encryption key for inode:%lld volumeType:%lu at %@: %@", buf, 0x2Au);
            _MBLog(@"E ", "=encryption key= Failed to set encryption key for inode:%lld volumeType:%lu at %@: %@", st_ino, v9, v3, *(*(a1[7] + 8) + 40));
          }

          *(*(a1[6] + 8) + 24) = 0;
        }

        v31 = 1;
        v32 = 9;
        v7 = 1;
        goto LABEL_23;
      }

      v31 = 0;
      v7 = 0;
    }

    else
    {
      if (v15)
      {
        v36 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        *buf = 134218754;
        v44 = st_ino;
        v45 = 2048;
        v46 = v9;
        v47 = 2112;
        v48 = v3;
        v49 = 2112;
        v50 = v36;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=encryption key= Error getting encryption key for inode:%lld volumeType:%lu at %@: %@", buf, 0x2Au);

        v37 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        _MBLog(@"Df", "=encryption key= Error getting encryption key for inode:%lld volumeType:%lu at %@: %@", st_ino, v9, v3, v37);
      }

      v31 = 0;
      v7 = 1;
    }

    v32 = 6;
LABEL_23:
    *(*(a1[v32] + 8) + 24) = v31;

LABEL_24:
    goto LABEL_25;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *__error();
    *buf = 138412546;
    v44 = v3;
    v45 = 1024;
    LODWORD(v46) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=encryption key= Error getting inode number for %@: %{errno}d", buf, 0x12u);
    v6 = __error();
    _MBLog(@"Df", "=encryption key= Error getting inode number for %@: %{errno}d", v3, *v6);
  }

  *(*(a1[6] + 8) + 24) = 0;
  v7 = 1;
LABEL_25:

  return v7;
}

id MBFetchEncryptionKeyForFile(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, __CFString **a6)
{
  v9 = a1;
  v98 = a2;
  v99 = a3;
  v100 = a4;
  v97 = v9;
  v10 = [v9 absolutePath];
  v101 = [MBEncryptionKeyReader encryptionKeyReaderForFileAtPath:v10 error:a6];

  v11 = v101;
  if (!v101)
  {
    v18 = 0;
    goto LABEL_67;
  }

  v104 = 0;
  v102 = v101;
  v12 = v9;
  v13 = v98;
  v90 = v99;
  v94 = v100;
  v14 = [v12 domain];
  v92 = [v14 name];

  v15 = [v12 domain];
  v89 = [v15 volumeMountPoint];

  v91 = [v12 absolutePath];
  v87 = [v12 inodeNumber];
  if (!v13)
  {
    goto LABEL_14;
  }

  v107 = 0;
  v16 = sub_10012DB9C(v13, v102, v94, &v107);
  v17 = v107;
  if (!v16)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v13 length];
      *buf = 138413314;
      v111 = v92;
      v112 = 2112;
      v113 = v91;
      v114 = 2048;
      v115 = v87;
      v116 = 2048;
      v117 = v21;
      v118 = 2112;
      v119 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=encryption key= Could not validate existing encryption key for %@:%@ (inode:%llu) size:%llu: %@", buf, 0x34u);
      _MBLog(@"I ", "=encryption key= Could not validate existing encryption key for %@:%@ (inode:%llu) size:%llu: %@", v92, v91, v87, [v13 length], v17);
    }

    v106 = 0;
    v18 = sub_10012DC5C(v13, v102, v94, &v106);
    v22 = v106;
    v23 = v22;
    if (v18)
    {

      v19 = 2;
      goto LABEL_10;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v13 length];
      *buf = 138413314;
      v111 = v92;
      v112 = 2112;
      v113 = v91;
      v114 = 2048;
      v115 = v87;
      v116 = 2048;
      v117 = v25;
      v118 = 2112;
      v119 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=encryption key= Could not update existing encryption key for %@:%@ (inode:%llu) size:%llu: %@", buf, 0x34u);
      _MBLog(@"I ", "=encryption key= Could not update existing encryption key for %@:%@ (inode:%llu) size:%llu: %@", v92, v91, v87, [v13 length], v23);
    }

LABEL_14:
    v105 = 0;
    v26 = v90;
    v27 = v89;
    v28 = v102;
    v29 = v94;
    v85 = v26;
    v86 = v27;
    v30 = [v26 fetchEncryptionKeyForInode:v87 volumeMountPoint:v27 error:&v105];
    v31 = v30;
    if (v30)
    {
      if (sub_10012DB9C(v30, v28, v29, &v105))
      {
        v32 = v31;
      }

      else
      {
        v109 = 0;
        v33 = sub_10012DC5C(v31, v28, v29, &v109);
        v34 = v109;
        v35 = v34;
        if (v33)
        {
          v108 = v34;
          v36 = [v26 setFoundEncryptionKey:v33 forVolumeMountPoint:v86 inode:v87 error:&v108];
          v37 = v108;

          if (v36)
          {
            v38 = MBGetDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = [v31 length];
              *buf = 134218240;
              v111 = v87;
              v112 = 2048;
              v113 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "=encryption key= Updated key fetched from the missed encryption key DB (inode:%llu size:%llu)", buf, 0x16u);
              _MBLog(@"I ", "=encryption key= Updated key fetched from the missed encryption key DB (inode:%llu size:%llu)", v87, [v31 length]);
            }

            v32 = v33;
          }

          else
          {
            v43 = v37;
            v105 = v37;
            v44 = MBGetDefaultLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = [v31 length];
              *buf = 134218498;
              v111 = v87;
              v112 = 2048;
              v113 = v45;
              v114 = 2112;
              v115 = v37;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=encryption key= Failed to set updated encryption key in the missed encryption key DB (inode:%llu size:%llu): %@", buf, 0x20u);
              _MBLog(@"E ", "=encryption key= Failed to set updated encryption key in the missed encryption key DB (inode:%llu size:%llu): %@", v87, [v31 length], v37);
            }

            v32 = 0;
          }

          v35 = v37;
        }

        else
        {
          v40 = v34;
          v105 = v35;
          v41 = MBGetDefaultLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = [v31 length];
            *buf = 134218498;
            v111 = v87;
            v112 = 2048;
            v113 = v42;
            v114 = 2112;
            v115 = v35;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=encryption key= Failed to update key fetched from the missed encryption key DB (inode:%llu size:%llu): %@", buf, 0x20u);
            _MBLog(@"E ", "=encryption key= Failed to update key fetched from the missed encryption key DB (inode:%llu size:%llu): %@", v87, [v31 length], v35);
          }

          v32 = 0;
        }
      }
    }

    else
    {
      v32 = 0;
    }

    v17 = v105;
    if (v32)
    {
      v18 = v32;
      v88 = 3;
    }

    else
    {
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v111 = v92;
        v112 = 2112;
        v113 = v91;
        v114 = 2048;
        v115 = v87;
        v116 = 2112;
        v117 = v17;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=encryption key= Could not fetch encryption key for %@:%@ (inode:%llu) from the missed encryption key database: %@", buf, 0x2Au);
        _MBLog(@"I ", "=encryption key= Could not fetch encryption key for %@:%@ (inode:%llu) from the missed encryption key database: %@", v92, v91, v87, v17);
      }

      v108 = 0;
      v47 = v28;
      v48 = v12;
      v49 = v29;
      v109 = 0;
      v50 = [v47 encryptionKeyWithError:&v109];
      v51 = v109;
      v52 = v51;
      if (!v50 || v51)
      {
        +[MBError errorWithCode:error:format:](MBError, "errorWithCode:error:format:", 209, v51, @"Failed to fetch encryption key from MKB cache for inode:%llu", [v48 inodeNumber]);
        v108 = v18 = 0;
      }

      else if (sub_10012DD00(v50, v49, &v108))
      {
        v18 = v50;
      }

      else
      {
        v18 = 0;
      }

      v53 = v108;
      v54 = v53;
      if (v18)
      {
        v55 = v18;
        v88 = 4;
      }

      else
      {
        v56 = v53;
        v104 = v54;
        [v85 markMissedEncryptionKeyForVolume:v86 inode:v87 error:&v104];
        v88 = 0;
      }
    }

    goto LABEL_46;
  }

  v18 = v13;
  v19 = 1;
LABEL_10:
  v88 = v19;
LABEL_46:

  v57 = v104;
  if (v18)
  {
    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v96 = [v18 length];
        v60 = [v12 domain];
        v61 = [v12 absolutePath];
        v62 = [v12 inodeNumber];
        v63 = off_1003BF668[v88];
        *buf = 134219010;
        v111 = v96;
        v112 = 2112;
        v113 = v60;
        v114 = 2112;
        v115 = v61;
        v116 = 2048;
        v117 = v62;
        v118 = 2112;
        v119 = v63;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=encryption key= Fetched encryption key with size:%llu for %@:%@ (inode:%llu) from %@", buf, 0x34u);
      }

      v64 = [v18 length];
      v65 = [v12 domain];
      v66 = [v12 absolutePath];
      v67 = [v12 inodeNumber];
      v68 = off_1003BF668[v88];
      _MBLog(@"Df", "=encryption key= Fetched encryption key with size:%llu for %@:%@ (inode:%llu) from %@", v64, v65, v66, v67, v68);
    }

    if (a5)
    {
      *a5 = v88;
    }

    v69 = v18;
  }

  else
  {
    v70 = MBGetDefaultLog();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = v70;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = [v12 domain];
        v73 = [v12 absolutePath];
        v74 = [v12 inodeNumber];
        v75 = [v12 birthDate];
        *buf = 138413314;
        v111 = v72;
        v112 = 2112;
        v113 = v73;
        v114 = 2048;
        v115 = v74;
        v116 = 2112;
        v117 = v75;
        v118 = 2112;
        v119 = v57;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "=encryption key= Failed to fetch encryption key for %@:%@ (inode:%llu, birth:%@): %@", buf, 0x34u);
      }

      v76 = [v12 domain];
      v77 = [v12 absolutePath];
      v78 = [v12 inodeNumber];
      v79 = [v12 birthDate];
      _MBLog(@"E ", "=encryption key= Failed to fetch encryption key for %@:%@ (inode:%llu, birth:%@): %@", v76, v77, v78, v79, v57);
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      v80 = v57;
      *a6 = v57;
    }
  }

  v103 = 0;
  v81 = [v102 closeWithError:&v103];
  v82 = v103;
  if ((v81 & 1) == 0)
  {
    v83 = MBGetDefaultLog();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v111 = v82;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "=encryption key= Failed to close keybag file: %@", buf, 0xCu);
      _MBLog(@"F ", "=encryption key= Failed to close keybag file: %@", v82);
    }
  }

  v11 = v101;
LABEL_67:

  return v18;
}

void sub_10012DB38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id sub_10012DB9C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v8 validateEncryptionKey:v7 error:a4])
  {
    v10 = sub_10012DD00(v7, v9, a4);
  }

  else if (a4)
  {
    [MBError errorWithCode:209 format:@"Failed to validate existing encryption key"];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10012DC5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 updatedEncryptionKeyForCurrentKey:a1 withError:a4];
  v10 = v9;
  if (v9 && sub_10012DB9C(v9, v7, v8, a4))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_10012DD00(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MBKeybagUUIDForEncryptionKey(a1, a3);
  if (v6)
  {
    v7 = [MBCKKeyBag UUIDStringForKeyBagUUID:v6];
    v8 = [v5 keybagManager];
    v9 = [v8 hasKeybagWithUUID:v7];

    if ((v9 & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "=encryption key= Device record does not contain keybagUUID %@", buf, 0xCu);
        _MBLog(@"F ", "=encryption key= Device record does not contain keybagUUID %@", v7);
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:205 format:@"Device record does not contain keybagUUID %@", v6];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10012DE70(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  memset(&v40, 0, 512);
  if (statfs([v5 fileSystemRepresentation], &v40))
  {
    v6 = [MBError errorWithErrno:*__error() path:v5 format:@"stat() failed"];
    v7 = v6;
LABEL_3:
    v8 = 0;
    goto LABEL_6;
  }

  v9 = fsgetpath(v39, 0x400uLL, &v40.f_fsid, a3);
  if (v9 < 0)
  {
    v6 = [MBError errorWithErrno:*__error() format:@"fsgetpath() failed"];
    v24 = v6;
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *__error();
      *buf = 138412802;
      v34 = v5;
      v35 = 2048;
      v36 = a3;
      v37 = 1024;
      v38 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=encryption key= fsgetpath() failed for volume %@ inode %llu: %{errno}d", buf, 0x1Cu);
      v27 = __error();
      _MBLog(@"E ", "=encryption key= fsgetpath() failed for volume %@ inode %llu: %{errno}d", v5, a3, *v27);
    }

    goto LABEL_3;
  }

  v8 = [[NSString alloc] initWithBytes:v39 length:v9 - 1 encoding:4];
  v6 = 0;
LABEL_6:

  v10 = v6;
  v11 = v10;
  if (v8)
  {
    v31 = v10;
    v12 = [MBEncryptionKeyReader encryptionKeyReaderForFileAtPath:v8 error:&v31];
    v13 = v31;

    if (v12)
    {
      v30 = v13;
      v14 = [v12 encryptionKeyWithError:&v30];
      v15 = v30;

      [v12 closeWithError:0];
      if (v14)
      {
        v16 = [v14 length];
        v17 = a1[4];
        v29 = v15;
        v18 = [v17 setFoundEncryptionKey:v14 forVolumeMountPoint:v5 inode:a3 error:&v29];
        v19 = v29;

        if (v18)
        {
          ++*(*(a1[6] + 8) + 24);
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v40.f_bsize = 134218754;
            *&v40.f_iosize = v16;
            WORD2(v40.f_blocks) = 2112;
            *(&v40.f_blocks + 6) = v5;
            HIWORD(v40.f_bfree) = 2048;
            v40.f_bavail = a3;
            LOWORD(v40.f_files) = 2112;
            *(&v40.f_files + 2) = v8;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=encryption key= Found encryption key with size %lu for %@:%llu with resolved path %@", &v40, 0x2Au);
            _MBLog(@"Df", "=encryption key= Found encryption key with size %lu for %@:%llu with resolved path %@", v16, v5, a3, v8);
          }
        }

        else
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v40.f_bsize = 134218498;
            *&v40.f_iosize = v16;
            WORD2(v40.f_blocks) = 2112;
            *(&v40.f_blocks + 6) = v5;
            HIWORD(v40.f_bfree) = 2048;
            v40.f_bavail = a3;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=encryption key= Failed to set found encryption key with size %lu for %@:%llu", &v40, 0x20u);
            _MBLog(@"E ", "=encryption key= Failed to set found encryption key with size %lu for %@:%llu", v16, v5, a3);
          }
        }

        v15 = v19;
      }

      else
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v40.f_bsize = 138412802;
          *&v40.f_iosize = v8;
          WORD2(v40.f_blocks) = 2048;
          *(&v40.f_blocks + 6) = a3;
          HIWORD(v40.f_bfree) = 2112;
          v40.f_bavail = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=encryption key= Failed to fetch encryption key for %@ (inode:%llu): %@", &v40, 0x20u);
          _MBLog(@"E ", "=encryption key= Failed to fetch encryption key for %@ (inode:%llu): %@", v8, a3, v15);
        }
      }

      v13 = v15;
    }

    else
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v40.f_bsize = 138412802;
        *&v40.f_iosize = v8;
        WORD2(v40.f_blocks) = 2048;
        *(&v40.f_blocks + 6) = a3;
        HIWORD(v40.f_bfree) = 2112;
        v40.f_bavail = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=encryption key= Failed to create encryption key reader for %@ (inode:%llu): %@", &v40, 0x20u);
        _MBLog(@"E ", "=encryption key= Failed to create encryption key reader for %@ (inode:%llu): %@", v8, a3, v13);
      }
    }

LABEL_31:
    goto LABEL_32;
  }

  if (v10)
  {
    if (![MBError isError:v10 withCode:4])
    {
      v13 = v11;
      goto LABEL_32;
    }

    v21 = a1[4];
    v32 = v11;
    v22 = [v21 removeMissedEncryptionKeysForVolume:v5 inode:a3 error:&v32];
    v13 = v32;

    v23 = MBGetDefaultLog();
    v12 = v23;
    if ((v22 & 1) == 0)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v40.f_bsize = 138412290;
        *&v40.f_iosize = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=encryption key= Failed to remove missed encryption key: %@", &v40, 0xCu);
        _MBLog(@"F ", "=encryption key= Failed to remove missed encryption key: %@", v13);
      }

      goto LABEL_31;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v40.f_bsize = 138412546;
      *&v40.f_iosize = v5;
      WORD2(v40.f_blocks) = 2048;
      *(&v40.f_blocks + 6) = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=encryption key= Not fetching encryption key file no longer on disk %@:%llu", &v40, 0x16u);
      _MBLog(@"I ", "=encryption key= Not fetching encryption key file no longer on disk %@:%llu", v5, a3);
    }

    ++*(*(a1[5] + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

LABEL_32:

  return 1;
}

id _MBAssert(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_10012F2EC(a1, a2, &a9);

  return v9;
}

id sub_10012F2EC(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_10012F378(a2, a3);
  }

  return v4;
}

id sub_10012F338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_10012F378(a1, &a9);

  return v9;
}

id sub_10012F378(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[NSString alloc] initWithFormat:v3 arguments:a2];

  v5 = [MBError errorWithCode:1 description:v4];

  return v5;
}

BOOL sub_10012F400(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = sub_10012F2EC(a1, a3, &a9);
  if (a2 && v10)
  {
    v10 = v10;
    *a2 = v10;
  }

  v11 = v10 == 0;

  return v11;
}

id MBAllCKPlugins()
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(MBAccountsPlugin);
  [v0 addObject:v1];

  v2 = objc_alloc_init(MBAppleCarePlugin);
  [v0 addObject:v2];

  v3 = objc_alloc_init(MBDataMigratorPlugin);
  [v0 addObject:v3];

  v4 = objc_alloc_init(MBiTunesStorePlugin);
  [v0 addObject:v4];

  v5 = objc_alloc_init(MBKeychainPlugin);
  [v0 addObject:v5];

  v6 = objc_alloc_init(MBLockdownPlugin);
  [v0 addObject:v6];

  v7 = objc_alloc_init(MBCKATCBundlesPlugin);
  [v0 addObject:v7];

  v8 = objc_alloc_init(MBWiFiPlugin);
  [v0 addObject:v8];

  v9 = objc_alloc_init(MBBooksPlugin);
  [v0 addObject:v9];

  v10 = objc_alloc_init(MBCameraRollPlugin);
  [v0 addObject:v10];

  v11 = objc_alloc_init(MBManateePlugin);
  [v0 addObject:v11];

  v12 = [v0 mutableCopy];
  v13 = objc_alloc_init(MBCKSQLiteCopyPlugin);
  [v12 addObject:v13];

  v14 = objc_alloc_init(MBCKAnalysisPlugin);
  [v12 addObject:v14];

  v15 = objc_alloc_init(MBRestoreAppsPlugin);
  [v12 addObject:v15];

  v16 = objc_alloc_init(MBiCloudDrivePlugin);
  [v12 addObject:v16];

  v17 = objc_alloc_init(MBFileProviderPlugin);
  [v12 addObject:v17];

  return v12;
}

void sub_100130868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013088C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAccountChangeNotification:v3];
}

void sub_100130A6C(id a1, NSString *a2, MBCKContainer *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching the CK account status for persona:%{public}@", buf, 0xCu);
    _MBLog(@"Df", "Fetching the CK account status for persona:%{public}@", v5);
  }

  v8 = [(MBCKContainer *)v6 ckContainer];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100130BC0;
  v10[3] = &unk_1003BF708;
  v11 = v5;
  v9 = v5;
  [v8 accountStatusWithCompletionHandler:v10];
}

void sub_100130BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched the CK account status for persona:%{public}@ (%ld): %@", buf, 0x20u);
    _MBLog(@"Df", "Fetched the CK account status for persona:%{public}@ (%ld): %@", *(a1 + 32), a2, v5);
  }

  if (a2 == 1)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MBAccountAvailableNotification" object:0];
  }
}

void sub_100130FF8(id a1)
{
  v1 = +[CKRecordZone defaultRecordZone];
  v2 = [v1 zoneID];
  v3 = qword_1004217C8;
  qword_1004217C8 = v2;

  if (!qword_1004217C8)
  {
    __assert_rtn("+[MBCKDatabaseManager defaultZoneID]_block_invoke", "MBCKDatabaseManager.m", 196, "sDefaultZoneID");
  }
}

void sub_1001310C0(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"mbksync" ownerName:CKCurrentUserDefaultName];
  v2 = qword_1004217D8;
  qword_1004217D8 = v1;

  if (!qword_1004217D8)
  {
    __assert_rtn("+[MBCKDatabaseManager syncZoneID]_block_invoke", "MBCKDatabaseManager.m", 206, "sSyncZoneID");
  }
}

uint64_t sub_100131808(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100131820(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([MBError isCKError:v6 withCode:2])
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v9 = 0;
  }

  if ([MBError isCKNotFoundError:v6]|| [MBError isCKNotFoundError:v9])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sync zone %{public}@ doesn't exist - creating a new one", buf, 0xCu);
      _MBLog(@"Df", "Sync zone %{public}@ doesn't exist - creating a new one", *(a1 + 32));
    }

    v12 = [[CKRecordZone alloc] initWithZoneID:*(a1 + 32)];
    v13 = [CKModifyRecordZonesOperation alloc];
    v35 = v12;
    v14 = [NSArray arrayWithObjects:&v35 count:1];
    v15 = [v13 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100131BF0;
    v27[3] = &unk_1003BF770;
    v16 = *(a1 + 32);
    v17 = *(a1 + 96);
    v28 = v16;
    v30 = v17;
    v29 = *(a1 + 40);
    [v15 setModifyRecordZonesCompletionBlock:v27];
    [*(a1 + 48) _configureCKOperation:v15 container:*(a1 + 56) policy:*(a1 + 64) operationGroup:*(a1 + 72) xpcActivity:*(a1 + 80)];
    [*(a1 + 88) addOperation:v15];
  }

  else
  {
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v6)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch sync zone %{public}@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to fetch sync zone %{public}@: %@", *(a1 + 32), v6);
      }

      v21 = *(*(a1 + 96) + 8);
      v22 = v6;
      v19 = *(v21 + 40);
      *(v21 + 40) = v22;
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = [v5 objectForKeyedSubscript:v23];
      *buf = 138543618;
      v32 = v23;
      v33 = 2048;
      v34 = [v24 capabilities];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Sync zone %{public}@ already exists, capabilities:0x%lx", buf, 0x16u);

      v25 = *(a1 + 32);
      v26 = [v5 objectForKeyedSubscript:v25];
      _MBLog(@"I ", "Sync zone %{public}@ already exists, capabilities:0x%lx", v25, [v26 capabilities]);
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100131BF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create sync zone %{public}@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to create sync zone %{public}@: %@", *(a1 + 32), v5);
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created sync zone %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Created sync zone %{public}@", *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100131D5C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1[7] + 8) + 40);
  v4 = objc_opt_class();
  v5 = a1[5];
  if (v3)
  {
    [v4 _clearSyncZoneFetchedWithAccount:v5];
  }

  else
  {
    [v4 _cacheSyncZoneFetchedWithAccount:v5];
  }

  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(a1[7] + 8) + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100132310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100132334(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [v9 domain];
  if (![v11 isEqualToString:CKErrorDomain])
  {

    goto LABEL_19;
  }

  v12 = [v10 code];

  if (v12 != 2)
  {
    goto LABEL_19;
  }

  v30 = v8;
  v31 = a1;
  v32 = v7;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v13 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v35;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v34 + 1) + 8 * i);
      v19 = [v10 userInfo];
      v20 = [v19 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v21 = [v20 objectForKeyedSubscript:v18];

      v22 = [v21 domain];
      if (![v22 isEqualToString:CKErrorDomain])
      {

        goto LABEL_15;
      }

      if ([v21 code] == 26)
      {
      }

      else
      {
        v23 = [v21 code];

        if (v23 != 11)
        {
          goto LABEL_15;
        }
      }

      ++v15;
LABEL_15:
    }

    v14 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v14);
LABEL_23:

  a1 = v31;
  v29 = v15 == [*(v31 + 32) count];
  v7 = v32;
  v8 = v30;
  if (!v29)
  {
LABEL_19:
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      *buf = 138543618;
      v39 = v25;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Operation %{public}@ failed to delete all CK zones: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Operation %{public}@ failed to delete all CK zones: %{public}@", *(a1 + 40), v10);
    }

    v26 = *(*(a1 + 56) + 8);
    v27 = v10;
    v28 = *(v26 + 40);
    *(v26 + 40) = v27;
    goto LABEL_29;
  }

LABEL_26:
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v39 = v8;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully deleted CK zones: %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Successfully deleted CK zones: %{public}@", v8);
  }

  v27 = 0;
LABEL_29:

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10013393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100133988(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001340F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

void sub_100134144(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10013440C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _makeContainerForAccount:*(a1 + 40)];
  if (v3)
  {
    v4 = +[MBCKOperationPolicy expensiveCellularPolicy];
    v5 = [v4 operationGroupWithName:@"fetchConfiguration" processName:0];
    [*(a1 + 48) loadConfigurationWithContainer:v3 databaseManager:*(a1 + 32) policy:v4 operationGroup:v5 completion:*(a1 + 56)];
  }

  else
  {
    v4 = [MBError errorWithCode:1 format:@"nil container"];
    (*(*(a1 + 56) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

id MBPerformWithCache(uint64_t a1)
{
  v2 = [+[MBSCachePool sharedPool](MBSCachePool "sharedPool")];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013581C;
  v4[3] = &unk_1003BF860;
  v4[4] = v2;
  v4[5] = a1;
  sub_1001357AC(v4);
  return [+[MBSCachePool sharedPool](MBSCachePool "sharedPool")];
}

void sub_1001357AC(void *a1)
{
  if (qword_100421800 != -1)
  {
    dispatch_once(&qword_100421800, &stru_1003BF918);
  }

  v2 = qword_1004217F8;
  dispatch_assert_queue_not_V2(qword_1004217F8);

  dispatch_sync(v2, a1);
}

id sub_10013581C(uint64_t a1)
{
  [*(a1 + 32) begin];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 end];
}

void sub_100135ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100135B18(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:0];
    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
    v2 = MBGetDefaultLog();
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 134217984;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Re-using cache from pool: %p", buf, 0xCu);
      return _MBLog(@"Db", "Re-using cache from pool: %p");
    }
  }

  else
  {
    v5 = MBGetDefaultLog();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Cache pool is empty", buf, 2u);
      return _MBLog(@"Db", "Cache pool is empty");
    }
  }

  return result;
}

id sub_100135CE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) count];
  v3 = MBGetDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 > 7)
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Not adding to cache because pool is full: %p", buf, 0xCu);
      _MBLog(@"Db", "Not adding to cache because pool is full: %p", *(a1 + 40));
    }

    return [*(a1 + 32) _closeCache:*(a1 + 40)];
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding cache to pool: %p", buf, 0xCu);
      _MBLog(@"Db", "Adding cache to pool: %p", *(a1 + 40));
    }

    [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];

    return [*(a1 + 32) _scheduleDrain];
  }
}

id sub_100135FAC(uint64_t a1)
{
  [*(a1 + 32) open];
  v2 = [MBAppManager appManagerWithSettingsContext:objc_alloc_init(MBSettingsContext)];
  v6 = 0;
  v3 = [MBPersona personalPersonaWithError:&v6];
  if (!v3)
  {
    __assert_rtn("[MBSCachePool _openCache]_block_invoke", "MBSCachePool.m", 138, "personalPersona");
  }

  if (![(MBAppManager *)v2 loadAppsWithPersona:v3 safeHarbors:0 error:&v6])
  {
    v5 = [MBException alloc];
    objc_exception_throw([v5 initWithCode:1 format:{@"Error loading apps: %@", +[MBError descriptionForError:](MBError, "descriptionForError:", v6)}]);
  }

  return [*(a1 + 32) setDisabledDomainNames:-[MBAppManager allDisabledDomainNames](v2 restrictedDomainNames:{"allDisabledDomainNames"), -[MBAppManager allRestrictedDomainNames](v2, "allRestrictedDomainNames")}];
}

id MBKeybagUUIDForEncryptionKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = MKBBackupCopyBackupKeyUUID();
  if (v4)
  {
    v5 = v4;
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to get UUID from encryption key %@", buf, 0xCu);
      _MBLog(@"F ", "Failed to get UUID from encryption key %@", v3);
    }

    if (a2)
    {
      *a2 = [MBKeyBag errorWithReturnCode:v5 description:@"MKBBackupCopyBackupKeyUUID error"];
    }
  }

  return 0;
}

MBError *MBNotifyPluginsBlock(void *a1, void *a2, SEL sel, uint64_t a4)
{
  Name = sel_getName(sel);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v43 = Name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting to notify plugins of %{public}s", buf, 0xCu);
    _MBLog(@"I ", "Starting to notify plugins of %{public}s", Name);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v39;
    v34 = *v39;
    while (2)
    {
      v13 = 0;
      v35 = v10;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([a1 isCanceled])
        {
          v22 = [MBError errorWithCode:202 description:@"Canceled"];
LABEL_24:
          objc_autoreleasePoolPop(v15);
          goto LABEL_25;
        }

        if (objc_opt_respondsToSelector())
        {
          v16 = a1;
          v17 = objc_opt_class();
          v18 = class_getName(v17);
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v43 = v18;
            v44 = 2082;
            v45 = Name;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Notifying %{public}s of %{public}s", buf, 0x16u);
            _MBLog(@"I ", "Notifying %{public}s of %{public}s", v18, Name);
          }

          +[NSDate timeIntervalSinceReferenceDate];
          v21 = v20;
          v22 = (*(a4 + 16))(a4, v14);
          +[NSDate timeIntervalSinceReferenceDate];
          if (v22)
          {
            v27 = v22;
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v43 = v18;
              v44 = 2082;
              v45 = Name;
              v46 = 2112;
              v47 = *&v22;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to notify %{public}s of %{public}s: %@", buf, 0x20u);
              _MBLog(@"E ", "Failed to notify %{public}s of %{public}s: %@", v18, Name, v22);
            }

            goto LABEL_24;
          }

          v24 = v23;
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v24 - v21;
            *buf = 136446722;
            v43 = v18;
            v44 = 2082;
            v45 = Name;
            v46 = 2048;
            v47 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notified %{public}s of %{public}s in %0.3fs", buf, 0x20u);
            _MBLog(@"Df", "Notified %{public}s of %{public}s in %0.3fs", v18, Name, *&v26);
          }

          ++v11;
          a1 = v16;
          v12 = v34;
          v10 = v35;
        }

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [a2 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v22 = 0;
LABEL_25:
  +[NSDate timeIntervalSinceReferenceDate];
  v30 = v29;
  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = v30 - v8;
    *buf = 134218498;
    v43 = v11;
    v44 = 2082;
    v45 = Name;
    v46 = 2048;
    v47 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Notified %lu plugins of %{public}s in %0.3fs", buf, 0x20u);
    _MBLog(@"I ", "Notified %lu plugins of %{public}s in %0.3fs", v11, Name, *&v32);
  }

  return v22;
}

MBError *MBNotifyPlugins(void *a1, void *a2, const char *a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100137B50;
  v5[3] = &unk_1003BF940;
  v5[4] = a4;
  v5[5] = a3;
  return MBNotifyPluginsBlock(a1, a2, a3, v5);
}

void sub_100138194(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (xpc_activity_get_state(v3))
    {
      if (xpc_activity_should_defer(v3))
      {
        v5 = xpc_activity_set_state(v3, 3);
        v6 = MBGetDefaultLog();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (v7)
          {
            v8 = *(a1 + 32);
            *buf = 138412290;
            v35 = v8;
          }
        }

        else if (v7)
        {
          v22 = *(a1 + 32);
          *buf = 138412290;
          v35 = v22;
        }

        goto LABEL_29;
      }

      state = xpc_activity_get_state(v3);
      v6 = xpc_activity_copy_criteria(v3);
      if (state == 2)
      {
        v15 = xpc_activity_set_state(v3, 5);
        v16 = *(a1 + 32);
        v17 = +[NSUUID UUID];
        v18 = [v17 UUIDString];
        v12 = [NSString stringWithFormat:@"%@-%@", v16, v18];

        [v12 UTF8String];
        v19 = os_transaction_create();
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          *buf = 138412546;
          v35 = v21;
          v36 = 1024;
          LODWORD(v37) = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MBXPCTimer triggered. Updating to done so that it can be cleaned. success : %@ : %d", buf, 0x12u);
          _MBLog(@"Df", "MBXPCTimer triggered. Updating to done so that it can be cleaned. success : %@ : %d", *(a1 + 32), v15);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 32);
          *buf = 138412802;
          v35 = v23;
          v36 = 2048;
          v37 = state;
          v38 = 2048;
          v39 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBXPCTimer %@ changed to state %ld with criteria %p", buf, 0x20u);
          _MBLog(@"Df", "MBXPCTimer %@ changed to state %ld with criteria %p", *(a1 + 32), state, v6);
        }
      }
    }

    else
    {
      [WeakRetained setActivity:v3];
      v6 = xpc_activity_copy_criteria(v3);
      if (v6)
      {
        v10 = [WeakRetained criteria];
        v11 = xpc_equal(v10, v6);

        if (v11)
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 32);
            *buf = 138412546;
            v35 = v13;
            v36 = 2112;
            v37 = v6;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Check-in: %@, with existing criteria: %@", buf, 0x16u);
            _MBLog(@"Df", "MBXPCTimer Check-in: %@, with existing criteria: %@", *(a1 + 32), v6);
          }
        }

        else
        {
          v29 = [WeakRetained criteria];
          xpc_activity_set_criteria(v3, v29);

          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 32);
            v31 = [WeakRetained criteria];
            *buf = 138412546;
            v35 = v30;
            v36 = 2112;
            v37 = v31;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Check-in: %@, with updating criteria: %@", buf, 0x16u);

            v32 = *(a1 + 32);
            v33 = [WeakRetained criteria];
            _MBLog(@"Df", "MBXPCTimer Check-in: %@, with updating criteria: %@", v32, v33);
          }
        }
      }

      else
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 32);
          v26 = [WeakRetained criteria];
          *buf = 138412546;
          v35 = v25;
          v36 = 2112;
          v37 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Check-in: %@, with criteria: %@", buf, 0x16u);

          v27 = *(a1 + 32);
          v28 = [WeakRetained criteria];
          _MBLog(@"Df", "MBXPCTimer Check-in: %@, with criteria: %@", v27, v28);
        }

        v12 = [WeakRetained criteria];
        xpc_activity_set_criteria(v3, v12);
      }
    }

    goto LABEL_29;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Self not available anymore for - %@", buf, 0xCu);
    _MBLog(@"Df", "Self not available anymore for - %@", *(a1 + 32));
  }

LABEL_29:
}

void sub_10013B054(id a1)
{
  qword_100421808 = objc_alloc_init(MBTapToRadar);

  _objc_release_x1();
}

id sub_10013B420(uint64_t a1)
{
  if ([*(a1 + 32) _presentTTRConsentRequestOnMainThread:*(a1 + 40) message:*(a1 + 48) persona:*(a1 + 56) selector:*(a1 + 72) delayBetweenNags:*(a1 + 80)] - 5 <= 1)
  {
    (*(*(a1 + 64) + 16))();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 _endPresenting:v3];
}

void sub_10013B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B7B8(uint64_t a1)
{
  result = [*(a1 + 32) _presentTTRConsentRequestOnMainThread:*(a1 + 40) message:*(a1 + 48) persona:*(a1 + 56) selector:*(a1 + 80) delayBetweenNags:*(a1 + 88)];
  *(*(*(a1 + 72) + 8) + 24) = result;
  if ((*(*(*(a1 + 72) + 8) + 24) - 5) <= 1)
  {
    v3 = *(*(a1 + 64) + 16);

    return v3();
  }

  return result;
}

void sub_10013C330(uint64_t a1)
{
  v3 = [NSDate _durationDescription:*(a1 + 40)];
  v2 = [NSString stringWithFormat:@"iCloud Restore has been running for %@", v3];
  [*(a1 + 32) _fileTTR:@"iCloud Restore is taking more than 48h" description:v2 keywordID:0 attachment:0];
}

void sub_10013C77C(void *a1)
{
  v2 = a1[4];
  v3 = [NSString stringWithFormat:@"Background restore failed to restore domains:\n%@", a1[5]];
  [v2 _fileTTR:@"Background Restore Failure" description:v3 keywordID:0 attachment:a1[6]];
}

uint64_t sub_10013CBBC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [v11 addObject:v13];
  v15 = +[NSMutableDictionary dictionary];
  v16 = [MBError dictionaryRepresentationForError:v14 withMultiErrors:1];

  [v15 setObject:v16 forKeyedSubscript:@"failure"];
  if (a2 == 1)
  {
    [v15 setObject:0 forKeyedSubscript:@"count"];
  }

  else
  {
    v17 = [NSNumber numberWithUnsignedInteger:a2];
    [v15 setObject:v17 forKeyedSubscript:@"count"];
  }

  [v15 setObject:v13 forKeyedSubscript:@"domainName"];

  [v15 setObject:v12 forKeyedSubscript:@"rpath"];
  if (a6)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:a6];
    [v15 setObject:v18 forKeyedSubscript:@"inode"];
  }

  else
  {
    [v15 setObject:0 forKeyedSubscript:@"inode"];
  }

  [*(a1 + 40) addObject:v15];

  return 1;
}

BOOL WriteKeychainToDisk(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (!v4)
  {
    __assert_rtn("WriteKeychainToDisk", "MBKeychainPlugin.m", 48, "path");
  }

  if (!v3)
  {
    __assert_rtn("WriteKeychainToDisk", "MBKeychainPlugin.m", 49, "errorPtr");
  }

  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v48 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Saving keychain data to %@", buf, 0xCu);
    _MBLog(@"I ", "Saving keychain data to %@", v5);
  }

  v7 = +[NSDate now];
  v8 = [v5 stringByAppendingString:@".tmp"];
  v9 = v8;
  v10 = [v8 fileSystemRepresentation];
  v11 = open_dprotected_np(v10, 1538, 1, 0, 256);
  if ((v11 & 0x80000000) != 0)
  {
    *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"Error writing keychain temp file (open_dprotected_np)"];
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *v3;
      *buf = 138412290;
      *v48 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "open_dprotected_np failed: %@", buf, 0xCu);
      _MBLog(@"E ", "open_dprotected_np failed: %@", *v3);
    }

LABEL_28:

    v28 = v11 >= 0;
    goto LABEL_30;
  }

  unlink(v10);
  if ((_SecKeychainWriteBackupToFileDescriptor() & 1) == 0)
  {
    v19 = [0 domain];
    if ([v19 isEqualToString:NSOSStatusErrorDomain])
    {
      v20 = [0 code] == -36;

      if (v20)
      {
        v21 = 106;
      }

      else
      {
        v21 = 100;
      }
    }

    else
    {

      v21 = 100;
    }

    *v3 = [MBError errorWithCode:v21 error:0 path:v8 format:@"Error writing keychain temp file"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = *v3;
      *buf = 138412290;
      *v48 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "_SecKeychainWriteBackupToFileDescriptor failed: %@", buf, 0xCu);
      _MBLog(@"E ", "_SecKeychainWriteBackupToFileDescriptor failed: %@", *v3);
    }

    goto LABEL_24;
  }

  [v7 timeIntervalSinceNow];
  v13 = v12;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v48 = v11;
    *&v48[4] = 2048;
    *&v48[6] = -v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Wrote keychain data to anonymous fd (%d) in %.3fs", buf, 0x12u);
    _MBLog(@"I ", "Wrote keychain data to anonymous fd (%d) in %.3fs", v11, -v13);
  }

  if (lseek(v11, 0, 2) <= 0)
  {
    *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"Keychain temp file contains no data"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = *v3;
      *buf = 138412290;
      *v48 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "_SecKeychainWriteBackupToFileDescriptor wrote no data: %@", buf, 0xCu);
      _MBLog(@"E ", "_SecKeychainWriteBackupToFileDescriptor wrote no data: %@", *v3);
    }

    goto LABEL_24;
  }

  if (lseek(v11, 0, 0))
  {
    *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"lseek error"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *v3;
      *buf = 138412290;
      *v48 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to seek to the beginning of the temp file: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to seek to the beginning of the temp file: %@", *v3);
    }

LABEL_24:

    v24 = 0;
    goto LABEL_25;
  }

  v30 = v5;
  v31 = [v5 fileSystemRepresentation];
  v32 = open_dprotected_np(v31, 1537, 1, 0, 256);
  if (v32 <= 0)
  {
    *v3 = [MBError errorWithErrno:*__error() path:v5 format:@"Error opening keychain backup (open_dprotected_np)"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v38 = *v3;
      *buf = 138412290;
      *v48 = v38;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "open_dprotected_np failed: %@", buf, 0xCu);
      _MBLog(@"E ", "open_dprotected_np failed: %@", *v3);
    }

    goto LABEL_24;
  }

  bzero(buf, 0x1000uLL);
  do
  {
    v33 = read(v11, buf, 0x1000uLL);
    if (v33 < 0)
    {
      *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"failed reading keychain temp FD"];
      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *v3;
        *v43 = 138412290;
        *v44 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "reading keychain temp FD failed: %@", v43, 0xCu);
        _MBLog(@"E ", "reading keychain temp FD failed: %@", *v3);
      }

      goto LABEL_49;
    }

    if (write(v32, buf, v33) < 0)
    {
      *v3 = [MBError errorWithErrno:*__error() path:v5 format:@"failed writing keychain backup file"];
      v41 = MBGetDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = *v3;
        *v43 = 138412290;
        *v44 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "writing keychain backup file failed: %@", v43, 0xCu);
        _MBLog(@"E ", "writing keychain backup file failed: %@", *v3);
      }

      unlink(v31);
LABEL_49:
      v24 = 0;
      goto LABEL_50;
    }
  }

  while (v33);
  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = v34;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      [v7 timeIntervalSinceNow];
      *v43 = 67109634;
      *v44 = v11;
      *&v44[4] = 2112;
      *&v44[6] = v5;
      v45 = 2048;
      v46 = v13 - v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Copied keychain data from anonymous fd (%d) to %@ in %.3fs", v43, 0x1Cu);
    }

    [v7 timeIntervalSinceNow];
    _MBLog(@"I ", "Copied keychain data from anonymous fd (%d) to %@ in %.3fs", v11, v5, v13 - v37);
  }

  v24 = 1;
LABEL_50:
  close(v32);
LABEL_25:

  close(v11);
  if (v24)
  {
    [v7 timeIntervalSinceNow];
    v26 = v25;
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = -v26;
      *buf = 138412546;
      *v48 = v5;
      *&v48[8] = 2048;
      *&v48[10] = v27;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Exported keychain data to %@ in %.3fs", buf, 0x16u);
      _MBLog(@"I ", "Exported keychain data to %@ in %.3fs", v5, *&v27);
    }

    goto LABEL_28;
  }

  v28 = 0;
LABEL_30:

  return v28;
}

void sub_10013F894(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10013F834);
  }

  _Unwind_Resume(exception_object);
}

BOOL RestoreKeychainFromDisk(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  if (!v6)
  {
    __assert_rtn("RestoreKeychainFromDisk", "MBKeychainPlugin.m", 148, "path");
  }

  if (!a2)
  {
    __assert_rtn("RestoreKeychainFromDisk", "MBKeychainPlugin.m", 149, "keybagData");
  }

  if (!a4)
  {
    __assert_rtn("RestoreKeychainFromDisk", "MBKeychainPlugin.m", 150, "errorPtr");
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v33 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring keychain backup at %@", buf, 0xCu);
    _MBLog(@"Df", "Restoring keychain backup at %@", v7);
  }

  v31 = 0;
  v9 = [MBKeychain allPasswordItemsForServices:&off_1003E2288 error:&v31];
  v10 = v31;
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 count];
      v14 = MBStringWithArray();
      *buf = 67109378;
      *v33 = v13;
      *&v33[4] = 2112;
      *&v33[6] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preserving %d keychain items: %@", buf, 0x12u);

      v15 = [v9 count];
      v16 = MBStringWithArray();
      _MBLog(@"Df", "Preserving %d keychain items: %@", v15, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v33 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to fetch keychain items: %@", buf, 0xCu);
    _MBLog(@"E ", "Unable to fetch keychain items: %@", v10);
  }

  v30 = 0;
  v17 = [MBProtectionClassUtils getWithPath:v7 error:&v30];
  v18 = v30;
  if (v17 == 1)
  {
    v19 = [NSFileHandle fileHandleForReadingAtPath:v7];
    v20 = v19;
    v21 = v19 != 0;
    if (v19)
    {
      v29[1] = 0;
      [v19 fileDescriptor];
      v22 = _SecKeychainRestoreBackupFromFileDescriptor();

      if ((v22 & 1) == 0)
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v33 = v7;
          *&v33[8] = 2112;
          *&v33[10] = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to restore keychain from %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to restore keychain from %@: %@", v7, 0);
        }

        *a4 = 0;
      }

      if ([v9 count])
      {
        v29[0] = 0;
        v24 = [MBKeychain addAllPasswordItems:v9 error:v29];
        v18 = v29[0];

        v25 = MBGetDefaultLog();
        v26 = v25;
        if (v24)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v9 count];
            *buf = 67109120;
            *v33 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Added %d preserved keychain items to restored keychain", buf, 8u);
            [v9 count];
            _MBLog(@"Df", "Added %d preserved keychain items to restored keychain");
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v33 = v18;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to add preserved password items to keychain: %@", buf, 0xCu);
          _MBLog(@"E ", "Failed to add preserved password items to keychain: %@", v18);
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      *a4 = [MBError errorWithCode:101 path:v7 format:@"Error reading keychain backup"];
    }
  }

  else
  {
    if (v17 == 255)
    {
      [MBError errorWithCode:101 error:v18 path:v7 format:@"Error getting keychain backup protection class"];
    }

    else
    {
      [MBError errorWithCode:1 path:v7 format:@"Unexpected keychain backup protection class: %d", v17];
    }

    *a4 = v21 = 0;
  }

  return v21;
}

void sub_100140598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001405D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001405E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [MBKeychainPlugin exportKeychainForCKBackupEngine:v2 error:&v6];
  v4 = v6;
  v5 = v6;
  if ((v3 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t MBBuildBackupCKRecordsDB(void *a1, void *a2, void *a3, void *a4)
{
  v51 = a1;
  v55 = a2;
  v7 = a3;
  if (!a4)
  {
    __assert_rtn("MBBuildBackupCKRecordsDB", "MBBuildBackupCKRecordsDB.m", 134, "error");
  }

  v50 = v7;
  v52 = a4;
  v56 = [MBBackupCKRecordsDB openDatabaseIn:"openDatabaseIn:readOnly:error:" readOnly:? error:?];
  if (v56)
  {
    v8 = 1;
    v9 = a4;
    goto LABEL_4;
  }

  v10 = a4;
  if (!v55)
  {
    v11 = v51;
    v12 = +[MBCKOperationPolicy expensiveCellularPolicy];
    [v12 setFetchAssets:0];
    v13 = +[MBCKManager sharedInstance];
    v14 = [v13 databaseManager];
    v15 = [MBCKOperationTracker operationTrackerWithAccount:v11 databaseManager:v14 policy:v12 error:v52];

    if (!v15)
    {

      v55 = 0;
      v56 = 0;
      goto LABEL_44;
    }

    v16 = [v12 operationGroupWithName:@"fetchRecordsForCurrentDevice" processName:0];
    [v15 setCkOperationGroup:v16];

    v55 = v15;
    v10 = v52;
  }

  v17 = [MBBackupCKRecordsDB openOrCreateDatabaseIn:v50 error:v10];
  if (!v17)
  {
    v56 = 0;
LABEL_44:
    v8 = 0;
    goto LABEL_45;
  }

  v56 = v17;
  v55 = v55;
  v46 = v51;
  v48 = +[MBCKManager sharedInstance];
  v47 = [v48 openCacheWithAccount:v46 accessType:1 error:v52];
  if (!v47)
  {
    v8 = 0;
    goto LABEL_57;
  }

  v18 = [MBCKAccount fetchAccountWithOperationTracker:v55 cache:v47 error:v52];
  v43 = v18;
  if (!v18)
  {
    v37 = MBGetDefaultLog();
    v40 = v37;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *v52;
      *buf = 138412290;
      v78 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to fetch account record: %@", *v52);
    }

    goto LABEL_49;
  }

  if ([v18 fetchDevicesWithOperationTracker:v55 error:v52])
  {
    v19 = MBDeviceUUID();
    v20 = [v43 deviceForUUID:v19];

    v40 = v20;
    if ([v20 fetchSnapshotsWithOperationTracker:v55 error:v52])
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v21 = [v20 snapshots];
      v22 = [v21 countByEnumeratingWithState:&v57 objects:v76 count:16];
      obj = v21;
      if (v22)
      {
        v42 = *v58;
        while (2)
        {
          v41 = v22;
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v58 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v57 + 1) + 8 * i);
            v24 = v56;
            v45 = v55;
            if (([v24 insertSnapshotRecord:v23 error:v52] & 1) == 0)
            {

LABEL_53:
              v8 = 0;
              goto LABEL_54;
            }

            v70 = 0;
            v71 = &v70;
            v72 = 0x3032000000;
            v73 = sub_100142940;
            v74 = sub_100142950;
            v75 = 0;
            v25 = [[MBCKBatchFetch alloc] initWithOperationTracker:v45];
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v26 = [v23 modifiedDomainRecordReferences];
            v27 = [v26 countByEnumeratingWithState:&v66 objects:buf count:16];
            v49 = v26;
            if (v27)
            {
              v54 = *v67;
LABEL_22:
              v28 = 0;
              v53 = v27;
              while (1)
              {
                if (*v67 != v54)
                {
                  objc_enumerationMutation(v49);
                }

                if (v71[5])
                {
                  break;
                }

                v29 = 0;
                v30 = *(*(&v66 + 1) + 8 * v28);
                while ([v30 pageCount] > v29 && !v71[5])
                {
                  v31 = [v30 baseRecordID];
                  v32 = [MBDomainRecord recordIDFromBaseRecordID:v31 pageIndex:v29];

                  v61[0] = _NSConcreteStackBlock;
                  v61[1] = 3221225472;
                  v61[2] = sub_100142958;
                  v61[3] = &unk_1003BFA30;
                  v62 = v24;
                  v63 = v23;
                  v65 = &v70;
                  v33 = v32;
                  v64 = v33;
                  [(MBCKBatchFetch *)v25 fetchRecordWithID:v33 completion:v61];

                  ++v29;
                }

                if (++v28 == v53)
                {
                  v27 = [v49 countByEnumeratingWithState:&v66 objects:buf count:16];
                  if (v27)
                  {
                    goto LABEL_22;
                  }

                  break;
                }
              }
            }

            if ([(MBCKBatchFetch *)v25 finishWithError:v52])
            {
              v34 = v71[5];
              if (v34)
              {
                v35 = 0;
                *v52 = v34;
              }

              else
              {
                v35 = 1;
              }
            }

            else
            {
              v35 = 0;
            }

            _Block_object_dispose(&v70, 8);
            if (!v35)
            {
              goto LABEL_53;
            }
          }

          v22 = [obj countByEnumeratingWithState:&v57 objects:v76 count:16];
          v8 = 1;
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v8 = 1;
      }

LABEL_54:

      goto LABEL_55;
    }

LABEL_49:
    v8 = 0;
LABEL_55:

    goto LABEL_56;
  }

  v8 = 0;
LABEL_56:

LABEL_57:
  v9 = v52;
  if (!v56)
  {

    goto LABEL_46;
  }

LABEL_4:
  if (([v56 close:v9] & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:

LABEL_46:
  return v8 & 1;
}

void sub_1001428B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100142874);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100142940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100142958(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v9 = [MBDomainRecord domainRecordFromCKRecord:a3];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) recordIDString];
    v54 = 0;
    LOBYTE(v10) = [v10 insertDomainRecordForSnapshotID:v11 domain:v9 error:&v54];
    v12 = v54;

    if (v10)
    {
      v40 = v7;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v41 = v9;
      v13 = [v9 addedOrModifiedAssets];
      v14 = [v13 countByEnumeratingWithState:&v50 objects:v56 count:16];
      v43 = a1;
      if (v14)
      {
        v15 = v14;
        v16 = *v51;
        obj = v13;
LABEL_7:
        v17 = 0;
        v18 = v12;
        while (1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v50 + 1) + 8 * v17);
          v20 = *(a1 + 32);
          v21 = [*(a1 + 48) recordName];
          v22 = [v19 recordID];
          v23 = [v22 recordName];
          v49 = v18;
          v24 = [v20 insertAssetRecordReferenceForDomainRecordID:v21 assetRecordID:v23 isDeletedAsset:0 error:&v49];
          v25 = v49;
          v12 = v49;

          if ((v24 & 1) == 0)
          {
            break;
          }

          v17 = v17 + 1;
          v18 = v12;
          a1 = v43;
          if (v15 == v17)
          {
            v13 = obj;
            v15 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
            if (v15)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v39 = MBGetDefaultLog();
        v7 = v40;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_13:

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v9 = v41;
      v26 = [v41 deletedAssets];
      v27 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v46;
        obj = v26;
LABEL_15:
        v30 = 0;
        v31 = v12;
        while (1)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v45 + 1) + 8 * v30);
          v33 = *(a1 + 32);
          v34 = [*(a1 + 48) recordName];
          v35 = [v32 recordID];
          v36 = [v35 recordName];
          v44 = v31;
          LOBYTE(v33) = [v33 insertAssetRecordReferenceForDomainRecordID:v34 assetRecordID:v36 isDeletedAsset:1 error:&v44];
          v25 = v44;
          v12 = v44;

          if ((v33 & 1) == 0)
          {
            break;
          }

          v30 = v30 + 1;
          v31 = v12;
          a1 = v43;
          if (v28 == v30)
          {
            v26 = obj;
            v28 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v28)
            {
              goto LABEL_15;
            }

            v8 = 0;
            v7 = v40;
            v9 = v41;
            goto LABEL_30;
          }
        }

        v39 = MBGetDefaultLog();
        v7 = v40;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

LABEL_28:
        *buf = 138412546;
        v58 = v40;
        v59 = 2112;
        v60 = v12;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to insert asset reference record into db %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to insert asset reference record into db %@: %@", v7, v12);
LABEL_29:

        objc_storeStrong((*(*(v43 + 56) + 8) + 40), v25);
        v8 = 0;
        v9 = v41;
        v26 = obj;
        goto LABEL_30;
      }

      v8 = 0;
      v7 = v40;
    }

    else
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v58 = v7;
        v59 = 2112;
        v60 = v12;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to insert domain record into db %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to insert domain record into db %@: %@", v7, v12);
      }

      v38 = *(*(a1 + 56) + 8);
      v12 = v12;
      v26 = *(v38 + 40);
      *(v38 + 40) = v12;
    }

LABEL_30:

    goto LABEL_31;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v58 = v7;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch recordID %@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to fetch recordID %@: %@", v7, v8);
  }

LABEL_31:
}

id MBWriteRestoreAppsPlist(void *a1)
{
  v77 = a1;
  v93 = objc_alloc_init(MBIgnoredAccountsTracker);
  v90 = objc_opt_new();
  [LSApplicationRecord enumeratorWithOptions:192];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v1 = v102 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v100;
    v5 = LSUserApplicationType;
    v89 = _kCFBundleDisplayNameKey;
    v88 = _kCFBundleShortVersionStringKey;
    v94 = v1;
    v95 = LSUserApplicationType;
    v96 = *v100;
    do
    {
      v6 = 0;
      v97 = v3;
      do
      {
        if (*v100 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v99 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 typeForInstallMachinery];
        if ([v9 isEqualToString:v5])
        {
          v10 = objc_opt_new();
          v11 = [v7 bundleIdentifier];
          v12 = [v7 installType];
          if (!v11)
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v112 = v7;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "nil bundleID for app record: %@", buf, 0xCu);
              _MBLog(@"E ", "nil bundleID for app record: %@", v7, v76);
            }

            goto LABEL_24;
          }

          v13 = v12;
          if ([v7 isBeta])
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v112 = v11;
              v113 = 2048;
              v114 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (beta)", buf, 0x16u);
              _MBLog(@"Df", "Skipping %@/%lu (beta)", v11, v13);
            }

            goto LABEL_24;
          }

          v15 = [v7 applicationDSID];
          v16 = [NSNumber numberWithUnsignedLongLong:v15];
          v17 = [(MBIgnoredAccountsTracker *)v93 addAccountWithDSID:v16];

          if (v17)
          {
            v18 = MBExcludedAppTypeFromAppRecord(v7);
            if (v18 != 2)
            {
              if (v18 == 1)
              {
                v14 = MBGetDefaultLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v112 = v11;
                  v113 = 2048;
                  v114 = v13;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (app clip)", buf, 0x16u);
                  _MBLog(@"Df", "Skipping %@/%lu (app clip)", v11, v13);
                }

                goto LABEL_23;
              }

              v19 = [v7 applicationState];
              v20 = [v19 isDowngraded];

              v21 = [v7 compatibilityObject];
              v14 = [v21 bundleExecutable];

              [v10 setObject:v9 forKeyedSubscript:@"ApplicationType"];
              v22 = [v7 localizedName];
              [v10 setObject:v22 forKeyedSubscript:v89];

              [v10 setObject:v14 forKeyedSubscript:kCFBundleExecutableKey];
              [v10 setObject:v11 forKeyedSubscript:kCFBundleIdentifierKey];
              v23 = [v7 localizedName];
              [v10 setObject:v23 forKeyedSubscript:kCFBundleNameKey];

              v24 = [v7 bundleVersion];
              [v10 setObject:v24 forKeyedSubscript:kCFBundleVersionKey];

              v25 = [v7 shortVersionString];
              [v10 setObject:v25 forKeyedSubscript:v88];

              v26 = [NSNumber numberWithUnsignedLongLong:v15];
              [v10 setObject:v26 forKeyedSubscript:@"ApplicationDSID"];

              v27 = [NSNumber numberWithBool:v20];
              [v10 setObject:v27 forKeyedSubscript:@"IsDemotedApp"];

              if ([v7 isLaunchProhibited])
              {
                [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSApplicationLaunchProhibited"];
                v1 = v94;
              }

              else
              {
                v28 = SBSCopyIconImagePNGDataForDisplayIdentifier();
                v1 = v94;
                if (!v28)
                {
                  v29 = MBGetDefaultLog();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v112 = v11;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Failed to fetch the icon for %@", buf, 0xCu);
                    _MBLog(@"Df", "Failed to fetch the icon for %@", v11);
                  }

                  v28 = +[NSData data];
                }

                [v10 setObject:v28 forKeyedSubscript:@"PlaceholderIcon"];
              }

              v30 = [v7 bundleContainerURL];
              v91 = v30;
              if (!v30)
              {
                v43 = MBGetDefaultLog();
                v92 = v43;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v112 = v11;
                  v113 = 2112;
                  v114 = v7;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "nil bundleContainerURL for %@: %@", buf, 0x16u);
                  _MBLog(@"E ", "nil bundleContainerURL for %@: %@", v11, v7);
                }

                goto LABEL_72;
              }

              v31 = [v30 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
              v32 = [LSApplicationProxy applicationProxyForIdentifier:v11];
              v92 = v32;
              if (!v32 || (v33 = v32, ![v32 isContainerized]))
              {
                v42 = sub_100143DF0(v31, @"iTunesMetadata", v10);
                goto LABEL_67;
              }

              v34 = v33;
              v83 = v31;
              v35 = v31;
              v85 = v10;
              [v34 bundleIdentifier];
              v87 = v86 = v35;
              v106 = 0;
              v36 = [NSData dataWithContentsOfURL:v35 options:3 error:&v106];
              v37 = v106;
              v84 = v34;
              if (v36)
              {
                v104 = 0;
                v105 = 100;
                v38 = v37;
                v82 = v36;
                v39 = [NSPropertyListSerialization propertyListWithData:v36 options:1 format:&v105 error:&v104];
                v81 = v104;

                if (v39)
                {
                  objc_opt_class();
                  v80 = v39;
                  if (objc_opt_isKindOfClass())
                  {
                    v40 = [v39 objectForKeyedSubscript:@"title"];

                    if (v40)
                    {
                      v41 = v81;
                      goto LABEL_63;
                    }

                    v58 = [v84 localizedShortName];
                    if (!v58)
                    {
                      v58 = [v84 localizedName];
                    }

                    v79 = v58;
                    [v80 setObject:v58 forKeyedSubscript:@"title"];
                    v103 = 0;
                    v59 = [NSPropertyListSerialization dataWithPropertyList:v80 format:v105 options:0 error:&v103];
                    v60 = v103;

                    if (v59)
                    {

                      v82 = v59;
                      v41 = v60;
LABEL_63:
                      [v85 setObject:v82 forKey:@"iTunesMetadata"];
                    }

                    else
                    {
                      v65 = MBGetDefaultLog();
                      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v112 = v87;
                        v113 = 2112;
                        v114 = v60;
                        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to serialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                        _MBLog(@"E ", "Failed to serialize iTunesMetadata.plist for %@: %@", v87, v60);
                      }

                      v82 = v79;
                      v41 = v60;
                    }

                    v39 = v80;
                  }

                  else
                  {
                    v48 = MBGetDefaultLog();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v49 = [v86 path];
                      v50 = objc_opt_class();
                      v51 = NSStringFromClass(v50);
                      *buf = 138412802;
                      v112 = v49;
                      v113 = 2112;
                      v114 = v87;
                      v115 = 2112;
                      v116 = v51;
                      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Got unexpected object type for %@ for %@: %@", buf, 0x20u);

                      v52 = [v86 path];
                      v53 = objc_opt_class();
                      v54 = NSStringFromClass(v53);
                      _MBLog(@"E ", "Got unexpected object type for %@ for %@: %@", v52, v87, v54);
                    }

                    v39 = v80;
                    v41 = v81;
                  }
                }

                else
                {
                  v47 = MBGetDefaultLog();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v112 = v87;
                    v113 = 2112;
                    v114 = v81;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to deserialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                    _MBLog(@"E ", "Failed to deserialize iTunesMetadata.plist for %@: %@", v87, v81);
                  }

                  v41 = v81;
                }

                v57 = v41;
                v56 = v84;
LABEL_66:

                v31 = v83;
LABEL_67:

                v61 = [v7 URL];
                if (v61)
                {
                  v62 = [NSString stringWithFormat:@"SC_Info/%@.sinf", v14];
                  v63 = [v61 URLByAppendingPathComponent:v62];
                  v64 = sub_100143DF0(v63, @"ApplicationSINF", v10);
                }

                else
                {
                  v63 = MBGetDefaultLog();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v112 = v11;
                    v113 = 2112;
                    v114 = v7;
                    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "nil bundleURL for %@: %@", buf, 0x16u);
                    _MBLog(@"E ", "nil bundleURL for %@: %@", v11, v7);
                  }
                }

                v1 = v94;
LABEL_72:

                [v90 setObject:v10 forKeyedSubscript:v11];
LABEL_24:

                v4 = v96;
                v3 = v97;
                v5 = v95;
                goto LABEL_25;
              }

              v44 = v37;
              v45 = [v37 domain];
              v78 = v44;
              if ([v45 isEqualToString:NSCocoaErrorDomain])
              {
                v46 = [v44 code];

                if (v46 == 260)
                {
LABEL_58:
                  v56 = v84;
                  v57 = v78;
                  goto LABEL_66;
                }
              }

              else
              {
              }

              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v112 = v87;
                v113 = 2112;
                v114 = v86;
                v115 = 2112;
                v116 = v44;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to read metadata for %@ from %@: %@", buf, 0x20u);
                _MBLog(@"E ", "Failed to read metadata for %@ from %@: %@", v87, v86, v44);
              }

              goto LABEL_58;
            }

            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v112 = v11;
              v113 = 2048;
              v114 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (Swift Playgrounds app)", buf, 0x16u);
              _MBLog(@"Df", "Skipping %@/%lu (Swift Playgrounds app)", v11, v13);
            }
          }

          else
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v112 = v11;
              v113 = 2048;
              v114 = v13;
              v115 = 2048;
              v116 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu for account %llu", buf, 0x20u);
              _MBLog(@"Df", "Skipping %@/%lu for account %llu", v11, v13, v15);
            }
          }

LABEL_23:
          v1 = v94;
          goto LABEL_24;
        }

LABEL_25:

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v3 != v6);
      v66 = [v1 countByEnumeratingWithState:&v99 objects:v107 count:16];
      v3 = v66;
    }

    while (v66);
  }

  v67 = [v90 copy];
  v98 = 0;
  v68 = [v67 writeToURL:v77 error:&v98];
  v69 = v98;
  v70 = MBGetDefaultLog();
  v71 = v70;
  if (v68)
  {
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      goto LABEL_83;
    }

    v72 = [v77 path];
    *v107 = 138412290;
    v108 = v72;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Wrote restore apps plist to %@", v107, 0xCu);

    v73 = [v77 path];
    _MBLog(@"I ", "Wrote restore apps plist to %@", v73, v76);
  }

  else
  {
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    v74 = [v77 path];
    *v107 = 138412546;
    v108 = v74;
    v109 = 2112;
    v110 = v69;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Failed to write the plist to %@: %@", v107, 0x16u);

    v73 = [v77 path];
    _MBLog(@"E ", "Failed to write the plist to %@: %@", v73, v69);
  }

LABEL_83:

  return v69;
}

id sub_100143DF0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v8 = [NSData dataWithContentsOfURL:v5 options:2 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:v6];
LABEL_3:
    v11 = 0;
    goto LABEL_12;
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v10 code];

    if (v13 == 260)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get data from %@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to get data from %@: %@", v5, v10);
  }

  if (!v10)
  {
    __assert_rtn("FetchAndSetData", "LookupInstalledApps.m", 36, "error");
  }

  v11 = v10;
LABEL_12:

  return v11;
}

uint64_t MBUploadAssetsForBackup(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v15 = a1;
  v16 = a2;
  v100 = a3;
  v93 = a4;
  v94 = a5;
  v92 = a6;
  v86 = a7;
  v87 = a9;
  v85 = v15;
  if (!v15)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 552, "domainManager");
  }

  v99 = v16;
  if (!v16)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 553, "readWriteDB");
  }

  if (!v100)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 554, "device");
  }

  if (!v94)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 555, "operationTracker");
  }

  if (!v93)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 558, "mountedSnapshotTracker");
  }

  v17 = [v100 pendingSnapshot];
  v90 = [v17 progressModel];

  if (!v90)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 560, "progressModel");
  }

  if (!v92)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 561, "plugins");
  }

  v89 = [v16 snapshotDirectoryRoot];
  v91 = [v16 commitID];
  v88 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v89 commitID:v91 readonly:1 error:a8];
  LOBYTE(v18) = v88;
  if (v88)
  {
    v101 = v91;
    v114 = v15;
    v102 = v93;
    v82 = v94;
    v108 = v88;
    v106 = v16;
    v103 = v100;
    v104 = v92;
    v107 = v86;
    v105 = v87;
    Current = CFAbsoluteTimeGetCurrent();
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=upload assets= Uploading modified assets", buf, 2u);
      _MBLog(@"I ", "=upload assets= Uploading modified assets");
    }

    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = sub_100145130;
    v143[3] = &unk_1003BC518;
    v83 = objc_opt_new();
    v144 = v83;
    v21 = [v108 enumerateDomainsRequiringAssetUpload:a8 block:v143];

    if (v21)
    {
      if ([v83 count])
      {
        v139 = 0;
        v140 = &v139;
        v141 = 0x2020000000;
        v142 = 0;
        v135 = 0;
        v136 = &v135;
        v137 = 0x2020000000;
        v138 = 0;
        v131 = 0;
        v132 = &v131;
        v133 = 0x2020000000;
        v134 = 0;
        *&v147 = 0;
        *(&v147 + 1) = &v147;
        v148 = 0x3032000000;
        v149 = sub_100145154;
        v150 = sub_100145164;
        v151 = 0;
        v98 = [[MBCKBatchSave alloc] initWithOperationTracker:v82];
        v130 = 0u;
        v128 = 0u;
        v129 = 0u;
        v127 = 0u;
        obj = v83;
        v97 = [obj countByEnumeratingWithState:&v127 objects:buf count:16];
        if (v97)
        {
          v96 = *v128;
          while (2)
          {
            for (i = 0; i != v97; i = i + 1)
            {
              if (*v128 != v96)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v127 + 1) + 8 * i);
              if (atomic_load(v140 + 3))
              {
                v45 = MBGetDefaultLog();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *v152 = 138543362;
                  *&v152[4] = v22;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "=upload assets= Not uploading changes for %{public}@ because of prior batch failures", v152, 0xCu);
                  _MBLog(@"E ", "=upload assets= Not uploading changes for %{public}@ because of prior batch failures", v22);
                }

                goto LABEL_34;
              }

              if (([v114 containsDomainName:*(*(&v127 + 1) + 8 * i)] & 1) == 0)
              {
                __assert_rtn("_uploadModifiedAssets", "MBUploadAssets.m", 477, "[domainManager containsDomainName:domainName]");
              }

              v24 = [v114 domainForName:v22];
              v25 = v140;
              v118[0] = _NSConcreteStackBlock;
              v118[1] = 3221225472;
              v119 = sub_10014516C;
              v120 = &unk_1003BFA58;
              v123 = &v147;
              v124 = &v139;
              v121 = v106;
              v122 = v22;
              v125 = &v135;
              v126 = &v131;
              v26 = v24;
              v27 = v101;
              v28 = v102;
              v113 = v98;
              v29 = v103;
              v30 = v104;
              v31 = v107;
              v111 = v105;
              v112 = v118;
              v32 = v108;
              v33 = [v26 name];
              v34 = MBGetDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *v163 = 138412290;
                *&v163[4] = v33;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=upload assets= Starting asset upload for %@", v163, 0xCu);
                _MBLog(@"I ", "=upload assets= Starting asset upload for %@", v33);
              }

              *v163 = 0;
              *v152 = _NSConcreteStackBlock;
              *&v152[8] = 3221225472;
              *&v152[16] = sub_1001453CC;
              v153 = &unk_1003BFA80;
              v162 = v25 + 3;
              v110 = v28;
              *v154 = v110;
              v115 = v26;
              *&v154[8] = v115;
              v35 = v33;
              *&v154[16] = v35;
              v109 = v27;
              v155 = v109;
              v36 = v29;
              v156 = v36;
              v37 = v30;
              v157 = v37;
              v38 = v31;
              v158 = v38;
              v39 = v111;
              v160 = v39;
              v40 = v113;
              v159 = v40;
              v41 = v112;
              v161 = v41;
              [v32 enumerateAssetsPendingUploadForDomain:v35 error:v163 block:v152];

              v42 = *v163;
              if (v42)
              {
                v119(v41, 0, 0, 0, v42);
              }
            }

            v97 = [obj countByEnumeratingWithState:&v127 objects:buf count:16];
            if (v97)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:

        *v163 = 0;
        v46 = [(MBCKBatchSave *)v98 finishWithError:v163];
        v47 = *v163;
        v48 = *v163;
        if ((v46 & 1) == 0)
        {
          v49 = MBGetDefaultLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *v152 = 138412290;
            *&v152[4] = v48;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=upload assets= Failed to save batch: %@", v152, 0xCu);
            _MBLog(@"I ", "=upload assets= Failed to save batch: %@", v48);
          }

          objc_storeStrong((*(&v147 + 1) + 40), v47);
        }

        v50 = CFAbsoluteTimeGetCurrent();
        v51 = atomic_load(v132 + 3);
        v52 = atomic_load(v132 + 3);
        v53 = [NSByteCountFormatter stringFromByteCount:v52 countStyle:0];
        v54 = v50 - Current;
        v55 = [NSByteCountFormatter stringFromByteCount:(v51 / v54) countStyle:0];
        v56 = MBGetDefaultLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = atomic_load(v132 + 3);
          v58 = atomic_load(v136 + 3);
          *v152 = 138413314;
          *&v152[4] = v53;
          *&v152[12] = 2048;
          *&v152[14] = v57;
          *&v152[22] = 2048;
          v153 = v58;
          *v154 = 2048;
          *&v154[2] = v54;
          *&v154[10] = 2112;
          *&v154[12] = v55;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=upload assets= Finished uploading %@ (%lu bytes) for %lu assets in %.2fs, avg throughput: %@/s", v152, 0x34u);
          v59 = atomic_load(v132 + 3);
          v60 = atomic_load(v136 + 3);
          _MBLog(@"Df", "=upload assets= Finished uploading %@ (%lu bytes) for %lu assets in %.2fs, avg throughput: %@/s", v53, v59, v60, *&v54, v55);
        }

        v61 = v107;
        [v107 assetUploadDuration];
        [v107 setAssetUploadDuration:v54 + v62];
        v63 = v132;
        v64 = [v107 uploadedAssetSize];
        v65 = atomic_load(v63 + 3);
        [v61 setUploadedAssetSize:&v64[v65]];
        v66 = v136;
        v67 = [v61 uploadedAssetCount];
        v68 = atomic_load(v66 + 3);
        [v61 setUploadedAssetCount:&v67[v68]];
        v69 = atomic_load(v140 + 3);
        v70 = *(&v147 + 1);
        if (v69 && !*(*(&v147 + 1) + 40))
        {
          __assert_rtn("_uploadModifiedAssets", "MBUploadAssets.m", 521, "uploadError");
        }

        if (a8)
        {
          *a8 = *(*(&v147 + 1) + 40);
          v70 = *(&v147 + 1);
        }

        v43 = *(v70 + 40) == 0;

        _Block_object_dispose(&v147, 8);
        _Block_object_dispose(&v131, 8);
        _Block_object_dispose(&v135, 8);
        _Block_object_dispose(&v139, 8);
      }

      else
      {
        v44 = MBGetDefaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=upload assets= Found 0 domains with assets to upload, finishing early", buf, 2u);
          _MBLog(@"Df", "=upload assets= Found 0 domains with assets to upload, finishing early");
        }

        v43 = 1;
      }
    }

    else
    {
      v43 = 0;
    }

    if (v43)
    {
      v71 = v107;
      v72 = v106;
      v73 = v108;
      v74 = CFAbsoluteTimeGetCurrent();
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=upload assets= Committing assets into file list", buf, 2u);
        _MBLog(@"I ", "=upload assets= Committing assets into file list");
      }

      LODWORD(v18) = MBCommitUploadedAssetsIntoFileList(v73, v72, a8);
      if (v18)
      {
        v75 = CFAbsoluteTimeGetCurrent() - v74;
        [v71 setUploadedAssetWriteDuration:v75];
        v76 = MBGetDefaultLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v146 = v75;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "=upload assets= Finished committing assets into file list in %.3fs", buf, 0xCu);
          _MBLog(@"Df", "=upload assets= Finished committing assets into file list in %.3fs", v75);
        }
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    v117 = 0;
    v77 = [v108 close:&v117];
    v78 = v117;
    v79 = v78;
    if (v77)
    {
    }

    else
    {
      if (a8)
      {
        v80 = v78;
        *a8 = v79;
      }

      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v147) = 138412290;
        *(&v147 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=upload assets= Failed to close readonly pending snapshot database: %@", &v147, 0xCu);
        _MBLog(@"E ", "=upload assets= Failed to close readonly pending snapshot database: %@", v79);
      }

      LOBYTE(v18) = 0;
    }
  }

  return v18 & 1;
}

void sub_100145070(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    _Block_object_dispose(&STACK[0x310], 8);
    _Block_object_dispose(&STACK[0x208], 8);
    _Block_object_dispose(&STACK[0x228], 8);
    _Block_object_dispose(&STACK[0x248], 8);
    objc_begin_catch(a1);
    JUMPOUT(0x100144DDCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100145154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014516C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=upload assets= Failed to upload asset: %@", buf, 0xCu);
      _MBLog(@"Df", "=upload assets= Failed to upload asset: %@", v11);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a5);
    atomic_fetch_add((*(a1[7] + 8) + 24), 1uLL);
  }

  else
  {
    if (!a2)
    {
      __assert_rtn("_uploadModifiedAssets_block_invoke", "MBUploadAssets.m", 491, "inode != 0");
    }

    v13 = a1[4];
    v14 = a1[5];
    v20 = 0;
    v15 = [v13 markUploadedAssetForDomain:v14 inode:a2 assetMetadata:v10 error:&v20];
    v16 = v20;
    v17 = v20;
    if (v15)
    {
      atomic_fetch_add((*(a1[8] + 8) + 24), 1uLL);
      atomic_fetch_add((*(a1[9] + 8) + 24), [v10 assetSize]);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1[6] + 8) + 40);
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=upload assets= Failed to mark asset as uploaded: %@", buf, 0xCu);
        _MBLog(@"E ", "=upload assets= Failed to mark asset as uploaded: %@", *(*(a1[6] + 8) + 40));
      }

      atomic_fetch_add((*(a1[7] + 8) + 24), 1uLL);
      objc_storeStrong((*(a1[6] + 8) + 40), v16);
    }
  }
}

BOOL sub_1001453CC(uint64_t a1, void *a2, uint64_t a3, void *a4, id a5, uint64_t a6, void *a7)
{
  v12 = a4;
  v13 = atomic_load(*(a1 + 112));
  v159 = v12;
  if (v13)
  {
    v14 = MBGetDefaultLog();
    v15 = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=upload assets= Aborting upload of modified assets because of prior upload failures", buf, 2u);
      _MBLog(@"E ", "=upload assets= Aborting upload of modified assets because of prior upload failures");
      v16 = 0;
      v15 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = v12;
    if (![v12 count])
    {
      __assert_rtn("_uploadModifiedAssetsForDomain_block_invoke", "MBUploadAssets.m", 399, "relativePathsThatLinkToInode.count");
    }

    v156 = a3;
    v157 = a1;
    v140 = a7;
    v153 = a2;
    v18 = [v17 firstObject];
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = v19;
    v22 = [v20 rootPath];
    v23 = [v20 volumeMountPoint];
    v24 = [v21 snapshotMountPointForVolumeMountPoint:v23];

    LODWORD(v21) = [v20 shouldBackupRelativePathFromLiveFileSystem:v18];
    if (v21)
    {

      v24 = 0;
    }

    v25 = MBSnapshotPathFromLivePath(v22, v24, v23);
    v26 = [v25 stringByAppendingPathComponent:v18];

    v27 = *(a1 + 48);
    v28 = v26;
    v29 = v27;
    v30 = v159;
    v31 = v30;
    if (a5 == 1)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        v179 = v153;
        LOWORD(v180) = 1024;
        *(&v180 + 2) = v156;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=upload assets= Starting upload for %@:%@ (inode %llu, pc %d)", buf, 0x26u);
        _MBLog(@"Df", "=upload assets= Starting upload for %@:%@ (inode %llu, pc %d)", v29, v28, v153, v156);
      }
    }

    else
    {
      v32 = [v30 componentsJoinedByString:@"|"];
      if ([v31 count] < a5)
      {
        v33 = [v32 stringByAppendingString:@"..."];

        v32 = v33;
      }

      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413570;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        v179 = v153;
        LOWORD(v180) = 1024;
        *(&v180 + 2) = v156;
        HIWORD(v180) = 2048;
        v181 = a5;
        LOWORD(v182) = 2112;
        *(&v182 + 2) = v32;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=upload assets= Starting upload for %@:%@ (inode %llu, pc %d, linked by %llu [%@])", buf, 0x3Au);
        _MBLog(@"Df", "=upload assets= Starting upload for %@:%@ (inode %llu, pc %d, linked by %llu [%@])", v29, v28, v153, v156, a5, v32);
      }
    }

    v162 = 0;
    v163 = 0uLL;
    v35 = *(a1 + 40);
    v36 = *(a1 + 56);
    v37 = *(a1 + 64);
    v38 = *(a1 + 72);
    v39 = *(a1 + 80);
    v40 = *(a1 + 96);
    v161 = 0;
    v150 = v18;
    v41 = v35;
    v42 = v28;
    v145 = v36;
    v146 = v37;
    v142 = v38;
    v143 = v39;
    v144 = v40;
    v151 = v41;
    v141 = [v41 name];
    v160 = v42;
    if ([MBProtectionClassUtils canOpenWhenLocked:v156])
    {
      LOBYTE(v164) = 0;
      *v187 = 0;
      v43 = [MBSQLiteFileHandle isSQLiteFileAtPath:v160 result:&v164 error:v187];
      v44 = *v187;
      if (v43)
      {
        if (v164)
        {
          v45 = 3;
        }

        else
        {
          v45 = 1;
        }
      }

      else
      {
        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v160;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=upload assets= Failed to determine whether %@ is a SQLite file", buf, 0xCu);
          _MBLog(@"E ", "=upload assets= Failed to determine whether %@ is a SQLite file", v160);
        }

        LOBYTE(v164) = 0;
        v45 = 1;
      }
    }

    else
    {
      v45 = 2;
    }

    *&v163 = v45;
    v147 = [v160 pathExtension];
    if ((v45 - 1) > 1)
    {
      v47 = [v151 volumeMountPoint];
      v48 = [NSString stringWithFormat:@"sqlite-%llu", v153];
      v139 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v47 identifiedBy:v48 error:&v161];

      v49 = v139;
      if (v139)
      {
        v50 = v160;
        v51 = v151;
        v52 = v150;
        v53 = v142;
        v54 = v139;
        v138 = v143;
        v55 = v144;
        v56 = v50;
        v57 = v51;
        v58 = v52;
        v59 = v53;
        v60 = v54;
        v61 = v55;
        v62 = dispatch_semaphore_create(0);
        *v187 = 0;
        *&v187[8] = v187;
        *&v187[16] = 0x3032000000;
        *&v187[24] = sub_100145154;
        *&v188 = sub_100145164;
        *(&v188 + 1) = 0;
        v170 = 0;
        v171 = &v170;
        v172 = 0x2020000000;
        v173 = 0;
        v164 = 0;
        v165 = &v164;
        v166 = 0x3032000000;
        v167 = sub_100145154;
        v168 = sub_100145164;
        v169 = 0;
        v63 = sub_1001466E8();
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100146744;
        v179 = &unk_1003BFAA8;
        *&v185 = v187;
        v155 = v56;
        v180 = v155;
        v137 = v57;
        v181 = v137;
        v134 = v58;
        *&v182 = v134;
        v136 = v59;
        *(&v182 + 1) = v136;
        v148 = v60;
        v183 = v148;
        *(&v185 + 1) = &v170;
        v186 = &v164;
        v64 = v62;
        v184 = v64;
        dispatch_async(v63, buf);

        do
        {
          v65 = dispatch_time(0, 5000000000);
          if (!dispatch_semaphore_wait(v64, v65))
          {
            v71 = *(v171 + 24);
            v133 = v165[5];
            v72 = v133;
            v135 = *(*&v187[8] + 40);
            goto LABEL_39;
          }
        }

        while (!v61[2](v61));
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = v66;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v137 name];
            *v174 = 138412546;
            v175 = v68;
            v176 = 2112;
            v177 = v155;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "=upload assets= Cancelling sqlite compaction for %@:%@", v174, 0x16u);
          }

          v69 = [v137 name];
          _MBLog(@"Df", "=upload assets= Cancelling sqlite compaction for %@:%@", v69, v155);
        }

        v133 = [MBError errorWithCode:202 format:@"SQLite compaction was cancelled"];
        v70 = v133;
        v71 = 0;
        v135 = 0;
LABEL_39:

        _Block_object_dispose(&v164, 8);
        _Block_object_dispose(&v170, 8);
        _Block_object_dispose(v187, 8);

        if (v135)
        {
          if (v71)
          {
            [v138 setScrubbedSQLiteFileCount:{objc_msgSend(v138, "scrubbedSQLiteFileCount") + 1}];
          }

          [v138 setCompactedSQLiteFileCount:{objc_msgSend(v138, "compactedSQLiteFileCount") + 1}];
          v73 = v155;
          v74 = v135;
          v75 = v136;
          memset(v187, 0, sizeof(v187));
          v188 = 0u;
          v189 = 0u;
          v76 = v75;
          v77 = [v76 countByEnumeratingWithState:v187 objects:buf count:16];
          if (v77)
          {
            v78 = **&v187[16];
            while (2)
            {
              for (i = 0; i != v77; i = i + 1)
              {
                if (**&v187[16] != v78)
                {
                  objc_enumerationMutation(v76);
                }

                v80 = *(*&v187[8] + 8 * i);
                v81 = objc_autoreleasePoolPush();
                if (objc_opt_respondsToSelector())
                {
                  v82 = [v80 backingUpSQLiteFileCopyAtPath:v73 temporaryPath:v74];
                  if (v82)
                  {
                    objc_autoreleasePoolPop(v81);

                    v97 = v82;
                    v94 = 0;
                    v96 = 0;
                    v133 = v82;
                    goto LABEL_63;
                  }
                }

                objc_autoreleasePoolPop(v81);
              }

              v77 = [v76 countByEnumeratingWithState:v187 objects:buf count:16];
              if (v77)
              {
                continue;
              }

              break;
            }
          }

          v83 = v74;
          v84 = v148;
          v85 = v61;
          v131 = v84;
          v86 = [v84 makeTemporaryFilePath];
          group = dispatch_group_create();
          v87 = [MBFileEncodingTask encodingTaskWithEncodingMethod:1];
          [v87 setSourcePath:v83];
          [v87 setDestinationPath:v86];
          [v87 setProtectionClass:v156];
          v88 = +[MBBehaviorOptions sharedOptions];
          [v88 SQLiteSpaceSavingsThresholdWithDefaultValue:0.5];
          v89 = [NSNumber numberWithDouble:?];
          [v87 setSpaceSavingsThreshold:v89];

          [v87 setCancellationHandler:v85];
          [v87 setGroup:group];
          [v87 start];
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          v90 = [v87 error];
          v91 = v90;
          if (v90)
          {
            v92 = v90;
            v93 = v86;
            unlink([v86 fileSystemRepresentation]);
            v94 = 0;
            v95 = 0;
          }

          else
          {
            if (![v87 compressionMethod])
            {
              __assert_rtn("_compressFileAtPath", "MBUploadAssets.m", 124, "task.compressionMethod != MBFileCompressionMethodUnspecified");
            }

            v94 = [v87 compressionMethod];
            v95 = v86;
          }

          v98 = v91;
          if (v95)
          {
            v99 = v83;
            unlink([v83 fileSystemRepresentation]);
            [v138 setCompressedSQLiteFileCount:{objc_msgSend(v138, "compressedSQLiteFileCount") + 1}];
            v83 = v95;
          }

          else
          {
            v100 = MBGetDefaultLog();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *&buf[4] = v73;
              *&buf[12] = 2112;
              *&buf[14] = v83;
              *&buf[22] = 2112;
              v179 = v98;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "=upload assets= Could not compress SQLite database at %@, using compacted path instead %@: %@", buf, 0x20u);
              _MBLog(@"E ", "=upload assets= Could not compress SQLite database at %@, using compacted path instead %@: %@", v73, v83, v98);
            }
          }

          v96 = v83;
        }

        else
        {
          v94 = 0;
          v96 = 0;
        }

LABEL_63:

        v101 = v133;
        if (v96)
        {
          BYTE8(v163) = v94;
          v102 = v148;
          v103 = MBGetDefaultLog();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            *buf = 138413314;
            *&buf[4] = v96;
            *&buf[12] = 2112;
            *&buf[14] = v141;
            *&buf[22] = 2112;
            v179 = v155;
            LOWORD(v180) = 1024;
            *(&v180 + 2) = v94;
            HIWORD(v180) = 2112;
            v181 = v147;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "=upload assets= Uploading processed SQLite database at %@ instead of the original database at %@:%@ compression:%d ext:%@", buf, 0x30u);
            _MBLog(@"I ", "=upload assets= Uploading processed SQLite database at %@ instead of the original database at %@:%@ compression:%d ext:%@", v96, v141, v155, v94, v147);
          }

          LOBYTE(v130) = v94;
          v154 = [MBAssetRecord assetRecordForDomain:v137 absolutePath:v96 extension:v147 inode:v153 protectionClass:v156 assetType:3 compressionMethod:v130 device:v146 commitID:v145 outAssetSize:&v162 error:&v161];
        }

        else
        {
          v104 = sub_1001466E8();
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10014673C;
          v179 = &unk_1003BC0B0;
          v180 = v148;
          dispatch_async(v104, buf);

          v105 = MBGetDefaultLog();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            *v187 = 138412802;
            *&v187[4] = v141;
            *&v187[12] = 2112;
            *&v187[14] = v155;
            *&v187[22] = 2112;
            *&v187[24] = v101;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "=upload assets= Failed to process sqlite file %@:%@: %@", v187, 0x20u);
            _MBLog(@"E ", "=upload assets= Failed to process sqlite file %@:%@: %@", v141, v155, v101);
          }

          v106 = v101;
          v161 = v101;

          v148 = 0;
          v154 = 0;
        }

        v49 = v139;
      }

      else
      {
        v148 = 0;
        v154 = 0;
      }
    }

    else
    {
      BYTE8(v163) = 0;
      LOBYTE(v129) = 0;
      v154 = [MBAssetRecord assetRecordForDomain:v151 absolutePath:v160 extension:v147 inode:v153 protectionClass:v156 assetType:v45 compressionMethod:v129 device:v146 commitID:v145 outAssetSize:&v162 error:&v161];
      v148 = 0;
    }

    v149 = v148;
    v152 = v161;
    v16 = v154 != 0;
    if (v154)
    {
      [*(v157 + 80) setQueuedAssetCount:{objc_msgSend(*(v157 + 80), "queuedAssetCount") + 1}];
      v107 = *(v157 + 80);
      v108 = [v107 queuedAssetSize];
      [v107 setQueuedAssetSize:&v108[v162]];
      v109 = *(v157 + 88);
      v110 = *(v157 + 48);
      v111 = *(v157 + 64);
      v112 = *(v157 + 104);
      v113 = v162;
      *v187 = v163;
      v114 = v110;
      v115 = v160;
      v116 = v149;
      v117 = v112;
      v118 = v154;
      v119 = v109;
      v120 = [v111 pendingSnapshot];
      v158 = [v120 progressModel];

      v121 = [v118 asCKRecord];

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100146860;
      v179 = &unk_1003BFAF0;
      v180 = v116;
      v181 = v114;
      LOBYTE(v186) = v156;
      v183 = v153;
      v184 = v113;
      v185 = *v187;
      *&v182 = v115;
      *(&v182 + 1) = v117;
      v122 = v117;
      v123 = v115;
      v124 = v114;
      v125 = v116;
      [v119 saveRecord:v121 assetSize:v113 delegate:v158 completion:buf];
    }

    else
    {
      v126 = MBGetDefaultLog();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v152;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "=upload assets= Failed to create asset record: %@", buf, 0xCu);
        _MBLog(@"E ", "=upload assets= Failed to create asset record: %@", v152);
      }

      if (v140)
      {
        v127 = v152;
        *v140 = v152;
      }
    }

    v15 = v150;
  }

  return v16;
}

void sub_1001466A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v50 - 192), 8);
  _Unwind_Resume(a1);
}

id sub_1001466E8()
{
  if (qword_100421820 != -1)
  {
    dispatch_once(&qword_100421820, &stru_1003BFAC8);
  }

  v1 = qword_100421818;

  return v1;
}

void sub_100146744(uint64_t a1)
{
  v6 = 0;
  v2 = MBCompactSQLiteFileForiCloudBackup(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), &v6);
  v3 = 0;
  v4 = *(*(a1 + 80) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  *(*(*(a1 + 88) + 8) + 24) = v6;
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), 0);
  }

  dispatch_semaphore_signal(*(a1 + 72));
}

void sub_1001467FC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MobileBackup.UploadAssets.SQLiteCompact", v3);
  v2 = qword_100421818;
  qword_100421818 = v1;
}

void sub_100146860(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 dispose];
  }

  v8 = [MBAssetRecord assetRecordFromCKRecord:v5];
  v9 = v8;
  if (v6)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      log = v5;
      v77 = v6;
      v13 = *(a1 + 64);
      v14 = *(a1 + 96);
      v15 = [v9 recordID];
      v16 = [v15 recordName];
      v17 = MBStringForAssetType(*(a1 + 80));
      v18 = *(a1 + 88);
      *buf = 138413826;
      v79 = v11;
      v80 = 2112;
      v81 = v12;
      v82 = 2048;
      v83 = v13;
      v84 = 1024;
      *v85 = v14;
      *&v85[4] = 2112;
      *&v85[6] = v16;
      *&v85[14] = 2112;
      *&v85[16] = v17;
      v86 = 1024;
      LODWORD(v87) = v18;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=upload assets= Failed upload for %@:%@ (inode %llu, pc %d, recordID %@, type %@, compression %d)", buf, 0x40u);

      v70 = *(a1 + 40);
      v19 = *(a1 + 64);
      v20 = *(a1 + 96);
      v21 = [v9 recordID];
      v22 = [v21 recordName];
      v23 = MBStringForAssetType(*(a1 + 80));
      v56 = v20;
      v55 = v19;
      v5 = log;
      v6 = v77;
      _MBLog(@"E ", "=upload assets= Failed upload for %@:%@ (inode %llu, pc %d, recordID %@, type %@, compression %d)", v70, v55, v56, v22, v23, *(a1 + 88));
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v24 = [v8 contents];
    v25 = [v24 signature];

    if (v25)
    {
      v26 = [v9 recordIDSuffix];
      v27 = [v9 contents];
      v28 = [v27 signature];
      v29 = [MBAssetMetadata assetMetadataForUploadedRecordWithRecordIDSuffix:v26 signature:v28 size:*(a1 + 72) type:*(a1 + 80) compressionMethod:*(a1 + 88)];

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = v5;
        v32 = *(a1 + 40);
        v62 = *(a1 + 48);
        v64 = *(a1 + 64);
        v68 = [v9 recordID];
        v60 = [v68 recordName];
        v33 = MBStringForAssetType([v29 assetType]);
        v59 = [v29 compressionMethod];
        v66 = [v29 assetSignature];
        [v66 base64EncodedStringWithOptions:0];
        v34 = loga = v30;
        v71 = v25;
        v35 = [v29 assetSize];
        v36 = [v9 extension];
        *buf = 138414338;
        v79 = v32;
        v5 = v31;
        v6 = 0;
        v80 = 2112;
        v81 = v62;
        v82 = 2048;
        v83 = v64;
        v84 = 2112;
        *v85 = v60;
        *&v85[8] = 2112;
        *&v85[10] = v33;
        *&v85[18] = 1024;
        *&v85[20] = v59;
        v86 = 2112;
        v87 = v34;
        v88 = 2048;
        v89 = v35;
        v90 = 2112;
        v91 = v36;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "=upload assets= Finished upload for %@:%@ (inode %llu, recordID %@, type %@, compression %d, sig %@, sz %llu, ext %@)", buf, 0x58u);

        v67 = *(a1 + 40);
        v65 = *(a1 + 64);
        v69 = [v9 recordID];
        v63 = [v69 recordName];
        v61 = MBStringForAssetType([v29 assetType]);
        LODWORD(v36) = [v29 compressionMethod];
        v37 = [v29 assetSignature];
        v38 = [v37 base64EncodedStringWithOptions:0];
        v39 = [v29 assetSize];
        v40 = [v9 extension];
        _MBLog(@"I ", "=upload assets= Finished upload for %@:%@ (inode %llu, recordID %@, type %@, compression %d, sig %@, sz %llu, ext %@)", v67, v65, v63, v61, v36, v38, v39, v40);

        v30 = loga;
        v25 = v71;
      }

      v41 = *(*(a1 + 56) + 16);
    }

    else
    {
      v42 = MBGetDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v72 = [v9 recordID];
        v43 = [v72 recordName];
        logb = v5;
        v44 = *(a1 + 40);
        v45 = *(a1 + 48);
        v46 = *(a1 + 64);
        v47 = *(a1 + 96);
        v48 = MBStringForAssetType(*(a1 + 80));
        v49 = *(a1 + 88);
        *buf = 138413826;
        v79 = v43;
        v80 = 2112;
        v81 = v44;
        v82 = 2112;
        v83 = v45;
        v84 = 2048;
        *v85 = v46;
        *&v85[8] = 1024;
        *&v85[10] = v47;
        v25 = 0;
        *&v85[14] = 2112;
        *&v85[16] = v48;
        v86 = 1024;
        LODWORD(v87) = v49;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "=upload assets= Uploaded recordID %@ for %@:%@ did not have a signature  (inode %llu, pc %d, type %@, compression %d)", buf, 0x40u);

        v50 = [v9 recordID];
        v51 = [v50 recordName];
        v73 = *(a1 + 40);
        v52 = *(a1 + 64);
        v53 = *(a1 + 96);
        v54 = MBStringForAssetType(*(a1 + 80));
        v57 = v52;
        v58 = v53;
        v5 = logb;
        v6 = 0;
        _MBLog(@"E ", "=upload assets= Uploaded recordID %@ for %@:%@ did not have a signature  (inode %llu, pc %d, type %@, compression %d)", v51, v73, v57, v58, v54, *(a1 + 88));
      }

      v29 = [MBError errorWithCode:205 format:@"Uploaded asset does not contain a signature"];
      v41 = *(*(a1 + 56) + 16);
    }

    v41();
  }
}

void sub_1001472D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10014736C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [v5 lastObject];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_100147400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "saveAccount completed: %@: %@", buf, 0x16u);

    v8 = [NSNumber numberWithBool:a2];
    _MBLog(@"Df", "saveAccount completed: %@: %@", v8, v5);
  }

  if (a2)
  {
    v9 = [*(a1 + 32) containsObject:ACAccountDataclassKeychainSync];
    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = *(a1 + 48);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10014764C;
      v16[3] = &unk_1003BFB18;
      v16[4] = v10;
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      [v10 _enableKeychainSync:v11 completion:v16];

      v12 = v17;
    }

    else
    {
      [*(a1 + 40) _saveEnabledSyncDataclasses:*(a1 + 32)];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001476B8;
      block[3] = &unk_1003BCB38;
      v13 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(v13, block);
      v12 = v15;
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10014764C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _saveEnabledSyncDataclasses:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001478F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling Keychain Sync: %@: %@", buf, 0x16u);

    v8 = [NSNumber numberWithBool:a2];
    _MBLog(@"Df", "Finished enabling Keychain Sync: %@: %@", v8, v5);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147A84;
  block[3] = &unk_1003BFB68;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = a2;
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_async(v9, block);
}

uint64_t sub_100147D78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v5;
    if ([v7 isCameraRollDomain] && *(a1 + 40) == 1 && *(a1 + 41) != 1)
    {
      goto LABEL_12;
    }

    if (![*(a1 + 32) _isSupportedBackupDomain:v7])
    {
      goto LABEL_12;
    }

    if ([v7 isAppDomain])
    {
      v8 = [v7 bundleID];
      v9 = [v8 length] != 0;
    }

    else
    {
      v9 = 1;
    }

    if ([v7 isEnabled])
    {
LABEL_12:
      v10 = 0;
    }

    else
    {
      v10 = ([v7 isRestricted] ^ 1) & v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1001481B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_13;
  }

  if (([*(a1 + 32) _isSupportedDataclassForDevice:v5] & 1) == 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_disabledSyncDataclassesForAccount: Filtering out %{public}@ because device doesn't support it.", buf, 0xCu);
      _MBLog(@"Df", "_disabledSyncDataclassesForAccount: Filtering out %{public}@ because device doesn't support it.", v5);
    }

    goto LABEL_8;
  }

  v7 = [*(a1 + 40) isProvisionedForDataclass:v5];
  if ([v5 isEqualToString:ACAccountDataclassKeychainSync])
  {
    v8 = +[CDPKeychainSync isUserVisibleKeychainSyncEnabled];
  }

  else
  {
    v8 = [*(a1 + 40) isEnabledForDataclass:v5];
  }

  v11 = v8;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [NSNumber numberWithBool:v11];
    v14 = [NSNumber numberWithBool:v7];
    *buf = 138543874;
    v19 = v5;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_disabledSyncDataclassesForAccount: Dataclass (%{public}@) isEnabled: %{public}@, isProvisioned: %{public}@", buf, 0x20u);

    v15 = [NSNumber numberWithBool:v11];
    v16 = [NSNumber numberWithBool:v7];
    _MBLog(@"Db", "_disabledSyncDataclassesForAccount: Dataclass (%{public}@) isEnabled: %{public}@, isProvisioned: %{public}@", v5, v15, v16);
  }

  v10 = (v11 ^ 1) & v7;
LABEL_13:

  return v10;
}

void sub_100149094(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1001490AC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1001490B8);
}

id sub_1001490C0()
{
  v2[0] = kLockdownUniqueDeviceIDKey;
  v2[1] = kLockdownDeviceNameKey;
  v3[0] = @"UniqueDeviceID";
  v3[1] = @"UserAssignedDeviceName";
  v2[2] = kLockdownSerialNumberKey;
  v2[3] = kLockdownProductTypeKey;
  v3[2] = @"SerialNumber";
  v3[3] = @"ProductType";
  v2[4] = kLockdownBuildVersionKey;
  v2[5] = kLockdownProductVersionKey;
  v3[4] = @"BuildVersion";
  v3[5] = @"ProductVersion";
  v2[6] = kLockdownDeviceClassKey;
  v3[6] = @"DeviceClass";
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:7];

  return v0;
}

void sub_100149844(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v23 = objc_begin_catch(a1);
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Exception while fetching last backup date: %@", &buf, 0xCu);
        _MBLog(@"Df", "Exception while fetching last backup date: %@");
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x10014974CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014996C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100149984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 committed];
  if (v4)
  {
    v5 = [v3 created];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithUnsignedLongLong:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Backup date is %@", buf, 0xCu);
      _MBLog(@"I ", "Backup date is %@", *(*(*(a1 + 32) + 8) + 40));
    }
  }

  return v4 ^ 1;
}

void sub_10014A1D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10014A090);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014B054(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10014AF40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MBCreateVolumeSnapshots(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v159 = a6;
  v23 = a7;
  v161 = a8;
  v24 = a9;
  v150 = a10;
  v25 = a11;
  v26 = a13;
  if (!v19)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 210, "account");
  }

  if (!v20)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 211, "appManager");
  }

  if (!v21)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 212, "domainManager");
  }

  if (!v22)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 213, "serviceManager");
  }

  if (!v23)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 214, "device");
  }

  if (!v161)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 215, "pendingSnapshotDB");
  }

  if (!v24)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 216, "currentSnapshot");
  }

  if (!v25)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 217, "attemptSummary");
  }

  v27 = v26;
  v165 = 0;
  v28 = v19;
  v29 = v24;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v162 = v28;
  v33 = [v28 persona];
  if (!v33)
  {
    __assert_rtn("_loadDomainsFromVolumesToBackUp", "MBCreateVolumeSnapshots.m", 40, "persona");
  }

  v34 = v33;
  v163 = v31;
  v149 = v25;
  v160 = v32;
  if (MBBackupReasonIsScheduled())
  {
    v35 = v159;
    if ([v30 loadAppsWithPersona:v34 safeHarbors:1 error:&v165])
    {
      v36 = v30;
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Removing old safe harbors", buf, 2u);
        _MBLog(@"Df", "Removing old safe harbors");
      }

      v38 = v23;
      v39 = v27;

      v30 = v36;
      [v36 removeOldSafeHarborsWithExpiration:2592000.0];
      goto LABEL_16;
    }

    v38 = v23;
    v39 = v27;
  }

  else
  {
    v38 = v23;
    v39 = v27;
    v35 = v159;
    if ([v30 loadAppsWithPersona:v34 safeHarbors:0 error:&v165])
    {
LABEL_16:
      v40 = [v29 snapshotFormat];
      v41 = v162;
      v42 = v29;
      v43 = v160;
      [v31 addDomainsToBackUpToiCloudWithAppManager:v30 manager:v160 format:v40 account:v162];
      v44 = 1;
      goto LABEL_19;
    }
  }

  v44 = 0;
  v42 = v29;
  v43 = v160;
  v41 = v162;
LABEL_19:

  v148 = v30;
  v45 = v165;
  v46 = v42;
  if ((v44 & 1) == 0)
  {
    v68 = MBGetDefaultLog();
    v69 = v38;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v184 = v45;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to load domains to back up: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to load domains to back up: %@", v45);
    }

    v70 = v161;
    v71 = v162;
    if (a12)
    {
      v72 = v45;
      v73 = 0;
      *a12 = v45;
    }

    else
    {
      v73 = 0;
    }

    v74 = v35;
    v75 = v149;
    goto LABEL_122;
  }

  if (!v35)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 231, "mountedSnapshotTracker");
  }

  v47 = [v162 persona];
  v135 = v38;
  v48 = [v38 pendingSnapshotRecordID];
  v164 = v45;
  v155 = v35;
  v151 = v48;
  v133 = v39;
  v157 = v39;
  v146 = v47;
  v49 = [v47 volumesToBackUp];
  memset(v180, 0, sizeof(v180));
  v181 = 0u;
  v182 = 0u;
  v50 = v49;
  v51 = [v50 countByEnumeratingWithState:v180 objects:buf count:16];
  v137 = v42;
  if (v51)
  {
    v52 = v51;
    v53 = **&v180[16];
    while (2)
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (**&v180[16] != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*&v180[8] + 8 * i);
        if (MBIsInternalInstall())
        {
          v56 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
          [MBFileSystemManager deleteAllSnapshotsForVolume:v55 withPrefix:@"com.appleinternal.mobilebackup" latestCreationDate:v56 error:0];
        }

        if (![MBFileSystemManager volumeSupportsLocalSnapshots:v55])
        {
          [MBError errorWithCode:1 format:@"File system doesn't support local snapshot"];
          v164 = v67 = 0;
          v57 = v50;
          v74 = v159;
          v75 = v149;
          v71 = v162;
          v46 = v137;
          v59 = v155;
          goto LABEL_57;
        }
      }

      v52 = [v50 countByEnumeratingWithState:v180 objects:buf count:16];
      v46 = v42;
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  v57 = MBSnapshotName(@"com.apple.mobilebackup", v151);
  v153 = MBiCloudUserSessionSnapshotMountPoints();
  if ([MBFileSystemManager unmount:"unmount:timeout:error:cancelationHandler:" timeout:60.0 error:? cancelationHandler:?]&& [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:v50 withPrefix:@"com.apple.mobilebackup" error:&v164])
  {
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    obj = v50;
    v58 = [obj countByEnumeratingWithState:&v166 objects:&v176 count:16];
    v59 = v155;
    if (v58)
    {
      v60 = v58;
      v144 = *v167;
      while (2)
      {
        for (j = 0; j != v60; j = j + 1)
        {
          if (*v167 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v166 + 1) + 8 * j);
          v170 = 0;
          v63 = [MBFileSystemManager createAndMountSnapshotForVolume:v62 name:v57 atFirstAvailableMountPoint:v153 error:&v170 cancelationHandler:v157];
          v64 = v170;
          v65 = v64;
          if (!v63)
          {
            v76 = v64;
            v164 = v65;
            v77 = MBGetDefaultLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v171 = 138543618;
              *&v171[4] = v57;
              v172 = 2114;
              v173 = v65;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Failed to create and mount the APFS snapshot (%{public}@): %{public}@", v171, 0x16u);
              _MBLog(@"E ", "Failed to create and mount the APFS snapshot (%{public}@): %{public}@", v57, v65);
            }

            v67 = 0;
            goto LABEL_55;
          }

          v66 = MBGetDefaultLog();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *v171 = 138543874;
            *&v171[4] = v57;
            v172 = 2112;
            v173 = v62;
            v174 = 2114;
            v175 = v63;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ for %@ was mounted successfully at %{public}@", v171, 0x20u);
            _MBLog(@"Df", "Snapshot %{public}@ for %@ was mounted successfully at %{public}@", v57, v62, v63);
          }

          v59 = v155;
          [v155 trackSnapshotForVolume:v62 snapshotName:v57 mountPoint:v63];
        }

        v60 = [obj countByEnumeratingWithState:&v166 objects:&v176 count:16];
        if (v60)
        {
          continue;
        }

        break;
      }
    }

    v67 = 1;
LABEL_55:
    v74 = v159;
    v75 = v149;
    v71 = v162;
    v46 = v137;
  }

  else
  {
    v67 = 0;
    v74 = v159;
    v75 = v149;
    v71 = v162;
    v59 = v155;
  }

LABEL_57:
  v134 = v164;

  if (v67)
  {
    v78 = [v59 mountedSnapshots];
    v69 = v135;
    if (![v78 count])
    {
      __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 237, "mountedSnapshotTracker.mountedSnapshots.count > 0");
    }

    v79 = v75;
    v80 = v74;

    v81 = [v71 persona];
    v82 = v161;
    v83 = v46;
    v145 = v150;
    v141 = v135;
    v130 = v163;
    obja = v81;
    v140 = v79;
    v147 = v83;
    [v83 snapshotFormat];
    v132 = v82;
    if (!MBSnapshotFormatContainsFileLists())
    {
      v118 = 1;
      v74 = v80;
      v75 = v149;
      v31 = v163;
      v70 = v161;
      v71 = v162;
      goto LABEL_118;
    }

    v170 = 0;
    v84 = [v82 markAllDomainsAsNotOnDisk:&v170];
    v85 = v170;
    if ((v84 & 1) == 0)
    {
      v74 = v80;
      v119 = MBGetDefaultLog();
      v31 = v163;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v184 = v85;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Failed to mark all domains as not on disk: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to mark all domains as not on disk: %@", v85);
      }

      v120 = a12;
      v75 = v149;
      v70 = v161;
      v71 = v162;
      if (!a12)
      {
        goto LABEL_116;
      }

      goto LABEL_105;
    }

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v139 = [v130 allDomains];
    v86 = [v139 countByEnumeratingWithState:&v176 objects:buf count:16];
    v31 = v163;
    if (!v86)
    {
      v89 = v82;
      goto LABEL_110;
    }

    v87 = v86;
    v88 = *v177;
    v89 = v132;
    v136 = *v177;
LABEL_63:
    v90 = 0;
    v138 = v87;
    while (1)
    {
      if (*v177 != v88)
      {
        objc_enumerationMutation(v139);
      }

      v91 = *(*(&v176 + 1) + 8 * v90);
      if (([v91 isLegacyPerAppPlaceholderDomain] & 1) == 0)
      {
        break;
      }

LABEL_94:
      if (v87 == ++v90)
      {
        v87 = [v139 countByEnumeratingWithState:&v176 objects:buf count:16];
        if (v87)
        {
          goto LABEL_63;
        }

LABEL_110:

        if ([v89 truncateDomainsNotPresentOnDisk:a12])
        {
          v118 = 1;
LABEL_112:
          v74 = v159;
          v70 = v161;
          v71 = v162;
          v75 = v149;
          v39 = v133;
          v46 = v137;
LABEL_117:

          v69 = v135;
LABEL_118:

          if (v118)
          {
            v125 = [v71 persona];
            [v148 removeStaleStateForUninstalledAppsForPersona:v125];

            v73 = 1;
            goto LABEL_121;
          }

LABEL_120:
          v73 = 0;
LABEL_121:
          v45 = v134;
          goto LABEL_122;
        }

        v124 = MBGetDefaultLog();
        v74 = v159;
        v70 = v161;
        v71 = v162;
        v75 = v149;
        v39 = v133;
        v46 = v137;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *v180 = 138412290;
          *&v180[4] = v85;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "Failed to truncate domains not present on disk: %@", v180, 0xCu);
          _MBLog(@"E ", "Failed to truncate domains not present on disk: %@", v85);
        }

        v120 = a12;
        if (!a12)
        {
LABEL_116:
          v118 = 0;
          goto LABEL_117;
        }

LABEL_105:
        v121 = v120;
        v122 = v85;
        v118 = 0;
        *v121 = v85;
        goto LABEL_117;
      }
    }

    v152 = v85;
    v92 = objc_autoreleasePoolPush();
    v93 = v91;
    v154 = v141;
    v94 = v147;
    v95 = v145;
    v158 = obja;
    v156 = v140;
    v96 = v89;
    v97 = [v93 name];
    *&v166 = 0;
    v98 = [v96 markDomainAsPresentOnDisk:v97 error:&v166];

    v99 = v166;
    if ((v98 & 1) == 0)
    {
      v108 = MBGetDefaultLog();
      v31 = v163;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        *v180 = 138412290;
        *&v180[4] = v99;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "Failed to mark domains as present on disk: %@", v180, 0xCu);
        _MBLog(@"E ", "Failed to mark domains as present on disk: %@", v99);
      }

      v99 = v99;
      v85 = v99;
      v107 = v154;
      goto LABEL_92;
    }

    v100 = [v95 commitID];
    if (!v100)
    {
      v85 = 0;
      v107 = v154;
LABEL_91:

      v31 = v163;
LABEL_92:

      objc_autoreleasePoolPop(v92);
      if (v85)
      {
        if (a12)
        {
          v123 = v85;
          *a12 = v85;
        }

        v118 = 0;
        goto LABEL_112;
      }

      v87 = v138;
      v88 = v136;
      goto LABEL_94;
    }

    [v94 type];
    IsFull = MBSnapshotTypeIsFull();
    v102 = MBSnapshotsAreTransitioningFormats(v95, v94);
    [v94 type];
    if ((MBSnapshotTypeIsFull() & 1) != 0 || MBSnapshotsAreTransitioningFormats(v95, v94))
    {
      log = v100;
      v103 = MBGetDefaultLog();
      v131 = v103;
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        v85 = 0;
        v107 = v154;
        v100 = log;
LABEL_90:

        goto LABEL_91;
      }

      v104 = [v93 name];
      *v180 = 138412802;
      *&v180[4] = v104;
      *&v180[12] = 1024;
      *&v180[14] = IsFull;
      *&v180[18] = 1024;
      *&v180[20] = v102;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Not cloning file list for %@ isFullBackup:%d isTransitioningFormats:%d", v180, 0x18u);

      v89 = v132;
      v105 = [v93 name];
      _MBLog(@"I ", "Not cloning file list for %@ isFullBackup:%d isTransitioningFormats:%d", v105, IsFull, v102);
      v106 = v105;
      v85 = 0;
      v107 = v154;
      v100 = log;
    }

    else
    {
      v109 = [v93 name];
      v107 = v154;
      v131 = v109;
      if ([v154 shouldRepairDomain:v109])
      {
        [v156 trackSkippedFileListCloneDomain:v109];
        loga = MBGetDefaultLog();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
        {
          *v180 = 138412290;
          *&v180[4] = v109;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "=domain repair= Not cloning file list for domain pending repair: %@", v180, 0xCu);
          _MBLog(@"I ", "=domain repair= Not cloning file list for domain pending repair: %@", v109);
        }

        v85 = 0;
      }

      else
      {
        v110 = [v94 commitID];
        v111 = [v158 snapshotDatabaseDirectory];
        v112 = [v93 name];
        *v171 = v99;
        loga = v110;
        LOBYTE(v110) = MBCloneFileListDB(v111, v100, v110, v112, v171);
        v127 = *v171;

        if (v110)
        {
          v85 = 0;
          v99 = v127;
        }

        else
        {
          v113 = MBGetDefaultLog();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            v114 = [v93 name];
            *v180 = 138413058;
            *&v180[4] = v100;
            *&v180[12] = 2112;
            *&v180[14] = loga;
            *&v180[22] = 2112;
            *&v180[24] = v114;
            LOWORD(v181) = 2112;
            *(&v181 + 2) = v127;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "Failed to clone FileListDB for (%@, %@, %@): %@", v180, 0x2Au);

            v115 = [v93 name];
            _MBLog(@"E ", "Failed to clone FileListDB for (%@, %@, %@): %@", v100, loga, v115, v127);
          }

          v99 = v127;
          v85 = v99;
        }

        v89 = v132;
        v107 = v154;
      }

      v106 = loga;
    }

    goto LABEL_90;
  }

  v116 = MBGetDefaultLog();
  v69 = v135;
  v31 = v163;
  if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v184 = v134;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "Failed to mount the APFS snapshots %@", buf, 0xCu);
    _MBLog(@"E ", "Failed to mount the APFS snapshots %@", v134);
  }

  v70 = v161;
  if (!a12)
  {
    goto LABEL_120;
  }

  v117 = v134;
  v73 = 0;
  *a12 = v117;
  v45 = v117;
LABEL_122:

  return v73;
}

uint64_t BackupClientConfigurationSettingReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___BackupClientConfigurationSetting__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___BackupClientConfigurationSetting__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001508C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSURL fileURLWithPath:v3];
  v20 = 0;
  v19 = 0;
  v6 = [v5 getResourceValue:&v20 forKey:NSURLIsExcludedFromBackupKey error:&v19];
  v7 = v20;
  v8 = v19;
  if (v6)
  {
    if ([v7 BOOLValue])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = NSURLIsExcludedFromBackupKey;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
      _MBLog(@"E ", "=restore-policy= Error fetching value for property %{public}@: %@", NSURLIsExcludedFromBackupKey, v8);
    }
  }

  if (![*(a1 + 32) _isUnencryptedLocal])
  {
    if (![*(a1 + 32) _isCloudKitEngine] || (*(a1 + 40) & 1) != 0)
    {
      goto LABEL_26;
    }

    error = 0;
    propertyValueTypeRefPtr = 0;
    v10 = _kCFURLIsExcludedFromCloudBackupKey;
    if (CFURLCopyResourcePropertyForKey(v5, _kCFURLIsExcludedFromCloudBackupKey, &propertyValueTypeRefPtr, &error))
    {
      v14 = propertyValueTypeRefPtr;
      if (propertyValueTypeRefPtr)
      {
        CFRelease(propertyValueTypeRefPtr);
        if (v14 == kCFBooleanTrue)
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring from iCloud (attribute set locally): %@", buf, 0xCu);
            _MBLog(@"Df", "=restore-policy= Not restoring from iCloud (attribute set locally): %@", v3);
          }

          goto LABEL_13;
        }
      }

LABEL_26:
      v13 = 0;
      goto LABEL_27;
    }

    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_24:

      if (error)
      {
        CFRelease(error);
      }

      goto LABEL_26;
    }

LABEL_23:
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = error;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
    _MBLog(@"E ", "=restore-policy= Error fetching value for property %{public}@: %@", v10, error);
    goto LABEL_24;
  }

  error = 0;
  propertyValueTypeRefPtr = 0;
  v10 = _kCFURLIsExcludedFromUnencryptedBackupKey;
  if (!CFURLCopyResourcePropertyForKey(v5, _kCFURLIsExcludedFromUnencryptedBackupKey, &propertyValueTypeRefPtr, &error))
  {
    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = propertyValueTypeRefPtr;
  if (!propertyValueTypeRefPtr)
  {
    goto LABEL_26;
  }

  CFRelease(propertyValueTypeRefPtr);
  if (v11 != kCFBooleanTrue)
  {
    goto LABEL_26;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring from unencrypted iTunes backup (attribute set locally): %@", buf, 0xCu);
    _MBLog(@"Df", "=restore-policy= Not restoring from unencrypted iTunes backup (attribute set locally): %@", v3);
  }

LABEL_13:

LABEL_14:
  v13 = 1;
LABEL_27:

  objc_autoreleasePoolPop(v4);
  return v13;
}

BOOL sub_100150CA4(uint64_t a1, void *a2, void *a3)
{
  memset(&v13, 0, sizeof(v13));
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 persona];
  v8 = sub_100150D7C(v6, v7);

  v9 = [v8 stringByAppendingPathComponent:v5];

  v10 = lstat([v9 fileSystemRepresentation], &v13);
  v11 = (v10 | ~v13.st_mode & 0xA000) == 0;

  return v11;
}

id sub_100150D7C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 shouldRestoreToSharedVolume])
  {
    [v3 sharedIncompleteRestoreDirectory];
  }

  else
  {
    [v3 userIncompleteRestoreDirectory];
  }
  v5 = ;

  v6 = [v4 rootPath];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

void sub_100151FD4(id a1)
{
  qword_100421838 = [[MBXPCServer alloc] initWithServiceName:@"com.apple.backupd"];

  _objc_release_x1();
}

id sub_1001524A0(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "com.apple.mobile.keybagd.first_unlock";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received %s notification", buf, 0xCu);
    _MBLog(@"Df", "Received %s notification", "com.apple.mobile.keybagd.first_unlock");
  }

  return [*(a1 + 32) _unlocked];
}

id sub_100152574(uint64_t a1, uint64_t a2)
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result == 1)
  {
    v4 = *(a1 + 32);

    return [v4 _unlocked];
  }

  return result;
}

void sub_1001525C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_connection)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = MBStringWithXPCObject();
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Received an unexpected XPC message: %@", buf, 0xCu);

      v6 = MBStringWithXPCObject();
      _MBLog(@"E ", "Received an unexpected XPC message: %@", v6);
    }

    MBExit(1);
  }

  v21 = 0;
  v7 = sub_100152914(v3, @"backupd-connection-initiate", &v21);
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    v10 = [[MBConnection alloc] initWithXPCConnection:v3 delegate:*(a1 + 32) delegateQueue:*(a1 + 40)];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Accepted new connection %@", buf, 0xCu);
      _MBLog(@"I ", "Accepted new connection %@", v10);
    }

    v12 = *(a1 + 32);
    v13 = v12[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100152BAC;
    block[3] = &unk_1003BC060;
    v19 = v12;
    v20 = v10;
    v14 = v10;
    dispatch_sync(v13, block);
    [v14 resume];
    v15 = +[MBDaemon sharedDaemon];
    [v15 resetIdleTimer];
  }

  else
  {
    if (!v8)
    {
      buf[0] = 0;
      pid = xpc_connection_get_pid(v3);
      if (proc_name(pid, buf, 0xFFu) <= 0)
      {
        __strlcpy_chk();
      }

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v22 = 136315650;
        v23 = buf;
        v24 = 1024;
        v25 = pid;
        v26 = 2112;
        v27 = @"backupd-connection-initiate";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "The client connection from %s(%d) is missing the %@ entitlement", v22, 0x1Cu);
        _MBLog(@"E ", "The client connection from %s(%d) is missing the %@ entitlement", buf, pid, @"backupd-connection-initiate");
      }
    }

    xpc_connection_cancel(v3);
  }
}

BOOL sub_100152914(void *a1, void *a2, CFErrorRef *a3)
{
  v5 = a2;
  v6 = a1;
  pid = xpc_connection_get_pid(v6);
  v22 = 0u;
  v23 = 0u;
  xpc_connection_get_audit_token();

  memset(&token, 0, sizeof(token));
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      *a3 = 0;
    }

    error = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, v5, &error);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) != 0;
      CFRelease(v11);
    }

    else
    {
      v15 = error;
      if (error)
      {
        if (-[__CFError code](error, "code") != 3 || (-[__CFError domain](v15, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:NSPOSIXErrorDomain], v16, (v17 & 1) == 0))
        {
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            token.val[0] = 67109378;
            token.val[1] = pid;
            LOWORD(token.val[2]) = 2112;
            *(&token.val[2] + 2) = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SecTaskCopyValueForEntitlement failed for pid:%d: %@", &token, 0x12u);
            _MBLog(@"E ", "SecTaskCopyValueForEntitlement failed for pid:%d: %@", pid, v15);
          }
        }

        if (a3)
        {
          v19 = v15;
          *a3 = v15;
        }
      }

      v13 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      token.val[0] = 67109120;
      token.val[1] = pid;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken failed for pid:%d", &token, 8u);
      _MBLog(@"E ", "SecTaskCreateWithAuditToken failed for pid:%d", pid);
    }

    if (a3)
    {
      [MBError errorWithCode:1 format:@"SecTaskCreateWithAuditToken failed"];
      *a3 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

void sub_100156C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100156CCC()
{
  if (qword_100421850 != -1)
  {
    dispatch_once(&qword_100421850, &stru_1003BFE88);
  }

  v1 = qword_100421848;

  return v1;
}

void sub_100156D20(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isBackupOnCellularEnabled];
  if ([*(a1 + 32) isPrimaryAccount])
  {
    v2 = *(*(*(a1 + 40) + 8) + 24);
    v3 = +[MBNotificationCenter sharedNotificationCenter];
    v5 = v3;
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    [v3 setState:v4 forNotification:@"com.apple.private.restrict-post.MobileBackup.BackupOverCellularEnabledState"];
  }
}

void sub_100157010(id *a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543618;
    v11 = @"EnableBackupOnCellular";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Setting %{public}@ to: %{public}@", @"EnableBackupOnCellular", a1[4]);
  }

  v4 = [a1[5] persona];
  [v4 setPreferencesValue:a1[4] forKey:@"EnableBackupOnCellular"];

  if ([a1[5] isPrimaryAccount])
  {
    v5 = [a1[4] BOOLValue];
    v6 = +[MBNotificationCenter sharedNotificationCenter];
    v7 = v6;
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    [v6 setState:v8 forNotification:@"com.apple.private.restrict-post.MobileBackup.BackupOverCellularEnabledState"];
  }

  v9 = [a1[6] scheduler];
  [v9 accountChanged];
}

id sub_10015BA00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MBError sanitizedError:a2];
    [*(a1 + 32) setReplyError:v3];
  }

  v4 = *(a1 + 32);

  return [v4 sendReply];
}

id sub_10015BBA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MBError sanitizedError:a2];
    [*(a1 + 32) setReplyError:v3];
  }

  v4 = *(a1 + 32);

  return [v4 sendReply];
}

id sub_10015BCA0(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _checkForBackupCtlPrivileged:*(a1 + 40) description:@"BGST schedule" error:a2])
  {
    v4 = [*(a1 + 40) arguments];
    v5 = +[_TtC7backupd19MBActivityScheduler sharedInstance];
    v6 = [v5 controlWithArguments:v4 error:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10015BDE4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _checkForBackupCtlPrivileged:*(a1 + 40) description:@"restore domain" error:a3])
  {
    v6 = [*(a1 + 40) connection];
    v7 = [*(a1 + 40) arguments];
    v8 = [v7 objectAtIndexedSubscript:0];
    v17 = [v7 objectAtIndexedSubscript:1];
    v9 = [v7 objectAtIndexedSubscript:2];
    v10 = [v7 objectAtIndexedSubscript:3];
    v11 = [v7 objectAtIndexedSubscript:4];
    v18 = v5;
    v12 = [v11 BOOLValue];

    v13 = +[MBTapToRadar sharedInstance];
    [v13 setAutoAccept:1];
    v14 = v12;
    v5 = v18;
    v15 = [NSNumber numberWithBool:[_TtC7backupd22MBRestoreDomainCommand restoreWithDomain:v8 rootPath:v10 snapshotUUID:v9 deviceUUID:v17 verified:v14 account:v18 connection:v6 error:a3]];
    [v13 setAutoAccept:0];
  }

  else
  {
    v15 = &__kCFBooleanFalse;
  }

  return v15;
}

id sub_10015EC78(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10015ECAC(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[MBDaemon sharedDaemon];
    [v3 releaseWorkAssertion:a1[6]];

    v4 = objc_opt_self();
    objc_autoreleasePoolPop(v2);
    dispatch_block_cancel(*(*(a1[5] + 8) + 40));
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_10015F3B4(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  v4 = [[MBMessage alloc] initWithName:@"kMBMessageDidSetBackupEnabled" arguments:v3];
  [*(a1 + 32) _sendMessage:v4 connections:*(*(a1 + 32) + 16)];
}

void sub_10015F570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v14 = v2;
    v4 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v6 = v4;
  LODWORD(v5) = *(a1 + 72);
  v7 = [NSNumber numberWithFloat:v5];
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56), v7];
  v13[1] = v8;
  v9 = [NSNumber numberWithLongLong:*(a1 + 64)];
  v10 = *(a1 + 48);
  v13[2] = v9;
  v13[3] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:4];
  v12 = [MBMessage messageWithName:@"kMBMessageDidUpdateProgress" arguments:v11];

  [*(a1 + 40) _sendMessage:v12 connections:v6];
}

void sub_10015F780(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v5 = v4;
  v6 = [MBMessage messageWithName:@"kMBMessageDidUpdateBackgroundRestoreProgress" arguments:0];
  [*(a1 + 40) _sendMessage:v6 connections:v5];
}