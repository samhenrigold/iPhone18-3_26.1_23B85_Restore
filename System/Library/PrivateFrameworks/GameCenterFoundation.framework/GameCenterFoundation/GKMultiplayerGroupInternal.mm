@interface GKMultiplayerGroupInternal
+ (id)secureCodedPropertyKeys;
- (id)description;
@end

@implementation GKMultiplayerGroupInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_5 != -1)
  {
    +[GKMultiplayerGroupInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_5;

  return v3;
}

void __53__GKMultiplayerGroupInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"participants";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v8[0] = v4;
  v7[1] = @"numberOfAutomached";
  v8[1] = objc_opt_class();
  v7[2] = @"playedAt";
  v8[2] = objc_opt_class();
  v7[3] = @"groupID";
  v8[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_5;
  secureCodedPropertyKeys_sSecureCodedKeys_5 = v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupID = [(GKMultiplayerGroupInternal *)self groupID];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKMultiplayerGroupInternal numberOfAutomached](self, "numberOfAutomached")}];
  participants = [(GKMultiplayerGroupInternal *)self participants];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{(-[GKMultiplayerGroupInternal playedAt](self, "playedAt") / 1000)}];
  v8 = [v3 stringWithFormat:@"groupID: %@, number of automatched: %@ participants: %@ playedAt: %@", groupID, v5, participants, v7];

  return v8;
}

@end