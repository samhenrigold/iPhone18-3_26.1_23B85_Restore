@interface BCGlobalMetadatum
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromMetadatum:(id)metadatum withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCGlobalMetadatum

- (id)mutableCopy
{
  v2 = [BCMutableGlobalMetadatum alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCGlobalMetadatum *)self _configureFromMetadatum:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708FD4();
    }
  }
}

- (void)_configureFromMetadatum:(id)metadatum withMergers:(id)mergers
{
  v23 = *MEMORY[0x1E69E9840];
  metadatumCopy = metadatum;
  v16.receiver = self;
  v16.super_class = BCGlobalMetadatum;
  [(BCCloudData *)&v16 configureFromCloudData:metadatumCopy withMergers:mergers];
  v7 = [metadatumCopy key];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"key"];

  value = [metadatumCopy value];
  [(NSManagedObject *)self setDifferentString:value forKey:@"value"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v12 = BDSCloudKitDevelopmentLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BCGlobalMetadatum *)self key];
      v14 = [(BCGlobalMetadatum *)self debugDescription];
      v15 = [metadatumCopy key];
      *buf = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "\\BCGlobalMetadatum configured: %@ %@ from metadatum:%@\", buf, 0x20u);
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  v6 = BUProtocolCast();
  v13.receiver = self;
  v13.super_class = BCGlobalMetadatum;
  LOBYTE(saltCopy) = [(BCCloudData *)&v13 isEqualExceptForDate:v6 ignoringEmptySalt:saltCopy];
  v7 = [(BCGlobalMetadatum *)self key];
  v8 = [v6 key];
  v9 = [v7 isEqualToString:v8];

  value = [(BCGlobalMetadatum *)self value];
  value2 = [v6 value];
  LOBYTE(v8) = [value isEqualToString:value2];

  return saltCopy & v9 & v8;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v61 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  resolversCopy = resolvers;
  v54.receiver = self;
  v54.super_class = BCGlobalMetadatum;
  v8 = [(BCCloudData *)&v54 resolveConflictsFromRecord:recordCopy withResolvers:resolversCopy];
  if (recordCopy)
  {
    v9 = [BCCloudData localIdentifierFromRecord:recordCopy];
    v10 = [(BCGlobalMetadatum *)self key];
    v11 = [v10 isEqualToString:v9];

    if ((v11 & 1) == 0)
    {
      v13 = BDSCloudKitLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1E4709008(self, v9, v13);
      }

      [(BCGlobalMetadatum *)self setKey:v9];
    }

    modificationDate = [(BCGlobalMetadatum *)self modificationDate];
    if (modificationDate)
    {
      v15 = modificationDate;
      modificationDate2 = [(BCGlobalMetadatum *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v18 = v17;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v21 = v20;

      if (v18 > v21)
      {
        v23 = BDSCloudKitLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [(BCGlobalMetadatum *)self key];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCGlobalMetadatum *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v29 = v28;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v31 = @"newer";
          *buf = 138412802;
          v56 = v24;
          if (v29 == v32)
          {
            v31 = @"the same";
          }

          v57 = 2112;
          v58 = recordName;
          v59 = 2114;
          v60 = v31;
          _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_INFO, "BCGlobalMetadatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v33 = [recordCopy objectForKey:@"value"];
    value = [(BCGlobalMetadatum *)self value];
    v35 = v33;
    v36 = [(BCGlobalMetadatum *)self key];
    v37 = [resolversCopy objectForKeyedSubscript:v36];
    v38 = v37;
    v39 = v35;
    if (v37)
    {
      v39 = (*(v37 + 16))(v37, v36, value, v35);
    }

    v52 = v36;
    v53 = value;
    [(NSManagedObject *)self setDifferentString:v39 forKey:@"value"];
    modificationDate6 = [recordCopy modificationDate];
    [NSManagedObject setDifferentDate:"setDifferentDate:forKey:" forKey:?];
    hasChanges = [(BCGlobalMetadatum *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      v44 = v53;
      if (verboseLoggingEnabled)
      {
        v45 = BDSCloudKitDevelopmentLog(v43);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [(BCGlobalMetadatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v47 = [(BCGlobalMetadatum *)self debugDescription];
          *buf = 138412802;
          v56 = v49;
          v57 = 2112;
          v58 = recordName2;
          v59 = 2112;
          v60 = v47;
          v48 = "\\BCGlobalMetadatum %@ Resolving: Adopted properties from record: %@ %@\";
LABEL_24:
          _os_log_impl(&dword_1E45E0000, v45, OS_LOG_TYPE_DEFAULT, v48, buf, 0x20u);

          v44 = v53;
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v44 = v53;
      if (verboseLoggingEnabled)
      {
        v45 = BDSCloudKitDevelopmentLog(v43);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [(BCGlobalMetadatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v47 = [(BCGlobalMetadatum *)self debugDescription];
          *buf = 138412802;
          v56 = v49;
          v57 = 2112;
          v58 = recordName2;
          v59 = 2112;
          v60 = v47;
          v48 = "\\BCGlobalMetadatum %@ Resolving: Identical properties from record: %@ %@\";
          goto LABEL_24;
        }

LABEL_25:
      }
    }

    goto LABEL_27;
  }

  v9 = BDSCloudKitLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1E47090B8(self, v9);
  }

LABEL_27:
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCGlobalMetadatum *)self key];
  value = [(BCGlobalMetadatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, value];

  return v6;
}

@end