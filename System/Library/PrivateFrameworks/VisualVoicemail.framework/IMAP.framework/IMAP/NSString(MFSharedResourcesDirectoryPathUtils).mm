@interface NSString(MFSharedResourcesDirectoryPathUtils)
- (id)mf_betterStringByResolvingSymlinksInPath;
- (id)mf_canonicalizedAbsolutePath;
- (id)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
- (id)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath;
- (id)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
@end

@implementation NSString(MFSharedResourcesDirectoryPathUtils)

- (id)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = [self mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  if (([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:@"~"] & 1) == 0)
  {
    if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
    {
      mf_betterStringByResolvingSymlinksInPath = 0;
    }

    else
    {
      mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath2 = [@"~" mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
      mf_betterStringByResolvingSymlinksInPath = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath2 mf_betterStringByResolvingSymlinksInPath];

      _MFLockGlobalLock();
      if (!mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
      {
        objc_storeStrong(&mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, mf_betterStringByResolvingSymlinksInPath);
      }

      _MFUnlockGlobalLock();
    }

    if ([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:?])
    {
      v4 = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath substringFromIndex:{objc_msgSend(mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, "length")}];
      v5 = [@"~" stringByAppendingString:v4];

      mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = v5;
    }
  }

  return mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
}

- (id)mf_betterStringByResolvingSymlinksInPath
{
  _MFLockGlobalLock();
  v3 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  if (!mf_betterStringByResolvingSymlinksInPath_resolvedPaths)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
    mf_betterStringByResolvingSymlinksInPath_resolvedPaths = v4;

    v3 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  }

  stringByResolvingSymlinksInPath = [v3 objectForKey:self];
  _MFUnlockGlobalLock();
  if (!stringByResolvingSymlinksInPath)
  {
    stringByResolvingSymlinksInPath = [self stringByResolvingSymlinksInPath];
    if (stringByResolvingSymlinksInPath)
    {
      _MFLockGlobalLock();
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:stringByResolvingSymlinksInPath forKey:self];
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:stringByResolvingSymlinksInPath forKey:stringByResolvingSymlinksInPath];
      _MFUnlockGlobalLock();
    }
  }

  return stringByResolvingSymlinksInPath;
}

- (id)mf_canonicalizedAbsolutePath
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  realpath_DARWIN_EXTSN(fileSystemRepresentation, v2);
  if (*v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager stringWithFileSystemRepresentation:v2 length:strlen(v2)];
  }

  else
  {
    v4 = 0;
  }

  free(v2);

  return v4;
}

- (id)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath
{
  v2 = [self length];
  v3 = v2;
  if (v2 >= 0x400)
  {
    v4 = 1024;
  }

  else
  {
    v4 = v2;
  }

  v5 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
  [self getCharacters:v5 range:{0, v4}];
  if (v3 < 2)
  {
    if (!v3)
    {
      v4 = 0;
      goto LABEL_18;
    }

LABEL_10:
    v4 = 1;
  }

  else
  {
    while (v5[v4 - 1] == 47)
    {
      if (v4-- <= 2)
      {
        goto LABEL_10;
      }
    }
  }

  if (*v5 == 126)
  {
    v7 = v4 - 1;
    if (v4 == 1 || v5[1] == 47)
    {
      v8 = CPSharedResourcesDirectory();
      v9 = [v8 length];
      v10 = v9 + v7;
      if (v9 + v7 <= 1024)
      {
        v11 = v9;
        memmove(&v5[v9], v5 + 1, 2 * v7);
        [v8 getCharacters:v5 range:{0, v11}];
        v4 = v10;
      }
    }
  }

LABEL_18:
  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:v5 length:v4];
  free(v5);

  return v12;
}

- (id)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = [selfCopy length];
  if (v2 < 1)
  {
    goto LABEL_32;
  }

  v4 = v2;
  v5 = MEMORY[0x28223BE20](v2, v3);
  v7 = (&v24 - v6);
  if (v5 >= 0x101)
  {
    v7 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    [selfCopy getCharacters:v7 range:{0, v4}];
LABEL_6:
    v8 = v4;
    while (v7[v8 - 1] == 47)
    {
      if (v8-- <= 2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_11;
  }

  bzero(v7, 2 * v5);
  [selfCopy getCharacters:v7 range:{0, v4}];
  if (v4 != 1)
  {
    goto LABEL_6;
  }

LABEL_10:
  v8 = 1;
  if (*v7 != 47)
  {
LABEL_11:
    v10 = CPSharedResourcesDirectory();
    v11 = [v10 length];
    v13 = v8 - v11;
    if (v8 >= v11)
    {
      v14 = v11;
      v24 = &v24;
      v15 = MEMORY[0x28223BE20](v11, v12);
      v17 = &v24 - v16;
      v19 = 2 * v18;
      if (v15 > 0x100)
      {
        v17 = malloc_type_malloc(v19, 0x1000040BDFB0063uLL);
      }

      else
      {
        bzero(&v24 - v16, v19);
      }

      [v10 getCharacters:v17 range:{0, v14, v24, v25}];
      if (v14 < 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        while (v7[v20] == *&v17[2 * v20])
        {
          if (v14 == ++v20)
          {
            v20 = v14;
            break;
          }
        }
      }

      if (v14 >= 0x101)
      {
        free(v17);
      }

      if (v20 == v8)
      {
        *v7 = 126;
        v8 = 1;
      }

      else if (v20 == v14)
      {
        v21 = &v7[v14];
        if (*v21 == 47)
        {
          memmove(v7 + 1, v21, 2 * v13);
          *v7 = 126;
          v8 = v13 + 1;
        }
      }
    }
  }

  v22 = [MEMORY[0x277CCACA8] stringWithCharacters:v7 length:v8];

  if (v4 >= 0x101)
  {
    free(v7);
  }

  selfCopy = v22;
LABEL_32:

  return selfCopy;
}

@end