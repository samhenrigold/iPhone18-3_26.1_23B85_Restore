@interface FigMobileAsset
@end

@implementation FigMobileAsset

void __FigMobileAsset_RegisterForAssetUpdates_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  if (figMobileAsset_IsAssetTypeRegistered(*(a1 + 32)))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_7, *(a1 + 32));
    v3 = *(Value + 3);
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        Count = CFArrayGetCount(v3);
        v6 = *(Value + 3);
        if (Count <= v4)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(Value + 3), v4);
        if (*ValueAtIndex == *(a1 + 64) && ValueAtIndex[1] == *(a1 + 72))
        {
          goto LABEL_44;
        }

        ++v4;
        v3 = *(Value + 3);
        if (!v3)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v6 = 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9.length = CFArrayGetCount(*(a1 + 56));
    }

    else
    {
      v9.length = 0;
    }

    v9.location = 0;
    CFArrayAppendArray(v6, v8, v9);
    if (dword_1EAF1CCC8)
    {
      name[0] = 0;
      LOBYTE(v60) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 1, name, &v60);
      v35 = name[0];
      v36 = v60;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v60))
      {
        v37 = v35;
      }

      else
      {
        v37 = v35 & 0xFFFFFFFE;
      }

      if (v37)
      {
        v38 = *(a1 + 32);
        v39 = *(a1 + 64);
        buffer = 136315650;
        v73 = "FigMobileAsset_RegisterForAssetUpdates_block_invoke";
        v74 = 2112;
        v75 = v38;
        v76 = 2048;
        v77 = v39;
        v40 = _os_log_send_and_compose_impl(v37, 0, v70, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v36, "-FigMobileAsset- %s: FigMobileAsset: MobileAsset asset type %@ callback %p registered for asset updates", &buffer, 32);
        LOBYTE(v35) = name[0];
      }

      else
      {
        v40 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 1, 1, v40, v40 != v70, v35);
    }
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600408109E9C4uLL);
    *v10 = *(a1 + 80);
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *(v10 + 1) = v11;
    v12 = *(a1 + 48);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *(v10 + 2) = v12;
    v13 = *(a1 + 56);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    v14 = *(a1 + 84);
    *(v10 + 4) = -1;
    *(v10 + 5) = 0x10000000000000;
    *(v10 + 3) = v13;
    *(v10 + 6) = (3600 * v14);
    v15 = CFPreferencesCopyValue(@"mobileAssetUpdateTimes", @"com.apple.celestial", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v16 = v15;
    if (v15)
    {
      v17 = CFGetTypeID(v15);
      if (v17 == CFDictionaryGetTypeID() && !FigCFDictionaryGetDoubleIfPresent(v16, *(a1 + 32), v10 + 40, v18, v19, v20, v21, v22, v45, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1)))
      {
        *(v10 + 5) = 0x10000000000000;
      }
    }

    CFStringGetCString(*(a1 + 32), &buffer, 100, 0x8000100u);
    __strlcat_chk();
    if (figMobileAsset_GetNotificationQueue_onceToken != -1)
    {
      FigMobileAsset_RegisterForAssetUpdates_cold_2();
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __FigMobileAsset_RegisterForAssetUpdates_block_invoke_2;
    handler[3] = &__block_descriptor_68_e8_v12__0i8l;
    v59 = *(a1 + 80);
    v23 = *(a1 + 48);
    v57 = *(a1 + 32);
    v58 = v23;
    notify_register_dispatch(&buffer, v10 + 8, figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, handler);
    CFStringGetCString(*(a1 + 32), name, 100, 0x8000100u);
    __strlcat_chk();
    if (figMobileAsset_GetNotificationQueue_onceToken != -1)
    {
      FigMobileAsset_RegisterForAssetUpdates_cold_2();
    }

    v49 = MEMORY[0x1E69E9820];
    v50 = 3221225472;
    v51 = __FigMobileAsset_RegisterForAssetUpdates_block_invoke_7;
    v52 = &__block_descriptor_68_e8_v12__0i8l;
    v55 = *(a1 + 80);
    v24 = *(a1 + 48);
    v53 = *(a1 + 32);
    v54 = v24;
    notify_register_dispatch(name, v10 + 9, figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, &v49);
    CFDictionarySetValue(_MergedGlobals_7, *(a1 + 32), v10);
    if (dword_1EAF1CCC8)
    {
      HIDWORD(v48) = 0;
      BYTE3(v48) = 0;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 1, &v48 + 1, &v48 + 3);
      v26 = HIDWORD(v48);
      v27 = BYTE3(v48);
      if (os_log_type_enabled(v25, BYTE3(v48)))
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v29 = *(a1 + 32);
        v30 = *(a1 + 64);
        v32 = *(a1 + 80);
        v31 = *(a1 + 84);
        v60 = 136316163;
        v61 = "FigMobileAsset_RegisterForAssetUpdates_block_invoke";
        v62 = 2113;
        v63 = v29;
        v64 = 2048;
        v65 = v30;
        v66 = 1024;
        v67 = v31;
        v68 = 1024;
        v69 = v32;
        LODWORD(v46) = 44;
        v33 = _os_log_send_and_compose_impl(v28, 0, v70, 128, &dword_196FA7000, v25, v27, "-FigMobileAsset- %s: FigMobileAsset: MobileAsset asset type %{private}@ registered for asset updates with callback %p, update interval %d hours, and compatibility version %d", &v60, v46);
        LOBYTE(v26) = BYTE4(v48);
      }

      else
      {
        v33 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 1, 1, v33, v33 != v70, v26);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

LABEL_44:
  if (CFDictionaryGetValue(_MergedGlobals_7, *(a1 + 32)))
  {
    figMobileAsset_DownloadCatalogAndRequery(*(a1 + 32), 0);
  }

  v41 = *(a1 + 32);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(a1 + 40);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(a1 + 48);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(a1 + 56);
  if (v44)
  {
    CFRelease(v44);
  }
}

void __FigMobileAsset_RegisterForAssetUpdates_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1EAF1CCC8)
  {
    v8 = OUTLINED_FUNCTION_2_2(a1, a2, a3, a4, a5, a6, a7, a8, v31, v34, v37, v40, SBYTE2(v40), SBYTE3(v40), SHIDWORD(v40));
    v16 = OUTLINED_FUNCTION_5_2(v8, v9, v10, v11, v12, v13, v14, v15, v32, v35, v38, v41, v43, v44, v45);
    v17 = OUTLINED_FUNCTION_6_2(v16);
    if (v17)
    {
      LODWORD(v46) = 136315395;
      OUTLINED_FUNCTION_0_9();
      v17 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, &dword_196FA7000, v29, v30, "-FigMobileAsset- %s: FigMobileAsset: MobileAsset metadata updated notification received for assetType %{private}@", v33, v36, v39, v42, v46, v47, v48);
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_1_3(v17, v18, v19, v24, v20, v21, v22, v23, v33, v36, v39, v42, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_7_1();
}

void __FigMobileAsset_RegisterForAssetUpdates_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1EAF1CCC8)
  {
    v8 = OUTLINED_FUNCTION_2_2(a1, a2, a3, a4, a5, a6, a7, a8, v31, v34, v37, v40, SBYTE2(v40), SBYTE3(v40), SHIDWORD(v40));
    v16 = OUTLINED_FUNCTION_5_2(v8, v9, v10, v11, v12, v13, v14, v15, v32, v35, v38, v41, v43, v44, v45);
    v17 = OUTLINED_FUNCTION_6_2(v16);
    if (v17)
    {
      LODWORD(v46) = 136315395;
      OUTLINED_FUNCTION_0_9();
      v17 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, &dword_196FA7000, v29, v30, "-FigMobileAsset- %s: FigMobileAsset: MobileAsset new asset installed notification received for assetType %{private}@", v33, v36, v39, v42, v46, v47, v48);
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_1_3(v17, v18, v19, v24, v20, v21, v22, v23, v33, v36, v39, v42, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_7_1();
}

void __FigMobileAsset_UnregisterFromAssetUpdates_block_invoke(uint64_t a1)
{
  if (figMobileAsset_IsAssetTypeRegistered(*(a1 + 32)))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_7, *(a1 + 32));
    CFDictionaryRemoveValue(_MergedGlobals_7, *(a1 + 32));
    v3 = Value[8];
    if (v3 != -1)
    {
      notify_cancel(v3);
      Value[8] = -1;
    }

    v4 = Value[9];
    if (v4 != -1)
    {
      notify_cancel(v4);
      Value[9] = -1;
    }

    v5 = *(Value + 1);
    if (v5)
    {
      CFRelease(v5);
      *(Value + 1) = 0;
    }

    v6 = *(Value + 2);
    if (v6)
    {
      CFRelease(v6);
    }

    free(Value);
    if (dword_1EAF1CCC8)
    {
      v15 = OUTLINED_FUNCTION_2_2(v7, v8, v9, v10, v11, v12, v13, v14, v39, v42, v45, v48, SBYTE2(v48), SBYTE3(v48), SHIDWORD(v48));
      v23 = OUTLINED_FUNCTION_5_2(v15, v16, v17, v18, v19, v20, v21, v22, v40, v43, v46, v49, v51, v52, v53);
      v24 = OUTLINED_FUNCTION_6_2(v23);
      if (v24)
      {
        LODWORD(v54) = 136315395;
        OUTLINED_FUNCTION_0_9();
        v24 = OUTLINED_FUNCTION_4_2(v31, v32, v33, v34, &dword_196FA7000, v35, v36, "-FigMobileAsset- %s: FigMobileAsset: MobileAsset asset type %{private}@ unregistered from asset updates", v41, v44, v47, v50, v54, v55, v56);
        v37 = v24;
      }

      else
      {
        v37 = 0;
      }

      OUTLINED_FUNCTION_1_3(v24, v25, v26, v37, v27, v28, v29, v30, v41, v44, v47, v50, v54, v55, v56, v57);
    }
  }

  v38 = *(a1 + 32);
  if (v38)
  {
    CFRelease(v38);
  }
}

void __FigMobileAsset_UnregisterCallbackFromAssetUpdates_block_invoke(uint64_t a1)
{
  if (figMobileAsset_IsAssetTypeRegistered(*(a1 + 32)))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_7, *(a1 + 32));
    v3 = *(Value + 3);
    if (v3)
    {
      v4 = 0;
      while (CFArrayGetCount(v3) > v4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(Value + 3), v4);
        if (*ValueAtIndex == *(a1 + 40) && ValueAtIndex[1] == *(a1 + 48))
        {
          CFArrayRemoveValueAtIndex(*(Value + 3), v4);
          break;
        }

        ++v4;
        v3 = *(Value + 3);
        if (!v3)
        {
          break;
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

@end