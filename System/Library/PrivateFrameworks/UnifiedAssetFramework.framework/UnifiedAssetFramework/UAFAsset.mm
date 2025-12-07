@interface UAFAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isPresentOnDevice;
- (UAFAsset)initWithName:(id)name location:(id)location metadata:(id)metadata;
- (id)description;
- (id)propertiesAsDictionary:(BOOL)dictionary;
- (unint64_t)_generateHash;
@end

@implementation UAFAsset

- (unint64_t)_generateHash
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  name = self->_name;
  path = [(NSURL *)self->_location path];
  v7 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"version"];
  v8 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"language"];
  v9 = [v4 stringWithFormat:@"%@%@%@%@", name, path, v7, v8];

  v10 = [v9 hash];
  objc_autoreleasePoolPop(v3);
  return v10;
}

- (BOOL)isPresentOnDevice
{
  v36 = *MEMORY[0x1E69E9840];
  memset(v23, 0, sizeof(v23));
  location = [(UAFAsset *)self location];
  path = [location path];
  v22 = 0;
  v6 = [UAFCommonUtilities stat:path withBuf:v23 error:&v22];
  v7 = v22;

  if (v6 || (v15 = WORD2(v23[0]) & 0xF000, v16 = 1, v15 != 0x4000) && v15 != 0x8000)
  {
    name = [(UAFAsset *)self name];
    v9 = name;
    v10 = &stru_1F3B6B510;
    if (name)
    {
      v10 = name;
    }

    v11 = v10;

    v12 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      location2 = [(UAFAsset *)self location];
      if (location2)
      {
        location3 = [(UAFAsset *)self location];
        path2 = [location3 path];
      }

      else
      {
        path2 = &stru_1F3B6B510;
      }

      *buf = 136316418;
      v25 = "[UAFAsset isPresentOnDevice]";
      v26 = 2114;
      selfCopy = path2;
      v28 = 1024;
      v29 = v6;
      v30 = 1024;
      v31 = WORD2(v23[0]);
      v32 = 1024;
      v33 = WORD3(v23[0]);
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s stat(%{public}@) = %d, type: %x, link count: %d, error: %{public}@", buf, 0x32u);
      if (location2)
      {
      }
    }

    v17 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v25 = "[UAFAsset isPresentOnDevice]";
      v26 = 2114;
      selfCopy = self;
      _os_log_fault_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_FAULT, "%s Asset missing: %{public}@", buf, 0x16u);
    }

    v18 = UAFGetLogCategory(&UAFLogContextClient);
    v19 = kUAFABCMissingAssetFailure;
    v20 = [MEMORY[0x1E696AEC0] stringWithString:v11];
    UAFFaultCapture(v18, v19, v20, 0);

    v16 = 0;
  }

  return v16;
}

- (UAFAsset)initWithName:(id)name location:(id)location metadata:(id)metadata
{
  nameCopy = name;
  locationCopy = location;
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = UAFAsset;
  v12 = [(UAFAsset *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_location, location);
    if (metadataCopy)
    {
      v14 = metadataCopy;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F8];
    }

    metadata = v13->_metadata;
    v13->_metadata = v14;

    v13->_hash = [(UAFAsset *)v13 _generateHash];
  }

  return v13;
}

- (id)propertiesAsDictionary:(BOOL)dictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    v16[0] = @"name";
    name = [(UAFAsset *)self name];
    if (name)
    {
      name2 = [(UAFAsset *)self name];
    }

    else
    {
      name2 = &stru_1F3B6B510;
    }

    v17[0] = name2;
    v16[1] = @"location";
    location = [(UAFAsset *)self location];
    if (location)
    {
      location2 = [(UAFAsset *)self location];
      path = [location2 path];
    }

    else
    {
      path = &stru_1F3B6B510;
    }

    v17[1] = path;
    v16[2] = @"metadata";
    metadata = [(UAFAsset *)self metadata];
    if (metadata)
    {
      metadata2 = [(UAFAsset *)self metadata];
    }

    else
    {
      metadata2 = MEMORY[0x1E695E0F8];
    }

    v17[2] = metadata2;
    v16[3] = @"isPresentOnDevice";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFAsset isPresentOnDevice](self, "isPresentOnDevice")}];
    v17[3] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

    if (!metadata)
    {
      goto LABEL_24;
    }

LABEL_23:

    goto LABEL_24;
  }

  v14[0] = @"name";
  name = [(UAFAsset *)self name];
  if (name)
  {
    name2 = [(UAFAsset *)self name];
  }

  else
  {
    name2 = &stru_1F3B6B510;
  }

  v15[0] = name2;
  v14[1] = @"location";
  location = [(UAFAsset *)self location];
  if (location)
  {
    location2 = [(UAFAsset *)self location];
    path = [location2 path];
  }

  else
  {
    path = &stru_1F3B6B510;
  }

  v15[1] = path;
  v14[2] = @"metadata";
  metadata = [(UAFAsset *)self metadata];
  if (metadata)
  {
    metadata2 = [(UAFAsset *)self metadata];
  }

  else
  {
    metadata2 = MEMORY[0x1E695E0F8];
  }

  v15[2] = metadata2;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (metadata)
  {
    goto LABEL_23;
  }

LABEL_24:

  if (location)
  {
  }

  if (name)
  {
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (equalCopy != self)
    {
      v5 = equalCopy;
      name = self->_name;
      name = [(UAFAsset *)v5 name];
      LODWORD(name) = [(NSString *)name isEqualToString:name];

      if (!name)
      {
        v13 = 0;
LABEL_34:

        goto LABEL_35;
      }

      location = self->_location;
      location = [(UAFAsset *)v5 location];
      metadata = location;
      v11 = location;
      v12 = v11;
      if (!metadata && v11)
      {
        metadata = 0;
        goto LABEL_8;
      }

      if (metadata && !v11)
      {
        v14 = 0;
        v13 = 0;
        goto LABEL_33;
      }

      if (metadata && ![(NSURL *)metadata isEqual:v11])
      {
LABEL_8:
        v13 = 0;
        v14 = v12;
LABEL_33:

        goto LABEL_34;
      }

      v15 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"version"];
      metadata = [(UAFAsset *)v5 metadata];
      v16 = [(NSURL *)metadata objectForKeyedSubscript:@"version"];
      v14 = v15;
      v17 = v16;
      v12 = v17;
      if (!v14 && v17)
      {
        goto LABEL_19;
      }

      if (v14 && !v17 || v14 && ![v14 isEqual:v17])
      {
        goto LABEL_31;
      }

      v18 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"language"];
      metadata = [(UAFAsset *)v5 metadata];
      v19 = [(NSURL *)metadata objectForKeyedSubscript:@"language"];
      v14 = v18;
      v20 = v19;
      v12 = v20;
      if (!v14 && v20)
      {
LABEL_19:
        v14 = 0;
      }

      else if ((!v14 || v20) && (!v14 || [v14 isEqual:v20]))
      {
        v13 = 1;
LABEL_32:

        goto LABEL_33;
      }

LABEL_31:
      v13 = 0;
      goto LABEL_32;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_35:

  return v13;
}

- (id)description
{
  v2 = [(UAFAsset *)self propertiesAsDictionary:0];
  v3 = [UAFCommonUtilities serializeDictToJSONStr:v2 error:0];

  return v3;
}

@end