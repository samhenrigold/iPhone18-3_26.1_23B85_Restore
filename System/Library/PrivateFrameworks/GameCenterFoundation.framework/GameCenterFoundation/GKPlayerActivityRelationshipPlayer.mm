@interface GKPlayerActivityRelationshipPlayer
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipPlayer)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipPlayer

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKPlayerActivityRelationshipPlayer_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_337 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_337, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_336;

  return v2;
}

void __61__GKPlayerActivityRelationshipPlayer_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipPlayer;
  v1 = objc_msgSendSuper2(&v5, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v6 = @"playerInternal";
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_336;
  secureCodedPropertyKeys_sSecureCodedKeys_336 = v2;
}

- (GKPlayerActivityRelationshipPlayer)initWithDictionary:(id)dictionary
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = GKPlayerActivityRelationshipPlayer;
  v3 = [(GKPlayerActivityRelationshipBase *)&v11 initWithDictionary:dictionary];
  if (v3)
  {
    v4 = objc_opt_new();
    name = [(GKPlayerActivityRelationshipBase *)v3 name];
    [v4 setAlias:name];

    identifier = [(GKPlayerActivityRelationshipBase *)v3 identifier];
    [v4 setPlayerID:identifier];

    image = [(GKPlayerActivityRelationshipBase *)v3 image];

    if (image)
    {
      v12 = @"template";
      image2 = [(GKPlayerActivityRelationshipBase *)v3 image];
      v13[0] = image2;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [v4 setPhotos:v9];
    }

    [(GKPlayerActivityRelationshipPlayer *)v3 setPlayerInternal:v4];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = GKPlayerActivityRelationshipPlayer;
  v4 = [(GKPlayerActivityRelationshipBase *)&v8 description];
  playerInternal = [(GKPlayerActivityRelationshipPlayer *)self playerInternal];
  v6 = [v3 stringWithFormat:@"%@ \nplayer: %@", v4, playerInternal];

  return v6;
}

@end