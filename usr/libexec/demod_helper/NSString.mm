@interface NSString
+ (id)restoreSystemContainerUUIDPathsInDict:(id)dict;
- (BOOL)isSystemContainerPath;
- (BOOL)isSystemContainerShared;
- (NSString)getSystemContainerKeyword;
- (id)getSystemContainerRootPath;
- (id)lookupSystemContainerPathUUID;
@end

@implementation NSString

+ (id)restoreSystemContainerUUIDPathsInDict:(id)dict
{
  dictCopy = dict;
  v4 = +[NSMutableDictionary dictionary];
  v28 = +[NSMutableDictionary dictionary];
  v29 = dictCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [dictCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138543618;
    v27 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v11 isSystemContainerPath])
        {
          getSystemContainerKeyword = [v11 getSystemContainerKeyword];
          lookupSystemContainerPathUUID = [v4 objectForKey:getSystemContainerKeyword];

          if (lookupSystemContainerPathUUID)
          {
            goto LABEL_12;
          }

          lookupSystemContainerPathUUID = [v11 lookupSystemContainerPathUUID];
          v14 = sub_100021268(lookupSystemContainerPathUUID);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (lookupSystemContainerPathUUID)
          {
            if (v15)
            {
              getSystemContainerKeyword2 = [v11 getSystemContainerKeyword];
              *buf = v27;
              v35 = getSystemContainerKeyword2;
              v36 = 2114;
              v37 = lookupSystemContainerPathUUID;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "System container path mapping created: %{public}@ -> %{public}@", buf, 0x16u);
            }

            getSystemContainerKeyword3 = [v11 getSystemContainerKeyword];
            [v4 setObject:lookupSystemContainerPathUUID forKey:getSystemContainerKeyword3];

LABEL_12:
            getSystemContainerKeyword4 = [v11 getSystemContainerKeyword];
            v19 = [v11 rangeOfString:getSystemContainerKeyword4];
            v21 = v20;

            if (v19 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = sub_100021268(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v35 = v11;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cannot locate system container path identifier in path '%{public}@'. Skipping...", buf, 0xCu);
              }
            }

            else
            {
              v24 = [v11 stringByReplacingCharactersInRange:v19 withString:{v21, lookupSystemContainerPathUUID}];
              v25 = [v29 objectForKey:v11];
              [v28 setObject:v25 forKey:v24];

              lookupSystemContainerPathUUID = v24;
            }
          }

          else
          {
            if (v15)
            {
              *buf = 138543362;
              v35 = v11;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot lookup system container path UUID from path '%{public}@'. Skipping...", buf, 0xCu);
            }

            lookupSystemContainerPathUUID = v14;
          }

          continue;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }

  return v28;
}

- (NSString)getSystemContainerKeyword
{
  pathComponents = [(NSString *)self pathComponents];
  v3 = [pathComponents objectAtIndex:5];

  return v3;
}

- (BOOL)isSystemContainerPath
{
  stringByStandardizingPath = [(NSString *)self stringByStandardizingPath];
  v5 = 0;
  if (([stringByStandardizingPath hasPrefix:@"/var/containers/Data/System"] & 1) != 0 || objc_msgSend(stringByStandardizingPath, "hasPrefix:", @"/var/containers/Shared/SystemGroup"))
  {
    pathComponents = [stringByStandardizingPath pathComponents];
    v4 = [pathComponents count];

    if (v4 > 5)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isSystemContainerShared
{
  pathComponents = [(NSString *)self pathComponents];
  v3 = [pathComponents objectAtIndex:3];

  LOBYTE(pathComponents) = [v3 isEqualToString:@"Shared"];
  return pathComponents;
}

- (id)getSystemContainerRootPath
{
  pathComponents = [(NSString *)self pathComponents];
  v3 = [pathComponents subarrayWithRange:{0, 6}];

  v4 = [NSString pathWithComponents:v3];

  return v4;
}

- (id)lookupSystemContainerPathUUID
{
  [(NSString *)self isSystemContainerShared];
  getSystemContainerKeyword = [(NSString *)self getSystemContainerKeyword];
  [getSystemContainerKeyword UTF8String];
  container_create_or_lookup_path_for_current_user();

  return 0;
}

@end