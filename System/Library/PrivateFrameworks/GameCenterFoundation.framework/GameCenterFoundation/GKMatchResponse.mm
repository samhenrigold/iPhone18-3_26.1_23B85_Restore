@interface GKMatchResponse
+ (id)secureCodedPropertyKeys;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isNetworkError;
- (BOOL)isTimeout;
- (BOOL)transitionToState:(int64_t)state;
@end

@implementation GKMatchResponse

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_433 != -1)
  {
    +[GKMatchResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_432;

  return v3;
}

void __42__GKMatchResponse_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v7[0] = @"rid";
  v8[0] = objc_opt_class();
  v7[1] = @"matchID";
  v8[1] = objc_opt_class();
  v7[2] = @"matches";
  v2 = +[GKServiceInterface plistClasses];
  v8[2] = v2;
  v7[3] = @"sessionToken";
  v8[3] = objc_opt_class();
  v7[4] = @"relayPushes";
  v3 = +[GKServiceInterface plistClasses];
  v8[4] = v3;
  v7[5] = @"cdxTicket";
  v8[5] = objc_opt_class();
  v7[6] = @"selfPseudonym";
  v8[6] = objc_opt_class();
  v7[7] = @"serverRequest";
  v4 = +[GKServiceInterface plistClasses];
  v8[7] = v4;
  v7[8] = @"transportVersionToUse";
  v8[8] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:9];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_432;
  secureCodedPropertyKeys_sSecureCodedKeys_432 = v5;
}

- (BOOL)isFinished
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state > 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 5;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isTimeout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 6;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isNetworkError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 7;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)transitionToState:(int64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = 0;
  if (state <= 3)
  {
    if (state == 1)
    {
      if (!selfCopy->_state)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

    if (state == 2 || state == 3)
    {
LABEL_3:
      if (selfCopy->_state < 4)
      {
LABEL_4:
        selfCopy->_state = state;
        [(GKMatchResponse *)selfCopy _incrementSequence];
        v5 = 1;
        goto LABEL_11;
      }

LABEL_10:
      v5 = 0;
    }
  }

  else if ((state - 4) < 4)
  {
    goto LABEL_3;
  }

LABEL_11:
  objc_sync_exit(selfCopy);

  return v5;
}

@end