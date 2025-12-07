@interface MSDFileMetadata
+ (id)accessControlListWithPath:(id)path;
+ (id)compareResultToNSString:(int)string;
+ (id)extendedAttributeKeysWithPath:(id)path;
+ (id)extendedAttributesWithPath:(id)path;
+ (id)fileAttributesWithPath:(id)path;
+ (id)fileHashWithPath:(id)path;
+ (id)fileMetaDataWithMetadataDictionary:(id)dictionary;
+ (id)fileMetadatatWithPath:(id)path;
+ (id)targetFileWithPath:(id)path;
+ (id)valueForExtendedAttributesKey:(id)key forPath:(id)path;
- (BOOL)removeAllExtendedAttributes:(id)attributes;
- (BOOL)restoreAttribuesToPath:(id)path;
- (MSDFileMetadata)initWithDictionary:(id)dictionary;
- (MSDFileMetadata)initWithPath:(id)path;
- (NSData)getAccessControlList;
- (NSData)getHash;
- (NSDictionary)getExtendedAttributes;
- (NSDictionary)getFileAttributes;
- (NSString)getFileType;
- (NSString)getTargetFile;
- (id)fileAttributesAllowSet:(id)set;
- (int)compareWith:(id)with;
- (int64_t)getFileSize;
- (void)dealloc;
@end

@implementation MSDFileMetadata

+ (id)fileHashWithPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:pathCopy isDirectory:&v11];

  if (v5)
  {
    if ((v11 & 1) == 0)
    {
      v6 = [NSURL fileURLWithString:pathCopy];
      fileHash = [v6 fileHash];

      if (fileHash)
      {
        goto LABEL_8;
      }

      v9 = sub_100063A54(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = pathCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Maybe it's an iCloud file (%{public}@)?", buf, 0xCu);
      }
    }

    fileHash = +[NSData data];
  }

  else
  {
    sub_1000DE508(pathCopy);
    fileHash = 0;
  }

LABEL_8:

  return fileHash;
}

+ (id)fileAttributesWithPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v11 = 0;
  v5 = [v4 attributesOfItemAtPath:pathCopy error:&v11];
  v6 = v11;
  v7 = [v5 mutableCopy];

  if (v6)
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000DE59C(pathCopy, v6);
    }
  }

  else
  {
    v12[0] = @"NSFileExtendedAttributes";
    v12[1] = NSFileReferenceCount;
    v12[2] = NSFileSystemNumber;
    v12[3] = NSFileSystemFileNumber;
    v9 = [NSArray arrayWithObjects:v12 count:4];
    [v7 removeObjectsForKeys:v9];
  }

  return v7;
}

+ (id)extendedAttributeKeysWithPath:(id)path
{
  pathCopy = path;
  v4 = [NSMutableArray arrayWithCapacity:0];
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v6 = listxattr(fileSystemRepresentation, 0, 0, 1);
  if (v6 < 0)
  {
    sub_1000DE6EC(pathCopy);
    v9 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [NSMutableData dataWithLength:v6];
    v9 = v8;
    if (!v7)
    {
LABEL_6:
      v15 = [NSArray arrayWithArray:v4];
      goto LABEL_7;
    }

    v10 = listxattr(fileSystemRepresentation, [v8 mutableBytes], v7, 1);
    if (v10 > 0)
    {
      v11 = v10;
      [v9 setLength:v10];
      v12 = 0;
      do
      {
        bytes = [v9 bytes];
        v14 = [NSString stringWithUTF8String:&bytes[v12]];
        [v4 addObject:v14];
        v12 += strlen(&bytes[v12]) + 1;
      }

      while (v12 < v11);
      goto LABEL_6;
    }

    sub_1000DE644(pathCopy);
  }

  v15 = 0;
LABEL_7:

  return v15;
}

+ (id)accessControlListWithPath:(id)path
{
  pathCopy = path;
  file = acl_get_file([pathCopy fileSystemRepresentation], ACL_TYPE_EXTENDED);
  if (file)
  {
    v5 = file;
    if (acl_valid(file))
    {
      sub_1000DE794(pathCopy, &v13);
      v12 = v13;
    }

    else
    {
      v6 = acl_size(v5);
      v7 = malloc_type_malloc(v6, 0x85F3635CuLL);
      if (v7)
      {
        v8 = v7;
        v9 = acl_copy_ext(v7, v5, v6);
        if (v9 < 0)
        {
          sub_1000DE858(pathCopy);
          v10 = 0;
        }

        else
        {
          v10 = [NSData dataWithBytes:v8 length:v9];
        }

        acl_free(v5);
        free(v8);
        goto LABEL_9;
      }

      v12 = sub_100063A54(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000DE8FC(v12);
      }
    }

    acl_free(v5);
  }

  else
  {
    if (*__error() == 2)
    {
      v10 = +[NSData data];
      goto LABEL_9;
    }

    sub_1000DE940(pathCopy);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)valueForExtendedAttributesKey:(id)key forPath:(id)path
{
  pathCopy = path;
  uTF8String = [key UTF8String];
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v8 = +[NSMutableData data];
  v9 = getxattr(fileSystemRepresentation, uTF8String, 0, 0, 0, 1);
  if (v9 < 0)
  {
    sub_1000DEA78(pathCopy);
  }

  else
  {
    v10 = [NSMutableData dataWithLength:v9];

    v8 = v10;
    v11 = getxattr(fileSystemRepresentation, uTF8String, [v10 mutableBytes], v9, 0, 1);
    if (v11 < 0)
    {
      sub_1000DE9E4(pathCopy);
    }

    else
    {
      [v10 setLength:v11];
    }
  }

  return v8;
}

+ (id)extendedAttributesWithPath:(id)path
{
  pathCopy = path;
  v4 = [MSDFileMetadata extendedAttributeKeysWithPath:pathCopy];
  if (v4)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:0];
    if ([v4 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = v4;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v19;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v18 + 1) + 8 * v11);
            v9 = [MSDFileMetadata valueForExtendedAttributesKey:v13 forPath:pathCopy];

            [v5 setObject:v9 forKey:v13];
            v11 = v11 + 1;
            v12 = v9;
          }

          while (v8 != v11);
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      v4 = v17;
    }

    else
    {
      v9 = 0;
    }

    v14 = [NSDictionary dictionaryWithDictionary:v5];
  }

  else
  {
    sub_1000DEB28(pathCopy);
    v9 = 0;
    v5 = 0;
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)targetFileWithPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v8 = 0;
  v5 = [v4 destinationOfSymbolicLinkAtPath:pathCopy error:&v8];
  v6 = v8;

  if (v6)
  {
    sub_1000DEBBC(pathCopy, v6);
  }

  return v5;
}

- (MSDFileMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MSDFileMetadata;
  v6 = [(MSDFileMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, dictionary);
  }

  return v7;
}

- (MSDFileMetadata)initWithPath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = MSDFileMetadata;
  v5 = [(MSDFileMetadata *)&v19 init];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [MSDFileMetadata fileAttributesWithPath:pathCopy];
    if (v7)
    {
      v8 = [MSDFileMetadata extendedAttributesWithPath:pathCopy];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 objectForKey:NSFileType];
        v11 = [v10 isEqualToString:NSFileTypeSymbolicLink];

        if (v11)
        {
          v12 = [MSDFileMetadata targetFileWithPath:pathCopy];
          if (v12)
          {
            v13 = v12;
            [v6 setObject:v12 forKey:@"MSDManifestSymbolicLinkTargetFile"];

            [v6 setObject:v7 forKey:@"MSDManifestFileAttributes"];
            v14 = 0;
            v15 = 0;
LABEL_11:
            if ([v9 count])
            {
              [v6 setObject:v9 forKey:@"MSDManifestFileExtendedAttributes"];
            }

            if (v14 && [v14 length])
            {
              [v6 setObject:v14 forKey:@"MSDManifestFileACL"];
            }

            objc_storeStrong(&v5->_dict, v6);

            goto LABEL_17;
          }

          goto LABEL_22;
        }

        v16 = [MSDFileMetadata accessControlListWithPath:pathCopy];
        if (!v16)
        {
LABEL_22:

          goto LABEL_24;
        }

        v14 = v16;
        v17 = [MSDFileMetadata fileHashWithPath:pathCopy];
        if (v17)
        {
          v15 = v17;
          [v6 setObject:v7 forKey:@"MSDManifestFileAttributes"];
          if ([v15 length])
          {
            [v6 setObject:v15 forKey:@"MSDManifestFileHash"];
          }

          goto LABEL_11;
        }

LABEL_24:
        v5 = 0;
LABEL_17:

        goto LABEL_18;
      }

      sub_1000DEC7C(pathCopy);
    }

    else
    {
      sub_1000DED10(pathCopy);
    }

    v9 = v5;
    goto LABEL_24;
  }

LABEL_18:

  return v5;
}

+ (id)fileMetadatatWithPath:(id)path
{
  pathCopy = path;
  v4 = [[MSDFileMetadata alloc] initWithPath:pathCopy];

  return v4;
}

+ (id)fileMetaDataWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[MSDFileMetadata alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (void)dealloc
{
  dict = self->_dict;
  self->_dict = 0;

  v4.receiver = self;
  v4.super_class = MSDFileMetadata;
  [(MSDFileMetadata *)&v4 dealloc];
}

- (BOOL)removeAllExtendedAttributes:(id)attributes
{
  attributesCopy = attributes;
  fileSystemRepresentation = [attributesCopy fileSystemRepresentation];
  v5 = 1;
  v6 = listxattr(fileSystemRepresentation, 0, 0, 1);
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = malloc_type_malloc(v6, 0x8C268854uLL);
    if (v8)
    {
      v9 = v8;
      v10 = listxattr(fileSystemRepresentation, v8, v7, 1);
      if (v10 < 1)
      {
        v15 = sub_100063A54(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEE2C(v15);
        }
      }

      else
      {
        v11 = &v9[v10];
        v12 = v9;
        while (1)
        {
          v13 = removexattr(fileSystemRepresentation, v12, 1);
          if (v13)
          {
            break;
          }

          v12 += strlen(v12) + 1;
          if (v12 >= v11)
          {
            v5 = 1;
            goto LABEL_8;
          }
        }

        v15 = sub_100063A54(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEDA4(v12, attributesCopy, v15);
        }
      }

      v5 = 0;
LABEL_8:
      free(v9);
    }

    else
    {
      sub_1000DEE70(0);
      v5 = 0;
    }
  }

  return v5;
}

- (int)compareWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    getFileType = [(MSDFileMetadata *)self getFileType];
    getFileType2 = [withCopy getFileType];
    v7 = [getFileType isEqualToString:getFileType2];

    if (v7)
    {
      getFileType3 = [(MSDFileMetadata *)self getFileType];
      v9 = [getFileType3 isEqualToString:NSFileTypeRegular];

      if (v9 && (-[MSDFileMetadata getHash](self, "getHash"), v10 = objc_claimAutoreleasedReturnValue(), [withCopy getHash], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToData:", v11), v11, v10, !v12))
      {
        v47 = 2;
      }

      else
      {
        getFileType4 = [(MSDFileMetadata *)self getFileType];
        v14 = [getFileType4 isEqualToString:NSFileTypeSymbolicLink];

        if (!v14 || (-[MSDFileMetadata getTargetFile](self, "getTargetFile"), v15 = objc_claimAutoreleasedReturnValue(), [withCopy getTargetFile], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17))
        {
          selfCopy = self;
          getFileAttributes = [(MSDFileMetadata *)self getFileAttributes];
          v57 = withCopy;
          getFileAttributes2 = [withCopy getFileAttributes];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          getAccessControlList = getFileAttributes;
          v21 = [getAccessControlList countByEnumeratingWithState:&v63 objects:v68 count:16];
          if (v21)
          {
            v22 = v21;
            v58 = *v64;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v64 != v58)
                {
                  objc_enumerationMutation(getAccessControlList);
                }

                v24 = *(*(&v63 + 1) + 8 * i);
                if (([v24 isEqualToString:NSFileGroupOwnerAccountID] & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", NSFileOwnerAccountID) & 1) != 0 || objc_msgSend(v24, "isEqualToString:", NSFilePosixPermissions))
                {
                  v25 = [getAccessControlList objectForKey:v24];
                  [getFileAttributes2 objectForKey:v24];
                  v27 = v26 = getAccessControlList;
                  v28 = [v25 isEqual:v27];

                  getAccessControlList = v26;
                  if (!v28)
                  {
                    v47 = 4;
                    getExtendedAttributes = v26;
                    getExtendedAttributes2 = getFileAttributes2;
                    withCopy = v57;
                    goto LABEL_54;
                  }
                }

                if ([v24 isEqualToString:NSFileProtectionKey])
                {
                  v29 = [getAccessControlList objectForKey:v24];
                  v30 = [getFileAttributes2 objectForKey:v24];
                  if (([v29 isEqualToString:v30] & 1) == 0)
                  {
                    v31 = [v29 isEqualToString:NSFileProtectionNone];
                    v32 = v30 ? 0 : v31;
                    if (v32 & 1) == 0 && !v29 && ([v30 isEqualToString:NSFileProtectionNone])
                    {
                      v47 = 4;
                      getExtendedAttributes2 = getFileAttributes2;
                      getExtendedAttributes = getAccessControlList;
LABEL_52:
                      withCopy = v57;
                      goto LABEL_53;
                    }
                  }
                }
              }

              v22 = [getAccessControlList countByEnumeratingWithState:&v63 objects:v68 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v33 = selfCopy;
          getExtendedAttributes = [(MSDFileMetadata *)selfCopy getExtendedAttributes];

          withCopy = v57;
          getExtendedAttributes2 = [v57 getExtendedAttributes];

          if (getExtendedAttributes)
          {
            if (getExtendedAttributes2)
            {
              v36 = [NSMutableDictionary dictionaryWithDictionary:getExtendedAttributes];
              v30 = [NSMutableDictionary dictionaryWithDictionary:getExtendedAttributes2];
              [v36 removeObjectForKey:@"com.apple.assetsd.dbRebuildUuid"];
              [v30 removeObjectForKey:@"com.apple.assetsd.dbRebuildUuid"];
              v37 = [v36 count];
              if (v37 != [v30 count])
              {
                v47 = 4;
                getAccessControlList = v36;
                goto LABEL_53;
              }

              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v38 = v36;
              v39 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v60;
                while (2)
                {
                  for (j = 0; j != v40; j = j + 1)
                  {
                    if (*v60 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v59 + 1) + 8 * j);
                    v44 = [v38 objectForKey:v43];
                    v45 = [v30 objectForKey:v43];
                    v46 = [v44 isEqualToData:v45];

                    if (!v46)
                    {
                      getAccessControlList = v38;

                      v47 = 4;
                      goto LABEL_52;
                    }
                  }

                  v40 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
                  if (v40)
                  {
                    continue;
                  }

                  break;
                }
              }

              v33 = selfCopy;
              withCopy = v57;
LABEL_47:
              getFileType5 = [(MSDFileMetadata *)v33 getFileType];
              v49 = [getFileType5 isEqualToString:NSFileTypeSymbolicLink];

              if (v49)
              {
                v47 = 5;
                goto LABEL_55;
              }

              getAccessControlList = [(MSDFileMetadata *)v33 getAccessControlList];
              getAccessControlList2 = [withCopy getAccessControlList];
              v30 = getAccessControlList2;
              if (getAccessControlList)
              {
                if (getAccessControlList2)
                {
                  [(MSDFileMetadata *)selfCopy getAccessControlList];
                  v53 = v52 = getAccessControlList;
                  getAccessControlList3 = [withCopy getAccessControlList];
                  v55 = [v53 isEqualToData:getAccessControlList3];

                  getAccessControlList = v52;
                  if (v55)
                  {
                    goto LABEL_60;
                  }
                }
              }

              else if (!getAccessControlList2)
              {
LABEL_60:
                v47 = 5;
                goto LABEL_53;
              }

              v47 = 4;
LABEL_53:

LABEL_54:
              goto LABEL_55;
            }
          }

          else
          {
            if (!getExtendedAttributes2)
            {
              goto LABEL_47;
            }

            getExtendedAttributes = 0;
          }

          v47 = 4;
LABEL_55:

          goto LABEL_56;
        }

        v47 = 3;
      }
    }

    else
    {
      v47 = 1;
    }
  }

  else
  {
    v47 = 0;
  }

LABEL_56:

  return v47;
}

- (id)fileAttributesAllowSet:(id)set
{
  setCopy = set;
  v4 = [NSArray arrayWithObjects:NSFileBusy, NSFileHFSCreatorCode, NSFileHFSTypeCode, NSFileImmutable, NSFileCreationDate, NSFileExtensionHidden, NSFileGroupOwnerAccountID, NSFileGroupOwnerAccountName, NSFileModificationDate, NSFileOwnerAccountID, NSFileOwnerAccountName, NSFilePosixPermissions, 0];
  allKeys = [setCopy allKeys];
  v6 = [NSMutableArray arrayWithArray:allKeys];

  [v6 removeObjectsInArray:v4];
  v7 = [NSMutableDictionary dictionaryWithDictionary:setCopy];

  [v7 removeObjectsForKeys:v6];

  return v7;
}

- (NSData)getHash
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileHash"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSDictionary)getFileAttributes
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileAttributes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSDictionary)getExtendedAttributes
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileExtendedAttributes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSData)getAccessControlList
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileACL"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)getFileType
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileAttributes"];
  v3 = [v2 objectForKey:NSFileType];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)getTargetFile
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (int64_t)getFileSize
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileAttributes"];
  fileType = [v2 fileType];
  v4 = [fileType isEqualToString:@"NSFileTypeRegular"];

  if (v4)
  {
    fileSize = [v2 fileSize];
  }

  else
  {
    fileSize = 0;
  }

  return fileSize;
}

+ (id)compareResultToNSString:(int)string
{
  if (string > 5)
  {
    return @"Unknown compare result.";
  }

  else
  {
    return off_10016B960[string];
  }
}

- (BOOL)restoreAttribuesToPath:(id)path
{
  pathCopy = path;
  v5 = +[NSFileManager defaultManager];
  getFileType = [(MSDFileMetadata *)self getFileType];
  v7 = [getFileType isEqualToString:?];

  if (v7)
  {
    uTF8String = [pathCopy UTF8String];
    getFileAttributes = [(MSDFileMetadata *)self getFileAttributes];
    fileOwnerAccountID = [getFileAttributes fileOwnerAccountID];
    intValue = [fileOwnerAccountID intValue];
    getFileAttributes2 = [(MSDFileMetadata *)self getFileAttributes];
    fileGroupOwnerAccountID = [getFileAttributes2 fileGroupOwnerAccountID];
    LODWORD(uTF8String) = lchown(uTF8String, intValue, [fileGroupOwnerAccountID intValue]);

    if (uTF8String)
    {
      v70 = sub_100063A54(v14);
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v71 = __error();
      sub_100086004(*v71, 5.8382e-34);
      v72 = "Could not set file ownership on symlink %{public}@ with error - %{public, errno}d";
    }

    else
    {
      uTF8String2 = [pathCopy UTF8String];
      getFileAttributes3 = [(MSDFileMetadata *)self getFileAttributes];
      LODWORD(uTF8String2) = lchmod(uTF8String2, [getFileAttributes3 filePosixPermissions]);

      if (!uTF8String2)
      {
        v18 = 0;
        goto LABEL_8;
      }

      v70 = sub_100063A54(v17);
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
LABEL_50:

        v46 = 0;
        v18 = 0;
        goto LABEL_51;
      }

      v85 = __error();
      sub_100086004(*v85, 5.8382e-34);
      v72 = "Could not set file permission on symlink %{public}@ with error - %{public, errno}d";
    }

    _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, v72, buf, 0x12u);
    goto LABEL_50;
  }

  getFileAttributes4 = [(MSDFileMetadata *)self getFileAttributes];
  v20 = [(MSDFileMetadata *)self fileAttributesAllowSet:getFileAttributes4];
  v106 = 0;
  v21 = [v5 setAttributes:v20 ofItemAtPath:pathCopy error:&v106];
  v18 = v106;

  if ((v21 & 1) == 0)
  {
    v73 = sub_100063A54(v22);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      [v18 localizedDescription];
      v82 = v81 = v5;
      getFileAttributes5 = [(MSDFileMetadata *)self getFileAttributes];
      v84 = [(MSDFileMetadata *)self fileAttributesAllowSet:getFileAttributes5];
      *buf = 138543874;
      v109 = pathCopy;
      v110 = 2114;
      v111 = v82;
      v112 = 2114;
      v113 = v84;
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Could not set file attributes at %{public}@ with error - %{public}@, attributes = %{public}@", buf, 0x20u);

      v5 = v81;
    }

    goto LABEL_48;
  }

  getFileAttributes6 = [(MSDFileMetadata *)self getFileAttributes];
  v24 = [getFileAttributes6 objectForKey:NSFileProtectionKey];
  v25 = [NSDictionary dictionaryWithObjectsAndKeys:v24, NSFileProtectionKey, 0];
  v105 = v18;
  v26 = [v5 setAttributes:v25 ofItemAtPath:pathCopy error:&v105];
  v27 = v105;

  if ((v26 & 1) == 0)
  {
    v74 = sub_100063A54(v28);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v27 localizedDescription];
      getFileAttributes7 = [(MSDFileMetadata *)self getFileAttributes];
      v88 = [getFileAttributes7 objectForKey:NSFileProtectionKey];
      *buf = 138543874;
      v109 = pathCopy;
      v110 = 2114;
      v111 = localizedDescription;
      v112 = 2114;
      v113 = v88;
      _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Could not set file protection key at %{public}@ with error - %{public}@, attributes = %{public}@", buf, 0x20u);
    }

    v46 = 0;
    v35 = 0;
    v34 = 0;
    v18 = v27;
    goto LABEL_40;
  }

  v18 = v27;
LABEL_8:
  if (![(MSDFileMetadata *)self removeAllExtendedAttributes:pathCopy])
  {
LABEL_48:
    v46 = 0;
LABEL_51:
    v35 = 0;
    v34 = 0;
    goto LABEL_40;
  }

  v99 = v18;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  getExtendedAttributes = [(MSDFileMetadata *)self getExtendedAttributes];
  allKeys = [getExtendedAttributes allKeys];

  obj = allKeys;
  v31 = [allKeys countByEnumeratingWithState:&v101 objects:v107 count:16];
  if (!v31)
  {
    v34 = 0;
    goto LABEL_21;
  }

  v32 = v31;
  selfCopy = self;
  v98 = v5;
  v34 = 0;
  v35 = 0;
  v36 = *v102;
  while (2)
  {
    v37 = 0;
    v38 = v34;
    v39 = v35;
    do
    {
      if (*v102 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v101 + 1) + 8 * v37);

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v52 = sub_100063A54(isKindOfClass);
        if (sub_100086030(v52))
        {
          *buf = 0;
          sub_100085FF4();
          _os_log_error_impl(v53, v54, v55, v56, v57, 2u);
        }

        goto LABEL_33;
      }

      getExtendedAttributes2 = [(MSDFileMetadata *)selfCopy getExtendedAttributes];
      v34 = [getExtendedAttributes2 objectForKey:v35];

      objc_opt_class();
      v42 = objc_opt_isKindOfClass();
      if ((v42 & 1) == 0)
      {
        v58 = sub_100063A54(v42);
        if (!sub_100086030(v58))
        {
LABEL_32:
          v38 = v34;
LABEL_33:
          v5 = v98;

          v46 = 1;
          v34 = v38;
          goto LABEL_34;
        }

        *buf = 0;
        sub_100085FF4();
        v64 = 2;
LABEL_42:
        _os_log_error_impl(v59, v60, v61, v62, v63, v64);
        goto LABEL_32;
      }

      v43 = setxattr([pathCopy fileSystemRepresentation], objc_msgSend(v35, "UTF8String"), objc_msgSend(v34, "bytes"), objc_msgSend(v34, "length"), 0, 1);
      if (v43)
      {
        v65 = sub_100063A54(v43);
        if (!sub_100086030(v65))
        {
          goto LABEL_32;
        }

        *buf = 138543362;
        v109 = pathCopy;
        sub_100085FF4();
        v64 = 12;
        goto LABEL_42;
      }

      v37 = v37 + 1;
      v38 = v34;
      v39 = v35;
    }

    while (v32 != v37);
    v32 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
    if (v32)
    {
      continue;
    }

    break;
  }

  v5 = v98;
  self = selfCopy;
LABEL_21:

  getFileType2 = [(MSDFileMetadata *)self getFileType];
  v45 = [getFileType2 isEqualToString:NSFileTypeSymbolicLink];

  if ((v45 & 1) == 0)
  {
    getAccessControlList = [(MSDFileMetadata *)self getAccessControlList];
    v48 = [getAccessControlList length];

    if (v48)
    {
      getAccessControlList2 = [(MSDFileMetadata *)self getAccessControlList];
      self = acl_copy_int([getAccessControlList2 bytes]);

      if (!self)
      {
        v51 = sub_100063A54(v50);
        if (sub_100086030(v51))
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v66 = acl_init(0);
      if (!v66)
      {
        v80 = sub_100063A54(0);
        if (sub_100086030(v80))
        {
LABEL_65:
          v91 = __error();
          v92 = strerror(*v91);
          sub_100085FD8(v92, 5.8382e-34);
          sub_100085FF4();
          _os_log_error_impl(v93, v94, v95, v96, v97, 0x16u);
        }

LABEL_60:

        goto LABEL_22;
      }

      self = v66;
    }

    v18 = v99;
    v67 = acl_valid(self);
    if (v67)
    {
      v75 = v5;
      v76 = sub_100063A54(v67);
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v77 = __error();
      v78 = strerror(*v77);
      sub_100085FD8(v78, 5.8382e-34);
      v79 = "Could not validate ACL for %{public}@ with error - %{public}s";
    }

    else
    {
      v68 = acl_set_file([pathCopy fileSystemRepresentation], ACL_TYPE_EXTENDED, self);
      if (!v68)
      {
LABEL_39:
        acl_free(self);
        v35 = 0;
        v46 = 1;
        goto LABEL_40;
      }

      v75 = v5;
      v76 = sub_100063A54(v68);
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
LABEL_58:

        v5 = v75;
        goto LABEL_39;
      }

      v89 = __error();
      v90 = strerror(*v89);
      sub_100085FD8(v90, 5.8382e-34);
      v79 = "Could not set ACL for %{public}@ with error - %{public}s";
    }

    _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, v79, buf, 0x16u);
    goto LABEL_58;
  }

LABEL_22:
  v35 = 0;
  v46 = 1;
LABEL_34:
  v18 = v99;
LABEL_40:

  return v46;
}

@end