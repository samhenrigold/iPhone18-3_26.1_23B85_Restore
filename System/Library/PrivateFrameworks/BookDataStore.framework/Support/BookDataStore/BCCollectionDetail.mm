@interface BCCollectionDetail
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromCollectionDetail:(id)detail withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCCollectionDetail

- (id)mutableCopy
{
  v3 = [BCMutableCollectionDetail alloc];

  return [(BCMutableCollectionDetail *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCCollectionDetail *)self _configureFromCollectionDetail:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4044();
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v8 = BUProtocolCast();
  v29.receiver = self;
  v29.super_class = BCCollectionDetail;
  v28 = [(BCCloudData *)&v29 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  name = [(BCCollectionDetail *)self name];
  name2 = [v8 name];
  v11 = [name isEqualToString:name2];

  collectionID = [(BCCollectionDetail *)self collectionID];
  collectionID2 = [v8 collectionID];
  v14 = [collectionID isEqualToString:collectionID2];

  collectionDescription = [(BCCollectionDetail *)self collectionDescription];
  if (!collectionDescription)
  {
    collectionDescription2 = [v8 collectionDescription];
    if (!collectionDescription2)
    {
      v18 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  collectionDescription3 = [(BCCollectionDetail *)self collectionDescription];
  collectionDescription4 = [v8 collectionDescription];
  v18 = [collectionDescription3 isEqualToString:collectionDescription4];

  if (!collectionDescription)
  {
    goto LABEL_6;
  }

LABEL_7:

  hidden = [(BCCollectionDetail *)self hidden];
  hidden2 = [v8 hidden];
  sortOrder = [(BCCollectionDetail *)self sortOrder];
  sortOrder2 = [v8 sortOrder];
  sortMode = [(BCCollectionDetail *)self sortMode];
  sortMode2 = [v8 sortMode];
  v25 = 0;
  if ((v28 & v11 & v14) == 1 && v18 && ((hidden ^ hidden2) & 1) == 0)
  {
    v25 = sortOrder == sortOrder2 && sortMode == sortMode2;
  }

  return v25;
}

- (void)_configureFromCollectionDetail:(id)detail withMergers:(id)mergers
{
  detailCopy = detail;
  v21.receiver = self;
  v21.super_class = BCCollectionDetail;
  [(BCCloudData *)&v21 configureFromCloudData:detailCopy withMergers:mergers];
  collectionID = [detailCopy collectionID];
  [(BCCollectionDetail *)self setDifferentString:collectionID forKey:@"collectionID"];

  name = [detailCopy name];

  if (name)
  {
    name2 = [detailCopy name];
    [(BCCollectionDetail *)self setDifferentString:name2 forKey:@"name"];
  }

  else
  {
    [(BCCollectionDetail *)self setDifferentString:&stru_10024C800 forKey:@"name"];
  }

  collectionDescription = [detailCopy collectionDescription];
  [(BCCollectionDetail *)self setDifferentString:collectionDescription forKey:@"collectionDescription"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy hidden]);
  [(BCCollectionDetail *)self setDifferentNumber:v11 forKey:@"hidden"];

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailCopy sortOrder]);
  [(BCCollectionDetail *)self setDifferentNumber:v12 forKey:@"sortOrder"];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailCopy sortMode]);
  [(BCCollectionDetail *)self setDifferentNumber:v13 forKey:@"sortMode"];

  v14 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v14 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v17 = sub_10000DB80(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      collectionID2 = [(BCCollectionDetail *)self collectionID];
      v19 = [(BCCollectionDetail *)self debugDescription];
      collectionID3 = [detailCopy collectionID];
      *buf = 138543874;
      v23 = collectionID2;
      v24 = 2112;
      v25 = v19;
      v26 = 2114;
      v27 = collectionID3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "\\BCCollectionDetail configured: %{public}@ %@ from assetDetail:%{public}@\", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v51.receiver = self;
  v51.super_class = BCCollectionDetail;
  v7 = [(BCCloudData *)&v51 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    collectionID = [(BCCollectionDetail *)self collectionID];
    v10 = [collectionID isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v12 = sub_100002660(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001C4078(self);
      }

      [(BCCollectionDetail *)self setCollectionID:v8];
    }

    modificationDate = [(BCCollectionDetail *)self modificationDate];
    if (modificationDate)
    {
      v14 = modificationDate;
      modificationDate2 = [(BCCollectionDetail *)self modificationDate];
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
          collectionID2 = [(BCCollectionDetail *)self collectionID];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCCollectionDetail *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v28 = v27;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v30 = @"newer";
          *buf = 138543874;
          v53 = collectionID2;
          v54 = 2114;
          if (v28 == v31)
          {
            v30 = @"the same";
          }

          v55 = recordName;
          v56 = 2114;
          v57 = v30;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BCCollectionDetail %{public}@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_32;
      }
    }

    v50 = [recordCopy objectForKey:@"hidden"];
    [BCCollectionDetail setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v49 = [recordCopy objectForKey:@"sortOrder"];
    [BCCollectionDetail setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v32 = [recordCopy objectForKey:@"sortMode"];
    [(BCCollectionDetail *)self setDifferentNumber:v32 forKey:@"sortMode"];
    v33 = [recordCopy objectForKey:@"name"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &stru_10024C800;
    }

    [(BCCollectionDetail *)self setDifferentString:v35 forKey:@"name"];
    name = [(BCCollectionDetail *)self name];

    if (!name)
    {
      [(BCCollectionDetail *)self setName:&stru_10024C800];
    }

    v37 = [recordCopy objectForKey:@"collectionDescription"];
    if (v37)
    {
      [(BCCollectionDetail *)self setDifferentString:v37 forKey:@"collectionDescription"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(BCCollectionDetail *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCCollectionDetail *)self hasChanges];
    v40 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v40 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v43 = sub_10000DB80(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          collectionID3 = [(BCCollectionDetail *)self collectionID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v46 = [(BCCollectionDetail *)self debugDescription];
          *buf = 138543874;
          v53 = collectionID3;
          v54 = 2112;
          v55 = recordName2;
          v56 = 2112;
          v57 = v46;
          v47 = "\\BCCollectionDetail %{public}@ Resolving: Adopted properties from record: %@ %@\";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v47, buf, 0x20u);

          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v43 = sub_10000DB80(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        collectionID3 = [(BCCollectionDetail *)self collectionID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v46 = [(BCCollectionDetail *)self debugDescription];
        *buf = 138543874;
        v53 = collectionID3;
        v54 = 2112;
        v55 = recordName2;
        v56 = 2112;
        v57 = v46;
        v47 = "\\BCCollectionDetail %{public}@ Resolving: Identical properties from record: %@ %@\";
        goto LABEL_29;
      }

LABEL_30:
    }

    goto LABEL_32;
  }

  v8 = sub_100002660(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001C4120(self);
  }

LABEL_32:
}

- (NSString)debugDescription
{
  collectionID = [(BCCollectionDetail *)self collectionID];
  name = [(BCCollectionDetail *)self name];
  collectionDescription = [(BCCollectionDetail *)self collectionDescription];
  if ([(BCCollectionDetail *)self hidden])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode %d", collectionID, name, collectionDescription, v6, [(BCCollectionDetail *)self sortOrder], [(BCCollectionDetail *)self sortMode]];

  return v7;
}

@end