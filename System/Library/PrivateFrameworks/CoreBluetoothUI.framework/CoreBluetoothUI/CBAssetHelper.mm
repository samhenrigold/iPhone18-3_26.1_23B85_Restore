@interface CBAssetHelper
+ (id)findLocalizedStringForKey:(id)key;
+ (id)findLocalizedStringForKey:(id)key default:(id)default;
+ (id)getAssetPathsFilenames;
+ (id)loadAllAssets;
+ (id)loadAssetsFromFile:(id)file;
+ (id)resourcePathFromBundle:(id)bundle withResourceNamed:(id)named;
+ (id)sharedAssetHelper;
- (CBAssetHelper)init;
- (id)getAssetDictForAppleProductID:(unsigned __int16)d;
- (id)getCustomInfoForVID:(unsigned __int16)d andPID:(unsigned __int16)iD;
- (id)getDeviceDisplayName:(unsigned __int16)name;
- (id)getDeviceNameForAppleProductID:(unsigned __int16)d;
- (id)getImageURLForAppleProductID:(unsigned __int16)d andColor:(unsigned __int8)color;
- (id)getImageURLFromImageName:(id)name;
@end

@implementation CBAssetHelper

+ (id)sharedAssetHelper
{
  v2 = sAssetHelper;
  if (!sAssetHelper)
  {
    v3 = objc_alloc_init(CBAssetHelper);
    v4 = sAssetHelper;
    sAssetHelper = v3;

    v2 = sAssetHelper;
  }

  return v2;
}

+ (id)loadAllAssets
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [CBAssetHelper loadAssetsFromFile:@"AssetPaths"];
  [v2 addEntriesFromDictionary:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = +[CBAssetHelper getAssetPathsFilenames];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [CBAssetHelper loadAssetsFromFile:*(*(&v11 + 1) + 8 * i)];
        [v2 mergeWith:v9 overwriteConflicts:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

+ (id)loadAssetsFromFile:(id)file
{
  v4 = MEMORY[0x277CCA8D8];
  fileCopy = file;
  v6 = [v4 bundleForClass:self];
  v7 = [v6 URLForResource:fileCopy withExtension:@"plist"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];

  return v8;
}

+ (id)resourcePathFromBundle:(id)bundle withResourceNamed:(id)named
{
  bundleCopy = bundle;
  namedCopy = named;
  v8 = namedCopy;
  if (bundleCopy)
  {
    if (!namedCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:self];
    bundleCopy = [v9 bundlePath];

    if (!v8)
    {
LABEL_8:
      NSLog(&cfstr_CbassethelperB.isa, bundleCopy, v8);
      goto LABEL_10;
    }
  }

  if (!bundleCopy)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:bundleCopy];
  if (v10)
  {
    v11 = v10;
    stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
    pathExtension = [v8 pathExtension];
    v14 = [v11 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

    NSLog(&cfstr_CbassethelperR.isa, bundleCopy, v8, v14);
    v15 = v14;

    goto LABEL_11;
  }

  NSLog(&cfstr_CbassethelperI.isa, bundleCopy, v8);
LABEL_10:
  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)getAssetPathsFilenames
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  resourcePath = [v15 resourcePath];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:resourcePath error:&v20];
  v14 = v20;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 hasPrefix:{@"AssetPaths-", v14}] && objc_msgSend(v11, "hasSuffix:", @".plist"))
        {
          v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@".plist", "length")}];
          [v3 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  return v3;
}

+ (id)findLocalizedStringForKey:(id)key
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_285808710 table:@"Assets"];
  v24 = keyCopy;
  if ([v6 isEqualToString:keyCopy])
  {
    v23 = v5;
    v7 = [v5 pathForResource:@"Localizable" ofType:@"strings"];
    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v29 = 0;
    v22 = stringByDeletingLastPathComponent;
    v10 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v29];
    v21 = v29;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        if ([v16 hasPrefix:{@"Assets-", v21}])
        {
          if ([v16 hasSuffix:@".strings"])
          {
            v17 = [v16 substringToIndex:{objc_msgSend(v16, "length") - objc_msgSend(@".strings", "length")}];
            v18 = [v23 localizedStringForKey:v24 value:&stru_285808710 table:v17];

            v19 = [v18 isEqualToString:v24];
            v6 = v18;
            if (!v19)
            {
              break;
            }
          }
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
          v18 = v6;
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v18 = v6;
    }

    v6 = v18;
    v5 = v23;
  }

  return v6;
}

+ (id)findLocalizedStringForKey:(id)key default:(id)default
{
  defaultCopy = default;
  keyCopy = key;
  v8 = [self findLocalizedStringForKey:keyCopy];
  v9 = [v8 isEqualToString:keyCopy];

  if (v9)
  {
    v10 = defaultCopy;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v10;
}

- (CBAssetHelper)init
{
  v6.receiver = self;
  v6.super_class = CBAssetHelper;
  v2 = [(CBAssetHelper *)&v6 init];
  if (v2)
  {
    v3 = +[CBAssetHelper loadAllAssets];
    mDictCache = v2->mDictCache;
    v2->mDictCache = v3;
  }

  return v2;
}

- (id)getCustomInfoForVID:(unsigned __int16)d andPID:(unsigned __int16)iD
{
  v5 = [CBAssetHelper strFromVendorID:d andProductID:iD];
  v6 = [(NSMutableDictionary *)self->mDictCache objectForKey:v5];

  return v6;
}

- (id)getAssetDictForAppleProductID:(unsigned __int16)d
{
  v4 = [CBAssetHelper strFromProductID:d];
  v5 = [(NSMutableDictionary *)self->mDictCache objectForKey:v4];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 objectForKeyedSubscript:@"Clone"];

  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
    v8 = v6;
    v9 = v4;
    v4 = [v8 objectForKeyedSubscript:@"Clone"];

    v6 = [(NSMutableDictionary *)self->mDictCache objectForKey:v4];

    v10 = [v6 objectForKeyedSubscript:@"Clone"];
  }

  while (v10);
  if (v6)
  {
LABEL_5:
    if ([v6 isMemberOfClass:objc_opt_class()])
    {
      v11 = v6;
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
      [(NSMutableDictionary *)self->mDictCache setObject:v11 forKey:v4];
      v12 = [v11 objectForKey:@"Color"];
      if (v12)
      {
        v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
        [v11 setObject:v13 forKey:@"Color"];
      }
    }
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  return v11;
}

- (id)getDeviceNameForAppleProductID:(unsigned __int16)d
{
  v3 = [(CBAssetHelper *)self getAssetDictForAppleProductID:d];
  v4 = [v3 valueForKey:@"Name"];

  return v4;
}

- (id)getDeviceDisplayName:(unsigned __int16)name
{
  v3 = [(CBAssetHelper *)self getAssetDictForAppleProductID:name];
  v4 = [v3 valueForKey:@"DisplayName"];

  return v4;
}

- (id)getImageURLForAppleProductID:(unsigned __int16)d andColor:(unsigned __int8)color
{
  colorCopy = color;
  v6 = [(CBAssetHelper *)self getAssetDictForAppleProductID:d];
  v7 = [CBAssetHelper strFromColorID:colorCopy];
  v8 = [v6 objectForKey:@"Color"];
  v9 = [v6 objectForKey:@"Bundle"];
  v10 = v9;
  if (!v8)
  {
    goto LABEL_10;
  }

  v11 = v9;
  v12 = [v8 objectForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v12;
      v13 = [v4 objectForKey:@"ImageName"];
      v14 = [v4 objectForKey:@"Bundle"];

      v11 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = [CBAssetHelper resourcePathFromBundle:v11 withResourceNamed:v13];
  if (v15)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
  }

  if (!v15)
  {
LABEL_10:
    v16 = [v6 objectForKey:@"ImageName"];
    v17 = [CBAssetHelper resourcePathFromBundle:v10 withResourceNamed:v16];
    if (v17)
    {
      v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)getImageURLFromImageName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  bundlePath = [v5 bundlePath];

  v7 = [CBAssetHelper resourcePathFromBundle:bundlePath withResourceNamed:nameCopy];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end