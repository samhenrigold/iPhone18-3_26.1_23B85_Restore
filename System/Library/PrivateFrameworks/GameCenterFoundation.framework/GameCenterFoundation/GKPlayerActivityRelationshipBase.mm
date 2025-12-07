@interface GKPlayerActivityRelationshipBase
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipBase)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipBase

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_300 != -1)
  {
    +[GKPlayerActivityRelationshipBase secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_299;

  return v3;
}

void __59__GKPlayerActivityRelationshipBase_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"name";
  v5[0] = objc_opt_class();
  v4[1] = @"image";
  v5[1] = objc_opt_class();
  v4[2] = @"identifier";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_299;
  secureCodedPropertyKeys_sSecureCodedKeys_299 = v2;
}

- (GKPlayerActivityRelationshipBase)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GKPlayerActivityRelationshipBase;
  v5 = [(GKPlayerActivityRelationshipBase *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    [(GKPlayerActivityRelationshipBase *)v5 setName:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    [(GKPlayerActivityRelationshipBase *)v5 setImage:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    [(GKPlayerActivityRelationshipBase *)v5 setIdentifier:v8];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(GKPlayerActivityRelationshipBase *)self identifier];
  name = [(GKPlayerActivityRelationshipBase *)self name];
  image = [(GKPlayerActivityRelationshipBase *)self image];
  v7 = [v3 stringWithFormat:@"id: %@\nname: %@ \nimage: %@", identifier, name, image];

  return v7;
}

@end