@interface PTEffectBackgroundURLManager
+ (CGSize)findSize:(CGSize)size maxSize:(CGSize)maxSize;
- (BOOL)copyAsFullsizeAndThumbnailFromPixelBuffer:(__CVBuffer *)buffer outputPathFullsize:(id)fullsize outputPathThumbnail:(id)thumbnail;
- (PTEffectBackgroundURLManager)initWithUserBackgrounds:(BOOL)backgrounds;
- (id)arrayToPlist:(id)plist;
- (id)asyncWorkerQueue;
- (id)backgroundsWithType:(int64_t)type;
- (id)createBuiltInBackgroundURLsWithFiles:(id)files extension:(id)extension subdirectory:(id)subdirectory;
- (id)makeUniqueFilename;
- (id)plistToArray:(id)array;
- (void)addUserBackground:(id)background ciImage:(id)image backgroundToReplace:(id)replace withOptions:(id)options completion:(id)completion;
- (void)hasUserBackgroundWithPixelBuffer:(id)buffer ciImage:(id)image completion:(id)completion;
- (void)loadUserBackgroundWithPath:(id)path;
- (void)removeUserBackground:(id)background withOptions:(id)options completion:(id)completion;
@end

@implementation PTEffectBackgroundURLManager

- (PTEffectBackgroundURLManager)initWithUserBackgrounds:(BOOL)backgrounds
{
  v7.receiver = self;
  v7.super_class = PTEffectBackgroundURLManager;
  v3 = [(PTEffectBackgroundURLManager *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)loadUserBackgroundWithPath:(id)path
{
  v61[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objc_storeStrong(&self->_userBackgroundDirectory, path);
  userBackgroundDirectory = self->_userBackgroundDirectory;
  if (userBackgroundDirectory)
  {
    path = [(NSURL *)userBackgroundDirectory path];

    if (path)
    {
      v47 = pathCopy;
      v8 = MEMORY[0x277CBEBC0];
      path2 = [(NSURL *)self->_userBackgroundDirectory path];
      v10 = [path2 stringByAppendingPathComponent:@"content.plist"];
      v11 = [v8 fileURLWithPath:v10];
      userBackgroundPList = self->_userBackgroundPList;
      self->_userBackgroundPList = v11;

      v13 = MEMORY[0x277CBEBC0];
      path3 = [(NSURL *)self->_userBackgroundDirectory path];
      v15 = [path3 stringByAppendingPathComponent:@"images"];
      v16 = [v13 fileURLWithPath:v15];
      userBackgroundDirectoryImages = self->_userBackgroundDirectoryImages;
      self->_userBackgroundDirectoryImages = v16;

      v18 = MEMORY[0x277CBEBC0];
      path4 = [(NSURL *)self->_userBackgroundDirectory path];
      v20 = [path4 stringByAppendingPathComponent:@"thumbnails"];
      v21 = [v18 fileURLWithPath:v20];
      userBackgroundDirectoryThumbnails = self->_userBackgroundDirectoryThumbnails;
      self->_userBackgroundDirectoryThumbnails = v21;

      v23 = self->_userBackgroundDirectoryThumbnails;
      v61[0] = self->_userBackgroundDirectoryImages;
      v61[1] = v23;
      [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v24 = v53 = 0u;
      v25 = [v24 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (!v25)
      {
        goto LABEL_24;
      }

      v26 = v25;
      v27 = *v51;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v50 + 1) + 8 * v28);
          v49 = 0;
          fileManager = self->_fileManager;
          path5 = [v29 path];
          LOBYTE(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:path5 isDirectory:&v49];

          if ((fileManager & 1) == 0)
          {
            v37 = self->_fileManager;
            path6 = [v29 path];
            v48 = 0;
            v39 = [(NSFileManager *)v37 createDirectoryAtPath:path6 withIntermediateDirectories:1 attributes:0 error:&v48];
            v35 = v48;

            v41 = _PTLogSystem(v40);
            path8 = v41;
            if (v39)
            {
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                path7 = [v29 path];
                *buf = 138412290;
                v57 = path7;
                _os_log_impl(&dword_2243FB000, path8, OS_LOG_TYPE_INFO, "Created %@", buf, 0xCu);
                goto LABEL_15;
              }
            }

            else if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              path7 = [v29 path];
              *buf = 138412546;
              v57 = path7;
              v58 = 2112;
              v59 = v35;
              _os_log_error_impl(&dword_2243FB000, path8, OS_LOG_TYPE_ERROR, "Error creating directory %@ error %@", buf, 0x16u);
LABEL_15:
            }

LABEL_19:

            goto LABEL_20;
          }

          v33 = v49;
          v34 = _PTLogSystem(v32);
          v35 = v34;
          if (v33)
          {
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              goto LABEL_20;
            }

            path8 = [v29 path];
            *buf = 138412290;
            v57 = path8;
            _os_log_impl(&dword_2243FB000, v35, OS_LOG_TYPE_INFO, "Found background replacement directory %@", buf, 0xCu);
            goto LABEL_19;
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [(PTEffectBackgroundURLManager *)v54 loadUserBackgroundWithPath:v29, &v55, v35];
          }

LABEL_20:

          ++v28;
        }

        while (v26 != v28);
        v43 = [v24 countByEnumeratingWithState:&v50 objects:v60 count:16];
        v26 = v43;
        if (!v43)
        {
LABEL_24:

          v44 = objc_opt_new();
          pixelBufferUtil = self->_pixelBufferUtil;
          self->_pixelBufferUtil = v44;

          pathCopy = v47;
          goto LABEL_28;
        }
      }
    }
  }

  v46 = _PTLogSystem(userBackgroundDirectory);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager loadUserBackgroundWithPath:];
  }

  self->_loadCustomBackgrounds = 0;
LABEL_28:
}

- (id)asyncWorkerQueue
{
  asyncWorkerQueue = self->_asyncWorkerQueue;
  if (!asyncWorkerQueue)
  {
    v4 = dispatch_queue_create("com.apple.portrait.PTEffectBackgroundURLManager", 0);
    v5 = self->_asyncWorkerQueue;
    self->_asyncWorkerQueue = v4;

    asyncWorkerQueue = self->_asyncWorkerQueue;
  }

  return asyncWorkerQueue;
}

- (id)createBuiltInBackgroundURLsWithFiles:(id)files extension:(id)extension subdirectory:(id)subdirectory
{
  v5 = objc_opt_new();
  v6 = _PTLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  v7 = [v5 copy];

  return v7;
}

- (id)backgroundsWithType:(int64_t)type
{
  v3 = _PTLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  return 0;
}

- (id)makeUniqueFilename
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.heic", uUIDString];

  return v4;
}

- (void)hasUserBackgroundWithPixelBuffer:(id)buffer ciImage:(id)image completion:(id)completion
{
  v5 = _PTLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }
}

- (void)addUserBackground:(id)background ciImage:(id)image backgroundToReplace:(id)replace withOptions:(id)options completion:(id)completion
{
  v7 = _PTLogSystem(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }
}

- (void)removeUserBackground:(id)background withOptions:(id)options completion:(id)completion
{
  v5 = _PTLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }
}

+ (CGSize)findSize:(CGSize)size maxSize:(CGSize)maxSize
{
  v4 = size.width / maxSize.width;
  v5 = size.width / maxSize.width;
  v6 = size.height / maxSize.height;
  v7 = size.height / maxSize.height;
  if (v5 > 1.0 || v7 > 1.0)
  {
    if (v5 >= 1.0)
    {
      if (v7 >= 1.0)
      {
        size = maxSize;
      }

      else
      {
        if (maxSize.width * v6 < maxSize.width)
        {
          maxSize.width = maxSize.width * v6;
        }

        if (maxSize.width < size.width)
        {
          size.width = maxSize.width;
        }
      }
    }

    else
    {
      height = maxSize.height * v4;
      if (maxSize.height * v4 >= maxSize.height)
      {
        height = maxSize.height;
      }

      if (height < size.height)
      {
        size.height = height;
      }
    }
  }

  v10 = floor(size.width);
  v11 = floor(size.height);
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)copyAsFullsizeAndThumbnailFromPixelBuffer:(__CVBuffer *)buffer outputPathFullsize:(id)fullsize outputPathThumbnail:(id)thumbnail
{
  v5 = _PTLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  return 0;
}

- (id)arrayToPlist:(id)plist
{
  v30 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = plistCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v27[0] = @"fullsize";
        fullsizeURL = [v9 fullsizeURL];
        path = [fullsizeURL path];
        v28[0] = path;
        v27[1] = @"thumbnail";
        thumbnailURL = [v9 thumbnailURL];
        path2 = [thumbnailURL path];
        v28[1] = path2;
        v27[2] = @"inputBufferChecksum";
        inputBufferChecksum = [v9 inputBufferChecksum];
        if (inputBufferChecksum)
        {
          inputBufferChecksum2 = [v9 inputBufferChecksum];
          v15 = inputBufferChecksum2;
        }

        else
        {
          v15 = &stru_2837D16E8;
        }

        v28[2] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
        [v20 addObject:v16];

        if (inputBufferChecksum)
        {
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  v25 = @"content";
  v26 = v20;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  return v17;
}

- (id)plistToArray:(id)array
{
  v3 = _PTLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  return 0;
}

- (void)loadUserBackgroundWithPath:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_2243FB000, a4, OS_LOG_TYPE_ERROR, "%@ is not a directory", a1, 0xCu);
}

@end