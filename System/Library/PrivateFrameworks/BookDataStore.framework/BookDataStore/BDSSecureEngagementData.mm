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
  v2 = [BDSMutableSecureEngagementData alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
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
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704C38();
    }
  }
}

- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v21 configureFromCloudData:dataCopy withMergers:mergers];
  startTimestampString = [dataCopy startTimestampString];
  [(NSManagedObject *)self setDifferentString:startTimestampString forKey:@"startTimestampString"];

  v8 = MEMORY[0x1E696AD98];
  [dataCopy durationInterval];
  v9 = [v8 numberWithDouble:?];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"durationInterval"];

  value = [(BDSSecureEngagementData *)self value];
  value2 = [dataCopy value];
  v12 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:value2];

  if (v12)
  {
    [(NSManagedObject *)self setDifferentObject:v12 forKey:@"value"];
  }

  value3 = [dataCopy value];
  [(NSManagedObject *)self setDifferentObject:value3 forKey:@"value"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v17 = BDSCloudKitDevelopmentLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
      v19 = [(BDSSecureEngagementData *)self debugDescription];
      startTimestampString3 = [dataCopy startTimestampString];
      *buf = 138412802;
      v23 = startTimestampString2;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = startTimestampString3;
      _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "\\BDSSecureEngagementData configured: %@ %@ from engagementData:%@\", buf, 0x20u);
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
  v54 = *MEMORY[0x1E69E9840];
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
      v12 = BDSCloudKitLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704C6C(self, v8, v12);
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
        v22 = BDSCloudKitLog(v21);
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
          _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_INFO, "BDSSecureEngagementData %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v32 = [recordCopy objectForKey:@"durationInterval"];
    [(NSManagedObject *)self setDifferentNumber:v32 forKey:@"durationInterval"];
    v33 = [recordCopy objectForKey:@"value"];
    value = [(BDSSecureEngagementData *)self value];
    v35 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:v33];

    if (v35)
    {
      [(NSManagedObject *)self setDifferentObject:v35 forKey:@"value"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BDSSecureEngagementData *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v41 = BDSCloudKitDevelopmentLog(v40);
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
          _os_log_impl(&dword_1E45E0000, v41, OS_LOG_TYPE_DEFAULT, v45, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v41 = BDSCloudKitDevelopmentLog(v40);
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

  v8 = BDSCloudKitLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4704D1C(self, v8);
  }

LABEL_27:
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
  [(BDSSecureEngagementData *)self durationInterval];
  v6 = [v3 stringWithFormat:@"start timestamp: %@, duration: %.1lf", startTimestampString, v5];

  return v6;
}

@end