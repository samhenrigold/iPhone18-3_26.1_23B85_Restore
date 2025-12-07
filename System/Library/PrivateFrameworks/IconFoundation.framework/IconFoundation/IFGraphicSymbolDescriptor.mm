@interface IFGraphicSymbolDescriptor
- (BOOL)_addDarkModeBorder;
- (BOOL)_addLightModeBorder;
- (BOOL)isExtendedAppearanceVariant;
- (CGSize)size;
- (CGSize)symbolOffset;
- (CUIEncapsulationShape)encapsulationShape;
- (IFColor)resolvedBorderColor;
- (IFGraphicSymbolDescriptor)init;
- (NSArray)_processedEnclosureColors;
- (NSArray)_processedSymbolColors;
- (NSArray)resolvedEnclosureColors;
- (NSArray)resolvedSymbolColors;
- (NSString)resolvedName;
- (double)pointSize;
- (double)resolvedBorderWidth;
- (id)_colorForIFSystemColor:(int64_t)color;
- (id)_debugDynamicGraphicIconColor;
- (id)_defaultEnclosureColor;
- (id)_defaultSymbolColor;
- (id)_resolvedColorsForColors:(id)colors defaultColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)enclosureEffect;
- (int64_t)fill;
- (int64_t)resolvedFill;
- (int64_t)resolvedRenderingModeFromSuggestedMode:(int64_t)mode;
- (int64_t)resolvedShape;
- (int64_t)shape;
- (int64_t)symbolEffect;
- (int64_t)symbolWeight;
- (unint64_t)symbolSize;
- (void)checkForSymbolOverride;
- (void)pointSize;
- (void)setName:(id)name;
- (void)setResolvedName:(id)name;
- (void)symbolOffset;
- (void)symbolSize;
- (void)symbolWeight;
@end

@implementation IFGraphicSymbolDescriptor

- (IFGraphicSymbolDescriptor)init
{
  v9.receiver = self;
  v9.super_class = IFGraphicSymbolDescriptor;
  v2 = [(IFSymbolImageDescriptor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_size = vdupq_n_s64(0x4040000000000000uLL);
    v2->_appearance = 0;
    v2->_contrast = 0;
    v2->_vibrancy = 0;
    v2->_appearanceVariant = 0;
    name = v2->_name;
    v2->_name = 0;

    v5 = +[IFPlatformInfo sharedInstance];
    v3->_platform = [v5 nativePlatform];

    [MEMORY[0x1E6999438] automaticOffset];
    v3->_symbolOffset.width = v6;
    v3->_symbolOffset.height = v7;
    [(IFSymbolImageDescriptor *)v3 setPointSize:0.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = IFGraphicSymbolDescriptor;
  v4 = [(IFSymbolImageDescriptor *)&v12 copyWithZone:zone];
  v4[17] = self->_size;
  v5 = [(NSArray *)self->_enclosureColors copy];
  v6 = *(v4 + 10);
  *(v4 + 10) = v5;

  v7 = [(NSArray *)self->_symbolColors copy];
  v8 = *(v4 + 11);
  *(v4 + 11) = v7;

  *(v4 + 12) = self->_renderingMode;
  v9 = [(NSString *)self->_name copy];
  v10 = *(v4 + 26);
  *(v4 + 26) = v9;

  *(v4 + 27) = self->_appearance;
  *(v4 + 28) = self->_contrast;
  *(v4 + 29) = self->_vibrancy;
  v4[18] = self->_symbolOffset;
  *(v4 + 30) = self->_symbolEffect;
  *(v4 + 31) = self->_enclosureEffect;
  *(v4 + 9) = self->_shape;
  *(v4 + 13) = self->_fill;
  return v4;
}

- (id)_debugDynamicGraphicIconColor
{
  if (_debugDynamicGraphicIconColor_once != -1)
  {
    [IFGraphicSymbolDescriptor _debugDynamicGraphicIconColor];
  }

  v3 = _debugDynamicGraphicIconColor_color;

  return v3;
}

uint64_t __58__IFGraphicSymbolDescriptor__debugDynamicGraphicIconColor__block_invoke()
{
  v0 = [[IFColor alloc] initWithRed:225.0 green:225.0 blue:230.0 alpha:255.0];
  v1 = _debugDynamicGraphicIconColor_color;
  _debugDynamicGraphicIconColor_color = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_colorForIFSystemColor:(int64_t)color
{
  v3 = [[IFColor alloc] initWithSystemColor:color appearance:[(IFGraphicSymbolDescriptor *)self appearance] contrast:[(IFGraphicSymbolDescriptor *)self contrast] vibrancy:[(IFGraphicSymbolDescriptor *)self vibrancy]];

  return v3;
}

- (id)_resolvedColorsForColors:(id)colors defaultColor:(id)color
{
  v29 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  colorCopy = color;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = colorsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    *&v10 = 138412290;
    v20 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = -[IFGraphicSymbolDescriptor _colorForIFSystemColor:](self, "_colorForIFSystemColor:", [v14 intValue]);
          }

          else
          {
            v17 = IFDefaultLog(isKindOfClass);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = v20;
              v27 = v14;
              _os_log_debug_impl(&dword_1B9DEC000, v17, OS_LOG_TYPE_DEBUG, "Unexpected color %@", buf, 0xCu);
            }

            v15 = colorCopy[2](colorCopy);
          }
        }

        v18 = v15;
        [v7 addObject:{v15, v20}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)_defaultSymbolColor
{
  enclosureColors = self->_enclosureColors;
  if (enclosureColors && [(NSArray *)enclosureColors count])
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    symbolColorAlternate = [v4 symbolColorAlternate];
  }

  else
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    symbolColorAlternate = [v4 symbolColor];
  }

  v6 = [(IFGraphicSymbolDescriptor *)self _colorForIFSystemColor:symbolColorAlternate];

  return v6;
}

- (id)_defaultEnclosureColor
{
  symbolColors = self->_symbolColors;
  if (symbolColors && [(NSArray *)symbolColors count])
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    enclosureColorAlternate = [v4 enclosureColorAlternate];
  }

  else
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    enclosureColorAlternate = [v4 enclosureColor];
  }

  v6 = [(IFGraphicSymbolDescriptor *)self _colorForIFSystemColor:enclosureColorAlternate];

  return v6;
}

- (NSArray)_processedSymbolColors
{
  v9[1] = *MEMORY[0x1E69E9840];
  symbolColors = self->_symbolColors;
  if (symbolColors && [(NSArray *)symbolColors count])
  {
    v4 = self->_symbolColors;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__IFGraphicSymbolDescriptor__processedSymbolColors__block_invoke;
    v8[3] = &unk_1E7ED9818;
    v8[4] = self;
    v5 = [(IFGraphicSymbolDescriptor *)self _resolvedColorsForColors:v4 defaultColor:v8];
  }

  else
  {
    _defaultSymbolColor = [(IFGraphicSymbolDescriptor *)self _defaultSymbolColor];
    v9[0] = _defaultSymbolColor;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (NSArray)_processedEnclosureColors
{
  v9[1] = *MEMORY[0x1E69E9840];
  enclosureColors = self->_enclosureColors;
  if (enclosureColors && [(NSArray *)enclosureColors count])
  {
    v4 = self->_enclosureColors;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__IFGraphicSymbolDescriptor__processedEnclosureColors__block_invoke;
    v8[3] = &unk_1E7ED9818;
    v8[4] = self;
    v5 = [(IFGraphicSymbolDescriptor *)self _resolvedColorsForColors:v4 defaultColor:v8];
  }

  else
  {
    _defaultEnclosureColor = [(IFGraphicSymbolDescriptor *)self _defaultEnclosureColor];
    v9[0] = _defaultEnclosureColor;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (NSArray)resolvedSymbolColors
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(IFGraphicSymbolDescriptor *)self appearanceVariant]== 1)
  {
    if ([(IFGraphicSymbolDescriptor *)self appearance]== 1)
    {
      _processedEnclosureColors = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
      if ([_processedEnclosureColors count] == 1)
      {
        v4 = [_processedEnclosureColors objectAtIndexedSubscript:0];
        v5 = +[IFColor white];
        if ([v4 isEqual:v5])
        {

LABEL_14:
          _processedSymbolColors = [(IFGraphicSymbolDescriptor *)self _processedSymbolColors];
          goto LABEL_16;
        }

        v11 = [_processedEnclosureColors objectAtIndexedSubscript:0];
        v12 = +[IFColor black];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_14;
        }
      }

      _processedSymbolColors = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
      goto LABEL_16;
    }

    if ([(IFGraphicSymbolDescriptor *)self appearance]== 2)
    {
      tintColor = [(IFSymbolImageDescriptor *)self tintColor];

      if (tintColor)
      {
        _processedEnclosureColors = [(IFSymbolImageDescriptor *)self tintColor];
        v19[0] = _processedEnclosureColors;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v19;
        goto LABEL_9;
      }

      v15 = IFDefaultLog(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        _os_log_impl(&dword_1B9DEC000, v15, OS_LOG_TYPE_INFO, "No tint colour set for tintable request", &v17, 2u);
      }
    }
  }

  else if ([(IFGraphicSymbolDescriptor *)self appearanceVariant]== 3 || [(IFGraphicSymbolDescriptor *)self appearanceVariant]== 2)
  {
    _processedEnclosureColors = +[IFColor white];
    v18 = _processedEnclosureColors;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v18;
LABEL_9:
    _processedSymbolColors = [v6 arrayWithObjects:v7 count:1];
LABEL_16:
    _processedSymbolColors2 = _processedSymbolColors;

    goto LABEL_21;
  }

  _processedSymbolColors2 = [(IFGraphicSymbolDescriptor *)self _processedSymbolColors];
LABEL_21:

  return _processedSymbolColors2;
}

- (NSArray)resolvedEnclosureColors
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(IFGraphicSymbolDescriptor *)self isExtendedAppearanceVariant])
  {
    v3 = [[IFColor alloc] initWithRed:0.1922 green:0.1922 blue:0.1922 alpha:1.0];
    v4 = [[IFColor alloc] initWithRed:0.0784 green:0.0784 blue:0.0784 alpha:1.0];
    v7[0] = v3;
    v7[1] = v4;
    _processedEnclosureColors = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    _processedEnclosureColors = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
  }

  return _processedEnclosureColors;
}

- (int64_t)resolvedRenderingModeFromSuggestedMode:(int64_t)mode
{
  renderingMode = [(IFGraphicSymbolDescriptor *)self renderingMode];
  if (renderingMode <= 3)
  {
    if (renderingMode == 2)
    {
      return 3;
    }

    if (renderingMode == 3)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (renderingMode != 4)
  {
    if (renderingMode == 5)
    {
      return 4;
    }

LABEL_8:
    if ((mode - 1) >= 3)
    {
      return 1;
    }

    else
    {
      return mode;
    }
  }

  if ([(IFGraphicSymbolDescriptor *)self appearance]!= 2)
  {
    return 2;
  }

  result = [(IFGraphicSymbolDescriptor *)self appearanceVariant];
  if (result != 1)
  {
    return 2;
  }

  return result;
}

- (int64_t)resolvedShape
{
  shape = [(IFGraphicSymbolDescriptor *)self shape];
  if (shape == 3)
  {
    return 2;
  }

  else
  {
    return shape == 2;
  }
}

- (CUIEncapsulationShape)encapsulationShape
{
  shape = [(IFGraphicSymbolDescriptor *)self shape];
  switch(shape)
  {
    case 3:
      newCapsule = [MEMORY[0x1E6999380] newCapsule];
      break;
    case 2:
      newCapsule = [MEMORY[0x1E6999380] newCircle];
      break;
    case 1:
      newCapsule = [MEMORY[0x1E6999380] newRoundedRect];
      break;
    default:
      newCapsule = 0;
      break;
  }

  return newCapsule;
}

- (int64_t)fill
{
  if (!self->_fill)
  {
    if ([(IFGraphicSymbolDescriptor *)self platform]== 1 || [(IFGraphicSymbolDescriptor *)self platform]== 2 || [(IFGraphicSymbolDescriptor *)self platform]== 16)
    {
      v3 = 2;
    }

    else
    {
      v5 = +[IFDefaults sharedInstance];
      iconStackAppIconsAllowed = [v5 iconStackAppIconsAllowed];

      v3 = 1;
      if (iconStackAppIconsAllowed)
      {
        v3 = 2;
      }
    }

    self->_fill = v3;
  }

  if ([(IFGraphicSymbolDescriptor *)self isExtendedAppearanceVariant])
  {
    return 4;
  }

  else
  {
    return self->_fill;
  }
}

- (int64_t)resolvedFill
{
  fill = [(IFGraphicSymbolDescriptor *)self fill];
  if ((fill - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return fill - 1;
  }
}

- (int64_t)symbolEffect
{
  result = [(IFGraphicSymbolDescriptor *)self platform];
  if (result != 1)
  {
    return [(IFGraphicSymbolDescriptor *)self platform]== 2;
  }

  return result;
}

- (int64_t)enclosureEffect
{
  result = [(IFGraphicSymbolDescriptor *)self platform];
  if (result != 1)
  {
    return [(IFGraphicSymbolDescriptor *)self platform]== 2;
  }

  return result;
}

- (void)setName:(id)name
{
  objc_storeStrong(&self->_name, name);

  [(IFGraphicSymbolDescriptor *)self checkForSymbolOverride];
}

- (void)setResolvedName:(id)name
{
  objc_storeStrong(&self->_resolvedName, name);

  [(IFGraphicSymbolDescriptor *)self checkForSymbolOverride];
}

- (NSString)resolvedName
{
  resolvedName = self->_resolvedName;
  if (resolvedName)
  {
    name = resolvedName;
  }

  else
  {
    name = [(IFGraphicSymbolDescriptor *)self name];
  }

  return name;
}

- (BOOL)_addLightModeBorder
{
  result = 0;
  if (([(IFGraphicSymbolDescriptor *)self platform]& 0x3C) != 0 && [(IFGraphicSymbolDescriptor *)self fill]== 1 && ![(IFGraphicSymbolDescriptor *)self appearance])
  {
    _processedEnclosureColors = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
    v4 = [_processedEnclosureColors objectAtIndexedSubscript:0];
    v5 = +[IFColor white];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)_addDarkModeBorder
{
  result = 0;
  if (([(IFGraphicSymbolDescriptor *)self platform]& 0x3C) != 0)
  {
    if ([(IFGraphicSymbolDescriptor *)self fill]== 1 && [(IFGraphicSymbolDescriptor *)self appearance]== 1)
    {
      _processedEnclosureColors = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
      v4 = [_processedEnclosureColors objectAtIndexedSubscript:0];
      v5 = +[IFColor black];
      v6 = [v4 isEqual:v5];

      if (v6)
      {
        return 1;
      }
    }

    if ([(IFGraphicSymbolDescriptor *)self isExtendedAppearanceVariant])
    {
      return 1;
    }
  }

  return result;
}

- (double)resolvedBorderWidth
{
  if ([(IFGraphicSymbolDescriptor *)self _addLightModeBorder]|| (v4 = [(IFGraphicSymbolDescriptor *)self _addDarkModeBorder], result = 0.0, v4))
  {
    [(IFSymbolImageDescriptor *)self scale];
    return 1.0 / v5;
  }

  return result;
}

- (IFColor)resolvedBorderColor
{
  if ([(IFGraphicSymbolDescriptor *)self _addLightModeBorder]|| [(IFGraphicSymbolDescriptor *)self _addDarkModeBorder])
  {
    v3 = [IFColor borderColorForAppearance:[(IFGraphicSymbolDescriptor *)self appearance]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)shape
{
  result = self->_shape;
  if (!result)
  {
    if ([(IFGraphicSymbolDescriptor *)self platform]== 8)
    {
      result = 2;
    }

    else if ([(IFGraphicSymbolDescriptor *)self platform]== 16)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    self->_shape = result;
  }

  return result;
}

- (void)checkForSymbolOverride
{
  symbolOverride = [self symbolOverride];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (double)pointSize
{
  symbolOverride = [(IFGraphicSymbolDescriptor *)self symbolOverride];
  [symbolOverride pointSizeAdjuster];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v19.receiver = self;
    v19.super_class = IFGraphicSymbolDescriptor;
    [(IFSymbolImageDescriptor *)&v19 pointSize];
    if (v13 >= 1.0)
    {
      v18.receiver = self;
      v18.super_class = IFGraphicSymbolDescriptor;
      [(IFSymbolImageDescriptor *)&v18 pointSize];
      return v16;
    }

    [(IFGraphicSymbolDescriptor *)self size];
    v9 = v14;
    symbolOverride2 = +[IFGraphicSymbolDefaults sharedInstance];
    [symbolOverride2 enclosureSizeMultiplier];
  }

  else
  {
    v7 = IFDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self pointSize];
    }

    [(IFGraphicSymbolDescriptor *)self size];
    v9 = v8;
    symbolOverride2 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    [symbolOverride2 pointSizeAdjuster];
    v12 = v11;
  }

  v15 = v9 / v12;

  return v15;
}

- (unint64_t)symbolSize
{
  symbolOverride = [(IFGraphicSymbolDescriptor *)self symbolOverride];
  symbolSize = [symbolOverride symbolSize];

  if (symbolSize)
  {
    v6 = IFDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self symbolSize];
    }

    symbolOverride2 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    symbolSize2 = [symbolOverride2 symbolSize];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IFGraphicSymbolDescriptor;
    return [(IFSymbolImageDescriptor *)&v10 symbolSize];
  }

  return symbolSize2;
}

- (int64_t)symbolWeight
{
  symbolOverride = [(IFGraphicSymbolDescriptor *)self symbolOverride];
  symbolWeight = [symbolOverride symbolWeight];

  if (symbolWeight)
  {
    v6 = IFDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self symbolWeight];
    }

    symbolOverride2 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    symbolWeight2 = [symbolOverride2 symbolWeight];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IFGraphicSymbolDescriptor;
    return [(IFSymbolImageDescriptor *)&v10 symbolWeight];
  }

  return symbolWeight2;
}

- (CGSize)symbolOffset
{
  symbolOverride = [(IFGraphicSymbolDescriptor *)self symbolOverride];

  if (symbolOverride)
  {
    v5 = IFDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self symbolOffset];
    }

    symbolOverride2 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    [symbolOverride2 offset];
    v8 = v7;
    height = v9;

    flipXOffsetOverride = [(IFGraphicSymbolDescriptor *)self flipXOffsetOverride];
    width = -v8;
    if (!flipXOffsetOverride)
    {
      width = v8;
    }
  }

  else
  {
    width = self->_symbolOffset.width;
    height = self->_symbolOffset.height;
  }

  v13 = height;
  result.height = v13;
  result.width = width;
  return result;
}

- (BOOL)isExtendedAppearanceVariant
{
  if ([(IFGraphicSymbolDescriptor *)self appearanceVariant]!= 1)
  {
    goto LABEL_5;
  }

  appearance = [(IFGraphicSymbolDescriptor *)self appearance];
  if (appearance != 1)
  {
    if ([(IFGraphicSymbolDescriptor *)self appearance]== 2)
    {
      LOBYTE(appearance) = 1;
      return appearance;
    }

LABEL_5:
    LOBYTE(appearance) = 0;
  }

  return appearance;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = IFGraphicSymbolDescriptor;
  v4 = [(IFGraphicSymbolDescriptor *)&v12 description];
  [(IFGraphicSymbolDescriptor *)self size];
  v6 = v5;
  [(IFGraphicSymbolDescriptor *)self size];
  v8 = v7;
  [(IFSymbolImageDescriptor *)self scale];
  v10 = [v3 stringWithFormat:@"%@ - (%0.2f, %0.2f)@%.0fx", v4, v6, v8, v9];

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)pointSize
{
  name = [self name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)symbolSize
{
  name = [self name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)symbolWeight
{
  name = [self name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)symbolOffset
{
  name = [self name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end