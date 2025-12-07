@interface CESRDictationOnDeviceSampling
+ (BOOL)_isInternalInstall;
+ (BOOL)_isSamplingAllowed;
+ (id)_readDictationSampledPlist;
+ (id)sharedManager;
- (BOOL)_isSamplingDateCurrent;
- (BOOL)isRequestSelectedForSamplingFromConfigForLanguage:(id)language;
- (CESRDictationOnDeviceSampling)init;
- (void)_setRequestCount:(int64_t)count;
- (void)_setSamplingDateToCurrentDate;
- (void)_updateDictationSampledPlist;
- (void)incrementSampledRequestCount;
@end

@implementation CESRDictationOnDeviceSampling

- (BOOL)_isSamplingDateCurrent
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  LOBYTE(self) = [currentCalendar isDateInToday:self->_samplingDate];

  return self;
}

- (void)_setSamplingDateToCurrentDate
{
  date = [MEMORY[0x277CBEAA8] date];
  samplingDate = self->_samplingDate;
  self->_samplingDate = date;

  v6 = self->_samplingDate;
  dictationSamplingVariables = self->_dictationSamplingVariables;
  sampledCurrentSamplingDateKey = [MEMORY[0x277CEF290] sampledCurrentSamplingDateKey];
  [(NSMutableDictionary *)dictationSamplingVariables setObject:v6 forKeyedSubscript:sampledCurrentSamplingDateKey];
}

- (void)_setRequestCount:(int64_t)count
{
  self->_numberOfRequestsTillNow = count;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(NSMutableDictionary *)self->_dictationSamplingVariables setObject:v4 forKeyedSubscript:@"numberOfRequestsTillNow"];
}

- (void)_updateDictationSampledPlist
{
  v3 = [(NSMutableDictionary *)self->_dictationSamplingVariables copy];
  fileQueue = self->_fileQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CESRDictationOnDeviceSampling__updateDictationSampledPlist__block_invoke;
  block[3] = &unk_27857FFE8;
  v7 = v3;
  v5 = v3;
  dispatch_async(fileQueue, block);
}

void __61__CESRDictationOnDeviceSampling__updateDictationSampledPlist__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEF290] createSamplingDirectory];
  if (v2)
  {
    v3 = [MEMORY[0x277CEF290] sampledPlistFileName];
    v4 = [v2 stringByAppendingPathComponent:v3];

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v14 = 0;
    v7 = [v5 writeToURL:v6 error:&v14];
    v8 = v14;

    v9 = *MEMORY[0x277CEF0E8];
    v10 = *MEMORY[0x277CEF0E8];
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "[CESRDictationOnDeviceSampling _updateDictationSampledPlist]_block_invoke";
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Wrote updated sampling variables to plist: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = v9;
      v13 = [v8 description];
      *buf = 136315650;
      v16 = "[CESRDictationOnDeviceSampling _updateDictationSampledPlist]_block_invoke";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v13;
      _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to write sampling variables to plist: %@, error: %@", buf, 0x20u);
    }
  }

  else
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CESRDictationOnDeviceSampling _updateDictationSampledPlist]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to create the sampling directory.", buf, 0xCu);
    }
  }
}

- (BOOL)isRequestSelectedForSamplingFromConfigForLanguage:(id)language
{
  v22 = *MEMORY[0x277D85DE8];
  if (!+[CESRDictationOnDeviceSampling _isSamplingAllowed])
  {
    return 0;
  }

  if (language && (!self->_numberOfRequestsTillNow || ![(CESRDictationOnDeviceSampling *)self _isSamplingDateCurrent]))
  {
    self->_isDeviceSampledFromConfig = 1;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(NSMutableDictionary *)self->_dictationSamplingVariables setObject:v5 forKeyedSubscript:@"isDeviceSampledFromConfig"];

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      isDeviceSampledFromConfig = self->_isDeviceSampledFromConfig;
      v18 = 136315394;
      v19 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v20 = 1024;
      v21 = isDeviceSampledFromConfig;
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Dictation Sampling: isDeviceSampledFromConfig = %d", &v18, 0x12u);
    }
  }

  if (!self->_isDeviceSampledFromConfig && !+[CESRDictationOnDeviceSampling _isInternalInstall])
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v15 = "%s Dictation Sampling: Device is not participating in sampling today.";
      v16 = v14;
LABEL_25:
      _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, v15, &v18, 0xCu);
    }

    return 0;
  }

  if (![(CESRDictationOnDeviceSampling *)self _isSamplingDateCurrent])
  {
    [(CESRDictationOnDeviceSampling *)self _setSamplingDateToCurrentDate];
    [(CESRDictationOnDeviceSampling *)self _setRequestCount:0];
  }

  if (+[CESRDictationOnDeviceSampling _isInternalInstall])
  {
    v8 = *MEMORY[0x277CEF0E8];
    v9 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v10 = "%s Dictation Sampling: Selected for sampling. Sampling from an internal install.";
LABEL_22:
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, v10, &v18, 0xCu);
      return v9;
    }

    return v9;
  }

  numberOfRequestsTillNow = self->_numberOfRequestsTillNow;
  if (numberOfRequestsTillNow)
  {
    v12 = arc4random_uniform(numberOfRequestsTillNow + 1) + 1;
    v8 = *MEMORY[0x277CEF0E8];
    v13 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
    if (v12 <= 1)
    {
      if (!v13)
      {
        return 1;
      }

      v18 = 136315138;
      v19 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v10 = "%s Dictation Sampling: Selected for sampling.";
      v9 = 1;
      goto LABEL_22;
    }

    if (v13)
    {
      v18 = 136315138;
      v19 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v15 = "%s Dictation Sampling: Not selected for sampling.";
      v16 = v8;
      goto LABEL_25;
    }

    return 0;
  }

  v8 = *MEMORY[0x277CEF0E8];
  v9 = 1;
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
    v10 = "%s Dictation Sampling: Selected for sampling. The count of sampled requests was 0.";
    goto LABEL_22;
  }

  return v9;
}

- (void)incrementSampledRequestCount
{
  v6 = *MEMORY[0x277D85DE8];
  ++self->_numberOfRequestsTillNow;
  [(CESRDictationOnDeviceSampling *)self _setRequestCount:?];
  [(CESRDictationOnDeviceSampling *)self _updateDictationSampledPlist];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CESRDictationOnDeviceSampling incrementSampledRequestCount]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Incremented the count of sampled requests by 1.", &v4, 0xCu);
  }
}

- (CESRDictationOnDeviceSampling)init
{
  v17.receiver = self;
  v17.super_class = CESRDictationOnDeviceSampling;
  v2 = [(CESRDictationOnDeviceSampling *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CESRDictationOnDeviceSampling file queue", v3);
    fileQueue = v2->_fileQueue;
    v2->_fileQueue = v4;

    _readDictationSampledPlist = [objc_opt_class() _readDictationSampledPlist];
    dictationSamplingVariables = v2->_dictationSamplingVariables;
    v2->_dictationSamplingVariables = _readDictationSampledPlist;

    v2->_isDeviceSampledFromConfig = 1;
    if ([(NSMutableDictionary *)v2->_dictationSamplingVariables count])
    {
      v8 = v2->_dictationSamplingVariables;
      sampledCurrentSamplingDateKey = [MEMORY[0x277CEF290] sampledCurrentSamplingDateKey];
      v10 = [(NSMutableDictionary *)v8 objectForKey:sampledCurrentSamplingDateKey];
      samplingDate = v2->_samplingDate;
      v2->_samplingDate = v10;

      v12 = [(NSMutableDictionary *)v2->_dictationSamplingVariables objectForKey:@"numberOfRequestsTillNow"];
      v2->_numberOfRequestsTillNow = [v12 integerValue];

      v13 = [(NSMutableDictionary *)v2->_dictationSamplingVariables objectForKey:@"isDeviceSampledFromConfig"];
      v14 = v13;
      if (v13)
      {
        isDeviceSampledFromConfig = [v13 BOOLValue];
      }

      else
      {
        isDeviceSampledFromConfig = v2->_isDeviceSampledFromConfig;
      }

      v2->_isDeviceSampledFromConfig = isDeviceSampledFromConfig;
    }

    else
    {
      [(CESRDictationOnDeviceSampling *)v2 _setSamplingDateToCurrentDate];
      [(CESRDictationOnDeviceSampling *)v2 _setRequestCount:0];
    }
  }

  return v2;
}

+ (id)_readDictationSampledPlist
{
  v20 = *MEMORY[0x277D85DE8];
  sampledLibraryDirectoryPath = [MEMORY[0x277CEF290] sampledLibraryDirectoryPath];
  sampledPlistFileName = [MEMORY[0x277CEF290] sampledPlistFileName];
  v4 = [sampledLibraryDirectoryPath stringByAppendingPathComponent:sampledPlistFileName];

  v5 = MEMORY[0x277CBEB38];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v13 = 0;
  v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "+[CESRDictationOnDeviceSampling _readDictationSampledPlist]";
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to read plist at path: %@, error: %@", buf, 0x20u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    dictionary = [v7 mutableCopy];
  }

  v11 = dictionary;

  return v11;
}

+ (BOOL)_isSamplingAllowed
{
  v9 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  if ([mEMORY[0x277CEF368] isDictationOnDeviceSamplingDisabled])
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[CESRDictationOnDeviceSampling _isSamplingAllowed]";
      v4 = "%s Dictation Sampling: Not sampling. Sampling is explicitly disabled.";
LABEL_11:
      _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, v4, &v7, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([mEMORY[0x277CEF368] isDictationHIPAACompliant])
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[CESRDictationOnDeviceSampling _isSamplingAllowed]";
      v4 = "%s Dictation Sampling: Not sampling. Request is HIPAA compliant.";
      goto LABEL_11;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if ([mEMORY[0x277CEF368] siriDataSharingOptInStatus] != 1)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[CESRDictationOnDeviceSampling _isSamplingAllowed]";
      v4 = "%s Dictation Sampling: Not sampling. User is not opted-in.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = 1;
LABEL_13:

  return v5;
}

+ (BOOL)_isInternalInstall
{
  if (_isInternalInstall_onceToken != -1)
  {
    dispatch_once(&_isInternalInstall_onceToken, &__block_literal_global_9);
  }

  return _isInternalInstall_isInternalInstall;
}

uint64_t __51__CESRDictationOnDeviceSampling__isInternalInstall__block_invoke()
{
  result = AFIsInternalInstall();
  _isInternalInstall_isInternalInstall = result;
  return result;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_729 != -1)
  {
    dispatch_once(&sharedManager_onceToken_729, &__block_literal_global_730);
  }

  v3 = sharedManager_sharedMyManager_731;

  return v3;
}

uint64_t __46__CESRDictationOnDeviceSampling_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(CESRDictationOnDeviceSampling);
  v1 = sharedManager_sharedMyManager_731;
  sharedManager_sharedMyManager_731 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end