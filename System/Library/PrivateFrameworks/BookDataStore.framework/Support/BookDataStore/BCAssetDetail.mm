@interface BCAssetDetail
- (BOOL)isAudiobook;
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (BOOL)setDifferentBookmarkTime:(double)time;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromAssetDetail:(id)detail withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCAssetDetail

- (id)mutableCopy
{
  v3 = [BCMutableAssetDetail alloc];

  return [(BCMutableAssetDetail *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetDetail *)self _configureFromAssetDetail:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C011C();
    }
  }
}

- (void)_configureFromAssetDetail:(id)detail withMergers:(id)mergers
{
  detailCopy = detail;
  v65.receiver = self;
  v65.super_class = BCAssetDetail;
  [(BCCloudData *)&v65 configureFromCloudData:detailCopy withMergers:mergers];
  assetID = [detailCopy assetID];
  [(BCAssetDetail *)self setDifferentString:assetID forKey:@"assetID"];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy isFinished]);
  [(BCAssetDetail *)self setDifferentNumber:v8 forKey:@"isFinished"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy notFinished]);
  [(BCAssetDetail *)self setDifferentNumber:v9 forKey:@"notFinished"];

  taste = [(BCAssetDetail *)self taste];
  taste2 = [detailCopy taste];
  v12 = taste & 3;
  if ((taste2 & 3) != 0)
  {
    v12 = taste2 & 3;
  }

  v13 = [NSNumber numberWithShort:v12 | (taste2 | taste) & 4u];
  [(BCAssetDetail *)self setDifferentNumber:v13 forKey:@"taste"];

  v14 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [detailCopy tasteSyncedToStore]);
  [(BCAssetDetail *)self setDifferentNumber:v14 forKey:@"tasteSyncedToStore"];

  dateFinished = [detailCopy dateFinished];
  [(BCAssetDetail *)self setDifferentDate:dateFinished forKey:@"dateFinished"];

  v16 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [detailCopy finishedDateKind]);
  [(BCAssetDetail *)self setDifferentNumber:v16 forKey:@"finishedDateKind"];

  lastOpenDate = [detailCopy lastOpenDate];
  [(BCAssetDetail *)self setDifferentDate:lastOpenDate forKey:@"lastOpenDate"];

  readingPositionLocationUpdateDate = [detailCopy readingPositionLocationUpdateDate];
  v19 = readingPositionLocationUpdateDate;
  if (readingPositionLocationUpdateDate)
  {
    [readingPositionLocationUpdateDate timeIntervalSinceReferenceDate];
    v21 = v20;
    readingPositionLocationUpdateDate2 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
    [readingPositionLocationUpdateDate2 timeIntervalSinceReferenceDate];
    v24 = v23;

    if (v21 > v24)
    {
      [detailCopy readingProgress];
      v25 = [NSNumber numberWithFloat:?];
      [(BCAssetDetail *)self setDifferentNumber:v25 forKey:@"readingProgress"];

      [detailCopy readingProgressHighWaterMark];
      v26 = [NSNumber numberWithFloat:?];
      [(BCAssetDetail *)self setDifferentNumber:v26 forKey:@"readingProgressHighWaterMark"];

      readingPositionCFIString = [detailCopy readingPositionCFIString];
      [(BCAssetDetail *)self setDifferentString:readingPositionCFIString forKey:@"readingPositionCFIString"];

      readingPositionAnnotationVersion = [detailCopy readingPositionAnnotationVersion];
      [(BCAssetDetail *)self setDifferentString:readingPositionAnnotationVersion forKey:@"readingPositionAnnotationVersion"];

      readingPositionAssetVersion = [detailCopy readingPositionAssetVersion];
      [(BCAssetDetail *)self setDifferentString:readingPositionAssetVersion forKey:@"readingPositionAssetVersion"];

      readingPositionUserData = [detailCopy readingPositionUserData];
      [(BCAssetDetail *)self setDifferentValue:readingPositionUserData forKey:@"readingPositionUserData" klass:objc_opt_class()];

      v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [detailCopy readingPositionLocationRangeStart]);
      [(BCAssetDetail *)self setDifferentNumber:v31 forKey:@"readingPositionLocationRangeStart"];

      v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [detailCopy readingPositionLocationRangeEnd]);
      [(BCAssetDetail *)self setDifferentNumber:v32 forKey:@"readingPositionLocationRangeEnd"];

      v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [detailCopy readingPositionAbsolutePhysicalLocation]);
      [(BCAssetDetail *)self setDifferentNumber:v33 forKey:@"readingPositionAbsolutePhysicalLocation"];

      readingPositionStorageUUID = [detailCopy readingPositionStorageUUID];
      [(BCAssetDetail *)self setDifferentString:readingPositionStorageUUID forKey:@"readingPositionStorageUUID"];

      [(BCAssetDetail *)self setDifferentDate:v19 forKey:@"readingPositionLocationUpdateDate"];
    }
  }

  datePlaybackTimeUpdated = [detailCopy datePlaybackTimeUpdated];
  if (datePlaybackTimeUpdated)
  {
    datePlaybackTimeUpdated2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (datePlaybackTimeUpdated2 && (v37 = datePlaybackTimeUpdated2, [datePlaybackTimeUpdated timeIntervalSinceReferenceDate], v39 = v38, -[BCAssetDetail datePlaybackTimeUpdated](self, "datePlaybackTimeUpdated"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "timeIntervalSinceReferenceDate"), v42 = v41, v40, v37, v39 <= v42))
    {
      v52 = sub_10000DC90(v43);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        assetID2 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated3 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v56 = v55;
        [detailCopy bookmarkTime];
        *buf = 138413314;
        v67 = assetID2;
        v68 = 2112;
        v69 = datePlaybackTimeUpdated3;
        v70 = 2048;
        v71 = v56;
        v72 = 2112;
        v73 = datePlaybackTimeUpdated;
        v74 = 2048;
        v75 = v57;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time, ignoring as my bookmark time is same or newer old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }
    }

    else
    {
      bookmarkTime = [detailCopy bookmarkTime];
      v46 = v45;
      v47 = sub_10000DC90(bookmarkTime);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        assetID3 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated4 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        *buf = 138413314;
        v67 = assetID3;
        v68 = 2112;
        v69 = datePlaybackTimeUpdated4;
        v70 = 2048;
        v71 = v50;
        v72 = 2112;
        v73 = datePlaybackTimeUpdated;
        v74 = 2048;
        v75 = v46;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }

      datePlaybackTimeUpdated5 = [detailCopy datePlaybackTimeUpdated];
      [(BCAssetDetail *)self setDifferentDate:datePlaybackTimeUpdated5 forKey:@"datePlaybackTimeUpdated"];

      [(BCAssetDetail *)self setDifferentBookmarkTime:v46];
    }
  }

  v58 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v58 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v61 = sub_10000DB80(v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      assetID4 = [(BCAssetDetail *)self assetID];
      v63 = [(BCAssetDetail *)self debugDescription];
      assetID5 = [detailCopy assetID];
      *buf = 138412802;
      v67 = assetID4;
      v68 = 2112;
      v69 = v63;
      v70 = 2112;
      v71 = assetID5;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail configured: %@ %@ from assetDetail:%@\", buf, 0x20u);
    }
  }
}

- (BOOL)setDifferentBookmarkTime:(double)time
{
  [(BCAssetDetail *)self bookmarkTime];
  if (v5 == time || vabdd_f64(time, v5) <= 0.001)
  {
    return 0;
  }

  [(BCAssetDetail *)self setBookmarkTime:time];
  return 1;
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v7 = BUProtocolCast();
  v81.receiver = self;
  v81.super_class = BCAssetDetail;
  v80 = [(BCCloudData *)&v81 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  assetID = [(BCAssetDetail *)self assetID];
  assetID2 = [v7 assetID];
  v79 = [assetID isEqualToString:assetID2];

  isFinished = [(BCAssetDetail *)self isFinished];
  isFinished2 = [v7 isFinished];
  notFinished = [(BCAssetDetail *)self notFinished];
  notFinished2 = [v7 notFinished];
  taste = [(BCAssetDetail *)self taste];
  taste2 = [v7 taste];
  tasteSyncedToStore = [(BCAssetDetail *)self tasteSyncedToStore];
  tasteSyncedToStore2 = [v7 tasteSyncedToStore];
  dateFinished = [(BCAssetDetail *)self dateFinished];
  if (!dateFinished)
  {
    assetID2 = [v7 dateFinished];
    if (!assetID2)
    {
      v75 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  dateFinished2 = [(BCAssetDetail *)self dateFinished];
  dateFinished3 = [v7 dateFinished];
  v75 = [dateFinished2 isEqualToDate:dateFinished3];

  if (!dateFinished)
  {
    goto LABEL_6;
  }

LABEL_7:

  finishedDateKind = [(BCAssetDetail *)self finishedDateKind];
  finishedDateKind2 = [v7 finishedDateKind];
  lastOpenDate = [(BCAssetDetail *)self lastOpenDate];
  if (!lastOpenDate)
  {
    assetID2 = [v7 lastOpenDate];
    if (!assetID2)
    {
      v72 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  lastOpenDate2 = [(BCAssetDetail *)self lastOpenDate];
  lastOpenDate3 = [v7 lastOpenDate];
  v72 = [lastOpenDate2 isEqualToDate:lastOpenDate3];

  if (!lastOpenDate)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(BCAssetDetail *)self readingProgress];
  v20 = v19;
  [v7 readingProgress];
  v22 = v21;
  [(BCAssetDetail *)self readingProgressHighWaterMark];
  v24 = v23;
  [v7 readingProgressHighWaterMark];
  v26 = v25;
  readingPositionCFIString = [(BCAssetDetail *)self readingPositionCFIString];
  if (!readingPositionCFIString)
  {
    assetID2 = [v7 readingPositionCFIString];
    if (!assetID2)
    {
      v71 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  readingPositionCFIString2 = [(BCAssetDetail *)self readingPositionCFIString];
  readingPositionCFIString3 = [v7 readingPositionCFIString];
  v71 = [readingPositionCFIString2 isEqualToString:readingPositionCFIString3];

  if (!readingPositionCFIString)
  {
    goto LABEL_18;
  }

LABEL_19:

  readingPositionAssetVersion = [(BCAssetDetail *)self readingPositionAssetVersion];
  if (!readingPositionAssetVersion)
  {
    assetID2 = [v7 readingPositionAssetVersion];
    if (!assetID2)
    {
      v69 = 1;
LABEL_24:

      goto LABEL_25;
    }
  }

  readingPositionAssetVersion2 = [(BCAssetDetail *)self readingPositionAssetVersion];
  readingPositionAssetVersion3 = [v7 readingPositionAssetVersion];
  v69 = [readingPositionAssetVersion2 isEqualToString:readingPositionAssetVersion3];

  if (!readingPositionAssetVersion)
  {
    goto LABEL_24;
  }

LABEL_25:

  readingPositionAnnotationVersion = [(BCAssetDetail *)self readingPositionAnnotationVersion];
  if (!readingPositionAnnotationVersion)
  {
    assetID2 = [v7 readingPositionAnnotationVersion];
    if (!assetID2)
    {
      v68 = 1;
LABEL_30:

      goto LABEL_31;
    }
  }

  readingPositionAnnotationVersion2 = [(BCAssetDetail *)self readingPositionAnnotationVersion];
  readingPositionAnnotationVersion3 = [v7 readingPositionAnnotationVersion];
  v68 = [readingPositionAnnotationVersion2 isEqualToString:readingPositionAnnotationVersion3];

  if (!readingPositionAnnotationVersion)
  {
    goto LABEL_30;
  }

LABEL_31:

  readingPositionUserData = [(BCAssetDetail *)self readingPositionUserData];
  if (!readingPositionUserData)
  {
    assetID2 = [v7 readingPositionUserData];
    if (!assetID2)
    {
      v70 = 1;
LABEL_36:

      goto LABEL_37;
    }
  }

  readingPositionUserData2 = [(BCAssetDetail *)self readingPositionUserData];
  readingPositionUserData3 = [v7 readingPositionUserData];
  v70 = [readingPositionUserData2 isEqual:readingPositionUserData3];

  if (!readingPositionUserData)
  {
    goto LABEL_36;
  }

LABEL_37:

  readingPositionLocationRangeStart = [(BCAssetDetail *)self readingPositionLocationRangeStart];
  readingPositionLocationRangeStart2 = [v7 readingPositionLocationRangeStart];
  readingPositionLocationRangeEnd = [(BCAssetDetail *)self readingPositionLocationRangeEnd];
  readingPositionLocationRangeEnd2 = [v7 readingPositionLocationRangeEnd];
  readingPositionAbsolutePhysicalLocation = [(BCAssetDetail *)self readingPositionAbsolutePhysicalLocation];
  readingPositionAbsolutePhysicalLocation2 = [v7 readingPositionAbsolutePhysicalLocation];
  readingPositionStorageUUID = [(BCAssetDetail *)self readingPositionStorageUUID];
  readingPositionStorageUUID2 = [v7 readingPositionStorageUUID];

  v61 = readingPositionStorageUUID;
  readingPositionLocationUpdateDate = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
  if (!readingPositionLocationUpdateDate)
  {
    assetID2 = [v7 readingPositionLocationUpdateDate];
    if (!assetID2)
    {
      v60 = 1;
LABEL_42:

      goto LABEL_43;
    }
  }

  [(BCAssetDetail *)self readingPositionLocationUpdateDate];
  v43 = v42 = isFinished;
  [v7 readingPositionLocationUpdateDate];
  v45 = v44 = isFinished2;
  v60 = [v43 isEqualToDate:v45];

  isFinished2 = v44;
  isFinished = v42;
  if (!readingPositionLocationUpdateDate)
  {
    goto LABEL_42;
  }

LABEL_43:
  v46 = isFinished ^ isFinished2;
  v47 = notFinished ^ notFinished2;

  datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  if (!datePlaybackTimeUpdated)
  {
    isFinished = [v7 datePlaybackTimeUpdated];
    if (!isFinished)
    {
      v78 = 1;
LABEL_48:

      goto LABEL_49;
    }
  }

  datePlaybackTimeUpdated2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  [v7 datePlaybackTimeUpdated];
  v51 = v50 = taste;
  v78 = [datePlaybackTimeUpdated2 isEqualToDate:v51];

  taste = v50;
  if (!datePlaybackTimeUpdated)
  {
    goto LABEL_48;
  }

LABEL_49:

  [(BCAssetDetail *)self bookmarkTime];
  v53 = v52;
  [v7 bookmarkTime];
  v55 = 0;
  if (!(v46 & 1 | ((v80 & v79 & 1) == 0) | v47 & 1) && ((v75 ^ 1) & 1) == 0 && finishedDateKind == finishedDateKind2 && ((v72 ^ 1) & 1) == 0 && v20 == v22 && v24 == v26 && ((v71 ^ 1) & 1) == 0 && ((v70 ^ 1) & 1) == 0 && ((v69 ^ 1) & 1) == 0 && ((v68 ^ 1) & 1) == 0 && readingPositionLocationRangeStart == readingPositionLocationRangeStart2 && readingPositionLocationRangeEnd == readingPositionLocationRangeEnd2 && readingPositionAbsolutePhysicalLocation == readingPositionAbsolutePhysicalLocation2 && v61 == readingPositionStorageUUID2 && ((v60 ^ 1) & 1) == 0 && taste == taste2 && tasteSyncedToStore == tasteSyncedToStore2)
  {
    if (v53 == v54)
    {
      v55 = v78;
    }

    else
    {
      v55 = 0;
    }
  }

  return v55;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v159.receiver = self;
  v159.super_class = BCAssetDetail;
  v7 = [(BCCloudData *)&v159 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v8 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v11 = sub_10000DB80(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail resolveConflictsFromRecord:withResolvers: record != nil\", buf, 2u);
      }
    }

    v12 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = [(BCAssetDetail *)self assetID];
    v14 = [assetID isEqualToString:v12];

    if ((v14 & 1) == 0)
    {
      v16 = sub_100002660(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0150(self, v12, v16);
      }

      [(BCAssetDetail *)self setAssetID:v12];
    }

    v158 = v12;
    modificationDate = [(BCAssetDetail *)self modificationDate];
    if (modificationDate && (v18 = modificationDate, -[BCAssetDetail modificationDate](self, "modificationDate"), v19 = objc_claimAutoreleasedReturnValue(), [v19 timeIntervalSinceReferenceDate], v21 = v20, objc_msgSend(recordCopy, "modificationDate"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSinceReferenceDate"), v24 = v23, v22, v19, v18, v21 >= v24))
    {
      modificationDate2 = [(BCAssetDetail *)self modificationDate];
      if (modificationDate2)
      {
        modificationDate3 = [recordCopy modificationDate];
        [modificationDate3 timeIntervalSinceReferenceDate];
        v119 = v118;
        modificationDate4 = [(BCAssetDetail *)self modificationDate];
        [modificationDate4 timeIntervalSinceReferenceDate];
        v42 = v119 != v121;
      }

      else
      {
        v42 = 0;
      }

      v29 = sub_100002660(v142);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        assetID2 = [(BCAssetDetail *)self assetID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate5 = [(BCAssetDetail *)self modificationDate];
        [modificationDate5 timeIntervalSinceReferenceDate];
        v148 = v147;
        modificationDate6 = [recordCopy modificationDate];
        [modificationDate6 timeIntervalSinceReferenceDate];
        v150 = @"newer";
        *buf = 138412802;
        v161 = assetID2;
        if (v148 == v151)
        {
          v150 = @"the same";
        }

        v162 = 2112;
        v163 = recordName;
        v164 = 2114;
        v165 = v150;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my basic properties as my modification date is %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v25 = sub_100002660(modificationDate);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        assetID3 = [(BCAssetDetail *)self assetID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        *buf = 138412546;
        v161 = assetID3;
        v162 = 2112;
        v163 = recordName2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting general record properties.", buf, 0x16u);
      }

      v29 = [recordCopy objectForKey:@"isFinished"];
      [(BCAssetDetail *)self setDifferentNumber:v29 forKey:@"isFinished"];
      v30 = [recordCopy objectForKey:@"notFinished"];
      [(BCAssetDetail *)self setDifferentNumber:v30 forKey:@"notFinished"];
      v31 = [recordCopy objectForKey:@"taste"];
      taste = [(BCAssetDetail *)self taste];
      shortValue = [v31 shortValue];
      v34 = taste & 3;
      if ((shortValue & 3) != 0)
      {
        v34 = shortValue & 3;
      }

      v35 = [NSNumber numberWithShort:v34 | (shortValue | taste) & 4u];
      [(BCAssetDetail *)self setDifferentNumber:v35 forKey:@"taste"];

      v36 = [recordCopy objectForKey:@"tasteSyncedToStore"];
      [(BCAssetDetail *)self setDifferentNumber:v36 forKey:@"tasteSyncedToStore"];
      v37 = [recordCopy objectForKey:@"dateFinished"];
      [(BCAssetDetail *)self setDifferentDate:v37 forKey:@"dateFinished"];
      encryptedValues = [recordCopy encryptedValues];
      v39 = [encryptedValues objectForKeyedSubscript:@"finishedDateKind"];

      [(BCAssetDetail *)self setDifferentNumber:v39 forKey:@"finishedDateKind"];
      v40 = [recordCopy objectForKey:@"lastOpenDate"];
      [(BCAssetDetail *)self setDifferentDate:v40 forKey:@"lastOpenDate"];
      modificationDate7 = [recordCopy modificationDate];
      [(BCAssetDetail *)self setDifferentDate:modificationDate7 forKey:@"modificationDate"];

      v42 = 0;
    }

    v43 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
    v44 = v43;
    if (v43 && ([v43 timeIntervalSinceReferenceDate], v46 = v45, -[BCAssetDetail readingPositionLocationUpdateDate](self, "readingPositionLocationUpdateDate"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "timeIntervalSinceReferenceDate"), v49 = v48, v47, v46 > v49))
    {
      v156 = v42;
      v157 = v44;
      v51 = sub_100002660(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        assetID4 = [(BCAssetDetail *)self assetID];
        recordID3 = [recordCopy recordID];
        recordName3 = [recordID3 recordName];
        *buf = 138412546;
        v161 = assetID4;
        v162 = 2112;
        v163 = recordName3;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting reading position properties.", buf, 0x16u);
      }

      v55 = [recordCopy objectForKey:@"readingProgress"];
      [(BCAssetDetail *)self setDifferentNumber:v55 forKey:@"readingProgress"];
      v155 = [recordCopy objectForKey:@"readingProgressHighWaterMark"];
      [(BCAssetDetail *)self setDifferentNumber:v155 forKey:@"readingProgressHighWaterMark"];
      v154 = [recordCopy objectForKey:@"readingPositionCFIString"];
      [(BCAssetDetail *)self setDifferentString:v154 forKey:@"readingPositionCFIString"];
      v153 = [recordCopy objectForKey:@"readingPositionAssetVersion"];
      [(BCAssetDetail *)self setDifferentString:v153 forKey:@"readingPositionAssetVersion"];
      v152 = [recordCopy objectForKey:@"readingPositionAnnotationVersion"];
      [(BCAssetDetail *)self setDifferentString:v152 forKey:@"readingPositionAnnotationVersion"];
      v56 = [recordCopy objectForKey:@"readingPositionUserData"];
      [(BCAssetDetail *)self setDifferentValue:v56 forKey:@"readingPositionUserData" klass:objc_opt_class()];
      v57 = [recordCopy objectForKey:@"readingPositionLocationRangeStart"];
      [(BCAssetDetail *)self setDifferentNumber:v57 forKey:@"readingPositionLocationRangeStart"];
      v58 = [recordCopy objectForKey:@"readingPositionLocationRangeEnd"];
      [(BCAssetDetail *)self setDifferentNumber:v58 forKey:@"readingPositionLocationRangeEnd"];
      v59 = [recordCopy objectForKey:@"readingPositionAbsolutePhysicalLocation"];
      [(BCAssetDetail *)self setDifferentNumber:v59 forKey:@"readingPositionAbsolutePhysicalLocation"];
      v60 = [recordCopy objectForKey:@"readingPositionStorageUUID"];
      [(BCAssetDetail *)self setDifferentString:v60 forKey:@"readingPositionStorageUUID"];
      v61 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
      [(BCAssetDetail *)self setDifferentDate:v61 forKey:@"readingPositionLocationUpdateDate"];

      v44 = v157;
      v42 = v156;
    }

    else
    {
      readingPositionLocationUpdateDate = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
      if (readingPositionLocationUpdateDate)
      {
        [v44 timeIntervalSinceReferenceDate];
        v64 = v63;
        readingPositionLocationUpdateDate2 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
        [readingPositionLocationUpdateDate2 timeIntervalSinceReferenceDate];
        v67 = v64 != v66;

        v42 |= v67;
      }

      v55 = sub_100002660(v68);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        assetID5 = [(BCAssetDetail *)self assetID];
        recordID4 = [recordCopy recordID];
        recordName4 = [recordID4 recordName];
        readingPositionLocationUpdateDate3 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
        [readingPositionLocationUpdateDate3 timeIntervalSinceReferenceDate];
        v74 = v73;
        [v44 timeIntervalSinceReferenceDate];
        v75 = @"newer";
        *buf = 138412802;
        v161 = assetID5;
        if (v74 == v76)
        {
          v75 = @"the same";
        }

        v162 = 2112;
        v163 = recordName4;
        v164 = 2114;
        v165 = v75;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my reading position properties as my reading position update date is %{public}@.", buf, 0x20u);
      }
    }

    v77 = [recordCopy objectForKey:@"datePlaybackTimeUpdated"];
    if (v77)
    {
      datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      if (!datePlaybackTimeUpdated || (v79 = datePlaybackTimeUpdated, [v77 timeIntervalSinceReferenceDate], v81 = v80, -[BCAssetDetail datePlaybackTimeUpdated](self, "datePlaybackTimeUpdated"), v82 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v82, "timeIntervalSinceReferenceDate"), v84 = v83, v82, v79, v81 > v84))
      {
        v85 = sub_100002660(datePlaybackTimeUpdated);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          assetID6 = [(BCAssetDetail *)self assetID];
          recordID5 = [recordCopy recordID];
          recordName5 = [recordID5 recordName];
          *buf = 138412546;
          v161 = assetID6;
          v162 = 2112;
          v163 = recordName5;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@ adopting playback time properties.", buf, 0x16u);
        }

        v89 = [recordCopy objectForKey:@"bookmarkTime"];
        v90 = v89;
        if (v89)
        {
          doubleValue = [v89 doubleValue];
          v93 = v92;
          v94 = sub_10000DC90(doubleValue);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            assetID7 = [(BCAssetDetail *)self assetID];
            datePlaybackTimeUpdated2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
            [(BCAssetDetail *)self bookmarkTime];
            *buf = 138413314;
            v161 = assetID7;
            v162 = 2112;
            v163 = datePlaybackTimeUpdated2;
            v164 = 2048;
            v165 = v97;
            v166 = 2112;
            v167 = v77;
            v168 = 2048;
            v169 = v93;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
          }

          [(BCAssetDetail *)self setDifferentDate:v77 forKey:@"datePlaybackTimeUpdated"];
          [(BCAssetDetail *)self setDifferentBookmarkTime:v93];
LABEL_58:

          if (v42)
          {
            [(BCCloudData *)self incrementEditGeneration];
          }

          hasChanges = [(BCAssetDetail *)self hasChanges];
          v133 = +[BULogUtilities shared];
          verboseLoggingEnabled2 = [v133 verboseLoggingEnabled];

          if (hasChanges)
          {
            if (verboseLoggingEnabled2)
            {
              v136 = sub_10000DB80(v135);
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
              {
                assetID8 = [(BCAssetDetail *)self assetID];
                recordID6 = [recordCopy recordID];
                recordName6 = [recordID6 recordName];
                v140 = [(BCAssetDetail *)self debugDescription];
                *buf = 138412802;
                v161 = assetID8;
                v162 = 2112;
                v163 = recordName6;
                v164 = 2112;
                v165 = v140;
                v141 = "\\BCAssetDetail %@ Resolving: Adopted properties from record: %@ %@\";
LABEL_67:
                _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, v141, buf, 0x20u);

                goto LABEL_68;
              }

              goto LABEL_68;
            }
          }

          else if (verboseLoggingEnabled2)
          {
            v136 = sub_10000DB80(v135);
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              assetID8 = [(BCAssetDetail *)self assetID];
              recordID6 = [recordCopy recordID];
              recordName6 = [recordID6 recordName];
              v140 = [(BCAssetDetail *)self debugDescription];
              *buf = 138412802;
              v161 = assetID8;
              v162 = 2112;
              v163 = recordName6;
              v164 = 2112;
              v165 = v140;
              v141 = "\\BCAssetDetail %@ Resolving: Identical properties from record: %@ %@\";
              goto LABEL_67;
            }

LABEL_68:
          }

          v98 = v158;
          goto LABEL_70;
        }

        assetID10 = sub_10000DC90(0);
        if (os_log_type_enabled(assetID10, OS_LOG_TYPE_DEFAULT))
        {
          assetID9 = [(BCAssetDetail *)self assetID];
          *buf = 138412290;
          v161 = assetID9;
          _os_log_impl(&_mh_execute_header, assetID10, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as bookmark time is NULL.", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_58;
      }
    }

    datePlaybackTimeUpdated3 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (datePlaybackTimeUpdated3)
    {
      [v77 timeIntervalSinceReferenceDate];
      v101 = v100;
      datePlaybackTimeUpdated4 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [datePlaybackTimeUpdated4 timeIntervalSinceReferenceDate];
      v104 = v101 != v103;

      v42 |= v104;
    }

    if (!v77)
    {
      v90 = sub_10000DC90(v105);
      if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      assetID10 = [(BCAssetDetail *)self assetID];
      recordID7 = [recordCopy recordID];
      recordName7 = [recordID7 recordName];
      datePlaybackTimeUpdated5 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [datePlaybackTimeUpdated5 timeIntervalSinceReferenceDate];
      v127 = v126;
      [0 timeIntervalSinceReferenceDate];
      v128 = @"newer";
      *buf = 138412802;
      v161 = assetID10;
      if (v127 == v129)
      {
        v128 = @"the same";
      }

      v162 = 2112;
      v163 = recordName7;
      v164 = 2114;
      v165 = v128;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my playback time properties as my playback time update date is %{public}@.", buf, 0x20u);

      goto LABEL_53;
    }

    v90 = [recordCopy objectForKey:@"bookmarkTime"];
    v106 = sub_10000DC90(v90);
    v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
    if (v90)
    {
      if (v107)
      {
        assetID11 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated6 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v111 = v110;
        [v90 doubleValue];
        *buf = 138413314;
        v161 = assetID11;
        v162 = 2112;
        v163 = datePlaybackTimeUpdated6;
        v164 = 2048;
        v165 = v111;
        v166 = 2112;
        v167 = v77;
        v168 = 2048;
        v169 = v112;
        v113 = "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as my bookmark time is newer old:[%@ = %.2f] new:[%@ = %.2f].";
        v114 = v106;
        v115 = 52;
LABEL_56:
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, v113, buf, v115);
      }
    }

    else if (v107)
    {
      assetID11 = [(BCAssetDetail *)self assetID];
      datePlaybackTimeUpdated6 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [(BCAssetDetail *)self bookmarkTime];
      *buf = 138413058;
      v161 = assetID11;
      v162 = 2112;
      v163 = datePlaybackTimeUpdated6;
      v164 = 2048;
      v165 = v131;
      v166 = 2112;
      v167 = v77;
      v113 = "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as my bookmark time is newer old:[%@ = %.2f] new:[%@ = NULL].";
      v114 = v106;
      v115 = 42;
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v98 = sub_100002660(v7);
  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0200(self, v98);
  }

LABEL_70:
}

- (BOOL)isAudiobook
{
  datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  v3 = datePlaybackTimeUpdated != 0;

  return v3;
}

- (NSString)debugDescription
{
  assetID = [(BCAssetDetail *)self assetID];
  if ([(BCAssetDetail *)self isFinished])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v28 = v3;
  if ([(BCAssetDetail *)self notFinished])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v27 = v4;
  dateFinished = [(BCAssetDetail *)self dateFinished];
  finishedDateKind = [(BCAssetDetail *)self finishedDateKind];
  lastOpenDate = [(BCAssetDetail *)self lastOpenDate];
  taste = [(BCAssetDetail *)self taste];
  tasteSyncedToStore = [(BCAssetDetail *)self tasteSyncedToStore];
  [(BCAssetDetail *)self readingProgress];
  v6 = v5;
  [(BCAssetDetail *)self readingProgressHighWaterMark];
  v8 = v7;
  readingPositionCFIString = [(BCAssetDetail *)self readingPositionCFIString];
  readingPositionAnnotationVersion = [(BCAssetDetail *)self readingPositionAnnotationVersion];
  readingPositionAssetVersion = [(BCAssetDetail *)self readingPositionAssetVersion];
  readingPositionUserData = [(BCAssetDetail *)self readingPositionUserData];
  readingPositionLocationRangeStart = [(BCAssetDetail *)self readingPositionLocationRangeStart];
  readingPositionLocationRangeEnd = [(BCAssetDetail *)self readingPositionLocationRangeEnd];
  readingPositionAbsolutePhysicalLocation = [(BCAssetDetail *)self readingPositionAbsolutePhysicalLocation];
  readingPositionStorageUUID = [(BCAssetDetail *)self readingPositionStorageUUID];
  readingPositionLocationUpdateDate = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
  datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  [(BCAssetDetail *)self bookmarkTime];
  v18 = [NSString stringWithFormat:@"BCAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", assetID, v28, v27, dateFinished, finishedDateKind, lastOpenDate, taste, tasteSyncedToStore, *&v6, *&v8, readingPositionCFIString, readingPositionAnnotationVersion, readingPositionAssetVersion, readingPositionUserData, readingPositionLocationRangeStart, readingPositionLocationRangeEnd, readingPositionAbsolutePhysicalLocation, readingPositionStorageUUID, readingPositionLocationUpdateDate, datePlaybackTimeUpdated, v17];

  return v18;
}

@end