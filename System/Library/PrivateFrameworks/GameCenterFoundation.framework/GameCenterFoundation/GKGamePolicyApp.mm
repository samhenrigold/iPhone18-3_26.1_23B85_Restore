@interface GKGamePolicyApp
+ (id)secureCodedPropertyKeys;
- (GKGamePolicyApp)initWithBundleID:(id)d adamID:(id)iD isGame:(BOOL)game;
@end

@implementation GKGamePolicyApp

- (GKGamePolicyApp)initWithBundleID:(id)d adamID:(id)iD isGame:(BOOL)game
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = GKGamePolicyApp;
  v11 = [(GKGamePolicyApp *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, d);
    objc_storeStrong(&v12->_adamID, iD);
    v12->_isGame = game;
  }

  return v12;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_4 != -1)
  {
    +[GKGamePolicyApp secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_4;

  return v3;
}

void __42__GKGamePolicyApp_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"bundleID";
  v5[0] = objc_opt_class();
  v4[1] = @"adamID";
  v5[1] = objc_opt_class();
  v4[2] = @"isGame";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_4;
  secureCodedPropertyKeys_sSecureCodedKeys_4 = v2;
}

@end