@interface PBUIWallpaperDirectoryDataStore
+ (NSURL)defaultDirectoryURL;
- (BOOL)copyVideoAtURL:(id)l toURL:(id)rL;
- (BOOL)hasWallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)setOriginalVideoURL:(id)l forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)setVideoURL:(id)l forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperImage:(id)image forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperOriginalImage:(id)image forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperThumbnailData:(id)data forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (PBUIWallpaperDirectoryDataStore)init;
- (PBUIWallpaperDirectoryDataStore)initWithDirectoryURL:(id)l;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)verifiedOriginalVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)verifiedVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperImageURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOptionsURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOriginalImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOriginalImageURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOriginalVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperThumbnailDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperThumbnailURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (void)cleanup;
- (void)createDirectory;
- (void)moveWallpaperImageDataTypes:(unint64_t)types fromVariant:(int64_t)variant toVariant:(int64_t)toVariant;
- (void)removeVideoForVariant:(int64_t)variant;
- (void)removeWallpaperImageDataTypes:(unint64_t)types forVariants:(int64_t)variants;
- (void)removeWallpaperOptionsForVariants:(int64_t)variants;
@end

@implementation PBUIWallpaperDirectoryDataStore

+ (NSURL)defaultDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/SpringBoard"];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (PBUIWallpaperDirectoryDataStore)initWithDirectoryURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PBUIWallpaperDirectoryDataStore;
  v5 = [(PBUIWallpaperDirectoryDataStore *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    directoryURL = v5->_directoryURL;
    v5->_directoryURL = v6;
  }

  return v5;
}

- (void)cleanup
{
  v68 = *MEMORY[0x277D85DE8];
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v4 = __possibleWallpaperFileNames(directoryURL);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = *MEMORY[0x277CBE8A8];
  v66 = *MEMORY[0x277CBE8A8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v36 = directoryURL;
  v8 = [defaultManager enumeratorAtURL:directoryURL includingPropertiesForKeys:v7 options:1 errorHandler:&__block_literal_global_9];

  v9 = [v8 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    v39 = v6;
    v40 = v4;
    v37 = *v57;
    v38 = v8;
    do
    {
      v12 = 0;
      v41 = v10;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        v54 = 0;
        v55 = 0;
        v14 = [v13 getResourceValue:&v55 forKey:v6 error:&v54];
        v15 = v55;
        v16 = v54;
        v44 = v16;
        if (v14)
        {
          if (![v15 BOOLValue])
          {
            goto LABEL_38;
          }

          v42 = v15;
          v43 = v12;
          lastPathComponent = [v13 lastPathComponent];
          if (-[NSObject hasPrefix:](lastPathComponent, "hasPrefix:", @".") && (-[NSObject pathExtension](lastPathComponent, "pathExtension"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 length], v18, v19 == 6))
          {
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v20 = v4;
            v21 = [v20 countByEnumeratingWithState:&v50 objects:v61 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v51;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v51 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  if ([lastPathComponent containsString:*(*(&v50 + 1) + 8 * i)])
                  {
                    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                    v49 = 0;
                    v26 = [defaultManager2 removeItemAtURL:v13 error:&v49];
                    v27 = v49;

                    v29 = PBUILogCommon(v28);
                    v30 = v29;
                    if (v26)
                    {
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138543362;
                        v63 = v13;
                        _os_log_debug_impl(&dword_21E67D000, v30, OS_LOG_TYPE_DEBUG, "Removed bad wallpaper data @ URL %{public}@", buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v63 = v13;
                      v64 = 2114;
                      v65 = v27;
                      _os_log_error_impl(&dword_21E67D000, v30, OS_LOG_TYPE_ERROR, "Unable to remove bad wallpaper data @ URL %{public}@: %{public}@", buf, 0x16u);
                    }
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v50 objects:v61 count:16];
              }

              while (v22);
            }
          }

          else
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v31 = v4;
            v32 = [v31 countByEnumeratingWithState:&v45 objects:v60 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v46;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v46 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  if ([lastPathComponent hasPrefix:*(*(&v45 + 1) + 8 * j)])
                  {
                    [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v13];
                  }
                }

                v33 = [v31 countByEnumeratingWithState:&v45 objects:v60 count:16];
              }

              while (v33);
            }
          }

          v4 = v40;

          v8 = v38;
          v6 = v39;
          v11 = v37;
          v10 = v41;
        }

        else
        {
          v42 = v15;
          v43 = v12;
          lastPathComponent = PBUILogCommon(v16);
          if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v63 = v13;
            v64 = 2114;
            v65 = v44;
            _os_log_error_impl(&dword_21E67D000, lastPathComponent, OS_LOG_TYPE_ERROR, "Unable to read resource type from directory URL %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v15 = v42;
        v12 = v43;
LABEL_38:

        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v10);
  }
}

uint64_t __42__PBUIWallpaperDirectoryDataStore_cleanup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PBUILogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __42__PBUIWallpaperDirectoryDataStore_cleanup__block_invoke_cold_1();
  }

  return 1;
}

- (PBUIWallpaperDirectoryDataStore)init
{
  defaultDirectoryURL = [objc_opt_class() defaultDirectoryURL];
  v4 = [(PBUIWallpaperDirectoryDataStore *)self initWithDirectoryURL:defaultDirectoryURL];

  return v4;
}

- (id)wallpaperImageURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperImageFilename(variant, mode);
  v8 = [directoryURL URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (id)wallpaperOriginalImageURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperOriginalImageFilename(variant, mode);
  if (v7)
  {
    v8 = [directoryURL URLByAppendingPathComponent:v7 isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)wallpaperThumbnailURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperThumbnailFilename(variant, mode);
  if (v7)
  {
    v8 = [directoryURL URLByAppendingPathComponent:v7 isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)wallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v29[3] = *MEMORY[0x277D85DE8];
  v7 = [PBUIWallpaperDirectoryDataStore wallpaperImageURLForVariant:"wallpaperImageURLForVariant:wallpaperMode:" wallpaperMode:?];
  v8 = v7;
  if (v7)
  {
    v28 = 0;
    v9 = PBUIWallpaperDataForFileURL(v7, &v28);
    v7 = v28;
    v10 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = PBUILogCommon(v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v26 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:variant wallpaperMode:mode];
    LODWORD(v29[0]) = 138543362;
    *(v29 + 4) = v26;
    _os_log_debug_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEBUG, "Wallpaper file URL: %{public}@", v29, 0xCu);
  }

  v13 = PBUILogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperDirectoryDataStore wallpaperImageForVariant:v9 wallpaperMode:v13];
  }

  if (v9)
  {
    v29[0] = 0;
    cf = 0;
    ImagesFromData = CPBitmapCreateImagesFromData();
    if (ImagesFromData)
    {
      v16 = ImagesFromData;
      ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v29[0])
      {
        [v29[0] floatValue];
        v19 = v18;
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v19 = v24;
      }

      v21 = [[PBUIWallpaperImage alloc] initWithCGImage:ValueAtIndex scale:0 orientation:v8 wallpaperFileURL:v19];
      CFRelease(v16);
    }

    else
    {
      v22 = PBUILogCommon(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PBUIWallpaperDirectoryDataStore wallpaperImageForVariant:v22 wallpaperMode:?];
      }

      v21 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v29[0])
    {
      CFRelease(v29[0]);
    }
  }

  else
  {
    v20 = PBUILogCommon(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PBUIWallpaperDirectoryDataStore wallpaperImageForVariant:v10 wallpaperMode:v20];
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)hasWallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:variant wallpaperMode:mode];
  v5 = [v4 checkResourceIsReachableAndReturnError:0];

  return v5;
}

- (id)wallpaperThumbnailDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:variant wallpaperMode:mode];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)wallpaperOriginalImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:variant wallpaperMode:mode];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277D755B8];
    path = [v4 path];
    v8 = [v6 imageWithContentsOfCPBitmapFile:path flags:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)createDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v5 = directoryURL;
  if (directoryURL)
  {
    directoryCreationAttributes = [(PBUIWallpaperDirectoryDataStore *)self directoryCreationAttributes];
    v10 = 0;
    v7 = [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:directoryCreationAttributes error:&v10];
    v8 = v10;

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = PBUILogCommon(directoryURL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PBUIWallpaperDirectoryDataStore createDirectory];
  }

LABEL_8:
}

- (BOOL)setWallpaperImage:(id)image forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  imageCopy = image;
  if (!__hasEnoughFreeSpaceToSetWallpaper() || ([(PBUIWallpaperDirectoryDataStore *)self createDirectory], variant == -1))
  {
    v11 = 0;
  }

  else
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:variant wallpaperMode:mode];
    path = [v9 path];
    if (path && (([imageCopy writeToCPBitmapFile:path flags:1] & 1) != 0 || objc_msgSend(imageCopy, "writeToCPBitmapFile:flags:", path, 0)))
    {
      [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v9];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)setWallpaperOriginalImage:(id)image forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  imageCopy = image;
  if (!__hasEnoughFreeSpaceToSetWallpaper() || ([(PBUIWallpaperDirectoryDataStore *)self createDirectory], variant == -1))
  {
    v11 = 0;
  }

  else
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:variant wallpaperMode:mode];
    path = [v9 path];
    if (path && (([imageCopy writeToCPBitmapFile:path flags:1] & 1) != 0 || objc_msgSend(imageCopy, "writeToCPBitmapFile:flags:", path, 0)))
    {
      [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v9];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)setWallpaperThumbnailData:(id)data forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (variant != -1)
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:variant wallpaperMode:mode];
    v10 = v9;
    if (v9)
    {
      v17 = 0;
      v11 = [dataCopy writeToURL:v9 options:268435457 error:&v17];
      v9 = v17;
      v12 = v9;
      if (v11)
      {
        [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v10];
        v13 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = PBUILogCommon(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = PBUIStringForWallpaperVariant(variant);
      *buf = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_INFO, "Error writing thumbnail for variant %{public}@ to disk at URL '%{public}@': %{public}@", buf, 0x20u);
    }

    v13 = 0;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)moveWallpaperImageDataTypes:(unint64_t)types fromVariant:(int64_t)variant toVariant:(int64_t)toVariant
{
  typesCopy = types;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  for (i = 0; i != 4; ++i)
  {
    if (typesCopy)
    {
      v10 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:variant wallpaperMode:i];
      v11 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:toVariant wallpaperMode:i];
      v12 = v11;
      if (v10 && v11)
      {
        [defaultManager moveItemAtURL:v10 toURL:v11 error:0];
      }

      if ((typesCopy & 4) == 0)
      {
LABEL_4:
        if ((typesCopy & 2) == 0)
        {
          continue;
        }

LABEL_14:
        v16 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:variant wallpaperMode:i];
        v17 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:toVariant wallpaperMode:i];
        v18 = v17;
        if (v16 && v17)
        {
          [defaultManager moveItemAtURL:v16 toURL:v17 error:0];
        }

        continue;
      }
    }

    else if ((typesCopy & 4) == 0)
    {
      goto LABEL_4;
    }

    v13 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:variant wallpaperMode:i];
    v14 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:toVariant wallpaperMode:i];
    v15 = v14;
    if (v13 && v14)
    {
      [defaultManager moveItemAtURL:v13 toURL:v14 error:0];
    }

    if ((typesCopy & 2) != 0)
    {
      goto LABEL_14;
    }
  }
}

- (void)removeWallpaperImageDataTypes:(unint64_t)types forVariants:(int64_t)variants
{
  variantsCopy = variants;
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PBUIWallpaperDirectoryDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke;
  v19[3] = &unk_2783626B0;
  typesCopy = types;
  v19[4] = self;
  v8 = v7;
  v20 = v8;
  PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v19);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [defaultManager removeItemAtURL:*(*(&v15 + 1) + 8 * v14++) error:{0, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v12);
  }
}

void __77__PBUIWallpaperDirectoryDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = [*(a1 + 32) wallpaperImageURLForVariant:a2 wallpaperMode:i];
      if (v6)
      {
        [*(a1 + 40) addObject:v6];
      }

      v5 = *(a1 + 48);
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          continue;
        }

LABEL_12:
        v8 = [*(a1 + 32) wallpaperThumbnailURLForVariant:a2 wallpaperMode:i];
        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        continue;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    v7 = [*(a1 + 32) wallpaperOriginalImageURLForVariant:a2 wallpaperMode:i];
    if (v7)
    {
      [*(a1 + 40) addObject:v7];
    }

    if ((*(a1 + 48) & 4) != 0)
    {
      goto LABEL_12;
    }
  }
}

- (id)wallpaperVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperVideoFilename(variant, mode);
  v8 = [directoryURL URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (id)wallpaperOriginalVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperOriginalVideoFilename(variant, mode);
  v8 = [directoryURL URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (id)verifiedVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v7 = [PBUIWallpaperDirectoryDataStore wallpaperVideoURLForVariant:"wallpaperVideoURLForVariant:wallpaperMode:" wallpaperMode:?];
  if (([v7 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v8 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:variant wallpaperMode:mode];
    v9 = 0;
    if ([v8 checkResourceIsReachableAndReturnError:0])
    {
      v9 = v8;
    }

    v7 = v9;
  }

  return v7;
}

- (id)verifiedOriginalVideoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:variant wallpaperMode:mode];
  if (([v4 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (BOOL)copyVideoAtURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if ([lCopy isEqual:rLCopy])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    [(PBUIWallpaperDirectoryDataStore *)self createDirectory];
    v9 = [MEMORY[0x277CE6650] assetWithURL:lCopy];
    v10 = v9;
    LOBYTE(v8) = 0;
    if (rLCopy && v9)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtURL:rLCopy error:0];
      v16 = 0;
      v8 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:&v16];
      v12 = v16;
      v13 = v12;
      if (v8)
      {
        [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:rLCopy];
      }

      else
      {
        v14 = PBUILogCommon(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(PBUIWallpaperDirectoryDataStore *)rLCopy copyVideoAtURL:v13 toURL:v14];
        }
      }
    }
  }

  return v8;
}

- (BOOL)setVideoURL:(id)l forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  lCopy = l;
  v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperVideoURLForVariant:variant wallpaperMode:mode];
  LOBYTE(variant) = [(PBUIWallpaperDirectoryDataStore *)self copyVideoAtURL:lCopy toURL:v9];

  return variant;
}

- (BOOL)setOriginalVideoURL:(id)l forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  lCopy = l;
  v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:variant wallpaperMode:mode];
  LOBYTE(variant) = [(PBUIWallpaperDirectoryDataStore *)self copyVideoAtURL:lCopy toURL:v9];

  return variant;
}

- (void)removeVideoForVariant:(int64_t)variant
{
  v23 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  v7 = 0;
  *&v8 = 138543362;
  v18 = v8;
  do
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperVideoURLForVariant:variant wallpaperMode:v6, v18];
    if (!v9 || (v20 = v7, v10 = [defaultManager removeItemAtURL:v9 error:&v20], v11 = v20, v7, v7 = v11, (v10 & 1) == 0))
    {
      pbui_isFileNotFoundError = [v7 pbui_isFileNotFoundError];
      if ((pbui_isFileNotFoundError & 1) == 0)
      {
        v13 = PBUILogCommon(pbui_isFileNotFoundError);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v22 = v7;
          _os_log_error_impl(&dword_21E67D000, v13, OS_LOG_TYPE_ERROR, "Error removing video file: %{public}@", buf, 0xCu);
        }
      }
    }

    v14 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:variant wallpaperMode:v6];
    if (v14)
    {
      v19 = 0;
      v15 = [defaultManager removeItemAtURL:v14 error:&v19];
      v7 = v19;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    pbui_isFileNotFoundError2 = [v7 pbui_isFileNotFoundError];
    if ((pbui_isFileNotFoundError2 & 1) == 0)
    {
      v17 = PBUILogCommon(pbui_isFileNotFoundError2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = v18;
        v22 = v7;
        _os_log_error_impl(&dword_21E67D000, v17, OS_LOG_TYPE_ERROR, "Error removing original video file: %{public}@", buf, 0xCu);
      }
    }

LABEL_16:

    ++v6;
  }

  while (v6 != 4);
}

- (id)wallpaperOptionsURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  if (variant == 1)
  {
    v5 = @"HomeWallpaperOptions";
  }

  else
  {
    if (variant)
    {
      goto LABEL_9;
    }

    v5 = @"LockWallpaperOptions";
  }

  if (mode == 2)
  {
    v6 = PBUIStringForWallpaperMode(2uLL);
    v5 = [(__CFString *)v5 stringByAppendingString:v6];
  }

  v7 = [(__CFString *)v5 stringByAppendingString:@".plist"];

  if (v7)
  {
    directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
    v9 = [directoryURL URLByAppendingPathComponent:v7 isDirectory:0];

    goto LABEL_10;
  }

LABEL_9:
  v9 = 0;
LABEL_10:

  return v9;
}

- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  if ([(PBUIWallpaperDirectoryDataStore *)self supportsWallpaperOptions])
  {
    v7 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOptionsURLForVariant:variant wallpaperMode:mode];
    if (v7)
    {
      v8 = [[PBUIWallpaperOptions alloc] initWithContentsOfURL:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setWallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  variantsCopy = variants;
  optionsCopy = options;
  if ([(PBUIWallpaperDirectoryDataStore *)self supportsWallpaperOptions])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__PBUIWallpaperDirectoryDataStore_setWallpaperOptions_forVariants_wallpaperMode___block_invoke;
    v11[3] = &unk_2783626D8;
    v11[4] = self;
    modeCopy = mode;
    v12 = optionsCopy;
    v13 = &v15;
    PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v11);
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __81__PBUIWallpaperDirectoryDataStore_setWallpaperOptions_forVariants_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) wallpaperOptionsURLForVariant:a2 wallpaperMode:*(a1 + 56)];
  v4 = v3;
  if (!v3 || (v6 = v3, v3 = [*(a1 + 40) writeToURL:v3 error:0], v4 = v6, (v3 & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)removeWallpaperOptionsForVariants:(int64_t)variants
{
  variantsCopy = variants;
  if ([(PBUIWallpaperDirectoryDataStore *)self supportsWallpaperOptions])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__PBUIWallpaperDirectoryDataStore_removeWallpaperOptionsForVariants___block_invoke;
    v7[3] = &unk_278362330;
    v7[4] = self;
    v8 = defaultManager;
    v6 = defaultManager;
    PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v7);
  }
}

void __69__PBUIWallpaperDirectoryDataStore_removeWallpaperOptionsForVariants___block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = [*(a1 + 32) wallpaperOptionsURLForVariant:a2 wallpaperMode:i];
    if (v5)
    {
      [*(a1 + 40) removeItemAtURL:v5 error:0];
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperDirectoryDataStore *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  directoryURL = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v6 = [v4 appendObject:directoryURL withName:@"directoryURL"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIWallpaperDirectoryDataStore *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)wallpaperImageForVariant:(void *)a1 wallpaperMode:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = [a1 length];
  v6 = 2048;
  v7 = a1;
  _os_log_debug_impl(&dword_21E67D000, a2, OS_LOG_TYPE_DEBUG, "Wallpaper file data length: %lu (%p)", &v4, 0x16u);
}

- (void)wallpaperImageForVariant:(uint64_t *)a1 wallpaperMode:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "Error deserializing wallpaper image: %{public}@", &v3, 0xCu);
}

- (void)wallpaperImageForVariant:(uint64_t)a1 wallpaperMode:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21E67D000, a2, OS_LOG_TYPE_DEBUG, "Error reading wallpaper file data: %@", &v2, 0xCu);
}

- (void)copyVideoAtURL:(NSObject *)a3 toURL:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21E67D000, a3, OS_LOG_TYPE_ERROR, "Error writing video file to '%{public}@': %{public}@", &v6, 0x16u);
}

@end