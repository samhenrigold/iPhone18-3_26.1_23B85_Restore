@interface ATXLaunchAndLocationHarvester
+ (id)_awdMetricsObjectWithLocation:(id)location date:(id)date bundleId:(id)id urlHash:(id)hash isClip:(BOOL)clip launchReason:(int)reason isNegativeSession:(BOOL)session;
+ (void)logAppOrClipLaunch:(id)launch isNegativeSession:(BOOL)session;
@end

@implementation ATXLaunchAndLocationHarvester

+ (void)logAppOrClipLaunch:(id)launch isNegativeSession:(BOOL)session
{
  sessionCopy = session;
  v47 = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  v7 = __atxlog_handle_hero(launchCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (sessionCopy)
    {
      v8 = @"negative";
    }

    else
    {
      v8 = @"positive";
    }

    bundleId = [launchCopy bundleId];
    urlHash = [launchCopy urlHash];
    if (urlHash)
    {
      urlHash2 = [launchCopy urlHash];
    }

    else
    {
      urlHash2 = @"NULL URL hash";
    }

    *buf = 138412802;
    v42 = v8;
    v43 = 2112;
    v44 = bundleId;
    v45 = 2112;
    v46 = urlHash2;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, ": Received %@ session to harvest. Bundle Id: %@ URLHash: %@", buf, 0x20u);
    if (urlHash)
    {
    }
  }

  [launchCopy latitude];
  v12 = *MEMORY[0x277D131D0];
  if (v13 == *MEMORY[0x277D131D0] && ([launchCopy longitude], v14 == v12))
  {
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    getCurrentLocation = [mEMORY[0x277D41BF8] getCurrentLocation];

    if (getCurrentLocation)
    {
LABEL_14:
      v21 = +[_ATXGlobals sharedInstance];
      if ([launchCopy isClip])
      {
        v22 = +[ATXHeroAndClipConstants sharedInstance];
        appClipShadowLogSamplesPerDay = [v22 appClipShadowLogSamplesPerDay];

        [v21 launchAndLocationHarvesterSamplingRate];
        v25 = v24;
        v26 = [@"LaunchAndLocationHavester" stringByAppendingString:@".appClip"];
        if ([launchCopy launchReason] == 3 || (v27 = objc_msgSend(launchCopy, "launchReason"), v27 == 2))
        {
          if (sessionCopy)
          {
            v28 = @".negativeSession";
          }

          else
          {
            v28 = @".positiveSession";
          }

          v32 = [v26 stringByAppendingString:v28];
LABEL_30:

          v33 = 0;
          v26 = v32;
LABEL_31:
          v34 = [MEMORY[0x277CBEAA8] now];
          if (!v33 || [self _passedGeneralFiltersGivenLocation:getCurrentLocation date:v34] && (objc_msgSend(launchCopy, "bundleId"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(self, "_passedAppOrClipSpecificFiltersGivenBundleId:date:isClip:counterKey:samplingRate:maxSamples:", v35, v34, objc_msgSend(launchCopy, "isClip"), v26, appClipShadowLogSamplesPerDay, v25), v35, v36))
          {
            bundleId2 = [launchCopy bundleId];
            urlHash3 = [launchCopy urlHash];
            LOBYTE(v40) = sessionCopy;
            v39 = [self _awdMetricsObjectWithLocation:getCurrentLocation date:v34 bundleId:bundleId2 urlHash:urlHash3 isClip:objc_msgSend(launchCopy launchReason:"isClip") isNegativeSession:{objc_msgSend(launchCopy, "launchReason"), v40}];

            [self _postAwdMetrics:v39];
            [ATXLaunchAndLocationFilterer incrementOnDeviceDailySamplesWithCounterKey:v26 date:v34];
          }

          goto LABEL_35;
        }

        if (!sessionCopy)
        {
          v33 = 1;
          goto LABEL_31;
        }

        v34 = __atxlog_handle_hero(v27);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
LABEL_39:
          [ATXLaunchAndLocationHarvester logAppOrClipLaunch:v34 isNegativeSession:?];
        }
      }

      else
      {
        v26 = [@"LaunchAndLocationHavester" stringByAppendingString:@".app"];
        if ([launchCopy launchReason] == 3 || (v29 = objc_msgSend(launchCopy, "launchReason"), v29 == 2))
        {
          if (sessionCopy)
          {
            v30 = @".negativeSession";
          }

          else
          {
            v30 = @".positiveSession";
          }

          v32 = [v26 stringByAppendingString:v30];
          appClipShadowLogSamplesPerDay = -1;
          v25 = 1.0;
          goto LABEL_30;
        }

        if (!sessionCopy)
        {
          v33 = 0;
          appClipShadowLogSamplesPerDay = -1;
          v25 = 1.0;
          goto LABEL_31;
        }

        v34 = __atxlog_handle_hero(v29);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }

LABEL_35:

      goto LABEL_36;
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [launchCopy latitude];
    v17 = v16;
    [launchCopy longitude];
    v19 = [v15 initWithLatitude:v17 longitude:v18];
    getCurrentLocation = v19;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  v21 = __atxlog_handle_hero(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, ": Received nil location. Ignoring", buf, 2u);
  }

LABEL_36:
}

+ (id)_awdMetricsObjectWithLocation:(id)location date:(id)date bundleId:(id)id urlHash:(id)hash isClip:(BOOL)clip launchReason:(int)reason isNegativeSession:(BOOL)session
{
  clipCopy = clip;
  v13 = MEMORY[0x277CBEA80];
  hashCopy = hash;
  idCopy = id;
  dateCopy = date;
  locationCopy = location;
  currentCalendar = [v13 currentCalendar];
  v19 = [currentCalendar components:32 fromDate:dateCopy];

  v20 = objc_opt_new();
  v21 = [idCopy copy];

  [v20 setBundleId:v21];
  [locationCopy coordinate];
  *&v22 = v22;
  [v20 setLatitude:v22];
  [locationCopy coordinate];
  *&v24 = v23;
  [v20 setLongitude:v24];
  [locationCopy horizontalAccuracy];
  v26 = v25;

  [v20 setLocationAccuracy:v26];
  [v20 setTimeBucket:{objc_msgSend(v19, "hour")}];
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  [v20 setIsTourist:{objc_msgSend(mEMORY[0x277D41BF8], "isTourist")}];

  [v20 setUrlHash:hashCopy];
  [v20 setIsClip:clipCopy];
  [v20 setLaunchReason:reason];
  [v20 setIsNegativeSession:session];

  return v20;
}

@end