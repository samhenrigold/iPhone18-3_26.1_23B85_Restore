@interface AVTStickerProp
+ (BOOL)getOrientToCameraInDictionary:(id)dictionary;
+ (BOOL)getRenderLastInDictionary:(id)dictionary;
+ (CGSize)getSizeInDictionary:(id)dictionary;
+ (__n128)getPositionInDictionary:(void *)dictionary;
+ (__n128)getRotationInDictionary:(void *)dictionary;
+ (__n128)getScaleInDictionary:(void *)dictionary;
+ (float)getOpacityInDictionary:(id)dictionary;
+ (id)adjustmentFromDictionary:(id)dictionary presetCategory:(id)category;
+ (id)cacheKeyForSize:(CGSize)size position:(id)position rotation:(id)rotation scale:palettesDescriptions:filePath:;
+ (id)propFromDictionary:(id)dictionary assetsPath:(id)path;
+ (id)stickerPropCache;
+ (void)applyPalettesForAvatar:(id)avatar toNode:(id)node palettesDescriptions:(id)descriptions;
- (AVTStickerProp)initWithSize:(CGSize)size scale:(BOOL)scale position:(BOOL)position renderLast:(id)last orientToCamera:(id)camera rotation:(id)rotation palettesDescriptions:shaderModifiers:adjustments:;
- (CGSize)size;
- (NSString)displayName;
- (NSString)identifier;
- (NSString)nodeName;
- (id)cloneWithShaderModifiers:(id)modifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryWithTargetPath:(id)path;
- (void)applyCamera:(id)camera toNode:(id)node distToHead:(double)head;
- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler;
- (void)setNode:(id)node;
@end

@implementation AVTStickerProp

+ (id)stickerPropCache
{
  if (stickerPropCache_onceToken != -1)
  {
    +[AVTStickerProp stickerPropCache];
  }

  v3 = stickerPropCache_kCache;

  return v3;
}

uint64_t __34__AVTStickerProp_stickerPropCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = stickerPropCache_kCache;
  stickerPropCache_kCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)cacheKeyForSize:(CGSize)size position:(id)position rotation:(id)rotation scale:palettesDescriptions:filePath:
{
  v21 = v6;
  v22 = v7;
  v20 = v5;
  height = size.height;
  width = size.width;
  rotationCopy = rotation;
  v12 = [position componentsJoinedByString:?];
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];

  standardizedURL = [v13 standardizedURL];
  absoluteString = [standardizedURL absoluteString];

  v16 = MEMORY[0x1E696AEC0];
  v24.width = width;
  v24.height = height;
  v17 = NSStringFromCGSize(v24);
  v18 = [v16 stringWithFormat:absoluteString, v17, *&v20, *(&v20 + 1), *(&v20 + 2), *&v21, *(&v21 + 1), *(&v21 + 2), *&v22, *(&v22 + 1), *(&v22 + 2), v12];

  return v18;
}

+ (BOOL)getOrientToCameraInDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:?];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)getRenderLastInDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:?];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (CGSize)getSizeInDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:?];
    [v5 floatValue];
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:?];
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (__n128)getPositionInDictionary:(void *)dictionary
{
  v3 = [dictionary objectForKey:?];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:?];
      [v4 floatValue];
      v15 = v5;
      v6 = [v3 objectForKeyedSubscript:?];
      [v6 floatValue];
      v14 = v7;
      v8 = [v3 objectForKeyedSubscript:?];
      [v8 floatValue];
      v9 = v15;
      DWORD1(v9) = v14;
      DWORD2(v9) = v10;
      v16 = v9;
    }

    else
    {
      [v3 floatValue];
      *&v11 = 0;
      *(&v11 + 1) = v12;
      v16 = v11;
    }
  }

  else
  {
    v16 = 0u;
  }

  return v16;
}

+ (__n128)getRotationInDictionary:(void *)dictionary
{
  v3 = [dictionary objectForKey:?];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:?];
      [v4 floatValue];
      v15 = v5;
      v6 = [v3 objectForKeyedSubscript:?];
      [v6 floatValue];
      v14 = v7;
      v8 = [v3 objectForKeyedSubscript:?];
      [v8 floatValue];
      v9 = v15;
      DWORD1(v9) = v14;
      DWORD2(v9) = v10;
      v16 = v9;
    }

    else
    {
      [v3 floatValue];
      *&v11 = 0;
      *(&v11 + 1) = v12;
      v16 = v11;
    }
  }

  else
  {
    v16 = 0u;
  }

  return v16;
}

+ (__n128)getScaleInDictionary:(void *)dictionary
{
  v3 = [dictionary objectForKey:?];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:?];
      [v4 floatValue];
      v23 = v5;
      v6 = [v3 objectForKeyedSubscript:?];
      [v6 floatValue];
      v21 = v7;
      v8 = [v3 objectForKeyedSubscript:?];
      [v8 floatValue];
      v9 = v23;
      DWORD1(v9) = v21;
      DWORD2(v9) = v10;
      v24 = v9;
    }

    else
    {
      [v3 floatValue];
      v25 = v16;
      [v3 floatValue];
      v22 = v17;
      [v3 floatValue];
      v18 = v25;
      DWORD1(v18) = v22;
      DWORD2(v18) = v19;
      v24 = v18;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    v24 = _Q0;
  }

  return v24;
}

+ (id)adjustmentFromDictionary:(id)dictionary presetCategory:(id)category
{
  dictionaryCopy = dictionary;
  AVTPresetCategoryFromString(category);
  [self getPositionInDictionary:?];
  [self getRotationInDictionary:?];
  [self getScaleInDictionary:?];
  v7 = [dictionaryCopy objectForKey:?];

  v8 = [AVTStickerPropAdjustTransformProperty initWithPresetCategory:"initWithPresetCategory:presetValue:position:rotation:scale:" presetValue:? position:? rotation:? scale:?];

  return v8;
}

+ (float)getOpacityInDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:?];
  v4 = 1.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 floatValue];
      v4 = v5;
    }
  }

  return v4;
}

+ (id)propFromDictionary:(id)dictionary assetsPath:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  [self getSizeInDictionary:?];
  [self getPositionInDictionary:?];
  [self getRotationInDictionary:?];
  [self getScaleInDictionary:?];
  [self getOpacityInDictionary:?];
  [self getOrientToCameraInDictionary:?];
  [self getRenderLastInDictionary:?];
  v45 = [dictionaryCopy objectForKey:?];
  array = [MEMORY[0x1E695DF70] array];
  v9 = [dictionaryCopy objectForKey:?];
  objc_opt_class();
  v46 = v9;
  v51 = pathCopy;
  v47 = dictionaryCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v52 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v52)
    {
      v11 = MEMORY[0];
      v48 = MEMORY[0];
      v50 = v10;
      do
      {
        for (i = 0; i != v52; i = (i + 1))
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = [v10 objectForKey:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [self adjustmentFromDictionary:? presetCategory:?];
            [array addObject:?];
          }

          else
          {
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
            if (v15)
            {
              v16 = v15;
              v17 = MEMORY[0];
              do
              {
                for (j = 0; j != v16; j = (j + 1))
                {
                  if (MEMORY[0] != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [self adjustmentFromDictionary:? presetCategory:?];
                  [array addObject:?];
                }

                v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
              }

              while (v16);
              v10 = v50;
              v11 = v48;
            }
          }
        }

        v52 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v52);
    }

    dictionaryCopy = v47;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v21 = [dictionaryCopy objectForKey:?];
  v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0];
    do
    {
      for (k = 0; k != v23; k = (k + 1))
      {
        if (MEMORY[0] != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [AVTStickerShaderModifier shaderModifierFromDictionary:"shaderModifierFromDictionary:assetsPath:" assetsPath:?];
        if (v26)
        {
          [array2 addObject:?];
        }
      }

      v23 = [v21 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v23);
  }

  stickerPropCache = [self stickerPropCache];
  v27 = v47;
  v28 = [v47 objectForKey:?];
  if (v28)
  {
    v29 = [v51 stringByAppendingPathComponent:?];
    stringByStandardizingPath = [v29 stringByStandardizingPath];

    v31 = v45;
    stringByStandardizingPath2 = [objc_opt_class() cacheKeyForSize:? position:? rotation:? scale:? palettesDescriptions:? filePath:?];
    v33 = [stickerPropCache objectForKey:?];
    if (v33)
    {
      v34 = v33;
      v35 = v28;
      if (array2)
      {
        v36 = [(AVTStickerProp *)v33 cloneWithShaderModifiers:?];

        v34 = v36;
      }

      v28 = v35;
      v31 = v45;
    }

    else
    {
      v34 = [AVTStickerImageProp initWithImageAtPath:"initWithImageAtPath:size:scale:position:renderLast:orientToCamera:rotation:palettesDescriptions:modifiers:adjustments:" size:? scale:? position:? renderLast:? orientToCamera:? rotation:? palettesDescriptions:? modifiers:? adjustments:?];
      [(AVTStickerProp *)v34 setOriginalName:?];
      [(AVTStickerProp *)v34 setOpacity:?];
      [stickerPropCache setObject:? forKey:?];
    }

    goto LABEL_47;
  }

  stringByStandardizingPath = [v47 objectForKey:?];
  v31 = v45;
  if (!stringByStandardizingPath)
  {
    v34 = 0;
    goto LABEL_48;
  }

  v37 = [v51 stringByAppendingPathComponent:?];
  stringByStandardizingPath2 = [v37 stringByStandardizingPath];

  v38 = [objc_opt_class() cacheKeyForSize:? position:? rotation:? scale:? palettesDescriptions:? filePath:?];
  v39 = [stickerPropCache objectForKey:?];
  if (!v39)
  {
    v49 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v41 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
    v42 = 0;
    v34 = v42;
    if (v42)
    {
      v43 = avt_default_log(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(AVTStickerProp *)stringByStandardizingPath2 propFromDictionary:v34 assetsPath:v43];
      }
    }

    v40 = [AVTStickerSceneProp initWithRootNode:"initWithRootNode:scale:position:rotation:renderLast:palettesDescriptions:modifiers:adjustments:" scale:? position:? rotation:? renderLast:? palettesDescriptions:? modifiers:? adjustments:?];
    [(AVTStickerProp *)v40 setOriginalName:?];
    [(AVTStickerProp *)v40 setOpacity:?];
    [stickerPropCache setObject:? forKey:?];

    goto LABEL_45;
  }

  v34 = v39;
  if (array2)
  {
    v40 = [(AVTStickerProp *)v39 cloneWithShaderModifiers:?];
LABEL_45:

    v34 = v40;
    v27 = v47;
    v31 = v45;
  }

LABEL_47:
LABEL_48:

  return v34;
}

+ (void)applyPalettesForAvatar:(id)avatar toNode:(id)node palettesDescriptions:(id)descriptions
{
  avatarCopy = avatar;
  nodeCopy = node;
  descriptionsCopy = descriptions;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = avatarCopy;
    v22 = avatarCopy;
    v19 = descriptionsCopy;
    obj = descriptionsCopy;
    v9 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      do
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(8 * i);
          v25 = [v13 objectForKey:v19];
          v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v14 = v26;
          v15 = v25;
          [nodeCopy enumerateHierarchyUsingBlock:?];
          v16 = [v13 objectForKey:?];
          AVTColorCategoryFromString(v16);
          v17 = [v22 colorPresetForCategory:?];
          makeMaterial = [v17 makeMaterial];
          v18 = makeMaterial;
          [v14 enumerateObjectsUsingBlock:?];
        }

        v10 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }

    descriptionsCopy = v19;
    avatarCopy = v20;
  }
}

void __69__AVTStickerProp_applyPalettesForAvatar_toNode_palettesDescriptions___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = [a2 model];
    v4 = [v3 materials];

    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(8 * i) name];
          v10 = [v9 isEqualToString:?];

          if (v10)
          {
            [*(a1 + 40) addObject:?];
          }
        }

        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v13 = [a2 model];
    v12 = [v13 firstMaterial];
    [v11 addObject:?];
  }
}

- (AVTStickerProp)initWithSize:(CGSize)size scale:(BOOL)scale position:(BOOL)position renderLast:(id)last orientToCamera:(id)camera rotation:(id)rotation palettesDescriptions:shaderModifiers:adjustments:
{
  v28 = v9;
  v29 = v10;
  v27 = v8;
  height = size.height;
  width = size.width;
  lastCopy = last;
  cameraCopy = camera;
  rotationCopy = rotation;
  v30.receiver = self;
  v30.super_class = AVTStickerProp;
  v22 = [(AVTStickerProp *)&v30 init];
  v23 = v22;
  if (v22)
  {
    v22->_size.width = width;
    v22->_size.height = height;
    *v22->_position = v28;
    *v22->_scale = v27;
    v22->_opacity = 1.0;
    v22->_renderLast = scale;
    v22->_orientToCamera = position;
    *v22->_rotation = v29;
    objc_storeStrong(&v22->_palettesDescriptions, last);
    v24 = [cameraCopy copy];
    shaderModifiers = v23->_shaderModifiers;
    v23->_shaderModifiers = v24;

    objc_storeStrong(&v23->_adjustments, rotation);
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTStickerProp alloc];
  [(AVTStickerProp *)self size];
  [(AVTStickerProp *)self scale];
  [(AVTStickerProp *)self position];
  [(AVTStickerProp *)self renderLast];
  [(AVTStickerProp *)self orientToCamera];
  [(AVTStickerProp *)self rotation];
  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  adjustments = [(AVTStickerProp *)self adjustments];
  v8 = [AVTStickerProp initWithSize:v4 scale:"initWithSize:scale:position:renderLast:orientToCamera:rotation:palettesDescriptions:shaderModifiers:adjustments:" position:? renderLast:? orientToCamera:? rotation:? palettesDescriptions:? shaderModifiers:? adjustments:?];

  return v8;
}

- (id)cloneWithShaderModifiers:(id)modifiers
{
  modifiersCopy = modifiers;
  v5 = [(AVTStickerProp *)self copy];
  node = [(AVTStickerProp *)self node];
  [v5 setNode:?];

  [v5 setShaderModifiers:?];

  return v5;
}

- (void)setNode:(id)node
{
  nodeCopy = node;
  if (self->_node != nodeCopy)
  {
    v7 = nodeCopy;
    nodeName = [(AVTStickerProp *)self nodeName];
    [(VFXNode *)v7 setName:?];

    [(AVTStickerProp *)self renderLast];
    [(VFXNode *)v7 setRenderingOrder:?];
    objc_storeStrong(&self->_node, node);
    nodeCopy = v7;
  }
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  originalName = [(AVTStickerProp *)self originalName];
  v6 = [v3 stringWithFormat:v4, originalName];

  return v6;
}

- (NSString)nodeName
{
  v2 = MEMORY[0x1E696AD98];
  [(AVTStickerProp *)self hash];
  v3 = [v2 numberWithUnsignedInteger:?];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSString)displayName
{
  originalName = [(AVTStickerProp *)self originalName];
  lastPathComponent = [originalName lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (void)applyCamera:(id)camera toNode:(id)node distToHead:(double)head
{
  cameraCopy = camera;
  nodeCopy = node;
  orientToCamera = [(AVTStickerProp *)self orientToCamera];
  if (cameraCopy && nodeCopy && orientToCamera)
  {
    [nodeCopy position];
    [nodeCopy setPosition:?];
    [(AVTStickerProp *)self size];
    if (v9 > 0.0)
    {
      [(AVTStickerProp *)self size];
      [(AVTStickerProp *)self size];
    }

    [(AVTStickerProp *)self position];
    camera = [cameraCopy camera];
    [camera fieldOfView];
    v12 = v11 * 3.14159265 * 0.5 / 180.0;
    tanf(v12);

    model = [nodeCopy model];
    [model setWidth:?];
    [model setHeight:?];
    [nodeCopy position];
    [nodeCopy position];
    __asm { FMOV            V1.2D, #0.5 }

    [nodeCopy position];
    [nodeCopy setPosition:?];
    [nodeCopy transform];
    [cameraCopy convertTransform:? toNode:?];
    [nodeCopy setTransform:?];
  }
}

- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  node = [(AVTStickerProp *)self node];
  v9 = AVTCloneNodesAndMaterials(node);

  handlerCopy[2](handlerCopy, v9);
}

- (id)dictionaryWithTargetPath:(id)path
{
  pathCopy = path;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(AVTStickerProp *)self size];
  if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v9 = MEMORY[0x1E696AD98];
    [(AVTStickerProp *)self size];
    v42 = [v9 numberWithFloat:?];
    v10 = MEMORY[0x1E696AD98];
    [(AVTStickerProp *)self size];
    v43 = [v10 numberWithFloat:?];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  [(AVTStickerProp *)self position];
  v13 = vceqzq_f32(v12);
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) == 0)
  {
    position = [(AVTStickerProp *)self position];
    v16 = plistWithVector(position, v15);
    [dictionary setObject:? forKeyedSubscript:?];
  }

  if (![(AVTStickerProp *)self orientToCamera])
  {
    v17 = MEMORY[0x1E696AD98];
    [(AVTStickerProp *)self orientToCamera];
    v18 = [v17 numberWithBool:?];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  [(AVTStickerProp *)self rotation];
  v20 = vceqzq_f32(v19);
  v20.i32[3] = v20.i32[2];
  if ((vminvq_u32(v20) & 0x80000000) == 0)
  {
    rotation = [(AVTStickerProp *)self rotation];
    v23 = plistWithVector(rotation, v22);
    [dictionary setObject:? forKeyedSubscript:?];
  }

  [(AVTStickerProp *)self scale];
  v25 = vceqq_f32(v24, xmmword_1BB4F05D0);
  v25.i32[3] = v25.i32[2];
  if ((vminvq_u32(v25) & 0x80000000) == 0)
  {
    scale = [(AVTStickerProp *)self scale];
    v28 = plistWithVector(scale, v27);
    [dictionary setObject:? forKeyedSubscript:?];
  }

  [(AVTStickerProp *)self opacity];
  if (v29 != 1.0)
  {
    [(AVTStickerProp *)self opacity];
    v31 = numberFromDouble(v30);
    [dictionary setObject:? forKeyedSubscript:?];
  }

  if (![(AVTStickerProp *)self renderLast])
  {
    v32 = MEMORY[0x1E696AD98];
    [(AVTStickerProp *)self renderLast];
    v33 = [v32 numberWithBool:?];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  if ([(NSArray *)self->_shaderModifiers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v35 = self->_shaderModifiers;
    v36 = [NSArray countByEnumeratingWithState:v35 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v36)
    {
      v37 = v36;
      v38 = MEMORY[0];
      do
      {
        for (i = 0; i != v37; i = (i + 1))
        {
          if (MEMORY[0] != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(8 * i) dictionaryWithTargetPath:?];
          [array addObject:?];
        }

        v37 = [NSArray countByEnumeratingWithState:v35 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v37);
    }

    [dictionary setObject:? forKeyedSubscript:?];
  }

  if ([(NSArray *)self->_palettesDescriptions count])
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  return dictionary;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)propFromDictionary:(NSObject *)a3 assetsPath:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 description];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: could not load sticker scene prop at %@ with error: %@", &v6, 0x16u);
}

@end