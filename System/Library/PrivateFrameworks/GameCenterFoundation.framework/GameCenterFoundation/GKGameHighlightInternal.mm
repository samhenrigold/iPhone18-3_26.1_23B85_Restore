@interface GKGameHighlightInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKGameHighlightInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_350 != -1)
  {
    +[GKGameHighlightInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_349;

  return v3;
}

void __50__GKGameHighlightInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"adamID";
  v12[0] = objc_opt_class();
  v11[1] = @"artwork";
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getASCArtworkClass_softClass;
  v10 = getASCArtworkClass_softClass;
  if (!getASCArtworkClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getASCArtworkClass_block_invoke;
    v6[3] = &unk_2785DF380;
    v6[4] = &v7;
    __getASCArtworkClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v12[1] = objc_opt_class();
  v11[2] = @"title";
  v12[2] = objc_opt_class();
  v11[3] = @"subtitle";
  v12[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v5 = secureCodedPropertyKeys_sSecureCodedKeys_349;
  secureCodedPropertyKeys_sSecureCodedKeys_349 = v4;
}

@end