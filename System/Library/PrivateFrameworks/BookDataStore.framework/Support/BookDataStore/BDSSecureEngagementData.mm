@interface BDSSecureEngagementData
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BDSSecureEngagementData

- (id)mutableCopy
{
  v3 = [BDSMutableSecureEngagementData alloc];

  return [(BDSMutableSecureEngagementData *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BDSSecureEngagementData *)self _configureFromEngagementData:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C34A4();
    }
  }
}

- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v20 configureFromCloudData:dataCopy withMergers:mergers];
  startTimestampString = [dataCopy startTimestampString];
  [(BDSSecureEngagementData *)self setDifferentString:startTimestampString forKey:@"startTimestampString"];

  [dataCopy durationInterval];
  v8 = [NSNumber numberWithDouble:?];
  [(BDSSecureEngagementData *)self setDifferentNumber:v8 forKey:@"durationInterval"];

  value = [(BDSSecureEngagementData *)self value];
  value2 = [dataCopy value];
  v11 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:value2];

  if (v11)
  {
    [(BDSSecureEngagementData *)self setDifferentObject:v11 forKey:@"value"];
  }

  value3 = [dataCopy value];
  [(BDSSecureEngagementData *)self setDifferentObject:value3 forKey:@"value"];

  v13 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v13 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v16 = sub_10000DB80(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
      v18 = [(BDSSecureEngagementData *)self debugDescription];
      startTimestampString3 = [dataCopy startTimestampString];
      *buf = 138412802;
      v22 = startTimestampString2;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = startTimestampString3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "\\BDSSecureEngagementData configured: %@ %@ from engagementData:%@\", buf, 0x20u);
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  v6 = BUProtocolCast();
  v20.receiver = self;
  v20.super_class = BDSSecureEngagementData;
  v7 = [(BCCloudData *)&v20 isEqualExceptForDate:v6 ignoringEmptySalt:saltCopy];
  startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
  startTimestampString2 = [v6 startTimestampString];
  v10 = [startTimestampString isEqualToString:startTimestampString2];

  [(BDSSecureEngagementData *)self durationInterval];
  v12 = v11;
  [v6 durationInterval];
  v14 = v13;
  value = [(BDSSecureEngagementData *)self value];
  value2 = [v6 value];
  v17 = [value isEqual:value2];

  if (v12 == v14)
  {
    v18 = v7 & v10;
  }

  else
  {
    v18 = 0;
  }

  return v18 & v17;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v47.receiver = self;
  v47.super_class = BDSSecureEngagementData;
  v7 = [(BCCloudData *)&v47 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
    v10 = [startTimestampString isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v12 = sub_100002660(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001C34D8(self, v8, v12);
      }

      [(BDSSecureEngagementData *)self setStartTimestampString:v8];
    }

    modificationDate = [(BDSSecureEngagementData *)self modificationDate];
    if (modificationDate)
    {
      v14 = modificationDate;
      modificationDate2 = [(BDSSecureEngagementData *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v17 = v16;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v20 = v19;

      if (v17 > v20)
      {
        v22 = sub_100002660(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BDSSecureEngagementData *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v28 = v27;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v30 = @"newer";
          *buf = 138412802;
          v49 = startTimestampString2;
          if (v28 == v31)
          {
            v30 = @"the same";
          }

          v50 = 2112;
          v51 = recordName;
          v52 = 2114;
          v53 = v30;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BDSSecureEngagementData %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v32 = [recordCopy objectForKey:@"durationInterval"];
    [(BDSSecureEngagementData *)self setDifferentNumber:v32 forKey:@"durationInterval"];
    v33 = [recordCopy objectForKey:@"value"];
    value = [(BDSSecureEngagementData *)self value];
    v35 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:v33];

    if (v35)
    {
      [(BDSSecureEngagementData *)self setDifferentObject:v35 forKey:@"value"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(BDSSecureEngagementData *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BDSSecureEngagementData *)self hasChanges];
    v38 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v38 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v41 = sub_10000DB80(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          startTimestampString3 = [(BDSSecureEngagementData *)self startTimestampString];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v44 = [(BDSSecureEngagementData *)self debugDescription];
          *buf = 138412802;
          v49 = startTimestampString3;
          v50 = 2112;
          v51 = recordName2;
          v52 = 2112;
          v53 = v44;
          v45 = "\\BDSSecureEngagementData %@ Resolving: Adopted properties from record: %@ %@\";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v45, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v41 = sub_10000DB80(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        startTimestampString3 = [(BDSSecureEngagementData *)self startTimestampString];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v44 = [(BDSSecureEngagementData *)self debugDescription];
        *buf = 138412802;
        v49 = startTimestampString3;
        v50 = 2112;
        v51 = recordName2;
        v52 = 2112;
        v53 = v44;
        v45 = "\\BDSSecureEngagementData %@ Resolving: Identical properties from record: %@ %@\";
        goto LABEL_24;
      }

LABEL_25:
    }

    goto LABEL_27;
  }

  v8 = sub_100002660(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001C3588(self, v8);
  }

LABEL_27:
}

- (NSString)debugDescription
{
  startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
  [(BDSSecureEngagementData *)self durationInterval];
  v5 = [NSString stringWithFormat:@"start timestamp: %@, duration: %.1lf", startTimestampString, v4];

  return v5;
}

@end