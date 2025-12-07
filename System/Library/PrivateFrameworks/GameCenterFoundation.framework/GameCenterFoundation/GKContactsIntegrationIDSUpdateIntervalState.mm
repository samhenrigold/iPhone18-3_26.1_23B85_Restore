@interface GKContactsIntegrationIDSUpdateIntervalState
+ (id)secureCodedPropertyKeys;
- (id)initUpdateIntervalHandleCount:(unint64_t)count updateIntervalStartTime:(id)time;
@end

@implementation GKContactsIntegrationIDSUpdateIntervalState

- (id)initUpdateIntervalHandleCount:(unint64_t)count updateIntervalStartTime:(id)time
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = GKContactsIntegrationIDSUpdateIntervalState;
  v8 = [(GKContactsIntegrationIDSUpdateIntervalState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_updateIntervalHandleCount = count;
    objc_storeStrong(&v8->_updateIntervalStartTime, time);
  }

  return v9;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken != -1)
  {
    +[GKContactsIntegrationIDSUpdateIntervalState secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys;

  return v3;
}

void __70__GKContactsIntegrationIDSUpdateIntervalState_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"updateIntervalHandleCount";
  v4[1] = @"updateIntervalStartTime";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys;
  secureCodedPropertyKeys_sSecureCodedKeys = v2;
}

@end