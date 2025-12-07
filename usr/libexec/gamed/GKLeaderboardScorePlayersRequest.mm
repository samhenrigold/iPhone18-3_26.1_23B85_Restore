@interface GKLeaderboardScorePlayersRequest
- (id)serverRequestWithService:(id)service;
- (void)generateScoresFromServerResponse:(id)response service:(id)service context:(id)context timeToLive:(double)live handler:(id)handler;
- (void)loadScoresWithService:(id)service context:(id)context handler:(id)handler;
@end

@implementation GKLeaderboardScorePlayersRequest

- (id)serverRequestWithService:(id)service
{
  localPlayer = [service localPlayer];
  playerID = [localPlayer playerID];

  playerInternals = [(GKLeaderboardScorePlayersRequest *)self playerInternals];
  v7 = [playerInternals _gkMapWithBlock:&stru_100366760];

  if (v7)
  {
    if (([v7 containsObject:playerID] & 1) == 0)
    {
      v8 = [v7 arrayByAddingObject:playerID];

      v7 = v8;
    }
  }

  else
  {
    v20 = playerID;
    v7 = [NSArray arrayWithObjects:&v20 count:1];
  }

  gameBundleID = [(GKLeaderboardScorePlayersRequest *)self gameBundleID];
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
  serverTimeScope = [(GKLeaderboardScorePlayersRequest *)self serverTimeScope];
  serverPlayerScope = [(GKLeaderboardScorePlayersRequest *)self serverPlayerScope];
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);

  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];
  identifier = [(GKLeaderboardScorePlayersRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(GKLeaderboardScorePlayersRequest *)self identifier];
  }

  else
  {
    groupIdentifier = [(GKLeaderboardScorePlayersRequest *)self groupIdentifier];

    if (!groupIdentifier)
    {
      goto LABEL_10;
    }

    identifier2 = [(GKLeaderboardScorePlayersRequest *)self groupIdentifier];
  }

  v14 = identifier2;
  [v10 setObject:identifier2 forKeyedSubscript:@"category"];

LABEL_10:

  return v10;
}

- (void)generateScoresFromServerResponse:(id)response service:(id)service context:(id)context timeToLive:(double)live handler:(id)handler
{
  responseCopy = response;
  serviceCopy = service;
  handlerCopy = handler;
  contextCopy = context;
  clientProxy = [serviceCopy clientProxy];
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 311, "[GKLeaderboardScorePlayersRequest(GKGameStatService) generateScoresFromServerResponse:service:context:timeToLive:handler:]"];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v16 context:contextCopy client:clientProxy];

  if (responseCopy)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000F5FC8;
    v24[3] = &unk_1003626D8;
    v24[4] = self;
    v25 = responseCopy;
    v26 = v17;
    v27 = serviceCopy;
    [v26 performOnManagedObjectContext:v24];
  }

  replyQueue = [clientProxy replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F63C4;
  v21[3] = &unk_100360EB0;
  v22 = v17;
  v23 = handlerCopy;
  v19 = v17;
  v20 = handlerCopy;
  [v19 notifyOnQueue:replyQueue block:v21];
}

- (void)loadScoresWithService:(id)service context:(id)context handler:(id)handler
{
  serviceCopy = service;
  contextCopy = context;
  handlerCopy = handler;
  clientProxy = [serviceCopy clientProxy];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 358, "[GKLeaderboardScorePlayersRequest(GKGameStatService) loadScoresWithService:context:handler:]"];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v12 context:contextCopy client:clientProxy];

  replyQueue = [clientProxy replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F6648;
  v23[3] = &unk_100361BF8;
  v23[4] = self;
  v15 = serviceCopy;
  v24 = v15;
  v16 = clientProxy;
  v25 = v16;
  v17 = v13;
  v26 = v17;
  v18 = contextCopy;
  v27 = v18;
  [v17 performOnQueue:replyQueue block:v23];

  if (handlerCopy)
  {
    replyQueue2 = [v16 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F69C8;
    v20[3] = &unk_100360EB0;
    v22 = handlerCopy;
    v21 = v17;
    [v21 notifyOnQueue:replyQueue2 block:v20];
  }
}

@end