@interface SPCalculationDatastore
+ (void)refreshCurrencyCache;
- (id)performQuery:(id)query;
@end

@implementation SPCalculationDatastore

+ (void)refreshCurrencyCache
{
  v4 = +[Converter currencyCacheLastRefreshDate];
  [v4 timeIntervalSinceReferenceDate];
  if (CFAbsoluteTimeGetCurrent() - v2 > 86400.0)
  {
    v3 = dispatch_get_global_queue(-32768, 0);
    tracing_dispatch_async();
  }
}

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v76 = *v5;
  v77 = v6;
  v78 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPCalculationDatastore performQuery:]";
  si_tracing_log_span_begin();
  v10 = SPLogForSPLogCategoryDefault();
  v11 = v10;
  if (gSPLogDebugAsDefault)
  {
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v10, v12))
  {
    v13 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 1024;
    *&buf[14] = qos_class_self();
    _os_log_impl(&_mh_execute_header, v11, v12, "QOS %@ performQuery: %d", buf, 0x12u);
  }

  v14 = SPLogForSPLogCategoryTelemetry();
  externalID = [queryCopy externalID];
  if (externalID && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "calculationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
  }

  disabledBundles = [queryCopy disabledBundles];
  v17 = [disabledBundles containsObject:@"com.apple.calculator"];

  if (v17 & 1) != 0 || ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v18 = 0;
  }

  else
  {
    queryIdent = [queryCopy queryIdent];
    queryContext = [queryCopy queryContext];
    searchString = [queryContext searchString];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v82 = sub_10002E1F0;
    v83 = sub_10002E200;
    v84 = 0;
    v46 = [[SPCalculationDatastoreToken alloc] initWithStore:self];
    [queryCopy externalID];
    kdebug_trace();
    v24 = [SFStartLocalSearchFeedback alloc];
    queryContext2 = [queryCopy queryContext];
    v50 = [v24 initWithInput:searchString triggerEvent:objc_msgSend(queryContext2 indexType:"whyQuery") queryId:{2, queryIdent}];

    v26 = +[SPFeedbackProxy sharedProxy];
    queryIdent2 = [queryCopy queryIdent];
    connection = [queryCopy connection];
    bundleID = [connection bundleID];
    [v26 sendFeedbackType:5 feedback:v50 queryId:queryIdent2 clientID:bundleID];

    v30 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v31 = dispatch_group_create();
    v32 = *(v5 + 16);
    v73 = *v5;
    v74 = v32;
    v75 = *(v5 + 32);
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10002E208;
    v64[3] = &unk_1000930D0;
    v69 = v73;
    v70 = v32;
    v71 = v75;
    v48 = searchString;
    v65 = v48;
    group = v31;
    v66 = group;
    v33 = queryCopy;
    v72 = queryIdent;
    v67 = v33;
    v68 = buf;
    v49 = objc_retainBlock(v64);
    v34 = objc_opt_new();
    v35 = +[NSLocale autoupdatingCurrentLocale];
    [v34 setLocale:v35];

    [v34 setUsesGroupingSeparator:1];
    [v34 setMaximumIntegerDigits:20];
    [v34 setMaximumFractionDigits:10];
    [v34 setNumberStyle:1];
    v79[0] = CalculateKeyAllowPartialExpressions;
    v79[1] = CalculateKeyNumberFormatter;
    v80[0] = &__kCFBooleanTrue;
    v80[1] = v34;
    v79[2] = CalculateKeyAllowConversions;
    disabledBundles2 = [v33 disabledBundles];
    v37 = [disabledBundles2 containsObject:@"com.apple.conversion"];
    v38 = &__kCFBooleanFalse;
    if (!v37)
    {
      v38 = &__kCFBooleanTrue;
    }

    v80[2] = v38;
    v80[3] = &__kCFBooleanTrue;
    v79[3] = CalculateKeyAutoScientificNotation;
    v79[4] = CalculateKeyConvertTrivial;
    v80[4] = &__kCFBooleanTrue;
    v80[5] = &__kCFBooleanTrue;
    v79[5] = CalculateKeyIgnoreProbableSearches;
    v79[6] = CalculateKeyAllowEqualSign;
    v80[6] = &__kCFBooleanTrue;
    v47 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:7];

    dispatch_group_enter(group);
    v39 = [Calculate evaluate:v48 options:v47 resultHandler:v49];
    objc_initWeak(&location, v33);
    v40 = +[SDController workQueue];
    v41 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002EA38;
    block[3] = &unk_1000930F8;
    v59 = v73;
    v60 = v74;
    v61 = v75;
    objc_copyWeak(&v58, &location);
    v62 = v30;
    v42 = v46;
    v53 = v42;
    selfCopy = self;
    v57 = buf;
    v55 = v50;
    v56 = v33;
    v43 = v50;
    v44 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v41, 0, block);
    dispatch_group_notify(group, v40, v44);

    v45 = v56;
    v18 = v42;

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  si_tracing_log_span_end();
  v19 = v77;
  *v5 = v76;
  *(v5 + 16) = v19;
  *(v5 + 32) = v78;

  return v18;
}

@end