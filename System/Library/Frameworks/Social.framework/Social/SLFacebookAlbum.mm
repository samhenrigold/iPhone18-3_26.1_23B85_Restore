@interface SLFacebookAlbum
+ (id)albumWithDataDictionary:(id)dictionary;
+ (id)albumsWithAlbumDataDictionaries:(id)dictionaries;
- (SLFacebookAlbum)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLFacebookAlbum

- (SLFacebookAlbum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SLFacebookAlbum;
  v5 = [(SLFacebookAlbum *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(SLFacebookAlbum *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(SLFacebookAlbum *)v5 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverPhotoIdentifier"];
    [(SLFacebookAlbum *)v5 setCoverPhotoIdentifier:v8];

    -[SLFacebookAlbum setCount:](v5, "setCount:", [coderCopy decodeIntegerForKey:@"count"]);
    -[SLFacebookAlbum setCanUpload:](v5, "setCanUpload:", [coderCopy decodeBoolForKey:@"canUpload"]);
    -[SLFacebookAlbum setIsDefaultAlbum:](v5, "setIsDefaultAlbum:", [coderCopy decodeBoolForKey:@"isDefaultAlbum"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SLFacebookAlbum *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(SLFacebookAlbum *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  coverPhotoIdentifier = [(SLFacebookAlbum *)self coverPhotoIdentifier];
  [coderCopy encodeObject:coverPhotoIdentifier forKey:@"coverPhotoIdentifier"];

  [coderCopy encodeInteger:-[SLFacebookAlbum count](self forKey:{"count"), @"count"}];
  [coderCopy encodeBool:-[SLFacebookAlbum canUpload](self forKey:{"canUpload"), @"canUpload"}];
  [coderCopy encodeBool:-[SLFacebookAlbum isDefaultAlbum](self forKey:{"isDefaultAlbum"), @"isDefaultAlbum"}];
}

+ (id)albumWithDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && ([dictionaryCopy objectForKeyedSubscript:@"id"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    _SLLog(v3, 6, @"Creating album with dict %@", v7, v8, v9, v10, v11, v5);
    v12 = objc_alloc_init(SLFacebookAlbum);
    v13 = [v5 objectForKeyedSubscript:@"id"];
    [(SLFacebookAlbum *)v12 setIdentifier:v13];

    v14 = [v5 objectForKeyedSubscript:@"name"];
    [(SLFacebookAlbum *)v12 setName:v14];

    v15 = [v5 objectForKeyedSubscript:@"photo_count"];
    -[SLFacebookAlbum setCount:](v12, "setCount:", [v15 intValue]);

    v16 = [v5 objectForKeyedSubscript:@"cover_photo"];
    [(SLFacebookAlbum *)v12 setCoverPhotoIdentifier:v16];

    v17 = [v5 objectForKeyedSubscript:@"can_upload"];

    if (v17)
    {
      v23 = [v5 objectForKeyedSubscript:@"can_upload"];
      -[SLFacebookAlbum setCanUpload:](v12, "setCanUpload:", [v23 BOOLValue]);

      canUpload = [(SLFacebookAlbum *)v12 canUpload];
      v30 = "NO";
      if (canUpload)
      {
        v30 = "YES";
      }

      _SLLog(v3, 6, @"Setting canUpload=%s", v25, v26, v27, v28, v29, v30);
    }

    else
    {
      _SLLog(v3, 6, @"Assuming can_upload", v18, v19, v20, v21, v22, v32);
      [(SLFacebookAlbum *)v12 setCanUpload:1];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)albumsWithAlbumDataDictionaries:(id)dictionaries
{
  v17 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() albumWithDataDictionary:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(SLFacebookAlbum *)self identifier];
  name = [(SLFacebookAlbum *)self name];
  isDefaultAlbum = [(SLFacebookAlbum *)self isDefaultAlbum];
  v7 = @"NO";
  if (isDefaultAlbum)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<SLFacebookAlbum: identifier=%@ name=%@ isDefaultAlbum=%@", identifier, name, v7];

  return v8;
}

@end