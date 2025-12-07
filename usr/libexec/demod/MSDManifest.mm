@interface MSDManifest
- (BOOL)addFilesFromPath:(id)path relativeTo:(id)to skip:(id)skip superSet:(id)set;
- (BOOL)addFilesUsingSourceManifest:(id)manifest;
- (BOOL)enumerateAndCollectMetaData:(id)data relativeTo:(id)to skip:(id)skip superSet:(id)set handler:(id)handler;
- (BOOL)folder:(id)folder contains:(id)contains;
- (BOOL)path:(id)path inSuperSet:(id)set;
- (MSDManifest)init;
- (MSDManifest)initWithDictionary:(id)dictionary andUserHomePath:(id)path;
- (NSSet)pathSet;
- (id)metadataForFile:(id)file;
- (void)dealloc;
- (void)setMetadata:(id)metadata forFile:(id)file;
@end

@implementation MSDManifest

- (MSDManifest)init
{
  v7.receiver = self;
  v7.super_class = MSDManifest;
  v2 = [(MSDManifest *)&v7 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:0];
    dict = v2->_dict;
    v2->_dict = v3;

    rootPath = v2->_rootPath;
    v2->_rootPath = 0;
  }

  return v2;
}

- (MSDManifest)initWithDictionary:(id)dictionary andUserHomePath:(id)path
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MSDManifest;
  v6 = [(MSDManifest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    rootPath = v6->_rootPath;
    v6->_rootPath = 0;

    v9 = [[NSMutableDictionary alloc] initWithDictionary:dictionaryCopy];
    dict = v7->_dict;
    v7->_dict = v9;
  }

  return v7;
}

- (void)dealloc
{
  dict = self->_dict;
  self->_dict = 0;

  rootPath = self->_rootPath;
  self->_rootPath = 0;

  v5.receiver = self;
  v5.super_class = MSDManifest;
  [(MSDManifest *)&v5 dealloc];
}

- (id)metadataForFile:(id)file
{
  v3 = [(NSMutableDictionary *)self->_dict objectForKey:file];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MSDFileMetadata fileMetaDataWithMetadataDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMetadata:(id)metadata forFile:(id)file
{
  dict = self->_dict;
  fileCopy = file;
  dict = [metadata dict];
  [(NSMutableDictionary *)dict setObject:dict forKey:fileCopy];
}

- (BOOL)folder:(id)folder contains:(id)contains
{
  folderCopy = folder;
  containsCopy = contains;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = folderCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (![containsCopy rangeOfString:{v11, v17}])
        {
          v13 = v12;
          if (v12 == [containsCopy length] || (objc_msgSend(containsCopy, "substringFromIndex:", v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringByAppendingPathComponent:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, LOBYTE(v14) = objc_msgSend(v15, "isEqualToString:", containsCopy), v15, (v14 & 1) != 0))
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

- (BOOL)addFilesUsingSourceManifest:(id)manifest
{
  manifestCopy = manifest;
  v32 = +[NSFileManager defaultManager];
  rootPath = [(MSDManifest *)self rootPath];
  if (rootPath)
  {
    v6 = rootPath;
    rootPath2 = [manifestCopy rootPath];
    if (rootPath2)
    {
      v8 = rootPath2;
      rootPath3 = [(MSDManifest *)self rootPath];
      rootPath4 = [manifestCopy rootPath];
      v11 = [rootPath3 isEqualToString:rootPath4];

      if (v11)
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = [manifestCopy dict];
        v12 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v12)
        {
          v13 = v12;
          v28 = manifestCopy;
          v31 = *v34;
          v29 = 1;
          do
          {
            v14 = 0;
            do
            {
              if (*v34 != v31)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v33 + 1) + 8 * v14);
              v16 = objc_autoreleasePoolPush();
              rootPath5 = [(MSDManifest *)self rootPath];
              v18 = [rootPath5 stringByAppendingPathComponent:v15];

              if ([v32 fileExistsAtPath:v18])
              {
                v19 = [MSDFileMetadata fileMetadatatWithPath:v18];
                if (v19)
                {
                  v20 = v19;
                  getFileType = [v19 getFileType];
                  v22 = [getFileType isEqualToString:NSFileTypeSymbolicLink];

                  if (v22)
                  {
                    v24 = sub_100063A54(v23);
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v38 = "[MSDManifest addFilesUsingSourceManifest:]";
                      v39 = 2114;
                      v40 = v18;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ is a symlink. Skipping.", buf, 0x16u);
                    }
                  }

                  else
                  {
                    [(MSDManifest *)self setMetadata:v20 forFile:v15];
                  }
                }

                else
                {
                  v20 = sub_100063A54(0);
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v38 = "[MSDManifest addFilesUsingSourceManifest:]";
                    v39 = 2114;
                    v40 = v18;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to get metadata for file: %{public}@. Skipping.", buf, 0x16u);
                  }

                  v29 = 0;
                }
              }

              objc_autoreleasePoolPop(v16);
              v14 = v14 + 1;
            }

            while (v13 != v14);
            v25 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
            v13 = v25;
          }

          while (v25);
          manifestCopy = v28;
          v26 = v29;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  obj = sub_100063A54(rootPath);
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    sub_1000D6178(obj);
  }

  v26 = 0;
LABEL_29:

  return v26 & 1;
}

- (BOOL)addFilesFromPath:(id)path relativeTo:(id)to skip:(id)skip superSet:(id)set
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005F884;
  v7[3] = &unk_10016B090;
  v7[4] = self;
  return [(MSDManifest *)self enumerateAndCollectMetaData:path relativeTo:to skip:skip superSet:set handler:v7];
}

- (BOOL)path:(id)path inSuperSet:(id)set
{
  pathCopy = path;
  setCopy = set;
  if ([pathCopy hasPrefix:@"/private"])
  {
    v7 = [pathCopy substringFromIndex:{objc_msgSend(@"/private", "length")}];

    pathCopy = v7;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = setCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) hasPrefix:{pathCopy, v13}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (BOOL)enumerateAndCollectMetaData:(id)data relativeTo:(id)to skip:(id)skip superSet:(id)set handler:(id)handler
{
  dataCopy = data;
  toCopy = to;
  skipCopy = skip;
  setCopy = set;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (self->_rootPath)
  {
    v18 = sub_100063A54(handlerCopy);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D61FC(v18);
    }

    v19 = 0;
    goto LABEL_54;
  }

  selfCopy = self;
  v66 = toCopy;
  p_rootPath = &self->_rootPath;
  objc_storeStrong(&self->_rootPath, to);
  v20 = +[NSFileManager defaultManager];
  v72 = dataCopy;
  v21 = [NSURL fileURLWithPath:dataCopy];
  v22 = [NSArray arrayWithObjects:NSURLIsRegularFileKey, NSURLIsSymbolicLinkKey, 0];
  v23 = [v20 enumeratorAtURL:v21 includingPropertiesForKeys:v22 options:0 errorHandler:&stru_10016B0D0];

  v76 = v23;
  nextObject = [v23 nextObject];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v71 = 0;
  v75 = 0;
  v29 = nextObject == 0;
  v73 = setCopy;
  v70 = v17;
  while (1)
  {
    while (1)
    {
      v30 = skipCopy;
      v31 = v27;
      v32 = v26;
      v33 = v25;
      context = objc_autoreleasePoolPush();
      v18 = nextObject;
      if (v29)
      {
        v18 = [NSURL fileURLWithPath:v72];
        v75 = 1;
      }

      v82 = 0;
      v83 = 0;
      v34 = [v18 getResourceValue:&v83 forKey:NSURLIsRegularFileKey error:&v82];
      v26 = v83;

      v35 = v82;
      if ((v34 & 1) == 0)
      {
        v58 = sub_100063A54(v36);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          path = [v18 path];
          *buf = 138543618;
          v87 = NSURLIsRegularFileKey;
          v88 = 2114;
          v89 = path;
          _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Could not get resource for key %{public}@ for %{public}@", buf, 0x16u);
        }

        v68 = 0;
        goto LABEL_42;
      }

      v80 = 0;
      v81 = 0;
      v37 = [v18 getResourceValue:&v81 forKey:NSURLIsDirectoryKey error:&v80];
      v25 = v81;

      v38 = v80;
      if ((v37 & 1) == 0)
      {
        v60 = sub_100063A54(v39);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          path2 = [v18 path];
          *buf = 138543618;
          v87 = NSURLIsDirectoryKey;
          v88 = 2114;
          v89 = path2;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Could not get resource for key %{public}@ for %{public}@", buf, 0x16u);

          v68 = 0;
          v35 = v38;
          v58 = v60;
          goto LABEL_41;
        }

        v68 = 0;
        v35 = v38;
        v33 = v25;
        v58 = v60;
LABEL_42:

        v28 = v35;
        v27 = v31;
        v25 = v33;
        skipCopy = v30;
        setCopy = v73;
        v17 = v70;
        v56 = v68;
        goto LABEL_34;
      }

      v79 = 0;
      v78 = 0;
      v40 = [v18 getResourceValue:&v79 forKey:NSURLIsSymbolicLinkKey error:&v78];
      v27 = v79;

      v28 = v78;
      setCopy = v73;
      if ((v40 & 1) == 0)
      {
        v58 = sub_100063A54(v41);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        path3 = [v18 path];
        *buf = 138543618;
        v87 = NSURLIsSymbolicLinkKey;
        v88 = 2114;
        v89 = path3;
        _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Could not get resource for key %{public}@ for %{public}@", buf, 0x16u);
        goto LABEL_38;
      }

      skipCopy = v30;
      if (!v30 || ([v18 path], v42 = objc_claimAutoreleasedReturnValue(), v43 = [(MSDManifest *)selfCopy folder:v30 contains:v42], v42, !v43))
      {
        if (!v73)
        {
          break;
        }

        path4 = [v18 path];
        v45 = [(MSDManifest *)selfCopy path:path4 inSuperSet:v73];

        if (v45)
        {
          break;
        }
      }

      if ([v25 BOOLValue])
      {
        [v76 skipDescendants];
      }

      objc_autoreleasePoolPop(context);
      nextObject = [v76 nextObject];

      v29 = nextObject == 0;
      if (((nextObject == 0) & v75) != 0)
      {

        v19 = 1;
        v18 = v76;
        dataCopy = v72;
        toCopy = v66;
        v17 = v70;
        goto LABEL_54;
      }
    }

    if (([v26 BOOLValue] & 1) == 0 && (objc_msgSend(v25, "BOOLValue") & 1) == 0)
    {
      bOOLValue = [v27 BOOLValue];
      if (!bOOLValue)
      {
        v58 = sub_100063A54(bOOLValue);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
LABEL_39:
          v68 = 0;
          goto LABEL_40;
        }

        path3 = [v18 path];
        *buf = 138543362;
        v87 = path3;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ is special file. Leave it along", buf, 0xCu);
LABEL_38:

        goto LABEL_39;
      }
    }

    path5 = [v18 path];
    v48 = [path5 rangeOfString:*p_rootPath];
    v67 = v49;

    if (v48)
    {
      if (v48 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = 0;
        goto LABEL_28;
      }

      path6 = [v18 path];
      v52 = [path6 substringFromIndex:&v48[v67]];
      v50 = [v52 stringByReplacingOccurrencesOfString:*p_rootPath withString:&stru_10016D9D8];

      path7 = path6;
    }

    else
    {
      path7 = [v18 path];
      v50 = [path7 stringByReplacingOccurrencesOfString:*p_rootPath withString:&stru_10016D9D8];
    }

LABEL_28:
    if ([(__CFString *)v50 length])
    {
      v68 = v50;
    }

    else
    {

      v68 = @"/";
    }

    path8 = [v18 path];
    v54 = [MSDFileMetadata fileMetadatatWithPath:path8];

    if (!v54)
    {
      v58 = sub_100063A54(v55);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1000D62D8(v84, v18, &v85, v58);
      }

      v71 = 0;
LABEL_40:
      v35 = v28;
      v31 = v27;
LABEL_41:
      v33 = v25;
      goto LABEL_42;
    }

    v17 = v70;
    v56 = v68;
    v57 = v70[2](v70, v54, v68);
    if ((v57 & 1) == 0)
    {
      break;
    }

    v71 = v54;
LABEL_34:

    objc_autoreleasePoolPop(context);
    nextObject = [v76 nextObject];

    v29 = nextObject == 0;
    if (((nextObject == 0) & v75) != 0)
    {

      v19 = 1;
      v18 = v76;
      goto LABEL_55;
    }
  }

  v64 = sub_100063A54(v57);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    sub_1000D6240(v18, v64);
  }

  objc_autoreleasePoolPop(context);
  v19 = 0;
LABEL_55:
  dataCopy = v72;
  toCopy = v66;
LABEL_54:

  return v19;
}

- (NSSet)pathSet
{
  allKeys = [(NSMutableDictionary *)self->_dict allKeys];
  v3 = [NSSet setWithArray:allKeys];

  return v3;
}

@end