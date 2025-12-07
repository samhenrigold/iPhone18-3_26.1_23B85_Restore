@interface ADJingleRequestManager
+ (id)sharedInstance;
- (ADJingleRequestManager)init;
- (BOOL)canMakeJingleRequest;
- (id)makeSegmentRequest:(id)request forceSegments:(BOOL)segments withCompletion:(id)completion;
- (void)authenticateUser:(id)user;
- (void)jingleRequestCompleted:(id)completed;
- (void)startJingleRequest:(id)request;
@end

@implementation ADJingleRequestManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ADJingleRequestManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_5, block);
  }

  v2 = sharedInstance__instance_5;

  return v2;
}

uint64_t __40__ADJingleRequestManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__instance_5 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADJingleRequestManager)init
{
  v6.receiver = self;
  v6.super_class = ADJingleRequestManager;
  v2 = [(ADJingleRequestManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingJingleRequests = v2->_pendingJingleRequests;
    v2->_pendingJingleRequests = v3;
  }

  return v2;
}

- (void)startJingleRequest:(id)request
{
  requestCopy = request;
  pendingJingleRequests = self->_pendingJingleRequests;
  token = [requestCopy token];
  [(NSMutableDictionary *)pendingJingleRequests setObject:requestCopy forKeyedSubscript:token];

  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__ADJingleRequestManager_startJingleRequest___block_invoke;
  v9[3] = &unk_278C57E10;
  v10 = requestCopy;
  v8 = requestCopy;
  [workQueue addOperationWithBlock:v9];
}

- (id)makeSegmentRequest:(id)request forceSegments:(BOOL)segments withCompletion:(id)completion
{
  segmentsCopy = segments;
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy && [(ADJingleRequestManager *)self canMakeJingleRequest])
  {
    v10 = [ADJingleSegmentRequest alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke;
    v19[3] = &unk_278C58818;
    v19[4] = self;
    v20 = completionCopy;
    v11 = [(ADJingleSegmentRequest *)v10 init:requestCopy forceSegments:segmentsCopy withCompletion:v19];
    [(ADJingleRequestManager *)self startJingleRequest:v11];
    token = [v11 token];
    v13 = [token copy];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    canMakeJingleRequest = [(ADJingleRequestManager *)self canMakeJingleRequest];
    v16 = @"NO";
    if (canMakeJingleRequest)
    {
      v16 = @"YES";
    }

    v17 = [v14 stringWithFormat:@"Unable to make Segment Request for DSID %@. Has activeDSIDRecord and Network Connection: %@", requestCopy, v16];
    _ADLog();

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    v13 = 0;
  }

  return v13;
}

void __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke_2;
  v7[3] = &unk_278C57EB0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 addOperationWithBlock:v7];
}

uint64_t __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) jingleRequestCompleted:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)canMakeJingleRequest
{
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

  if (!activeDSIDRecord)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] There is no active DSID Record.", objc_opt_class()];
    _ADLog();
  }

  mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord2 = [mEMORY[0x277CE9658]2 activeDSIDRecord];
  v7 = activeDSIDRecord2 != 0;

  return v7;
}

- (void)jingleRequestCompleted:(id)completed
{
  pendingJingleRequests = self->_pendingJingleRequests;
  completedCopy = completed;
  token = [completedCopy token];
  v7 = [(NSMutableDictionary *)pendingJingleRequests objectForKey:token];

  if (v7)
  {
    v8 = self->_pendingJingleRequests;
    token2 = [completedCopy token];

    [(NSMutableDictionary *)v8 removeObjectForKey:token2];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    token2 = [completedCopy token];

    v10 = [v9 stringWithFormat:@"Received a response to Jingle request %@, but the request has already timed out this response will be ignored.", token2];;
    _ADLog();
  }
}

- (void)authenticateUser:(id)user
{
  userCopy = user;
  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ADJingleRequestManager_authenticateUser___block_invoke;
  v7[3] = &unk_278C57E88;
  v7[4] = self;
  v8 = userCopy;
  v6 = userCopy;
  [workQueue addOperationWithBlock:v7];
}

void __43__ADJingleRequestManager_authenticateUser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  if ([v2 educationModeEnabled])
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x277CE9638] sharedInstance];
  if ([v3 isManagedAppleID])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CE9638] sharedInstance];
  if ([v4 isProtoU13state])
  {

    goto LABEL_5;
  }

  v7 = [MEMORY[0x277CE9638] sharedInstance];
  v8 = [v7 isProtoTeenState];

  if (v8)
  {
LABEL_7:
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }

    return;
  }

  v9 = [MEMORY[0x277CE9638] sharedInstance];
  v25 = [v9 iTunesStoreAccount];

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  if (v25)
  {
    v12 = [v10 stringWithFormat:@"[%@]: Initiating Jingle authentication request.", v11];
    _ADLog();

    v13 = +[ADAMSBagManager sharedInstance];
    v14 = [v13 authenticateAccountThroughAMSOperation:v25];

    v15 = MEMORY[0x277CCACA8];
    v16 = objc_opt_class();
    v17 = v16;
    if (v14)
    {
      v18 = [v25 ams_DSID];
      v19 = [v18 stringValue];
      v20 = [v15 stringWithFormat:@"[%@]: Successfully authenticated account. The account is: %@", v17, v19];
      _ADLog();

      v21 = *(a1 + 40);
      if (v21)
      {
        v22 = *(v21 + 16);
LABEL_21:
        v22();
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    [v15 stringWithFormat:@"[%@]: FILE A RADAR IMMEDIATELY: We have an active account but could not authenticate it.", v16];
  }

  else
  {
    [v10 stringWithFormat:@"[%@]: Jingle authentication request failed, ACAccount is (null).", v11];
  }
  v23 = ;
  _ADLog();

  v24 = *(a1 + 40);
  if (v24)
  {
    v22 = *(v24 + 16);
    goto LABEL_21;
  }

LABEL_22:
}

@end