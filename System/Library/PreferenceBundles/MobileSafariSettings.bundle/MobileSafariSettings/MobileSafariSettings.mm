void sub_4E60(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_6544(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_66B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_FF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 152));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDownloads(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXDownloads_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDownloads_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDownloads_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExtensions(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeychain(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXKeychain_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeychain_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeychain_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebsiteData(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXWebsiteData_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebsiteData_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebsiteData_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebExtensions(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXWebExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSafariProfiles(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXSafariProfiles_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSafariProfiles_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSafariProfiles_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXImport(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXImport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXImport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXImport_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExport(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXExport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExport_log;
}

void sub_14EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __blankImage_block_invoke(id a1)
{
  v4.width = 30.0;
  v4.height = 30.0;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = blankImage_image;
  blankImage_image = v1;

  UIGraphicsEndImageContext();
}

void sub_18238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_192A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SafariLibraryPath(uint64_t a1)
{
  if (SafariLibraryPath_onceToken != -1)
  {
    SafariLibraryPath_cold_1();
  }

  v2 = SafariLibraryPath_path;

  return v2;
}

id SafariNonContaineredLibraryPath(uint64_t a1)
{
  if (SafariNonContaineredLibraryPath_onceToken != -1)
  {
    SafariNonContaineredLibraryPath_cold_1();
  }

  v2 = SafariNonContaineredLibraryPath_path;

  return v2;
}

id SafariSettingsDirectoryPath()
{
  v0 = SafariSettingsDirectoryPath_path;
  if (!SafariSettingsDirectoryPath_path)
  {
    v1 = SafariLibraryPath(0);
    v2 = [v1 stringByAppendingPathComponent:@"Safari"];
    v3 = SafariSettingsDirectoryPath_path;
    SafariSettingsDirectoryPath_path = v2;

    v4 = +[NSFileManager defaultManager];
    [v4 _web_createDirectoryAtPathWithIntermediateDirectories:SafariSettingsDirectoryPath_path attributes:0];

    v0 = SafariSettingsDirectoryPath_path;
  }

  return v0;
}

id SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 isEqualToString:WBSDefaultProfileIdentifier])
  {
    v7 = +[NSFileManager defaultManager];
    v3 = [v7 safari_profileDirectoryURLWithID:v2 createIfNeeded:0];

    if (v3)
    {
      v6 = [v3 URLByAppendingPathComponent:@"FrequentlyVisitedSitesBannedURLStore.plist" isDirectory:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v3 = SafariSettingsDirectoryPath();
    v4 = [v3 stringByAppendingPathComponent:@"FrequentlyVisitedSitesBannedURLStore.plist"];
    v5 = [v4 stringByResolvingSymlinksInPath];
    v6 = [NSURL fileURLWithPath:v5];
  }

  return v6;
}

void sub_1FAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2025C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_26584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id localizedPrivacyButtonTitleForBundleIdentifier(uint64_t a1)
{
  v1 = [OBBundle bundleWithIdentifier:a1];
  v2 = [v1 privacyFlow];
  v3 = [v2 localizedButtonTitle];

  return v3;
}

void sub_29C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_2A088(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2A34C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t processIDForProcessNamed(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    goto LABEL_12;
  }

  v2 = [v1 UTF8String];
  *v10 = xmmword_7B610;
  v11 = 0;
  size = 0;
  v3 = sysctl(v10, 3u, 0, &size, 0, 0);
  if (!v3)
  {
    v4 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v5 = sysctl(v10, 3u, v4, &size, 0, 0);
    if (v5)
    {
      v3 = v5;
LABEL_5:
      free(v4);
      goto LABEL_13;
    }

    if (size >= 0x288)
    {
      v6 = size / 0x288;
      v7 = v4 + 243;
      do
      {
        v3 = *(v7 - 203);
        if (v3 >= 1 && !strncmp(v2, v7, 0x10uLL))
        {
          goto LABEL_5;
        }

        v7 += 648;
      }

      while (--v6);
    }

    free(v4);
LABEL_12:
    v3 = 0xFFFFFFFFLL;
  }

LABEL_13:

  return v3;
}

uint64_t isiPad(uint64_t a1, uint64_t a2)
{
  if (isiPad_onceToken != -1)
  {
    isiPad_cold_1();
  }

  return isiPad_isiPad;
}

void __isiPad_block_invoke(id a1)
{
  v1 = +[WBSDevice currentDevice];
  isiPad_isiPad = [v1 deviceClass] == 3;
}

void sub_36E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3725C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_37304(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_37BB8(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_3A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_3C0C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __bookmarkQueue_block_invoke(id a1)
{
  v6 = [NSString stringWithFormat:@"com.apple.Safari.SafariSettingsBrowsingDataImportController.bookmarkQueue"];
  v1 = v6;
  v2 = [v6 UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create(v2, v3);
  v5 = bookmarkQueue_queue;
  bookmarkQueue_queue = v4;
}

void openExtensionSettingsInMobileSafariForExtension(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = webExtensionsController();
  v15 = [v5 webExtensionForExtension:v4];

  v6 = [NSURLComponents alloc];
  v7 = [v15 optionsPageURL];
  v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:1];

  [v8 setScheme:WBSWebExtensionURLScheme];
  v9 = [v15 composedIdentifier];
  v10 = +[NSCharacterSet URLHostAllowedCharacterSet];
  v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];
  v12 = [NSString stringWithFormat:@"%@%@", v11, v3];

  [v8 setEncodedHost:v12];
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  v14 = [v8 URL];
  [v13 openSensitiveURL:v14 withOptions:0];
}

void sub_40B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id webExtensionsController()
{
  v0 = +[SafariSettingsController extensionsProfilesDataSource];
  v1 = [v0 profileServerIDToWebExtensionsControllers];
  v2 = [v1 objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v2;
}

void sub_4225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_42C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_479B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_483B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SafariSettingsLocalizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!SafariSettingsLocalizedString_bundle)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = SafariSettingsLocalizedString_bundle;
    SafariSettingsLocalizedString_bundle = v5;
  }

  v7 = [SafariSettingsLocalizedString_bundle localizedStringForKey:v3 value:@"localized string not found" table:v4];

  return v7;
}

void sub_4AD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4C14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_4E9BC()
{
  result = qword_A2318;
  if (!qword_A2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A2318);
  }

  return result;
}

uint64_t sub_4EA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2320, &qword_7B738);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = __chkstk_darwin(v3);
  v64 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v48 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2328, &qword_7B740);
  v51 = *(v60 - 8);
  v7 = v51;
  v8 = __chkstk_darwin(v60);
  v62 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v61 = &v48 - v11;
  v12 = __chkstk_darwin(v10);
  v54 = &v48 - v13;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2330, &qword_7B748);
  v63 = *(v55 - 8);
  v16 = __chkstk_darwin(v55);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  *(swift_allocObject() + 16) = a1;
  v21 = sub_55754();
  v22 = sub_51130(&qword_A2338, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v23 = a1;
  sub_55804();
  *(swift_allocObject() + 16) = v23;
  sub_51218(&qword_A2340, &qword_A2328, &qword_7B740, &protocol conformance descriptor for SettingsPane<A>);
  v24 = v23;
  v25 = v20;
  v49 = v20;
  v26 = v60;
  sub_557C4();
  v52 = *(v7 + 8);
  v53 = v7 + 8;
  v27 = v15;
  v52(v15, v26);
  *(swift_allocObject() + 16) = v24;
  v28 = v24;
  sub_55814();
  *(swift_allocObject() + 16) = v28;
  v29 = v28;
  v30 = v54;
  sub_55814();
  *(swift_allocObject() + 16) = v29;
  v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2348, &qword_7B760);
  v32 = sub_50DCC();
  v65 = v21;
  v66 = &type metadata for String;
  v67 = v22;
  v68 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v56;
  sub_55814();
  v34 = *(v63 + 16);
  v50 = v18;
  v35 = v55;
  v34(v18, v25, v55);
  v65 = v18;
  v36 = *(v51 + 16);
  v37 = v60;
  v38 = v61;
  v36(v61, v27, v60);
  v66 = v38;
  v39 = v62;
  v36(v62, v30, v37);
  v67 = v39;
  v41 = v57;
  v40 = v58;
  v42 = v64;
  (*(v57 + 16))(v64, v33, v58);
  v68 = v42;
  sub_50848(&v65, v59);
  v43 = *(v41 + 8);
  v43(v33, v40);
  v44 = v30;
  v45 = v52;
  v52(v44, v37);
  v45(v27, v37);
  v46 = *(v63 + 8);
  v46(v49, v35);
  v43(v64, v40);
  v45(v62, v37);
  v45(v61, v37);
  return (v46)(v50, v35);
}

uint64_t sub_4F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_55774();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_55644();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_55794();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_556D4();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2370, &qword_7B770);
  v3[25] = swift_task_alloc();
  v8 = sub_55694();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  sub_55914();
  v3[29] = sub_55904();
  v10 = sub_558F4();

  return _swift_task_switch(sub_4F3A0, v10, v9);
}

uint64_t sub_4F3A0()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];

  sub_557E4();
  sub_55664();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[19];
    sub_50E20(v0[25]);
    sub_557D4();
    sub_557F4();
    (*(v9 + 8))(v7, v8);
    goto LABEL_99;
  }

  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  sub_557D4();
  v0[2] = sub_55674();
  v0[3] = v10;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_50DCC();
  v11 = sub_55924();

  v12 = *(v11 + 16);
  if (!v12)
  {
    v99 = &_swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v13 = 0;
  v14 = -v12;
  v15 = v11 + 40;
  v99 = &_swiftEmptyArrayStorage;
LABEL_5:
  v16 = (v15 + 16 * v13++);
  while ((v13 - 1) < *(v11 + 16))
  {
    v17 = *(v16 - 1);
    v18 = *v16;
    v19 = HIBYTE(*v16) & 0xF;
    if ((*v16 & 0x2000000000000000) == 0)
    {
      v19 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = v17 == 0xD000000000000016 && 0x8000000000080A60 == v18;
      if (!v20 && (sub_559B4() & 1) == 0 && (v17 != 0x495241464153 || v18 != 0xE600000000000000) && (sub_559B4() & 1) == 0)
      {

        v21 = v99;
        v105 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_50E88(0, v99[2] + 1, 1);
          v21 = v99;
        }

        v23 = v21[2];
        v22 = v21[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v96 = v21[2];
          v100 = v23 + 1;
          sub_50E88((v22 > 1), v23 + 1, 1);
          v23 = v96;
          v24 = v100;
          v21 = v105;
        }

        v21[2] = v24;
        v99 = v21;
        v25 = &v21[2 * v23];
        v25[4] = v17;
        v25[5] = v18;
        v15 = v11 + 40;
        if (!(v14 + v13))
        {
LABEL_27:

          v26 = v99;
          if (!v99[2])
          {
            sub_55684();
            if (v36)
            {
              v102 = v0[28];
              v37 = v0[27];
              v97 = v0[26];
              v38 = v0[19];
              v39 = v0[20];
              v40 = v0[18];
              v41 = v0[9];

              v42 = sub_55844();

              [v41 setSpecifierIdentifierToScrollAndHighlight:v42];

              sub_557F4();
              (*(v38 + 8))(v39, v40);
              (*(v37 + 8))(v102, v97);
              goto LABEL_99;
            }
          }

          v27 = sub_55654();
          if (v27)
          {
            v28 = v27;
            v29 = *(v27 + 16);
            if (v29)
            {
              v30 = 0;
              v31 = v0[14];
              v32 = (v31 + 8);
              while (1)
              {
                if (v30 >= *(v28 + 16))
                {
                  goto LABEL_104;
                }

                (*(v31 + 16))(v0[15], v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v0[13]);
                if (sub_55624() == 0x6E6F69746361 && v33 == 0xE600000000000000)
                {
                  break;
                }

                v35 = sub_559B4();

                if (v35)
                {
                  goto LABEL_42;
                }

                ++v30;
                (*v32)(v0[15], v0[13]);
                if (v29 == v30)
                {
                  goto LABEL_38;
                }
              }

LABEL_42:
              v44 = v0[16];
              v43 = v0[17];
              v46 = v0[14];
              v45 = v0[15];
              v47 = v0[13];

              v48 = *(v46 + 32);
              v48(v44, v45, v47);
              v48(v43, v44, v47);
              v49 = sub_55634();
              v26 = v99;
              if (v50)
              {
                if (v49 == 0x6F707845776F6873 && v50 == 0xEF74656568537472)
                {

                  goto LABEL_47;
                }

                v51 = sub_559B4();

                if (v51)
                {
LABEL_47:

                  v52 = v0[27];
                  v101 = v0[26];
                  v103 = v0[28];
                  v54 = v0[19];
                  v53 = v0[20];
                  v55 = v0[17];
                  v98 = v0[18];
                  v56 = v0[13];
                  v57 = v0[9];
                  v58 = sub_55844();
                  [v57 setSpecifierIdentifierToScrollAndSelect:v58];

                  sub_557F4();
                  (*v32)(v55, v56);
                  (*(v54 + 8))(v53, v98);
                  (*(v52 + 8))(v103, v101);
                  goto LABEL_99;
                }
              }

              (*v32)(v0[17], v0[13]);
            }

            else
            {
LABEL_38:

              v26 = v99;
            }
          }

          v95 = v26[2];
          if (!v95)
          {
LABEL_94:

            goto LABEL_98;
          }

          v59 = 0;
          v93 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
          v94 = (v0[11] + 8);
          v60 = (v26 + 5);
          while (v59 < v26[2])
          {
            v61 = *(v60 - 1);
            v62 = *v60;
            v104 = v59 + 1;
            swift_bridgeObjectRetain_n();
            v63 = sub_510E4(v61, v62);
            switch(v63)
            {
              case 5u:
LABEL_96:

                goto LABEL_97;
              case 0xFu:
                goto LABEL_95;
              default:
                v64 = sub_559B4();

                if (v64)
                {
LABEL_97:

                  v83 = v0[9];
                  v84 = sub_55844();

                  [v83 setSpecifierIdentifierToScrollAndHighlight:v84];

                  goto LABEL_98;
                }

                switch(v63)
                {
                  case 0xEu:
                    goto LABEL_96;
                  default:
                    v65 = sub_559B4();

                    if (v65)
                    {
                      goto LABEL_97;
                    }

                    v66 = [objc_allocWithZone(SafariSettingsController) init];
                    v67 = sub_55844();
                    v68 = [v66 specifierForID:v67];

                    if (!v68)
                    {
                      v69 = [objc_allocWithZone(SafariDeveloperSettingsController) init];
                      v70 = sub_55844();
                      v68 = [v69 specifierForID:v70];

                      if (!v68)
                      {
                        goto LABEL_95;
                      }
                    }

                    if (v63 <= 5u)
                    {
                      if (v63 == 1)
                      {

                        sub_55684();
                        if (v75)
                        {
                          v76 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                          v77 = sub_55844();

                          [v76 setSpecifierIdentifierToScrollAndHighlight:v77];

                          [v68 setProperty:v76 forKey:v93];
                        }

LABEL_76:
                        v78 = &unk_A2408;
                        v79 = off_88768;
                        goto LABEL_91;
                      }

                      if (v63 == 2)
                      {
LABEL_64:
                        v73 = [v68 target];

                        v108._countAndFlagsBits = 0x7465677261745FLL;
                        v108._object = 0xE700000000000000;
                        sub_55874(v108);

                        v74 = sub_55844();

                        [v68 setProperty:v73 forKey:v74];

                        swift_unknownObjectRelease();
                        goto LABEL_68;
                      }
                    }

                    else
                    {
                      if (v63 - 6 < 2)
                      {
                        goto LABEL_64;
                      }

                      if (v63 == 10)
                      {
                        v71 = [v68 target];

                        v107._countAndFlagsBits = 0x7465677261745FLL;
                        v107._object = 0xE700000000000000;
                        sub_55874(v107);

                        v72 = sub_55844();

                        [v68 setProperty:v71 forKey:v72];

                        swift_unknownObjectRelease();
LABEL_84:
                        type metadata accessor for SearchEngineSettingsController();
                        goto LABEL_92;
                      }
                    }

LABEL_68:
                    if (v63 > 8u)
                    {
                      if (v63 <= 0xAu)
                      {
                        if (v63 != 9)
                        {
                          if (v63 != 10)
                          {
                            goto LABEL_88;
                          }

                          goto LABEL_84;
                        }

                        v78 = &unk_A23F8;
                        v79 = &off_887B0;
                      }

                      else if (v63 - 11 >= 2)
                      {
                        if (v63 != 13)
                        {
LABEL_88:

                          goto LABEL_93;
                        }

                        v78 = &unk_A23E8;
                        v79 = off_88780;
                      }

                      else
                      {
                        v78 = &unk_A23F0;
                        v79 = off_88790;
                      }
                    }

                    else if (v63 > 2u)
                    {
                      if (v63 - 6 < 2)
                      {
                        goto LABEL_81;
                      }

                      if (v63 == 3)
                      {
                        v78 = &unk_A2400;
                        v79 = off_88778;
                      }

                      else
                      {
                        if (v63 != 4)
                        {
                          goto LABEL_88;
                        }

                        v78 = &unk_A2378;
                        v79 = off_88788;
                      }
                    }

                    else
                    {
                      if (v63)
                      {
                        if (v63 == 1)
                        {
                          goto LABEL_76;
                        }

LABEL_81:
                        v78 = &unk_A2418;
                        v79 = off_887A8;
                        goto LABEL_91;
                      }

                      v78 = &unk_A2410;
                      v79 = off_88770;
                    }

LABEL_91:
                    sub_5117C(0, v78, v79);
LABEL_92:
                    v80 = v0[12];
                    v81 = v0[10];
                    v0[6] = &OBJC_PROTOCOL___PSController;
                    swift_dynamicCastTypeToObjCProtocolUnconditional();
                    v82 = v68;
                    sub_55764();
                    sub_51130(&qword_A23E0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                    sub_55784();

                    (*v94)(v80, v81);
LABEL_93:
                    v60 += 2;
                    v26 = v99;
                    v59 = v104;
                    if (v95 == v104)
                    {
                      goto LABEL_94;
                    }

                    break;
                }

                break;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
          JUMPOUT(0x503E4);
        }

        goto LABEL_5;
      }
    }

    ++v13;
    v16 += 2;
    if (v14 + v13 == 1)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_95:

LABEL_98:
  v86 = v0[27];
  v85 = v0[28];
  v87 = v0[26];
  v89 = v0[19];
  v88 = v0[20];
  v90 = v0[18];
  sub_557F4();
  (*(v89 + 8))(v88, v90);
  (*(v86 + 8))(v85, v87);
LABEL_99:

  v91 = v0[1];

  return v91();
}

uint64_t sub_50460(uint64_t a1)
{
  v2 = sub_55774();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for SearchEngineSettingsController();
  v3 = [objc_allocWithZone(PSSpecifier) init];
  [v3 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_55764();
  return sub_55744();
}

uint64_t sub_5053C(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = sub_55774();
  __chkstk_darwin(v6 - 8);
  sub_5117C(0, a2, a3);
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_55764();
  return sub_55744();
}

uint64_t sub_50628(uint64_t a1)
{
  v2 = sub_55774();
  __chkstk_darwin(v2 - 8);
  v3 = sub_55754();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WebBrowsingSettingsController();
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_55764();
  sub_55744();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = *&v8[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
  v9 = *&v8[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle + 8];

  v12[0] = v10;
  v12[1] = v9;
  sub_51130(&qword_A2338, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_50DCC();
  sub_557A4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_50848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2358, &qword_7B768);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2330, &qword_7B748);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_A2328, &qword_7B740);
  v9 = sub_51218(&qword_A2340, &qword_A2328, &qword_7B740, &protocol conformance descriptor for SettingsPane<A>);
  v18 = v8;
  v19 = v9;
  v17[0] = swift_getOpaqueTypeConformance2();
  (*(*(v7 - 8) + 16))(v6, *a1, v7);
  v18 = v6;
  v10 = &v6[v4[14]];
  v11 = *(*(v8 - 8) + 16);
  v11(v10, a1[1], v8);
  v19 = v10;
  v12 = &v6[v4[18]];
  v11(v12, a1[2], v8);
  v20 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2320, &qword_7B738);
  v14 = sub_51218(&qword_A2360, &qword_A2320, &qword_7B738, &protocol conformance descriptor for SettingsPane<A>);
  v15 = &v6[v4[22]];
  (*(*(v13 - 8) + 16))(v15, a1[3], v13);
  v21 = v15;
  v17[6] = v7;
  v17[7] = v8;
  v17[8] = v8;
  v17[9] = v13;
  v17[2] = v17[0];
  v17[3] = v9;
  v17[4] = v9;
  v17[5] = v14;
  return sub_557B4();
}

id sub_50ABC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_50B40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50BA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_50C54;

  return sub_4F0DC(a1, a2, v6);
}

uint64_t sub_50C54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_50DCC()
{
  result = qword_A2350;
  if (!qword_A2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A2350);
  }

  return result;
}

uint64_t sub_50E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2370, &qword_7B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_50E88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_50EC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_50EA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_50FD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_50EC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2420, &qword_7B778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_50FD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2430, &qword_7B780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_510E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_8B548;
  v6._object = a2;
  v4 = sub_55994(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_51130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5117C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_51218(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_51270()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
  sub_5117C(0, &qword_A2588, NSDistributedNotificationCenter_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = [ObjCClassFromMetadata defaultCenter];
  v6 = [objc_opt_self() safari_notificationNameForUserDefaultsKey:_SFSearchEngineStringDefaultsKey];
  [v5 addObserver:v4 selector:"reloadSpecifiers" name:v6 object:0];

  return v4;
}

void sub_51410(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v16 = [v3 safari_browserSharedDefaults];
  v4 = sub_55844();
  [v16 setObject:v4 forKey:_SFSearchEngineStringDefaultsKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_55844();
  [v5 postNotificationName:v6 object:0];

  if (![v16 BOOLForKey:@"PrivateBrowsingUsesNormalBrowsingSearchEngineSelection"])
  {

    goto LABEL_6;
  }

  v7 = _SFPrivateSearchEngineStringDefaultsKey;
  v8 = [v16 stringForKey:_SFPrivateSearchEngineStringDefaultsKey];
  if (v8)
  {
    sub_55854();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_55844();
  [v16 setObject:v11 forKey:v7];

  v12 = [v3 safari_browserDefaults];
  if (v10)
  {
  }

  else
  {

    v8 = 0;
  }

  [v12 setObject:v8 forKey:{WBSLastPrivateSearchEngineStringExplicitlyChosenByUserKey, v16}];

  swift_unknownObjectRelease();
  v13 = [v2 specifierForID:@"SEARCH_SUGGESTION_SETTING"];
  v14 = [v2 readPreferenceValue:v13];

  if (v14)
  {
    sub_55934();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    sub_5117C(0, &qword_A2548, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      [v2 setUpSearchSuggestionText:{objc_msgSend(v17, "BOOLValue")}];
      v15 = [v2 specifierForID:@"SEARCH"];
      [v2 reloadSpecifier:v15 animated:1];
    }

LABEL_6:

    return;
  }

  sub_52F68(v20, &qword_A2540, &unk_7B808);
}

void sub_51780(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_55704();
  v109 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2560, &qword_7B818);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v105 - v13;
  v15 = sub_556D4();
  v114 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v111 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v112 = &v105 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v105 - v21;
  __chkstk_darwin(v20);
  v24 = &v105 - v23;
  v115.receiver = v2;
  v115.super_class = ObjectType;
  v108 = ObjectType;
  objc_msgSendSuper2(&v115, "viewWillAppear:", a1 & 1);
  v25 = [v2 specifier];
  if (!v25)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 identifier];

  if (!v27)
  {
    return;
  }

  v106 = v5;
  v110 = v15;
  v28 = sub_55854();
  v30 = v29;

  v31 = [v2 specifier];
  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = v31;
  v33 = [v31 target];

  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_5117C(0, &qword_A2428, off_887A0);
  v34 = [v33 isKindOfClass:swift_getObjCClassFromMetadata()];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2568, &qword_7B820);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_7B7C0;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = sub_52F14();
  *(v35 + 32) = v28;
  *(v35 + 40) = v30;

  if ((v34 & 1) == 0)
  {
    sub_55864();
    sub_556C4();
    v43 = v114;
    v44 = v110;
    if ((*(v114 + 48))(v14, 1, v110) == 1)
    {

      sub_52F68(v14, &qword_A2560, &qword_7B818);
      return;
    }

    (*(v43 + 32))(v24, v14, v44);
    if (![v2 respondsToSelector:"pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:"])
    {
      (*(v43 + 8))(v24, v44);

      return;
    }

    v45 = v107;
    sub_556F4();
    v46 = [v2 bundle];
    if (v46)
    {
      v47 = v46;

      v48 = [v47 bundleURL];

      sub_556B4();
      v49 = objc_allocWithZone(_NSLocalizedStringResource);
      v50 = sub_55844();
      v51 = sub_55844();
      v52 = v45;
      isa = sub_556E4().super.isa;
      sub_556A4(v54);
      v56 = v55;
      v57 = [v49 initWithKey:v50 table:v51 locale:isa bundleURL:v55];

      v58 = *(v114 + 8);
      v59 = v110;
      v58(v22, v110);
      (*(v109 + 8))(v52, v106);
      v60 = sub_55844();
      sub_5117C(0, &qword_A2578, _NSLocalizedStringResource_ptr);
      v61 = sub_55894().super.isa;
      sub_556A4(v62);
      v64 = v63;
      [v2 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v60 title:v57 localizedNavigationComponents:v61 deepLink:v63];

      v58(v24, v59);
      return;
    }

    goto LABEL_26;
  }

  sub_55864();
  v36 = [v2 specifier];
  if (!v36)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v37 = v36;

  v38 = [v37 name];

  v39 = v112;
  v40 = v111;
  if (v38)
  {
    sub_556C4();

    v41 = v114;
    v42 = v110;
    if ((*(v114 + 48))(v12, 1, v110) == 1)
    {

      sub_52F68(v12, &qword_A2560, &qword_7B818);
    }

    else
    {
      (*(v41 + 32))(v39, v12, v42);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v66 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v67 = [v66 bundleURL];

      sub_556B4();
      sub_556F4();
      v68 = objc_allocWithZone(_NSLocalizedStringResource);
      v69 = sub_556E4().super.isa;
      sub_556A4(v70);
      v72 = v71;
      v108 = [v68 initWithKey:v38 table:0 locale:v69 bundleURL:v71];

      v73 = objc_allocWithZone(_NSLocalizedStringResource);
      v74 = sub_55844();
      v75 = sub_55844();
      v76 = sub_556E4().super.isa;
      sub_556A4(v77);
      v79 = v78;
      v80 = [v73 initWithKey:v74 table:v75 locale:v76 bundleURL:v78];

      v81 = objc_allocWithZone(_NSLocalizedStringResource);
      v82 = sub_55844();
      v83 = sub_55844();
      v84 = v40;
      v85 = sub_556E4().super.isa;
      sub_556A4(v86);
      v88 = v87;
      v89 = [v81 initWithKey:v82 table:v83 locale:v85 bundleURL:v87];

      if ([v2 respondsToSelector:"pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:"])
      {
        v90 = sub_55844();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2580, &qword_7B828);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_7B7D0;
        *(v91 + 32) = v89;
        *(v91 + 40) = v80;
        sub_5117C(0, &qword_A2578, _NSLocalizedStringResource_ptr);
        v92 = v89;
        v93 = v80;
        v94 = sub_55894().super.isa;

        v95 = v112;
        sub_556A4(v96);
        v98 = v97;
        v99 = v2;
        v100 = v108;
        [v99 pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v90 title:v108 localizedNavigationComponents:v94 deepLink:v98];

        (*(v109 + 8))(v113, v106);
        v101 = *(v114 + 8);
        v102 = v110;
        v101(v84, v110);
        v101(v95, v102);
      }

      else
      {

        (*(v109 + 8))(v113, v106);
        v103 = *(v114 + 8);
        v104 = v110;
        v103(v84, v110);
        v103(v112, v104);
      }
    }
  }

  else
  {
  }
}

char *sub_522D4()
{
  v1 = v0;
  v2 = [objc_opt_self() emptyGroupSpecifier];
  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v4 = v2;
  v70 = &_swiftEmptyArrayStorage;
  isa = sub_558E4().super.super.isa;
  [v4 setProperty:isa forKey:PSIsRadioGroupKey];

  v6 = *&v1[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier];
  *&v1[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier] = v4;
  v7 = v4;

  v58 = v7;
  sub_55884();
  if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_558C4();
  }

  sub_558D4();
  v8 = v70;
  v9 = objc_opt_self();
  [v9 loadSystemLanguageProperties];
  v10 = [v9 sharedInstance];
  v11 = sub_52DA0();
  v63 = v12;
  v64 = v11;
  v13 = [v10 enginesAvailableForUnifiedFieldSearching];
  sub_5117C(0, &qword_A2550, _SFSearchEngineInfo_ptr);
  v14 = sub_558B4();

  if (v14 >> 62)
  {
    result = sub_55984();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  result = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_30:

LABEL_31:
    sub_5117C(0, &qword_A2558, PSSpecifier_ptr);
    v51 = sub_55894().super.isa;
    v52 = sub_55844();
    [v1 setValue:v51 forKey:v52];

    v53 = sub_55894().super.isa;
    [v1 updateRestrictionsForSpecifiers:v53];

    v3 = sub_52FC8(v8);

    return v3;
  }

LABEL_6:
  if (result >= 1)
  {
    v55 = v1;
    v56 = v70;
    v54 = v10;
    v16 = 0;
    v59 = v14 & 0xC000000000000001;
    v57 = PSRadioGroupCheckedSpecifierKey;
    v17 = &selRef_setContext_;
    v66 = xmmword_7B7C0;
    v60 = result;
    v61 = v14;
    while (1)
    {
      v67 = v16;
      v18 = v59 ? sub_55954() : *(v14 + 8 * v16 + 32);
      v19 = v17;
      v20 = v18;
      v21 = [v20 displayName];
      v22 = sub_55854();
      v24 = v23;

      v68 = 0u;
      v69 = 0u;
      v65 = v22;
      v25 = sub_55844();
      v26 = *(&v69 + 1);
      if (*(&v69 + 1))
      {
        v27 = __swift_project_boxed_opaque_existential_0(&v68, *(&v69 + 1));
        v28 = *(v26 - 8);
        __chkstk_darwin(v27);
        v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v30);
        v31 = sub_559A4();
        (*(v28 + 8))(v30, v26);
        __swift_destroy_boxed_opaque_existential_0(&v68);
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_allocWithZone(PSSpecifier) initWithName:v25 target:v31 set:0 get:0 detail:0 cell:3 edit:0];

      swift_unknownObjectRelease();
      if (v32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2430, &qword_7B780);
        v33 = swift_allocObject();
        *(v33 + 16) = v66;
        v62 = v32;
        v17 = v19;
        v34 = [v20 v19[204]];
        v35 = sub_55854();
        v37 = v36;

        *(v33 + 56) = &type metadata for String;
        *(v33 + 32) = v35;
        *(v33 + 40) = v37;
        v38 = sub_55894().super.isa;

        v39 = swift_allocObject();
        *(v39 + 16) = v66;
        *(v39 + 56) = &type metadata for String;
        v40 = v65;
        *(v39 + 32) = v65;
        *(v39 + 40) = v24;

        v41 = sub_55894().super.isa;

        v42 = swift_allocObject();
        *(v42 + 16) = v66;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 32) = v40;
        *(v42 + 40) = v24;
        v43 = sub_55894().super.isa;

        v44 = v62;
        [v62 setValues:v38 titles:v41 shortTitles:v43];
      }

      else
      {

        v17 = v19;
      }

      v45 = [v20 v17[204]];

      v46 = sub_55854();
      v48 = v47;

      if (v46 == v64 && v48 == v63)
      {
        break;
      }

      v49 = sub_559B4();

      if (v49)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v32)
      {
        v50 = v32;
        sub_55884();
        if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_558C4();
        }

        sub_558D4();

        v56 = v70;
      }

      else
      {
      }

      v16 = v67 + 1;
      v14 = v61;
      if (v60 == v67 + 1)
      {

        v10 = v54;
        v1 = v55;
        v8 = v56;
        goto LABEL_31;
      }
    }

LABEL_23:
    [v58 setProperty:v32 forKey:v57];
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_52A50(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  isa = sub_55714().super.isa;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v6 = sub_55714().super.isa;
  v7 = [v2 indexForIndexPath:v6];

  v8 = [v2 specifierAtIndex:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 values];
    if (v10)
    {
      v11 = v10;
      v12 = sub_558B4();

      if (*(v12 + 16))
      {
        sub_52D44(v12 + 32, v15);

        if (swift_dynamicCast())
        {
          sub_51410(v13, v14);

          return;
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_52CD8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_52D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_52DA0()
{
  v0 = [objc_opt_self() safari_browserSharedDefaults];
  v1 = [v0 stringForKey:_SFSearchEngineStringDefaultsKey];

  if (!v1)
  {
    v2 = [objc_opt_self() sharedInstance];
    v1 = [v2 defaultSearchEngineNameForPrivateBrowsing:0];

    if (!v1)
    {
      return 0;
    }
  }

  v3 = sub_55854();

  return v3;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_52F14()
{
  result = qword_A2570;
  if (!qword_A2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A2570);
  }

  return result;
}

uint64_t sub_52F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_52FC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_55984();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_50EA8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_55954();
        sub_53960();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_50EA8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_541C8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_53960();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_50EA8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_541C8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_53194()
{
  v1 = [v0 bundle];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_55844();
  v4 = sub_55844();
  v5 = [v2 pathForResource:v3 ofType:v4];

  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_55854();

  v6 = objc_allocWithZone(NSDictionary);

  v7 = sub_55844();

  v8 = [v6 initWithContentsOfFile:v7];

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_55834();
LABEL_8:
  __break(1u);
  __break(1u);
}

unint64_t sub_53960()
{
  result = qword_A2558;
  if (!qword_A2558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A2558);
  }

  return result;
}

void *sub_539AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_53A48(v1, 0);

    sub_55944();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_55984();
    if (!v1)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void *sub_53A48(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_A2580, &qword_7B828);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_53AD0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_55984();
LABEL_9:
  result = sub_55964();
  *v2 = result;
  return result;
}

uint64_t sub_53B70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_53960();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_53BD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = sub_53C3C(a1);
  v4 = v3[2];

  return a2((v3 + 4), v4);
}

void *sub_53C3C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_539AC(a1);

      objc_setAssociatedObject(v2, &_swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

char *sub_53CF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_53960();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_55984();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_55984();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_53E14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_55984();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_55984();
  }

  else
  {
    v13 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_53AD0(result, 1);

  return sub_53CF8(v7, v6, 1, v4);
}

uint64_t sub_53F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_53960();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_53BD8(v4, sub_541AC);
  }

LABEL_25:
  v20 = sub_55984();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    result = sub_55984();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = __chkstk_darwin(result);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return sub_53BD8(v4, sub_541AC);
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_54098(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = sub_55984();
  if (result < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v12 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v13 = __OFSUB__(v12, v10);
    v14 = v12 - v10;
    if (!v13)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = sub_55984();
  v12 = result;
  v13 = __OFSUB__(result, v10);
  v14 = result - v10;
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v15 = sub_55984();
  }

  else
  {
    v15 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v13)
  {
    goto LABEL_21;
  }

  sub_53AD0(result, 1);

  return sub_53F00(v7, v6, v12, v4);
}

_OWORD *sub_541C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}