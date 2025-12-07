@interface PLUtilities
+ (BOOL)AppDeletionEnabled;
+ (BOOL)OverrideAllowlistEnabled;
+ (BOOL)PLCopyItemsFromPath:(id)path toPath:(id)toPath;
+ (BOOL)PreUnlockTelemetryEnabled;
+ (BOOL)SwitchToIncrementalVacuumEnabled;
+ (BOOL)allowQueryFromPeer:(id)peer;
+ (BOOL)compressWithSource:(id)source withDestination:(id)destination withLevel:(int)level;
+ (BOOL)createAndChownDirectory:(id)directory;
+ (BOOL)createAndChownDirectoryIfDirectoryDoesNotExist:(id)exist;
+ (BOOL)decompressWithSource:(id)source withDestination:(id)destination withRemoveSrc:(BOOL)src;
+ (BOOL)deviceRebooted;
+ (BOOL)gasGaugeEnabled;
+ (BOOL)hasBattery;
+ (BOOL)hasGasGauge;
+ (BOOL)hasInternalKey;
+ (BOOL)hasInternalKey:(id)key;
+ (BOOL)inBUIDemoMode;
+ (BOOL)isALSCurveHigherThanDefault;
+ (BOOL)isAppAnalyticsEnabled;
+ (BOOL)isDaemonOrAppleXPCService:(int)service;
+ (BOOL)isEduMode;
+ (BOOL)isFullModeDaemon;
+ (BOOL)isHealthDataSubmissionAllowed;
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isImproveFitnessPlusEnabled;
+ (BOOL)isLiteModeDaemon;
+ (BOOL)isPerfPowerMetricd;
+ (BOOL)isPowerexceptionsd;
+ (BOOL)isPowerlogHelperd;
+ (BOOL)isSafetyDataSubmissionAllowed;
+ (BOOL)isSiriEnabled;
+ (BOOL)isValidString:(id)string;
+ (BOOL)moveItemAtPath:(id)path toPath:(id)toPath withName:(id)name error:(id *)error;
+ (BOOL)runningAsMobileUser;
+ (BOOL)shouldCreateQuarantine;
+ (BOOL)shouldLogForEntryKey:(id)key;
+ (BOOL)shouldLogPreUnlockTelemetry;
+ (double)getDefaultL0bThresholdForDeviceType;
+ (double)getLastSystemTimeOffset;
+ (double)getMachbaseTimeRatio;
+ (double)roundToSigFigDouble:(double)double withSigFig:(int)fig;
+ (double)scaledPowerBasedOnPoint:(double)point withPowerModel:(id)model;
+ (id)JSONSanitizeDictionary:(id)dictionary;
+ (id)MavRevStringQuery;
+ (id)allSubClassesForClass:(Class)class;
+ (id)binaryPathForPid:(int)pid;
+ (id)buildVersion;
+ (id)bundleIDFromPid:(int)pid;
+ (id)bundleIDFromProcessName:(id)name;
+ (id)bundleIDFromURL:(id)l;
+ (id)bundleVersionFromURL:(id)l;
+ (id)cleanLaunchdApplicationMacOS:(id)s;
+ (id)cleanLaunchdName:(id)name;
+ (id)containerPath;
+ (id)crashReporterKey;
+ (id)dateFromTimeval:(timeval)timeval;
+ (id)dateFromnSecEpoch:(unint64_t)epoch;
+ (id)deviceBootArgs;
+ (id)deviceBootTime;
+ (id)deviceBootUUID;
+ (id)experimentGroup;
+ (id)extractDateStringAndUUIDStringFromFilePath:(id)path;
+ (id)fullProcessNameForPid:(int)pid;
+ (id)generateAndUpdateSaltValue:(id)value;
+ (id)generateHashValue:(id)value withSalt:(id)salt;
+ (id)getFirstBatteryTimestamp;
+ (id)getIdentifierFromEntry:(id)entry;
+ (id)getKVPairsForCASubmissionFromEntry:(id)entry;
+ (id)getLastBatteryTimestamp;
+ (id)getOverridableMonotonicNow;
+ (id)getPerfStatsForProcess:(id)process;
+ (id)hashBundleID:(id)d;
+ (id)hashString:(id)string;
+ (id)intervalPeakCADictionaryForLaunchdName:(id)name intervalMaxKB:(unint64_t)b;
+ (id)launchdNameToProcessName:(id)name;
+ (id)mobileUserADG;
+ (id)modeForEntryKey:(id)key withKeyName:(id)name;
+ (id)pUUIDForPid:(int)pid;
+ (id)powerModelForOperatorName:(id)name;
+ (id)processNameForPid:(int)pid;
+ (id)runningAsUser;
+ (id)sanitizeCAPayload:(id)payload;
+ (id)shortUUIDString;
+ (id)supplementalBuildVersion;
+ (id)torchTypeString;
+ (id)workQueueForClass:(Class)class;
+ (id)workQueueForKey:(id)key;
+ (int)compressWithSourceStream:(__sFILE *)stream withDestination:(__sFILE *)destination withLevel:(int)level;
+ (int)decompressWithSourceStream:(__sFILE *)stream withDestinationStream:(__sFILE *)destinationStream;
+ (int)grabSysctlValue:(id)value;
+ (int)numFilesAtPath:(id)path;
+ (int)pidForProcessName:(id)name;
+ (int)remove:(int)remove oldestFilesFromDirectory:(id)directory containingFileNameSubstring:(id)substring;
+ (int64_t)compareFilesByKey:(id)key file1:(id)file1 file2:(id)file2 sortAscending:(BOOL)ascending;
+ (jetsam_priority_info)getJetsamPriority:(int)priority;
+ (mach_timebase_info)getMachTimebase;
+ (process_memory_limit_info)getProcessMemoryLimit:(int)limit;
+ (signed)canLogMode:(id)mode fullMode:(BOOL)fullMode;
+ (signed)connectionToQuarantine:(id)quarantine;
+ (signed)logModeForEntryKey:(id)key withKey:(id)withKey andValue:(id)value;
+ (unint64_t)coalitionIDForPid:(int)pid;
+ (unint64_t)convertToBase10:(id)base10 fromBaseN:(int)n;
+ (unint64_t)directorySize:(id)size;
+ (unint64_t)getCurrMachAbsTimeInSecs;
+ (unint64_t)machTimeFromSeconds:(double)seconds;
+ (unint64_t)maxProcessCount;
+ (unsigned)getHardwarePerfLevels;
+ (void)dispatchSyncIfNotCallerQueue:(id)queue withBlock:(id)block;
+ (void)exitWithReason:(signed __int16)reason action:(signed __int16)action;
+ (void)exitWithReason:(signed __int16)reason connection:(id)connection;
+ (void)exitWithReasonSync:(signed __int16)sync;
+ (void)getCurrentMonotonicAndMachAbsTime:(id *)time machAbsTime:(unint64_t *)absTime machContTime:(unint64_t *)contTime;
+ (void)getDefaultL0bThresholdForDeviceType;
+ (void)isImproveFitnessPlusEnabled;
+ (void)maxProcessCount;
+ (void)postNotificationName:(id)name object:(id)object userInfo:(id)info;
+ (void)quarantineToPath:(id)path action:(signed __int16)action;
+ (void)refreshBUI;
+ (void)reportZlibResultToCA:(int)a forEvent:(id)event;
+ (void)setMobileOwnerForFile:(id)file;
+ (void)setPermissionsForFile:(id)file toValue:(unsigned __int16)value;
@end

@implementation PLUtilities

+ (BOOL)isAppAnalyticsEnabled
{
  if (isAppAnalyticsEnabled_onceToken != -1)
  {
    +[PLUtilities isAppAnalyticsEnabled];
  }

  return isAppAnalyticsEnabled_appAnalyticsEnabled;
}

+ (BOOL)isPowerlogHelperd
{
  if (isPowerlogHelperd_onceToken != -1)
  {
    +[PLUtilities isPowerlogHelperd];
  }

  return isPowerlogHelperd_isPowerlogHelperd;
}

+ (BOOL)isPerfPowerMetricd
{
  if (isPerfPowerMetricd_onceToken != -1)
  {
    +[PLUtilities isPerfPowerMetricd];
  }

  return isPerfPowerMetricd_isPerfPowerMetricd;
}

+ (BOOL)gasGaugeEnabled
{
  if (+[PLDefaults isDevBoard])
  {
    return 0;
  }

  else
  {
    return !+[PLPlatform isiPod];
  }
}

+ (mach_timebase_info)getMachTimebase
{
  if (getMachTimebase_onceToken != -1)
  {
    +[PLUtilities getMachTimebase];
  }

  return &getMachTimebase_machTimeInfo;
}

+ (BOOL)OverrideAllowlistEnabled
{
  if (OverrideAllowlistEnabled_onceToken != -1)
  {
    +[PLUtilities OverrideAllowlistEnabled];
  }

  return OverrideAllowlistEnabled_overrideAllowlistEnabled;
}

+ (double)getMachbaseTimeRatio
{
  if (getMachbaseTimeRatio_once != -1)
  {
    +[PLUtilities getMachbaseTimeRatio];
  }

  return *&getMachbaseTimeRatio_ratio;
}

+ (id)containerPath
{
  if (containerPath_onceToken != -1)
  {
    +[PLUtilities containerPath];
  }

  v3 = containerPath_containerPath;

  return v3;
}

+ (id)deviceBootTime
{
  if (deviceBootTime_onceToken != -1)
  {
    +[PLUtilities deviceBootTime];
  }

  v3 = deviceBootTime_bootTime;

  return [v3 convertFromSystemToMonotonic];
}

+ (id)MavRevStringQuery
{
  if (MavRevStringQuery_onceToken != -1)
  {
    +[PLUtilities MavRevStringQuery];
  }

  v3 = MavRevStringQuery_plMavRevString;

  return v3;
}

+ (unsigned)getHardwarePerfLevels
{
  if (getHardwarePerfLevels_levels_once != -1)
  {
    +[PLUtilities getHardwarePerfLevels];
  }

  return getHardwarePerfLevels_perf_levels;
}

void __36__PLUtilities_getHardwarePerfLevels__block_invoke()
{
  v2 = 4;
  v0 = sysctlbyname("hw.nperflevels", &getHardwarePerfLevels_perf_levels, &v2, 0, 0);
  if (v0)
  {
    getHardwarePerfLevels_perf_levels = 0;
    v1 = PLLogCommon(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __36__PLUtilities_getHardwarePerfLevels__block_invoke_cold_1();
    }
  }
}

+ (BOOL)isHealthDataSubmissionAllowed
{
  mEMORY[0x1E69ADFC0] = [MEMORY[0x1E69ADFC0] sharedConnection];
  isHealthDataSubmissionAllowed = [mEMORY[0x1E69ADFC0] isHealthDataSubmissionAllowed];

  return isHealthDataSubmissionAllowed;
}

void __28__PLUtilities_containerPath__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    v4 = containerPath_containerPath;
    containerPath_containerPath = v3;

    free(v2);
  }

  else
  {
    NSLog(&cfstr_ErrorFetchingG.isa, 1);
    [PLUtilities exitSafe:1];
  }

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)moveItemAtPath:(id)path toPath:(id)toPath withName:(id)name error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toPathCopy = toPath;
  nameCopy = name;
  v11 = nameCopy;
  if (nameCopy)
  {
    v20 = @"override-fileName";
    v21[0] = nameCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v14 = PLOSAMoveFileForSubmissions();

  if (v14)
  {
    v15 = MEMORY[0x1E695DFF8];
    lastPathComponent = [pathCopy lastPathComponent];
    v17 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingPathComponent:lastPathComponent];
    v18 = [v15 fileURLWithPath:v17];
    [PPSFileUtilities markAsPurgeable:v18 urgency:512 startDate:0];
  }

  return v14;
}

+ (BOOL)PLCopyItemsFromPath:(id)path toPath:(id)toPath
{
  pathCopy = path;
  toPathCopy = toPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v25];
  v9 = v25;
  v10 = v9;
  if (v9)
  {
    v11 = PLLogCommon(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities PLCopyItemsFromPath:toPath:];
    }

    v12 = *(v27 + 24);
  }

  else
  {
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:1];
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:toPathCopy isDirectory:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke;
    v18[3] = &unk_1E851A1B8;
    v15 = v13;
    v19 = v15;
    v16 = v14;
    v20 = v16;
    v24 = &v26;
    v21 = defaultManager;
    v22 = pathCopy;
    v23 = toPathCopy;
    [v8 enumerateObjectsUsingBlock:v18];
    v12 = *(v27 + 24);
  }

  _Block_object_dispose(&v26, 8);
  return v12 & 1;
}

void __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 URLByAppendingPathComponent:v7];
  v9 = [*(a1 + 40) URLByAppendingPathComponent:v7];

  v10 = *(a1 + 48);
  v15 = 0;
  v11 = [v10 copyItemAtURL:v8 toURL:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  *(*(*(a1 + 72) + 8) + 24) = v11;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    [PPSFileUtilities markAsPurgeable:v9 urgency:512 startDate:0];
  }

  else
  {
    v14 = PLLogCommon(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __42__PLUtilities_PLCopyItemsFromPath_toPath___block_invoke_cold_1();
    }

    *a4 = 1;
  }
}

+ (BOOL)createAndChownDirectory:(id)directory
{
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v5 = [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if (v5)
  {
    [PLUtilities setMobileOwnerForFile:directoryCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error=%@", v6];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities createAndChownDirectory:]"];
    [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:217];

    v12 = PLLogCommon(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  return v5;
}

+ (BOOL)createAndChownDirectoryIfDirectoryDoesNotExist:(id)exist
{
  existCopy = exist;
  v8 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:existCopy isDirectory:&v8];

  v6 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = [PLUtilities createAndChownDirectory:existCopy];
  }

  return v6;
}

+ (void)setMobileOwnerForFile:(id)file
{
  fileCopy = file;
  v4 = getpwnam("mobile");
  fileSystemRepresentation = [fileCopy fileSystemRepresentation];

  pw_uid = v4->pw_uid;
  pw_gid = v4->pw_gid;

  chown(fileSystemRepresentation, pw_uid, pw_gid);
}

+ (void)setPermissionsForFile:(id)file toValue:(unsigned __int16)value
{
  valueCopy = value;
  v17[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = *MEMORY[0x1E696A370];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:valueCopy];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(fileCopy, "UTF8String")}];
  v15 = 0;
  v10 = [defaultManager setAttributes:v8 ofItemAtPath:v9 error:&v15];
  v11 = v15;

  v13 = PLLogCommon(v12);
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[PLUtilities setPermissionsForFile:toValue:];
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities setPermissionsForFile:toValue:];
  }
}

+ (BOOL)compressWithSource:(id)source withDestination:(id)destination withLevel:(int)level
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  destinationCopy = destination;
  v8 = PLLogZlib(destinationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = sourceCopy;
    v24 = 2112;
    v25 = destinationCopy;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "compressWithSource: source file = %@, destination file = %@", &v22, 0x16u);
  }

  v9 = fopen([sourceCopy UTF8String], "r");
  if (!v9)
  {
    v17 = PLLogZlib(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities compressWithSource:withDestination:withLevel:];
    }

    goto LABEL_18;
  }

  v10 = v9;
  v11 = fopen([destinationCopy UTF8String], "w");
  v12 = PLLogZlib(v11);
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities compressWithSource:withDestination:withLevel:];
    }

    v16 = v10;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities compressWithSource:withDestination:withLevel:];
  }

  v14 = [PLUtilities compressWithSourceStream:v10 withDestination:v11 withLevel:4];
  if (v14)
  {
    v15 = PLLogZlib(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities compressWithSource:withDestination:withLevel:];
    }

    fclose(v10);
    v16 = v11;
LABEL_17:
    fclose(v16);
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  fclose(v10);
  v20 = fclose(v11);
  v21 = PLLogZlib(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = sourceCopy;
    v24 = 2112;
    v25 = destinationCopy;
    _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEFAULT, "compressWithSource: successfully decompressed %@ to %@", &v22, 0x16u);
  }

  v18 = 1;
LABEL_19:

  return v18;
}

+ (int)compressWithSourceStream:(__sFILE *)stream withDestination:(__sFILE *)destination withLevel:(int)level
{
  v18[1024] = *MEMORY[0x1E69E9840];
  memset(&v16, 0, sizeof(v16));
  v8 = deflateInit2_(&v16, level, 8, 31, 8, 0, "1.2.12", 112);
  if (v8)
  {
    v9 = v8;
    [self reportZlibResultToCA:v8 forEvent:@"com.apple.powerlog.zlib.compress"];
  }

  else
  {
LABEL_3:
    v10 = fread(v18, 1uLL, 0x2000uLL, stream);
    if (v10 >= 0xFFFFFFFF)
    {
      +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
    }

    v16.avail_in = v10;
    if (!ferror(stream))
    {
      v11 = feof(stream);
      v16.next_in = v18;
      while (1)
      {
        v16.avail_out = 0x2000;
        v16.next_out = __ptr;
        v12 = deflate(&v16, 4 * (v11 != 0));
        if (v12 == -2)
        {
          +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
        }

        v13 = v12;
        v14 = 0x2000 - v16.avail_out;
        if (fwrite(__ptr, 1uLL, v14, destination) != v14 || ferror(destination))
        {
          break;
        }

        if (v16.avail_out)
        {
          if (v16.avail_in)
          {
            +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
          }

          if (v11)
          {
            if (v13 != 1)
            {
              +[PLUtilities compressWithSourceStream:withDestination:withLevel:];
            }

            deflateEnd(&v16);
            return 0;
          }

          goto LABEL_3;
        }
      }
    }

    v9 = -1;
    [self reportZlibResultToCA:0xFFFFFFFFLL forEvent:{@"com.apple.powerlog.zlib.compress", v16.next_in}];
    deflateEnd(&v16);
  }

  return v9;
}

+ (BOOL)decompressWithSource:(id)source withDestination:(id)destination withRemoveSrc:(BOOL)src
{
  srcCopy = src;
  v37 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  destinationCopy = destination;
  v9 = MEMORY[0x1E696AEC0];
  pathExtension = [sourceCopy pathExtension];
  v11 = [v9 stringWithFormat:@".%@", pathExtension];

  v12 = [v11 isEqualToString:@".gz"];
  v13 = v12;
  v14 = PLLogZlib(v12);
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = sourceCopy;
    v35 = 2112;
    v36 = destinationCopy;
    _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "decompressWithSource: source file = %@, destination file = %@", buf, 0x16u);
  }

  v16 = fopen([sourceCopy UTF8String], "r");
  if (!v16)
  {
    v24 = PLLogZlib(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    goto LABEL_20;
  }

  v17 = v16;
  v18 = fopen([destinationCopy UTF8String], "w");
  v19 = PLLogZlib(v18);
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    fclose(v17);
    goto LABEL_24;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
  }

  v21 = [PLUtilities decompressWithSourceStream:v17 withDestinationStream:v18];
  if (v21)
  {
    v22 = PLLogZlib(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
    }

    fclose(v17);
    fclose(v18);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v32 = 0;
    [defaultManager removeItemAtPath:destinationCopy error:&v32];
    v24 = v32;

    if (v24)
    {
      v26 = PLLogZlib(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities decompressWithSource:withDestination:withRemoveSrc:];
      }
    }

LABEL_20:

LABEL_24:
    v27 = 0;
    goto LABEL_25;
  }

  fclose(v17);
  v29 = fclose(v18);
  v30 = PLLogZlib(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = sourceCopy;
    v35 = 2112;
    v36 = destinationCopy;
    _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEFAULT, "decompressWithSource: successfully decompressed %@ to %@", buf, 0x16u);
  }

  if (srcCopy)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 removeItemAtPath:sourceCopy error:0];
  }

  v27 = 1;
LABEL_25:

  return v27;
}

+ (int)decompressWithSourceStream:(__sFILE *)stream withDestinationStream:(__sFILE *)destinationStream
{
  v17[1024] = *MEMORY[0x1E69E9840];
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = 0;
  strm.next_in = 0;
  v7 = inflateInit2_(&strm, 31, "1.2.12", 112);
  if (v7)
  {
    [self reportZlibResultToCA:v7 forEvent:@"com.apple.powerlog.zlib.decompress"];
  }

  else
  {
    while (2)
    {
      v8 = fread(v17, 1uLL, 0x2000uLL, stream);
      strm.avail_in = v8;
      if (ferror(stream))
      {
LABEL_18:
        LODWORD(v7) = -1;
        selfCopy2 = self;
        v13 = 0xFFFFFFFFLL;
LABEL_16:
        [selfCopy2 reportZlibResultToCA:v13 forEvent:@"com.apple.powerlog.zlib.decompress"];
        inflateEnd(&strm);
      }

      else
      {
        if (v8)
        {
          strm.next_in = v17;
          do
          {
            strm.avail_out = 0x2000;
            strm.next_out = __ptr;
            v9 = inflate(&strm, 0);
            v7 = v9;
            if ((v9 + 4) < 2)
            {
              goto LABEL_15;
            }

            if (v9 == 2)
            {
              v7 = 4294967293;
LABEL_15:
              selfCopy2 = self;
              v13 = v7;
              goto LABEL_16;
            }

            if (v9 == -2)
            {
              +[PLUtilities decompressWithSourceStream:withDestinationStream:];
            }

            v10 = 0x2000 - strm.avail_out;
            if (fwrite(__ptr, 1uLL, v10, destinationStream) != v10 || ferror(destinationStream))
            {
              goto LABEL_18;
            }
          }

          while (!strm.avail_out);
          if (v7 != 1)
          {
            continue;
          }

          v11 = 0;
        }

        else
        {
          v11 = v7 != 1;
          if (v7 >= 2)
          {
            [self reportZlibResultToCA:v7 forEvent:@"com.apple.powerlog.zlib.decompress"];
            v11 = 1;
          }
        }

        inflateEnd(&strm);
        LODWORD(v7) = v11 << 31 >> 31;
      }

      break;
    }
  }

  return v7;
}

+ (void)reportZlibResultToCA:(int)a forEvent:(id)event
{
  eventCopy = event;
  v5 = PLLogZlib(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities reportZlibResultToCA:forEvent:];
  }

  AnalyticsSendEventLazy();
}

id __45__PLUtilities_reportZlibResultToCA_forEvent___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"errorID";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)extractDateStringAndUUIDStringFromFilePath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy rangeOfString:@"."];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [pathCopy substringToIndex:v4];
    v7 = [v6 componentsSeparatedByString:@"_"];
    if ([v7 count] >= 2)
    {
      v5 = [v7 subarrayWithRange:{objc_msgSend(v7, "count") - 2, 2}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (unint64_t)directorySize:(id)size
{
  sizeCopy = size;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager subpathsOfDirectoryAtPath:sizeCopy error:0];
  objectEnumerator = [v5 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    v9 = 0;
    do
    {
      v10 = [sizeCopy stringByAppendingPathComponent:v8];
      v11 = [defaultManager attributesOfItemAtPath:v10 error:0];

      v9 += [v11 fileSize];
      nextObject2 = [objectEnumerator nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)numFilesAtPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v11];
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    v8 = PLLogCommon(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities numFilesAtPath:];
    }

    LODWORD(v9) = -1;
  }

  else
  {
    v9 = [v5 count];
    v8 = PLLogCommon(v9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = pathCopy;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Num files at %@ = %d", buf, 0x12u);
    }
  }

  return v9;
}

+ (int64_t)compareFilesByKey:(id)key file1:(id)file1 file2:(id)file2 sortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v17 = 0;
  file2Copy = file2;
  keyCopy = key;
  [file1 getResourceValue:&v17 forKey:keyCopy error:0];
  v11 = v17;
  v16 = 0;
  [file2Copy getResourceValue:&v16 forKey:keyCopy error:0];

  v12 = v16;
  if (ascendingCopy)
  {
    v13 = v11;
  }

  else
  {
    v13 = v16;
    v12 = v11;
  }

  v14 = [v13 compare:v12];

  return v14;
}

+ (int)remove:(int)remove oldestFilesFromDirectory:(id)directory containingFileNameSubstring:(id)substring
{
  v44[1] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  substringCopy = substring;
  v9 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (remove >= 1 && directoryCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__10;
    v35[4] = __Block_byref_object_dispose__10;
    v36 = 0;
    v11 = [MEMORY[0x1E695DFF8] URLWithString:directoryCopy];
    v44[0] = *MEMORY[0x1E695DAA8];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v34 = 0;
    v13 = [defaultManager contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v12 options:4 error:&v34];
    v14 = v34;

    if (v14)
    {
      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities remove:oldestFilesFromDirectory:containingFileNameSubstring:];
      }

      v9 = *(v38 + 6);
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      if (substringCopy)
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke;
        v31[3] = &unk_1E851A200;
        v18 = substringCopy;
        v32 = v18;
        v19 = array;
        v33 = v19;
        v20 = PLLogCommon([v13 enumerateObjectsUsingBlock:v31]);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          +[PLUtilities remove:oldestFilesFromDirectory:containingFileNameSubstring:].cold.2(v18, v43, [v19 count], v20);
        }

        v21 = v32;
      }

      else
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithArray:v13];

        v21 = PLLogCommon(v22);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          +[PLUtilities remove:oldestFilesFromDirectory:containingFileNameSubstring:];
        }
      }

      v23 = [v19 sortedArrayUsingComparator:&__block_literal_global_86];
      v24 = [v23 subarrayWithRange:{0, remove}];
      v25 = PLLogCommon(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v24;
        _os_log_impl(&dword_1D8611000, v25, OS_LOG_TYPE_INFO, "Removing files: %@", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87;
      v27[3] = &unk_1E851A228;
      v29 = v35;
      v28 = defaultManager;
      v30 = &v37;
      [v24 enumerateObjectsUsingBlock:v27];
      v9 = *(v38 + 6);
    }

    _Block_object_dispose(v35, 8);
  }

  _Block_object_dispose(&v37, 8);

  return v9;
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 lastPathComponent];
  v4 = [v3 containsString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

uint64_t __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v20 = 0;
  v6 = *MEMORY[0x1E695DAA8];
  v19 = 0;
  [v4 getResourceValue:&v20 forKey:v6 error:&v19];
  v7 = v20;
  v8 = v19;
  v17 = 0;
  v18 = 0;
  [v5 getResourceValue:&v18 forKey:v6 error:&v17];
  v9 = v18;
  v10 = v17;
  v11 = v10;
  if (v8 | v10)
  {
    if (v8)
    {
      v12 = PLLogCommon(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_1();
      }
    }

    if (v11)
    {
      v13 = PLLogCommon(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_1();
      }
    }

    v14 = PLLogCommon(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_3();
    }

    v15 = 0;
  }

  else
  {
    v15 = [v7 compare:v9];
  }

  return v15;
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  [v6 removeItemAtURL:v3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (*(*(a1[5] + 8) + 40))
  {
    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87_cold_1();
    }
  }

  else
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

+ (id)workQueueForClass:(Class)class
{
  v3 = NSStringFromClass(class);
  v4 = [PLUtilities workQueueForKey:v3];

  return v4;
}

+ (id)workQueueForKey:(id)key
{
  keyCopy = key;
  if (workQueueForKey__sOnceTokenWorkQueue != -1)
  {
    +[PLUtilities workQueueForKey:];
  }

  v4 = workQueueForKey__workQueueDictionary;
  objc_sync_enter(v4);
  if (keyCopy)
  {
    v5 = [workQueueForKey__workQueueDictionary objectForKeyedSubscript:keyCopy];
    if (!v5)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_attr_make_with_qos_class(v6, workQueueForKey__qos, 0);

      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.powerlog.workqueue.%@", keyCopy];
      v5 = dispatch_queue_create([keyCopy UTF8String], v7);

      [workQueueForKey__workQueueDictionary setObject:v5 forKeyedSubscript:keyCopy];
    }
  }

  else
  {
    v5 = [workQueueForKey__workQueueDictionary objectForKeyedSubscript:@"__GeneralWorkQueue__"];
  }

  objc_sync_exit(v4);

  return v5;
}

void __31__PLUtilities_workQueueForKey___block_invoke()
{
  v0 = 25;
  if (!+[PLUtilities isPowerlogHelperd])
  {
    if (+[PLUtilities isPerfPowerMetricd])
    {
      v0 = 25;
    }

    else
    {
      v0 = 9;
    }
  }

  workQueueForKey__qos = v0;
  v1 = objc_opt_new();
  v2 = workQueueForKey__workQueueDictionary;
  workQueueForKey__workQueueDictionary = v1;

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v3, workQueueForKey__qos, 0);

  v4 = dispatch_queue_create("com.apple.powerlog.workqueue.general", attr);
  [workQueueForKey__workQueueDictionary setObject:v4 forKeyedSubscript:@"__GeneralWorkQueue__"];
}

+ (void)dispatchSyncIfNotCallerQueue:(id)queue withBlock:(id)block
{
  blockCopy = block;
  label = dispatch_queue_get_label(0);
  v7 = dispatch_queue_get_label(queue);
  if (!strcmp(label, v7))
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PLUtilities_dispatchSyncIfNotCallerQueue_withBlock___block_invoke;
    block[3] = &unk_1E8519B20;
    v9 = blockCopy;
    dispatch_sync(queue, block);
  }
}

+ (void)postNotificationName:(id)name object:(id)object userInfo:(id)info
{
  nameCopy = name;
  objectCopy = object;
  infoCopy = info;
  if (postNotificationName_object_userInfo__onceToken != -1)
  {
    +[PLUtilities postNotificationName:object:userInfo:];
  }

  v10 = postNotificationName_object_userInfo__notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLUtilities_postNotificationName_object_userInfo___block_invoke_2;
  block[3] = &unk_1E8519AF8;
  v15 = nameCopy;
  v16 = objectCopy;
  v17 = infoCopy;
  v11 = infoCopy;
  v12 = objectCopy;
  v13 = nameCopy;
  dispatch_async(v10, block);
}

uint64_t __52__PLUtilities_postNotificationName_object_userInfo___block_invoke()
{
  v0 = [PLUtilities workQueueForKey:@"PostNotificationQueue"];
  postNotificationName_object_userInfo__notificationQueue = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void __52__PLUtilities_postNotificationName_object_userInfo___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

uint64_t __35__PLUtilities_getMachbaseTimeRatio__block_invoke()
{
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    result = _os_assumes_log();
    v3 = 1.0;
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    v3 = v1 / v2;
  }

  getMachbaseTimeRatio_ratio = *&v3;
  return result;
}

+ (unint64_t)machTimeFromSeconds:(double)seconds
{
  if (seconds < 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      +[PLUtilities machTimeFromSeconds:];
    }

    return 0;
  }

  +[PLUtilities getMachbaseTimeRatio];
  if (v4 == 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities machTimeFromSeconds:];
    }

    return 0;
  }

  v6 = seconds * 1000000000.0 / v4;
  if (v6 >= 1.84467441e19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities machTimeFromSeconds:];
    }

    return -1;
  }

  else
  {
    if (v6 < 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities machTimeFromSeconds:];
      }

      return 0;
    }

    return v6;
  }
}

+ (id)dateFromTimeval:(timeval)timeval
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:timeval.tv_usec / 1000000.0 + timeval.tv_sec];
  convertFromSystemToMonotonic = [v3 convertFromSystemToMonotonic];

  return convertFromSystemToMonotonic;
}

+ (id)dateFromnSecEpoch:(unint64_t)epoch
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:epoch / 1000000000.0];
  convertFromSystemToMonotonic = [v3 convertFromSystemToMonotonic];

  return convertFromSystemToMonotonic;
}

void __29__PLUtilities_deviceBootTime__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = 0;
  *v5 = 0x1500000001;
  v4 = 16;
  if (sysctl(v5, 2u, &v2, &v4, 0, 0) != -1)
  {
    v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3 / 1000000.0 + v2];
    v1 = deviceBootTime_bootTime;
    deviceBootTime_bootTime = v0;
  }
}

+ (id)deviceBootUUID
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v26, 0, sizeof(v26));
  v25 = 37;
  v2 = sysctlbyname("kern.bootsessionuuid", v26, &v25, 0, 0);
  if (v2)
  {
    if (v2 == -1)
    {
      +[PLUtilities deviceBootUUID];
    }

    if (+[PLDefaults debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__PLUtilities_deviceBootUUID__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (deviceBootUUID_defaultOnce != -1)
      {
        dispatch_once(&deviceBootUUID_defaultOnce, block);
      }

      if (deviceBootUUID_classDebugEnabled == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to get system boot session uuid %d", *__error()];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
        lastPathComponent = [v5 lastPathComponent];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities deviceBootUUID]"];
        [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:803];

        v9 = PLLogCommon(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v10 = 0;
LABEL_17:

        goto LABEL_19;
      }
    }

    v10 = 0;
  }

  else
  {
    v26[36] = 0;
    v11 = objc_alloc(MEMORY[0x1E696AFB0]);
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
    v10 = [v11 initWithUUIDString:v12];

    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __29__PLUtilities_deviceBootUUID__block_invoke_118;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v13;
      if (deviceBootUUID_defaultOnce_116 != -1)
      {
        dispatch_once(&deviceBootUUID_defaultOnce_116, &v19);
      }

      if (deviceBootUUID_classDebugEnabled_117 == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"system boot session uuid: %@", v10, v19, v20, v21, v22, v23];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities deviceBootUUID]"];
        [PLCoreStorage logMessage:v4 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:808];

        v9 = PLLogCommon(v17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_17;
      }
    }
  }

LABEL_19:

  return v10;
}

BOOL __29__PLUtilities_deviceBootUUID__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  deviceBootUUID_classDebugEnabled = result;
  return result;
}

BOOL __29__PLUtilities_deviceBootUUID__block_invoke_118(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  deviceBootUUID_classDebugEnabled_117 = result;
  return result;
}

+ (BOOL)deviceRebooted
{
  if (deviceRebooted_onceToken != -1)
  {
    +[PLUtilities deviceRebooted];
  }

  return deviceRebooted___deviceRebooted;
}

void __29__PLUtilities_deviceRebooted__block_invoke()
{
  v3 = +[PLUtilities deviceBootUUID];
  if (!v3)
  {
    deviceRebooted___deviceRebooted = 0;
    goto LABEL_9;
  }

  v0 = [PLDefaults objectForKey:@"BootSessionUUID"];
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v0];
    deviceRebooted___deviceRebooted = [v1 isEqual:v3] ^ 1;

    if ((deviceRebooted___deviceRebooted & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    deviceRebooted___deviceRebooted = 1;
  }

  v2 = [v3 UUIDString];
  [PLDefaults setObject:v2 forKey:@"BootSessionUUID" saveToDisk:1];

LABEL_8:
LABEL_9:
}

+ (double)getLastSystemTimeOffset
{
  v2 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"TimeOffset"];
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  v5 = [storage lastEntryForKey:v2];

  v6 = [v5 objectForKeyedSubscript:@"system"];
  [v6 doubleValue];
  v8 = v7;

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities getLastSystemTimeOffset];
  }

  return v8;
}

+ (id)getFirstBatteryTimestamp
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];
  v4 = [storage firstEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  entryDate = [v4 entryDate];

  return entryDate;
}

+ (id)getLastBatteryTimestamp
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];
  v4 = [storage lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  entryDate = [v4 entryDate];

  return entryDate;
}

+ (id)getOverridableMonotonicNow
{
  if (+[PLUtilities inBUIDemoMode])
  {
    v2 = [PLDefaults objectForKey:@"BUI_DEMO_QUERY_TIME" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    v3 = [PLDefaults objectForKey:@"BUI_DEMO_QUERY_TIME_OFFSET" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v2 doubleValue];
      v5 = v4;
    }

    else
    {
      v7 = +[PLUtilities getLastBatteryTimestamp];
      convertFromMonotonicToSystem = [v7 convertFromMonotonicToSystem];
      [convertFromMonotonicToSystem timeIntervalSince1970];
      v5 = v9;
    }

    v10 = 0.0;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 doubleValue];
        v10 = v11;
      }
    }

    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v5 + v10];
    convertFromSystemToMonotonic = [v12 convertFromSystemToMonotonic];
  }

  else
  {
    convertFromSystemToMonotonic = [MEMORY[0x1E695DF00] monotonicDate];
  }

  return convertFromSystemToMonotonic;
}

+ (void)getCurrentMonotonicAndMachAbsTime:(id *)time machAbsTime:(unint64_t *)absTime machContTime:(unint64_t *)contTime
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  getMachTimebase = [self getMachTimebase];
  if (mach_get_times())
  {
    if (+[PLDefaults debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke_146;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce_144 != -1)
      {
        dispatch_once(&getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce_144, block);
      }

      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled_145 == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mach_get_times() call failed."];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities getCurrentMonotonicAndMachAbsTime:machAbsTime:machContTime:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:898];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    *time = [MEMORY[0x1E695DF00] monotonicDate];
    if (absTime)
    {
      *absTime = mach_absolute_time() * *getMachTimebase / getMachTimebase[1];
    }

    if (contTime)
    {
      *contTime = mach_continuous_time() * *getMachTimebase / getMachTimebase[1];
    }
  }

  else
  {
    v16 = [PLUtilities dateFromTimeval:v31, (v32 / 1000)];
    if (+[PLDefaults debugEnabled])
    {
      v17 = objc_opt_class();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v17;
      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce != -1)
      {
        dispatch_once(&getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__defaultOnce, v28);
      }

      if (getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled == 1)
      {
        v18 = MEMORY[0x1E696AEC0];
        monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
        v20 = [v18 stringWithFormat:@"Converted monotonic time: %@, reference monotonic time: %@.", v16, monotonicDate];

        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities getCurrentMonotonicAndMachAbsTime:machAbsTime:machContTime:]"];
        [PLCoreStorage logMessage:v20 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:887];

        v25 = PLLogCommon(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v26 = v16;
    *time = v16;
    if (absTime)
    {
      *absTime = v30 * *getMachTimebase / getMachTimebase[1];
    }

    if (contTime)
    {
      *contTime = v29 * *getMachTimebase / getMachTimebase[1];
    }
  }
}

BOOL __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled = result;
  return result;
}

BOOL __74__PLUtilities_getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime___block_invoke_146(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getCurrentMonotonicAndMachAbsTime_machAbsTime_machContTime__classDebugEnabled_145 = result;
  return result;
}

double __30__PLUtilities_getMachTimebase__block_invoke()
{
  if (mach_timebase_info(&getMachTimebase_machTimeInfo))
  {
    _os_assumes_log();
  }

  else if (dword_1EDFFF1B4)
  {
    return result;
  }

  *&result = 0x100000001;
  getMachTimebase_machTimeInfo = 0x100000001;
  return result;
}

+ (unint64_t)getCurrMachAbsTimeInSecs
{
  v3 = mach_absolute_time();
  getMachTimebase = [self getMachTimebase];
  return v3 * *getMachTimebase / getMachTimebase[1] / 0x3B9ACA00;
}

+ (signed)connectionToQuarantine:(id)quarantine
{
  quarantineCopy = quarantine;
  v4 = quarantineCopy;
  if (quarantineCopy)
  {
    filePath = [quarantineCopy filePath];
    v6 = [filePath hasSuffix:@".PLSQL"];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      filePath2 = [v4 filePath];
      v9 = [filePath2 hasSuffix:@".EPSQL"];

      if (v9)
      {
        v7 = 2;
      }

      else
      {
        filePath3 = [v4 filePath];
        v11 = [filePath3 hasSuffix:@".CESQL"];

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          filePath4 = [v4 filePath];
          v13 = [filePath4 hasSuffix:@".XCSQL"];

          if (v13)
          {
            v7 = 4;
          }

          else
          {
            filePath5 = [v4 filePath];
            v15 = [filePath5 hasSuffix:@".BGSQL"];

            if (v15)
            {
              v7 = 5;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)exitWithReason:(signed __int16)reason connection:(id)connection
{
  reasonCopy = reason;
  v5 = [PLUtilities connectionToQuarantine:connection];

  [PLUtilities exitWithReason:reasonCopy action:v5];
}

+ (void)exitWithReason:(signed __int16)reason action:(signed __int16)action
{
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PLUtilities_exitWithReason_action___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  reasonCopy = reason;
  actionCopy = action;
  dispatch_async(v6, block);
}

void __37__PLUtilities_exitWithReason_action___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (+[PLDefaults debugEnabled])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"exitReason=%i", *(a1 + 32)];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
    v4 = [v3 lastPathComponent];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities exitWithReason:action:]_block_invoke"];
    [PLCoreStorage logMessage:v2 fromFile:v4 fromFunction:v5 fromLineNumber:978];

    v7 = PLLogCommon(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v2;
      _os_log_debug_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 34);
  if (+[PLUtilities PreUnlockTelemetryEnabled])
  {
    v9 = 0;
  }

  else
  {
    v10 = +[PowerlogCore sharedCore];
    v11 = [v10 storage];
    v9 = [v11 storageLocked];
  }

  v12 = *(a1 + 32);
  if (v12 <= 99 && (v9 & 1) == 0)
  {
    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && !+[PLUtilities isPowerexceptionsd])
    {
      v13 = +[PowerlogCore sharedCore];
      v14 = [v13 storage];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ExitReason=%i", *(a1 + 32)];
      [v14 blockingFlushCachesWithReason:v15];
    }

    goto LABEL_21;
  }

  if (v12 < 1001)
  {
LABEL_21:
    v22 = 0;
    goto LABEL_45;
  }

  v16 = +[PLUtilities containerPath];
  v17 = [v16 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  [PLUtilities createAndChownDirectory:v17];

  v18 = +[PLUtilities containerPath];
  v19 = [v18 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
  [PLUtilities createAndChownDirectory:v19];

  v20 = 0;
  v21 = *(a1 + 32);
  if (v21 > 0x3ED)
  {
    if (*(a1 + 32) <= 0x3EFu)
    {
      if (v21 == 1006)
      {
        v22 = @"PLExitReasonMonotonicTime";
        v8 = 6;
        v20 = @"%@MonotonicTimePowerlog_%f%@";
        goto LABEL_39;
      }

      if (v21 == 1007)
      {
        v22 = @"PLExitReasonSQLVersionMismatch";
        v20 = @"%@SQLVersionMismatchPowerlog_%f%@";
        goto LABEL_39;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x3F0u:
          v22 = @"PLExitReasonNewFileRequired";
          v20 = @"%@NewFileRequiredPowerlog_%f%@";
          goto LABEL_39;
        case 0x3F1u:
          v22 = @"kPLExitReasonDescKernelTime";
          v8 = 6;
          v20 = @"%@KernelTimePowerlog_%f%@";
          goto LABEL_39;
        case 0x3F2u:
          v22 = @"PLExitReasonDescPowerlogReset";
          v20 = @"%@PowerlogReset_%f%@";
          goto LABEL_39;
      }
    }
  }

  else
  {
    if (*(a1 + 32) <= 0x3EAu)
    {
      if (v21 == 1001)
      {
        v22 = @"PLExitReasonCorrupt";
        v20 = @"%@CorruptPowerlog_%f%@";
      }

      else
      {
        v22 = 0;
        if (v21 != 1002)
        {
          goto LABEL_40;
        }

        v8 = 0;
        v22 = @"PLExitReasonSubmissionTimeout";
        v20 = @"%@SubmissionTimeoutPowerlog_%f%@";
      }

      goto LABEL_39;
    }

    switch(v21)
    {
      case 0x3EBu:
        v22 = @"PLExitReasonArchiveTimeout";
        v20 = @"%@ArchiveTimeoutPowerlog_%f%@";
        goto LABEL_39;
      case 0x3ECu:
        v22 = @"PLExitReasonArchiveMaxAttempts";
        v20 = @"%@ArchiveMaxAttemptsPowerlog_%f%@";
        goto LABEL_39;
      case 0x3EDu:
        v22 = @"PLExitReasonTooLarge";
        v20 = @"%@TooLargePowerlog_%f%@";
LABEL_39:
        PLADClientAddValueForScalarKey();
        AnalyticsSendEventLazy();
        goto LABEL_40;
    }
  }

  v22 = 0;
LABEL_40:
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") || +[PLUtilities isPowerexceptionsd])
  {
    v8 = 0;
  }

  [PLUtilities quarantineToPath:v20 action:v8];
  [PLDefaults setObject:0 forKey:@"PLUUID" saveToDisk:1];
LABEL_45:
  v23 = +[PLUtilities isPowerlogHelperd];
  if ((v23 & 1) == 0)
  {
    v23 = +[PLUtilities isPerfPowerMetricd];
    if ((v23 & 1) == 0)
    {
      v23 = +[PLUtilities isPowerexceptionsd];
      if ((v23 & 1) == 0)
      {
        v24 = [MEMORY[0x1E696AD98] numberWithShort:*(a1 + 32)];
        [PLDefaults setObject:v24 forKey:@"PLExitReasonKey" saveToDisk:1];
      }
    }
  }

  v25 = *(a1 + 32);
  if (v25 >= 1001)
  {
    v26 = PLLogCommon(v23);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v28 = v22;
      v29 = 1024;
      v30 = v8;
      _os_log_fault_impl(&dword_1D8611000, v26, OS_LOG_TYPE_FAULT, "Exiting due to %{public}@ action=%d", buf, 0x12u);
    }

    LOWORD(v25) = *(a1 + 32);
  }

  exit(v25 > 99);
}

+ (void)exitWithReasonSync:(signed __int16)sync
{
  syncCopy = sync;
  dsema = dispatch_semaphore_create(0);
  [self exitWithReason:syncCopy];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)quarantineToPath:(id)path action:(signed __int16)action
{
  actionCopy = action;
  v58 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v8 = v7;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = PLLogCommon(dictionary);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v57 = actionCopy;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "quarantine action: %hd", buf, 8u);
  }

  if (actionCopy == 6 || actionCopy == 1)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = +[PLUtilities containerPath];
    v13 = [v12 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
    v14 = [v11 stringWithFormat:pathCopy, v13, v8, @".PLSQL"];

    v15 = +[PPSCoreStorage sharedSQLStorage];
    pLSQLConnection = [v15 PLSQLConnection];
    [dictionary setObject:pLSQLConnection forKeyedSubscript:v14];
  }

  else
  {
    v14 = 0;
  }

  if ((actionCopy | 4) == 6)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = +[PLUtilities containerPath];
    v19 = [v18 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v20 = [v17 stringWithFormat:pathCopy, v19, v8, @".EPSQL"];

    v21 = +[PPSCoreStorage sharedSQLStorage];
    ePSQLConnection = [v21 EPSQLConnection];
    [dictionary setObject:ePSQLConnection forKeyedSubscript:v20];

    v14 = v20;
  }

  if (actionCopy == 6 || actionCopy == 3)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = +[PLUtilities containerPath];
    v25 = [v24 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v26 = [v23 stringWithFormat:pathCopy, v25, v8, @".CESQL"];

    v27 = +[PPSCoreStorage sharedSQLStorage];
    cESQLConnection = [v27 CESQLConnection];
    [dictionary setObject:cESQLConnection forKeyedSubscript:v26];

    v14 = v26;
  }

  if ((actionCopy | 2) == 6)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = +[PLUtilities containerPath];
    v31 = [v30 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v32 = [v29 stringWithFormat:pathCopy, v31, v8, @".XCSQL"];

    v33 = +[PPSCoreStorage sharedSQLStorage];
    xCSQLConnection = [v33 XCSQLConnection];
    [dictionary setObject:xCSQLConnection forKeyedSubscript:v32];

    v14 = v32;
  }

  if ((actionCopy - 5) <= 1u)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = +[PLUtilities containerPath];
    v37 = [v36 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
    v38 = [v35 stringWithFormat:pathCopy, v37, v8, @".BGSQL"];

    v39 = +[PPSCoreStorage sharedSQLStorage];
    bGSQLConnection = [v39 BGSQLConnection];
    [dictionary setObject:bGSQLConnection forKeyedSubscript:v38];

    v14 = v38;
  }

  v41 = +[PLUtilities shouldCreateQuarantine];
  v42 = v41;
  v43 = PLLogCommon(v41);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v57 = v42;
    _os_log_impl(&dword_1D8611000, v43, OS_LOG_TYPE_DEFAULT, "should quarantine: %d", buf, 8u);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __39__PLUtilities_quarantineToPath_action___block_invoke;
  v53[3] = &unk_1E851A250;
  v44 = dictionary;
  v54 = v44;
  v55 = v42;
  [v44 enumerateKeysAndObjectsUsingBlock:v53];
  if (+[PLDefaults fullMode]&& (actionCopy == 6 || actionCopy == 1))
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = +[PLUtilities containerPath];
    v47 = [v46 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
    v48 = [v45 stringWithFormat:pathCopy, v47, v8, @".PLSQL"];

    lastPathComponent = [v48 lastPathComponent];
    v50 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:lastPathComponent];

    lastPathComponent2 = [v48 lastPathComponent];
    [PLUtilities moveItemAtPath:v48 toPath:v50 withName:lastPathComponent2 error:0];

    v52 = [MEMORY[0x1E695DFF8] fileURLWithPath:v50];
    [PPSFileUtilities markAsPurgeable:v52 urgency:512 startDate:0];

    v14 = v48;
  }
}

void __39__PLUtilities_quarantineToPath_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = PLLogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __39__PLUtilities_quarantineToPath_action___block_invoke_cold_1(v4, v5);
  }

  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLUtilities_quarantineToPath_action___block_invoke_cold_2();
  }

  if (*(a1 + 40) == 1)
  {
    [v4 moveDatabaseToPath:v3];
    [objc_opt_class() removeAdditionalFiles:v3];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
    [PPSFileUtilities markAsPurgeable:v8 urgency:512 startDate:0];
  }

  else
  {
    [v4 truncateDB];
  }
}

+ (BOOL)shouldCreateQuarantine
{
  v2 = +[PLUtilities containerPath];
  v3 = [v2 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  v4 = [PLUtilities numFilesAtPath:v3];

  if (v4 > 9)
  {
    return 0;
  }

  v6 = +[PLUtilities containerPath];
  v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
  v8 = [PLUtilities numFilesAtPath:v7];

  return v8 < 0xA;
}

+ (BOOL)allowQueryFromPeer:(id)peer
{
  v24 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  xpc_connection_get_audit_token();
  memset(token, 0, 32);
  v4 = SecTaskCreateWithAuditToken(0, token);
  if (!v4)
  {
    v7 = PLLogCommon(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities allowQueryFromPeer:];
    }

    goto LABEL_20;
  }

  v5 = v4;
  CodeSignStatus = SecTaskGetCodeSignStatus(v4);
  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.private.perfpowerservices.query.internal", 0);
  CFRelease(v5);
  v9 = PLLogCommon(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    pid = xpc_connection_get_pid(peerCopy);
    v13 = [PLUtilities processNameForPid:pid];
    v14 = [PLUtilities bundleIDFromPid:pid];
    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *token = 67109890;
      *&token[4] = pid;
      *&token[8] = 2112;
      *&token[10] = v13;
      *&token[18] = 2112;
      *&token[20] = v14;
      *&token[28] = 1024;
      *&token[30] = CodeSignStatus;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_INFO, "query from pid:%d procName:%@ bundleID:%@ csStatus:%d", token, 0x22u);
    }
  }

  if ((CodeSignStatus & 0xC000001) == 0x4000001)
  {
    v16 = PLLogCommon(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *token = 67109120;
      *&token[4] = CodeSignStatus;
      v17 = "allowing query %d";
      v18 = v16;
      v19 = 8;
LABEL_15:
      _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_INFO, v17, token, v19);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!v7 || (v11 = +[PLPlatform internalBuild], !v11))
  {
    v21 = PLLogCommon(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *token = 67109120;
      *&token[4] = CodeSignStatus;
      _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_INFO, "query denied %d", token, 8u);
    }

LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v16 = PLLogCommon(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *token = 0;
    v17 = "alloiwng query becaues internal build and has proper entitlements";
    v18 = v16;
    v19 = 2;
    goto LABEL_15;
  }

LABEL_16:

  v20 = 1;
LABEL_21:

  return v20;
}

+ (id)getPerfStatsForProcess:(id)process
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  processCopy = process;
  monotonicDate = [v3 monotonicDate];
  v6 = [monotonicDate dateByAddingTimeInterval:-86400.0];
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities getPerfStatsForProcess:];
  }

  v8 = MEMORY[0x1E696AEC0];
  [v6 timeIntervalSince1970];
  v10 = v9;
  [monotonicDate timeIntervalSince1970];
  v12 = [v8 stringWithFormat:@"SELECT LaunchdName AS BundleID, SUM(cpu_time) AS cpu_seconds, SUM(cpu_instructions) AS cpu_instructions, SUM(cpu_cycles) AS cpu_cycles FROM %@ where LaunchdName = '%@' AND timestamp >= %f and timestamp < %f", @"PLCoalitionAgent_EventInterval_CoalitionInterval", processCopy, v10, v11];

  v14 = PLLogCommon(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "[Perf Stats Query] %@", buf, 0xCu);
  }

  v15 = +[PLSQLiteConnection sharedSQLiteConnection];
  v16 = [v15 performQuery:v12];

  v17 = [v16 count];
  if (v17 && ([v16 firstObject], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"BundleID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isNil"), v19, v18, !v20))
  {
    v23 = PLLogCommon(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      firstObject = [v16 firstObject];
      *buf = 138412290;
      v27 = firstObject;
      _os_log_impl(&dword_1D8611000, v23, OS_LOG_TYPE_DEFAULT, "Report perf stats to CA for %@", buf, 0xCu);
    }

    firstObject2 = [v16 firstObject];
  }

  else
  {
    v21 = PLLogCommon(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getPerfStatsForProcess:];
    }

    firstObject2 = 0;
  }

  return firstObject2;
}

+ (id)getIdentifierFromEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"BundleId"];
  if ([v4 isEqualToString:&stru_1F539D228])
  {
    v5 = [entryCopy objectForKeyedSubscript:@"LaunchdName"];
    v6 = [PLUtilities launchdNameToProcessName:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if ([v5 length] > 9)
    {
      v8 = [v5 substringFromIndex:10];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

+ (id)launchdNameToProcessName:(id)name
{
  v3 = launchdNameToProcessName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[PLUtilities launchdNameToProcessName:];
  }

  v5 = [launchdNameToProcessName__launchdNameToProcessNameDict objectForKeyedSubscript:nameCopy];

  return v5;
}

void __40__PLUtilities_launchdNameToProcessName___block_invoke()
{
  v0 = launchdNameToProcessName__launchdNameToProcessNameDict;
  launchdNameToProcessName__launchdNameToProcessNameDict = &unk_1F540CFB8;
}

+ (id)binaryPathForPid:(int)pid
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:proc_pidpath(pid encoding:{buffer, 0x1000u), 4}];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

  return v4;
}

+ (id)bundleIDFromProcessName:(id)name
{
  nameCopy = name;
  if (nameCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [nameCopy length])
  {
    if (bundleIDFromProcessName__onceToken != -1)
    {
      +[PLUtilities bundleIDFromProcessName:];
    }

    v4 = [bundleIDFromProcessName__processNameToBundleID objectForKeyedSubscript:nameCopy];

    if (v4)
    {
      v5 = [bundleIDFromProcessName__processNameToBundleID objectForKeyedSubscript:nameCopy];
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__PLUtilities_bundleIDFromProcessName___block_invoke_2;
      v14[3] = &unk_1E851A278;
      v7 = nameCopy;
      v15 = v7;
      v8 = MEMORY[0x1DA71B0D0](v14);
      v9 = (v8)[2](v8, @"PLProcessMonitorAgent_EventForward_ProcessID", @"ProcessName");
      v10 = v9;
      if (v9 && ([v9 objectForKeyedSubscript:@"BundleID"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = [v10 objectForKeyedSubscript:@"BundleID"];
      }

      else
      {
        v13 = (v8)[2](v8, @"PLApplicationAgent_EventNone_AllApps", @"AppExecutable");

        v12 = [v13 objectForKeyedSubscript:@"AppBundleId"];
        v10 = v13;
      }

      [bundleIDFromProcessName__processNameToBundleID setObject:v12 forKeyedSubscript:v7];

      v5 = [bundleIDFromProcessName__processNameToBundleID objectForKeyedSubscript:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __39__PLUtilities_bundleIDFromProcessName___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  bundleIDFromProcessName__processNameToBundleID = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id __39__PLUtilities_bundleIDFromProcessName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [[PLValueComparison alloc] initWithKey:v5 withValue:*(a1 + 32) withComparisonOperation:0];

  v8 = +[PowerlogCore sharedCore];
  v9 = [v8 storage];
  v13[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [v9 lastEntryForKey:v6 withComparisons:v10 isSingleton:1];

  return v11;
}

+ (id)bundleIDFromPid:(int)pid
{
  v4 = [self binaryPathForPid:*&pid];
  if (v4)
  {
    v5 = _CFBundleCopyBundleURLForExecutableURL();
    v6 = [self bundleIDFromURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)bundleIDFromURL:(id)l
{
  if (l)
  {
    Unique = _CFBundleCreateUnique();
    v4 = Unique;
    if (Unique)
    {
      v5 = CFBundleGetIdentifier(Unique);
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

  return v5;
}

+ (id)bundleVersionFromURL:(id)l
{
  if (l)
  {
    Unique = _CFBundleCreateUnique();
    v4 = Unique;
    if (Unique)
    {
      v5 = CFBundleGetValueForInfoDictionaryKey(Unique, *MEMORY[0x1E695E148]);
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

  return v5;
}

+ (int)pidForProcessName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = proc_listpids(1u, 0, 0, 0);
  if ((v4 & 0x80000000) != 0)
  {
    v14 = PLLogCommon(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities pidForProcessName:];
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = v4;
  v7 = malloc_type_malloc(v4, 0x100004052888210uLL);
  if (!v7)
  {
    v14 = PLLogCommon(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities pidForProcessName:];
    }

LABEL_13:
    LODWORD(v12) = -1;
    goto LABEL_14;
  }

  v8 = v7;
  memset(v7, 255, v6);
  v9 = proc_listpids(1u, 0, v8, v5);
  v10 = v9;
  v11 = PLLogCommon(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities pidForProcessName:];
  }

  if (v10 >= 4)
  {
    if (v10 >> 2 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v10 >> 2;
    }

    v17 = v8;
    while (1)
    {
      v18 = *v17++;
      v12 = v18;
      if (v18 >= 1)
      {
        v19 = [PLUtilities fullProcessNameForPid:v12];
        v20 = PLLogCommon(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v23 = v19;
          v24 = 1024;
          v25 = v12;
          _os_log_debug_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEBUG, "checking %@ (%d)", buf, 0x12u);
        }

        v21 = [v19 isEqualToString:nameCopy];
        if (v21)
        {
          break;
        }
      }

      if (!--v16)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LODWORD(v12) = -1;
  }

  free(v8);
  v14 = PLLogCommon(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[PLUtilities pidForProcessName:];
  }

LABEL_14:

  return v12;
}

+ (id)processNameForPid:(int)pid
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 512);
  v5 = 648;
  *v6 = 0xE00000001;
  v7 = 1;
  pidCopy = pid;
  if (sysctl(v6, 4u, v9, &v5, 0, 0) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v9[15] + 3];
  }

  return v3;
}

+ (id)fullProcessNameForPid:(int)pid
{
  v7 = *MEMORY[0x1E69E9840];
  if (pid < 1 || (bzero(buffer, 0x1000uLL), proc_pidpath(pid, buffer, 0x1000u) < 1))
  {
    v4 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:basename(buffer)];
  }

  return v4;
}

+ (id)pUUIDForPid:(int)pid
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = proc_pidinfo(pid, 17, 1uLL, v6, 56);
  v4 = 0;
  if (v3 == 56)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  return v4;
}

+ (unint64_t)maxProcessCount
{
  v5 = 8;
  v6 = 0;
  v2 = sysctlbyname("kern.maxproc", &v6, &v5, 0, 0);
  if (!v2)
  {
    return v6;
  }

  v3 = PLLogCommon(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities maxProcessCount];
  }

  return 0;
}

+ (BOOL)isDaemonOrAppleXPCService:(int)service
{
  v3 = *&service;
  v4 = MEMORY[0x1E69C75D0];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v12 = 0;
  v6 = [v4 handleForIdentifier:v5 error:&v12];
  v7 = v12;
  identity = [v6 identity];

  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities isDaemonOrAppleXPCService:];
  }

  if ([identity isDaemon])
  {
    v9 = 1;
  }

  else if ([identity isXPCService])
  {
    xpcServiceIdentifier = [identity xpcServiceIdentifier];
    v9 = [xpcServiceIdentifier hasPrefix:@"com.apple"];
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [(PLUtilities *)v9 isDaemonOrAppleXPCService:v3];
  }

  return v9;
}

+ (unint64_t)coalitionIDForPid:(int)pid
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = proc_pidinfo(pid, 20, 1uLL, v5, 40);
  if (v3 == 40)
  {
    return *&v5[0];
  }

  else
  {
    return -v3;
  }
}

+ (BOOL)isLiteModeDaemon
{
  if (isLiteModeDaemon_onceToken != -1)
  {
    +[PLUtilities isLiteModeDaemon];
  }

  return isLiteModeDaemon_isLiteModeDaemon;
}

void __31__PLUtilities_isLiteModeDaemon__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 processName];
  v1 = +[PLUtilities liteModeDaemonName];
  isLiteModeDaemon_isLiteModeDaemon = [v0 isEqualToString:v1];
}

+ (BOOL)isFullModeDaemon
{
  if (isFullModeDaemon_onceToken != -1)
  {
    +[PLUtilities isFullModeDaemon];
  }

  return isFullModeDaemon_isFullModeDaemon;
}

void __31__PLUtilities_isFullModeDaemon__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 processName];
  v1 = +[PLUtilities fullModeDaemonName];
  isFullModeDaemon_isFullModeDaemon = [v0 isEqualToString:v1];
}

void __32__PLUtilities_isPowerlogHelperd__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  isPowerlogHelperd_isPowerlogHelperd = [v0 isEqualToString:@"powerlogHelperd"];
}

void __33__PLUtilities_isPerfPowerMetricd__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  isPerfPowerMetricd_isPerfPowerMetricd = [v0 isEqualToString:@"perfpowermetricd"];
}

+ (BOOL)isPowerexceptionsd
{
  if (isPowerexceptionsd_onceToken != -1)
  {
    +[PLUtilities isPowerexceptionsd];
  }

  return isPowerexceptionsd_isPowerexceptionsd;
}

void __33__PLUtilities_isPowerexceptionsd__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  isPowerexceptionsd_isPowerexceptionsd = [v0 isEqualToString:@"powerexceptionsd"];
}

+ (BOOL)runningAsMobileUser
{
  if (runningAsMobileUser_onceToken != -1)
  {
    +[PLUtilities runningAsMobileUser];
  }

  return runningAsMobileUser_runningAsMobileUser;
}

void __34__PLUtilities_runningAsMobileUser__block_invoke()
{
  v0 = +[PLUtilities runningAsUser];
  runningAsMobileUser_runningAsMobileUser = [v0 caseInsensitiveCompare:@"mobile"] == 0;
}

+ (id)runningAsUser
{
  if (runningAsUser_onceToken == -1)
  {
  }

  else
  {
    +[PLUtilities runningAsUser];
  }

  return NSUserName();
}

uint64_t __28__PLUtilities_runningAsUser__block_invoke()
{
  v0 = NSUserName();
  runningAsUser_userName = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (BOOL)shouldLogPreUnlockTelemetry
{
  v2 = +[PLUtilities PreUnlockTelemetryEnabled];
  if (v2)
  {
    v3 = +[PowerlogCore sharedCore];
    storage = [v3 storage];
    storageLocked = [storage storageLocked];

    LOBYTE(v2) = storageLocked;
  }

  return v2;
}

+ (BOOL)AppDeletionEnabled
{
  if (AppDeletionEnabled_onceToken != -1)
  {
    +[PLUtilities AppDeletionEnabled];
  }

  return AppDeletionEnabled_appDeletionEnabled;
}

uint64_t __33__PLUtilities_AppDeletionEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  AppDeletionEnabled_appDeletionEnabled = result;
  return result;
}

+ (BOOL)SwitchToIncrementalVacuumEnabled
{
  if (SwitchToIncrementalVacuumEnabled_onceToken != -1)
  {
    +[PLUtilities SwitchToIncrementalVacuumEnabled];
  }

  return SwitchToIncrementalVacuumEnabled_incrementalVacuumEnabled;
}

uint64_t __47__PLUtilities_SwitchToIncrementalVacuumEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  SwitchToIncrementalVacuumEnabled_incrementalVacuumEnabled = result;
  return result;
}

+ (BOOL)PreUnlockTelemetryEnabled
{
  if (PreUnlockTelemetryEnabled_onceToken != -1)
  {
    +[PLUtilities PreUnlockTelemetryEnabled];
  }

  return PreUnlockTelemetryEnabled_preUnlockTelemetryEnabled;
}

uint64_t __40__PLUtilities_PreUnlockTelemetryEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  PreUnlockTelemetryEnabled_preUnlockTelemetryEnabled = result;
  return result;
}

uint64_t __39__PLUtilities_OverrideAllowlistEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  OverrideAllowlistEnabled_overrideAllowlistEnabled = result;
  return result;
}

+ (BOOL)hasGasGauge
{
  if (hasGasGauge_onceToken != -1)
  {
    +[PLUtilities hasGasGauge];
  }

  return hasGasGauge___hasGasGauge;
}

uint64_t __26__PLUtilities_hasGasGauge__block_invoke()
{
  result = MGGetBoolAnswer();
  hasGasGauge___hasGasGauge = result;
  return result;
}

+ (BOOL)hasBattery
{
  if (hasBattery_onceToken != -1)
  {
    +[PLUtilities hasBattery];
  }

  return hasBattery___hasBattery;
}

void __25__PLUtilities_hasBattery__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  hasBattery___hasBattery = v0;
  v1 = PLLogCommon(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = hasBattery___hasBattery;
    _os_log_impl(&dword_1D8611000, v1, OS_LOG_TYPE_DEFAULT, "Battery detected: %d", v2, 8u);
  }
}

+ (BOOL)inBUIDemoMode
{
  if (inBUIDemoMode_defaultOnce != -1)
  {
    +[PLUtilities inBUIDemoMode];
  }

  return inBUIDemoMode_demoMode;
}

void __28__PLUtilities_inBUIDemoMode__block_invoke()
{
  v0 = [PLDefaults objectForKey:@"BUI_DEMO_MODE" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  inBUIDemoMode_demoMode = [v0 BOOLValue];
}

+ (BOOL)isHeySiriEnabled
{
  if (isHeySiriEnabled_onceToken != -1)
  {
    +[PLUtilities isHeySiriEnabled];
  }

  return isHeySiriEnabled_retValue;
}

void __31__PLUtilities_isHeySiriEnabled__block_invoke()
{
  v0 = CFPreferencesCopyValue(@"VoiceTrigger Enabled", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E8B0]);
  if (v0)
  {
    v1 = v0;
    isHeySiriEnabled_retValue = [v0 BOOLValue];
    v0 = v1;
  }
}

+ (BOOL)isSiriEnabled
{
  if (isSiriEnabled_onceToken != -1)
  {
    +[PLUtilities isSiriEnabled];
  }

  return isSiriEnabled_retValue;
}

void __28__PLUtilities_isSiriEnabled__block_invoke()
{
  v0 = CFPreferencesCopyValue(@"Assistant Enabled", @"com.apple.assistant.support", @"mobile", *MEMORY[0x1E695E8B0]);
  if (v0)
  {
    v1 = v0;
    isSiriEnabled_retValue = [v0 BOOLValue];
    v0 = v1;
  }
}

+ (BOOL)isSafetyDataSubmissionAllowed
{
  mEMORY[0x1E69ADFC0] = [MEMORY[0x1E69ADFC0] sharedConnection];
  isSafetyDataSubmissionAllowed = [mEMORY[0x1E69ADFC0] isSafetyDataSubmissionAllowed];

  return isSafetyDataSubmissionAllowed;
}

+ (BOOL)isImproveFitnessPlusEnabled
{
  v2 = PLLogCommon(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities isImproveFitnessPlusEnabled];
  }

  return 0;
}

uint64_t __36__PLUtilities_isAppAnalyticsEnabled__block_invoke()
{
  result = AppAnalyticsEnabled();
  isAppAnalyticsEnabled_appAnalyticsEnabled = result;
  return result;
}

+ (BOOL)isEduMode
{
  v2 = MKBUserTypeDeviceMode();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B1A60]];
    if ([v4 isEqualToString:*MEMORY[0x1E69B1A18]])
    {
      v6 = [v5 isEqualToString:*MEMORY[0x1E69B1A58]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)getDefaultL0bThresholdForDeviceType
{
  v2 = objc_opt_new();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 copyPropertyForKey:@"AABConstraints"];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v6 = [v4 objectForKeyedSubscript:@"L0b"];
        v7 = v6;
        if (v6)
        {
          doubleValue = [v6 doubleValue];
          v10 = v9 * 1.15;
          v11 = PLLogCommon(doubleValue);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            +[PLUtilities getDefaultL0bThresholdForDeviceType];
          }
        }

        else
        {
          v11 = PLLogCommon(0);
          v10 = -1.0;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            +[PLUtilities getDefaultL0bThresholdForDeviceType];
          }
        }
      }

      else
      {
        v7 = PLLogCommon(isKindOfClass);
        v10 = -1.0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          +[PLUtilities getDefaultL0bThresholdForDeviceType];
        }
      }
    }

    else
    {
      v7 = PLLogCommon(0);
      v10 = -1.0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities getDefaultL0bThresholdForDeviceType];
      }
    }
  }

  else
  {
    v4 = PLLogCommon(0);
    v10 = -1.0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getDefaultL0bThresholdForDeviceType];
    }
  }

  return v10;
}

+ (BOOL)isALSCurveHigherThanDefault
{
  +[PLUtilities getDefaultL0bThresholdForDeviceType];
  v3 = v2;
  v4 = CFPreferencesCopyValue(@"BKALSUserPreferences", @"com.apple.backboardd", @"mobile", *MEMORY[0x1E695E8B0]);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"L0b"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = v8 > v3;
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

  return v9;
}

+ (id)hashString:(id)string
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__PLUtilities_hashString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v4 = hashString__onceToken;
  stringCopy = string;
  if (v4 != -1)
  {
    dispatch_once(&hashString__onceToken, block);
  }

  v6 = [self generateHashValue:stringCopy withSalt:hashString__salt];

  return v6;
}

uint64_t __26__PLUtilities_hashString___block_invoke(uint64_t a1)
{
  if ([PLDefaults objectExistsForKey:@"PLSalt"])
  {
    [PLDefaults objectForKey:@"PLSalt" synchronize:1];
  }

  else
  {
    [*(a1 + 32) generateAndUpdateSaltValue:@"PLSalt"];
  }
  v2 = ;
  hashString__salt = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

+ (id)hashBundleID:(id)d
{
  dCopy = d;
  if (!saltBundleID)
  {
    if ([PLDefaults objectExistsForKey:@"PLSaltBundleID"])
    {
      [PLDefaults objectForKey:@"PLSaltBundleID" synchronize:1];
    }

    else
    {
      [self generateAndUpdateSaltValue:@"PLSaltBundleID"];
    }
    v5 = ;
    v6 = saltBundleID;
    saltBundleID = v5;
  }

  v7 = [self generateHashValue:dCopy withSalt:saltBundleID];

  return v7;
}

+ (id)generateAndUpdateSaltValue:(id)value
{
  v3 = MEMORY[0x1E696AFB0];
  valueCopy = value;
  uUID = [v3 UUID];
  uUIDString = [uUID UUIDString];

  [PLDefaults setObject:uUIDString forKey:valueCopy saveToDisk:1];
  LODWORD(uUID) = [valueCopy isEqualToString:@"PLSaltBundleID"];

  if (uUID)
  {
    objc_storeStrong(&saltBundleID, uUIDString);
  }

  return uUIDString;
}

+ (id)generateHashValue:(id)value withSalt:(id)salt
{
  v11 = *MEMORY[0x1E69E9840];
  salt = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", value, salt];
  uTF8String = [salt UTF8String];

  *md = 0;
  v10 = 0;
  v6 = strlen(uTF8String);
  CC_MD5(uTF8String, v6, md);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v10, BYTE1(v10), BYTE2(v10), BYTE3(v10), BYTE4(v10), BYTE5(v10), BYTE6(v10), HIBYTE(v10)];

  return v7;
}

+ (BOOL)shouldLogForEntryKey:(id)key
{
  keyCopy = key;
  if (+[PPSEntryKey PPSEnabled:](PPSEntryKey, "PPSEnabled:", keyCopy) || +[PLDefaults fullMode])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[PLUtilities getAllowblocklist];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:keyCopy];
      v4 = v7 != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (signed)canLogMode:(id)mode fullMode:(BOOL)fullMode
{
  fullModeCopy = fullMode;
  modeCopy = mode;
  if (fullModeCopy)
  {
    if ([@"NO" isEqualToString:modeCopy])
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (([@"HF" isEqualToString:modeCopy] & 1) == 0)
    {
      if (([@"HB" isEqualToString:modeCopy] & 1) == 0)
      {
        v6 = 0;
        goto LABEL_15;
      }

LABEL_13:
      v6 = 4;
      goto LABEL_17;
    }

LABEL_11:
    v6 = 2;
    goto LABEL_17;
  }

  if ([@"YES" isEqualToString:modeCopy])
  {
    v6 = 0;
    goto LABEL_17;
  }

  if ([@"HL" isEqualToString:modeCopy] & 1) != 0 || (objc_msgSend(@"HF", "isEqualToString:", modeCopy))
  {
    goto LABEL_11;
  }

  if ([@"HB" isEqualToString:modeCopy])
  {
    goto LABEL_13;
  }

  v6 = 1;
LABEL_15:
  if ([@"TR" isEqualToString:modeCopy])
  {
    v6 = 3;
  }

LABEL_17:

  return v6;
}

+ (signed)logModeForEntryKey:(id)key withKey:(id)withKey andValue:(id)value
{
  keyCopy = key;
  withKeyCopy = withKey;
  if ([PPSEntryKey PPSEnabled:keyCopy])
  {
    v8 = 0;
  }

  else
  {
    v9 = [PLUtilities modeForEntryKey:keyCopy withKeyName:withKeyCopy];
    if (!v9)
    {
      v10 = [PLUtilities modeForEntryKey:keyCopy withKeyName:@"__Allow_Dynamic__"];
      v11 = v10;
      if (v10)
      {
        if ([v10 BOOLValue])
        {
          v9 = @"YES";
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
    }

    v8 = +[PLUtilities canLogMode:fullMode:](PLUtilities, "canLogMode:fullMode:", v9, +[PLDefaults fullMode]);
  }

  return v8;
}

+ (id)modeForEntryKey:(id)key withKeyName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  v7 = +[PLUtilities getAllowblocklist];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:keyCopy];

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:keyCopy];
      v9 = [v10 objectForKeyedSubscript:nameCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)buildVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)supplementalBuildVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)crashReporterKey
{
  if (crashReporterKey_onceToken != -1)
  {
    +[PLUtilities crashReporterKey];
  }

  v3 = crashReporterKey_crkey;

  return v3;
}

uint64_t __31__PLUtilities_crashReporterKey__block_invoke()
{
  v0 = MGCopyAnswer();
  crashReporterKey_crkey = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)mobileUserADG
{
  v2 = CFPreferencesCopyValue(@"AutomatedDeviceGroup", @"com.apple.da", @"mobile", *MEMORY[0x1E695E8B0]);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)experimentGroup
{
  if (experimentGroup_onceToken != -1)
  {
    +[PLUtilities experimentGroup];
  }

  v3 = experimentGroup_expGroup;

  return v3;
}

void __30__PLUtilities_experimentGroup__block_invoke()
{
  v2 = [MEMORY[0x1E69B7C10] sharedInstance];
  v0 = [v2 experimentGroup];
  v1 = experimentGroup_expGroup;
  experimentGroup_expGroup = v0;
}

+ (BOOL)hasInternalKey
{
  if (hasInternalKey_onceToken != -1)
  {
    +[PLUtilities hasInternalKey];
  }

  return hasInternalKey__hasInternalAccount;
}

void __29__PLUtilities_hasInternalKey__block_invoke()
{
  if (+[PLPlatform internalBuild])
  {
    v1 = [MEMORY[0x1E69B7C10] sharedInstance];
    v0 = [v1 internalKey];
    hasInternalKey__hasInternalAccount = [PLUtilities hasInternalKey:v0];
  }
}

+ (BOOL)hasInternalKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy length])
  {
    v4 = [keyCopy componentsSeparatedByString:@""];;
    v5 = [v4 count];
    if (v5 == 2)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      v7 = [v6 length] != 0;
    }

    else
    {
      v8 = PLLogCommon(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[PLUtilities hasInternalKey:].cold.1(keyCopy, v10, [v4 count], v8);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceBootArgs
{
  if (deviceBootArgs_onceToken != -1)
  {
    +[PLUtilities deviceBootArgs];
  }

  v3 = deviceBootArgs_bootArgs;

  return v3;
}

void __29__PLUtilities_deviceBootArgs__block_invoke()
{
  size = 0;
  v0 = sysctlbyname("kern.bootargs", 0, &size, 0, 0);
  if (v0)
  {
    v1 = PLLogCommon(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __29__PLUtilities_deviceBootArgs__block_invoke_cold_1();
    }
  }

  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  v3 = sysctlbyname("kern.bootargs", v2, &size, 0, 0);
  if (v3)
  {
    v4 = PLLogCommon(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __29__PLUtilities_deviceBootArgs__block_invoke_cold_2();
    }

    free(v2);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  v6 = [v5 strip];

  free(v2);
  v7 = deviceBootArgs_bootArgs;
  deviceBootArgs_bootArgs = v6;
}

+ (id)allSubClassesForClass:(Class)class
{
  if (+[PLDefaults debugEnabled])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**allSubclassesFire!**"];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities allSubClassesForClass:]"];
    [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:2147];

    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  outCount = 0;
  v11 = objc_copyClassList(&outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Superclass = v11[i];
      do
      {
        Superclass = class_getSuperclass(Superclass);
      }

      while (Superclass && Superclass != class);
      if (Superclass)
      {
        [array addObject:v11[i]];
      }
    }
  }

  free(v11);

  return array;
}

+ (double)roundToSigFigDouble:(double)double withSigFig:(int)fig
{
  result = 0.0;
  if (double != 0.0)
  {
    doubleCopy = -double;
    if (double >= 0.0)
    {
      doubleCopy = double;
    }

    v8 = log10(doubleCopy);
    v9 = __exp10((fig - vcvtpd_s64_f64(v8)));
    return round(v9 * double) / v9;
  }

  return result;
}

+ (id)shortUUIDString
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  if ([uUIDString length] >= 8)
  {
    v4 = [uUIDString substringFromIndex:{objc_msgSend(uUIDString, "length") - 8}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)JSONSanitizeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryCopy] & 1) == 0)
  {
    if (+[PLDefaults debugEnabled])
    {
      dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non JSON-able object:%@", dictionaryCopy];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities JSONSanitizeDictionary:]"];
      [PLCoreStorage logMessage:dictionaryCopy fromFile:lastPathComponent fromFunction:v7 fromLineNumber:2198];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    v10 = objc_opt_new();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__PLUtilities_JSONSanitizeDictionary___block_invoke;
    v14[3] = &unk_1E8519700;
    v11 = v10;
    v15 = v11;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v14];
    v12 = v11;

    dictionaryCopy = v12;
  }

  return dictionaryCopy;
}

void __38__PLUtilities_JSONSanitizeDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isNil] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E696AD98];
      [v6 timeIntervalSince1970];
      v8 = [v7 numberWithDouble:?];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }

    else if ([MEMORY[0x1E696ACB0] isValidJSONObject:v6])
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    }

    else if (+[PLDefaults debugEnabled])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"JSON: unable to serialize key=%@ value=%@", v5, v6];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLUtilities.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLUtilities JSONSanitizeDictionary:]_block_invoke"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:2209];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

+ (BOOL)isValidString:(id)string
{
  stringCopy = string;
  if (stringCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [stringCopy isEqualToString:&stru_1F539D228] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)getKVPairsForCASubmissionFromEntry:(id)entry
{
  v3 = MEMORY[0x1E695DF90];
  entryCopy = entry;
  dictionary = [v3 dictionary];
  dictionary2 = [entryCopy dictionary];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLUtilities_getKVPairsForCASubmissionFromEntry___block_invoke;
  v9[3] = &unk_1E8519700;
  v7 = dictionary;
  v10 = v7;
  [dictionary2 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __50__PLUtilities_getKVPairsForCASubmissionFromEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

+ (jetsam_priority_info)getJetsamPriority:(int)priority
{
  if (memorystatus_control() == 128)
  {
    v3 = mach_absolute_time();
    v4 = 0x100000000;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getJetsamPriority:];
    }

    v4 = 0x1FFFFFFFFLL;
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.var2 = v3;
  result.var0 = v4;
  result.var1 = BYTE4(v4);
  return result;
}

+ (process_memory_limit_info)getProcessMemoryLimit:(int)limit
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (memorystatus_control() != 24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[PLUtilities getProcessMemoryLimit:];
  }

  if (memorystatus_control())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities getProcessMemoryLimit:];
    }

    v4 = 0;
    v5 = 0;
    v6 = -1;
  }

  else
  {
    v6 = v8;
    v4 = (v10 != 0) << 48;
    v5 = (BYTE4(v8) & 1) << 32;
  }

  if (v6 != v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    limitCopy = limit;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v13;
    _os_log_impl(&dword_1D8611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "memory limits do not match for pid %i (get_prio_list=%i, get_memlimit_props=%i)", buf, 0x14u);
  }

  return (v4 | 0x10000000000 | v5 | v6);
}

+ (id)cleanLaunchdApplicationMacOS:(id)s
{
  v3 = [s componentsSeparatedByString:@"."];
  if (([v3 count] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = &stru_1F539D228;
  }

  else
  {
    v5 = &stru_1F539D228;
    v6 = 1;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      v4 = [(__CFString *)v5 stringByAppendingString:v7];

      if ([v3 count] - 2 > ++v6)
      {
        v8 = [(__CFString *)v4 stringByAppendingString:@"."];

        v4 = v8;
      }

      v5 = v4;
    }

    while ([v3 count] - 2 > v6);
  }

  return v4;
}

+ (id)cleanLaunchdName:(id)name
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = nameCopy;
  if (!nameCopy)
  {
    v16 = 0;
    goto LABEL_44;
  }

  v5 = [nameCopy hasPrefix:@"system/"];
  v6 = [v4 hasPrefix:@"user/"];
  v7 = [v4 hasPrefix:@"gui/"];
  v8 = [v4 hasPrefix:@"pid/"];
  v9 = v4;
  if ([v9 length] <= 0x23)
  {
    v11 = 0;
LABEL_22:

    v15 = v9;
    goto LABEL_23;
  }

  v10 = [v9 substringFromIndex:{objc_msgSend(v9, "length") - 36}];
  v11 = v10;
  if (!v10 || [v10 length] != 36 || objc_msgSend(v11, "characterAtIndex:", 8) != 45 || objc_msgSend(v11, "characterAtIndex:", 13) != 45 || objc_msgSend(v11, "characterAtIndex:", 18) != 45 || objc_msgSend(v11, "characterAtIndex:", 23) != 45)
  {
    goto LABEL_22;
  }

  if (stringIsUUID_onceToken != -1)
  {
    +[PLUtilities cleanLaunchdName:];
  }

  [v11 componentsSeparatedByString:@"-"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v24 = *v27;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:*(*(&v26 + 1) + 8 * i)];
        v14 = [stringIsUUID_hexChars isSupersetOfSet:v13];

        if (!v14)
        {

          goto LABEL_22;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 37}];

LABEL_23:
  if (v5)
  {
    v17 = [v15 substringFromIndex:{objc_msgSend(@"system/", "length")}];
    if (!v17)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (((v6 | v8 | v7) & 1) == 0)
    {
      goto LABEL_40;
    }

    v18 = [v15 componentsSeparatedByString:@"/"];
    if ([v18 count] == 3)
    {
      v19 = [v18 objectAtIndexedSubscript:2];
      v20 = v19;
      if (v6 && [v19 hasPrefix:@"UIKitApplication:"])
      {
        v21 = [v20 substringWithRange:{objc_msgSend(@"UIKitApplication:", "length"), objc_msgSend(v20, "length") - objc_msgSend(@"UIKitApplication:", "length") - 17}];
      }

      else if (v7 && [v20 hasPrefix:@"application."])
      {
        v21 = [PLUtilities cleanLaunchdApplicationMacOS:v20];
      }

      else
      {
        v21 = v20;
      }

      v17 = v21;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
LABEL_40:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[PLUtilities cleanLaunchdName:];
      }

      v17 = 0;
      goto LABEL_43;
    }
  }

  if ([v17 containsString:@"/"])
  {

    goto LABEL_40;
  }

LABEL_43:
  v16 = v17;

LABEL_44:

  return v16;
}

+ (id)intervalPeakCADictionaryForLaunchdName:(id)name intervalMaxKB:(unint64_t)b
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = @"UNKNOWN";
  }

  v13[0] = @"launchd_name";
  v13[1] = @"interval_peak_footprint_kb";
  v14[0] = nameCopy;
  v7 = MEMORY[0x1E696AD98];
  nameCopy2 = name;
  v9 = [v7 numberWithUnsignedLongLong:b];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v5 dictionaryWithDictionary:v10];

  return v11;
}

+ (void)refreshBUI
{
  if (!+[PLPlatform isHomePod])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.refreshBUI", 0, 0, 4u);
  }
}

+ (unint64_t)convertToBase10:(id)base10 fromBaseN:(int)n
{
  base10Copy = base10;
  v6 = [base10Copy length];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    nCopy = n;
    v10 = -v6;
    v11 = v6 - 1;
    do
    {
      v12 = [base10Copy characterAtIndex:v7];
      if ((v12 - 65) >= 0x1A)
      {
        v13 = v12 - 48;
      }

      else
      {
        v13 = (v12 - 55);
      }

      v8 = (v8 + v13 * pow(nCopy, v11));
      ++v7;
      --v11;
    }

    while (v10 + v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sanitizeCAPayload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v4 = [payloadCopy mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = payloadCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 rangeOfString:{@"-", v14}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
          [v4 setObject:v11 forKey:v12];

          [v4 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (int)grabSysctlValue:(id)value
{
  valueCopy = value;
  v11 = 0;
  v10 = 4;
  v4 = sysctlbyname([valueCopy UTF8String], &v11, &v10, 0, 0);
  v5 = v4;
  v6 = PLLogCommon(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[PLUtilities grabSysctlValue:];
    }

    v8 = -1;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[PLUtilities grabSysctlValue:];
    }

    v8 = v11;
  }

  return v8;
}

+ (double)scaledPowerBasedOnPoint:(double)point withPowerModel:(id)model
{
  v38 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = 0.0;
  if (!+[PLPlatform isHomePod]&& point > 0.0 && modelCopy != 0)
  {
    allKeys = [modelCopy allKeys];
    v9 = [allKeys sortedArrayUsingSelector:sel_compareFloat_];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v34;
LABEL_8:
      v15 = 0;
      v16 = v13;
      while (1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v33 + 1) + 8 * v15);
        [v17 doubleValue];
        v19 = v18;
        v13 = v17;
        if (v19 > point)
        {
          break;
        }

        ++v15;
        v16 = v13;
        if (v12 == v15)
        {
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (!v13)
      {
        goto LABEL_19;
      }

      v20 = [modelCopy objectForKeyedSubscript:v16];
      [v20 doubleValue];
      v22 = v21;

      v23 = [modelCopy objectForKeyedSubscript:v13];
      [v23 doubleValue];
      v25 = v24;

      [v16 doubleValue];
      v27 = point - v26;
      [v13 doubleValue];
      v29 = v28;
      [v16 doubleValue];
      v6 = v22 + v27 / (v29 - v30) * (v25 - v22);
    }

    else
    {
      v13 = 0;
LABEL_18:

      v16 = v13;
LABEL_19:
      v13 = [modelCopy objectForKeyedSubscript:{v16, v33}];
      [v13 doubleValue];
      v6 = v31;
    }
  }

  return v6;
}

+ (id)powerModelForOperatorName:(id)name
{
  nameCopy = name;
  if (+[PLPlatform isHomePod])
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v5 = getPowermodels();
    v4 = [v5 objectForKeyedSubscript:nameCopy];
  }

  return v4;
}

+ (id)torchTypeString
{
  if (!+[PLPlatform isHomePod]&& torchTypeString_onceToken != -1)
  {
    +[PLUtilities torchTypeString];
  }

  v2 = torchTypeString__torchTypeString;

  return v2;
}

uint64_t __30__PLUtilities_torchTypeString__block_invoke()
{
  v0 = +[PLPlatform kPLTorchClassOfDevice];
  if ((v0 - 1007002) > 2)
  {
    v1 = @"N41";
  }

  else
  {
    v1 = off_1E851A400[(v0 - 1007002)];
  }

  torchTypeString__torchTypeString = v1;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t __32__PLUtilities_MavRevStringQuery__block_invoke()
{
  v0 = +[PLPlatform kPLBasebandClassOfDevice];
  if ((v0 - 1003001) > 0x13)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E851A418[(v0 - 1003001)];
  }

  MavRevStringQuery_plMavRevString = v1;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (void)PLCopyItemsFromPath:toPath:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)setPermissionsForFile:toValue:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)compressWithSource:withDestination:withLevel:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)compressWithSource:withDestination:withLevel:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)compressWithSource:withDestination:withLevel:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)compressWithSource:withDestination:withLevel:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)decompressWithSource:withDestination:withRemoveSrc:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)reportZlibResultToCA:forEvent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)numFilesAtPath:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)remove:oldestFilesFromDirectory:containingFileNameSubstring:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)remove:(uint64_t)a3 oldestFilesFromDirectory:(os_log_t)log containingFileNameSubstring:.cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Found %lu files with %@ in the name", buf, 0x16u);
}

+ (void)remove:oldestFilesFromDirectory:containingFileNameSubstring:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_83_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __75__PLUtilities_remove_oldestFilesFromDirectory_containingFileNameSubstring___block_invoke_87_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)machTimeFromSeconds:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)machTimeFromSeconds:.cold.3()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __39__PLUtilities_quarantineToPath_action___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 filePath];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Quarantine src: %@", v4, 0xCu);
}

+ (void)allowQueryFromPeer:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getPerfStatsForProcess:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

+ (void)getPerfStatsForProcess:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)pidForProcessName:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
}

+ (void)pidForProcessName:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)pidForProcessName:.cold.4()
{
  __error();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

+ (void)maxProcessCount
{
  __error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)isDaemonOrAppleXPCService:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = [PLUtilities bundleIDFromPid:a2];
  v9 = [PLUtilities processNameForPid:a2];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x22u);
}

+ (void)isImproveFitnessPlusEnabled
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getDefaultL0bThresholdForDeviceType
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)hasInternalKey:(uint64_t)a3 .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "invalid internal key: %{private}@ resulting in %lu components", buf, 0x16u);
}

+ (void)hasInternalKey:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __29__PLUtilities_deviceBootArgs__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__PLUtilities_deviceBootArgs__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getJetsamPriority:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)getProcessMemoryLimit:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)grabSysctlValue:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)grabSysctlValue:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
}

@end