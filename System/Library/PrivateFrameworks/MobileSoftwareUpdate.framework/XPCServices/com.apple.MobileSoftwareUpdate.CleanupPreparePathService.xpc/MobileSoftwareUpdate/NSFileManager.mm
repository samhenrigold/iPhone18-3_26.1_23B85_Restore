@interface NSFileManager
- (BOOL)removeItemsUnderPath:(id)path error:(id *)error;
@end

@implementation NSFileManager

- (BOOL)removeItemsUnderPath:(id)path error:(id *)error
{
  v23 = 0;
  v7 = [(NSFileManager *)self enumeratorAtPath:?];
  if (v7)
  {
    v8 = v7;
    nextObject = [(NSDirectoryEnumerator *)v7 nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = objc_autoreleasePoolPush();
        [(NSDirectoryEnumerator *)v8 skipDescendants];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [path stringByAppendingPathComponent:nextObject2];
          v15 = [(NSFileManager *)self removeItemAtPath:v14 error:&v23];
          v16 = v15;
          v18 = msuSharedLogger(v15, v17);
          v19 = v18;
          if (v16)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v25 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully removed old CacheDelete subpath %@", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v25 = v14;
              v26 = 2112;
              v27 = v23;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to remove old CacheDelete subpath %@: %@", buf, 0x16u);
            }

            v12 = v23;
            v11 = 1;
          }
        }

        objc_autoreleasePoolPop(v13);
        nextObject2 = [(NSDirectoryEnumerator *)v8 nextObject];
      }

      while (nextObject2);
      v20 = v11 ^ 1;
    }

    else
    {
      v12 = 0;
      v20 = 1;
    }

    v21 = v12;
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

@end