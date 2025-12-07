@interface TVRCMediaInfoRole
+ (id)roleWithDictionary:(id)dictionary;
- (BOOL)isEqualToRole:(id)role;
- (TVRCMediaInfoRole)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCMediaInfoRole

+ (id)roleWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(TVRCMediaInfoRole);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"personId"];
  [(TVRCMediaInfoRole *)v4 setCanonicalID:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"personName"];
  [(TVRCMediaInfoRole *)v4 setActorName:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"characterName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = &stru_287E5AB30;
  }

  [(TVRCMediaInfoRole *)v4 setCharacterName:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"roleTitle"];
  [(TVRCMediaInfoRole *)v4 setRoleDescription:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"url"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  [(TVRCMediaInfoRole *)v4 setProductPage:v10];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"images"];
  if ([v11 count])
  {
    allKeys = [v11 allKeys];
    firstObject = [allKeys firstObject];

    if (firstObject)
    {
      v14 = [v11 objectForKeyedSubscript:firstObject];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 objectForKeyedSubscript:@"url"];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  [(TVRCMediaInfoRole *)v4 setImageURLTemplate:v16];

  return v4;
}

- (BOOL)isEqualToRole:(id)role
{
  roleCopy = role;
  if (roleCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[TVRCMediaInfoRole productPage](self, "productPage"), v5 = objc_claimAutoreleasedReturnValue(), [roleCopy productPage], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v5 == 0) ^ (v6 == 0), v6, v5, (v7 & 1) == 0) && (-[TVRCMediaInfoRole imageURLTemplate](self, "imageURLTemplate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(roleCopy, "imageURLTemplate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = (v8 == 0) ^ (v9 == 0), v9, v8, (v10 & 1) == 0) && (-[TVRCMediaInfoRole canonicalID](self, "canonicalID"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(roleCopy, "canonicalID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13) && (-[TVRCMediaInfoRole actorName](self, "actorName"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(roleCopy, "actorName"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16) && (-[TVRCMediaInfoRole characterName](self, "characterName"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(roleCopy, "characterName"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19) && (-[TVRCMediaInfoRole roleDescription](self, "roleDescription"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(roleCopy, "roleDescription"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToString:", v21), v21, v20, v22) && (-[TVRCMediaInfoRole productPage](self, "productPage"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(roleCopy, "productPage"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "isEqual:", v24), v24, v23, v25))
  {
    imageURLTemplate = [(TVRCMediaInfoRole *)self imageURLTemplate];
    imageURLTemplate2 = [roleCopy imageURLTemplate];
    v28 = [imageURLTemplate isEqualToString:imageURLTemplate2];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TVRCMediaInfoRole allocWithZone:?]];
  canonicalID = [(TVRCMediaInfoRole *)self canonicalID];
  [(TVRCMediaInfoRole *)v4 setCanonicalID:canonicalID];

  actorName = [(TVRCMediaInfoRole *)self actorName];
  [(TVRCMediaInfoRole *)v4 setActorName:actorName];

  characterName = [(TVRCMediaInfoRole *)self characterName];
  [(TVRCMediaInfoRole *)v4 setCharacterName:characterName];

  roleDescription = [(TVRCMediaInfoRole *)self roleDescription];
  [(TVRCMediaInfoRole *)v4 setRoleDescription:roleDescription];

  productPage = [(TVRCMediaInfoRole *)self productPage];
  [(TVRCMediaInfoRole *)v4 setProductPage:productPage];

  imageURLTemplate = [(TVRCMediaInfoRole *)self imageURLTemplate];
  [(TVRCMediaInfoRole *)v4 setImageURLTemplate:imageURLTemplate];

  return v4;
}

- (TVRCMediaInfoRole)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TVRCMediaInfoRole;
  v5 = [(TVRCMediaInfoRole *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actorName"];
    actorName = v5->_actorName;
    v5->_actorName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characterName"];
    characterName = v5->_characterName;
    v5->_characterName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleDescription"];
    roleDescription = v5->_roleDescription;
    v5->_roleDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productPage"];
    productPage = v5->_productPage;
    v5->_productPage = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  canonicalID = self->_canonicalID;
  coderCopy = coder;
  [coderCopy encodeObject:canonicalID forKey:@"canonicalID"];
  [coderCopy encodeObject:self->_actorName forKey:@"actorName"];
  [coderCopy encodeObject:self->_characterName forKey:@"characterName"];
  [coderCopy encodeObject:self->_roleDescription forKey:@"roleDescription"];
  [coderCopy encodeObject:self->_productPage forKey:@"productPage"];
  [coderCopy encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
}

@end