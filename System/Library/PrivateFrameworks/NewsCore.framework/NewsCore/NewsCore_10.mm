id FCDownloadDestinationURLForAsset(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = arc4random();
  v3 = [MEMORY[0x1E696AD48] URLPathAllowedCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 removeCharactersInString:@"/"];
  v5 = [v1 identifier];
  v23 = v4;
  v6 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  if ([v6 length] >= 0xE8)
  {
    v7 = [v6 substringWithRange:{0, 231}];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v2];
  v9 = MEMORY[0x1E696AEC0];
  if (v1)
  {
    v10 = v1[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 absoluteString];
  v13 = [v9 stringWithFormat:@"%@%@", v8, v12];
  v14 = [v13 UTF8String];
  v15 = strlen([v13 UTF8String]);
  CC_SHA1(v14, v15, md);
  v16 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 8; ++i)
  {
    [v16 appendFormat:@"%02X", md[i]];
  }

  v18 = @"_";
  if (!v6)
  {
    v18 = &stru_1F2DC7DC0;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@.%@", v6, v18, v16, @"movpkg"];
  v20 = FCURLForAVAssetDownloads();
  v21 = [v20 URLByAppendingPathComponent:v19 isDirectory:0];

  return v21;
}

void sub_1B669FC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCCKDatabaseStartUpResultFromError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if ([v1 fc_isTemporaryNetworkOrServerError])
  {
    goto LABEL_3;
  }

  v4 = [v2 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v2 code];

    if (v5 == 4097)
    {
LABEL_3:
      v3 = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ([v2 fc_isOfflineError])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

LABEL_12:

  return v3;
}

double FCCoverArtImageDimensionsFromJSON(void *a1)
{
  v1 = *MEMORY[0x1E695F060];
  v2 = a1;
  v3 = [v2 objectForKeyedSubscript:@"width"];
  v4 = [v2 objectForKeyedSubscript:@"height"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 floatValue];
      v1 = v5;
      [v4 floatValue];
    }
  }

  return v1;
}

void *FCCoverArtImageClassFromJSON(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"type"];
  v2 = objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 isEqualToString:@"image2"])
  {
    v2 = objc_opt_class();
  }

  v3 = v2;

  return v2;
}

id FCCoverArtImageURLFromJSON(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"URL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id FCCoverArtImagesFromUnprocessedImages(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = FCCoverArtImageDimensionsFromJSON(v8);
            v11 = v10;
            v12 = FCCoverArtImageClassFromJSON(v8);
            v13 = FCCoverArtImageURLFromJSON(v8);
            v14 = [v12 alloc];
            v15 = [v14 initWithDimensions:v13 URL:{v9, v11, v17}];
            [v2 fc_safelyAddObject:v15];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void FCMergeHistoryItemSeenFields(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "leftItem"];
    *buf = 136315906;
    v18 = "void FCMergeHistoryItemSeenFields(__strong id<FCMutableReadingHistoryItem>, __strong id<FCReadingHistoryItem>)";
    v19 = 2080;
    v20 = "FCReadingHistoryUtilities.m";
    v21 = 1024;
    v22 = 29;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "rightItem"];
    *buf = 136315906;
    v18 = "void FCMergeHistoryItemSeenFields(__strong id<FCMutableReadingHistoryItem>, __strong id<FCReadingHistoryItem>)";
    v19 = 2080;
    v20 = "FCReadingHistoryUtilities.m";
    v21 = 1024;
    v22 = 30;
    v23 = 2114;
    v24 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v5 = MEMORY[0x1E695DF00];
  v6 = [v3 firstSeenAt];
  v7 = [v4 firstSeenAt];
  v8 = [v5 fc_earlierDateAllowingNilWithDate:v6 andDate:v7];
  [v3 setFirstSeenAt:v8];

  v9 = [v4 maxVersionSeen];
  v10 = [v3 maxVersionSeen];
  if (v10 <= v9)
  {
    if (v10 == v9)
    {
      v11 = MEMORY[0x1E695DF00];
      v14 = [v3 firstSeenAtOfMaxVersionSeen];
      v12 = [v4 firstSeenAtOfMaxVersionSeen];
      v13 = [v11 fc_earlierDateAllowingNilWithDate:v14 andDate:v12];
      [v3 setFirstSeenAtOfMaxVersionSeen:v13];
    }

    else
    {
      [v3 setMaxVersionSeen:v9];
      v14 = [v4 firstSeenAtOfMaxVersionSeen];
      [v3 setFirstSeenAtOfMaxVersionSeen:v14];
    }
  }
}

id _FCPruneHistoryForUpload(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if ([v8 count] < 0x3E8 || (v7[2](v7, v13) & 1) != 0 || v14 && (objc_msgSend(v14, "fc_timeIntervalUntilNow"), v15 < 2419200.0))
        {
          [v8 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v8;
}

uint64_t __FCPruneHistoryRecordsForUpload_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"offensive"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t FeldsparCoreInternalExtrasEnabled()
{
  if (qword_1EDB275C0 != -1)
  {
    dispatch_once(&qword_1EDB275C0, &__block_literal_global_2_2);
  }

  return _MergedGlobals_174;
}

void __FeldsparCoreInternalExtrasEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] fc_feldsparCoreInternalExtrasBundle];
  _MergedGlobals_174 = v0 != 0;
}

void sub_1B66AACB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66AB6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCUUIDStringToUUIDBytes(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696AFB0];
    v2 = a1;
    v3 = [[v1 alloc] initWithUUIDString:v2];

    if (v3)
    {
      *buf = 0;
      *&buf[8] = 0;
      [v3 getUUIDBytes:buf];
      v4 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "UUID"];
        *buf = 136315906;
        *&buf[4] = "NSData *FCUUIDStringToUUIDBytes(NSString *__strong)";
        *&buf[12] = 2080;
        *&buf[14] = "FCUUIDUtilities.m";
        v8 = 1024;
        v9 = 18;
        v10 = 2114;
        v11 = v6;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id FCUUIDBytesToUUIDString(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696AFB0];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = [v2 bytes];

    v5 = [v3 initWithUUIDBytes:v4];
    v6 = [v5 UUIDString];
    v7 = [v6 lowercaseString];

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "result"];
      *buf = 136315906;
      v11 = "NSString *FCUUIDBytesToUUIDString(NSData *__strong)";
      v12 = 2080;
      v13 = "FCUUIDUtilities.m";
      v14 = 1024;
      v15 = 38;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1B66AE8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66AECB0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B66AF038(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B66AFA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66B2624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66B3610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1B66B4370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66BABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66C1838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1B66C6DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CA148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CDC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66D0444(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *FCStringFromQoSClass(int a1)
{
  v1 = @"UserInteractive";
  v2 = @"Utility";
  v3 = @"Default";
  v4 = @"UserInitiated";
  if (a1 != 25)
  {
    v4 = @"UserInteractive";
  }

  if (a1 != 21)
  {
    v3 = v4;
  }

  if (a1 != 17)
  {
    v2 = v3;
  }

  if (a1 == 9)
  {
    v1 = @"Background";
  }

  if (!a1)
  {
    v1 = @"Unspecified";
  }

  if (a1 <= 16)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t FCIsWidgetDebugInspectionEnabled()
{
  v0 = NewsCoreUserDefaults();
  v1 = [v0 BOOLForKey:@"widget_debug_inspection_enabled"];

  return v1;
}

uint64_t FCUpdateSharedAudioPlaybackState(void *a1, void *a2)
{
  v3 = a1;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 stringForKey:@"audio_playback_article_id"];

  v6 = NewsCoreUserDefaults();
  v7 = [v6 integerForKey:@"audio_playback_state"];

  v8 = [MEMORY[0x1E69E58C0] nf_object:v5 isEqualToObject:v3];
  if (v7 == a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 & 1) == 0)
  {
    v10 = NewsCoreUserDefaults();
    [v10 setObject:v3 forKey:@"audio_playback_article_id"];

    v11 = NewsCoreUserDefaults();
    [v11 setInteger:a2 forKey:@"audio_playback_state"];
  }

  return v9 ^ 1u;
}

id FCSettingsOverrideEmbedURLTodayWidget(uint64_t a1)
{
  if (NFInternalBuild())
  {
    v1 = NewsCoreUserDefaults();
    if ([v1 BOOLForKey:@"embed_url_override_enabled"])
    {
      v2 = NewsCoreUserDefaults();
      v3 = [v2 stringForKey:@"embed_url_override_today_widget"];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc(MEMORY[0x1E696AF60]);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 initWithName:@"testID" value:v7];

  v9 = [v4 fc_URLByAddingQueryItem:v8];

  return v9;
}

uint64_t FCFeedBinForTopicsInForYou(void *a1)
{
  v1 = [a1 subscriptionList];
  v2 = [v1 subscribedTagIDs];
  if ([v2 count] >= 0x64)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

__CFString *FCOperationPurposeFromFeedType(unint64_t a1)
{
  if (a1 > 0x1A)
  {
    return @"todayFeed";
  }

  else
  {
    return off_1E7C431D8[a1];
  }
}

void applicationStateNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:{@"com.apple.news", a4}];
  if (v6)
  {
    v7 = a2;
    v8 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __applicationStateNotificationCallback_block_invoke;
    block[3] = &unk_1E7C36EA0;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

void applicationRegisteredAndUnregisteredNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:{@"bundleIDs", a4}];
  if ([v6 containsObject:@"com.apple.news"])
  {
    v7 = a2;
    v8 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __applicationRegisteredAndUnregisteredNotificationCallback_block_invoke;
    block[3] = &unk_1E7C36EA0;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

uint64_t FCDeviceIsA7()
{
  if (qword_1EDB27680 != -1)
  {
    dispatch_once(&qword_1EDB27680, &__block_literal_global_117);
  }

  return _MergedGlobals_182;
}

uint64_t __FCDeviceIsA7_block_invoke()
{
  result = MGGetProductType();
  if (_MergedGlobals_182)
  {
    v1 = 1;
    goto LABEL_19;
  }

  v1 = 1;
  if (result <= 2048538370)
  {
    if (result <= 344862119)
    {
      if (result == 23433786)
      {
        goto LABEL_19;
      }

      v2 = 173258742;
    }

    else
    {
      if (result == 344862120 || result == 776033019)
      {
        goto LABEL_19;
      }

      v2 = 1701146937;
    }
  }

  else if (result > 3933982783)
  {
    if (result == 3933982784 || result == 4055323051)
    {
      goto LABEL_19;
    }

    v2 = 4232256925;
  }

  else
  {
    if (result == 2048538371 || result == 3637438250)
    {
      goto LABEL_19;
    }

    v2 = 3865922942;
  }

  if (result != v2)
  {
    v1 = 0;
  }

LABEL_19:
  _MergedGlobals_182 = v1;
  return result;
}

uint64_t FCDeviceIsA8()
{
  if (qword_1EDB27688 != -1)
  {
    dispatch_once(&qword_1EDB27688, &__block_literal_global_2_3);
  }

  return byte_1EDB27679;
}

uint64_t __FCDeviceIsA8_block_invoke()
{
  result = MGIsDeviceOneOfType();
  byte_1EDB27679 = result;
  return result;
}

id FCDeviceUUIDForVendor()
{
  if (qword_1EDB27698 != -1)
  {
    dispatch_once(&qword_1EDB27698, &__block_literal_global_9_1);
  }

  v1 = qword_1EDB27690;

  return v1;
}

void __FCDeviceUUIDForVendor_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AFB0]);
  v3 = FCDeviceIdentifierForVendor();
  v1 = [v0 initWithUUIDString:v3];
  v2 = qword_1EDB27690;
  qword_1EDB27690 = v1;
}

id FCDeviceIdentifierForVendor()
{
  if (qword_1EDB276A8 != -1)
  {
    dispatch_once(&qword_1EDB276A8, &__block_literal_global_11_2);
  }

  v1 = qword_1EDB276A0;

  return v1;
}

void __FCDeviceIdentifierForVendor_block_invoke()
{
  v0 = NewsCoreSensitiveUserDefaults();
  v1 = [v0 objectForKey:@"instance_identifier"];
  v2 = qword_1EDB276A0;
  qword_1EDB276A0 = v1;

  if (!qword_1EDB276A0)
  {
    v3 = [MEMORY[0x1E6963608] defaultWorkspace];
    v4 = [v3 deviceIdentifierForVendor];
    v5 = [v4 UUIDString];
    v6 = [v5 copy];
    v7 = qword_1EDB276A0;
    qword_1EDB276A0 = v6;

    if (!qword_1EDB276A0)
    {
      v8 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "falling back to custom UUID for device identifier", v13, 2u);
      }

      v9 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 UUIDString];
      v11 = qword_1EDB276A0;
      qword_1EDB276A0 = v10;
    }

    v12 = NewsCoreSensitiveUserDefaults();
    [v12 setObject:qword_1EDB276A0 forKey:@"instance_identifier"];
  }
}

void sub_1B66DBC4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1B66DC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCLookupRecordByName(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:&v10 count:1];

  v7 = FCLookupRecordByNames(v5, v6);

  v8 = [v7 fc_onlyObject];

  return v8;
}

id FCFeedItemRecordsForArticle(void *a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = a1;
  v6 = [v3 predicateWithFormat:@"%K == %@", @"recordType", @"FeedItem"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v4, @"articleID"];

  v8 = MEMORY[0x1E696AB28];
  v13[0] = v7;
  v13[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = [v5 filteredArrayUsingPredicate:v10];

  return v11;
}

id FCSortedFeedItemRecordsForFeedID(void *a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = a1;
  v6 = [v3 predicateWithFormat:@"%K == %@", @"recordType", @"FeedItem"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v4, @"tagID"];

  v8 = MEMORY[0x1E696AB28];
  v18[0] = v7;
  v18[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = [v5 filteredArrayUsingPredicate:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"order" ascending:0];
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"subOrder" ascending:0];
  v17[0] = v12;
  v17[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [v11 sortedArrayUsingDescriptors:v14];

  return v15;
}

id FCLookupFeedItemRecordByFeedAndArticle(void *a1, void *a2, void *a3)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 predicateWithFormat:@"%K == %@", @"recordType", @"FeedItem"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v7, @"tagID"];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v6, @"articleID"];

  v12 = MEMORY[0x1E696AB28];
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];
  v15 = [v8 filteredArrayUsingPredicate:v14];

  v16 = [v15 fc_onlyObject];

  return v16;
}

id FCLookupRecordByNames(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFD8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FCLookupRecordByNames_block_invoke;
  v11[3] = &unk_1E7C371F8;
  v12 = v3;
  v5 = v3;
  v6 = a1;
  v7 = [v4 fc_set:v11];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", v7, @"recordID"];
  v9 = [v6 filteredArrayUsingPredicate:v8];

  return v9;
}

void __FCLookupRecordByNames_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x1E695BA70]);
        v11 = [v10 initWithRecordName:{v9, v12}];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_1B66EA114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66EDD20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B66EE39C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B66EEA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 216), 8);
  _Block_object_dispose((v37 - 184), 8);
  _Block_object_dispose((v37 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1B66F04A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    (*(v11 + 16))(v11);
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x1B66F045CLL);
  }

  _Unwind_Resume(exception_object);
}

void enumerateOrderedCollectionPairwise(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] >= 2)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__58;
    v8[4] = __Block_byref_object_dispose__58;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __enumerateOrderedCollectionPairwise_block_invoke;
    v5[3] = &unk_1E7C43990;
    v6 = v4;
    v7 = v8;
    [v3 enumerateObjectsUsingBlock:v5];

    _Block_object_dispose(v8, 8);
  }
}

void sub_1B66F3D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __enumerateOrderedCollectionPairwise_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t isOrderedCollectionSorted(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v13) = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __isOrderedCollectionSorted_block_invoke;
    v9[3] = &unk_1E7C439B8;
    v10 = v4;
    v11 = buf;
    enumerateOrderedCollectionPairwise(v3, v9);

    v6 = *(*&buf[8] + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cmptr"];
      *buf = 136315906;
      *&buf[4] = "BOOL isOrderedCollectionSorted(__strong id<FCOrderedCollection>, __strong NSComparator)";
      *&buf[12] = 2080;
      *&buf[14] = "FCOrderedCollection.m";
      *&buf[22] = 1024;
      v13 = 34;
      v14 = 2114;
      v15 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v6 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v13) = 0;
  }

  _Block_object_dispose(buf, 8);

  return v6 & 1;
}

void sub_1B66F3FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __isOrderedCollectionSorted_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

id mergeSortedOrderedCollections(void *a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (v7)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = [MEMORY[0x1E696AD50] indexSet];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v22[0] = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __mergeSortedOrderedCollections_block_invoke;
      v15[3] = &unk_1E7C439E0;
      v16 = v6;
      v19 = buf;
      v18 = v8;
      v20 = isKindOfClass & 1;
      v11 = v10;
      v17 = v11;
      [v5 enumerateObjectsUsingBlock:v15];

      _Block_object_dispose(buf, 8);
      goto LABEL_10;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "engulfee"];
      *buf = 136315906;
      *&buf[4] = "NSIndexSet *mergeSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedMutableCollection>, __strong NSComparator)";
      *&buf[12] = 2080;
      *&buf[14] = "FCOrderedCollection.m";
      *&buf[22] = 1024;
      LODWORD(v22[0]) = 59;
      WORD2(v22[0]) = 2114;
      *(v22 + 6) = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cmptr"];
    *buf = 136315906;
    *&buf[4] = "NSIndexSet *mergeSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedMutableCollection>, __strong NSComparator)";
    *&buf[12] = 2080;
    *&buf[14] = "FCOrderedCollection.m";
    *&buf[22] = 1024;
    LODWORD(v22[0]) = 60;
    WORD2(v22[0]) = 2114;
    *(v22 + 6) = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

void sub_1B66F4358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __mergeSortedOrderedCollections_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = [*(a1 + 32) indexOfObject:v3 inSortedRange:v5 options:v4 - v5 usingComparator:{1024, *(a1 + 48)}];
  v7 = v6;
  v8 = *(a1 + 64) != 1 || v6 >= v4;
  if (v8 || (v9 = *(a1 + 48), [*(a1 + 32) objectAtIndexedSubscript:v6], v10 = objc_claimAutoreleasedReturnValue(), v11 = (*(v9 + 16))(v9, v10, v3), v10, v11))
  {
    v12 = [*(a1 + 32) count];
    [*(a1 + 32) insertObject:v3 atIndex:v7];
    if ([*(a1 + 32) count] == v12 + 1)
    {
      [*(a1 + 40) addIndex:v7];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to insert %@", v3];
      *buf = 136315906;
      v15 = "NSIndexSet *mergeSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedMutableCollection>, __strong NSComparator)_block_invoke";
      v16 = 2080;
      v17 = "FCOrderedCollection.m";
      v18 = 1024;
      v19 = 93;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v7;
}

id diffSortedOrderedCollections(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "rightCollection"];
    *buf = 136315906;
    v26 = "NSDictionary *diffSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedCollection>, __strong NSComparator)";
    v27 = 2080;
    v28 = "FCOrderedCollection.m";
    v29 = 1024;
    v30 = 123;
    v31 = 2114;
    v32 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "leftCollection"];
    *buf = 136315906;
    v26 = "NSDictionary *diffSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedCollection>, __strong NSComparator)";
    v27 = 2080;
    v28 = "FCOrderedCollection.m";
    v29 = 1024;
    v30 = 124;
    v31 = 2114;
    v32 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (v7)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v9 = objc_opt_new();
      v10 = objc_opt_new();
      if ([v5 count])
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          if (v12 >= [v6 count])
          {
            goto LABEL_25;
          }

          v13 = [v5 objectAtIndexedSubscript:v11];
          v14 = [v6 objectAtIndexedSubscript:v12];
          v15 = v7[2](v7, v13, v14);
          if (v15 == 1)
          {
            [v9 addIndex:v12];
          }

          else
          {
            if (v15)
            {
              if (v15 == -1)
              {
                [v10 addIndex:v11++];
              }

              goto LABEL_19;
            }

            ++v11;
          }

          ++v12;
LABEL_19:

          if (v11 >= [v5 count])
          {
            goto LABEL_25;
          }
        }
      }

      v12 = 0;
      v11 = 0;
LABEL_25:
      if (v11 >= [v5 count])
      {
        if (v12 >= [v6 count])
        {
LABEL_30:
          v23[0] = @"insertedIndices";
          v23[1] = @"deletedIndices";
          v24[0] = v9;
          v24[1] = v10;
          v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

          goto LABEL_31;
        }

        v18 = v11 - [v10 count];
        v11 = v18 + [v9 count];
        v16 = v6;
        v17 = v9;
      }

      else
      {
        v16 = v5;
        v12 = v11;
        v17 = v10;
      }

      [v17 addIndexesInRange:{v11, objc_msgSend(v16, "count") - v12}];
      goto LABEL_30;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cmptr"];
      *buf = 136315906;
      v26 = "NSDictionary *diffSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedCollection>, __strong NSComparator)";
      v27 = 2080;
      v28 = "FCOrderedCollection.m";
      v29 = 1024;
      v30 = 125;
      v31 = 2114;
      v32 = v22;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v8 = 0;
  }

LABEL_31:

  return v8;
}

id findObjectWithFeatureInSortedOrderedCollection(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v17 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count])
  {
    v10 = [v7 count] - 1;
    if (v10 >= 0)
    {
      v11 = 0;
      do
      {
        v12 = ((v10 + v11) / 2);
        v13 = [v7 objectAtIndexedSubscript:v12];
        v14 = v8[2](v8, v13);
        v15 = v9[2](v9, v14, v17);
        switch(v15)
        {
          case -1:
            v11 = v12 + 1;
            break;
          case 1:
            v10 = v12 - 1;
            break;
          case 0:

            goto LABEL_12;
        }
      }

      while (v11 <= v10);
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

void sub_1B66F685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66F8E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1B66F9124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B66FA1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCCKPrivateDatabaseVersionString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Base";
  }

  else
  {
    return off_1E7C43DD0[a1 - 1];
  }
}

uint64_t FCCKPrivateDatabaseVersionMin(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t FCCKPrivateDatabaseVersionMin3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (v3 < result)
  {
    return v3;
  }

  return result;
}

double FCCKPrivateDatabaseVersionDebutOS@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      *a2 = xmmword_1B681B440;
      *(a2 + 16) = 11;
      result = 0.0;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0;
    }

    else if (a1 == 3)
    {
      *a2 = xmmword_1B681B400;
      *(a2 + 16) = xmmword_1B681B410;
      *&result = 11;
      *(a2 + 32) = xmmword_1B681B420;
      *(a2 + 48) = xmmword_1B681B430;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      *&result = 11;
      *a2 = xmmword_1B681B450;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
    }
  }

  else
  {
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t FCCKPrivateDatabaseVersionSupportedByOS(uint64_t *a1)
{
  result = 3;
  v3 = *a1;
  do
  {
    if (result == 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v5 = 1;
      v7 = 11;
      v4 = 3;
      v6 = 1;
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else if (result == 3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 18;
      v8 = 15;
      v9 = 11;
      v10 = 2;
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 1;
      v7 = 14;
      v8 = 11;
      if (v3)
      {
LABEL_9:
        if (v3 < v7)
        {
          continue;
        }

        if (v3 <= v7 && a1[1] < v4)
        {
          continue;
        }
      }
    }

    if ((v5 & 1) != 0 || (v12 = a1[2]) == 0 || v12 >= v8 && (v12 > v8 || (a1[3] & 0x8000000000000000) == 0))
    {
      if (v6)
      {
        return result;
      }

      v13 = a1[4];
      if (!v13 || v13 >= v9 && (v13 > v9 || (a1[5] & 0x8000000000000000) == 0))
      {
        v14 = a1[6];
        if (!v14 || v14 >= v10 && (v14 > v10 || (a1[7] & 0x8000000000000000) == 0))
        {
          return result;
        }
      }
    }
  }

  while (result-- >= 2);
  return 0;
}

void sub_1B67015E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NTPBKeyValuePair_ValueType,objc_class  {objcproto21FCKeyValueStoreCoding}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

id FCErrorForCKError(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 code] == 7 || (v2 = v1, objc_msgSend(v1, "code") == 6))
  {
    v3 = [v1 userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    if (v4)
    {
      v9 = @"FCErrorRetryAfter";
      v10[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v5 = 0;
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = [v1 localizedDescription];
    v2 = [v6 fc_errorWithCode:2 description:v7 additionalUserInfo:v5];
  }

  return v2;
}

uint64_t FCShouldErrorBeExcludedFromSimulatedCrashes(void *a1)
{
  v1 = a1;
  if ([v1 fc_isOfflineError])
  {
    goto LABEL_2;
  }

  v3 = [v1 domain];
  if ([v3 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v4 = [v1 code];

    if (v4 == -1202)
    {
LABEL_2:
      v2 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v5 = [v1 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v6)
  {
    v2 = FCShouldErrorBeExcludedFromSimulatedCrashes(v6);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  return v2;
}

void sub_1B67095F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B670BF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B6710468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL RCRequestFeedTypeFromFCRequestFeedType(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

void sub_1B6715B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCStringFromNetworkEventType(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:
      result = @"Unknown";
      break;
    case 1:
      result = @"CloudKit (Private) - Fetch Records";
      break;
    case 2:
      result = @"CloudKit (Private) - Modify Records";
      break;
    case 3:
      result = @"CloudKit (Private) - Fetch Zones";
      break;
    case 4:
      result = @"CloudKit (Private) - Modify Zones";
      break;
    case 5:
      result = @"CloudKit (Private) - Fetch Subscriptions";
      break;
    case 6:
      result = @"CloudKit (Private) - Modify Subscriptions";
      break;
    case 7:
      result = @"CloudKit (Private) - Fetch Zone Changes";
      break;
    case 8:
      result = @"CloudKit (Private) - Fetch Database Changes";
      break;
    case 9:
      result = @"CloudKit (Public) - Fetch";
      break;
    case 10:
      result = @"CloudKit (Public) - OrderFeed";
      break;
    case 11:
      result = @"CloudKit (Public) - MultiFeed";
      break;
    case 12:
      result = @"CloudKit (Public) - MultiFetch";
      break;
    case 13:
      result = @"CloudKit (Public) - TagSearch";
      break;
    case 14:
      result = @"CloudKit (Public) - Today Config";
      break;
    case 15:
      result = @"CDN";
      break;
    case 16:
      result = @"CDN - App Config";
      break;
    case 17:
      result = @"CVWS";
      break;
    case 18:
      result = @"News Edge - App Config";
      break;
    case 19:
      result = @"News Edge - Search";
      break;
    case 20:
      result = @"News Edge - Today Config";
      break;
    case 21:
      result = @"News Edge - Puzzle Archive";
      break;
    case 22:
      result = @"News Edge - Widget Config";
      break;
    case 23:
      result = @"News Edge - Widget Config & Today Config Lite";
      break;
    case 24:
      result = @"Auth Token Service";
      break;
    case 25:
      result = @"Sports Data Service";
      break;
    case 26:
      result = @"Smarter Fetch";
      break;
    case 27:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
        v3 = 136315906;
        v4 = "NSString * _Nonnull FCStringFromNetworkEventType(FCNetworkEventType)";
        v5 = 2080;
        v6 = "FCNetworkEvent.m";
        v7 = 1024;
        v8 = 510;
        v9 = 2114;
        v10 = v2;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v3, 0x26u);
      }

      goto LABEL_5;
    default:
LABEL_5:
      result = 0;
      break;
  }

  return result;
}

__CFString *NSStringFromFCScoringType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Legacy";
  }

  else
  {
    return off_1E7C445E8[a1];
  }
}

void sub_1B6718790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67198C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCPaidAccessCheckerHasAccessToItemInline(void *a1, int a2, int a3, void *a4, char a5)
{
  v9 = a1;
  v10 = a4;
  v11 = [v9 bundleSubscriptionProvider];
  v12 = [v9 purchaseProvider];
  v13 = v11;
  v14 = v12;
  v15 = v10;
  if ((a2 & 1) != 0 || a3)
  {
    if (!v14 || !a2 || ([v14 purchasedTagIDs], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", v15), v17, (v18 & 1) == 0))
    {
      if (!v13 || !a3)
      {
        goto LABEL_12;
      }

      v19 = v13;
      v20 = v15;
      if (!v20 || ([v19 bundleSubscription], v21 = objc_claimAutoreleasedReturnValue(), objc_getAssociatedObject(v21, (v21 + 1)), v31 = v19, v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "unsignedIntegerValue"), v24 = v23, objc_getAssociatedObject(v21, ~v23), v25 = objc_claimAutoreleasedReturnValue(), v26 = (objc_msgSend(v25, "unsignedIntegerValue") - a5) ^ (v24 + a5), v25, v22, v19 = v31, v21, (v26 & 1) == 0))
      {

LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      v28 = [v31 bundleSubscription];
      v29 = [v28 bundleChannelIDs];
      v30 = [v29 containsObject:v20];

      if ((v30 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v16 = 1;
LABEL_13:

  return v16;
}

void sub_1B671B194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B671B39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B6720ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id FCTagFilterOptionsToNSString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"Deprecated"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"BlockedStorefronts"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"ExplicitContent"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v3 addObject:@"MinimumNewsVersion"];
  if ((a1 & 0x20) != 0)
  {
LABEL_6:
    [v3 addObject:@"MutedChannels"];
  }

LABEL_7:
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

void sub_1B6729998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B672B538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B672BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCAppConfigurationFetch(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v7 fetchedAppConfiguration];
  if (v4)
  {
    if (v3)
    {
      v3[2](v3, v4, 0);
    }
  }

  else
  {
    v5 = FCCurrentQoSOrUtilityIfMain();
    v6 = FCDispatchQueueForQualityOfService(v5);
    [v7 fetchAppConfigurationIfNeededWithCompletionQueue:v6 completion:v3];
  }
}

void sub_1B67302F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6730440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCBucketForFeldsparID(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "hash")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t FCModdedBucketID(void *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return [a1 unsignedIntegerValue] % a2;
    }
  }

  return result;
}

uint64_t FCEndpointEnvironmentForNTPBEndpointEnvironment(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1B681B4C0[a1 - 1];
  }
}

id FCAppConfigurationURLValue(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKeyedSubscript:a2];
    if (!v2 || ([MEMORY[0x1E695DFB0] null], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 == v3))
    {
      v7 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
      v6 = v5;
      if (v5 && [v5 length])
      {
        v7 = [MEMORY[0x1E695DFF8] URLWithString:v2];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double fc_ensureGreaterThanZero(double result, double a2)
{
  if (result <= 0.0)
  {
    return a2;
  }

  return result;
}

double fc_ensureGreaterThanOrEqualToZero(double result, double a2)
{
  if (result < 0.0)
  {
    return a2;
  }

  return result;
}

double fc_ensureGreaterThanOrEqualToZeroLessThanOne(double result, double a2)
{
  if (result >= 1.0 || result < 0.0)
  {
    return a2;
  }

  return result;
}

double fc_ensureNormalized(double result, double a2)
{
  if (result > 1.0 || result < 0.0)
  {
    return a2;
  }

  return result;
}

void sub_1B673847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCArticleListTypeFromPBArticleListType(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t PBArticleListTypeFromString(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 caseInsensitiveCompare:@"editorial"] == 0;
    v3 = [v1 caseInsensitiveCompare:@"people-also-coread"];

    if (v3)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t cloudKitValueFromEntryOrigin(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t entryOriginFromCloudKitValue(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void sub_1B6740B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6748A70(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B674F550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67520A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v17 - 72));
  _Unwind_Resume(a1);
}

void sub_1B67524BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B675323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6754EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCBlockConjunction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FCBlockConjunction_block_invoke;
  v9[3] = &unk_1E7C39090;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

uint64_t __FCBlockConjunction_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void FCWaitUntilBlockIsInvoked(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v9 = "void FCWaitUntilBlockIsInvoked(FCAsyncOperationBlock  _Nonnull __strong)";
    v10 = 2080;
    v11 = "FCBlockUtilities.m";
    v12 = 1024;
    v13 = 47;
    v14 = 2114;
    v15 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCWaitUntilBlockIsInvoked_block_invoke;
  v6[3] = &unk_1E7C36EA0;
  v7 = v2;
  v3 = v1[2];
  v4 = v2;
  v3(v1, v6);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t FCQoSClassFromQoS(uint64_t a1)
{
  if (a1 == 33)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 25)
  {
    v2 = 25;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 17)
  {
    v3 = 17;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == -1)
  {
    v5 = 21;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 16)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t FCQoSFromQoSClass(int a1)
{
  HIDWORD(v1) = a1 - 9;
  LODWORD(v1) = a1 - 9;
  v2 = 8 * (v1 >> 3) + 9;
  if ((v1 >> 3) >= 4)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

void FCDispatchAfterWithQualityOfService(dispatch_time_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = FCBlockWithQualityOfService(a3, a4);
  dispatch_after(a1, v7, v8);
}

void FCDispatchGroupNotifyWithQualityOfService(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = FCBlockWithQualityOfService(a3, a4);
  dispatch_group_notify(v8, v7, v9);
}

void FCDispatchAsyncWithQoSPropagation(void *a1, void *a2)
{
  v3 = a1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, a2);
  dispatch_async(v3, v4);
}

void FCDispatchGroupNotifyWithTimeout(void *a1, void *a2, dispatch_time_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "group"];
    *buf = 136315906;
    v23 = "void FCDispatchGroupNotifyWithTimeout(dispatch_group_t  _Nonnull __strong, dispatch_queue_t  _Nonnull __strong, dispatch_time_t, FCTimeoutBlock  _Nonnull __strong)";
    v24 = 2080;
    v25 = "FCBlockUtilities.m";
    v26 = 1024;
    v27 = 175;
    v28 = 2114;
    v29 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queue"];
    *buf = 136315906;
    v23 = "void FCDispatchGroupNotifyWithTimeout(dispatch_group_t  _Nonnull __strong, dispatch_queue_t  _Nonnull __strong, dispatch_time_t, FCTimeoutBlock  _Nonnull __strong)";
    v24 = 2080;
    v25 = "FCBlockUtilities.m";
    v26 = 1024;
    v27 = 176;
    v28 = 2114;
    v29 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v23 = "void FCDispatchGroupNotifyWithTimeout(dispatch_group_t  _Nonnull __strong, dispatch_queue_t  _Nonnull __strong, dispatch_time_t, FCTimeoutBlock  _Nonnull __strong)";
    v24 = 2080;
    v25 = "FCBlockUtilities.m";
    v26 = 1024;
    v27 = 177;
    v28 = 2114;
    v29 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __FCDispatchGroupNotifyWithTimeout_block_invoke;
  v20[3] = &unk_1E7C379C8;
  v10 = v9;
  v21 = v10;
  v11 = FCHandleOperationTimeout(a3, v8, v20);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FCDispatchGroupNotifyWithTimeout_block_invoke_2;
  block[3] = &unk_1E7C39090;
  v18 = v11;
  v19 = v10;
  v12 = v10;
  v13 = v11;
  dispatch_group_notify(v7, v8, block);
}

uint64_t __FCDispatchGroupNotifyWithTimeout_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

id FCHandleOperationCancellation(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cancellationTrigger"];
    *buf = 136315906;
    *&buf[4] = "FCOperationCancelledTest  _Nonnull FCHandleOperationCancellation(__autoreleasing dispatch_block_t * _Nonnull, __strong dispatch_block_t _Nonnull)";
    *&buf[12] = 2080;
    *&buf[14] = "FCBlockUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v25) = 195;
    WORD2(v25) = 2114;
    *(&v25 + 6) = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cancellationHandler"];
    *buf = 136315906;
    *&buf[4] = "FCOperationCancelledTest  _Nonnull FCHandleOperationCancellation(__autoreleasing dispatch_block_t * _Nonnull, __strong dispatch_block_t _Nonnull)";
    *&buf[12] = 2080;
    *&buf[14] = "FCBlockUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v25) = 196;
    WORD2(v25) = 2114;
    *(&v25 + 6) = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v25 = __Block_byref_object_copy__77;
  *(&v25 + 1) = __Block_byref_object_dispose__77;
  v26 = _Block_copy(v3);
  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCHandleOperationCancellation_block_invoke;
  aBlock[3] = &unk_1E7C45A40;
  v20 = v4;
  v21 = v22;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FCHandleOperationCancellation_block_invoke_3;
  block[3] = &unk_1E7C37D28;
  v7 = v6;
  v17 = v7;
  v18 = buf;
  *a1 = dispatch_block_create(0, block);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __FCHandleOperationCancellation_block_invoke_4;
  v13[3] = &unk_1E7C45A68;
  v14 = v7;
  v15 = buf;
  v8 = v7;
  v9 = _Block_copy(v13);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v22, 8);

  return v9;
}

void sub_1B67563A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FCHandleOperationCancellation_block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FCHandleOperationCancellation_block_invoke_2;
  v4[3] = &unk_1E7C45A18;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = &v5;
  [v1 performWithLockSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1B675647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FCHandleOperationCancellation_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __FCHandleOperationCancellation_block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(*(*(a1 + 40) + 8) + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __FCHandleOperationCancellation_block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return v2 ^ 1u;
}

void FCRepeat(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    for (; a1; --a1)
    {
      v3[2](v3);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v6 = "void FCRepeat(NSUInteger, __strong dispatch_block_t _Nonnull)";
    v7 = 2080;
    v8 = "FCBlockUtilities.m";
    v9 = 1024;
    v10 = 281;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

id FCTestBlockForClass(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTestBlockForClass_block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);

  return v1;
}

id FCTestBlockForProtocol(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTestBlockForProtocol_block_invoke;
  aBlock[3] = &unk_1E7C3F858;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

id FCRecursiveBlock(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCRecursiveBlock_block_invoke;
  aBlock[3] = &unk_1E7C379C8;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __FCRecursiveBlock_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FCRecursiveBlock(v1);
  (v1)[2](v1, v2);
}

void sub_1B6757A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    if ([v10 errorCode] == 1006 || objc_msgSend(v10, "errorCode") == 1009)
    {
      v11 = MEMORY[0x1E695B978];
      v12 = [v10 reason];
      v13 = [v11 errorWithCode:1009 format:@"Invalid predicate: %@"];
    }

    else
    {
      v13 = [MEMORY[0x1E695B978] errorWithCode:1000 format:@"Unknown error %@"];
      v12 = 0;
    }

    if (v9)
    {
      v14 = v13;
      *v9 = v13;
    }

    objc_end_catch();
    JUMPOUT(0x1B6757854);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B6758014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *FCSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *FCProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *FCClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef FCCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t FCCheckedStaticCast(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315906;
    v5 = "id FCCheckedStaticCast(Class, id<NSObject>)";
    v6 = 2080;
    v7 = "FCCast.m";
    v8 = 1024;
    v9 = 109;
    v10 = 2114;
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object type in checked static cast.  This is a serious problem and could lead to a crash, or worse."];
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
  }

  return a2;
}

void *FCCheckedProtocolCast(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = *MEMORY[0x1E69E9840];
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = "id FCCheckedProtocolCast(Protocol *, id<NSObject>)";
      v6 = 2080;
      v7 = "FCCast.m";
      v8 = 1024;
      v9 = 120;
      v10 = 2114;
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object type in checked protocol cast"];
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
    }

    return 0;
  }

  return v2;
}

void *FCCheckedStaticProtocolCast(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315906;
    v5 = "id FCCheckedStaticProtocolCast(Protocol *, id<NSObject>)";
    v6 = 2080;
    v7 = "FCCast.m";
    v8 = 1024;
    v9 = 131;
    v10 = 2114;
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object type in checked protocol cast. This is a serious problem and could lead to a crash, or worse."];
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
  }

  return a2;
}

__CFString *NSStringFromFCPersonalizationAction(uint64_t a1)
{
  if ((a1 - 1) > 0x21)
  {
    return @"None";
  }

  else
  {
    return off_1E7C45B48[a1 - 1];
  }
}

uint64_t FCPersonalizationActionFromTodayPersonalizationAction(int a1)
{
  if ((a1 - 2) > 4)
  {
    return 22;
  }

  else
  {
    return qword_1B681B688[a1 - 2];
  }
}

id FCCFArrayShortDescription(const __CFArray *a1)
{
  v1 = [FCDescription descriptionWithCFType:a1 format:@" count=%ld", CFArrayGetCount(a1)];;
  v2 = [v1 descriptionString];

  return v2;
}

id FCCFArrayDescription(const __CFArray *a1)
{
  v2 = [FCDescription descriptionWithCFType:a1 format:@" count=%ld", CFArrayGetCount(a1)];;
  if (CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%d]", v3];
      [v2 addField:v4 format:{@"%@", CFArrayGetValueAtIndex(a1, v3)}];

      ++v3;
    }

    while (CFArrayGetCount(a1) > v3);
  }

  [v2 setFieldOptionCommaSeparated];
  v5 = [v2 descriptionString];

  return v5;
}

id FCCFDictionaryDescription(const __CFDictionary *a1)
{
  v2 = [FCDescription descriptionWithCFType:a1 format:&stru_1F2DC7DC0];
  CFDictionaryApplyFunction(a1, CFDictionaryDescriptionApplierFunction, v2);
  v3 = [v2 descriptionString];

  return v3;
}

__CFString *FCObjectReferenceDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    ClassName = object_getClassName(v1);
    v4 = strcmp(ClassName, "NSCFArray");
    v5 = MEMORY[0x1E696AEC0];
    v6 = object_getClassName(v2);
    if (v4)
    {
      [v5 stringWithFormat:@"(%s*)%p", v6, v2, v9];
    }

    else
    {
      [v5 stringWithFormat:@"(%s*)%p; count=%ld", v6, v2, CFArrayGetCount(v2)];
    }
    v7 = ;
  }

  else
  {
    v7 = @"<nil>";
  }

  return v7;
}

id FCStringArrayFromBitFields(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndex:v5];
      if ([v6 count])
      {
        if (((a2 >> v5) & 1) >= [v6 count])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"<Bad Value: %lu>", (a2 >> v5) & 1];
        }

        else
        {
          [v6 objectAtIndex:(a2 >> v5) & 1];
        }
        v7 = ;
        if ([v7 length])
        {
          [v4 addObject:v7];
        }
      }

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  return v4;
}

id FCAVWorkQueue()
{
  if (qword_1EDB27910 != -1)
  {
    dispatch_once(&qword_1EDB27910, &__block_literal_global_160);
  }

  v1 = _MergedGlobals_203;

  return v1;
}

void __FCAVWorkQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("NewsCore.AV.work", v2);
  v1 = _MergedGlobals_203;
  _MergedGlobals_203 = v0;
}

id FCAVWorkOperationQueue()
{
  if (qword_1EDB27920 != -1)
  {
    dispatch_once(&qword_1EDB27920, &__block_literal_global_4_11);
  }

  v1 = qword_1EDB27918;

  return v1;
}

uint64_t __FCAVWorkOperationQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = qword_1EDB27918;
  qword_1EDB27918 = v0;

  [qword_1EDB27918 setMaxConcurrentOperationCount:1];
  v2 = FCAVWorkQueue();
  [qword_1EDB27918 setUnderlyingQueue:v2];

  v3 = qword_1EDB27918;

  return [v3 setName:@"NewsCore.AV.work"];
}

id FCKeyIdentifiersFromHLSMetadata(void *a1)
{
  if (!a1)
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  v1 = MEMORY[0x1E695DEF0];
  v2 = a1;
  v3 = [[v1 alloc] initWithBase64EncodedString:v2 options:0];

  if (v3)
  {
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
    v5 = v4;
    if (!v4)
    {
      v9 = MEMORY[0x1E695E0F0];
LABEL_13:

      goto LABEL_14;
    }

    v6 = v4;
    v7 = [MEMORY[0x1E695DFA8] set];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKey:@"uri"];
      [v7 fc_safelyAddObject:v8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_12:
        v9 = [v7 allObjects];

        goto LABEL_13;
      }

      v8 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_25_2];
      [v7 fc_safelyAddObjects:v8];
    }

    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695E0F0];
LABEL_14:

LABEL_15:

  return v9;
}

void sub_1B675B1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B675BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B675E03C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B67625A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v39 - 248), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1B6768160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67686B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6768BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67690CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6769670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 64));
  objc_destroyWeak((v19 - 112));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B676ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676B134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676B24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FCFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

void FCClamp(double a1, double a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 < a2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "max >= min"];
    *buf = 136315906;
    v5 = "CGFloat FCClamp(CGFloat, CGFloat, CGFloat)";
    v6 = 2080;
    v7 = "FCMath.m";
    v8 = 1024;
    v9 = 43;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

unint64_t FCClampUInt64s(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t FCAudioUpsellPlayPositionForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 caseInsensitiveCompare:@"beginning"])
  {
    if ([v2 caseInsensitiveCompare:@"middle"])
    {
      v3 = 2 * ([v2 caseInsensitiveCompare:@"end"] == 0);
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B6771C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 136), 8);
  _Unwind_Resume(a1);
}

BOOL FCMIMETypeIsAudioOrVideo(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"audio/mpeg"])
  {
    v2 = [v1 caseInsensitiveCompare:@"video/mp4"] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

BOOL FCMIMETypeIsGZip(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"application/gzip"])
  {
    v2 = [v1 caseInsensitiveCompare:@"application/x-gzip"] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCAllowedToRewriteAssetURLComponents(void *a1)
{
  v1 = a1;
  if ([FCRecordFieldURLProtocol canHandleURLWithComponents:v1]|| [FCExcerptURLProtocol canHandleURLWithComponents:v1])
  {
    v2 = 0;
  }

  else
  {
    v2 = [FCPuzzleThumbnailURLProtocol canHandleURLWithComponents:v1]^ 1;
  }

  return v2;
}

uint64_t FCNewsAssetServerHostName()
{
  v0 = FCCurrentContextEnvironment();
  if (v0 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C46668 + v0);
  }
}

uint64_t FCNewsAssetServerHostNameForEnvironment(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C46668 + a1);
  }
}

void sub_1B67764BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 240), 8);
  _Block_object_dispose((v40 - 192), 8);
  _Block_object_dispose((v40 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B677773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSKProductsRequestClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKProductsRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_206 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "SKProductsRequest");
    StoreKitLibrary_1();
  }
}

void StoreKitLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __StoreKitLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7C46690;
    v3 = 0;
    StoreKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v0 = v1[0];
    if (StoreKitLibraryCore_frameworkLibrary_1)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __StoreKitLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getSKPaymentQueueClientClass_block_invoke_1(uint64_t a1)
{
  StoreKitLibrary_1();
  result = objc_getClass("SKPaymentQueueClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = abort_report_np("Unable to find class %s", "SKPaymentQueueClient");
    [(FCPuzzleTypeFetchOperation *)v3 init];
  }

  qword_1EDB27958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id FCMutateHeadlineWithBlock(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, v4);

  v3[2](v3, v6);

  return v6;
}

double FCScoreForHeadline(void *a1, int a2)
{
  v3 = a1;
  [v3 tileProminenceScore];
  v5 = v4;
  if (a2)
  {
    if ([v3 isFeatureCandidate])
    {
      v6 = [v3 publishDate];
      [v6 fc_timeIntervalUntilNow];
      v8 = v7;

      if (v8 <= 86400.0)
      {
        v5 = v5 + 100.0;
      }
    }
  }

  return v5;
}

uint64_t FCIndexOfHighestScoringHeadline(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a test block"];
    *buf = 136315906;
    *&buf[4] = "NSUInteger FCIndexOfHighestScoringHeadline(NSArray<id<FCHeadlineProviding>> *__strong, NSRange, BOOL (^__strong)(__strong id<FCHeadlineProviding>), double (^__strong)(__strong id<FCHeadlineProviding>))";
    *&buf[12] = 2080;
    *&buf[14] = "FCFeedBuildingUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v27[0]) = 53;
    WORD2(v27[0]) = 2114;
    *(v27 + 6) = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a score block"];
    *buf = 136315906;
    *&buf[4] = "NSUInteger FCIndexOfHighestScoringHeadline(NSArray<id<FCHeadlineProviding>> *__strong, NSRange, BOOL (^__strong)(__strong id<FCHeadlineProviding>), double (^__strong)(__strong id<FCHeadlineProviding>))";
    *&buf[12] = 2080;
    *&buf[14] = "FCFeedBuildingUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v27[0]) = 54;
    WORD2(v27[0]) = 2114;
    *(v27 + 6) = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v27[0] = 0xBFF0000000000000;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 && v11)
  {
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a2, a3}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __FCIndexOfHighestScoringHeadline_block_invoke;
    v17[3] = &unk_1E7C466F8;
    v18 = v11;
    v20 = buf;
    v19 = v10;
    v21 = &v22;
    [v9 enumerateObjectsAtIndexes:v13 options:0 usingBlock:v17];

    v12 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  return v12;
}

void sub_1B6779584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __FCIndexOfHighestScoringHeadline_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = (*(a1[4] + 16))();
  if (v5 > *(*(a1[6] + 8) + 24) && (*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = v5;
    *(*(a1[7] + 8) + 24) = a3;
  }
}

id FCPromoteHeadlines(void *a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a3;
  v35 = a4;
  v10 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
  if (a5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a5;
  }

  if (v9 && (v12 = [v9 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_12_0], v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = v12;
    v15 = [v9 count];
    v13 = (v14 + v11 - v15) & ~((v14 + v11 - v15) >> 63);
  }

  else
  {
    v13 = 0;
  }

  v36 = v8;
  if (v13 < [v8 count])
  {
    if (v35 && (v16 = [v35 indexOfObjectPassingTest:&__block_literal_global_12_0], v16 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v32 = v11 - v16;
      if (v11 - v16 <= [v36 count])
      {
        v33 = [v36 count];
        v34 = v32 <= 1 ? 1 : v32;
        v17 = v33 - v34;
      }

      else
      {
        v17 = -1;
      }
    }

    else
    {
      v17 = [v8 count] - 1;
    }

    if (v13 <= v17)
    {
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2;
      }

      v19 = v17 + 1;
      while (1)
      {
        v20 = v13 + v11;
        if (v13 + v11 >= (v19 - v13))
        {
          v20 = v19 - v13;
        }

        v21 = (v18 & 1) != 0 ? &__block_literal_global_18_1 : &__block_literal_global_22_2;
        v22 = (v18 & 1) != 0 ? &__block_literal_global_15_2 : &__block_literal_global_20_1;
        v23 = (v18 & 1) != 0 ? v19 - v13 : v20;
        v24 = FCIndexOfHighestScoringHeadline(v10, v13, v23, v22, v21);
        if (!v13 && (a2 & 1) == 0 && ![v9 count])
        {
          v25 = [v10 firstObject];
          v26 = [v25 hasThumbnail];

          if (v26)
          {
            break;
          }
        }

        if (v18)
        {
          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_39:
            v29 = [v10 objectAtIndexedSubscript:v24];
            v30 = FCMutateHeadlineWithBlock(v29, &__block_literal_global_166);

            [v10 replaceObjectAtIndex:v24 withObject:v30];
            v13 = v24 + v11;

            goto LABEL_40;
          }

          v13 += v11;
        }

LABEL_40:
        v18 = 0;
        if (v13 > v17)
        {
          goto LABEL_41;
        }
      }

      v24 = 0;
      if ((v18 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      v27 = [v10 objectAtIndexedSubscript:v24];
      v28 = FCMutateHeadlineWithBlock(v27, &__block_literal_global_166);

      [v10 removeObjectAtIndex:v24];
      [v10 insertObject:v28 atIndex:0];
      v13 += v11;

      goto LABEL_40;
    }
  }

LABEL_41:

  return v10;
}

BOOL __FCPromoteHeadlines_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasThumbnail])
  {
    v3 = [v2 publishDate];
    [v3 fc_timeIntervalUntilNow];
    v5 = v4 <= 86400.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __FCPromoteOneHeadline(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (a2 && [v5 count] && (objc_msgSend(v5, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v6[2](v6, v7), v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 fc_arrayOfObjectsPassingTest:v6];
    v11 = [v10 count];
    v9 = v11 != 0;
    if (v11)
    {
      v12 = [v10 sortedArrayUsingComparator:&__block_literal_global_25_3];
      v13 = [v12 firstObject];
      v14 = FCMutateHeadlineWithBlock(v13, &__block_literal_global_166);
      [v5 removeObjectIdenticalTo:v13];
      [v5 insertObject:v14 atIndex:0];
    }
  }

  return v9;
}

id _FCPromoteOneHeadline(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  __FCPromoteOneHeadline(v3, a2, &__block_literal_global_28_3);

  return v3;
}

id _FCPromoteAccessibleHeadline(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___FCPromoteAccessibleHeadline_block_invoke_2;
  aBlock[3] = &unk_1E7C37550;
  v11 = v5;
  v7 = v5;
  v8 = _Block_copy(aBlock);
  if (!__FCPromoteOneHeadline(v6, a3, v8))
  {
    __FCPromoteOneHeadline(v6, a3, &__block_literal_global_30_4);
  }

  return v6;
}

void FCAssignPersonalizationScoresToHeadlines(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 sortItems:v5 options:1 configurationSet:a3];
  v7 = [v6 scoreProfiles];

  FCAssignPersonalizationScoresFromProfiles(v5, v7);
}

void FCAssignPersonalizationScoresFromProfiles(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        [v9 setScoreProfile:v10];
        [v10 sortingScore];
        [v9 setTileProminenceScore:?];
      }

      v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

id FCAssignSingleRecipeMetadata(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    [v5 applyRecipeMetadata:a2 configuration:a3];
  }

  else
  {
  }

  return v6;
}

id FCAssignHeadlineMetadata(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v19 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = v5;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = [v6 objectForKeyedSubscript:v14];

          if (v15)
          {
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __FCAssignHeadlineMetadata_block_invoke_2;
            v20[3] = &unk_1E7C467D0;
            v21 = v15;
            v22 = v19;
            v16 = FCMutateHeadlineWithBlock(v13, v20);
            [v7 addObject:v16];
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v10);
      v5 = v18;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __FCAssignHeadlineMetadata_block_invoke;
    v30 = &unk_1E7C3B578;
    v31 = v5;
    v7 = v31;
  }

  return v7;
}

id FCFeedItemsCoveredByRange(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCFeedItemsCoveredByRange_block_invoke;
  v7[3] = &unk_1E7C42320;
  v8 = v3;
  v4 = v3;
  v5 = [a1 fc_arrayOfObjectsPassingTest:v7];

  return v5;
}

uint64_t __FCFeedItemsCoveredByRange_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 order];

  return [v2 containsOrder:v3];
}

void sub_1B677F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B678080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6781DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FCPersonalizationExponentialSumForValue(long double a1, long double a2)
{
  v3 = a1;
  if (a2 != 1.0)
  {
    return (1.0 - pow(a2, a1)) / (1.0 - a2);
  }

  return v3;
}

long double FCPersonalizationExponentiallyDecayValue(double a1, long double a2, long double a3, long double a4)
{
  v6 = a2;
  if (a4 != 1.0)
  {
    v6 = (1.0 - pow(a4, a2)) / (1.0 - a4);
  }

  return v6 + a1 * pow(a4, a3);
}

double FCPersonalizationLinearImpressionCount(double a1, long double a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    v4 = 0.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot get a linear impression with a decay rate of 0"];
      v11 = 136315906;
      v12 = "double FCPersonalizationLinearImpressionCount(double, double)";
      v13 = 2080;
      v14 = "FCPersonalizationData.m";
      v15 = 1024;
      v16 = 923;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }
  }

  else
  {
    v4 = 555.0;
    v5 = (1.0 - pow(a2, 555.0)) / (1.0 - a2);
    if (v5 > a1)
    {
      v5 = a1;
    }

    v6 = log(1.0 - v5 * (1.0 - a2));
    v7 = v6 / log(a2);
    if (COERCE__INT64(fabs(v7)) >= 0x7FF0000000000000 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Found a NaN or Inf linear impression count result"];
      v11 = 136315906;
      v12 = "double FCPersonalizationLinearImpressionCount(double, double)";
      v13 = 2080;
      v14 = "FCPersonalizationData.m";
      v15 = 1024;
      v16 = 927;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }

    if (fabs(v7) != INFINITY)
    {
      return v7;
    }
  }

  return v4;
}

__CFString *FCCommandStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"success";
  }

  else
  {
    return off_1E7C46CD8[a1 - 1];
  }
}

uint64_t FCPBFeedItemInventoryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = objc_autoreleasePoolPush();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v30 & 0x7F) << v6;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v11 = v7++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      if ([a2 hasError])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        objc_autoreleasePoolPop(v5);
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = objc_alloc_init(MEMORY[0x1E69B6E00]);

          *(a1 + 32) = v26;
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark() || !NTPBDateReadFrom())
          {
LABEL_61:
            objc_autoreleasePoolPop(v5);
            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 4)
        {
          v20 = objc_alloc_init(MEMORY[0x1E69B6E30]);
          [a1 addFeedItems:v20];

          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark() || !NTPBFeedItemReadFrom())
          {
            goto LABEL_61;
          }

LABEL_47:
          PBReaderRecallMark();
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v30) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v30 & 0x7F) << v21;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v23;
          }

LABEL_55:
          v27 = 24;
          goto LABEL_56;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v30) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v30 & 0x7F) << v14;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v16;
          }

LABEL_51:
          v27 = 8;
LABEL_56:
          *(a1 + v27) = v19;
          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_57:
      objc_autoreleasePoolPop(v5);
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __FCJSONValidValueClasses_block_invoke()
{
  if (qword_1EDB279C8 != -1)
  {
    dispatch_once(&qword_1EDB279C8, &__block_literal_global_3_1);
  }

  v1 = _MergedGlobals_211;

  return v1;
}

uint64_t __FCJSONValidValueClasses_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 arrayWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = _MergedGlobals_211;
  _MergedGlobals_211 = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

BOOL _fc_isValidJSONValueObject(void *a1)
{
  v1 = a1;
  v2 = __FCJSONValidValueClasses_block_invoke();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___fc_isValidJSONValueObject_block_invoke;
  v8[3] = &unk_1E7C46CF8;
  v3 = v1;
  v9 = v3;
  if ([v2 fc_containsObjectPassingTest:v8])
  {
    objc_opt_class();
    if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v4 = v3;
      [v4 floatValue];
      [v4 floatValue];
      v6 = fabsf(v5) != INFINITY;
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _fc_isValidJSONContainerObject(void *a1)
{
  v1 = a1;
  if (qword_1EDB279D8 != -1)
  {
    dispatch_once(&qword_1EDB279D8, &__block_literal_global_68_3);
  }

  v2 = qword_1EDB279D0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___fc_isValidJSONContainerObject_block_invoke;
  v6[3] = &unk_1E7C46CF8;
  v7 = v1;
  v3 = v1;
  v4 = [v2 fc_containsObjectPassingTest:v6];

  return v4;
}

id _fc_JSONEncodableObjectWithObjectHandlers(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v69 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (!v11)
  {
    v27 = 0;
    v22 = v15;
    v24 = v14;
    v20 = v13;
    v18 = v12;
    goto LABEL_42;
  }

  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = &__block_literal_global_13_2;
  }

  v18 = _Block_copy(v17);

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = &__block_literal_global_16_2;
  }

  v20 = _Block_copy(v19);

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = &__block_literal_global_18_2;
  }

  v22 = _Block_copy(v21);

  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = &__block_literal_global_10_1;
  }

  v24 = _Block_copy(v23);

  if ((_fc_isValidJSONContainerObject(v11) & 1) == 0)
  {
    if (a6)
    {
      if (_fc_isValidJSONValueObject(v11))
      {
        v29 = v11;
      }

      else
      {
        v29 = 0;
      }

      v27 = v29;
      goto LABEL_42;
    }

    v32 = v18[2](v18, v11);
    v26 = v32;
    if (!v32 || (_fc_JSONEncodableObjectWithObjectHandlers(v32, v18, v20, v24, v22, 1), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v27 = _fc_JSONEncodableObjectWithObjectHandlers(v11, v18, v20, v24, v22, 1);
    }

    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v11;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_5;
    v55[3] = &unk_1E7C46D60;
    v20 = v20;
    v56 = v20;
    v18 = v18;
    v57 = v18;
    v24 = v24;
    v58 = v24;
    v22 = v22;
    v59 = v22;
    v60 = a6;
    v27 = [v26 fc_arrayByTransformingWithBlockWithIndex:v55];

    v28 = v56;
LABEL_20:

LABEL_41:
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v11;
    }

    else
    {
      v30 = 0;
    }

    v26 = v30;
    v31 = [v26 allObjects];
LABEL_40:
    v34 = v31;
    v27 = _fc_JSONEncodableObjectWithObjectHandlers(v31, v18, v20, v24, v22, 0);

    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v11;
    }

    else
    {
      v33 = 0;
    }

    v26 = v33;
    v31 = [v26 array];
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v11;
    }

    else
    {
      v36 = 0;
    }

    v26 = v36;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_6;
    v49[3] = &unk_1E7C46D88;
    v50 = &__block_literal_global_10_1;
    v37 = v24;
    v51 = v37;
    v38 = v18;
    v52 = v38;
    v39 = v20;
    v53 = v39;
    v40 = v22;
    v54 = v40;
    v41 = [v26 fc_dictionaryByTransformingKeysWithKeyAndValueBlock:v49];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_7;
    v43[3] = &unk_1E7C46DB0;
    v22 = v40;
    v44 = v22;
    v18 = v38;
    v45 = v18;
    v20 = v39;
    v46 = v20;
    v24 = v37;
    v47 = v24;
    v48 = a6;
    v27 = [v41 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v43];

    v28 = v50;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This condition shouldn't be possible, the object %@ was a container type, but not handled.", v11];
    *buf = 136315906;
    v62 = "id _fc_JSONEncodableObjectWithObjectHandlers(__strong id, __strong FCJSONEncodingObjectHandler, __strong FCJSONEncodingArrayObjectHandler, __strong FCJSONEncodingDictionaryKeyHandler, __strong FCJSONEncodingDictionaryValueHandler, BOOL)";
    v63 = 2080;
    v64 = "FCJSONUtilities.m";
    v65 = 1024;
    v66 = 127;
    v67 = 2114;
    v68 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v27 = 0;
LABEL_42:

  return v27;
}

id fc_JSONEncodableObjectWithObjectHandlers(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17[0] = v9;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

            v9 = v14;
          }
        }
      }
    }

    v15 = _fc_JSONEncodableObjectWithObjectHandlers(v9, v10, v11, v12, v13, 0);
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

uint64_t __FCJSONValidContainerClasses_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 arrayWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  v7 = qword_1EDB279D0;
  qword_1EDB279D0 = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void sub_1B678FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6790458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67914BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B679161C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCCompareRelativePriority(uint64_t a1, uint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t FCHigherRelativePriority(uint64_t result, uint64_t a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

uint64_t FCNextHighestRelativePriority(uint64_t result)
{
  if ((result + 1) <= 3)
  {
    return qword_1B681B728[result + 1];
  }

  return result;
}

uint64_t FCInferRelativePriorityFromQualityOfService(uint64_t a1)
{
  if (a1 == 9)
  {
    return -1;
  }

  return a1 == 33 || a1 == 25;
}

uint64_t FCInferQualityOfServiceFromRelativePriority(uint64_t a1)
{
  v1 = 25;
  if (!a1)
  {
    v1 = 17;
  }

  if (a1 == -1)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t FCQueuePriorityFromRelativePriority(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 4 * (a1 + 1) - 4;
  }
}

float FCInferTaskPriorityFromRelativePriority(unint64_t a1)
{
  result = 0.25;
  if (a1 <= 2)
  {
    return flt_1B681B748[a1];
  }

  return result;
}

dispatch_queue_global_t FCDispatchQueueForRelativePriority(uint64_t a1)
{
  v1 = 25;
  if (!a1)
  {
    v1 = 17;
  }

  if (a1 == -1)
  {
    return FCDispatchQueueForQualityOfService(9);
  }

  else
  {
    return FCDispatchQueueForQualityOfService(v1);
  }
}

uint64_t FCCKQueryPriorityFromRelativePriority(uint64_t a1)
{
  v1 = 300;
  if (!a1)
  {
    v1 = 200;
  }

  if (a1 == -1)
  {
    return 100;
  }

  else
  {
    return v1;
  }
}

__CFString *FCStringFromRelativePriority(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"low";
  }

  else
  {
    return off_1E7C46FB0[a1];
  }
}

void FCSwizzleInstanceMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, a2);
    v7 = class_getInstanceMethod(a1, a3);
    if (InstanceMethod)
    {
      v8 = v7;
      if (v7)
      {
        Implementation = method_getImplementation(v7);
        TypeEncoding = method_getTypeEncoding(v8);
        if (class_addMethod(a1, a2, Implementation, TypeEncoding))
        {
          v11 = method_getImplementation(InstanceMethod);
          v12 = method_getTypeEncoding(InstanceMethod);

          class_replaceMethod(a1, a3, v11, v12);
        }

        else
        {

          method_exchangeImplementations(InstanceMethod, v8);
        }
      }
    }
  }
}

id FCPersonalizationAggregateDefaultBaselineAggregateWithConfigurableValues(void *a1)
{
  v1 = MEMORY[0x1E69B6EE8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = +[FCBaselineFeature baselineFeature];
  v5 = [v4 personalizationIdentifier];
  [v3 setFeatureKey:v5];

  [v2 baselineImpressionPrior];
  v7 = v6;
  v8 = [v2 defaultScoringConfig];
  [v8 baselineRatePrior];
  [v3 setClicks:v7 * v9];

  [v2 baselineImpressionPrior];
  v11 = v10;

  [v3 setImpressions:v11];
  [v3 setEventCount:0];
  v12 = [MEMORY[0x1E695DF00] date];
  [v3 setTimestamp:{objc_msgSend(v12, "fc_millisecondTimeIntervalSince1970")}];

  return v3;
}

id FCPersonalizationAggregateBaselineAggregateWithConfigurableValues(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[FCBaselineFeature baselineFeature];
  v6 = [v5 personalizationIdentifier];
  v7 = [v4 aggregateForFeatureKey:v6];

  if (!v7)
  {
    v7 = FCPersonalizationAggregateDefaultBaselineAggregateWithConfigurableValues(v3);
  }

  return v7;
}

id FCPersonalizationAggregateAggregatesForFeatures(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_176];
  v17 = v3;
  v6 = [v3 aggregatesForFeatureKeys:v5];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 personalizationIdentifier];
        v15 = [v6 objectForKey:v14];

        if (v15)
        {
          [v7 setObject:v15 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

double FCPersonalizationAggregateImpressionBiasForAction(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a1 == 22 || (v9 = 1.0, a1 == 1))
  {
    [v7 indexImpressionBiasCorrectionFactor];
    v11 = v10;
    [v8 groupImpressionBiasCorrectionFactor];
    v13 = v12;
    v14 = pow(v11, a2);
    v9 = v14 * pow(v13, a3);
    v15 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v17 = MEMORY[0x1E696AD98];
      v18 = v15;
      v19 = [v17 numberWithDouble:v9];
      v20 = 138412290;
      v21 = v19;
      _os_log_debug_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEBUG, "Impression bias for the headline seen event: %@", &v20, 0xCu);
    }
  }

  return v9;
}

double FCPersonalizationAggregateGroupBiasForGroupType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 2)
  {
    [v3 trendingGroupAggregatesGroupBias];
    goto LABEL_5;
  }

  v5 = 1.0;
  if (a1 == 1)
  {
    [v3 topStoriesGroupAggregatesGroupBias];
LABEL_5:
    v5 = v6;
  }

  return v5;
}

uint64_t FCHashForAggregate(void *a1)
{
  v1 = a1;
  [v1 clicks];
  v3 = vcvtmd_u64_f64(v2 * 10000.0);
  [v1 impressions];
  v5 = vcvtmd_u64_f64(v4 * 10000.0);
  v6 = [v1 eventCount];
  v7 = [v1 lastModified];

  v8 = v6 ^ v3;
  v9 = v5 ^ [v7 hash];

  return v8 ^ v9;
}

id FCDebugJSONForAggregate(void *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"Clicks";
  v1 = MEMORY[0x1E696AD98];
  v2 = a1;
  [v2 clicks];
  v3 = [v1 numberWithDouble:?];
  v13[0] = v3;
  v12[1] = @"Impressions";
  v4 = MEMORY[0x1E696AD98];
  [v2 impressions];
  v5 = [v4 numberWithDouble:?];
  v13[1] = v5;
  v12[2] = @"Event Count";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "eventCount")}];
  v13[2] = v6;
  v12[3] = @"Last Modified";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v2 lastModified];

  [v8 timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v13[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

id FCDebugAggregateWithJSONDictionary(void *a1)
{
  v1 = MEMORY[0x1E69B6EE8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  objc_opt_class();
  v4 = [v2 objectForKeyedSubscript:@"Clicks"];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_1F2E70EC0;
  }

  [v6 doubleValue];
  [v3 setClicks:?];

  objc_opt_class();
  v8 = [v2 objectForKeyedSubscript:@"Impressions"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (!v10)
  {
    v10 = &unk_1F2E70EC0;
  }

  [v10 doubleValue];
  [v3 setImpressions:?];

  objc_opt_class();
  v12 = [v2 objectForKeyedSubscript:@"EventCount"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  if (!v14)
  {
    v14 = &unk_1F2E70EC0;
  }

  [v14 doubleValue];
  [v3 setEventCount:v16];

  objc_opt_class();
  v17 = [v2 objectForKeyedSubscript:@"LastModified"];

  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = v19;
  if (!v19)
  {
    v19 = &unk_1F2E70EC0;
  }

  [v19 doubleValue];
  [v3 setTimestamp:v21];

  return v3;
}

id FCDebugJSONDictionaryFromAggregate(void *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"Clicks";
  v1 = MEMORY[0x1E696AD98];
  v2 = a1;
  [v2 clicks];
  v3 = [v1 numberWithDouble:?];
  v13[0] = v3;
  v12[1] = @"Impressions";
  v4 = MEMORY[0x1E696AD98];
  [v2 impressions];
  v5 = [v4 numberWithDouble:?];
  v13[1] = v5;
  v12[2] = @"EventCount";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "eventCount")}];
  v13[2] = v6;
  v12[3] = @"LastModified";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v2 lastModified];

  [v8 timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v13[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

__CFString *FCDefaultSearchBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47380[a1 - 1];
  }
}

__CFString *FCDefaultPuzzlesArchiveBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47380[a1 - 1];
  }
}

__CFString *FCDefaultAuthTokenAPIBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C473B0[a1 - 1];
  }
}

__CFString *FCDefaultSportsDataVisualizationAPIBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C473E0[a1 - 1];
  }
}

__CFString *FCDefaultAppAnalyticsSportsEventsBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47410[a1 - 1];
  }
}

__CFString *FCDefaultFineGrainedNewsletterSubscriptionBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47440[a1 - 1];
  }
}

__CFString *FCDefaultSmarterFetchBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47470[a1 - 1];
  }
}

void sub_1B67ABB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ABCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ABF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AD128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AD2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ADCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ADEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AE090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCAggregateFetchResultWithFetchResults(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCAggregateFetchResultWithFetchResults_block_invoke;
  aBlock[3] = &unk_1E7C47710;
  v7 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v4 = 0;
  if (((v3[2])(v3, 0) & 1) == 0)
  {
    if (v3[2](v3, 2))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

uint64_t __FCAggregateFetchResultWithFetchResults_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FCAggregateFetchResultWithFetchResults_block_invoke_2;
  v4[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v4[4] = a2;
  return [v2 fc_containsObjectPassingTest:v4];
}

uint64_t __FCAggregateFetchResultWithFetchResults_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  v6 = [v4 isEqualToNumber:v5];

  return v6;
}

void sub_1B67B037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B27DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B2F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B885C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B8B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B9080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B9204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B98B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BA0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BA468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BB214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BBE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BCB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B67BD15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BE408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NTPBMarketingSubscriptionRequest_SubscriptionActionFrom(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_1B67C3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67C5610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FCCGSizeFromMetadataBuffer(unint64_t a1)
{
  if (a1)
  {
    return (a1 >> 36);
  }

  else
  {
    return *MEMORY[0x1E695F060];
  }
}

void sub_1B67C8A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id FCPlaceholderIssueThumbnail()
{
  v0 = FCBundle();
  v1 = [v0 pathForResource:@"cellImagePlaceholder" ofType:@"png"];

  v2 = [[FCRawFileDataProvider alloc] initWithFilePath:v1];
  v3 = [[FCAssetHandle alloc] initWithDataProvider:v2];
  v4 = [FCIssueThumbnail issueThumbnailWithAssetHandle:v3 thumbnailSize:1.0, 1.0];

  return v4;
}

id FCThumbnailForIssue(void *a1)
{
  v1 = a1;
  v2 = [v1 coverImageAssetHandle];
  v3 = [v2 filePath];

  if (v3)
  {
    v4 = [v1 coverImageAssetHandle];
    v5 = [FCIssueThumbnail issueThumbnailWithAssetHandle:v4 thumbnailSize:1.79769313e308, 1.79769313e308];
  }

  else
  {
    v5 = FCPlaceholderIssueThumbnail();
  }

  return v5;
}

id FCFetchThumbnailForIssue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 coverImageAssetHandle];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __FCFetchThumbnailForIssue_block_invoke;
    v10[3] = &unk_1E7C37BC0;
    v11 = v6;
    v12 = v5;
    v8 = [v11 downloadIfNeededWithPriority:a2 completion:v10];
  }

  else
  {
    if (v5)
    {
      (*(v5 + 2))(v5, 0, 0);
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __FCFetchThumbnailForIssue_block_invoke(uint64_t a1)
{
  [*(a1 + 32) filePath];

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1B67D215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D2554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D26C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D35D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1B67D48BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCCKDatabaseZoneIDsToMigrate(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (v4)
  {
    v5 = v4[4];
    v6 = v4[5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = [v3 databaseMigrationZoneNamesFromVersion:v5 toVersion:v6];

  v8 = [v7 fc_arrayByTransformingWithBlock:&__block_literal_global_192];

  return v8;
}

id __FCCKDatabaseZoneIDsToMigrate_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B728]];

  return v5;
}

id FCCKDatabaseZoneIDsToDeleteAfterMigration(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  if (a1 < a2)
  {
    do
    {
      v18 = 0u;
      v19 = 0u;
      v7 = a1 + 1;
      v16 = 0u;
      v17 = 0u;
      v8 = [v5 databaseMigrationZoneNamesFromVersion:a1 toVersion:{a1 + 1, 0}];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if ([v5 databaseMigrationShouldMigrateEntireZone:v13])
            {
              [v6 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      a1 = v7;
    }

    while (v7 != a2);
  }

  v14 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_3_3];

  return v14;
}

id __FCCKDatabaseZoneIDsToDeleteAfterMigration_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B728]];

  return v5;
}

id FCCKDatabaseRecordIDsToDeleteAfterMigration(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v24 = a2;
  if (a1 < a2)
  {
    v7 = *MEMORY[0x1E695B728];
    v25 = v5;
    do
    {
      v28 = a1 + 1;
      v8 = [v5 databaseMigrationZoneNamesFromVersion:a1 toVersion:v24];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v8;
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        v26 = *v37;
        v27 = a1;
        do
        {
          v12 = 0;
          v29 = v10;
          do
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v36 + 1) + 8 * v12);
            if (([v5 databaseMigrationShouldMigrateEntireZone:v13] & 1) == 0)
            {
              v31 = v12;
              v14 = [v5 databaseMigrationRecordNamesToMigrateInZone:v13 fromVersion:a1 toVersion:v28];
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v33;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v33 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v32 + 1) + 8 * i);
                    v20 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:v13 ownerName:v7];
                    v21 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v19 zoneID:v20];
                    [v6 addObject:v21];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
                }

                while (v16);
              }

              v5 = v25;
              v11 = v26;
              a1 = v27;
              v10 = v29;
              v12 = v31;
            }

            ++v12;
          }

          while (v12 != v10);
          v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v10);
      }

      a1 = v28;
    }

    while (v28 != v24);
  }

  v22 = [v6 allObjects];

  return v22;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}