@interface AVTComponentInstance
- ($4B578F37DB41A5FD644731DB2D8E0587)uvRemappingInfo;
- (AVTComponentInstance)initWithComponent:(id)component assetResourceCache:(id)cache;
- (NSString)assetImage;
- (id)assetImageForAsset:(id)asset;
- (void)_initializeVariantSkinnerPairsIfNeeded;
- (void)setImageVariant:(id)variant;
- (void)setMaterialVariant:(id)variant;
- (void)setSkinnerVariantIntensity:(float)intensity skeleton:(id)skeleton;
- (void)setVisibilityRules:(id)rules dictatedByCategory:(int64_t)category;
- (void)updateMaterialsWithComponent:(id)component;
@end

@implementation AVTComponentInstance

- ($4B578F37DB41A5FD644731DB2D8E0587)uvRemappingInfo
{
  v3 = v2;
  v4 = self->_assets;
  v5 = [NSArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(8 * i);
        if ([v9 is2DAsset])
        {
          if (v9)
          {
            [v3 uvRemappingInfo];
          }

          else
          {
            *v3 = 0u;
            v3[1] = 0u;
          }

          return v10;
        }
      }

      v6 = [NSArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  *v3 = 0;
  *(v3 + 1) = 1065353216;
  *(v3 + 2) = 0x3F80000000000000;
  *(v3 + 3) = 0;
  return v10;
}

- (AVTComponentInstance)initWithComponent:(id)component assetResourceCache:(id)cache
{
  *(&v34[17] + 4) = *MEMORY[0x1E69E9840];
  componentCopy = component;
  cacheCopy = cache;
  v32.receiver = self;
  v32.super_class = AVTComponentInstance;
  v8 = [(AVTComponentInstance *)&v32 init];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
  assets = [componentCopy assets];
  assets = v8->_assets;
  v8->_assets = assets;

  v12 = v8->_assets;
  v13 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v15 = MEMORY[0];
  do
  {
    for (i = 0; i != v14; i = (i + 1))
    {
      if (MEMORY[0] != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(8 * i);
      layers = [v17 layers];
      layers = v8->_layers;
      v8->_layers = layers;

      if ([v17 is3DAsset])
      {
        v20 = [cacheCopy resourceForAsset:?];
        if (v20)
        {
          assetImage = v20;
          [v9 addObject:?];
        }

        else
        {
          assetImage = avt_default_log(0);
          if (os_log_type_enabled(assetImage, OS_LOG_TYPE_ERROR))
          {
            [(AVTComponentInstance *)v33 initWithComponent:v34 assetResourceCache:assetImage];
          }
        }
      }

      else
      {
        if (![v17 is2DAsset])
        {
          continue;
        }

        v22 = [cacheCopy resourceForAsset:?];
        assetImage = v8->_assetImage;
        v8->_assetImage = v22;
      }
    }

    v14 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
  }

  while (v14);
LABEL_17:

  if ([v9 count] == 1)
  {
    v23 = [v9 objectAtIndexedSubscript:?];
    goto LABEL_28;
  }

  v23 = [v9 count];
  if (v23)
  {
    node = [MEMORY[0x1E69DF330] node];
    assetNode = v8->_assetNode;
    v8->_assetNode = node;

    v26 = v9;
    v27 = [VFXNode countByEnumeratingWithState:v26 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v27)
    {
      v28 = v27;
      v29 = MEMORY[0];
      do
      {
        for (j = 0; j != v28; j = (j + 1))
        {
          if (MEMORY[0] != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(VFXNode *)v8->_assetNode addChildNode:?];
        }

        v28 = [VFXNode countByEnumeratingWithState:v26 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v28);
    }
  }

  else
  {
LABEL_28:
    v26 = v8->_assetNode;
    v8->_assetNode = v23;
  }

LABEL_30:
  return v8;
}

- (void)updateMaterialsWithComponent:(id)component
{
  componentCopy = component;
  assetNode = self->_assetNode;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke;
  v10 = &unk_1E7F47B10;
  v11 = componentCopy;
  v6 = componentCopy;
  [(VFXNode *)assetNode enumerateHierarchyUsingBlock:?];
}

void __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke(uint64_t a1, void *a2)
{
  *(&v42[17] + 4) = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [a2 model];
  v3 = [v2 materials];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 hasPrefix:?];

        if (v10)
        {
          v11 = [v8 name];
          if ([v11 rangeOfString:?] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "rangeOfString:") != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [v11 substringToIndex:?];

            v11 = v12;
          }

          v13 = [v11 substringFromIndex:?];
          v14 = [v13 intValue];

          if (v14)
          {
            v15 = v14 - 1;
            v16 = [*(a1 + 32) materialAtIndex:?];
            if (!v16)
            {
              v17 = avt_default_log(0);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v41, v42, v17);
              }
            }

            [v16 applyToVFXMaterial:?];
            v18 = [v8 customMaterialAttributeNames];
            v19 = v18;
            if (v14 != 1)
            {
              if ([v18 containsObject:?])
              {
                v20 = [*(a1 + 32) materialAtIndex:?];
                if (!v20)
                {
                  v21 = avt_default_log(0);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v39, &v40, v21);
                  }
                }

                v22 = [v20 baseColor];
                [v8 setValue:? forKey:?];
              }

              if (v15 == 1)
              {
                goto LABEL_43;
              }
            }

            if ([v19 containsObject:?])
            {
              v23 = [*(a1 + 32) materialAtIndex:?];
              if (!v23)
              {
                v24 = avt_default_log(0);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v37, &v38, v24);
                }
              }

              v25 = [v23 baseColor];
              [v8 setValue:? forKey:?];
            }

            if (v15 != 2)
            {
LABEL_43:
              if ([v19 containsObject:?])
              {
                v26 = [*(a1 + 32) materialAtIndex:?];
                if (!v26)
                {
                  v27 = avt_default_log(0);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v35, &v36, v27);
                  }
                }

                v28 = [v26 baseColor];
                [v8 setValue:? forKey:?];
              }
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }
}

- (NSString)assetImage
{
  assetImageVariant = self->_assetImageVariant;
  if (!assetImageVariant)
  {
    assetImageVariant = self->_assetImage;
  }

  return assetImageVariant;
}

- (void)setImageVariant:(id)variant
{
  variantCopy = variant;
  if (variantCopy)
  {
    v5 = variantCopy;
    stringByDeletingLastPathComponent = [(NSString *)self->_assetImage stringByDeletingLastPathComponent];
    v7 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:?];
  }

  else
  {
    v7 = 0;
  }

  assetImageVariant = self->_assetImageVariant;
  self->_assetImageVariant = v7;
}

- (void)setMaterialVariant:(id)variant
{
  variantCopy = variant;
  if (self->_assetNode)
  {
    materialVariant = self->_materialVariant;
    if (variantCopy | materialVariant)
    {
      if (![(NSString *)materialVariant isEqualToString:?])
      {
        objc_storeStrong(&self->_materialVariant, variant);
        assetNode = self->_assetNode;
        v8 = variantCopy;
        [(VFXNode *)assetNode enumerateHierarchyUsingBlock:?];
      }
    }
  }
}

void __43__AVTComponentInstance_setMaterialVariant___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 model];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 materials];
    if ([v5 count] != 1)
    {
      v20 = v4;
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      [v5 count];
      v22 = [v6 initWithCapacity:?];
      v19 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = MEMORY[0];
        v21 = a1;
        do
        {
          v12 = 0;
          do
          {
            if (MEMORY[0] != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = [*(8 * v12) name];
            v14 = [v13 componentsSeparatedByString:?];

            v15 = [v14 firstObject];
            if ([v14 count] >= 2 && (objc_msgSend(v14, "lastObject"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v17 = v16;
              if ([v16 isEqualToString:?])
              {
                [v22 insertObject:? atIndex:?];
                ++v10;
                a1 = v21;
              }

              else
              {
                [v22 addObject:?];
              }
            }

            else
            {
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, *(a1 + 32)];
              v17 = v23;
              if ([v7 indexOfObjectPassingTest:?] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v22 insertObject:? atIndex:?];
                ++v10;
                a1 = v21;
              }

              else
              {
                [v22 addObject:?];
              }
            }

            v12 = (v12 + 1);
          }

          while (v9 != v12);
          v18 = [v7 countByEnumeratingWithState:? objects:? count:?];
          v9 = v18;
        }

        while (v18);
      }

      v4 = v20;
      [v20 setMaterials:?];

      v5 = v19;
    }
  }
}

void *__43__AVTComponentInstance_setMaterialVariant___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:?];

  return v3;
}

- (void)_initializeVariantSkinnerPairsIfNeeded
{
  if (!self->_didInitializeVariantSkinnerPairs)
  {
    v3 = self->_variantSkinnerPairs;
    objc_sync_enter(v3);
    if (!self->_didInitializeVariantSkinnerPairs)
    {
      [(VFXNode *)self->_assetNode enumerateHierarchyUsingBlock:?];
      self->_didInitializeVariantSkinnerPairs = 1;
    }

    objc_sync_exit(v3);
  }
}

void __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForUndefinedKey:?];
  if ([v4 count])
  {
    if (!*(*(a1 + 32) + 56))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:? valueOptions:? capacity:?];
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;
    }

    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke_2;
    v13 = &unk_1E7F48B68;
    v8 = v3;
    v9 = *(a1 + 32);
    v14 = v8;
    v15 = v9;
    [v4 enumerateKeysAndObjectsUsingBlock:{v10, 3221225472, __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke_2, &unk_1E7F48B68}];
  }
}

- (void)setSkinnerVariantIntensity:(float)intensity skeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  if (self->_assetNode && self->_skinnerVariantIntensity != intensity)
  {
    self->_skinnerVariantIntensity = intensity;
    [(AVTComponentInstance *)self _initializeVariantSkinnerPairsIfNeeded];
    obj = self->_variantSkinnerPairs;
    v7 = [NSMapTable countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        v10 = 0;
        do
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(8 * v10);
          v12 = [(NSMapTable *)self->_variantSkinnerPairs objectForKey:?];
          v13 = v12;
          v14 = MEMORY[0x1E69DF368];
          if (v12)
          {
            v15 = *(v12 + 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = [v14 avt_skinnerByInterpolatingFromSkinner:? toSkinner:? factor:? skeleton:?];

          [v11 setSkinner:?];
          v10 = (v10 + 1);
        }

        while (v8 != v10);
        v17 = [NSMapTable countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
        v8 = v17;
      }

      while (v17);
    }
  }
}

- (void)setVisibilityRules:(id)rules dictatedByCategory:(int64_t)category
{
  rulesCopy = rules;
  v6 = rulesCopy;
  if (self->_assetNode)
  {
    v12 = rulesCopy;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v8 = [(NSMutableDictionary *)self->_visibilityRules objectForKeyedSubscript:?];
    if (v8 != v12)
    {
      AVTEvaluateNameMatchingRules(v8, self->_assetNode, &__block_literal_global_12);
      visibilityRules = self->_visibilityRules;
      if (v12)
      {
        if (!visibilityRules)
        {
          v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
          v11 = self->_visibilityRules;
          self->_visibilityRules = v10;

          visibilityRules = self->_visibilityRules;
        }

        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
        AVTEvaluateNameMatchingRules(v12, self->_assetNode, &__block_literal_global_62_0);
      }

      else
      {
        [(NSMutableDictionary *)visibilityRules removeObjectForKey:?];
      }
    }

    v6 = v12;
  }

  MEMORY[0x1EEE66BB8](rulesCopy, v6);
}

- (id)assetImageForAsset:(id)asset
{
  assets = self->_assets;
  assetCopy = asset;
  firstObject = [(NSArray *)assets firstObject];
  v6 = [firstObject assetImageForAsset:?];

  return v6;
}

void __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 childNodeWithName:? recursively:?];
  if (!v6)
  {
    v7 = avt_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "nodeWithSkinnerVariant";
    }
  }

  v8 = [v6 skinner];
  if (!v8)
  {
    v9 = avt_default_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "originalSkinner";
    }
  }

  v10 = MEMORY[0x1E69DF368];
  v11 = [v8 baseMesh];
  v12 = [v5 bones];
  v13 = [v5 boneInverseBindTransforms];
  v14 = [v5 boneWeights];
  v15 = [v5 boneIndices];
  v16 = [v10 skinnerWithBaseMesh:? bones:? boneInverseBindTransforms:? boneWeights:? boneIndices:?];

  [v5 baseMeshBindTransform];
  [v16 setBaseMeshBindTransform:?];
  v17 = objc_alloc_init(AVTSkinnerVariantPair);
  [(AVTSkinnerVariantPair *)v17 setOriginalSkinner:v8];
  [(AVTPhysicsRig *)v17 setRig:v16];
  [*(*(a1 + 40) + 56) setObject:? forKey:?];
}

- (void)initWithComponent:(NSObject *)a3 assetResourceCache:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "node";
}

void __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "avtMaterial";
}

@end