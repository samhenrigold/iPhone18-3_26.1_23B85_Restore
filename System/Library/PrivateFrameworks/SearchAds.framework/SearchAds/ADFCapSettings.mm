@interface ADFCapSettings
- (ADFCapSettings)initWithType:(int64_t)type location:(double)location clickExpiration:(double)expiration fCapExpiration:(double)capExpiration maxFCapElements:(unint64_t)elements maxClickCapElements:(unint64_t)capElements;
- (id)_capTypeToString:(int64_t)string;
- (void)overrideClickExpiration:(double)expiration;
- (void)overrideFrequencyCapExpiration:(double)expiration;
- (void)overrideMaxClickElements:(unint64_t)elements;
- (void)overrideMaxFrequencyCapElements:(unint64_t)elements;
- (void)overrideRevGeoThreshold:(double)threshold;
@end

@implementation ADFCapSettings

- (ADFCapSettings)initWithType:(int64_t)type location:(double)location clickExpiration:(double)expiration fCapExpiration:(double)capExpiration maxFCapElements:(unint64_t)elements maxClickCapElements:(unint64_t)capElements
{
  v15.receiver = self;
  v15.super_class = ADFCapSettings;
  result = [(ADFCapSettings *)&v15 init];
  if (result)
  {
    result->_pageType = type;
    result->_reverseGeolocationRefreshThresholdInMeters = location;
    result->_clickExpirationThresholdInSeconds = expiration;
    result->_frequencyCapExpirationInSeconds = capExpiration;
    result->_maxFrequencyCapElements = elements;
    result->_maxClickCapElements = capElements;
  }

  return result;
}

- (void)overrideFrequencyCapExpiration:(double)expiration
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v19 = 138412546;
    v20 = v14;
    v21 = 2048;
    expirationCopy = expiration;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Frequency Cap Expiration Overridden: %f seconds.", &v19, 0x16u);
  }

  objc_msgSend_setFrequencyCapExpirationInSeconds_(self, v15, v16, v17, v18, expiration);
}

- (void)overrideMaxFrequencyCapElements:(unint64_t)elements
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v18 = 138412546;
    v19 = v14;
    v20 = 2048;
    elementsCopy = elements;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Max Frequency Cap Elements Overridden: %lu elements.", &v18, 0x16u);
  }

  objc_msgSend_setMaxFrequencyCapElements_(self, v15, elements, v16, v17);
}

- (void)overrideClickExpiration:(double)expiration
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v19 = 138412546;
    v20 = v14;
    v21 = 2048;
    expirationCopy = expiration;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Toro Click Expiration Overridden: %f seconds.", &v19, 0x16u);
  }

  objc_msgSend_setClickExpirationThresholdInSeconds_(self, v15, v16, v17, v18, expiration);
}

- (void)overrideMaxClickElements:(unint64_t)elements
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v18 = 138412546;
    v19 = v14;
    v20 = 2048;
    elementsCopy = elements;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Max Toro Click Elements Overridden: %lu elements.", &v18, 0x16u);
  }

  objc_msgSend_setMaxClickCapElements_(self, v15, elements, v16, v17);
}

- (void)overrideRevGeoThreshold:(double)threshold
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v19 = 138412546;
    v20 = v14;
    v21 = 2048;
    thresholdCopy = threshold;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Reverse Geolocation Update Threshold Overridden: %f meters.", &v19, 0x16u);
  }

  objc_msgSend_setReverseGeolocationRefreshThresholdInMeters_(self, v15, v16, v17, v18, threshold);
}

- (id)_capTypeToString:(int64_t)string
{
  if (string > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B88898[string];
  }
}

@end