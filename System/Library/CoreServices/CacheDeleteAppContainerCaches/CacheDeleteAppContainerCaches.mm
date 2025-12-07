uint64_t RegisterCacheDeleteAppFreezerService()
{
  if (RegisterCacheDeleteAppFreezerService_onceToken != -1)
  {
    dispatch_once(&RegisterCacheDeleteAppFreezerService_onceToken, &__block_literal_global);
  }

  return _CacheDeleteRegisterInfoCallbacks(@"com.apple.mobile.cache_delete_app_freezer", &__block_literal_global_11, &__block_literal_global_26, 0, &__block_literal_global_30);
}

void maybeReenableAppFreezer()
{
  if (isAppFreezerEnabled())
  {
    return;
  }

  v8 = 0;
  v0 = objc_alloc_init(NSUserDefaults);
  if (fsctl("/private/var", 0x40046818uLL, &v8, 0))
  {
    v1 = *__error();
    v2 = CDGetLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = strerror(v1);
      *buf = 136315394;
      v10 = "/private/var";
      v11 = 2080;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to determine the state of volume %s: %s", buf, 0x16u);
    }

LABEL_5:

    setAppFreezeEnabled(1);
    return;
  }

  v3 = v8 & 0x2204;
  if (v0)
  {
    v4 = [v0 BOOLForKey:@"AppFreezerDisabledByCDKey"];
    if (v3)
    {
LABEL_14:
      if (!v3)
      {
        v2 = CDGetLogHandle();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SHOULD reenable app freezer as freezer was disabled by CD", buf, 2u);
        }

        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    if ((v8 & 0x2204) != 0)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    goto LABEL_14;
  }

  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SHOULD not reenable app freezer as freezer was not disabled by CD", buf, 2u);
  }

LABEL_15:
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SHOULD NOT reenable app freezer", buf, 2u);
  }
}

void sub_1000013D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __RegisterCacheDeleteAppFreezerService_block_invoke_19(uint64_t a1)
{
  result = isAppFreezerEnabled();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = [NSNumber numberWithUnsignedLongLong:sizeOfFreezeFiles()];

    return _objc_release_x1();
  }

  return result;
}

BOOL isAppFreezerEnabled()
{
  v7 = 0;
  v6 = 4;
  if (sysctlbyname("vm.freeze_enabled", &v7, &v6, 0, 0))
  {
    v0 = *__error();
    v1 = CDGetLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = strerror(v0);
      *buf = 136315138;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to determine freezer state: %s", buf, 0xCu);
    }

    v7 = 0;
LABEL_5:
    v2 = CDGetLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "App freezer NOT enabled";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "App freezer enabled";
    goto LABEL_10;
  }

LABEL_11:

  return v7 != 0;
}

uint64_t sizeOfFreezeFiles()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  traverse_directory();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1000016B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RegisterCacheDeleteAppFreezerService_block_invoke_3_27(uint64_t a1)
{
  if (isAppFreezerEnabled())
  {
    *(*(*(a1 + 32) + 8) + 24) = sizeOfFreezeFiles();

    setAppFreezeEnabled(0);
  }
}

void setAppFreezeEnabled(int a1)
{
  HIDWORD(v10) = a1;
  v2 = objc_alloc_init(NSUserDefaults);
  LODWORD(v10) = 0;
  v9 = 4;
  v3 = CDGetLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "Enabling app freezer";
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "Disabling app freezer";
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
LABEL_7:

  if (sysctlbyname("vm.freeze_enabled", &v10, &v9, &v10 + 4, 4uLL))
  {
    v6 = *__error();
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = strerror(v6);
      *buf = 136315138;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to disable app freezing: %s", buf, 0xCu);
    }
  }

  else if (v2)
  {
    [v2 setBool:a1 ^ 1u forKey:{@"AppFreezerDisabledByCDKey", v9, v10}];
  }
}

uint64_t __sizeOfFreezeFiles_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = strlen(v6);
  if (!strncmp(a2, v6, v7))
  {
    *(*(*(a1 + 32) + 8) + 24) += *(a3 + 8);
  }

  return 1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  RegisterCacheManagementAssetsService();
  RegisterCacheDeleteAppFreezerService();
  objc_autoreleasePoolPop(v3);
  dispatch_main();
}

void sub_100002260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void RegisterCacheManagementAssetsService()
{
  if (RegisterCacheManagementAssetsService_once != -1)
  {
    dispatch_once(&RegisterCacheManagementAssetsService_once, &__block_literal_global_114);
  }

  v1 = @"CACHE_DELETE_REQUIRED_ENTITLEMENTS";
  v2 = &off_10000CE10;
  v0 = [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  CacheDeleteRegisterCallback();
}

void __RegisterCacheManagementAssetsService_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v1 = qword_100010618;
    qword_100010618 = 0;
  }

  else
  {
    if (*(a1 + 32))
    {
      v2 = qword_100010618 == 0;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      qword_100010618 = [CacheDeleteManagedAssets cacheDeleteManagedAssetsWithInfo:"cacheDeleteManagedAssetsWithInfo:atUrgency:" atUrgency:?];

      _objc_release_x1();
    }

    else if (qword_100010618 && *(a1 + 45) == 1)
    {
      v3 = qword_100010618;

      [v3 cancelPurge];
    }
  }
}

void *__RegisterCacheManagementAssetsService_block_invoke_4(uint64_t a1, void *a2)
{
  v70 = +[NSMutableDictionary dictionary];
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_OPERATIONS"];
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v92 = v4;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "com.apple.mobile.cache_delete_managed_assets Callback ENTRY, info: %@", buf, 0xCu);
  }

  v65 = v4;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v8)
  {
    v9 = v8;
    v71 = *v79;
    v68 = v7;
    v67 = a1;
    do
    {
      v10 = 0;
      v69 = v9;
      do
      {
        if (*v79 != v71)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v78 + 1) + 8 * v10);
        v12 = [v7 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v72 = [TestTelemetry testTelemetryWithInfo:v12];
          v13 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_URGENCY"];
          [v13 integerValue];

          v14 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
          v15 = evaluateStringProperty();
          v16 = [CacheDeleteVolume volumeWithPath:v15];

          v17 = CDGetLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v16 mountPoint];
            *buf = 67109378;
            *v92 = 496;
            *&v92[4] = 2112;
            *&v92[6] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%d CacheManagmentAssets volume: %@", buf, 0x12u);
          }

          if ([v11 isEqualToString:@"CACHE_DELETE_PURGE_OPERATION"])
          {
            v19 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
            v20 = evaluateNumberProperty();

            v21 = [v16 mountPoint];
            if (hasUserVolume())
            {
              v22 = "/private/var/mobile";
            }

            else
            {
              v22 = "/private/var";
            }

            v23 = [NSString stringWithUTF8String:v22];
            if ([v21 isEqualToString:v23] && v20)
            {
              v24 = [v20 longLongValue];

              if (v24 >= 1)
              {
                v25 = (*(*(v67 + 32) + 16))();
                if (v25)
                {
                  v26 = [v25 purgeAssets:objc_msgSend(v20 testObject:{"unsignedLongLongValue"), v72}];
                  v27 = (*(*(v67 + 32) + 16))();
                  v89[0] = @"CACHE_DELETE_AMOUNT";
                  v28 = [NSNumber numberWithLongLong:v26];
                  v89[1] = @"CACHE_DELETE_VOLUME";
                  v90[0] = v28;
                  v29 = [v25 volume];
                  v90[1] = v29;
                  v30 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];

                  goto LABEL_43;
                }

                v30 = &off_10000CE50;
                v7 = v68;
LABEL_44:

                [v70 setObject:v30 forKeyedSubscript:@"CACHE_DELETE_PURGE_OPERATION"];
LABEL_61:

                v9 = v69;
                goto LABEL_62;
              }
            }

            else
            {
            }

            v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Amount doesn't make sense: %lld", [v20 longLongValue], v65);
            v87 = @"CACHE_DELETE_ERROR";
            v88 = v25;
            v30 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
LABEL_43:
            v7 = v68;
            goto LABEL_44;
          }

          if ([v11 isEqualToString:@"CACHE_DELETE_PURGEABLE_OPERATION"])
          {
            v32 = [v16 mountPoint];
            if (hasUserVolume())
            {
              v33 = "/private/var/mobile";
            }

            else
            {
              v33 = "/private/var";
            }

            v34 = [NSString stringWithUTF8String:v33];
            v35 = [v32 isEqualToString:v34];

            if (v35)
            {
              v36 = (*(*(v67 + 32) + 16))();
              if (v36)
              {
                v77 = 0;
                v66 = v36;
                v37 = [v36 sizeEligibleAsset:&v77];
                v38 = (*(*(v67 + 32) + 16))();
                v39 = CDGetLogHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "purgeableAssets:", buf, 2u);
                }

                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v40 = v37;
                v41 = [v40 countByEnumeratingWithState:&v73 objects:v86 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v74;
                  do
                  {
                    for (i = 0; i != v42; i = i + 1)
                    {
                      if (*v74 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v73 + 1) + 8 * i);
                      v46 = CDGetLogHandle();
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *v92 = v45;
                        _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }

                    v42 = [v40 countByEnumeratingWithState:&v73 objects:v86 count:16];
                  }

                  while (v42);
                }

                v84[0] = @"CACHE_DELETE_AMOUNT";
                v47 = [NSNumber numberWithLongLong:v77];
                v84[1] = @"CACHE_DELETE_VOLUME";
                v85[0] = v47;
                v48 = [v66 volume];
                v85[1] = v48;
                v49 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];

                v50 = v66;
              }

              else
              {
                v50 = 0;
                v49 = &off_10000CE78;
              }
            }

            else
            {
              v52 = CDGetLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
                *buf = 67109378;
                *v92 = 544;
                *&v92[4] = 2112;
                *&v92[6] = v53;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%d CacheManagementAssets Purgeable skipping volume: %@", buf, 0x12u);
              }

              v82[0] = @"CACHE_DELETE_AMOUNT";
              v82[1] = @"CACHE_DELETE_VOLUME";
              v83[0] = &off_10000CD98;
              v50 = [v12 objectForKeyedSubscript:?];
              v83[1] = v50;
              v49 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
            }

            [v70 setObject:v49 forKeyedSubscript:@"CACHE_DELETE_PURGEABLE_OPERATION"];
          }

          else
          {
            if ([v11 isEqualToString:@"CACHE_DELETE_PURGE_CANCEL_OPERATION"])
            {
              v51 = (*(*(v67 + 32) + 16))();
              goto LABEL_61;
            }

            if (![v11 isEqualToString:@"CACHE_DELETE_PERIODIC_OPERATION"])
            {
              if ([v11 isEqualToString:@"CACHE_DELETE_ANALYTICS_REPORT"])
              {
                v58 = objc_alloc_init(NSMutableDictionary);
                for (j = 1; j != 5; ++j)
                {
                  v60 = (*(*(v67 + 32) + 16))();
                  v61 = [v60 analytics];
                  [v58 addEntriesFromDictionary:v61];

                  v62 = (*(*(v67 + 32) + 16))();
                }

                [v70 setObject:v58 forKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];

                v7 = v68;
              }

              goto LABEL_61;
            }

            v54 = (*(*(v67 + 32) + 16))();
            v55 = v54;
            if (v54)
            {
              [v54 periodic:v72];
              v56 = (*(*(v67 + 32) + 16))();
              v57 = 0;
            }

            else
            {
              v57 = &off_10000CEA0;
            }

            [v70 setObject:v57 forKeyedSubscript:@"CACHE_DELETE_PERIODIC_OPERATION"];
          }

          v7 = v68;
          goto LABEL_61;
        }

        v31 = CDGetLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v92 = v12;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "operation info is not a dictionary: %@", buf, 0xCu);
        }

        [v70 setObject:&off_10000CE28 forKeyedSubscript:@"CACHE_DELETE_SERVICE_REQUEST_OPERATION"];
LABEL_62:

        v10 = v10 + 1;
      }

      while (v10 != v9);
      v63 = [v7 countByEnumeratingWithState:&v78 objects:v93 count:16];
      v9 = v63;
    }

    while (v63);
  }

  return v70;
}