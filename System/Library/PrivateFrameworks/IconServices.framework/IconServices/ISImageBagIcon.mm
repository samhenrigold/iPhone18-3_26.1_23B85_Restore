@interface ISImageBagIcon
- (ISImageBagIcon)initWithImageBag:(id)bag;
- (ISImageBagIcon)initWithImages:(id)images decorations:(id)decorations;
- (id)_generateImageWithDescriptor:(id)descriptor;
- (id)_remoteGenerateImageWithDescriptor:(id)descriptor;
- (id)imageForImageDescriptor:(id)descriptor;
- (id)makeResourceProvider;
- (void)_prepareImagesForImageDescriptors:(id)descriptors;
- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation ISImageBagIcon

- (ISImageBagIcon)initWithImages:(id)images decorations:(id)decorations
{
  imagesCopy = images;
  decorationsCopy = decorations;
  v15.receiver = self;
  v15.super_class = ISImageBagIcon;
  _init = [(ISIcon *)&v15 _init];
  if (_init)
  {
    v10 = objc_opt_new();
    imageCache = _init->_imageCache;
    _init->_imageCache = v10;

    objc_storeStrong(&_init->_images, images);
    v12 = [decorationsCopy copy];
    decorations = _init->_decorations;
    _init->_decorations = v12;
  }

  return _init;
}

- (ISImageBagIcon)initWithImageBag:(id)bag
{
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = ISImageBagIcon;
  _init = [(ISIcon *)&v12 _init];
  if (_init)
  {
    v6 = objc_opt_new();
    imageCache = _init->_imageCache;
    _init->_imageCache = v6;

    images = [bagCopy images];
    images = _init->_images;
    _init->_images = images;

    decorations = _init->_decorations;
    _init->_decorations = MEMORY[0x1E695E0F0];
  }

  return _init;
}

- (id)_generateImageWithDescriptor:(id)descriptor
{
  v41[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = objc_alloc(MEMORY[0x1E69A8990]);
  images = [(ISImageBagIcon *)self images];
  p_super = [v5 initWithImages:images];

  images2 = [(ISImageBagIcon *)self images];
  v9 = [images2 count];

  if (v9)
  {
    if (p_super)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = _ISDefaultLog(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_1A77B8000, v16, OS_LOG_TYPE_DEFAULT, "No images provided. Attempting to fallback to default assets", v39, 2u);
    }

    v17 = +[ISStaticResources sharedInstance];
    identifier = [*MEMORY[0x1E6982CA8] identifier];
    v19 = [v17 fallbackResourceForHint:identifier descriptor:descriptorCopy referenceObj:self];

    p_super = v19;
    if (v19)
    {
LABEL_3:
      v11 = +[ISDefaults sharedInstance];
      if ([(ISCompositingDescriptor *)v11 iconStackAppIconsAllowed])
      {
        shape = [descriptorCopy shape];

        if (shape == 4)
        {
LABEL_7:
          v14 = [ISRecipeFactory factoryWithDescriptor:descriptorCopy];
          v15 = v14;
          if (v9)
          {
            [v14 recipe];
          }

          else
          {
            [v14 genericTaggedRecipe];
          }
          v21 = ;
          v22 = objc_alloc_init(ISCompositor);
          if ([descriptorCopy shape] == 5 || objc_msgSend(descriptorCopy, "shape") == 6)
          {
            [(ISCompositor *)v22 setRenderingMode:2];
          }

          v40 = @"kISPrimaryResourceKey";
          v41[0] = p_super;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
          [(ISCompositor *)v22 addElementWithRecipe:v21 resources:v23];

          [descriptorCopy size];
          v25 = v24;
          v27 = v26;
          [descriptorCopy scale];
          v20 = [(ISCompositor *)v22 imageForSize:v25 scale:v27, v28];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [descriptorCopy size];
            v30 = v29;
            v32 = v31;
            [descriptorCopy scale];
            v34 = [p_super _finalizedIconForSize:v30 scale:v32, v33];
            v35 = objc_alloc(MEMORY[0x1E69A8988]);
            cGImage = [v20 CGImage];
            [descriptorCopy scale];
            v37 = [v35 initWithCGImage:cGImage scale:v34 finalizedIcon:?];

            v20 = v37;
          }

          goto LABEL_22;
        }

        v11 = [[ISCompositingDescriptor alloc] initWithImageDescriptor:descriptorCopy];
        v13 = [[ISIconStackCompositeResource alloc] initWithResource:p_super platform:[(ISCompositingDescriptor *)v11 assetPlatform]];
        [(ISIconStackCompositeResource *)v13 setCompositingDescriptor:v11];

        p_super = &v13->super;
      }

      goto LABEL_7;
    }
  }

  p_super = _ISDefaultLog(v10);
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    [(ISImageBagIcon *)self _generateImageWithDescriptor:?];
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (id)_remoteGenerateImageWithDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E69A8990];
  descriptorCopy = descriptor;
  v6 = [v4 alloc];
  images = [(ISImageBagIcon *)self images];
  v8 = [v6 initWithImages:images];

  [descriptorCopy size];
  v10 = v9;
  v12 = v11;
  [descriptorCopy scale];
  v14 = [v8 imageForSize:v10 scale:{v12, v13}];
  v15 = [[_ISImageIcon alloc] initImage:v14];
  v16 = [v15 prepareImageForDescriptor:descriptorCopy];

  return v16;
}

- (void)_prepareImagesForImageDescriptors:(id)descriptors
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = descriptors;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(ISImageCache *)self->_imageCache imageForDescriptor:v8];
        v10 = v9;
        if (!v9 || (([v9 size], v12 = v11, v14 = v13, objc_msgSend(v8, "size"), v12 == v16) ? (v17 = v14 == v15) : (v17 = 0), !v17))
        {
          v18 = +[ISDefaults sharedInstance];
          prepareImageBagIconsOutOfProcess = [v18 prepareImageBagIconsOutOfProcess];

          if (prepareImageBagIconsOutOfProcess)
          {
            [(ISImageBagIcon *)self _remoteGenerateImageWithDescriptor:v8];
          }

          else
          {
            [(ISImageBagIcon *)self _generateImageWithDescriptor:v8];
          }
          v20 = ;

          [(ISImageCache *)self->_imageCache setImage:v20 forDescriptor:v8];
          v10 = v20;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (id)makeResourceProvider
{
  v2 = [[ISResourceProvider alloc] initWithResource:self->_images templateResource:0];

  return v2;
}

- (id)imageForImageDescriptor:(id)descriptor
{
  v17[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = [(ISImageCache *)self->_imageCache imageForDescriptor:descriptorCopy];
  v6 = v5;
  if (!v5 || (([v5 size], v8 = v7, v10 = v9, objc_msgSend(descriptorCopy, "size"), v8 == v12) ? (v13 = v10 == v11) : (v13 = 0), !v13))
  {
    v17[0] = descriptorCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(ISIcon *)self prepareImagesForImageDescriptors:v14];

    v15 = [(ISImageCache *)self->_imageCache imageForDescriptor:descriptorCopy];

    v6 = v15;
  }

  return v6;
}

- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  descriptorCopy2 = descriptor;
  v9 = [v6 arrayWithObjects:&descriptorCopy count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v9, descriptorCopy, v12];

  v10 = [(ISImageBagIcon *)self imageForImageDescriptor:descriptorCopy2];

  completionCopy[2](completionCopy, v10);
}

- (void)_generateImageWithDescriptor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Unable to create icon! Failed to create resource for %@", &v2, 0xCu);
}

@end