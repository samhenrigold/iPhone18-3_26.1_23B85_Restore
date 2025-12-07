@interface GKGameRecordInternal
+ (id)gameRecordForGame:(id)game;
+ (id)secureCodedPropertyKeys;
- (void)updateWithGame:(id)game;
@end

@implementation GKGameRecordInternal

+ (id)gameRecordForGame:(id)game
{
  gameCopy = game;
  v4 = +[(GKInternalRepresentation *)GKGameRecordInternal];
  [v4 updateWithGame:gameCopy];

  return v4;
}

- (void)updateWithGame:(id)game
{
  v17 = *MEMORY[0x277D85DE8];
  gameCopy = game;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  secureCodedPropertyKeys = [objc_opt_class() secureCodedPropertyKeys];
  v6 = [secureCodedPropertyKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(secureCodedPropertyKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [gameCopy valueForKey:v10];
        [(GKGameRecordInternal *)self setValue:v11 forKey:v10];
      }

      v7 = [secureCodedPropertyKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__GKGameRecordInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_223 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_223, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_222;

  return v2;
}

void __47__GKGameRecordInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___GKGameRecordInternal;
  v1 = objc_msgSendSuper2(&v5, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v6[0] = @"score";
  v7[0] = objc_opt_class();
  v6[1] = @"lastPlayedDate";
  v7[1] = objc_opt_class();
  v6[2] = @"purchaseDate";
  v7[2] = objc_opt_class();
  v6[3] = @"achievements";
  v7[3] = objc_opt_class();
  v6[4] = @"achievementPoints";
  v7[4] = objc_opt_class();
  v6[5] = @"friendRank";
  v7[5] = objc_opt_class();
  v6[6] = @"maxFriendRank";
  v7[6] = objc_opt_class();
  v6[7] = @"rank";
  v7[7] = objc_opt_class();
  v6[8] = @"maxRank";
  v7[8] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:9];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_222;
  secureCodedPropertyKeys_sSecureCodedKeys_222 = v2;
}

@end