@interface GKPlayerActivityRelationshipIcon
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipIcon)initWithDictionary:(id)dictionary;
@end

@implementation GKPlayerActivityRelationshipIcon

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__GKPlayerActivityRelationshipIcon_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_365 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_365, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_364;

  return v2;
}

void __59__GKPlayerActivityRelationshipIcon_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipIcon;
  v1 = objc_msgSendSuper2(&v5, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v6[0] = @"url";
  v7[0] = objc_opt_class();
  v6[1] = @"platform";
  v7[1] = objc_opt_class();
  v6[2] = @"width";
  v7[2] = objc_opt_class();
  v6[3] = @"height";
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_364;
  secureCodedPropertyKeys_sSecureCodedKeys_364 = v2;
}

- (GKPlayerActivityRelationshipIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = GKPlayerActivityRelationshipIcon;
  v5 = [(GKPlayerActivityRelationshipIcon *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    [(GKPlayerActivityRelationshipIcon *)v5 setUrl:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
    [(GKPlayerActivityRelationshipIcon *)v5 setPlatform:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v7]];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"width"];
    [(GKPlayerActivityRelationshipIcon *)v5 setWidth:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"height"];
    [(GKPlayerActivityRelationshipIcon *)v5 setHeight:v9];
  }

  return v5;
}

@end