@interface APOdmlAnalytics
+ (id)_versionAndIdentifiers;
+ (void)sendEvent:(id)event additionalDetails:(id)details;
+ (void)sendTimedEvent:(id)event statusSuccess:(BOOL)success additionalDetails:(id)details startDate:(id)date endDate:(id)endDate;
@end

@implementation APOdmlAnalytics

+ (void)sendEvent:(id)event additionalDetails:(id)details
{
  eventCopy = event;
  detailsCopy = details;
  v7 = MEMORY[0x277CCACA8];
  eventName = [self eventName];
  v9 = [v7 stringWithFormat:@"%@.%@", @"com.apple.ap.SearchAdsODML", eventName];

  _versionAndIdentifiers = [self _versionAndIdentifiers];
  if (eventCopy)
  {
    [_versionAndIdentifiers setValue:@"2" forKey:@"statusCode"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(eventCopy, "code")];
    [_versionAndIdentifiers setValue:v11 forKey:@"statusDetails"];

    if (!detailsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_versionAndIdentifiers setValue:@"1" forKey:@"statusCode"];
  if (detailsCopy)
  {
LABEL_3:
    [_versionAndIdentifiers addEntriesFromDictionary:detailsCopy];
  }

LABEL_4:
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:_versionAndIdentifiers];
  [self _analyticsSendEvent:v9 eventPayload:v12];
}

+ (void)sendTimedEvent:(id)event statusSuccess:(BOOL)success additionalDetails:(id)details startDate:(id)date endDate:(id)endDate
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  detailsCopy = details;
  dateCopy = date;
  endDateCopy = endDate;
  v16 = MEMORY[0x277CCACA8];
  eventName = [self eventName];
  v18 = [v16 stringWithFormat:@"%@.%@", @"com.apple.ap.SearchAdsODML", eventName];

  v19 = 0.0;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      [endDateCopy timeIntervalSinceDate:dateCopy];
      v19 = v20;
      if (v20 < 0.0)
      {
        v21 = OdmlLogForCategory(8uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v27 = "+[APOdmlAnalytics sendTimedEvent:statusSuccess:additionalDetails:startDate:endDate:]";
          _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_ERROR, "%s Start date is prior to end date", buf, 0xCu);
        }
      }
    }
  }

  _versionAndIdentifiers = [self _versionAndIdentifiers];
  [_versionAndIdentifiers setValue:@"1" forKey:@"statusCode"];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  [_versionAndIdentifiers setValue:v23 forKey:@"processingTime"];

  if (eventCopy)
  {
    if (!success)
    {
      [_versionAndIdentifiers setValue:@"2" forKey:@"statusCode"];
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(eventCopy, "code")];
    [_versionAndIdentifiers setValue:v24 forKey:@"statusDetails"];
  }

  if (detailsCopy)
  {
    [_versionAndIdentifiers addEntriesFromDictionary:detailsCopy];
  }

  v25 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:_versionAndIdentifiers];
  [self _analyticsSendEvent:v18 eventPayload:v25];
}

+ (id)_versionAndIdentifiers
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277D73660] clientWithIdentifier:238];
  v4 = [v3 experimentIdentifiersWithNamespaceName:@"AD_PLATFORMS_ODML"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 4];
  [dictionary setValue:v5 forKey:@"ODMLVersion"];

  treatmentId = [v4 treatmentId];
  [dictionary setValue:treatmentId forKey:@"trialTreatmentID"];

  experimentId = [v4 experimentId];
  [dictionary setValue:experimentId forKey:@"trialExperimentID"];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v4, "deploymentId")];
  [dictionary setValue:v8 forKey:@"trialDeploymentID"];

  return dictionary;
}

@end