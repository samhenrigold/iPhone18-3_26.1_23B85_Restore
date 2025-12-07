@interface AVTColorPreset
+ (id)_colorPresetsForCategory:(int64_t)category palette:(id)palette;
+ (id)colorPresetWithName:(id)name category:(int64_t)category colorIndex:(unint64_t)index variation:(float)variation;
+ (id)colorPresetsForCategory:(int64_t)category colorIndex:(unint64_t)index;
+ (id)fallbackColorPresetForNilPresetAndCategory:(int64_t)category colorIndex:(unint64_t)index;
- (AVTColorPreset)colorPresetWithVariation:(float)variation;
- (AVTColorPreset)initWithCategory:(int64_t)category description:(id)description;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNaturalLipsColor;
- (UIImage)thumbnail;
- (id)baseColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)derivedColorNameForPresetCategory:(int64_t)category;
- (id)description;
- (id)gradientLayerWithRangeMin:(float)min max:(float)max withSkinColor:(id)color;
- (id)makeMaterial;
- (id)previewAccentColor;
- (id)previewColor;
- (void)enumerateDerivedColorPresetsUsingBlock:(id)block;
- (void)renderColorIntoCALayer:(id)layer withSkinColor:(id)color;
@end

@implementation AVTColorPreset

+ (id)colorPresetWithName:(id)name category:(int64_t)category colorIndex:(unint64_t)index variation:(float)variation
{
  nameCopy = name;
  v8 = [AVTColorPreset colorPresetsForCategory:"colorPresetsForCategory:colorIndex:" colorIndex:?];
  v9 = [v8 countByEnumeratingWithState:0 objects:? count:?];
  if (v9)
  {
    v10 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:?];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (variation == 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = [v9 colorPresetWithVariation:?];
  }

  v16 = v15;

  return v16;
}

+ (id)_colorPresetsForCategory:(int64_t)category palette:(id)palette
{
  paletteCopy = palette;
  v6 = AVTPresetCategoryToColorCategoryString(category);
  v7 = [paletteCopy objectForKeyedSubscript:?];

  if (v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:0 objects:? count:?];
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

          v14 = [AVTColorPreset initWithCategory:"initWithCategory:description:" description:?];
          [array addObject:?];
        }

        v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (id)colorPresetsForCategory:(int64_t)category colorIndex:(unint64_t)index
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVTColorPreset_colorPresetsForCategory_colorIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (colorPresetsForCategory_colorIndex__onceToken != -1)
  {
    dispatch_once(&colorPresetsForCategory_colorIndex__onceToken, block);
  }

  v6 = colorPresetsForCategory_colorIndex__colorPresets[3 * category + index];

  return v6;
}

void __53__AVTColorPreset_colorPresetsForCategory_colorIndex___block_invoke(uint64_t a1)
{
  v2 = colorPresetsForCategory_colorIndex__colorPresets;
  v3 = AVTPrecompiledMemojiColorPalettes(a1);
  for (i = 0; i != 3; ++i)
  {
    v5 = v3;
    v11 = v5;
    if (i == 1 || (v6 = v5, i == 2))
    {
      v6 = [v5 objectForKeyedSubscript:?];
    }

    v7 = 0;
    v8 = v2;
    do
    {
      v9 = [*(a1 + 32) _colorPresetsForCategory:? palette:?];
      v10 = *v8;
      *v8 = v9;
      v8 += 3;

      ++v7;
    }

    while (v7 != 40);

    ++v2;
  }
}

+ (id)fallbackColorPresetForNilPresetAndCategory:(int64_t)category colorIndex:(unint64_t)index
{
  if (index >= 3)
  {
    +[AVTColorPreset fallbackColorPresetForNilPresetAndCategory:colorIndex:];
  }

  if (!index)
  {
    goto LABEL_10;
  }

  if (index != 2)
  {
    if (category <= 0x22 && ((1 << category) & 0x400000090) != 0)
    {
      firstObject = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  firstObject = 0;
  if (category != 4 && category != 34)
  {
LABEL_10:
    v5 = [AVTColorPreset colorPresetsForCategory:"colorPresetsForCategory:colorIndex:" colorIndex:?];
    firstObject = [v5 firstObject];
  }

LABEL_11:

  return firstObject;
}

- (AVTColorPreset)initWithCategory:(int64_t)category description:(id)description
{
  descriptionCopy = description;
  v59.receiver = self;
  v59.super_class = AVTColorPreset;
  v7 = [(AVTColorPreset *)&v59 init];
  if (v7)
  {
    v8 = [descriptionCopy objectForKeyedSubscript:?];
    name = v7->_name;
    v7->_name = v8;

    v10 = [descriptionCopy objectForKeyedSubscript:?];
    derivedColors = v7->_derivedColors;
    v7->_derivedColors = v10;

    v7->_category = category;
    v12 = [descriptionCopy objectForKeyedSubscript:?];
    v13 = [descriptionCopy objectForKeyedSubscript:?];
    v14 = [descriptionCopy objectForKeyedSubscript:?];
    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    [v12 count];
    v16 = [v15 initWithCapacity:?];
    v55[1] = MEMORY[0x1E69E9820];
    v55[2] = 3221225472;
    v55[3] = __47__AVTColorPreset_initWithCategory_description___block_invoke;
    v55[4] = &unk_1E7F48E90;
    v17 = v16;
    v56 = v17;
    v57 = v13;
    v58 = v14;
    v18 = v14;
    v19 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:?];
    propertyColors = v7->_propertyColors;
    v7->_propertyColors = v17;
    v21 = v17;

    v22 = [descriptionCopy objectForKeyedSubscript:?];
    if (v22)
    {
      v23 = objc_alloc_init(AVTVaryingColor);
      previewColor = v7->_previewColor;
      v7->_previewColor = v23;

      v54 = 0;
      v55[0] = 0;
      v25 = [v22 objectForKeyedSubscript:?];
      _scanColor(v25, v55 + 1, v55, &v54 + 1, &v54);

      v27 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
      v28 = v7->_previewColor;
      if (v28)
      {
        objc_setProperty_atomic(v28, v26, v27, 8);
      }

      v29 = [v22 objectForKeyedSubscript:?];
      _scanColor(v29, v55 + 1, v55, &v54 + 1, &v54);

      v31 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
      v32 = v7->_previewColor;
      if (v32)
      {
        objc_setProperty_atomic(v32, v30, v31, 16);
      }

      v33 = [v22 objectForKeyedSubscript:?];
      _scanColor(v33, v55 + 1, v55, &v54 + 1, &v54);

      v35 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
      v36 = v7->_previewColor;
      if (v36)
      {
        objc_setProperty_atomic(v36, v34, v35, 24);
      }

      v37 = [v22 objectForKeyedSubscript:?];
      if (v37)
      {
        v38 = objc_alloc_init(AVTVaryingColor);
        previewAccentColor = v7->_previewAccentColor;
        v7->_previewAccentColor = v38;

        v40 = [v37 objectForKeyedSubscript:?];
        _scanColor(v40, v55 + 1, v55, &v54 + 1, &v54);

        v42 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
        v43 = v7->_previewAccentColor;
        if (v43)
        {
          objc_setProperty_atomic(v43, v41, v42, 8);
        }

        v44 = [v37 objectForKeyedSubscript:?];
        _scanColor(v44, v55 + 1, v55, &v54 + 1, &v54);

        v46 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
        v47 = v7->_previewAccentColor;
        if (v47)
        {
          objc_setProperty_atomic(v47, v45, v46, 16);
        }

        v48 = [v37 objectForKeyedSubscript:?];
        _scanColor(v48, v55 + 1, v55, &v54 + 1, &v54);

        v50 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
        v51 = v7->_previewAccentColor;
        if (v51)
        {
          objc_setProperty_atomic(v51, v49, v50, 24);
        }

        v52 = [v37 objectForKeyedSubscript:?];
        v7->_previewAccentType = [v52 isEqualToString:?];
      }
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVTColorPreset);
  objc_storeStrong(&v4->_material, self->_material);
  objc_storeStrong(&v4->_name, self->_name);
  v4->_category = self->_category;
  objc_storeStrong(&v4->_propertyColors, self->_propertyColors);
  objc_storeStrong(&v4->_derivedColors, self->_derivedColors);
  objc_storeStrong(&v4->_previewColor, self->_previewColor);
  objc_storeStrong(&v4->_previewAccentColor, self->_previewAccentColor);
  v4->_previewAccentType = self->_previewAccentType;
  v4->_variation = self->_variation;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
    name = [v7 name];
    v9 = [name isEqualToString:?];

    if (v9 && [v7 category] == self->_category)
    {
      [v7 variation];
      v6 = v10 == self->_variation;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isNaturalLipsColor
{
  if ([(AVTColorPreset *)self category]!= 10)
  {
    return 0;
  }

  name = [(AVTColorPreset *)self name];
  v4 = [name containsString:?];

  return v4;
}

- (UIImage)thumbnail
{
  v13 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGBitmapContextCreate(0, 0x78uLL, 0x78uLL, 8uLL, 0x1E0uLL, DeviceRGB, 1u);
  CFRelease(DeviceRGB);
  v15.size.width = 120.0;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.height = 120.0;
  CGContextAddEllipseInRect(v4, v15);
  CGContextClip(v4);
  previewColor = [(AVTColorPreset *)self previewColor];
  *&v6 = AVTGetColorComponents(previewColor);
  v11 = v6;

  v7 = 1.0;
  if (*(&v11 + 3) != 0.0)
  {
    v7 = *(&v11 + 3);
  }

  CGContextSetRGBFillColor(v4, *&v11, *(&v11 + 1), *(&v11 + 2), v7);
  if (*(&v11 + 3) == 0.0)
  {
    *lengths = xmmword_1BB4F0910;
    CGContextSetLineWidth(v4, 10.0);
    CGContextSetLineDash(v4, 0.0, lengths, 2uLL);
    v16.size.width = 120.0;
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.height = 120.0;
    CGContextStrokeEllipseInRect(v4, v16);
  }

  else
  {
    v17.size.width = 120.0;
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.height = 120.0;
    CGContextFillRect(v4, v17);
  }

  Image = CGBitmapContextCreateImage(v4);
  CFRelease(v4);
  v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:?];
  CFRelease(Image);

  return v9;
}

- (id)baseColor
{
  makeMaterial = [(AVTColorPreset *)self makeMaterial];
  baseColor = [makeMaterial baseColor];

  return baseColor;
}

- (id)previewColor
{
  if (self->_previewColor)
  {
    [(AVTVaryingColor *)self->_previewColor colorByApplyingVariation:?];
  }

  else
  {
    [(AVTColorPreset *)self baseColor];
  }
  v2 = ;

  return v2;
}

- (id)previewAccentColor
{
  previewAccentColor = self->_previewAccentColor;
  if (previewAccentColor)
  {
    previewAccentColor = [previewAccentColor colorByApplyingVariation:?];
    v2 = vars8;
  }

  return previewAccentColor;
}

- (id)makeMaterial
{
  material = self->_material;
  if (!material)
  {
    v4 = objc_alloc_init(AVTMaterial);
    v5 = self->_material;
    self->_material = v4;

    v6 = MEMORY[0x1E695DF90];
    [(NSDictionary *)self->_propertyColors count];
    v7 = [v6 dictionaryWithCapacity:?];
    propertyColors = self->_propertyColors;
    v11 = MEMORY[0x1E69E9820];
    v12 = v7;
    v9 = v7;
    [(NSDictionary *)propertyColors enumerateKeysAndObjectsUsingBlock:v11, 3221225472, __30__AVTColorPreset_makeMaterial__block_invoke, &unk_1E7F48EB8, self];
    [(AVTMaterial *)self->_material setAdditionalPropertyColors:?];

    material = self->_material;
  }

  return material;
}

void __30__AVTColorPreset_makeMaterial__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v7 = v5;
  if (*(*(a1 + 32) + 64) == 0.0)
  {
    if (v5)
    {
      Property = objc_getProperty(v5, v6, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
  }

  else
  {
    v9 = [v5 colorByApplyingVariation:?];
  }

  v10 = v9;
  if ([v11 isEqualToString:?])
  {
    [*(*(a1 + 32) + 72) setBaseColor:?];
  }

  else
  {
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
  }
}

- (void)enumerateDerivedColorPresetsUsingBlock:(id)block
{
  blockCopy = block;
  derivedColors = self->_derivedColors;
  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v9 = blockCopy;
  v6 = blockCopy;
  [(NSDictionary *)derivedColors enumerateKeysAndObjectsUsingBlock:v7, 3221225472, __57__AVTColorPreset_enumerateDerivedColorPresetsUsingBlock___block_invoke, &unk_1E7F48EE0, selfCopy];
}

void __57__AVTColorPreset_enumerateDerivedColorPresetsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  AVTPresetCategoryFromString(a2);
  v7 = [AVTColorPreset colorPresetWithName:"colorPresetWithName:category:variation:" category:? variation:?];

  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

- (id)derivedColorNameForPresetCategory:(int64_t)category
{
  v4 = AVTPresetCategoryToColorCategoryString(category);
  v5 = [(NSDictionary *)self->_derivedColors objectForKeyedSubscript:?];

  return v5;
}

- (AVTColorPreset)colorPresetWithVariation:(float)variation
{
  if (self->_variation == variation)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(AVTColorPreset *)self copy];
    selfCopy->_variation = variation;
    material = selfCopy->_material;
    selfCopy->_material = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->_name;
  v6 = AVTPresetCategoryToString(self->_category);
  v7 = [v3 stringWithFormat:v4, self, name, v6, self->_variation];

  return v7;
}

- (void)renderColorIntoCALayer:(id)layer withSkinColor:(id)color
{
  layerCopy = layer;
  colorCopy = color;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:?];
  if ([(AVTColorPreset *)self isNaturalLipsColor])
  {
    baseColor = [colorCopy baseColor];
    *v9.i64 = AVTGetColorComponents(baseColor);
    v26 = vmlaq_f32(v9, 0, vsubq_f32(xmmword_1BB4F0900, v9));
    v10 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    v11 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    v12 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    *&v13 = self->_variation;
    v14 = AVTColorApplyVariation(v12, v10, v11, v13);
    [v14 CGColor];
    [layerCopy setBackgroundColor:?];

LABEL_13:
    goto LABEL_14;
  }

  previewColor = [(AVTColorPreset *)self previewColor];
  AVTGetColorComponents(previewColor);
  v27 = v16;

  if (v27 < 1.0 && [(AVTColorPreset *)self shouldBlendWithSkinColor])
  {
    previewColor2 = [colorCopy previewColor];
    *v18.i64 = AVTGetColorComponents(previewColor2);
    v26 = v18;

    previewColor3 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  }

  else
  {
    previewColor3 = [(AVTColorPreset *)self previewColor];
  }

  v20 = previewColor3;
  [previewColor3 CGColor];

  [layerCopy setBackgroundColor:?];
  previewAccentColor = [(AVTColorPreset *)self previewAccentColor];
  cGColor = [previewAccentColor CGColor];

  sublayers = [layerCopy sublayers];
  firstObject = [sublayers firstObject];
  baseColor = firstObject;
  if (cGColor)
  {

    if (!baseColor)
    {
      baseColor = [MEMORY[0x1E6979380] layer];
      [layerCopy bounds];
      [baseColor setFrame:?];
      [layerCopy addSublayer:?];
    }

    if (self->_previewAccentType <= 1)
    {
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      [baseColor setColors:*&v26];

      [baseColor setLocations:?];
      [baseColor setStartPoint:?];
      [baseColor setEndPoint:?];
      [baseColor setType:?];
    }

    goto LABEL_13;
  }

  [firstObject removeFromSuperlayer];

LABEL_14:
  [MEMORY[0x1E6979518] commit];
}

- (id)gradientLayerWithRangeMin:(float)min max:(float)max withSkinColor:(id)color
{
  colorCopy = color;
  if ([(AVTColorPreset *)self isNaturalLipsColor])
  {
    baseColor = [colorCopy baseColor];
    AVTGetColorComponents(baseColor);
    v8 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    previewColor = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    previewColor2 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    layer = [MEMORY[0x1E6979380] layer];
    [v8 CGColor];
    [previewColor CGColor];
    [previewColor2 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [layer setColors:?];

    [layer setStartPoint:?];
    [layer setEndPoint:?];
  }

  else
  {
    baseColor = [(AVTColorPreset *)self colorPresetWithVariation:?];
    v8 = [(AVTColorPreset *)self colorPresetWithVariation:?];
    previewColor = [baseColor previewColor];
    previewColor2 = [(AVTColorPreset *)self previewColor];
    previewColor3 = [v8 previewColor];
    layer = [MEMORY[0x1E6979380] layer];
    if (colorCopy && [(AVTColorPreset *)self shouldBlendWithSkinColor])
    {
      previewColor4 = [colorCopy previewColor];
      [previewColor4 CGColor];
      [layer setBackgroundColor:?];
    }

    [previewColor CGColor];
    [previewColor2 CGColor];
    [previewColor3 CGColor];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [layer setColors:?];

    [layer setStartPoint:?];
    [layer setEndPoint:?];
  }

  return layer;
}

void __47__AVTColorPreset_initWithCategory_description___block_invoke(id *a1, void *a2, void *a3)
{
  v46 = a2;
  v5 = a3;
  v6 = objc_alloc_init(AVTVaryingColor);
  [a1[4] setObject:? forKeyedSubscript:?];
  v49 = 0;
  v50 = 0;
  _scanColor(v5, &v50 + 1, &v50, &v49 + 1, &v49);

  v8 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, v8, 8);
  }

  v9 = [a1[5] objectForKeyedSubscript:?];
  if (v9)
  {
    OUTLINED_FUNCTION_2_2();
    _scanColor(v9, v12, v13, v14, v15);
    OUTLINED_FUNCTION_1_4(v16, v17, v18, v19, v20, v21, v22, v23, v45, *&v46, v47, *&v48, *(&v48 + 1));
  }

  else
  {
    OUTLINED_FUNCTION_3_1(v10, v11, 0.5);
  }

  v26 = [v24 colorWithRed:? green:? blue:? alpha:?];
  if (v6)
  {
    objc_setProperty_atomic(v6, v25, v26, 16);
  }

  v27 = [a1[6] objectForKeyedSubscript:?];
  if (v27)
  {
    OUTLINED_FUNCTION_2_2();
    _scanColor(v27, v30, v31, v32, v33);
    OUTLINED_FUNCTION_1_4(v34, v35, v36, v37, v38, v39, v40, v41, v45, *&v46, v47, *&v48, *(&v48 + 1));
  }

  else
  {
    OUTLINED_FUNCTION_3_1(v28, v29, 1.5);
  }

  v44 = [v42 colorWithRed:? green:? blue:? alpha:?];
  if (v6)
  {
    objc_setProperty_atomic(v6, v43, v44, 24);
  }
}

@end