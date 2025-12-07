id PRLogRendering(uint64_t a1)
{
  if (PRLogRendering_onceToken != -1)
  {
    PRLogRendering_cold_1();
  }

  v2 = PRLogRendering___logObj;

  return v2;
}

uint64_t OUTLINED_FUNCTION_31(void *a1, const char *a2)
{

  return [a1 frameForElements:v4 variant:v5 withBoundingRect:{v6, v3}];
}

id PRLogTelemetrySignposts(uint64_t a1)
{
  if (PRLogTelemetrySignposts_onceToken != -1)
  {
    PRLogTelemetrySignposts_cold_1();
  }

  v2 = PRLogTelemetrySignposts___logObj;

  return v2;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return [v16 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

id PRLogModel(uint64_t a1)
{
  if (PRLogModel_onceToken != -1)
  {
    PRLogModel_cold_1();
  }

  v2 = PRLogModel___logObj;

  return v2;
}

id PRValidRenderingTransitionTypes(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = __PRValidRenderingTransitionTypesToSceneSetting(a1);
  v3 = [v2 allKeys];
  v4 = [v1 setWithArray:v3];

  return v4;
}

id __PRValidRenderingTransitionTypesToSceneSetting(uint64_t a1)
{
  if (__PRValidRenderingTransitionTypesToSceneSetting_onceToken != -1)
  {
    __PRValidRenderingTransitionTypesToSceneSetting_cold_1();
  }

  v2 = __PRValidRenderingTransitionTypesToSceneSetting_validTransitionTypesToSceneSetting;

  return v2;
}

uint64_t SceneSettingForPRRenderingTransitionType(void *a1)
{
  v1 = a1;
  v2 = __PRValidRenderingTransitionTypesToSceneSetting(v1);
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__n128 OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  *(v19 - 256) = a16.n128_u32[0];
  *(v16 + 4) = v17;
  *(v19 - 244) = 2114;
  *(v16 + 14) = v18;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return objc_opt_class();
}

id PRLogCommon(uint64_t a1)
{
  if (PRLogCommon_onceToken != -1)
  {
    PRLogCommon_cold_1();
  }

  v2 = PRLogCommon___logObj;

  return v2;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

double PRWidgetPlatterCornerRadius()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 10.0;
  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_1A8AAD6C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A8AAD6E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1A8AAD75C()
{
  MEMORY[0x1AC5751A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8AAD7E4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1A8AAD9A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A8BDDD64();
  *a1 = result;
  return result;
}

uint64_t sub_1A8AAD9F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A8BDDD84();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A8AADC40@<X0>(_BYTE *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.statusIsHidden.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8AADCA4@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.preferredAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A8AADCF8@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.preferredLayout.getter();
  *a1 = result;
  return result;
}

id sub_1A8AADD7C@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.emphasizedNameFont.getter();
  *a1 = result;
  return result;
}

void *sub_1A8AADDD4@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.secondaryNameFont.getter();
  *a1 = result;
  return result;
}

void sub_1A8AADE00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  IncomingCallTextViewAdapter.secondaryNameFont.setter(v1);
}

void *sub_1A8AADE30@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.statusFont.getter();
  *a1 = result;
  return result;
}

void sub_1A8AADE5C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  IncomingCallTextViewAdapter.statusFont.setter(v1);
}

uint64_t sub_1A8AADE8C@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.displayNameText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1A8AADEB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  IncomingCallTextViewAdapter.displayNameText.setter(v1, v2);
}

uint64_t sub_1A8AADEF8@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.statusText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1A8AADF30@<X0>(uint64_t *a1@<X8>)
{
  result = IncomingCallTextViewAdapter.maximumTextWidth.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A8AADFA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t PREditingSupportsLiveBlurs(uint64_t a1, uint64_t a2)
{
  if (PREditingSupportsLiveBlurs_onceToken != -1)
  {
    PREditingSupportsLiveBlurs_cold_1();
  }

  return PREditingSupportsLiveBlurs_supportsLiveBlurs;
}

void __PREditingSupportsLiveBlurs_block_invoke()
{
  v1 = MGGetStringAnswer();
  if ([v1 isEqualToString:@"t8010"])
  {
    v0 = 0;
  }

  else
  {
    v0 = [v1 isEqualToString:@"t8011"] ^ 1;
  }

  PREditingSupportsLiveBlurs_supportsLiveBlurs = v0;
}

id PRBundleURLFromReturnAddress()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:dyld_image_path_containing_address() isDirectory:0 relativeToURL:0];
  v1 = [v0 URLByDeletingLastPathComponent];

  return v1;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

uint64_t PRCSLayoutVariantFromPRLayoutVariant(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void sub_1A8AB4500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8AB485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXFaceGalleryItemEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!(v3 | v4))
  {
LABEL_2:
    v6 = 1;
    goto LABEL_29;
  }

  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 descriptorIdentifier];
    v8 = [v5 descriptorIdentifier];
    v9 = BSEqualObjects();

    if (!v9
      || ([v3 extensionBundleIdentifier], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "extensionBundleIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, !v12)
      || ([v3 displayNameLocalizationKey], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "displayNameLocalizationKey"), v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, !v15)
      || ([v3 spokenNameLocalizationKey], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "spokenNameLocalizationKey"), v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, !v18)
      || ([v3 descriptiveTextLocalizationKey], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "descriptiveTextLocalizationKey"), v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, !v21)
      || ([v3 localizedDisplayName], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedDisplayName"), v23 = objc_claimAutoreleasedReturnValue(), v24 = BSEqualObjects(), v23, v22, !v24)
      || ([v3 localizedSubtitle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedSubtitle"), v26 = objc_claimAutoreleasedReturnValue(), v27 = BSEqualObjects(), v26, v25, !v27)
      || ([v3 titleFontName], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "titleFontName"), v29 = objc_claimAutoreleasedReturnValue(), v30 = BSEqualObjects(), v29, v28, !v30)
      || ([v3 titleColor], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "titleColor"), v32 = objc_claimAutoreleasedReturnValue(), v33 = BSEqualObjects(), v32, v31, !v33)
      || ([v3 subtitleComplication], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "subtitleComplication"), v35 = objc_claimAutoreleasedReturnValue(), v36 = BSEqualObjects(), v35, v34, !v36)
      || ([v3 modeSemanticType], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "modeSemanticType"), v38 = objc_claimAutoreleasedReturnValue(), v39 = BSEqualObjects(), v38, v37, !v39)
      || ([v3 modeUUID], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "modeUUID"), v41 = objc_claimAutoreleasedReturnValue(), v42 = BSEqualObjects(), v41, v40, !v42)
      || (v43 = [v3 isBlankTemplate], v43 != objc_msgSend(v5, "isBlankTemplate"))
      || (v44 = [v3 shouldShowAsShuffleStack], v44 != objc_msgSend(v5, "shouldShowAsShuffleStack"))
      || (v45 = [v3 source], v45 != objc_msgSend(v5, "source"))
      || (v46 = [v3 layoutType], v46 != objc_msgSend(v5, "layoutType"))
      || ([v3 complications], v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "count"), objc_msgSend(v5, "complications"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "count"), v49, v47, v48 != v50))
    {
      v6 = 0;
      goto LABEL_29;
    }

    v51 = [v3 complications];
    v52 = [v51 count];

    if (!v52)
    {
      goto LABEL_2;
    }

    v53 = 0;
    v54 = v52 - 1;
    do
    {
      v55 = [v3 complications];
      v56 = [v55 objectAtIndex:v53];

      v57 = [v5 complications];
      v58 = [v57 objectAtIndex:v53];

      v6 = ATXComplicationEqualObjects(v56, v58);
      if (!v6)
      {
        break;
      }
    }

    while (v54 != v53++);
  }

LABEL_29:

  return v6;
}

uint64_t ATXComplicationEqualObjects(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CHSWidgetFromATXComplication();
  v4 = CHSWidgetFromATXComplication();

  v5 = [v3 matchesPersonality:v4];
  return v5;
}

void PREnumerateInterfaceOrientationsForMask(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = -1;
    do
    {
      v5 = v4 + 1;
      if (v4 > 2)
      {
        v6 = a1;
      }

      else
      {
        v6 = a1 & qword_1A8BF7B50[v4];
        if ((a1 & qword_1A8BF7B68[v4]) != 0)
        {
          v7 = 0;
          v3[2](v3, v5, &v7);
          if (v7)
          {
            break;
          }
        }
      }

      v4 = v5;
      a1 = v6;
    }

    while (v5 != 3);
  }
}

uint64_t PRLockPickIsActive(uint64_t a1, uint64_t a2)
{
  if (PRLockPickIsActive_onceToken != -1)
  {
    PRLockPickIsActive_cold_1();
  }

  return PRLockPickIsActive_lockPickIsActive;
}

void __PRLockPickIsActive_block_invoke()
{
  v0 = PFCurrentDeviceClass();
  v1 = _os_feature_enabled_impl();
  v2 = [MEMORY[0x1E698E730] sharedInstance];
  v3 = [v2 homeButtonType];

  v5 = v0 != 1 && v3 == 2;
  PRLockPickIsActive_lockPickIsActive = v5 & v1;
}

uint64_t PRIsLowQualityDevice(uint64_t a1, uint64_t a2)
{
  if (PRIsLowQualityDevice_onceToken != -1)
  {
    PRIsLowQualityDevice_cold_1();
  }

  return PRIsLowQualityDevice_isLowQualityDevice;
}

void __PRIsLowQualityDevice_block_invoke()
{
  v1 = MGGetStringAnswer();
  if ([v1 isEqualToString:@"t8010"])
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 isEqualToString:@"t8011"];
  }

  PRIsLowQualityDevice_isLowQualityDevice = v0;
}

uint64_t PRIsDepthEffectDisallowed(int a1, int a2, unsigned int a3)
{
  if (PUIFeatureEnabled())
  {
    return a3;
  }

  else
  {
    return a1 & a2 | a3;
  }
}

uint64_t PRIsDepthEffectDisallowedWithRowMode(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = PUIFeatureEnabled();
  if (a4 == 1 || (v8 & 1) == 0)
  {
    return a1 & a2 | a3;
  }

  return a3;
}

uint64_t PRGetMaximumMemoryUsageForCurrentProcess()
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *task_info_out = 0u;
  v3 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return v11 + v23;
  }
}

uint64_t PRGetMemoryUsageForCurrentProcess()
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  memset(v2, 0, sizeof(v2));
  v0 = getpid();
  if (proc_pid_rusage(v0, 6, v2) < 0)
  {
    return 0;
  }

  else
  {
    return *(&v3 + 1);
  }
}

void sub_1A8AB8DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8AB99A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

uint64_t PRPosterContentsBackgroundTypeForLuminance(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  if (a1 > 0.9)
  {
    return 2;
  }

  if (a1 >= 0.1)
  {
    return 1;
  }

  return 3;
}

uint64_t BSUIVibrancyBackgroundTypeForPRPosterContentsBackgroundType(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

__CFString *NSStringFromPRRenderingTransitionPhase(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E78433B8[a1];
  }
}

id PRSharedWidgetExtensionProvider(uint64_t a1)
{
  if (PRSharedWidgetExtensionProvider___once != -1)
  {
    PRSharedWidgetExtensionProvider_cold_1();
  }

  v2 = PRSharedWidgetExtensionProvider___instance;

  return v2;
}

void __PRSharedWidgetExtensionProvider_block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x1E6994398]);
  v0 = [objc_alloc(MEMORY[0x1E6994250]) initIncludingVisible:1 hidden:0];
  v1 = [objc_alloc(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:v4 controlsPredicate:v0 includeIntents:1];
  v2 = [objc_alloc(MEMORY[0x1E69943C0]) initWithOptions:v1];
  v3 = PRSharedWidgetExtensionProvider___instance;
  PRSharedWidgetExtensionProvider___instance = v2;
}

void PRSetupSharedWidgetExtensionProvider(uint64_t result, uint64_t a2)
{
  if (PRSetupSharedWidgetExtensionProvider_onceToken != -1)
  {
    PRSetupSharedWidgetExtensionProvider_cold_1();
  }
}

void __PRSetupSharedWidgetExtensionProvider_block_invoke()
{
  v0 = dispatch_get_global_queue(25, 0);
  dispatch_async(v0, &__block_literal_global_7);
}

void __PRSetupSharedWidgetExtensionProvider_block_invoke_2(uint64_t a1)
{
  v1 = PRSharedWidgetExtensionProvider(a1);
  v2 = PRLogModel([v1 extensions]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __PRSetupSharedWidgetExtensionProvider_block_invoke_2_cold_1(v1, v2);
  }
}

void sub_1A8AC242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 176));
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_1A8AC4118(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromPRPosterLevel(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 > 1999)
    {
      if (a1 == 2000)
      {
        v2 = @"PRPosterLevelContentOverlay";

        return v2;
      }

      if (a1 == 3000)
      {
        v2 = @"PRPosterLevelModal";

        return v2;
      }
    }

    else
    {
      if (!a1)
      {
        v2 = @"PRPosterLevelTime";

        return v2;
      }

      if (a1 == 1000)
      {
        v2 = @"PRPosterLevelFloating";

        return v2;
      }
    }

LABEL_36:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Unknown PRPosterLevel %lu)", a1];;

    return v2;
  }

  if (a1 > -1001)
  {
    if (a1 == -1000)
    {
      v2 = @"PRPosterLevelForeground";

      return v2;
    }

    if (a1 == -500)
    {
      v2 = @"PRPosterLevelFloatingUnder";

      return v2;
    }

    goto LABEL_36;
  }

  if (a1 != -3000)
  {
    if (a1 == -2000)
    {
      v2 = @"PRPosterLevelBackground";

      return v2;
    }

    goto LABEL_36;
  }

  v2 = @"PRPosterLevelBackdrop";

  return v2;
}

__CFString *ShortNSStringFromPRPosterLevel(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 > 1999)
    {
      if (a1 == 2000)
      {
        v2 = @"CO6";

        return v2;
      }

      if (a1 == 3000)
      {
        v2 = @"M7";

        return v2;
      }
    }

    else
    {
      if (!a1)
      {
        v2 = @"TIME4";

        return v2;
      }

      if (a1 == 1000)
      {
        v2 = @"FL5";

        return v2;
      }
    }

LABEL_36:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(UNK%lu)", a1];

    return v2;
  }

  if (a1 > -1001)
  {
    if (a1 == -1000)
    {
      v2 = @"FG2";

      return v2;
    }

    if (a1 == -500)
    {
      v2 = @"FU3";

      return v2;
    }

    goto LABEL_36;
  }

  if (a1 != -3000)
  {
    if (a1 == -2000)
    {
      v2 = @"BG1";

      return v2;
    }

    goto LABEL_36;
  }

  v2 = @"BD0";

  return v2;
}

id _PRPosterContentStyleStringForType(uint64_t a1)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1C6B590;
  v6[1] = &unk_1F1C6B5A8;
  v7[0] = @"OpaqueDiscreteColors";
  v7[1] = @"Gradient";
  v6[2] = &unk_1F1C6B5C0;
  v6[3] = &unk_1F1C6B5D8;
  v7[2] = @"VibrantMaterial";
  v7[3] = @"VibrantMonochrome";
  v6[4] = &unk_1F1C6B5F0;
  v6[5] = &unk_1F1C6B608;
  v7[4] = @"LUT";
  v7[5] = @"GlassMaterial";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

__CFString *_PRPosterGradientStyleIdentifierStringForGradientType(uint64_t a1)
{
  v1 = @"A";
  if (a1 == 1)
  {
    v1 = @"R";
  }

  if (a1 == 2)
  {
    return @"C";
  }

  else
  {
    return v1;
  }
}

id PRPosterContentStyleClasses()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];

  return v0;
}

__CFString *PRStringForEditingDestination(uint64_t a1)
{
  v1 = @"PREditingDestinationUnknown";
  if (a1 == 2)
  {
    v1 = @"PREditingDestinationUpdate";
  }

  if (a1 == 1)
  {
    return @"PREditingDestinationNew";
  }

  else
  {
    return v1;
  }
}

uint64_t PREditingDestinationForString(void *a1)
{
  v1 = a1;
  if ([@"PREditingDestinationNew" isEqual:v1])
  {
    v2 = 1;
  }

  else if ([@"PREditingDestinationUpdate" isEqual:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PRSystemNumberingSystem()
{
  v0 = MEMORY[0x1E69AAE08];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 numberingSystemForLocaleID:v2];

  return v3;
}

id _PRAllNumberingSystemsMap()
{
  v3[16] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F1C6B620;
  v2[1] = &unk_1F1C6B638;
  v3[0] = @"latn";
  v3[1] = @"arab";
  v2[2] = &unk_1F1C6B650;
  v2[3] = &unk_1F1C6B668;
  v3[2] = @"deva";
  v3[3] = @"khmr";
  v2[4] = &unk_1F1C6B680;
  v2[5] = &unk_1F1C6B698;
  v3[4] = @"mymr";
  v3[5] = @"beng";
  v2[6] = &unk_1F1C6B6B0;
  v2[7] = &unk_1F1C6B6C8;
  v3[6] = @"guru";
  v3[7] = @"gujr";
  v2[8] = &unk_1F1C6B6E0;
  v2[9] = &unk_1F1C6B6F8;
  v3[8] = @"taml";
  v3[9] = @"telu";
  v2[10] = &unk_1F1C6B710;
  v2[11] = &unk_1F1C6B728;
  v3[10] = @"mlym";
  v3[11] = @"knda";
  v2[12] = &unk_1F1C6B740;
  v2[13] = &unk_1F1C6B758;
  v3[12] = @"orya";
  v3[13] = @"olck";
  v2[14] = &unk_1F1C6B770;
  v2[15] = &unk_1F1C6B788;
  v3[14] = @"mtei";
  v3[15] = @"arabext";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:16];

  return v0;
}

id PRAllNumberingSystems()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1F1C6BC20];
  if (_os_feature_enabled_impl())
  {
    [v0 addObjectsFromArray:&unk_1F1C6BC38];
  }

  v1 = [v0 sortedArrayUsingComparator:&__block_literal_global_11];

  return v1;
}

uint64_t __PRAllNumberingSystems_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = PRNumberingSystemDisplayNameForType([a2 integerValue]);
  v6 = [v4 integerValue];

  v7 = PRNumberingSystemDisplayNameForType(v6);
  v8 = [v5 localizedCompare:v7];

  return v8;
}

id PRNumberingSystemDisplayNameForType(uint64_t a1)
{
  v2 = PRBundle(a1);
  v3 = v2;
  if ((a1 - 1) > 0xE)
  {
    v4 = @"ARABIC_NUMBERS";
  }

  else
  {
    v4 = off_1E7843808[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F1C13D90 table:@"PosterKit"];

  return v5;
}

id PRAllNumberingSystemStrings()
{
  v0 = _PRAllNumberingSystemsMap();
  v1 = PRAllNumberingSystems();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PRAllNumberingSystemStrings_block_invoke;
  v5[3] = &unk_1E78437E8;
  v6 = v0;
  v2 = v0;
  v3 = [v1 bs_compactMap:v5];

  return v3;
}

__CFString *PRNumberingSystemStringForType(uint64_t a1)
{
  v2 = _PRAllNumberingSystemsMap();
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"latn";
  }

  v7 = v6;

  return v6;
}

id PRNumberingSystemImageForType(uint64_t a1)
{
  v1 = MEMORY[0x1E69DCAB8];
  switch(a1)
  {
    case 1:
    case 15:
      v2 = @"textformat.numbers.ar";
      goto LABEL_16;
    case 2:
      v2 = @"textformat.numbers.hi";
      goto LABEL_16;
    case 3:
      v2 = @"textformat.numbers.km";
      goto LABEL_16;
    case 4:
      v2 = @"textformat.numbers.my";
      goto LABEL_16;
    case 5:
      v2 = @"textformat.numbers.bn";
      goto LABEL_16;
    case 6:
      v2 = @"textformat.numbers.pa";
      goto LABEL_16;
    case 7:
      v2 = @"textformat.numbers.gu";
      goto LABEL_16;
    case 9:
      v2 = @"textformat.numbers.te";
      goto LABEL_16;
    case 10:
      v2 = @"textformat.numbers.ml";
      goto LABEL_16;
    case 11:
      v2 = @"textformat.numbers.kn";
      goto LABEL_16;
    case 12:
      v2 = @"textformat.numbers.or";
      goto LABEL_16;
    case 13:
      v2 = @"textformat.numbers.sat";
      goto LABEL_16;
    case 14:
      v2 = @"textformat.numbers.mni";
LABEL_16:
      v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v2];
      break;
    default:
      v3 = PRBundle(a1);
      v4 = [v1 imageNamed:@"textformat.12" inBundle:v3 withConfiguration:0];

      break;
  }

  return v4;
}

id PRNumberingSystemDisplayFontForFont(void *a1)
{
  if (a1)
  {
    [a1 fontWithSize:50.0];
  }

  else
  {
    [MEMORY[0x1E69DB878] systemFontOfSize:50.0];
  }
  v1 = ;

  return v1;
}

void sub_1A8ADA660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

__CFString *NSStringFromPRAmbientCreationBehavior(uint64_t a1)
{
  v1 = @"(unknown creation behavior)";
  if (a1 == 1)
  {
    v1 = @"Manual";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Auto";
  }
}

__CFString *NSStringFromPRAmbientDeletionBehavior(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown deletion behavior)";
  }

  else
  {
    return off_1E7843A20[a1];
  }
}

__CFString *NSStringFromPRAmbientEditingBehavior(uint64_t a1)
{
  v1 = @"(unknown editing behavior)";
  if (a1 == 1)
  {
    v1 = @"NotEditable";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Editable";
  }
}

__CFString *NSStringFromPRAmbientGalleryDisplayBehavior(uint64_t a1)
{
  v1 = @"(unknown gallery display behavior)";
  if (a1 == 1)
  {
    v1 = @"Hidden";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Visible";
  }
}

uint64_t PRAmbientGalleryDisplayBehaviorFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"visible"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"hidden"];
  }

  return v2;
}

__CFString *NSStringFromPRPosterAmbientSupportedDataLayout(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown data layout)";
  }

  else
  {
    return off_1E7843A00[a1];
  }
}

void sub_1A8AE09D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PRStringForEditingVariant(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7843A88[a1 + 1];
  }
}

uint64_t PREditingVariantForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"home"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"lock"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"none"] << 63 >> 63;
  }

  return v2;
}

void sub_1A8AE5580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8AE5BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8AE9DF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1A8AEBD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 128));
  _Unwind_Resume(a1);
}

void sub_1A8AEC29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8AEC5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8AECA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v36 - 128));
  _Unwind_Resume(a1);
}

void sub_1A8AEEFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8AEFD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8AF04AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_1A8AF56AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8AF5A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8AF9938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A8AFC87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1A8B066E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8B0C3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8B0C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8B0CBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B13138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8B140F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B18DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PRFindLUTFilterView(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 layer];
  v3 = objc_opt_class();
  LODWORD(v3) = [v3 isEqual:objc_opt_class()];

  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [v1 layer];
    v5 = [v4 filters];

    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v9 = *MEMORY[0x1E6979C80];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v24 + 1) + 8 * i) type];
          v12 = [v11 isEqual:v9];

          if (v12)
          {
            v17 = v1;
            goto LABEL_21;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v1 subviews];
  v13 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v5);
      }

      v17 = PRFindLUTFilterView(*(*(&v20 + 1) + 8 * v16));
      if (v17)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

LABEL_21:
    v18 = v17;
  }

  else
  {
LABEL_19:
    v18 = 0;
  }

  return v18;
}

void sub_1A8B1E31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8B1F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PRPosterRoleAttributeForData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if ([v3 isEqualToString:@"PRPosterRoleAttributeTypeSuggestionMetadata"])
    {
      v5 = @"PRPosterSuggestionMetadata";
LABEL_18:
      v6 = [NSClassFromString(&v5->isa) decodeObjectWithJSON:v4];
      goto LABEL_20;
    }

    if ([v3 isEqualToString:@"PRPosterRoleAttributeTypeHomeScreenConfiguration"])
    {
      v5 = @"PRPosterHomeScreenConfiguration";
      goto LABEL_18;
    }

    if ([v3 isEqualToString:@"PRPosterRoleAttributeTypeMetadata"])
    {
      v5 = @"PRPosterMetadata";
      goto LABEL_18;
    }

    if ([v3 isEqualToString:@"PRPosterRoleAttributeTypeFocusConfiguration"])
    {
      v5 = @"PRPosterFocusConfiguration";
      goto LABEL_18;
    }

    if ([v3 isEqualToString:@"PRPosterRoleAttributeTypeChildPosterUUID"])
    {
      v5 = @"PRChildPosterAttribute";
      goto LABEL_18;
    }

    if ([v3 isEqual:@"PRPosterRoleAttributeTypeUsageMetadata"])
    {
      v5 = @"PRPosterUsageMetadataAttribute";
      goto LABEL_18;
    }

    if ([v3 isEqual:@"PRPosterRoleAttributeTypeAmbientConfiguration"])
    {
      v5 = @"PRPosterAmbientConfiguration";
      goto LABEL_18;
    }

    if ([v3 isEqual:@"PRPosterRoleAttributeTypeAmbientChargerConfiguration"])
    {
      v5 = @"PRPosterAmbientChargerConfiguration";
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_20:

  return v6;
}

void sub_1A8B254F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __PRLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "Common");
  v1 = PRLogCommon___logObj;
  PRLogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __PRLogRendering_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "Rendering");
  v1 = PRLogRendering___logObj;
  PRLogRendering___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PRLogEditing(uint64_t a1)
{
  if (PRLogEditing_onceToken != -1)
  {
    PRLogEditing_cold_1();
  }

  v2 = PRLogEditing___logObj;

  return v2;
}

uint64_t __PRLogEditing_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "Editing");
  v1 = PRLogEditing___logObj;
  PRLogEditing___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __PRLogTelemetrySignposts_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "TelemetrySignposts");
  v1 = PRLogTelemetrySignposts___logObj;
  PRLogTelemetrySignposts___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PRLogSnapshotter(uint64_t a1)
{
  if (PRLogSnapshotter_onceToken != -1)
  {
    PRLogSnapshotter_cold_1();
  }

  v2 = PRLogSnapshotter___logObj;

  return v2;
}

uint64_t __PRLogSnapshotter_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "Snapshotter");
  v1 = PRLogSnapshotter___logObj;
  PRLogSnapshotter___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PRLogUpdatingService(uint64_t a1)
{
  if (PRLogUpdatingService_onceToken != -1)
  {
    PRLogUpdatingService_cold_1();
  }

  v2 = PRLogUpdatingService___logObj;

  return v2;
}

uint64_t __PRLogUpdatingService_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "UpdatingService");
  v1 = PRLogUpdatingService___logObj;
  PRLogUpdatingService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __PRLogModel_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "Model");
  v1 = PRLogModel___logObj;
  PRLogModel___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PRLogRenderingService(uint64_t a1)
{
  if (PRLogRenderingService_onceToken != -1)
  {
    PRLogRenderingService_cold_1();
  }

  v2 = PRLogRenderingService___logObj;

  return v2;
}

uint64_t __PRLogRenderingService_block_invoke()
{
  v0 = os_log_create("com.apple.PosterKit", "RenderingService");
  v1 = PRLogRenderingService___logObj;
  PRLogRenderingService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PRBundle(uint64_t a1)
{
  if (PRBundle___onceToken != -1)
  {
    PRBundle_cold_1();
  }

  v2 = PRBundle___posterKitBundle;

  return v2;
}

void __PRBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = PRBundle___posterKitBundle;
  PRBundle___posterKitBundle = v1;
}

uint64_t PRIsPlatformSupported(uint64_t a1, uint64_t a2)
{
  if (PRIsPlatformSupported_onceToken != -1)
  {
    PRIsPlatformSupported_cold_1();
  }

  return PRIsPlatformSupported_isPlatformSupported;
}

uint64_t __PRIsPlatformSupported_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = _os_feature_enabled_impl();
    result = 0;
  }

  else
  {
    result = _os_feature_enabled_impl();
    v4 = 0;
  }

  PRIsPlatformSupported_isPlatformSupported = (v1 == 0) & result | v4 & 1;
  return result;
}

void sub_1A8B2F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1A8B301FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8B325C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromPRPosterSnapshotDefinitionLayerSet(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_1E7844DC0[a1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported layerset value: %ld", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromPRPosterSnapshotDefinitionLayerSet_cold_1(v2);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

id PRPosterLevelSetsForPRSPosterSnapshotDefinitionLayerSet(uint64_t a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v2 = +[PRPosterLevelSet allLevelsExceptFloating];
    v9 = v2;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v9;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v2 = +[PRPosterLevelSet floatingLevelSet];
    v10 = v2;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v10;
LABEL_7:
    v1 = [v6 arrayWithObjects:v7 count:1];
    goto LABEL_8;
  }

  if (a1)
  {
    goto LABEL_9;
  }

  v2 = +[PRPosterLevelSet compositeLevelSet];
  v11[0] = v2;
  v3 = +[PRPosterLevelSet foregroundLevelSet];
  v11[1] = v3;
  v4 = +[PRPosterLevelSet backgroundLevelSet];
  v11[2] = v4;
  v5 = +[PRPosterLevelSet floatingLevelSet];
  v11[3] = v5;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];

LABEL_8:
LABEL_9:

  return v1;
}

uint64_t PRPosterSnapshotDefinitionLayerSetForPRPosterLevelSets(void *a1)
{
  v1 = a1;
  v2 = 2;
  v3 = PRPosterLevelSetsForPRSPosterSnapshotDefinitionLayerSet(2);
  v4 = [v1 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    v5 = PRPosterLevelSetsForPRSPosterSnapshotDefinitionLayerSet(1);
    v6 = [v1 isEqual:v5];

    v2 = v6;
  }

  return v2;
}

void sub_1A8B3B7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1A8B46CEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8B4C3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_destroyWeak((v22 + 40));
  objc_sync_exit(v21);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v23 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromPRPosterGalleryPresentationStyle(uint64_t a1)
{
  if (!a1)
  {
    return @"DEFAULT";
  }

  if (a1 != 1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Undefined gallery presentation style %ld", a1];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      NSStringFromPRPosterGalleryPresentationStyle_cold_1(v2);
    }

    [v2 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8B4CA2CLL);
  }

  return @"SLIDEUP";
}

__CFString *NSStringFromPRPosterGalleryDisplayStyle(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_1E7845158[a1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Undefined gallery display style %ld", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromPRPosterGalleryDisplayStyle_cold_1(v2);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

uint64_t PRPosterGalleryPresentationStyleFromString(void *a1)
{
  v1 = [a1 uppercaseString];
  v2 = [v1 isEqualToString:@"SLIDEUP"];

  return v2;
}

uint64_t PRPosterGalleryDisplayStyleFromString(void *a1)
{
  v1 = [a1 uppercaseString];
  if ([v1 isEqualToString:@"LIVE"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"GYRO_DEMO"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"TIME_DEMO"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _PRCAGradientLayerTypeFromPRContentStyleGradientType(uint64_t a1)
{
  v1 = MEMORY[0x1E6979DA8];
  v2 = MEMORY[0x1E6979DB0];
  if (a1 != 1)
  {
    v2 = MEMORY[0x1E6979DA0];
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  return *v1;
}

id PersistentIdentifierForPRSWidget(void *a1)
{
  v1 = MEMORY[0x1E6994370];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 extensionBundleIdentifier];
  v5 = [v2 containerBundleIdentifier];
  v6 = [v2 kind];
  v7 = [v2 family];
  v8 = [v2 intent];
  v9 = [v3 initWithExtensionBundleIdentifier:v4 containerBundleIdentifier:v5 kind:v6 family:v7 intent:v8];

  v10 = +[PRWidgetMetricsProvider sharedInstance];
  v11 = [v10 systemMetricsForWidget:v9];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v2 extensionBundleIdentifier];
  v14 = [v2 containerBundleIdentifier];
  v15 = [v2 kind];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "family")}];
  [v11 size];
  v17 = NSStringFromCGSize(v22);
  v18 = [v2 intent];

  v19 = [v12 stringWithFormat:@"(WIDGET:%@-%@-%@-%@-%@-%lld)", v13, v14, v15, v16, v17, objc_msgSend(v18, "_indexingHash")];

  return v19;
}

void sub_1A8B5DE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B63F9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1A8B67DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_1A8B6A61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B6CD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8B6EE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PRValidRenderingEventTypes(uint64_t a1)
{
  if (__PRValidRenderingEventTypes_onceToken != -1)
  {
    PRValidRenderingEventTypes_cold_1();
  }

  v2 = __PRValidRenderingEventTypes_validEventTypes;

  return v2;
}

uint64_t PRRenderingEventTypeIsGrandfathered(void *a1)
{
  v1 = a1;
  v2 = __PRGrandfatheredRenderingEventTypes(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

id __PRGrandfatheredRenderingEventTypes(uint64_t a1)
{
  if (__PRGrandfatheredRenderingEventTypes_onceToken != -1)
  {
    __PRGrandfatheredRenderingEventTypes_cold_1();
  }

  v2 = __PRGrandfatheredRenderingEventTypes_grandfatheredEventTypes;

  return v2;
}

uint64_t PRRenderingEventTypeIsValid(void *a1)
{
  v1 = a1;
  v2 = PRValidRenderingEventTypes(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

id _PRCAEditingGradientLayerTypeFromPRContentStyleGradientType(uint64_t a1)
{
  v1 = MEMORY[0x1E6979DA8];
  v2 = MEMORY[0x1E6979DB0];
  if (a1 != 1)
  {
    v2 = MEMORY[0x1E6979DA0];
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  return *v1;
}

void sub_1A8B73290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 232));
  _Unwind_Resume(a1);
}

__CFString *NSStringForPRSceneSetting(uint64_t a1)
{
  if (a1 > 20663)
  {
    if (a1 > 20763)
    {
      v2 = 20769;
      v10 = @"Title String";
      v11 = @"Override Date";
      if (a1 != 20774)
      {
        v11 = 0;
      }

      if (a1 != 20773)
      {
        v10 = v11;
      }

      if (a1 == 20770)
      {
        v5 = @"Editing Accept Button Type";
      }

      else
      {
        v5 = v10;
      }

      v6 = 20764;
      v7 = @"Editing Variant";
      v8 = 20765;
      v9 = @"Editing Context";
    }

    else
    {
      v2 = 20665;
      v3 = @"Device Yaw";
      v4 = @"Covered by Modal Presentation";
      if (a1 != 20762)
      {
        v4 = 0;
      }

      if (a1 != 20667)
      {
        v3 = v4;
      }

      if (a1 == 20666)
      {
        v5 = @"Device Pitch";
      }

      else
      {
        v5 = v3;
      }

      v6 = 20664;
      v7 = @"Unlock Progress";
      v8 = 20665;
      v9 = @"Device Roll";
    }

    if (a1 == v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    if (a1 == v6)
    {
      v13 = v7;
    }

    else
    {
      v13 = v12;
    }

    if (a1 <= v2)
    {
      return v13;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(a1)
    {
      case 20562:
        result = @"Case Color";
        break;
      case 20563:
        result = @"Poster Configurable Options";
        break;
      case 20564:
        result = @"Poster Configured Properties";
        break;
      case 20565:
        result = @"Poster Title Style Configuration";
        break;
      case 20566:
        result = @"Poster Ambient Configuration";
        break;
      case 20567:
        result = @"Depth Effect Disallowed";
        break;
      case 20568:
        result = @"Parallax Enabled";
        break;
      case 20569:
        result = @"Parallax Disallowed";
        break;
      case 20570:
        result = @"Show Header Elements";
        break;
      case 20571:
        result = @"Show Complications";
        break;
      case 20572:
        result = @"Horizontal Title Bounding Rect";
        break;
      case 20573:
        result = @"Vertical Title Bounding Rect";
        break;
      case 20574:
        result = @"Effective Motion Effects Mode";
        break;
      case 20575:
        result = @"Rotation";
        break;
      case 20576:
        result = @"Device Motion Update Interval";
        break;
      case 20577:
        result = @"Hosted Content Settings";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void sub_1A8B7A908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

__CFString *PRStringForEditingContext(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7845930[a1];
  }
}

uint64_t PREditingContextForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"user"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"suggested"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"hero"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A8B7E394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A8B80D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B81C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PRPinViewWithinView(void *a1, void *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v18 = [v4 leadingAnchor];
  v17 = [v3 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [v4 trailingAnchor];
  v6 = [v3 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [v3 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

id PRPinViewWithinLayoutGuide(void *a1, void *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v18 = [v4 leadingAnchor];
  v17 = [v3 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [v4 trailingAnchor];
  v6 = [v3 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [v3 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

uint64_t PRRenderingTransitionTypeIsValid(void *a1)
{
  v1 = a1;
  v2 = PRValidRenderingTransitionTypes(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

void sub_1A8B83B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v24 - 120));
  _Unwind_Resume(a1);
}

void sub_1A8B85720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B85F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_1A8B87990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8B8806C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_15(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

__n128 OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a45, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, __int128 a44, __n128 a46)
{
  *(v46 - 224) = a43;
  *(v46 - 208) = a44;
  result = a46;
  *(v46 - 192) = a46;
  return result;
}

void OUTLINED_FUNCTION_25()
{

  [(PRRenderer *)v0 _reportUpdatedEnvironmentWithTransition:?];
}

CGFloat OUTLINED_FUNCTION_30()
{
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = v1;

  return CGRectGetMinY(*&v5);
}

BOOL OUTLINED_FUNCTION_32(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_33(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_1A8B89B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float64x2_t *SPRotation3DMakeLookAt@<X0>(float64x2_t *__return_ptr a1@<X8>, float64x2_t *result@<X0>, SPPoint3D *a3@<X1>, SPVector3D *a4@<X2>)
{
  v8 = vsubq_f64(*&a3->x, *result);
  v4 = vsubq_f64(*&a3->vector.f64[2], result[1]);
  v5 = vmulq_f64(v4, v4);
  v5.f64[0] = 1.0 / sqrt(v5.f64[0] + vaddvq_f64(vmulq_f64(v8, v8)));
  v6 = vmulq_f64(v4, v5);
  v7 = vmulq_n_f64(v8, v5.f64[0]);
  *&v8.f64[0] = vextq_s8(v7, v7, 8uLL).u64[0];
  v9 = *&a4->vector.f64[2];
  v10 = vmulq_f64(v9, v9);
  v10.f64[0] = 1.0 / sqrt(v10.f64[0] + vaddvq_f64(vmulq_f64(*&a4->x, *&a4->x)));
  v11 = vmulq_n_f64(*&a4->x, v10.f64[0]);
  v12 = vmulq_f64(v9, v10);
  v10.f64[0] = v6.f64[0];
  v10.f64[1] = v7.f64[0];
  v13 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v6), v11, 1), v12, v7, 1);
  v12.f64[1] = v11.f64[0];
  v14 = vmlaq_f64(vmulq_f64(v12, vnegq_f64(v7)), v11, v10);
  v15 = vmulq_f64(v14, v14);
  v16 = vmulq_f64(v13, v13).f64[0];
  v13.f64[1] = v14.f64[0];
  v15.f64[0] = 1.0 / sqrt(v15.f64[1] + v16 + v15.f64[0]);
  v17 = vmulq_n_f64(v13, v15.f64[0]);
  v18 = vmulq_laneq_f64(v15, v14, 1);
  v19 = vnegq_f64(v17);
  v20 = vnegq_f64(v18);
  v18.f64[1] = v17.f64[0];
  v24 = vmlaq_f64(vmulq_f64(v10, v19), v7, v18);
  v21 = vmlaq_laneq_f64(vmulq_laneq_f64(v20, v7, 1), v6, v17, 1);
  v17.f64[0] = vmulq_f64(v21, v21).f64[0];
  v21.f64[1] = v24.f64[0];
  v22 = vmulq_f64(v24, v24);
  v22.f64[0] = 1.0 / sqrt(v22.f64[1] + v17.f64[0] + v22.f64[0]);
  v23 = vmulq_n_f64(v21, v22.f64[0]);
  *&v24.f64[0] = *&vmulq_laneq_f64(v22, v24, 1);
  v25 = v6.f64[0] + v19.f64[0] + v23.f64[1];
  if (v25 >= 0.0)
  {
    v36 = sqrt(v25 + 1.0);
    v37 = v36 + v36;
    v24.f64[1] = v7.f64[0];
    v7.f64[1] = v8.f64[0];
    v38.f64[0] = 1.0 / v37;
    v33 = vmulq_n_f64(vsubq_f64(v24, vextq_s8(v7, v20, 8uLL)), 1.0 / v37);
    v38.f64[1] = v37;
    __asm { FMOV            V2.2D, #0.25 }

    _Q2.f64[0] = v19.f64[1] - v23.f64[0];
    v35 = vmulq_f64(v38, _Q2);
  }

  else if (v19.f64[0] < v6.f64[0] || v19.f64[0] < v23.f64[1])
  {
    v44 = 1.0 - v19.f64[0];
    if (v23.f64[1] >= v6.f64[0])
    {
      v48 = sqrt(v44 - v6.f64[0] + v23.f64[1]);
      v49 = v48 + v48;
      v50.f64[0] = 1.0 / v49;
      v7.f64[1] = v8.f64[0];
      v8.f64[1] = v24.f64[0];
      v35 = vmulq_n_f64(vextq_s8(vaddq_f64(v7, v8), vsubq_f64(v7, v20), 8uLL), 1.0 / v49);
      v50.f64[1] = v49;
      __asm { FMOV            V1.2D, #0.25 }

      _Q1.f64[0] = v19.f64[1] + v23.f64[0];
      v33 = vmulq_f64(v50, _Q1);
    }

    else
    {
      v45 = sqrt(v6.f64[0] + v44 - v23.f64[1]);
      v46.f64[0] = v45 + v45;
      v7.f64[1] = v8.f64[0];
      v20.f64[1] = v24.f64[0];
      v33 = vmulq_n_f64(vaddq_f64(v7, v20), 1.0 / v46.f64[0]);
      v46.f64[1] = v19.f64[1] - v23.f64[0];
      __asm { FMOV            V0.2D, #0.25 }

      _Q0.f64[1] = 1.0 / v46.f64[0];
      v35 = vmulq_f64(v46, _Q0);
    }
  }

  else
  {
    v26 = sqrt(v19.f64[0] + 1.0 - v23.f64[1] - v6.f64[0]);
    v27.f64[0] = v26 + v26;
    v27.f64[1] = v19.f64[1] + v23.f64[0];
    __asm { FMOV            V5.2D, #0.25 }

    _Q5.f64[1] = 1.0 / v27.f64[0];
    v7.f64[1] = v24.f64[0];
    v24.f64[1] = v8.f64[0];
    v33 = vmulq_f64(v27, _Q5);
    *&v34.f64[0] = *&vaddq_f64(v7, v20);
    v34.f64[1] = vsubq_f64(v7, v24).f64[1];
    v35 = vmulq_n_f64(v34, 1.0 / v27.f64[0]);
  }

  v40 = vaddvq_f64(vaddq_f64(vmulq_f64(v33, v33), vmulq_f64(v35, v35)));
  if (v40 == 0.0)
  {
    v41 = xmmword_1A8BF7FD0;
    v42 = 0uLL;
  }

  else
  {
    v43 = 1.0 / sqrt(v40);
    v41 = vmulq_n_f64(v35, v43);
    v42 = vmulq_n_f64(v33, v43);
  }

  *a1 = v42;
  a1[1] = v41;
  return result;
}

id PRDefaultTimeNumberingSystem()
{
  v0 = MEMORY[0x1E69AAE08];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 numberingSystemForLocaleID:v2];

  return v3;
}

uint64_t PRTimeNumberingSystemRequiresLanguageTagging(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"deva"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"arabext"];
  }

  return v2;
}

__CFString *PRTimeNumberingSystemLanguageTag(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"deva"])
  {
    v2 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:&unk_1F1C6BCB0];
    v3 = [v2 firstObject];
  }

  else if ([v1 isEqualToString:@"arabext"])
  {
    v3 = @"ur";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PRFontNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierRounded"])
  {
    v2 = @".SFRoundedNumeric-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoft"])
  {
    v2 = @".SFSoftNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoftLight"])
  {
    v2 = @".SFSoftNumeric-Light";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v2 = @".ADTSlabSoftNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierStencil"])
  {
    v2 = @".SFStencilNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierRail"])
  {
    v2 = @".SFRailRoundedNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v2 = @".NewYorkSoftNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYorkHeavy"])
  {
    v2 = @".NewYorkSoftNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFArabic"])
  {
    v2 = @".SFArabic-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFArabicRounded"])
  {
    v2 = @".SFArabicRounded-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFHebrew"])
  {
    v2 = @".SFHebrew-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFHebrewRounded"])
  {
    v2 = @".SFHebrewRounded-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNovember"])
  {
    v2 = @"NovemberIndia-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNovemberCondensed"])
  {
    v2 = @"NovemberIndia-CondensedMedium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierOctober"])
  {
    v2 = @"OctoberIndia-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFPro"])
  {
    v2 = @".SFUI-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFRounded"])
  {
    v2 = @".SFUIRounded-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYorkAlpha"])
  {
    v2 = @".NewYork-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFCondensed"])
  {
    v2 = @".SFUI-CondensedMedium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierPrivateSystemSoftHeavy"])
  {
    v2 = @".SFSoftNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierPrivateSystemRoundedHeavy"])
  {
    v2 = @".SFRoundedNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierPrivateSystemStencilHeavy"])
  {
    v2 = @".SFStencilNumeric-Heavy";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PRTimeFontIdentifierForFontName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@".SFRoundedNumeric-Medium"])
  {
    v2 = @"PRTimeFontIdentifierRounded";
  }

  else if ([v1 isEqualToString:@".SFRoundedNumeric-Heavy"])
  {
    v2 = @"PRTimeFontIdentifierPrivateSystemRoundedHeavy";
  }

  else if ([v1 isEqualToString:@".SFSoftNumeric-Semibold"])
  {
    v2 = @"PRTimeFontIdentifierSoft";
  }

  else if ([v1 isEqualToString:@".SFSoftNumeric-Light"])
  {
    v2 = @"PRTimeFontIdentifierSoftLight";
  }

  else if ([v1 isEqualToString:@".SFSoftNumeric-Heavy"])
  {
    v2 = @"PRTimeFontIdentifierPrivateSystemSoftHeavy";
  }

  else if ([v1 isEqualToString:@".ADTSlabSoftNumeric-Semibold"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".ADTSlabNumeric-Semibold"))
  {
    v2 = @"PRTimeFontIdentifierSlab";
  }

  else if ([v1 isEqualToString:@".SFStencilNumeric-Semibold"])
  {
    v2 = @"PRTimeFontIdentifierStencil";
  }

  else if ([v1 isEqualToString:@".SFStencilNumeric-Heavy"])
  {
    v2 = @"PRTimeFontIdentifierPrivateSystemStencilHeavy";
  }

  else if ([v1 isEqualToString:@".SFRailRoundedNumeric-Heavy"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".SFRailNumeric-Heavy"))
  {
    v2 = @"PRTimeFontIdentifierRail";
  }

  else if ([v1 isEqualToString:@".NewYorkSoftNumeric-Semibold"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".NewYorkNumeric-Semibold"))
  {
    v2 = @"PRTimeFontIdentifierNewYork";
  }

  else if ([v1 isEqualToString:@".NewYorkSoftNumeric-Heavy"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".NewYorkNumeric-Heavy"))
  {
    v2 = @"PRTimeFontIdentifierNewYorkHeavy";
  }

  else if ([v1 isEqualToString:@".SFArabic-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFArabic";
  }

  else if ([v1 isEqualToString:@".SFArabicRounded-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFArabicRounded";
  }

  else if ([v1 isEqualToString:@".SFHebrew-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFHebrew";
  }

  else if ([v1 isEqualToString:@".SFHebrewRounded-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFHebrewRounded";
  }

  else if ([v1 isEqualToString:@"NovemberIndia-Medium"])
  {
    v2 = @"PRTimeFontIdentifierNovember";
  }

  else if ([v1 isEqualToString:@"NovemberIndia-CondensedMedium"])
  {
    v2 = @"PRTimeFontIdentifierNovemberCondensed";
  }

  else if ([v1 isEqualToString:@"OctoberIndia-Medium"])
  {
    v2 = @"PRTimeFontIdentifierOctober";
  }

  else if ([v1 isEqualToString:@".SFUI-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFPro";
  }

  else if ([v1 isEqualToString:@"..SFCompactRounded-Regular"])
  {
    v2 = @"PRTimeFontIdentifierSFRounded";
  }

  else if ([v1 isEqualToString:@".SFCompact-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFCondensed";
  }

  else if ([v1 isEqualToString:@".NewYork-Medium"])
  {
    v2 = @"PRTimeFontIdentifierNewYorkAlpha";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PRLocalizedDisplayNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierRounded"];
  if (v2)
  {
    v3 = @"TIME_FONT_ROUNDED";
LABEL_13:
    v4 = PRBundle(v2);
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F1C13D90 table:@"PosterKit"];

    goto LABEL_14;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierSoft"];
  if (v2)
  {
    v3 = @"TIME_FONT_SOFT";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierSlab"];
  if (v2)
  {
    v3 = @"TIME_FONT_SLAB";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierStencil"];
  if (v2)
  {
    v3 = @"TIME_FONT_STENCIL";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierRail"];
  if (v2)
  {
    v3 = @"TIME_FONT_RAIL";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierNewYork"];
  if (v2)
  {
    v3 = @"TIME_FONT_NEWYORK";
    goto LABEL_13;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

__CFString *PRMinimumVariableFontNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierRounded"])
  {
    v2 = @".SFRoundedNumeric-Thin";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoft"])
  {
    v2 = @".SFSoftNumeric-Thin";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v2 = @".ADTSlabSoftNumeric-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierStencil"])
  {
    v2 = @".SFStencilNumeric-Thin";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v2 = @".NewYorkSoftNumeric-Medium";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PRMaximumVariableFontNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierRounded"])
  {
    v2 = @".SFRoundedNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoft"])
  {
    v2 = @".SFSoftNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v2 = @".ADTSlabSoftNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierStencil"])
  {
    v2 = @".SFStencilNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v2 = @".NewYorkSoftNumeric-Heavy";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PRTimeFontIdentifiers(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    [v2 addObject:@"PRTimeFontIdentifierSoft"];
    [v3 addObject:@"PRTimeFontIdentifierSoftLight"];
    [v3 addObject:@"PRTimeFontIdentifierRounded"];
    [v3 addObject:@"PRTimeFontIdentifierStencil"];
    [v3 addObject:@"PRTimeFontIdentifierNewYork"];
    [v3 addObject:@"PRTimeFontIdentifierNewYorkHeavy"];
    [v3 addObject:@"PRTimeFontIdentifierSlab"];
    [v3 addObject:@"PRTimeFontIdentifierRail"];
  }

  if ((a1 & 2) == 0)
  {
    [v3 addObject:@"PRTimeFontIdentifierPrivateSystemSoftHeavy"];
    [v3 addObject:@"PRTimeFontIdentifierPrivateSystemRoundedHeavy"];
    [v3 addObject:@"PRTimeFontIdentifierPrivateSystemStencilHeavy"];
  }

  return v3;
}

uint64_t PRTimeFontIsDownloadable(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierNovember"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"PRTimeFontIdentifierNovemberCondensed"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"PRTimeFontIdentifierOctober"];
  }

  return v2;
}

id PRFontAttributesForTimeFontIdentifier(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"PRTimeFontIdentifierNewYorkHeavy"))
  {
    v13[0] = *MEMORY[0x1E69658F8];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1869640570];
    v11[0] = v2;
    v12[0] = &unk_1F1C6BAE8;
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1397704276];
    v11[1] = v3;
    v12[1] = &unk_1F1C6BB00;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v13[1] = *MEMORY[0x1E6965890];
    v14[0] = v4;
    v14[1] = &unk_1F1C6BB18;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

LABEL_4:
    goto LABEL_5;
  }

  if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v9 = *MEMORY[0x1E69658F8];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1397704276];
    v7 = v2;
    v8 = &unk_1F1C6BB30;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v10 = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    goto LABEL_4;
  }

  v5 = MEMORY[0x1E695E0F8];
LABEL_5:

  return v5;
}

__CFString *PRStringForEditingAcceptButtonType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7845F90[a1];
  }
}

uint64_t PREditingAcceptButtonTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"done"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"add"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"next"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A8B936D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A8B938FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A8B93AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PRErrorCodeToDebugDescription(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown error.";
  }

  else
  {
    return off_1E7846078[a1 - 1];
  }
}

id PRIconGridSizeClassForWidgetFamily(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D4088] pr_widgetDomain];
  v3 = [v2 iconGridSizeClassForCHSWidgetFamily:a1];

  return v3;
}

id PRIconGridSizeClassSetForWidgetFamilyMask(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69D4090]);
  v3 = [MEMORY[0x1E69D4088] pr_widgetDomain];
  v4 = [v2 initWithCHSWidgetFamilyMask:a1 inDomain:v3];

  return v4;
}

uint64_t PRWidgetFamilyForIconGridSizeClass(void *a1)
{
  v1 = MEMORY[0x1E69D4088];
  v2 = a1;
  v3 = [v1 pr_widgetDomain];
  v4 = [v3 chsWidgetFamilyForIconGridSizeClass:v2];

  return v4;
}

double PRDirectionalEdgeInsetsInsetRect(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1)
  {
    a7 = a9;
  }

  return a2 + a7;
}

void sub_1A8B9F530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1A8BA09A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1A8BA1E70()
{
  v0 = sub_1A8BDDC24();
  __swift_allocate_value_buffer(v0, qword_1EB342AA0);
  v1 = __swift_project_value_buffer(v0, qword_1EB342AA0);
  result = PRLogCommon(v1);
  if (result)
  {
    return sub_1A8BDDC34();
  }

  __break(1u);
  return result;
}

BOOL sub_1A8BA1EE8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

BOOL sub_1A8BA1F5C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1A8BA1FBC(uint64_t a1, id *a2)
{
  result = sub_1A8BDE114();
  *a2 = 0;
  return result;
}

uint64_t sub_1A8BA2034(uint64_t a1, id *a2)
{
  v3 = sub_1A8BDE124();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A8BA20B4@<X0>(uint64_t *a1@<X8>)
{
  sub_1A8BDE134();
  v2 = sub_1A8BDE104();

  *a1 = v2;
  return result;
}

uint64_t sub_1A8BA20F8()
{
  v0 = sub_1A8BDE134();
  v1 = MEMORY[0x1AC5739C0](v0);

  return v1;
}

uint64_t sub_1A8BA2134(uint64_t a1)
{
  sub_1A8BDE134();
  sub_1A8BDE144();
}

uint64_t sub_1A8BA2188(uint64_t a1)
{
  sub_1A8BDE134();
  sub_1A8BDE3D4();
  sub_1A8BDE144();
  v1 = sub_1A8BDE404();

  return v1;
}

uint64_t sub_1A8BA2214(void *a1, uint64_t *a2)
{
  v2 = sub_1A8BDE134();
  v4 = v3;
  if (v2 == sub_1A8BDE134() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A8BDE3B4();
  }

  return v7 & 1;
}

uint64_t sub_1A8BA229C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1A8BDE104();

  *a2 = v3;
  return result;
}

uint64_t sub_1A8BA22E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A8BDE134();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8BA23D0(uint64_t a1, int a2)
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

uint64_t sub_1A8BA23F0(uint64_t result, int a2, int a3)
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

uint64_t sub_1A8BA2430(uint64_t a1)
{
  v2 = sub_1A8BA2530(&qword_1EB33D018, &unk_1A8BF81D0);
  v3 = sub_1A8BA2530(&unk_1EB340F40, &unk_1A8BF8124);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A8BA2530(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1A8BA25F0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t AmbientEditingTitledViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AmbientEditingTitledViewController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PRAmbientEditingTitledViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A8BA2A54;
}

void sub_1A8BA2A54(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1A8BA2AFC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDE1F4();

  return v3;
}

id AmbientEditingTitledViewController.init(contentViewController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  sub_1A8BA3FE4(0, &qword_1ED7F2360, 0x1E69DCC10);
  sub_1A8BDE214();
  sub_1A8BA3FE4(0, &qword_1ED7F2340, 0x1E69DC738);
  sub_1A8BDE214();
  *&v1[OBJC_IVAR___PRAmbientEditingTitledViewController_contentViewController] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  [v4 preferredContentSize];
  if (v6 > 100.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 100.0;
  }

  v9 = 50.0;
  if (v7 > 50.0)
  {
    v9 = v7;
  }

  v10 = v9 + 40.0;
  v11 = v5;
  [v11 setPreferredContentSize_];
  v12 = [v4 title];
  [v11 setTitle_];

  return v11;
}

Swift::Void __swiftcall AmbientEditingTitledViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = sub_1A8BDE104();
  v3 = [objc_opt_self() materialViewWithRecipeNamed_];

  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [v3 layer];
  [v5 setCornerCurve_];

  v6 = [v3 layer];
  [v6 setMaskedCorners_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v85 = v3;
  [v1 addSubview_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = [v0 title];
  [v7 setText_];

  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (!v10)
  {
    v10 = v9;
  }

  v87 = v9;
  v86 = v10;
  v11 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  [v7 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  [v7 setTextColor_];

  [v7 setNumberOfLines_];
  [v7 setAdjustsFontForContentSizeCategory_];
  v14 = *MEMORY[0x1E69DDC50];
  v15 = v7;
  [v15 setMaximumContentSizeCategory_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1132068864;
  [v15 setContentCompressionResistancePriority:0 forAxis:v17];
  [v1 addSubview_];
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v15;
  v19 = v0;
  sub_1A8BDE204();
  v20 = [v12 whiteColor];
  v21 = [objc_opt_self() configurationWithHierarchicalColor_];

  v22 = sub_1A8BDE104();
  v23 = [objc_opt_self() systemImageNamed_];

  v84 = v21;
  v24 = [v23 imageByApplyingSymbolConfiguration_];

  sub_1A8BA3FE4(0, &qword_1ED7F2340, 0x1E69DC738);
  sub_1A8BA3FE4(0, &qword_1EB341030, 0x1E69DC628);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = v24;
  sub_1A8BDE284();
  v26 = sub_1A8BDE294();
  [v26 setMaximumContentSizeCategory_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v19;
  v88 = v26;
  sub_1A8BDE204();
  v28 = *&v27[OBJC_IVAR___PRAmbientEditingTitledViewController_contentViewController];
  [v28 willMoveToParentViewController_];
  [v27 addChildViewController_];
  v29 = [v28 view];
  if (v29)
  {
    v30 = v29;
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    [v28 didMoveToParentViewController_];
    [v28 preferredContentSize];
    v32 = v31;
    v33 = [v30 heightAnchor];
    v34 = [v33 constraintEqualToConstant_];

    LODWORD(v35) = 1144750080;
    [v34 setPriority_];
    v82 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341038, &qword_1A8BF8310);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1A8BF8270;
    v37 = [v18 centerXAnchor];
    v81 = v27;
    v38 = [v1 centerXAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    *(v36 + 32) = v39;
    v40 = [v18 topAnchor];
    v41 = [v1 &selRef_vibrantMonochromeColor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:12.0];

    *(v36 + 40) = v42;
    v43 = [v18 trailingAnchor];
    v44 = [v88 leadingAnchor];
    v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:-8.0];

    *(v36 + 48) = v45;
    v46 = [v18 leadingAnchor];
    v47 = [v1 leadingAnchor];
    v48 = [v46 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v47 multiplier:1.0];

    *(v36 + 56) = v48;
    v49 = [v88 topAnchor];
    v50 = [v1 topAnchor];
    v51 = [v49 constraintEqualToSystemSpacingBelowAnchor:v50 multiplier:1.0];

    *(v36 + 64) = v51;
    v52 = [v1 trailingAnchor];
    v53 = [v88 trailingAnchor];

    v54 = [v52 constraintEqualToSystemSpacingAfterAnchor:v53 multiplier:1.0];
    *(v36 + 72) = v54;
    *(v36 + 80) = v34;
    v80 = v34;
    v55 = [v30 &selRef_vibrantMonochromeColor];
    v56 = [v18 bottomAnchor];

    v57 = [v55 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v56 multiplier:1.0];
    *(v36 + 88) = v57;
    v58 = [v30 leftAnchor];
    v59 = [v1 leftAnchor];
    v60 = [v58 constraintEqualToAnchor_];

    *(v36 + 96) = v60;
    v61 = [v30 rightAnchor];
    v62 = [v1 rightAnchor];
    v63 = [v61 constraintEqualToAnchor_];

    *(v36 + 104) = v63;
    v64 = [v30 &selRef_boundingShape + 5];
    v65 = [v1 &selRef_boundingShape + 5];
    v66 = [v64 constraintEqualToAnchor_];

    *(v36 + 112) = v66;
    v67 = [v85 leftAnchor];
    v68 = [v1 leftAnchor];
    v69 = [v67 constraintEqualToAnchor_];

    *(v36 + 120) = v69;
    v70 = [v85 rightAnchor];
    v71 = [v1 rightAnchor];
    v72 = [v70 constraintEqualToAnchor_];

    *(v36 + 128) = v72;
    v73 = [v85 bottomAnchor];
    v74 = [v1 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor_];

    *(v36 + 136) = v75;
    v76 = [v85 topAnchor];
    v77 = [v1 topAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    *(v36 + 144) = v78;
    sub_1A8BA3FE4(0, &qword_1EB341040, 0x1E696ACD8);
    v79 = sub_1A8BDE1C4();

    [v82 activateConstraints_];

    [v81 setView_];
  }

  else
  {
    sub_1A8BDE344();
    __break(1u);
  }
}

void sub_1A8BA3B3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 ambientEditingTitledViewControllerWantsToClose_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id AmbientEditingTitledViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A8BDE104();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AmbientEditingTitledViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A8BA3EA4@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDE1F4();

  *a4 = v6;
  return result;
}

uint64_t sub_1A8BA3F20(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return sub_1A8BDE204();
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

uint64_t sub_1A8BA3FE4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t type metadata accessor for AmbientEditingTitledViewController(uint64_t a1)
{
  result = qword_1ED7F2368;
  if (!qword_1ED7F2368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8BA4080(uint64_t a1)
{
  sub_1A8BA41BC(319, &qword_1ED7F2378, &qword_1ED7F2360, 0x1E69DCC10);
  if (v1 <= 0x3F)
  {
    sub_1A8BA41BC(319, &qword_1ED7F2348, &qword_1ED7F2340, 0x1E69DC738);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A8BA41BC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1A8BA3FE4(255, a3, a4);
    v5 = sub_1A8BDE224();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A8BA423C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v20 = sub_1A8BDDF84();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341060, &qword_1A8BF8510);
  sub_1A8BDE064();
  v21 = v24;
  sub_1A8BA4E48();
  v4 = sub_1A8BDDFC4();
  v6 = v5;
  v8 = v7;
  v21 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341068, &qword_1A8BF8518);
  sub_1A8BDE064();
  sub_1A8BDDF44();
  v9 = sub_1A8BDDFA4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1A8BA4E9C(v4, v6, v8 & 1);

  *&v21 = v9;
  *(&v21 + 1) = v11;
  v13 &= 1u;
  LOBYTE(v22) = v13;
  v23 = v15;
  sub_1A8BDDF54();
  sub_1A8BDDFF4();
  (*(v18 + 8))(v3, v20);
  sub_1A8BA4E9C(v9, v11, v13);
}

uint64_t sub_1A8BA44A0()
{
  v1 = *(v0 + 8);
  sub_1A8BDE3D4();
  sub_1A8BDE274();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1AC573C00](*&v2);
  return sub_1A8BDE404();
}

uint64_t sub_1A8BA450C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A8BDE274();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1AC573C00](*&v3);
}

uint64_t sub_1A8BA455C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A8BDE3D4();
  sub_1A8BDE274();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1AC573C00](*&v3);
  return sub_1A8BDE404();
}

uint64_t sub_1A8BA45C4(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1A8BA3FE4(0, &qword_1EB33CFA0, 0x1E69E58C0);
  return sub_1A8BDE264() & (v2 == v3);
}

void *sub_1A8BA4630()
{
  result = sub_1A8BB68E4(MEMORY[0x1E69E7CC0]);
  off_1EB33CFC0 = result;
  return result;
}

id VerticalLabel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VerticalLabel.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalLabel();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VerticalLabel.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VerticalLabel();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s9PosterKit13VerticalLabelC17maximumTextLength3forSi12CoreGraphics7CGFloatV_tFZ_0(double a1)
{
  v2 = [objc_opt_self() pr:@"PRTimeFontIdentifierSFPro" fontWithTimeFontIdentifier:@"PRPosterRoleIncomingCall" forRole:?];
  if (!v2)
  {
    return 0;
  }

  v3 = qword_1EB33CFB8;
  v4 = v2;
  if (v3 != -1)
  {
LABEL_37:
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1EB33CFC0;
  if (*(off_1EB33CFC0 + 2))
  {
    v6 = sub_1A8BB485C(v4, a1);
    if (v7)
    {
      v8 = *(v5[7] + 8 * v6);
      swift_endAccess();

      return v8;
    }
  }

  swift_endAccess();
  while (1)
  {
    swift_beginAccess();
    if (*(off_1EB33CFC0 + 2))
    {
      sub_1A8BB485C(v4, a1);
      if (v9)
      {
        swift_endAccess();

        swift_beginAccess();
        v39 = off_1EB33CFC0;
        if (*(off_1EB33CFC0 + 2) && (v40 = sub_1A8BB485C(v4, a1), (v41 & 1) != 0))
        {
          v8 = *(v39[7] + 8 * v40);
        }

        else
        {
          v8 = 0;
        }

        swift_endAccess();

        return v8;
      }
    }

    swift_endAccess();
    v10 = objc_opt_self();

    v11 = sub_1A8BDE104();
    [v10 idealEmphasizedFontSizeForName:v11 usingLayout:1];
    v13 = v12;

    [v4 fontWithSize_];
    sub_1A8BDE054();
    sub_1A8BA3FE4(0, &qword_1EB33CFF0, 0x1E69DB878);
    sub_1A8BDE054();
    v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341058, &qword_1A8BF83C8));
    v15 = sub_1A8BDDE34();
    v16 = [v15 view];
    if (!v16)
    {
      break;
    }

    v17 = v16;
    [v16 setNeedsLayout];

    v18 = [v15 view];
    if (!v18)
    {
      goto LABEL_39;
    }

    [v18 layoutIfNeeded];

    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];

    sub_1A8BDDE04();
    if (v20 > a1 || sub_1A8BDE154() >= 10)
    {
      v21 = v4;
      v22 = sub_1A8BDE154();
      v23 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = off_1EB33CFC0;
      v43 = off_1EB33CFC0;
      off_1EB33CFC0 = 0x8000000000000000;
      v26 = sub_1A8BB485C(v21, a1);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_35;
      }

      v32 = v27;
      if (v25[3] < v31)
      {
        sub_1A8BB4DFC(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_1A8BB485C(v21, a1);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_40;
        }

LABEL_22:
        v34 = v43;
        if (v32)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v38 = v26;
      sub_1A8BB5E00();
      v26 = v38;
      v34 = v43;
      if (v32)
      {
LABEL_7:
        *(v34[7] + 8 * v26) = v23;

        goto LABEL_8;
      }

LABEL_23:
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v35 = v34[6] + 16 * v26;
      *v35 = v21;
      *(v35 + 8) = a1;
      *(v34[7] + 8 * v26) = v23;
      v36 = v34[2];
      v30 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v30)
      {
        goto LABEL_36;
      }

      v34[2] = v37;
LABEL_8:
      off_1EB33CFC0 = v34;
      swift_endAccess();
    }

    else
    {
      MEMORY[0x1AC573970](9551087, 0xA300000000000000);
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1A8BDE3C4();
  __break(1u);
  return result;
}

uint64_t sub_1A8BA4C8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8BA4CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8BA4D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8BA4D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8BA4DF4()
{
  result = qword_1EB33CFC8;
  if (!qword_1EB33CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33CFC8);
  }

  return result;
}

unint64_t sub_1A8BA4E48()
{
  result = qword_1EB33D030[0];
  if (!qword_1EB33D030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB33D030);
  }

  return result;
}

uint64_t sub_1A8BA4E9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1A8BA4EAC()
{
  v0 = sub_1A8BDDBE4();
  __swift_allocate_value_buffer(v0, qword_1ED7F27D8);
  __swift_project_value_buffer(v0, qword_1ED7F27D8);
  return sub_1A8BDDBD4();
}

uint64_t sub_1A8BA4F10()
{
  v0 = sub_1A8BDDBE4();
  __swift_allocate_value_buffer(v0, qword_1ED7F27F0);
  __swift_project_value_buffer(v0, qword_1ED7F27F0);
  return sub_1A8BDDBD4();
}

uint64_t PRRenderingConfiguration.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC9PosterKit24PRRenderingConfiguration_role;
  if (qword_1ED7F2270 != -1)
  {
    swift_once();
  }

  v6 = sub_1A8BDDBE4();
  v7 = __swift_project_value_buffer(v6, qword_1ED7F27D8);
  v8 = (*(*(v6 - 8) + 16))(v4 + v5, v7, v6);
  v9 = (v4 + OBJC_IVAR____TtC9PosterKit24PRRenderingConfiguration__delegateFactory);
  *v9 = a1;
  v9[1] = a2;
  PRSetupSharedWidgetExtensionProvider(v8, v10);
  return v4;
}

uint64_t PRRenderingConfiguration.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9PosterKit24PRRenderingConfiguration_role;
  if (qword_1ED7F2270 != -1)
  {
    swift_once();
  }

  v6 = sub_1A8BDDBE4();
  v7 = __swift_project_value_buffer(v6, qword_1ED7F27D8);
  v8 = (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  v9 = (v2 + OBJC_IVAR____TtC9PosterKit24PRRenderingConfiguration__delegateFactory);
  *v9 = a1;
  v9[1] = a2;
  PRSetupSharedWidgetExtensionProvider(v8, v10);
  return v2;
}

uint64_t PREditingConfiguration.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC9PosterKit22PREditingConfiguration_role;
  if (qword_1ED7F2278 != -1)
  {
    swift_once();
  }

  v6 = sub_1A8BDDBE4();
  v7 = __swift_project_value_buffer(v6, qword_1ED7F27F0);
  v8 = (*(*(v6 - 8) + 16))(v4 + v5, v7, v6);
  v9 = (v4 + OBJC_IVAR____TtC9PosterKit22PREditingConfiguration__delegateFactory);
  *v9 = a1;
  v9[1] = a2;
  PRSetupSharedWidgetExtensionProvider(v8, v10);
  return v4;
}

uint64_t PREditingConfiguration.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9PosterKit22PREditingConfiguration_role;
  if (qword_1ED7F2278 != -1)
  {
    swift_once();
  }

  v6 = sub_1A8BDDBE4();
  v7 = __swift_project_value_buffer(v6, qword_1ED7F27F0);
  v8 = (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  v9 = (v2 + OBJC_IVAR____TtC9PosterKit22PREditingConfiguration__delegateFactory);
  *v9 = a1;
  v9[1] = a2;
  PRSetupSharedWidgetExtensionProvider(v8, v10);
  return v2;
}

id sub_1A8BA5394(void *a1, Class *a2)
{
  v3 = [objc_allocWithZone(*a2) initWithDelegate_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1A8BA5408(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_1A8BDDBE4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return v2;
}

uint64_t sub_1A8BA5494(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_1A8BDDBE4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return MEMORY[0x1EEE6BDC0](v2, v5, v6);
}

uint64_t sub_1A8BA5554@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1A8BDDBE4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

id sub_1A8BA55E0(uint64_t a1, uint64_t a2, void *a3, Class *a4)
{
  v5 = [objc_allocWithZone(*a4) initWithDelegate_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A8BA5664@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t *PRProviderConfiguration.__allocating_init(updatingDelegate:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1A8BA5A2C(a1, a2, a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t *PRProviderConfiguration.init(updatingDelegate:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1A8BA5A2C(a1, a2, a3);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t PRProviderConfiguration.__allocating_init(content:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PRProviderConfiguration.init(content:)(a1, a2);
  return v4;
}

uint64_t *PRProviderConfiguration.init(content:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A8BDDBC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8BDDBB4();
  (*(v4 + 32))(v2 + qword_1ED7F2808, v6, v3);
  *(v2 + qword_1ED7F2310) = 0;
  return v2;
}

id sub_1A8BA5908(uint64_t a1)
{
  result = *(v1 + qword_1ED7F2310);
  if (result)
  {
    return [result shouldAcceptConnection_];
  }

  return result;
}

uint64_t PRProviderConfiguration.deinit()
{
  v1 = qword_1ED7F2808;
  v2 = sub_1A8BDDBC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PRProviderConfiguration.__deallocating_deinit()
{
  PRProviderConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t *sub_1A8BA5A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A8BDDBC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A8BDDBB4();
  (*(v6 + 32))(v3 + qword_1ED7F2808, v8, v5);
  v9 = [objc_allocWithZone(PRUpdater) initWithDelegate_];
  *(v3 + qword_1ED7F2310) = v9;
  return v3;
}

uint64_t sub_1A8BA5B8C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1A8BA5CC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8BA5D00(uint64_t a1)
{
  result = sub_1A8BDDBE4();
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

uint64_t sub_1A8BA5DF0(uint64_t a1)
{
  result = sub_1A8BDDBC4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1A8BA5F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8BA5FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8BA6030(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  v7 = *(a1 + 11);
  v8 = *(a1 + 15);
  v19[4] = *(a1 + 13);
  v20[0] = v8;
  *(v20 + 9) = *(a1 + 129);
  v9 = *(a1 + 7);
  v19[0] = *(a1 + 5);
  v19[1] = v9;
  v19[2] = *(a1 + 9);
  v19[3] = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 32);
  *&v22[9] = *(a2 + 129);
  v13 = *(a2 + 15);
  v21[4] = *(a2 + 13);
  *v22 = v13;
  v14 = *(a2 + 11);
  v21[2] = *(a2 + 9);
  v21[3] = v14;
  v15 = *(a2 + 7);
  v21[0] = *(a2 + 5);
  v21[1] = v15;
  if (v4 == v10 && v5 == v11 || (sub_1A8BDE3B4()) && (sub_1A8BA6158(), (sub_1A8BDE264()))
  {
    v16 = sub_1A8BDE264();
    v17 = 0;
    if ((v16 & 1) != 0 && ((v6 ^ v12) & 1) == 0)
    {
      v17 = sub_1A8BB1138(v19, v21);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_1A8BA6158()
{
  result = qword_1EB33CFA0;
  if (!qword_1EB33CFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB33CFA0);
  }

  return result;
}

double sub_1A8BA61A4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_7:

    sub_1A8BA6348(&v23);
    goto LABEL_8;
  }

  v11 = a4;
  sub_1A8BB0BC8(a1, a2, v11, v21);
  *&v17[23] = v21[1];
  *&v17[7] = v21[0];
  *&v17[71] = v21[4];
  *&v17[55] = v21[3];
  *&v17[87] = v22[0];
  *&v17[39] = v21[2];
  *&v20[49] = *&v17[48];
  *&v20[65] = *&v17[64];
  *&v20[81] = *&v17[80];
  *&v20[97] = *(v22 + 9);
  *&v20[1] = *v17;
  *&v20[17] = *&v17[16];
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a3;
  *(&v19 + 1) = v11;
  v20[0] = 0;
  *&v20[33] = *&v17[32];
  nullsub_1();
  v29 = *&v20[64];
  v30 = *&v20[80];
  v31 = *&v20[96];
  v32 = v20[112];
  v25 = *v20;
  v26 = *&v20[16];
  v27 = *&v20[32];
  v28 = *&v20[48];
  v23 = v18;
  v24 = v19;
LABEL_8:
  v12 = v30;
  *(a5 + 96) = v29;
  *(a5 + 112) = v12;
  *(a5 + 128) = v31;
  *(a5 + 144) = v32;
  v13 = v26;
  *(a5 + 32) = v25;
  *(a5 + 48) = v13;
  v14 = v28;
  *(a5 + 64) = v27;
  *(a5 + 80) = v14;
  result = *&v23;
  v16 = v24;
  *a5 = v23;
  *(a5 + 16) = v16;
  return result;
}

double sub_1A8BA6348(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s10NameFormatV13NameComponentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10NameFormatV13NameComponentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A8BA64EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8BA6534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8BA65A0()
{
  v1 = *v0;
  sub_1A8BDE3D4();
  MEMORY[0x1AC573BF0](v1);
  return sub_1A8BDE404();
}

uint64_t sub_1A8BA65E8(uint64_t a1)
{
  v2 = *v1;
  sub_1A8BDE3D4();
  MEMORY[0x1AC573BF0](v2);
  return sub_1A8BDE404();
}

double sub_1A8BA662C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A8BDDF84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  sub_1A8BC25F4(&v21 - v7);
  sub_1A8BDDF64();
  v9 = sub_1A8BDDF74();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    if (qword_1EB33D260 != -1)
    {
      swift_once();
    }

    v14 = sub_1A8BDDC24();
    __swift_project_value_buffer(v14, qword_1EB342AA0);
    v15 = sub_1A8BDDC14();
    v16 = sub_1A8BDE1D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A8AA7000, v15, v16, "Vertical writing mode is unsupported", v17, 2u);
      MEMORY[0x1AC575150](v17, -1, -1);
    }

    return 0.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v35, v34, 0x12BuLL);
  memcpy(v36, v35, 0x12BuLL);
  if (sub_1A8BAECD4(v36) != 1)
  {
    v19 = sub_1A8AAD988(v36);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    v32[6] = v28;
    v32[7] = v29;
    v32[8] = v30;
    v33 = v31;
    v32[2] = v24;
    v32[3] = v25;
    v32[4] = v26;
    v32[5] = v27;
    v32[0] = v22;
    v32[1] = v23;
    v34[6] = v28;
    v34[7] = v29;
    v34[8] = v30;
    LOBYTE(v34[9]) = v31;
    v34[2] = v24;
    v34[3] = v25;
    v34[4] = v26;
    v34[5] = v27;
    v34[0] = v22;
    v34[1] = v23;
    v20 = sub_1A8AADFA8(v34);
    sub_1A8BAECE0(v35);
    if (v20 != 1)
    {
      sub_1A8BAF4B8(v32, &qword_1EB341178, &qword_1A8BF8B80);
      v12 = *(&v34[8] + 1);
      v13 = *(v19 + 128);
      return round(round(v12 + v13));
    }

    return 0.0;
  }

  v11 = sub_1A8AAD988(v36);
  sub_1A8BAECE0(v35);
  v12 = *(v11 + 136);
  v13 = *(v11 + 280);
  return round(round(v12 + v13));
}

uint64_t sub_1A8BA69B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v29 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341098, &qword_1A8BF8938);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410A0, &qword_1A8BF8940);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410A8, &qword_1A8BF8948);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = sub_1A8BDDF84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25[-v18];
  sub_1A8BC25F4(&v25[-v18]);
  (*(v14 + 16))(v17, v19, v13);
  v20 = sub_1A8BC0DC8(v17);
  LODWORD(v17) = PRPosterTitleLayoutIsVertical(v20);
  (*(v14 + 8))(v19, v13);
  if (v17)
  {
    sub_1A8BA6CEC(v27, a2, v26 & 1, v12);
    v21 = &qword_1EB3410A8;
    v22 = &qword_1A8BF8948;
    sub_1A8BAF440(v12, v9, &qword_1EB3410A8, &qword_1A8BF8948);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAE8D0();
    sub_1A8BAE9D0();
    sub_1A8BDDF04();
    v23 = v12;
  }

  else
  {
    sub_1A8BA7080(v27, a2, v26 & 1, v6);
    v21 = &qword_1EB341098;
    v22 = &qword_1A8BF8938;
    sub_1A8BAF440(v6, v9, &qword_1EB341098, &qword_1A8BF8938);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAE8D0();
    sub_1A8BAE9D0();
    sub_1A8BDDF04();
    v23 = v6;
  }

  return sub_1A8BAF4B8(v23, v21, v22);
}

uint64_t sub_1A8BA6CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341098, &qword_1A8BF8938);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410F8, &qword_1A8BF8998);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410B0, &qword_1A8BF8950);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25[-v12];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v31, v32, 0x12BuLL);
  memcpy(v32, v31, 0x12BuLL);
  v14 = sub_1A8BAECD4(v32);
  v15 = sub_1A8AAD988(v32);
  if (v14 == 1)
  {
    sub_1A8BAECE0(v31);
    sub_1A8BA7080(v27, a2, v26 & 1, v7);
    sub_1A8BAF440(v7, v10, &qword_1EB341098, &qword_1A8BF8938);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAFC18(&qword_1EB33D188, &qword_1EB3410B0, &qword_1A8BF8950, MEMORY[0x1E69817F8]);
    sub_1A8BAE9D0();
    sub_1A8BDDF04();
    v16 = v7;
    v17 = &qword_1EB341098;
    v18 = &qword_1A8BF8938;
  }

  else
  {
    v19 = *(v15 + 112);
    v29[6] = *(v15 + 96);
    v29[7] = v19;
    v29[8] = *(v15 + 128);
    v30 = *(v15 + 144);
    v20 = *(v15 + 48);
    v29[2] = *(v15 + 32);
    v29[3] = v20;
    v21 = *(v15 + 80);
    v29[4] = *(v15 + 64);
    v29[5] = v21;
    v22 = *(v15 + 16);
    v29[0] = *v15;
    v29[1] = v22;
    *v13 = sub_1A8BDDDE4();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341100, &qword_1A8BF89E8);
    sub_1A8BA7400(v27, a2, v26 & 1, v29, &v13[*(v23 + 44)]);
    sub_1A8BAF440(v13, v10, &qword_1EB3410B0, &qword_1A8BF8950);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAFC18(&qword_1EB33D188, &qword_1EB3410B0, &qword_1A8BF8950, MEMORY[0x1E69817F8]);
    sub_1A8BAE9D0();
    sub_1A8BDDF04();
    sub_1A8BAECE0(v31);
    v16 = v13;
    v17 = &qword_1EB3410B0;
    v18 = &qword_1A8BF8950;
  }

  return sub_1A8BAF4B8(v16, v17, v18);
}

uint64_t sub_1A8BA7080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v26 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410C0, &qword_1A8BF8960);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411C8, &qword_1A8BF8C10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410B8, &qword_1A8BF8958);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v28, v29, 0x12BuLL);
  memcpy(v29, v28, 0x12BuLL);
  v14 = sub_1A8BAECD4(v29);
  v15 = sub_1A8AAD988(v29);
  if (v14 == 1)
  {
    memcpy(v27, v15, 0x12BuLL);
    sub_1A8BA9098(v27, v24, a2, a3 & 1, v7);
    sub_1A8BAF440(v7, v10, &qword_1EB3410C0, &qword_1A8BF8960);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAFC18(&qword_1EB33D180, &qword_1EB3410B8, &qword_1A8BF8958, MEMORY[0x1E6981870]);
    sub_1A8BAEA88();
    sub_1A8BDDF04();
    sub_1A8BAECE0(v28);
    v16 = v7;
    v17 = &qword_1EB3410C0;
    v18 = &qword_1A8BF8960;
  }

  else
  {
    sub_1A8BAECE0(v28);
    v19 = sub_1A8BDDDF4();
    v20 = v24;
    v21 = sub_1A8BA662C(v24, a2);
    *v13 = v19;
    v13[1] = v21;
    *(v13 + 16) = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411D0, &qword_1A8BF8C18);
    sub_1A8BAAEA4(v20, a2, a3 & 1, v13 + *(v22 + 44));
    sub_1A8BAF440(v13, v10, &qword_1EB3410B8, &qword_1A8BF8958);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAFC18(&qword_1EB33D180, &qword_1EB3410B8, &qword_1A8BF8958, MEMORY[0x1E6981870]);
    sub_1A8BAEA88();
    sub_1A8BDDF04();
    v16 = v13;
    v17 = &qword_1EB3410B8;
    v18 = &qword_1A8BF8958;
  }

  return sub_1A8BAF4B8(v16, v17, v18);
}

uint64_t sub_1A8BA7400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v5 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341108, &qword_1A8BF89F0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341110, &qword_1A8BF89F8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  sub_1A8BA7630(a1, a2, v5, &v23 - v19);
  sub_1A8BA7F24(v24, 0, 0, a2, v5, v14);
  sub_1A8BAF440(v20, v18, &qword_1EB341110, &qword_1A8BF89F8);
  sub_1A8BAF440(v14, v12, &qword_1EB341108, &qword_1A8BF89F0);
  sub_1A8BAF440(v18, a5, &qword_1EB341110, &qword_1A8BF89F8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341118, &qword_1A8BF8A00);
  sub_1A8BAF440(v12, a5 + *(v21 + 48), &qword_1EB341108, &qword_1A8BF89F0);
  sub_1A8BAF4B8(v14, &qword_1EB341108, &qword_1A8BF89F0);
  sub_1A8BAF4B8(v20, &qword_1EB341110, &qword_1A8BF89F8);
  sub_1A8BAF4B8(v12, &qword_1EB341108, &qword_1A8BF89F0);
  return sub_1A8BAF4B8(v18, &qword_1EB341110, &qword_1A8BF89F8);
}

uint64_t sub_1A8BA7630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v49 = a1;
  v61 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341190, &qword_1A8BF8B88);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341198, &qword_1A8BF8B90);
  MEMORY[0x1EEE9AC00](v59);
  v60 = (&v44 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A0, &qword_1A8BF8B98);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v44 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341108, &qword_1A8BF89F0);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v44 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A8, &qword_1A8BF8BA0);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v44 - v11;
  v12 = sub_1A8BDDF84();
  v55 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411B0, &qword_1A8BF8BA8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v44 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = a2;
  sub_1A8BDDC74();

  v79[6] = v87;
  v79[7] = v88;
  v79[8] = v89;
  v80 = v90;
  v79[2] = v83;
  v79[3] = v84;
  v79[4] = v85;
  v79[5] = v86;
  v79[0] = v81;
  v79[1] = v82;
  if (sub_1A8AADFA8(&v81) == 1)
  {
    goto LABEL_4;
  }

  v46 = v5;
  v47 = v18;
  v45 = v7;
  v77[6] = v87;
  v77[7] = v88;
  v77[8] = v89;
  v77[2] = v83;
  v77[3] = v84;
  v78 = v90;
  v77[4] = v85;
  v77[5] = v86;
  v77[0] = v81;
  v77[1] = v82;
  if (v83)
  {
    sub_1A8BAF4B8(v79, &qword_1EB341178, &qword_1A8BF8B80);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF0C8();
    return sub_1A8BDDF04();
  }

  v21 = v56;
  sub_1A8BC25F4(v17);
  v22 = v55;
  (*(v55 + 16))(v15, v17, v12);
  v23 = sub_1A8BC0DC8(v15);
  IsVertical = PRPosterTitleLayoutIsVertical(v23);
  (*(v22 + 8))(v17, v12);
  if (IsVertical)
  {
    v25 = sub_1A8BDE104();
    IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

    if (IsSuitableForVerticalLayout)
    {
      v27 = v48;
      sub_1A8BA7F24(v77, 0, 0, v21, v54 & 1, v48);
      sub_1A8BAF440(v27, v52, &qword_1EB341108, &qword_1A8BF89F0);
      swift_storeEnumTagMultiPayload();
      sub_1A8BAF1E0();
      v28 = v53;
      sub_1A8BDDF04();
      sub_1A8BAF4B8(v27, &qword_1EB341108, &qword_1A8BF89F0);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A8BAF1E0();
      v28 = v53;
      sub_1A8BDDF04();
    }

    sub_1A8BAF440(v28, v60, &qword_1EB3411A8, &qword_1A8BF8BA0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411B8, &qword_1A8BF8BB0);
    sub_1A8BAF154();
    sub_1A8BAF2B0();
    v37 = v57;
    sub_1A8BDDF04();
    sub_1A8BAF4B8(v28, &qword_1EB3411A8, &qword_1A8BF8BA0);
    v38 = v45;
  }

  else
  {
    v29 = v81;
    v30 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = *(&v30 + 1);
    v32 = v30;
    sub_1A8BDDC74();

    v33 = v67[0];
    v34 = objc_opt_self();
    [v34 maximumHorizontalTextBounds];
    Width = CGRectGetWidth(v91);

    if (v54)
    {
      v36 = sub_1A8BAE180(v29, *(&v29 + 1));
    }

    else
    {
      v36 = 0;
    }

    *&v64 = v31;
    *(&v64 + 1) = 0x3FF0000000000000;
    v65 = v29;
    *&v66[0] = v32;
    *(&v66[0] + 1) = v36;
    *&v66[1] = Width;
    BYTE8(v66[1]) = v33;
    BYTE9(v66[1]) = 1;
    v67[0] = v31;
    v67[1] = 0x3FF0000000000000;
    v68 = v29;
    v69 = v32;
    v70 = v36;
    v71 = Width;
    v72 = v33;
    v73 = 1;
    sub_1A8BAF390(&v64, &v62);
    sub_1A8BAF3EC(v67);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    if (v63 == 1)
    {
      [v34 maximumHorizontalTextBounds];
      CGRectGetWidth(v92);
    }

    v38 = v45;
    sub_1A8BDE074();
    sub_1A8BDDCD4();
    *(v76 + 10) = *(v66 + 10);
    v39 = v65;
    v75 = v65;
    v76[0] = v66[0];
    v40 = v64;
    v74 = v64;
    v41 = v76[3];
    v42 = v60;
    v60[4] = v76[2];
    v42[5] = v41;
    v42[6] = v76[4];
    *v42 = v40;
    v42[1] = v39;
    v43 = v76[1];
    v42[2] = v76[0];
    v42[3] = v43;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411B8, &qword_1A8BF8BB0);
    sub_1A8BAF154();
    sub_1A8BAF2B0();
    v37 = v57;
    sub_1A8BDDF04();
  }

  sub_1A8BAF440(v37, v38, &qword_1EB3411B0, &qword_1A8BF8BA8);
  swift_storeEnumTagMultiPayload();
  sub_1A8BAF0C8();
  sub_1A8BDDF04();
  sub_1A8BAF4B8(v79, &qword_1EB341178, &qword_1A8BF8B80);
  return sub_1A8BAF4B8(v37, &qword_1EB3411B0, &qword_1A8BF8BA8);
}

uint64_t sub_1A8BA7F24@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v131 = a5;
  v117 = a2;
  v11 = a1[7];
  v196 = a1[6];
  v197 = v11;
  v198 = a1[8];
  v199 = *(a1 + 144);
  v12 = a1[3];
  v192 = a1[2];
  v193 = v12;
  v13 = a1[5];
  v194 = a1[4];
  v195 = v13;
  v14 = a1[1];
  v190 = *a1;
  v191 = v14;
  v15 = sub_1A8BDDDB4();
  v105 = *(v15 - 8);
  v106 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341120, &qword_1A8BF8A08);
  v108 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v103 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341128, &qword_1A8BF8A10);
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v103 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341130, &qword_1A8BF8A18);
  MEMORY[0x1EEE9AC00](v123);
  v109 = &v103 - v20;
  v21 = sub_1A8BDDF84();
  v132 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341138, &qword_1A8BF8A20);
  v114 = *(v23 - 8);
  v115 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v103 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341140, &qword_1A8BF8A28);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v103 - v25;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341148, &qword_1A8BF8A30);
  MEMORY[0x1EEE9AC00](v110);
  v116 = &v103 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341150, &qword_1A8BF8A38);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v103 - v27;
  v28 = sub_1A8BDDA04();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = *a1;
  v32 = *(a1 + 1);
  v125 = v17;
  v126 = a7;
  v118 = a1;
  if (a6)
  {
    sub_1A8BAD780(v31, v32, &v103 - v30);
    v33 = sub_1A8BDDFB4();
    v36 = v35;
    v38 = v37;
  }

  else
  {
    *&v151 = v31;
    *(&v151 + 1) = v32;
    sub_1A8BA4E48();

    v39 = sub_1A8BDDFC4();
    v41 = v40;
    v43 = v42;
    v120 = v44;
    v45 = *(a1 + 2);
    *&v151 = sub_1A8BDE044();
    v128 = sub_1A8BDDF94();
    v36 = v46;
    v38 = v47;
    v121 = a3;
    v49 = v48;
    sub_1A8BA4E9C(v39, v41, v43 & 1);

    v34 = v49;
    v33 = v128;
  }

  v128 = v33;
  *&v151 = v33;
  v120 = v36;
  v121 = v34;
  *(&v151 + 1) = v36;
  v119 = v38;
  LOBYTE(v152) = v38 & 1;
  *(&v152 + 1) = v34;
  v50 = v127;
  sub_1A8BC25F4(v127);
  v51 = v113;
  sub_1A8BDDFF4();
  v52 = *(v132 + 8);
  v132 += 8;
  v52(v50, v21);
  v53 = v117;
  v54 = v118;
  if (!v117)
  {
    v55 = *(v118 + 3);
  }

  v56 = v53;
  v57 = sub_1A8BDDF44();
  KeyPath = swift_getKeyPath();
  v59 = v112;
  (*(v114 + 32))(v112, v51, v115);
  v60 = (v59 + *(v111 + 36));
  *v60 = KeyPath;
  v60[1] = v57;
  v61 = swift_getKeyPath();
  v62 = v116;
  sub_1A8BAF758(v59, v116, &qword_1EB341140, &qword_1A8BF8A28);
  v63 = v62 + *(v110 + 36);
  *v63 = v61;
  *(v63 + 8) = 1;
  *(v63 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  sub_1A8BDE074();
  sub_1A8BDDCD4();
  v64 = v130;
  sub_1A8BAF758(v62, v130, &qword_1EB341148, &qword_1A8BF8A30);
  v65 = (v64 + *(v129 + 36));
  v66 = v178;
  *v65 = v177;
  v65[1] = v66;
  v65[2] = v179;
  if ((sub_1A8BC222C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v67 = sub_1A8BDE104();
  IsSuitableForArabicJustification = CTStringIsSuitableForArabicJustification();

  if (!IsSuitableForArabicJustification)
  {
    goto LABEL_12;
  }

  [objc_opt_self() maximumHorizontalTextBounds];
  Width = CGRectGetWidth(v200);
  v70 = *(v54 + 88);
  v71 = *(v54 + 120);
  v184 = *(v54 + 104);
  v185[0] = v71;
  *(v185 + 9) = *(v54 + 129);
  v72 = *(v54 + 56);
  v180 = *(v54 + 40);
  v181 = v72;
  v73 = *(v54 + 72);
  v183 = v70;
  v182 = v73;
  v74 = v127;
  sub_1A8BDDF64();
  sub_1A8BB011C(v74, 1.0);
  v76 = v75;
  v52(v74, v21);
  if (v76 >= Width)
  {
    goto LABEL_12;
  }

  v165[4] = v196;
  v165[5] = v197;
  v165[6] = v198;
  LOBYTE(v165[7]) = v199;
  v165[0] = v192;
  v165[1] = v193;
  v165[2] = v194;
  v165[3] = v195;
  v163 = v190;
  v164 = v191;
  nullsub_1();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v166[6] = *&v153[64];
  v166[7] = *&v153[80];
  v166[8] = *&v153[96];
  v166[2] = *v153;
  v166[3] = *&v153[16];
  v166[4] = *&v153[32];
  v166[5] = *&v153[48];
  v166[0] = v151;
  v166[1] = v152;
  v160 = *(&v165[4] + 1);
  v161 = *(&v165[5] + 1);
  v162 = *(&v165[6] + 1);
  v156 = *(v165 + 1);
  v157 = *(&v165[1] + 1);
  v159 = *(&v165[3] + 1);
  v158 = *(&v165[2] + 1);
  *&v155[135] = *&v153[96];
  *&v155[119] = *&v153[80];
  *&v155[103] = *&v153[64];
  *&v155[87] = *&v153[48];
  *&v155[71] = *&v153[32];
  *&v155[55] = *&v153[16];
  *&v155[39] = *v153;
  *&v155[23] = v152;
  v167 = v153[112];
  v77 = v163;
  v78 = v165[0];
  v155[151] = v153[112];
  *&v155[7] = v151;
  v173 = *(&v165[3] + 1);
  v174 = *(&v165[4] + 1);
  v175 = *(&v165[5] + 1);
  v176 = *(&v165[6] + 1);
  v170 = *(v165 + 1);
  v171 = *(&v165[1] + 1);
  v79 = v164;
  v172 = *(&v165[2] + 1);
  v80 = *(&v164 + 1);
  v168[0] = v163;
  v168[1] = v164;
  v169 = v165[0];
  if (sub_1A8AADFA8(v168) != 1)
  {
    *&v153[64] = *&v155[103];
    *&v153[80] = *&v155[119];
    *&v153[96] = *&v155[135];
    v153[112] = v155[151];
    *v153 = *&v155[39];
    *&v153[16] = *&v155[55];
    *&v153[32] = *&v155[71];
    *&v153[48] = *&v155[87];
    v151 = *&v155[7];
    v152 = *&v155[23];
    if (sub_1A8AADFA8(&v151) == 1)
    {
      goto LABEL_15;
    }

    v132 = v79;
    v150[4] = *&v155[103];
    v150[5] = *&v155[119];
    v150[6] = *&v155[135];
    LOBYTE(v150[7]) = v155[151];
    v150[0] = *&v155[39];
    v150[1] = *&v155[55];
    v150[2] = *&v155[71];
    v150[3] = *&v155[87];
    v148 = *&v155[7];
    v149 = *&v155[23];
    v134 = v155[39];
    v133[4] = *&v155[104];
    v133[5] = *&v155[120];
    v133[6] = *&v155[136];
    v133[0] = *&v155[40];
    v133[1] = *&v155[56];
    v133[2] = *&v155[72];
    v133[3] = *&v155[88];
    v136 = v78;
    v135[4] = v160;
    v135[5] = v161;
    v135[6] = v162;
    v135[0] = v156;
    v135[1] = v157;
    v135[2] = v158;
    v135[3] = v159;
    if (v77 == *&v155[7] || (sub_1A8BDE3B4() & 1) != 0)
    {
      sub_1A8BA3FE4(0, &qword_1EB33CFA0, 0x1E69E58C0);
      sub_1A8BAF018(v54, &v137);
      sub_1A8BAF440(v166, &v137, &qword_1EB341178, &qword_1A8BF8B80);
      if (sub_1A8BDE264() & 1) != 0 && (sub_1A8BDE264())
      {
        v94 = v132;
        if (v136 == v134)
        {
          v186[4] = *(&v135[4] + 7);
          v187[0] = *(&v135[5] + 7);
          *(v187 + 9) = v135[6];
          v186[0] = *(v135 + 7);
          v186[1] = *(&v135[1] + 7);
          v186[3] = *(&v135[3] + 7);
          v186[2] = *(&v135[2] + 7);
          v188[1] = *(&v133[1] + 7);
          v188[0] = *(v133 + 7);
          *(v189 + 9) = v133[6];
          v189[0] = *(&v133[5] + 7);
          v188[4] = *(&v133[4] + 7);
          v188[2] = *(&v133[2] + 7);
          v188[3] = *(&v133[3] + 7);
          LODWORD(v131) = sub_1A8BB1138(v186, v188);
          sub_1A8BAF4B8(&v148, &qword_1EB341178, &qword_1A8BF8B80);
          sub_1A8BAF4B8(v166, &qword_1EB341178, &qword_1A8BF8B80);
          v144 = v159;
          v145 = v160;
          v146 = v161;
          v147 = v162;
          v141 = v156;
          v142 = v157;
          v137 = v77;
          v138 = v94;
          v139 = v80;
          v140 = v78;
          v143 = v158;
          sub_1A8BAF4B8(&v137, &qword_1EB341178, &qword_1A8BF8B80);
          if (v131)
          {
            goto LABEL_12;
          }

LABEL_27:
          v96 = v125;
          v97 = v104;
          sub_1A8BDDDA4();
          v98 = sub_1A8BAEDEC();
          v99 = v107;
          v101 = v129;
          v100 = v130;
          sub_1A8BDE004();
          (*(v105 + 8))(v97, v106);
          v102 = v108;
          (*(v108 + 16))(v124, v99, v96);
          swift_storeEnumTagMultiPayload();
          sub_1A8BAED34();
          *&v151 = v101;
          *(&v151 + 1) = v98;
          swift_getOpaqueTypeConformance2();
          sub_1A8BDDF04();
          sub_1A8BA4E9C(v128, v120, v119 & 1);

          (*(v102 + 8))(v99, v96);
          v89 = v100;
          return sub_1A8BAF4B8(v89, &qword_1EB341150, &qword_1A8BF8A38);
        }

        sub_1A8BAF4B8(&v148, &qword_1EB341178, &qword_1A8BF8B80);
        v95 = v166;
        goto LABEL_25;
      }

      sub_1A8BAF4B8(&v148, &qword_1EB341178, &qword_1A8BF8B80);
      v95 = v166;
    }

    else
    {
      sub_1A8BAF018(v54, &v137);
      v95 = &v148;
    }

    v94 = v132;
LABEL_25:
    sub_1A8BAF4B8(v95, &qword_1EB341178, &qword_1A8BF8B80);
    v144 = v159;
    v145 = v160;
    v146 = v161;
    v147 = v162;
    v141 = v156;
    v142 = v157;
    v137 = v77;
    v138 = v94;
    v139 = v80;
    v140 = v78;
    v143 = v158;
    v93 = &v137;
    v91 = &qword_1EB341178;
    v92 = &qword_1A8BF8B80;
    goto LABEL_26;
  }

  *&v153[64] = *&v155[103];
  *&v153[80] = *&v155[119];
  *&v153[96] = *&v155[135];
  v153[112] = v155[151];
  *v153 = *&v155[39];
  *&v153[16] = *&v155[55];
  *&v153[32] = *&v155[71];
  *&v153[48] = *&v155[87];
  v151 = *&v155[7];
  v152 = *&v155[23];
  if (sub_1A8AADFA8(&v151) != 1)
  {
LABEL_15:
    *&v153[49] = v159;
    *&v153[65] = v160;
    *&v153[81] = v161;
    *&v153[97] = v162;
    *&v153[1] = v156;
    *&v153[17] = v157;
    *&v153[33] = v158;
    *&v153[225] = *&v155[112];
    *&v153[241] = *&v155[128];
    *&v153[209] = *&v155[96];
    *&v153[193] = *&v155[80];
    *&v153[177] = *&v155[64];
    *&v153[161] = *&v155[48];
    *&v153[145] = *&v155[32];
    *&v153[129] = *&v155[16];
    v151 = v77;
    *&v152 = v79;
    *(&v152 + 1) = v80;
    v153[0] = v78;
    v154 = *&v155[144];
    *&v153[113] = *v155;
    sub_1A8BAF018(v54, &v148);
    v91 = &unk_1EB341170;
    v92 = &unk_1A8BF8B78;
    v93 = &v151;
LABEL_26:
    sub_1A8BAF4B8(v93, v91, v92);
    goto LABEL_27;
  }

  *(&v150[3] + 1) = v159;
  *(&v150[4] + 1) = v160;
  *(&v150[5] + 1) = v161;
  *(&v150[6] + 1) = v162;
  *(v150 + 1) = v156;
  *(&v150[1] + 1) = v157;
  v148 = v77;
  *&v149 = v79;
  *(&v149 + 1) = v80;
  LOBYTE(v150[0]) = v78;
  *(&v150[2] + 1) = v158;
  sub_1A8BAF018(v54, &v137);
  sub_1A8BAF4B8(&v148, &qword_1EB341178, &qword_1A8BF8B80);
LABEL_12:
  [objc_opt_self() minimumScaleFactor];
  v82 = v81;
  v83 = swift_getKeyPath();
  v84 = v130;
  v85 = v109;
  sub_1A8BAF440(v130, v109, &qword_1EB341150, &qword_1A8BF8A38);
  v86 = v124;
  v87 = (v85 + *(v123 + 36));
  *v87 = v83;
  v87[1] = v82;
  sub_1A8BAF440(v85, v86, &qword_1EB341130, &qword_1A8BF8A18);
  swift_storeEnumTagMultiPayload();
  sub_1A8BAED34();
  v88 = sub_1A8BAEDEC();
  *&v151 = v129;
  *(&v151 + 1) = v88;
  swift_getOpaqueTypeConformance2();
  sub_1A8BDDF04();
  sub_1A8BA4E9C(v128, v120, v119 & 1);

  sub_1A8BAF4B8(v85, &qword_1EB341130, &qword_1A8BF8A18);
  v89 = v84;
  return sub_1A8BAF4B8(v89, &qword_1EB341150, &qword_1A8BF8A38);
}

uint64_t sub_1A8BA9098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v60 = a2;
  v61 = a3;
  v66 = a5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410F0, &qword_1A8BF8990);
  MEMORY[0x1EEE9AC00](v57);
  v7 = (&v54 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341210, &qword_1A8BF8C58);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v54 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410E0, &qword_1A8BF8980);
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v54 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410E8, &qword_1A8BF8988);
  MEMORY[0x1EEE9AC00](v56);
  v12 = (&v54 - v11);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410D8, &qword_1A8BF8978);
  MEMORY[0x1EEE9AC00](v54);
  v14 = (&v54 - v13);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341218, &qword_1A8BF8C60);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341220, &qword_1A8BF8C68);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410C8, &qword_1A8BF8968);
  MEMORY[0x1EEE9AC00](v63);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3410D0, &qword_1A8BF8970);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v54 - v22);
  if (*(a1 + 297))
  {
    if (*(a1 + 298))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v61;
      sub_1A8BDDC74();

      v25 = v68;
      [*(a1 + 24) pointSize];
      v27 = v26;
      [*(a1 + 176) pointSize];
      v29 = v27 / v28;
      v30 = sub_1A8BDDDF4();
      v31 = sub_1A8BDDDC4();
      *v7 = v30;
      v7[1] = v31;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341228, &qword_1A8BF8CB8);
      sub_1A8BACC84(v60, v24, v59 & 1, v25, v7 + *(v32 + 44), v29);
      sub_1A8BAF440(v7, v9, &qword_1EB3410F0, &qword_1A8BF8990);
      swift_storeEnumTagMultiPayload();
      v33 = MEMORY[0x1E6981880];
      sub_1A8BAFC18(&qword_1EB33D178, &qword_1EB3410E8, &qword_1A8BF8988, MEMORY[0x1E6981880]);
      sub_1A8BAFC18(&qword_1EB33D170, &qword_1EB3410F0, &qword_1A8BF8990, v33);
      v34 = v58;
      sub_1A8BDDF04();
      sub_1A8BAF440(v34, v64, &qword_1EB3410E0, &qword_1A8BF8980);
      swift_storeEnumTagMultiPayload();
      sub_1A8BAEB14();
      sub_1A8BAEBF4();
      sub_1A8BDDF04();
      sub_1A8BAF4B8(v34, &qword_1EB3410E0, &qword_1A8BF8980);
      v35 = v7;
      v36 = &qword_1EB3410F0;
      v37 = &qword_1A8BF8990;
    }

    else
    {
      sub_1A8BAA424(a1, v60, v61, v59 & 1, v12);
      sub_1A8BAF440(v12, v9, &qword_1EB3410E8, &qword_1A8BF8988);
      swift_storeEnumTagMultiPayload();
      v41 = MEMORY[0x1E6981880];
      sub_1A8BAFC18(&qword_1EB33D178, &qword_1EB3410E8, &qword_1A8BF8988, MEMORY[0x1E6981880]);
      sub_1A8BAFC18(&qword_1EB33D170, &qword_1EB3410F0, &qword_1A8BF8990, v41);
      v42 = v58;
      sub_1A8BDDF04();
      sub_1A8BAF440(v42, v64, &qword_1EB3410E0, &qword_1A8BF8980);
      swift_storeEnumTagMultiPayload();
      sub_1A8BAEB14();
      sub_1A8BAEBF4();
      sub_1A8BDDF04();
      sub_1A8BAF4B8(v42, &qword_1EB3410E0, &qword_1A8BF8980);
      v35 = v12;
      v36 = &qword_1EB3410E8;
      v37 = &qword_1A8BF8988;
    }
  }

  else
  {
    if (*(a1 + 298))
    {
      sub_1A8BA9A0C(a1, v60, v61, v59 & 1, v14);
      v38 = &qword_1EB3410D8;
      v39 = &qword_1A8BF8978;
      sub_1A8BAF440(v14, v18, &qword_1EB3410D8, &qword_1A8BF8978);
      swift_storeEnumTagMultiPayload();
      v40 = MEMORY[0x1E6981880];
      sub_1A8BAFC18(&qword_1EB33D168, &qword_1EB3410D0, &qword_1A8BF8970, MEMORY[0x1E6981880]);
      sub_1A8BAFC18(&qword_1EB33D160, &qword_1EB3410D8, &qword_1A8BF8978, v40);
      sub_1A8BDDF04();
      sub_1A8BAF440(v20, v64, &qword_1EB3410C8, &qword_1A8BF8968);
      swift_storeEnumTagMultiPayload();
      sub_1A8BAEB14();
      sub_1A8BAEBF4();
      sub_1A8BDDF04();
      sub_1A8BAF4B8(v20, &qword_1EB3410C8, &qword_1A8BF8968);
      v35 = v14;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = v61;
      sub_1A8BDDC74();

      v44 = v67;
      [*(a1 + 176) pointSize];
      v46 = v45;
      [*(a1 + 24) pointSize];
      v48 = v46 / v47;
      v49 = sub_1A8BDDDF4();
      v50 = sub_1A8BDDDC4();
      *v23 = v49;
      v23[1] = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341230, &qword_1A8BF8CC0);
      sub_1A8BAC3C8(v60, v43, v59 & 1, v44, v23 + *(v51 + 44), v48);
      v38 = &qword_1EB3410D0;
      v39 = &qword_1A8BF8970;
      sub_1A8BAF440(v23, v18, &qword_1EB3410D0, &qword_1A8BF8970);
      swift_storeEnumTagMultiPayload();
      v52 = MEMORY[0x1E6981880];
      sub_1A8BAFC18(&qword_1EB33D168, &qword_1EB3410D0, &qword_1A8BF8970, MEMORY[0x1E6981880]);
      sub_1A8BAFC18(&qword_1EB33D160, &qword_1EB3410D8, &qword_1A8BF8978, v52);
      sub_1A8BDDF04();
      sub_1A8BAF440(v20, v64, &qword_1EB3410C8, &qword_1A8BF8968);
      swift_storeEnumTagMultiPayload();
      sub_1A8BAEB14();
      sub_1A8BAEBF4();
      sub_1A8BDDF04();
      sub_1A8BAF4B8(v20, &qword_1EB3410C8, &qword_1A8BF8968);
      v35 = v23;
    }

    v36 = v38;
    v37 = v39;
  }

  return sub_1A8BAF4B8(v35, v36, v37);
}

void sub_1A8BA9A0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t *a5@<X8>)
{
  v80 = a4;
  v81 = a2;
  v96 = a5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341288, &qword_1A8BF8D60);
  v7 = MEMORY[0x1EEE9AC00](v92);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v77 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341268, &qword_1A8BF8CF8);
  MEMORY[0x1EEE9AC00](v87);
  v79 = &v77 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341290, &qword_1A8BF8D68);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v77 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341270, &qword_1A8BF8D00);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341298, &qword_1A8BF8D70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412A0, &qword_1A8BF8D78);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v91 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v77 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341240, &qword_1A8BF8CD0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v90 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v77 - v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v27 = LOBYTE(v99[0]);
  v28 = *(a1 + 297);
  if (v28)
  {
    v29 = 24;
  }

  else
  {
    v29 = 176;
  }

  if (*(a1 + 297))
  {
    v30 = 176;
  }

  else
  {
    v30 = 24;
  }

  [*(a1 + v29) pointSize];
  v32 = v31;
  v33 = v80;
  [*(a1 + v30) pointSize];
  if ((v27 ^ v28))
  {
    v35 = 24;
  }

  else
  {
    v35 = 176;
  }

  v36 = v81;
  v37 = v32 / v34;
  v95 = *(a1 + v35);
  v38 = sub_1A8BDDDF4();
  v39 = sub_1A8BDDDC4();
  v40 = v96;
  *v96 = v38;
  v40[1] = v39;
  v41 = sub_1A8BDDDF4();
  v42 = sub_1A8BA662C(v36, a3);
  *v26 = v41;
  v26[1] = v42;
  *(v26 + 16) = 0;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341248, &qword_1A8BF8CD8) + 44);
  v88 = v26;
  sub_1A8BAC1F0(v36, a3, v33, v26 + v43);
  v44 = sub_1A8BDDDF4();
  v45 = sub_1A8BA662C(v36, a3);
  *v21 = v44;
  v21[1] = v45;
  v82 = v21;
  *(v21 + 16) = 0;
  v86 = v27;
  v46 = v33 & 1;
  if (v27 == 1)
  {
    v47 = v78;
    sub_1A8BA7630(v36, a3, v46, v78);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    v48 = v47 + *(v84 + 36);
    *v48 = v99[0];
    *(v48 + 1) = 257;
    *(v48 + 8) = v37;
    sub_1A8BAF440(v47, v85, &qword_1EB341270, &qword_1A8BF8D00);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF560();
    sub_1A8BAF6CC();
    sub_1A8BDDF04();
    v49 = v47;
    v50 = &qword_1EB341270;
    v51 = &qword_1A8BF8D00;
  }

  else
  {
    v52 = v79;
    sub_1A8BAB9E4(v36, a3, v46);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    v53 = v52 + *(v87 + 36);
    *v53 = v99[0];
    *(v53 + 1) = 256;
    *(v53 + 8) = v37;
    sub_1A8BAF440(v52, v85, &qword_1EB341268, &qword_1A8BF8CF8);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF560();
    sub_1A8BAF6CC();
    sub_1A8BDDF04();
    v49 = v52;
    v50 = &qword_1EB341268;
    v51 = &qword_1A8BF8CF8;
  }

  sub_1A8BAF4B8(v49, v50, v51);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412C8, &qword_1A8BF8D80);
  v96 = (v96 + *(v54 + 44));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412D0, &qword_1A8BF8D88);
  v56 = v82;
  v57 = v82 + *(v55 + 44);
  v58 = *(a1 + 264);
  v59 = *(a1 + 280);
  v99[6] = *(a1 + 248);
  v99[7] = v58;
  v99[8] = v59;
  v100 = *(a1 + 296);
  v60 = *(a1 + 200);
  v99[2] = *(a1 + 184);
  v99[3] = v60;
  v61 = *(a1 + 232);
  v99[4] = *(a1 + 216);
  v99[5] = v61;
  v62 = *(a1 + 168);
  v99[0] = *(a1 + 152);
  v99[1] = v62;
  [objc_opt_self() maximumHorizontalTextBounds];
  *&v63 = CGRectGetWidth(v101);
  v64 = v33 & 1;
  v65 = v93;
  sub_1A8BA7F24(v99, v95, v63, a3, v64, v93);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v66 = v65 + *(v92 + 36);
  *v66 = v98;
  *(v66 + 1) = v86;
  *(v66 + 2) = 0;
  *(v66 + 8) = v37;
  v67 = v56;
  v68 = v97;
  v69 = v89;
  sub_1A8BAF440(v97, v89, &qword_1EB341298, &qword_1A8BF8D70);
  v70 = v94;
  sub_1A8BAF440(v65, v94, &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF440(v69, v57, &qword_1EB341298, &qword_1A8BF8D70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412D8, &qword_1A8BF8D90);
  sub_1A8BAF440(v70, v57 + *(v71 + 48), &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF4B8(v65, &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF4B8(v68, &qword_1EB341298, &qword_1A8BF8D70);
  sub_1A8BAF4B8(v70, &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF4B8(v69, &qword_1EB341298, &qword_1A8BF8D70);
  v72 = v88;
  v73 = v90;
  sub_1A8BAF440(v88, v90, &qword_1EB341240, &qword_1A8BF8CD0);
  v74 = v91;
  sub_1A8BAF440(v67, v91, &qword_1EB3412A0, &qword_1A8BF8D78);
  v75 = v96;
  sub_1A8BAF440(v73, v96, &qword_1EB341240, &qword_1A8BF8CD0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412E0, &qword_1A8BF8D98);
  sub_1A8BAF440(v74, v75 + *(v76 + 48), &qword_1EB3412A0, &qword_1A8BF8D78);
  sub_1A8BAF4B8(v67, &qword_1EB3412A0, &qword_1A8BF8D78);
  sub_1A8BAF4B8(v72, &qword_1EB341240, &qword_1A8BF8CD0);
  sub_1A8BAF4B8(v74, &qword_1EB3412A0, &qword_1A8BF8D78);
  sub_1A8BAF4B8(v73, &qword_1EB341240, &qword_1A8BF8CD0);
}

void sub_1A8BAA424(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t *a5@<X8>)
{
  v86 = a4;
  v85 = a2;
  v87 = a5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341268, &qword_1A8BF8CF8);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v84 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341260, &qword_1A8BF8CF0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v98 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v83 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341288, &qword_1A8BF8D60);
  v12 = MEMORY[0x1EEE9AC00](v90);
  v97 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v83 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412E8, &qword_1A8BF8DA0);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v83 = (&v83 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412F0, &qword_1A8BF8DA8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3412F8, &qword_1A8BF8DB0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v96 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v83 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341240, &qword_1A8BF8CD0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v94 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v83 - v28);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v30 = LOBYTE(v105[0]);
  v31 = *(a1 + 297);
  if (v31)
  {
    v32 = 24;
  }

  else
  {
    v32 = 176;
  }

  if (*(a1 + 297))
  {
    v33 = 176;
  }

  else
  {
    v33 = 24;
  }

  [*(a1 + v32) pointSize];
  v35 = v34;
  v36 = *(a1 + v33);
  v37 = v86;
  v38 = v85;
  [v36 pointSize];
  if ((v30 ^ v31))
  {
    v40 = 24;
  }

  else
  {
    v40 = 176;
  }

  v41 = v87;
  v42 = v35 / v39;
  v101 = *(a1 + v40);
  v43 = sub_1A8BDDDF4();
  v44 = sub_1A8BDDDC4();
  *v41 = v43;
  v41[1] = v44;
  v45 = sub_1A8BDDDF4();
  v46 = sub_1A8BA662C(v38, a3);
  *v29 = v45;
  v29[1] = v46;
  *(v29 + 16) = 0;
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341248, &qword_1A8BF8CD8) + 44);
  v91 = v29;
  sub_1A8BAC1F0(v38, a3, v37, v29 + v47);
  v48 = sub_1A8BDDDF4();
  v49 = sub_1A8BA662C(v38, a3);
  *v24 = v48;
  v24[1] = v49;
  v102 = v24;
  *(v24 + 16) = 0;
  if (v30 == 1)
  {
    v50 = sub_1A8BDDDF4();
    v51 = sub_1A8BDDDD4();
    v52 = v83;
    *v83 = v50;
    *(v52 + 8) = v51;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341320, &qword_1A8BF8DD8);
    sub_1A8BABF54(v38, a3, v37 & 1, 1, v52 + *(v53 + 44), v42);
    v54 = v100;
    sub_1A8BAF758(v52, v100, &qword_1EB3412E8, &qword_1A8BF8DA0);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v100;
  }

  v56 = v37;
  v57 = 1;
  (*(v88 + 56))(v54, v55, 1, v89);
  v58 = *(a1 + 112);
  v105[6] = *(a1 + 96);
  v105[7] = v58;
  v105[8] = *(a1 + 128);
  v106 = *(a1 + 144);
  v59 = *(a1 + 48);
  v105[2] = *(a1 + 32);
  v105[3] = v59;
  v60 = *(a1 + 80);
  v105[4] = *(a1 + 64);
  v105[5] = v60;
  v61 = *(a1 + 16);
  v105[0] = *a1;
  v105[1] = v61;
  [objc_opt_self() maximumHorizontalTextBounds];
  *&v62 = CGRectGetWidth(v107);
  v63 = v103;
  sub_1A8BA7F24(v105, v101, v62, a3, v56 & 1, v103);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v64 = v63 + *(v90 + 36);
  *v64 = v104;
  *(v64 + 1) = v30;
  *(v64 + 2) = 0;
  *(v64 + 8) = v42;
  v65 = v95;
  if ((v30 & 1) == 0)
  {
    v66 = v56 & 1;
    v67 = v84;
    sub_1A8BABC94(v38, a3, v66);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    v68 = v67 + *(v65 + 36);
    *v68 = v104;
    *(v68 + 1) = v30;
    *(v68 + 2) = 1;
    *(v68 + 8) = v42;
    sub_1A8BAF758(v67, v99, &qword_1EB341268, &qword_1A8BF8CF8);
    v57 = 0;
  }

  v69 = v99;
  (*(v93 + 56))(v99, v57, 1, v65);
  v95 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341300, &qword_1A8BF8DB8) + 44);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341308, &qword_1A8BF8DC0);
  v71 = v102 + *(v70 + 44);
  v72 = v92;
  sub_1A8BAF440(v54, v92, &qword_1EB3412F0, &qword_1A8BF8DA8);
  v73 = v103;
  v74 = v97;
  sub_1A8BAF440(v103, v97, &qword_1EB341288, &qword_1A8BF8D60);
  v75 = v98;
  sub_1A8BAF440(v69, v98, &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF440(v72, v71, &qword_1EB3412F0, &qword_1A8BF8DA8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341310, &qword_1A8BF8DC8);
  sub_1A8BAF440(v74, v71 + *(v76 + 48), &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF440(v75, v71 + *(v76 + 64), &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF4B8(v69, &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF4B8(v73, &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF4B8(v100, &qword_1EB3412F0, &qword_1A8BF8DA8);
  sub_1A8BAF4B8(v75, &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF4B8(v74, &qword_1EB341288, &qword_1A8BF8D60);
  sub_1A8BAF4B8(v72, &qword_1EB3412F0, &qword_1A8BF8DA8);
  v77 = v91;
  v78 = v94;
  sub_1A8BAF440(v91, v94, &qword_1EB341240, &qword_1A8BF8CD0);
  v79 = v102;
  v80 = v96;
  sub_1A8BAF440(v102, v96, &qword_1EB3412F8, &qword_1A8BF8DB0);
  v81 = v95;
  sub_1A8BAF440(v78, v95, &qword_1EB341240, &qword_1A8BF8CD0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341318, &qword_1A8BF8DD0);
  sub_1A8BAF440(v80, v81 + *(v82 + 48), &qword_1EB3412F8, &qword_1A8BF8DB0);
  sub_1A8BAF4B8(v79, &qword_1EB3412F8, &qword_1A8BF8DB0);
  sub_1A8BAF4B8(v77, &qword_1EB341240, &qword_1A8BF8CD0);
  sub_1A8BAF4B8(v80, &qword_1EB3412F8, &qword_1A8BF8DB0);
  sub_1A8BAF4B8(v78, &qword_1EB341240, &qword_1A8BF8CD0);
}

uint64_t sub_1A8BAAEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v86 = a1;
  v90 = a4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411D8, &qword_1A8BF8C20);
  MEMORY[0x1EEE9AC00](v89);
  v75 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A8, &qword_1A8BF8BA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v75 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411E0, &qword_1A8BF8C28);
  MEMORY[0x1EEE9AC00](v87);
  v18 = &v75 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411E8, &qword_1A8BF8C30);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v75 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411F0, &qword_1A8BF8C38);
  MEMORY[0x1EEE9AC00](v77);
  v79 = (&v75 - v20);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341108, &qword_1A8BF89F0);
  MEMORY[0x1EEE9AC00](v78);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411F8, &qword_1A8BF8C40);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v81 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v75 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341110, &qword_1A8BF89F8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v80 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v75 - v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v110, v111, 0x12BuLL);
  memcpy(v111, v110, 0x12BuLL);
  v32 = sub_1A8BAECD4(v111);
  v33 = sub_1A8AAD988(v111);
  if (v32 == 1)
  {
    sub_1A8BAECE0(v110);
    v35 = v85;
    v34 = v86;
    sub_1A8BAB9E4(v86, a2, a3 & 1);
    v36 = v76;
    sub_1A8BABC94(v34, a2, a3 & 1);
    sub_1A8BAF440(v35, v13, &qword_1EB3411A8, &qword_1A8BF8BA0);
    sub_1A8BAF440(v36, v10, &qword_1EB3411A8, &qword_1A8BF8BA0);
    v37 = v75;
    sub_1A8BAF440(v13, v75, &qword_1EB3411A8, &qword_1A8BF8BA0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341200, &qword_1A8BF8C48);
    sub_1A8BAF440(v10, v37 + *(v38 + 48), &qword_1EB3411A8, &qword_1A8BF8BA0);
    sub_1A8BAF4B8(v10, &qword_1EB3411A8, &qword_1A8BF8BA0);
    sub_1A8BAF4B8(v13, &qword_1EB3411A8, &qword_1A8BF8BA0);
    sub_1A8BAF440(v37, v18, &qword_1EB3411D8, &qword_1A8BF8C20);
    swift_storeEnumTagMultiPayload();
    v39 = MEMORY[0x1E6981F48];
    sub_1A8BAFC18(&qword_1EB33D150, &qword_1EB3411E8, &qword_1A8BF8C30, MEMORY[0x1E6981F48]);
    sub_1A8BAFC18(&qword_1EB33D158, &qword_1EB3411D8, &qword_1A8BF8C20, v39);
    sub_1A8BDDF04();
    sub_1A8BAF4B8(v37, &qword_1EB3411D8, &qword_1A8BF8C20);
    sub_1A8BAF4B8(v36, &qword_1EB3411A8, &qword_1A8BF8BA0);
    v40 = v85;
    v41 = &qword_1EB3411A8;
    v42 = &qword_1A8BF8BA0;
  }

  else
  {
    v43 = v33;
    v85 = v18;
    v44 = *(v33 + 112);
    v108[6] = *(v33 + 96);
    v108[7] = v44;
    v108[8] = *(v33 + 128);
    v109 = *(v33 + 144);
    v45 = *(v33 + 48);
    v108[2] = *(v33 + 32);
    v108[3] = v45;
    v46 = *(v33 + 80);
    v108[4] = *(v33 + 64);
    v108[5] = v46;
    v47 = *(v33 + 16);
    v108[0] = *v33;
    v108[1] = v47;
    sub_1A8BA7630(v86, a2, a3 & 1, v31);
    v48 = sub_1A8BC222C();
    v82 = v31;
    if (v48)
    {
      [objc_opt_self() maximumHorizontalTextBounds];
      *&v49 = CGRectGetWidth(v112);
      sub_1A8BA7F24(v108, 0, v49, a2, a3 & 1, v22);
      sub_1A8BAF440(v22, v79, &qword_1EB341108, &qword_1A8BF89F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411B8, &qword_1A8BF8BB0);
      sub_1A8BAF1E0();
      sub_1A8BAF2B0();
      v50 = v83;
      sub_1A8BDDF04();
      sub_1A8BAF4B8(v22, &qword_1EB341108, &qword_1A8BF89F0);
      v51 = v85;
    }

    else
    {
      LODWORD(v86) = a3;
      v53 = v43[2];
      v52 = v43[3];
      swift_getKeyPath();
      swift_getKeyPath();
      v54 = v52;
      v55 = v53;
      sub_1A8BDDC74();

      v56 = LOBYTE(v96);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A8BDDC74();

      if (v97 == 1)
      {
        [objc_opt_self() maximumHorizontalTextBounds];
        Width = CGRectGetWidth(v113);
      }

      else
      {
        Width = v96;
      }

      v59 = *v43;
      v58 = v43[1];
      v60 = objc_opt_self();
      [v60 minimumScaleFactor];
      v62 = v61;

      if (v86)
      {
        v63 = sub_1A8BAE180(v59, v58);
      }

      else
      {
        v63 = 0;
      }

      *&v93 = v54;
      *(&v93 + 1) = v62;
      *&v94 = v59;
      *(&v94 + 1) = v58;
      *&v95[0] = v55;
      *(&v95[0] + 1) = v63;
      *&v95[1] = Width;
      WORD4(v95[1]) = v56;
      v96 = *&v54;
      v97 = v62;
      v98 = v59;
      v99 = v58;
      v100 = v55;
      v101 = v63;
      v102 = Width;
      v103 = v56;
      v104 = 0;
      sub_1A8BAF390(&v93, &v91);
      sub_1A8BAF3EC(&v96);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A8BDDC74();

      if (v92 == 1)
      {
        [v60 maximumHorizontalTextBounds];
        CGRectGetWidth(v114);
      }

      v51 = v85;
      v50 = v83;
      sub_1A8BDE074();
      sub_1A8BDDCD4();
      *(v107 + 10) = *(v95 + 10);
      v64 = v94;
      v106 = v94;
      v107[0] = v95[0];
      v65 = v93;
      v105 = v93;
      v66 = v107[3];
      v67 = v79;
      v79[4] = v107[2];
      v67[5] = v66;
      v67[6] = v107[4];
      *v67 = v65;
      v67[1] = v64;
      v68 = v107[1];
      v67[2] = v107[0];
      v67[3] = v68;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411B8, &qword_1A8BF8BB0);
      sub_1A8BAF1E0();
      sub_1A8BAF2B0();
      sub_1A8BDDF04();
    }

    v69 = v80;
    sub_1A8BAF440(v82, v80, &qword_1EB341110, &qword_1A8BF89F8);
    v70 = v81;
    sub_1A8BAF440(v50, v81, &qword_1EB3411F8, &qword_1A8BF8C40);
    v71 = v84;
    sub_1A8BAF440(v69, v84, &qword_1EB341110, &qword_1A8BF89F8);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341208, &qword_1A8BF8C50);
    sub_1A8BAF440(v70, v71 + *(v72 + 48), &qword_1EB3411F8, &qword_1A8BF8C40);
    sub_1A8BAF4B8(v70, &qword_1EB3411F8, &qword_1A8BF8C40);
    sub_1A8BAF4B8(v69, &qword_1EB341110, &qword_1A8BF89F8);
    sub_1A8BAF440(v71, v51, &qword_1EB3411E8, &qword_1A8BF8C30);
    swift_storeEnumTagMultiPayload();
    v73 = MEMORY[0x1E6981F48];
    sub_1A8BAFC18(&qword_1EB33D150, &qword_1EB3411E8, &qword_1A8BF8C30, MEMORY[0x1E6981F48]);
    sub_1A8BAFC18(&qword_1EB33D158, &qword_1EB3411D8, &qword_1A8BF8C20, v73);
    sub_1A8BDDF04();
    sub_1A8BAECE0(v110);
    sub_1A8BAF4B8(v71, &qword_1EB3411E8, &qword_1A8BF8C30);
    sub_1A8BAF4B8(v50, &qword_1EB3411F8, &qword_1A8BF8C40);
    v40 = v82;
    v41 = &qword_1EB341110;
    v42 = &qword_1A8BF89F8;
  }

  return sub_1A8BAF4B8(v40, v41, v42);
}

uint64_t sub_1A8BAB9E4(uint64_t a1, uint64_t a2, char a3)
{
  v21[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A0, &qword_1A8BF8B98);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341108, &qword_1A8BF89F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v24, v25, 0x12BuLL);
  memcpy(v25, v24, 0x12BuLL);
  v11 = sub_1A8BAECD4(v25);
  v12 = sub_1A8AAD988(v25);
  if (v11 == 1 && (v13 = *(v12 + 112), v14 = *(v12 + 128), v15 = *(v12 + 80), v22[6] = *(v12 + 96), v22[7] = v13, v22[8] = v14, v16 = *(v12 + 48), v17 = *(v12 + 64), v22[2] = *(v12 + 32), v22[3] = v16, v23 = *(v12 + 144), v22[4] = v17, v22[5] = v15, v18 = *(v12 + 16), v22[0] = *v12, v22[1] = v18, (*(v12 + 32) & 1) == 0))
  {
    [objc_opt_self() maximumHorizontalTextBounds];
    *&v20 = CGRectGetWidth(v26);
    sub_1A8BA7F24(v22, 0, v20, a2, a3 & 1, v10);
    sub_1A8BAF440(v10, v7, &qword_1EB341108, &qword_1A8BF89F0);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF1E0();
    sub_1A8BDDF04();
    sub_1A8BAECE0(v24);
    return sub_1A8BAF4B8(v10, &qword_1EB341108, &qword_1A8BF89F0);
  }

  else
  {
    sub_1A8BAECE0(v24);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF1E0();
    return sub_1A8BDDF04();
  }
}

uint64_t sub_1A8BABC94(uint64_t a1, uint64_t a2, char a3)
{
  v21[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A0, &qword_1A8BF8B98);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341108, &qword_1A8BF89F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v24, v25, 0x12BuLL);
  memcpy(v25, v24, 0x12BuLL);
  v11 = sub_1A8BAECD4(v25);
  v12 = sub_1A8AAD988(v25);
  if (v11 == 1 && (v13 = *(v12 + 248), v14 = *(v12 + 200), v22[2] = *(v12 + 184), v22[3] = v14, v15 = *(v12 + 232), v22[4] = *(v12 + 216), v22[5] = v15, v16 = *(v12 + 168), v22[0] = *(v12 + 152), v22[1] = v16, v17 = *(v12 + 264), v18 = *(v12 + 280), v22[6] = v13, v22[7] = v17, v23 = *(v12 + 296), v22[8] = v18, (*(v12 + 184) & 1) == 0))
  {
    [objc_opt_self() maximumHorizontalTextBounds];
    *&v20 = CGRectGetWidth(v26);
    sub_1A8BA7F24(v22, 0, v20, a2, a3 & 1, v10);
    sub_1A8BAF440(v10, v7, &qword_1EB341108, &qword_1A8BF89F0);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF1E0();
    sub_1A8BDDF04();
    sub_1A8BAECE0(v24);
    return sub_1A8BAF4B8(v10, &qword_1EB341108, &qword_1A8BF89F0);
  }

  else
  {
    sub_1A8BAECE0(v24);
    swift_storeEnumTagMultiPayload();
    sub_1A8BAF1E0();
    return sub_1A8BDDF04();
  }
}

uint64_t sub_1A8BABF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v28 = a4;
  v29 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341270, &qword_1A8BF8D00);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341328, &qword_1A8BF8DE0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v27[-v21];
  sub_1A8BAB9E4(a1, a2, a3);
  sub_1A8BA7630(a1, a2, a3, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v23 = &v16[*(v11 + 44)];
  *v23 = v30;
  *(v23 + 1) = v28;
  *(v23 + 2) = 1;
  v23[1] = a6;
  sub_1A8BAF440(v22, v20, &qword_1EB341328, &qword_1A8BF8DE0);
  sub_1A8BAF440(v16, v14, &qword_1EB341270, &qword_1A8BF8D00);
  v24 = v29;
  sub_1A8BAF440(v20, v29, &qword_1EB341328, &qword_1A8BF8DE0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341330, &qword_1A8BF8DE8);
  sub_1A8BAF440(v14, v24 + *(v25 + 48), &qword_1EB341270, &qword_1A8BF8D00);
  sub_1A8BAF4B8(v16, &qword_1EB341270, &qword_1A8BF8D00);
  sub_1A8BAF4B8(v22, &qword_1EB341328, &qword_1A8BF8DE0);
  sub_1A8BAF4B8(v14, &qword_1EB341270, &qword_1A8BF8D00);
  return sub_1A8BAF4B8(v20, &qword_1EB341328, &qword_1A8BF8DE0);
}

uint64_t sub_1A8BAC1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A8, &qword_1A8BF8BA0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  sub_1A8BAB9E4(a1, a2, a3);
  sub_1A8BABC94(a1, a2, a3);
  sub_1A8BAF440(v19, v14, &qword_1EB3411A8, &qword_1A8BF8BA0);
  sub_1A8BAF440(v17, v11, &qword_1EB3411A8, &qword_1A8BF8BA0);
  sub_1A8BAF440(v14, a4, &qword_1EB3411A8, &qword_1A8BF8BA0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341200, &qword_1A8BF8C48);
  sub_1A8BAF440(v11, a4 + *(v20 + 48), &qword_1EB3411A8, &qword_1A8BF8BA0);
  sub_1A8BAF4B8(v17, &qword_1EB3411A8, &qword_1A8BF8BA0);
  sub_1A8BAF4B8(v19, &qword_1EB3411A8, &qword_1A8BF8BA0);
  sub_1A8BAF4B8(v11, &qword_1EB3411A8, &qword_1A8BF8BA0);
  return sub_1A8BAF4B8(v14, &qword_1EB3411A8, &qword_1A8BF8BA0);
}

uint64_t sub_1A8BAC3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v32 = a4;
  v7 = a3;
  v33 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341238, &qword_1A8BF8CC8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341240, &qword_1A8BF8CD0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31[-v20];
  v22 = sub_1A8BDDDF4();
  v23 = sub_1A8BA662C(a1, a2);
  *v21 = v22;
  v21[1] = v23;
  *(v21 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341248, &qword_1A8BF8CD8);
  sub_1A8BAC1F0(a1, a2, v7, v21 + *(v24 + 44));
  v25 = sub_1A8BDDDF4();
  v26 = sub_1A8BA662C(a1, a2);
  *v15 = v25;
  v15[1] = v26;
  *(v15 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341250, &qword_1A8BF8CE0);
  sub_1A8BAC678(v32, a1, a2, v7, v15 + *(v27 + 44), a6);
  sub_1A8BAF440(v21, v19, &qword_1EB341240, &qword_1A8BF8CD0);
  sub_1A8BAF440(v15, v13, &qword_1EB341238, &qword_1A8BF8CC8);
  v28 = v33;
  sub_1A8BAF440(v19, v33, &qword_1EB341240, &qword_1A8BF8CD0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341258, &qword_1A8BF8CE8);
  sub_1A8BAF440(v13, v28 + *(v29 + 48), &qword_1EB341238, &qword_1A8BF8CC8);
  sub_1A8BAF4B8(v15, &qword_1EB341238, &qword_1A8BF8CC8);
  sub_1A8BAF4B8(v21, &qword_1EB341240, &qword_1A8BF8CD0);
  sub_1A8BAF4B8(v13, &qword_1EB341238, &qword_1A8BF8CC8);
  return sub_1A8BAF4B8(v19, &qword_1EB341240, &qword_1A8BF8CD0);
}

uint64_t sub_1A8BAC678@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v50 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341260, &qword_1A8BF8CF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341268, &qword_1A8BF8CF8);
  v46 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v45 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341270, &qword_1A8BF8D00);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341278, &qword_1A8BF8D08);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v48 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - v26;
  v47 = &v45 - v26;
  if (a1)
  {
    sub_1A8BA7630(a2, a3, a4 & 1, v22);
    swift_getKeyPath();
    v45 = v19;
    swift_getKeyPath();
    sub_1A8BDDC74();

    v28 = v45;
    v29 = &v22[*(v45 + 36)];
    *v29 = v54;
    *(v29 + 1) = 257;
    *(v29 + 1) = a6;
    sub_1A8BAF758(v22, v27, &qword_1EB341270, &qword_1A8BF8D00);
    (*(v20 + 56))(v27, 0, 1, v28);
  }

  else
  {
    (*(v20 + 56))(&v45 - v26, 1, 1, v19);
  }

  v30 = v53;
  sub_1A8BAB9E4(a2, a3, a4 & 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v31 = v30 + *(v15 + 36);
  *v31 = v56;
  *(v31 + 1) = a1 & 1;
  *(v31 + 2) = 0;
  *(v31 + 8) = a6;
  v32 = 1;
  if ((a1 & 1) == 0)
  {
    v33 = a4 & 1;
    v34 = v51;
    sub_1A8BABC94(a2, a3, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    v35 = v34 + *(v15 + 36);
    *v35 = v55;
    *(v35 + 1) = a1 & 1;
    *(v35 + 2) = 1;
    *(v35 + 8) = a6;
    sub_1A8BAF758(v34, v52, &qword_1EB341268, &qword_1A8BF8CF8);
    v32 = 0;
  }

  v36 = v52;
  (*(v46 + 56))(v52, v32, 1, v15);
  v38 = v47;
  v37 = v48;
  sub_1A8BAF440(v47, v48, &qword_1EB341278, &qword_1A8BF8D08);
  v39 = v53;
  v40 = v51;
  sub_1A8BAF440(v53, v51, &qword_1EB341268, &qword_1A8BF8CF8);
  v41 = v49;
  sub_1A8BAF440(v36, v49, &qword_1EB341260, &qword_1A8BF8CF0);
  v42 = v50;
  sub_1A8BAF440(v37, v50, &qword_1EB341278, &qword_1A8BF8D08);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341280, &qword_1A8BF8D58);
  sub_1A8BAF440(v40, v42 + *(v43 + 48), &qword_1EB341268, &qword_1A8BF8CF8);
  sub_1A8BAF440(v41, v42 + *(v43 + 64), &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF4B8(v36, &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF4B8(v39, &qword_1EB341268, &qword_1A8BF8CF8);
  sub_1A8BAF4B8(v38, &qword_1EB341278, &qword_1A8BF8D08);
  sub_1A8BAF4B8(v41, &qword_1EB341260, &qword_1A8BF8CF0);
  sub_1A8BAF4B8(v40, &qword_1EB341268, &qword_1A8BF8CF8);
  return sub_1A8BAF4B8(v37, &qword_1EB341278, &qword_1A8BF8D08);
}

uint64_t sub_1A8BACC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v32 = a4;
  v33 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341338, &qword_1A8BF8DF0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341240, &qword_1A8BF8CD0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31[-v20];
  v22 = sub_1A8BDDDF4();
  v23 = sub_1A8BA662C(a1, a2);
  *v21 = v22;
  v21[1] = v23;
  *(v21 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341248, &qword_1A8BF8CD8);
  sub_1A8BAC1F0(a1, a2, a3, v21 + *(v24 + 44));
  v25 = sub_1A8BDDDF4();
  v26 = sub_1A8BA662C(a1, a2);
  *v15 = v25;
  v15[1] = v26;
  *(v15 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341340, &qword_1A8BF8DF8);
  sub_1A8BACF34(a1, a2, a3, v32, v15 + *(v27 + 44), a6);
  sub_1A8BAF440(v21, v19, &qword_1EB341240, &qword_1A8BF8CD0);
  sub_1A8BAF440(v15, v13, &qword_1EB341338, &qword_1A8BF8DF0);
  v28 = v33;
  sub_1A8BAF440(v19, v33, &qword_1EB341240, &qword_1A8BF8CD0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341348, &qword_1A8BF8E00);
  sub_1A8BAF440(v13, v28 + *(v29 + 48), &qword_1EB341338, &qword_1A8BF8DF0);
  sub_1A8BAF4B8(v15, &qword_1EB341338, &qword_1A8BF8DF0);
  sub_1A8BAF4B8(v21, &qword_1EB341240, &qword_1A8BF8CD0);
  sub_1A8BAF4B8(v13, &qword_1EB341338, &qword_1A8BF8DF0);
  return sub_1A8BAF4B8(v19, &qword_1EB341240, &qword_1A8BF8CD0);
}

uint64_t sub_1A8BACF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v7 = a4;
  v8 = a3;
  v31 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341268, &qword_1A8BF8CF8);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341350, &qword_1A8BF8E08);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v31 - v22);
  v24 = sub_1A8BDDDF4();
  v25 = sub_1A8BDDDD4();
  *v23 = v24;
  v23[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341358, &qword_1A8BF8E10);
  sub_1A8BAD200(a1, a2, v8, v7, v23 + *(v26 + 44), a6);
  sub_1A8BABC94(a1, a2, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v27 = &v17[*(v12 + 44)];
  *v27 = v32;
  v27[1] = v7;
  v27[2] = 0;
  *(v27 + 1) = a6;
  sub_1A8BAF440(v23, v21, &qword_1EB341350, &qword_1A8BF8E08);
  sub_1A8BAF440(v17, v15, &qword_1EB341268, &qword_1A8BF8CF8);
  v28 = v31;
  sub_1A8BAF440(v21, v31, &qword_1EB341350, &qword_1A8BF8E08);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341360, &qword_1A8BF8E18);
  sub_1A8BAF440(v15, v28 + *(v29 + 48), &qword_1EB341268, &qword_1A8BF8CF8);
  sub_1A8BAF4B8(v17, &qword_1EB341268, &qword_1A8BF8CF8);
  sub_1A8BAF4B8(v23, &qword_1EB341350, &qword_1A8BF8E08);
  sub_1A8BAF4B8(v15, &qword_1EB341268, &qword_1A8BF8CF8);
  return sub_1A8BAF4B8(v21, &qword_1EB341350, &qword_1A8BF8E08);
}

uint64_t sub_1A8BAD200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v54 = a4;
  v7 = a3;
  v52 = a3;
  v53 = a2;
  v62 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341110, &qword_1A8BF89F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v51[-v10];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341368, &qword_1A8BF8E20) - 8;
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v51[-v11];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341370, &qword_1A8BF8E28) - 8;
  v12 = MEMORY[0x1EEE9AC00](v60);
  v61 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v51[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v51[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411A8, &qword_1A8BF8BA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341378, &qword_1A8BF8E30);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341380, &qword_1A8BF8E38);
  v25 = v24 - 8;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v51[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v51[-v30];
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v51[-v32];
  v34 = v53;
  sub_1A8BAB9E4(a1, v53, v7);
  sub_1A8BAF758(v19, v23, &qword_1EB3411A8, &qword_1A8BF8BA0);
  v35 = v54;
  if (v54)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  *&v23[*(v21 + 44)] = v36;
  if (v35)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v38 = v64;
  sub_1A8BAF758(v23, v31, &qword_1EB341378, &qword_1A8BF8E30);
  v39 = &v31[*(v25 + 44)];
  *v39 = v38;
  *(v39 + 1) = v35;
  v40 = v35;
  *(v39 + 2) = 1;
  v39[1] = a6;
  sub_1A8BAF758(v31, v33, &qword_1EB341380, &qword_1A8BF8E38);
  v41 = v57;
  sub_1A8BA7630(a1, v34, v52, v57);
  v42 = v55;
  sub_1A8BAF758(v41, v55, &qword_1EB341110, &qword_1A8BF89F8);
  *&v42[*(v58 + 44)] = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v43 = v63;
  v44 = v56;
  sub_1A8BAF758(v42, v56, &qword_1EB341368, &qword_1A8BF8E20);
  v45 = &v44[*(v60 + 44)];
  *v45 = v43;
  *(v45 + 1) = v40;
  *(v45 + 2) = 1;
  v45[1] = a6;
  v46 = v59;
  sub_1A8BAF758(v44, v59, &qword_1EB341370, &qword_1A8BF8E28);
  sub_1A8BAF440(v33, v28, &qword_1EB341380, &qword_1A8BF8E38);
  v47 = v61;
  sub_1A8BAF440(v46, v61, &qword_1EB341370, &qword_1A8BF8E28);
  v48 = v62;
  sub_1A8BAF440(v28, v62, &qword_1EB341380, &qword_1A8BF8E38);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341388, &qword_1A8BF8E40);
  sub_1A8BAF440(v47, v48 + *(v49 + 48), &qword_1EB341370, &qword_1A8BF8E28);
  sub_1A8BAF4B8(v46, &qword_1EB341370, &qword_1A8BF8E28);
  sub_1A8BAF4B8(v33, &qword_1EB341380, &qword_1A8BF8E38);
  sub_1A8BAF4B8(v47, &qword_1EB341370, &qword_1A8BF8E28);
  return sub_1A8BAF4B8(v28, &qword_1EB341380, &qword_1A8BF8E38);
}

uint64_t sub_1A8BAD780@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A8BDDA44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A8BDDA04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A8BDD9D4();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  sub_1A8BDD9E4();
  result = CEMGetSharedEmojiCharacterSet();
  if (result)
  {
    v15 = result;
    sub_1A8BDD9A4();

    v16 = HIBYTE(a2) & 0xF;
    v29 = a1;
    v30 = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v31 = 0;
    v32 = v16;

    v17 = sub_1A8BDE174();
    if (!v18)
    {
LABEL_11:

      return (*(v25 + 8))(v13, v26);
    }

    v19 = v17;
    v20 = v18;
    v21 = (v8 + 8);
    while (1)
    {
      result = sub_1A8BAE034(v19, v20);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      if (sub_1A8BDD9B4())
      {
        v22 = sub_1A8BDE034();
      }

      else
      {
        v22 = sub_1A8BDE024();
      }

      v23 = v22;
      sub_1A8BDDA34();
      sub_1A8BDDA14();
      v28 = v23;
      sub_1A8BAF074();

      sub_1A8BDDA24();
      sub_1A8BAF518(&qword_1EB341188, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      sub_1A8BDD9F4();

      (*v21)(v10, v7);
      v19 = sub_1A8BDE174();
      v20 = v24;
      if (!v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A8BADAA4()
{
  result = qword_1EB341088;
  if (!qword_1EB341088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB341088);
  }

  return result;
}

unint64_t sub_1A8BADAFC()
{
  result = qword_1EB341090;
  if (!qword_1EB341090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB341090);
  }

  return result;
}

uint64_t sub_1A8BADB50()
{
  result = sub_1A8BDE094();
  qword_1EB341070 = result;
  return result;
}

uint64_t sub_1A8BADB78()
{
  result = MEMORY[0x1AC5738B0](0.5, 1.0, 0.0);
  qword_1EB341078 = result;
  return result;
}

uint64_t sub_1A8BADBA4()
{
  result = sub_1A8BDE084();
  qword_1EB341080 = result;
  return result;
}

uint64_t sub_1A8BADBE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a2 & 0x100;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341398, &qword_1A8BF8ED8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3413A0, &qword_1A8BF8EE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3413A8, &qword_1A8BF8EE8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  if (a2)
  {
    v32 = a3;
    if (qword_1EB340E48 != -1)
    {
      swift_once();
    }

    v17 = qword_1EB341078;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3413B0, &qword_1A8BF8EF0);
    (*(*(v18 - 8) + 16))(v10, a1, v18);
    v19 = &v10[*(v8 + 36)];
    *v19 = v17;
    v20 = v7 >> 8;
    v19[8] = v20;
    v21 = qword_1EB340E40;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1EB341070;

    a3 = v32;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3413B0, &qword_1A8BF8EF0);
    (*(*(v23 - 8) + 16))(v10, a1, v23);
    v22 = 0;
    v24 = &v10[*(v8 + 36)];
    *v24 = 0;
    v20 = v7 >> 8;
    v24[8] = v20;
  }

  sub_1A8BAF758(v10, v13, &qword_1EB341398, &qword_1A8BF8ED8);
  v25 = &v13[*(v11 + 36)];
  *v25 = v22;
  v25[8] = v20;
  if ((a2 & 1) == 0)
  {
    sub_1A8BAF758(v13, v16, &qword_1EB3413A0, &qword_1A8BF8EE0);
    v29 = &v16[*(v14 + 36)];
    *v29 = 0;
    v29[8] = v20;
LABEL_14:
    v28 = sub_1A8BDDD14();
    goto LABEL_15;
  }

  if (qword_1EB340E50 != -1)
  {
    swift_once();
  }

  v26 = qword_1EB341080;

  sub_1A8BAF758(v13, v16, &qword_1EB3413A0, &qword_1A8BF8EE0);
  v27 = &v16[*(v14 + 36)];
  *v27 = v26;
  v27[8] = v20;
  if ((a2 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

  sub_1A8BDE0C4();
  sub_1A8BDDCE4();
  sub_1A8BDDCF4();
  v28 = sub_1A8BDDD04();

LABEL_15:
  sub_1A8BAF758(v16, a3, &qword_1EB3413A8, &qword_1A8BF8EE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3413B8, &qword_1A8BF8EF8);
  *(a3 + *(result + 36)) = v28;
  return result;
}

uint64_t sub_1A8BAE000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  if (v2[2])
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1A8BADBE0(a1, v4 | v5, a2);
}

unint64_t sub_1A8BAE034(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1A8BAE634(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1A8BDE304();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1A8BDE324();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

unint64_t sub_1A8BAE180(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A8BDD9D4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v8 = sub_1A8BDE104();
  v38 = [v7 initWithString_];

  result = CEMGetSharedEmojiCharacterSet();
  if (result)
  {
    v10 = result;
    sub_1A8BDD9A4();

    v11 = HIBYTE(a2) & 0xF;
    v41[5] = a1;
    v41[6] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v41[7] = 0;
    v41[8] = v11;

    v12 = sub_1A8BDE174();
    v14 = v6;
    if (!v13)
    {
LABEL_12:

      (*(v36 + 8))(v14, v37);
      return v38;
    }

    v15 = v12;
    v16 = v13;
    v17 = *MEMORY[0x1E69DB650];
    while (1)
    {
      result = sub_1A8BAE034(v15, v16);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      v18 = v14;
      v19 = sub_1A8BDD9B4();
      v20 = objc_opt_self();
      v21 = &selRef_whiteColor;
      if ((v19 & 1) == 0)
      {
        v21 = &selRef_clearColor;
      }

      v22 = [v20 *v21];
      v41[0] = v17;
      v41[4] = sub_1A8BA3FE4(0, &unk_1EB33CFE0, 0x1E69DC888);
      v41[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB341530, &unk_1A8BF8C00);
      v23 = sub_1A8BDE374();
      v24 = v17;
      v25 = v22;
      sub_1A8BAF440(v41, &v39, &qword_1EB3411C0, &unk_1A8BF9060);
      v26 = v39;
      result = sub_1A8BB48F0(v39);
      if (v27)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        break;
      }

      v23[(result >> 6) + 8] |= 1 << result;
      *(v23[6] + 8 * result) = v26;
      result = sub_1A8BAF4A8(&v40, (v23[7] + 32 * result));
      v28 = v23[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_14;
      }

      v23[2] = v30;
      sub_1A8BAF4B8(v41, &qword_1EB3411C0, &unk_1A8BF9060);
      v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v32 = sub_1A8BDE104();

      type metadata accessor for Key(0);
      sub_1A8BAF518(&qword_1EB33D018, type metadata accessor for Key, &unk_1A8BF81D0);
      v33 = sub_1A8BDE0D4();

      v34 = [v31 initWithString:v32 attributes:v33];

      [v38 appendAttributedString_];
      v15 = sub_1A8BDE174();
      v16 = v35;
      v14 = v18;
      if (!v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8BAE540@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  *a2 = v4;
  return result;
}

uint64_t sub_1A8BAE5C0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

unint64_t sub_1A8BAE634(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A8BAE6CC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A8BAE740(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1A8BAE6CC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A8BAE854(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A8BAE740(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1A8BDE324();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1A8BAE854(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A8BDE1A4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC5739A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1A8BAE8D0()
{
  result = qword_1EB33D1F0;
  if (!qword_1EB33D1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3410A8, &qword_1A8BF8948);
    sub_1A8BAFC18(&qword_1EB33D188, &qword_1EB3410B0, &qword_1A8BF8950, MEMORY[0x1E69817F8]);
    sub_1A8BAE9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1F0);
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

unint64_t sub_1A8BAE9D0()
{
  result = qword_1EB33D1E8;
  if (!qword_1EB33D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341098, &qword_1A8BF8938);
    sub_1A8BAFC18(&qword_1EB33D180, &qword_1EB3410B8, &qword_1A8BF8958, MEMORY[0x1E6981870]);
    sub_1A8BAEA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1E8);
  }

  return result;
}

unint64_t sub_1A8BAEA88()
{
  result = qword_1EB33D1C0;
  if (!qword_1EB33D1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3410C0, &qword_1A8BF8960);
    sub_1A8BAEB14();
    sub_1A8BAEBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1C0);
  }

  return result;
}

unint64_t sub_1A8BAEB14()
{
  result = qword_1EB33D1D8;
  if (!qword_1EB33D1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3410C8, &qword_1A8BF8968);
    v1 = MEMORY[0x1E6981880];
    sub_1A8BAFC18(&qword_1EB33D168, &qword_1EB3410D0, &qword_1A8BF8970, MEMORY[0x1E6981880]);
    sub_1A8BAFC18(&qword_1EB33D160, &qword_1EB3410D8, &qword_1A8BF8978, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1D8);
  }

  return result;
}

unint64_t sub_1A8BAEBF4()
{
  result = qword_1EB33D1E0;
  if (!qword_1EB33D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3410E0, &qword_1A8BF8980);
    v1 = MEMORY[0x1E6981880];
    sub_1A8BAFC18(&qword_1EB33D178, &qword_1EB3410E8, &qword_1A8BF8988, MEMORY[0x1E6981880]);
    sub_1A8BAFC18(&qword_1EB33D170, &qword_1EB3410F0, &qword_1A8BF8990, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1E0);
  }

  return result;
}

unint64_t sub_1A8BAED34()
{
  result = qword_1EB33D200;
  if (!qword_1EB33D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341130, &qword_1A8BF8A18);
    sub_1A8BAEDEC();
    sub_1A8BAFC18(&qword_1EB33D1B0, &qword_1EB341168, &qword_1A8BF8B28, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D200);
  }

  return result;
}

unint64_t sub_1A8BAEDEC()
{
  result = qword_1EB33D208;
  if (!qword_1EB33D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341150, &qword_1A8BF8A38);
    sub_1A8BAEE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D208);
  }

  return result;
}

unint64_t sub_1A8BAEE78()
{
  result = qword_1EB33D210;
  if (!qword_1EB33D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341148, &qword_1A8BF8A30);
    sub_1A8BAEF30();
    sub_1A8BAFC18(&qword_1EB33D1A0, &qword_1EB341160, &qword_1A8BF8B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D210);
  }

  return result;
}

unint64_t sub_1A8BAEF30()
{
  result = qword_1EB33D218;
  if (!qword_1EB33D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341140, &qword_1A8BF8A28);
    swift_getOpaqueTypeConformance2();
    sub_1A8BAFC18(&qword_1EB33D1A8, &qword_1EB341158, &qword_1A8BF8B18, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D218);
  }

  return result;
}

unint64_t sub_1A8BAF074()
{
  result = qword_1EB341180;
  if (!qword_1EB341180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB341180);
  }

  return result;
}

unint64_t sub_1A8BAF0C8()
{
  result = qword_1EB33D1B8;
  if (!qword_1EB33D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3411B0, &qword_1A8BF8BA8);
    sub_1A8BAF154();
    sub_1A8BAF2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1B8);
  }

  return result;
}

unint64_t sub_1A8BAF154()
{
  result = qword_1EB33D1D0;
  if (!qword_1EB33D1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3411A8, &qword_1A8BF8BA0);
    sub_1A8BAF1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1D0);
  }

  return result;
}

unint64_t sub_1A8BAF1E0()
{
  result = qword_1EB33D1F8;
  if (!qword_1EB33D1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341108, &qword_1A8BF89F0);
    sub_1A8BAED34();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341150, &qword_1A8BF8A38);
    sub_1A8BAEDEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1F8);
  }

  return result;
}

unint64_t sub_1A8BAF2B0()
{
  result = qword_1EB33D220;
  if (!qword_1EB33D220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3411B8, &qword_1A8BF8BB0);
    sub_1A8BAF33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D220);
  }

  return result;
}

unint64_t sub_1A8BAF33C()
{
  result = qword_1EB33D140;
  if (!qword_1EB33D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D140);
  }

  return result;
}

uint64_t sub_1A8BAF440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1A8BAF4A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A8BAF4B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A8BAF518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A8BAF560()
{
  result = qword_1EB3412A8;
  if (!qword_1EB3412A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341270, &qword_1A8BF8D00);
    sub_1A8BAF5EC();
    sub_1A8BAF678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3412A8);
  }

  return result;
}

unint64_t sub_1A8BAF5EC()
{
  result = qword_1EB3412B0;
  if (!qword_1EB3412B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341110, &qword_1A8BF89F8);
    sub_1A8BAF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3412B0);
  }

  return result;
}

unint64_t sub_1A8BAF678()
{
  result = qword_1EB3412B8;
  if (!qword_1EB3412B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3412B8);
  }

  return result;
}

unint64_t sub_1A8BAF6CC()
{
  result = qword_1EB3412C0;
  if (!qword_1EB3412C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341268, &qword_1A8BF8CF8);
    sub_1A8BAF154();
    sub_1A8BAF678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3412C0);
  }

  return result;
}

uint64_t sub_1A8BAF758(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for IncomingCallAnimationsModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingCallAnimationsModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A8BAF864()
{
  result = qword_1EB33D1C8;
  if (!qword_1EB33D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341390, &qword_1A8BF8E80);
    sub_1A8BAE8D0();
    sub_1A8BAE9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D1C8);
  }

  return result;
}

unint64_t sub_1A8BAF90C()
{
  result = qword_1EB3413C0;
  if (!qword_1EB3413C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3413B8, &qword_1A8BF8EF8);
    sub_1A8BAF9C4();
    sub_1A8BAFC18(&qword_1EB3413F8, &qword_1EB341400, qword_1A8BF8F08, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3413C0);
  }

  return result;
}

unint64_t sub_1A8BAF9C4()
{
  result = qword_1EB3413C8;
  if (!qword_1EB3413C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3413A8, &qword_1A8BF8EE8);
    sub_1A8BAFA7C();
    sub_1A8BAFC18(&qword_1EB3413E8, &qword_1EB3413F0, &qword_1A8BF8F00, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3413C8);
  }

  return result;
}

unint64_t sub_1A8BAFA7C()
{
  result = qword_1EB3413D0;
  if (!qword_1EB3413D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3413A0, &qword_1A8BF8EE0);
    sub_1A8BAFB34();
    sub_1A8BAFC18(&qword_1EB3413E8, &qword_1EB3413F0, &qword_1A8BF8F00, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3413D0);
  }

  return result;
}

unint64_t sub_1A8BAFB34()
{
  result = qword_1EB3413D8;
  if (!qword_1EB3413D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB341398, &qword_1A8BF8ED8);
    sub_1A8BAFC18(&qword_1EB3413E0, &qword_1EB3413B0, &qword_1A8BF8EF0, MEMORY[0x1E697FDF8]);
    sub_1A8BAFC18(&qword_1EB3413E8, &qword_1EB3413F0, &qword_1A8BF8F00, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3413D8);
  }

  return result;
}

uint64_t sub_1A8BAFC18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1A8BAFCD0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A8BB0034(a1);
  (*(*(*(v2 + qword_1EB342A90) - 8) + 8))(a1);
  return v5;
}

void *sub_1A8BAFD94(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB342A90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_1A8BDDE24();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_1A8BAFECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LockScreenHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB342A90), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB342A90 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1A8BAFFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LockScreenHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB342A90), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB342A90 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A8BB0034(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_1A8BDDE34();
}

void sub_1A8BB011C(uint64_t a1, double a2)
{
  v5 = sub_1A8BDDF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  [v9 pointSize];
  v11 = [v9 fontWithSize_];
  v12 = sub_1A8BDE104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341408, &qword_1A8BF9058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8BF8F70;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1A8BA3FE4(0, &qword_1EB33CFF0, 0x1E69DB878);
  *(inited + 40) = v11;
  v15 = v14;
  v16 = v11;
  sub_1A8BB69EC(inited);
  swift_setDeallocating();
  sub_1A8BAF4B8(inited + 32, &qword_1EB3411C0, &unk_1A8BF9060);
  type metadata accessor for Key(0);
  sub_1A8BB1280(&qword_1EB33D018, type metadata accessor for Key, &unk_1A8BF81D0);
  v17 = sub_1A8BDE0D4();

  [v12 sizeWithAttributes_];

  (*(v6 + 16))(v8, a1, v5);
  v18 = sub_1A8BC0DC8(v8);
  PRPosterTitleLayoutIsVertical(v18);
}

uint64_t sub_1A8BB0388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB341410, &qword_1A8BF9070);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - v4;
  v6 = sub_1A8BDD9D4();
  __swift_allocate_value_buffer(v6, qword_1EB33D0C0);
  v7 = __swift_project_value_buffer(v6, qword_1EB33D0C0);
  v8 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v10 = *(v6 - 8);
      v11 = *(v10 + 56);
      v11(v3, 1, 1, v6);
      sub_1A8BB1280(&qword_1EB33D268, MEMORY[0x1E69680B8], MEMORY[0x1E69680D8]);
      sub_1A8BDE394();

      if ((*(v10 + 48))(v3, 1, v6) != 1)
      {
        v12 = *(v10 + 32);
        v12(v5, v3, v6);
        v11(v5, 0, 1, v6);
        return (v12)(v7, v5, v6);
      }
    }

    else
    {
    }
  }

  v14 = *(v6 - 8);
  (*(v14 + 56))(v5, 1, 1, v6);
  sub_1A8BDD9C4();
  result = (*(v14 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return sub_1A8BAF4B8(v5, &unk_1EB341410, &qword_1A8BF9070);
  }

  return result;
}

void sub_1A8BB0668()
{
  v1 = v0;
  if (qword_1EB33D260 != -1)
  {
    swift_once();
  }

  v2 = sub_1A8BDDC24();
  __swift_project_value_buffer(v2, qword_1EB342AA0);
  sub_1A8BB1248(v0, v19);
  v3 = sub_1A8BDDC14();
  v4 = sub_1A8BDE1D4();
  sub_1A8BB1004(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v5 = 136317442;
    *(v5 + 4) = sub_1A8BB4208(*v1, *(v1 + 8), v19);
    *(v5 + 12) = 2112;
    v8 = *(v1 + 16);
    *(v5 + 14) = v8;
    *v6 = v8;
    *(v5 + 22) = 2048;
    v9 = *(v1 + 32);
    *(v5 + 24) = *(v1 + 24);
    *(v5 + 32) = 2048;
    *(v5 + 34) = v9;
    *(v5 + 42) = 2048;
    v10 = *(v1 + 48);
    *(v5 + 44) = *(v1 + 40);
    *(v5 + 52) = 2048;
    *(v5 + 54) = v10;
    *(v5 + 62) = 2080;
    v11 = v8;
    v12 = sub_1A8BDE254();
    v14 = sub_1A8BB4208(v12, v13, v19);

    v15 = *(v1 + 96);
    *(v5 + 74) = *(v1 + 88);
    *(v5 + 64) = v14;
    *(v5 + 72) = 2048;
    *(v5 + 82) = 2048;
    *(v5 + 84) = v15;
    *(v5 + 92) = 2080;
    if (*(v1 + 104))
    {
      v16 = 5457241;
    }

    else
    {
      v16 = 20302;
    }

    if (*(v1 + 104))
    {
      v17 = 0xE300000000000000;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    v18 = sub_1A8BB4208(v16, v17, v19);

    *(v5 + 94) = v18;
    _os_log_impl(&dword_1A8AA7000, v3, v4, "---\nIncomingCallTextView.Configuration.Metrics\n---\nString: %s\nFont: %@\nA1: %f, A2: %f\nD1: %f, D2: %f\nGlyph Bounds: %s\nAscender Adjustment: %f\nDescender Adjustment: %f\nNeeds Taller Line Height: %s", v5, 0x66u);
    sub_1A8BAF4B8(v6, &qword_1EB341430, &qword_1A8BF9090);
    MEMORY[0x1AC575150](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1AC575150](v7, -1, -1);
    MEMORY[0x1AC575150](v5, -1, -1);
  }
}

uint64_t sub_1A8BB08F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_1A8BB1138(v10, v12) & 1;
}

double static IncomingCallTextViewConfigurationMetrics.idealSpaceBetween(topText:topFont:bottomText:bottomFont:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{

  sub_1A8BB0BC8(a1, a2, a3, v13);

  sub_1A8BB0BC8(a4, a5, a6, v14);
  sub_1A8BB1004(v14);
  sub_1A8BB1004(v13);
  return round(v13[12] + v15);
}

id IncomingCallTextViewConfigurationMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IncomingCallTextViewConfigurationMetrics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncomingCallTextViewConfigurationMetrics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IncomingCallTextViewConfigurationMetrics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IncomingCallTextViewConfigurationMetrics();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A8BB0BC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = qword_1EB33D0B8;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1A8BDD9D4();
  __swift_project_value_buffer(v10, qword_1EB33D0C0);
  sub_1A8BA4E48();
  sub_1A8BDE2A4();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341408, &qword_1A8BF9058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8BF8F70;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1A8BA3FE4(0, &qword_1EB33CFF0, 0x1E69DB878);
  *(inited + 40) = v9;
  v15 = v9;
  v16 = v14;
  sub_1A8BB69EC(inited);
  swift_setDeallocating();
  sub_1A8BAF4B8(inited + 32, &qword_1EB3411C0, &unk_1A8BF9060);
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1A8BDE104();

  type metadata accessor for Key(0);
  sub_1A8BB1280(&qword_1EB33D018, type metadata accessor for Key, &unk_1A8BF81D0);
  v19 = sub_1A8BDE0D4();

  v20 = [v17 initWithString:v18 attributes:v19];

  v21 = CTLineCreateWithAttributedString(v20);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v21, 8uLL);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  [v15 pointSize];
  v27 = v26 * 0.77;
  [v15 pointSize];
  v29 = v28 * 0.95;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v46 = v29;
  if (v29 >= CGRectGetMaxY(v49))
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v31 = 0.0;
    if (v27 < CGRectGetMaxY(v50))
    {
      goto LABEL_8;
    }

    v30 = -0.07;
  }

  else
  {
    v30 = 0.16;
  }

  [v15 pointSize];
  v31 = v32 * v30;
LABEL_8:
  v47 = v27;
  [v15 pointSize];
  v34 = v33 * -0.06;
  [v15 pointSize];
  v36 = v35 * -0.25;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v45 = v31;
  if (CGRectGetMinY(v51) < v36)
  {
    [v15 pointSize];
    v38 = v37;

    v39 = 0.1;
LABEL_13:
    v40 = v38 * v39;
    goto LABEL_14;
  }

  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  if (CGRectGetMinY(v52) >= v34)
  {
    [v15 pointSize];
    v38 = v41;

    v39 = -0.04;
    goto LABEL_13;
  }

  v40 = 0.0;
LABEL_14:
  v44 = height;
  v42 = v40;
  sub_1A8BB0668();

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v15;
  *(a4 + 24) = v47;
  *(a4 + 32) = v46;
  *(a4 + 40) = v34;
  *(a4 + 48) = v36;
  *(a4 + 56) = x;
  *(a4 + 64) = y;
  result = v44;
  *(a4 + 72) = width;
  *(a4 + 80) = v44;
  *(a4 + 88) = v45;
  *(a4 + 96) = v42;
  *(a4 + 104) = (v12 & 1) == 0;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A8BB1084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8BB10CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8BB1138(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_1A8BDE3B4()) && (sub_1A8BA3FE4(0, &qword_1EB33CFA0, 0x1E69E58C0), (sub_1A8BDE264()) && *(a1 + 3) == *(a2 + 24) && *(a1 + 4) == *(a2 + 32) && *(a1 + 5) == *(a2 + 40) && *(a1 + 6) == *(a2 + 48) && CGRectEqualToRect(*(a1 + 7), *(a2 + 56)) && *(a1 + 11) == *(a2 + 88) && *(a1 + 12) == *(a2 + 96))
  {
    v5 = *(a1 + 104) ^ *(a2 + 104) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A8BB1280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8BB12C8()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v20];
  v2 = v20[0];
  if (v1)
  {
    v3 = sub_1A8BDDA94();
    v5 = v4;

    v6 = sub_1A8BDDA84();
    sub_1A8BB6724(v3, v5);
  }

  else
  {
    v7 = v2;
    v8 = sub_1A8BDDA54();

    swift_willThrow();
    if (qword_1EB33D260 != -1)
    {
      swift_once();
    }

    v9 = sub_1A8BDDC24();
    __swift_project_value_buffer(v9, qword_1EB342AA0);
    v10 = sub_1A8BDE1E4();
    v11 = v0;
    v12 = v8;
    v13 = sub_1A8BDDC14();

    if (os_log_type_enabled(v13, v10))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2112;
      v16 = v11;
      v17 = v8;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      v15[1] = v18;
      _os_log_impl(&dword_1A8AA7000, v13, v10, "Error archiving object %@: %@", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341430, &qword_1A8BF9090);
      swift_arrayDestroy();
      MEMORY[0x1AC575150](v15, -1, -1);
      MEMORY[0x1AC575150](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1A8BB1530(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = sub_1A8BDDA64();
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  sub_1A8BA3FE4(0, &qword_1EB341540, 0x1E696ACD0);
  sub_1A8BA3FE4(0, a3, a4);
  v10 = sub_1A8BDE234();
  sub_1A8BB6C18(v8, v9);
  return v10;
}

uint64_t PRPosterHomeScreenConfiguration.encodeJSON()()
{
  v1 = v0;
  v84 = *MEMORY[0x1E69E9840];
  v2 = [v0 selectedAppearanceType];
  v82 = MEMORY[0x1E69E6810];
  v83 = MEMORY[0x1E69E6818];
  *&v81 = v2;
  sub_1A8BB2224(&v81, v79);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v3;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  sub_1A8BB62BC(*v5, 0xD000000000000016, 0x80000001A8C03170, isUniquelyReferenced_nonNull_native, &v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  v6 = v77;
  v78 = v77;
  v7 = [v1 lockPosterAppearance];
  v8 = sub_1A8BB12C8();
  v10 = v9;

  v11 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E69E6160];
  if (v10)
  {
    v82 = MEMORY[0x1E69E6158];
    v83 = MEMORY[0x1E69E6160];
    *&v81 = v8;
    *(&v81 + 1) = v10;
    sub_1A8BB2224(&v81, v79);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v6;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v14);
    v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    sub_1A8BB6424(v16, 0xD000000000000014, 0x80000001A8C03190, v13, &v77, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v78 = v77;
  }

  else
  {
    sub_1A8BB4CAC(0xD000000000000014, 0x80000001A8C03190, &v81);
    sub_1A8BAF4B8(&v81, &qword_1EB341420, &qword_1A8BF9080);
  }

  v18 = [v1 solidColorAppearance];
  v19 = sub_1A8BB12C8();
  v21 = v20;

  if (v21)
  {
    v82 = v11;
    v83 = v12;
    *&v81 = v19;
    *(&v81 + 1) = v21;
    sub_1A8BB2224(&v81, v79);
    v22 = v78;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v22;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v24);
    v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_1A8BB6424(v26, 0xD000000000000014, 0x80000001A8C031B0, v23, &v77, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v78 = v77;
  }

  else
  {
    sub_1A8BB4CAC(0xD000000000000014, 0x80000001A8C031B0, &v81);
    sub_1A8BAF4B8(&v81, &qword_1EB341420, &qword_1A8BF9080);
  }

  v28 = [v1 gradientAppearance];
  v29 = sub_1A8BB12C8();
  v31 = v30;

  if (v31)
  {
    v82 = v11;
    v83 = v12;
    *&v81 = v29;
    *(&v81 + 1) = v31;
    sub_1A8BB2224(&v81, v79);
    v32 = v78;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v32;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v34);
    v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36);
    sub_1A8BB6424(v36, 0xD000000000000012, 0x80000001A8C031D0, v33, &v77, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v78 = v77;
  }

  else
  {
    sub_1A8BB4CAC(0xD000000000000012, 0x80000001A8C031D0, &v81);
    sub_1A8BAF4B8(&v81, &qword_1EB341420, &qword_1A8BF9080);
  }

  v38 = [v1 homePosterAppearance];
  v39 = sub_1A8BB12C8();
  v41 = v40;

  if (v41)
  {
    v82 = v11;
    v83 = v12;
    *&v81 = v39;
    *(&v81 + 1) = v41;
    sub_1A8BB2224(&v81, v79);
    v42 = v78;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v42;
    v44 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v44);
    v46 = &v76 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v46);
    sub_1A8BB6424(v46, 0xD000000000000014, 0x80000001A8C031F0, v43, &v77, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v78 = v77;
  }

  else
  {
    sub_1A8BB4CAC(0xD000000000000014, 0x80000001A8C031F0, &v81);
    sub_1A8BAF4B8(&v81, &qword_1EB341420, &qword_1A8BF9080);
  }

  v48 = [v1 customizationConfiguration];
  v49 = sub_1A8BB12C8();
  v51 = v50;

  if (v51)
  {
    v82 = v11;
    v83 = v12;
    *&v81 = v49;
    *(&v81 + 1) = v51;
    sub_1A8BB2224(&v81, v79);
    v52 = v78;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v52;
    v54 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v54);
    v56 = &v76 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v56);
    sub_1A8BB6424(v56, 0xD00000000000001ALL, 0x80000001A8C03210, v53, &v77, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    v78 = v77;
  }

  else
  {
    sub_1A8BB4CAC(0xD00000000000001ALL, 0x80000001A8C03210, &v81);
    sub_1A8BAF4B8(&v81, &qword_1EB341420, &qword_1A8BF9080);
  }

  v58 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341428, &qword_1A8BF9088);
  v59 = sub_1A8BDE0D4();

  *&v81 = 0;
  v60 = [v58 dataWithJSONObject:v59 options:0 error:&v81];

  v61 = v81;
  if (v60)
  {
    v62 = sub_1A8BDDA94();
  }

  else
  {
    v63 = v61;
    v64 = sub_1A8BDDA54();

    swift_willThrow();
    if (qword_1EB33D260 != -1)
    {
      swift_once();
    }

    v65 = sub_1A8BDDC24();
    __swift_project_value_buffer(v65, qword_1EB342AA0);
    v66 = sub_1A8BDE1E4();
    v67 = v1;
    v68 = v64;
    v69 = sub_1A8BDDC14();

    if (os_log_type_enabled(v69, v66))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412546;
      *(v70 + 4) = v67;
      *v71 = v67;
      *(v70 + 12) = 2112;
      v72 = v67;
      v73 = v64;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v74;
      v71[1] = v74;
      _os_log_impl(&dword_1A8AA7000, v69, v66, "Error serializing into json %@ : %@", v70, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341430, &qword_1A8BF9090);
      swift_arrayDestroy();
      MEMORY[0x1AC575150](v71, -1, -1);
      MEMORY[0x1AC575150](v70, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v62;
}

uint64_t sub_1A8BB2224(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t static PRPosterHomeScreenConfiguration.decodeObject(withJSON:)(uint64_t a1, uint64_t a2)
{
  v59[4] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1A8BDDA74();
  v59[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v59];

  if (!v4)
  {
    v10 = v59[0];
    v11 = sub_1A8BDDA54();

    swift_willThrow();
    if (qword_1EB33D260 != -1)
    {
      swift_once();
    }

    v12 = sub_1A8BDDC24();
    __swift_project_value_buffer(v12, qword_1EB342AA0);
    v13 = sub_1A8BDE1E4();
    v14 = v11;
    v15 = sub_1A8BDDC14();

    if (os_log_type_enabled(v15, v13))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1A8AA7000, v15, v13, "Error decoding json data into an object: %@", v16, 0xCu);
      sub_1A8BAF4B8(v17, &qword_1EB341430, &qword_1A8BF9090);
      MEMORY[0x1AC575150](v17, -1, -1);
      MEMORY[0x1AC575150](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v5 = v59[0];
  sub_1A8BDE2B4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341438, &qword_1A8BF9098);
  if (swift_dynamicCast())
  {
    v6 = v57;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v9 = 0;
    goto LABEL_27;
  }

  if (!*(v6 + 16))
  {
LABEL_18:
    v9 = 0;
    if (*(v6 + 16))
    {
      goto LABEL_19;
    }

LABEL_27:
    v24 = 0;
    v25 = 0;
    goto LABEL_28;
  }

  v7 = sub_1A8BB4984(0xD000000000000016, 0x80000001A8C03170);
  if ((v8 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_1A8BB6658(*(v6 + 56) + 32 * v7, v59);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = v57;
  if (!*(v6 + 16))
  {
    goto LABEL_27;
  }

LABEL_19:

  v20 = sub_1A8BB4984(0xD000000000000014, 0x80000001A8C03190);
  if ((v21 & 1) == 0)
  {

    goto LABEL_27;
  }

  sub_1A8BB6658(*(v6 + 56) + 32 * v20, v59);

  v22 = swift_dynamicCast();
  v23 = v22 == 0;
  if (v22)
  {
    v24 = v57;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v58;
  }

LABEL_28:
  v26 = sub_1A8BB1530(v24, v25, &qword_1EB341588, off_1E7841D98);

  if (!v6 || !*(v6 + 16))
  {
    goto LABEL_38;
  }

  v27 = sub_1A8BB4984(0xD000000000000014, 0x80000001A8C031B0);
  if ((v28 & 1) == 0)
  {

LABEL_38:
    v31 = 0;
    v32 = 0;
    goto LABEL_39;
  }

  sub_1A8BB6658(*(v6 + 56) + 32 * v27, v59);

  v29 = swift_dynamicCast();
  v30 = v29 == 0;
  if (v29)
  {
    v31 = v57;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v58;
  }

LABEL_39:
  v33 = sub_1A8BB1530(v31, v32, &qword_1EB341580, off_1E7841E30);

  if (!v6 || !*(v6 + 16))
  {
    goto LABEL_49;
  }

  v34 = sub_1A8BB4984(0xD000000000000012, 0x80000001A8C031D0);
  if ((v35 & 1) == 0)
  {

LABEL_49:
    v38 = 0;
    v39 = 0;
    goto LABEL_50;
  }

  sub_1A8BB6658(*(v6 + 56) + 32 * v34, v59);

  v36 = swift_dynamicCast();
  v37 = v36 == 0;
  if (v36)
  {
    v38 = v57;
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    v39 = 0;
  }

  else
  {
    v39 = v58;
  }

LABEL_50:
  v40 = sub_1A8BB1530(v38, v39, &qword_1EB341578, off_1E7841D60);

  if (!v6 || !*(v6 + 16))
  {
    goto LABEL_60;
  }

  v41 = sub_1A8BB4984(0xD000000000000014, 0x80000001A8C031F0);
  if ((v42 & 1) == 0)
  {

LABEL_60:
    v45 = 0;
    v46 = 0;
    goto LABEL_61;
  }

  sub_1A8BB6658(*(v6 + 56) + 32 * v41, v59);

  v43 = swift_dynamicCast();
  v44 = v43 == 0;
  if (v43)
  {
    v45 = v57;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = 0;
  }

  else
  {
    v46 = v58;
  }

LABEL_61:
  v47 = sub_1A8BB1530(v45, v46, &qword_1EB341570, off_1E7841D68);

  if (!v6)
  {
LABEL_71:
    v52 = 0;
    v53 = 0;
    goto LABEL_72;
  }

  if (!*(v6 + 16) || (v48 = sub_1A8BB4984(0xD00000000000001ALL, 0x80000001A8C03210), (v49 & 1) == 0))
  {

    goto LABEL_71;
  }

  sub_1A8BB6658(*(v6 + 56) + 32 * v48, v59);

  v50 = swift_dynamicCast();
  v51 = v50 == 0;
  if (v50)
  {
    v52 = v57;
  }

  else
  {
    v52 = 0;
  }

  if (v51)
  {
    v53 = 0;
  }

  else
  {
    v53 = v58;
  }

LABEL_72:
  v54 = sub_1A8BB1530(v52, v53, &qword_1EB341568, off_1E7841D78);

  if (!v54)
  {

LABEL_81:
LABEL_82:

LABEL_83:
    return 0;
  }

  if (!v26)
  {

    goto LABEL_81;
  }

  if (!v33)
  {

    goto LABEL_82;
  }

  if (!v40)
  {

    goto LABEL_83;
  }

  if (v47)
  {
    v55 = [objc_allocWithZone(PRPosterHomeScreenConfiguration) initWithSelectedAppearanceType:v9 lockPosterAppearance:v26 solidColorAppearance:v33 gradientAppearance:v40 homePosterAppearance:v47 customizationConfiguration:v54];

    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}