@interface GKPlayerEmailInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation GKPlayerEmailInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_594 != -1)
  {
    +[GKPlayerEmailInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_593;

  return v3;
}

void __48__GKPlayerEmailInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"address";
  v4[1] = @"verified";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_593;
  secureCodedPropertyKeys_sSecureCodedKeys_593 = v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(GKPlayerEmailInternal *)self address];
    if (address)
    {
      address2 = [v5 address];
      v8 = [address isEqualToString:address2];
    }

    else
    {
      address2 = [(GKPlayerEmailInternal *)self addressSHA1];
      addressSHA1 = [v5 addressSHA1];
      v8 = [address2 isEqualToString:addressSHA1];
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
  address = [(GKPlayerEmailInternal *)self address];
  if (address)
  {
    [(GKPlayerEmailInternal *)self address];
  }

  else
  {
    [(GKPlayerEmailInternal *)self addressSHA1];
  }
  v4 = ;
  v5 = [v4 hash];

  return v5;
}

@end