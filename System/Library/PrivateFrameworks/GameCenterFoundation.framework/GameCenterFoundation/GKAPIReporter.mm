@interface GKAPIReporter
+ (id)reporter;
- (id)utilityService;
- (void)recordClickWithAction:(id)action targetId:(id)id targetType:(id)type pageId:(id)pageId pageType:(id)pageType hostApp:(id)app app:(id)a9 additionalFields:(id)self0;
- (void)recordFriendInviteActivityEventAtStage:(unint64_t)stage hostApp:(id)app;
- (void)recordInviteFriendClickEventWithPageType:(id)type pageId:(id)id pushBased:(BOOL)based knownRecipient:(BOOL)recipient location:(id)location;
- (void)recordLoadUrlMetrics:(id)metrics;
- (void)recordMultiplayerActivityMetrics:(id)metrics;
- (void)recordPageWithID:(id)d pageContext:(id)context pageType:(id)type refApp:(id)app hostApp:(id)hostApp app:(id)a8 additionalFields:(id)fields;
- (void)sendMetrics:(id)metrics;
- (void)sendPerformanceMetrics:(id)metrics;
@end

@implementation GKAPIReporter

+ (id)reporter
{
  if (reporter_sDispatchOnceToken != -1)
  {
    +[GKAPIReporter reporter];
  }

  v3 = reporter_sReporter;

  return v3;
}

uint64_t __25__GKAPIReporter_reporter__block_invoke()
{
  v0 = objc_alloc_init(GKAPIReporter);
  v1 = reporter_sReporter;
  reporter_sReporter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)recordClickWithAction:(id)action targetId:(id)id targetType:(id)type pageId:(id)pageId pageType:(id)pageType hostApp:(id)app app:(id)a9 additionalFields:(id)self0
{
  v28[6] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v17 = a9;
  fieldsCopy = fields;
  v27[0] = @"eventType";
  v27[1] = @"actionType";
  v28[0] = @"click";
  v28[1] = action;
  v27[2] = @"targetId";
  v27[3] = @"targetType";
  v28[2] = id;
  v28[3] = type;
  v27[4] = @"pageId";
  v27[5] = @"pageType";
  v28[4] = pageId;
  v28[5] = pageType;
  v19 = MEMORY[0x277CBEAC0];
  pageTypeCopy = pageType;
  pageIdCopy = pageId;
  typeCopy = type;
  idCopy = id;
  actionCopy = action;
  v25 = [v19 dictionaryWithObjects:v28 forKeys:v27 count:6];

  v26 = [v25 mutableCopy];
  if (appCopy)
  {
    [v26 setObject:appCopy forKeyedSubscript:@"hostApp"];
  }

  if (v17)
  {
    [v26 setObject:v17 forKeyedSubscript:@"app"];
  }

  [v26 addEntriesFromDictionary:fieldsCopy];
  [(GKAPIReporter *)self sendMetrics:v26];
}

- (void)recordPageWithID:(id)d pageContext:(id)context pageType:(id)type refApp:(id)app hostApp:(id)hostApp app:(id)a8 additionalFields:(id)fields
{
  v27[4] = *MEMORY[0x277D85DE8];
  appCopy = app;
  hostAppCopy = hostApp;
  v17 = a8;
  fieldsCopy = fields;
  v26[0] = @"eventType";
  v26[1] = @"pageId";
  v27[0] = @"page";
  v27[1] = d;
  v26[2] = @"pageContext";
  v26[3] = @"pageType";
  v27[2] = context;
  v27[3] = type;
  v19 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  contextCopy = context;
  dCopy = d;
  v23 = [v19 dictionaryWithObjects:v27 forKeys:v26 count:4];

  v24 = [v23 mutableCopy];
  if (appCopy)
  {
    [v24 setObject:appCopy forKeyedSubscript:@"refApp"];
  }

  if (hostAppCopy)
  {
    [v24 setObject:hostAppCopy forKeyedSubscript:@"hostApp"];
  }

  if (v17)
  {
    [v24 setObject:v17 forKeyedSubscript:@"app"];
  }

  if (fieldsCopy)
  {
    [v24 addEntriesFromDictionary:fieldsCopy];
  }

  v25 = [v24 copy];
  [(GKAPIReporter *)self sendMetrics:v25];
}

- (void)recordMultiplayerActivityMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportMultiplayerActivityMetricsEvent:metricsCopy];
}

- (void)recordLoadUrlMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportLoadUrlMetricsEvent:metricsCopy];
}

- (void)recordInviteFriendClickEventWithPageType:(id)type pageId:(id)id pushBased:(BOOL)based knownRecipient:(BOOL)recipient location:(id)location
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (recipient)
  {
    v10 = @"invite";
  }

  else
  {
    v10 = @"inviteOthers";
  }

  if (based)
  {
    v11 = @"add";
  }

  else
  {
    v11 = @"navigate";
  }

  v18 = @"location";
  v19[0] = location;
  v12 = MEMORY[0x277CBEAC0];
  if (based)
  {
    v13 = @"button";
  }

  else
  {
    v13 = @"link";
  }

  locationCopy = location;
  idCopy = id;
  typeCopy = type;
  v17 = [v12 dictionaryWithObjects:v19 forKeys:&v18 count:1];

  [(GKAPIReporter *)self recordClickWithAction:v11 targetId:v10 targetType:v13 pageId:idCopy pageType:typeCopy additionalFields:v17];
}

- (void)recordFriendInviteActivityEventAtStage:(unint64_t)stage hostApp:(id)app
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [GKFriendInviteActivityEvent metricsFieldsForStage:stage hostApp:app];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKFriending;
  if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [GKFriendInviteActivityEvent stringForStage:stage];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "GKAPIReporter: Recording inviteActivity stage %@", &v11, 0xCu);
  }

  [(GKAPIReporter *)self sendMetrics:v6];
}

- (void)sendMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportMetricsEventWithTopic:@"xp_amp_gc_cs" shouldFlush:MEMORY[0x277CBEC28] metricsFields:metricsCopy];
}

- (void)sendPerformanceMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportPerformanceMetricsEvent:metricsCopy];
}

- (id)utilityService
{
  v2 = +[GKDaemonProxy daemonProxy];
  utilityService = [v2 utilityService];

  return utilityService;
}

@end