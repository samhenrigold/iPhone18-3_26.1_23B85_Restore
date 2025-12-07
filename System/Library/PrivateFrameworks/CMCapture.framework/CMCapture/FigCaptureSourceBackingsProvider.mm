@interface FigCaptureSourceBackingsProvider
+ (id)sharedCaptureSourceBackingsProvider;
+ (uint64_t)initialize;
+ (void)initialize;
- (void)_addBackingsForSourceInfoDictionaries:(void *)result;
- (void)_removeBackingsWithDeviceIDs:(void *)result;
- (void)dealloc;
- (void)initWithSourceInfoDictionaries:(void *)dictionaries commonSettings:;
- (void)updateBackingCachedPropertiesByDeviceID:(void *)result;
@end

@implementation FigCaptureSourceBackingsProvider

+ (id)sharedCaptureSourceBackingsProvider
{
  FigSimpleMutexLock();
  if (gSourceInfoArrayChanged != 1)
  {
    v4 = gCaptureSourceBackings;
    if (gCaptureSourceBackings)
    {
      goto LABEL_66;
    }

    goto LABEL_10;
  }

  gSourceInfoArrayChanged = 0;
  v2 = gDefaultDeviceStreamsChanged;
  if (gDefaultDeviceStreamsChanged == 1)
  {

    gCaptureSourceBackings = 0;
    gDefaultDeviceStreamsChanged = 0;
  }

  if (dword_1EB58DF60)
  {
    LODWORD(v76) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (gCaptureSourceBackings)
  {
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
LABEL_10:
    v5 = CFPreferencesCopyValue(@"CaptureSourceInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v5)
    {
      v49 = v5;
      if (dword_1EB58DF60)
      {
        LODWORD(v76) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v51 = v76;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          *v71 = 136315650;
          *&v71[4] = "cs_getBackingsForBuiltInCameras";
          v72 = 2112;
          v73 = @"com.apple.cameracapture.volatile";
          v74 = 2112;
          v75 = @"CaptureSourceInfo";
          LODWORD(v61) = 32;
          v59 = v71;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      gCaptureSourceBackings = csu_createBackingsFromCaptureSourceInfoDict(v49, v6);
    }

    if (gCaptureSourceBackings)
    {
      goto LABEL_12;
    }
  }

  if (dword_1EB58DF60)
  {
    LODWORD(v76) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v47 = v76;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 & 0xFFFFFFFE;
    }

    if (v48)
    {
      *v71 = 136315650;
      *&v71[4] = "cs_getBackingsForBuiltInCameras";
      v72 = 2112;
      v73 = @"com.apple.cameracapture.volatile";
      v74 = 2112;
      v75 = @"CaptureSourceInfo";
      LODWORD(v61) = 32;
      v59 = v71;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v81 = 0x1F21702D0;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:{1, v59, v61}];
  v82[0] = 0;
  *v71 = 0;
  if (csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs(v53, v82, v71))
  {
    +[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
    v55 = 0;
  }

  else
  {
    v54 = [FigCaptureSourceBackingsProvider alloc];
    v55 = [(FigCaptureSourceBackingsProvider *)v54 initWithSourceInfoDictionaries:*v71 commonSettings:?];
  }

  gCaptureSourceBackings = v55;
  v56 = CFPreferencesCopyValue(@"CaptureSourceInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v56)
  {
    v57 = v56;

    gCaptureSourceBackings = csu_createBackingsFromCaptureSourceInfoDict(v57, v58);
  }

LABEL_12:
  if (dword_1EB58DF60)
  {
    LODWORD(v76) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v76;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = [objc_msgSend(gCaptureSourceBackings "sourceBackings")];
      *v71 = 136315394;
      *&v71[4] = "cs_getBackingsForBuiltInCameras";
      v72 = 1024;
      LODWORD(v73) = v10;
      LODWORD(v61) = 18;
      v59 = v71;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_19:
  v80 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v11 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  v12 = [MEMORY[0x1E695DF70] arrayWithArray:v11];
  [v12 removeObject:0x1F21702D0];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  sourceBackings = [gCaptureSourceBackings sourceBackings];
  v14 = [sourceBackings countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v77;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v77 != v16)
        {
          objc_enumerationMutation(sourceBackings);
        }

        v18 = *(*(&v76 + 1) + 8 * i);
        if ([v18 mediaType] == 1986618469)
        {
          v19 = [objc_msgSend(v18 "attributes")];
          [v12 removeObject:v19];
          if (([v11 containsObject:v19] & 1) == 0)
          {
            if (dword_1EB58DF60)
            {
              v20 = sourceBackings;
              v21 = v11;
              v22 = v12;
              LODWORD(v70) = 0;
              v69[0] = OS_LOG_TYPE_DEFAULT;
              v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v24 = v70;
              if (os_log_type_enabled(v23, v69[0]))
              {
                v25 = v24;
              }

              else
              {
                v25 = v24 & 0xFFFFFFFE;
              }

              if (v25)
              {
                *type = 136315394;
                v65 = "cs_getBackingsForBuiltInCameras";
                v66 = 2112;
                v67[0] = v19;
                LODWORD(v62) = 22;
                v60 = type;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v12 = v22;
              v11 = v21;
              sourceBackings = v20;
            }

            [array addObject:{v19, v60, v62}];
          }
        }
      }

      v15 = [sourceBackings countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v15);
  }

  v70 = 0;
  v26 = csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs(v12, &v80, &v70);
  if (v26)
  {
    v27 = v26;
    *v69 = 0;
    v68 = OS_LOG_TYPE_DEFAULT;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v29 = *v69;
    if (os_log_type_enabled(v28, v68))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      *type = 136315650;
      v65 = "cs_getBackingsForBuiltInCameras";
      v66 = 1024;
      LODWORD(v67[0]) = v27;
      WORD2(v67[0]) = 2112;
      *(v67 + 6) = v80;
      LODWORD(v62) = 28;
      v60 = type;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([v80 count])
  {
    if (gCaptureSourceBackings)
    {
      [(FigCaptureSourceBackingsProvider *)gCaptureSourceBackings _addBackingsForSourceInfoDictionaries:v80];
    }

    else
    {
      v45 = [FigCaptureSourceBackingsProvider alloc];
      gCaptureSourceBackings = [(FigCaptureSourceBackingsProvider *)v45 initWithSourceInfoDictionaries:v80 commonSettings:v70];
    }
  }

  if ([array count])
  {
    [FigCaptureSourceBackingsProvider _removeBackingsWithDeviceIDs:?];
  }

  if (dword_1EB58DF60)
  {
    *v69 = 0;
    v68 = OS_LOG_TYPE_DEFAULT;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v32 = *v69;
    if (os_log_type_enabled(v31, v68))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      v34 = [v80 count];
      *type = 136315394;
      v65 = "cs_getBackingsForBuiltInCameras";
      v66 = 1024;
      LODWORD(v67[0]) = v34;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB58DF60)
    {
      *v69 = 0;
      v68 = OS_LOG_TYPE_DEFAULT;
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v36 = *v69;
      if (os_log_type_enabled(v35, v68))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (v37)
      {
        v38 = [array count];
        *type = 136315394;
        v65 = "cs_getBackingsForBuiltInCameras";
        v66 = 1024;
        LODWORD(v67[0]) = v38;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB58DF60)
      {
        *v69 = 0;
        v68 = OS_LOG_TYPE_DEFAULT;
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = *v69;
        if (os_log_type_enabled(v39, v68))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (v41)
        {
          v42 = [objc_msgSend(gCaptureSourceBackings "sourceBackings")];
          *type = 136315394;
          v65 = "cs_getBackingsForBuiltInCameras";
          v66 = 1024;
          LODWORD(v67[0]) = v42;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  v4 = gCaptureSourceBackings;
LABEL_66:
  v43 = v4;
  FigSimpleMutexUnlock();
  return v43;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    gCaptureSourceBackingsLock = FigSimpleMutexCreate();
    sCurrentInterpreterBuildDate = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s %s", "Oct 15 2025", "21:14:12"];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (!+[BWFigCaptureDeviceVendor videoCaptureDeviceFirmwareIsLoaded])
    {
      v2 = *MEMORY[0x1E695E8B8];
      v3 = *MEMORY[0x1E695E898];
      CFPreferencesSetValue(@"CaptureSourceInfo", 0, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v2, v3);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      +[FigCaptureSourceBackingsProvider initialize];
    }

    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      +[FigCaptureSourceBackingsProvider initialize];
    }

    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      +[FigCaptureSourceBackingsProvider initialize];
    }
  }
}

uint64_t __46__FigCaptureSourceBackingsProvider_initialize__block_invoke(uint64_t a1, void *a2)
{
  if ((objc_msgSend_isEqualToString_([a2 name]) & 1) == 0)
  {
    return __46__FigCaptureSourceBackingsProvider_initialize__block_invoke_cold_1();
  }

  return csu_postSourceInfoArrayChangedNotificationIfNecessary(0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceBackingsProvider;
  [(FigCaptureSourceBackingsProvider *)&v3 dealloc];
}

- (void)initWithSourceInfoDictionaries:(void *)dictionaries commonSettings:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = FigCaptureSourceBackingsProvider;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(FigCaptureSourceBackingsProvider *)v5 _addBackingsForSourceInfoDictionaries:a2];
    v5[2] = [[FigCaptureSourceCommonSettings alloc] initWithCommonSettingsDictionary:dictionaries];
  }

  return v5;
}

- (void)_addBackingsForSourceInfoDictionaries:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = FigSimpleMutexCheckIsLockedOnThisThread();
    result = OUTLINED_FUNCTION_56_8(v4, v5, v6, v7, v8, v9, v10, v11, v26, v28, a2, v32);
    v34 = result;
    if (result)
    {
      v33 = MEMORY[0];
      do
      {
        v12 = 0;
        do
        {
          if (MEMORY[0] != v33)
          {
            objc_enumerationMutation(obja);
          }

          v13 = *(8 * v12);
          v14 = [objc_msgSend(v13 objectForKeyedSubscript:{@"MediaType", "intValue"}];
          if (v14 == 1936684398)
          {
            if (*(v3 + 24))
            {
              goto LABEL_11;
            }

            *(v3 + 24) = 1;
          }

          v35 = [FigCaptureSourceBacking alloc];
          v22 = [objc_msgSend(v13 objectForKeyedSubscript:{@"MediaType", "intValue"}];
          v23 = [v13 objectForKeyedSubscript:@"Attributes"];
          v24 = [v13 objectForKeyedSubscript:@"CachedProperties"];
          v25 = [v13 objectForKeyedSubscript:@"Formats"];
          [v13 objectForKeyedSubscript:@"MissingFormats"];
          v2 = -[FigCaptureSourceBacking initWithMediaType:attributes:cachedProperties:formats:missingFormatNames:synchronizedStreamUniqueIDs:unsynchronizedStreamUniqueIDs:](v35, "initWithMediaType:attributes:cachedProperties:formats:missingFormatNames:synchronizedStreamUniqueIDs:unsynchronizedStreamUniqueIDs:", v22, v23, v24, v25, v2, [OUTLINED_FUNCTION_53_0() objectForKeyedSubscript:@"SynchronizedStreamUniqueIDs"], objc_msgSend(v13, "objectForKeyedSubscript:", @"UnsynchronizedStreamUniqueIDs"));
          [*(v3 + 1) addObject:v2];

LABEL_11:
          v12 = v12 + 1;
        }

        while (v34 != v12);
        result = OUTLINED_FUNCTION_56_8(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29, obja, v33);
        v34 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_removeBackingsWithDeviceIDs:(void *)result
{
  if (result)
  {
    v1 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    array = [MEMORY[0x1E695DF70] array];
    v3 = *(v1 + 1);
    v11 = OUTLINED_FUNCTION_55_8(array, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v92, v94, v96, v98, v100, v102, v104);
    if (v11)
    {
      v19 = v11;
      v20 = MEMORY[0];
      do
      {
        v21 = 0;
        do
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v3);
          }

          v22 = *(8 * v21);
          [objc_msgSend(v22 "attributes")];
          v23 = [OUTLINED_FUNCTION_8() containsObject:?];
          if (v23)
          {
            if ([v22 mediaType] == 1936684398)
            {
              *(v1 + 24) = 0;
            }

            v23 = [array addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v11 = OUTLINED_FUNCTION_55_8(v23, v24, v25, v26, v27, v28, v29, v30, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v93, v95, v97, v99, v101, v103, v105);
        v19 = v11;
      }

      while (v11);
    }

    result = OUTLINED_FUNCTION_1_3(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88);
    if (result)
    {
      v31 = result;
      do
      {
        v32 = 0;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v33)
          {
            objc_enumerationMutation(array);
          }

          v34 = [*(v1 + 1) removeObject:*(8 * v32)];
          v32 = v32 + 1;
        }

        while (v31 != v32);
        result = OUTLINED_FUNCTION_1_3(v34, v35, v36, v37, v38, v39, v40, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89);
        v31 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)updateBackingCachedPropertiesByDeviceID:(void *)result
{
  if (result)
  {
    v1 = result;
    v2 = FigSimpleMutexCheckIsLockedOnThisThread();
    v3 = v1[1];
    result = OUTLINED_FUNCTION_1_3(v2, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
    if (result)
    {
      v11 = result;
      v12 = MEMORY[0];
      do
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(8 * v13);
          [objc_msgSend(v14 "attributes")];
          v15 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
          v16 = [v15 count];
          if (v16)
          {
            [(FigCaptureSourceBacking *)v14 updateCachedProperties:v15];
          }

          v13 = (v13 + 1);
        }

        while (v11 != v13);
        result = OUTLINED_FUNCTION_1_3(v16, v17, v18, v19, v20, v21, v22, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

+ (uint64_t)initialize
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

@end