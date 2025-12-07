@interface AVTMemojiDescriptor
+ (id)colorPresetFromColorData:(id)data forCategory:(int64_t)category colorIndex:(unint64_t)index version:(unsigned __int16)version didFail:(BOOL *)fail error:(id *)error;
+ (id)presetsDictionaryFromRecipe:(id)recipe didFail:(BOOL *)fail error:(id *)error;
+ (id)randomDescriptor;
- (AVTMemojiDescriptor)initWithCoder:(id)coder;
- (AVTMemojiDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error isResettingToDefault:(BOOL)default;
- (AVTMemojiDescriptor)initWithMemoji:(id)memoji;
- (id)colorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)presetIdentifierForCategory:(int64_t)category;
- (void)_decode:(id)_decode isResettingToDefault:(BOOL)default error:(id *)error;
- (void)applyToMemoji:(id)memoji;
- (void)encodeInDictionaryRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
- (void)setColorPreset:(id)preset forCategory:(int64_t)category colorIndex:(unint64_t)index;
- (void)setPresetIdentifier:(id)identifier forCategory:(int64_t)category;
@end

@implementation AVTMemojiDescriptor

- (AVTMemojiDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error isResettingToDefault:(BOOL)default
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = AVTMemojiDescriptor;
  v7 = [(AVTMemojiDescriptor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [AVTMemojiDescriptor _decode:v7 isResettingToDefault:"_decode:isResettingToDefault:error:" error:?];
  }

  return v8;
}

- (AVTMemojiDescriptor)initWithMemoji:(id)memoji
{
  memojiCopy = memoji;
  v16.receiver = self;
  v16.super_class = AVTMemojiDescriptor;
  v5 = [(AVTMemojiDescriptor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = [memojiCopy presetForCategory:?];
      identifier = [v9 identifier];
      v11 = v6->_presetIdentifiers[v7];
      v6->_presetIdentifiers[v7] = identifier;

      for (i = 0; i != 3; ++i)
      {
        v13 = [memojiCopy colorPresetForCategory:? colorIndex:?];
        v14 = v8->_colorPresets[0][i];
        v8->_colorPresets[0][i] = v13;
      }

      ++v7;
      v8 = (v8 + 24);
    }

    while (v7 != 40);
  }

  return v6;
}

+ (id)randomDescriptor
{
  v2 = objc_alloc_init(self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__AVTMemojiDescriptor_randomDescriptor__block_invoke;
  v9[3] = &unk_1E7F49AB0;
  v10 = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AVTMemojiDescriptor_randomDescriptor__block_invoke_2;
  v7[3] = &unk_1E7F49AD8;
  v3 = v10;
  v8 = v3;
  _AVTMemojiRandomize(v9, v7);
  v4 = v8;
  v5 = v3;

  return v3;
}

void __39__AVTMemojiDescriptor_randomDescriptor__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  [v3 setPresetIdentifier:? forCategory:?];
}

- (void)applyToMemoji:(id)memoji
{
  memojiCopy = memoji;
  v4 = 0;
  presetIdentifiers = self->_presetIdentifiers;
  do
  {
    v6 = presetIdentifiers[v4];
    if (v6)
    {
      v7 = [AVTPreset presetWithCategory:"presetWithCategory:identifier:" identifier:?];
      [memojiCopy setPreset:? forCategory:? animated:?];
    }

    else
    {
      [memojiCopy setPreset:? forCategory:? animated:?];
    }

    for (i = 0; i != 3; ++i)
    {
      if (self->_colorPresets[0][i])
      {
        [memojiCopy setColorPreset:? forCategory:? colorIndex:?];
      }
    }

    ++v4;
    self = (self + 24);
  }

  while (v4 != 40);
}

- (id)presetIdentifierForCategory:(int64_t)category
{
  if (category < 40)
  {
    v4 = self->_presetIdentifiers[category];
  }

  else
  {
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v4 = 0;
  }

  return v4;
}

- (void)setPresetIdentifier:(id)identifier forCategory:(int64_t)category
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (category < 40)
  {
    if (identifierCopy)
    {
      v9 = [AVTPreset presetWithCategory:"presetWithCategory:identifier:" identifier:?];
      if (!v9)
      {
        v10 = avt_default_log(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [AVTMemojiDescriptor setPresetIdentifier:forCategory:];
        }
      }
    }

    presetIdentifiers = self->_presetIdentifiers;
    v12 = v7;
    v8 = self->_presetIdentifiers[category];
    presetIdentifiers[category] = v12;
  }

  else
  {
    v8 = avt_default_log(identifierCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }
  }
}

- (void)setColorPreset:(id)preset forCategory:(int64_t)category colorIndex:(unint64_t)index
{
  presetCopy = preset;
  v9 = presetCopy;
  if (category < 40)
  {
    if (presetCopy)
    {
      category = [presetCopy category];
      if (category != category)
      {
        v12 = avt_default_log(category);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
        }
      }
    }

    if (index >= 3)
    {
      [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
    }

    v13 = self->_colorPresets[category];
    v14 = v9;
    p_super = &v13[index]->super;
    v13[index] = v14;
  }

  else
  {
    p_super = avt_default_log(presetCopy);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }
  }
}

- (id)colorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index
{
  if (category < 40)
  {
    if (index >= 3)
    {
      [AVTMemojiDescriptor colorPresetForCategory:colorIndex:];
    }

    v5 = self->_colorPresets[category][index];
  }

  else
  {
    v4 = avt_default_log(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)presetsDictionaryFromRecipe:(id)recipe didFail:(BOOL *)fail error:(id *)error
{
  recipeCopy = recipe;
  objc_opt_class();
  v7 = [recipeCopy avt_objectForKey:? ofClass:? didFail:? error:?];

  if (*fail)
  {
    v8 = 0;
  }

  else
  {
    v9 = AVTUpgradePairedPresetCategoriesIfNeeded(v7);

    v8 = v9;
    v7 = v8;
  }

  return v8;
}

+ (id)colorPresetFromColorData:(id)data forCategory:(int64_t)category colorIndex:(unint64_t)index version:(unsigned __int16)version didFail:(BOOL *)fail error:(id *)error
{
  versionCopy = version;
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = AVTUpgradeColorPresetIdentifierIfNeeded(category, dataCopy, versionCopy);
    v13 = [AVTColorPreset colorPresetWithName:"colorPresetWithName:category:colorIndex:variation:" category:? colorIndex:? variation:?];
LABEL_3:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v14 = [dataCopy avt_objectForKey:? ofClass:? didFail:? error:?];
    v12 = v14;
    if (*fail)
    {
      v13 = 0;
    }

    else
    {
      [v14 floatValue];
      objc_opt_class();
      v16 = [dataCopy avt_objectForKey:? ofClass:? didFail:? error:?];
      if (*fail)
      {
        v13 = 0;
      }

      else
      {
        v17 = AVTUpgradeColorPresetIdentifierIfNeeded(category, v16, versionCopy);

        v13 = [AVTColorPreset colorPresetWithName:"colorPresetWithName:category:colorIndex:variation:" category:? colorIndex:? variation:?];
        v16 = v17;
      }
    }

    goto LABEL_3;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = AVTMemojiDescriptor;
  [(AVTAvatarDescriptor *)&v27 encodeWithCoder:coderCopy];
  v5 = 0;
  v6 = 0x1E696A000uLL;
  selfCopy = self;
  do
  {
    v7 = AVTPresetCategoryToString(v5);
    v8 = [(AVTMemojiDescriptor *)self presetIdentifierForCategory:?];
    if (v8)
    {
      v9 = [*(v6 + 3776) stringWithFormat:v7];
      [coderCopy encodeObject:? forKey:?];
    }

    v10 = [AVTMemojiDescriptor colorPresetForCategory:"colorPresetForCategory:colorIndex:" colorIndex:?];
    v11 = v10;
    if (v10)
    {
      name = [v10 name];
      v13 = [*(v6 + 3776) stringWithFormat:v7];
      [coderCopy encodeObject:? forKey:?];

      [v11 variation];
      v14 = [*(v6 + 3776) stringWithFormat:v7];
      [coderCopy encodeFloat:? forKey:?];
    }

    v15 = [AVTMemojiDescriptor colorPresetForCategory:"colorPresetForCategory:colorIndex:" colorIndex:?];
    v16 = v15;
    if (v15)
    {
      name2 = [v15 name];
      v18 = [*(v6 + 3776) stringWithFormat:v7];
      [coderCopy encodeObject:? forKey:?];

      [v16 variation];
      v19 = [*(v6 + 3776) stringWithFormat:v7];
      [coderCopy encodeFloat:? forKey:?];
    }

    v20 = [AVTMemojiDescriptor colorPresetForCategory:"colorPresetForCategory:colorIndex:" colorIndex:?];
    v21 = v20;
    if (v20)
    {
      name3 = [v20 name];
      [*(v6 + 3776) stringWithFormat:v7];
      v24 = v23 = v6;
      [coderCopy encodeObject:? forKey:?];

      v6 = v23;
      self = selfCopy;

      [v21 variation];
      v25 = [*(v6 + 3776) stringWithFormat:v7];
      [coderCopy encodeFloat:? forKey:?];
    }

    ++v5;
  }

  while (v5 != 40);
}

- (AVTMemojiDescriptor)initWithCoder:(id)coder
{
  v58 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = AVTMemojiDescriptor;
  v5 = [(AVTAvatarDescriptor *)&v45 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v39 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [coderCopy decodeIntegerForKey:?];
    v8 = 0x1E696A000uLL;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v38 = v7;
    [v7 setValue:? forKey:?];

    v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = 0;
    v12 = 0x1E696A000uLL;
    do
    {
      v13 = AVTPresetCategoryToString(v11);
      objc_opt_class();
      v14 = [*(v12 + 3776) stringWithFormat:v13];
      v15 = [coderCopy decodeObjectOfClass:? forKey:?];

      if (v15)
      {
        [v42 setObject:? forKeyedSubscript:?];
      }

      v44 = v15;
      objc_opt_class();
      v16 = [*(v12 + 3776) stringWithFormat:v13];
      v17 = [coderCopy decodeObjectOfClass:? forKey:?];

      if (v17)
      {
        v18 = [*(v12 + 3776) stringWithFormat:v13];
        [coderCopy decodeFloatForKey:?];

        v56 = v17;
        v54 = @"name";
        v55 = @"variation";
        v19 = [*(v8 + 3480) numberWithFloat:?];
        v57 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        [v41 setObject:? forKeyedSubscript:?];
      }

      objc_opt_class();
      v21 = [*(v12 + 3776) stringWithFormat:v13];
      v22 = [coderCopy decodeObjectOfClass:? forKey:?];

      if (v22)
      {
        v23 = [*(v12 + 3776) stringWithFormat:v13];
        [coderCopy decodeFloatForKey:?];

        v50 = @"name";
        v51 = @"variation";
        v52 = v22;
        v24 = [*(v8 + 3480) numberWithFloat:?];
        v53 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        [v10 setObject:? forKeyedSubscript:?];
      }

      objc_opt_class();
      v26 = [*(v12 + 3776) stringWithFormat:v13];
      v27 = [coderCopy decodeObjectOfClass:? forKey:?];

      if (v27)
      {
        v28 = [*(v12 + 3776) stringWithFormat:v13];
        [coderCopy decodeFloatForKey:?];

        v46 = @"name";
        v47 = @"variation";
        v48 = v27;
        v29 = [*(v8 + 3480) numberWithFloat:?];
        v49 = v29;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        v43 = v11;
        v30 = v22;
        v31 = v12;
        v32 = v17;
        v33 = v8;
        v34 = coderCopy;
        v36 = v35 = v10;
        [v40 setObject:? forKeyedSubscript:?];

        v10 = v35;
        coderCopy = v34;
        v8 = v33;
        v17 = v32;
        v12 = v31;
        v22 = v30;
        v11 = v43;
      }

      ++v11;
    }

    while (v11 != 40);
    [v38 setObject:? forKeyedSubscript:?];
    [v38 setObject:? forKeyedSubscript:?];
    if ([v10 count])
    {
      [v38 setObject:? forKeyedSubscript:?];
    }

    v6 = v39;
    if ([v40 count])
    {
      [v38 setObject:? forKeyedSubscript:?];
    }

    [AVTMemojiDescriptor _decode:v39 isResettingToDefault:"_decode:isResettingToDefault:error:" error:?];
  }

  return v6;
}

- (void)encodeInDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = 0;
  v5 = @"name";
  v6 = 0x1E696A000uLL;
  v7 = 0x1E695D000uLL;
  do
  {
    v8 = AVTPresetCategoryToString(v4);
    v9 = [(AVTMemojiDescriptor *)self presetIdentifierForCategory:?];
    if (v9)
    {
      [v31 setObject:? forKeyedSubscript:?];
    }

    v34 = v9;
    v10 = [(AVTMemojiDescriptor *)self colorPresetForCategory:representationCopy colorIndex:?];
    v11 = v10;
    if (v10)
    {
      name = [v10 name];
      v12 = *(v6 + 3480);
      [v11 variation];
      v40 = [v12 numberWithFloat:?];
      v13 = [*(v7 + 3872) dictionaryWithObjects:? forKeys:? count:?];
      [v30 setObject:? forKeyedSubscript:?];
    }

    v33 = v11;
    v14 = v8;
    v15 = [AVTMemojiDescriptor colorPresetForCategory:"colorPresetForCategory:colorIndex:" colorIndex:?];
    v16 = v15;
    if (v15)
    {
      name2 = [v15 name];
      v17 = *(v6 + 3480);
      [v16 variation];
      v38 = [v17 numberWithFloat:?];
      v18 = [*(v7 + 3872) dictionaryWithObjects:? forKeys:? count:?];
      [v32 setObject:? forKeyedSubscript:?];
    }

    v19 = [AVTMemojiDescriptor colorPresetForCategory:"colorPresetForCategory:colorIndex:" colorIndex:?];
    v20 = v19;
    if (v19)
    {
      name3 = [v19 name];
      v21 = *(v6 + 3480);
      [v20 variation];
      v36 = [v21 numberWithFloat:?];
      [*(v7 + 3872) dictionaryWithObjects:? forKeys:? count:?];
      v22 = v7;
      v23 = v6;
      v24 = v5;
      selfCopy = self;
      v27 = v26 = v14;
      [v29 setObject:? forKeyedSubscript:?];

      v14 = v26;
      self = selfCopy;
      v5 = v24;
      v6 = v23;
      v7 = v22;
    }

    ++v4;
  }

  while (v4 != 40);
  [representationCopy setObject:? forKeyedSubscript:?];
  [representationCopy setObject:? forKeyedSubscript:?];
  if ([v32 count])
  {
    [representationCopy setObject:? forKeyedSubscript:?];
  }

  if ([v29 count])
  {
    [representationCopy setObject:? forKeyedSubscript:?];
  }
}

- (void)_decode:(id)_decode isResettingToDefault:(BOOL)default error:(id *)error
{
  defaultCopy = default;
  v84 = *MEMORY[0x1E69E9840];
  _decodeCopy = _decode;
  v83 = 0;
  objc_opt_class();
  v7 = [_decodeCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  selfCopy = self;
  v70 = [objc_opt_class() presetsDictionaryFromRecipe:? didFail:? error:?];
  objc_opt_class();
  v8 = [_decodeCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  objc_opt_class();
  v9 = [_decodeCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  objc_opt_class();
  v62 = [_decodeCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  v63 = v9;
  v60 = v7;
  v61 = _decodeCopy;
  intValue = [v7 intValue];
  v10 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v66 = [v10 setWithObjects:{objc_opt_class(), 0}];
  v11 = 0;
  v64 = v8;
  while (1)
  {
    v12 = AVTPresetCategoryToString(v11);
    objc_opt_class();
    v67 = v12;
    v13 = [v70 avt_objectForKey:? ofClass:? didFail:? error:?];
    firstObject = v13;
    if (v83)
    {
      v15 = v13;
      goto LABEL_73;
    }

    if (v13)
    {
LABEL_4:
      v15 = AVTUpgradePresetIdentifierIfNeeded(v11, firstObject, intValue);
      if (v15 == firstObject)
      {
        v16 = 0;
      }

      else
      {
        v16 = [firstObject isEqualToString:?];
      }

      [AVTMemojiDescriptor setPresetIdentifier:selfCopy forCategory:"setPresetIdentifier:forCategory:"];
      goto LABEL_19;
    }

    v17 = AVTUpgradesForPresetCategory(v11, intValue);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
    if (v19)
    {
      v20 = v19;
      v21 = *v80;
      while (2)
      {
        for (i = 0; i != v20; i = (i + 1))
        {
          if (*v80 != v21)
          {
            objc_enumerationMutation(v18);
          }

          objc_opt_class();
          v23 = [v70 avt_objectForKey:? ofClass:? didFail:? error:?];
          firstObject = v23;
          if (v83)
          {

            v15 = firstObject;
            goto LABEL_72;
          }

          if (v23)
          {

            v8 = v64;
            goto LABEL_4;
          }
        }

        v20 = [v18 countByEnumeratingWithState:? objects:? count:?];
        v8 = v64;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    if (defaultCopy)
    {
      v24 = [AVTPreset availablePresetsForCategory:?];
      firstObject = [v24 firstObject];

      identifier = [firstObject identifier];
      [AVTMemojiDescriptor setPresetIdentifier:selfCopy forCategory:"setPresetIdentifier:forCategory:"];

      v15 = 0;
      v16 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v15 = 0;
    v16 = 0;
LABEL_20:
    v78 = 0;
    v26 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v11, v15, 0, &v78, intValue);
    if (v26)
    {
      v27 = [AVTColorPreset colorPresetWithName:"colorPresetWithName:category:colorIndex:variation:" category:? colorIndex:? variation:?];
LABEL_22:
      [AVTMemojiDescriptor setColorPreset:selfCopy forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
      goto LABEL_36;
    }

    v28 = [v8 avt_objectForKey:? ofClasses:? didFail:? error:?];
    v27 = v28;
    if (v83)
    {
      v29 = v8;
LABEL_77:

      v8 = v29;
      goto LABEL_73;
    }

    v29 = v8;
    if (v11 == 34 && !v28 && !defaultCopy)
    {
      v30 = AVTPresetCategoryToColorCategoryString(4uLL);
      v27 = [v8 avt_objectForKey:? ofClasses:? didFail:? error:?];
      v31 = v83;

      v26 = 0;
      if (v31)
      {
        goto LABEL_77;
      }
    }

    if (v27)
    {
      v32 = v16;
    }

    else
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      v33 = [objc_opt_class() colorPresetFromColorData:? forCategory:? colorIndex:? version:? didFail:? error:?];
      [AVTMemojiDescriptor setColorPreset:selfCopy forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];

      goto LABEL_36;
    }

    if (!defaultCopy)
    {
      goto LABEL_37;
    }

    v27 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:"fallbackColorPresetForNilPresetAndCategory:colorIndex:" colorIndex:?];
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_36:

LABEL_37:
    v34 = [AVTMemojiDescriptor colorPresetForCategory:selfCopy colorIndex:"colorPresetForCategory:colorIndex:"];
    v73 = MEMORY[0x1E69E9820];
    v74 = 3221225472;
    v75 = __58__AVTMemojiDescriptor__decode_isResettingToDefault_error___block_invoke;
    v76 = &unk_1E7F49B00;
    v77 = selfCopy;
    [v34 enumerateDerivedColorPresetsUsingBlock:?];

    v72 = 0;
    v35 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v11, v15, 1uLL, &v72, intValue);
    v36 = v35;
    if (v35)
    {
      if ([v35 isEqualToString:?])
      {
        v37 = [v8 avt_objectForKey:? ofClasses:? didFail:? error:?];
        v38 = v37;
        if (v83)
        {

LABEL_79:
          goto LABEL_73;
        }

        v39 = [objc_opt_class() colorPresetFromColorData:? forCategory:? colorIndex:? version:? didFail:? error:?];
      }

      else
      {
        v39 = [AVTColorPreset colorPresetWithName:"colorPresetWithName:category:colorIndex:variation:" category:? colorIndex:? variation:?];
      }

LABEL_50:
      [AVTMemojiDescriptor setColorPreset:selfCopy forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
LABEL_51:

      goto LABEL_52;
    }

    v40 = [v63 avt_objectForKey:? ofClasses:? didFail:? error:?];
    v41 = v40;
    v42 = v83;
    if ((v83 & 1) == 0 && v40)
    {
      [objc_opt_class() colorPresetFromColorData:? forCategory:? colorIndex:? version:? didFail:? error:?];
      v43 = v8;
      v45 = v44 = v26;
      [AVTMemojiDescriptor setColorPreset:selfCopy forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];

      v26 = v44;
      v8 = v43;
    }

    if (v42)
    {
      goto LABEL_79;
    }

    if (!v41 && defaultCopy)
    {
      v39 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:"fallbackColorPresetForNilPresetAndCategory:colorIndex:" colorIndex:?];
      if (!v39)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_52:
    v71 = 0;
    v46 = AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(v11, v15, 2uLL, &v71, intValue);
    v47 = v46;
    if (v46)
    {
      break;
    }

    v54 = [v62 avt_objectForKey:? ofClasses:? didFail:? error:?];
    v55 = v54;
    v56 = v83;
    if ((v83 & 1) == 0 && v54)
    {
      [objc_opt_class() colorPresetFromColorData:? forCategory:? colorIndex:? version:? didFail:? error:?];
      v57 = v36;
      v59 = v58 = v26;
      [AVTMemojiDescriptor setColorPreset:selfCopy forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];

      v26 = v58;
      v36 = v57;
    }

    if (v56)
    {
      goto LABEL_81;
    }

    v8 = v64;
    if (!v55 && defaultCopy)
    {
      v53 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:"fallbackColorPresetForNilPresetAndCategory:colorIndex:" colorIndex:?];
      if (!v53)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

LABEL_67:

    if (++v11 == 40)
    {
      goto LABEL_74;
    }
  }

  if (![v46 isEqualToString:?])
  {
    v53 = [AVTColorPreset colorPresetWithName:"colorPresetWithName:category:colorIndex:variation:" category:? colorIndex:? variation:?];
    goto LABEL_65;
  }

  v48 = v8;
  v49 = v26;
  v50 = v48;
  v51 = [v48 avt_objectForKey:? ofClasses:? didFail:? error:?];
  v52 = v51;
  if ((v83 & 1) == 0)
  {
    v53 = [objc_opt_class() colorPresetFromColorData:? forCategory:? colorIndex:? version:? didFail:? error:?];

    v26 = v49;
    v8 = v50;
LABEL_65:
    [AVTMemojiDescriptor setColorPreset:selfCopy forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
LABEL_66:

    goto LABEL_67;
  }

  v26 = v49;
LABEL_81:

LABEL_72:
  v8 = v64;
LABEL_73:

LABEL_74:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVTMemojiDescriptor);
  v5 = 0;
  presetIdentifiers = self->_presetIdentifiers;
  v7 = v4;
  do
  {
    objc_storeStrong(&v4->_presetIdentifiers[v5], presetIdentifiers[v5]);
    v8 = 0;
    v9 = v7->_colorPresets[0];
    do
    {
      objc_storeStrong(v9++, self->_colorPresets[0][v8++]);
    }

    while (v8 != 3);
    ++v5;
    self = (self + 24);
    v7 = (v7 + 24);
  }

  while (v5 != 40);
  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = AVTMemojiDescriptor;
  v2 = [(AVTMemojiDescriptor *)&v4 description];

  return v2;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  for (i = 0; i != 40; ++i)
  {
    v5 = self->_presetIdentifiers[i];
    v6 = v5;
    if (v5 && ![(NSString *)v5 isEqualToString:?])
    {
      if ([v3 length])
      {
        v7 = @", ";
      }

      else
      {
        v7 = &stru_1F39AEE78;
      }

      v8 = v7;
      v9 = AVTPresetCategoryToString(i);
      [v3 appendFormat:v8, v9, v6];
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), self, v3];

  return v10;
}

- (void)presetIdentifierForCategory:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end