@interface ANUtils
+ (BOOL)isHomeAppInstalled;
+ (BOOL)isInternalBuild;
+ (NSDateFormatter)an_dateFormatterForFilename;
+ (double)machTimeToSeconds:(unint64_t)seconds;
+ (unint64_t)secondsToMachTime:(double)time;
+ (void)asyncDispatchOnGlobalQueue:(id)queue;
@end

@implementation ANUtils

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[ANUtils isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

uint64_t __26__ANUtils_isInternalBuild__block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  isInternalBuild_isInternal = result;
  return result;
}

+ (NSDateFormatter)an_dateFormatterForFilename
{
  if (an_dateFormatterForFilename_onceToken != -1)
  {
    +[ANUtils an_dateFormatterForFilename];
  }

  v3 = an_dateFormatterForFilename_dateFormatter;

  return v3;
}

uint64_t __38__ANUtils_an_dateFormatterForFilename__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = an_dateFormatterForFilename_dateFormatter;
  an_dateFormatterForFilename_dateFormatter = v0;

  v2 = an_dateFormatterForFilename_dateFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  [v2 setLocale:v3];

  v4 = an_dateFormatterForFilename_dateFormatter;

  return [v4 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
}

+ (BOOL)isHomeAppInstalled
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = @"com.apple.Home";
  v7 = 0;
  v3 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v2 allowPlaceholder:0 error:&v7];
  v4 = v7;
  if (v4)
  {
    if (ANLogHandleUtils_once != -1)
    {
      +[ANUtils isHomeAppInstalled];
    }

    v5 = ANLogHandleUtils_logger;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v9 = &stru_2836DAA20;
      v10 = 2112;
      v11 = v2;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_ERROR, "%@Failed to look up bundle record for bundleID (%@), Record: %@ Error: %@", buf, 0x2Au);
    }
  }

  return v3 != 0;
}

+ (double)machTimeToSeconds:(unint64_t)seconds
{
  if (machTimeToSeconds__onceToken != -1)
  {
    +[ANUtils machTimeToSeconds:];
  }

  LODWORD(v3) = dword_27D09AA94;
  return (machTimeToSeconds___timeBaseInfo * seconds) / (v3 * 1000000000.0);
}

+ (unint64_t)secondsToMachTime:(double)time
{
  if (secondsToMachTime__onceToken != -1)
  {
    +[ANUtils secondsToMachTime:];
  }

  return (*algn_27D09AAA4 * time * (1000000000.0 / secondsToMachTime___timeBaseInfo));
}

+ (void)asyncDispatchOnGlobalQueue:(id)queue
{
  queueCopy = queue;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ANUtils_asyncDispatchOnGlobalQueue___block_invoke;
  block[3] = &unk_2784E2088;
  v7 = queueCopy;
  v5 = queueCopy;
  dispatch_async(v4, block);
}

@end