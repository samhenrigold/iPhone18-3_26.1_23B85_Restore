@interface ATXWatchFaceConfigurationCollector
+ (id)_watchFaceFromJSONObject:(id)object;
+ (id)sharedInstance;
- (ATXWatchFaceConfigurationCollector)init;
- (NSArray)watchFaces;
- (id)_queue_readWatchFacesFromDisk;
- (void)_queue_writeWatchFacesToDisk:(id)disk;
- (void)refreshWithCompletion:(id)completion;
@end

@implementation ATXWatchFaceConfigurationCollector

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXWatchFaceConfigurationCollector sharedInstance];
  }

  v3 = sharedInstance_collector;

  return v3;
}

uint64_t __52__ATXWatchFaceConfigurationCollector_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_collector;
  sharedInstance_collector = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ATXWatchFaceConfigurationCollector)init
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = ATXWatchFaceConfigurationCollector;
  v2 = [(ATXWatchFaceConfigurationCollector *)&v19 init];
  if (v2)
  {
    isiPad = [MEMORY[0x1E69C5CF8] isiPad];
    if (isiPad)
    {
      v4 = __atxlog_handle_lock_screen(isiPad);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[ATXWatchFaceConfigurationCollector init]";
        _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: device is iPad, not initializing connection", buf, 0xCu);
      }
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E698AFF0]);
      watchFaceConfigurationCacheFilePath = [MEMORY[0x1E698B010] watchFaceConfigurationCacheFilePath];
      v7 = __atxlog_handle_lock_screen(watchFaceConfigurationCacheFilePath);
      v8 = [v5 initWithCacheFilePath:watchFaceConfigurationCacheFilePath loggingHandle:v7 debugName:@"watch faces"];
      fileCache = v2->_fileCache;
      v2->_fileCache = v8;

      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("com.apple.proactive.ATXWatchFaceConfigurationCollector", v10);
      queue = v2->_queue;
      v2->_queue = v11;

      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("com.apple.proactive.ATXWatchFaceConfigurationCollector.Output", v13);
      outputQueue = v2->_outputQueue;
      v2->_outputQueue = v14;

      v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.nanotimekit.devicelibraryserver" options:4096];
      connection = v2->_connection;
      v2->_connection = v16;

      v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3EA43A0];
      [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v4];
      [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_190];
      [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_193];
      [(NSXPCConnection *)v2->_connection resume];
    }
  }

  return v2;
}

void __42__ATXWatchFaceConfigurationCollector_init__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = __atxlog_handle_lock_screen(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "[ATXWatchFaceConfigurationCollector init]_block_invoke";
    v4 = 2112;
    v5 = @"com.apple.nanotimekit.devicelibraryserver";
    _os_log_impl(&dword_1BF549000, v1, OS_LOG_TYPE_DEFAULT, "%s: connection to %@ invalidated", &v2, 0x16u);
  }
}

void __42__ATXWatchFaceConfigurationCollector_init__block_invoke_191(uint64_t a1)
{
  v1 = __atxlog_handle_lock_screen(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __42__ATXWatchFaceConfigurationCollector_init__block_invoke_191_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)refreshWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([MEMORY[0x1E69C5CF8] isiPad])
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke;
    v10[3] = &unk_1E80C08E0;
    v6 = completionCopy;
    v11 = v6;
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195;
    v8[3] = &unk_1E80C2058;
    v8[4] = self;
    v9 = v6;
    [v7 fetchLibraryAsJSON:v8];
  }
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_lock_screen(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v40 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v40];
    v9 = v40;
    v10 = v9;
    if (v9 || !v8)
    {
      v22 = __atxlog_handle_lock_screen(v9);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v8;
        v13 = __atxlog_handle_lock_screen(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v42 = "[ATXWatchFaceConfigurationCollector refreshWithCompletion:]_block_invoke";
          v43 = 2112;
          v44 = v12;
          _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: retrieved JSON array: %@", buf, 0x16u);
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_206;
        v39[3] = &unk_1E80C1FE0;
        v39[4] = *(a1 + 32);
        v14 = [v12 _pas_mappedArrayWithTransform:v39];
        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = *(v16 + 24);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_2;
        v35[3] = &unk_1E80C2030;
        v35[4] = v16;
        v36 = v14;
        v37 = v12;
        v38 = v15;
        v18 = v12;
        v19 = v14;
        dispatch_async(v17, v35);

        v10 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v23 = __atxlog_handle_lock_screen(isKindOfClass);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
      }

      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v45 = *MEMORY[0x1E696A578];
      v46[0] = @"JSON is not an array";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v10 = [v31 initWithDomain:@"ATXWatchFaceConfigurationCollector" code:1 userInfo:v32];

      v22 = __atxlog_handle_lock_screen(v33);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        v34 = *(a1 + 40);
        if (v34)
        {
          (*(v34 + 16))(v34, 0, v10);
        }

        goto LABEL_21;
      }
    }

    __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_2();
    goto LABEL_19;
  }

  v20 = __atxlog_handle_lock_screen(v6);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_1();
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, 0, v7);
  }

LABEL_22:
}

id __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_206(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _watchFaceFromJSONObject:v2];

  return v3;
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _queue_writeWatchFacesToDisk:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_3;
    v4[3] = &unk_1E80C2008;
    v6 = v2;
    v5 = *(a1 + 48);
    dispatch_async(v3, v4);
  }
}

- (NSArray)watchFaces
{
  if ([MEMORY[0x1E69C5CF8] isiPad])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__3;
    v11 = __Block_byref_object_dispose__3;
    v12 = 0;
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__ATXWatchFaceConfigurationCollector_watchFaces__block_invoke;
    v6[3] = &unk_1E80C2080;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

void __48__ATXWatchFaceConfigurationCollector_watchFaces__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[5])
  {
    v3 = [v2[5] copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v7 = __atxlog_handle_lock_screen(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[ATXWatchFaceConfigurationCollector watchFaces]_block_invoke";
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: returning in-memory watchfaces", &v16, 0xCu);
    }
  }

  else
  {
    v8 = [v2 _queue_readWatchFacesFromDisk];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v12 = __atxlog_handle_lock_screen(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 40);
      v16 = 136315394;
      v17 = "[ATXWatchFaceConfigurationCollector watchFaces]_block_invoke";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%s: read watch faces from disk: %@", &v16, 0x16u);
    }

    v14 = [*(*(a1 + 32) + 40) copy];
    v15 = *(*(a1 + 40) + 8);
    v7 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

+ (id)_watchFaceFromJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = objectCopy;
    v6 = [v5 objectForKeyedSubscript:@"faceJSON"];
    v7 = [v5 objectForKeyedSubscript:@"selected"];
    bOOLValue = [v7 BOOLValue];

    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    if ((v9 & 1) == 0)
    {
      v17 = __atxlog_handle_lock_screen(v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[ATXWatchFaceConfigurationCollector _watchFaceFromJSONObject:];
      }

      v16 = 0;
      goto LABEL_32;
    }

    v30 = bOOLValue;
    v10 = v6;
    v11 = [v10 objectForKeyedSubscript:@"face type"];
    stringValue = [v11 stringValue];

    v13 = [v10 objectForKeyedSubscript:@"bundle id"];
    stringValue2 = [v13 stringValue];

    v14 = [v10 objectForKeyedSubscript:@"customization"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 objectForKeyedSubscript:@"customization"];
    }

    else
    {
      v15 = 0;
    }

    v18 = [v15 objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v15 objectForKeyedSubscript:@"content"];
    }

    else
    {
      v19 = 0;
    }

    v20 = [v15 objectForKeyedSubscript:@"color"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v15 objectForKeyedSubscript:@"color"];
    }

    else
    {
      v21 = 0;
    }

    if ([stringValue isEqualToString:@"astronomy"])
    {
      v22 = 1;
    }

    else if ([stringValue isEqualToString:@"spectrum-analog"])
    {
      v22 = 2;
    }

    else if ([stringValue isEqualToString:@"color"] & 1) != 0 || (objc_msgSend(stringValue, "isEqualToString:", @"color-rich"))
    {
      v22 = 10;
    }

    else if ([stringValue isEqualToString:@"photos"])
    {
      v22 = 3;
    }

    else if ([stringValue isEqualToString:@"pride"])
    {
      v22 = 4;
    }

    else if ([stringValue isEqualToString:@"pride analog"] & 1) != 0 || (objc_msgSend(stringValue, "isEqualToString:", @"pride analog rich"))
    {
      v22 = 11;
    }

    else if ([stringValue isEqualToString:@"big-numerals-analog"] && (objc_msgSend(v21, "isEqualToString:", @"multicolor gradient 1") & 1) != 0)
    {
      v22 = 14;
    }

    else if ([stringValue isEqualToString:@"big-numerals-digital"] && (objc_msgSend(v21, "isEqualToString:", @"multicolor gradient 1") & 1) != 0)
    {
      v22 = 15;
    }

    else
    {
      if (![stringValue isEqualToString:@"california"] || (objc_msgSend(v21, "isEqualToString:", @"style 10") & 1) == 0)
      {
        v29 = stringValue2;
        if ([stringValue2 length])
        {
          if ([stringValue2 isEqualToString:@"com.apple.NTKAegirFaceBundle"])
          {
            if ([v19 isEqualToString:@"earth"])
            {
              v22 = 7;
              goto LABEL_25;
            }

            if ([v19 isEqualToString:@"luna"])
            {
              v22 = 8;
              goto LABEL_25;
            }

            if ([v19 isEqualToString:@"orrery"])
            {
              v22 = 9;
              goto LABEL_25;
            }

            v29 = stringValue2;
            if ([v19 isEqualToString:@"random"])
            {
              v22 = 17;
              goto LABEL_25;
            }
          }

          if ([v29 isEqualToString:@"com.apple.NanoTimeKit.NTKPrideWeaveFaceBundle"])
          {
            v22 = 13;
            goto LABEL_25;
          }

          if ([v29 isEqualToString:@"com.apple.NTKLilypadFaceBundle"])
          {
            v22 = 12;
            goto LABEL_25;
          }

          if ([stringValue2 isEqualToString:@"com.apple.NTKRenegadeFaceBundle"])
          {
            v22 = 5;
            goto LABEL_25;
          }

          if ([stringValue2 isEqualToString:@"com.apple.NTKColtanFaceBundle"])
          {
            v22 = 6;
            goto LABEL_25;
          }
        }

        v22 = 0;
        goto LABEL_25;
      }

      v22 = 16;
    }

LABEL_25:

    v23 = [v10 objectForKeyedSubscript:@"complications"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      allValues = [v23 allValues];
      v25 = [allValues _pas_mappedArrayWithTransform:&__block_literal_global_211];
    }

    else
    {
      v25 = 0;
    }

    v26 = [ATXWatchFace alloc];
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
    }

    v16 = [(ATXWatchFace *)v26 initWithStyle:v22 complications:v27 selected:v30];

LABEL_32:
    goto LABEL_33;
  }

  v5 = __atxlog_handle_lock_screen(isKindOfClass);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXWatchFaceConfigurationCollector _watchFaceFromJSONObject:];
  }

  v16 = 0;
LABEL_33:

  return v16;
}

id __63__ATXWatchFaceConfigurationCollector__watchFaceFromJSONObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:@"app"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [&unk_1F3E60D78 objectForKeyedSubscript:v4];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v4;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_queue_readWatchFacesFromDisk
{
  dispatch_assert_queue_V2(self->_queue);
  fileCache = self->_fileCache;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v8 = [(ATXGenericFileBasedCache *)fileCache readSecureCodedObjectWithMaxValidAge:v7 allowableClasses:0 error:-1.0];

  return v8;
}

- (void)_queue_writeWatchFacesToDisk:(id)disk
{
  queue = self->_queue;
  diskCopy = disk;
  dispatch_assert_queue_V2(queue);
  [(ATXGenericFileBasedCache *)self->_fileCache storeSecureCodedObject:diskCopy error:0];
}

void __42__ATXWatchFaceConfigurationCollector_init__block_invoke_191_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[ATXWatchFaceConfigurationCollector init]_block_invoke";
  *&v8[12] = 2112;
  *&v8[14] = @"com.apple.nanotimekit.devicelibraryserver";
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, a1, a3, "%s: connection to %@ interrupted", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x1E69E9840]);
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, v0, v1, "%s: unable to grab remote object proxy: %@", v2, v3, v4, v5, v6);
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, v0, v1, "%s: error fetching library as JSON: %@", v2, v3, v4, v5, v6);
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, v0, v1, "%s: could not deserialize json: %@", v2, v3, v4, v5, v6);
}

void __60__ATXWatchFaceConfigurationCollector_refreshWithCompletion___block_invoke_195_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[ATXWatchFaceConfigurationCollector refreshWithCompletion:]_block_invoke";
  *&v8[12] = 2112;
  *&v8[14] = 0;
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, a1, a3, "%s: could not deserialize json: %@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x1E69E9840]);
}

+ (void)_watchFaceFromJSONObject:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, v0, v1, "%s: watch face JSON object is not a dictionary: %@", v2, v3, v4, v5, v6);
}

+ (void)_watchFaceFromJSONObject:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, v0, v1, "%s: faceJSON object is not a dictionary: %@", v2, v3, v4, v5, v6);
}

@end