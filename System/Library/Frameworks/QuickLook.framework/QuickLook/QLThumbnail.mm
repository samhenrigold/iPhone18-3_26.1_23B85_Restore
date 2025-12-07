@interface QLThumbnail
+ (id)defaultDescriptors;
+ (id)sharedQueue;
- (BOOL)provideImages:(id)images error:(id *)error;
- (QLThumbnail)initWithURL:(id)l;
- (id)imageForUseMode:(unint64_t)mode descriptor:(id)descriptor generateIfNeeded:(BOOL)needed contentRect:(CGRect *)rect error:(id *)error;
- (id)thumbnailCreationOperationForUseMode:(unint64_t)mode descriptor:(id)descriptor generateIfNeeded:(BOOL)needed;
@end

@implementation QLThumbnail

- (QLThumbnail)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = QLThumbnail;
  v5 = [(QLThumbnail *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(QLThumbnail *)v5 setUrl:lCopy];
  }

  return v6;
}

- (id)thumbnailCreationOperationForUseMode:(unint64_t)mode descriptor:(id)descriptor generateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  descriptorCopy = descriptor;
  v9 = objc_alloc_init(QLThumbnailCreationOperation);
  [(QLThumbnailCreationOperation *)v9 setUseMode:mode];
  [descriptorCopy size];
  v11 = v10;
  [descriptorCopy size];
  if (v11 >= v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  [(QLThumbnailCreationOperation *)v9 setMaximumDimension:v13];
  [descriptorCopy scaleFactor];
  v15 = v14;

  [(QLThumbnailCreationOperation *)v9 setScaleFactor:v15];
  v16 = [(QLThumbnail *)self url];
  [(QLThumbnailCreationOperation *)v9 setDocumentURL:v16];

  [(QLThumbnailCreationOperation *)v9 setGenerateIfNeeded:neededCopy];

  return v9;
}

+ (id)sharedQueue
{
  if (sharedQueue_once != -1)
  {
    +[QLThumbnail sharedQueue];
  }

  v3 = sharedQueue_queue;

  return v3;
}

uint64_t __26__QLThumbnail_sharedQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = sharedQueue_queue;
  sharedQueue_queue = v0;

  [sharedQueue_queue setName:@"QLThumbnail"];
  v2 = sharedQueue_queue;

  return [v2 setMaxConcurrentOperationCount:4];
}

+ (id)defaultDescriptors
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [QLThumbnailDescriptor descriptorWithSize:225.0 scaleFactor:225.0, 1.0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)imageForUseMode:(unint64_t)mode descriptor:(id)descriptor generateIfNeeded:(BOOL)needed contentRect:(CGRect *)rect error:(id *)error
{
  v9 = [(QLThumbnail *)self thumbnailCreationOperationForUseMode:mode descriptor:descriptor generateIfNeeded:needed];
  sharedQueue = [objc_opt_class() sharedQueue];
  [sharedQueue addOperation:v9];
  [v9 waitUntilFinished];
  if (rect)
  {
    [v9 contentRect];
    rect->origin.x = v11;
    rect->origin.y = v12;
    rect->size.width = v13;
    rect->size.height = v14;
  }

  if (error)
  {
    *error = [v9 error];
  }

  image = [v9 image];

  return image;
}

- (BOOL)provideImages:(id)images error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  defaultDescriptors = [objc_opt_class() defaultDescriptors];
  v8 = imagesCopy[2](imagesCopy, defaultDescriptors);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v34;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        [v16 size];
        v18 = v17;
        [v16 size];
        if (v18 < v19)
        {
          v18 = v19;
        }

        if (v18 > v14)
        {
          v20 = v16;

          v14 = v18;
          v12 = v20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v21 = MEMORY[0x277CDAAC0];
  cGImage = [v12 CGImage];
  v23 = [(QLThumbnail *)self url];
  v24 = [v21 associateImage:cGImage metadata:0 automaticallyGenerated:0 withURL:v23 error:error];

  v25 = MEMORY[0x277D43EF8];
  v26 = *MEMORY[0x277D43EF8];
  if (v24)
  {
    if (!v26)
    {
      QLSInitLogging();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      url = self->_url;
      *buf = 138412290;
      v38 = url;
      v28 = "Saved thumbnail in additions for %@ #Thumbnail";
      v29 = v26;
      v30 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_23A714000, v29, v30, v28, buf, 0xCu);
    }
  }

  else
  {
    if (!v26)
    {
      QLSInitLogging();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v31 = *error;
      }

      else
      {
        v31 = 0;
      }

      *buf = 138412290;
      v38 = v31;
      v28 = "Could not save thumbnail in additions: %@ #Thumbnail";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      goto LABEL_26;
    }
  }

  return v24;
}

@end