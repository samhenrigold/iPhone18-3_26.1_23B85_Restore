@interface TDAssetPackDistiller
- (BOOL)assetStoreWriteToDisk;
- (BOOL)setAsset:(id)asset withKey:(const _renditionkeytoken *)key fromRenditionSpec:(id)spec;
- (TDAssetPackDistiller)initWithDocument:(id)document outputPath:(id)path versionString:(id)string usingAssetPackMapping:(id)mapping attemptIncremental:(BOOL)incremental;
- (id)assetPackForTags:(id)tags;
- (void)dealloc;
- (void)removeRenditionsFromAssetStoreWithKey:(id)key;
- (void)setAssetColorSpaceID:(unsigned int)d;
- (void)setAssetSchemaVersion:(unsigned int)version;
- (void)setAssetStorageVersion:(unsigned int)version;
- (void)setAssetStorageVersionString:(const char *)string;
- (void)setAssetStoreAssociatedChecksum:(unsigned int)checksum;
- (void)setAssetStoreKeyFormatData:(id)data;
- (void)setAssetStoreKeySemantics:(int)semantics;
- (void)setAssetStoreRenditionCount:(unsigned int)count;
- (void)setAssetStoreUuid:(id)uuid;
- (void)setAuthoringTool:(id)tool;
- (void)setDeploymentPlatform:(id)platform;
- (void)setDeploymentPlatformVersion:(id)version;
@end

@implementation TDAssetPackDistiller

- (TDAssetPackDistiller)initWithDocument:(id)document outputPath:(id)path versionString:(id)string usingAssetPackMapping:(id)mapping attemptIncremental:(BOOL)incremental
{
  incrementalCopy = incremental;
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v29.receiver = self;
  v29.super_class = TDAssetPackDistiller;
  v30 = 0;
  v11 = [(TDDistiller *)&v29 initWithDocument:document outputPath:path attemptIncremental:incremental versionString:string];
  v12 = v11;
  if (v11)
  {
    [(TDAssetPackDistiller *)v11 setAssetPackMap:mapping];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [mapping countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v24 = v12;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(mapping);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          outputPath = [v17 outputPath];
          stringByDeletingLastPathComponent = [outputPath stringByDeletingLastPathComponent];
          if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
          {
            v30 = 0;
            if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
            {
              v22 = NSStringFromSelector(a2);
              NSLog(&cfstr_Tdassetpackdis.isa, v22, v30);

              return 0;
            }
          }

          v20 = off_278EBA538;
          if (!incrementalCopy)
          {
            v20 = 0x277D02680;
          }

          v21 = [objc_alloc(*v20) initWithPath:outputPath];
          [v21 setUuid:{objc_msgSend(document, "uuid")}];
          [v17 setAssetStore:v21];
          [objc_msgSend(v17 "assetStore")];
        }

        v14 = [mapping countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      return v24;
    }
  }

  return v12;
}

- (void)dealloc
{
  [(TDAssetPackDistiller *)self setAssetPackMap:0];
  v3.receiver = self;
  v3.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v3 dealloc];
}

- (id)assetPackForTags:(id)tags
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v5 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(assetPackMap);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "tags")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)setAsset:(id)asset withKey:(const _renditionkeytoken *)key fromRenditionSpec:(id)spec
{
  v8 = objc_autoreleasePoolPush();
  v9 = -[TDDistiller _keyDataFromKey:](self, "_keyDataFromKey:", [objc_msgSend(spec "keySpec")]);
  v10 = [objc_msgSend(spec "production")];
  if ([v10 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__TDAssetPackDistiller_setAsset_withKey_fromRenditionSpec___block_invoke;
    v20[3] = &unk_278EBAF50;
    v20[4] = v11;
    [v10 enumerateObjectsUsingBlock:v20];
    v12 = [(TDAssetPackDistiller *)self assetPackForTags:v11];
    assetStore = [v12 assetStore];
    if (assetStore)
    {
      v14 = [assetStore setAsset:asset forKey:v9];
      [v12 setWasModified:1];
      if (!v14)
      {
        v16 = 0;
        goto LABEL_11;
      }

      if (asset)
      {
        v15 = [objc_alloc(MEMORY[0x277D02668]) initWithExternalReference:objc_msgSend(v12 tags:{"assetPackIdentifier"), v11}];
        [v15 setScaleFactor:CUIRenditionKeyValueForAttribute()];
        [v15 setName:@"External"];
        v16 = -[CUIMutableCommonAssetStorage setAsset:forKey:](self->super._assetStore, "setAsset:forKey:", [v15 CSIRepresentationWithCompression:1], v9);

LABEL_11:
        goto LABEL_12;
      }

      assetStore = self->super._assetStore;
      assetCopy = 0;
    }

    else
    {
      assetStore = self->super._assetStore;
      assetCopy = asset;
    }

    v16 = [(CUIMutableCommonAssetStorage *)assetStore setAsset:assetCopy forKey:v9];
    goto LABEL_11;
  }

  v16 = [(CUIMutableCommonAssetStorage *)self->super._assetStore setAsset:asset forKey:v9];
LABEL_12:
  objc_autoreleasePoolPop(v8);
  return v16;
}

uint64_t __59__TDAssetPackDistiller_setAsset_withKey_fromRenditionSpec___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];

  return [v2 addObject:v3];
}

- (void)removeRenditionsFromAssetStoreWithKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 removeRenditionsFromAssetStoreWithKey:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStoreRenditionCount:(unsigned int)count
{
  v3 = *&count;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStoreRenditionCount:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStoreUuid:(id)uuid
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStoreUuid:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStoreAssociatedChecksum:(unsigned int)checksum
{
  v3 = *&checksum;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStoreAssociatedChecksum:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStoreKeyFormatData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStoreKeyFormatData:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStoreKeySemantics:(int)semantics
{
  v3 = *&semantics;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStoreKeySemantics:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStorageVersion:(unsigned int)version
{
  v3 = *&version;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStorageVersion:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetStorageVersionString:(const char *)string
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetStorageVersionString:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetSchemaVersion:(unsigned int)version
{
  v3 = *&version;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetSchemaVersion:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAssetColorSpaceID:(unsigned int)d
{
  v3 = *&d;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAssetColorSpaceID:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setDeploymentPlatform:(id)platform
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setDeploymentPlatform:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setDeploymentPlatformVersion:(id)version
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setDeploymentPlatformVersion:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setAuthoringTool:(id)tool
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  [(TDDistiller *)&v14 setAuthoringTool:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
  v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(assetPackMap);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "assetStore")];
      }

      while (v7 != v9);
      v7 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)assetStoreWriteToDisk
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TDAssetPackDistiller;
  assetStoreWriteToDisk = [(TDDistiller *)&v14 assetStoreWriteToDisk];
  if (assetStoreWriteToDisk)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    assetPackMap = [(TDAssetPackDistiller *)self assetPackMap];
    v5 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(assetPackMap);
        }

        assetStoreWriteToDisk = [objc_msgSend(*(*(&v10 + 1) + 8 * v8) "assetStore")];
        if (!assetStoreWriteToDisk)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSSet *)assetPackMap countByEnumeratingWithState:&v10 objects:v15 count:16];
          LOBYTE(assetStoreWriteToDisk) = 1;
          if (v6)
          {
            goto LABEL_4;
          }

          return assetStoreWriteToDisk;
        }
      }
    }

    else
    {
      LOBYTE(assetStoreWriteToDisk) = 1;
    }
  }

  return assetStoreWriteToDisk;
}

@end