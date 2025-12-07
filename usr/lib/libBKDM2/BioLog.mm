@interface BioLog
+ (void)cancelDiagnosticLogsRemoval;
+ (void)initialize;
+ (void)removeBioLogAsync;
+ (void)removeDiagnosticLogs;
+ (void)removeDiagnosticLogsImmediately;
+ (void)scheduleDiagnosticLogsRemoval;
- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes purgeable:(BOOL)purgeable;
- (id)computeAllVsAllMatrixFromScoreDataArray:(id)array sequenceNumber:(unsigned __int16)number;
- (id)eventPathWithName:(id)name date:(id)date;
- (id)initForInternalLogging:(BOOL)logging;
- (id)logLogContextWithDate:(id)date;
- (id)logNameFromDate:(id)date;
- (id)sequencePathForId:(id *)id;
- (id)sequencePathForId:(id *)id andSubdirectory:(id)subdirectory;
- (void)applyRetentionPolicy;
- (void)extractFrameDebug:(id *)debug data:(id)data;
- (void)logAllVsAllWithDate:(id)date;
- (void)logCameraFrame:(id *)frame sensorRawData:(id)data metaData:(id)metaData;
- (void)logCameraFrame:(id)frame withBuffers:(id)buffers;
- (void)logData:(id)data withContext:(id *)context;
- (void)logFrameDebug:(id)debug withBuffer:(id)buffer;
- (void)logInternalCameraFrame:(id *)frame sensorRawData:(id)data metaData:(id)metaData;
- (void)logPasscodeValidatedWithUserID:(unsigned int)d;
- (void)logRemoveIdentity:(id)identity withTemplateListData:(id)data templateSize:(unint64_t)size client:(id)client isPO:(BOOL)o;
- (void)logSecureFaceDetectInfo;
- (void)logSecureFaceDetectStart:(id *)start;
- (void)logSecureFaceDetectState:(int)state;
- (void)logSecureFaceDetectStop;
- (void)logSecureFrameMeta:(id)meta timestamp:(id)timestamp;
- (void)logSequenceDebug:(id)debug withContext:(id *)context;
- (void)logSequenceInfo:(id)info withContext:(id *)context orientation:(id *)orientation identities:(id)identities;
- (void)logTemplate:(id)template withContext:(id *)context;
- (void)logTemplate:(id)template withSequenceNumber:(unsigned __int16)number date:(id)date index:(unsigned __int8)index toPath:(id)path isPO:(BOOL)o;
- (void)logTemplateList:(id)list withContext:(id *)context isPO:(BOOL)o;
- (void)logTemplateList:(id)list withTemplateSize:(unint64_t)size sequenceNumber:(unsigned __int16)number date:(id)date toPath:(id)path isPO:(BOOL)o;
- (void)scheduleRetentionPolicy;
@end

@implementation BioLog

+ (void)initialize
{
  v2 = os_log_create("com.apple.BiometricKit", "BioLog");
  v3 = __osLog_BioLog;
  __osLog_BioLog = v2;

  v4 = __osLog_BioLog;
  if (!__osLog_BioLog)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      +[BioLog initialize];
    }

    v4 = __osLog_BioLog;
  }

  objc_storeStrong(&__osLogTrace_BioLog, v4);
  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  [mEMORY[0x29EDBFD50] registerDefaults:&unk_2A1E039D0];
}

- (id)initForInternalLogging:(BOOL)logging
{
  loggingCopy = logging;
  v77[2] = *MEMORY[0x29EDCA608];
  v4 = [(BioLog *)self init];
  v5 = v4;
  v6 = MEMORY[0x29EDCA988];
  if (!v4)
  {
    goto LABEL_30;
  }

  v4->_internal = loggingCopy;
  v7 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  fileNameFormatter = v5->_fileNameFormatter;
  v5->_fileNameFormatter = v7;

  [(NSDateFormatter *)v5->_fileNameFormatter setDateFormat:@"yyyy_MM_dd_HH_mm_ss_SSS"];
  v9 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  milisecondsFormatter = v5->_milisecondsFormatter;
  v5->_milisecondsFormatter = v9;

  [(NSDateFormatter *)v5->_milisecondsFormatter setDateFormat:@"SSS"];
  v12 = *MEMORY[0x29EDB9E80];
  v76[0] = *MEMORY[0x29EDB9E58];
  v11 = v76[0];
  v76[1] = v12;
  v13 = *MEMORY[0x29EDB9E88];
  v77[0] = @"mobile";
  v77[1] = v13;
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  fileAttributes = v5->_fileAttributes;
  v5->_fileAttributes = v14;

  v74[0] = v11;
  v74[1] = v12;
  v16 = *MEMORY[0x29EDB9E70];
  v75[0] = @"mobile";
  v75[1] = v16;
  v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  fileAttributesProtected = v5->_fileAttributesProtected;
  v5->_fileAttributesProtected = v17;

  if (v5->_internal)
  {
    v72[0] = v11;
    v72[1] = v12;
    v19 = *MEMORY[0x29EDB9E78];
    v73[0] = @"mobile";
    v73[1] = v19;
    v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
  }

  else
  {
    v20 = v5->_fileAttributesProtected;
  }

  fileAttributesAutoUpload = v5->_fileAttributesAutoUpload;
  v5->_fileAttributesAutoUpload = v20;

  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_create("com.apple.BioLog.writing", v22);
  dispatchQueueWriting = v5->_dispatchQueueWriting;
  v5->_dispatchQueueWriting = v23;

  if (v5->_dispatchQueueWriting)
  {
    v25 = dispatch_queue_create("com.apple.BioLog.frameDebugExtra", 0);
    frameDebugExtraQueue = v5->_frameDebugExtraQueue;
    v5->_frameDebugExtraQueue = v25;

    if (v5->_frameDebugExtraQueue)
    {
      v27 = dispatch_semaphore_create(0);
      frameDebugExtraSemaphore = v5->_frameDebugExtraSemaphore;
      v5->_frameDebugExtraSemaphore = v27;

      if (v5->_frameDebugExtraSemaphore)
      {
        v29 = RETENTION_QUEUE_LABEL;
        v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
        v31 = dispatch_queue_create(v29, v30);
        retentionQueue = v5->_retentionQueue;
        v5->_retentionQueue = v31;

        if (v5->_retentionQueue)
        {
          v5->_retentionNewItemsSize = 0;
          date = [MEMORY[0x29EDB8DB0] date];
          v34 = [(BioLog *)v5 logNameFromDate:date];
          rootPath = v5->_rootPath;
          if (loggingCopy)
          {
            v5->_rootPath = @"/Library/Logs/BioLog";
          }

          else
          {
            v5->_rootPath = @"/var/mobile/Library/BioLogC";

            [objc_opt_class() cancelDiagnosticLogsRemoval];
            if (!isInternalBuild() || ([MEMORY[0x29EDBFD50] sharedInstance], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "BOOLForKey:", @"bioLogDataVaultDisabled"), v36, (v37 & 1) == 0))
            {
              [(NSString *)v5->_rootPath UTF8String];
              if (rootless_check_datavault_flag())
              {
                [(NSString *)v5->_rootPath UTF8String];
                v38 = rootless_mkdir_datavault();
                if (v38)
                {
                  [(BioLog *)v38 initForInternalLogging:v5];
                  goto LABEL_46;
                }

                chown([(NSString *)v5->_rootPath UTF8String], 0x1F5u, 0x1F5u);
              }
            }
          }

          v39 = [(NSString *)v5->_rootPath stringByAppendingPathComponent:v34];
          logPath = v5->_logPath;
          v5->_logPath = v39;

          defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
          v42 = [defaultManager fileExistsAtPath:v5->_logPath];

          if (v42)
          {
            goto LABEL_19;
          }

          defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
          v44 = [defaultManager2 createDirectoryAtPath:v5->_logPath withIntermediateDirectories:1 attributes:v5->_fileAttributes error:0];

          if (v44)
          {
            [BLRetention setPurgeableAtPath:v5->_logPath directory:1];
LABEL_19:
            v45 = [(NSString *)v5->_rootPath stringByAppendingPathComponent:@"Current"];
            defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
            [defaultManager3 removeItemAtPath:v45 error:0];

            defaultManager4 = [MEMORY[0x29EDB9FB8] defaultManager];
            v48 = [defaultManager4 createSymbolicLinkAtPath:v45 withDestinationPath:v34 error:0];

            if ((v48 & 1) == 0)
            {
              v49 = (__osLog_BioLog ? __osLog_BioLog : v6);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v68[0]) = 0;
                _os_log_impl(&dword_296CA4000, v49, OS_LOG_TYPE_ERROR, "Log symlink creation failed! Don't trust 'BioLog/Current'.\n", v68, 2u);
              }
            }

            if (v5->_internal)
            {
              v50 = [(BioLog *)v5 logLogContextWithDate:date];
              logContextBasePath = v5->_logContextBasePath;
              v5->_logContextBasePath = v50;

              v52 = objc_opt_new();
              scoreDataArray = v5->_scoreDataArray;
              v5->_scoreDataArray = v52;

              *v5->_computedSequenceNumberPair = 0;
              v5->_lastComputedSequenceNumber = 0;
              mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
              v55 = [mEMORY[0x29EDBFD50] unsignedIntegerForKey:@"bioLogDiagnosticPipelineSubmitPeriod"];

              if (v55)
              {
                v56 = objc_alloc_init(BioLogDiagnosticPipeline);
                diagnosticPipeline = v5->_diagnosticPipeline;
                v5->_diagnosticPipeline = v56;

                [(BioLogDiagnosticPipeline *)v5->_diagnosticPipeline setSubmitPeriod:v55];
                mEMORY[0x29EDBFD50]2 = [MEMORY[0x29EDBFD50] sharedInstance];
                v59 = [mEMORY[0x29EDBFD50]2 stringForKey:@"bioLogDiagnosticPipelineEnvironment"];
                [(BioLogDiagnosticPipeline *)v5->_diagnosticPipeline setEnvironment:v59];

                [(BioLogDiagnosticPipeline *)v5->_diagnosticPipeline setScheduleDelay:7];
              }
            }

            defaultManager5 = [MEMORY[0x29EDC6C98] defaultManager];
            v61 = MEMORY[0x29EDC6C90];
            v62 = [MEMORY[0x29EDB8E70] fileURLWithPath:v5->_rootPath];
            v63 = [v61 pathInfoWithURL:v62];
            v71 = v63;
            v64 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v71 count:1];
            [defaultManager5 registerPaths:v64 forBundleID:@"com.apple.biometrickitd" completionHandler:&__block_literal_global_0];

            goto LABEL_29;
          }

          [BioLog initForInternalLogging:v5];
LABEL_46:
          v5 = 0;
LABEL_29:

          goto LABEL_30;
        }

        [BioLog initForInternalLogging:v5];
      }

      else
      {
        [BioLog initForInternalLogging:v5];
      }
    }

    else
    {
      [BioLog initForInternalLogging:v5];
    }
  }

  else
  {
    [BioLog initForInternalLogging:v5];
  }

  v5 = 0;
LABEL_30:
  if (__osLogTrace_BioLog)
  {
    v65 = __osLogTrace_BioLog;
  }

  else
  {
    v65 = v6;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v66 = v5->_logPath;
    }

    else
    {
      v66 = 0;
    }

    v68[0] = 67109378;
    v68[1] = v5 != 0;
    v69 = 2112;
    v70 = v66;
    _os_log_impl(&dword_296CA4000, v65, OS_LOG_TYPE_DEFAULT, "initToPath -> (%d) (_ %@)\n", v68, 0x12u);
  }

  return v5;
}

+ (void)removeDiagnosticLogsImmediately
{
  v23 = *MEMORY[0x29EDCA608];
  [MEMORY[0x29EDB9FB8] defaultManager];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = v17 = 0u;
  v2 = [v12 contentsOfDirectoryAtPath:@"/var/mobile/Library/BioLogC" error:0];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [@"/var/mobile/Library/BioLogC" stringByAppendingPathComponent:*(*(&v14 + 1) + 8 * i)];
        defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
        v13 = 0;
        v9 = [defaultManager removeItemAtPath:v7 error:&v13];
        v10 = v13;

        if ((v9 & 1) == 0)
        {
          if (__osLog_BioLog)
          {
            v11 = __osLog_BioLog;
          }

          else
          {
            v11 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v19 = v7;
            v20 = 2112;
            v21 = v10;
            _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "Could not remove BioLog directory %@: %@\n", buf, 0x16u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }
}

+ (void)removeDiagnosticLogs
{
  [__removalRequestDate timeIntervalSinceNow];
  if (v3 < -2592000.0)
  {

    [self removeDiagnosticLogsImmediately];
  }
}

+ (void)removeBioLogAsync
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [@"/Library/Logs/BioLog" stringByAppendingString:@"_DeleteMe"];
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v10 = 0;
  v4 = [defaultManager moveItemAtPath:@"/Library/Logs/BioLog" toPath:v2 error:&v10];
  v5 = v10;

  if (v4)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __27__BioLog_removeBioLogAsync__block_invoke;
    v8[3] = &unk_29EE54570;
    v9 = v2;
    dispatch_async(v6, v8);
  }

  else
  {
    if (__osLog_BioLog)
    {
      v7 = __osLog_BioLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v12 = @"/Library/Logs/BioLog";
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_ERROR, "Could not rename BioLog directory %@ to %@: %@\n", buf, 0x20u);
    }
  }
}

void __27__BioLog_removeBioLogAsync__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    if (__osLog_BioLog)
    {
      v6 = __osLog_BioLog;
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = @"/Library/Logs/BioLog";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "Could not remove BioLog directory %@: %@\n", buf, 0x16u);
    }
  }
}

+ (void)scheduleDiagnosticLogsRemoval
{
  if (__removalRequestDate)
  {

    [self removeDiagnosticLogs];
  }

  else
  {
    mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
    v4 = [mEMORY[0x29EDBFD50] objectOfClass:objc_opt_class() forKey:@"bioLogRemovalRequestDate"];

    v5 = MEMORY[0x29EDB8DB0];
    if (v4)
    {
      [v4 doubleValue];
      v6 = [v5 dateWithTimeIntervalSince1970:?];
      v7 = __removalRequestDate;
      __removalRequestDate = v6;
    }

    else
    {
      date = [MEMORY[0x29EDB8DB0] date];
      v9 = __removalRequestDate;
      __removalRequestDate = date;

      mEMORY[0x29EDBFD50]2 = [MEMORY[0x29EDBFD50] sharedInstance];
      v11 = MEMORY[0x29EDBA070];
      [__removalRequestDate timeIntervalSince1970];
      v13 = [v11 numberWithUnsignedInteger:v12];
      [mEMORY[0x29EDBFD50]2 setObject:v13 forKey:@"bioLogRemovalRequestDate"];

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __39__BioLog_scheduleDiagnosticLogsRemoval__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = self;
      dispatch_async(MEMORY[0x29EDCA578], block);
    }
  }
}

+ (void)cancelDiagnosticLogsRemoval
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_scheduleDiagnosticLogsRemoval object:0];
  v2 = __removalRequestDate;
  __removalRequestDate = 0;

  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  [mEMORY[0x29EDBFD50] setObject:0 forKey:@"bioLogRemovalRequestDate"];
}

- (id)logNameFromDate:(id)date
{
  v3 = MEMORY[0x29EDB9F78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];
  v6 = MEMORY[0x29EDBA0F8];
  [dateCopy timeIntervalSince1970];
  v8 = v7;
  v9 = [v5 stringFromDate:dateCopy];

  v10 = [v6 stringWithFormat:@"%s%ld_%@%s", "BL_", v8, v9, &unk_296D32C0B];

  return v10;
}

- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes purgeable:(BOOL)purgeable
{
  purgeableCopy = purgeable;
  pathCopy = path;
  contentsCopy = contents;
  v12 = MEMORY[0x29EDB9FB8];
  attributesCopy = attributes;
  defaultManager = [v12 defaultManager];
  v15 = [defaultManager createFileAtPath:pathCopy contents:contentsCopy attributes:attributesCopy];

  if (v15)
  {
    if (purgeableCopy)
    {
      [BLRetention setPurgeableAtPath:pathCopy directory:0];
    }

    self->_retentionNewItemsSize += [contentsCopy length];
  }

  return v15;
}

- (id)logLogContextWithDate:(id)date
{
  v27[4] = *MEMORY[0x29EDCA608];
  dateCopy = date;
  v26[0] = @"biolog_file_type";
  v26[1] = @"version";
  v27[0] = @"log";
  v27[1] = &unk_2A1E037F8;
  v26[2] = @"epoch";
  v5 = MEMORY[0x29EDBA070];
  [dateCopy timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v27[2] = v6;
  v26[3] = @"log_data";
  v24[0] = @"device_serial_number";
  v7 = +[BLHelper deviceSerialNumberString];
  v24[1] = @"system_build_version";
  v25[0] = v7;
  v8 = +[BLHelper buildVersionString];
  v25[1] = v8;
  v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[3] = v9;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  if (__osLog_BioLog)
  {
    v11 = __osLog_BioLog;
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = +[BLHelper deviceSerialNumberString];
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "logLogContextWithDate device_serial_number %@\n", buf, 0xCu);
  }

  v14 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v10 options:3 error:0];
  if (!v14)
  {
    [BioLog logLogContextWithDate:];
  }

  v15 = MEMORY[0x29EDBA0F8];
  [dateCopy timeIntervalSince1970];
  v17 = [v15 stringWithFormat:@"%s%ld", "BL_", v16];
  v18 = [(NSString *)self->_logPath stringByAppendingPathComponent:v17];
  v19 = [v18 stringByAppendingString:@".json"];
  v20 = [(BioLog *)self createFileAtPath:v19 contents:v14 attributes:self->_fileAttributesProtected purgeable:1];

  if (!v20)
  {
    [BioLog logLogContextWithDate:];
  }

  return v18;
}

- (void)logAllVsAllWithDate:(id)date
{
  v56[2] = *MEMORY[0x29EDCA608];
  dateCopy = date;
  if (!self->_allVsAllReachedLimit && self->_logContextBasePath)
  {
    if (!self->_allVsAllScoreDict)
    {
      v5 = objc_alloc(MEMORY[0x29EDB8E00]);
      v55[0] = @"all_vs_all_ir";
      v55[1] = @"all_vs_all_depth";
      v56[0] = MEMORY[0x29EDB8E90];
      v56[1] = MEMORY[0x29EDB8E90];
      v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v7 = [v5 initWithDictionary:v6];
      allVsAllScoreDict = self->_allVsAllScoreDict;
      self->_allVsAllScoreDict = v7;

      v9 = objc_opt_new();
      allVsAllLogFileArray = self->_allVsAllLogFileArray;
      self->_allVsAllLogFileArray = v9;
    }

    v11 = self->_computedSequenceNumberPair[0];
    if (v11 == self->_sequenceNumber)
    {
      v11 = self->_computedSequenceNumberPair[1];
    }

    if (v11 != self->_lastComputedSequenceNumber)
    {
      self->_lastComputedSequenceNumber = v11;
      v12 = objc_alloc(MEMORY[0x29EDB8DE8]);
      v13 = [(NSMutableDictionary *)self->_allVsAllScoreDict objectForKeyedSubscript:@"all_vs_all_ir"];
      v14 = [v12 initWithArray:v13];

      v15 = objc_alloc(MEMORY[0x29EDB8DE8]);
      v16 = [(NSMutableDictionary *)self->_allVsAllScoreDict objectForKeyedSubscript:@"all_vs_all_depth"];
      v17 = [v15 initWithArray:v16];

      if ([v14 count] <= 0x31 && objc_msgSend(v17, "count") <= 0x31 && -[NSMutableArray count](self->_scoreDataArray, "count") < 0x64)
      {
        v22 = [(NSMutableArray *)self->_scoreDataArray sortedArrayUsingComparator:&__block_literal_global_158];
        v45 = [MEMORY[0x29EDBA0A8] predicateWithFormat:@"isIr == TRUE"];
        v44 = [v22 filteredArrayUsingPredicate:?];
        v43 = [BioLog computeAllVsAllMatrixFromScoreDataArray:"computeAllVsAllMatrixFromScoreDataArray:sequenceNumber:" sequenceNumber:?];
        [v14 addObjectsFromArray:?];
        v23 = [v14 copy];
        [(NSMutableDictionary *)self->_allVsAllScoreDict setObject:v23 forKeyedSubscript:@"all_vs_all_ir"];

        [MEMORY[0x29EDBA0A8] predicateWithFormat:@"isIr == FALSE"];
        v42 = v46 = v22;
        v41 = [v22 filteredArrayUsingPredicate:?];
        v40 = [BioLog computeAllVsAllMatrixFromScoreDataArray:"computeAllVsAllMatrixFromScoreDataArray:sequenceNumber:" sequenceNumber:?];
        [v17 addObjectsFromArray:?];
        v24 = [v17 copy];
        [(NSMutableDictionary *)self->_allVsAllScoreDict setObject:v24 forKeyedSubscript:@"all_vs_all_depth"];

        v25 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:self->_allVsAllScoreDict options:3 error:0];
        if (!v25)
        {
          [BioLog logAllVsAllWithDate:];
        }

        v47 = v14;
        v26 = MEMORY[0x29EDBA0F8];
        logContextBasePath = self->_logContextBasePath;
        [dateCopy timeIntervalSince1970];
        v38 = [v26 stringWithFormat:@"%@_%ld_all_vs_all%@", logContextBasePath, (v28 * 1000.0), @".json"];
        v39 = v25;
        if (![BioLog createFileAtPath:"createFileAtPath:contents:attributes:purgeable:" contents:? attributes:? purgeable:?])
        {
          [BioLog logAllVsAllWithDate:];
        }

        v29 = [(NSMutableArray *)self->_allVsAllLogFileArray copy];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v30 = v29;
        v31 = [v30 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v50;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v50 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v49 + 1) + 8 * i);
              defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
              v48 = 0;
              [defaultManager removeItemAtPath:v35 error:&v48];
              v37 = v48;

              if (!v37)
              {
                [(NSMutableArray *)self->_allVsAllLogFileArray removeObject:v35];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v32);
        }

        [(NSMutableArray *)self->_allVsAllLogFileArray addObject:v38];
        v14 = v47;
      }

      else
      {
        self->_allVsAllReachedLimit = 1;
        scoreDataArray = self->_scoreDataArray;
        self->_scoreDataArray = 0;

        v19 = self->_allVsAllScoreDict;
        self->_allVsAllScoreDict = 0;

        v20 = self->_allVsAllLogFileArray;
        self->_allVsAllLogFileArray = 0;

        if (__osLog_BioLog)
        {
          v21 = __osLog_BioLog;
        }

        else
        {
          v21 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_DEFAULT, "allVsAll Reached Limit! Disabled.\n", buf, 2u);
        }
      }
    }
  }
}

uint64_t __30__BioLog_logAllVsAllWithDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 sequenceNumber];
  if (v6 == [v4 sequenceNumber])
  {
    v7 = [v5 frameNumber];

    v8 = [v4 frameNumber];
    v9 = [v7 compare:v8];
  }

  else
  {
    v10 = [v5 sequenceNumber];

    if (v10 < [v4 sequenceNumber])
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)applyRetentionPolicy
{
  if ((applyRetentionPolicy_running & 1) == 0)
  {
    retentionQueue = self->_retentionQueue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __30__BioLog_applyRetentionPolicy__block_invoke;
    block[3] = &unk_29EE54570;
    block[4] = self;
    dispatch_async(retentionQueue, block);
  }
}

void __30__BioLog_applyRetentionPolicy__block_invoke(uint64_t a1)
{
  v9 = os_transaction_create();
  applyRetentionPolicy_running = 1;
  *(*(a1 + 32) + 112) = 1;
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 8) == 1)
  {
    v3 = [MEMORY[0x29EDBFD50] sharedInstance];
    v4 = [v3 numberForKey:@"bioLogRetentionSizeLimit"];

    v5 = [v4 unsignedIntegerValue];
    v6 = [MEMORY[0x29EDBFD50] sharedInstance];
    v7 = [v6 numberForKey:@"bioLogRetentionDiskSpace"];

    v8 = [v7 unsignedIntegerValue];
    if (v7 && ![v7 unsignedIntegerValue])
    {
      v8 = 1;
    }

    if (!v4 || v5)
    {
      if (!v4 && *(*(a1 + 32) + 113))
      {
        v5 = 1536;
      }

      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
      [BLRetention applyPolicyWithPath:*(*(a1 + 32) + 16) sizeLimit:v5 freeSpaceLimit:v8];
      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
    }
  }

  else
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
    [BLRetention applyCustomerPolicyWithPath:*(*(a1 + 32) + 16)];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
  }

  objc_autoreleasePoolPop(v2);
  applyRetentionPolicy_running = 0;
  *(*(a1 + 32) + 104) = 0;
}

- (void)scheduleRetentionPolicy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_retentionNewItemsSize >> 20;
  if (v3 < 0x401)
  {
    if (v3 > 0x200 || !selfCopy->_retentionRunOnce)
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __33__BioLog_scheduleRetentionPolicy__block_invoke;
      block[3] = &unk_29EE54570;
      block[4] = selfCopy;
      dispatch_async(MEMORY[0x29EDCA578], block);
    }
  }

  else
  {
    [(BioLog *)selfCopy applyRetentionPolicy];
  }

  objc_sync_exit(selfCopy);
}

uint64_t __33__BioLog_scheduleRetentionPolicy__block_invoke(uint64_t a1)
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel_applyRetentionPolicy withObject:0 afterDelay:3.0];
}

- (id)sequencePathForId:(id *)id
{
  v42 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_sequencePath = &selfCopy->_sequencePath;
  sequenceNumber = selfCopy->_sequenceNumber;
  var1 = id->var1;
  if (selfCopy->_sequencePath)
  {
    v8 = sequenceNumber == var1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (selfCopy->_sequenceType == id->var2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (sequenceNumber > var1)
    {
      goto LABEL_10;
    }

    if (sequenceNumber != var1)
    {
      goto LABEL_15;
    }
  }

  if (selfCopy->_sequenceType != id->var2)
  {
LABEL_10:
    if (__osLog_BioLog)
    {
      v9 = __osLog_BioLog;
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = selfCopy->_sequenceNumber;
      v11 = id->var1;
      sequenceType = selfCopy->_sequenceType;
      var2 = id->var2;
      *buf = 67109888;
      *&buf[4] = v10;
      v36 = 1024;
      v37 = v11;
      v38 = 1024;
      v39 = sequenceType;
      v40 = 1024;
      v41 = var2;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_ERROR, "Unexpected order %d > %d || %d != %d\n", buf, 0x1Au);
    }
  }

LABEL_15:
  v14 = [MEMORY[0x29EDBFD60] dateFromNanoTime:id->var0 nanoseconds:0];
  v15 = MEMORY[0x29EDBA0F8];
  v16 = id->var1;
  [v14 timeIntervalSince1970];
  v18 = v17;
  v19 = [(NSDateFormatter *)selfCopy->_milisecondsFormatter stringFromDate:v14];
  v20 = [BLHelper stringFromSequenceType:id->var2];
  v21 = [v15 stringWithFormat:@"%05d-%ld%@-%@.seq", v16, v18, v19, v20];

  logPath = selfCopy->_logPath;
  selfCopy->_sequenceType = id->var2;
  selfCopy->_sequenceNumber = id->var1;
  v23 = [(NSString *)logPath stringByAppendingPathComponent:v21];
  v24 = *p_sequencePath;
  *p_sequencePath = v23;

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  LOBYTE(v16) = [defaultManager fileExistsAtPath:*p_sequencePath];

  if ((v16 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
    v27 = [defaultManager2 createDirectoryAtPath:selfCopy->_sequencePath withIntermediateDirectories:1 attributes:selfCopy->_fileAttributes error:0];

    if (v27)
    {
      [BLRetention setPurgeableAtPath:*p_sequencePath directory:1];
      v28 = [(NSString *)selfCopy->_logPath stringByAppendingPathComponent:@"LastSequence"];
      defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
      [defaultManager3 removeItemAtPath:v28 error:0];

      defaultManager4 = [MEMORY[0x29EDB9FB8] defaultManager];
      v31 = [defaultManager4 createSymbolicLinkAtPath:v28 withDestinationPath:v21 error:0];

      if ((v31 & 1) == 0)
      {
        v32 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_296CA4000, v32, OS_LOG_TYPE_ERROR, "Sequence symlink creation failed! Don't thrust 'BioLog/Current/LastSequence'.\n", buf, 2u);
        }
      }
    }

    else
    {
      [(BioLog *)&selfCopy->_logPath sequencePathForId:buf];
      v28 = *buf;
    }

    if (id->var2 == 1)
    {
      [BLRetention setRetentionType:@"rp_enroll" atPath:*p_sequencePath];
    }
  }

LABEL_26:
  if (![(BioLogDiagnosticPipeline *)selfCopy->_diagnosticPipeline scheduleSubmit])
  {
    [(BioLog *)selfCopy scheduleRetentionPolicy];
  }

  v33 = [*p_sequencePath copy];
  objc_sync_exit(selfCopy);

  return v33;
}

- (id)sequencePathForId:(id *)id andSubdirectory:(id)subdirectory
{
  subdirectoryCopy = subdirectory;
  v7 = [(BioLog *)self sequencePathForId:id];
  v8 = [v7 stringByAppendingPathComponent:subdirectoryCopy];

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  LOBYTE(v7) = [defaultManager fileExistsAtPath:v8];

  if ((v7 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
    v11 = [defaultManager2 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:self->_fileAttributes error:0];

    if (v11)
    {
      [BLRetention setPurgeableAtPath:v8 directory:1];
    }

    else
    {
      v12 = self->_logPath;

      v8 = v12;
    }
  }

  return v8;
}

- (void)logCameraFrame:(id)frame withBuffers:(id)buffers
{
  frameCopy = frame;
  buffersCopy = buffers;
  bytes = [frameCopy bytes];
  if (bytes)
  {
    v9 = bytes;
    if ([frameCopy length] == 79)
    {
      if (*(v9 + 77))
      {
        firstObject = [buffersCopy firstObject];
      }

      else
      {
        firstObject = 0;
      }

      if (*(v9 + 78))
      {
        lastObject = [buffersCopy lastObject];
      }

      else
      {
        lastObject = 0;
      }

      [(BioLog *)self logCameraFrame:v9 sensorRawData:firstObject metaData:lastObject];
    }

    else
    {
      [BioLog logCameraFrame:withBuffers:];
    }
  }

  else
  {
    [BioLog logCameraFrame:withBuffers:];
  }
}

- (void)logCameraFrame:(id *)frame sensorRawData:(id)data metaData:(id)metaData
{
  dataCopy = data;
  metaDataCopy = metaData;
  if (self->_internal)
  {
    [(BioLog *)self logInternalCameraFrame:frame sensorRawData:dataCopy metaData:metaDataCopy];
  }

  else if (self->_cropFrameBuffer || (v10 = [objc_alloc(MEMORY[0x29EDB8DF8]) initWithLength:*(&frame->var7 + 1) * *(&frame->var7 + 3)], cropFrameBuffer = self->_cropFrameBuffer, self->_cropFrameBuffer = v10, cropFrameBuffer, v12 = dispatch_semaphore_create(1), cropFrameBufferSemaphore = self->_cropFrameBufferSemaphore, self->_cropFrameBufferSemaphore = v12, cropFrameBufferSemaphore, self->_cropFrameBuffer))
  {
    if (self->_cropFrameBufferSemaphore)
    {
      if (BYTE2(frame->var5.var8) || ![BioLog logCameraFrame:? sensorRawData:? metaData:?])
      {
        if (!*(&frame->var5.var7 + 2))
        {
          [BioLog logCameraFrame:frame sensorRawData:? metaData:?];
        }

        scale_rect_from_center_and_pin();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = stride_of_packed_raw10_minimum(v14, v16, v18);
      }

      else
      {
        v22 = 0;
        v21 = 0.0;
        v19 = 0.0;
        v17 = 0.0;
        v15 = 0.0;
      }

      v23 = [MEMORY[0x29EDB8DF8] dataWithBytes:frame length:79];
      dispatch_semaphore_wait(self->_cropFrameBufferSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      if (BYTE2(frame->var5.var8) && *&frame->var5.var1)
      {
        bytes = [v23 bytes];
        v25 = crop_packed_raw10([dataCopy bytes], *(&frame->var6 + 3), *(&frame->var7 + 1), *(&frame->var7 + 3), -[NSMutableData mutableBytes](self->_cropFrameBuffer, "mutableBytes"), v15, v17, v19, v21, v22);
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_cropFrameBuffer length:"mutableBytes") freeWhenDone:{(v30 * v22), 0}];
        *(bytes + 73) = v25;
        *(bytes + 75) = v27;
        *(bytes + 67) = v29;
        *(bytes + 69) = v31;
        *(bytes + 71) = v22;
      }

      else
      {
        v32 = 0;
      }

      v33 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __48__BioLog_logCameraFrame_sensorRawData_metaData___block_invoke;
      block[3] = &unk_29EE545E0;
      block[4] = self;
      v37 = v23;
      v38 = v32;
      v34 = v32;
      v35 = v23;
      dispatch_async(v33, block);
    }

    else
    {
      [BioLog logCameraFrame:sensorRawData:metaData:];
    }
  }

  else
  {
    [BioLog logCameraFrame:sensorRawData:metaData:];
  }
}

intptr_t __48__BioLog_logCameraFrame_sensorRawData_metaData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) logInternalCameraFrame:objc_msgSend(*(a1 + 40) sensorRawData:"bytes") metaData:{*(a1 + 48), 0}];
  v2 = *(*(a1 + 32) + 128);

  return dispatch_semaphore_signal(v2);
}

- (void)logInternalCameraFrame:(id *)frame sensorRawData:(id)data metaData:(id)metaData
{
  v96 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  metaDataCopy = metaData;
  v10 = [MEMORY[0x29EDBFD60] dateFromNanoTime:frame->var0.var0 nanoseconds:0];
  v11 = MEMORY[0x29EDBA0F8];
  var2 = frame->var0.var2;
  [v10 timeIntervalSince1970];
  v14 = v13;
  v78 = v10;
  v15 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v10];
  v16 = [BLHelper stringFromFrameType:frame->var0.var5];
  v17 = [v11 stringWithFormat:@"%05d-%ld%@-%@", var2, v14, v15, v16];

  v18 = [(BioLog *)self sequencePathForId:&frame->var0.var6];
  v19 = v18;
  if (!v18)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
    v57 = *buf;
    v48 = v78;
    goto LABEL_28;
  }

  v80 = v18;
  v20 = [v18 stringByAppendingPathComponent:v17];
  if (__osLog_BioLog)
  {
    v21 = __osLog_BioLog;
  }

  else
  {
    v21 = MEMORY[0x29EDCA988];
  }

  v79 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    var0 = frame->var0.var0;
    v23 = v21;
    *buf = 134218754;
    *&buf[4] = var0;
    v90 = 2048;
    v91 = [dataCopy length];
    v92 = 2048;
    v93 = [metaDataCopy length];
    v94 = 2112;
    v95 = v20;
    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEFAULT, "logCameraFrame %llu: %lu %lu > %@.prlf(c)/prlm +json\n", buf, 0x2Au);
  }

  if (!dataCopy)
  {
    goto LABEL_11;
  }

  if (logInternalCameraFrame_sensorRawData_metaData__onceToken != -1)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
  }

  v24 = [v20 stringByAppendingString:logInternalCameraFrame_sensorRawData_metaData__sensorRawExtension];
  v25 = [(BioLog *)self createFileAtPath:v24 contents:dataCopy attributes:self->_fileAttributesProtected purgeable:1];

  if (!v25)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
    if (metaDataCopy)
    {
LABEL_12:
      v26 = [v20 stringByAppendingString:@".prlm"];
      v27 = [(BioLog *)self createFileAtPath:v26 contents:metaDataCopy attributes:self->_fileAttributesAutoUpload purgeable:1];

      if (!v27)
      {
        [BioLog logInternalCameraFrame:sensorRawData:metaData:];
      }
    }
  }

  else
  {
LABEL_11:
    if (metaDataCopy)
    {
      goto LABEL_12;
    }
  }

  selfCopy = self;
  v28 = objc_alloc_init(MEMORY[0x29EDBA050]);
  for (i = 62; i != 58; --i)
  {
    [v28 appendFormat:@"%c", *(&frame->var0.var0 + i)];
  }

  v81 = MEMORY[0x29EDB8E00];
  v87[0] = @"seq_type";
  v72 = [BLHelper stringFromSequenceType:frame->var0.var4];
  v88[0] = v72;
  v87[1] = @"frm_type";
  v70 = [BLHelper stringFromFrameType:frame->var0.var5];
  v88[1] = v70;
  v87[2] = @"seq_num";
  v68 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:frame->var0.var1];
  v88[2] = v68;
  v87[3] = @"frm_num";
  v67 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:frame->var0.var2];
  v88[3] = v67;
  v87[4] = @"frm_grp";
  v66 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var0.var6.var2 + 1)];
  v88[4] = v66;
  v87[5] = @"raw_compressed";
  v74 = v17;
  if (logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked)
  {
    [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked, "BOOLValue")}];
  }

  else
  {
    [MEMORY[0x29EDB8E28] null];
  }
  v65 = ;
  v88[5] = v65;
  v87[6] = @"raw_size";
  v77 = dataCopy;
  v64 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  v88[6] = v64;
  v87[7] = @"meta_size";
  v76 = metaDataCopy;
  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(metaDataCopy, "length")}];
  v88[7] = v63;
  v87[8] = @"frm_cox";
  v62 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var8 + 1)];
  v88[8] = v62;
  v87[9] = @"frm_coy";
  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var8 + 3)];
  v88[9] = v61;
  v88[10] = v28;
  v87[10] = @"frm_pixel_format";
  v87[11] = @"frm_bytes_per_element";
  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(&frame->var5.var9 + 3)];
  v88[11] = v60;
  v87[12] = @"frm_width";
  v30 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var6 + 3)];
  v88[12] = v30;
  v87[13] = @"frm_height";
  v31 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var7 + 1)];
  v88[13] = v31;
  v87[14] = @"frm_bpr";
  v32 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var7 + 3)];
  v88[14] = v32;
  v87[15] = @"user_feedback";
  v33 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var0.var6.var2 + 3)];
  v88[15] = v33;
  v87[16] = @"user_engagement_status";
  v34 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&frame->var0.var6.var2 + 5)];
  v88[16] = v34;
  v87[17] = @"proj_type";
  v35 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:HIBYTE(frame->var1)];
  v88[17] = v35;
  v36 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v88 forKeys:v87 count:18];
  v82 = [v81 dictionaryWithDictionary:v36];

  if (BYTE2(frame->var5.var8))
  {
    if (!*(&frame->var5.var7 + 2))
    {
      [BioLog logInternalCameraFrame:frame sensorRawData:? metaData:?];
    }

    v85[0] = @"exposure";
    v73 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*&frame->var5.var4];
    v86[0] = v73;
    v85[1] = @"proj_sub_mode";
    v71 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:LOBYTE(frame->var3)];
    v86[1] = v71;
    v85[2] = @"ntc_temp";
    v69 = [MEMORY[0x29EDBA070] numberWithChar:SHIBYTE(frame->var3)];
    v86[2] = v69;
    v85[3] = @"distance";
    v37 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:frame->var2];
    v86[3] = v37;
    v85[4] = @"crop_factor";
    LODWORD(v38) = *&frame->var5.var6;
    LODWORD(v39) = *(&frame->var5.var7 + 2);
    v40 = [MEMORY[0x29EDBA070] numberWithDouble:v38 / v39];
    v86[4] = v40;
    v85[5] = @"bb_x";
    v41 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*&frame->var4];
    v86[5] = v41;
    v85[6] = @"bb_y";
    v42 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:frame->var5.var0];
    v86[6] = v42;
    v85[7] = @"bb_w";
    v43 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*&frame->var5.var1];
    v86[7] = v43;
    v85[8] = @"bb_h";
    v44 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:frame->var5.var3];
    v86[8] = v44;
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v86 forKeys:v85 count:9];
    [v82 addEntriesFromDictionary:v45];
  }

  v83[0] = @"biolog_file_type";
  v83[1] = @"version";
  v84[0] = @"frame";
  v84[1] = &unk_2A1E037F8;
  v83[2] = @"nanoepoch";
  v46 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:frame->var0.var0];
  v84[2] = v46;
  v83[3] = @"epoch";
  v47 = MEMORY[0x29EDBA070];
  v48 = v78;
  [v78 timeIntervalSince1970];
  v49 = [v47 numberWithDouble:?];
  v83[4] = @"frm_data";
  v84[3] = v49;
  v84[4] = v82;
  v50 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v84 forKeys:v83 count:5];

  v51 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v50 options:3 error:0];
  if (!v51)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
  }

  v52 = MEMORY[0x29EDBA0F8];
  v53 = frame->var0.var2;
  [v78 timeIntervalSince1970];
  v55 = v54;
  v56 = [(NSDateFormatter *)selfCopy->_milisecondsFormatter stringFromDate:v78];
  v57 = [v52 stringWithFormat:@"%05d-%ld%@", v53, v55, v56];

  v58 = [v80 stringByAppendingPathComponent:v57];

  v59 = [v58 stringByAppendingString:@".json"];
  LOBYTE(v55) = [(BioLog *)selfCopy createFileAtPath:v59 contents:v51 attributes:selfCopy->_fileAttributesProtected purgeable:1];

  metaDataCopy = v76;
  dataCopy = v77;
  if ((v55 & 1) == 0)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
  }

  v19 = v80;
LABEL_28:
}

void __56__BioLog_logInternalCameraFrame_sensorRawData_metaData___block_invoke()
{
  v0 = [BLHelper numberForBootArg:@"camPearlPackedRaw"];
  v1 = logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked;
  logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked = v0;

  v2 = logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked;
  if (!logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked)
  {
    logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked = MEMORY[0x29EDB8EB0];

    v2 = logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked;
  }

  if (([v2 BOOLValue] & 1) == 0)
  {
    v3 = logInternalCameraFrame_sensorRawData_metaData__sensorRawExtension;
    logInternalCameraFrame_sensorRawData_metaData__sensorRawExtension = @".prlf";
  }
}

void __33__BioLog_extractFrameDebug_data___block_invoke(uint64_t a1, unsigned int a2)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v5 = @"fid_resized_data_median_value";
  v3 = [MEMORY[0x29EDBA070] numberWithInt:a2 >> 3];
  v6[0] = v3;
  v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:v4];
}

- (void)logFrameDebug:(id)debug withBuffer:(id)buffer
{
  v51 = *MEMORY[0x29EDCA608];
  debugCopy = debug;
  bufferCopy = buffer;
  if (!self->_internal)
  {
    if (__osLog_BioLog)
    {
      v34 = __osLog_BioLog;
    }

    else
    {
      v34 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v42 = "_internal";
    v43 = 2048;
    v44 = 0;
    v45 = 2080;
    v46 = &unk_296D32C0B;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v49 = 1024;
    v50 = 891;
    goto LABEL_35;
  }

  bytes = [debugCopy bytes];
  if (!bytes)
  {
    if (__osLog_BioLog)
    {
      v34 = __osLog_BioLog;
    }

    else
    {
      v34 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v42 = "frameHeader";
    v43 = 2048;
    v44 = 0;
    v45 = 2080;
    v46 = &unk_296D32C0B;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v49 = 1024;
    v50 = 894;
    goto LABEL_35;
  }

  v9 = bytes;
  if ([debugCopy length] != 27)
  {
    if (__osLog_BioLog)
    {
      v34 = __osLog_BioLog;
    }

    else
    {
      v34 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v42 = "sizeof(*frameHeader) == [headerData length]";
    v43 = 2048;
    v44 = 0;
    v45 = 2080;
    v46 = &unk_296D32C0B;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v49 = 1024;
    v50 = 895;
LABEL_35:
    _os_log_impl(&dword_296CA4000, v34, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_36:
    v33 = 0;
    v24 = 0;
    v22 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  frameDebugExtraQueue = self->_frameDebugExtraQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __35__BioLog_logFrameDebug_withBuffer___block_invoke;
  block[3] = &unk_29EE549C0;
  block[4] = self;
  v40 = v9;
  v11 = bufferCopy;
  v39 = v11;
  dispatch_sync(frameDebugExtraQueue, block);

  v37 = bufferCopy;
  if (*(v9 + 14) == 2 && !self->_allVsAllReachedLimit && (v12 = [[BLScoreData alloc] initFromDebugData:v11]) != 0)
  {
    v13 = v12;
    [v12 setSequenceNumber:*(v9 + 8)];
    [(NSMutableArray *)self->_scoreDataArray addObject:v13];
    v14 = self->_computedSequenceNumberPair[0];
    v36 = v13;
    if (v14 != *(v9 + 8))
    {
      self->_computedSequenceNumberPair[1] = v14;
      self->_computedSequenceNumberPair[0] = *(v9 + 8);
    }
  }

  else
  {
    v36 = 0;
  }

  v15 = [MEMORY[0x29EDBFD60] dateFromNanoTime:*v9 nanoseconds:0];
  v16 = MEMORY[0x29EDBA0F8];
  v17 = *(v9 + 10);
  [v15 timeIntervalSince1970];
  v19 = v18;
  v20 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v15];
  v21 = [BLHelper stringFromFrameType:*(v9 + 15)];
  v22 = [v16 stringWithFormat:@"%05d-%ld%@-%@", v17, v19, v20, v21];

  v23 = [(BioLog *)self sequencePathForId:v9 + 16];
  v24 = [v23 stringByAppendingPathComponent:v22];

  v25 = MEMORY[0x29EDCA988];
  if (__osLog_BioLog)
  {
    v26 = __osLog_BioLog;
  }

  else
  {
    v26 = MEMORY[0x29EDCA988];
  }

  if (v24)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = debugCopy;
      v28 = *v9;
      v29 = v26;
      v30 = [v11 length];
      *buf = 134218754;
      v42 = v28;
      debugCopy = v27;
      v25 = MEMORY[0x29EDCA988];
      v43 = 2048;
      v44 = v30;
      v45 = 2112;
      v46 = v24;
      v47 = 2080;
      v48 = ".prle";
      _os_log_impl(&dword_296CA4000, v29, OS_LOG_TYPE_DEFAULT, "logFrameDebug %llu: %lu > %@%s\n", buf, 0x2Au);
    }

    v31 = [v24 stringByAppendingString:@".prle"];
    v32 = [(BioLog *)self createFileAtPath:v31 contents:v11 attributes:self->_fileAttributesAutoUpload purgeable:1];

    if (!v32)
    {
      if (__osLog_BioLog)
      {
        v35 = __osLog_BioLog;
      }

      else
      {
        v35 = v25;
      }

      bufferCopy = v37;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v42 = "result";
        v43 = 2048;
        v44 = 0;
        v45 = 2080;
        v46 = &unk_296D32C0B;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
        v49 = 1024;
        v50 = 924;
        _os_log_impl(&dword_296CA4000, v35, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v42 = "filePath";
      v43 = 2048;
      v44 = 0;
      v45 = 2080;
      v46 = &unk_296D32C0B;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
      v49 = 1024;
      v50 = 920;
      _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v24 = 0;
  }

  bufferCopy = v37;
LABEL_18:
  v33 = v36;
LABEL_19:
}

- (void)logData:(id)data withContext:(id *)context
{
  v34 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  if (self->_internal)
  {
    v7 = [MEMORY[0x29EDBFD60] dateFromNanoTime:context->var0 nanoseconds:0];
    v8 = MEMORY[0x29EDBA0F8];
    [v7 timeIntervalSince1970];
    v10 = v9;
    v11 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v7];
    v12 = [v8 stringWithFormat:@"Data_%ld%@.dmp", v10, v11];

    if (context->var2.var0)
    {
      v13 = [(BioLog *)self sequencePathForId:&context->var2];
    }

    else
    {
      v13 = self->_logPath;
    }

    v14 = v13;
    v15 = [(NSString *)v13 stringByAppendingPathComponent:v12];
    v16 = MEMORY[0x29EDCA988];
    if (__osLog_BioLog)
    {
      v17 = __osLog_BioLog;
    }

    else
    {
      v17 = MEMORY[0x29EDCA988];
    }

    if (v15)
    {
      v18 = v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        var0 = context->var0;
        v20 = v17;
        v21 = [dataCopy length];
        *buf = 134218498;
        v25 = var0;
        v16 = MEMORY[0x29EDCA988];
        v26 = 2048;
        v27 = v21;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEFAULT, "logData %llu: %lu > %@\n", buf, 0x20u);
      }

      if (![(BioLog *)self createFileAtPath:v18 contents:dataCopy attributes:self->_fileAttributesProtected purgeable:1])
      {
        if (__osLog_BioLog)
        {
          v23 = __osLog_BioLog;
        }

        else
        {
          v23 = v16;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v25 = "result";
          v26 = 2048;
          v27 = 0;
          v28 = 2080;
          v29 = &unk_296D32C0B;
          v30 = 2080;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
          v32 = 1024;
          v33 = 956;
          _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v25 = "filePath";
        v26 = 2048;
        v27 = 0;
        v28 = 2080;
        v29 = &unk_296D32C0B;
        v30 = 2080;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
        v32 = 1024;
        v33 = 952;
        _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v18 = 0;
    }
  }

  else
  {
    if (__osLog_BioLog)
    {
      v22 = __osLog_BioLog;
    }

    else
    {
      v22 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v25 = "_internal";
      v26 = 2048;
      v27 = 0;
      v28 = 2080;
      v29 = &unk_296D32C0B;
      v30 = 2080;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
      v32 = 1024;
      v33 = 936;
      _os_log_impl(&dword_296CA4000, v22, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v18 = 0;
    v14 = 0;
    v12 = 0;
    v7 = 0;
  }
}

- (void)logTemplate:(id)template withSequenceNumber:(unsigned __int16)number date:(id)date index:(unsigned __int8)index toPath:(id)path isPO:(BOOL)o
{
  oCopy = o;
  indexCopy = index;
  numberCopy = number;
  v37 = *MEMORY[0x29EDCA608];
  templateCopy = template;
  dateCopy = date;
  pathCopy = path;
  v17 = MEMORY[0x29EDBA0F8];
  [dateCopy timeIntervalSince1970];
  v19 = v18;
  v20 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:dateCopy];
  v21 = v20;
  if (oCopy)
  {
    v22 = @"templ-po-%05d-%ld%@-%u";
  }

  else
  {
    v22 = @"templ-%05d-%ld%@-%u";
  }

  indexCopy = [v17 stringWithFormat:v22, numberCopy, v19, v20, indexCopy];

  v24 = [pathCopy stringByAppendingPathComponent:indexCopy];
  if (__osLog_BioLog)
  {
    v25 = __osLog_BioLog;
  }

  else
  {
    v25 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    *buf = 67109890;
    v30 = indexCopy;
    v31 = 2048;
    v32 = [templateCopy length];
    v33 = 2112;
    v34 = v24;
    v35 = 2080;
    v36 = ".tpl";
    _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_DEFAULT, "logTemplate #%u: %lu > %@%s\n", buf, 0x26u);
  }

  v27 = [v24 stringByAppendingString:@".tpl"];
  v28 = [(BioLog *)self createFileAtPath:v27 contents:templateCopy attributes:self->_fileAttributesProtected purgeable:1];

  if (!v28)
  {
    [BioLog logTemplate:withSequenceNumber:date:index:toPath:isPO:];
  }
}

- (void)logTemplateList:(id)list withTemplateSize:(unint64_t)size sequenceNumber:(unsigned __int16)number date:(id)date toPath:(id)path isPO:(BOOL)o
{
  oCopy = o;
  numberCopy = number;
  listCopy = list;
  dateCopy = date;
  pathCopy = path;
  if ([listCopy length] && objc_msgSend(listCopy, "length") >= size)
  {
    if (pathCopy)
    {
      if ([listCopy length] >= size)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = [listCopy subdataWithRange:{v17, size}];
          [(BioLog *)self logTemplate:v19 withSequenceNumber:numberCopy date:dateCopy index:v18 toPath:pathCopy isPO:oCopy];

          ++v18;
          v17 += size;
        }

        while (v18 < [listCopy length] / size);
      }
    }

    else
    {
      [BioLog logTemplateList:withTemplateSize:sequenceNumber:date:toPath:isPO:];
    }
  }

  else
  {
    [BioLog logTemplateList:withTemplateSize:sequenceNumber:date:toPath:isPO:];
  }
}

- (void)logTemplateList:(id)list withContext:(id *)context isPO:(BOOL)o
{
  oCopy = o;
  listCopy = list;
  if (self->_internal)
  {
    v9 = [MEMORY[0x29EDBFD60] dateFromNanoTime:context->var0 nanoseconds:0];
    v10 = [(BioLog *)self sequencePathForId:&context->var2];
    if (v10)
    {
      v11 = v10;
      [(BioLog *)self logTemplateList:listCopy withTemplateSize:context->var1 sequenceNumber:context->var2.var1 date:v9 toPath:v10 isPO:oCopy];
    }

    else
    {
      [BioLog logTemplateList:v9 withContext:? isPO:?];
    }
  }

  else
  {
    [BioLog logTemplateList:withContext:isPO:];
  }
}

- (void)logTemplate:(id)template withContext:(id *)context
{
  v32 = *MEMORY[0x29EDCA608];
  templateCopy = template;
  if (!self->_internal)
  {
    [BioLog logTemplate:withContext:];
    goto LABEL_15;
  }

  v7 = [MEMORY[0x29EDBFD60] dateFromNanoTime:context->var0 nanoseconds:0];
  v8 = MEMORY[0x29EDBA0F8];
  var1 = context->var2.var1;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v12 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v7];
  v13 = [v8 stringWithFormat:@"templ-%05d-%ld%@", var1, v11, v12];

  v14 = [(BioLog *)self sequencePathForId:&context->var2];
  v15 = [v14 stringByAppendingPathComponent:v13];

  if (__osLog_BioLog)
  {
    v16 = __osLog_BioLog;
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      var0 = context->var0;
      v18 = v16;
      *buf = 134218754;
      *&buf[4] = var0;
      v24 = 2048;
      v25 = [templateCopy length];
      v26 = 2112;
      v27 = v15;
      v28 = 2080;
      v29 = ".tpl";
      _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "logTemplate %llu: %lu > %@%s\n", buf, 0x2Au);
    }

    v19 = [v15 stringByAppendingString:@".tpl"];
    v20 = [(BioLog *)self createFileAtPath:v19 contents:templateCopy attributes:self->_fileAttributesProtected purgeable:1];

    if (v20)
    {
      goto LABEL_9;
    }

    [BioLog logTemplate:withContext:];
LABEL_15:
    v15 = v21;
    v13 = v22;
    v7 = *buf;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "filePath";
    v24 = 2048;
    v25 = 0;
    v26 = 2080;
    v27 = &unk_296D32C0B;
    v28 = 2080;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v30 = 1024;
    v31 = 1025;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v15 = 0;
LABEL_9:
}

- (void)logSequenceInfo:(id)info withContext:(id *)context orientation:(id *)orientation identities:(id)identities
{
  v360[20] = *MEMORY[0x29EDCA608];
  infoCopy = info;
  identitiesCopy = identities;
  if (!logSequenceInfo_withContext_orientation_identities__lastSequenceName)
  {
    null = [MEMORY[0x29EDB8E28] null];
    v9 = logSequenceInfo_withContext_orientation_identities__lastSequenceName;
    logSequenceInfo_withContext_orientation_identities__lastSequenceName = null;
  }

  null2 = [MEMORY[0x29EDB8E28] null];
  bytes = [infoCopy bytes];
  if (!bytes)
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
LABEL_148:

    goto LABEL_144;
  }

  if (!context)
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
    goto LABEL_148;
  }

  if (!orientation)
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
    goto LABEL_148;
  }

  v302 = bytes;
  v290 = (bytes + 4);
  v300 = [MEMORY[0x29EDBFD60] dateFromNanoTime:*(bytes + 4) nanoseconds:0];
  v291 = [MEMORY[0x29EDBFD60] dateFromNanoTime:context->var0 nanoseconds:0];
  if (!*v302)
  {
    v282 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_112;
  }

  if (!self->_internal && *(v302 + 1))
  {
    [BioLog logSequenceInfo:? withContext:? orientation:? identities:?];
  }

  v263 = [BLHelper numberFromDouble:orientation->var1];
  v264 = [BLHelper numberFromDouble:orientation->var2];
  v262 = [BLHelper numberFromDouble:orientation->var3];
  v261 = [BLHelper numberFromDouble:orientation->var4.var0];
  v260 = [BLHelper numberFromDouble:orientation->var4.var1];
  v259 = [BLHelper numberFromDouble:orientation->var4.var2];
  v257 = [BLHelper numberFromDouble:orientation->var5.var0];
  v258 = [BLHelper numberFromDouble:orientation->var5.var1];
  v256 = [BLHelper numberFromDouble:orientation->var5.var2];
  v255 = [BLHelper numberFromDouble:orientation->var6.var0];
  v254 = [BLHelper numberFromDouble:orientation->var6.var1];
  v253 = [BLHelper numberFromDouble:orientation->var6.var2];
  v286 = MEMORY[0x29EDB8E00];
  v359[0] = @"system_build_version";
  v303 = +[BLHelper buildVersionString];
  v360[0] = v303;
  v359[1] = @"internal";
  v296 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 1) != 0];
  v360[1] = v296;
  v359[2] = @"canceled";
  v294 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 2) != 0];
  v360[2] = v294;
  v359[3] = @"failure";
  v288 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 23) != 0];
  v360[3] = v288;
  v359[4] = @"failure_reason";
  v283 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 23)];
  v360[4] = v283;
  v359[5] = @"total_frame_count";
  v281 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 15)];
  v360[5] = v281;
  v359[6] = @"frames_processed";
  v279 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 17)];
  v360[6] = v279;
  v359[7] = @"frames_for_logging";
  v277 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 19)];
  v360[7] = v277;
  v359[8] = @"frames_logged";
  v274 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 21)];
  v360[8] = v274;
  v359[9] = @"sensor_temperature";
  v271 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 35)];
  v360[9] = v271;
  v359[10] = @"ambient_lux";
  v268 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 39)];
  v360[10] = v268;
  v359[11] = @"secure_face_detect_mode";
  v265 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v302 + 43)];
  v360[11] = v265;
  v359[12] = @"initial_orientation";
  selfCopy2 = self;
  initialDeviceOrientation = self->_initialDeviceOrientation;
  v13 = initialDeviceOrientation;
  if (!initialDeviceOrientation)
  {
    initialDeviceOrientation = [MEMORY[0x29EDB8E28] null];
    selfCopy2 = self;
  }

  v247 = initialDeviceOrientation;
  v360[12] = initialDeviceOrientation;
  v359[13] = @"initial_stationary";
  initialDeviceStationary = selfCopy2->_initialDeviceStationary;
  if (initialDeviceStationary)
  {
    null3 = selfCopy2->_initialDeviceStationary;
  }

  else
  {
    null3 = [MEMORY[0x29EDB8E28] null];
  }

  v250 = initialDeviceStationary == 0;
  v245 = null3;
  v360[13] = null3;
  v359[14] = @"final_orientation";
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:orientation->var0];
  v360[14] = v18;
  v359[15] = @"final_attitude";
  v357[0] = @"device_roll";
  v357[1] = @"device_pitch";
  v358[0] = v263;
  v358[1] = v264;
  v357[2] = @"device_yaw";
  v358[2] = v262;
  v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v358 forKeys:v357 count:3];
  v360[15] = v19;
  v359[16] = @"final_rotation_rate";
  v355[0] = @"device_rotation_x";
  v355[1] = @"device_rotation_y";
  v356[0] = v261;
  v356[1] = v260;
  v355[2] = @"device_rotation_z";
  v356[2] = v259;
  v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v356 forKeys:v355 count:3];
  v360[16] = v20;
  v359[17] = @"final_acceleration";
  v353[0] = @"device_acceleration_x";
  v353[1] = @"device_acceleration_y";
  v354[0] = v257;
  v354[1] = v258;
  v353[2] = @"device_acceleration_z";
  v354[2] = v256;
  v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v354 forKeys:v353 count:3];
  v360[17] = v21;
  v359[18] = @"final_gravity";
  v351[0] = @"device_gravity_x";
  v351[1] = @"device_gravity_y";
  v352[0] = v255;
  v352[1] = v254;
  v351[2] = @"device_gravity_z";
  v352[2] = v253;
  v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v352 forKeys:v351 count:3];
  v360[18] = v22;
  v359[19] = @"timezone_offset";
  v23 = MEMORY[0x29EDBA070];
  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  timeZone = [currentCalendar timeZone];
  v26 = [v23 numberWithInteger:{objc_msgSend(timeZone, "secondsFromGMT")}];
  v360[19] = v26;
  v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v360 forKeys:v359 count:20];
  v287 = [v286 dictionaryWithDictionary:v27];

  if (v250)
  {
  }

  if (!v13)
  {
  }

  v246 = *(v302 + 2);
  if (*(v302 + 44))
  {
    v28 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v302 + 45];
    uUIDString = [v28 UUIDString];
  }

  else
  {
    uUIDString = [MEMORY[0x29EDB8E28] null];
  }

  v29 = *(v302 + 14);
  if (v29 == 1)
  {
    v331[0] = @"enroll";
    v330[0] = @"seq_type";
    v330[1] = @"enroll_result";
    v31 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 65) != 0];
    v331[1] = v31;
    v331[2] = uUIDString;
    v330[2] = @"enroll_identity_uuid";
    v330[3] = @"enroll_user_id";
    v32 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 61)];
    v331[3] = v32;
    v330[4] = @"enroll_identity_augmented";
    v33 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 68) != 0];
    v331[4] = v33;
    v330[5] = @"enroll_frames_num";
    v34 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 66)];
    v331[5] = v34;
    v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v331 forKeys:v330 count:6];
    [v287 addEntriesFromDictionary:v35];

    v16 = 0;
    if (*(v302 + 65))
    {
      v36 = @"rp_enroll";
    }

    else
    {
      v36 = @"rp_none";
    }

    goto LABEL_56;
  }

  if (v29 == 2)
  {
    if (!*(v302 + 90))
    {
      v30 = *(v302 + 70);
      if (*(v302 + 104) != 3)
      {
        goto LABEL_37;
      }

      if (*(v302 + 70))
      {
        v39 = 1;
        goto LABEL_38;
      }
    }

    v30 = *(v302 + 68);
LABEL_37:
    v39 = v30 != 0;
LABEL_38:
    v241 = v39;
    null4 = [MEMORY[0x29EDB8E28] null];
    null5 = [MEMORY[0x29EDB8E28] null];
    null6 = [MEMORY[0x29EDB8E28] null];
    v40 = v302;
    if (*(v302 + 65))
    {
      v41 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 66) != 0];

      null4 = v41;
      v40 = v302;
    }

    if (v40[67])
    {
      v42 = [MEMORY[0x29EDBA070] numberWithBool:v40[68] != 0];

      null5 = v42;
      v40 = v302;
    }

    if (v40[69])
    {
      v43 = [MEMORY[0x29EDBA070] numberWithBool:v40[70] != 0];

      null6 = v43;
      v40 = v302;
    }

    v45 = v40[115];
    v44 = v40 + 115;
    v297 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v45];
    v295 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v44];
    if (*v44)
    {
      v46 = 0;
      v47 = 0;
      v48 = v302;
      do
      {
        v49 = (v48 + v47 + 92);
        v50 = [MEMORY[0x29EDBA070] numberWithBool:*v49 != 0];
        [v297 addObject:v50];

        v51 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + v47 + 98) != 0];
        [v295 addObject:v51];

        v52 = *v49 | v46 | *(v302 + v47 + 98);
        v46 = v52 != 0;
        ++v47;
        v48 = v302;
        v53 = *(v302 + 115);
      }

      while (v47 < v53);
      if (v52)
      {
        v54 = @"rp_update";
      }

      else
      {
        v54 = 0;
      }

      v282 = v54;
    }

    else
    {
      v282 = 0;
      v53 = 0;
    }

    v304 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v53];
    v289 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
    v280 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
    v58 = v302;
    if (*(v302 + 182) && *(v302 + 115))
    {
      v59 = 0;
      do
      {
        v60 = v302 + 185 + 36 * v59;
        v61 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v60 + 16];
        uUIDString2 = [v61 UUIDString];
        [v304 addObject:uUIDString2];

        v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v60 + 32)];
        [v289 addObject:v63];

        v317 = 0u;
        v318 = 0u;
        v315 = 0u;
        v316 = 0u;
        v64 = identitiesCopy;
        v65 = [v64 countByEnumeratingWithState:&v315 objects:v348 count:16];
        if (v65)
        {
          v66 = *v316;
          while (2)
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v316 != v66)
              {
                objc_enumerationMutation(v64);
              }

              v68 = *(*(&v315 + 1) + 8 * i);
              uuid = [v68 uuid];
              uUIDString3 = [uuid UUIDString];
              lastObject = [v304 lastObject];
              v72 = [uUIDString3 isEqualToString:lastObject];

              if (v72)
              {
                creationTime = [v68 creationTime];
                [creationTime timeIntervalSince1970];
                v74 = [BLHelper numberFromDouble:?];
                [v280 addObject:v74];

                goto LABEL_72;
              }
            }

            v65 = [v64 countByEnumeratingWithState:&v315 objects:v348 count:16];
            if (v65)
            {
              continue;
            }

            break;
          }
        }

LABEL_72:

        ++v59;
        v58 = v302;
      }

      while (v59 < *(v302 + 115));
    }

    v347[0] = @"match";
    v346[0] = @"seq_type";
    v346[1] = @"match_seq_type";
    v75 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v58 + 104)];
    v347[1] = v75;
    v346[2] = @"match_flags";
    v284 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 110)];
    v347[2] = v284;
    v346[3] = @"match_trigger";
    v275 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v302 + 114)];
    v347[3] = v275;
    v346[4] = @"secure_face_detect_unsupported_orientation";
    v272 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 79) != 0];
    v347[4] = v272;
    v346[5] = @"processed_doubles";
    v269 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v302 + 105)];
    v347[5] = v269;
    v346[6] = @"overall_match_result";
    v266 = [MEMORY[0x29EDBA070] numberWithBool:v241];
    v347[6] = v266;
    v346[7] = @"face_detect_result";
    v346[8] = @"bio_check_result";
    v347[7] = null4;
    v347[8] = null5;
    v347[9] = null6;
    v346[9] = @"probing_pattern_result";
    v346[10] = @"face_detect_result_code";
    v251 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 106)];
    v347[10] = v251;
    v347[11] = uUIDString;
    v346[11] = @"match_identity_uuid";
    v346[12] = @"match_identity_user_id";
    v248 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 61)];
    v347[12] = v248;
    v346[13] = @"enrolled_identity_count";
    v239 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v302 + 115)];
    v347[13] = v239;
    v346[14] = @"enrolled_identity_uuid";
    v346[15] = @"enrolled_identity_date";
    v347[14] = v304;
    v347[15] = v280;
    v347[16] = v289;
    v346[16] = @"enrolled_user_id";
    v346[17] = @"matched_identity_index";
    v238 = [MEMORY[0x29EDBA070] numberWithChar:*(v302 + 116)];
    v347[17] = v238;
    v346[18] = @"template_updated";
    v237 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 89) != 0];
    v347[18] = v237;
    v346[19] = @"passcode_challenge";
    v236 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 90) != 0];
    v347[19] = v236;
    v346[20] = @"passcode_challenge_allowed";
    v235 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 91) != 0];
    v347[20] = v235;
    v346[21] = @"is_safe_update";
    v346[22] = @"is_passcode_update";
    v347[21] = v297;
    v347[22] = v295;
    v346[23] = @"is_combined";
    v234 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 71) != 0];
    v347[23] = v234;
    v346[24] = @"is_auto_retry";
    v233 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 72) != 0];
    v347[24] = v233;
    v346[25] = @"is_auto_retry_allowed";
    v232 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 73) != 0];
    v347[25] = v232;
    v346[26] = @"auto_retry_type";
    v231 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 74)];
    v347[26] = v231;
    v346[27] = @"is_fallback_to_secure_face_detect";
    v230 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 78) != 0];
    v347[27] = v230;
    v346[28] = @"is_static_unlock";
    v229 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 80) != 0];
    v347[28] = v229;
    v346[29] = @"is_online_unlock";
    v228 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 81) != 0];
    v347[29] = v228;
    v346[30] = @"is_online_static_unlock";
    v227 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 82) != 0];
    v347[30] = v227;
    v346[31] = @"is_online_shortterm_unlock";
    v226 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 83) != 0];
    v347[31] = v226;
    v346[32] = @"is_shortterm_unlock";
    v225 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 84) != 0];
    v347[32] = v225;
    v346[33] = @"as_dot_ir_pass";
    v224 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 85) != 0];
    v347[33] = v224;
    v346[34] = @"as_fused_ir_pass";
    v223 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 86) != 0];
    v347[34] = v223;
    v346[35] = @"as_flood_ir_pass";
    v222 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 87) != 0];
    v347[35] = v222;
    v346[36] = @"has_attention";
    v221 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 88) != 0];
    v347[36] = v221;
    v346[37] = @"first_bio_flood_frame";
    v344[0] = @"distance";
    v220 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 130)];
    v345[0] = v220;
    v344[1] = @"bb_x";
    v219 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 132)];
    v345[1] = v219;
    v344[2] = @"bb_y";
    v218 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 134)];
    v345[2] = v218;
    v344[3] = @"bb_w";
    v217 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 136)];
    v345[3] = v217;
    v344[4] = @"bb_h";
    v216 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 138)];
    v345[4] = v216;
    v344[5] = @"exposure";
    v215 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 140)];
    v345[5] = v215;
    v214 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v345 forKeys:v344 count:6];
    v347[37] = v214;
    v347[38] = logSequenceInfo_withContext_orientation_identities__lastSequenceName;
    v346[38] = @"last_sequence_name";
    v346[39] = @"face_detect_flood_frame_count";
    v213 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 117)];
    v347[39] = v213;
    v346[40] = @"bio_frame_has_eye_occlusion_count";
    v212 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 119)];
    v347[40] = v212;
    v346[41] = @"user_feedback";
    v211 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 121)];
    v347[41] = v211;
    v346[42] = @"face_detect_user_engagement_status";
    v210 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 178)];
    v347[42] = v210;
    v346[43] = @"face_info";
    v342[0] = @"distance";
    v209 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v302 + 144)];
    v343[0] = v209;
    v342[1] = @"face_orientation";
    v76 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v302 + 146)];
    v343[1] = v76;
    v342[2] = @"face_pitch";
    v77 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 147)];
    v343[2] = v77;
    v342[3] = @"face_yaw";
    v78 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 151)];
    v343[3] = v78;
    v342[4] = @"face_roll";
    v79 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 155)];
    v343[4] = v79;
    v80 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v343 forKeys:v342 count:5];
    v347[43] = v80;
    v346[44] = @"last_frame_has_glasses";
    v81 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 125) != 0];
    v347[44] = v81;
    v346[45] = @"last_frame_glasses_score";
    LODWORD(v82) = *(v302 + 126);
    v83 = [BLHelper numberFromFloat:v82];
    v347[45] = v83;
    v84 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v347 forKeys:v346 count:46];
    [v287 addEntriesFromDictionary:v84];

    if (self->_internal)
    {
      v340[0] = @"feature_generation_error";
      v85 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 27)];
      v341[0] = v85;
      v340[1] = @"feature_vectors_error";
      v86 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 31)];
      v341[1] = v86;
      v87 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v341 forKeys:v340 count:2];
      [v287 addEntriesFromDictionary:v87];
    }

    v88 = v302;
    if (*(v302 + 1))
    {
      null7 = [MEMORY[0x29EDB8E28] null];
      v90 = v302;
      if (*(v302 + 164))
      {
        v91 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 165) != 0];

        null7 = v91;
        v90 = v302;
      }

      v92 = @"fullface";
      if (!*(v90 + 159))
      {
        v92 = @"periocular";
      }

      v339[0] = v92;
      v338[0] = @"matcher_type";
      v338[1] = @"passcode_update_eligible";
      v93 = [MEMORY[0x29EDBA070] numberWithBool:*(v90 + 162) != 0];
      v339[1] = v93;
      v338[2] = @"best_frame_has_occlusion";
      v94 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 163) != 0];
      v339[2] = v94;
      v338[3] = @"flood_pattern_detection_result";
      v95 = [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 23) != 5];
      v339[3] = v95;
      v339[4] = null7;
      v338[4] = @"probing_pattern_detection_result";
      v338[5] = @"probing_pattern_score";
      LODWORD(v96) = *(v302 + 166);
      v97 = [BLHelper numberFromFloat:v96];
      v339[5] = v97;
      v338[6] = @"first_fd_frame_lux_level";
      v98 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 170)];
      v339[6] = v98;
      v338[7] = @"first_bio_frame_exposure";
      v99 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v302 + 174)];
      v339[7] = v99;
      v100 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v339 forKeys:v338 count:8];
      [v287 addEntriesFromDictionary:v100];

      v101 = v302;
      if (*(v302 + 182))
      {
        v102 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        v103 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        v104 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        v105 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        if (*(v302 + 115))
        {
          v107 = 0;
          v108 = (v302 + 197);
          do
          {
            LODWORD(v106) = *(v108 - 3);
            v109 = [BLHelper numberFromFloat:v106];
            [v102 addObject:v109];

            LODWORD(v110) = *(v108 - 2);
            v111 = [BLHelper numberFromFloat:v110];
            [v103 addObject:v111];

            LODWORD(v112) = *(v108 - 1);
            v113 = [BLHelper numberFromFloat:v112];
            [v104 addObject:v113];

            LODWORD(v114) = *v108;
            v115 = [BLHelper numberFromFloat:v114];
            [v105 addObject:v115];

            ++v107;
            v108 += 9;
          }

          while (v107 < *(v302 + 115));
        }

        v336[0] = @"match_threshold";
        v336[1] = @"online_threshold";
        v337[0] = v102;
        v337[1] = v103;
        v336[2] = @"shortterm_threshold";
        v336[3] = @"as_threshold";
        v337[2] = v104;
        v337[3] = v105;
        v116 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v337 forKeys:v336 count:4];
        [v287 addEntriesFromDictionary:v116];

        v101 = v302;
      }

      v240 = v101 + 449;
      if (v101[183])
      {
        v117 = v101 + 115;
        v118 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v101[115]];
        v285 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v276 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v273 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v270 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v267 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v252 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v249 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v119 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v120 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v121 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v122 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v123 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        if (*v117)
        {
          v125 = 0;
          v126 = v240;
          do
          {
            LODWORD(v124) = *(v126 - 12);
            v127 = [BLHelper numberFromFloat:v124];
            [v118 addObject:v127];

            LODWORD(v128) = *(v126 - 11);
            v129 = [BLHelper numberFromFloat:v128];
            [v285 addObject:v129];

            LODWORD(v130) = *(v126 - 10);
            v131 = [BLHelper numberFromFloat:v130];
            [v276 addObject:v131];

            LODWORD(v132) = *(v126 - 9);
            v133 = [BLHelper numberFromFloat:v132];
            [v273 addObject:v133];

            LODWORD(v134) = *(v126 - 8);
            v135 = [BLHelper numberFromFloat:v134];
            [v270 addObject:v135];

            LODWORD(v136) = *(v126 - 7);
            v137 = [BLHelper numberFromFloat:v136];
            [v267 addObject:v137];

            LODWORD(v138) = *(v126 - 6);
            v139 = [BLHelper numberFromFloat:v138];
            [v252 addObject:v139];

            LODWORD(v140) = *(v126 - 5);
            v141 = [BLHelper numberFromFloat:v140];
            [v249 addObject:v141];

            LODWORD(v142) = *(v126 - 4);
            v143 = [BLHelper numberFromFloat:v142];
            [v119 addObject:v143];

            LODWORD(v144) = *(v126 - 3);
            v145 = [BLHelper numberFromFloat:v144];
            [v120 addObject:v145];

            LODWORD(v146) = *(v126 - 2);
            v147 = [BLHelper numberFromFloat:v146];
            [v121 addObject:v147];

            LODWORD(v148) = *(v126 - 1);
            v149 = [BLHelper numberFromFloat:v148];
            [v122 addObject:v149];

            LODWORD(v150) = *v126;
            v151 = [BLHelper numberFromFloat:v150];
            [v123 addObject:v151];

            ++v125;
            v126 += 52;
          }

          while (v125 < *(v302 + 115));
        }

        v334[0] = @"ir_score";
        v334[1] = @"depth_score";
        v335[0] = v118;
        v335[1] = v285;
        v334[2] = @"ir_online_score";
        v334[3] = @"depth_online_score";
        v335[2] = v276;
        v335[3] = v273;
        v334[4] = @"as_dotted_score";
        v334[5] = @"as_flood_score";
        v335[4] = v270;
        v335[5] = v267;
        v334[6] = @"as_score";
        v334[7] = @"as_threshold_dynamic";
        v335[6] = v252;
        v335[7] = v249;
        v334[8] = @"as_score_minus_as_threshold";
        v334[9] = @"as_depth_score";
        v335[8] = v119;
        v335[9] = v120;
        v334[10] = @"min_depth_score";
        v334[11] = @"as_depth_threshold";
        v335[10] = v121;
        v335[11] = v122;
        v334[12] = @"scene_matcher_score";
        v335[12] = v123;
        v152 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v335 forKeys:v334 count:13];
        [v287 addEntriesFromDictionary:v152];

        v101 = v302;
      }

      if (v101[184])
      {
        v153 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        v154 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        v155 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        v156 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v302 + 115)];
        if (*(v302 + 115))
        {
          v158 = 0;
          v159 = v240 + 276;
          do
          {
            LODWORD(v157) = *(v159 - 3);
            v160 = [BLHelper numberFromFloat:v157];
            [v153 addObject:v160];

            LODWORD(v161) = *(v159 - 2);
            v162 = [BLHelper numberFromFloat:v161];
            [v154 addObject:v162];

            LODWORD(v163) = *(v159 - 1);
            v164 = [BLHelper numberFromFloat:v163];
            [v155 addObject:v164];

            LODWORD(v165) = *v159;
            v166 = [BLHelper numberFromFloat:v165];
            [v156 addObject:v166];

            ++v158;
            v159 += 4;
          }

          while (v158 < *(v302 + 115));
        }

        v332[0] = @"overall_score";
        v332[1] = @"overall_online_score";
        v333[0] = v153;
        v333[1] = v154;
        v332[2] = @"overall_shortterm_score";
        v332[3] = @"depth_shortterm_score";
        v333[2] = v155;
        v333[3] = v156;
        v167 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v333 forKeys:v332 count:4];
        [v287 addEntriesFromDictionary:v167];
      }

      v88 = v302;
    }

    if (v88[2])
    {
      v16 = 0;
    }

    else
    {
      v16 = v88[66] != 0 && !v241;
    }

    if (v88[65] && !v88[66])
    {
      v168 = @"rp_noface";
    }

    else if (v88[67])
    {
      if (v241)
      {
LABEL_110:
        date = [MEMORY[0x29EDB8DB0] date];
        [(BioLog *)self logAllVsAllWithDate:date];

        goto LABEL_111;
      }

      v168 = @"rp_nomatch";
    }

    else
    {
      v168 = @"rp_matchfailure";
      if (v88[69])
      {
        v168 = @"rp_nomatch";
      }

      if (v88[69] != 0 && v241)
      {
        goto LABEL_110;
      }
    }

    v282 = v168;
    goto LABEL_110;
  }

  if (v29 != 3)
  {
    v328 = @"seq_type";
    null8 = [MEMORY[0x29EDB8E28] null];
    v329 = null8;
    v38 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
    [v287 addEntriesFromDictionary:v38];

LABEL_57:
    v282 = 0;
    v16 = 0;
    goto LABEL_111;
  }

  v350[0] = @"attn";
  v349[0] = @"seq_type";
  v349[1] = @"face_detected";
  if (*(v302 + 65))
  {
    [MEMORY[0x29EDBA070] numberWithBool:*(v302 + 66) != 0];
  }

  else
  {
    [MEMORY[0x29EDB8E28] null];
  }
  v55 = ;
  v350[1] = v55;
  v349[2] = @"face_detect_result_code";
  v56 = [MEMORY[0x29EDBA070] numberWithInt:*(v302 + 67)];
  v350[2] = v56;
  v57 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v350 forKeys:v349 count:3];
  [v287 addEntriesFromDictionary:v57];

  if (!*(v302 + 65))
  {
    goto LABEL_57;
  }

  v16 = 0;
  if (*(v302 + 66))
  {
    v36 = 0;
  }

  else
  {
    v36 = @"rp_noface";
  }

LABEL_56:
  v282 = v36;
LABEL_111:
  v17 = v246 != 0;
  v170 = v287;

  null2 = v170;
LABEL_112:
  v309 = 0;
  v310 = &v309;
  v311 = 0x3032000000;
  v312 = __Block_byref_object_copy__0;
  v313 = __Block_byref_object_dispose__0;
  v314 = 0;
  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  v172 = [mEMORY[0x29EDBFD50] BOOLForKey:@"framesDebugLoggingEnabled"];

  if (v172)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v322) = 0;
    frameDebugExtraQueue = self->_frameDebugExtraQueue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke;
    block[3] = &unk_29EE549E8;
    block[4] = self;
    block[5] = &v309;
    block[7] = v302;
    block[6] = buf;
    dispatch_sync(frameDebugExtraQueue, block);
    if (*(*&buf[8] + 24) == 1)
    {
      frameDebugExtraSemaphore = self->_frameDebugExtraSemaphore;
      v175 = dispatch_time(0, 250000000);
      dispatch_semaphore_wait(frameDebugExtraSemaphore, v175);
      v176 = self->_frameDebugExtraQueue;
      v307[0] = MEMORY[0x29EDCA5F8];
      v307[1] = 3221225472;
      v307[2] = __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_741;
      v307[3] = &unk_29EE54A10;
      v307[6] = v302;
      v307[4] = self;
      v307[5] = &v309;
      dispatch_sync(v176, v307);
    }

    _Block_object_dispose(buf, 8);
  }

  v326[0] = @"biolog_file_type";
  v326[1] = @"version";
  v327[0] = @"sequence";
  v327[1] = &unk_2A1E03810;
  v326[2] = @"nanoepoch";
  v177 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*v290];
  v327[2] = v177;
  v326[3] = @"epoch";
  [v300 timeIntervalSince1970];
  v178 = [BLHelper numberFromDouble:?];
  v327[3] = v178;
  v326[4] = @"epoch_seq_end";
  [v291 timeIntervalSince1970];
  v179 = [BLHelper numberFromDouble:?];
  v327[4] = v179;
  v327[5] = null2;
  v326[5] = @"seq_data";
  v326[6] = @"battery_level";
  v180 = +[BLHelper deviceBatteryLevel];
  v327[6] = v180;
  v326[7] = @"frame_debug_extra_array";
  v181 = [BLHelper objectOrNSNull:v310[5]];
  v327[7] = v181;
  v182 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v327 forKeys:v326 count:8];

  v183 = MEMORY[0x29EDBA0F8];
  v184 = *(v302 + 12);
  [v300 timeIntervalSince1970];
  v186 = v185;
  v187 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v300];
  v187 = [v183 stringWithFormat:@"seq-%05d-%ld%@", v184, v186, v187];

  if (v187)
  {
    v189 = [(BioLog *)self sequencePathForId:v290];
    v190 = v189;
    if (v189)
    {
      lastPathComponent = [v189 lastPathComponent];
      v192 = logSequenceInfo_withContext_orientation_identities__lastSequenceName;
      logSequenceInfo_withContext_orientation_identities__lastSequenceName = lastPathComponent;

      v193 = [v190 stringByAppendingPathComponent:v187];
      if (v193)
      {
        v194 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v182 options:3 error:0];
        v195 = v194;
        if (__osLog_BioLog)
        {
          v196 = __osLog_BioLog;
        }

        else
        {
          v196 = MEMORY[0x29EDCA988];
        }

        if (!v194)
        {
          if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = "jsonData";
            *&buf[12] = 2048;
            *&buf[14] = 0;
            *&buf[22] = 2080;
            v322 = &unk_296D32C0B;
            v323 = 2080;
            *v324 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
            *&v324[8] = 1024;
            v325 = 1513;
            _os_log_impl(&dword_296CA4000, v196, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          v195 = 0;
          goto LABEL_143;
        }

        v197 = v196;
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
        {
          var0 = context->var0;
          v199 = [v195 length];
          *buf = 134219010;
          *&buf[4] = var0;
          *&buf[12] = 2048;
          *&buf[14] = v199;
          *&buf[22] = 2112;
          v322 = v193;
          v323 = 1024;
          *v324 = v17;
          *&v324[4] = 1024;
          *&v324[6] = v16;
          _os_log_impl(&dword_296CA4000, v197, OS_LOG_TYPE_DEFAULT, "logSequenceInfo %llu: %lu > %@.json (canceled: %d, matchFailed: %d)\n", buf, 0x2Cu);
        }

        v200 = [v193 stringByAppendingString:@".json"];
        v201 = [(BioLog *)self createFileAtPath:v200 contents:v195 attributes:self->_fileAttributesAutoUpload purgeable:1];

        if (!v201)
        {
          [BioLog logSequenceInfo:withContext:orientation:identities:];
        }

        if (self->_internal || !*(v302 + 2))
        {
          v202 = v282;
          if (!v282)
          {
            if (!self->_internal)
            {
LABEL_137:
              if (v16 && self->_internal)
              {
                defaultWorkspace = [MEMORY[0x29EDB9400] defaultWorkspace];
                if ([defaultWorkspace applicationIsInstalled:@"com.apple.vetap.thegobbler"])
                {
                  mEMORY[0x29EDBFD50]2 = [MEMORY[0x29EDBFD50] sharedInstance];
                  v208 = [mEMORY[0x29EDBFD50]2 BOOLForKey:@"bioLogMatchFailureSettingsPrompt"];

                  if (v208)
                  {
                    v305[0] = MEMORY[0x29EDCA5F8];
                    v305[1] = 3221225472;
                    v305[2] = __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_786;
                    v305[3] = &unk_29EE54A38;
                    v190 = v190;
                    v306 = v190;
                    [BLHelper displayUserPrompt:0 strings:&unk_2A1E03AA8 completion:v305];
                  }
                }

                else
                {
                }
              }

              goto LABEL_143;
            }

LABEL_134:
            if (*(v302 + 14) == 2)
            {
              mEMORY[0x29EDBFD50]3 = [MEMORY[0x29EDBFD50] sharedInstance];
              v204 = [mEMORY[0x29EDBFD50]3 BOOLForKey:@"bioLogMatchTailspin"];

              if (v204)
              {
                v205 = [v193 stringByAppendingString:@".tailspin"];
                [BLHelper writeTailspinToFile:v205];
              }
            }

            goto LABEL_137;
          }
        }

        else
        {
          v202 = @"rp_canceled";
        }

        [BLRetention setRetentionType:v202 atPath:v190];
        if (!self->_internal)
        {
          goto LABEL_137;
        }

        goto LABEL_134;
      }

      [BioLog logSequenceInfo:v190 withContext:&v319 orientation:&v320 identities:buf];
    }

    else
    {
      [BioLog logSequenceInfo:withContext:orientation:identities:];
    }
  }

  else
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
  }

  v190 = v319;
  v193 = v320;
  v195 = *buf;
LABEL_143:

  _Block_object_dispose(&v309, 8);
LABEL_144:
}

void __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  *(a1[4] + 208) = 0;
  v2 = a1[7];
  v3 = *(v2 + 14);
  if (v3 == 2)
  {
    v4 = 2 * *(v2 + 105);
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = *(v2 + 66);
  }

  *(a1[4] + 208) = v4;
LABEL_6:
  v5 = a1[4];
  if (v5[24] == *(v2 + 12))
  {
    if (v5[25] >= v5[26])
    {
      v5[26] = 0;
      objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 184));
      v9 = a1[4];
      v10 = *(v9 + 184);
      *(v9 + 184) = 0;
    }

    else
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  else if (v5[26])
  {
    v6 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1[4] + 192);
      v8 = *(a1[7] + 12);
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "WARNING: _frameDebugExtraSequenceNumber != sequenceInfo->sequenceId.number (%lu != %u)\n", &v11, 0x12u);
    }
  }
}

void __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_741(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v3 = MEMORY[0x29EDCA988];
  if (*(v2 + 192) == *(a1[6] + 12))
  {
    *(v2 + 208) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 184));
    v4 = a1[4];
    v5 = *(v4 + 184);
    *(v4 + 184) = 0;
  }

  else
  {
    if (__osLog_BioLog)
    {
      v6 = __osLog_BioLog;
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1[4] + 192);
      v8 = *(a1[6] + 12);
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "WARNING: _frameDebugExtraSequenceNumber != sequenceInfo->sequenceId.number (%lu != %u)\n", &v11, 0x12u);
    }
  }

  if (__osLog_BioLog)
  {
    v9 = __osLog_BioLog;
  }

  else
  {
    v9 = v3;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(a1[5] + 8) + 40) != 0;
    v11 = 67109120;
    LODWORD(v12) = v10;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_INFO, "Note: Delayed _frameDebugExtraArray collected: %u\n", &v11, 8u);
  }
}

void __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_786(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v3 = [MEMORY[0x29EDBFD50] sharedInstance];
    [v3 setObject:*(a1 + 32) forKey:@"bioLogLastFailedSequence"];

    v4 = [MEMORY[0x29EDBFD50] sharedInstance];
    [v4 synchronize];

    if (__osLog_BioLog)
    {
      v5 = __osLog_BioLog;
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"prefs:root=INTERNAL_SETTINGS&path=Face%20ID";
      _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "displayUserPrompt completion openURL %@\n", &v9, 0xCu);
    }

    v6 = [MEMORY[0x29EDB9400] defaultWorkspace];
    v7 = [MEMORY[0x29EDB8E70] URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Face%20ID"];
    [v6 openSensitiveURL:v7 withOptions:0];
  }

  v8 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v8 setBool:0 forKey:@"bioLogMatchFailureSettingsPrompt"];
}

- (id)computeAllVsAllMatrixFromScoreDataArray:(id)array sequenceNumber:(unsigned __int16)number
{
  numberCopy = number;
  v37 = *MEMORY[0x29EDCA608];
  arrayCopy = array;
  [MEMORY[0x29EDBA0A8] predicateWithFormat:@"sequenceNumber == %hu", numberCopy];
  v27 = v30 = arrayCopy;
  v6 = [arrayCopy filteredArrayUsingPredicate:?];
  v29 = objc_opt_new();
  if ([v6 count])
  {
    v7 = 0;
    v28 = v6;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v30, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = v30;
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            sequenceNumber = [v15 sequenceNumber];
            if (sequenceNumber < [v8 sequenceNumber])
            {
              [v8 scoreVersus:v15];
              v17 = [MEMORY[0x29EDBA070] numberWithFloat:?];
              [v9 addObject:v17];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v12);
      }

      v6 = v28;
      if (v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v19 = [v28 objectAtIndexedSubscript:j];
          [v8 scoreVersus:v19];
          v20 = [MEMORY[0x29EDBA070] numberWithFloat:?];
          [v9 addObject:v20];
        }
      }

      v21 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:{objc_msgSend(v8, "sequenceNumber")}];
      v35[0] = v21;
      frameNumber = [v8 frameNumber];
      v35[1] = frameNumber;
      v23 = [v9 copy];
      v35[2] = v23;
      v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v35 count:3];

      [v29 addObject:v24];
      ++v7;
    }

    while (v7 < [v28 count]);
  }

  v25 = [v29 copy];

  return v25;
}

- (void)logSequenceDebug:(id)debug withContext:(id *)context
{
  v32 = *MEMORY[0x29EDCA608];
  debugCopy = debug;
  if (!self->_internal)
  {
    [BioLog logSequenceDebug:withContext:];
    goto LABEL_15;
  }

  v7 = [MEMORY[0x29EDBFD60] dateFromNanoTime:context->var2.var0 nanoseconds:0];
  v8 = MEMORY[0x29EDBA0F8];
  var1 = context->var2.var1;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v12 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v7];
  v13 = [v8 stringWithFormat:@"seq-%05d-%ld%@", var1, v11, v12];

  v14 = [(BioLog *)self sequencePathForId:&context->var2];
  v15 = [v14 stringByAppendingPathComponent:v13];

  if (__osLog_BioLog)
  {
    v16 = __osLog_BioLog;
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      var0 = context->var0;
      v18 = v16;
      *buf = 134218754;
      *&buf[4] = var0;
      v24 = 2048;
      v25 = [debugCopy length];
      v26 = 2112;
      v27 = v15;
      v28 = 2080;
      v29 = ".prlt";
      _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "logSequenceDebug %llu: %lu > %@%s\n", buf, 0x2Au);
    }

    v19 = [v15 stringByAppendingString:@".prlt"];
    v20 = [(BioLog *)self createFileAtPath:v19 contents:debugCopy attributes:self->_fileAttributesProtected purgeable:1];

    if (v20)
    {
      goto LABEL_9;
    }

    [BioLog logSequenceDebug:withContext:];
LABEL_15:
    v15 = v21;
    v13 = v22;
    v7 = *buf;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "filePath";
    v24 = 2048;
    v25 = 0;
    v26 = 2080;
    v27 = &unk_296D32C0B;
    v28 = 2080;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v30 = 1024;
    v31 = 1607;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v15 = 0;
LABEL_9:
}

- (id)eventPathWithName:(id)name date:(id)date
{
  v6 = MEMORY[0x29EDBA0F8];
  sequenceNumber = self->_sequenceNumber;
  dateCopy = date;
  nameCopy = name;
  [dateCopy timeIntervalSince1970];
  v11 = v10;
  v12 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:dateCopy];

  nameCopy = [v6 stringWithFormat:@"%05d-%ld%@-%@.evt", sequenceNumber, v11, v12, nameCopy];

  v14 = [(NSString *)self->_logPath stringByAppendingPathComponent:nameCopy];
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  LOBYTE(nameCopy) = [defaultManager fileExistsAtPath:v14];

  if ((nameCopy & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
    v17 = [defaultManager2 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:self->_fileAttributes error:0];

    if (v17)
    {
      [BLRetention setPurgeableAtPath:v14 directory:1];
    }

    else
    {
      [BioLog eventPathWithName:v14 date:?];
      v14 = 0;
    }
  }

  return v14;
}

- (void)logRemoveIdentity:(id)identity withTemplateListData:(id)data templateSize:(unint64_t)size client:(id)client isPO:(BOOL)o
{
  oCopy = o;
  v74[4] = *MEMORY[0x29EDCA608];
  identityCopy = identity;
  dataCopy = data;
  clientCopy = client;
  date = [MEMORY[0x29EDB8DB0] date];
  v16 = date;
  if (self->_internal)
  {
    selfCopy = self;
    sizeCopy = size;
    v63 = dataCopy;
    v73[0] = @"biolog_file_type";
    v73[1] = @"version";
    v74[0] = @"event";
    v74[1] = &unk_2A1E037F8;
    v73[2] = @"epoch";
    v17 = MEMORY[0x29EDBA070];
    [date timeIntervalSince1970];
    v59 = [v17 numberWithDouble:?];
    v73[3] = @"log_data";
    v71[0] = @"event_name";
    v71[1] = @"identity_part";
    v18 = @"fullface";
    v74[2] = v59;
    v48 = oCopy;
    if (oCopy)
    {
      v18 = @"periocular";
    }

    v72[0] = @"identity_removal";
    v72[1] = v18;
    v71[2] = @"identity_uuid";
    v60 = v16;
    uuid = [identityCopy uuid];
    uUIDString = [uuid UUIDString];
    v56 = [BLHelper objectOrNSNull:uUIDString];
    v72[2] = v56;
    v71[3] = @"identity_name";
    name = [identityCopy name];
    v54 = [BLHelper objectOrNSNull:name];
    v72[3] = v54;
    v71[4] = @"identity_cretion_time";
    v19 = MEMORY[0x29EDBA070];
    creationTime = [identityCopy creationTime];
    [creationTime timeIntervalSince1970];
    v52 = [v19 numberWithDouble:?];
    v51 = [BLHelper objectOrNSNull:v52];
    v72[4] = v51;
    v71[5] = @"client_bundle_id";
    clientInfo = [clientCopy clientInfo];
    v49 = [clientInfo valueForKey:@"BKClientBundleIdentifier"];
    v20 = [BLHelper objectOrNSNull:v49];
    v72[5] = v20;
    v71[6] = @"client_process_name";
    clientInfo2 = [clientCopy clientInfo];
    v22 = [clientInfo2 valueForKey:@"BKClientProcessName"];
    v23 = [BLHelper objectOrNSNull:v22];
    v72[6] = v23;
    v71[7] = @"client_connection_id";
    v62 = clientCopy;
    clientInfo3 = [clientCopy clientInfo];
    v25 = [clientInfo3 valueForKey:@"BKClientConnectionId"];
    v26 = [BLHelper objectOrNSNull:v25];
    v72[7] = v26;
    v71[8] = @"user_id";
    v64 = identityCopy;
    v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(identityCopy, "userID")}];
    v72[8] = v27;
    v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v72 forKeys:v71 count:9];
    v74[3] = v28;
    v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v74 forKeys:v73 count:4];

    v30 = v29;
    v31 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v29 options:3 error:0];
    if (!v31)
    {
      [BioLog logRemoveIdentity:withTemplateListData:templateSize:client:isPO:];
    }

    v32 = MEMORY[0x29EDBA0F8];
    v16 = v60;
    sequenceNumber = selfCopy->_sequenceNumber;
    [v60 timeIntervalSince1970];
    v35 = v34;
    v36 = [(NSDateFormatter *)selfCopy->_milisecondsFormatter stringFromDate:v60];
    v37 = [v32 stringWithFormat:@"evt-%05d-%ld%@", sequenceNumber, v35, v36];

    v38 = [(BioLog *)selfCopy eventPathWithName:@"remove" date:v60];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 stringByAppendingPathComponent:v37];
      if (selfCopy->_internal)
      {
        v41 = @"rp_enroll";
      }

      else
      {
        v41 = @"rp_keep";
      }

      [BLRetention setRetentionType:v41 atPath:v39];
      if (__osLog_BioLog)
      {
        v42 = __osLog_BioLog;
      }

      else
      {
        v42 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        uuid2 = [v64 uuid];
        *buf = 138412802;
        v66 = uuid2;
        v67 = 2112;
        v68 = v40;
        v69 = 2080;
        v70 = ".json";
        _os_log_impl(&dword_296CA4000, v43, OS_LOG_TYPE_DEFAULT, "logRemoveIdentity %@ > %@%s\n", buf, 0x20u);
      }

      v45 = [v40 stringByAppendingString:@".json"];
      v46 = [(BioLog *)selfCopy createFileAtPath:v45 contents:v31 attributes:selfCopy->_fileAttributesProtected purgeable:1];

      clientCopy = v62;
      if (!v46)
      {
        [BioLog logRemoveIdentity:withTemplateListData:templateSize:client:isPO:];
      }

      dataCopy = v63;
      [(BioLog *)selfCopy logTemplateList:v63 withTemplateSize:sizeCopy sequenceNumber:selfCopy->_sequenceNumber date:v60 toPath:v39 isPO:v48];

      identityCopy = v64;
    }

    else
    {
      [BioLog logRemoveIdentity:v31 withTemplateListData:v29 templateSize:v37 client:? isPO:?];
      dataCopy = v63;
      identityCopy = v64;
      clientCopy = v62;
    }
  }

  else
  {
    [BioLog logRemoveIdentity:withTemplateListData:templateSize:client:isPO:];
  }
}

- (void)logSecureFaceDetectStart:(id *)start
{
  v38 = *MEMORY[0x29EDCA608];
  secureFaceDetectDict = self->_secureFaceDetectDict;
  v6 = MEMORY[0x29EDCA988];
  if (secureFaceDetectDict)
  {
    if (__osLog_BioLog)
    {
      v7 = __osLog_BioLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_ERROR, "logSecureFaceDetectStart: logSecureFaceDetectInfo previous sequence!\n", buf, 2u);
    }

    [(BioLog *)self logSecureFaceDetectInfo];
    secureFaceDetectDict = self->_secureFaceDetectDict;
  }

  self->_secureFaceDetectDict = 0;

  v8 = *(&start->var2 + 1);
  *(&self->_secureSequenceId.nanotime + 7) = *(&start->var3.var0 + 3);
  self->_secureSequenceId.nanotime = v8;
  if (self->_secureSequenceId.type != 3 || ([MEMORY[0x29EDBFD50] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLForKey:", @"faceDetectSequencesLoggingEnabled"), v9, v10))
  {
    if (__osLogTrace_BioLog)
    {
      v11 = __osLogTrace_BioLog;
    }

    else
    {
      v11 = v6;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = WORD2(start->var3.var0);
      *buf = 67109120;
      v37 = v12;
      _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "logSecureFaceDetectStart <- [%u:*]\n", buf, 8u);
    }

    v13 = os_transaction_create();
    dispatchQueueWriting = self->_dispatchQueueWriting;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __35__BioLog_logSecureFaceDetectStart___block_invoke;
    block[3] = &unk_29EE546F8;
    block[4] = self;
    v31 = v13;
    v15 = v13;
    dispatch_async(dispatchQueueWriting, block);

    v16 = [MEMORY[0x29EDBFD60] dateFromNanoTime:self->_secureSequenceId.nanotime nanoseconds:0];
    v29 = objc_alloc(MEMORY[0x29EDB8E00]);
    v34[0] = @"biolog_file_type";
    v34[1] = @"version";
    v35[0] = @"secureFaceDetectSequence";
    v35[1] = &unk_2A1E03828;
    v34[2] = @"epoch";
    v17 = MEMORY[0x29EDBA070];
    [v16 timeIntervalSince1970];
    v18 = [v17 numberWithDouble:?];
    v35[2] = v18;
    v34[3] = @"seq_data";
    v19 = MEMORY[0x29EDB8E00];
    v32[0] = @"request";
    v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:start->var0];
    v33[0] = v20;
    v32[1] = @"flags";
    v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:start->var1];
    v33[1] = v21;
    v32[2] = @"sessionID";
    v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:start->var2];
    v33[2] = v22;
    v33[3] = MEMORY[0x29EDB8EA8];
    v32[3] = @"stopped";
    v32[4] = @"final_state";
    v33[4] = &unk_2A1E03840;
    v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v33 forKeys:v32 count:5];
    v24 = [v19 dictionaryWithDictionary:v23];
    v35[3] = v24;
    v34[4] = @"frame_array";
    array = [MEMORY[0x29EDB8DE8] array];
    v35[4] = array;
    v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
    v27 = [v29 initWithDictionary:v26];
    v28 = self->_secureFaceDetectDict;
    self->_secureFaceDetectDict = v27;
  }
}

- (void)logSecureFaceDetectState:(int)state
{
  v3 = *&state;
  if (self->_secureSequenceId.type != 3 || ([MEMORY[0x29EDBFD50] sharedInstance], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"faceDetectSequencesLoggingEnabled"), v5, v6))
  {
    secureFaceDetectDict = self->_secureFaceDetectDict;
    if (secureFaceDetectDict)
    {
      obj = secureFaceDetectDict;
      objc_sync_enter(obj);
      v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
      v9 = [(NSDictionary *)self->_secureFaceDetectDict objectForKeyedSubscript:@"seq_data"];
      [v9 setObject:v8 forKeyedSubscript:@"final_state"];

      objc_sync_exit(obj);
    }

    else
    {
      [BioLog logSecureFaceDetectState:];
    }
  }
}

- (void)logSecureFaceDetectStop
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logSecureFrameMeta:(id)meta timestamp:(id)timestamp
{
  v104 = *MEMORY[0x29EDCA608];
  metaCopy = meta;
  timestampCopy = timestamp;
  if (!metaCopy)
  {
    [BioLog logSecureFrameMeta:timestamp:];
    goto LABEL_76;
  }

  selfCopy = self;
  if (self->_secureSequenceId.type != 3 || ([MEMORY[0x29EDBFD50] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"faceDetectSequencesLoggingEnabled"), v6, v7))
  {
    if (!self->_secureFaceDetectDict)
    {
      [BioLog logSecureFrameMeta:timestamp:];
      goto LABEL_76;
    }

    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    if (!dictionary)
    {
      [BioLog logSecureFrameMeta:timestamp:];
      goto LABEL_76;
    }

    v8 = MEMORY[0x29EDBA070];
    [timestampCopy timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"timestamp"];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = metaCopy;
    v74 = [obj countByEnumeratingWithState:&v79 objects:v103 count:16];
    if (!v74)
    {
      goto LABEL_75;
    }

    v72 = *MEMORY[0x29EDBD598];
    v73 = *v80;
    v64 = *MEMORY[0x29EDBD590];
    v62 = *MEMORY[0x29EDBD588];
    v61 = *MEMORY[0x29EDBD5A0];
    *&v10 = 136316162;
    v57 = v10;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v80 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v79 + 1) + 8 * v11);
        if (v12)
        {
          objc_msgSend_time(*(*(&v79 + 1) + 8 * v11));
          if (v78)
          {
            v13 = MEMORY[0x29EDBA070];
            objc_msgSend_time(v12);
            objc_msgSend_time(v12);
            *&v14 = v77 / v76;
            null = [v13 numberWithFloat:v14];
            goto LABEL_16;
          }
        }

        else
        {
          v78 = 0;
        }

        null = [MEMORY[0x29EDB8E28] null];
LABEL_16:
        v16 = null;
        [dictionary setObject:null forKeyedSubscript:{@"timestamp_av", v57}];

        type = [v12 type];
        LODWORD(v16) = type == v72;

        if (v16)
        {
          v29 = v12;
          v30 = [dictionary objectForKeyedSubscript:@"face_id_readiness"];
          v31 = v30 == 0;

          if (!v31)
          {
            v51 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = v57;
              v94 = "frameDict[@face_id_readiness] == ((void *)0)";
              v95 = 2048;
              v96 = 0;
              v97 = 2080;
              v98 = &unk_296D32C0B;
              v99 = 2080;
              v100 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
              v101 = 1024;
              v102 = 1835;
              _os_log_impl(&dword_296CA4000, v51, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }
          }

          v91[0] = @"ready";
          v27 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v29, "isReady")}];
          v92[0] = v27;
          v91[1] = @"coaching_status";
          v28 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v29, "coachingStatus")}];
          v92[1] = v28;
          v91[2] = @"user_engagement_status";
          v32 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v29, "userEngagementStatus")}];
          v92[2] = v32;
          v33 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v92 forKeys:v91 count:3];
          [dictionary setObject:v33 forKeyedSubscript:@"face_id_readiness"];
        }

        else
        {
          type2 = [v12 type];
          v19 = type2 == v64;

          if (v19)
          {
            v34 = v12;
            v35 = [dictionary objectForKeyedSubscript:@"face"];
            v36 = v35 == 0;

            if (v36)
            {
              array = [MEMORY[0x29EDB8DE8] array];
              [dictionary setObject:array forKeyedSubscript:@"face"];
            }

            v27 = [dictionary objectForKeyedSubscript:@"face"];
            v89[0] = @"occluded_features";
            if ([v34 hasOccludedFeatures])
            {
              [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "occludedFeatures")}];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v28 = ;
            v90[0] = v28;
            v89[1] = @"pitch_angle";
            if ([v34 hasPitchAngle])
            {
              [v34 pitchAngle];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v71 = ;
            v90[1] = v71;
            v89[2] = @"yaw_angle";
            if ([v34 hasYawAngle])
            {
              [v34 yawAngle];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v70 = ;
            v90[2] = v70;
            v89[3] = @"roll_angle";
            if ([v34 hasRollAngle])
            {
              [v34 rollAngle];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v69 = ;
            v90[3] = v69;
            v89[4] = @"distance";
            if ([v34 hasDistance])
            {
              [v34 distance];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v68 = ;
            v90[4] = v68;
            v89[5] = @"bounds";
            v87[0] = @"x";
            [v34 bounds];
            v67 = [BLHelper numberFromDouble:?];
            v88[0] = v67;
            v87[1] = @"y";
            [v34 bounds];
            v66 = [BLHelper numberFromDouble:v41];
            v88[1] = v66;
            v87[2] = @"width";
            [v34 bounds];
            v65 = [BLHelper numberFromDouble:v42];
            v88[2] = v65;
            v87[3] = @"height";
            [v34 bounds];
            v44 = [BLHelper numberFromDouble:v43];
            v88[3] = v44;
            v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v88 forKeys:v87 count:4];
            v90[5] = v45;
            v89[6] = @"paying_attention";
            if ([v34 hasPayingAttention])
            {
              [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "payingAttention")}];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v46 = ;
            v90[6] = v46;
            v89[7] = @"orientation";
            if ([v34 hasOrientation])
            {
              [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v34, "orientation")}];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v47 = ;
            v90[7] = v47;
            v89[8] = @"confidence";
            if ([v34 hasConfidence])
            {
              [v34 confidence];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v48 = ;
            v90[8] = v48;
            v49 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v90 forKeys:v89 count:9];
            [v27 addObject:v49];
          }

          else
          {
            type3 = [v12 type];
            v21 = type3 == v62;

            if (v21)
            {
              v38 = v12;
              v39 = [dictionary objectForKeyedSubscript:@"eye_relief_status"];
              v40 = v39 == 0;

              if (!v40)
              {
                v52 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = v57;
                  v94 = "frameDict[@eye_relief_status] == ((void *)0)";
                  v95 = 2048;
                  v96 = 0;
                  v97 = 2080;
                  v98 = &unk_296D32C0B;
                  v99 = 2080;
                  v100 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
                  v101 = 1024;
                  v102 = 1873;
                  _os_log_impl(&dword_296CA4000, v52, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

              v85[0] = @"eye_relief_status";
              v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v38, "eyeReliefStatus")}];
              v85[1] = @"distance";
              v86[0] = v27;
              if ([v38 hasDistance])
              {
                [v38 distance];
                [BLHelper numberFromDouble:?];
              }

              else
              {
                [MEMORY[0x29EDB8E28] null];
              }
              v28 = ;
              v86[1] = v28;
              v50 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
              [dictionary setObject:v50 forKeyedSubscript:@"eye_relief_status"];
            }

            else
            {
              type4 = [v12 type];
              v23 = type4 == v61;

              if (!v23)
              {
                goto LABEL_57;
              }

              v24 = v12;
              v25 = [dictionary objectForKeyedSubscript:@"motion_to_wake"];
              v26 = v25 == 0;

              if (!v26)
              {
                if (__osLog_BioLog)
                {
                  v53 = __osLog_BioLog;
                }

                else
                {
                  v53 = MEMORY[0x29EDCA988];
                }

                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = v57;
                  v94 = "frameDict[@motion_to_wake] == ((void *)0)";
                  v95 = 2048;
                  v96 = 0;
                  v97 = 2080;
                  v98 = &unk_296D32C0B;
                  v99 = 2080;
                  v100 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
                  v101 = 1024;
                  v102 = 1883;
                  _os_log_impl(&dword_296CA4000, v53, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

              v83 = @"detected_motion";
              v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v24, "detectedMotion")}];
              v84 = v27;
              v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
              [dictionary setObject:v28 forKeyedSubscript:@"motion_to_wake"];
            }
          }
        }

LABEL_57:
        ++v11;
      }

      while (v74 != v11);
      v54 = [obj countByEnumeratingWithState:&v79 objects:v103 count:16];
      v74 = v54;
      if (!v54)
      {
LABEL_75:

        v55 = selfCopy->_secureFaceDetectDict;
        objc_sync_enter(v55);
        v56 = [(NSDictionary *)selfCopy->_secureFaceDetectDict objectForKeyedSubscript:@"frame_array"];
        [v56 addObject:dictionary];

        objc_sync_exit(v55);
        break;
      }
    }
  }

LABEL_76:
}

- (void)logSecureFaceDetectInfo
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

void __33__BioLog_logSecureFaceDetectInfo__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:*(a1 + 32) options:3 error:0];
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"seq_data"];
    v6 = [v5 objectForKeyedSubscript:@"final_state"];
    v7 = [v6 isEqual:&unk_2A1E03828];

    if (v7)
    {
      [BLRetention setRetentionType:@"rp_noface" atPath:*(a1 + 40)];
    }

    objc_sync_exit(v3);

    if (__osLog_BioLog)
    {
      v8 = __osLog_BioLog;
    }

    else
    {
      v8 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 length];
      v11 = *(a1 + 48);
      v14 = 134218242;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "logSecureFaceDetectInfo: %lu > %@\n", &v14, 0x16u);
    }

    if (([*(a1 + 56) createFileAtPath:*(a1 + 48) contents:v4 attributes:*(*(a1 + 56) + 72) purgeable:1] & 1) == 0)
    {
      __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_1();
    }
  }

  else
  {
    __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_2(v3);
  }

  objc_autoreleasePoolPop(v2);
  v12 = *(a1 + 56);
  v13 = *(v12 + 248);
  *(v12 + 248) = 0;
}

- (void)extractFrameDebug:(id *)debug data:(id)data
{
  v53 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  v8 = dataCopy;
  if (!debug)
  {
    if (!OUTLINED_FUNCTION_12(__osLog_BioLog))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_2_0();
    v51 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v52 = 803;
LABEL_33:
    OUTLINED_FUNCTION_34(&dword_296CA4000, v4, v37, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v50);
    goto LABEL_34;
  }

  if (!dataCopy)
  {
    if (!OUTLINED_FUNCTION_12(__osLog_BioLog))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_2_0();
    v51 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v52 = 804;
    goto LABEL_33;
  }

  var1 = debug->var1;
  frameDebugExtraSequenceNumber = self->_frameDebugExtraSequenceNumber;
  if (frameDebugExtraSequenceNumber > var1)
  {
    goto LABEL_34;
  }

  if (frameDebugExtraSequenceNumber < var1)
  {
    frameDebugExtraArray = self->_frameDebugExtraArray;
    self->_frameDebugExtraArray = 0;

    self->_frameDebugExtraSequenceNumber = debug->var1;
    self->_frameDebugExtraFrameCount = 0;
    v12 = dispatch_semaphore_create(0);
    frameDebugExtraSemaphore = self->_frameDebugExtraSemaphore;
    self->_frameDebugExtraSemaphore = v12;
  }

  ++self->_frameDebugExtraFrameCount;
  if ([(NSMutableArray *)self->_frameDebugExtraArray count]> 0xC7)
  {
    goto LABEL_34;
  }

  if (!self->_frameDebugExtraArray)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v15 = self->_frameDebugExtraArray;
    self->_frameDebugExtraArray = array;

    if (!self->_frameDebugExtraArray)
    {
      if (OUTLINED_FUNCTION_12(__osLog_BioLog))
      {
        OUTLINED_FUNCTION_2_0();
        v51 = &unk_296D32C0B;
        OUTLINED_FUNCTION_5_0();
        v52 = 818;
        goto LABEL_33;
      }

LABEL_34:
      v19 = 0;
      goto LABEL_24;
    }
  }

  v16 = MEMORY[0x29EDB8E00];
  v48 = @"frameNumber";
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:debug->var2];
  v49 = v17;
  v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v19 = [v16 dictionaryWithDictionary:v18];

  [(NSMutableArray *)self->_frameDebugExtraArray addObject:v19];
  bytes = [v8 bytes];
  if ([v8 length] <= 0x1F)
  {
    if (!OUTLINED_FUNCTION_14(__osLog_BioLog))
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_2_0();
    v51 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v52 = 826;
    goto LABEL_40;
  }

  var4 = debug->var4;
  v22 = &off_296D29000;
  if (var4 != 1)
  {
LABEL_18:
    if (var4 != 2 || (v32 = *(bytes + 40), !v32))
    {
LABEL_22:
      if (self->_frameDebugExtraFrameCount == self->_frameDebugExtraFrameCountExpected)
      {
        frameDebugExtraQueue = self->_frameDebugExtraQueue;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = *(v22 + 462);
        block[2] = __33__BioLog_extractFrameDebug_data___block_invoke_2;
        block[3] = &unk_29EE54570;
        block[4] = self;
        dispatch_async(frameDebugExtraQueue, block);
      }

      goto LABEL_24;
    }

    if (v32 + 336892 <= [v8 length])
    {
      v33 = v22;
      v34 = self->_frameDebugExtraQueue;
      v44[0] = MEMORY[0x29EDCA5F8];
      v44[1] = *(v33 + 462);
      v44[2] = __33__BioLog_extractFrameDebug_data___block_invoke;
      v44[3] = &unk_29EE54998;
      v45 = v19;
      v35 = v34;
      v22 = v33;
      [BLHelper median:bytes + v32 + 168 count:0x4000 queue:v35 completionBlock:v44];

      goto LABEL_22;
    }

    if (!OUTLINED_FUNCTION_14(__osLog_BioLog))
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_2_0();
    v51 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v52 = 864;
LABEL_40:
    OUTLINED_FUNCTION_34(&dword_296CA4000, &self->super, v38, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v50);
    goto LABEL_24;
  }

  v23 = *(bytes + 36);
  if (!v23)
  {
    goto LABEL_22;
  }

  v42 = v19;
  if (v23 + 674432 <= [v8 length])
  {
    v40 = bytes;
    v41 = v8;
    v24 = bytes + v23;
    v25 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:3];
    v26 = 0;
    v27 = v24 + 96072;
    do
    {
      v28 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:3];
      for (i = 0; i != 12; i += 4)
      {
        v30 = [MEMORY[0x29EDBA070] numberWithInt:*(v27 + i)];
        [v28 addObject:v30];
      }

      [v25 addObject:v28];

      ++v26;
      v27 += 12;
    }

    while (v26 != 3);
    v46 = @"pose_bin_count";
    v47 = v25;
    v31 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v19 = v42;
    [v42 addEntriesFromDictionary:v31];

    var4 = debug->var4;
    bytes = v40;
    v8 = v41;
    v22 = &off_296D29000;
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_2_0();
    v51 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v52 = 837;
    OUTLINED_FUNCTION_34(&dword_296CA4000, &self->super, v39, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v50);
  }

LABEL_24:
}

- (void)logPasscodeValidatedWithUserID:(unsigned int)d
{
  v3 = *&d;
  v53[4] = *MEMORY[0x29EDCA608];
  date = [MEMORY[0x29EDB8DB0] date];
  v6 = date;
  if (self->_internal)
  {
    v52[0] = @"biolog_file_type";
    v52[1] = @"version";
    v53[0] = @"event";
    v53[1] = &unk_2A1E037F8;
    v52[2] = @"epoch";
    v7 = MEMORY[0x29EDBA070];
    [date timeIntervalSince1970];
    v8 = [v7 numberWithDouble:?];
    v53[2] = v8;
    v52[3] = @"log_data";
    v50[0] = @"event_name";
    v50[1] = @"user_id";
    v51[0] = @"passcode_validated";
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
    v51[1] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v53[3] = v10;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v53 forKeys:v52 count:4];

    v12 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v11 options:3 error:0];
    if (!v12)
    {
      OUTLINED_FUNCTION_20_0();
      v29 = (v24 ? MEMORY[0x29EDCA988] : v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        OUTLINED_FUNCTION_11_0();
        *&v45[4] = &unk_296D32C0B;
        v46 = v30;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
        v48 = 1024;
        v49 = 1721;
        OUTLINED_FUNCTION_34(&dword_296CA4000, v29, v31, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
      }
    }

    v13 = MEMORY[0x29EDBA0F8];
    sequenceNumber = self->_sequenceNumber;
    [v6 timeIntervalSince1970];
    v16 = v15;
    v17 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v6];
    v18 = [v13 stringWithFormat:@"evt-%05d-%ld%@", sequenceNumber, v16, v17];

    v19 = [(BioLog *)self eventPathWithName:@"passcode" date:v6];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 stringByAppendingPathComponent:v18];
      if (self->_internal)
      {
        v22 = @"rp_passcode";
      }

      else
      {
        v22 = @"rp_keep";
      }

      [BLRetention setRetentionType:v22 atPath:v20];
      OUTLINED_FUNCTION_20_0();
      if (v24)
      {
        v25 = MEMORY[0x29EDCA988];
      }

      else
      {
        v25 = v23;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v41 = v3;
        v42 = 2112;
        v43 = v21;
        v44 = 2080;
        *v45 = ".json";
        _os_log_impl(&dword_296CA4000, v25, OS_LOG_TYPE_DEFAULT, "logPasscodeValidated %d > %@%s\n", buf, 0x1Cu);
      }

      v26 = [v21 stringByAppendingString:@".json"];
      v27 = [(BioLog *)self createFileAtPath:v26 contents:v12 attributes:self->_fileAttributesProtected purgeable:1];

      if (!v27)
      {
        OUTLINED_FUNCTION_20_0();
        if (v24)
        {
          v37 = MEMORY[0x29EDCA988];
        }

        else
        {
          v37 = v36;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          OUTLINED_FUNCTION_11_0();
          *&v45[4] = &unk_296D32C0B;
          v46 = v38;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
          v48 = 1024;
          v49 = 1739;
          OUTLINED_FUNCTION_34(&dword_296CA4000, v37, v39, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      if (v24)
      {
        v33 = MEMORY[0x29EDCA988];
      }

      else
      {
        v33 = v32;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        OUTLINED_FUNCTION_11_0();
        *&v45[4] = &unk_296D32C0B;
        v46 = v34;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
        v48 = 1024;
        v49 = 1726;
        OUTLINED_FUNCTION_34(&dword_296CA4000, v33, v35, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
      }

      v21 = 0;
      v20 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v21 = 0;
    v20 = 0;
    v18 = 0;
  }
}

- (void)initForInternalLogging:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    *v10 = 136316162;
    *&v10[4] = "err == 0 ";
    *&v10[12] = 2048;
    *&v10[14] = a1;
    *&v10[22] = 2080;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16], &unk_296D32C0B);
  }
}

- (void)initForInternalLogging:(void *)a1 .cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)initForInternalLogging:(void *)a1 .cold.3(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)initForInternalLogging:(void *)a1 .cold.4(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)initForInternalLogging:(void *)a1 .cold.5(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)initForInternalLogging:(void *)a1 .cold.6(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)logLogContextWithDate:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logLogContextWithDate:.cold.2()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logAllVsAllWithDate:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logAllVsAllWithDate:.cold.2()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (id)sequencePathForId:(void *)a3 .cold.1(id *a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11);
  }

  result = *a1;
  *a3 = *a2;
  *a2 = result;
  return result;
}

- (void)logCameraFrame:withBuffers:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logCameraFrame:withBuffers:.cold.2()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (BOOL)logCameraFrame:(_BYTE *)a1 sensorRawData:metaData:.cold.1(_BYTE *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return *a1 == 0;
}

- (double)logCameraFrame:(uint64_t)a1 sensorRawData:metaData:.cold.2(uint64_t a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *&result = 0x100000001;
  *(a1 + 50) = 0x100000001;
  return result;
}

- (void)logCameraFrame:sensorRawData:metaData:.cold.3()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logCameraFrame:sensorRawData:metaData:.cold.4()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.2()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.3()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (double)logInternalCameraFrame:(uint64_t)a1 sensorRawData:metaData:.cold.4(uint64_t a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *&result = 0x100000001;
  *(a1 + 50) = 0x100000001;
  return result;
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.5()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.6()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.7()
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_48();
}

- (void)logTemplate:withSequenceNumber:date:index:toPath:isPO:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logTemplateList:withTemplateSize:sequenceNumber:date:toPath:isPO:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logTemplateList:withTemplateSize:sequenceNumber:date:toPath:isPO:.cold.2()
{
  v1 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_INFO, "logTemplateList: No templates.\n", v2, 2u);
  }
}

- (void)logTemplateList:withContext:isPO:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logTemplateList:(void *)a1 withContext:isPO:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)logTemplate:withContext:.cold.1()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)logTemplate:withContext:.cold.2()
{
  OUTLINED_FUNCTION_38();
  v5 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    v3 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v4 = 1029;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2);
  }

  OUTLINED_FUNCTION_17_0();
}

- (void)logSequenceInfo:(_BYTE *)a1 withContext:orientation:identities:.cold.1(_BYTE *a1)
{
  v2 = __osLog_BioLog;
  if (!__osLog_BioLog)
  {
    v2 = MEMORY[0x29EDCA988];
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a1 = 0;
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.2()
{
  v0 = __osLog_BioLog;
  if (!__osLog_BioLog)
  {
    v0 = MEMORY[0x29EDCA988];
  }

  v1 = v0;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)logSequenceInfo:(uint64_t)a1 withContext:(void *)a2 orientation:(void *)a3 identities:(void *)a4 .cold.3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLog_BioLog)
  {
    v8 = __osLog_BioLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v11 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v12 = 1510;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10);
  }

  *a4 = 0;
  *a3 = 0;
  *a2 = a1;
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.4()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.5()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.6()
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_48();
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.7()
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_48();
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.8()
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_48();
}

- (void)logSequenceDebug:withContext:.cold.1()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)logSequenceDebug:withContext:.cold.2()
{
  OUTLINED_FUNCTION_38();
  v5 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    v3 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v4 = 1611;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2);
  }

  OUTLINED_FUNCTION_17_0();
}

- (void)eventPathWithName:(void *)a1 date:.cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)logRemoveIdentity:withTemplateListData:templateSize:client:isPO:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logRemoveIdentity:withTemplateListData:templateSize:client:isPO:.cold.2()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logRemoveIdentity:withTemplateListData:templateSize:client:isPO:.cold.3()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logRemoveIdentity:(void *)a3 withTemplateListData:templateSize:client:isPO:.cold.4(void *a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11);
  }
}

- (void)logSecureFaceDetectState:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logSecureFrameMeta:timestamp:.cold.1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logSecureFrameMeta:timestamp:.cold.2()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)logSecureFrameMeta:timestamp:.cold.3()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

void __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_1()
{
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

void __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_2(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  objc_sync_exit(a1);
}

@end