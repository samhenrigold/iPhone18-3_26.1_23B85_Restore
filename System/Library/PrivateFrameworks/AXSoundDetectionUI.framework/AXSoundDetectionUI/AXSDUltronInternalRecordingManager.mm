@interface AXSDUltronInternalRecordingManager
+ (BOOL)_cleanupUltronFiles:(id)files;
+ (BOOL)isEnrolled;
+ (BOOL)wasPrompted;
+ (id)_directory;
+ (id)_retrieveFilesOlderThan:(double)than;
+ (id)defaults;
+ (void)_reduceFileDirectorySize;
+ (void)cleanupUltron;
+ (void)enroll;
+ (void)setPrompted;
+ (void)unenroll;
- (AXSDUltronInternalRecordingManager)initWithSampleLength:(double)length bufferSize:(double)size;
- (id)audioFileSettings;
- (id)getDictionaryForListenType;
- (void)_recordResultToFile:(id)file;
- (void)dealloc;
- (void)listenEngineFailedToStartWithError:(id)error;
- (void)saveDetectionResult:(id)result;
- (void)trackBuffer:(id)buffer atTime:(id)time;
@end

@implementation AXSDUltronInternalRecordingManager

- (AXSDUltronInternalRecordingManager)initWithSampleLength:(double)length bufferSize:(double)size
{
  v27.receiver = self;
  v27.super_class = AXSDUltronInternalRecordingManager;
  v6 = [(AXSDUltronInternalRecordingManager *)&v27 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.ax.ultron.file_write_q", 0);
    fileProcessingQueue = v6->_fileProcessingQueue;
    v6->_fileProcessingQueue = v7;

    v6->_sampleLength = length;
    v9 = [[AXSDRingBuffer alloc] initWithCount:vcvtpd_u64_f64(20.0 / (length * size))];
    audioRingBuffer = v6->_audioRingBuffer;
    v6->_audioRingBuffer = v9;

    v11 = objc_opt_new();
    currentDetections = v6->_currentDetections;
    v6->_currentDetections = v11;

    v13 = objc_opt_new();
    detectionResultCollection = v6->_detectionResultCollection;
    v6->_detectionResultCollection = v13;

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke;
    v25 = &unk_278BDD248;
    v26 = v6;
    AXPerformBlockOnMainThread();
    v15 = MEMORY[0x277CBEBB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke_2;
    v20[3] = &unk_278BDD270;
    v16 = v26;
    v21 = v16;
    v17 = [v15 scheduledTimerWithTimeInterval:1 repeats:v20 block:86400.0];
    cleanupTimer = v16->_cleanupTimer;
    v16->_cleanupTimer = v17;
  }

  return v6;
}

uint64_t __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke(uint64_t a1)
{
  v1 = objc_opt_class();

  return [v1 cleanupUltron];
}

void __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  AXPerformBlockOnMainThread();
}

uint64_t __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke_3(uint64_t a1)
{
  v1 = objc_opt_class();

  return [v1 cleanupUltron];
}

- (void)dealloc
{
  [(NSTimer *)self->_cleanupTimer invalidate];
  v3.receiver = self;
  v3.super_class = AXSDUltronInternalRecordingManager;
  [(AXSDUltronInternalRecordingManager *)&v3 dealloc];
}

+ (id)defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];

  return v2;
}

+ (BOOL)isEnrolled
{
  defaults = [self defaults];
  v3 = [defaults stringForKey:@"com.apple.accessibility.ultron.user_identifier_key"];
  v4 = v3 != 0;

  return v4;
}

+ (void)enroll
{
  defaults = [self defaults];
  v2 = [defaults stringForKey:@"com.apple.accessibility.ultron.user_identifier_key"];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)unenroll
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AXSDUltronInternalRecordingManager unenroll];
  }

  defaults = [self defaults];
  [defaults removeObjectForKey:@"com.apple.accessibility.ultron.user_identifier_key"];
}

+ (BOOL)wasPrompted
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"com.apple.accessibility.ultron.user_identifier_prompt_key"];

  return v3;
}

+ (void)setPrompted
{
  defaults = [self defaults];
  [defaults setBool:1 forKey:@"com.apple.accessibility.ultron.user_identifier_prompt_key"];

  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AXSDUltronInternalRecordingManager setPrompted];
  }
}

+ (void)cleanupUltron
{
  v14 = *MEMORY[0x277D85DE8];
  defaults = [objc_opt_class() defaults];
  v4 = [defaults objectForKey:@"com.apple.accessibility.ultron.last_cleanup_key"];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v5 dateByAddingTimeInterval:-86400.0];

  if (v4 && ([v4 laterDate:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v4))
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_INFO, "Not cleaning up Ultron Files - last cleanup was recent: %@", &v12, 0xCu);
    }
  }

  else
  {
    v8 = [self _retrieveFilesOlderThan:1209600.0];
    if ([v8 count])
    {
      [self _cleanupUltronFiles:v8];
    }

    [self _reduceFileDirectorySize];
    defaults2 = [self defaults];
    v10 = [MEMORY[0x277CBEAA8] now];
    [defaults2 setObject:v10 forKey:@"com.apple.accessibility.ultron.last_cleanup_key"];
  }
}

+ (id)_directory
{
  v10 = 1;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [self path];
  v5 = [defaultManager fileExistsAtPath:path isDirectory:&v10];

  if ((v5 & 1) == 0)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[AXSDUltronInternalRecordingManager _directory];
    }

    path2 = [self path];
    [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:0];
  }

  path3 = [self path];

  return path3;
}

+ (id)_retrieveFilesOlderThan:(double)than
{
  v28 = *MEMORY[0x277D85DE8];
  if (than <= 0.0)
  {
    thanCopy = than;
  }

  else
  {
    thanCopy = -than;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v22 = [date dateByAddingTimeInterval:thanCopy];

  _directory = [self _directory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager enumeratorAtPath:_directory];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    v12 = nextObject;
    *&v11 = 138412546;
    v21 = v11;
    do
    {
      v13 = [_directory stringByAppendingPathComponent:{v12, v21}];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = 0;
      v15 = [defaultManager2 attributesOfItemAtPath:v13 error:&v23];
      v16 = v23;
      fileCreationDate = [v15 fileCreationDate];

      if (v16)
      {
        v18 = AXLogUltron();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v25 = v13;
          v26 = 2112;
          v27 = v16;
          _os_log_error_impl(&dword_23D62D000, v18, OS_LOG_TYPE_ERROR, "Ultron cleanup: failed to find creation date for file %@. error: %@", buf, 0x16u);
        }
      }

      else if ([fileCreationDate compare:v22] == -1)
      {
        [v9 addObject:v13];
      }

      nextObject2 = [v8 nextObject];

      v12 = nextObject2;
    }

    while (nextObject2);
  }

  return v9;
}

- (void)trackBuffer:(id)buffer atTime:(id)time
{
  audioRingBuffer = self->_audioRingBuffer;
  timeCopy = time;
  bufferCopy = buffer;
  v8 = [[AXSDTimedAudioBuffer alloc] initWithBuffer:bufferCopy atTime:timeCopy];

  [(AXSDRingBuffer *)audioRingBuffer addObject:v8];
}

- (void)listenEngineFailedToStartWithError:(id)error
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AXSDUltronInternalRecordingManager listenEngineFailedToStartWithError:];
  }
}

+ (BOOL)_cleanupUltronFiles:(id)files
{
  v27 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [filesCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v19;
    v9 = 1;
    *&v5 = 138412546;
    v16 = v5;
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(filesCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v17 = v11;
        [defaultManager removeItemAtPath:v12 error:&v17];
        v7 = v17;

        if (v7)
        {
          v14 = AXLogUltron();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v23 = v12;
            v24 = 2112;
            v25 = v7;
            _os_log_error_impl(&dword_23D62D000, v14, OS_LOG_TYPE_ERROR, "Ultron cleanup: failed to remove: %@. Error: %@", buf, 0x16u);
          }

          v9 = 0;
        }

        ++v10;
        v11 = v7;
      }

      while (v6 != v10);
      v6 = [filesCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (void)saveDetectionResult:(id)result
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  v6 = [(NSMutableDictionary *)self->_detectionResultCollection objectForKey:identifier];

  if (!v6)
  {
    detectionResultCollection = self->_detectionResultCollection;
    v8 = [[AXSDRingBuffer alloc] initWithCount:[(AXSDRingBuffer *)self->_audioRingBuffer count]];
    [(NSMutableDictionary *)detectionResultCollection setObject:v8 forKey:identifier];
  }

  v9 = [(NSMutableDictionary *)self->_detectionResultCollection objectForKey:identifier];
  [v9 addObject:resultCopy];

  if ([resultCopy detected])
  {
    v10 = [(NSMutableDictionary *)self->_currentDetections objectForKey:identifier];

    if (!v10)
    {
      v11 = AXLogUltron();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(AXSDUltronInternalRecordingManager *)identifier saveDetectionResult:resultCopy];
      }

      v12 = MEMORY[0x277CBEBB8];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__AXSDUltronInternalRecordingManager_saveDetectionResult___block_invoke;
      v15[3] = &unk_278BDD298;
      v15[4] = self;
      v16 = resultCopy;
      v13 = identifier;
      v17 = v13;
      v14 = [v12 scheduledTimerWithTimeInterval:0 repeats:v15 block:10.0];
      [(NSMutableDictionary *)self->_currentDetections setObject:v14 forKey:v13];
    }
  }
}

void __58__AXSDUltronInternalRecordingManager_saveDetectionResult___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 _recordResultToFile:v4];
  [*(a1[4] + 48) removeObjectForKey:a1[6]];
  [v5 invalidate];
}

- (void)_recordResultToFile:(id)file
{
  fileCopy = file;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDUltronInternalRecordingManager _recordResultToFile:fileCopy];
  }

  content = [(AXSDRingBuffer *)self->_audioRingBuffer content];
  ax_deepMutableCopy = [(NSMutableDictionary *)self->_detectionResultCollection ax_deepMutableCopy];
  fileProcessingQueue = self->_fileProcessingQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke;
  v12[3] = &unk_278BDD2E8;
  v13 = fileCopy;
  selfCopy = self;
  v15 = ax_deepMutableCopy;
  v16 = content;
  v9 = content;
  v10 = ax_deepMutableCopy;
  v11 = fileCopy;
  dispatch_async(fileProcessingQueue, v12);
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke(id *a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v1 = a1 + 4;
  v2 = [a1[4] identifier];
  v3 = [objc_opt_class() _directory];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSince1970];
  v7 = [v4 stringWithFormat:@"%ld", v6];

  v81 = v2;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v2, v7];
  v9 = [v8 stringByAppendingPathExtension:@"wav"];
  v83 = v8;
  v10 = [v8 stringByAppendingPathExtension:@"txt"];
  v11 = MEMORY[0x277CBEBC0];
  v12 = [v3 stringByAppendingPathComponent:v9];
  v13 = [v11 fileURLWithPath:v12];

  v14 = [v3 stringByAppendingPathComponent:v10];
  v15 = objc_alloc(MEMORY[0x277CB8398]);
  v16 = [v1[1] audioFileSettings];
  v17 = [v15 initForWriting:v13 settings:v16 commonFormat:1 interleaved:1 error:0];

  v18 = v1[2];
  v19 = [*v1 identifier];
  v20 = [v18 objectForKey:v19];

  v74 = v20;
  v21 = [v20 content];
  v84 = [v21 reverseObjectEnumerator];

  v22 = vcvtpd_s64_f64(10.0 / *(v1[1] + 1));
  v75 = v14;
  v82 = v17;
  if (!*v1)
  {
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    if (v22 > 0)
    {
      v92 = 0;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  objc_msgSend_timeRange(*v1);
  v23 = *v1;
  if (v124 >= v22)
  {
    if (v23)
    {
      objc_msgSend_timeRange(v23);
      v24 = v121;
      v23 = *v1;
      goto LABEL_10;
    }

LABEL_9:
    v23 = 0;
    v24 = 0;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
LABEL_10:
    v92 = v24 - v22;
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_13:
    v25 = 0;
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
    goto LABEL_14;
  }

  v92 = 0;
  if (!v23)
  {
    goto LABEL_13;
  }

LABEL_11:
  objc_msgSend_timeRange(v23);
  v25 = v118;
  if (*v1)
  {
    objc_msgSend_timeRange(*v1);
    v26 = *(&v116 + 1);
    goto LABEL_15;
  }

LABEL_14:
  v26 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
LABEL_15:
  v27 = 0;
  v28 = v26 + v25;
  v79 = v7;
  v80 = v3;
  v77 = v10;
  v78 = v9;
  v76 = v13;
  while (1)
  {
    v29 = [v84 nextObject];

    v27 = v29;
    if (!v29)
    {
      break;
    }

    if (([v29 detected] & 1) != 0 || v29 == *v1)
    {
      objc_msgSend_timeRange(v29);
      v73 = v29;
      objc_msgSend_timeRange(v29);
      v28 = v113 + v114[0];
      goto LABEL_21;
    }
  }

  v73 = 0;
LABEL_21:
  v91 = v28 + v22;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v30 = a1[7];
  v31 = [v30 countByEnumeratingWithState:&v109 objects:v129 count:16];
  if (!v31)
  {
    goto LABEL_32;
  }

  v32 = v31;
  v33 = *v110;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v110 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = *(*(&v109 + 1) + 8 * i);
      v36 = [v35 time];
      if ([v36 sampleTime] >= v92)
      {
        v37 = [v35 time];
        v38 = [v37 sampleTime];

        if (v38 > v91)
        {
          continue;
        }

        v36 = [v35 buffer];
        [v82 writeFromBuffer:v36 error:0];
      }
    }

    v32 = [v30 countByEnumeratingWithState:&v109 objects:v129 count:16];
  }

  while (v32);
LABEL_32:

  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = [a1[6] allKeys];
  v87 = [obj countByEnumeratingWithState:&v105 objects:v128 count:16];
  if (v87)
  {
    v86 = *v106;
    do
    {
      v40 = 0;
      do
      {
        if (*v106 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v88 = v40;
        v41 = *(*(&v105 + 1) + 8 * v40);
        v42 = [a1[6] objectForKey:v41];
        v43 = [v42 content];

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v90 = v43;
        v44 = [v90 countByEnumeratingWithState:&v101 objects:v127 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v102;
          do
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v102 != v46)
              {
                objc_enumerationMutation(v90);
              }

              v48 = *(*(&v101 + 1) + 8 * j);
              if (v48)
              {
                objc_msgSend_timeRange(*(*(&v101 + 1) + 8 * j));
                v49 = v98;
              }

              else
              {
                v49 = 0;
                v99 = 0u;
                v100 = 0u;
                v98 = 0u;
              }

              v50 = v49 - v92;
              if (v49 >= v92 && v49 <= v91)
              {
                v52 = [v39 objectForKeyedSubscript:v41];

                if (!v52)
                {
                  v53 = [a1[5] getDictionaryForListenType];
                  [v39 setValue:v53 forKey:v41];
                }

                [v48 confidence];
                v55 = v54;
                [v48 confidence];
                if (v56 < 0.001)
                {
                  v55 = 0.0;
                }

                v57 = [v39 objectForKey:v41];
                v58 = [v57 objectForKey:@"confidence"];
                v59 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
                [v58 addObject:v59];

                v60 = [v39 objectForKey:v41];
                v61 = [v60 objectForKey:@"timestamp"];
                v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
                [v61 addObject:v62];
              }
            }

            v45 = [v90 countByEnumeratingWithState:&v101 objects:v127 count:16];
          }

          while (v45);
        }

        v40 = v88 + 1;
      }

      while (v88 + 1 != v87);
      v87 = [obj countByEnumeratingWithState:&v105 objects:v128 count:16];
    }

    while (v87);
  }

  v63 = MGCopyAnswer();
  v64 = [MEMORY[0x277CBEAA8] date];
  v65 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v65 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v66 = [v65 stringFromDate:v64];
  v67 = [v82 length];

  v68 = objc_opt_new();
  v93 = v63;
  [v68 setSafeObject:v63 forKey:@"buildVersion"];
  [v68 setSafeObject:&unk_284FB2B88 forKey:@"ultronVersion"];
  [v68 setSafeObject:v81 forKey:@"listenType"];
  [v68 setSafeObject:v83 forKey:@"fileName"];
  [v68 setSafeObject:v66 forKey:@"audioStringDate"];
  [v68 setSafeObject:v39 forKey:@"confidenceValues"];
  [v68 setSafeObject:&unk_284FB2BA0 forKey:@"userFeedback"];
  v69 = [MEMORY[0x277CCABB0] numberWithLongLong:v67];
  [v68 setSafeObject:v69 forKey:@"numberOfSamples"];

  v70 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v68 options:1 error:0];
  if (v70)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83;
    block[3] = &unk_278BDD2C0;
    v71 = v75;
    v96 = v75;
    v97 = v70;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v72 = v96;
  }

  else
  {
    v72 = AXLogUltron();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_cold_1(v1, v72);
    }

    v71 = v75;
  }

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_84;
  v94[3] = &unk_278BDD248;
  v94[4] = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v94);
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (a1 + 32);
  [v2 createFileAtPath:v3 contents:v4 attributes:0];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:*v5];

  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83_cold_1(v7, v5, v8);
  }
}

uint64_t __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_84(uint64_t a1)
{
  v1 = objc_opt_class();

  return [v1 _reduceFileDirectorySize];
}

- (id)getDictionaryForListenType
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 setValue:v3 forKey:@"timestamp"];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 setValue:v4 forKey:@"confidence"];

  return v2;
}

- (id)audioFileSettings
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8288];
  v6[0] = *MEMORY[0x277CB8280];
  v6[1] = v2;
  v7[0] = &unk_284FB2BB8;
  v7[1] = &unk_284FB2BD0;
  v3 = *MEMORY[0x277CB82B0];
  v6[2] = *MEMORY[0x277CB82A0];
  v6[3] = v3;
  v7[2] = MEMORY[0x277CBEC38];
  v7[3] = &unk_284FB2BE8;
  v6[4] = *MEMORY[0x277CB82E0];
  v7[4] = &unk_284FB2C00;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

+ (void)_reduceFileDirectorySize
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Failed to get files list. Giving up on directory size reduction. Error: %@", &v3, 0xCu);
}

uint64_t __62__AXSDUltronInternalRecordingManager__reduceFileDirectorySize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 stringByAppendingPathComponent:a2];
  v8 = [*(a1 + 32) stringByAppendingPathComponent:v6];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v9 attributesOfItemAtPath:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = *(*(a1 + 40) + 8);
  v20 = *(v13 + 40);
  v14 = [v12 attributesOfItemAtPath:v8 error:&v20];
  objc_storeStrong((v13 + 40), v20);

  v15 = *MEMORY[0x277CCA108];
  v16 = [v11 objectForKey:*MEMORY[0x277CCA108]];
  v17 = [v14 objectForKey:v15];
  v18 = [v17 compare:v16];

  return v18;
}

- (void)saveDetectionResult:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 confidence];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_recordResultToFile:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Unalbe to create JSON to write file for detection %@", v4, 0xCu);
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83_cold_1(char a1, uint64_t *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = v3;
  _os_log_debug_impl(&dword_23D62D000, log, OS_LOG_TYPE_DEBUG, "Wrote data %d at %@.", v4, 0x12u);
}

@end