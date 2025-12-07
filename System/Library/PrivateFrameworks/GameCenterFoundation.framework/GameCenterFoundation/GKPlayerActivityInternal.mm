@interface GKPlayerActivityInternal
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityInternal)initWithServerResponse:(id)response;
- (id)description;
@end

@implementation GKPlayerActivityInternal

- (GKPlayerActivityInternal)initWithServerResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v20.receiver = self;
  v20.super_class = GKPlayerActivityInternal;
  v5 = [(GKPlayerActivityInternal *)&v20 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [responseCopy objectForKeyedSubscript:@"sections"];
    v8 = v7;
    if (v7)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[GKPlayerActivitySectionInternal alloc] initWithDictionary:*(*(&v16 + 1) + 8 * v12)];
            [array addObject:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    [(GKPlayerActivityInternal *)v5 setSections:array];
    v14 = [responseCopy objectForKeyedSubscript:@"continuation-key"];
    [(GKPlayerActivityInternal *)v5 setContinuationToken:v14];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sections = [(GKPlayerActivityInternal *)self sections];
  continuationToken = [(GKPlayerActivityInternal *)self continuationToken];
  v6 = [v3 stringWithFormat:@"sections: %@, continuationKey: %@", sections, continuationToken];

  return v6;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_277 != -1)
  {
    +[GKPlayerActivityInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_276;

  return v3;
}

void __51__GKPlayerActivityInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"sections";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v7[1] = @"continuationToken";
  v8[0] = v4;
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = secureCodedPropertyKeys_sSecureCodedKeys_276;
  secureCodedPropertyKeys_sSecureCodedKeys_276 = v5;
}

@end