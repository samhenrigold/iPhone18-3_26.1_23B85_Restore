@interface ATXAppClipUsageDuetEvent
- (ATXAppClipUsageDuetEvent)initWithATXEvent:(id)event;
- (ATXAppClipUsageDuetEvent)initWithContext:(id)context modifiedDate:(id)date;
- (ATXAppClipUsageDuetEvent)initWithContextValue:(id)value;
- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues;
- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues:(id)values;
- (ATXAppClipUsageDuetEvent)initWithLaunchDate:(id)date timeSinceDownload:(double)download urlHash:(id)hash clipBundleId:(id)id parentAppBundleId:(id)bundleId webClipBundleId:(id)clipBundleId launchReason:(int)reason;
- (id)identifier;
- (id)loadStringFromMetadata:(id)metadata key:(id)key;
- (int)launchReasonFromATXAppClipUsageEvent:(int)event;
- (int)launchReasonFromString:(id)string;
@end

@implementation ATXAppClipUsageDuetEvent

- (ATXAppClipUsageDuetEvent)initWithLaunchDate:(id)date timeSinceDownload:(double)download urlHash:(id)hash clipBundleId:(id)id parentAppBundleId:(id)bundleId webClipBundleId:(id)clipBundleId launchReason:(int)reason
{
  dateCopy = date;
  hashCopy = hash;
  idCopy = id;
  bundleIdCopy = bundleId;
  clipBundleIdCopy = clipBundleId;
  selfCopy = 0;
  if (clipBundleIdCopy && idCopy && dateCopy && hashCopy && bundleIdCopy)
  {
    v26.receiver = self;
    v26.super_class = ATXAppClipUsageDuetEvent;
    v20 = [(ATXDuetEvent *)&v26 initWithStartDate:dateCopy endDate:0];
    v21 = v20;
    if (v20)
    {
      objc_storeStrong(&v20->_launchDate, date);
      v21->_timeSinceDownload = download;
      objc_storeStrong(&v21->_urlHash, hash);
      objc_storeStrong(&v21->_clipBundleId, id);
      objc_storeStrong(&v21->_parentAppBundleId, bundleId);
      objc_storeStrong(&v21->_webClipBundleId, clipBundleId);
      v21->_launchReason = reason;
    }

    self = v21;
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues
{
  v3 = objc_opt_new();
  v4 = [(ATXAppClipUsageDuetEvent *)self initWithCurrentContextStoreValues:v3];

  return v4;
}

- (ATXAppClipUsageDuetEvent)initWithContext:(id)context modifiedDate:(id)date
{
  dateCopy = date;
  v7 = MEMORY[0x277CFE338];
  contextCopy = context;
  timeSinceDownloadKey = [v7 timeSinceDownloadKey];
  v10 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:contextCopy key:timeSinceDownloadKey];
  [v10 doubleValue];
  v12 = v11;

  uRLHashKey = [MEMORY[0x277CFE338] URLHashKey];
  v14 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:contextCopy key:uRLHashKey];

  clipBundleIDKey = [MEMORY[0x277CFE338] clipBundleIDKey];
  v16 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:contextCopy key:clipBundleIDKey];

  appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
  v18 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:contextCopy key:appBundleIdKey];

  webAppBundleIDKey = [MEMORY[0x277CFE338] webAppBundleIDKey];
  v20 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:contextCopy key:webAppBundleIDKey];

  appLaunchReasonKey = [MEMORY[0x277CFE338] appLaunchReasonKey];
  v22 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:contextCopy key:appLaunchReasonKey];

  if (v22)
  {
    self = [(ATXAppClipUsageDuetEvent *)self initWithLaunchDate:dateCopy timeSinceDownload:v14 urlHash:v16 clipBundleId:v18 parentAppBundleId:v20 webClipBundleId:[(ATXAppClipUsageDuetEvent *)self launchReasonFromString:v22] launchReason:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues:(id)values
{
  v4 = MEMORY[0x277CFE338];
  valuesCopy = values;
  keyPathForAppClipLaunch = [v4 keyPathForAppClipLaunch];
  v7 = [valuesCopy fetchDataDictionaryForKeyPath:keyPathForAppClipLaunch];
  v8 = [valuesCopy lastModifiedDateForKeyPath:keyPathForAppClipLaunch];

  v9 = [(ATXAppClipUsageDuetEvent *)self initWithContext:v7 modifiedDate:v8];
  return v9;
}

- (ATXAppClipUsageDuetEvent)initWithContextValue:(id)value
{
  valueCopy = value;
  lastModifiedDate = [valueCopy lastModifiedDate];
  value = [valueCopy value];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    self = [(ATXAppClipUsageDuetEvent *)self initWithContext:value modifiedDate:lastModifiedDate];
    selfCopy = self;
  }

  else
  {
    v9 = __atxlog_handle_hero(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppClipUsageDuetEvent *)value initWithContextValue:v9];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXAppClipUsageDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = eventCopy;
    launchDate = [v6 launchDate];
    launchDate2 = [v6 launchDate];
    [launchDate2 timeIntervalSinceNow];
    v10 = -v9;
    urlHash = [v6 urlHash];
    clipBundleID = [v6 clipBundleID];
    parentAppBundleID = [v6 parentAppBundleID];
    webAppBundleID = [v6 webAppBundleID];
    launchReason = [v6 launchReason];

    self = [(ATXAppClipUsageDuetEvent *)self initWithLaunchDate:launchDate timeSinceDownload:urlHash urlHash:clipBundleID clipBundleId:parentAppBundleID parentAppBundleId:webAppBundleID webClipBundleId:[(ATXAppClipUsageDuetEvent *)self launchReasonFromATXAppClipUsageEvent:launchReason] launchReason:v10];
    selfCopy = self;
  }

  else
  {
    v17 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppClipUsageDuetEvent *)eventCopy initWithATXEvent:v17];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)loadStringFromMetadata:(id)metadata key:(id)key
{
  metadataCopy = metadata;
  keyCopy = key;
  v7 = [metadataCopy objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [metadataCopy objectForKeyedSubscript:keyCopy];
    v10 = v9;
    v11 = &stru_2839A6058;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
  }

  else
  {
    timeSinceDownloadKey = [MEMORY[0x277CFE338] timeSinceDownloadKey];
    v14 = [keyCopy isEqualToString:timeSinceDownloadKey];

    if ((v14 & 1) == 0)
    {
      v16 = __atxlog_handle_hero(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXAppClipUsageDuetEvent loadStringFromMetadata:keyCopy key:v16];
      }
    }

    v12 = 0;
  }

  return v12;
}

- (int)launchReasonFromString:(id)string
{
  stringCopy = string;
  v4 = [&unk_283A58E48 objectForKeyedSubscript:stringCopy];

  if (v4)
  {
    v6 = [&unk_283A58E48 objectForKeyedSubscript:stringCopy];
    intValue = [v6 intValue];
  }

  else
  {
    v8 = __atxlog_handle_hero(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppClipUsageDuetEvent *)stringCopy launchReasonFromString:v8];
    }

    intValue = 9;
  }

  return intValue;
}

- (int)launchReasonFromATXAppClipUsageEvent:(int)event
{
  if ((event - 1) > 7)
  {
    return 9;
  }

  else
  {
    return dword_2268726A0[event - 1];
  }
}

- (id)identifier
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  urlHash = [(ATXAppClipUsageDuetEvent *)self urlHash];
  clipBundleId = [(ATXAppClipUsageDuetEvent *)self clipBundleId];
  v6 = [v3 initWithFormat:@"%@-%@", urlHash, clipBundleId];

  return v6;
}

- (void)initWithContextValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Clip usage context value was %@ instead of NSDictionary", &v5, 0xCu);
}

- (void)initWithATXEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value of event was %@, not %@", &v7, 0x16u);
}

- (void)loadStringFromMetadata:(uint64_t)a1 key:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value for key %@ not the expected type", &v2, 0xCu);
}

- (void)launchReasonFromString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Encountered unexpected launch reason %@", &v2, 0xCu);
}

@end