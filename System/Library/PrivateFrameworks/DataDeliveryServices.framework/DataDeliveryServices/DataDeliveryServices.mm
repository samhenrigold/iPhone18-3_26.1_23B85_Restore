id DefaultLog(uint64_t a1)
{
  if (DefaultLog_onceToken != -1)
  {
    DefaultLog_cold_1();
  }

  v2 = DefaultLog_logFacility;

  return v2;
}

uint64_t __DefaultLog_block_invoke()
{
  DefaultLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id QueryLog(uint64_t a1)
{
  if (QueryLog_onceToken != -1)
  {
    QueryLog_cold_1();
  }

  v2 = QueryLog_logFacility;

  return v2;
}

BOOL DDS_LOG_REDACTED(uint64_t a1)
{
  v1 = DefaultLog(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = QueryLog(v2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = UpdateLog(v5);
      v3 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    }
  }

  return v3;
}

id UpdateLog(uint64_t a1)
{
  if (UpdateLog_onceToken != -1)
  {
    UpdateLog_cold_1();
  }

  v2 = UpdateLog_logFacility;

  return v2;
}

void sub_1DF7C7FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF7C8B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF7CA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7CABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t DDS_IS_INTERNAL_INSTALL(uint64_t a1, uint64_t a2)
{
  if (DDS_IS_INTERNAL_INSTALL_once_token != -1)
  {
    DDS_IS_INTERNAL_INSTALL_cold_1();
  }

  return DDS_IS_INTERNAL_INSTALL_is_internal_install;
}

id DDS_BUILD_VERSION_STRING(uint64_t a1)
{
  if (DDS_BUILD_VERSION_STRING_onceToken != -1)
  {
    DDS_BUILD_VERSION_STRING_cold_1();
  }

  v2 = DDS_BUILD_VERSION_STRING_build;

  return v2;
}

id DDS_STRING_FROM_DATE(void *a1)
{
  v1 = DDS_STRING_FROM_DATE_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    DDS_STRING_FROM_DATE_cold_1();
  }

  v3 = [DDS_STRING_FROM_DATE_formatter stringFromDate:v2];

  return v3;
}

uint64_t DDSObjectsAreEqualOrNil(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id DDSAssetDownloadUIError(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      v1 = MEMORY[0x1E696ABC0];
      v2 = &unk_1F5AC5990;
      v3 = 1;
    }

    else
    {
      v1 = MEMORY[0x1E696ABC0];
      v2 = &unk_1F5AC5968;
      v3 = 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v1 = MEMORY[0x1E696ABC0];
        v2 = &unk_1F5AC59B8;
        v3 = 2;
        break;
      case 3:
        v1 = MEMORY[0x1E696ABC0];
        v2 = &unk_1F5AC59E0;
        v3 = 3;
        break;
      case 4:
        v1 = MEMORY[0x1E696ABC0];
        v2 = &unk_1F5AC5A08;
        v3 = 4;
        break;
      default:
        goto LABEL_13;
    }
  }

  a1 = [v1 errorWithDomain:@"DDSAssetDownloadUIErrorDomain" code:v3 userInfo:v2];
LABEL_13:

  return a1;
}

void *DDSReadCompatabilityVersionFromFile(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [@"/System/Library/LinguisticData" stringByAppendingPathComponent:v1];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v2 options:1 error:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
  v8 = [v7 objectForKey:@"MobileAssetProperties"];
  v9 = [v8 objectForKey:@"_CompatibilityVersion"];

  if (v9)
  {
    v6 = [v9 integerValue];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_6:
  v10 = DefaultLog(v5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = v6;
    v14 = 2112;
    v15 = v1;
    _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Supported compatibility version = %ld in file: %@", &v12, 0x16u);
  }

  return v6;
}

id DDSReadSupportedPriorityAssetSpecifiersFromFile(void *a1)
{
  v1 = MEMORY[0x1E695DFA8];
  v2 = a1;
  v3 = [v1 set];
  v4 = [@"/System/Library/LinguisticData" stringByAppendingPathComponent:v2];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4 options:1 error:0];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
      v9 = [v8 objectForKey:@"MobileAssetProperties"];
      v10 = [v9 objectForKey:@"PriorityAssetSpecifiers"];
      if (v10)
      {
        [v3 addObjectsFromArray:v10];
      }
    }
  }

  return v3;
}

void sub_1DF7CC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7CCCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *assetUUIDWithLocalURL(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] < 2)
  {
    v2 = &stru_1F5ABCB80;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
  }

  return v2;
}

__CFString *uniqueIdentifierWithAttributes(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKey:@"LinguisticAssetType"];
  if (v2 || ([v1 objectForKey:@"AssetType"], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [&stru_1F5ABCB80 stringByAppendingString:v2];
  }

  else
  {
    v4 = &stru_1F5ABCB80;
  }

  v5 = [v1 objectForKey:@"AssetLocale"];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v4];

    v4 = v6;
  }

  v7 = [v1 objectForKey:@"AssetRegion"];
  if (v7)
  {
    v18 = v5;
    v19 = v1;
    v8 = [MEMORY[0x1E696AD60] string];
    [v8 appendString:@"{ "];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v7 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v7 objectForKeyedSubscript:v14];
          [v8 appendFormat:@"%@ : %@, ", v14, v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v8 appendString:@"}"];
    v16 = [(__CFString *)v4 stringByAppendingFormat:@"-%@", v8];

    v4 = v16;
    v5 = v18;
    v1 = v19;
  }

  return v4;
}

__CFString *shortNameWithAttributes(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"LinguisticAssetType"];
  if (v2 || ([v1 objectForKey:@"AssetType"], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [&stru_1F5ABCB80 stringByAppendingString:v2];
  }

  else
  {
    v4 = &stru_1F5ABCB80;
  }

  v5 = [v1 objectForKey:@"AssetLocale"];
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFString *)v4 stringByAppendingFormat:@"-%@", v5];

    v4 = v7;
  }

  return v4;
}

void sub_1DF7D0FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const __CFString *DDSGetPreferenceIntForKey(const __CFString *result)
{
  if (result)
  {
    return CFPreferencesGetAppIntegerValue(result, @"com.apple.DataDeliveryServices", 0);
  }

  return result;
}

__CFString *DDSGetPreferenceObjectForKey(__CFString *a1)
{
  if (a1)
  {
    a1 = CFPreferencesCopyAppValue(a1, @"com.apple.DataDeliveryServices");
    v1 = vars8;
  }

  return a1;
}

const __CFString *DDSSetPreferenceObjectForKey(const __CFString *result, const void *a2)
{
  if (result)
  {
    CFPreferencesSetAppValue(result, a2, @"com.apple.DataDeliveryServices");

    return CFPreferencesAppSynchronize(@"com.apple.DataDeliveryServices");
  }

  return result;
}

void sub_1DF7D209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7D2278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __QueryLog_block_invoke()
{
  QueryLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "Query");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __UpdateLog_block_invoke()
{
  UpdateLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "Update");

  return MEMORY[0x1EEE66BB8]();
}

id AutoAssetLog(uint64_t a1)
{
  if (AutoAssetLog_onceToken != -1)
  {
    AutoAssetLog_cold_1();
  }

  v2 = AutoAssetLog_logFacility;

  return v2;
}

uint64_t __AutoAssetLog_block_invoke()
{
  AutoAssetLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "AutoAsset");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF7D74A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void assetUpdatedNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = DefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "User info in callback: %@", buf, 0xCu);
  }

  v9 = a3;
  v10 = [v9 stringByReplacingOccurrencesOfString:@".dds.assets-updated" withString:&stru_1F5ABCB80];
  v11 = v10;
  if (a2)
  {
    v12 = a2;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v12 autoAssetTypes];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v23 = v11;
      v16 = *v25;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [MEMORY[0x1E69B1900] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:{v18, v23}];
          if ([v19 isEqualToString:v9])
          {
            v11 = v18;

            goto LABEL_14;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v11 = v23;
    }

LABEL_14:

    v21 = DefaultLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_1DF7C6000, v21, OS_LOG_TYPE_DEFAULT, "Observed asset change notification: %@, type: %@", buf, 0x16u);
    }

    v22 = [v12 delegate];
    [v22 serverDidUpdateAssetsWithType:v11];
  }

  else
  {
    v12 = DefaultLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Unexpected nil AssetObserver in CFNotification callback", buf, 2u);
    }
  }
}

void sub_1DF7DB348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1DF7DE490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DE638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DF184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DF784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DFF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E04A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF7E05EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF7E1588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_1DF7E41C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E53CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E5C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E7D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E81C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}