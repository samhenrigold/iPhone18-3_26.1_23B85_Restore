@interface GKAvatarArtwork
+ (id)secureCodedPropertyKeys;
- (GKAvatarArtwork)initWithType:(id)type metadata:(id)metadata;
@end

@implementation GKAvatarArtwork

- (GKAvatarArtwork)initWithType:(id)type metadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = GKAvatarArtwork;
  v9 = [(GKAvatarArtwork *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_14 != -1)
  {
    +[GKAvatarArtwork secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_14;

  return v3;
}

void __42__GKAvatarArtwork_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"metadata";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_14;
  secureCodedPropertyKeys_sSecureCodedKeys_14 = v2;
}

@end