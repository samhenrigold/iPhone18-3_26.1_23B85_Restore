int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(AudioAccessoryAssetManagementXPCService);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100001A94(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (!*(*(a1 + 32) + 88))
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v3 = v11;
  }

  v7 = [NSLocale localeWithLocaleIdentifier:v3];
  if (([*(*(a1 + 32) + 88) containsObject:v7] & 1) == 0)
  {
    *(*(a1 + 32) + 8) = 0;
    [*(*(a1 + 32) + 88) addObject:v7];
    [*(a1 + 32) _updateRequestedLocale:v7 withDownloadStatus:0];
    v8 = +[NSLocale currentLocale];
    v9 = [v7 languageCode];
    v10 = [v8 localizedStringForLanguageCode:v9];

    if (v10)
    {
      if (([*(*(a1 + 32) + 104) containsObject:v10] & 1) == 0)
      {
        [*(a1 + 40) addObject:v10];
      }
    }

    else if (dword_100010D38 <= 90 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_100004320(v11);
    }
  }
}

void sub_100001D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001DB4(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001EA8;
  v7[3] = &unk_10000C358;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 enumerateObjectsUsingBlock:v7];
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_100004360(a1 + 48);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, *(*(*(a1 + 48) + 8) + 24), v6);
}

void sub_100001EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 locale];
  v6 = [v5 localeIdentifier];
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_1000043AC(v7);
    }

    *(*(*(a1 + 40) + 8) + 24) += [v7 downloadSize];
  }
}

void sub_100002068(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000021B0;
  v10 = sub_1000021C0;
  v11 = objc_alloc_init(NSMutableArray);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000021C8;
  v5[3] = &unk_10000C358;
  v5[4] = *(a1 + 32);
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];
  [v7[5] sortUsingComparator:&stru_10000C3C0];
  v4 = [*(*(a1 + 32) + 184) remoteObjectProxy];
  [v4 getTranslationAssets:v7[5] error:0];

  _Block_object_dispose(&v6, 8);
}

void sub_100002198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000021B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000021C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = objc_alloc_init(AMTranslationAssetInfo);
  v4 = [v3 locale];
  v5 = [v4 localeIdentifier];
  v6 = [NSLocale lt_localeWithLTIdentifier:v5];

  v7 = +[NSLocale currentLocale];
  v8 = [v6 lt_displayNameForContext:0 inTargetLocale:v7];
  [v15 setDisplayName:v8];

  v9 = [v3 locale];
  [v15 setLocale:v9];

  v10 = *(a1 + 32);
  v11 = [v3 locale];
  v12 = [v11 localeIdentifier];
  [v15 setIsSuggested:{objc_msgSend(v10, "_isLanguageSuggested:", v12)}];

  v13 = [v3 status];
  v14 = 0x10302u >> (8 * v13);
  if (v13 >= 3)
  {
    LOBYTE(v14) = 0;
  }

  [v15 setAssetStatus:v14 & 3];
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_10000444C(v15);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
}

int64_t sub_100002394(id a1, AMTranslationAssetInfo *a2, AMTranslationAssetInfo *a3)
{
  v4 = a3;
  v5 = [(AMTranslationAssetInfo *)a2 displayName];
  v6 = [(AMTranslationAssetInfo *)v4 displayName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

void sub_1000026B8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100002980;
  v21[3] = &unk_10000C410;
  v3 = *(a1 + 32);
  v21[4] = *(a1 + 40);
  v23 = &v24;
  v4 = v2;
  v22 = v4;
  [v3 enumerateObjectsUsingBlock:v21];
  v5 = [*(a1 + 40) _averageOfArray:v4];
  v6 = *(a1 + 40);
  if ((v6[24] & 1) == 0)
  {
    v7 = [v5 integerValue];
    v6 = *(a1 + 40);
    if (v7 >= 1 && (v6[8] & 1) == 0)
    {
      [v6 _submitBackgroundTask];
      *(*(a1 + 40) + 24) = 1;
      v6 = *(a1 + 40);
    }
  }

  if ([v6 _requestedAssetsDownloaded])
  {
    if (*(*(a1 + 40) + 144) == 1 && dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection _monitorAssetsDownloadProgressWithObservations:completion:]_block_invoke", 30, "Showing download complete is disabled");
    }

    v12 = *(a1 + 40);
    if (v12[14])
    {
      v13 = [NSNumber numberWithInteger:100];
      v15 = v25[3];
      if (!v15)
      {
        v15 = 100;
      }

      *&v14 = v15;
      v16 = [NSNumber numberWithFloat:v14];
      [v12 _showProgressBanner:v13 totalCount:v16];

      *(*(a1 + 40) + 129) = 0;
      *(*(a1 + 40) + 24) = 0;
      v17 = *(a1 + 40);
      v18 = *(v17 + 104);
      *(v17 + 104) = 0;

      v19 = *(a1 + 40);
      v20 = *(v19 + 88);
      *(v19 + 88) = 0;

      [*(*(a1 + 40) + 112) setTaskCompletedWithSuccess:1];
      (*(*(a1 + 48) + 16))();
    }
  }

  else if ([v5 integerValue] >= 1)
  {
    v9 = *(a1 + 40);
    v10 = v25[3];
    if (!v10)
    {
      v10 = 100;
    }

    *&v8 = v10;
    v11 = [NSNumber numberWithFloat:v8];
    [v9 _showProgressBanner:v5 totalCount:v11];
  }

  _Block_object_dispose(&v24, 8);
}

void sub_100002964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002980(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1[4] + 88);
  if (v5)
  {
    v15 = v3;
    v6 = [v3 locale];
    v7 = [v5 containsObject:v6];

    v4 = v15;
    if (v7)
    {
      if (dword_100010D38 <= 30)
      {
        if (dword_100010D38 != -1 || (v8 = _LogCategory_Initialize(), v4 = v15, v8))
        {
          sub_100004540(v4);
          v4 = v15;
        }
      }

      *(*(a1[6] + 8) + 24) += [v4 downloadSize];
      v9 = [v15 status] == 2;
      v10 = a1[4];
      v11 = [v15 locale];
      [v10 _updateRequestedLocale:v11 withDownloadStatus:v9];

      v12 = a1[5];
      [v15 progress];
      v13 = [NSNumber numberWithDouble:?];
      [v12 addObject:v13];

      v4 = v15;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100002BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_1000045F4(v3);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (dword_100010D38 <= 30)
    {
      if (dword_100010D38 != -1 || (isKindOfClass = _LogCategory_Initialize(), isKindOfClass))
      {
        sub_100004650(isKindOfClass, v5, v6);
      }
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 176);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002E98;
    block[3] = &unk_10000C438;
    block[4] = v7;
    v25 = v3;
    v26 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002F34;
  v17[3] = &unk_10000C488;
  objc_copyWeak(&v20, &from);
  v17[4] = *(a1 + 32);
  objc_copyWeak(&v21, &location);
  v9 = v3;
  v18 = v9;
  v19 = *(a1 + 40);
  [v9 setExpirationHandler:v17];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 176);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000031A4;
  v14[3] = &unk_10000C438;
  v14[4] = v11;
  v15 = v9;
  v16 = v10;
  v13 = v9;
  dispatch_async(v12, v14);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_100002E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, id a27)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_100002E98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  *(*(a1 + 32) + 24) = 0;
  [*(a1 + 40) setTaskCompletedWithSuccess:0];
  v4 = *(a1 + 48);
  v5 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "Invalid task type");
  (*(v4 + 16))(v4, v5);
}

void sub_100002F34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained dispatchQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100003020;
    v5[3] = &unk_10000C460;
    v5[4] = *(a1 + 32);
    objc_copyWeak(&v8, (a1 + 64));
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v8);
  }
}

void sub_100003020(uint64_t a1)
{
  *(*(a1 + 32) + 129) = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [*(a1 + 32) _getAAAssetManagementFBundle];
    v4 = CULocalizedStringEx();
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v7 = CULocalizedStringEx();
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [v14 updateTitle:*(*(a1 + 32) + 32) withReason:*(*(a1 + 32) + 40)];
    *(*(a1 + 32) + 24) = 0;
    v10 = *(a1 + 32);
    v11 = *(v10 + 104);
    *(v10 + 104) = 0;

    [_LTTranslator removeLanguages:*(*(a1 + 32) + 88)];
    if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_10000466C(a1);
    }

    [v14 setTaskCompletedWithSuccess:0];
    v12 = *(a1 + 48);
    v13 = NSErrorF(NSOSStatusErrorDomain, 4294960574, "Task was asked to expire");
    (*(v12 + 16))(v12, v13);

    WeakRetained = v14;
  }
}

id sub_1000031A4(uint64_t a1)
{
  v2 = (a1 + 32);
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  *(*v2 + 129) = 1;
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_1000046CC(v2);
  }

  result = [*v2 _requestedAssetsDownloaded];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;

    [*(*(a1 + 32) + 112) setTaskCompletedWithSuccess:1];
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }

  return result;
}

void sub_100003344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000335C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:a2];
  v7 = [v6 integerValue];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_10000359C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 152))
  {
    v8 = v5;
    if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_100004758(v3, v8);
    }

    if (v3 != 5 && v3 != 2)
    {
      v5 = v8;
      if (v3 != 1)
      {
        goto LABEL_10;
      }

      v6 = +[LSApplicationWorkspace defaultWorkspace];
      v7 = [NSURL URLWithString:@"translate://?src=PT-liveTranslation"];
      [v6 openSensitiveURL:v7 withOptions:0];
    }

    [*(a1 + 40) _invalidateAssetManagementNotification];
    v5 = v8;
  }

LABEL_10:
}

id sub_1000038E4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100010D38 <= 30)
  {
    if (dword_100010D38 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1000047F8(a1, a2, a3);
    }
  }

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];

  return [v4 _postProgressUpdate:v5 totalCount:v6];
}

void sub_1000040BC(void *a1)
{
  v1 = [a1 serviceName];
  v2 = v1;
  v3 = @"nil";
  if (v1)
  {
    v3 = v1;
  }

  LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementXPCService listener:shouldAcceptNewConnection:]", 30, "XPC connection started: %@", v3);
}

void sub_100004124(void *a1)
{
  v4 = [a1 xpcCnx];
  v1 = [v4 serviceName];
  v2 = v1;
  v3 = @"nil";
  if (v1)
  {
    v3 = v1;
  }

  LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementXPCService _xpcConnectionInvalidated:]", 20, "XPC connection ended: %@", v3);
}

uint64_t sub_1000042C0(uint64_t a1, void *a2, const __CFString **a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v3 = @"nil";
  }

  return LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection downloadTranslationAssets:localeIdentifiers:useCellular:showDownloadCompleteNotification:bundleIdentifier:completion:]", 30, "AudioAccessoryAssetManagementClientXPCConnection downloadTranslationAssets %@ downloadRequestedLanguages %@ for _bundleIdentifier: %@", *(a1 + 88), *a2, v3);
}

void sub_1000043AC(void *a1)
{
  v3 = [a1 locale];
  v2 = [v3 localeIdentifier];
  LogPrintF(&dword_100010D38, "-[AudioAccessoryAssetManagementClientXPCConnection getTranslationAssetsDownloadSize:localeIdentifiers:completion:]_block_invoke_2", 30, "getTranslationAssetsDownloadSize succeeded assetsDownloadSize locale: %@ size: %lu", v2, [a1 downloadSize]);
}

void sub_10000444C(void *a1)
{
  v2 = [a1 assetStatus];
  if (v2 > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = (&off_10000C548)[v2];
  }

  v8 = [a1 displayName];
  v4 = [a1 isSuggested];
  v5 = [a1 locale];
  v6 = [a1 locale];
  v7 = [v6 localeIdentifier];
  LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection getTranslationAssets:]_block_invoke", 30, "getTranslationAssetsWithCompletion succeeded: AMTranslationAssetInfo: assetStatus %s, displayName %@, isSuggested %d locale %@ localeIdentifier %@\n", v3, v8, v4, v5, v7);
}

void sub_100004540(void *a1)
{
  v5 = [a1 locale];
  v2 = [v5 description];
  v3 = [a1 status];
  [a1 progress];
  LogPrintF(&dword_100010D38, "-[AudioAccessoryAssetManagementClientXPCConnection _monitorAssetsDownloadProgressWithObservations:completion:]_block_invoke_2", 30, "Locale %@ status %d Progress %f assetsDownloadSize %lu", v2, v3, v4, [a1 downloadSize]);
}

void sub_1000045F4(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection _registerLaunchHandlerWithCompletion:]_block_invoke", 30, "_registerLaunchHandler task %@", v1);
}

void sub_10000466C(uint64_t a1)
{
  v1 = [*(a1 + 40) identifier];
  LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection _registerLaunchHandlerWithCompletion:]_block_invoke_4", 30, "Task was asked to expire taskidentifier %@", v1);
}

uint64_t sub_100004758(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_10000C568)[a1];
  }

  return LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection _showAssetManagementNotification]_block_invoke", 30, "AssetManagementUserNotificationBundle UINotificationSession action: %s, %{error}", v4, a2, v2, v3);
}

void sub_1000048E4(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&dword_100010D38, "[AudioAccessoryAssetManagementClientXPCConnection _submitBackgroundTask]", 90, "Failed to submit background task request: %{public}@", v1);
}