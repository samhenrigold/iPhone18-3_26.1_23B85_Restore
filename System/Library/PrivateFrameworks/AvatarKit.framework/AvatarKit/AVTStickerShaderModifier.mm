@interface AVTStickerShaderModifier
+ (id)encapsulateShaderData:(id)data;
+ (id)entryPointForModifierName:(id)name;
+ (id)shaderModifierCache;
+ (id)shaderModifierFromDictionary:(id)dictionary assetsPath:(id)path;
- (AVTStickerShaderModifier)initWithEntryPoint:(id)point nodeNames:(id)names data:(id)data properties:(id)properties forceDoubleSided:(BOOL)sided;
- (id)cloneWithProperties:(id)properties;
- (id)description;
- (id)dictionaryWithTargetPath:(id)path;
- (void)applyToAllMaterialsOfNode:(id)node options:(id)options reversionContext:(id)context;
- (void)applyToMatchedMaterialsOfAvatar:(id)avatar inHierarchy:(id)hierarchy options:(id)options reversionContext:(id)context;
- (void)applyToMaterial:(id)material options:(id)options reversionContext:(id)context;
@end

@implementation AVTStickerShaderModifier

+ (id)shaderModifierCache
{
  if (shaderModifierCache_onceToken != -1)
  {
    +[AVTStickerShaderModifier shaderModifierCache];
  }

  v3 = shaderModifierCache_kCache;

  return v3;
}

uint64_t __47__AVTStickerShaderModifier_shaderModifierCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = shaderModifierCache_kCache;
  shaderModifierCache_kCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)shaderModifierFromDictionary:(id)dictionary assetsPath:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v8 = [dictionaryCopy objectForKey:?];
  v41 = [self entryPointForModifierName:?];
  v9 = [dictionaryCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:?];
  }

  v12 = v11;

  v13 = v12;
  objc_opt_class();
  v43 = v13;
  if (objc_opt_isKindOfClass())
  {
    v43 = [v13 componentsJoinedByString:?];
  }

  v14 = [dictionaryCopy objectForKey:?];
  v40 = v14;
  if (v14)
  {
    [v14 BOOLValue];
  }

  shaderModifierCache = [self shaderModifierCache];
  v16 = [dictionaryCopy objectForKey:?];
  v17 = [pathCopy stringByAppendingPathComponent:?];
  v18 = MEMORY[0x1E696AEC0];
  v42 = v17;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
  standardizedURL = [v19 standardizedURL];
  absoluteString = [standardizedURL absoluteString];
  v22 = [v18 stringWithFormat:absoluteString, v8, v43];

  v39 = v16;
  if (!v16)
  {
    v24 = 0;
    goto LABEL_27;
  }

  v23 = [shaderModifierCache objectForKey:?];
  if (v23)
  {
    v38 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:? encoding:? error:?];
    if (!v38)
    {
      v24 = 0;
      goto LABEL_27;
    }
  }

  v37 = v22;
  v35 = v13;
  v36 = v8;
  array = [MEMORY[0x1E695DF70] array];
  v26 = [dictionaryCopy objectForKey:?];
  v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0];
    do
    {
      for (i = 0; i != v28; i = (i + 1))
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [AVTStickerShaderModifierProperty shaderModifierPropertyFromDictionary:"shaderModifierPropertyFromDictionary:assetsPath:" assetsPath:?];
        if (v31)
        {
          [array addObject:?];
        }
      }

      v28 = [v26 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v28);
  }

  v32 = v23;
  if (v23)
  {
    v24 = v32;
    v13 = v35;
    v16 = v39;
    if ([array count])
    {
      v24 = [(AVTStickerShaderModifier *)v32 cloneWithProperties:?];
    }
  }

  else
  {
    v13 = v35;
    v24 = [AVTStickerShaderModifier initWithEntryPoint:"initWithEntryPoint:nodeNames:data:properties:forceDoubleSided:" nodeNames:? data:? properties:? forceDoubleSided:?];
    [(AVTStickerShaderModifier *)v24 setDictionary:?];
    [shaderModifierCache setObject:? forKey:?];
    v16 = v39;
  }

  lastPathComponent = [v16 lastPathComponent];
  v24->_isCropShaderModifier = [lastPathComponent isEqualToString:?];

  v8 = v36;
  v22 = v37;
LABEL_27:

  return v24;
}

+ (id)entryPointForModifierName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy isEqualToString:?];
  v5 = MEMORY[0x1E69DF3B0];
  if ((v4 & 1) == 0)
  {
    if ([nameCopy isEqualToString:?])
    {
      v5 = MEMORY[0x1E69DF3C0];
    }

    else if ([nameCopy isEqualToString:?])
    {
      v5 = MEMORY[0x1E69DF3C8];
    }

    else if ([nameCopy isEqualToString:?])
    {
      v5 = MEMORY[0x1E69DF3B8];
    }
  }

  v6 = *v5;
  v7 = v6;

  return v6;
}

+ (id)encapsulateShaderData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (([dataCopy containsString:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"// ==== STICKER SHADER MODIFIER START ====", dataCopy, @"// ==== STICKER SHADER MODIFIER END ===="];
  }

  return v4;
}

- (AVTStickerShaderModifier)initWithEntryPoint:(id)point nodeNames:(id)names data:(id)data properties:(id)properties forceDoubleSided:(BOOL)sided
{
  pointCopy = point;
  namesCopy = names;
  dataCopy = data;
  propertiesCopy = properties;
  v20.receiver = self;
  v20.super_class = AVTStickerShaderModifier;
  v17 = [(AVTStickerShaderModifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entryPoint, point);
    objc_storeStrong(&v18->_nodeNames, names);
    objc_storeStrong(&v18->_data, data);
    objc_storeStrong(&v18->_properties, properties);
    v18->_forceDoubleSided = sided;
  }

  return v18;
}

- (id)cloneWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [AVTStickerShaderModifier alloc];
  entryPoint = [(AVTStickerShaderModifier *)self entryPoint];
  nodeNames = [(AVTStickerShaderModifier *)self nodeNames];
  data = [(AVTStickerShaderModifier *)self data];
  [(AVTStickerShaderModifier *)self forceDoubleSided];
  v9 = [AVTStickerShaderModifier initWithEntryPoint:v5 nodeNames:"initWithEntryPoint:nodeNames:data:properties:forceDoubleSided:" data:? properties:? forceDoubleSided:?];

  return v9;
}

- (void)applyToMaterial:(id)material options:(id)options reversionContext:(id)context
{
  materialCopy = material;
  optionsCopy = options;
  contextCopy = context;
  if (!self->_isCropShaderModifier || [optionsCopy useLegacyCorrectClippingImplementation])
  {
    shaderModifiers = [materialCopy shaderModifiers];
    v12 = [shaderModifiers objectForKeyedSubscript:?];
    if (([v12 containsString:?] & 1) == 0)
    {
      v13 = AVTMergeShaderModifiersForEntryPoint(v12, 0, self->_data, 0);
      if (v13)
      {
        [contextCopy saveShaderModifiers:? forMaterial:?];
        if ([shaderModifiers count])
        {
          v14 = [shaderModifiers mutableCopy];
          [v14 setObject:? forKeyedSubscript:?];
        }

        else
        {
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        }

        [materialCopy setShaderModifiers:?];
      }
    }

    v24 = optionsCopy;
    properties = [(AVTStickerShaderModifier *)self properties];
    v16 = [properties countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      do
      {
        for (i = 0; i != v17; i = (i + 1))
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(properties);
          }

          v20 = *(8 * i);
          name = [v20 name];
          [contextCopy saveCustomMaterialPropertyNamed:? forMaterial:?];
          effectiveValue = [v20 effectiveValue];
          [materialCopy setValue:? forKey:?];
        }

        v17 = [properties countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    if (-[AVTStickerShaderModifier forceDoubleSided](self, "forceDoubleSided") && ([materialCopy isDoubleSided] & 1) == 0)
    {
      [contextCopy saveSingleSidedForMaterial:?];
      [materialCopy setDoubleSided:?];
    }

    optionsCopy = v24;
  }
}

- (void)applyToAllMaterialsOfNode:(id)node options:(id)options reversionContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  model = [node model];
  materials = [model materials];

  v12 = [materials countByEnumeratingWithState:? objects:? count:?];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    do
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(materials);
        }

        [AVTStickerShaderModifier applyToMaterial:"applyToMaterial:options:reversionContext:" options:? reversionContext:?];
      }

      v13 = [materials countByEnumeratingWithState:? objects:? count:?];
    }

    while (v13);
  }
}

- (void)applyToMatchedMaterialsOfAvatar:(id)avatar inHierarchy:(id)hierarchy options:(id)options reversionContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  v11 = [avatar nodesMatchingStickerPattern:? inHierarchy:? options:? includingDerivedNodes:?];
  v12 = [v11 countByEnumeratingWithState:0 objects:? count:?];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    do
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v11);
        }

        [AVTStickerShaderModifier applyToAllMaterialsOfNode:"applyToAllMaterialsOfNode:options:reversionContext:" options:? reversionContext:?];
      }

      v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v13);
  }
}

- (id)dictionaryWithTargetPath:(id)path
{
  dictionary = [(AVTStickerShaderModifier *)self dictionary];
  v4 = [dictionary mutableCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  nodeNames = [(AVTStickerShaderModifier *)self nodeNames];
  entryPoint = [(AVTStickerShaderModifier *)self entryPoint];
  v7 = [v3 stringWithFormat:v4, self, nodeNames, entryPoint];

  return v7;
}

@end