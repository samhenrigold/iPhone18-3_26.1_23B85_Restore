@interface BCCollectionMember
+ (id)assetIDFromCollectionMemberID:(id)d;
+ (id)collectionIDFromCollectionMemberID:(id)d;
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromCollectionMember:(id)member withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCCollectionMember

- (id)mutableCopy
{
  v2 = [BCMutableCollectionMember alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCCollectionMember *)self _configureFromCollectionMember:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708BAC();
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v7 = BUProtocolCast();
  v15.receiver = self;
  v15.super_class = BCCollectionMember;
  v8 = [(BCCloudData *)&v15 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  collectionMemberID = [(BCCollectionMember *)self collectionMemberID];
  collectionMemberID2 = [v7 collectionMemberID];
  v11 = [collectionMemberID isEqualToString:collectionMemberID2];

  LODWORD(self) = [(BCCollectionMember *)self sortOrder];
  if (self == [v7 sortOrder])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_configureFromCollectionMember:(id)member withMergers:(id)mergers
{
  v23 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  v16.receiver = self;
  v16.super_class = BCCollectionMember;
  [(BCCloudData *)&v16 configureFromCloudData:memberCopy withMergers:mergers];
  collectionMemberID = [memberCopy collectionMemberID];
  [(NSManagedObject *)self setDifferentString:collectionMemberID forKey:@"collectionMemberID"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(memberCopy, "sortOrder")}];
  [(NSManagedObject *)self setDifferentNumber:v8 forKey:@"sortOrder"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v12 = BDSCloudKitDevelopmentLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      collectionMemberID2 = [(BCCollectionMember *)self collectionMemberID];
      v14 = [(BCCollectionMember *)self debugDescription];
      collectionMemberID3 = [memberCopy collectionMemberID];
      *buf = 138412802;
      v18 = collectionMemberID2;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = collectionMemberID3;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "\\BCCollectionMember configured: %@ %@ from collectionMember:%@\", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v52 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  resolversCopy = resolvers;
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    if (v8)
    {
      collectionMemberID = [(BCCollectionMember *)self collectionMemberID];
      v10 = [collectionMemberID isEqualToString:v8];

      if ((v10 & 1) == 0)
      {
        v12 = BDSCloudKitLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1E4708BE0(self, v8, v12);
        }

        [(BCCollectionMember *)self setCollectionMemberID:v8];
      }
    }

    else
    {
      v13 = BDSCloudKitLog(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708C90();
      }
    }

    v45.receiver = self;
    v45.super_class = BCCollectionMember;
    [(BCCloudData *)&v45 resolveConflictsFromRecord:recordCopy withResolvers:resolversCopy];
    modificationDate = [(BCCollectionMember *)self modificationDate];
    if (modificationDate)
    {
      v15 = modificationDate;
      modificationDate2 = [(BCCollectionMember *)self modificationDate];
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
          collectionMemberID2 = [(BCCollectionMember *)self collectionMemberID];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCCollectionMember *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v29 = v28;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v31 = @"newer";
          *buf = 138412802;
          v47 = collectionMemberID2;
          v48 = 2114;
          if (v29 == v32)
          {
            v31 = @"the same";
          }

          v49 = recordName;
          v50 = 2114;
          v51 = v31;
          _os_log_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_INFO, "BCCollectionMember %@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v33 = [recordCopy objectForKey:@"sortOrder"];
    [(NSManagedObject *)self setDifferentNumber:v33 forKey:@"sortOrder"];
    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCCollectionMember *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v39 = BDSCloudKitDevelopmentLog(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          collectionMemberID3 = [(BCCollectionMember *)self collectionMemberID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v43 = [(BCCollectionMember *)self debugDescription];
          *buf = 138412802;
          v47 = collectionMemberID3;
          v48 = 2112;
          v49 = recordName2;
          v50 = 2112;
          v51 = v43;
          v44 = "\\BCCollectionMember %@ Resolving: Adopted properties from record: %@ %@\";
LABEL_24:
          _os_log_impl(&dword_1E45E0000, v39, OS_LOG_TYPE_DEFAULT, v44, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v39 = BDSCloudKitDevelopmentLog(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        collectionMemberID3 = [(BCCollectionMember *)self collectionMemberID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v43 = [(BCCollectionMember *)self debugDescription];
        *buf = 138412802;
        v47 = collectionMemberID3;
        v48 = 2112;
        v49 = recordName2;
        v50 = 2112;
        v51 = v43;
        v44 = "\\BCCollectionMember %@ Resolving: Identical properties from record: %@ %@\";
        goto LABEL_24;
      }

LABEL_25:
    }

LABEL_27:
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  collectionMemberID = [(BCCollectionMember *)self collectionMemberID];
  sortOrder = [(BCCollectionMember *)self sortOrder];
  modificationDate = [(BCCollectionMember *)self modificationDate];
  v9 = [v3 stringWithFormat:@"<%@: %p> collectionMemberID: %@, sortOrder:%d modificationDate:%@", v5, self, collectionMemberID, sortOrder, modificationDate];

  return v9;
}

+ (id)assetIDFromCollectionMemberID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [dCopy substringFromIndex:v4 + v5];
  }

  return v6;
}

+ (id)collectionIDFromCollectionMemberID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [dCopy substringToIndex:v4];
  }

  return v5;
}

@end