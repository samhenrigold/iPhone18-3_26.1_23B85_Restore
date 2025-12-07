@interface MSDSignedManifestFactoryMetadata
+ (id)languageIdentifiersForMetadataList:(id)list;
+ (id)loadManifestMetadata:(id)metadata;
+ (id)metadataWithLanugageIdentifier:(id)identifier fromList:(id)list;
- (MSDSignedManifestFactoryMetadata)initWithContentPlistFile:(id)file;
- (id)description;
@end

@implementation MSDSignedManifestFactoryMetadata

+ (id)loadManifestMetadata:(id)metadata
{
  v23 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = sub_100093F4C;
  v21[3] = sub_100093F5C;
  metadataCopy = metadata;
  v22 = metadataCopy;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100093F4C;
  v18[4] = sub_100093F5C;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100093F4C;
  v16 = sub_100093F5C;
  v17 = objc_opt_new();
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:*(v21[0] + 40) isDirectory:&v23];
  if (v5)
  {
    if (v23)
    {
      v6 = [v4 contentsOfDirectoryAtPath:*(v21[0] + 40) error:0];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100093F64;
      v11[3] = &unk_10016BB88;
      v11[4] = &v20;
      v11[5] = v18;
      v11[6] = &v12;
      [v6 enumerateObjectsUsingBlock:v11];
      goto LABEL_4;
    }

    v10 = sub_100063A54(v5);
    sub_1000E2C08(v10, v21, &v24);
  }

  else
  {
    v9 = sub_100063A54(v5);
    sub_1000E2B64(v9, v21, &v24);
  }

  v6 = 0;
LABEL_4:
  v7 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(&v20, 8);

  return v7;
}

+ (id)languageIdentifiersForMetadataList:(id)list
{
  listCopy = list;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          languageIdentifier = [v10 languageIdentifier];
          if (languageIdentifier)
          {
            [v4 addObject:languageIdentifier];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)metadataWithLanugageIdentifier:(id)identifier fromList:(id)list
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(listCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          languageIdentifier = [v10 languageIdentifier];
          if ([languageIdentifier isEqualToString:identifierCopy])
          {
            v7 = v10;

            goto LABEL_13;
          }
        }
      }

      v7 = [listCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (MSDSignedManifestFactoryMetadata)initWithContentPlistFile:(id)file
{
  fileCopy = file;
  v39.receiver = self;
  v39.super_class = MSDSignedManifestFactoryMetadata;
  v5 = [(MSDSignedManifestFactoryMetadata *)&v39 init];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:fileCopy];
    if (v7)
    {
      v8 = [NSMutableDictionary dictionaryWithContentsOfFile:fileCopy];
      v9 = sub_100063A54(v8);
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v41 = fileCopy;
          v42 = 2114;
          v43 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Content.plist at path %{public}@: %{public}@", buf, 0x16u);
        }

        v11 = [v8 objectForKey:@"Name"];
        name = v5->_name;
        v5->_name = v11;

        v13 = [v8 objectForKey:@"ManifestBundleID"];
        bundleID = v5->_bundleID;
        v5->_bundleID = v13;

        v15 = [v8 objectForKey:@"ManifestFileName"];
        fileName = v5->_fileName;
        v5->_fileName = v15;

        v17 = [v8 objectForKey:@"IsPrimaryBundle"];
        v18 = [v8 objectForKey:@"ManifestLanguageCode"];
        languageIdentifier = v5->_languageIdentifier;
        v5->_languageIdentifier = v18;

        v20 = [v8 objectForKey:@"ManifestRegionCode"];
        regionCode = v5->_regionCode;
        v5->_regionCode = v20;

        v22 = [v8 objectForKey:@"SupportRegionCodes"];
        supportedRegions = v5->_supportedRegions;
        v5->_supportedRegions = v22;

        if (v17)
        {
          bOOLValue = [v17 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v5->_isPrimaryBundle = bOOLValue;

        goto LABEL_10;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E2D84(fileCopy, v10, v33, v34, v35, v36, v37, v38);
      }
    }

    else
    {
      v10 = sub_100063A54(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E2D18(fileCopy, v10, v27, v28, v29, v30, v31, v32);
      }
    }

    v25 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v25 = v5;
LABEL_11:

  return v25;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(MSDSignedManifestFactoryMetadata *)self name];
  languageIdentifier = [(MSDSignedManifestFactoryMetadata *)self languageIdentifier];
  regionCode = [(MSDSignedManifestFactoryMetadata *)self regionCode];
  v8 = [NSString stringWithFormat:@"<%@: Name: %@ Language: %@; Region: %@>", v4, name, languageIdentifier, regionCode];;

  return v8;
}

@end