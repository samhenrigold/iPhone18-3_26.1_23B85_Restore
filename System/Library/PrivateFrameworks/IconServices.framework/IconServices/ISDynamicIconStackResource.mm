@interface ISDynamicIconStackResource
- (ISDynamicIconStackResource)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups;
- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale;
- (id)baseIconStackForSize:(CGSize)size scale:(double)scale;
- (id)iconStackForSize:(CGSize)size scale:(double)scale;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)layerDataForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISDynamicIconStackResource

- (ISDynamicIconStackResource)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups
{
  identifierCopy = identifier;
  groupsCopy = groups;
  v18.receiver = self;
  v18.super_class = ISDynamicIconStackResource;
  v9 = [(ISDynamicIconStackResource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_typeIdentifier, identifier);
    objc_storeStrong(&v10->_layerGroups, groups);
    objc_initWeak(&location, v10);
    v11 = [ISICRCompositor alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__ISDynamicIconStackResource_initWithTypeIdentifier_layerGroups___block_invoke;
    v15[3] = &unk_1E77C6780;
    objc_copyWeak(&v16, &location);
    v12 = [(ISICRCompositor *)v11 initWithIconStackBlock:v15];
    icrCompositor = v10->_icrCompositor;
    v10->_icrCompositor = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

id __65__ISDynamicIconStackResource_initWithTypeIdentifier_layerGroups___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained iconStackForSize:a2 scale:{a3, a4}];

  return v8;
}

- (id)baseIconStackForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v40 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69636B0];
  typeIdentifier = [(ISDynamicIconStackResource *)self typeIdentifier];
  v10 = [v8 typeRecordWithIdentifier:typeIdentifier];

  if (!v10)
  {
    v16 = _ISDefaultLog(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      typeIdentifier2 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v38 = 138412290;
      v39 = typeIdentifier2;
      v33 = "No record exists for type: '%@'";
LABEL_11:
      _os_log_impl(&dword_1A77B8000, v16, OS_LOG_TYPE_INFO, v33, &v38, 0xCu);
    }

LABEL_12:
    v30 = 0;
    goto LABEL_21;
  }

  _is_canProvideIconResources = [v10 _is_canProvideIconResources];
  if ((_is_canProvideIconResources & 1) == 0)
  {
    v16 = _ISDefaultLog(_is_canProvideIconResources);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      typeIdentifier2 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v38 = 138412290;
      v39 = typeIdentifier2;
      v33 = "'%@' cannot provide icon resources";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  declaringBundleRecord = [v10 declaringBundleRecord];
  v14 = [declaringBundleRecord URL];
  iconDictionary = [v10 iconDictionary];
  v16 = [ISResourceProvider resourceWithBundleURL:v14 iconDictionary:iconDictionary options:4];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v18 = v16;
    compositingDescriptor = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setAppearance:](v18, "setAppearance:", [compositingDescriptor appearance]);

    compositingDescriptor2 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setAppearanceVariant:](v18, "setAppearanceVariant:", [compositingDescriptor2 appearanceVariant]);

    compositingDescriptor3 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    tintColor = [compositingDescriptor3 tintColor];
    [v18 setTintColor:tintColor];

    compositingDescriptor4 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setBackground:](v18, "setBackground:", [compositingDescriptor4 background]);

    compositingDescriptor5 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setShouldApplyMask:](v18, "setShouldApplyMask:", [compositingDescriptor5 shouldApplyMask]);

    compositingDescriptor6 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setLanguageDirection:](v18, "setLanguageDirection:", [compositingDescriptor6 languageDirection]);

    compositingDescriptor7 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setPlatformStyle:](v18, "setPlatformStyle:", [compositingDescriptor7 platformStyle]);

    compositingDescriptor8 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setShape:](v18, "setShape:", [compositingDescriptor8 shape]);

    scale = [v18 iconStackForSize:width scale:height, scale];
    v29 = scale;
    if (scale)
    {
      v30 = scale;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = [v30 mutableCopy];

        v30 = v31;
      }
    }

    else
    {
      v35 = _ISDefaultLog(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        typeIdentifier3 = [(ISDynamicIconStackResource *)self typeIdentifier];
        v38 = 138412290;
        v39 = typeIdentifier3;
        _os_log_impl(&dword_1A77B8000, v35, OS_LOG_TYPE_INFO, "Failed to retrieve base icon stack resource for '%@'", &v38, 0xCu);
      }

      v30 = 0;
    }
  }

  else
  {
    v18 = _ISDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      typeIdentifier4 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v38 = 138412290;
      v39 = typeIdentifier4;
      _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_INFO, "Failed to find base icon stack resource for '%@'", &v38, 0xCu);
    }

    v30 = 0;
  }

LABEL_21:

  return v30;
}

- (id)iconStackForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v46 = *MEMORY[0x1E69E9840];
  v8 = [ISDynamicIconStackResource baseIconStackForSize:"baseIconStackForSize:scale:" scale:?];
  v9 = v8;
  if (v8)
  {
    [v8 size];
    v11 = v10;
    [v9 size];
    v13 = v12;
    compositingDescriptor = [(ISDynamicIconStackResource *)self compositingDescriptor];
    if ([compositingDescriptor appearanceVariant] == 2)
    {
    }

    else
    {
      compositingDescriptor2 = [(ISDynamicIconStackResource *)self compositingDescriptor];
      appearanceVariant = [compositingDescriptor2 appearanceVariant];

      if (appearanceVariant != 3)
      {
        compositingDescriptor3 = [(ISDynamicIconStackResource *)self compositingDescriptor];
        if ([compositingDescriptor3 appearanceVariant])
        {

          v18 = 0;
        }

        else
        {
          compositingDescriptor4 = [(ISDynamicIconStackResource *)self compositingDescriptor];
          v18 = [compositingDescriptor4 appearance] == 1;
        }

        goto LABEL_9;
      }
    }

    v18 = 2;
LABEL_9:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(ISDynamicIconStackResource *)self layerGroups];
    v19 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v35 = *v41;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v23 = [v22 cuiGroupForAppearance:v18];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          layers = [v22 layers];
          v25 = [layers countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v37;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v37 != v27)
                {
                  objc_enumerationMutation(layers);
                }

                v29 = [*(*(&v36 + 1) + 8 * j) cuiLayerImageForAppearance:v18 size:width scale:height frame:{scale, 0.0, 0.0, v11, v13}];
                if (v29)
                {
                  [v23 addLayer:v29];
                }
              }

              v26 = [layers countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v26);
          }

          [v9 addLayer:v23];
        }

        v20 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v20);
    }

    v30 = v9;
    goto LABEL_26;
  }

  v15 = _ISDefaultLog(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ISDynamicIconStackResource iconStackForSize:v15 scale:?];
  }

LABEL_26:

  return v9;
}

- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  compositingDescriptor = [(ISDynamicIconStackResource *)self compositingDescriptor];

  if (compositingDescriptor)
  {
    compositingDescriptor2 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    v11 = [compositingDescriptor2 copy];
  }

  else
  {
    v12 = _ISDefaultLog(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ISDynamicIconStackResource _compositingDescriptorWithSize:v12 scale:?];
    }

    v11 = objc_alloc_init(ISCompositingDescriptor);
  }

  [(ISCompositingDescriptor *)v11 setSize:width, height];
  [(ISCompositingDescriptor *)v11 setScale:scale];

  return v11;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  scale = [(ISDynamicIconStackResource *)self _compositingDescriptorWithSize:size.width scale:size.height, scale];
  icrCompositor = [(ISDynamicIconStackResource *)self icrCompositor];
  v7 = [icrCompositor imageForCompositingDescriptor:scale];

  return v7;
}

- (id)layerDataForSize:(CGSize)size scale:(double)scale
{
  scale = [(ISDynamicIconStackResource *)self _compositingDescriptorWithSize:size.width scale:size.height, scale];
  icrCompositor = [(ISDynamicIconStackResource *)self icrCompositor];
  v7 = [icrCompositor layerDataForCompositingDescriptor:scale];

  return v7;
}

- (void)iconStackForSize:(void *)a1 scale:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 typeIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "No base icon stack for '%@'", &v4, 0xCu);
}

@end