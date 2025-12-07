@interface MBExtendedAttributes
+ (BOOL)hasAttributesForPath:(id)path error:(id *)error;
+ (BOOL)removeAttributeForKey:(id)key forFD:(int)d error:(id *)error;
+ (BOOL)removeAttributeForKey:(id)key forPathFSR:(const char *)r error:(id *)error;
+ (BOOL)setAttributes:(id)attributes forFD:(int)d error:(id *)error;
+ (BOOL)setAttributes:(id)attributes forPathFSR:(const char *)r error:(id *)error;
+ (BOOL)setValue:(id)value forKey:(id)key forFD:(int)d error:(id *)error;
+ (BOOL)setValue:(id)value forKey:(id)key forPathFSR:(const char *)r error:(id *)error;
+ (id)attributesForFD:(int)d error:(id *)error;
+ (id)attributesForPathFSR:(const char *)r error:(id *)error;
+ (id)keysForFD:(int)d error:(id *)error;
+ (id)keysForPathFSR:(const char *)r error:(id *)error;
+ (id)valueForKey:(id)key forFD:(int)d error:(id *)error;
+ (id)valueForKey:(id)key forPathFSR:(const char *)r error:(id *)error;
+ (int)xattrOptionsForFD:(int)d;
+ (int)xattrOptionsForPathFSR:(const char *)r;
+ (unint64_t)sizeOfAttributes:(id)attributes;
@end

@implementation MBExtendedAttributes

+ (int)xattrOptionsForPathFSR:(const char *)r
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(r, &v12))
  {
    v4 = *__error();
    v5 = MBGetDefaultLog();
    v6 = v5;
    if (v4 == 2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = *__error();
        *buf = 136315394;
        rCopy2 = r;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Failed to lstat %s: %{errno}d", buf, 0x12u);
        v10 = *__error();
        _MBLog(@"Db", "Failed to lstat %s: %{errno}d", r, v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315394;
      rCopy2 = r;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to lstat %s: %{errno}d", buf, 0x12u);
      v11 = *__error();
      _MBLog(@"E ", "Failed to lstat %s: %{errno}d", r, v11);
    }

    return 1;
  }

  else if ((v12.st_flags & 0x40000000) != 0)
  {
    return 33;
  }

  else
  {
    return 1;
  }
}

+ (int)xattrOptionsForFD:(int)d
{
  v3 = *&d;
  memset(&v8, 0, sizeof(v8));
  if (!fstat(d, &v8))
  {
    return (v8.st_flags >> 25) & 0x20;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *__error();
    *buf = 67109376;
    v10 = v3;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to stat fd %d: %{errno}d", buf, 0xEu);
    v6 = __error();
    _MBLog(@"E ", "Failed to stat fd %d: %{errno}d", v3, *v6);
  }

  return 0;
}

+ (BOOL)hasAttributesForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = listxattr([pathCopy fileSystemRepresentation], 0, 0, objc_msgSend(self, "xattrOptionsForPathFSR:", objc_msgSend(pathCopy, "fileSystemRepresentation")));
  if (v7 < 0 && *__error() != 2)
  {
    if (error)
    {
      [MBError posixErrorWithPath:pathCopy format:@"listxattr error"];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    v8 = v7 > 0;
  }

  return v8;
}

+ (id)keysForPathFSR:(const char *)r error:(id *)error
{
  v6 = [self xattrOptionsForPathFSR:?];
  v7 = listxattr(r, 0, 0, v6);
  v8 = v7;
  if (v7 >= 1)
  {
    v9 = [NSMutableArray arrayWithCapacity:0];
    v10 = [NSMutableData dataWithLength:v8];
    v11 = listxattr(r, [v10 mutableBytes], v8, v6);
    if (v11 < 0)
    {
      if (error)
      {
        v17 = [NSString mb_stringWithFileSystemRepresentation:r];
        *error = [MBError posixErrorWithPath:v17 format:@"listxattr error"];
      }

      v16 = 0;
    }

    else
    {
      v12 = v11;
      [v10 setLength:v11];
      if (v12)
      {
        v13 = 0;
        do
        {
          bytes = [v10 bytes];
          v15 = [NSString stringWithUTF8String:&bytes[v13]];
          [v9 addObject:v15];
          v13 += strlen(&bytes[v13]) + 1;
        }

        while (v13 < v12);
      }

      v16 = v9;
    }

    goto LABEL_13;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v16 = &__NSArray0__struct;
    goto LABEL_14;
  }

  if (error)
  {
    v9 = [NSString mb_stringWithFileSystemRepresentation:r];
    [MBError posixErrorWithPath:v9 format:@"listxattr error"];
    *error = v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)keysForFD:(int)d error:(id *)error
{
  v6 = [self xattrOptionsForFD:?];
  v7 = flistxattr(d, 0, 0, v6);
  v8 = v7;
  if (v7 < 1)
  {
    if (v7 < 0)
    {
      if (error)
      {
        [MBError posixErrorWithFormat:@"flistxattr error"];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = [NSMutableArray arrayWithCapacity:0];
    v10 = [NSMutableData dataWithLength:v8];
    v11 = flistxattr(d, [v10 mutableBytes], v8, v6);
    if (v11 < 0)
    {
      if (error)
      {
        [MBError posixErrorWithFormat:@"flistxattr error"];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v12 = v11;
      [v10 setLength:v11];
      if (v12)
      {
        v13 = 0;
        do
        {
          bytes = [v10 bytes];
          v15 = [NSString stringWithUTF8String:&bytes[v13]];
          [v9 addObject:v15];
          v13 += strlen(&bytes[v13]) + 1;
        }

        while (v13 < v12);
      }

      v16 = v9;
    }
  }

  return v16;
}

+ (id)valueForKey:(id)key forPathFSR:(const char *)r error:(id *)error
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  v11 = [self xattrOptionsForPathFSR:r];
  v12 = getxattr(r, uTF8String, 0, 0, 0, v11);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12;
    v14 = [NSMutableData dataWithLength:v12];
    v15 = getxattr(r, uTF8String, [v14 mutableBytes], v13, 0, v11);
    if (v15 < 0)
    {
      if (error)
      {
        v17 = [NSString mb_stringWithFileSystemRepresentation:r];
        *error = [MBError posixErrorWithPath:v17 format:@"getxattr error"];
      }

      v16 = 0;
    }

    else
    {
      [v14 setLength:v15];
      v14 = v14;
      v16 = v14;
    }

    goto LABEL_9;
  }

  if (error)
  {
    v14 = [NSString mb_stringWithFileSystemRepresentation:r];
    [MBError posixErrorWithPath:v14 format:@"getxattr error"];
    *error = v16 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

+ (id)valueForKey:(id)key forFD:(int)d error:(id *)error
{
  v6 = *&d;
  keyCopy = key;
  uTF8String = [key UTF8String];
  v11 = [self xattrOptionsForFD:v6];
  v12 = fgetxattr(v6, uTF8String, 0, 0, 0, v11);
  if (v12 < 0)
  {
    if (error)
    {
      [MBError posixErrorWithFormat:@"fgetxattr error"];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v13 = v12;
    v14 = [NSMutableData dataWithLength:v12];
    v15 = fgetxattr(v6, uTF8String, [v14 mutableBytes], v13, 0, v11);
    if (v15 < 0)
    {
      if (error)
      {
        [MBError posixErrorWithFormat:@"fgetxattr error"];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      [v14 setLength:v15];
      v16 = v14;
    }
  }

  return v16;
}

+ (id)attributesForPathFSR:(const char *)r error:(id *)error
{
  v6 = [MBExtendedAttributes keysForPathFSR:"keysForPathFSR:error:" error:?];
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      errorCopy = error;
      v8 = [NSMutableDictionary dictionaryWithCapacity:0];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      v11 = &OBJC_METACLASS___MBBackupAttemptSummary;
      if (v10)
      {
        v12 = v10;
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v24 = 0;
            v16 = [&v11[7] valueForKey:v15 forPathFSR:r error:&v24];
            v17 = v24;
            if (v16)
            {
              [v8 setObject:v16 forKeyedSubscript:v15];
            }

            else
            {
              if ([MBError isError:v17 withCode:8])
              {
                v18 = MBGetDefaultLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v30 = v15;
                  v31 = 2080;
                  rCopy2 = r;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Extended attribute %@ removed while getting all attributes of %s", buf, 0x16u);
                  _MBLog(@"E ", "Extended attribute %@ removed while getting all attributes of %s", v15, r);
                }
              }

              else
              {
                if (![MBError isError:v17 withCode:24])
                {
                  if (errorCopy)
                  {
                    v20 = v17;
                    *errorCopy = v17;
                  }

                  v19 = 0;
                  goto LABEL_25;
                }

                v18 = MBGetDefaultLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v30 = v15;
                  v31 = 2080;
                  rCopy2 = r;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Skipping -- unable to read extended attribute %@ of %s", buf, 0x16u);
                  _MBLog(@"E ", "Skipping -- unable to read extended attribute %@ of %s", v15, r);
                }
              }

              v11 = &OBJC_METACLASS___MBBackupAttemptSummary;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v19 = v8;
LABEL_25:
      v7 = v23;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)attributesForFD:(int)d error:(id *)error
{
  v5 = *&d;
  v6 = [MBExtendedAttributes keysForFD:"keysForFD:error:" error:?];
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      errorCopy = error;
      v8 = [NSMutableDictionary dictionaryWithCapacity:0];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      v11 = &OBJC_METACLASS___MBBackupAttemptSummary;
      if (v10)
      {
        v12 = v10;
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v24 = 0;
            v16 = [&v11[7] valueForKey:v15 forFD:v5 error:&v24];
            v17 = v24;
            if (v16)
            {
              [v8 setObject:v16 forKeyedSubscript:v15];
            }

            else
            {
              if ([MBError isError:v17 withCode:8])
              {
                v18 = MBGetDefaultLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v30 = v15;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Extended attribute %@ removed while getting all attributes of file", buf, 0xCu);
                  _MBLog(@"E ", "Extended attribute %@ removed while getting all attributes of file", v15);
                }
              }

              else
              {
                if (![MBError isError:v17 withCode:24])
                {
                  if (errorCopy)
                  {
                    v20 = v17;
                    *errorCopy = v17;
                  }

                  v19 = 0;
                  goto LABEL_25;
                }

                v18 = MBGetDefaultLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v30 = v15;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Skipping -- unable to read extended attribute %@", buf, 0xCu);
                  _MBLog(@"E ", "Skipping -- unable to read extended attribute %@", v15);
                }
              }

              v11 = &OBJC_METACLASS___MBBackupAttemptSummary;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v19 = v8;
LABEL_25:
      v7 = v23;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)setValue:(id)value forKey:(id)key forPathFSR:(const char *)r error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  uTF8String = [key UTF8String];
  bytes = [valueCopy bytes];
  v14 = [valueCopy length];

  v15 = setxattr(r, uTF8String, bytes, v14, 0, 1);
  v16 = v15;
  if (error && v15)
  {
    v17 = [NSString mb_stringWithFileSystemRepresentation:r];
    *error = [MBError posixErrorWithPath:v17 format:@"setxattr error"];
  }

  return v16 == 0;
}

+ (BOOL)setValue:(id)value forKey:(id)key forFD:(int)d error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  uTF8String = [key UTF8String];
  bytes = [valueCopy bytes];
  v14 = [valueCopy length];

  v15 = fsetxattr(d, uTF8String, bytes, v14, 0, 0);
  v16 = v15;
  if (error && v15)
  {
    *error = [MBError posixErrorWithFormat:@"fsetxattr error"];
  }

  return v16 == 0;
}

+ (BOOL)setAttributes:(id)attributes forPathFSR:(const char *)r error:(id *)error
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  attributesCopy = attributes;
  v8 = [attributesCopy countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [attributesCopy objectForKeyedSubscript:v12];
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 length];
          *buf = 138412802;
          rCopy2 = v12;
          v29 = 2080;
          rCopy = r;
          v31 = 2048;
          v32 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Setting %@ xattr at %s (%ld)", buf, 0x20u);
          _MBLog(@"I ", "Setting %@ xattr at %s (%ld)", v12, r, [v13 length]);
        }

        if (setxattr(r, [v12 UTF8String], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"), 0, 1))
        {
          if (*__error() != 1 || ![v12 isEqualToString:@"com.apple.FinderInfo"])
          {
            if (errorCopy)
            {
              v20 = [NSString mb_stringWithFileSystemRepresentation:r];
              *errorCopy = [MBError posixErrorWithPath:v20 format:@"setxattr error"];
            }

            v19 = 0;
            goto LABEL_20;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *__error();
            *buf = 136315906;
            rCopy2 = r;
            v29 = 2112;
            rCopy = v12;
            v31 = 2112;
            v32 = v13;
            v33 = 1024;
            v34 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "setxattr(%s, %@, %@) error: %{errno}d", buf, 0x26u);
            v18 = __error();
            _MBLog(@"Df", "setxattr(%s, %@, %@) error: %{errno}d", r, v12, v13, *v18);
          }
        }
      }

      v9 = [attributesCopy countByEnumeratingWithState:&v23 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_20:

  return v19;
}

+ (BOOL)setAttributes:(id)attributes forFD:(int)d error:(id *)error
{
  v6 = *&d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  attributesCopy = attributes;
  v8 = [attributesCopy countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [attributesCopy objectForKeyedSubscript:v12];
        if (fsetxattr(v6, [v12 UTF8String], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"), 0, 0))
        {
          if (*__error() != 1 || ![v12 isEqualToString:@"com.apple.FinderInfo"])
          {
            if (errorCopy)
            {
              *errorCopy = [MBError posixErrorWithFormat:@"fsetxattr error"];
            }

            v17 = 0;
            goto LABEL_18;
          }

          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *__error();
            *buf = 67109890;
            v25 = v6;
            v26 = 2112;
            v27 = v12;
            v28 = 2112;
            v29 = v13;
            v30 = 1024;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fsetxattr(%d, %@, %@) error: %{errno}d", buf, 0x22u);
            v16 = __error();
            _MBLog(@"Df", "fsetxattr(%d, %@, %@) error: %{errno}d", v6, v12, v13, *v16);
          }
        }
      }

      v9 = [attributesCopy countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_18:

  return v17;
}

+ (BOOL)removeAttributeForKey:(id)key forPathFSR:(const char *)r error:(id *)error
{
  v7 = removexattr(r, [key UTF8String], 1);
  v8 = v7;
  if (error && v7)
  {
    v9 = [NSString mb_stringWithFileSystemRepresentation:r];
    *error = [MBError posixErrorWithPath:v9 format:@"removexattr error"];
  }

  return v8 == 0;
}

+ (BOOL)removeAttributeForKey:(id)key forFD:(int)d error:(id *)error
{
  v6 = fremovexattr(d, [key UTF8String], 0);
  v7 = v6;
  if (error && v6)
  {
    *error = [MBError posixErrorWithFormat:@"fremovexattr error"];
  }

  return v7 == 0;
}

+ (unint64_t)sizeOfAttributes:(id)attributes
{
  attributesCopy = attributes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [attributesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = &v6[[v9 lengthOfBytesUsingEncoding:4]];
        v11 = [attributesCopy objectForKeyedSubscript:v9];
        v6 = [v11 length] + v10;
      }

      v5 = [attributesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end