@interface NSURL(PosterFoundation)
+ (id)pf_descriptorIdentifierURLForType:()PosterFoundation identifierURL:;
+ (id)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:;
+ (id)pf_posterPathContentsURLForInstanceURL:()PosterFoundation;
+ (id)pf_posterPathContentsURLForProviderURL:()PosterFoundation type:posterUUID:version:;
+ (id)pf_posterPathIdentifierURLProviderURL:()PosterFoundation type:posterUUID:;
+ (id)pf_posterPathInstanceURLForProviderURL:()PosterFoundation type:posterUUID:version:;
+ (id)pf_posterPathInstanceURLForVersionsURL:()PosterFoundation version:;
+ (id)pf_posterPathScratchURLForInstanceURL:()PosterFoundation;
+ (id)pf_posterPathSupplementContainerURLForInstanceURL:()PosterFoundation;
+ (id)pf_posterPathSupplementURLForInstanceURL:()PosterFoundation supplement:;
+ (id)pf_posterPathTypeURLForProviderURL:()PosterFoundation type:;
+ (id)pf_posterPathVersionsURLForProviderURL:()PosterFoundation type:posterUUID:;
+ (id)pf_providerInfoFileURLForIdentifierURL:()PosterFoundation;
+ (id)pf_roleIdentifierURLForType:()PosterFoundation identifierURL:;
+ (id)pf_temporaryDirectoryURL;
+ (id)pf_temporaryDirectoryURLNamed:()PosterFoundation;
+ (id)pf_temporaryDirectoryURLWithBasenamePrefix:()PosterFoundation;
+ (id)pf_versionsURLForIdentifierURL:()PosterFoundation;
- (BOOL)pf_allowSuspendWithOpenFileHandle;
- (BOOL)pf_isPurgable;
- (BOOL)pf_setAllowSuspendWithOpenFileHandle:()PosterFoundation error:;
- (BOOL)pf_unmarkAsPurgableWithError:()PosterFoundation;
- (id)pf_fileResourceIdentifierWithError:()PosterFoundation;
- (id)pf_loadFromPlistWithError:()PosterFoundation;
- (uint64_t)pf_isDirectory;
- (uint64_t)pf_isExcludedFromBackup;
- (uint64_t)pf_isReadable;
- (uint64_t)pf_isUnderlyingFileSystemResourceEqualToURL:()PosterFoundation;
- (uint64_t)pf_isWritable;
- (uint64_t)pf_markPurgableInOneHourWithError:()PosterFoundation;
- (uint64_t)pf_setExcludedFromBackup:()PosterFoundation error:;
- (uint64_t)pf_setPurgable:()PosterFoundation afterDate:error:;
- (uint64_t)pf_storeToPlist:()PosterFoundation error:;
- (void)pf_fileURLExists:()PosterFoundation;
@end

@implementation NSURL(PosterFoundation)

+ (id)pf_temporaryDirectoryURL
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = PFTemporaryDirectory(self);
  v3 = [v1 fileURLWithPath:v2 isDirectory:1];

  return v3;
}

+ (id)pf_temporaryDirectoryURLNamed:()PosterFoundation
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed(a3);
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

+ (id)pf_temporaryDirectoryURLWithBasenamePrefix:()PosterFoundation
{
  v4 = a3;
  v5 = PFTemporaryDirectoryCreatingIfItDoesntExistWithSubdirectoryNamed(0);
  v6 = [self pf_directoryURLWithContainerPath:v5 basenamePrefix:v4];

  uRLByResolvingSymlinksInPath = [v6 URLByResolvingSymlinksInPath];

  return uRLByResolvingSymlinksInPath;
}

+ (id)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  v9 = v7;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  if (![v9 length])
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-XXXXXX", v9];
  if (!v11)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  v12 = v11;
  v13 = [v8 stringByAppendingPathComponent:v11];
  if (!v13)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:a2 basenamePrefix:?];
  }

  v14 = v13;
  v47 = a2;
  *__error() = 0;
  v15 = strdup([v14 fileSystemRepresentation]);
  if (!v15)
  {
    v27 = __error();
    strerror_r(*v27, __strerrbuf, 0x100uLL);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to make templateUTF8String with errno=%i (%s) : template='%@'", *__error(), __strerrbuf, v14];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[NSURL(PosterFoundation) pf_directoryURLWithContainerPath:basenamePrefix:];
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    goto LABEL_40;
  }

  v16 = v15;
  *__error() = 0;
  v17 = mkdtemp(v16);
  if (v17 != v16)
  {
    v29 = __error();
    v30 = *v29;
    strerror_r(*v29, __strerrbuf, 0x100uLL);
    v31 = MEMORY[0x1E695DFF8];
    v32 = NSTemporaryDirectory();
    v33 = [v31 fileURLWithPath:v32];

    v34 = *MEMORY[0x1E695DD60];
    v50 = *MEMORY[0x1E695DD60];
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v49 = 0;
    v36 = [v33 resourceValuesForKeys:v35 error:&v49];
    v37 = v49;

    if (!v36)
    {
      v39 = PFLogPosterContents(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        +[NSURL(PosterFoundation) pf_directoryURLWithContainerPath:basenamePrefix:];
      }

LABEL_34:
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected mkdtemp result with errno=%i (%s) : freeSpace=unknown(%@) : template(%p)=%@ result=%p", v30, __strerrbuf, v37, v16, v14, v17];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[NSURL(PosterFoundation) pf_directoryURLWithContainerPath:basenamePrefix:];
      }

      [v44 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C26BCE20);
    }

    v41 = [v36 objectForKey:v34];
    v42 = objc_opt_class();
    v43 = __BSSafeCast(v41, v42);

    if (!v43)
    {
      goto LABEL_34;
    }

    unsignedLongLongValue = [v43 unsignedLongLongValue];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected mkdtemp result with errno=%i (%s) : freeSpace=%llu : template(%p)=%@ result=%p", v30, __strerrbuf, unsignedLongLongValue, v16, v14, v17];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[NSURL(PosterFoundation) pf_directoryURLWithContainerPath:basenamePrefix:];
    }

    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
LABEL_40:
    JUMPOUT(0x1C26BCC50);
  }

  v18 = objc_opt_new();
  v19 = [v18 stringWithFileSystemRepresentation:v17 length:strlen(v17)];
  if (!v19)
  {
    [NSURL(PosterFoundation) pf_directoryURLWithContainerPath:v17 basenamePrefix:v47];
  }

  v20 = v19;
  free(v16);
  v22 = PFPosterPathFileAttributes(v21);
  v48 = 0;
  v23 = [v18 setAttributes:v22 ofItemAtPath:v20 error:&v48];
  v24 = v48;

  if ((v23 & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to set necessary attributes of path=%@ : error=%@", v20, v24];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[NSURL(PosterFoundation) pf_directoryURLWithContainerPath:basenamePrefix:];
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C26BCD78);
  }

  objc_autoreleasePoolPop(v10);
  v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:1];

  return v25;
}

+ (id)pf_posterPathTypeURLForProviderURL:()PosterFoundation type:
{
  v6 = a3;
  if (!v6)
  {
    [NSURL(PosterFoundation) pf_posterPathTypeURLForProviderURL:a2 type:?];
  }

  v7 = v6;
  v8 = PFServerPosterTypeToDirectoryName(a4);
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];

  return v9;
}

+ (id)pf_posterPathIdentifierURLProviderURL:()PosterFoundation type:posterUUID:
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    [NSURL(PosterFoundation) pf_posterPathIdentifierURLProviderURL:a2 type:? posterUUID:?];
  }

  v11 = v10;
  if (!v10)
  {
    [NSURL(PosterFoundation) pf_posterPathIdentifierURLProviderURL:a2 type:? posterUUID:?];
  }

  v12 = [self pf_posterPathTypeURLForProviderURL:v9 type:a4];
  uUIDString = [v11 UUIDString];
  v14 = [v12 URLByAppendingPathComponent:uUIDString isDirectory:1];

  return v14;
}

+ (id)pf_posterPathVersionsURLForProviderURL:()PosterFoundation type:posterUUID:
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    [NSURL(PosterFoundation) pf_posterPathVersionsURLForProviderURL:a2 type:? posterUUID:?];
  }

  v11 = v10;
  v12 = [self pf_posterPathIdentifierURLProviderURL:v9 type:a4 posterUUID:v10];
  v13 = [v12 URLByAppendingPathComponent:@"versions" isDirectory:1];

  return v13;
}

+ (id)pf_posterPathInstanceURLForProviderURL:()PosterFoundation type:posterUUID:version:
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    [NSURL(PosterFoundation) pf_posterPathInstanceURLForProviderURL:a2 type:? posterUUID:? version:?];
  }

  v13 = v12;
  v14 = [self pf_posterPathVersionsURLForProviderURL:v11 type:a4 posterUUID:v12];
  v15 = [self pf_posterPathInstanceURLForVersionsURL:v14 version:a6];

  return v15;
}

+ (id)pf_posterPathInstanceURLForVersionsURL:()PosterFoundation version:
{
  v6 = a3;
  if (!v6)
  {
    [NSURL(PosterFoundation) pf_posterPathInstanceURLForVersionsURL:a2 version:?];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a4];
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  return v8;
}

+ (id)pf_posterPathContentsURLForProviderURL:()PosterFoundation type:posterUUID:version:
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    [NSURL(PosterFoundation) pf_posterPathContentsURLForProviderURL:a2 type:? posterUUID:? version:?];
  }

  v13 = v12;
  v14 = [self pf_posterPathInstanceURLForProviderURL:v11 type:a4 posterUUID:v12 version:a6];
  v15 = [self pf_posterPathContentsURLForInstanceURL:v14];

  return v15;
}

+ (id)pf_posterPathContentsURLForInstanceURL:()PosterFoundation
{
  v4 = a3;
  if (!v4)
  {
    [NSURL(PosterFoundation) pf_posterPathContentsURLForInstanceURL:a2];
  }

  v5 = v4;
  v6 = [v4 URLByAppendingPathComponent:@"contents" isDirectory:1];

  return v6;
}

+ (id)pf_posterPathScratchURLForInstanceURL:()PosterFoundation
{
  v4 = a3;
  if (!v4)
  {
    [NSURL(PosterFoundation) pf_posterPathScratchURLForInstanceURL:a2];
  }

  v5 = v4;
  v6 = [v4 URLByAppendingPathComponent:@"scratch" isDirectory:1];

  return v6;
}

+ (id)pf_posterPathSupplementContainerURLForInstanceURL:()PosterFoundation
{
  v4 = a3;
  if (!v4)
  {
    [NSURL(PosterFoundation) pf_posterPathSupplementContainerURLForInstanceURL:a2];
  }

  v5 = v4;
  v6 = [v4 URLByAppendingPathComponent:@"supplements"];

  return v6;
}

+ (id)pf_posterPathSupplementURLForInstanceURL:()PosterFoundation supplement:
{
  v7 = a3;
  if (!v7)
  {
    [NSURL(PosterFoundation) pf_posterPathSupplementURLForInstanceURL:a2 supplement:?];
  }

  v8 = v7;
  v9 = [self pf_posterPathSupplementContainerURLForInstanceURL:v7];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a4];
  v11 = [v9 URLByAppendingPathComponent:v10];

  return v11;
}

+ (id)pf_descriptorIdentifierURLForType:()PosterFoundation identifierURL:
{
  v6 = a4;
  if (!v6)
  {
    [NSURL(PosterFoundation) pf_descriptorIdentifierURLForType:a2 identifierURL:?];
  }

  if (a3 - 1 > 3)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = NSStringFromPFServerPosterType(a3);
    v12 = [v10 stringWithFormat:@"Unsupported type: %@", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[NSURL(PosterFoundation) pf_descriptorIdentifierURLForType:identifierURL:];
    }

    [v12 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    v7 = v6;
    v8 = [v6 URLByAppendingPathComponent:PFPathComponent_DescriptorIdentifier isDirectory:0];

    return v8;
  }

  return result;
}

+ (id)pf_roleIdentifierURLForType:()PosterFoundation identifierURL:
{
  v6 = a4;
  if (!v6)
  {
    [NSURL(PosterFoundation) pf_roleIdentifierURLForType:a2 identifierURL:?];
  }

  if (a3 - 1 > 3)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = NSStringFromPFServerPosterType(a3);
    v12 = [v10 stringWithFormat:@"Unsupported type: %@", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[NSURL(PosterFoundation) pf_roleIdentifierURLForType:identifierURL:];
    }

    [v12 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    v7 = v6;
    v8 = [v6 URLByAppendingPathComponent:PFPathComponent_RoleIdentifier isDirectory:0];

    return v8;
  }

  return result;
}

+ (id)pf_providerInfoFileURLForIdentifierURL:()PosterFoundation
{
  v4 = a3;
  if (!v4)
  {
    [NSURL(PosterFoundation) pf_providerInfoFileURLForIdentifierURL:a2];
  }

  v5 = v4;
  v6 = [v4 URLByAppendingPathComponent:@"providerInfo.plist" isDirectory:0];

  return v6;
}

+ (id)pf_versionsURLForIdentifierURL:()PosterFoundation
{
  v4 = a3;
  if (!v4)
  {
    [NSURL(PosterFoundation) pf_versionsURLForIdentifierURL:a2];
  }

  v5 = v4;
  v6 = [v4 URLByAppendingPathComponent:@"versions" isDirectory:1];

  return v6;
}

- (id)pf_loadFromPlistWithError:()PosterFoundation
{
  if (([self isFileURL] & 1) == 0)
  {
    [(NSURL(PosterFoundation) *)a2 pf_loadFromPlistWithError:self];
  }

  v6 = objc_autoreleasePoolPush();
  v18 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:self options:1 error:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    v17 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v17];
    v11 = v17;
    v12 = v11;
    if (v11)
    {
      v13 = PFLogPosterContents(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NSURL(PosterFoundation) pf_loadFromPlistWithError:];
      }

      v14 = v12;
    }
  }

  else
  {
    v12 = v8;
    v10 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (a3 && v12)
  {
    v15 = v12;
    *a3 = v12;
  }

  return v10;
}

- (uint64_t)pf_storeToPlist:()PosterFoundation error:
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    [NSURL(PosterFoundation) pf_storeToPlist:a2 error:?];
  }

  v8 = v7;
  if (([self isFileURL] & 1) == 0)
  {
    [NSURL(PosterFoundation) pf_storeToPlist:a2 error:self];
  }

  v9 = objc_autoreleasePoolPush();
  v25 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v25];
  v11 = v25;
  v12 = v11;
  if (v11)
  {
    v13 = PFLogPosterContents(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NSURL(PosterFoundation) pf_storeToPlist:error:];
    }

    v14 = v12;
  }

  if (v10)
  {
    v24 = 0;
    v15 = [v10 writeToURL:self options:268435457 error:&v24];
    v16 = v24;
    v17 = PFLogPosterContents(v16);
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NSURL(PosterFoundation) pf_storeToPlist:error:];
      }

      v19 = v16;
      v18 = v12;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [self lastPathComponent];
        uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
        *buf = 138412546;
        v27 = lastPathComponent;
        v28 = 2112;
        v29 = uRLByDeletingLastPathComponent;
        _os_log_impl(&dword_1C269D000, v18, OS_LOG_TYPE_DEFAULT, "saved '%@'': (path=%@)", buf, 0x16u);
      }

      v19 = v12;
    }
  }

  else
  {
    v15 = 0;
    v19 = v12;
  }

  objc_autoreleasePoolPop(v9);
  if (a4 && v19)
  {
    v22 = v19;
    *a4 = v19;
  }

  return v15;
}

- (uint64_t)pf_isDirectory
{
  v4 = 0;
  [self getResourceValue:&v4 forKey:*MEMORY[0x1E695DB20] error:0];
  v1 = v4;
  v2 = [v1 isEqual:*MEMORY[0x1E695DB18]];

  return v2;
}

- (uint64_t)pf_isWritable
{
  v2 = 0;
  [self getResourceValue:&v2 forKey:*MEMORY[0x1E695DBF0] error:0];
  return [v2 BOOLValue];
}

- (uint64_t)pf_isReadable
{
  v2 = 0;
  [self getResourceValue:&v2 forKey:*MEMORY[0x1E695DBB0] error:0];
  return [v2 BOOLValue];
}

- (BOOL)pf_isPurgable
{
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  fsctl([self fileSystemRepresentation], 0x40304A6DuLL, &v3, 0);
  return (~v3 & 0xE00) == 0 || v4 != 0;
}

- (uint64_t)pf_setPurgable:()PosterFoundation afterDate:error:
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3)
  {
    fileSystemRepresentation = [self fileSystemRepresentation];
    if ([self pf_isDirectory] && (memset(v47, 0, sizeof(v47)), fsctl(fileSystemRepresentation, 0x40184A03uLL, v47, 0), LODWORD(v47[0]) != 1) && (v46 = 0, v45 = 0u, v44 = 0u, v43 = 0u, v42 = 0u, v41 = 0u, v40 = 0u, v39 = 0u, v38 = 0u, v37 = 0u, v36 = 0u, v35 = 0u, v34 = 0u, v33 = 0u, v32 = 0u, v31 = 0u, *&buf[8] = 0u, *buf = 0x100000001, (v10 = fsctl(fileSystemRepresentation, 0xC1104A71uLL, buf, 0)) != 0))
    {
      if (a5)
      {
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A798];
        v13 = v10;
        v28 = *MEMORY[0x1E696A368];
        path = [self path];
        v29 = path;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *a5 = [v11 errorWithDomain:v12 code:v13 userInfo:v15];
      }

      v16 = 0;
    }

    else
    {
      memset(v47 + 8, 0, 40);
      *&v47[0] = 66048;
      if (v8)
      {
        *&v47[1] = 0x80000;
        [v8 timeIntervalSince1970];
        *&v47[2] = 1000000000 * v17;
      }

      v18 = fsctl(fileSystemRepresentation, 0xC0304A6FuLL, v47, 0);
      v16 = v18 == 0;
      if (v18)
      {
        v19 = v18;
        v20 = PFLogCommon(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          *&buf[22] = 1024;
          LODWORD(v31) = v19;
          _os_log_error_impl(&dword_1C269D000, v20, OS_LOG_TYPE_ERROR, "Error marking '%@' as purgable %@ - %d", buf, 0x1Cu);
        }

        if (a5)
        {
          v21 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E696A798];
          path2 = [self path];
          v27 = path2;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *a5 = [v21 errorWithDomain:v22 code:v19 userInfo:v24];
        }
      }
    }
  }

  else
  {
    v16 = [self pf_unmarkAsPurgableWithError:a5];
  }

  return v16;
}

- (BOOL)pf_unmarkAsPurgableWithError:()PosterFoundation
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v5 = fsctl([self fileSystemRepresentation], 0xC0084A44uLL, &v13, 0);
  v6 = v5;
  if (v5)
  {
    v7 = PFLogCommon(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSURL(PosterFoundation) pf_unmarkAsPurgableWithError:];
    }

    if (a3)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A798];
      v14 = *MEMORY[0x1E696A368];
      path = [self path];
      v15[0] = path;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a3 = [v8 errorWithDomain:v9 code:v6 userInfo:v11];
    }
  }

  return v6 == 0;
}

- (uint64_t)pf_markPurgableInOneHourWithError:()PosterFoundation
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setHour:1];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [currentCalendar dateByAddingComponents:v6 toDate:date options:0];

  v15 = 0;
  v9 = [self pf_setPurgable:1 afterDate:v8 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v10)
  {
    v12 = PFLogCommon(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NSURL(PosterFoundation) pf_markPurgableInOneHourWithError:];
    }

    if (a3)
    {
      v13 = v11;
      *a3 = v11;
    }
  }

  return v9;
}

- (void)pf_fileURLExists:()PosterFoundation
{
  result = [self isFileURL];
  if (result)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [self path];
    v8 = [defaultManager fileExistsAtPath:path isDirectory:a3];

    return v8;
  }

  return result;
}

- (uint64_t)pf_isExcludedFromBackup
{
  v2 = 0;
  [self getResourceValue:&v2 forKey:*MEMORY[0x1E695DB80] error:0];
  return [v2 BOOLValue];
}

- (uint64_t)pf_setExcludedFromBackup:()PosterFoundation error:
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v7 = [self setResourceValue:v6 forKey:*MEMORY[0x1E695DB80] error:a4];

  return v7;
}

- (BOOL)pf_allowSuspendWithOpenFileHandle
{
  value = 0;
  fileSystemRepresentation = [self fileSystemRepresentation];
  v2 = getxattr(fileSystemRepresentation, "com.apple.runningboard.can-suspend-locked", 0, 0, 0, 0);
  result = 0;
  if (v2 == 1)
  {
    getxattr(fileSystemRepresentation, "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
    return value != 0;
  }

  return result;
}

- (BOOL)pf_setAllowSuspendWithOpenFileHandle:()PosterFoundation error:
{
  v15[1] = *MEMORY[0x1E69E9840];
  value = a3 << 31 >> 31;
  v6 = setxattr([self fileSystemRepresentation], "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
  v7 = v6;
  if (a4 && v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v14 = *MEMORY[0x1E696A990];
    path = [self path];
    v15[0] = path;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v8 errorWithDomain:v9 code:v7 userInfo:v11];
  }

  return v7 == 0;
}

- (id)pf_fileResourceIdentifierWithError:()PosterFoundation
{
  v8 = 0;
  v3 = [self getResourceValue:&v8 forKey:*MEMORY[0x1E695DB00] error:a3];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (uint64_t)pf_isUnderlyingFileSystemResourceEqualToURL:()PosterFoundation
{
  v4 = a3;
  v5 = [self pf_fileResourceIdentifierWithError:0];
  v6 = [v4 pf_fileResourceIdentifierWithError:0];

  v7 = BSEqualObjects();
  return v7;
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.3()
{
  OUTLINED_FUNCTION_10_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_12();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1C269D000, v1, OS_LOG_TYPE_ERROR, "Error: can't query free space in %{public}@: %{public}@", v2, 0x16u);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.5()
{
  OUTLINED_FUNCTION_10_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_12();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.6()
{
  OUTLINED_FUNCTION_10_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_12();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.7(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to wrap pathUTF8String : pathUTF8String=%s", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_3();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.8()
{
  OUTLINED_FUNCTION_10_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_12();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to make temp directory template"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to make temp directory basenameTemplate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.11(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"basenamePrefix must not be empty"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_directoryURLWithContainerPath:()PosterFoundation basenamePrefix:.cold.13(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathTypeURLForProviderURL:()PosterFoundation type:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"providerURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathIdentifierURLProviderURL:()PosterFoundation type:posterUUID:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterUUID"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathIdentifierURLProviderURL:()PosterFoundation type:posterUUID:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"providerURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathVersionsURLForProviderURL:()PosterFoundation type:posterUUID:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"providerURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathInstanceURLForProviderURL:()PosterFoundation type:posterUUID:version:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"providerURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathInstanceURLForVersionsURL:()PosterFoundation version:.cold.1(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Invalid condition not satisfying: %@", @"versionsURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_3();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathContentsURLForProviderURL:()PosterFoundation type:posterUUID:version:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"providerURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathContentsURLForInstanceURL:()PosterFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"instanceURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathScratchURLForInstanceURL:()PosterFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"instanceURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathSupplementContainerURLForInstanceURL:()PosterFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"instanceURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_posterPathSupplementURLForInstanceURL:()PosterFoundation supplement:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"instanceURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_descriptorIdentifierURLForType:()PosterFoundation identifierURL:.cold.1()
{
  OUTLINED_FUNCTION_10_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_12();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

+ (void)pf_descriptorIdentifierURLForType:()PosterFoundation identifierURL:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifierURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_roleIdentifierURLForType:()PosterFoundation identifierURL:.cold.1()
{
  OUTLINED_FUNCTION_10_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_12();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

+ (void)pf_roleIdentifierURLForType:()PosterFoundation identifierURL:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifierURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_providerInfoFileURLForIdentifierURL:()PosterFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifierURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_versionsURLForIdentifierURL:()PosterFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifierURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pf_loadFromPlistWithError:()PosterFoundation .cold.1(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a1);
  v6 = [v4 stringWithFormat:@"%@ must be called on a fileURL : %@", v5, a2];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a1);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pf_loadFromPlistWithError:()PosterFoundation .cold.2()
{
  OUTLINED_FUNCTION_8();
  v2 = [v1 lastPathComponent];
  v3 = [v0 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9_0(&dword_1C269D000, v4, v5, "Error during dict-plist deserializing of '%@': %{public}@ (path=%@)", v6, v7, v8, v9);
}

- (void)pf_storeToPlist:()PosterFoundation error:.cold.1(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a1);
  v6 = [v4 stringWithFormat:@"%@ must be called on a fileURL : %@", v5, a2];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a1);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pf_storeToPlist:()PosterFoundation error:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v2 = [v1 lastPathComponent];
  v3 = [v0 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9_0(&dword_1C269D000, v4, v5, "Error during dict-plist serializing of '%@': %{public}@ (path=%@)", v6, v7, v8, v9);
}

- (void)pf_storeToPlist:()PosterFoundation error:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v2 = [v1 lastPathComponent];
  v3 = [v0 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9_0(&dword_1C269D000, v4, v5, "Error during dict-plist writing of '%@': %{public}@ (path=%@)", v6, v7, v8, v9);
}

- (void)pf_storeToPlist:()PosterFoundation error:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"plistable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pf_unmarkAsPurgableWithError:()PosterFoundation .cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_1C269D000, v1, OS_LOG_TYPE_ERROR, "Error marking '%@' as purgable - %d", v2, 0x12u);
}

- (void)pf_markPurgableInOneHourWithError:()PosterFoundation .cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_1C269D000, v0, OS_LOG_TYPE_ERROR, "Failed to mark URL as purgable: %{public}@", v1, 0xCu);
}

@end