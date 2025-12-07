@interface SDAState
+ (id)loadFromFileAtPath:(id)path;
- (id)getElemForBundleId:(id)id volType:(int)type residency:(unsigned int)residency urgency:(int)urgency state:(int)state create:(BOOL)create;
- (void)adjAveragesForBundleId:(id)id volType:(int)type volPath:(id)path residency:(unsigned int)residency WithNumOfPristine:(unint64_t)pristine sizeOfPristine:(unint64_t)ofPristine numOfDays:(unint64_t)days;
- (void)enumerateAllAverageElementsOfVolType:(int)type UsingBlock:(id)block;
- (void)fadeOldEntries;
- (void)print;
- (void)saveToFile;
- (void)updateEventId:(unint64_t)id andDate:(id)date forVolPath:(id)path;
- (void)updateSdaStateWithDenominatorInfo:(id)info volType:(int)type volPath:(id)path;
@end

@implementation SDAState

+ (id)loadFromFileAtPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_new();
  v5 = @"/var/db/spaceattribution";
  if (pathCopy)
  {
    v5 = pathCopy;
  }

  v6 = [NSString stringWithFormat:@"%@/%@", v5, @"SpeculativeDownload.db"];

  [v4 setPathToDisk:v6];
  v75 = 0;
  v7 = [NSData dataWithContentsOfFile:v6 options:0 error:&v75];
  v8 = v75;
  v9 = &SBSCopyDisplayIdentifiers_ptr;
  v73 = v6;
  if (v7)
  {
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v10, v11, v12, v13, objc_opt_class(), 0, v6];
    v74 = v8;
    v15 = v7;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v7 error:&v74];
    v17 = v74;

    if (!v17)
    {
      v19 = 0;
      v20 = v15;
      v9 = &SBSCopyDisplayIdentifiers_ptr;
      goto LABEL_13;
    }

    v18 = SALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v71 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 length]);
      v72 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
      *buf = 138412802;
      v77 = v71;
      v78 = 2112;
      v79 = v72;
      v80 = 2112;
      v81 = v17;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Loading: [objDate length] %@ to [dict count] %@, err %@", buf, 0x20u);
    }

    v19 = v17;
    v20 = v15;
    v9 = &SBSCopyDisplayIdentifiers_ptr;
  }

  else
  {
    v20 = 0;
    v18 = SALog();
    v19 = v8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD80();
    }

    v16 = 0;
  }

LABEL_13:
  v21 = [v16 objectForKey:@"SdaVersion"];
  [v4 setSdaVersion:v21];

  sdaVersion = [v4 sdaVersion];
  if (sdaVersion && (v23 = sdaVersion, [v4 sdaVersion], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToNumber:", &off_1000689B8), v24, v23, (v25 & 1) != 0))
  {
    v26 = v19;
  }

  else
  {
    [v4 setSdaVersion:&off_1000689B8];
    v27 = SALog();
    v26 = v19;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      sdaVersion2 = [v4 sdaVersion];
      *buf = 138412290;
      v77 = sdaVersion2;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "New SDA version %@", buf, 0xCu);
    }

    v16 = 0;
  }

  v29 = [v16 objectForKey:@"BuildVersion"];
  [v4 setBuildVersion:v29];

  buildVersion = [v4 buildVersion];
  if (!buildVersion || (v31 = buildVersion, [v4 buildVersion], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "isEqual:", @"buildVersion unknown"), v32, v31, v33))
  {
    v34 = SALog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "updating kBuildVersion", buf, 2u);
    }

    v35 = +[SASupport buildVersion];
    [v4 setBuildVersion:v35];
  }

  v36 = [v16 objectForKey:@"LastUpdateDate"];
  [v4 setLastUpdateDate:v36];

  lastUpdateDate = [v4 lastUpdateDate];

  if (!lastUpdateDate)
  {
    v38 = [v9[207] now];
    [v4 setLastUpdateDate:v38];

    v39 = SALog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      lastUpdateDate2 = [v4 lastUpdateDate];
      *buf = 138412290;
      v77 = lastUpdateDate2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "updating lastUpdateDate to %@", buf, 0xCu);
    }
  }

  v41 = [v16 objectForKey:@"StartExecutionDate"];
  [v4 setStartExecutionDate:v41];

  startExecutionDate = [v4 startExecutionDate];

  if (!startExecutionDate)
  {
    v43 = [v9[207] now];
    [v4 setStartExecutionDate:v43];

    v44 = SALog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      startExecutionDate2 = [v4 startExecutionDate];
      *buf = 138412290;
      v77 = startExecutionDate2;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "updating startExecutionDate to %@", buf, 0xCu);
    }
  }

  v46 = [v16 objectForKey:@"NumOfTraversal"];
  [v4 setNumOfTraversal:v46];

  numOfTraversal = [v4 numOfTraversal];

  if (!numOfTraversal)
  {
    [v4 setNumOfTraversal:&off_1000689D0];
  }

  v48 = [v16 objectForKey:@"kExecutionOnGoing"];
  [v4 setExecutionOnGoing:v48];

  executionOnGoing = [v4 executionOnGoing];

  if (!executionOnGoing)
  {
    v50 = SALog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "No kExecutionOnGoing found", buf, 2u);
    }

    [v4 setExecutionOnGoing:&off_1000689D0];
  }

  v51 = [v16 objectForKey:@"FreeDiskSpaceAtStart"];
  [v4 setFreeDiskSpaceAtStart:v51];

  freeDiskSpaceAtStart = [v4 freeDiskSpaceAtStart];

  if (!freeDiskSpaceAtStart)
  {
    v53 = SALog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "No kFreeDiskSpaceAtStart found", buf, 2u);
    }

    [v4 setFreeDiskSpaceAtStart:&off_1000689D0];
  }

  v54 = [v16 objectForKey:@"DenominatorTable"];
  [v4 setAveElem:v54];

  aveElem = [v4 aveElem];

  if (!aveElem)
  {
    v56 = SALog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "No kDenominatorTable found", buf, 2u);
    }

    v57 = objc_opt_new();
    [v4 setAveElem:v57];
  }

  v58 = [v16 objectForKey:@"LastEventIdPerVol"];
  if (!v58)
  {
    v59 = SALog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "creating dictionary for kLastEventIdPerVol", buf, 2u);
    }

    v58 = objc_opt_new();
  }

  [v4 setLastEventIdPerVol:v58];
  v60 = [v16 objectForKey:@"LastEventTimePerVol"];
  if (!v60)
  {
    v61 = SALog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "creating dictionary for kLastEventTimePerVol", buf, 2u);
    }

    v60 = objc_opt_new();
  }

  [v4 setLastEventTimePerVol:v60];
  v62 = [v9[207] now];
  lastUpdateDate3 = [v4 lastUpdateDate];
  [v62 timeIntervalSinceDate:lastUpdateDate3];
  v65 = v64;

  v66 = (v65 + 43200.0) / 86400.0;
  if (v66 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v66;
  }

  v68 = [NSNumber numberWithUnsignedLongLong:v67];
  [v4 setDaysSinceLastUpdate:v68];

  v69 = objc_opt_new();
  [v4 setHistogramPerVol:v69];

  return v4;
}

- (void)updateEventId:(unint64_t)id andDate:(id)date forVolPath:(id)path
{
  pathCopy = path;
  dateCopy = date;
  v12 = [NSNumber numberWithUnsignedLongLong:id];
  lastEventIdPerVol = [(SDAState *)self lastEventIdPerVol];
  [lastEventIdPerVol setObject:v12 forKey:pathCopy];

  lastEventTimePerVol = [(SDAState *)self lastEventTimePerVol];
  [lastEventTimePerVol setObject:dateCopy forKey:pathCopy];
}

- (void)saveToFile
{
  v3 = +[NSFileManager defaultManager];
  v23 = 0;
  v4 = [v3 createDirectoryAtPath:@"/var/db/spaceattribution" withIntermediateDirectories:1 attributes:0 error:&v23];
  v5 = v23;
  if (v4)
  {
    v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:self->_sdaVersion, @"SdaVersion", self->_buildVersion, @"BuildVersion", self->_lastEventTimePerVol, @"LastEventTimePerVol", self->_lastEventIdPerVol, @"LastEventIdPerVol", self->_startExecutionDate, @"StartExecutionDate", self->_executionOnGoing, @"kExecutionOnGoing", self->_numOfTraversal, @"NumOfTraversal", self->_lastUpdateDate, @"LastUpdateDate", self->_freeDiskSpaceAtStart, @"FreeDiskSpaceAtStart", self->_aveElem, @"DenominatorTable", 0];
    v22 = v5;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v22];
    v8 = v22;

    if (v8)
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003FE6C();
      }
    }

    pathToDisk = [(SDAState *)self pathToDisk];
    v11 = [v7 writeToFile:pathToDisk atomically:1];

    v12 = SALog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pathToDisk2 = [(SDAState *)self pathToDisk];
        *buf = 138412290;
        v25 = pathToDisk2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "successful write to file %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003FEE0(self);
    }
  }

  else
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FDF4(v6, v15, v16, v17, v18, v19, v20, v21);
    }

    v8 = v5;
  }
}

- (void)fadeOldEntries
{
  v3 = [(NSMutableDictionary *)self->_aveElem copy];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000247C8;
  v4[3] = &unk_1000653C0;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)getElemForBundleId:(id)id volType:(int)type residency:(unsigned int)residency urgency:(int)urgency state:(int)state create:(BOOL)create
{
  createCopy = create;
  idCopy = id;
  v15 = [NSNumber numberWithUnsignedLong:type];
  v16 = [NSNumber numberWithUnsignedLong:residency];
  v17 = [NSNumber numberWithUnsignedLong:urgency];
  v18 = [NSNumber numberWithUnsignedLong:state];
  v19 = [(NSMutableDictionary *)self->_aveElem objectForKey:idCopy];
  if (v19)
  {
LABEL_4:
    v20 = [v19 objectForKey:v15];
    if (!v20)
    {
      if (!createCopy)
      {
        v23 = 0;
        goto LABEL_19;
      }

      v20 = objc_opt_new();
      [v19 setObject:v20 forKey:v15];
    }

    v25 = v16;
    v21 = [v20 objectForKey:v16];
    if (!v21)
    {
      if (!createCopy)
      {
        v23 = 0;
        goto LABEL_18;
      }

      v21 = objc_opt_new();
      [v20 setObject:v21 forKey:v25];
    }

    v22 = [v21 objectForKey:v17];
    if (!v22)
    {
      if (!createCopy)
      {
        v23 = 0;
LABEL_17:

LABEL_18:
        v16 = v25;

LABEL_19:
        goto LABEL_20;
      }

      v22 = objc_opt_new();
      [v21 setObject:v22 forKey:v17];
    }

    v23 = [v22 objectForKey:v18];
    if (!v23 && createCopy)
    {
      v23 = objc_opt_new();
      [v22 setObject:v23 forKey:v18];
    }

    goto LABEL_17;
  }

  if (createCopy)
  {
    v19 = objc_opt_new();
    [(NSMutableDictionary *)self->_aveElem setObject:v19 forKey:idCopy];
    goto LABEL_4;
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (void)enumerateAllAverageElementsOfVolType:(int)type UsingBlock:(id)block
{
  blockCopy = block;
  aveElem = self->_aveElem;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024F74;
  v9[3] = &unk_100065410;
  typeCopy = type;
  v10 = blockCopy;
  v8 = blockCopy;
  [(NSMutableDictionary *)aveElem enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)updateSdaStateWithDenominatorInfo:(id)info volType:(int)type volPath:(id)path
{
  v5 = *&type;
  pathCopy = path;
  daysSinceLastUpdate = self->_daysSinceLastUpdate;
  infoCopy = info;
  unsignedLongLongValue = [(NSNumber *)daysSinceLastUpdate unsignedLongLongValue];
  [(SDAState *)self enumerateAllAverageElementsOfVolType:v5 UsingBlock:&stru_100065450];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000252D4;
  v18[3] = &unk_1000654A0;
  v18[4] = self;
  v21 = v5;
  v12 = pathCopy;
  v19 = v12;
  v20 = unsignedLongLongValue;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v18];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100025480;
  v14[3] = &unk_1000654F0;
  v14[4] = self;
  v15 = v12;
  v17 = v5;
  v16 = unsignedLongLongValue;
  v13 = v12;
  [(SDAState *)self enumerateAllAverageElementsOfVolType:v5 UsingBlock:v14];
}

- (void)adjAveragesForBundleId:(id)id volType:(int)type volPath:(id)path residency:(unsigned int)residency WithNumOfPristine:(unint64_t)pristine sizeOfPristine:(unint64_t)ofPristine numOfDays:(unint64_t)days
{
  v9 = *&residency;
  v11 = *&type;
  idCopy = id;
  pathCopy = path;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15 = [(NSMutableDictionary *)self->_histogramPerVol objectForKey:pathCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000258A0;
  v19[3] = &unk_1000654C8;
  v19[4] = &v32;
  v19[5] = &v28;
  v19[6] = &v24;
  v19[7] = &v20;
  [v15 getNumAndSizeOfEventsForBundleId:idCopy volType:v11 residency:v9 reply:v19];
  v16 = [(SDAState *)self getElemForBundleId:idCopy volType:v11 residency:v9 urgency:0 state:0 create:1];
  [v16 adjElemWithNumOfPristine:pristine sizeOfPristine:ofPristine numOfClearedPristine:v25[3] sizeOfClearedPristine:v21[3] numOfEvents:v33[3] sizeOfEvents:v29[3] numOfDays:days];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)print
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sdaVersion = self->_sdaVersion;
    v23 = 138412290;
    v24 = sdaVersion;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sdaVersion %@", &v23, 0xCu);
  }

  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buildVersion = self->_buildVersion;
    v23 = 138412290;
    v24 = buildVersion;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buildVersion %@", &v23, 0xCu);
  }

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    lastUpdateDate = self->_lastUpdateDate;
    v23 = 138412290;
    v24 = lastUpdateDate;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "lastUpdateDate %@", &v23, 0xCu);
  }

  v9 = SALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    numOfTraversal = self->_numOfTraversal;
    v23 = 138412290;
    v24 = numOfTraversal;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "numOfTraversal %@", &v23, 0xCu);
  }

  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    freeDiskSpaceAtStart = self->_freeDiskSpaceAtStart;
    v23 = 138412290;
    v24 = freeDiskSpaceAtStart;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "freeDiskSpaceAtStart %@", &v23, 0xCu);
  }

  v13 = SALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    pathToDisk = self->_pathToDisk;
    v23 = 138412290;
    v24 = pathToDisk;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "pathToDisk %@", &v23, 0xCu);
  }

  v15 = SALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    daysSinceLastUpdate = self->_daysSinceLastUpdate;
    v23 = 138412290;
    v24 = daysSinceLastUpdate;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "daysSinceLastUpdate %@", &v23, 0xCu);
  }

  v17 = SALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    startExecutionDate = self->_startExecutionDate;
    v23 = 138412290;
    v24 = startExecutionDate;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "startExecutionDate %@", &v23, 0xCu);
  }

  v19 = SALog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_numOfTraversal;
    v23 = 138412290;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "numOfTraversal %@", &v23, 0xCu);
  }

  v21 = SALog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    executionOnGoing = self->_executionOnGoing;
    v23 = 138412290;
    v24 = executionOnGoing;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "executionOnGoing %@", &v23, 0xCu);
  }

  [(NSMutableDictionary *)self->_lastEventTimePerVol enumerateKeysAndObjectsUsingBlock:&stru_100065530];
  [(NSMutableDictionary *)self->_lastEventIdPerVol enumerateKeysAndObjectsUsingBlock:&stru_100065570];
  [(NSMutableDictionary *)self->_aveElem enumerateKeysAndObjectsUsingBlock:&stru_1000655B0];
}

@end