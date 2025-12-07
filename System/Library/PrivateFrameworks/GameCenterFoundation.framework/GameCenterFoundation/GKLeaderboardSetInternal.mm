@interface GKLeaderboardSetInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation GKLeaderboardSetInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_275 != -1)
  {
    +[GKLeaderboardSetInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_274;

  return v3;
}

void __51__GKLeaderboardSetInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0, @"identifier", @"groupIdentifier", @"title", @"leaderboardIdentifiers"}];
  v13[3] = v5;
  v12[4] = @"icons";
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v13[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v11 = secureCodedPropertyKeys_sSecureCodedKeys_274;
  secureCodedPropertyKeys_sSecureCodedKeys_274 = v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(GKLeaderboardSetInternal *)self identifier];
    identifier2 = [v5 identifier];
    if (identifier == identifier2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [identifier isEqualToString:identifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(GKLeaderboardSetInternal *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end