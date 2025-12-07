@interface BCReadingNowDetail
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromReadingNowDetail:(id)detail withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCReadingNowDetail

- (id)mutableCopy
{
  v2 = [BCMutableReadingNowDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCReadingNowDetail *)self _configureFromReadingNowDetail:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47086E4();
    }
  }
}

- (void)_configureFromReadingNowDetail:(id)detail withMergers:(id)mergers
{
  detailCopy = detail;
  v15.receiver = self;
  v15.super_class = BCReadingNowDetail;
  mergersCopy = mergers;
  [(BCCloudData *)&v15 configureFromCloudData:detailCopy withMergers:mergersCopy];
  assetID = [detailCopy assetID];
  [(NSManagedObject *)self setDifferentString:assetID forKey:@"assetID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(detailCopy, "isTrackedAsRecent")}];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"isTrackedAsRecent"];

  lastEngagedDate = [detailCopy lastEngagedDate];
  [(NSManagedObject *)self setDifferentDate:lastEngagedDate forKey:@"lastEngagedDate"];

  cloudAssetType = [detailCopy cloudAssetType];
  [(NSManagedObject *)self setDifferentString:cloudAssetType forKey:@"cloudAssetType"];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E463AF88;
  v14[3] = &unk_1E875B130;
  v14[4] = self;
  [mergersCopy enumerateKeysAndObjectsUsingBlock:v14];

  v13 = BDSCloudKitLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4708718(self, detailCopy, v13);
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  v35 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v8 = BUProtocolCast();
  v28.receiver = self;
  v28.super_class = BCReadingNowDetail;
  v27 = [(BCCloudData *)&v28 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  assetID = [(BCReadingNowDetail *)self assetID];
  assetID2 = [v8 assetID];
  v11 = [assetID isEqualToString:assetID2];

  isTrackedAsRecent = [(BCReadingNowDetail *)self isTrackedAsRecent];
  isTrackedAsRecent2 = [v8 isTrackedAsRecent];
  lastEngagedDate = [(BCReadingNowDetail *)self lastEngagedDate];
  if (!lastEngagedDate)
  {
    lastEngagedDate2 = [v8 lastEngagedDate];
    if (!lastEngagedDate2)
    {
      v17 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  lastEngagedDate3 = [(BCReadingNowDetail *)self lastEngagedDate];
  lastEngagedDate4 = [v8 lastEngagedDate];
  v17 = [lastEngagedDate3 isEqualToDate:lastEngagedDate4];

  if (!lastEngagedDate)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = isTrackedAsRecent ^ isTrackedAsRecent2;

  cloudAssetType = [(BCReadingNowDetail *)self cloudAssetType];
  if (cloudAssetType || ([v8 cloudAssetType], (isTrackedAsRecent2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    cloudAssetType2 = [(BCReadingNowDetail *)self cloudAssetType];
    cloudAssetType3 = [v8 cloudAssetType];
    v22 = [cloudAssetType2 isEqualToString:cloudAssetType3];

    if (cloudAssetType)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_13:
  v23 = v27 & v11 & (v18 ^ 1) & v17 & v22;
  v25 = BDSCloudKitLog(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = v8;
    v31 = 2112;
    selfCopy = self;
    v33 = 1024;
    v34 = v23;
    _os_log_debug_impl(&dword_1E45E0000, v25, OS_LOG_TYPE_DEBUG, "BCReadingNowDetail compare %@ to self:%@ SAME:%{BOOL}d", buf, 0x1Cu);
  }

  return v23;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v51 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v44.receiver = self;
  v44.super_class = BCReadingNowDetail;
  v7 = [(BCCloudData *)&v44 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = [(BCReadingNowDetail *)self assetID];
    v10 = [assetID isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v12 = BDSCloudKitLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1E47087FC(self, v8, v12);
      }

      [(BCReadingNowDetail *)self setAssetID:v8];
    }

    v13 = [recordCopy objectForKey:@"lastEngagedDate"];
    modificationDate = [(BCReadingNowDetail *)self modificationDate];
    if (modificationDate)
    {
    }

    else
    {
      lastEngagedDate = [(BCReadingNowDetail *)self lastEngagedDate];

      if (lastEngagedDate)
      {
        if (!v13)
        {
          goto LABEL_9;
        }

        lastEngagedDate2 = [(BCReadingNowDetail *)self lastEngagedDate];
        v31 = [lastEngagedDate2 compare:v13];

        if (v31 == 1)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    modificationDate2 = [(BCReadingNowDetail *)self modificationDate];
    modificationDate3 = [recordCopy modificationDate];
    v17 = [modificationDate2 compare:modificationDate3];

    if (v17 == 1)
    {
LABEL_9:
      v19 = BDSCloudKitLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        assetID2 = [(BCReadingNowDetail *)self assetID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate4 = [(BCReadingNowDetail *)self modificationDate];
        [modificationDate4 timeIntervalSinceReferenceDate];
        v25 = v24;
        modificationDate5 = [recordCopy modificationDate];
        [modificationDate5 timeIntervalSinceReferenceDate];
        v27 = @"newer";
        *buf = 138412802;
        v46 = assetID2;
        if (v25 == v28)
        {
          v27 = @"the same";
        }

        v47 = 2112;
        v48 = recordName;
        v49 = 2114;
        v50 = v27;
        _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
LABEL_29:

      goto LABEL_30;
    }

LABEL_19:
    v32 = [recordCopy objectForKey:@"isTrackedAsRecent"];
    [(NSManagedObject *)self setDifferentNumber:v32 forKey:@"isTrackedAsRecent"];
    [(NSManagedObject *)self setDifferentDate:v13 forKey:@"lastEngagedDate"];
    v33 = [recordCopy objectForKey:@"cloudAssetType"];
    v34 = v33;
    if (v33)
    {
      v35 = BDSCloudKitLog(v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_1E47088AC(self, recordCopy);
      }

      [(NSManagedObject *)self setDifferentString:v34 forKey:@"cloudAssetType"];
    }

    hasChanges = [(BCReadingNowDetail *)self hasChanges];
    v37 = hasChanges;
    v38 = BDSCloudKitLog(hasChanges);
    v39 = v38;
    if (v37)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        assetID3 = [(BCReadingNowDetail *)self assetID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v43 = [(BCReadingNowDetail *)self debugDescription];
        *buf = 138412802;
        v46 = assetID3;
        v47 = 2112;
        v48 = recordName2;
        v49 = 2112;
        v50 = v43;
        _os_log_impl(&dword_1E45E0000, v39, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving: Adopted properties from record: %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4708980(self, recordCopy);
    }

    goto LABEL_29;
  }

  v8 = BDSCloudKitLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4708A54(self, v8);
  }

LABEL_30:
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  assetID = [(BCReadingNowDetail *)self assetID];
  if ([(BCReadingNowDetail *)self isTrackedAsRecent])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  lastEngagedDate = [(BCReadingNowDetail *)self lastEngagedDate];
  cloudAssetType = [(BCReadingNowDetail *)self cloudAssetType];
  v8 = [v3 stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType:%@", assetID, v5, lastEngagedDate, cloudAssetType];

  return v8;
}

@end