@interface GKLeaderboardScoreRangeRequest
- (id)serverRequestWithService:(id)service;
- (void)generateScoresFromServerResponse:(id)response service:(id)service context:(id)context timeToLive:(double)live handler:(id)handler;
- (void)loadScoresWithService:(id)service context:(id)context handler:(id)handler;
- (void)sanitizeRange;
@end

@implementation GKLeaderboardScoreRangeRequest

- (void)sanitizeRange
{
  v2 = *(self + OBJC_IVAR___GKLeaderboardScoreRangeRequest__range);
  v3 = vcgtq_u64(v2, vdupq_n_s64(1uLL));
  *(self + OBJC_IVAR___GKLeaderboardScoreRangeRequest__range) = vsubq_s64(vandq_s8(v2, v3), vmvnq_s8(v3));
}

- (id)serverRequestWithService:(id)service
{
  gameBundleID = [(GKLeaderboardScoreRangeRequest *)self gameBundleID];
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
  serverTimeScope = [(GKLeaderboardScoreRangeRequest *)self serverTimeScope];
  serverPlayerScope = [(GKLeaderboardScoreRangeRequest *)self serverPlayerScope];
  [(GKLeaderboardScoreRangeRequest *)self range];
  v16 = [NSNumber numberWithInteger:v4];
  v17 = [NSNumber numberWithInteger:[(GKLeaderboardScoreRangeRequest *)self range]];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);

  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];
  identifier = [(GKLeaderboardScoreRangeRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(GKLeaderboardScoreRangeRequest *)self identifier];
  }

  else
  {
    groupIdentifier = [(GKLeaderboardScoreRangeRequest *)self groupIdentifier];

    if (!groupIdentifier)
    {
      goto LABEL_6;
    }

    identifier2 = [(GKLeaderboardScoreRangeRequest *)self groupIdentifier];
  }

  v10 = identifier2;
  [v6 setObject:identifier2 forKeyedSubscript:@"category"];

LABEL_6:

  return v6;
}

- (void)generateScoresFromServerResponse:(id)response service:(id)service context:(id)context timeToLive:(double)live handler:(id)handler
{
  responseCopy = response;
  serviceCopy = service;
  handlerCopy = handler;
  contextCopy = context;
  clientProxy = [serviceCopy clientProxy];
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 196, "[GKLeaderboardScoreRangeRequest(GKGameStatService) generateScoresFromServerResponse:service:context:timeToLive:handler:]"];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v16 context:contextCopy client:clientProxy];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000F51BC;
  v27[3] = &unk_1003626D8;
  v28 = responseCopy;
  selfCopy = self;
  v18 = v17;
  v30 = v18;
  v31 = serviceCopy;
  v19 = serviceCopy;
  v20 = responseCopy;
  [v18 performOnManagedObjectContext:v27];
  replyQueue = [clientProxy replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F54B4;
  v24[3] = &unk_100360EB0;
  v25 = v18;
  v26 = handlerCopy;
  v22 = v18;
  v23 = handlerCopy;
  [v22 notifyOnQueue:replyQueue block:v24];
}

- (void)loadScoresWithService:(id)service context:(id)context handler:(id)handler
{
  serviceCopy = service;
  contextCopy = context;
  handlerCopy = handler;
  clientProxy = [serviceCopy clientProxy];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 240, "[GKLeaderboardScoreRangeRequest(GKGameStatService) loadScoresWithService:context:handler:]"];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v12 context:contextCopy client:clientProxy];

  replyQueue = [clientProxy replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F5720;
  v24[3] = &unk_100361F90;
  v24[4] = self;
  v25 = serviceCopy;
  v15 = v13;
  v26 = v15;
  v27 = contextCopy;
  v16 = contextCopy;
  v17 = serviceCopy;
  [v15 performOnQueue:replyQueue block:v24];

  replyQueue2 = [clientProxy replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F5AC4;
  v21[3] = &unk_100360EB0;
  v22 = v15;
  v23 = handlerCopy;
  v19 = v15;
  v20 = handlerCopy;
  [v19 notifyOnQueue:replyQueue2 block:v21];
}

@end