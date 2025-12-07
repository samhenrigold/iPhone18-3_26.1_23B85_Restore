@interface GKGameGenre
+ (id)secureCodedPropertyKeys;
- (GKGameGenre)initWithGenreID:(id)d name:(id)name parentID:(id)iD;
- (id)description;
@end

@implementation GKGameGenre

- (GKGameGenre)initWithGenreID:(id)d name:(id)name parentID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = GKGameGenre;
  v11 = [(GKGameGenre *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    genreID = v11->_genreID;
    v11->_genreID = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [iDCopy copy];
    parentID = v11->_parentID;
    v11->_parentID = v16;
  }

  return v11;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_170 != -1)
  {
    +[GKGameGenre secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_169;

  return v3;
}

void __38__GKGameGenre_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"genreID";
  v5[0] = objc_opt_class();
  v4[1] = @"name";
  v5[1] = objc_opt_class();
  v4[2] = @"parentID";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_169;
  secureCodedPropertyKeys_sSecureCodedKeys_169 = v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  genreID = [(GKGameGenre *)self genreID];
  name = [(GKGameGenre *)self name];
  parentID = [(GKGameGenre *)self parentID];
  v9 = [v3 stringWithFormat:@"%@: genreID: %@, name: %@, parentID: %@", v5, genreID, name, parentID];

  return v9;
}

@end