@interface ISIconStackCompositeResource
- (ISIconStackCompositeResource)initWithResource:(id)resource;
- (ISIconStackCompositeResource)initWithResource:(id)resource platform:(unint64_t)platform;
- (id)_fallbackImageForSize:(CGSize)size scale:(double)scale;
- (id)_finalizedIconForSize:(CGSize)size scale:(double)scale;
- (id)iconStackForSize:(CGSize)size scale:(double)scale;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)layerDataForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISIconStackCompositeResource

- (ISIconStackCompositeResource)initWithResource:(id)resource
{
  resourceCopy = resource;
  v5 = +[ISPlatformInfo sharedInstance];
  v6 = -[ISIconStackCompositeResource initWithResource:platform:](self, "initWithResource:platform:", resourceCopy, [v5 nativePlatform]);

  return v6;
}

- (ISIconStackCompositeResource)initWithResource:(id)resource platform:(unint64_t)platform
{
  resourceCopy = resource;
  v16.receiver = self;
  v16.super_class = ISIconStackCompositeResource;
  v8 = [(ISIconStackCompositeResource *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedResource, resource);
    v9->_platform = platform;
    v10 = objc_alloc_init(ISCompositingDescriptor);
    [(ISCompositingDescriptor *)v10 setPlatform:v9->_platform];
    compositingDescriptor = v9->_compositingDescriptor;
    v9->_compositingDescriptor = v10;
    v12 = v10;

    v13 = objc_opt_new();
    finalizedIcons = v9->_finalizedIcons;
    v9->_finalizedIcons = v13;
  }

  return v9;
}

- (id)iconStackForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  wrappedResource = [(ISIconStackCompositeResource *)self wrappedResource];
  v9 = [wrappedResource imageForSize:width scale:{height, scale}];

  v10 = -[ISIconStackComposer initWithLegacyAsset:assetAppearance:platform:]([ISIconStackComposer alloc], "initWithLegacyAsset:assetAppearance:platform:", [v9 CGImage], -[ISIconStackCompositeResource assetAppearance](self, "assetAppearance"), -[ISIconStackCompositeResource platform](self, "platform"));
  v14 = 0;
  scale = [(ISIconStackComposer *)v10 iconStackForSize:0 scale:&v14 desiredAssetAppearance:width returningGenerationReport:height, scale];
  v12 = v14;
  [(ISIconStackCompositeResource *)self setGenerationReport:v12];

  return scale;
}

- (id)_finalizedIconForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v25 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackCompositeResource _keyForSize:"_keyForSize:scale:" scale:?];
  finalizedIcons = [(ISIconStackCompositeResource *)self finalizedIcons];
  v10 = [finalizedIcons objectForKey:v8];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    scale = [(ISIconStackCompositeResource *)self iconStackForSize:width scale:height, scale];
    if (scale)
    {
      compositingDescriptor = [(ISIconStackCompositeResource *)self compositingDescriptor];
      v14 = [compositingDescriptor copy];

      [v14 setSize:{width, height}];
      [v14 setScale:scale];
      v11 = [scale _IS_finalizedIconWithCompositingDescriptor:v14];
      if (v11)
      {
        finalizedIcons2 = [(ISIconStackCompositeResource *)self finalizedIcons];
        [finalizedIcons2 setObject:v11 forKey:v8];

        v16 = v11;
      }
    }

    else
    {
      v17 = _ISDefaultLog(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134218496;
        v20 = width;
        v21 = 2048;
        v22 = width;
        v23 = 2048;
        scaleCopy = scale;
        _os_log_impl(&dword_1A77B8000, v17, OS_LOG_TYPE_DEFAULT, "Failed to generate icon stack for composite resource for size: (%f,%f) scale:(%lf)", &v19, 0x20u);
      }

      v11 = 0;
    }
  }

  return v11;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v23 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackCompositeResource _finalizedIconForSize:"_finalizedIconForSize:scale:" scale:?];
  if (v8)
  {
    compositingDescriptor = [(ISIconStackCompositeResource *)self compositingDescriptor];
    v10 = [compositingDescriptor copy];

    [v10 setSize:{width, height}];
    [v10 setScale:scale];
    v11 = [v8 _IS_imageWithCompositingDescriptor:v10];
    v12 = v11;
    if (v11)
    {
      scale = v11;
    }

    else
    {
      v15 = _ISDefaultLog(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218496;
        v18 = width;
        v19 = 2048;
        v20 = width;
        v21 = 2048;
        scaleCopy = scale;
        _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for composite icon stack size: (%f,%f) scale:(%lf)", &v17, 0x20u);
      }

      scale = [(ISIconStackCompositeResource *)self _fallbackImageForSize:width scale:height, scale];
    }

    scale2 = scale;
  }

  else
  {
    scale2 = [(ISIconStackCompositeResource *)self _fallbackImageForSize:width scale:height, scale];
  }

  return scale2;
}

- (id)layerDataForSize:(CGSize)size scale:(double)scale
{
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(ISIconStackCompositeResource *)self _finalizedIconForSize:size.width scale:size.height];
  v12 = 0;
  v7 = [v6 serializedDataWithError:&v12];
  v8 = v12;
  v9 = v8;
  if (!v7 || (v8 = [v7 length]) == 0)
  {
    v10 = _ISDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      v14 = width;
      v15 = 2048;
      v16 = width;
      v17 = 2048;
      scaleCopy = scale;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_1A77B8000, v10, OS_LOG_TYPE_ERROR, "Failed to serialize finalized composite icon for size: (%f,%f) scale:(%lf). Error:%@", buf, 0x2Au);
    }
  }

  return v7;
}

- (id)_fallbackImageForSize:(CGSize)size scale:(double)scale
{
  scale = [[ISImageDescriptor alloc] initWithSize:size.width scale:size.height, scale];
  v5 = MEMORY[0x1E69A8988];
  identifier = [*MEMORY[0x1E6982CA8] identifier];
  v7 = [v5 _placeholderImageWithImageDescriptor:scale markAsPlaceholder:1 fallbackTypeID:identifier referenceIcon:0];

  return v7;
}

@end