@interface LPImage
+ (id)_PDFImageNamed:(id)named template:(BOOL)template;
+ (id)_PNGImageNamed:(id)named;
+ (id)_PNGImageNamed:(id)named template:(BOOL)template properties:(id)properties;
+ (id)_loadImageSubsampledToScreenSizeFromData:(id)data;
+ (id)_optionalSystemImageNamed:(id)named withSymbolConfiguration:(id)configuration;
+ (id)_systemImageNamed:(id)named;
+ (id)_systemImageNamed:(id)named withSymbolConfiguration:(id)configuration;
- (BOOL)_canEncodeWithoutComputation;
- (BOOL)_isAnimated;
- (BOOL)_isFallbackIcon;
- (BOOL)_isLowResolutionAsIconWithScaleFactor:(double)factor;
- (BOOL)_isLowResolutionAsImage;
- (BOOL)hasPlaceholderValueForAsynchronousLoad;
- (BOOL)isEqual:(id)equal;
- (CGSize)_pixelSize;
- (LPImage)initWithCoder:(id)coder;
- (LPImage)initWithData:(id)data MIMEType:(id)type;
- (LPImage)initWithData:(id)data MIMEType:(id)type properties:(id)properties;
- (LPImage)initWithItemProvider:(id)provider properties:(id)properties placeholderImage:(id)image;
- (LPImage)initWithPlatformImage:(id)image;
- (LPImage)initWithPlatformImage:(id)image properties:(id)properties;
- (LPImageProperties)properties;
- (NSData)data;
- (NSItemProvider)_itemProvider;
- (NSString)MIMEType;
- (NSString)_srcsetForRemoteURLs;
- (UIImage)platformImage;
- (id)_asTemplate;
- (id)_existingPlatformImage;
- (id)_initWithCGImage:(CGImage *)image;
- (id)_initWithCGImage:(CGImage *)image properties:(id)properties;
- (id)_initWithImage:(id)image;
- (id)_initWithImage:(id)image properties:(id)properties;
- (id)_initWithPlatformImageGenerator:(id)generator properties:(id)properties;
- (id)filledVariant;
- (id)initByReferencingFileURL:(id)l MIMEType:(id)type;
- (id)initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties;
- (unint64_t)_encodedSize;
- (unint64_t)hash;
- (void)_computeDominantColorForProperties;
- (void)_createDataFromPlatformImage;
- (void)_ensureTransparentRegions;
- (void)_mapDataFromFileURL;
- (void)_synchronouslyDecodePlatformImageWithMaximumSize:(CGSize)size;
- (void)_waitForAsynchronouslyLoadedImageIfNeeded;
- (void)encodeWithCoder:(id)coder;
- (void)loadAsynchronouslyWithCompletionHandler:(id)handler;
- (void)setFileURL:(id)l;
@end

@implementation LPImage

- (id)_initWithImage:(id)image
{
  imageCopy = image;
  if (imageCopy && (v14.receiver = self, v14.super_class = LPImage, v5 = [(LPImage *)&v14 init], (self = v5) != 0))
  {
    objc_storeStrong(&v5->_originalPlatformImage, *(imageCopy + 1));
    objc_storeStrong(&self->_decodedPlatformImage, *(imageCopy + 2));
    objc_storeStrong(&self->_platformImage, *(imageCopy + 17));
    self->_isNonFallbackSymbolImage = *(imageCopy + 108);
    _cachedAtomicData = [imageCopy _cachedAtomicData];
    v7 = [_cachedAtomicData copy];
    [(LPImage *)self set_cachedAtomicData:v7];

    v8 = [*(imageCopy + 3) copy];
    MIMEType = self->_MIMEType;
    self->_MIMEType = v8;

    objc_storeStrong(&self->_fileURL, *(imageCopy + 18));
    v10 = [*(imageCopy + 4) copy];
    properties = self->_properties;
    self->_properties = v10;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithImage:(id)image properties:(id)properties
{
  propertiesCopy = properties;
  v8 = [(LPImage *)self _initWithImage:image];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 4, properties);
    v10 = v9;
  }

  return v9;
}

- (LPImage)initWithData:(id)data MIMEType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v8 = objc_alloc_init(LPImageProperties);
  v9 = [(LPImage *)self initWithData:dataCopy MIMEType:typeCopy properties:v8];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

- (LPImage)initWithData:(id)data MIMEType:(id)type properties:(id)properties
{
  dataCopy = data;
  typeCopy = type;
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = LPImage;
  v11 = [(LPImage *)&v16 init];
  if (v11)
  {
    if (!dataCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil data."];
    }

    if (!typeCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil MIME type."];
    }

    [(LPImage *)v11 set_cachedAtomicData:dataCopy];
    objc_storeStrong(&v11->_MIMEType, type);
    v12 = [propertiesCopy copy];
    properties = v11->_properties;
    v11->_properties = v12;

    v14 = v11;
  }

  return v11;
}

- (id)initByReferencingFileURL:(id)l MIMEType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v8 = objc_alloc_init(LPImageProperties);
  v9 = [(LPImage *)self initByReferencingFileURL:lCopy MIMEType:typeCopy properties:v8];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

- (id)initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties
{
  lCopy = l;
  typeCopy = type;
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = LPImage;
  v11 = [(LPImage *)&v16 init];
  if (!v11)
  {
    goto LABEL_10;
  }

  if (!lCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil file URL."];
  }

  if (!typeCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with nil MIME type."];
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Trying to create an LPImage with URL which is not a file URL."];
  }

  if ([lCopy checkResourceIsReachableAndReturnError:0])
  {
    [(LPImage *)v11 setFileURL:lCopy];
    objc_storeStrong(&v11->_MIMEType, type);
    v12 = [propertiesCopy copy];
    properties = v11->_properties;
    v11->_properties = v12;

    v14 = v11;
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

- (LPImage)initWithPlatformImage:(id)image
{
  imageCopy = image;
  v5 = objc_alloc_init(LPImageProperties);
  v6 = [(LPImage *)self initWithPlatformImage:imageCopy properties:v5];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (LPImage)initWithPlatformImage:(id)image properties:(id)properties
{
  imageCopy = image;
  propertiesCopy = properties;
  v10 = propertiesCopy;
  if (!imageCopy)
  {
    v14 = LPLogChannelImage(propertiesCopy, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [LPImage initWithPlatformImage:v14 properties:?];
    }

    v12 = 0;
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = LPImage;
  v11 = [(LPImage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalPlatformImage, image);
    v13 = [v10 copy];
    self = v12->_properties;
    v12->_properties = v13;
LABEL_7:
  }

  return v12;
}

- (LPImage)initWithItemProvider:(id)provider properties:(id)properties placeholderImage:(id)image
{
  providerCopy = provider;
  propertiesCopy = properties;
  imageCopy = image;
  v12 = imageCopy;
  if (imageCopy)
  {
    data = [imageCopy data];
    mIMEType = [v12 MIMEType];
    v15 = [(LPImage *)self initWithData:data MIMEType:mIMEType];

    properties = [v12 properties];
    placeholderProperties = v15->_placeholderProperties;
    v15->_placeholderProperties = properties;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = LPImage;
    v15 = [(LPImage *)&v19 init];
    if (!v15)
    {
      goto LABEL_6;
    }
  }

  objc_storeStrong(&v15->_itemProvider, provider);
  if (propertiesCopy)
  {
    objc_storeStrong(&v15->_properties, properties);
  }

LABEL_6:

  return v15;
}

- (id)_initWithCGImage:(CGImage *)image
{
  v5 = objc_alloc_init(LPImageProperties);
  v6 = [(LPImage *)self _initWithCGImage:image properties:v5];

  return v6;
}

- (id)_initWithCGImage:(CGImage *)image properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:image];
  v8 = [(LPImage *)self initWithPlatformImage:v7 properties:propertiesCopy];

  if (v8)
  {
    v8->_isAnimated = 0;
    v8->_hasComputedIsAnimated = 1;
    v9 = v8;
  }

  return v8;
}

+ (id)_systemImageNamed:(id)named
{
  v3 = [LPImage _systemImageNamed:named withSymbolConfiguration:0];

  return v3;
}

+ (id)_systemImageNamed:(id)named withSymbolConfiguration:(id)configuration
{
  v4 = [self _optionalSystemImageNamed:named withSymbolConfiguration:configuration];

  return v4;
}

+ (id)_optionalSystemImageNamed:(id)named withSymbolConfiguration:(id)configuration
{
  namedCopy = named;
  configurationCopy = configuration;
  v8 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:namedCopy];
  v9 = v8;
  if (v8)
  {
    if (configurationCopy)
    {
      v10 = [v8 _lp_imageByApplyingSymbolConfiguration:configurationCopy];

      v9 = v10;
    }

    v11 = [[LPImage alloc] initWithPlatformImage:v9];
    objc_storeStrong(&v11->_symbolName, named);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initWithPlatformImageGenerator:(id)generator properties:(id)properties
{
  generatorCopy = generator;
  propertiesCopy = properties;
  v20.receiver = self;
  v20.super_class = LPImage;
  v8 = [(LPImage *)&v20 init];
  if (v8)
  {
    v9 = [propertiesCopy copy];
    properties = v8->_properties;
    v8->_properties = v9;

    v11 = dispatch_group_create();
    [(LPImage *)v8 _setAsynchronousLoadGroup:v11];

    _asynchronousLoadGroup = [(LPImage *)v8 _asynchronousLoadGroup];
    dispatch_group_enter(_asynchronousLoadGroup);

    if (asyncImageLoadingSerialRequestQueue_onceToken != -1)
    {
      [LPImage _initWithPlatformImageGenerator:properties:];
    }

    v13 = asyncImageLoadingSerialRequestQueue_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke;
    v17[3] = &unk_1E7A35428;
    v19 = generatorCopy;
    v14 = v8;
    v18 = v14;
    dispatch_async(v13, v17);
    v15 = v14;
  }

  return v8;
}

void __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke(uint64_t a1)
{
  v2 = MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore;
  if (!MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore)
  {
    v3 = dispatch_semaphore_create(4);
    v4 = MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore;
    MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore = v3;

    v2 = MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore;
  }

  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  if (asyncImageLoadingQueue_onceToken != -1)
  {
    __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_cold_1();
  }

  v5 = asyncImageLoadingQueue_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_2;
  v6[3] = &unk_1E7A35428;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  dispatch_async(v5, v6);
}

void __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_3;
  v2[3] = &unk_1E7A355B8;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(v1 + 16))(v1, v2);
}

void __54__LPImage__initWithPlatformImageGenerator_properties___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v6 = LPLogChannelImage(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = 134218240;
    v10 = v7;
    v11 = 1024;
    v12 = v4 != 0;
    _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_INFO, "LPImage<%p>: finished loading async image (success: %d)", &v9, 0x12u);
  }

  objc_storeStrong((*(a1 + 32) + 8), a2);
  v8 = [*(a1 + 32) _asynchronousLoadGroup];
  dispatch_group_leave(v8);

  dispatch_semaphore_signal(MIMETypeForDataCreatedFromPlatformImage_block_invoke_limitSemaphore);
  [*(a1 + 32) _setAsynchronousLoadGroup:0];
}

- (void)_computeDominantColorForProperties
{
  platformImage = [(LPImage *)self platformImage];
  _lp_dominantColors = [platformImage _lp_dominantColors];

  -[LPImageProperties setHasSingleDominantColor:](self->_properties, "setHasSingleDominantColor:", [_lp_dominantColors count] == 1);
  firstObject = [_lp_dominantColors firstObject];
  [(LPImageProperties *)self->_properties setDominantColor:firstObject];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = LPImage;
  if (![(LPImage *)&v13 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_17;
    }

    v6 = equalCopy;
    if (objectsAreEqual(v6[1], self->_originalPlatformImage))
    {
      _cachedAtomicData = [v6 _cachedAtomicData];
      _cachedAtomicData2 = [(LPImage *)self _cachedAtomicData];
      v9 = objectsAreEqual(_cachedAtomicData, _cachedAtomicData2);

      if ((v9 & 1) != 0 && objectsAreEqual(v6[3], self->_MIMEType) && objectsAreEqual(v6[18], self->_fileURL) && objectsAreEqual(v6[4], self->_properties) && !v6[6] && !self->_itemProvider)
      {
        _asynchronousLoadGroup = [v6 _asynchronousLoadGroup];
        if (_asynchronousLoadGroup)
        {
        }

        else
        {
          _asynchronousLoadGroup2 = [(LPImage *)self _asynchronousLoadGroup];

          if (!_asynchronousLoadGroup2)
          {
            v5 = *(v6 + 108) == self->_isNonFallbackSymbolImage;
            goto LABEL_16;
          }
        }
      }
    }

    v5 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v5 = 1;
LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  _cachedAtomicData = [(LPImage *)self _cachedAtomicData];
  v4 = [_cachedAtomicData hash];
  v5 = [(NSString *)self->_MIMEType hash];

  return v5 ^ v4;
}

- (void)_waitForAsynchronouslyLoadedImageIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_fault_impl(&dword_1AE886000, a2, OS_LOG_TYPE_FAULT, "LPImage<%p>: timed out in _waitForAsynchronouslyLoadedImageIfNeeded", &v2, 0xCu);
}

+ (id)_PNGImageNamed:(id)named
{
  v3 = [self _PNGImageNamed:named template:0 properties:0];

  return v3;
}

+ (id)_PNGImageNamed:(id)named template:(BOOL)template properties:(id)properties
{
  v35 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  propertiesCopy = properties;
  v9 = +[LPTestingOverrides forceImageLoadingScaleFactor];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v10 = [LPImage alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__LPImage__PNGImageNamed_template_properties___block_invoke;
  v20[3] = &unk_1E7A355E0;
  v22 = &v25;
  v23 = v9;
  v11 = namedCopy;
  v21 = v11;
  templateCopy = template;
  v12 = [(LPImage *)v10 _initWithPlatformImageGenerator:v20 properties:propertiesCopy];
  v13 = v26[5];
  v26[5] = v12;

  v16 = LPLogChannelImage(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v26[5];
    *buf = 134218242;
    v32 = v17;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_1AE886000, v16, OS_LOG_TYPE_INFO, "LPImage<%p>: created async image for %@", buf, 0x16u);
  }

  v18 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v18;
}

void __46__LPImage__PNGImageNamed_template_properties___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = LPLogChannelImage(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v20 = 134217984;
    v21 = v7;
    _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_INFO, "LPImage<%p>: started loading async image", &v20, 0xCu);
  }

  if (!*(a1 + 48) || (v8 = MEMORY[0x1E69DCAB8], v9 = *(a1 + 32), linkPresentationBundle(v6), v10 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E69DD1B8] traitCollectionWithDisplayScale:*(a1 + 48)], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "imageNamed:inBundle:compatibleWithTraitCollection:", v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    v14 = MEMORY[0x1E69DCAB8];
    v15 = *(a1 + 32);
    v16 = linkPresentationBundle(v6);
    v12 = [v14 imageNamed:v15 inBundle:v16 withConfiguration:0];
  }

  if (*(a1 + 56) == 1)
  {
    v17 = [v12 imageWithRenderingMode:2];

    v12 = v17;
  }

  v18 = LPLogChannelImage(v6, v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(*(*(a1 + 40) + 8) + 40);
    v20 = 134217984;
    v21 = v19;
    _os_log_impl(&dword_1AE886000, v18, OS_LOG_TYPE_INFO, "LPImage<%p>: finished loading async image", &v20, 0xCu);
  }

  v3[2](v3, v12);
}

+ (id)_PDFImageNamed:(id)named template:(BOOL)template
{
  v30 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v6 = [LPImage alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__LPImage__PDFImageNamed_template___block_invoke;
  v16[3] = &unk_1E7A35608;
  v18 = &v20;
  v7 = namedCopy;
  v17 = v7;
  templateCopy = template;
  v8 = [(LPImage *)v6 _initWithPlatformImageGenerator:v16 properties:0];
  v9 = v21[5];
  v21[5] = v8;

  v12 = LPLogChannelImage(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v21[5];
    *buf = 134218242;
    v27 = v13;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_1AE886000, v12, OS_LOG_TYPE_INFO, "LPImage<%p>: created async LPImage for %@", buf, 0x16u);
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

void __35__LPImage__PDFImageNamed_template___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = LPLogChannelImage(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v17 = 134217984;
    v18 = v7;
    _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_INFO, "LPImage<%p>: started loading async image", &v17, 0xCu);
  }

  v8 = MEMORY[0x1E69DCAB8];
  v9 = *(a1 + 32);
  v10 = linkPresentationBundle(v6);
  v11 = [v8 imageNamed:v9 inBundle:v10 withConfiguration:0];

  if (*(a1 + 48) == 1)
  {
    v14 = [v11 imageWithRenderingMode:2];

    v11 = v14;
  }

  v15 = LPLogChannelImage(v12, v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(*(*(a1 + 40) + 8) + 40);
    v17 = 134217984;
    v18 = v16;
    _os_log_impl(&dword_1AE886000, v15, OS_LOG_TYPE_INFO, "LPImage<%p>: finished loading async image", &v17, 0xCu);
  }

  v3[2](v3, v11);
}

- (LPImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPImage;
  v5 = [(LPImage *)&v20 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  if ([coderCopy _lp_coderType] == 1)
  {
    v6 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"platformImage"];
    originalPlatformImage = v5->_originalPlatformImage;
    v5->_originalPlatformImage = v6;
  }

  v8 = [coderCopy _lp_strictlyDecodeNSDataForKey:@"data"];
  [(LPImage *)v5 set_cachedAtomicData:v8];

  if ([(LPImage *)v5 _isSubstitute])
  {
    goto LABEL_8;
  }

  _cachedAtomicData = [(LPImage *)v5 _cachedAtomicData];
  if (![_cachedAtomicData length])
  {
    v10 = v5->_originalPlatformImage;

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v11 = [coderCopy _lp_strictlyDecodeNSStringForKey:@"MIMEType"];
  MIMEType = v5->_MIMEType;
  v5->_MIMEType = v11;

  v13 = objc_alloc_init(LPImageProperties);
  properties = v5->_properties;
  v5->_properties = v13;

  v15 = [coderCopy _lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
  [(LPImageProperties *)v5->_properties setAccessibilityText:v15];

  v16 = [coderCopy _lp_strictlyDecodeColorForKey:@"overlaidTextColor"];
  [(LPImageProperties *)v5->_properties setOverlaidTextColor:v16];

  v17 = [coderCopy _lp_strictlyDecodeColorForKey:@"dominantColor"];
  [(LPImageProperties *)v5->_properties setDominantColor:v17];

  -[LPImageProperties setHasSingleDominantColor:](v5->_properties, "setHasSingleDominantColor:", [coderCopy decodeBoolForKey:@"hasSingleDominantColor"]);
  -[LPImageProperties setType:](v5->_properties, "setType:", [coderCopy decodeIntegerForKey:@"imageType"]);
  if ([(LPImageProperties *)v5->_properties type]>= 8)
  {
    [(LPImageProperties *)v5->_properties setType:0];
  }

  v18 = v5;
LABEL_12:

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy _lp_coderType] == 1)
  {
    _existingPlatformImage = [(LPImage *)self _existingPlatformImage];
    _lp_isSymbolImage = [_existingPlatformImage _lp_isSymbolImage];
    if (_lp_isSymbolImage)
    {
      [coderCopy _lp_encodeObjectIfNotNil:_existingPlatformImage forKey:@"platformImage"];
    }
  }

  else
  {
    needsAsynchronousLoad = [(LPImage *)self needsAsynchronousLoad];
    if (needsAsynchronousLoad)
    {
      v9 = LPLogChannelSerialization(needsAsynchronousLoad, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "Trying to encode an LPImage with an unloaded item provider.", v15, 2u);
      }
    }

    _lp_isSymbolImage = 0;
  }

  if (((_lp_isSymbolImage | [(LPImage *)self _isSubstitute]) & 1) == 0)
  {
    data = [(LPImage *)self data];
    [coderCopy _lp_encodeObjectIfNotNil:data forKey:@"data"];
  }

  [coderCopy _lp_encodeStringIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  properties = [(LPImage *)self properties];
  accessibilityText = [properties accessibilityText];
  [coderCopy _lp_encodeStringIfNotNil:accessibilityText forKey:@"accessibilityText"];

  overlaidTextColor = [properties overlaidTextColor];
  [coderCopy _lp_encodeColorIfNotNil:overlaidTextColor forKey:@"overlaidTextColor"];

  dominantColor = [properties dominantColor];
  [coderCopy _lp_encodeColorIfNotNil:dominantColor forKey:@"dominantColor"];

  [coderCopy encodeBool:objc_msgSend(properties forKey:{"hasSingleDominantColor"), @"hasSingleDominantColor"}];
  [coderCopy encodeInteger:objc_msgSend(properties forKey:{"type"), @"imageType"}];
}

- (BOOL)_canEncodeWithoutComputation
{
  _existingPlatformImage = [(LPImage *)self _existingPlatformImage];
  if ([_existingPlatformImage _lp_isSymbolImage])
  {
    v4 = 1;
  }

  else
  {
    _cachedAtomicData = [(LPImage *)self _cachedAtomicData];
    v4 = _cachedAtomicData != 0;
  }

  return v4;
}

- (void)setFileURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v4 = lCopy;
  }

  else
  {
    v4 = 0;
  }

  fileURL = self->_fileURL;
  self->_fileURL = v4;
}

+ (id)_loadImageSubsampledToScreenSizeFromData:(id)data
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(__CFData *)dataCopy length])
  {
    v14 = 0;
    goto LABEL_14;
  }

  [MEMORY[0x1E69DCEB0] _lp_mainScreenScale];
  v5 = v4;
  [MEMORY[0x1E69DCEB0] _lp_mainScreenSize];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = [v10 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E696E0E8], 0}];
  v12 = [(__CFData *)dataCopy copy];

  v13 = CGImageSourceCreateWithData(v12, v11);
  v14 = v13;
  if (v13)
  {
    if (CGImageSourceGetCount(v13))
    {
      v15 = CGImageSourceCopyPropertiesAtIndex(v14, 0, v11);
      v16 = [(__CFDictionary *)v15 objectForKey:*MEMORY[0x1E696DED8]];
      v17 = [(__CFDictionary *)v15 objectForKey:*MEMORY[0x1E696DEC8]];
      v18 = v17;
      if (v16 && v17 && ([v16 doubleValue], v20 = v19, objc_msgSend(v18, "doubleValue"), v22 = v21, IsEmptyOrInvalid = sizeIsEmptyOrInvalid(v20, v21), !IsEmptyOrInvalid))
      {
        v25 = sizeFittingInsideSizeMaintainingAspectRatio(IsEmptyOrInvalid, v20, v22, v5 * v7, v5 * v9);
        v29 = fmin(v20 / v27, v22 / v28);
        if (v29 < 2.0)
        {
          goto LABEL_27;
        }

        v30 = 8.0;
        if (v29 < 8.0)
        {
          v30 = 4.0;
        }

        if (v29 >= 4.0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 2.0;
        }

        v32 = LPLogChannelImage(v25, v26);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          v37 = v20;
          v38 = 2048;
          v39 = v22;
          v40 = 2048;
          v41 = v31;
          _os_log_debug_impl(&dword_1AE886000, v32, OS_LOG_TYPE_DEBUG, "Subsampling %g x %g image by %gx", buf, 0x20u);
        }

        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        [(__CFDictionary *)v11 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696E0F8]];

        CFRelease(v14);
        v34 = CGImageSourceCreateWithData(v12, v11);
        v14 = v34;
        if (!v34)
        {
          goto LABEL_12;
        }

        if (CGImageSourceGetCount(v34))
        {
LABEL_27:
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, v11);
          CFRelease(v14);
          v14 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:ImageAtIndex];
          CGImageRelease(ImageAtIndex);
          goto LABEL_12;
        }

        CFRelease(v14);
      }

      else
      {
        CFRelease(v14);
      }

      v14 = 0;
LABEL_12:

      goto LABEL_13;
    }

    CFRelease(v14);
    v14 = 0;
  }

LABEL_13:

  dataCopy = v12;
LABEL_14:

  return v14;
}

- (id)_existingPlatformImage
{
  decodedPlatformImage = self->_decodedPlatformImage;
  if (decodedPlatformImage || ([(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded], (decodedPlatformImage = self->_originalPlatformImage) != 0))
  {
    v4 = decodedPlatformImage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)platformImage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _existingPlatformImage = [(LPImage *)selfCopy _existingPlatformImage];
  platformImage = _existingPlatformImage;
  if (!_existingPlatformImage)
  {
    platformImage = selfCopy->_platformImage;
    if (!platformImage)
    {
      data = [(LPImage *)selfCopy data];
      if (!data)
      {
        goto LABEL_9;
      }

      if (+[LPSettings subsampleImagesToScreenSize])
      {
        v6 = [LPImage _loadImageSubsampledToScreenSizeFromData:data];
      }

      else
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:data];
      }

      v7 = selfCopy->_platformImage;
      selfCopy->_platformImage = v6;

      platformImage = selfCopy->_platformImage;
    }
  }

  data = platformImage;
LABEL_9:

  objc_sync_exit(selfCopy);

  return data;
}

- (void)_synchronouslyDecodePlatformImageWithMaximumSize:(CGSize)size
{
  v22[6] = *MEMORY[0x1E69E9840];
  if (!self->_decodedPlatformImage)
  {
    height = size.height;
    width = size.width;
    [(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded];
    data = [(LPImage *)self data];
    if (data)
    {
      v7 = MEMORY[0x1E695E118];
      v8 = *MEMORY[0x1E696DFE8];
      v21[0] = *MEMORY[0x1E696E0E8];
      v21[1] = v8;
      v22[0] = MEMORY[0x1E695E118];
      v22[1] = MEMORY[0x1E695E118];
      v21[2] = *MEMORY[0x1E696E100];
      v9 = [MEMORY[0x1E696AD98] numberWithLong:{fmax(width, height)}];
      v10 = *MEMORY[0x1E696E000];
      v22[2] = v9;
      v22[3] = v7;
      v11 = *MEMORY[0x1E696E138];
      v21[3] = v10;
      v21[4] = v11;
      v21[5] = *MEMORY[0x1E696E0A8];
      v22[4] = v7;
      v22[5] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

      v13 = CGImageSourceCreateWithData(data, 0);
      v14 = v13;
      if (v13)
      {
        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v13, 0, v12);
        if (ThumbnailAtIndex)
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v17 = [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:ThumbnailAtIndex];
          decodedPlatformImage = self->_decodedPlatformImage;
          self->_decodedPlatformImage = v17;

          originalPlatformImage = selfCopy->_originalPlatformImage;
          selfCopy->_originalPlatformImage = 0;

          platformImage = selfCopy->_platformImage;
          selfCopy->_platformImage = 0;

          objc_sync_exit(selfCopy);
          CFRelease(v14);
          CGImageRelease(ThumbnailAtIndex);
        }

        else
        {
          CFRelease(v14);
        }
      }
    }
  }
}

- (NSData)data
{
  _cachedAtomicData = [(LPImage *)self _cachedAtomicData];

  if (!_cachedAtomicData)
  {
    [(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded];
    if (self->_originalPlatformImage)
    {
      [(LPImage *)self _createDataFromPlatformImage];
    }

    else if (self->_fileURL)
    {
      [(LPImage *)self _mapDataFromFileURL];
    }
  }

  return [(LPImage *)self _cachedAtomicData];
}

- (NSString)MIMEType
{
  MIMEType = self->_MIMEType;
  if (MIMEType)
  {
    goto LABEL_2;
  }

  [(LPImage *)self _waitForAsynchronouslyLoadedImageIfNeeded];
  if (!self->_originalPlatformImage)
  {
    MIMEType = self->_MIMEType;
LABEL_2:
    v3 = MIMEType;
    goto LABEL_5;
  }

  v3 = @"image/png";
LABEL_5:

  return v3;
}

- (LPImageProperties)properties
{
  if (self->_itemProvider && !self->_imageLoadedFromItemProvider && self->_placeholderProperties)
  {
    placeholderProperties = self->_placeholderProperties;
  }

  else
  {
    placeholderProperties = self->_properties;
  }

  v3 = [(LPImageProperties *)placeholderProperties copy];

  return v3;
}

- (void)_createDataFromPlatformImage
{
  obj = self;
  objc_sync_enter(obj);
  _cachedAtomicData = [(LPImage *)obj _cachedAtomicData];

  v3 = obj;
  if (!_cachedAtomicData)
  {
    [(LPImage *)obj _waitForAsynchronouslyLoadedImageIfNeeded];
    v3 = obj;
    originalPlatformImage = obj->_originalPlatformImage;
    if (originalPlatformImage)
    {
      if (obj->_useLossyCompressionForEncodedData)
      {
        UIImageJPEGRepresentation(originalPlatformImage, 0.8);
      }

      else
      {
        UIImagePNGRepresentation(originalPlatformImage);
      }
      v5 = ;
      [(LPImage *)obj set_cachedAtomicData:v5];

      MIMEType = obj->_MIMEType;
      obj->_MIMEType = @"image/png";

      v3 = obj;
    }
  }

  objc_sync_exit(v3);
}

- (void)_mapDataFromFileURL
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPImage: Failed to load data: %@", &v2, 0xCu);
}

- (unint64_t)_encodedSize
{
  if (self->_fileURL)
  {
    fileURL = self->_fileURL;

    return [(NSURL *)fileURL _lp_fileSize];
  }

  else
  {
    data = [(LPImage *)self data];
    v5 = [data length];

    return v5;
  }
}

- (CGSize)_pixelSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_hasComputedPixelSize)
  {
    platformImage = [(LPImage *)selfCopy platformImage];
    [platformImage _lp_pixelSize];
    selfCopy->_pixelSize.width = v4;
    selfCopy->_pixelSize.height = v5;

    selfCopy->_hasComputedPixelSize = 1;
  }

  width = selfCopy->_pixelSize.width;
  height = selfCopy->_pixelSize.height;
  objc_sync_exit(selfCopy);

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)_isAnimated
{
  if (self->_hasComputedIsAnimated)
  {
    return self->_isAnimated;
  }

  self->_hasComputedIsAnimated = 1;
  mIMEType = [(LPImage *)self MIMEType];
  v4 = [LPMIMETypeRegistry isNonAnimatedMultiframeImageType:mIMEType];

  if (!v4)
  {
    data = [(LPImage *)self data];
    v7 = CGImageSourceCreateWithData(data, MEMORY[0x1E695E0F8]);

    if (!v7)
    {
      return 0;
    }

    self->_isAnimated = CGImageSourceGetCount(v7) > 1;
    CFRelease(v7);
    return self->_isAnimated;
  }

  v5 = 0;
  self->_isAnimated = 0;
  return v5;
}

- (NSString)_srcsetForRemoteURLs
{
  _remoteURLsForEmailCompatibleOutput = [(LPImage *)self _remoteURLsForEmailCompatibleOutput];

  if (_remoteURLsForEmailCompatibleOutput)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    _remoteURLsForEmailCompatibleOutput2 = [(LPImage *)self _remoteURLsForEmailCompatibleOutput];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __31__LPImage__srcsetForRemoteURLs__block_invoke;
    v12 = &unk_1E7A35630;
    v6 = v4;
    v13 = v6;
    selfCopy = self;
    [_remoteURLsForEmailCompatibleOutput2 enumerateObjectsUsingBlock:&v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = &stru_1F2447CF0;
  }

  return v7;
}

void __31__LPImage__srcsetForRemoteURLs__block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E696AEC0];
  v13 = v5;
  v8 = [v5 URL];
  v9 = [v8 absoluteString];
  v10 = [v7 stringWithFormat:@"%@ %dx", v9, objc_msgSend(v13, "scale")];
  [v6 appendString:v10];

  v11 = [*(a1 + 40) _remoteURLsForEmailCompatibleOutput];
  v12 = ([v11 count] - 1);

  if (v12 != a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }
}

- (BOOL)hasPlaceholderValueForAsynchronousLoad
{
  if (!self->_itemProvider)
  {
    return 0;
  }

  _cachedAtomicData = [(LPImage *)self _cachedAtomicData];
  v3 = _cachedAtomicData != 0;

  return v3;
}

- (void)loadAsynchronouslyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  itemProviderLoadGroup = self->_itemProviderLoadGroup;
  if (!itemProviderLoadGroup)
  {
    v6 = dispatch_group_create();
    v7 = self->_itemProviderLoadGroup;
    self->_itemProviderLoadGroup = v6;

    dispatch_group_enter(self->_itemProviderLoadGroup);
    itemProvider = self->_itemProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E7A35678;
    v12[4] = self;
    [(NSItemProvider *)itemProvider _lp_loadFirstDataRepresentationMatchingMIMETypePredicate:&__block_literal_global_2 completionHandler:v12];
    itemProviderLoadGroup = self->_itemProviderLoadGroup;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7A356A0;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_group_notify(itemProviderLoadGroup, MEMORY[0x1E69E96A0], block);
}

void __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[LPImage alloc] initWithData:v9 MIMEType:v5 properties:*(*(a1 + 32) + 32)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;
  }

  dispatch_group_leave(*(*(a1 + 32) + 64));
}

uint64_t __51__LPImage_loadAsynchronouslyWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);
  if (v4[7])
  {
    v5 = *(a1 + 40);
LABEL_5:
    v9 = *(v5 + 16);
    goto LABEL_6;
  }

  v6 = [v4 _cachedAtomicData];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;

    v5 = *(a1 + 40);
    goto LABEL_5;
  }

  v9 = *(*(a1 + 40) + 16);
LABEL_6:

  return v9();
}

- (NSItemProvider)_itemProvider
{
  itemProvider = self->_itemProvider;
  if (itemProvider)
  {
    v3 = itemProvider;
  }

  else
  {
    data = [(LPImage *)self data];
    v6 = MEMORY[0x1E696ACA0];
    mIMEType = [(LPImage *)self MIMEType];
    v3 = [v6 _lp_itemProviderWithData:data MIMEType:mIMEType];
  }

  return v3;
}

- (id)_asTemplate
{
  platformImage = [(LPImage *)self platformImage];
  renderingMode = [platformImage renderingMode];

  if (renderingMode == 2)
  {
    selfCopy = self;
  }

  else
  {
    platformImage2 = [(LPImage *)self platformImage];
    v7 = [platformImage2 imageWithRenderingMode:2];

    v8 = [LPImage alloc];
    properties = [(LPImage *)self properties];
    selfCopy = [(LPImage *)v8 initWithPlatformImage:v7 properties:properties];
  }

  return selfCopy;
}

- (BOOL)_isFallbackIcon
{
  if (self->_isNonFallbackSymbolImage)
  {
    return self->_fallbackIcon;
  }

  platformImage = [(LPImage *)self platformImage];
  _lp_isSymbolImage = [platformImage _lp_isSymbolImage];

  return (_lp_isSymbolImage & 1) != 0 || self->_fallbackIcon;
}

- (void)_ensureTransparentRegions
{
  if (!self->_hasComputedTransparentRegions)
  {
    platformImage = [(LPImage *)self platformImage];
    self->_transparentRegions = [platformImage _lp_transparentRegions];

    self->_hasComputedTransparentRegions = 1;
  }
}

- (id)filledVariant
{
  selfCopy = self;
  v3 = sub_1AE971D38();

  return v3;
}

- (BOOL)_isLowResolutionAsImage
{
  selfCopy = self;
  v3 = sub_1AE971F8C();

  return v3;
}

- (BOOL)_isLowResolutionAsIconWithScaleFactor:(double)factor
{
  selfCopy = self;
  if ([(LPImage *)selfCopy _isFallbackIcon])
  {

    return 0;
  }

  else
  {
    [(LPImage *)selfCopy _pixelSize];
    v7 = v6;
    [objc_opt_self() largestIconSizeInPoints];
    v9 = v8;

    return v7 < v9 * factor;
  }
}

@end