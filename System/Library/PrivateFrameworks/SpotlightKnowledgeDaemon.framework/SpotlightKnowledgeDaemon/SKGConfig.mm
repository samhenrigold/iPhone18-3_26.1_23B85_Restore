@interface SKGConfig
- (SKGConfig)initWithConfigPath:(id)path;
- (SKGConfig)initWithConfigPath:(id)path resourceDirectoryPath:(id)directoryPath resourceVersion:(int64_t)version;
- (void)readConfig;
- (void)updateConfig;
@end

@implementation SKGConfig

- (SKGConfig)initWithConfigPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = SKGConfig;
  v5 = [(SKGConfig *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 24) = vdupq_n_s64(0x7FFFFFFFuLL);
    [v5 readConfig];
  }

  return v5;
}

- (SKGConfig)initWithConfigPath:(id)path resourceDirectoryPath:(id)directoryPath resourceVersion:(int64_t)version
{
  pathCopy = path;
  directoryPathCopy = directoryPath;
  v14.receiver = self;
  v14.super_class = SKGConfig;
  v10 = [(SKGConfig *)&v14 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    configURL = v10->_configURL;
    v10->_configURL = v11;

    objc_storeStrong(&v10->_resourcePath, directoryPath);
    v10->_currentResourceVersion = version;
    v10->_currentReleaseVersion = 3;
    [(SKGConfig *)v10 updateConfig];
  }

  return v10;
}

- (void)readConfig
{
  if (!self->_configURL)
  {
    return;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_configURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (!v5)
  {
    return;
  }

  v6 = MEMORY[0x277CBEA90];
  path2 = [(NSURL *)self->_configURL path];
  v20 = [v6 dataWithContentsOfFile:path2];

  v8 = v20;
  [v20 bytes];
  [v20 length];
  v9 = _MDPlistContainerCreateWithBytes();
  if (v9)
  {
    v10 = v9;
    v11 = _MDPlistContainerCopyRootObject();
    v12 = [v11 objectForKeyedSubscript:@"ReleaseVersion"];
    if (v12)
    {
      resourcePath = v12;
      v14 = [v11 objectForKeyedSubscript:@"ResourceVersion"];
      if (!v14)
      {
LABEL_8:

        goto LABEL_9;
      }

      v15 = v14;
      v16 = [v11 objectForKeyedSubscript:@"ResourcePath"];

      if (v16)
      {
        v17 = [v11 objectForKey:@"ReleaseVersion"];
        self->_currentReleaseVersion = [v17 intValue];

        v18 = [v11 objectForKey:@"ResourceVersion"];
        self->_currentResourceVersion = [v18 intValue];

        v19 = [v11 objectForKey:@"ResourcePath"];
        resourcePath = self->_resourcePath;
        self->_resourcePath = v19;
        goto LABEL_8;
      }
    }

LABEL_9:
    CFRelease(v10);
  }
}

- (void)updateConfig
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (self->_configURL)
  {
    v15[0] = @"ReleaseVersion";
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentReleaseVersion];
    v16[0] = v3;
    v15[1] = @"ResourceVersion";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentResourceVersion];
    v15[2] = @"ResourcePath";
    resourcePath = self->_resourcePath;
    v16[1] = v4;
    v16[2] = resourcePath;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v7 = _MDPlistContainerCreateWithObject();
    if (v7)
    {
      v8 = v7;
      Bytes = _MDPlistContainerGetBytes();
      Length = _MDPlistContainerGetLength();
      if (Bytes)
      {
        v11 = Length == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:Bytes length:Length];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path = [(NSURL *)self->_configURL path];
        [defaultManager createFileAtPath:path contents:v12 attributes:0];
      }

      CFRelease(v8);
    }
  }
}

@end