@interface GKFamiliarPlayerInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKFamiliarPlayerInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKFamiliarPlayerInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_491 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_491, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_490;

  return v2;
}

void __51__GKFamiliarPlayerInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___GKFamiliarPlayerInternal;
  v1 = objc_msgSendSuper2(&v5, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v6[0] = @"firstName";
  v7[0] = objc_opt_class();
  v6[1] = @"lastName";
  v7[1] = objc_opt_class();
  v6[2] = @"friendLevel";
  v7[2] = objc_opt_class();
  v6[3] = @"compositeName";
  v7[3] = objc_opt_class();
  v6[4] = @"allowReceivingFriendInvites";
  v7[4] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_490;
  secureCodedPropertyKeys_sSecureCodedKeys_490 = v2;
}

@end