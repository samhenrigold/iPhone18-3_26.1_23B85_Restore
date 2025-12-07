@interface GKFriendCodeDetailInternal
+ (id)secureCodedPropertyKeys;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation GKFriendCodeDetailInternal

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  creatorPlayerID = [(GKFriendCodeDetailInternal *)self creatorPlayerID];
  [v4 setCreatorPlayerID:creatorPlayerID];

  [v4 setFriendCodeState:{-[GKFriendCodeDetailInternal friendCodeState](self, "friendCodeState")}];
  [v4 setFriendCodeUsageCount:{-[GKFriendCodeDetailInternal friendCodeUsageCount](self, "friendCodeUsageCount")}];
  alreadyUsedPlayerIDs = [(GKFriendCodeDetailInternal *)self alreadyUsedPlayerIDs];
  [v4 setAlreadyUsedPlayerIDs:alreadyUsedPlayerIDs];

  return v4;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_18 != -1)
  {
    +[GKFriendCodeDetailInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_18;

  return v3;
}

void __53__GKFriendCodeDetailInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = @"creatorPlayerID";
  v8[0] = objc_opt_class();
  v7[1] = @"friendCode";
  v8[1] = objc_opt_class();
  v7[2] = @"friendCodeState";
  v8[2] = objc_opt_class();
  v7[3] = @"friendCodeUsageCount";
  v8[3] = objc_opt_class();
  v7[4] = @"alreadyUsedPlayerIDs";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v8[4] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_18;
  secureCodedPropertyKeys_sSecureCodedKeys_18 = v5;
}

@end