@interface GKTurnBasedExchangeReplyInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKTurnBasedExchangeReplyInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_443 != -1)
  {
    +[GKTurnBasedExchangeReplyInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_442;

  return v3;
}

void __59__GKTurnBasedExchangeReplyInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v11[0] = objc_opt_class();
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0, @"recipientIndex", @"localizableMessage"}];
  v11[1] = v7;
  v10[2] = @"data";
  v11[2] = objc_opt_class();
  v10[3] = @"replyDate";
  v11[3] = objc_opt_class();
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v9 = secureCodedPropertyKeys_sSecureCodedKeys_442;
  secureCodedPropertyKeys_sSecureCodedKeys_442 = v8;
}

@end