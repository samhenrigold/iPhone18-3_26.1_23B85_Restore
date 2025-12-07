@interface BCStoreItem
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromStoreItem:(id)item withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCStoreItem

- (id)mutableCopy
{
  v3 = [BCMutableStoreItem alloc];

  return [(BCMutableStoreItem *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCStoreItem *)self _configureFromStoreItem:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C327C();
    }
  }
}

- (void)_configureFromStoreItem:(id)item withMergers:(id)mergers
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = BCStoreItem;
  [(BCCloudData *)&v14 configureFromCloudData:itemCopy withMergers:mergers];
  v7 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v7 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v10 = sub_10000DB80(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      storeID = [(BCStoreItem *)self storeID];
      storeID2 = [itemCopy storeID];
      *buf = 138412546;
      v16 = storeID;
      v17 = 2112;
      v18 = storeID2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "\\Configuring storeItem:%@ from storeItem:%@\", buf, 0x16u);
    }
  }

  storeID3 = [itemCopy storeID];
  [(BCStoreItem *)self setDifferentString:storeID3 forKey:@"storeID"];
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v7 = BUProtocolCast();
  v12.receiver = self;
  v12.super_class = BCStoreItem;
  LOBYTE(saltCopy) = [(BCCloudData *)&v12 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  storeID = [(BCStoreItem *)self storeID];
  storeID2 = [v7 storeID];
  v10 = [storeID isEqualToString:storeID2];

  return saltCopy & v10;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v41.receiver = self;
  v41.super_class = BCStoreItem;
  v7 = [(BCCloudData *)&v41 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    storeID = [(BCStoreItem *)self storeID];
    v10 = [storeID isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v12 = sub_100002660(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001C32B0(self, v8, v12);
      }

      [(BCStoreItem *)self setStoreID:v8];
    }

    modificationDate = [(BCStoreItem *)self modificationDate];
    if (modificationDate && (v14 = modificationDate, -[BCStoreItem modificationDate](self, "modificationDate"), v15 = objc_claimAutoreleasedReturnValue(), [v15 timeIntervalSinceReferenceDate], v17 = v16, objc_msgSend(recordCopy, "modificationDate"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceReferenceDate"), v20 = v19, v18, v15, v14, v17 > v20))
    {
      v22 = sub_100002660(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        storeID2 = [(BCStoreItem *)self storeID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate2 = [(BCStoreItem *)self modificationDate];
        [modificationDate2 timeIntervalSinceReferenceDate];
        v28 = v27;
        modificationDate3 = [recordCopy modificationDate];
        [modificationDate3 timeIntervalSinceReferenceDate];
        v30 = @"newer";
        *buf = 138412802;
        v43 = storeID2;
        if (v28 == v31)
        {
          v30 = @"the same";
        }

        v44 = 2112;
        v45 = recordName;
        v46 = 2114;
        v47 = v30;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BCStoreItem %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
    }

    else
    {
      v32 = +[BULogUtilities shared];
      verboseLoggingEnabled = [v32 verboseLoggingEnabled];

      if (verboseLoggingEnabled)
      {
        v35 = sub_10000DB80(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          storeID3 = [(BCStoreItem *)self storeID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          *buf = 138412546;
          v43 = storeID3;
          v44 = 2114;
          v45 = recordName2;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "\\BCStoreItem %@ Resolving conflicts from record %{public}@\", buf, 0x16u);
        }
      }

      storeID4 = [(BCStoreItem *)self storeID];
      [(BCStoreItem *)self setDifferentString:storeID4 forKey:@"storeID"];

      modificationDate4 = [recordCopy modificationDate];
      [(BCStoreItem *)self setDifferentDate:modificationDate4 forKey:@"modificationDate"];
    }
  }

  else
  {
    v8 = sub_100002660(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3360(self, v8);
    }
  }
}

- (NSString)debugDescription
{
  storeID = [(BCStoreItem *)self storeID];
  v3 = [NSString stringWithFormat:@"storeID: %@, ", storeID];

  return v3;
}

@end