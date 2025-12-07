void CAMSignpostsDiscoverPersonBegin(uint64_t a1)
{
  v1 = kdebug_trace();
  v2 = CAMTelemetrySignpostsLog(v1);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "peopleProximityDiscoverPerson", " enableTelemetry=YES ", v3, 2u);
  }
}

void CAMSignpostsDiscoverPersonEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = kdebug_trace();
  v6 = CAMTelemetrySignpostsLog(v5);
  if (os_signpost_enabled(v6))
  {
    v7 = 134349312;
    v8 = a2;
    v9 = 2050;
    v10 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "peopleProximityDiscoverPerson", " enableTelemetry=YES distance=%{signpost.telemetry:number1,public}lu rssi=%{signpost.telemetry:number2,public}ld", &v7, 0x16u);
  }
}

void CAMSignpostsDiscoverPersonNearbyBegin(uint64_t a1)
{
  v1 = kdebug_trace();
  v2 = CAMTelemetrySignpostsLog(v1);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "peopleProximityDiscoverPersonNearby", " enableTelemetry=YES ", v3, 2u);
  }
}

void CAMSignpostsDiscoverPersonNearbyEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = kdebug_trace();
  v6 = CAMTelemetrySignpostsLog(v5);
  if (os_signpost_enabled(v6))
  {
    v7 = 134349312;
    v8 = a2;
    v9 = 2050;
    v10 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "peopleProximityDiscoverPersonNearby", " enableTelemetry=YES distance=%{signpost.telemetry:number1,public}lu rssi=%{signpost.telemetry:number2,public}ld", &v7, 0x16u);
  }
}

void CAMSignpostsSmartSharingAutoDecisionBegin(uint64_t a1)
{
  v1 = kdebug_trace();
  v2 = CAMTelemetrySignpostsLog(v1);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "smartSharingAutoDecision", " enableTelemetry=YES ", v3, 2u);
  }
}

void CAMSignpostsSmartSharingAutoDecisionEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = kdebug_trace();
  v6 = CAMTelemetrySignpostsLog(v5);
  if (os_signpost_enabled(v6))
  {
    v7 = 134349312;
    v8 = a2;
    v9 = 2050;
    v10 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "smartSharingAutoDecision", " enableTelemetry=YES initialState=%{signpost.telemetry:number1,public}ld inferredState=%{signpost.telemetry:number2,public}ld", &v7, 0x16u);
  }
}

void CAMSignpostsUserManualOverrideBegin(uint64_t a1)
{
  v1 = kdebug_trace();
  v2 = CAMTelemetrySignpostsLog(v1);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "userManualOverride", " enableTelemetry=YES ", v3, 2u);
  }
}

void CAMSignpostsUserManualOverrideEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = kdebug_trace();
  v6 = CAMTelemetrySignpostsLog(v5);
  if (os_signpost_enabled(v6))
  {
    v7 = 134349312;
    v8 = a2;
    v9 = 2050;
    v10 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A3640000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "userManualOverride", " enableTelemetry=YES initialState=%{signpost.telemetry:number1,public}ld overiddenState=%{signpost.telemetry:number2,public}ld", &v7, 0x16u);
  }
}

void sub_1A3741B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1A3745AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak(&a44);
  objc_destroyWeak((v44 - 192));
  objc_destroyWeak((v44 - 184));
  objc_destroyWeak((v44 - 144));
  objc_destroyWeak((v44 - 136));
  _Unwind_Resume(a1);
}

void sub_1A3746B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1A3748C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPLPhotoTileViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLPhotoTileViewControllerClass_softClass;
  v7 = getPLPhotoTileViewControllerClass_softClass;
  if (!getPLPhotoTileViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPLPhotoTileViewControllerClass_block_invoke;
    v3[3] = &unk_1E76F8100;
    v3[4] = &v4;
    __getPLPhotoTileViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A374919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3749620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLCropOverlayClass_block_invoke(uint64_t a1)
{
  PhotoLibraryLibrary();
  result = objc_getClass("PLCropOverlay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLCropOverlayClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPLCropOverlayClass_block_invoke_cold_1();
    return PhotoLibraryLibrary();
  }

  return result;
}

uint64_t PhotoLibraryLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotoLibraryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76FA830;
    v5 = 0;
    PhotoLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotoLibraryLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PhotoLibraryLibraryCore_frameworkLibrary)
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

uint64_t __PhotoLibraryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotoLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPLPhotoTileViewControllerClass_block_invoke(uint64_t a1)
{
  PhotoLibraryLibrary();
  result = objc_getClass("PLPhotoTileViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLPhotoTileViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPLPhotoTileViewControllerClass_block_invoke_cold_1();
    return __getPLVideoViewClass_block_invoke(v3);
  }

  return result;
}

Class __getPLVideoViewClass_block_invoke(uint64_t a1)
{
  PhotoLibraryLibrary();
  result = objc_getClass("PLVideoView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLVideoViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPLVideoViewClass_block_invoke_cold_1();
    return __getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryLibrary();
  result = dlsym(v2, "PLNotifyImagePickerOfImageAvailability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPLNotifyImagePickerOfVideoAvailabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryLibrary();
  result = dlsym(v2, "PLNotifyImagePickerOfVideoAvailability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLNotifyImagePickerOfVideoAvailabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A37513AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76FAA20;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFPreferencesClass_block_invoke_cold_1();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A3755070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3755548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __QuickLookLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76FABC0;
    v6 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (QuickLookLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getQLPreviewControllerClass_block_invoke_cold_1();
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A3756930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CAMVideoCaptureRequestError(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if ((a1 + 28003) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FAD10[a1 + 28003];
  }

  if (a2)
  {
    v5 = *MEMORY[0x1E696AA08];
    v19[0] = *MEMORY[0x1E696A578];
    v19[1] = v5;
    v20[0] = v4;
    v20[1] = a2;
    v6 = MEMORY[0x1E695DF20];
    v7 = a2;
    v8 = v20;
    v9 = v19;
    v10 = v6;
    v11 = 2;
  }

  else
  {
    v17 = *MEMORY[0x1E696A578];
    v18 = v4;
    v12 = MEMORY[0x1E695DF20];
    v13 = 0;
    v8 = &v18;
    v9 = &v17;
    v10 = v12;
    v11 = 1;
  }

  v14 = [v10 dictionaryWithObjects:v8 forKeys:v9 count:v11];
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMVideoCaptureRequestErrorDomain" code:a1 userInfo:v14];

  return v15;
}

uint64_t CAMErrorIsVideoCaptureRequestError(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 code] == a2)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqual:@"CAMVideoCaptureRequestErrorDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t CAMInitialLayoutStyle(uint64_t result, double a2, double a3, double a4, double a5)
{
  if (result != 1)
  {
    if (CAMIsModernAspectScreenSize(a4, a5))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAMLayoutStyleForView(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4 * v6;
  if (v4 * v6 == 0.0)
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 _referenceBounds];
    v10 = v9;
    v12 = v11;
    v13 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v13 userInterfaceIdiom] == 1)
    {
      v14 = 1;
    }

    else if (CAMIsModernAspectScreenSize(v10, v12))
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_11;
  }

  v15 = [v1 traitCollection];
  v14 = [v15 userInterfaceIdiom];

  v16 = [v1 window];
  [v16 bounds];
  CEKPortraitOrientedSize();

  if (v14 != 1)
  {
    CEKRectWithSize();
    v18 = v17;
    v20 = v19;
    v8 = [v1 traitCollection];
    if ([v8 userInterfaceIdiom] == 1)
    {
      v14 = 1;
    }

    else if (CAMIsModernAspectScreenSize(v18, v20))
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

LABEL_11:
  }

  return v14;
}

void sub_1A3761590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3762F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37630F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3763280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3763450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A376474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CAMShutterButtonSpecMake(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

void sub_1A376C05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A376F148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PanoramaProcessorOutputCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = [v5 delegate];
  v6 = [v5 request];
  [v7 panoramaProcessor:v5 didProcessSampleBuffer:a3 withStatus:a2 forRequest:v6];
}

void sub_1A3775078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3778E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37796F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3779930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A378DCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A378E2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A378E4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A378F830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A379E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A379EE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A379F19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A37A0ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37A153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37A3850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSFDeviceDiscoveryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76FBC88;
    v6 = 0;
    SharingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SharingLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFDeviceDiscovery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFDeviceDiscoveryClass_block_invoke_cold_1();
  }

  getSFDeviceDiscoveryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SharingLibraryCore_frameworkLibrary = result;
  return result;
}

void CAMShowStorageUsageInSettings()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  v1 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A3640000, v1, OS_LOG_TYPE_DEFAULT, "Opening Storage Settings", v3, 2u);
  }

  if ((CAMOpenSensitiveURLWithUnlockRequest(v0, 1) & 1) == 0)
  {
    v2 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CAMShowStorageUsageInSettings_cold_1(v0, v2);
    }
  }
}

id CAMStorageAlertDismissTitle(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = CAMLocalizedFrameworkString(off_1E76FBCA0[a1], 0);
  }

  return v2;
}

id CAMStorageAlertResolveTitle(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"LOW_DISK_SPACE_ICPL_OFF_ALERT_MANAGE_TITLE";
LABEL_5:
    v3 = CAMLocalizedFrameworkString(v2, 0);

    return v3;
  }

  if (!a1)
  {
    v2 = @"LOW_DISK_SPACE_ICPL_ON_ALERT_OPTIMIZE_TITLE";
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

id CAMStorageAlertTitle(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 model];

  switch(a1)
  {
    case 2:
      v4 = @"LOW_DISK_SPACE_TITLE_EXTERNAL";
      break;
    case 1:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"LOW_DISK_SPACE_ICPL_OFF_TITLE_%@", v3];
      goto LABEL_6;
    case 0:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"LOW_DISK_SPACE_ICPL_ON_TITLE_%@", v3];
      v4 = LABEL_6:;
      break;
    default:
      v4 = 0;
      break;
  }

  v5 = CAMLocalizedFrameworkString(v4, 0);

  return v5;
}

id CAMStorageAlertMessage(uint64_t a1, unint64_t a2)
{
  if (a2 > 9)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_17;
  }

  if (((1 << a2) & 0x279) != 0)
  {
    switch(a1)
    {
      case 2:
        v6 = @"LOW_DISK_SPACE_PHOTO_BODY_EXTERNAL";
        break;
      case 1:
        v6 = @"LOW_DISK_SPACE_ICPL_OFF_PHOTO_BODY";
        break;
      case 0:
        v2 = MEMORY[0x1E696AEC0];
        v3 = [MEMORY[0x1E69DC938] currentDevice];
        v4 = [v3 model];
        [v2 stringWithFormat:@"LOW_DISK_SPACE_ICPL_ON_PHOTO_BODY_%@", v4];
        v6 = LABEL_11:;

        break;
      default:
        goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v6 = @"LOW_DISK_SPACE_VIDEO_BODY_EXTERNAL";
        break;
      case 1:
        v6 = @"LOW_DISK_SPACE_ICPL_OFF_VIDEO_BODY";
        break;
      case 0:
        v5 = MEMORY[0x1E696AEC0];
        v3 = [MEMORY[0x1E69DC938] currentDevice];
        v4 = [v3 model];
        [v5 stringWithFormat:@"LOW_DISK_SPACE_ICPL_ON_VIDEO_BODY_%@", v4];
        goto LABEL_11;
      default:
        goto LABEL_12;
    }
  }

LABEL_17:
  v7 = CAMLocalizedFrameworkString(v6, 0);

  return v7;
}

void sub_1A37AF088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37B1A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37B1DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37B97B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37BD2BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *CAMDebugStringForCaptureDevice_1(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E76FC0A0[a1];
  }
}

double CAMMGGetCGRectAnswer(uint64_t a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(v4 objCType:{"bytes"), "{CGRect={CGPoint=dd}{CGSize=dd}}"}];
    [v6 CGRectValue];
    a2 = v7;
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = a1;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No data found for MG query %{public}@", &v9, 0xCu);
    }
  }

  return a2;
}

__CFString *CAMDebugStringForCaptureMode(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E76FC100[a1];
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id CAMCaptureControllerError(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if ((a1 + 22103) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FC3C8[a1 + 22103];
  }

  if (a2)
  {
    v5 = *MEMORY[0x1E696AA08];
    v19[0] = *MEMORY[0x1E696A578];
    v19[1] = v5;
    v20[0] = v4;
    v20[1] = a2;
    v6 = MEMORY[0x1E695DF20];
    v7 = a2;
    v8 = v20;
    v9 = v19;
    v10 = v6;
    v11 = 2;
  }

  else
  {
    v17 = *MEMORY[0x1E696A578];
    v18 = v4;
    v12 = MEMORY[0x1E695DF20];
    v13 = 0;
    v8 = &v18;
    v9 = &v17;
    v10 = v12;
    v11 = 1;
  }

  v14 = [v10 dictionaryWithObjects:v8 forKeys:v9 count:v11];
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMCaptureControllerErrorDomain" code:a1 userInfo:v14];

  return v15;
}

void sub_1A37DD170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37E65DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37E8B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37E91AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37E94C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CAMSizeForPhotoMetadata(void *a1)
{
  v1 = *MEMORY[0x1E696D9B0];
  v2 = a1;
  v3 = [v2 objectForKeyedSubscript:v1];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DAA8]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DAB0]];
  v6 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];

  [v4 doubleValue];
  v8 = v7;
  [v5 doubleValue];
  v10 = v9;
  [v6 intValue];
  if (PLExifOrientationSwapsWidthAndHeight())
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

void sub_1A37F06B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37F58F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37F7028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37F7180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37F7310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37F862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37F879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___loadThumbnailForBurstResult_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = v4;
  pl_dispatch_async();
}

__n128 CAMViewGeometryMake@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *a2 = a5;
  *(a2 + 8) = a6;
  *(a2 + 16) = a7;
  *(a2 + 24) = a8;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  v8 = *(a1 + 16);
  *(a2 + 48) = *a1;
  *(a2 + 64) = v8;
  result = *(a1 + 32);
  *(a2 + 80) = result;
  return result;
}

double CAMFrameForGeometry(uint64_t a1)
{
  v4 = *a1;
  v1 = *(a1 + 64);
  *&v3.a = *(a1 + 48);
  *&v3.c = v1;
  *&v3.tx = *(a1 + 80);
  CGRectApplyAffineTransform(v4, &v3);
  UIRectCenteredAboutPoint();
  return result;
}

__n128 CAMViewGeometryForFrame@<Q0>(uint64_t a2@<X8>, double a5@<D2>, double a6@<D3>)
{
  UIRectGetCenter();
  *a2 = *MEMORY[0x1E695EFF8];
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  v11 = MEMORY[0x1E695EFD0];
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *(a2 + 48) = *MEMORY[0x1E695EFD0];
  *(a2 + 64) = v12;
  result = v11[2];
  *(a2 + 80) = result;
  return result;
}

CGFloat CAMViewGeometryForOrientedFrame@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  memset(&v17, 0, sizeof(v17));
  CAMOrientationTransform(a1, &v17);
  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  v16 = v17;
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  v19 = CGRectApplyAffineTransform(v18, &v16);
  *a2 = *MEMORY[0x1E695EFF8];
  *(a2 + 16) = v19.size.width;
  *(a2 + 24) = v19.size.height;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *&v19.origin.y = *&v17.c;
  *(a2 + 48) = *&v17.a;
  *(a2 + 64) = *&v19.origin.y;
  result = v17.tx;
  *(a2 + 80) = *&v17.tx;
  return result;
}

uint64_t CAMOrientationTransform@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result > 2)
  {
    if (result == 4)
    {
      v6 = -1.57079633;
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v6 = 1.57079633;
    }

LABEL_10:
    CGAffineTransformMakeRotation(a2, v6);
    result = UIIntegralTransform();
    *a2 = v7;
    *(a2 + 16) = v8;
    v5 = v9;
    goto LABEL_11;
  }

  if (result >= 2)
  {
    if (result != 2)
    {
      return result;
    }

    v6 = 3.14159265;
    goto LABEL_10;
  }

  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v4;
  v5 = *(v3 + 32);
LABEL_11:
  *(a2 + 32) = v5;
  return result;
}

void CAMViewSetGeometry(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = a1;
  [v5 setCenter:{v3, v4}];
  [v5 setBounds:{*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)}];
  v6 = *(a2 + 64);
  v7[0] = *(a2 + 48);
  v7[1] = v6;
  v7[2] = *(a2 + 80);
  [v5 setTransform:v7];
}

void CAMViewGetGeometry(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  [v3 center];
  v5 = v4;
  v7 = v6;
  [v3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v3)
  {
    objc_msgSend_transform(v3);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  *(a2 + 80) = v18;
}

void CAMApplyAnimationSensitiveGeometryToView(double *a1, void *a2)
{
  v3 = a2;
  [v3 setCenter:{a1[4], a1[5]}];
  v4 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v5 = *(a1 + 3);
  v13 = *(a1 + 2);
  v14 = v5;
  v6 = *(a1 + 5);
  v15 = *(a1 + 4);
  v16 = v6;
  v7 = *(a1 + 1);
  v11 = *a1;
  v12 = v7;
  v9[2] = __CAMApplyAnimationSensitiveGeometryToView_block_invoke;
  v9[3] = &unk_1E76FCA90;
  v10 = v3;
  v8 = v3;
  [v4 performWithoutAnimation:v9];
}

uint64_t __CAMApplyAnimationSensitiveGeometryToView_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 104);
  v4[0] = *(a1 + 88);
  v4[1] = v2;
  v4[2] = *(a1 + 120);
  return [*(a1 + 32) setTransform:v4];
}

BOOL CAMViewGeometryIsEqualToViewGeometry(uint64_t a1, uint64_t a2)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 64);
      *&t1.a = *(a1 + 48);
      *&t1.c = v6;
      *&t1.tx = *(a1 + 80);
      v7 = *(a2 + 64);
      *&v8.a = *(a2 + 48);
      *&v8.c = v7;
      *&v8.tx = *(a2 + 80);
      return CGAffineTransformEqualToTransform(&t1, &v8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CAMViewSetBoundsAndCenterForFrame(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = a1;
  UIRectGetCenter();
  [v7 setCenter:?];
  [v7 setBounds:{0.0, 0.0, a4, a5}];
}

double CAMViewAlignmentSize(void *a1)
{
  v1 = a1;
  [v1 intrinsicContentSize];
  CEKRectWithSize();
  [v1 frameForAlignmentRect:?];
  v3 = v2;

  return v3;
}

void sub_1A37FAE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37FB288(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A37FB488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37FDD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37FE4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A37FEB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38003F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A38031F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38052C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3805BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A380604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_6(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_14(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_15(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sub_1A3813B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3815DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A381A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _nearestRangeValue(double a1, double a2, double a3)
{
  v3 = a3 + (a3 - a2) * -0.5;
  if (v3 < a1 || a1 < a2)
  {
    a2 = a1;
  }

  if (v3 >= a1 || a1 > a3)
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

double _nearestRoundedAngleForAngle(double result)
{
  v1 = vdupq_lane_s64(*&result, 0);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v1, xmmword_1A3A6A690), vceqq_f64(v1, xmmword_1A3A6A6A0)))))
  {
    return result;
  }

  v2 = 270.0;
  if (result > 270.0)
  {
    if (result > 315.0 || result < 270.0)
    {
      v2 = result;
    }

    v4 = result == 315.0;
    v5 = result < 315.0;
    v6 = 360.0;
LABEL_9:
    if (v5 || v4)
    {
      v7 = 1;
      v8 = 0;
    }

    else
    {
      v8 = result == v6;
      v7 = result >= v6;
    }

    if (!v8 && v7)
    {
      return v2;
    }

    else
    {
      return v6;
    }
  }

  v6 = 180.0;
  if (result <= 180.0)
  {
    v2 = 90.0;
    if (result > 90.0)
    {
      if (result > 135.0 || result < 90.0)
      {
        v2 = result;
      }

      v4 = result == 135.0;
      v5 = result < 135.0;
      goto LABEL_9;
    }

    v13 = 0.0;
    if (result > 45.0 || result < 0.0)
    {
      v13 = result;
    }

    if (result > 45.0)
    {
      v16 = result == 90.0;
      v15 = result >= 90.0;
    }

    else
    {
      v15 = 1;
      v16 = 0;
    }

    if (!v16 && v15)
    {
      return v13;
    }

    else
    {
      return 90.0;
    }
  }

  else
  {
    if (result > 225.0 || result < 180.0)
    {
      v6 = result;
    }

    if (result > 225.0)
    {
      v11 = result == 270.0;
      v10 = result >= 270.0;
    }

    else
    {
      v10 = 1;
      v11 = 0;
    }

    if (!v11 && v10)
    {
      return v6;
    }

    else
    {
      return 270.0;
    }
  }
}

void sub_1A381DFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A38201CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3820A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

id CAMDebugStringForCaptureResultSpecifiersSet(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CAMDebugStringForCaptureResultSpecifiersSet_block_invoke_0;
  v4[3] = &unk_1E76F8BA0;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A38219F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CAMDebugStringForCaptureResultSpecifiersSet_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if ((v3 & 2) != 0)
  {
    v4 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = &stru_1F1660A30;
  if (v3)
  {
LABEL_5:
    v13 = v4;
    v5 = [(__CFString *)v4 stringByAppendingString:@"HDR"];

    v4 = v5;
  }

LABEL_6:
  v14 = v4;
  if ([(__CFString *)v4 length])
  {
    v6 = v14;
  }

  else
  {

    v6 = @"None";
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  v15 = v6;
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v8, v6];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = v6;
    v11 = *(v7 + 40);
    *(v7 + 40) = v12;
  }
}

void sub_1A3823C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3824020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38245A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3824798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38249E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3824CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3824EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _prewarmAudioVideoDeviceTypes(uint64_t result, uint64_t a2)
{
  if (_prewarmAudioVideoDeviceTypes_onceToken != -1)
  {
    _prewarmAudioVideoDeviceTypes_cold_1();
  }
}

void _prewarmAudioVideoDevices(uint64_t result, uint64_t a2)
{
  if (_prewarmAudioVideoDevices_onceToken != -1)
  {
    _prewarmAudioVideoDevices_cold_1();
  }
}

void sub_1A3827F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A38289F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3828FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38292F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3829FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A382AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A382B040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A382B254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A382BAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A382E0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A382F00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A3833A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A383618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void _PanoramaNotificationCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v6 = a2;
  if (CFEqual(a3, *MEMORY[0x1E6985F40]))
  {
    [v6 _subgraphQueueHandlePanoramaStatusNotification:a4];
  }

  else if (CFEqual(a3, *MEMORY[0x1E6985F58]))
  {
    [v6 _subgraphQueueHandlePanoramaWarningNotification:a4];
  }

  else if (CFEqual(a3, *MEMORY[0x1E6985EB8]))
  {
    [v6 _subgraphQueueHandlePanoramaErrorNotification:a4];
  }
}

void sub_1A3836848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3836C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3836FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void didInsertImageQueueImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      MEMORY[0x1EEDD5F38](a3);
    }
  }
}

void sub_1A3837E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3838DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3838FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A383919C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3839398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A383978C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  return result;
}

void sub_1A383DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A383E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A383E4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A383E8B0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

double CAMPixelWidthForView(void *a1)
{
  v1 = [a1 traitCollection];
  [v1 displayScale];
  v3 = 1.0 / v2;

  return v3;
}

BOOL CAMProcessHasEntitlement(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v2 = getSecTaskCreateFromSelfSymbolLoc_ptr;
  v17 = getSecTaskCreateFromSelfSymbolLoc_ptr;
  if (!getSecTaskCreateFromSelfSymbolLoc_ptr)
  {
    v3 = SecurityLibrary();
    v15[3] = dlsym(v3, "SecTaskCreateFromSelf");
    getSecTaskCreateFromSelfSymbolLoc_ptr = v15[3];
    v2 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v2)
  {
    [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    goto LABEL_18;
  }

  v4 = v2(*MEMORY[0x1E695E480]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v6 = getSecTaskCopyValueForEntitlementSymbolLoc_ptr;
  v17 = getSecTaskCopyValueForEntitlementSymbolLoc_ptr;
  if (!getSecTaskCopyValueForEntitlementSymbolLoc_ptr)
  {
    v7 = SecurityLibrary();
    v15[3] = dlsym(v7, "SecTaskCopyValueForEntitlement");
    getSecTaskCopyValueForEntitlementSymbolLoc_ptr = v15[3];
    v6 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v6)
  {
LABEL_18:
    v13 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v13);
  }

  v8 = v6(v5, a1, 0);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v5);
  return v11;
}

uint64_t CAMIsEntitledToOpenSensitiveURLs(uint64_t a1, uint64_t a2)
{
  if (CAMIsEntitledToOpenSensitiveURLs_didCheck != -1)
  {
    CAMIsEntitledToOpenSensitiveURLs_cold_1();
  }

  return CAMIsEntitledToOpenSensitiveURLs_isEntitledToOpenSensitiveURLs;
}

BOOL __CAMIsEntitledToOpenSensitiveURLs_block_invoke()
{
  result = CAMProcessHasEntitlement(@"com.apple.springboard.opensensitiveurl");
  CAMIsEntitledToOpenSensitiveURLs_isEntitledToOpenSensitiveURLs = result;
  return result;
}

void *__CAMLocalizedFrameworkString_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = CAMCameraUIFrameworkBundle();
  v8 = [v7 localizedStringForKey:*(a1 + 32) value:&stru_1F1660A30 table:v6];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  result = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id CAMLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CAMCameraUIFrameworkBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F1660A30 table:v3];

  return v6;
}

uint64_t CAMIsDeviceOrientationLocked()
{
  v0 = +[CAMFrameworkUtilities _deviceOrientationLockedStateMonitor];
  v1 = [v0 monitoredValue];

  return v1;
}

double CAMTransformCorrectingForOrientation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v3 = dbl_1A3A6A868[a1 - 2];
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeRotation(a2, v3);
  UIIntegralTransform();
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  return result;
}

uint64_t CAMNormalizeOrientationToOrientation(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v2 = 630;
  }

  else
  {
    v2 = 450;
  }

  if (a1 == 4)
  {
    v2 = 360;
  }

  if (a1 == 3)
  {
    v3 = 540;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1)
  {
    v4 = 450;
  }

  else
  {
    v4 = v3;
  }

  if (a2 == 2)
  {
    v5 = -180;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 4)
  {
    v6 = 90;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 3)
  {
    v7 = -90;
  }

  else
  {
    v7 = v6;
  }

  if (a2 == 1)
  {
    v7 = 0;
  }

  v8 = (v4 + v7) % 0x168u;
  v9 = 1;
  if (v8 == 270)
  {
    v9 = 2;
  }

  v10 = 3;
  if (v8 != 180)
  {
    v10 = v9;
  }

  if (v8)
  {
    return v10;
  }

  else
  {
    return 4;
  }
}

id CAMYellowColor()
{
  v0 = [MEMORY[0x1E69DC888] systemYellowColor];
  v1 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  return v2;
}

id CAMDarkYellowColor()
{
  v0 = [MEMORY[0x1E69DC888] systemDarkYellowColor];
  v1 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  return v2;
}

id CAMRedColor()
{
  v0 = [MEMORY[0x1E69DC888] systemRedColor];
  v1 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  return v2;
}

id CAMMixColor(void *a1, void *a2, double a3)
{
  v17 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
  v5 = a2;
  [a1 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  [v5 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];

  v6 = fmax(a3, 0.0);
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [MEMORY[0x1E69DC888] colorWithRed:v7 * v13 + v17 * (1.0 - v7) green:v7 * v12 + v16 * (1.0 - v7) blue:v7 * v11 + v15 * (1.0 - v7) alpha:{v7 * v10 + v14 * (1.0 - v7), *&v10, *&v11, *&v12, *&v13, *&v14, *&v15, *&v16, *&v17}];

  return v8;
}

uint64_t CAMOpenURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [getLSApplicationWorkspaceClass() defaultWorkspace];
  v10 = 0;
  v6 = [v5 openURL:v3 withOptions:v4 error:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CAMOpenURL_cold_1(v3, v7, v8);
    }
  }

  return v6;
}

id getLSApplicationWorkspaceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLSApplicationWorkspaceClass_softClass;
  v7 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLSApplicationWorkspaceClass_block_invoke;
    v3[3] = &unk_1E76F8100;
    v3[4] = &v4;
    __getLSApplicationWorkspaceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A3840050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CAMOpenSensitiveURLWithUnlockRequest(void *a1, int a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (a2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v4 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
    v19 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
    if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
    {
      v5 = FrontBoardServicesLibrary();
      v17[3] = dlsym(v5, "FBSOpenApplicationOptionKeyUnlockDevice");
      getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = v17[3];
      v4 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v4)
    {
      goto LABEL_11;
    }

    v6 = *v4;
    v20 = v6;
    v7 = MEMORY[0x1E695E118];
    v22[0] = MEMORY[0x1E695E118];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v8 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
    v19 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
    if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
    {
      v9 = FrontBoardServicesLibrary();
      v17[3] = dlsym(v9, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
      getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = v17[3];
      v8 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v8)
    {
LABEL_11:
      [CAMBurstImageFaceAnalysisContext setupFaceDetector];
      __break(1u);
    }

    v21 = *v8;
    v22[1] = v7;
    v10 = MEMORY[0x1E695DF20];
    v11 = v21;
    v12 = [v10 dictionaryWithObjects:v22 forKeys:&v20 count:2];
  }

  else
  {
    v12 = 0;
  }

  v13 = [getLSApplicationWorkspaceClass() defaultWorkspace];
  v14 = [v13 openSensitiveURL:v3 withOptions:v12];

  return v14;
}

void sub_1A38402E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CAMSnapshotForFadingOrientationTransition(uint64_t a1, int a2)
{
  v2 = 0.3;
  v3 = 0.2;
  if (a2)
  {
    v2 = 0.2;
  }

  v4 = 0.1;
  if (!a2)
  {
    v4 = 0.0;
  }

  v5 = 0.25;
  if (a2)
  {
    v5 = 0.2;
    v3 = 0.0;
  }

  return [CAMFrameworkUtilities snapshotForCrossFadingView:a1 fadeOutDuration:0 fadeOutDelay:v2 fadeInDuration:v4 fadeInDelay:v5 embedSnapshot:v3];
}

id CAMCameraUIFrameworkBundleVersion()
{
  v0 = CAMCameraUIFrameworkBundle();
  v1 = [v0 objectForInfoDictionaryKey:@"CFBundleVersion"];

  return v1;
}

id CAMPreferredLocale(uint64_t a1)
{
  if (CAMPreferredLocale_onceToken != -1)
  {
    CAMPreferredLocale_cold_1();
  }

  v2 = CAMPreferredLocale___CAMPreferredLocale;

  return v2;
}

void __CAMPreferredLocale_block_invoke()
{
  v0 = CAMCameraUIFrameworkBundle();
  v1 = [v0 preferredLocalizations];
  v4 = [v1 firstObject];

  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
  v3 = CAMPreferredLocale___CAMPreferredLocale;
  CAMPreferredLocale___CAMPreferredLocale = v2;
}

void sub_1A3840848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSecTaskCreateFromSelfSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecTaskCreateFromSelf");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCreateFromSelfSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SecurityLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SecurityLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76FDBF8;
    v5 = 0;
    SecurityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SecurityLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!SecurityLibraryCore_frameworkLibrary)
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

uint64_t __SecurityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SecurityLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSecTaskCopyValueForEntitlementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecTaskCopyValueForEntitlement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCopyValueForEntitlementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76FDC10;
    v6 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MobileCoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = FrontBoardServicesLibrary();
  result = dlsym(v5, "FBSOpenApplicationOptionKeyUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76FDC28;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
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

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A3843B9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A38466AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38471E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A384C5B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1A3851A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double CAMLiquidShutterColorForShutterColorAndAlpha(uint64_t a1, double a2)
{
  v16 = 0u;
  v17 = 0u;
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  v6 = [v5 isEqualToString:@"com.apple.camera.lockscreen"];
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 featureDevelopmentShowLockIndicator];

  if (v8)
  {
    _ZF = v6 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v16 = 0uLL;
LABEL_9:
    *&v17 = 0x3FF0000000000000;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v16 = _Q0;
    goto LABEL_9;
  }

  v10 = CAMRedColor();
  [v10 getRed:&v16 green:&v16 + 8 blue:&v17 alpha:0];

LABEL_10:
  *(&v17 + 1) = a2;

  return *&v16;
}

size_t OUTLINED_FUNCTION_0_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char __ptr)
{

  return fwrite(&__ptr, 4uLL, 1uLL, v10);
}

void sub_1A385DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A385FC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A385FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3860018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38603D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A38613A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3862764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3862888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3862A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3862B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3862D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A386972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CAMNUStringForTypeCode(int a1)
{
  v3[0] = HIBYTE(a1);
  v3[1] = BYTE2(a1);
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v3[4] = 0;
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v3 encoding:30];

  return v1;
}

void sub_1A386B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A386C450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A386C754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A386DF20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1A386FE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3870FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A387725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CAMMicaDescriptionForPath(const CGPath *a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CAMMicaDescriptionForPath_block_invoke;
  block[3] = &unk_1E76FECE0;
  v3 = v2;
  v6 = v3;
  CGPathApplyWithBlock(a1, block);

  return v3;
}

id *__CAMMicaDescriptionForPath_block_invoke(id *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 > 2)
  {
    if (v3 == 3)
    {
      return [result[4] appendFormat:@"%f %f %f %f %f %f c ", *v2, v2[1], v2[2], v2[3], v2[4], v2[5]];
    }

    else if (v3 == 4)
    {
      v4 = result[4];

      return [v4 appendString:@"h "];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      return [result[4] appendFormat:@"%f %f l ", *v2, v2[1], v5, v6, v7, v8];
    }
  }

  else
  {
    return [result[4] appendFormat:@"%f %f m ", *v2, v2[1], v5, v6, v7, v8];
  }

  return result;
}

void sub_1A3878708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3879DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A387A1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A387A86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A387C200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A387C3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A38804D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3881B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1A3883F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPAMediaConversionServicePixelWidthKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServicePixelWidthKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServicePixelWidthKeySymbolLoc_ptr;
  if (!getPAMediaConversionServicePixelWidthKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServicePixelWidthKey");
    getPAMediaConversionServicePixelWidthKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionServicePixelHeightKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServicePixelHeightKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServicePixelHeightKeySymbolLoc_ptr;
  if (!getPAMediaConversionServicePixelHeightKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServicePixelHeightKey");
    getPAMediaConversionServicePixelHeightKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionServiceResourceURLCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPAMediaConversionServiceResourceURLCollectionClass_softClass;
  v7 = getPAMediaConversionServiceResourceURLCollectionClass_softClass;
  if (!getPAMediaConversionServiceResourceURLCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPAMediaConversionServiceResourceURLCollectionClass_block_invoke;
    v3[3] = &unk_1E76F8100;
    v3[4] = &v4;
    __getPAMediaConversionServiceResourceURLCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A3885A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CAMPAMediaConversionNameForJobStatus(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getPAMediaConversionNameForJobStatusSymbolLoc_ptr;
  v10 = getPAMediaConversionNameForJobStatusSymbolLoc_ptr;
  if (!getPAMediaConversionNameForJobStatusSymbolLoc_ptr)
  {
    v3 = MediaConversionServiceLibrary();
    v8[3] = dlsym(v3, "PAMediaConversionNameForJobStatus");
    getPAMediaConversionNameForJobStatusSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(a1);

  return v4;
}

void sub_1A3887DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3887EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3888500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPAMediaConversionServiceOptionAdjustmentInformationKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServiceOptionAdjustmentInformationKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServiceOptionAdjustmentInformationKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceOptionAdjustmentInformationKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServiceOptionAdjustmentInformationKey");
    getPAMediaConversionServiceOptionAdjustmentInformationKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionServiceOptionApplyOrientationTransformKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServiceOptionApplyOrientationTransformKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServiceOptionApplyOrientationTransformKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceOptionApplyOrientationTransformKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServiceOptionApplyOrientationTransformKey");
    getPAMediaConversionServiceOptionApplyOrientationTransformKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionServiceOptionRequestReasonKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServiceOptionRequestReasonKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServiceOptionRequestReasonKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceOptionRequestReasonKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServiceOptionRequestReasonKey");
    getPAMediaConversionServiceOptionRequestReasonKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionServiceOptionJobPriorityKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServiceOptionJobPriorityKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServiceOptionJobPriorityKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceOptionJobPriorityKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServiceOptionJobPriorityKey");
    getPAMediaConversionServiceOptionJobPriorityKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionServiceOptionScaleFactorKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionServiceOptionScaleFactorKeySymbolLoc_ptr;
  v8 = getPAMediaConversionServiceOptionScaleFactorKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceOptionScaleFactorKeySymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionServiceOptionScaleFactorKey");
    getPAMediaConversionServiceOptionScaleFactorKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPAMediaConversionResourceRoleVideoComplement()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPAMediaConversionResourceRoleVideoComplementSymbolLoc_ptr;
  v8 = getPAMediaConversionResourceRoleVideoComplementSymbolLoc_ptr;
  if (!getPAMediaConversionResourceRoleVideoComplementSymbolLoc_ptr)
  {
    v1 = MediaConversionServiceLibrary();
    v6[3] = dlsym(v1, "PAMediaConversionResourceRoleVideoComplement");
    getPAMediaConversionResourceRoleVideoComplementSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1A388970C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *__getPAMediaConversionServicePixelWidthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServicePixelWidthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServicePixelWidthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaConversionServiceLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaConversionServiceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaConversionServiceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76FF1C8;
    v5 = 0;
    MediaConversionServiceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaConversionServiceLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!MediaConversionServiceLibraryCore_frameworkLibrary)
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

uint64_t __MediaConversionServiceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaConversionServiceLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPAMediaConversionServicePixelHeightKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServicePixelHeightKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServicePixelHeightKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPAMediaConversionServiceResourceURLCollectionClass_block_invoke(uint64_t a1)
{
  MediaConversionServiceLibrary();
  result = objc_getClass("PAMediaConversionServiceResourceURLCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPAMediaConversionServiceResourceURLCollectionClass_block_invoke_cold_1();
  }

  getPAMediaConversionServiceResourceURLCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionNameForJobStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionNameForJobStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionNameForJobStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPAImageConversionServiceClientClass_block_invoke(uint64_t a1)
{
  MediaConversionServiceLibrary();
  result = objc_getClass("PAImageConversionServiceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPAImageConversionServiceClientClass_block_invoke_cold_1();
  }

  getPAImageConversionServiceClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPAVideoConversionServiceClientClass_block_invoke(uint64_t a1)
{
  MediaConversionServiceLibrary();
  result = objc_getClass("PAVideoConversionServiceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPAVideoConversionServiceClientClass_block_invoke_cold_1();
  }

  getPAVideoConversionServiceClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceAdjustmentDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceAdjustmentDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceAdjustmentDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceAdjustmentFormatIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceAdjustmentFormatIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceAdjustmentFormatIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceAdjustmentFormatVersionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceAdjustmentFormatVersionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceAdjustmentFormatVersionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceOptionAdjustmentInformationKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceOptionAdjustmentInformationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceOptionAdjustmentInformationKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceOptionApplyOrientationTransformKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceOptionApplyOrientationTransformKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceOptionApplyOrientationTransformKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceOptionRequestReasonKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceOptionRequestReasonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceOptionRequestReasonKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceOptionJobPriorityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceOptionJobPriorityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceOptionJobPriorityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceOptionScaleFactorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceOptionScaleFactorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceOptionScaleFactorKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionServiceOptionMetadataPolicyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionServiceOptionMetadataPolicyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionServiceOptionMetadataPolicyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPAMediaConversionResourceRoleVideoComplementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaConversionServiceLibrary();
  result = dlsym(v2, "PAMediaConversionResourceRoleVideoComplement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAMediaConversionResourceRoleVideoComplementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A388B010(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A3A31DE0();
    if (v3 <= 0x3F)
    {
      result = sub_1A3A2F0C0();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A388B128@<X0>(uint64_t a1@<X8>)
{
  v7 = *(*v1 + 80);
  KeyPath = swift_getKeyPath(byte_1A3A6BAF0, &v7, v7);
  sub_1A388B710(KeyPath);

  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = sub_1A3A31DE0();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1A388B258(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 104);
  swift_beginAccess();
  v5 = sub_1A3A31DE0();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_1A388B320@<X0>(uint64_t a1@<X8>)
{
  v7 = *(*v1 + 80);
  KeyPath = swift_getKeyPath(byte_1A3A6BAB8, &v7, v7);
  sub_1A388B710(KeyPath);

  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1A388B444(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

void *sub_1A388B500()
{
  v0 = sub_1A388C960();
  v1 = v0;
  return v0;
}

id sub_1A388B52C@<X0>(void *a1@<X8>)
{
  v2 = sub_1A388C960();
  *a1 = v2;

  return v2;
}

void sub_1A388B568(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A388B598(v1);
}

void sub_1A388B598(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 120);
  v6 = *(v2 + v5);
  v13 = a1;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC2F8, &qword_1A3A6BA78);
  v12 = *(v4 + 80);
  sub_1A388C330();
  v7 = sub_1A3A31790();
  if (v7)
  {
    v8 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath(byte_1A3A6BA80, v12);
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_1A388B7BC(v10, sub_1A388C478, v11, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A388B8A0()
{
  v1 = *(*v0 + 80);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 96), v1);
  v3 = *(*v0 + 104);
  v4 = sub_1A3A31DE0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v2(v0 + *(*v0 + 112), v1);

  v5 = *(*v0 + 128);
  v6 = sub_1A3A2F0C0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1A388BA0C()
{
  sub_1A388B8A0();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A388BC24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A388BC44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1A388BD40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A388BD60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1A388BDB8(uint64_t a1, id *a2)
{
  result = sub_1A3A31830();
  *a2 = 0;
  return result;
}

uint64_t sub_1A388BE30(uint64_t a1, id *a2)
{
  v3 = sub_1A3A31840();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A388BEB0@<X0>(uint64_t *a2@<X8>)
{
  sub_1A3A31850();
  v3 = sub_1A3A31810();

  *a2 = v3;
  return result;
}

uint64_t sub_1A388BEF4(void *a1, uint64_t *a2)
{
  v2 = sub_1A3A31850();
  v4 = v3;
  if (v2 == sub_1A3A31850() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A3A321C0();
  }

  return v7 & 1;
}

uint64_t sub_1A388BFC4()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

uint64_t sub_1A388C00C(uint64_t a1)
{
  v2 = *v1;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v2);
  return sub_1A3A32300();
}

uint64_t sub_1A388C050@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1A3A31810();

  *a2 = v3;
  return result;
}

uint64_t sub_1A388C0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A388C128(uint64_t a1)
{
  v2 = sub_1A388C0E0(&qword_1EB0FC388, type metadata accessor for Identifier, &unk_1A3A6BED8);
  v3 = sub_1A388C0E0(&qword_1EB0FC390, type metadata accessor for Identifier, &unk_1A3A6BE78);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A388C1E4()
{
  v0 = sub_1A3A31850();
  v1 = MEMORY[0x1A58F7790](v0);

  return v1;
}

uint64_t sub_1A388C220(uint64_t a1)
{
  sub_1A3A31850();
  sub_1A3A318B0();
}

uint64_t sub_1A388C274(uint64_t a1)
{
  sub_1A3A31850();
  sub_1A3A322C0();
  sub_1A3A318B0();
  v1 = sub_1A3A32300();

  return v1;
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

unint64_t sub_1A388C330()
{
  result = qword_1EB0FC300;
  if (!qword_1EB0FC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC2F8, &qword_1A3A6BA78);
    sub_1A388C0E0(&qword_1EB0FC308, sub_1A388C42C, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC300);
  }

  return result;
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

unint64_t sub_1A388C42C()
{
  result = qword_1EB0FC310;
  if (!qword_1EB0FC310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0FC310);
  }

  return result;
}

void sub_1A388C478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 120);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_1A388C4C4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17[-v7];
  v9 = *(v4 + 112);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  v11 = sub_1A3A31790();
  v12 = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    return swift_endAccess();
  }

  else
  {
    *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
    *&v17[-16] = v5;
    *&v17[-8] = v10;
    KeyPath = swift_getKeyPath(byte_1A3A6BAB8, v14);
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v17[-16] = v2;
    *&v17[-8] = a1;
    sub_1A388B7BC(v16, sub_1A388C9E8, &v17[-32], MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A388C6F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_1A3A31DE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(v4 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v17[4] = v11;
  swift_getWitnessTable();
  LOBYTE(v4) = sub_1A3A31790();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    return swift_endAccess();
  }

  else
  {
    *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
    v17[-2] = v5;
    v17[-1] = v11;
    KeyPath = swift_getKeyPath(byte_1A3A6BAF0, v14);
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v2;
    v17[-1] = a1;
    sub_1A388B7BC(v16, sub_1A388CA04, &v17[-4], MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A388C960()
{
  v3 = *(*v0 + 80);
  KeyPath = swift_getKeyPath(byte_1A3A6BA80, &v3);
  sub_1A388B710(KeyPath);

  return *(v0 + *(*v0 + 120));
}

void sub_1A388CB40(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A388CCB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A388CD10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1A388CD9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A3A300B0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC398, &qword_1A3A6C060);
  sub_1A388D00C(v1, (a1 + *(v3 + 44)));
  v4 = sub_1A3A30620();
  sub_1A3A2F520();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3A0, &qword_1A3A6C068) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_1A3A30630();
  sub_1A3A2F520();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3A8, &qword_1A3A6C070) + 36);
  *v23 = v14;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v35 = *v1;
  v36 = *(v1 + 8);
  v24 = *(v1 + 16);
  v33 = *(v1 + 32);
  v34 = v24;
  v25 = swift_allocObject();
  v26 = *(v1 + 16);
  *(v25 + 1) = *v1;
  *(v25 + 2) = v26;
  *(v25 + 3) = *(v1 + 32);
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3B0, &qword_1A3A6C078) + 36));
  *v27 = sub_1A388F14C;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  v28 = swift_allocObject();
  v29 = *(v1 + 16);
  v28[1] = *v1;
  v28[2] = v29;
  v28[3] = *(v1 + 32);
  v30 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3B8, &unk_1A3A6C080) + 36));
  *v30 = 0;
  v30[1] = 0;
  v30[2] = sub_1A388F154;
  v30[3] = v28;
  sub_1A388F6D8(&v35, v32, &qword_1EB0FC3C0, &qword_1A3A6C820);
  sub_1A388F6D8(&v34, v32, &qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A388F6D8(&v33, v32, &qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A388F6D8(&v35, v32, &qword_1EB0FC3C0, &qword_1A3A6C820);
  sub_1A388F6D8(&v34, v32, &qword_1EB0FC3C8, &qword_1A3A6C090);
  return sub_1A388F6D8(&v33, v32, &qword_1EB0FC3C8, &qword_1A3A6C090);
}

uint64_t sub_1A388D00C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3D0, &qword_1A3A6C098);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  *v11 = sub_1A3A2FF40();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3D8, &qword_1A3A6C0A0);
  sub_1A388D668(a1, &v11[*(v12 + 44)]);
  type metadata accessor for ChromeViewModel(0);
  sub_1A388F590(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v61 = sub_1A3A2F650();
  v14 = v13;
  sub_1A3A31480();
  sub_1A3A2F780();
  v57 = v100;
  v64 = v104;
  v59 = v102;
  v60 = v105;
  v113 = v14 & 1;
  v111 = v101;
  v109 = v103;
  v58 = sub_1A3A30620();
  sub_1A3A2F520();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v113;
  v54 = v111;
  v56 = v109;
  LOBYTE(v75) = 0;
  v24 = *(a1 + 32);
  v25 = a1[5];
  v107 = *(a1 + 8);
  v106 = *a1;
  v26 = v106;
  v27 = v107;
  v28 = sub_1A388F2D8(v106, v107, v24, v25);
  v55 = sub_1A3A314F0();
  if (v27 == 1)
  {
    v97 = v26;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v29 = v3;
    v30 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v106, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v4 + 8))(v6, v29);
    v26 = v97;
  }

  swift_getKeyPath(byte_1A3A6C0A8);
  v75 = v26;
  sub_1A3A2F080();

  v31 = *(v26 + 928);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A6C0D0);
  v75 = v31;
  sub_1A388F590(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  v63 = *(v31 + 56);

  v32 = v65;
  sub_1A388F6D8(v11, v65, &qword_1EB0FC3D0, &qword_1A3A6C098);
  v33 = v32;
  v34 = v62;
  sub_1A388F6D8(v33, v62, &qword_1EB0FC3D0, &qword_1A3A6C098);
  v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3E0, &qword_1A3A6C0F8) + 48)];
  v36 = v61;
  *&v66 = v61;
  v53 = v23;
  BYTE8(v66) = v23;
  *(&v66 + 9) = *v112;
  HIDWORD(v66) = *&v112[3];
  v62 = v11;
  v37 = v57;
  *&v67 = v57;
  v38 = v54;
  BYTE8(v67) = v54;
  *(&v67 + 9) = *v110;
  HIDWORD(v67) = *&v110[3];
  v39 = v59;
  v40 = v60;
  *&v68 = v59;
  v41 = v56;
  BYTE8(v68) = v56;
  *(&v68 + 9) = *v108;
  HIDWORD(v68) = *&v108[3];
  *&v69 = v64;
  *(&v69 + 1) = v60;
  LOBYTE(v31) = v58;
  LOBYTE(v70) = v58;
  DWORD1(v70) = *&v98[3];
  *(&v70 + 1) = *v98;
  *(&v70 + 1) = v16;
  *&v71 = v18;
  *(&v71 + 1) = v20;
  *&v72 = v22;
  BYTE8(v72) = 0;
  *(&v72 + 9) = *v99;
  HIDWORD(v72) = *&v99[3];
  *&v73 = v28;
  v42 = v55;
  v43 = v63;
  *(&v73 + 1) = v55;
  v74 = v63;
  v44 = v66;
  v45 = v67;
  v46 = v69;
  *(v35 + 2) = v68;
  *(v35 + 3) = v46;
  *v35 = v44;
  *(v35 + 1) = v45;
  v47 = v70;
  v48 = v71;
  v49 = v72;
  v50 = v73;
  *(v35 + 16) = v43;
  *(v35 + 6) = v49;
  *(v35 + 7) = v50;
  *(v35 + 4) = v47;
  *(v35 + 5) = v48;
  sub_1A388F6D8(&v66, &v75, &qword_1EB0FC3E8, &qword_1A3A6C100);
  sub_1A388F740(v62, &qword_1EB0FC3D0, &qword_1A3A6C098);
  v75 = v36;
  v76 = v53;
  *v77 = *v112;
  *&v77[3] = *&v112[3];
  v78 = v37;
  v79 = v38;
  *v80 = *v110;
  *&v80[3] = *&v110[3];
  v81 = v39;
  v82 = v41;
  *&v83[3] = *&v108[3];
  *v83 = *v108;
  v84 = v64;
  v85 = v40;
  v86 = v31;
  *&v87[3] = *&v98[3];
  *v87 = *v98;
  v88 = v16;
  v89 = v18;
  v90 = v20;
  v91 = v22;
  v92 = 0;
  *v93 = *v99;
  *&v93[3] = *&v99[3];
  v94 = v28;
  v95 = v42;
  v96 = v63;
  sub_1A388F740(&v75, &qword_1EB0FC3E8, &qword_1A3A6C100);
  return sub_1A388F740(v65, &qword_1EB0FC3D0, &qword_1A3A6C098);
}

uint64_t sub_1A388D668@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v84 = a2;
  v3 = sub_1A3A2F0F0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1A3A2FEE0();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3F0, &qword_1A3A6C108);
  MEMORY[0x1EEE9AC00](v91);
  v8 = &v80 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3F8, &qword_1A3A6C110);
  MEMORY[0x1EEE9AC00](v92);
  v10 = &v80 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC400, &qword_1A3A6C118);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v80 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC408, &qword_1A3A6C120);
  MEMORY[0x1EEE9AC00](v85);
  v95 = &v80 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC410, &qword_1A3A6C128);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v80 - v17;
  v110 = *(a1 + 8);
  v109 = *a1;
  v18 = v109;
  v19 = v110;
  sub_1A3A2EA60();
  v20 = v18;
  v98 = v19;
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v109, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v96 + 8))(v6, v97);
    v20 = v100;
  }

  swift_getKeyPath(byte_1A3A6C0A8);
  *&v100 = v20;
  sub_1A388F590(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v22 = *(v20 + 928);
  sub_1A3A2EA60();

  v24 = *(a1 + 1);
  v107 = *(a1 + 2);
  v108 = v24;
  v25 = swift_allocObject();
  v26 = *(a1 + 1);
  v25[1] = *a1;
  v25[2] = v26;
  v25[3] = *(a1 + 2);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v22;
  v27[5] = KeyPath;
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = sub_1A388F620;
  v28[5] = v25;
  sub_1A388F6D8(&v109, &v100, &qword_1EB0FC3C0, &qword_1A3A6C820);
  sub_1A388F6D8(&v108, &v100, &qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A388F6D8(&v107, &v100, &qword_1EB0FC3C8, &qword_1A3A6C090);
  type metadata accessor for CGPoint(0);
  sub_1A3A311C0();
  v89 = v100;
  v99 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FB0();
  v87 = *(&v100 + 1);
  v88 = v100;
  v86 = v101;
  sub_1A3A2EA60();
  v29 = v18;
  if ((v98 & 1) == 0)
  {
    sub_1A3A31C30();
    v30 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v109, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v96 + 8))(v6, v97);
    v29 = v100;
  }

  swift_getKeyPath(byte_1A3A6C0A8);
  *&v100 = v29;
  sub_1A3A2F080();

  v31 = *(v29 + 928);
  sub_1A3A2EA60();

  swift_getKeyPath("@riG");
  *&v100 = v31;
  sub_1A388F590(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v32 = v18;
  if ((v98 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v109, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v96 + 8))(v6, v97);
    v32 = v100;
  }

  swift_getKeyPath(byte_1A3A6C0A8);
  *&v100 = v32;
  sub_1A3A2F080();

  v34 = *(v32 + 928);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A6C0D0);
  *&v100 = v34;
  sub_1A3A2F080();

  v35 = *(v34 + 56);

  v36 = sub_1A388F270(v35);
  sub_1A388E764(v36);

  MEMORY[0x1A58F4F60]();
  sub_1A3A2F100();
  v37 = &v8[*(v91 + 36)];
  *v37 = 0x3FF0000000000000;
  *(v37 + 4) = 0;
  v38 = sub_1A3A31480();
  sub_1A3A2FBF0(&v100, 0, 1, 0, 1, v38, v39);
  sub_1A388F670(v8, v10, &qword_1EB0FC3F0, &qword_1A3A6C108);
  v40 = &v10[*(v92 + 36)];
  v41 = v105;
  *(v40 + 4) = v104;
  *(v40 + 5) = v41;
  *(v40 + 6) = v106;
  v42 = v101;
  *v40 = v100;
  *(v40 + 1) = v42;
  v43 = v103;
  *(v40 + 2) = v102;
  *(v40 + 3) = v43;
  if (qword_1EB0FC188 != -1)
  {
    swift_once();
  }

  v44 = qword_1EB101B10;
  v45 = v94;
  sub_1A388F670(v10, v94, &qword_1EB0FC3F8, &qword_1A3A6C110);
  v46 = (v45 + *(v93 + 36));
  *v46 = v44;
  v46[1] = sub_1A388F058;
  v46[2] = 0;
  sub_1A3A2EA60();
  v47 = v18;
  v48 = v95;
  if ((v98 & 1) == 0)
  {
    sub_1A3A31C30();
    v49 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v109, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v96 + 8))(v6, v97);
    v47 = v99;
  }

  swift_getKeyPath(" riG");
  *&v99 = v47;
  sub_1A3A2F080();

  v50 = *(v47 + 848);
  v51 = *(v47 + 856);

  if (v51)
  {
    __break(1u);
  }

  else
  {
    v53 = sub_1A3A30460();
    sub_1A3A31590();
    v55 = v54;
    v57 = v56;
    sub_1A388F670(v45, v48, &qword_1EB0FC400, &qword_1A3A6C118);
    v58 = v48 + *(v85 + 36);
    strcpy(v58, "DPadGeometryID");
    *(v58 + 15) = -18;
    *(v58 + 16) = v50;
    *(v58 + 24) = v53;
    *(v58 + 32) = v55;
    *(v58 + 40) = v57;
    *(v58 + 48) = 1;
    v59 = sub_1A3A31810();
    v60 = CAMLocalizedFrameworkString(v59, 0);

    v61 = sub_1A3A31850();
    v63 = v62;

    *&v99 = v61;
    *(&v99 + 1) = v63;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x797274656D6F6547, 0xEA00000000004449);

    v64 = v99;
    sub_1A3A2EA60();
    if ((v98 & 1) == 0)
    {
      sub_1A3A31C30();
      v65 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v109, &qword_1EB0FC3C0, &qword_1A3A6C820);
      (*(v96 + 8))(v6, v97);
      v18 = v99;
    }

    swift_getKeyPath(" riG");
    *&v99 = v18;
    sub_1A3A2F080();

    v66 = *(v18 + 848);
    v67 = *(v18 + 856);

    if ((v67 & 1) == 0)
    {
      v68 = sub_1A3A30460();
      sub_1A3A31590();
      v70 = v69;
      v72 = v71;
      v73 = v80;
      sub_1A388F670(v48, v80, &qword_1EB0FC408, &qword_1A3A6C120);
      v74 = v73 + *(v81 + 36);
      *v74 = v64;
      *(v74 + 16) = v66;
      *(v74 + 24) = v68;
      *(v74 + 32) = v70;
      *(v74 + 40) = v72;
      *(v74 + 48) = 1;
      v75 = v82;
      sub_1A388F670(v73, v82, &qword_1EB0FC410, &qword_1A3A6C128);
      v76 = v83;
      sub_1A388F6D8(v75, v83, &qword_1EB0FC410, &qword_1A3A6C128);
      v77 = v84;
      *v84 = 0;
      *(v77 + 8) = 1;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC418, &qword_1A3A6C1A8);
      sub_1A388F6D8(v76, v77 + *(v78 + 48), &qword_1EB0FC410, &qword_1A3A6C128);
      v79 = v77 + *(v78 + 64);
      *v79 = 0;
      v79[8] = 1;
      sub_1A388F740(v75, &qword_1EB0FC410, &qword_1A3A6C128);
      return sub_1A388F740(v76, &qword_1EB0FC410, &qword_1A3A6C128);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A388E5A4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v16 = *a2;
  v17 = *(a2 + 8);
  LOBYTE(a2) = v17;
  sub_1A3A2EA60();
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v16, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v5 + 8))(v7, v4);
    v10 = v15[1];
  }

  v12 = v10[153];
  v13 = v10[154];
  __swift_project_boxed_opaque_existential_1(v10 + 150, v12);
  (*(v13 + 8))(v8, v9, 0, 108, v10, v12, v13);
}

unint64_t sub_1A388E764(uint64_t a1)
{
  v1 = sub_1A3A31850();
  v3 = v2;
  if (v1 == sub_1A3A31850() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_1A3A321C0();

  if (v6)
  {
    return 0xD000000000000012;
  }

  v7 = sub_1A3A31850();
  v9 = v8;
  if (v7 == sub_1A3A31850() && v9 == v10)
  {
    goto LABEL_16;
  }

  v12 = sub_1A3A321C0();

  if (v12)
  {
    return 0xD000000000000010;
  }

  v13 = 0x4152475F45534F52;
  v14 = sub_1A3A31850();
  v16 = v15;
  if (v14 == sub_1A3A31850() && v16 == v17)
  {
    goto LABEL_13;
  }

  v19 = sub_1A3A321C0();

  if (v19)
  {
    return v13;
  }

  v13 = 0x4152475F444C4F47;
  v20 = sub_1A3A31850();
  v22 = v21;
  if (v20 == sub_1A3A31850() && v22 == v23)
  {
    goto LABEL_13;
  }

  v24 = sub_1A3A321C0();

  if (v24)
  {
    return v13;
  }

  v25 = 0x52475F5245424D41;
  v26 = sub_1A3A31850();
  v28 = v27;
  if (v26 == sub_1A3A31850() && v28 == v29)
  {
    goto LABEL_26;
  }

  v30 = sub_1A3A321C0();

  if (v30)
  {
    return v25;
  }

  v31 = sub_1A3A31850();
  v33 = v32;
  if (v31 == sub_1A3A31850() && v33 == v34)
  {

    return 0xD000000000000011;
  }

  v35 = sub_1A3A321C0();

  if (v35)
  {
    return 0xD000000000000011;
  }

  v36 = sub_1A3A31850();
  v38 = v37;
  if (v36 == sub_1A3A31850() && v38 == v39)
  {
    goto LABEL_16;
  }

  v40 = sub_1A3A321C0();

  if (v40)
  {
    return 0xD000000000000010;
  }

  v41 = sub_1A3A31850();
  v43 = v42;
  if (v41 == sub_1A3A31850() && v43 == v44)
  {
LABEL_16:

    return 0xD000000000000010;
  }

  v45 = sub_1A3A321C0();

  if (v45)
  {
    return 0xD000000000000010;
  }

  v46 = sub_1A3A31850();
  v48 = v47;
  if (v46 == sub_1A3A31850() && v48 == v49)
  {

    return 0xD000000000000011;
  }

  v50 = sub_1A3A321C0();

  if (v50)
  {
    return 0xD000000000000011;
  }

  v51 = sub_1A3A31850();
  v53 = v52;
  if (v51 == sub_1A3A31850() && v53 == v54)
  {

    return 0xD000000000000011;
  }

  v55 = sub_1A3A321C0();

  if (v55)
  {
    return 0xD000000000000011;
  }

  v25 = 0x52475F5445495551;
  v56 = sub_1A3A31850();
  v58 = v57;
  if (v56 == sub_1A3A31850() && v58 == v59)
  {
LABEL_26:

    return v25;
  }

  v60 = sub_1A3A321C0();

  result = 0x52475F5445495551;
  if (v60)
  {
    return result;
  }

  v13 = 0x4152475F595A4F43;
  v61 = sub_1A3A31850();
  v63 = v62;
  if (v61 == sub_1A3A31850() && v63 == v64)
  {
LABEL_13:

    return v13;
  }

  v65 = sub_1A3A321C0();

  result = 0x4152475F595A4F43;
  if ((v65 & 1) == 0)
  {
    v66 = sub_1A3A31850();
    v68 = v67;
    if (v66 == sub_1A3A31850() && v68 == v69)
    {

      return 0xD000000000000011;
    }

    v70 = sub_1A3A321C0();

    if (v70)
    {
      return 0xD000000000000011;
    }

    v71 = sub_1A3A31850();
    v73 = v72;
    if (v71 != sub_1A3A31850() || v73 != v74)
    {
      v75 = sub_1A3A321C0();

      if (v75)
      {
        return 0xD000000000000012;
      }

      v76 = sub_1A3A31850();
      v78 = v77;
      if (v76 != sub_1A3A31850() || v78 != v79)
      {
        v80 = sub_1A3A321C0();

        if ((v80 & 1) == 0)
        {
          v81 = sub_1A3A31850();
          v83 = v82;
          if (v81 == sub_1A3A31850() && v83 == v84)
          {
          }

          else
          {
            v85 = sub_1A3A321C0();

            if ((v85 & 1) == 0)
            {
              return 0;
            }
          }

          return 0xD000000000000013;
        }

        return 0xD000000000000012;
      }
    }

LABEL_14:

    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_1A388F080(uint64_t a1)
{
  sub_1A3A31500();
  sub_1A3A314B0();

  sub_1A3A2F8A0();
}

double sub_1A388F20C@<D0>(_OWORD *a3@<X8>)
{
  sub_1A3A2EA60();
  swift_getAtKeyPath();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_1A388F270(unint64_t a1)
{
  if (a1 < 0x10)
  {
    return **(&unk_1E76FF2E0 + a1);
  }

  result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeSmartStylesControls.swift", 40, 2, 93, 0);
  __break(1u);
  return result;
}

double sub_1A388F2D8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = sub_1A3A2FEE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v20) = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  if (v19[15] != 1)
  {
    return 0.0;
  }

  if (a2)
  {
    v20 = a1;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v13 = objc_opt_self();
  v14 = v20;
  swift_getKeyPath(byte_1A3A6C0A8);
  v20 = v14;
  sub_1A388F590(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v15 = *(v14 + 928);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A6C0D0);
  v20 = v15;
  sub_1A388F590(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  v16 = *(v15 + 56);

  v17 = [v13 canCustomizeCastIntensityForCastType_];
  result = 1.0;
  if ((v17 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1A388F590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_1A388F634(__int128 *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_1A388F670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A388F6D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A388F740(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1A388F7E4()
{
  result = qword_1EB0FC420;
  if (!qword_1EB0FC420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC3B8, &unk_1A3A6C080);
    sub_1A388F870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC420);
  }

  return result;
}

unint64_t sub_1A388F870()
{
  result = qword_1EB0FC428;
  if (!qword_1EB0FC428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC3B0, &qword_1A3A6C078);
    sub_1A388F8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC428);
  }

  return result;
}

unint64_t sub_1A388F8FC()
{
  result = qword_1EB0FC430;
  if (!qword_1EB0FC430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC3A8, &qword_1A3A6C070);
    sub_1A388F988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC430);
  }

  return result;
}

unint64_t sub_1A388F988()
{
  result = qword_1EB0FC438;
  if (!qword_1EB0FC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC3A0, &qword_1A3A6C068);
    sub_1A388FA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC438);
  }

  return result;
}

unint64_t sub_1A388FA14()
{
  result = qword_1EB0FC440;
  if (!qword_1EB0FC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC448, &qword_1A3A6C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC440);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1A388FA98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A388FAE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A388FB54@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v56 = a3;
  v48 = a5;
  v7 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2FEE0();
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC450, &qword_1A3A6C2D8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v44 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC458, &qword_1A3A6C2E0);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v44 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC460, &qword_1A3A6C2E8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v44 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC468, &qword_1A3A6C2F0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v44 - v19;
  sub_1A3A2EA60();
  v20 = a1;
  v59 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v58 + 8))(v11, v9);
    v20 = v63;
  }

  swift_getKeyPath(byte_1A3A6C2F8);
  *&v63 = v20;
  sub_1A3890F3C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v20 + 1192))
  {
    sub_1A3A2EA60();
    v23 = sub_1A38BC058(0xCuLL);

    (*(v23 + 56))(v24);

    sub_1A38907D0(&v14[*(v12 + 36)], v57);
    sub_1A3890834(v14);
    sub_1A3A2EA60();
    v25 = a1;
    if ((v59 & 1) == 0)
    {
      sub_1A3A31C30();
      v26 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v58 + 8))(v11, v9);
      v25 = v63;
    }

    swift_getKeyPath(byte_1A3A6C320);
    *&v63 = v25;
    sub_1A3A2F080();

    sub_1A3A2EA60();
    v27 = a1;
    if ((v59 & 1) == 0)
    {
      sub_1A3A31C30();
      v28 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v58 + 8))(v11, v9);
      v27 = v63;
    }

    v45 = v9;
    v29 = v55;
    v30 = (v55 >> 8) & 1;
    swift_getKeyPath(byte_1A3A6C320);
    *&v63 = v27;
    sub_1A3A2F080();

    sub_1A3A31480();
    sub_1A3A2F780();
    v31 = v51;
    sub_1A3890890(v57, v51);
    v32 = (v31 + *(v49 + 36));
    v33 = v64;
    *v32 = v63;
    v32[1] = v33;
    v32[2] = v65;
    v34 = sub_1A38908F4();
    sub_1A388F670(v31, v17, &qword_1EB0FC450, &qword_1A3A6C2D8);
    v35 = &v17[*(v50 + 36)];
    *v35 = v34;
    *(v35 + 4) = 256;
    v36 = v52;
    sub_1A388F670(v17, v52, &qword_1EB0FC458, &qword_1A3A6C2E0);
    v37 = v54;
    *(v36 + *(v54 + 36)) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = v59 & 1;
    v39 = v56;
    *(v38 + 32) = v56;
    *(v38 + 40) = v29;
    *(v38 + 41) = v30;
    sub_1A3A2EA60();
    sub_1A3890B88(v39, v29, BYTE1(v29) & 1);
    v40 = sub_1A3890B94();
    v41 = v53;
    sub_1A3A309D0();

    result = sub_1A3890DEC(v36);
    v62 = 12;
    if ((v29 & 0x100) != 0)
    {
      if (v29)
      {
        goto LABEL_14;
      }

LABEL_12:
      v60 = v37;
      v61 = v40;
      swift_getOpaqueTypeConformance2();
      sub_1A3890E54();
      v43 = v47;
      sub_1A3A30B80();
      return (*(v46 + 8))(v41, v43);
    }

    sub_1A3A2EA60();
    sub_1A3A31C30();
    v42 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3890B50(v39, v29, 0);
    result = (*(v58 + 8))(v11, v45);
    if ((v61 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1A389040C(void *a1, char a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  v11 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v11 = v28;
  }

  swift_getKeyPath(byte_1A3A6C2F8, v5);
  v28 = v11;
  sub_1A3890F3C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (v11[149])
  {
    sub_1A3A2EA60();
    v13 = sub_1A38BC058(0xCuLL);

    (*(v13 + 56))(v14);

    v15 = *&v10[*(v8 + 44)];
    sub_1A3A2EA60();
    sub_1A3890834(v10);
    v16 = v15(0, 1);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = v21;

    if (v23 <= 0xFB)
    {
      sub_1A3A2EA60();
      if ((a2 & 1) == 0)
      {
        sub_1A3A31C30();
        v24 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v27 + 8))(v7, v4);
        a1 = v28;
      }

      v25 = a1[153];
      v26 = a1[154];
      __swift_project_boxed_opaque_existential_1(a1 + 150, v25);
      (*(v26 + 8))(v16, v18, v20, v22, a1, v25, v26);

      sub_1A3890EA8(v16, v18, v20, v22);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A38907D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeElementIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3890834(uint64_t a1)
{
  v2 = type metadata accessor for ChromeElementState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3890890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeElementIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A38908F4()
{
  v0 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v3 = off_1ED997FE0;
  swift_getKeyPath("ppiG");
  v16 = v3;
  sub_1A3890F3C(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v4 = v3[2];
  swift_getKeyPath("PpiG");
  v16 = v4;
  sub_1A3890F3C(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v5 = *(v4 + 64);

  if (v5)
  {
    v6 = *(v0 + 20);
    v7 = *MEMORY[0x1E697F468];
    v8 = sub_1A3A30000();
    (*(*(v8 - 8) + 104))(&v2[v6], v7, v8);
    __asm { FMOV            V0.2D, #10.0 }

    *v2 = _Q0;
    sub_1A3890F3C(&qword_1EB0FC480, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  }

  else
  {
    sub_1A3890F84();
  }

  return sub_1A3A31290();
}

uint64_t sub_1A3890B50(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_1A3890B88(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1A3A2EA60();
  }

  return v3;
}

unint64_t sub_1A3890B94()
{
  result = qword_1ED996618;
  if (!qword_1ED996618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC460, &qword_1A3A6C2E8);
    sub_1A3890C38();
    sub_1A3890D98(&qword_1ED996640, &qword_1EB0FC478, &unk_1A3A75B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996618);
  }

  return result;
}

unint64_t sub_1A3890C38()
{
  result = qword_1ED996620;
  if (!qword_1ED996620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC458, &qword_1A3A6C2E0);
    sub_1A3890CDC();
    sub_1A3890D98(&qword_1ED996638, &qword_1EB0FC470, &qword_1A3A6C348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996620);
  }

  return result;
}

unint64_t sub_1A3890CDC()
{
  result = qword_1ED996628;
  if (!qword_1ED996628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC450, &qword_1A3A6C2D8);
    sub_1A3890F3C(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996628);
  }

  return result;
}

uint64_t sub_1A3890D98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A3890DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC460, &qword_1A3A6C2E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3890E54()
{
  result = qword_1ED996648;
  if (!qword_1ED996648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996648);
  }

  return result;
}

void sub_1A3890EA8(id a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    sub_1A3890EBC(a1, a2, a3, a4);
  }
}

void sub_1A3890EBC(id a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 2;
  if (v4 > 0x20)
  {
    if (v4 == 33)
    {
      sub_1A3890EFC(a1, a2, a3, a4 & 3);
    }

    else if (v4 == 35)
    {
LABEL_4:
    }
  }

  else if (v4 == 13 || v4 == 26)
  {
    goto LABEL_4;
  }
}

uint64_t sub_1A3890EFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_1A3890F2C(a1);
  }

  if (a4 == 1)
  {
    return sub_1A3890F1C(a1);
  }

  return a1;
}

uint64_t sub_1A3890F1C(uint64_t result)
{
  if (result != 35)
  {
    return sub_1A3890F2C(result);
  }

  return result;
}

unint64_t sub_1A3890F2C(unint64_t result)
{
  if (result >= 0x23)
  {
  }

  return result;
}

uint64_t sub_1A3890F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3890F84()
{
  result = qword_1ED996660;
  if (!qword_1ED996660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996660);
  }

  return result;
}

id CAMDockKitController.__allocating_init(motionController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A38962F8(a1);

  return v4;
}

id CAMDockKitController.init(motionController:)(void *a1)
{
  v2 = sub_1A38962F8(a1);

  return v2;
}

uint64_t sub_1A3891048()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A38910D8;

  return sub_1A38914F4();
}

uint64_t sub_1A38910D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A38911CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A3896E40(a3, v25 - v10);
  v12 = sub_1A3A31AD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A3A2EA60();
  if (v14 == 1)
  {
    sub_1A388F740(v11, &qword_1EB0FC488, &qword_1A3A6C3A0);
  }

  else
  {
    sub_1A3A31AC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A3A31A70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A3A318A0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A3A2EA60();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A388F740(a3, &qword_1EB0FC488, &qword_1A3A6C3A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A388F740(a3, &qword_1EB0FC488, &qword_1A3A6C3A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A38914F4()
{
  v1[2] = v0;
  v2 = sub_1A3A2F2A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A38915CC, 0, 0);
}

uint64_t sub_1A38915CC()
{
  v1 = v0[2];
  v2 = sub_1A3A2EED0();
  sub_1A3A2EEA0();
  v3 = objc_allocWithZone(v2);
  v4 = sub_1A3A2EEB0();
  sub_1A3A2EEC0();

  v5 = sub_1A3A32310();
  v6 = [v5 BOOLValue];

  sub_1A3A2EE90();
  v7 = objc_allocWithZone(v2);
  v8 = sub_1A3A2EEB0();
  sub_1A3A2EEC0();

  v9 = sub_1A3A32310();
  LODWORD(v2) = [v9 BOOLValue];

  *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_connectedState) = v6 ^ 1;
  *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_trackingState) = v2;
  if ((v6 ^ 1))
  {
    v12 = v0[4];
    v13 = v0[2];
    v14 = *(v13 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
    sub_1A3896DD0(&qword_1ED9966A0, type metadata accessor for CAMDockKitController, &protocol conformance descriptor for CAMDockKitController);
    v15 = v14;
    sub_1A3A2EE30();

    (*(v12 + 16))(v0[7], v13 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
    v16 = sub_1A3A2F280();
    v17 = sub_1A3A31C40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A3640000, v16, v17, "registered for state events", v18, 2u);
      MEMORY[0x1A58FAC10](v18, -1, -1);
    }

    (*(v0[4] + 8))(v0[7], v0[3]);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_1A38919E0;

    return sub_1A3894618();
  }
}

uint64_t sub_1A38919E0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A3891AE0, 0, 0);
}

uint64_t sub_1A3891AE0()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[2];
    v3 = *(v2 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory);
    *(v2 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory) = v1;
    v1;

    v15 = (*MEMORY[0x1E699A278] + MEMORY[0x1E699A278]);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_1A3891E4C;
    v5 = v0[2];

    return v15(v5);
  }

  else
  {
    v7 = v0[4];
    v8 = v0[2];
    v9 = *(v8 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
    sub_1A3896DD0(&qword_1ED9966A0, type metadata accessor for CAMDockKitController, &protocol conformance descriptor for CAMDockKitController);
    v10 = v9;
    sub_1A3A2EE30();

    (*(v7 + 16))(v0[7], v8 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
    v11 = sub_1A3A2F280();
    v12 = sub_1A3A31C40();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A3640000, v11, v12, "registered for state events", v13, 2u);
      MEMORY[0x1A58FAC10](v13, -1, -1);
    }

    (*(v0[4] + 8))(v0[7], v0[3]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A3891E4C()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A38923B0, 0, 0);
  }

  else
  {
    v6 = (*MEMORY[0x1E699A288] + MEMORY[0x1E699A288]);
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_1A3891FDC;
    v4 = v2[2];

    return v6(v4);
  }
}

uint64_t sub_1A3891FDC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1A389279C;
  }

  else
  {
    v2 = sub_1A38920F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A38920F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v3 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
  sub_1A3896DD0(&qword_1ED9966A0, type metadata accessor for CAMDockKitController, &protocol conformance descriptor for CAMDockKitController);
  v5 = v4;
  sub_1A3A2EE30();

  v6 = *(v2 + 16);
  v7 = *(v0 + 24);
  if (v1)
  {
    v8 = (v0 + 40);
    v6(*(v0 + 40), v3 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v7);
    v9 = v1;
    v10 = sub_1A3A2F280();
    v11 = sub_1A3A31C20();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1A3640000, v10, v11, "failed registering for state events, err %@", v12, 0xCu);
      sub_1A388F740(v13, &qword_1EB0FC4A8, &qword_1A3A79010);
      MEMORY[0x1A58FAC10](v13, -1, -1);
      MEMORY[0x1A58FAC10](v12, -1, -1);

      goto LABEL_8;
    }
  }

  else
  {
    v8 = (v0 + 56);
    v6(*(v0 + 56), v3 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v7);
    v10 = sub_1A3A2F280();
    v16 = sub_1A3A31C40();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3640000, v10, v16, "registered for state events", v17, 2u);
      MEMORY[0x1A58FAC10](v17, -1, -1);
    }
  }

LABEL_8:
  (*(*(v0 + 32) + 8))(*v8, *(v0 + 24));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A38923B0()
{
  v1 = v0[11];
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v2 = v1;
  v3 = sub_1A3A2F280();
  v4 = sub_1A3A31C20();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3640000, v3, v4, "failed starting system events data, err %@", v8, 0xCu);
    sub_1A388F740(v9, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v9, -1, -1);
    MEMORY[0x1A58FAC10](v8, -1, -1);
    v6 = v3;
    v3 = v7;
  }

  (*(v0[4] + 8))(v0[6], v0[3]);
  v12 = v0[4];
  v13 = v0[2];
  v14 = *(v13 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
  sub_1A3896DD0(&qword_1ED9966A0, type metadata accessor for CAMDockKitController, &protocol conformance descriptor for CAMDockKitController);
  v15 = v14;
  sub_1A3A2EE30();

  (*(v12 + 16))(v0[7], v13 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v16 = sub_1A3A2F280();
  v17 = sub_1A3A31C40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A3640000, v16, v17, "registered for state events", v18, 2u);
    MEMORY[0x1A58FAC10](v18, -1, -1);
  }

  (*(v0[4] + 8))(v0[7], v0[3]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A389279C()
{
  v1 = v0[13];
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v2 = v1;
  v3 = sub_1A3A2F280();
  v4 = sub_1A3A31C20();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3640000, v3, v4, "failed starting system events data, err %@", v8, 0xCu);
    sub_1A388F740(v9, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v9, -1, -1);
    MEMORY[0x1A58FAC10](v8, -1, -1);
    v6 = v3;
    v3 = v7;
  }

  (*(v0[4] + 8))(v0[6], v0[3]);
  v12 = v0[4];
  v13 = v0[2];
  v14 = *(v13 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
  sub_1A3896DD0(&qword_1ED9966A0, type metadata accessor for CAMDockKitController, &protocol conformance descriptor for CAMDockKitController);
  v15 = v14;
  sub_1A3A2EE30();

  (*(v12 + 16))(v0[7], v13 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v16 = sub_1A3A2F280();
  v17 = sub_1A3A31C40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A3640000, v16, v17, "registered for state events", v18, 2u);
    MEMORY[0x1A58FAC10](v18, -1, -1);
  }

  (*(v0[4] + 8))(v0[7], v0[3]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A3892BDC()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_captureMode);
  v0[3] = *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_panoController);
  if (v2 == 3)
  {
    sub_1A3A2EA60();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A3892D14;

    return MEMORY[0x1EEE02788]();
  }

  else
  {
    sub_1A3A2EA60();
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1A3892E24;

    return MEMORY[0x1EEE02798]();
  }
}

uint64_t sub_1A3892D14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A3892E24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A3892F34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3897340;

  return sub_1A38940BC();
}

BOOL sub_1A3892FC4()
{
  v1 = sub_1A3A2EE80();
  result = 0;
  if (v1 == sub_1A3A2EE80())
  {
    v2 = sub_1A3A2EEE0();
    if (v2 == sub_1A3A2EEE0() && *(v0 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_captureMode) != 7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A389307C(uint64_t a1, double a2, double a3)
{
  v4 = sub_1A3A2F2A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1A3A2EE80();
  if (v11 == sub_1A3A2EE80() && (v12 = sub_1A3A2EEE0(), v12 == sub_1A3A2EEE0()))
  {
    sub_1A3895E30();
    v14 = v13;
    v16 = v15;
    v17 = sub_1A3A31AD0();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;
    v18[5] = v14;
    v18[6] = v16;
    v19 = v3;
    sub_1A38911CC(0, 0, v10, &unk_1A3A6C3B0, v18);
  }

  else
  {
    (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v4);
    v21 = sub_1A3A2F280();
    v22 = sub_1A3A31C10();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A3640000, v21, v22, "No connected and tracking DockKit accessory", v23, 2u);
      MEMORY[0x1A58FAC10](v23, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A3893334(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  v7 = sub_1A3A2F2A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A38933F8, 0, 0);
}

uint64_t sub_1A38933F8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
  v0[8] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1A38934B0;
  v3.n128_u64[0] = v0[3];
  v4.n128_u64[0] = v0[4];

  return MEMORY[0x1EEE026A8](v3, v4);
}

uint64_t sub_1A38934B0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A38935F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A38935F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);

  (*(v4 + 16))(v2, v5 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v3);
  v6 = v1;
  v7 = sub_1A3A2F280();
  v8 = sub_1A3A31C20();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  if (v9)
  {
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v11;
    *(v13 + 22) = 2112;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1A3640000, v7, v8, "Error selecting subject at %f, %f : %@", v13, 0x20u);
    sub_1A388F740(v14, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v14, -1, -1);
    MEMORY[0x1A58FAC10](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A3893834(uint64_t a1)
{
  v3 = sub_1A3A2F2A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  *&v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_captureMode] = a1;
  v10 = sub_1A3A2EE80();
  if (v10 == sub_1A3A2EE80() && (v11 = sub_1A3A2EEE0(), v11 == sub_1A3A2EEE0()))
  {
    v12 = sub_1A3A31AD0();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v1;
    v14 = v1;
    sub_1A38911CC(0, 0, v9, &unk_1A3A6C478, v13);
  }

  else
  {
    (*(v4 + 16))(v6, &v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger], v3);
    v16 = sub_1A3A2F280();
    v17 = sub_1A3A31C10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A3640000, v16, v17, "No connected and tracking DockKit accessory", v18, 2u);
      MEMORY[0x1A58FAC10](v18, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A3893AE4()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_captureMode);
  v0[3] = *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_panoController);
  if (v2 == 3)
  {
    sub_1A3A2EA60();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A3893C1C;

    return MEMORY[0x1EEE02788]();
  }

  else
  {
    sub_1A3A2EA60();
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1A3893D78;

    return MEMORY[0x1EEE02798]();
  }
}

uint64_t sub_1A3893C1C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1A3893ED4;

  return sub_1A38940BC();
}

uint64_t sub_1A3893D78()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1A3893ED4;

  return sub_1A38940BC();
}

uint64_t sub_1A3893ED4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_1A389401C()
{
  v0 = sub_1A3A2EE80();
  if (v0 != sub_1A3A2EE80())
  {
    return 0;
  }

  v1 = sub_1A3A2EEE0();
  return v1 == sub_1A3A2EEE0();
}

uint64_t sub_1A38940BC()
{
  v1[5] = v0;
  v2 = sub_1A3A2F2A0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1A3A2ECE0();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A38941D8, 0, 0);
}

uint64_t sub_1A38941D8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  *(v4 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary) = 0;

  sub_1A3A2ECB0();
  v5 = OBJC_IVAR____TtC8CameraUI20CAMDockKitController_trackingSummaryResetTime;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  v6 = *(v4 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
  v0[12] = v6;
  v6;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1A389430C;
  v8 = MEMORY[0x1E69E7CC0];

  return MEMORY[0x1EEE026B8](v8);
}

uint64_t sub_1A389430C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A389445C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A389445C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v4);
  v6 = v1;
  v7 = sub_1A3A2F280();
  v8 = sub_1A3A31C20();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 112);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1A3640000, v7, v8, "Error resetting subject selection : %@", v11, 0xCu);
    sub_1A388F740(v12, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v12, -1, -1);
    MEMORY[0x1A58FAC10](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A3894618()
{
  v1[2] = v0;
  v2 = sub_1A3A2F2A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A38946E4, 0, 0);
}

uint64_t sub_1A38946E4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager);
  v0[7] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1A3894798;

  return MEMORY[0x1EEE02698]();
}

uint64_t sub_1A3894798(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1A3894C50;
  }

  else
  {

    v4 = sub_1A38948B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A38948B4()
{
  v1 = v0[9];
  if (!v1)
  {
LABEL_7:
    v11 = sub_1A3A2F050();
    sub_1A3896DD0(&qword_1EB0FC4B0, MEMORY[0x1E699A300], MEMORY[0x1E699A308]);
    v12 = swift_allocError();
    *v13 = 0xD000000000000028;
    v13[1] = 0x80000001A3AA1B10;
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E699A2F8], v11);
    swift_willThrow();
    v4 = v0 + 5;
    (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
    v14 = v12;
    v15 = sub_1A3A2F280();
    v16 = sub_1A3A31C20();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1A3640000, v15, v16, "Failed fetching connected accessory: %@", v17, 0xCu);
      sub_1A388F740(v18, &qword_1EB0FC4A8, &qword_1A3A79010);
      MEMORY[0x1A58FAC10](v18, -1, -1);
      MEMORY[0x1A58FAC10](v17, -1, -1);
    }

    else
    {
    }

    v3 = 0;
    goto LABEL_11;
  }

  sub_1A3A2EE70();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

    goto LABEL_7;
  }

  v3 = v2;
  v4 = v0 + 6;
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v5 = v1;
  v6 = sub_1A3A2F280();
  v7 = sub_1A3A31C40();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v3;
    *v9 = v3;
    v10 = v5;
    _os_log_impl(&dword_1A3640000, v6, v7, "daemon connected %@", v8, 0xCu);
    sub_1A388F740(v9, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v9, -1, -1);
    MEMORY[0x1A58FAC10](v8, -1, -1);
  }

LABEL_11:
  (*(v0[4] + 8))(*v4, v0[3]);

  v21 = v0[1];

  return v21(v3);
}

uint64_t sub_1A3894C50()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 32) + 16))(*(v0 + 40), *(v0 + 16) + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, *(v0 + 24));
  v2 = v1;
  v3 = sub_1A3A2F280();
  v4 = sub_1A3A31C20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A3640000, v3, v4, "Failed fetching connected accessory: %@", v5, 0xCu);
    sub_1A388F740(v6, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v6, -1, -1);
    MEMORY[0x1A58FAC10](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_1A3894E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1A3A2F2A0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_1A3894F04;

  return sub_1A3894618();
}

uint64_t sub_1A3894F04(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A3895004, 0, 0);
}

uint64_t sub_1A3895004()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[2];
    v3 = *(v2 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory);
    *(v2 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory) = v1;
    v1;

    v15 = (*MEMORY[0x1E699A278] + MEMORY[0x1E699A278]);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1A38951EC;
    v5 = v0[2];

    return v15(v5);
  }

  else
  {
    (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
    v7 = sub_1A3A2F280();
    v8 = sub_1A3A31C10();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[6];
    v11 = v0[3];
    v12 = v0[4];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A3640000, v7, v8, "No connected DockKit accessory", v13, 2u);
      MEMORY[0x1A58FAC10](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A38951EC()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A3895500, 0, 0);
  }

  else
  {
    v6 = (*MEMORY[0x1E699A288] + MEMORY[0x1E699A288]);
    v3 = swift_task_alloc();
    v2[11] = v3;
    *v3 = v2;
    v3[1] = sub_1A389537C;
    v4 = v2[2];

    return v6(v4);
  }
}

uint64_t sub_1A389537C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A38956AC;
  }

  else
  {
    v2 = sub_1A3895490;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3895490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3895500()
{
  v1 = v0[10];
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v2 = v1;
  v3 = sub_1A3A2F280();
  v4 = sub_1A3A31C20();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3640000, v3, v4, "error starting system events data: %@", v8, 0xCu);
    sub_1A388F740(v9, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v9, -1, -1);
    MEMORY[0x1A58FAC10](v8, -1, -1);
    v6 = v3;
    v3 = v7;
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A38956AC()
{
  v1 = v0[12];
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger, v0[3]);
  v2 = v1;
  v3 = sub_1A3A2F280();
  v4 = sub_1A3A31C20();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3640000, v3, v4, "error starting system events data: %@", v8, 0xCu);
    sub_1A388F740(v9, &qword_1EB0FC4A8, &qword_1A3A79010);
    MEMORY[0x1A58FAC10](v9, -1, -1);
    MEMORY[0x1A58FAC10](v8, -1, -1);
    v6 = v3;
    v3 = v7;
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A3895858()
{
  v1 = sub_1A3A2F2A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory];
  if (v9)
  {
    v10 = sub_1A3A31AD0();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v0;
    v12 = v9;
    v13 = v0;
    sub_1A38911CC(0, 0, v8, &unk_1A3A6C460, v11);
  }

  else
  {
    (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_logger], v1, v6);
    v15 = sub_1A3A2F280();
    v16 = sub_1A3A31C10();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3640000, v15, v16, "No connected DockKit accessory", v17, 2u);
      MEMORY[0x1A58FAC10](v17, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1A3895AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v8 = (*MEMORY[0x1E699A270] + MEMORY[0x1E699A270]);
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1A3895B4C;

  return v8();
}

uint64_t sub_1A3895B4C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v6 = (*MEMORY[0x1E699A280] + MEMORY[0x1E699A280]);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_1A3895CA0;

  return v6();
}

uint64_t sub_1A3895CA0()
{

  if (v0)
  {

    v1 = sub_1A389733C;
  }

  else
  {
    v1 = sub_1A3895DB8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A3895DB8()
{
  v1 = *(v0 + 24);
  sub_1A3A2EE60();
  v2 = *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory);
  *(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory) = 0;

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A3895E30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong captureOrientation];
  }
}

id CAMDockKitController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAMDockKitController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAMDockKitController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3896108(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3896200;

  return v6(a1);
}

uint64_t sub_1A3896200()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1A38962F8(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  *&v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_accessory] = 0;
  sub_1A3A2F290();
  *&v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_connectedState] = 2;
  *&v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_trackingState] = 2;
  *&v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_captureMode] = 0;
  *&v1[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary] = 0;
  sub_1A3A2EC50();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = [objc_allocWithZone(sub_1A3A2EE50()) init];
  *&v2[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_manager] = v6;
  sub_1A3A2EFD0();
  swift_allocObject();
  v7 = v6;
  *&v2[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_panoController] = sub_1A3A2EFB0();
  swift_unknownObjectWeakAssign();
  v8 = type metadata accessor for CAMDockKitController(0);
  v14.receiver = v2;
  v14.super_class = v8;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = sub_1A3A31AD0();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = v9;
  sub_1A38911CC(0, 0, v5, &unk_1A3A6C4D0, v11);

  return v12;
}

uint64_t sub_1A3896560(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = OBJC_IVAR____TtC8CameraUI20CAMDockKitController_connectedState;
  v9 = sub_1A3A2EE80();
  if (v9 == sub_1A3A2EE80())
  {
    v10 = sub_1A3A2EEE0();
    v11 = v10 == sub_1A3A2EEE0();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1A3A2EE80();
  if (v12 == sub_1A3A2EE80())
  {
    v13 = sub_1A3A2EEE0();
    v14 = v13 == sub_1A3A2EEE0();
    if (v11 == v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    v14 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong accessoryConnectedAndTracking_];
    swift_unknownObjectRelease();
  }

LABEL_11:
  v16 = sub_1A3A2EE80();
  if (v16 != sub_1A3A2EE80())
  {
    v17 = sub_1A3A2EE80();
    if (v17 == sub_1A3A2EE80())
    {
      v18 = sub_1A3A31AD0();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v2;
      v20 = v2;
      sub_1A38911CC(0, 0, v7, &unk_1A3A6C4C0, v19);
    }

    else
    {
      v21 = sub_1A3A2EE80();
      if (v21 == sub_1A3A2EE80())
      {
        sub_1A3895858();
      }
    }

    v22 = sub_1A3A31AD0();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v2;
    v24 = v2;
    sub_1A38911CC(0, 0, v7, &unk_1A3A6C4A0, v23);

    *&v2[v8] = a1;
  }

  *&v2[OBJC_IVAR____TtC8CameraUI20CAMDockKitController_trackingState] = a2;
  v25 = sub_1A3A31AD0();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v2;
  v27 = v2;
  sub_1A38911CC(0, 0, v7, &unk_1A3A6C4B0, v26);
}

uint64_t sub_1A38968D0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3897340;

  return sub_1A3893334(v7, v8, a1, v4, v5, v6);
}

uint64_t type metadata accessor for CAMDockKitController(uint64_t a1)
{
  result = qword_1ED996690;
  if (!qword_1ED996690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A38969F4(uint64_t a1)
{
  result = sub_1A3A2F2A0();
  if (v2 <= 0x3F)
  {
    result = sub_1A3A2ECE0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A3896C5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3897340;

  return sub_1A3895AA4(a1, v4, v5, v7, v6);
}

uint64_t sub_1A3896D1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3897340;

  return sub_1A3893AC4(a1, v4, v5, v6);
}

uint64_t sub_1A3896DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3896E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3896EB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3897340;

  return sub_1A3896108(a1, v4);
}

uint64_t sub_1A3896F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A38910D8;

  return sub_1A3896108(a1, v4);
}

uint64_t sub_1A3897020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3897340;

  return sub_1A3892BBC(a1, v4, v5, v6);
}

uint64_t sub_1A38970D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3897340;

  return sub_1A3892F34();
}

uint64_t sub_1A3897188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3897340;

  return sub_1A3894E08(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3897288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A38910D8;

  return sub_1A3891048();
}

uint64_t sub_1A3897344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_1A3A30F80();
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  sub_1A3A30F80();
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  sub_1A3A30F80();
  *(a4 + 48) = v14;
  *(a4 + 56) = v15;
  sub_1A3A30F80();
  *(a4 + 64) = v14;
  *(a4 + 72) = v15;
  sub_1A3A30F80();
  *(a4 + 80) = v14;
  *(a4 + 88) = v15;
  sub_1A3A30F80();
  *(a4 + 96) = v14;
  *(a4 + 104) = v15;
  *(a4 + 136) = swift_getKeyPath(byte_1A3A6C4F0);
  *(a4 + 144) = 0;
  type metadata accessor for ChromeViewModel(0);
  sub_1A389FBA0(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  result = sub_1A3A2F650();
  *(a4 + 152) = result;
  *(a4 + 160) = v13 & 1;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 112) = a1;
  *(a4 + 120) = a2;
  *(a4 + 128) = a3;
  return result;
}

uint64_t sub_1A3897504@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4B8, &qword_1A3A6C688);
  MEMORY[0x1EEE9AC00](v63);
  v3 = (&v61 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4C0, &qword_1A3A6C690);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4C8, &qword_1A3A6C698) - 8;
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v61 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4D0, &qword_1A3A6C6A0);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v61 - v7;
  v8 = *(v1 + 144);
  v85 = *(v1 + 128);
  v86 = v8;
  v87 = *(v1 + 160);
  v9 = *(v1 + 80);
  v81 = *(v1 + 64);
  v82 = v9;
  v10 = *(v1 + 112);
  v83 = *(v1 + 96);
  v84 = v10;
  v11 = *(v1 + 16);
  v77 = *v1;
  v78 = v11;
  v12 = *(v1 + 48);
  v79 = *(v1 + 32);
  v80 = v12;
  *v3 = sub_1A3A31480();
  v3[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4D8, &qword_1A3A6C6A8);
  sub_1A3897BD0(&v77, v3 + *(v14 + 44));
  v15 = sub_1A3A31470();
  v17 = v16;
  v18 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4E0, &qword_1A3A6C6B0) + 36);
  sub_1A3899220(&v77, v18);
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4E8, &qword_1A3A6C6B8) + 36)];
  *v19 = v15;
  v19[1] = v17;
  v20 = v77;
  v88 = v78;
  v73[0] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30F90();
  v62 = v74;
  v73[0] = v81;
  sub_1A3A30F90();
  v61 = v74;
  v73[0] = v79;
  sub_1A3A30F90();
  v21 = v74;
  v73[0] = v80;
  sub_1A3A30F90();
  v22 = v74;
  v73[0] = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F8, &qword_1A3A6C6C8);
  sub_1A3A30F90();
  v23 = v74;
  v24 = swift_allocObject();
  v25 = v86;
  *(v24 + 144) = v85;
  *(v24 + 160) = v25;
  *(v24 + 176) = v87;
  v26 = v82;
  *(v24 + 80) = v81;
  *(v24 + 96) = v26;
  v27 = v84;
  *(v24 + 112) = v83;
  *(v24 + 128) = v27;
  v28 = v78;
  *(v24 + 16) = v77;
  *(v24 + 32) = v28;
  v29 = v80;
  *(v24 + 48) = v79;
  *(v24 + 64) = v29;
  v30 = swift_allocObject();
  v31 = v86;
  *(v30 + 144) = v85;
  *(v30 + 160) = v31;
  *(v30 + 176) = v87;
  v32 = v82;
  *(v30 + 80) = v81;
  *(v30 + 96) = v32;
  v33 = v84;
  *(v30 + 112) = v83;
  *(v30 + 128) = v33;
  v34 = v78;
  *(v30 + 16) = v77;
  *(v30 + 32) = v34;
  v35 = v80;
  *(v30 + 48) = v79;
  *(v30 + 64) = v35;
  LOBYTE(v73[0]) = 0;
  LOBYTE(v72) = 0;
  v76 = 0;
  v75 = 0;
  v36 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC500, &qword_1A3A6C6D0) + 36);
  *v36 = v20;
  v37 = v61;
  *(v36 + 2) = v62;
  v36[24] = 0;
  *(v36 + 4) = v37;
  v36[40] = 0;
  *(v36 + 6) = v21;
  v36[56] = 0;
  *(v36 + 8) = v22;
  v36[72] = 0;
  v36[73] = 1;
  v36[74] = v23;
  *(v36 + 10) = sub_1A389EB28;
  *(v36 + 11) = v24;
  *(v36 + 12) = sub_1A389EBCC;
  *(v36 + 13) = v30;
  v38 = swift_allocObject();
  v39 = v82;
  *(v38 + 80) = v81;
  *(v38 + 96) = v39;
  *(v38 + 176) = v87;
  v40 = v86;
  *(v38 + 144) = v85;
  *(v38 + 160) = v40;
  v41 = v84;
  *(v38 + 112) = v83;
  *(v38 + 128) = v41;
  v42 = v78;
  *(v38 + 16) = v77;
  *(v38 + 32) = v42;
  v43 = v80;
  *(v38 + 48) = v79;
  *(v38 + 64) = v43;
  v44 = (v3 + *(v63 + 36));
  *v44 = sub_1A389EC70;
  v44[1] = v38;
  v44[2] = 0;
  v44[3] = 0;
  v74 = v88;
  sub_1A389EC78(&v77, v73);
  sub_1A389EC78(&v77, v73);
  sub_1A389EC78(&v77, v73);
  sub_1A3A30F90();
  v45 = swift_allocObject();
  v46 = v86;
  *(v45 + 144) = v85;
  *(v45 + 160) = v46;
  *(v45 + 176) = v87;
  v47 = v82;
  *(v45 + 80) = v81;
  *(v45 + 96) = v47;
  v48 = v84;
  *(v45 + 112) = v83;
  *(v45 + 128) = v48;
  v49 = v78;
  *(v45 + 16) = v77;
  *(v45 + 32) = v49;
  v50 = v80;
  *(v45 + 48) = v79;
  *(v45 + 64) = v50;
  sub_1A389EC78(&v77, v73);
  sub_1A389ECB8();
  sub_1A389EEE0();
  v51 = v64;
  sub_1A3A30CA0();

  sub_1A388F740(v3, &qword_1EB0FC4B8, &qword_1A3A6C688);
  KeyPath = swift_getKeyPath("xmiG");
  static IslandAndNotchMetrics.safeAreaDistance(within:)(KeyPath);
  v54 = v53;
  v55 = v66;
  (*(v69 + 32))(v66, v51, v70);
  v56 = (v55 + *(v68 + 44));
  *v56 = KeyPath;
  v56[1] = v54;
  v57 = swift_getKeyPath("XmiG");
  v58 = v65;
  sub_1A388F670(v55, v65, &qword_1EB0FC4C8, &qword_1A3A6C698);
  v59 = v58 + *(v67 + 36);
  *v59 = v57;
  *(v59 + 8) = v20;
  v73[0] = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  sub_1A389EF34();
  sub_1A3A30D00();
  return sub_1A388F740(v58, &qword_1EB0FC4D0, &qword_1A3A6C6A0);
}

id sub_1A3897BD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5B8, &qword_1A3A6C768);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37[-v8];
  v10 = a1[9];
  v48 = a1[8];
  v49 = v10;
  v50 = *(a1 + 160);
  v11 = a1[5];
  v44 = a1[4];
  v45 = v11;
  v12 = a1[7];
  v46 = a1[6];
  v47 = v12;
  v13 = a1[1];
  v40 = *a1;
  v41 = v13;
  v14 = a1[2];
  v43 = a1[3];
  v42 = v14;
  v15 = sub_1A3897F28();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_1A3A2FAA0();
  v23 = sub_1A3A30610();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v25 = result;
    v38 = v23;
    deviceSupportsDynamicIsland = MobileGestalt_get_deviceSupportsDynamicIsland();

    if (deviceSupportsDynamicIsland)
    {
      v40 = a1[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
      sub_1A3A30F90();
      v27 = v39;
      KeyPath = swift_getKeyPath("XmiG");
      sub_1A3A2EA60();
      v29 = 0;
    }

    else
    {
      v27 = 0;
      KeyPath = 0;
      v29 = -1;
    }

    v40 = a1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
    sub_1A3A30F90();
    v30 = v39;
    v31 = swift_getKeyPath("XmiG");
    *v9 = sub_1A3A300B0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5C0, &qword_1A3A6C770);
    sub_1A3898054(a1, &v9[*(v32 + 44)]);
    v33 = sub_1A3A2FAA0();
    v34 = sub_1A3A30610();
    v35 = &v9[*(v4 + 36)];
    *v35 = v33;
    v35[8] = v34;
    sub_1A365E758(v9, v6);
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = v38;
    *(a2 + 48) = v27;
    *(a2 + 56) = KeyPath;
    *(a2 + 64) = 0;
    *(a2 + 72) = v29;
    *(a2 + 80) = v30;
    *(a2 + 88) = v31;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5C8, &qword_1A3A6C778);
    sub_1A365E758(v6, a2 + *(v36 + 80));
    sub_1A389F218(v27, KeyPath, 0, v29);
    sub_1A3890B88(v31, 0, 0);
    sub_1A389F23C(v27, KeyPath, 0, v29);
    sub_1A388F740(v9, &qword_1EB0FC5B8, &qword_1A3A6C768);
    sub_1A388F740(v6, &qword_1EB0FC5B8, &qword_1A3A6C768);
    sub_1A3890B50(v31, 0, 0);
    return sub_1A389F23C(v27, KeyPath, 0, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A3897F28()
{
  if (*v0 >= v0[1])
  {
    v1 = v0[1];
  }

  else
  {
    v1 = *v0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30F90();
  sub_1A3A30F90();
  sub_1A3A30F90();
  sub_1A3A30F90();
  sub_1A3A30F90();
  return (v1 - v3) * 0.5;
}

uint64_t sub_1A3898054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5D0, &qword_1A3A6C780);
  v24 = *(v26 - 8);
  v4 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v32 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30FB0();
  v11 = v29;
  v10 = v30;
  v12 = v31;
  KeyPath = swift_getKeyPath("XmiG");
  v27 = swift_getKeyPath("xmiG");
  LOBYTE(v29) = 0;
  LOBYTE(v32) = 0;
  v28 = a1;
  sub_1A3A305E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5D8, &qword_1A3A6C788);
  sub_1A38A08F8(&qword_1EB0FC5E0, &qword_1EB0FC5D8, &qword_1A3A6C788, MEMORY[0x1E6981F48]);
  v23 = v9;
  sub_1A3A2F550();
  v13 = *(v4 + 16);
  v14 = v29;
  v15 = v32;
  v22 = v6;
  v16 = v26;
  v13(v6, v9, v26);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  v17 = KeyPath;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;
  *(a2 + 48) = v27;
  *(a2 + 56) = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5E8, &qword_1A3A6C790);
  v13((a2 + *(v18 + 48)), v6, v16);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3890B88(v17, 0, v14 & 1);
  v19 = v27;
  sub_1A389F268(v27, v15 & 1);
  v20 = *(v24 + 8);
  v20(v23, v16);
  v20(v22, v16);

  sub_1A3890B50(v17, 0, v14 & 1);
  return sub_1A3670FF4(v19, v15 & 1);
}

id sub_1A3898340@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5F0, &qword_1A3A6C798);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v85[-v9];
  v11 = sub_1A3A30070();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5F8, &qword_1A3A6C7A0);
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v85[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC600, &qword_1A3A6C7A8);
  v124 = *(v15 - 8);
  v125 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v85[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v85[-v18];
  sub_1A3A31480();
  sub_1A3A2F780();
  v92 = v187;
  v93 = v185;
  v90 = v190;
  v91 = v189;
  v193 = 1;
  v192 = v186;
  v191 = v188;
  v127 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  v19 = sub_1A3A30FB0();
  v122 = *(&v174 + 1);
  v123 = v174;
  v20 = v175;
  v21 = a1[9];
  v182 = a1[8];
  v183 = v21;
  v184 = *(a1 + 160);
  v22 = a1[5];
  v178 = a1[4];
  v179 = v22;
  v23 = a1[6];
  v181 = a1[7];
  v180 = v23;
  v24 = a1[1];
  v174 = *a1;
  v175 = v24;
  v25 = a1[3];
  v176 = a1[2];
  v177 = v25;
  sub_1A3898EE8(v19);
  v120 = v26;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v28 = result;
  v117 = v10;
  v118 = v7;
  v119 = v5;
  deviceSupportsDynamicIsland = MobileGestalt_get_deviceSupportsDynamicIsland();

  KeyPath = swift_getKeyPath("XmiG");
  v173 = 0;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  v31 = MobileGestalt_get_deviceSupportsDynamicIsland();

  if (v31)
  {
    v156 = a1[2];
    sub_1A3A30FB0();
    v114 = *(&v127 + 1);
    v115 = v127;
    v113 = v128;
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v32 = result;
    v33 = MobileGestalt_get_deviceSupportsDynamicIsland();

    if (v33)
    {
      v34 = 0x2063696D616E7944;
    }

    else
    {
      v34 = 0x6863746F4ELL;
    }

    v35 = 0xE500000000000000;
    if (v33)
    {
      v35 = 0xEE00646E616C7349;
    }

    v111 = v35;
    v112 = v34;
    v110 = swift_getKeyPath("XmiG");
    v36 = swift_getKeyPath("xmiG");
    LOBYTE(v127) = 0;
    LOBYTE(v156) = 0;
    v108 = 0;
    v109 = v36;
    v106 = 0x6567644520706F54;
    v107 = 0xE800000000000000;
  }

  else
  {
    v114 = 0;
    v115 = 0;
    v112 = 0;
    v113 = 0;
    v106 = 0;
    v107 = 0;
    v110 = 0;
    v111 = 0;
    v108 = 0;
    v109 = 0;
  }

  v88 = v4;
  v156 = a1[3];
  sub_1A3A30FB0();
  v104 = *(&v127 + 1);
  v105 = v127;
  v37 = v128;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v38 = result;
  if (deviceSupportsDynamicIsland)
  {
    v39 = 0xEE00646E616C7349;
  }

  else
  {
    v39 = 0xE500000000000000;
  }

  if (deviceSupportsDynamicIsland)
  {
    v40 = 0x2063696D616E7944;
  }

  else
  {
    v40 = 0x6863746F4ELL;
  }

  *&v103 = v40;
  *(&v103 + 1) = v39;
  v41 = MobileGestalt_get_deviceSupportsDynamicIsland();

  if (v41)
  {
    v42 = 0x2063696D616E7944;
  }

  else
  {
    v42 = 0x6863746F4ELL;
  }

  if (v41)
  {
    v43 = 0xEE00646E616C7349;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v101 = v43;
  v102 = v42;
  v99 = swift_getKeyPath("XmiG");
  v100 = swift_getKeyPath("xmiG");
  v140 = 0;
  v138 = 0;
  v156 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F8, &qword_1A3A6C6C8);
  sub_1A3A30FB0();
  v87 = v127;
  v86 = v128;
  sub_1A3A2FFE0();
  v44 = swift_allocObject();
  v45 = a1[9];
  *(v44 + 144) = a1[8];
  *(v44 + 160) = v45;
  *(v44 + 176) = *(a1 + 160);
  v46 = a1[5];
  *(v44 + 80) = a1[4];
  *(v44 + 96) = v46;
  v47 = a1[7];
  *(v44 + 112) = a1[6];
  *(v44 + 128) = v47;
  v48 = a1[1];
  *(v44 + 16) = *a1;
  *(v44 + 32) = v48;
  v49 = a1[3];
  *(v44 + 48) = a1[2];
  *(v44 + 64) = v49;
  sub_1A389EC78(a1, &v127);
  v50 = v89;
  sub_1A3A30FF0();
  v51 = v96;
  sub_1A3A30060();
  sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8, &qword_1A3A6C7A0, MEMORY[0x1E697D680]);
  sub_1A389FBA0(&qword_1EB0FC610, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v52 = v121;
  v53 = v50;
  v54 = v95;
  v55 = v98;
  sub_1A3A30960();
  (*(v97 + 8))(v51, v55);
  (*(v94 + 8))(v53, v54);
  v56 = a1[9];
  v135 = a1[8];
  v136 = v56;
  v137 = *(a1 + 160);
  v57 = a1[5];
  v131 = a1[4];
  v132 = v57;
  v58 = a1[7];
  v133 = a1[6];
  v134 = v58;
  v59 = a1[1];
  v127 = *a1;
  v128 = v59;
  v60 = a1[3];
  v129 = a1[2];
  v130 = v60;
  v61 = v117;
  sub_1A38990C4();
  v62 = v193;
  LOBYTE(v53) = v192;
  v63 = v191;
  v64 = v140;
  LODWORD(v94) = v140;
  LODWORD(v98) = v138;
  v96 = *(v124 + 16);
  LODWORD(v97) = v173;
  (v96)(v126, v52, v125);
  v95 = *(v119 + 16);
  v65 = v61;
  v66 = v88;
  v95(v118, v65);
  *(a2 + 8) = v62;
  v67 = v92;
  *(a2 + 16) = v93;
  *(a2 + 24) = v53;
  *(a2 + 32) = v67;
  *(a2 + 40) = v63;
  v68 = v90;
  *(a2 + 48) = v91;
  *(a2 + 56) = v68;
  *(&v151 + 1) = v104;
  *&v152 = v37;
  HIDWORD(v155[0]) = *&v139[3];
  *(v155 + 9) = *v139;
  *(&v152 + 1) = 0x45206D6F74746F42;
  *&v153 = 0xEB00000000656764;
  *(&v153 + 1) = v102;
  *&v154 = v101;
  *(&v154 + 1) = v99;
  *&v155[0] = 0;
  BYTE8(v155[0]) = v64;
  *&v155[1] = v100;
  BYTE8(v155[1]) = v98;
  v69 = v153;
  v70 = v154;
  v71 = v155[0];
  *(a2 + 305) = *(v155 + 9);
  *(a2 + 280) = v70;
  *(a2 + 296) = v71;
  *(a2 + 264) = v69;
  *(a2 + 344) = v86;
  *&v151 = v105;
  *a2 = 0;
  *&v141 = v123;
  *(&v141 + 1) = v122;
  *&v142 = v20;
  *(&v142 + 1) = v120;
  v143 = v103;
  v144 = KeyPath;
  v145 = v97;
  *(a2 + 128) = v97;
  v72 = v142;
  v73 = v144;
  *(a2 + 96) = v143;
  *(a2 + 112) = v73;
  *(a2 + 64) = v141;
  *(a2 + 80) = v72;
  *&v146 = v115;
  *(&v146 + 1) = v114;
  *&v147 = v113;
  *(&v147 + 1) = v106;
  *&v148 = v107;
  *(&v148 + 1) = v112;
  *&v149 = v111;
  *(&v149 + 1) = v110;
  *&v150[0] = 0;
  *(&v150[0] + 1) = v108;
  *&v150[1] = v109;
  BYTE8(v150[1]) = 0;
  v74 = v146;
  *(a2 + 152) = v147;
  *(a2 + 136) = v74;
  v75 = v148;
  v76 = v149;
  v77 = v150[0];
  *(a2 + 209) = *(v150 + 9);
  *(a2 + 200) = v77;
  *(a2 + 184) = v76;
  *(a2 + 168) = v75;
  v78 = v151;
  *(a2 + 248) = v152;
  *(a2 + 232) = v78;
  v79 = *(&v87 + 1);
  *(a2 + 328) = v87;
  *(a2 + 336) = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC618, &qword_1A3A6C7B0);
  v81 = v125;
  (v96)(a2 + *(v80 + 112), v126, v125);
  v82 = v118;
  (v95)(a2 + *(v80 + 128), v118, v66);
  sub_1A389F300(&v141, &v127);
  sub_1A388F6D8(&v146, &v127, &qword_1EB0FC620, &qword_1A3A6C7B8);
  sub_1A389F338(&v151, &v127);
  v83 = *(v119 + 8);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  v83(v117, v66);
  v84 = *(v124 + 8);
  v84(v121, v81);
  v83(v82, v66);
  v84(v126, v81);

  *&v156 = v105;
  *(&v156 + 1) = v104;
  v157 = v37;
  v158 = 0x45206D6F74746F42;
  v159 = 0xEB00000000656764;
  v160 = v102;
  v161 = v101;
  v162 = v99;
  v163 = 0;
  v164 = v94;
  *v165 = *v139;
  *&v165[3] = *&v139[3];
  v166 = v100;
  v167 = v98;
  sub_1A389F370(&v156);
  *&v127 = v115;
  *(&v127 + 1) = v114;
  *&v128 = v113;
  *(&v128 + 1) = v106;
  *&v129 = v107;
  *(&v129 + 1) = v112;
  *&v130 = v111;
  *(&v130 + 1) = v110;
  *&v131 = 0;
  *(&v131 + 1) = v108;
  *&v132 = v109;
  BYTE8(v132) = 0;
  sub_1A388F740(&v127, &qword_1EB0FC620, &qword_1A3A6C7B8);
  v168[0] = v123;
  v168[1] = v122;
  v168[2] = v20;
  v168[3] = v120;
  v169 = v103;
  v170 = KeyPath;
  v171 = 0;
  v172 = v97;
  return sub_1A389F3A0(v168);
}

void sub_1A3898EE8(uint64_t a1)
{
  if (*v1 >= v1[1])
  {
    v2 = v1[1];
  }

  else
  {
    v2 = *v1;
  }

  v3 = static IslandAndNotchMetrics.width(from:)(a1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = *&v3;
    v6 = MobileGestalt_get_current_device();
    if (!v6)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = MobileGestalt_copy_productType_obj();

    if (v8)
    {

      v2 = (v2 - v5) * 0.5;
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v2 <= -9.22337204e18)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v2 < 9.22337204e18)
      {
        return;
      }

      __break(1u);
    }
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_1A3899000(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2[1] = *(a1 + 96);
  v4 = *(&v3 + 1);
  sub_1A388F6D8(&v4, v2, &qword_1EB0FC688, &qword_1A3A6C858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  v2[0] = v3;
  sub_1A3A30FA0();
  return sub_1A388F740(&v3, &qword_1EB0FC3C8, &qword_1A3A6C090);
}

uint64_t sub_1A38990C4()
{
  v1 = *(v0 + 144);
  v16[8] = *(v0 + 128);
  v16[9] = v1;
  v17 = *(v0 + 160);
  v2 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v2;
  v3 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v3;
  v4 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v4;
  v5 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v5;
  sub_1A3899DEC(v16, __src);
  v6 = sub_1A3A31490();
  sub_1A3A2FBF0(&__src[29], 0, 1, 0, 1, v6, v7);
  v8 = sub_1A3A30600();
  v15 = 1;
  v9 = sub_1A3A307A0();
  KeyPath = swift_getKeyPath(byte_1A3A6C7C0);
  memcpy(__dst, __src, 0x158uLL);
  __dst[344] = v8;
  memset(&__dst[352], 0, 32);
  __dst[384] = 1;
  *&__dst[392] = KeyPath;
  *&__dst[400] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC628, &qword_1A3A6C7F0);
  sub_1A389F3D0();
  sub_1A3A30A50();
  memcpy(v13, __dst, sizeof(v13));
  return sub_1A388F740(v13, &qword_1EB0FC628, &qword_1A3A6C7F0);
}

uint64_t sub_1A3899220@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_1A3A30370();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A3A30E90();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC590, &unk_1A3A6C750);
  v27 = *(v33 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v37 = *(a1 + 112);
  LOBYTE(v38) = *(a1 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  sub_1A3A311B0();
  v37 = v35;
  LOBYTE(v38) = v36;
  sub_1A3A30E80();
  sub_1A3A30360();
  sub_1A389F1C4();
  sub_1A389FBA0(&qword_1EB0FC5A8, MEMORY[0x1E69801B8], MEMORY[0x1E69801B0]);
  sub_1A3A30990();
  (*(v32 + 8))(v5, v3);
  (*(v6 + 8))(v8, v31);

  sub_1A3A31480();
  sub_1A3A2F780();
  v31 = v38;
  v32 = v37;
  v28 = v41;
  v29 = v40;
  LOBYTE(v35) = 1;
  v43 = BYTE8(v37);
  v42 = v39;
  v14 = *(v9 + 16);
  v15 = v30;
  v16 = v13;
  v17 = v13;
  v18 = v33;
  v14(v30, v16, v33);
  v19 = v35;
  LOBYTE(v9) = v43;
  LOBYTE(v6) = v42;
  v20 = v34;
  v14(v34, v15, v18);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5B0, &qword_1A3A6C760) + 48)];
  *v21 = 0;
  v21[8] = v19;
  v22 = v31;
  *(v21 + 2) = v32;
  v21[24] = v9;
  *(v21 + 4) = v22;
  v21[40] = v6;
  v23 = v28;
  *(v21 + 6) = v29;
  *(v21 + 7) = v23;
  v24 = *(v27 + 8);
  v24(v17, v18);
  return (v24)(v15, v18);
}

__n128 sub_1A3899614@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3A30D30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A2FF40();
  sub_1A3899C14(&v27);
  v23 = v27;
  v22 = v28;
  v7 = BYTE8(v28);
  v24 = v29.n128_u64[0];
  v8 = sub_1A3A31480();
  v26 = 1;
  v25 = v7;
  v9 = v7;
  sub_1A3A2FBF0(&v27, 0, 1, 0x7FF0000000000000, 0, v8, v10);
  v11 = sub_1A3A30DC0();
  v12 = sub_1A3A31480();
  v14 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  v15 = sub_1A3A30E40();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v35[0];
  *(a1 + 20) = *(v35 + 3);
  *(a1 + 24) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v9;
  *(a1 + 49) = *v34;
  *(a1 + 52) = *&v34[3];
  *(a1 + 56) = v24;
  v16 = v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v16;
  result = v29;
  v18 = v30;
  v19 = v33;
  v20 = v31;
  *(a1 + 144) = v32;
  *(a1 + 160) = v19;
  *(a1 + 112) = v18;
  *(a1 + 128) = v20;
  *(a1 + 96) = result;
  *(a1 + 176) = v11;
  *(a1 + 184) = v15;
  *(a1 + 192) = v12;
  *(a1 + 200) = v14;
  return result;
}

__n128 sub_1A3899834@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3A30D30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A2FF40();
  sub_1A3899D08(&v27);
  v22 = *(&v27 + 1);
  v23 = v27;
  v7 = v28[0];
  v24 = *&v28[8];
  v8 = sub_1A3A31480();
  v26 = 1;
  v25 = v7;
  v9 = v7;
  sub_1A3A2FBF0(&v27, 0, 1, 0x7FF0000000000000, 0, v8, v10);
  v11 = sub_1A3A30DC0();
  v12 = sub_1A3A31480();
  v14 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  v15 = sub_1A3A30E40();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v34[0];
  *(a1 + 20) = *(v34 + 3);
  v16 = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v16;
  *(a1 + 40) = v9;
  *(a1 + 41) = *v33;
  *(a1 + 44) = *&v33[3];
  v17 = v27;
  v18 = *&v28[16];
  v19 = v29;
  *(a1 + 80) = *v28;
  *(a1 + 96) = v18;
  *(a1 + 48) = v24;
  *(a1 + 64) = v17;
  result = v30;
  v21 = v32;
  *(a1 + 144) = v31;
  *(a1 + 160) = v21;
  *(a1 + 112) = v19;
  *(a1 + 128) = result;
  *(a1 + 176) = v11;
  *(a1 + 184) = v15;
  *(a1 + 192) = v12;
  *(a1 + 200) = v14;
  return result;
}

uint64_t sub_1A3899A50(double *a1)
{
  if (*a1 >= a1[1])
  {
    v1 = a1[1];
  }

  else
  {
    v1 = *a1;
  }

  static IslandAndNotchMetrics.width(from:)(a1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  v2 = sub_1A3A30FA0();
  static IslandAndNotchMetrics.topEdgeDistance(within:)(v2);
  v3 = sub_1A3A30FA0();
  static IslandAndNotchMetrics.bottomEdgeDistance(within:)(v3);
  return sub_1A3A30FA0();
}

double sub_1A3899B9C()
{
  sub_1A389F150();
  sub_1A3A2FEF0();
  return v1;
}

double sub_1A3899BD8(uint64_t a1, uint64_t a2)
{
  sub_1A389F0FC();
  sub_1A3A2FEF0();
  return v3;
}

uint64_t sub_1A3899C14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3A30EB0();
  sub_1A3A30790();
  v3 = sub_1A3A308A0();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  sub_1A3A2EA60();
  sub_1A389F1A4(v3, v5, v7 & 1);
  sub_1A3A2EA50();
  sub_1A389F1B4(v3, v5, v7 & 1);
}

uint64_t sub_1A3899D08@<X0>(uint64_t a1@<X8>)
{
  sub_1A3A30790();
  v2 = sub_1A3A308A0();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = sub_1A3A30EB0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_1A389F1A4(v2, v4, v6 & 1);
  sub_1A3A2EA50();
  sub_1A389F1B4(v2, v4, v6 & 1);
}

id sub_1A3899DEC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v105 = a2;
  v3 = sub_1A3A2FEE0();
  v109 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v108 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[6];
  v138 = a1[7];
  v139 = v5;
  v140 = v6;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[2];
  v134 = a1[3];
  v135 = v8;
  v136 = v9;
  v137 = v7;
  v11 = a1[1];
  v131 = *a1;
  *&v127 = 0x203A73746E696F50;
  *(&v127 + 1) = 0xE800000000000000;
  v141 = *(a1 + 160);
  v132 = v11;
  v133 = v10;
  sub_1A389AB88();
  MEMORY[0x1A58F7770]();

  v12 = a1[8];
  v13 = a1[9];
  v14 = a1[6];
  v138 = a1[7];
  v139 = v12;
  v140 = v13;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[2];
  v134 = a1[3];
  v135 = v15;
  v136 = v16;
  v137 = v14;
  v18 = a1[1];
  v131 = *a1;
  v115 = *(&v127 + 1);
  v116 = v127;
  *&v127 = 0x203A736C65786950;
  *(&v127 + 1) = 0xE800000000000000;
  v141 = *(a1 + 160);
  v132 = v18;
  v133 = v17;
  sub_1A389AE8C();
  MEMORY[0x1A58F7770]();

  v145 = *(a1 + 160);
  v144 = *(a1 + 19);
  v19 = v144;
  v20 = v145;
  sub_1A3A2EA60();
  v21 = v19;
  if ((v20 & 1) == 0)
  {
    sub_1A3A31C30();
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    v23 = v108;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v144, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v109 + 8))(v23, v3);
    v21 = v131;
  }

  swift_getKeyPath("PliG");
  *&v131 = v21;
  v111 = sub_1A389FBA0(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v24 = *(v21 + 392);

  if (v24)
  {
    v25 = 0xD000000000000011;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = 0x80000001A3AA1BD0;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  MEMORY[0x1A58F7770](v25, v26);

  v28 = a1[8];
  v29 = a1[9];
  v30 = a1[6];
  v138 = a1[7];
  v139 = v28;
  v140 = v29;
  v31 = a1[4];
  v32 = a1[5];
  v33 = a1[2];
  v134 = a1[3];
  v135 = v31;
  v136 = v32;
  v137 = v30;
  v34 = a1[1];
  v131 = *a1;
  v113 = *(&v127 + 1);
  v114 = v127;
  *&v127 = 0x203A65766974614ELL;
  *(&v127 + 1) = 0xE800000000000000;
  v141 = *(a1 + 160);
  v132 = v34;
  v133 = v33;
  v35 = sub_1A389B198(v27);
  MEMORY[0x1A58F7770](v35);

  v110 = *(&v127 + 1);
  v112 = v127;
  sub_1A3A2EA60();
  v36 = v19;
  if ((v20 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v108;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v144, &qword_1EB0FC3C0, &qword_1A3A6C820);
    (*(v109 + 8))(v38, v3);
    v36 = v131;
  }

  swift_getKeyPath("PliG");
  *&v131 = v36;
  sub_1A3A2F080();

  v39 = *(v36 + 392);

  if (v39 == 1)
  {
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    sub_1A3A31F20();

    strcpy(&v131, "Display Zoom: ");
    HIBYTE(v131) = -18;
    sub_1A3A2EA60();
    if ((v20 & 1) == 0)
    {
      sub_1A3A31C30();
      v40 = sub_1A3A305C0();
      sub_1A3A2F270();

      v41 = v108;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v144, &qword_1EB0FC3C0, &qword_1A3A6C820);
      (*(v109 + 8))(v41, v3);
      v19 = v127;
    }

    swift_getKeyPath("PliG");
    *&v127 = v19;
    sub_1A3A2F080();

    v42 = *(v19 + 392);

    if (v42)
    {
      v43 = 0x657669746361;
    }

    else
    {
      v43 = 6710895;
    }

    if (v42)
    {
      v44 = 0xE600000000000000;
    }

    else
    {
      v44 = 0xE300000000000000;
    }

    MEMORY[0x1A58F7770](v43, v44);

    MEMORY[0x1A58F7770](2113568, 0xE300000000000000);
    v142 = *(a1 + 17);
    v143 = *(a1 + 144);
    if (v143 != 1)
    {
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v50 = sub_1A3A305C0();
      sub_1A3A2F270();

      v51 = v108;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v142, &qword_1EB0FC680, &qword_1A3A6C850);
      (*(v109 + 8))(v51, v3);
    }

    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_50;
    }

    v53 = result;
    MobileGestalt_get_mainScreenWidth();

    v54 = sub_1A3A31B00();
    MEMORY[0x1A58F7770](v54);

    MEMORY[0x1A58F7770](120, 0xE100000000000000);
    v127 = v131;
    v128 = 0;
    v129 = MEMORY[0x1E69E7CC0];
    v130 = 0;
  }

  else
  {
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    sub_1A3A31F20();

    strcpy(&v131, "Display Zoom: ");
    HIBYTE(v131) = -18;
    sub_1A3A2EA60();
    if ((v20 & 1) == 0)
    {
      sub_1A3A31C30();
      v45 = sub_1A3A305C0();
      sub_1A3A2F270();

      v46 = v108;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v144, &qword_1EB0FC3C0, &qword_1A3A6C820);
      (*(v109 + 8))(v46, v3);
      v19 = v127;
    }

    swift_getKeyPath("PliG");
    *&v127 = v19;
    sub_1A3A2F080();

    v47 = *(v19 + 392);

    if (v47)
    {
      v48 = 0x657669746361;
    }

    else
    {
      v48 = 6710895;
    }

    if (v47)
    {
      v49 = 0xE600000000000000;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    MEMORY[0x1A58F7770](v48, v49);

    v127 = v131;
    v128 = 0;
    v129 = MEMORY[0x1E69E7CC0];
    v130 = 1;
  }

  sub_1A3A301F0();
  v55 = v131;
  v56 = v133;
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  v57 = v55;
  v103 = v55;
  v104 = v132;
  v58 = *(&v55 + 1);
  v59 = v132;
  sub_1A389F650(v55, *(&v55 + 1), v132, *(&v132 + 1));
  sub_1A3A31F20();

  *&v131 = 0xD000000000000010;
  *(&v131 + 1) = 0x80000001A3AA1BB0;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  v60 = result;
  v61 = MobileGestalt_copy_marketingNameString_obj();

  v111 = v57;
  if (v61)
  {
    v62 = sub_1A3A31850();
    v64 = v63;
  }

  else
  {
    v64 = 0xE300000000000000;
    v62 = 7104878;
  }

  MEMORY[0x1A58F7770](v62, v64);

  MEMORY[0x1A58F7770](v127, *(&v127 + 1));

  v65 = v131;
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  sub_1A3A31F20();

  strcpy(&v131, "Product Type: ");
  HIBYTE(v131) = -18;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_48;
  }

  v66 = result;
  v108 = v65;
  v67 = MobileGestalt_copy_productType_obj();

  if (v67)
  {
    sub_1A3A31850();
    v69 = v68;
  }

  else
  {
    v69 = 0xE300000000000000;
  }

  v107 = *(&v65 + 1);
  v109 = *(&v59 + 1);
  MEMORY[0x1A58F7770](v65, v69);

  MEMORY[0x1A58F7770](v127, *(&v127 + 1));

  v70 = v131;
  strcpy(&v131, "Model: ");
  *(&v131 + 1) = 0xE700000000000000;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_49;
  }

  v71 = result;
  v101 = *(&v70 + 1);
  v106 = v59;
  v72 = MobileGestalt_copy_hwModelUniqueStr_obj();

  v73 = 7104878;
  v102 = v70;
  v74 = v111;
  if (v72)
  {
    v73 = sub_1A3A31850();
    v76 = v75;
  }

  else
  {
    v76 = 0xE300000000000000;
  }

  MEMORY[0x1A58F7770](v73, v76);

  MEMORY[0x1A58F7770](v127, *(&v127 + 1));

  v77 = v131;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = v56;
  v119 = 0;
  v118 = 0;
  sub_1A389F1A4(v116, v115, 0);
  v78 = v56;
  v79 = MEMORY[0x1E69E7CC0];
  sub_1A3A2EA50();
  sub_1A389F1A4(v114, v113, 0);
  sub_1A3A2EA50();
  sub_1A389F1A4(v112, v110, 0);
  sub_1A3A2EA50();
  v99 = v58;
  v80 = v106;
  v81 = v109;
  v100 = v78;
  sub_1A389F650(v74, v58, v106, v109);
  sub_1A389F1A4(v108, v107, 0);
  sub_1A3A2EA50();
  v83 = v101;
  v82 = v102;
  sub_1A389F1A4(v102, v101, 0);
  sub_1A3A2EA50();
  sub_1A389F1A4(v77, *(&v77 + 1), 0);
  sub_1A3A2EA50();
  v84 = v74;
  v85 = v99;
  sub_1A389F68C(v84, v99, v80, v81);
  v117 = 0;
  v86 = v123;
  v87 = v122;
  v88 = v121;
  v89 = v120;
  v90 = v119;
  v91 = v118;
  v92 = v105;
  *v105 = v116;
  v92[1] = v115;
  *(v92 + 16) = v86;
  v93 = v114;
  v92[3] = v79;
  v92[4] = v93;
  v92[5] = v113;
  *(v92 + 48) = v87;
  v94 = v112;
  v92[7] = v79;
  v92[8] = v94;
  v95 = v110;
  v92[9] = v110;
  *(v92 + 80) = v88;
  v92[11] = v79;
  v96 = v104;
  *(v92 + 6) = v103;
  *(v92 + 7) = v96;
  *(v92 + 128) = v89;
  v98 = v107;
  v97 = v108;
  v92[17] = v108;
  v92[18] = v98;
  *(v92 + 152) = v90;
  v92[20] = v79;
  v92[21] = v82;
  v92[22] = v83;
  *(v92 + 184) = v91;
  v92[24] = v79;
  *(v92 + 25) = v77;
  *(v92 + 216) = 0;
  v92[28] = v79;
  sub_1A389F1B4(v77, *(&v77 + 1), 0);

  sub_1A389F1B4(v82, v83, 0);

  sub_1A389F1B4(v97, v98, 0);

  sub_1A389F68C(v111, v85, v106, v109);
  sub_1A389F1B4(v112, v95, v124);

  sub_1A389F1B4(v114, v113, v125);

  sub_1A389F1B4(v116, v115, v126);
}

void sub_1A389AB88()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v18 = 0;
  v19 = 0xE000000000000000;
  if (v6 > v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v9;
  v10 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v10);

  MEMORY[0x1A58F7770](120, 0xE100000000000000);
  if (v5 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v11;
  v12 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v12);

  MEMORY[0x1A58F7770](64, 0xE100000000000000);
  if (v8)
  {
    v13 = *&v7;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    v13 = *&v17;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 < 9.22337204e18)
  {
    v17 = v13;
    v15 = sub_1A3A321A0();
    MEMORY[0x1A58F7770](v15);

    MEMORY[0x1A58F7770](120, 0xE100000000000000);
    return;
  }

LABEL_28:
  __break(1u);
}

void sub_1A389AE8C()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 136);
  if (*v0 >= v6)
  {
    v8 = *(v0 + 8);
  }

  else
  {
    v8 = *v0;
  }

  if (*(v0 + 144) == 1)
  {
    v9 = *(v0 + 136);
    if (v6 > v5)
    {
      v5 = *(v0 + 8);
    }

    v10 = *(v0 + 136);
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    v12 = *(v2 + 8);
    v12(v4, v1);
    v10 = *&v20;
    if (v6 > v5)
    {
      v5 = v6;
    }

    sub_1A3A2EA60();
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    v12(v4, v1);
    v9 = *&v20;
  }

  v14 = v5 * v9;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v8 * v10;
  v19 = v14;
  v20 = sub_1A3A321A0();
  v21 = v16;
  MEMORY[0x1A58F7770](120, 0xE100000000000000);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 < 9.22337204e18)
  {
    v19 = v15;
    v17 = sub_1A3A321A0();
    MEMORY[0x1A58F7770](v17);

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_1A389B198(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    MobileGestalt_get_mainScreenWidth();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v3 = result;
      MobileGestalt_get_mainScreenHeight();

      v5 = sub_1A3A321A0();
      MEMORY[0x1A58F7770](120, 0xE100000000000000);
      v4 = sub_1A3A321A0();
      MEMORY[0x1A58F7770](v4);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A389B27C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A30DB0();
  v9 = sub_1A3A31480();
  sub_1A3A2FBF0(v40, 0, 1, 0, 1, v9, v10);
  v42 = *(v2 + 56);
  v11 = *(v2 + 48);
  v41 = v11;
  if (v42 == 1)
  {
    v39 = v11;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v41, &qword_1EB0FC680, &qword_1A3A6C850);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A3A31480();
  sub_1A3A2F780();
  v13 = sub_1A3A31480();
  v15 = v14;
  v16 = sub_1A3A2FF40();
  LOBYTE(v29[0]) = 1;
  sub_1A389B610(v2, v35);
  memcpy(v27, v35, sizeof(v27));
  memcpy(v28, v35, sizeof(v28));
  sub_1A388F6D8(v27, v30, &qword_1EB0FC7A8, &qword_1A3A6CFD0);
  sub_1A388F740(v28, &qword_1EB0FC7A8, &qword_1A3A6CFD0);
  memcpy(&v26[7], v27, 0x190uLL);
  v17 = v29[0];
  v29[0] = v16;
  v29[1] = 0;
  LOBYTE(v29[2]) = v17;
  memcpy(&v29[2] + 1, v26, 0x197uLL);
  v29[53] = v13;
  v29[54] = v15;
  memcpy(v35, v29, sizeof(v35));
  v30[0] = v16;
  v30[1] = 0;
  v31 = v17;
  memcpy(v32, v26, sizeof(v32));
  v33 = v13;
  v34 = v15;
  sub_1A388F6D8(v29, &v25, &qword_1EB0FC7B0, &qword_1A3A6CFD8);
  sub_1A388F740(v30, &qword_1EB0FC7B0, &qword_1A3A6CFD8);
  *a1 = v8;
  v18 = v40[2];
  *(a1 + 56) = v40[3];
  v19 = v40[5];
  *(a1 + 72) = v40[4];
  *(a1 + 88) = v19;
  *(a1 + 104) = v40[6];
  v20 = v40[1];
  *(a1 + 8) = v40[0];
  *(a1 + 24) = v20;
  *(a1 + 40) = v18;
  v21 = v36;
  v22 = v37;
  *(a1 + 152) = v38;
  *(a1 + 136) = v22;
  *(a1 + 120) = v21;
  return memcpy((a1 + 168), v35, 0x1B8uLL);
}

uint64_t sub_1A389B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A30D50();
  v5 = sub_1A3A31480();
  sub_1A3A2FBF0(&v49, 0, 1, 0x7FF0000000000000, 0, v5, v6);
  sub_1A3A31480();
  sub_1A3A2F780();
  *v69 = *a1;
  *&v69[16] = *(a1 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC758, &qword_1A3A6CF98);
  MEMORY[0x1A58F7010](&v58, v7);
  sub_1A3A31480();
  sub_1A3A2F780();
  v34 = v84;
  v35 = v82;
  v8 = v86;
  v33 = v87;
  v81 = 1;
  v80 = v83;
  v79 = v85;
  v9 = sub_1A3A30D50();
  v10 = sub_1A3A31480();
  sub_1A3A2FBF0(&v39, 0, 1, 0x7FF0000000000000, 0, v10, v11);
  sub_1A3A31480();
  sub_1A3A2F780();
  *v56 = v4;
  *&v56[56] = v52;
  *&v56[72] = v53;
  *&v56[88] = v54;
  *&v56[104] = v55;
  *&v56[8] = v49;
  *&v56[24] = v50;
  *&v56[40] = v51;
  *&v56[120] = v46;
  *&v56[136] = v47;
  *&v56[152] = v48;
  *v57 = v9;
  v12 = v42;
  v13 = v43;
  *&v57[56] = v42;
  *&v57[72] = v43;
  v14 = v44;
  *&v57[88] = v44;
  v15 = v45;
  *&v57[104] = v45;
  v16 = v39;
  *&v57[8] = v39;
  v17 = v40;
  *&v57[24] = v40;
  v18 = v41;
  *&v57[40] = v41;
  *&v57[152] = v38;
  *&v57[136] = v37;
  *&v57[120] = v36;
  v19 = *&v56[16];
  *a2 = *v56;
  *(a2 + 16) = v19;
  v20 = *&v56[80];
  *(a2 + 64) = *&v56[64];
  *(a2 + 80) = v20;
  v21 = *&v56[48];
  *(a2 + 32) = *&v56[32];
  *(a2 + 48) = v21;
  v22 = *&v56[144];
  *(a2 + 128) = *&v56[128];
  *(a2 + 144) = v22;
  v23 = *&v56[112];
  *(a2 + 96) = *&v56[96];
  *(a2 + 112) = v23;
  v24 = *&v57[144];
  *(a2 + 360) = *&v57[128];
  *(a2 + 376) = v24;
  v25 = *&v57[80];
  *(a2 + 296) = *&v57[64];
  *(a2 + 312) = v25;
  v26 = *&v57[112];
  *(a2 + 328) = *&v57[96];
  *(a2 + 344) = v26;
  v27 = *&v57[16];
  *(a2 + 232) = *v57;
  *(a2 + 248) = v27;
  v28 = *&v57[48];
  *(a2 + 264) = *&v57[32];
  *(a2 + 280) = v28;
  v62 = v12;
  v63 = v13;
  v64 = v14;
  v65 = v15;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v29 = v81;
  v30 = v80;
  v31 = v79;
  *(a2 + 160) = *&v56[160];
  *(a2 + 168) = 0;
  *(a2 + 176) = v29;
  *(a2 + 184) = v35;
  *(a2 + 192) = v30;
  *(a2 + 200) = v34;
  *(a2 + 208) = v31;
  *(a2 + 216) = v8;
  *(a2 + 224) = v33;
  *(a2 + 392) = *&v57[160];
  v58 = v9;
  v68 = v38;
  v67 = v37;
  v66 = v36;
  sub_1A388F6D8(v56, v69, &qword_1EB0FC7B8, &qword_1A3A6CFE0);
  sub_1A388F6D8(v57, v69, &qword_1EB0FC7B8, &qword_1A3A6CFE0);
  sub_1A388F740(&v58, &qword_1EB0FC7B8, &qword_1A3A6CFE0);
  *v69 = v4;
  v72 = v52;
  v73 = v53;
  v74 = v54;
  v75 = v55;
  *&v69[8] = v49;
  v70 = v50;
  v71 = v51;
  v78 = v48;
  v77 = v47;
  v76 = v46;
  return sub_1A388F740(v69, &qword_1EB0FC7B8, &qword_1A3A6CFE0);
}

double sub_1A389BABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_1A3A300B0();
  v28 = 1;
  sub_1A389BC58(a1, a2, a3 & 1, &v18);
  v35 = v24;
  v36 = v25;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v29 = v18;
  v30 = v19;
  v38[6] = v24;
  v38[7] = v25;
  v38[2] = v20;
  v38[3] = v21;
  v38[4] = v22;
  v38[5] = v23;
  v37 = v26;
  v39 = v26;
  v38[0] = v18;
  v38[1] = v19;
  sub_1A388F6D8(&v29, &v17, &qword_1EB0FC7C0, &qword_1A3A6CFE8);
  sub_1A388F740(v38, &qword_1EB0FC7C0, &qword_1A3A6CFE8);
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  v27[135] = v37;
  *&v27[7] = v29;
  LOBYTE(a2) = v28;
  v10 = sub_1A3A2FAA0();
  v11 = sub_1A3A30610();
  v12 = *&v27[64];
  *(a4 + 97) = *&v27[80];
  v13 = *&v27[112];
  *(a4 + 113) = *&v27[96];
  *(a4 + 129) = v13;
  v14 = *v27;
  *(a4 + 33) = *&v27[16];
  result = *&v27[32];
  v16 = *&v27[48];
  *(a4 + 49) = *&v27[32];
  *(a4 + 65) = v16;
  *(a4 + 81) = v12;
  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 145) = *&v27[128];
  *(a4 + 17) = v14;
  *(a4 + 160) = v10;
  *(a4 + 168) = v11;
  return result;
}

double sub_1A389BC58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_1A3A2FEE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A31480();
  sub_1A3A2F780();
  v27 = v28;
  v13 = v30;
  v26 = v32;
  v25 = v33;
  v41 = 1;
  v40 = v29;
  v39 = v31;
  v14 = sub_1A3A30D50();
  if ((a3 & 1) == 0)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3890B50(a1, a2, 0);
    (*(v10 + 8))(v12, v9);
  }

  sub_1A3A31480();
  sub_1A3A2F780();
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v19 = v41;
  v20 = v40;
  v21 = v39;
  v22 = v37;
  *a4 = 0;
  *(a4 + 8) = v19;
  *(a4 + 16) = v27;
  *(a4 + 24) = v20;
  *(a4 + 32) = v13;
  *(a4 + 40) = v21;
  v23 = v25;
  *(a4 + 48) = v26;
  *(a4 + 56) = v23;
  *(a4 + 64) = v14;
  *(a4 + 72) = v16;
  *(a4 + 80) = v17;
  *(a4 + 88) = v18;
  *(a4 + 96) = v22;
  result = *&v38;
  *(a4 + 104) = v38;
  *(a4 + 120) = 0;
  *(a4 + 128) = 1;
  return result;
}

double sub_1A389BEFC@<D0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_1A3A31480();
  sub_1A3A2F780();
  v11 = sub_1A3A30DC0();
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  CGRectGetWidth(v24);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  CGRectGetHeight(v25);
  sub_1A3A31480();
  sub_1A3A2F780();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  *(a2 + 64) = v11;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  *(a2 + 96) = v22;
  result = *&v23;
  *(a2 + 104) = v23;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  return result;
}