@interface MSDKManifestFileItem
- (MSDKManifestFileItem)initWithIdentifier:(id)identifier andDictionary:(id)dictionary forComponent:(id)component;
- (id)description;
@end

@implementation MSDKManifestFileItem

- (MSDKManifestFileItem)initWithIdentifier:(id)identifier andDictionary:(id)dictionary forComponent:(id)component
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = MSDKManifestFileItem;
  v11 = [(MSDKManifestItem *)&v31 initWithIdentifier:identifierCopy andDictionary:dictionaryCopy forComponent:component];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_manifestFilePath, identifier);
    v13 = [dictionaryCopy objectForKey:@"MSDManifestFileAttributes" ofType:objc_opt_class()];
    fileAttributes = v12->_fileAttributes;
    v12->_fileAttributes = v13;

    v15 = v12->_fileAttributes;
    if (v15)
    {
      v16 = *MEMORY[0x277CCA1E0];
      v17 = [(NSDictionary *)v15 objectForKey:*MEMORY[0x277CCA1E0] ofType:objc_opt_class()];
      fileType = v12->_fileType;
      v12->_fileType = v17;

      if (v12->_fileType)
      {
        v19 = [dictionaryCopy objectForKey:@"MSDManifestFileHash"];
        fileHash = v12->_fileHash;
        v12->_fileHash = v19;

        v21 = [dictionaryCopy objectForKey:@"MSDManifestFileExtendedAttributes"];
        fileExtendedAttributes = v12->_fileExtendedAttributes;
        v12->_fileExtendedAttributes = v21;

        v23 = [dictionaryCopy objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        symbolicLinkTargetFilePath = v12->_symbolicLinkTargetFilePath;
        v12->_symbolicLinkTargetFilePath = v23;

        bundleFilePath = v12->_bundleFilePath;
        v12->_bundleFilePath = 0;

        if (v12->_fileHash)
        {
          fileHash = [(MSDKManifestFileItem *)v12 fileHash];
          v27 = [MSDKCacheManager getBundleFilePathFromHash:fileHash];
          v28 = v12->_bundleFilePath;
          v12->_bundleFilePath = v27;
        }

        goto LABEL_6;
      }

      [MSDKManifestFileItem initWithIdentifier:v16 andDictionary:identifierCopy forComponent:?];
    }

    else
    {
      [MSDKManifestFileItem initWithIdentifier:identifierCopy andDictionary:? forComponent:?];
    }

    v29 = 0;
    goto LABEL_7;
  }

LABEL_6:
  v29 = v12;
LABEL_7:

  return v29;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Path:%@>", v5, self->_manifestFilePath];

  return v6;
}

- (void)initWithIdentifier:(uint64_t)a1 andDictionary:(uint64_t)a2 forComponent:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = defaultLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v11 = 136315650;
    *&v11[4] = "[MSDKManifestFileItem initWithIdentifier:andDictionary:forComponent:]";
    *&v11[12] = 2114;
    *&v11[14] = a1;
    *&v11[22] = 2114;
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v5, v6, "%s: Failed to parse %{public}@ from file item %{public}@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16], a2);
  }
}

- (void)initWithIdentifier:(uint64_t)a1 andDictionary:forComponent:.cold.2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v9 = 136315650;
    *&v9[4] = "[MSDKManifestFileItem initWithIdentifier:andDictionary:forComponent:]";
    *&v9[12] = 2114;
    *&v9[14] = @"MSDManifestFileAttributes";
    *&v9[22] = 2114;
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from file item %{public}@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16], a1);
  }
}

@end