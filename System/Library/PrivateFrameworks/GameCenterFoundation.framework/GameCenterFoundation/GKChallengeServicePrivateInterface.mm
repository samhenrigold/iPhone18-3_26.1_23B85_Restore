@interface GKChallengeServicePrivateInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKChallengeServicePrivateInterface

+ (void)configureInterface:(id)interface
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v6 = [v3 setWithArray:v5];
  [interfaceCopy setClasses:v6 forSelector:sel_getActiveLeaderboardChallengeDetailsForPlayerID_bundleID_allowStaleChallengeDetailsData_completionHandler_ argumentIndex:0 ofReply:1];
}

@end