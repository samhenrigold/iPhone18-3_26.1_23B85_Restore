@interface GKInviteInitiateResponse
+ (id)secureCodedPropertyKeys;
@end

@implementation GKInviteInitiateResponse

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_349 != -1)
  {
    +[GKInviteInitiateResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_348;

  return v3;
}

void __51__GKInviteInitiateResponse_secureCodedPropertyKeys__block_invoke()
{
  v7[11] = *MEMORY[0x277D85DE8];
  v6[0] = @"invitedUserIDs";
  v0 = +[GKServiceInterface plistClasses];
  v7[0] = v0;
  v6[1] = @"approachUsed";
  v7[1] = objc_opt_class();
  v6[2] = @"cloudKitShareURL";
  v7[2] = objc_opt_class();
  v6[3] = @"sessionToken";
  v7[3] = objc_opt_class();
  v6[4] = @"playerTokenMap";
  v1 = +[GKServiceInterface plistClasses];
  v7[4] = v1;
  v6[5] = @"sessionID";
  v7[5] = objc_opt_class();
  v6[6] = @"selfPseudonym";
  v7[6] = objc_opt_class();
  v6[7] = @"selfPushToken";
  v7[7] = objc_opt_class();
  v6[8] = @"transportVersionToUse";
  v7[8] = objc_opt_class();
  v6[9] = @"gameParticipantsInfo";
  v2 = +[GKServiceInterface plistClasses];
  v7[9] = v2;
  v6[10] = @"lobbyParticipantsInfo";
  v3 = +[GKServiceInterface plistClasses];
  v7[10] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:11];
  v5 = secureCodedPropertyKeys_sSecureCodedKeys_348;
  secureCodedPropertyKeys_sSecureCodedKeys_348 = v4;
}

@end