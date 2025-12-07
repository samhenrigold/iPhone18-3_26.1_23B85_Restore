@interface BCSecureUserDatum
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromUserDatum:(id)datum withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCSecureUserDatum

- (id)mutableCopy
{
  v2 = [BCMutableSecureUserDatum alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCSecureUserDatum *)self _configureFromUserDatum:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E470759C();
    }
  }
}

- (void)_configureFromUserDatum:(id)datum withMergers:(id)mergers
{
  v23 = *MEMORY[0x1E69E9840];
  datumCopy = datum;
  v16.receiver = self;
  v16.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v16 configureFromCloudData:datumCopy withMergers:mergers];
  v7 = [datumCopy key];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"key"];

  value = [datumCopy value];
  [(NSManagedObject *)self setDifferentString:value forKey:@"value"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v12 = BDSCloudKitDevelopmentLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BCSecureUserDatum *)self key];
      v14 = [(BCSecureUserDatum *)self debugDescription];
      v15 = [datumCopy key];
      *buf = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "\\BCSecureUserDatum configured: %@ %@ from userDatum:%@\", buf, 0x20u);
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  v6 = BUProtocolCast();
  v13.receiver = self;
  v13.super_class = BCSecureUserDatum;
  LOBYTE(saltCopy) = [(BCCloudData *)&v13 isEqualExceptForDate:v6 ignoringEmptySalt:saltCopy];
  v7 = [(BCSecureUserDatum *)self key];
  v8 = [v6 key];
  v9 = [v7 isEqualToString:v8];

  value = [(BCSecureUserDatum *)self value];
  value2 = [v6 value];
  LOBYTE(v8) = [value isEqualToString:value2];

  return saltCopy & v9 & v8;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v51 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v44.receiver = self;
  v44.super_class = BCSecureUserDatum;
  v7 = [(BCCloudData *)&v44 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    v9 = [(BCSecureUserDatum *)self key];
    v10 = [v9 isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v12 = BDSCloudKitLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1E47075D0(self, v8, v12);
      }

      [(BCSecureUserDatum *)self setKey:v8];
    }

    modificationDate = [(BCSecureUserDatum *)self modificationDate];
    if (modificationDate)
    {
      v14 = modificationDate;
      modificationDate2 = [(BCSecureUserDatum *)self modificationDate];
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
          v23 = [(BCSecureUserDatum *)self key];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCSecureUserDatum *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v28 = v27;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v30 = @"newer";
          *buf = 138412802;
          v46 = v23;
          if (v28 == v31)
          {
            v30 = @"the same";
          }

          v47 = 2112;
          v48 = recordName;
          v49 = 2114;
          v50 = v30;
          _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_INFO, "BCSecureUserDatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v32 = [recordCopy objectForKey:@"value"];
    [(NSManagedObject *)self setDifferentString:v32 forKey:@"value"];
    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCSecureUserDatum *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v38 = BDSCloudKitDevelopmentLog(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [(BCSecureUserDatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v42 = [(BCSecureUserDatum *)self debugDescription];
          *buf = 138412802;
          v46 = v39;
          v47 = 2112;
          v48 = recordName2;
          v49 = 2112;
          v50 = v42;
          v43 = "\\BCSecureUserDatum %@ Resolving: Adopted properties from record: %@ %@\";
LABEL_22:
          _os_log_impl(&dword_1E45E0000, v38, OS_LOG_TYPE_DEFAULT, v43, buf, 0x20u);

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v38 = BDSCloudKitDevelopmentLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(BCSecureUserDatum *)self key];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v42 = [(BCSecureUserDatum *)self debugDescription];
        *buf = 138412802;
        v46 = v39;
        v47 = 2112;
        v48 = recordName2;
        v49 = 2112;
        v50 = v42;
        v43 = "\\BCSecureUserDatum %@ Resolving: Identical properties from record: %@ %@\";
        goto LABEL_22;
      }

LABEL_23:
    }

    goto LABEL_25;
  }

  v8 = BDSCloudKitLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707680(self, v8);
  }

LABEL_25:
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCSecureUserDatum *)self key];
  value = [(BCSecureUserDatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, value];

  return v6;
}

@end