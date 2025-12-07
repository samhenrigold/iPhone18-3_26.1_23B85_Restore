@interface BCReadingStatisticsSync
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromReadingStatistics:(id)statistics withMergers:(id)mergers;
- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCReadingStatisticsSync

- (id)mutableCopy
{
  v3 = [BCMutableReadingStatisticsSync alloc];

  return [(BCMutableReadingStatisticsSync *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCReadingStatisticsSync *)self _configureFromReadingStatistics:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BCCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E86C4();
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v7 = BUProtocolCast();
  v17.receiver = self;
  v17.super_class = BCReadingStatisticsSync;
  LOBYTE(saltCopy) = [(BCReadingStatisticsSync *)&v17 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  assetID = [(BCReadingStatisticsSync *)self assetID];
  assetID2 = [v7 assetID];
  v10 = [assetID isEqualToString:assetID2];

  assetVersion = [(BCReadingStatisticsSync *)self assetVersion];
  assetVersion2 = [v7 assetVersion];
  v13 = [assetVersion isEqualToString:assetVersion2];

  readingStatisticsBook = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  readingStatisticsBook2 = [v7 readingStatisticsBook];
  LOBYTE(assetVersion2) = [readingStatisticsBook isEqual:readingStatisticsBook2];

  return saltCopy & v10 & v13 & assetVersion2;
}

- (void)_configureFromReadingStatistics:(id)statistics withMergers:(id)mergers
{
  statisticsCopy = statistics;
  v12.receiver = self;
  v12.super_class = BCReadingStatisticsSync;
  [(BCReadingStatisticsSync *)&v12 configureFromCloudData:statisticsCopy withMergers:mergers];
  assetID = [statisticsCopy assetID];
  assetVersion = [statisticsCopy assetVersion];
  readingStatisticsBook = [statisticsCopy readingStatisticsBook];
  [(BCReadingStatisticsSync *)self _mergeInAssetID:assetID assetVersion:assetVersion serializedData:readingStatisticsBook];

  v11 = BCCloudKitLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1E8700(self, statisticsCopy, v11);
  }
}

- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data
{
  dCopy = d;
  versionCopy = version;
  dataCopy = data;
  v11 = objc_alloc_init(BCReadingStatisticsProtoBook);
  v12 = [[PBDataReader alloc] initWithData:dataCopy];
  v13 = BCReadingStatisticsProtoBookReadFrom(v11, v12);
  if (!v13)
  {
    v54 = BCCloudKitLog(v13);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_1E87E8(self);
    }

    goto LABEL_60;
  }

  assetID = [(BCReadingStatisticsSync *)self assetID];
  v15 = [assetID isEqualToString:dCopy];

  if ((v15 & 1) == 0)
  {
    v17 = BCCloudKitLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1E8874(self);
    }

    [(BCReadingStatisticsSync *)self setAssetID:dCopy];
  }

  v18 = objc_alloc_init(BCReadingStatisticsProtoBook);
  [(BCReadingStatisticsProtoBook *)v18 setAssetID:dCopy];
  v19 = +[BCReadingStatisticsSyncManager sharedInstance];
  _appVersion = [v19 _appVersion];
  [(BCReadingStatisticsProtoBook *)v18 setAppVersion:_appVersion];

  readingStatisticsBook = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v22 = [readingStatisticsBook length];

  if (!v22)
  {
LABEL_59:
    [(BCReadingStatisticsSync *)self setAssetVersion:versionCopy];
    v80 = objc_alloc_init(PBDataWriter);
    [(BCReadingStatisticsProtoBook *)v18 writeTo:v80];
    immutableData = [v80 immutableData];
    [(BCReadingStatisticsSync *)self setReadingStatisticsBook:immutableData];

    v54 = v18;
    goto LABEL_60;
  }

  v23 = [PBDataReader alloc];
  readingStatisticsBook2 = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v25 = [v23 initWithData:readingStatisticsBook2];

  v26 = BCReadingStatisticsProtoBookReadFrom(v18, v25);
  if ((v26 & 1) == 0)
  {
    v55 = BCCloudKitLog(v26);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1E8918(self);
    }

    goto LABEL_59;
  }

  v84 = v12;
  selfCopy = self;
  v88 = versionCopy;
  v89 = dCopy;

  v83 = v18;
  v27 = v18;
  v90 = v11;
  v28 = +[NSMutableDictionary dictionary];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v91 = v27;
  tocEntrys = [(BCReadingStatisticsProtoBook *)v27 tocEntrys];
  v30 = [tocEntrys countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v102;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v102 != v32)
        {
          objc_enumerationMutation(tocEntrys);
        }

        v34 = *(*(&v101 + 1) + 8 * i);
        href = [v34 href];
        [v28 setObject:v34 forKeyedSubscript:href];
      }

      v31 = [tocEntrys countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v31);
  }

  v86 = v11;
  v87 = dataCopy;

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  tocEntrys2 = [(BCReadingStatisticsProtoBook *)v90 tocEntrys];
  v37 = [tocEntrys2 countByEnumeratingWithState:&v97 objects:v111 count:16];
  if (!v37)
  {
    v39 = 0;
    goto LABEL_38;
  }

  v38 = v37;
  v39 = 0;
  v40 = *v98;
  do
  {
    for (j = 0; j != v38; j = j + 1)
    {
      if (*v98 != v40)
      {
        objc_enumerationMutation(tocEntrys2);
      }

      v42 = *(*(&v97 + 1) + 8 * j);
      href2 = [v42 href];
      v44 = [v28 objectForKeyedSubscript:href2];
      if (v44)
      {
        v45 = v44;
        [v42 readProportion];
        v47 = v46;
        readProportion = [(BCReadingStatisticsProtoTOCEntry *)v45 readProportion];
        if (v47 <= v49)
        {
          goto LABEL_29;
        }

        v50 = BCReadingStatisticsLog(readProportion);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          [v42 readProportion];
          *buf = 138412546;
          v108 = href2;
          v109 = 2048;
          v110 = v51 * 100.0;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "Reading statistics updated: %@ now %.0lf%% read", buf, 0x16u);
        }

        [v42 readProportion];
        [(BCReadingStatisticsProtoTOCEntry *)v45 setReadProportion:?];
        [v42 timestamp];
        [(BCReadingStatisticsProtoTOCEntry *)v45 setTimestamp:?];
      }

      else
      {
        v45 = objc_alloc_init(BCReadingStatisticsProtoTOCEntry);
        [v42 copyTo:v45];
        v52 = BCReadingStatisticsLog([v91 addTocEntry:v45]);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          [v42 readProportion];
          *buf = 138412546;
          v108 = href2;
          v109 = 2048;
          v110 = v53 * 100.0;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "Reading statistics updated: %@ now %.0lf%% read", buf, 0x16u);
        }
      }

      v39 = 1;
LABEL_29:
    }

    v38 = [tocEntrys2 countByEnumeratingWithState:&v97 objects:v111 count:16];
  }

  while (v38);
LABEL_38:

  v56 = +[(BCCFISet *)BCMutableCFISet];
  readCFIs = [v91 readCFIs];
  v58 = readCFIs;
  if (readCFIs)
  {
    v59 = readCFIs;
  }

  else
  {
    v59 = &__NSArray0__struct;
  }

  v60 = v59;

  readCFIs2 = [(BCReadingStatisticsProtoBook *)v90 readCFIs];
  v62 = readCFIs2;
  if (readCFIs2)
  {
    v63 = readCFIs2;
  }

  else
  {
    v63 = &__NSArray0__struct;
  }

  v82 = v60;
  v64 = [v60 arrayByAddingObjectsFromArray:v63];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v65 = v64;
  v66 = [v65 countByEnumeratingWithState:&v93 objects:buf count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v94;
    do
    {
      for (k = 0; k != v67; k = k + 1)
      {
        if (*v94 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v93 + 1) + 8 * k);
        v92 = 0;
        [v56 addCFIString:v70 error:&v92];
        v71 = v92;
        v72 = v71;
        if (v71)
        {
          v73 = BCReadingStatisticsLog(v71);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *v105 = 138543362;
            v106 = v72;
            _os_log_error_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "Error merging read CFIs: %{public}@", v105, 0xCu);
          }
        }
      }

      v67 = [v65 countByEnumeratingWithState:&v93 objects:buf count:16];
    }

    while (v67);
  }

  allCFIStrings = [v56 allCFIStrings];
  v75 = [allCFIStrings mutableCopy];
  v54 = v91;
  [v91 setReadCFIs:v75];

  if (v39)
  {
    v76 = 1;
    versionCopy = v88;
    dCopy = v89;
    dataCopy = v87;
    v77 = v82;
  }

  else
  {
    readCFIs3 = [v91 readCFIs];
    v77 = v82;
    v79 = [v82 isEqual:readCFIs3] ^ 1;

    v76 = v79;
    versionCopy = v88;
    dCopy = v89;
    dataCopy = v87;
  }

  self = selfCopy;
  v11 = v86;
  v18 = v83;
  v12 = v84;
  if (v76)
  {
    goto LABEL_59;
  }

LABEL_60:
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v19.receiver = self;
  v19.super_class = BCReadingStatisticsSync;
  v7 = [(BCReadingStatisticsSync *)&v19 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    objc_opt_class();
    v9 = [recordCopy objectForKey:@"assetStatistics"];
    v10 = BUDynamicCast();
    fileURL = [v10 fileURL];

    if (fileURL)
    {
      v12 = [NSData dataWithContentsOfURL:fileURL];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v8 length];
    if (v13 && (v13 = [v12 length]) != 0)
    {
      v14 = [recordCopy objectForKeyedSubscript:@"assetVersion"];
      [(BCReadingStatisticsSync *)self _mergeInAssetID:v8 assetVersion:v14 serializedData:v12];

      hasChanges = [(BCReadingStatisticsSync *)self hasChanges];
      v16 = hasChanges;
      v17 = BCReadingStatisticsLog(hasChanges);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        if (v18)
        {
          sub_1E8A78(self, recordCopy);
        }
      }

      else if (v18)
      {
        sub_1E89A4(self, recordCopy);
      }
    }

    else
    {
      v17 = BCReadingStatisticsLog(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1E8B4C(self);
      }
    }
  }

  else
  {
    v8 = BCCloudKitLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E8BD8(self);
    }
  }
}

- (NSString)debugDescription
{
  assetID = [(BCReadingStatisticsSync *)self assetID];
  assetVersion = [(BCReadingStatisticsSync *)self assetVersion];
  readingStatisticsBook = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v6 = [NSString stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", assetID, assetVersion, readingStatisticsBook];

  return v6;
}

@end