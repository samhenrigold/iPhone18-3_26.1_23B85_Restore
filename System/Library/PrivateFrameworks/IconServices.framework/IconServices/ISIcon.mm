@interface ISIcon
+ (BOOL)variant:(int)variant isMemberOfSet:(unint64_t)set;
+ (BOOL)writeCustomIcon:(id)icon toURL:(id)l error:(id *)error;
+ (_LIIconVariantInfo)variantInfoForSet:(unint64_t)set count:(unint64_t *)count;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)applicationIcon;
+ (id)sizesFromSet:(unint64_t)set;
+ (id)templateTypeForType:(id)type;
+ (int)findVariantFromSet:(unint64_t)set deviceIdiom:(unint64_t)idiom size:(CGSize)size scale:(double)scale;
- (CGImage)CGImageForDescriptor:(id)descriptor;
- (CGImage)CGImageForImageDescriptor:(id)descriptor;
- (ISIcon)iconWithDecorations:(id)decorations;
- (ISIconIdentity)_identity;
- (id)_activeSignpostsForDescriptor:(id)descriptor;
- (id)_beginPrepareISIconSignpost:(id)signpost funcName:(const char *)name;
- (id)_init;
- (id)_prepareImageForImageDescriptor:(id)descriptor;
- (id)imageForDescriptor:(id)descriptor;
- (id)imageForImageDescriptor:(id)descriptor;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)prepareImageForDescriptor:(id)descriptor;
- (void)_endPrepareISIconSignpost:(id)signpost;
- (void)_prepareImagesForImageDescriptors:(id)descriptors;
- (void)getCGImageForImageDescriptor:(id)descriptor completion:(id)completion;
- (void)prepareImagesForDescriptors:(id)descriptors;
- (void)prepareImagesForImageDescriptors:(id)descriptors;
@end

@implementation ISIcon

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ISIcon;
  result = [(ISIcon *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

+ (id)applicationIcon
{
  bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v3 = [ISIcon alloc];
  bundleIdentifier = [bundleProxyForCurrentProcess bundleIdentifier];
  v5 = [(ISIcon *)v3 initWithBundleIdentifier:bundleIdentifier];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__ISIcon_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = zone;
    if (allocWithZone__onceToken != -1)
    {
      dispatch_once(&allocWithZone__onceToken, block);
    }

    v6 = allocWithZone__iconFactory;

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___ISIcon;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

uint64_t __24__ISIcon_allocWithZone___block_invoke(uint64_t a1)
{
  allocWithZone__iconFactory = [ISIconFactory allocWithZone:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (ISIcon)iconWithDecorations:(id)decorations
{
  decorationsCopy = decorations;
  v5 = [[ISDecoratedIcon alloc] initWithIcon:self decorations:decorationsCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (CGImage)CGImageForImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(ISIcon *)self imageForImageDescriptor:descriptorCopy];
  if ([v5 CGImage])
  {
    v6 = CFRetain([v5 CGImage]);
    v7 = CFAutorelease(v6);
  }

  else
  {
    v8 = _ISDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ISIcon CGImageForImageDescriptor:];
    }

    v9 = MEMORY[0x1E69A8988];
    identifier = [*MEMORY[0x1E6982E48] identifier];
    v11 = [v9 _placeholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:1 fallbackTypeID:identifier referenceIcon:self];

    if ([v11 CGImage])
    {
      v12 = CFRetain([v11 CGImage]);
      v7 = CFAutorelease(v12);
    }

    else
    {
      v7 = 0;
    }

    v5 = v11;
  }

  return v7;
}

- (CGImage)CGImageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(ISIcon *)self imageForDescriptor:descriptorCopy];
  if ([v5 CGImage])
  {
    v6 = CFRetain([v5 CGImage]);
    v7 = CFAutorelease(v6);
  }

  else
  {
    v8 = _ISDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ISIcon CGImageForImageDescriptor:];
    }

    v9 = MEMORY[0x1E69A8988];
    identifier = [*MEMORY[0x1E6982E48] identifier];
    v11 = [v9 _placeholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:1 fallbackTypeID:identifier referenceIcon:self];

    if ([v11 CGImage])
    {
      v12 = CFRetain([v11 CGImage]);
      v7 = CFAutorelease(v12);
    }

    else
    {
      v7 = 0;
    }

    v5 = v11;
  }

  return v7;
}

- (void)getCGImageForImageDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ISIcon_getCGImageForImageDescriptor_completion___block_invoke;
  v8[3] = &unk_1E77C66E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ISIcon *)self getImageForImageDescriptor:descriptor completion:v8];
}

uint64_t __50__ISIcon_getCGImageForImageDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGImage];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)_beginPrepareISIconSignpost:(id)signpost funcName:(const char *)name
{
  v74 = *MEMORY[0x1E69E9840];
  signpostCopy = signpost;
  array = [MEMORY[0x1E695DF70] array];
  v7 = [signpostCopy count];
  if (v7)
  {
    v8 = _ISPrepareISIconSignpostLog(v7);
    v9 = os_signpost_enabled(v8);

    if (v9)
    {
      v10 = [MEMORY[0x1E695DFA8] set];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v38 = signpostCopy;
      v11 = signpostCopy;
      v44 = [v11 countByEnumeratingWithState:&v45 objects:v73 count:16];
      if (v44)
      {
        v12 = *v46;
        v39 = array;
        v43 = *v46;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v46 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v45 + 1) + 8 * i);
            digest = [v14 digest];
            if (([v10 containsObject:digest] & 1) == 0)
            {
              v16 = _ISPrepareISIconSignpostLog([v10 addObject:digest]);
              v17 = os_signpost_id_generate(v16);

              if (v17)
              {
                v19 = _ISPrepareISIconSignpostLog(v18);
                v20 = v19;
                if (v17 != -1 && os_signpost_enabled(v19))
                {
                  [v14 size];
                  v22 = v21;
                  [v14 size];
                  v24 = v23;
                  [v14 scale];
                  v26 = v25;
                  variantOptions = [v14 variantOptions];
                  appearance = [v14 appearance];
                  appearanceVariant = [v14 appearanceVariant];
                  platformStyle = [v14 platformStyle];
                  v29 = [v11 count];
                  *buf = 138415106;
                  selfCopy = self;
                  v51 = 2048;
                  v52 = v14;
                  v53 = 2048;
                  v54 = v22;
                  v55 = 2048;
                  v56 = v24;
                  v57 = 2048;
                  v58 = v26;
                  v59 = 2048;
                  v60 = variantOptions;
                  v61 = 2048;
                  v62 = appearance;
                  v63 = 2048;
                  v64 = appearanceVariant;
                  v65 = 2048;
                  v66 = platformStyle;
                  v67 = 2080;
                  array = v39;
                  nameCopy = name;
                  v69 = 2112;
                  v70 = digest;
                  v71 = 2048;
                  v72 = v29;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PrepareISIcon", "ISIcon: %@, descriptor: <ISImageDescriptor: %p> s (%0.2f, %0.2f)@%.0fx v:%lx a:%ld:%ld ps:%ld , func: %s, Digest=%{signpost.telemetry:string1}@, NumDescriptors=%{signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0x7Au);
                }

                os_unfair_lock_lock(&self->_lock);
                prepareISIconDigestToSignpostIDs = [(ISIcon *)self prepareISIconDigestToSignpostIDs];

                if (!prepareISIconDigestToSignpostIDs)
                {
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  [(ISIcon *)self setPrepareISIconDigestToSignpostIDs:dictionary];
                }

                prepareISIconDigestToSignpostIDs2 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                v33 = [prepareISIconDigestToSignpostIDs2 objectForKeyedSubscript:digest];

                if (!v33)
                {
                  v33 = [MEMORY[0x1E695DFA8] set];
                  prepareISIconDigestToSignpostIDs3 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                  [prepareISIconDigestToSignpostIDs3 setObject:v33 forKeyedSubscript:digest];
                }

                v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
                [v33 addObject:v35];

                v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
                [array addObject:v36];

                os_unfair_lock_unlock(&self->_lock);
                v12 = v43;
              }
            }
          }

          v44 = [v11 countByEnumeratingWithState:&v45 objects:v73 count:16];
        }

        while (v44);
      }

      signpostCopy = v38;
    }
  }

  return array;
}

- (void)_endPrepareISIconSignpost:(id)signpost
{
  v44 = *MEMORY[0x1E69E9840];
  signpostCopy = signpost;
  v5 = [signpostCopy count];
  if (v5)
  {
    v6 = _ISPrepareISIconSignpostLog(v5);
    v7 = os_signpost_enabled(v6);

    if (v7)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v29 = signpostCopy;
      obj = signpostCopy;
      v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v32)
      {
        v31 = *v39;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v38 + 1) + 8 * i);
            unsignedLongLongValue = [v9 unsignedLongLongValue];
            if (unsignedLongLongValue)
            {
              v11 = _ISPrepareISIconSignpostLog(unsignedLongLongValue);
              v12 = os_signpost_enabled(v11);

              if (v12)
              {
                v14 = _ISPrepareISIconSignpostLog(v13);
                unsignedLongLongValue2 = [v9 unsignedLongLongValue];
                if ((unsignedLongLongValue2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v16 = unsignedLongLongValue2;
                  if (os_signpost_enabled(v14))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v14, OS_SIGNPOST_INTERVAL_END, v16, "PrepareISIcon", "", buf, 2u);
                  }
                }
              }
            }

            os_unfair_lock_lock(&self->_lock);
            prepareISIconDigestToSignpostIDs = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
            allKeys = [prepareISIconDigestToSignpostIDs allKeys];
            v19 = [allKeys copy];

            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v34;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v34 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v33 + 1) + 8 * j);
                  prepareISIconDigestToSignpostIDs2 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                  v27 = [prepareISIconDigestToSignpostIDs2 objectForKeyedSubscript:v25];

                  [v27 removeObject:v9];
                  if (![v27 count])
                  {
                    prepareISIconDigestToSignpostIDs3 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                    [prepareISIconDigestToSignpostIDs3 removeObjectForKey:v25];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
              }

              while (v22);
            }

            os_unfair_lock_unlock(&self->_lock);
          }

          v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v32);
      }

      signpostCopy = v29;
    }
  }
}

- (id)_activeSignpostsForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (descriptorCopy && (_ISPrepareISIconSignpostLog(descriptorCopy), v6 = objc_claimAutoreleasedReturnValue(), v7 = os_signpost_enabled(v6), v6, v7))
  {
    os_unfair_lock_lock(&self->_lock);
    prepareISIconDigestToSignpostIDs = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
    digest = [v5 digest];
    v10 = [prepareISIconDigestToSignpostIDs objectForKey:digest];
    v11 = [v10 copy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_prepareImagesForImageDescriptors:(id)descriptors
{
  v4 = _ISDefaultLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ISIcon *)self _prepareImagesForImageDescriptors:v4];
  }
}

- (void)prepareImagesForImageDescriptors:(id)descriptors
{
  v18 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = descriptorsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(ISIcon *)self _tweakCopiedImageDescriptorsIfNecessary:v5];
  v12 = [(ISIcon *)self _beginPrepareISIconSignpost:v5 funcName:"[ISIcon prepareImagesForImageDescriptors:]"];
  [(ISIcon *)self _prepareImagesForImageDescriptors:v5];
  [(ISIcon *)self _endPrepareISIconSignpost:v12];
}

- (void)prepareImagesForDescriptors:(id)descriptors
{
  v18 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = descriptorsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{0, v13}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(ISIcon *)self _tweakCopiedImageDescriptorsIfNecessary:v5];
  v12 = [(ISIcon *)self _beginPrepareISIconSignpost:v5 funcName:"[ISIcon prepareImagesForDescriptors:]"];
  [(ISIcon *)self _prepareImagesForImageDescriptors:v5];
  [(ISIcon *)self _endPrepareISIconSignpost:v12];
}

- (id)prepareImageForDescriptor:(id)descriptor
{
  v12[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [descriptorCopy copyWithZone:0];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v7 = [(ISIcon *)self _beginPrepareISIconSignpost:v6 funcName:"[ISIcon prepareImageForDescriptor:]"];
    v8 = [(ISIcon *)self imageForDescriptor:v5];
    v9 = v8;
    if (!v8 || [v8 placeholder])
    {
      [v5 setIgnoreCache:0];
      [(ISIcon *)self _prepareImagesForImageDescriptors:v6];
      v10 = [(ISIcon *)self imageForDescriptor:v5];

      v9 = v10;
    }

    [(ISIcon *)self _endPrepareISIconSignpost:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageForImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = _ISDefaultLog(descriptorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ISIcon imageForImageDescriptor:v5];
  }

  v6 = [(ISIcon *)self prepareImageForDescriptor:descriptorCopy];

  return v6;
}

- (id)imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISIcon *)self imageForImageDescriptor:descriptorCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISIcon *)self _imageForSymbolImageDescriptor:descriptorCopy];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (ISIconIdentity)_identity
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [[ISImageDescriptor alloc] initWithSize:32.0 scale:32.0, 1.0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v4];

  v5 = [(ISIcon *)self imageForImageDescriptor:v3];
  uuid = [v5 uuid];

  return uuid;
}

+ (BOOL)writeCustomIcon:(id)icon toURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  return 0;
}

- (id)_prepareImageForImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = _ISDefaultLog(descriptorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ISIcon(Workaround) _prepareImageForImageDescriptor:v5];
  }

  v6 = [(ISIcon *)self prepareImageForDescriptor:descriptorCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 bitmapData];
  }

  return 0;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  v9[1] = *MEMORY[0x1E69E9840];
  scale = [[ISImageDescriptor alloc] initWithSize:size.width scale:size.height, scale];
  v9[0] = scale;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v6];

  v7 = [(ISIcon *)self imageForImageDescriptor:scale];

  return v7;
}

+ (_LIIconVariantInfo)variantInfoForSet:(unint64_t)set count:(unint64_t *)count
{
  setCopy = set;
  if (set >= 5)
  {
    v8 = _ISDefaultLog(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ISIcon(LIIconVariant) variantInfoForSet:setCopy count:v8];
    }

    v6 = 0;
    result = 0;
  }

  else
  {
    v6 = qword_1A782D0D0[set];
    result = *(&off_1E77C6C60 + set);
  }

  *count = v6;
  return result;
}

+ (int)findVariantFromSet:(unint64_t)set deviceIdiom:(unint64_t)idiom size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v10 = [ISIcon variantInfoForSet:set count:&v19];
  v11 = v19;
  if (!v19)
  {
    return 0;
  }

  v12 = 0;
  for (i = &v10->var2; ; i += 6)
  {
    if ((i[1] & idiom) != 0 && *i == scale)
    {
      v12 = *(i - 6);
      if (*(i - 1) >= height || *(i - 2) >= width)
      {
        break;
      }
    }

    if (!--v11)
    {
      return v12;
    }
  }

  v15 = _ISDefaultLog(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(i + 2);
    *buf = 136315906;
    v21 = v18;
    v22 = 2048;
    v23 = width;
    v24 = 2048;
    v25 = height;
    v26 = 2048;
    scaleCopy = scale;
    _os_log_debug_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEBUG, "Picked %s for size: (%lf, %lf) scale: %lf", buf, 0x2Au);
  }

  return v12;
}

+ (id)sizesFromSet:(unint64_t)set
{
  v12 = 0;
  v3 = [ISIcon variantInfoForSet:set count:&v12];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
  if (v12)
  {
    v5 = 0;
    p_var1 = &v3->var1;
    do
    {
      v7 = *p_var1;
      p_var1 += 3;
      v11 = v7;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:"{CGSize=dd}"];
      [v4 addObject:v8];

      ++v5;
    }

    while (v12 > v5);
  }

  v9 = [v4 copy];

  return v9;
}

+ (BOOL)variant:(int)variant isMemberOfSet:(unint64_t)set
{
  v11 = 0;
  v5 = [ISIcon variantInfoForSet:set count:&v11];
  if (!v11)
  {
    return 0;
  }

  if (v5->var0 == variant)
  {
    return 1;
  }

  v7 = v5 + 1;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v11 == v8)
    {
      break;
    }

    var0 = v7->var0;
    ++v7;
    ++v8;
  }

  while (var0 != variant);
  return v11 > v9;
}

+ (id)templateTypeForType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    typeCopy = *MEMORY[0x1E6963800];
  }

  return typeCopy;
}

- (void)CGImageForImageDescriptor:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1A77B8000, v0, OS_LOG_TYPE_ERROR, "Failed to create icon image for %@", v1, 0xCu);
}

- (void)_prepareImagesForImageDescriptors:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Should not be here. -_prepareImagesForImageDescriptors: should be overridden by: %s", v5, 0xCu);
}

@end