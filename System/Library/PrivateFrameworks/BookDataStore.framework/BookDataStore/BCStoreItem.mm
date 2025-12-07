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
  v2 = [BCMutableStoreItem alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
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
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704E50();
    }
  }
}

- (void)_configureFromStoreItem:(id)item withMergers:(id)mergers
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = BCStoreItem;
  [(BCCloudData *)&v14 configureFromCloudData:itemCopy withMergers:mergers];
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v10 = BDSCloudKitDevelopmentLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      storeID = [(BCStoreItem *)self storeID];
      storeID2 = [itemCopy storeID];
      *buf = 138412546;
      v16 = storeID;
      v17 = 2112;
      v18 = storeID2;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "\\Configuring storeItem:%@ from storeItem:%@\", buf, 0x16u);
    }
  }

  storeID3 = [itemCopy storeID];
  [(NSManagedObject *)self setDifferentString:storeID3 forKey:@"storeID"];
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
  v48 = *MEMORY[0x1E69E9840];
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
      v12 = BDSCloudKitLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704E84(self, v8, v12);
      }

      [(BCStoreItem *)self setStoreID:v8];
    }

    modificationDate = [(BCStoreItem *)self modificationDate];
    if (modificationDate && (v14 = modificationDate, -[BCStoreItem modificationDate](self, "modificationDate"), v15 = objc_claimAutoreleasedReturnValue(), [v15 timeIntervalSinceReferenceDate], v17 = v16, objc_msgSend(recordCopy, "modificationDate"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceReferenceDate"), v20 = v19, v18, v15, v14, v17 > v20))
    {
      v22 = BDSCloudKitLog(v21);
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
        _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_INFO, "BCStoreItem %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
    }

    else
    {
      mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
      verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

      if (verboseLoggingEnabled)
      {
        v35 = BDSCloudKitDevelopmentLog(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          storeID3 = [(BCStoreItem *)self storeID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          *buf = 138412546;
          v43 = storeID3;
          v44 = 2114;
          v45 = recordName2;
          _os_log_impl(&dword_1E45E0000, v35, OS_LOG_TYPE_DEFAULT, "\\BCStoreItem %@ Resolving conflicts from record %{public}@\", buf, 0x16u);
        }
      }

      storeID4 = [(BCStoreItem *)self storeID];
      [(NSManagedObject *)self setDifferentString:storeID4 forKey:@"storeID"];

      modificationDate4 = [recordCopy modificationDate];
      [(NSManagedObject *)self setDifferentDate:modificationDate4 forKey:@"modificationDate"];
    }
  }

  else
  {
    v8 = BDSCloudKitLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704F34(self, v8);
    }
  }
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  storeID = [(BCStoreItem *)self storeID];
  v4 = [v2 stringWithFormat:@"storeID: %@, ", storeID];

  return v4;
}

@end