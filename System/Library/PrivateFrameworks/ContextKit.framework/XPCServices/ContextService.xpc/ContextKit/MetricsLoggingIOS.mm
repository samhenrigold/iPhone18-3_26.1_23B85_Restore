@interface MetricsLoggingIOS
- (MetricsLoggingIOS)init;
- (void)recordAssetInfo:(id)info;
- (void)recordFindResultsMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id;
- (void)recordInputLength:(unint64_t)length languageTag:(id)tag languageSupported:(BOOL)supported requestType:(unint64_t)type indexId:(id)id;
- (void)recordQueryEngagementWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength result:(id)result rank:(unint64_t)rank indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType;
- (void)recordQueryEventWithLuceneResultCount:(unint64_t)count error:(id)error requestType:(unint64_t)type indexId:(id)id;
- (void)recordQueryLuceneMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id;
- (void)recordResultsShownWithUserInputLength:(unint64_t)length count:(unint64_t)count couldHaveShown:(unint64_t)shown topicIds:(id)ids serverOverride:(BOOL)override indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)self0;
- (void)recordSlowFindResults:(BOOL)results requestType:(unint64_t)type indexId:(id)id coldEngine:(BOOL)engine;
- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType;
- (void)recordURLLookupSucceeded:(unint64_t)succeeded bundleId:(BOOL)id indexId:(id)indexId requestType:(unint64_t)type;
@end

@implementation MetricsLoggingIOS

- (MetricsLoggingIOS)init
{
  v73.receiver = self;
  v73.super_class = MetricsLoggingIOS;
  _init = [(MetricsLogging *)&v73 _init];
  if (_init)
  {
    v3 = [PETEventProperty freeValuedPropertyWithName:@"index"];
    v4 = [PETEventProperty freeValuedPropertyWithName:@"ab"];
    v72 = [PETEventProperty freeValuedPropertyWithName:@"languageTag"];
    v5 = [PETEventProperty propertyWithName:@"type" range:0 clampValues:22, 0];
    v6 = [PETEventProperty propertyWithName:@"qt" range:0 clampValues:4, 0];
    v68 = [PETEventProperty propertyWithName:@"supported" rangeMin:0 rangeMax:1];
    v69 = [PETEventProperty propertyWithName:@"cold" rangeMin:0 rangeMax:1];
    v7 = [PETDistributionEventTracker alloc];
    v84[0] = v3;
    v84[1] = v4;
    v84[2] = v5;
    v84[3] = v6;
    v8 = v5;
    v70 = v6;
    v9 = [NSArray arrayWithObjects:v84 count:4];
    v10 = [v7 initWithFeatureId:? event:? registerProperties:?];
    findResultsMsec = _init->_findResultsMsec;
    _init->_findResultsMsec = v10;

    v12 = [PETDistributionEventTracker alloc];
    v83[0] = v3;
    v83[1] = v4;
    v83[2] = v8;
    v83[3] = v6;
    v13 = [NSArray arrayWithObjects:v83 count:4];
    v14 = [v12 initWithFeatureId:@"Context" event:@"timing_lucene" registerProperties:v13];
    queryLuceneMsec = _init->_queryLuceneMsec;
    _init->_queryLuceneMsec = v14;

    v16 = [PETDistributionEventTracker alloc];
    v82[0] = v3;
    v82[1] = v4;
    v82[2] = v8;
    v71 = v8;
    v17 = [NSArray arrayWithObjects:v82 count:3];
    v18 = [v16 initWithFeatureId:@"Context" event:@"inputLength" registerProperties:v17];
    inputLength = _init->_inputLength;
    _init->_inputLength = v18;

    v20 = [PETScalarEventTracker alloc];
    v81[0] = v3;
    v81[1] = v4;
    v81[2] = v8;
    v21 = [PETEventProperty propertyWithName:@"num" range:0 clampValues:6, 1];
    v81[3] = v21;
    v22 = [PETEventProperty propertyWithName:@"err" range:0 clampValues:11, 1];
    v81[4] = v22;
    v23 = [NSArray arrayWithObjects:v81 count:5];
    v24 = [v20 initWithFeatureId:@"Context" event:@"queries" registerProperties:v23];
    queryEvent = _init->_queryEvent;
    _init->_queryEvent = v24;

    v26 = [PETScalarEventTracker alloc];
    v80[0] = v3;
    v80[1] = v4;
    v27 = [PETEventProperty propertyWithName:@"num" range:0 clampValues:6, 1];
    v80[2] = v27;
    v28 = [PETEventProperty propertyWithName:@"max" range:0 clampValues:6, 1];
    v80[3] = v28;
    v29 = [PETEventProperty propertyWithName:@"so" range:0 clampValues:2, 1];
    v80[4] = v29;
    v30 = [PETEventProperty propertyWithName:@"uql" range:0 clampValues:6, 1];
    v80[5] = v30;
    v31 = [NSArray arrayWithObjects:v80 count:6];
    v32 = [v26 initWithFeatureId:@"Context" event:@"shown" registerProperties:v31];
    shownEvent = _init->_shownEvent;
    _init->_shownEvent = v32;

    v34 = [PETScalarEventTracker alloc];
    v79[0] = v3;
    v79[1] = v4;
    v35 = [PETEventProperty propertyWithName:@"uql" range:0 clampValues:6, 1];
    v79[2] = v35;
    v36 = [PETEventProperty propertyWithName:@"rank" range:0 clampValues:6, 1];
    v79[3] = v36;
    v37 = [NSArray arrayWithObjects:v79 count:4];
    v38 = [v34 initWithFeatureId:@"Context" event:@"engagement" registerProperties:v37];
    engagementEvent = _init->_engagementEvent;
    _init->_engagementEvent = v38;

    v40 = [PETScalarEventTracker alloc];
    v78[0] = v3;
    v78[1] = v4;
    v41 = [PETEventProperty propertyWithName:@"uql" range:0 clampValues:6, 1];
    v78[2] = v41;
    v42 = [NSArray arrayWithObjects:v78 count:3];
    v43 = [v40 initWithFeatureId:@"Context" event:@"transaction" registerProperties:v42];
    transactionEvent = _init->_transactionEvent;
    _init->_transactionEvent = v43;

    v45 = [PETScalarEventTracker alloc];
    v77[0] = v3;
    v77[1] = v4;
    v77[2] = v71;
    v46 = [PETEventProperty propertyWithName:@"success" rangeMin:0 rangeMax:2];
    v77[3] = v46;
    v47 = [PETEventProperty propertyWithName:@"lookType" rangeMin:0 rangeMax:1];
    v77[4] = v47;
    v48 = [NSArray arrayWithObjects:v77 count:5];
    v49 = [v45 initWithFeatureId:@"Context" event:@"urlLookup" registerProperties:v48];
    urlLookupEvent = _init->_urlLookupEvent;
    _init->_urlLookupEvent = v49;

    v51 = [PETScalarEventTracker alloc];
    v76[0] = v3;
    v76[1] = v4;
    v76[2] = v72;
    v76[3] = v68;
    v52 = [NSArray arrayWithObjects:v76 count:4];
    v53 = [v51 initWithFeatureId:@"Context" event:@"language" registerProperties:v52];
    languageSupportedEvent = _init->_languageSupportedEvent;
    _init->_languageSupportedEvent = v53;

    v55 = [PETScalarEventTracker alloc];
    v75[0] = v3;
    v75[1] = v4;
    v75[2] = v69;
    v56 = [NSArray arrayWithObjects:v75 count:3];
    v57 = [v55 initWithFeatureId:@"Context" event:@"findResultsTimeout" registerProperties:v56];
    findResultsTimeoutEvent = _init->_findResultsTimeoutEvent;
    _init->_findResultsTimeoutEvent = v57;

    v59 = [PETScalarEventTracker alloc];
    v74[0] = v3;
    v74[1] = v4;
    v74[2] = v69;
    v60 = [NSArray arrayWithObjects:v74 count:3];
    v61 = [v59 initWithFeatureId:@"Context" event:@"findResultsSlow" registerProperties:v60];
    findResultsSlowEvent = _init->_findResultsSlowEvent;
    _init->_findResultsSlowEvent = v61;

    v63 = [[_DPStringRecorder alloc] initWithKey:@"com.apple.contextkit.TopicShown"];
    dpShownRecorder = _init->_dpShownRecorder;
    _init->_dpShownRecorder = v63;

    v65 = [[_DPStringRecorder alloc] initWithKey:@"com.apple.contextkit.TopicInteracted"];
    dpEngagedRecorder = _init->_dpEngagedRecorder;
    _init->_dpEngagedRecorder = v65;
  }

  return _init;
}

- (void)recordFindResultsMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id
{
  idCopy = id;
  if (requestType != 3)
  {
    v16.receiver = self;
    v16.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v16 recordFindResultsMsec:type queryType:requestType requestType:idCopy indexId:msec];
    if (requestType - 6 >= 3)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10029A494;
      v11[3] = &unk_100483AA0;
      v11[4] = self;
      v12 = idCopy;
      requestTypeCopy = requestType;
      typeCopy = type;
      msecCopy = msec;
      [(MetricsLogging *)self runInBackground:v11];
    }
  }
}

- (void)recordQueryLuceneMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id
{
  idCopy = id;
  if (requestType != 3)
  {
    v16.receiver = self;
    v16.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v16 recordQueryLuceneMsec:type queryType:requestType requestType:idCopy indexId:msec];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10029A72C;
    v11[3] = &unk_100483AA0;
    v11[4] = self;
    v12 = idCopy;
    requestTypeCopy = requestType;
    typeCopy = type;
    msecCopy = msec;
    [(MetricsLogging *)self runInBackground:v11];
  }
}

- (void)recordInputLength:(unint64_t)length languageTag:(id)tag languageSupported:(BOOL)supported requestType:(unint64_t)type indexId:(id)id
{
  supportedCopy = supported;
  tagCopy = tag;
  idCopy = id;
  if (type != 3)
  {
    v20.receiver = self;
    v20.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v20 recordInputLength:length languageTag:tagCopy languageSupported:supportedCopy requestType:type indexId:idCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10029A968;
    v14[3] = &unk_100483AC8;
    v14[4] = self;
    v15 = idCopy;
    typeCopy = type;
    lengthCopy = length;
    v16 = tagCopy;
    v19 = supportedCopy;
    [(MetricsLogging *)self runInBackground:v14];
  }
}

- (void)recordQueryEventWithLuceneResultCount:(unint64_t)count error:(id)error requestType:(unint64_t)type indexId:(id)id
{
  errorCopy = error;
  idCopy = id;
  if (type != 3)
  {
    v21.receiver = self;
    v21.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v21 recordQueryEventWithLuceneResultCount:count error:errorCopy requestType:type indexId:idCopy];
    if (errorCopy)
    {
      domain = [errorCopy domain];
      v13 = ContextKitErrorDomain;

      if (domain == v13)
      {
        code = [errorCopy code];
        if (code >= 0)
        {
          v14 = code;
        }

        else
        {
          v14 = -code;
        }
      }

      else
      {
        v14 = 8;
      }
    }

    else
    {
      v14 = 0;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10029ACC4;
    v16[3] = &unk_100483AA0;
    v16[4] = self;
    v17 = idCopy;
    typeCopy = type;
    countCopy = count;
    v20 = v14;
    [(MetricsLogging *)self runInBackground:v16];
  }
}

- (void)recordResultsShownWithUserInputLength:(unint64_t)length count:(unint64_t)count couldHaveShown:(unint64_t)shown topicIds:(id)ids serverOverride:(BOOL)override indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)self0
{
  overrideCopy = override;
  idsCopy = ids;
  idCopy = id;
  if (logType)
  {
    v18 = 1;
  }

  else
  {
    v18 = type > 0x12;
  }

  if (!v18 && ((1 << type) & 0x6A807) != 0)
  {
    v28.receiver = self;
    v28.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v28 recordResultsShownWithUserInputLength:length count:count couldHaveShown:shown topicIds:idsCopy serverOverride:overrideCopy indexId:idCopy requestType:type logType:0];
    if (length >= 5)
    {
      length = 5;
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10029AF64;
    v20[3] = &unk_100483AF0;
    v20[4] = self;
    v21 = idCopy;
    typeCopy = type;
    countCopy = count;
    shownCopy = shown;
    lengthCopy = length;
    v27 = overrideCopy;
    v22 = idsCopy;
    [(MetricsLogging *)self runInBackground:v20];
  }
}

- (void)recordQueryEngagementWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength result:(id)result rank:(unint64_t)rank indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType
{
  resultCopy = result;
  idCopy = id;
  if (logType)
  {
    v17 = 1;
  }

  else
  {
    v17 = type > 0x12;
  }

  if (!v17 && ((1 << type) & 0x6A807) != 0)
  {
    v25.receiver = self;
    v25.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v25 recordQueryEngagementWithUserInputLength:length completionLength:completionLength result:resultCopy rank:rank indexId:idCopy requestType:type logType:0];
    if (length >= 5)
    {
      length = 5;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10029B258;
    v19[3] = &unk_100483B18;
    v19[4] = self;
    v20 = idCopy;
    typeCopy = type;
    lengthCopy = length;
    rankCopy = rank;
    v21 = resultCopy;
    [(MetricsLogging *)self runInBackground:v19];
  }
}

- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType
{
  idCopy = id;
  if (!logType && type <= 0x12 && ((1 << type) & 0x6A807) != 0)
  {
    v17.receiver = self;
    v17.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v17 recordTransactionSuccessfulWithUserInputLength:length completionLength:completionLength indexId:idCopy requestType:type logType:0];
    if (length >= 5)
    {
      length = 5;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10029B508;
    v13[3] = &unk_100483B40;
    v13[4] = self;
    v14 = idCopy;
    typeCopy = type;
    lengthCopy = length;
    [(MetricsLogging *)self runInBackground:v13];
  }
}

- (void)recordAssetInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10029B69C;
  v5[3] = &unk_100483B68;
  infoCopy = info;
  selfCopy = self;
  v4 = infoCopy;
  [(MetricsLogging *)self runInBackground:v5];
}

- (void)recordSlowFindResults:(BOOL)results requestType:(unint64_t)type indexId:(id)id coldEngine:(BOOL)engine
{
  engineCopy = engine;
  resultsCopy = results;
  idCopy = id;
  if (type != 3)
  {
    v16.receiver = self;
    v16.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v16 recordSlowFindResults:resultsCopy requestType:type indexId:idCopy coldEngine:engineCopy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10029BAC0;
    v11[3] = &unk_100483B90;
    v14 = resultsCopy;
    v11[4] = self;
    v12 = idCopy;
    typeCopy = type;
    v15 = engineCopy;
    [(MetricsLogging *)self runInBackground:v11];
  }
}

- (void)recordURLLookupSucceeded:(unint64_t)succeeded bundleId:(BOOL)id indexId:(id)indexId requestType:(unint64_t)type
{
  idCopy = id;
  indexIdCopy = indexId;
  if (type != 3)
  {
    v16.receiver = self;
    v16.super_class = MetricsLoggingIOS;
    [(MetricsLogging *)&v16 recordURLLookupSucceeded:succeeded bundleId:idCopy indexId:indexIdCopy requestType:type];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10029BCC8;
    v11[3] = &unk_100483BB8;
    v11[4] = self;
    v12 = indexIdCopy;
    typeCopy = type;
    succeededCopy = succeeded;
    v15 = idCopy;
    [(MetricsLogging *)self runInBackground:v11];
  }
}

@end