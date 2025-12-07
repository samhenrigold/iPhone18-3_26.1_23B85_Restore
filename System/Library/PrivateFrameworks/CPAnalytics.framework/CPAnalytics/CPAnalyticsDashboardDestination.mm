@interface CPAnalyticsDashboardDestination
- (BOOL)isMediaEvent:(id)event;
- (CPAnalytics)cpAnalyticsInstance;
- (CPAnalyticsDashboardDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (NSArray)allErrorProperties;
- (NSArray)allMediaProperties;
- (NSArray)allStandardProperties;
- (id)buildCoreAnalyticsEventPayloadWithProperties:(id)properties fromSourceEvent:(id)event intoTargetEventPayload:(id)payload;
- (void)reportMalformedEvent:(id)event malformationDescriptionWithFormat:(id)format;
- (void)sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:(id)name fromSourceEvent:(id)event payload:(id)payload;
@end

@implementation CPAnalyticsDashboardDestination

- (CPAnalytics)cpAnalyticsInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_cpAnalyticsInstance);

  return WeakRetained;
}

- (void)reportMalformedEvent:(id)event malformationDescriptionWithFormat:(id)format
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v8 = [[v6 alloc] initWithFormat:formatCopy arguments:&v18];

  v9 = CPAnalyticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    copyRawPayload = [eventCopy copyRawPayload];
    *buf = 138412802;
    v12 = eventCopy;
    v13 = 2112;
    v14 = copyRawPayload;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_24260A000, v9, OS_LOG_TYPE_ERROR, "Malformed event %@ with payload %@: %@", buf, 0x20u);
  }
}

- (id)buildCoreAnalyticsEventPayloadWithProperties:(id)properties fromSourceEvent:(id)event intoTargetEventPayload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  eventCopy = event;
  payloadCopy = payload;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:payloadCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = propertiesCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v10 objectForKeyedSubscript:{v16, v22}];

        if (!v17)
        {
          v18 = [eventCopy propertyForKey:v16];
          if (v18)
          {
            [v10 setObject:v18 forKeyedSubscript:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

- (void)sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:(id)name fromSourceEvent:(id)event payload:(id)payload
{
  payloadCopy = payload;
  eventCopy = event;
  nameCopy = name;
  allStandardProperties = [(CPAnalyticsDashboardDestination *)self allStandardProperties];
  v12 = [(CPAnalyticsDashboardDestination *)self buildCoreAnalyticsEventPayloadWithProperties:allStandardProperties fromSourceEvent:eventCopy intoTargetEventPayload:payloadCopy];

  [CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:nameCopy withPayload:v12 shouldSanitize:0];
}

- (BOOL)isMediaEvent:(id)event
{
  v3 = [event propertyForKey:@"cpa_media_localIdentifier"];
  v4 = [v3 length] != 0;

  return v4;
}

- (NSArray)allErrorProperties
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"cpa_error_domain";
  v4[1] = @"cpa_error_code";
  v4[2] = @"cpa_error_codeAsString";
  v4[3] = @"cpa_error_description";
  v4[4] = @"cpa_error_indepthErrors";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

- (NSArray)allMediaProperties
{
  v4[16] = *MEMORY[0x277D85DE8];
  v4[0] = @"cpa_media_adjusted";
  v4[1] = @"cpa_media_cameraType";
  v4[2] = @"cpa_media_favorite";
  v4[3] = @"cpa_media_importSource";
  v4[4] = @"cpa_media_type";
  v4[5] = @"cpa_media_subType";
  v4[6] = @"cpa_media_age";
  v4[7] = @"cpa_media_count";
  v4[8] = @"cpa_media_duration";
  v4[9] = @"cpa_media_orientation";
  v4[10] = @"cpa_media_sceneType";
  v4[11] = @"cpa_media_subject";
  v4[12] = @"cpa_media_libraryType";
  v4[13] = @"cpa_media_syndicationState";
  v4[14] = @"cpa_media_hasSyndicationIdentifier";
  v4[15] = @"cpa_media_sharedLibraryScope";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:16];

  return v2;
}

- (NSArray)allStandardProperties
{
  v4[16] = *MEMORY[0x277D85DE8];
  v4[0] = @"cpa_common_hourOfDay";
  v4[1] = @"cpa_common_dayOfWeek";
  v4[2] = @"cpa_common_deviceFreeSpace";
  v4[3] = @"cpa_common_deviceModel";
  v4[4] = @"cpa_common_osVersion";
  v4[5] = @"cpa_common_librarySizeRange";
  v4[6] = @"cpa_common_processName";
  v4[7] = @"cpa_common_lowPowerModeEnabled";
  v4[8] = @"cpa_common_icpl_enabled";
  v4[9] = @"cpa_common_icpl_exceedingQuota";
  v4[10] = @"cpa_common_icpl_lowDiskSpace";
  v4[11] = @"cpa_common_icpl_veryLowDiskSpace";
  v4[12] = @"cpa_common_icpl_hasChangesToProcess";
  v4[13] = @"cpa_common_sharedLibraryEnabled";
  v4[14] = @"cpa_demographic_userGender";
  v4[15] = @"cpa_demographic_userAgeRange";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:16];

  return v2;
}

- (CPAnalyticsDashboardDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  instanceCopy = instance;
  v9.receiver = self;
  v9.super_class = CPAnalyticsDashboardDestination;
  v6 = [(CPAnalyticsDashboardDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_cpAnalyticsInstance, instanceCopy);
  }

  return v7;
}

@end