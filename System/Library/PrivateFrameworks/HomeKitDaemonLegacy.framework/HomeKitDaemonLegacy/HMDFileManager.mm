@interface HMDFileManager
- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error;
- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes;
- (BOOL)fileExistsAtPath:(id)path;
- (BOOL)fileExistsAtPath:(id)path isDirectory:(BOOL *)directory;
- (BOOL)fileExistsAtURL:(id)l;
- (BOOL)isDeletableFileAtPath:(id)path;
- (BOOL)linkItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (BOOL)unzipItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)writeJSONObject:(id)object toURL:(id)l error:(id *)error;
- (BOOL)zipItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (NSURL)heroFrameStoreDirectoryURL;
- (NSURL)legacyHeroFrameStoreDirectoryURL;
- (id)JSONObjectWithURL:(id)l error:(id *)error;
- (id)attributesOfItemAtPath:(id)path error:(id *)error;
- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options error:(id *)error;
- (void)enumerateItemsAtURL:(id)l includingPropertiesForKeys:(id)keys usingBlock:(id)block;
@end

@implementation HMDFileManager

- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes
{
  v7 = MEMORY[0x277CCAA00];
  attributesCopy = attributes;
  contentsCopy = contents;
  pathCopy = path;
  defaultManager = [v7 defaultManager];
  v12 = [defaultManager createFileAtPath:pathCopy contents:contentsCopy attributes:attributesCopy];

  return v12;
}

- (id)attributesOfItemAtPath:(id)path error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager attributesOfItemAtPath:pathCopy error:error];

  return v8;
}

- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v7 defaultManager];
  LOBYTE(error) = [defaultManager moveItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (id)contentsOfDirectoryAtURL:(id)l includingPropertiesForKeys:(id)keys options:(unint64_t)options error:(id *)error
{
  v9 = MEMORY[0x277CCAA00];
  keysCopy = keys;
  lCopy = l;
  defaultManager = [v9 defaultManager];
  v13 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:keysCopy options:options error:error];

  return v13;
}

- (void)enumerateItemsAtURL:(id)l includingPropertiesForKeys:(id)keys usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keysCopy = keys;
  blockCopy = block;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:keysCopy options:0 errorHandler:0];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        blockCopy[2](blockCopy, *(*(&v17 + 1) + 8 * v16++));
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (BOOL)isDeletableFileAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager isDeletableFileAtPath:pathCopy];

  return v6;
}

- (BOOL)linkItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v7 defaultManager];
  LOBYTE(error) = [defaultManager linkItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (BOOL)writeJSONObject:(id)object toURL:(id)l error:(id *)error
{
  objectCopy = object;
  v8 = MEMORY[0x277CBEB78];
  lCopy = l;
  v10 = [[v8 alloc] initWithURL:lCopy append:0];

  if (v10)
  {
    [v10 open];
    v11 = [MEMORY[0x277CCAAA0] writeJSONObject:objectCopy toStream:v10 options:1 error:error] != 0;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)JSONObjectWithURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CBEAE0];
  lCopy = l;
  v7 = [[v5 alloc] initWithURL:lCopy];

  if (v7)
  {
    [v7 open];
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v7 options:0 error:error];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)zipItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  path = [rL path];
  v9 = fopen([path fileSystemRepresentation], "w+");

  if (v9)
  {
    v14 = *MEMORY[0x277D6A788];
    v15[0] = *MEMORY[0x277D6A780];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, 0, 0, 0, 0, 0, v9, 0, 0, 0, 0, 0, 0, 0}];
    path2 = [lCopy path];
    [path2 fileSystemRepresentation];
    StreamableZip = SZArchiverCreateStreamableZip();

    fclose(v9);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *error = StreamableZip = 0;
  }

  else
  {
    StreamableZip = 0;
  }

  return StreamableZip;
}

- (BOOL)unzipItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v23[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v22[0] = @"extractPKZip";
  v22[1] = @"sequesterResources";
  v23[0] = MEMORY[0x277CBEC38];
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = @"copyResources";
  v23[2] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v12 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"temp"];

  BOMCopierNew();
  [lCopy fileSystemRepresentation];
  [v12 fileSystemRepresentation];
  v13 = BOMCopierCopyWithOptions();
  BOMCopierFree();
  if (v13)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = 0;
  [(HMDFileManager *)self removeItemAtURL:lCopy error:&v21];
  v19 = v21;
  v20 = v19;
  [(HMDFileManager *)self moveItemAtURL:v12 toURL:rLCopy error:&v20];
  v14 = v20;

  if (error)
  {
LABEL_3:
    v15 = v14;
    *error = v14;
  }

LABEL_4:
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0;
  }

  v17 = v16;

  return v17;
}

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:lCopy error:error];

  return error;
}

- (BOOL)fileExistsAtURL:(id)l
{
  v3 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  path = [lCopy path];

  LOBYTE(lCopy) = [defaultManager fileExistsAtPath:path];
  return lCopy;
}

- (BOOL)fileExistsAtPath:(id)path isDirectory:(BOOL *)directory
{
  v5 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  LOBYTE(directory) = [defaultManager fileExistsAtPath:pathCopy isDirectory:directory];

  return directory;
}

- (BOOL)fileExistsAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v7 defaultManager];
  LOBYTE(error) = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error
{
  directoriesCopy = directories;
  v9 = MEMORY[0x277CCAA00];
  attributesCopy = attributes;
  lCopy = l;
  defaultManager = [v9 defaultManager];
  LOBYTE(error) = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:directoriesCopy attributes:attributesCopy error:error];

  return error;
}

- (NSURL)legacyHeroFrameStoreDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = storeDirectoryPath;
  v4 = [v3 stringByAppendingPathComponent:@"HeroFrame"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

- (NSURL)heroFrameStoreDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = getBulletinImagesPath();
  v4 = [v3 stringByAppendingPathComponent:@"HeroFrame"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

@end