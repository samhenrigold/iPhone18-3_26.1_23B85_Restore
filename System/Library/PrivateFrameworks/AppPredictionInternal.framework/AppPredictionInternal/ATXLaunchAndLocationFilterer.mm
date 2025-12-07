@interface ATXLaunchAndLocationFilterer
+ (BOOL)appBundleIdIsBlacklisted:(id)blacklisted blacklist:(id)blacklist;
+ (BOOL)genreIdIsBlacklistedGivenAppBundleId:(id)id blacklist:(id)blacklist;
+ (BOOL)locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now;
+ (BOOL)shouldSampleWithCounterKey:(id)key date:(id)date samplingRate:(double)rate maxSamples:(unint64_t)samples;
+ (id)_formattedStringForDate:(id)date;
+ (void)incrementOnDeviceDailySamplesWithCounterKey:(id)key date:(id)date;
@end

@implementation ATXLaunchAndLocationFilterer

+ (BOOL)locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now
{
  v20 = *MEMORY[0x277D85DE8];
  enoughCopy = enough;
  nowCopy = now;
  timestamp = [enoughCopy timestamp];
  [nowCopy timeIntervalSinceDate:timestamp];
  v9 = v8;

  if (v9 <= 100.0)
  {
    horizontalAccuracy = [enoughCopy horizontalAccuracy];
    if (v14 <= 100.0)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v11 = __atxlog_handle_hero(horizontalAccuracy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [enoughCopy horizontalAccuracy];
      v18 = 134217984;
      v19 = v15;
      v12 = ": Location uncertainty too large, horizontalAccuracy, %f. Ignoring.";
      goto LABEL_7;
    }
  }

  else
  {
    v11 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v9;
      v12 = ": Location is stale. Age: %f. Ignoring.";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, v12, &v18, 0xCu);
    }
  }

  v16 = 1;
LABEL_10:

  return v16;
}

+ (BOOL)appBundleIdIsBlacklisted:(id)blacklisted blacklist:(id)blacklist
{
  v12 = *MEMORY[0x277D85DE8];
  blacklistedCopy = blacklisted;
  v6 = [blacklist containsObject:blacklistedCopy];
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_hero(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = blacklistedCopy;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, ": Bundle Id is blacklisted. Bundle Id: %@. Ignoring.", &v10, 0xCu);
    }
  }

  return v7;
}

+ (BOOL)genreIdIsBlacklistedGivenAppBundleId:(id)id blacklist:(id)blacklist
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  blacklistCopy = blacklist;
  v7 = +[_ATXAppInfoManager sharedInstance];
  v8 = [v7 genreIdForBundleId:idCopy];

  v10 = __atxlog_handle_hero(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "GenreId: %@, BundleId: %@.", &v15, 0x16u);
  }

  if (v8 && (v11 = [blacklistCopy containsObject:v8], !v11))
  {
    v13 = 0;
  }

  else
  {
    v12 = __atxlog_handle_hero(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, ": Genre Id is blacklisted. Genre Id: %@. Ignoring.", &v15, 0xCu);
    }

    v13 = 1;
  }

  return v13;
}

+ (BOOL)shouldSampleWithCounterKey:(id)key date:(id)date samplingRate:(double)rate maxSamples:(unint64_t)samples
{
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v11 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  v13 = [v11 alloc];
  v14 = [v13 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v15 = [keyCopy stringByAppendingString:@".date"];
  v16 = [keyCopy stringByAppendingString:@".dailySamplesCount"];

  v17 = [v14 integerForKey:v16];
  v18 = [v14 stringForKey:v15];
  v19 = v18;
  if (v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17 == 0;
  }

  if (v20)
  {
    v21 = [self _formattedStringForDate:dateCopy];
    v22 = v21;
    if (v19)
    {
      v23 = [v21 isEqualToString:v19];
      v24 = [_ATXAggregateLogger yesWithProbability:rate];
      if (v23)
      {
        v25 = v17 >= samples;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v26 = __atxlog_handle_hero(v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 134217984;
          rateCopy = *&v17;
          v27 = ": Already reached per device max daily samples: %lu. Ignoring.";
          goto LABEL_21;
        }

LABEL_22:

        v30 = 0;
        goto LABEL_23;
      }

      if ((v24 & 1) == 0)
      {
LABEL_12:
        v26 = __atxlog_handle_hero(v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 134217984;
          rateCopy = rate;
          v27 = ": Did not pass sampling. Sampling rate: %f. Ignoring.";
LABEL_21:
          _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, v27, &v32, 0xCu);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v24 = [_ATXAggregateLogger yesWithProbability:rate];
      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v30 = 1;
LABEL_23:

    goto LABEL_24;
  }

  v28 = __atxlog_handle_default(v18);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [ATXLaunchAndLocationFilterer shouldSampleWithCounterKey:v28 date:? samplingRate:? maxSamples:?];
  }

  [v14 setInteger:0 forKey:v16];
  v30 = 0;
LABEL_24:

  return v30;
}

+ (void)incrementOnDeviceDailySamplesWithCounterKey:(id)key date:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  keyCopy = key;
  v9 = [v6 alloc];
  v10 = [v9 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v11 = [keyCopy stringByAppendingString:@".date"];
  v12 = [keyCopy stringByAppendingString:@".dailySamplesCount"];

  v13 = [v10 stringForKey:v11];
  v14 = [self _formattedStringForDate:dateCopy];

  if (v13 && [v14 isEqualToString:v13])
  {
    v15 = [v10 integerForKey:v12] + 1;
    v16 = __atxlog_handle_hero([v10 setInteger:v15 forKey:v12]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = v15;
      v17 = ": Increased daily sample count to: %lu";
      v18 = v16;
      v19 = 12;
LABEL_7:
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, v17, &v20, v19);
    }
  }

  else
  {
    [v10 setInteger:1 forKey:v12];
    v16 = __atxlog_handle_hero([v10 setObject:v14 forKey:v11]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v17 = ": Received first sample of the day. Set daily sample count to 1.";
      v18 = v16;
      v19 = 2;
      goto LABEL_7;
    }
  }
}

+ (id)_formattedStringForDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd"];
  v6 = [v5 stringFromDate:dateCopy];

  return v6;
}

@end