@interface AVTPreset
+ (AVTPreset)presetWithCategory:(int64_t)category identifier:(id)identifier;
+ (id)availablePresetsForCategory:(int64_t)category;
+ (unint64_t)editableColorCountForCategory:(int64_t)category;
- (id)cache;
- (id)description;
- (id)newComponent;
- (void)enumerateAssetSpecificVariantDependenciesOfKind:(unint64_t)kind block:(id)block;
- (void)enumeratePresetDependencies:(id)dependencies;
- (void)enumeratePresetSpecificPresetDependencies:(id)dependencies;
- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block;
- (void)enumerateVisibilityDependencies:(id)dependencies;
- (void)rebuildSpecializationSettings;
@end

@implementation AVTPreset

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = AVTPresetCategoryToString(self->_category);
  v6 = [v3 stringWithFormat:v4, self, v5, self->_identifier];

  return v6;
}

+ (id)availablePresetsForCategory:(int64_t)category
{
  if (AVTPresetLoadPresetsIfNeeded_onceToken != -1)
  {
    +[AVTPreset availablePresetsForCategory:];
  }

  v4 = gPresets[category];

  return v4;
}

+ (AVTPreset)presetWithCategory:(int64_t)category identifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [self availablePresetsForCategory:?];
  v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
  if (v7)
  {
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:?];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)newComponent
{
  AVTPresetCategoryToComponentType(self->_category, a2);
  if (![(NSArray *)self->_assets count]&& !self->_morphVariant && !self->_imageVariant && !self->_materialVariant)
  {
    return 0;
  }

  v3 = [AVTComponent alloc];

  return [AVTComponent initWithType:v3 assets:"initWithType:assets:morphVariant:imageVariant:materialVariant:morphVariantIntensity:bodyPoseVariantIntensity:textureAssetPresence:" morphVariant:? imageVariant:? materialVariant:? morphVariantIntensity:? bodyPoseVariantIntensity:? textureAssetPresence:?];
}

- (void)enumeratePresetDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v5 = self->_dependencies;
  v6 = [NSArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      v9 = 0;
      do
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * v9);
        if (v10 && *(v10 + 24))
        {
          (*(dependenciesCopy + 2))(dependenciesCopy, *(v10 + 16), *(v10 + 24));
        }

        v9 = (v9 + 1);
      }

      while (v7 != v9);
      v11 = [NSArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      v7 = v11;
    }

    while (v11);
  }
}

- (void)enumerateVisibilityDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v5 = self->_dependencies;
  v6 = [NSArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      v9 = 0;
      do
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * v9);
        if (v10 && *(v10 + 56))
        {
          (*(dependenciesCopy + 2))(dependenciesCopy, *(v10 + 16), *(v10 + 56));
        }

        v9 = (v9 + 1);
      }

      while (v7 != v9);
      v11 = [NSArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      v7 = v11;
    }

    while (v11);
  }
}

- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block
{
  blockCopy = block;
  v7 = self->_dependencies;
  v8 = [NSArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      v11 = 0;
      do
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(8 * v11);
        switch(kind)
        {
          case 2uLL:
            [(AVTPreset *)v12 enumerateVariantDependenciesOfKind:blockCopy block:?];
            break;
          case 1uLL:
            [(AVTPreset *)v12 enumerateVariantDependenciesOfKind:blockCopy block:?];
            break;
          case 0uLL:
            [(AVTPreset *)v12 enumerateVariantDependenciesOfKind:blockCopy block:?];
            break;
        }

        v11 = (v11 + 1);
      }

      while (v9 != v11);
      v13 = [NSArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
      v9 = v13;
    }

    while (v13);
  }
}

- (void)enumeratePresetSpecificPresetDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  presetSpecificPresetDependencies = self->_presetSpecificPresetDependencies;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke;
  v10 = &unk_1E7F482F8;
  v11 = dependenciesCopy;
  v6 = dependenciesCopy;
  [(NSDictionary *)presetSpecificPresetDependencies enumerateKeysAndObjectsUsingBlock:?];
}

void __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTPresetCategoryFromString(a2);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke_2;
  v10 = &unk_1E7F482D0;
  v12 = v6;
  v11 = *(a1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:{v7, 3221225472, __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke_2, &unk_1E7F482D0}];
}

void __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [AVTPreset presetWithCategory:"presetWithCategory:identifier:" identifier:?];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateAssetSpecificVariantDependenciesOfKind:(unint64_t)kind block:(id)block
{
  v17[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v17[0] = self->_assetSpecificMorphVariantDependencies;
  v17[1] = self->_assetSpecificImageVariantDependencies;
  v17[2] = self->_assetSpecificMaterialVariantDependencies;
  v7 = v17[kind];
  v8 = blockCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:?];
  v9 = self->_assets;
  v10 = [NSArray countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(8 * i);
        v16 = v8;
        [v14 enumerateVariantDependenciesOfKind:? block:?];
      }

      v11 = [NSArray countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v11);
  }

  for (j = 2; j != -1; --j)
  {
  }
}

void __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTComponentTypeFromString(a2);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke_2;
  v10 = &unk_1E7F482D0;
  v11 = *(a1 + 32);
  v12 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:{v7, 3221225472, __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke_2, &unk_1E7F482D0}];
}

+ (unint64_t)editableColorCountForCategory:(int64_t)category
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [self availablePresetsForCategory:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:0 objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        editableColorCount = [*(*(&v11 + 1) + 8 * i) editableColorCount];
        if (v6 <= editableColorCount)
        {
          v6 = editableColorCount;
        }
      }

      v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cache
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_assets)
  {
    v3 = objc_alloc_init(AVTAssetResourceCache);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_assets;
    v5 = [NSArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(AVTAssetResourceCache *)v3 resourceForAsset:?];

          v8 = (v8 + 1);
        }

        while (v6 != v8);
        v6 = [NSArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v6);
    }
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
    return objc_claimAutoreleasedReturnValue();
  }

  return v3;
}

- (void)rebuildSpecializationSettings
{
  v17 = *MEMORY[0x1E69E9840];
  specializationSettings = self->_specializationSettings;
  self->_specializationSettings = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_assets;
  v5 = [NSArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = self->_specializationSettings;
        specializationSettings = [*(*(&v13 + 1) + 8 * v8) specializationSettings];
        v11 = AVTMergeSpecializationSettings(v9, specializationSettings);
        v12 = self->_specializationSettings;
        self->_specializationSettings = v11;

        v8 = (v8 + 1);
      }

      while (v6 != v8);
      v6 = [NSArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v6);
  }
}

- (uint64_t)enumerateVariantDependenciesOfKind:(uint64_t)a3 block:.cold.1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (*(result + 48))
    {
      v3 = OUTLINED_FUNCTION_0_8(result, a2, a3);
      return v4(v3);
    }
  }

  return result;
}

- (uint64_t)enumerateVariantDependenciesOfKind:(uint64_t)a3 block:.cold.2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (*(result + 40))
    {
      v3 = OUTLINED_FUNCTION_0_8(result, a2, a3);
      return v4(v3);
    }
  }

  return result;
}

- (void)enumerateVariantDependenciesOfKind:(uint64_t)a1 block:(void *)(a2 .cold.3(uint64_t a1, void (**a2)(uint64_t, uint64_t, id, __n128), uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 32);
      v8.n128_u32[0] = *(a1 + 8);
      (*a2)(a3, v6, v7, v8);
    }
  }
}

@end