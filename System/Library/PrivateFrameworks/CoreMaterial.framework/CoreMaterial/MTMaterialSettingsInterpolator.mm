@interface MTMaterialSettingsInterpolator
+ (id)_filteringProtocolGetterNames;
- (BOOL)_isBackdropRequiredWithSettings:(id)settings;
- (BOOL)_isBackdropRequiredWithSubSettings:(id)settings;
- (BOOL)_isPropertyEnabled:(id)enabled consideringWeighting:(BOOL)weighting;
- (BOOL)_isTintEnabledWithSettings:(id)settings;
- (BOOL)isBackdropRequiredEver;
- (BOOL)isBackdropRequiredInitially;
- (BOOL)isBlurAtEnd;
- (BOOL)isCurvesEnabled;
- (BOOL)isTintEnabled;
- (CAColorMatrix)colorMatrix;
- (CGImage)variableBlurInputMask;
- (MTColor)tintColor;
- (MTMaterialSettingsInterpolator)initWithSettings:(id)settings;
- (NSDictionary)curvesValues;
- (NSString)blurInputQuality;
- (double)_floatPropertyValueForProperty:(id)property withTransformer:(id)transformer;
- (id)_averageColorEnabledWithSettings:(id)settings;
- (id)_backdropScaleWithSettings:(id)settings;
- (id)_colorMatrixColorWithSettings:(id)settings alpha:(double)alpha;
- (id)_colorWithGetterBlock:(id)block;
- (id)_filteringProperty:(id)property withSettings:(id)settings;
- (id)_luminanceInputValues;
- (id)_propertyValueForProperty:(id)property withTransformer:(id)transformer;
- (id)_tintAlphaWithSettings:(id)settings;
- (id)_zoomWithSettings:(id)settings;
- (id)description;
- (id)initialSettingsInterpolator;
- (void)_luminanceInputValues;
- (void)curvesValues;
- (void)isCurvesEnabled;
- (void)setWeighting:(double)weighting;
@end

@implementation MTMaterialSettingsInterpolator

- (BOOL)isBackdropRequiredEver
{
  if ([(MTMaterialSettingsInterpolator *)self isBackdropRequiredFinally])
  {
    return 1;
  }

  return [(MTMaterialSettingsInterpolator *)self isBackdropRequiredInitially];
}

+ (id)_filteringProtocolGetterNames
{
  if (_filteringProtocolGetterNames_onceToken != -1)
  {
    +[MTMaterialSettingsInterpolator _filteringProtocolGetterNames];
  }

  v3 = _filteringProtocolGetterNames___filteringProtocolSelectorNames;

  return v3;
}

- (NSDictionary)curvesValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)self->_initialSettings baseMaterialSettings];
  curvesValues = [baseMaterialSettings curvesValues];

  baseMaterialSettings2 = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  curvesValues2 = [baseMaterialSettings2 curvesValues];

  v6 = v3;
  obj = MTCAFilterCurvesInputValuesKeys(v7);
  v30 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v30)
  {
    v28 = MEMORY[0];
    v26 = v3;
    do
    {
      v8 = 0;
      do
      {
        if (MEMORY[0] != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [curvesValues objectForKey:?];
        v10 = [curvesValues2 objectForKey:?];
        v11 = v10;
        if (!(v9 | v10))
        {
          v14 = 0;
          goto LABEL_38;
        }

        if (v9)
        {
          v12 = [v9 count];
          if (v12 == 4 && v11 != 0)
          {
LABEL_15:
            v12 = [v11 count];
          }

          if (v12 != 4)
          {
            [MTMaterialSettingsInterpolator curvesValues];
          }

          if (v9)
          {
            v15 = v11 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v17 = 0;
            while (1)
            {
              if (MTFloatIsZero(self->_weighting))
              {
                v18 = v9;
              }

              else
              {
                if (!MTFloatIsOne(self->_weighting))
                {
                  v20 = MEMORY[0x1E696AD98];
                  v21 = [v9 objectAtIndexedSubscript:?];
                  [v21 floatValue];
                  v22 = [v11 objectAtIndexedSubscript:?];
                  [v22 floatValue];
                  v23 = [v9 objectAtIndexedSubscript:?];
                  [v23 floatValue];

                  v19 = [v20 numberWithDouble:?];
                  goto LABEL_34;
                }

                v18 = v11;
              }

              v19 = [v18 objectAtIndexedSubscript:?];
LABEL_34:
              v24 = v19;
              [v14 addObject:?];

              if (++v17 == 4)
              {
                v6 = v26;
                goto LABEL_37;
              }
            }
          }

          goto LABEL_23;
        }

        if (v10)
        {
          goto LABEL_15;
        }

LABEL_23:
        if (curvesValues | curvesValues2)
        {
          if (curvesValues)
          {
            v16 = v9;
          }

          else
          {
            v16 = v11;
          }

          v14 = v16;
        }

        else
        {
          v14 = 0;
        }

LABEL_37:
        [v6 setObject:? forKey:?];
LABEL_38:

        v8 = (v8 + 1);
      }

      while (v8 != v30);
      v30 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v30);
  }

  return v6;
}

double __47__MTMaterialSettingsInterpolator_backdropScale__block_invoke(double a1, double a2, double a3)
{
  v3 = a2 == 0.0;
  if (a3 == 0.0)
  {
    v3 = 1;
  }

  if (a2 < a3 != v3)
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

- (CGImage)variableBlurInputMask
{
  if (self->_initialSettings)
  {
    return 0;
  }

  baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  variableBlurInputMask = [baseMaterialSettings variableBlurInputMask];

  return variableBlurInputMask;
}

- (NSString)blurInputQuality
{
  initialSettings = self->_initialSettings;
  v4 = @"default";
  if (initialSettings)
  {
    baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)initialSettings baseMaterialSettings];
    blurInputQuality = [baseMaterialSettings blurInputQuality];
    v7 = blurInputQuality;
    if (blurInputQuality)
    {
      v8 = blurInputQuality;
    }

    else
    {
      v8 = @"default";
    }

    v4 = v8;
  }

  baseMaterialSettings2 = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  blurInputQuality2 = [baseMaterialSettings2 blurInputQuality];

  if (MTCompareBlurInputQualities(v4, blurInputQuality2) == -1)
  {
    v11 = v4;
  }

  else
  {
    v11 = blurInputQuality2;
  }

  v12 = v11;

  return &v11->isa;
}

- (BOOL)isCurvesEnabled
{
  NSSelectorFromString(&cfstr_Curvesvalues.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MTMaterialSettingsInterpolator isCurvesEnabled];
  }

  if (self->_initialSettings)
  {
    v3 = [MTMaterialSettingsInterpolator performSelector:"performSelector:withObject:" withObject:?]!= 0;
  }

  else
  {
    v3 = 0;
  }

  return [MTMaterialSettingsInterpolator performSelector:"performSelector:withObject:" withObject:?]|| v3;
}

- (BOOL)isTintEnabled
{
  if ([(MTMaterialSettingsInterpolator *)self _isTintEnabledWithSettings:?])
  {
    return 1;
  }

  return [(MTMaterialSettingsInterpolator *)self _isTintEnabledWithSettings:?];
}

- (BOOL)isBlurAtEnd
{
  baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  isBlurAtEnd = [baseMaterialSettings isBlurAtEnd];

  return isBlurAtEnd;
}

- (MTColor)tintColor
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __43__MTMaterialSettingsInterpolator_tintColor__block_invoke;
  v7 = &unk_1E80BDD58;
  selfCopy = self;
  v2 = [(MTMaterialSettingsInterpolator *)self _colorWithGetterBlock:?];

  return v2;
}

- (id)_luminanceInputValues
{
  initialSettings = self->_initialSettings;
  if (initialSettings)
  {
    baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)initialSettings baseMaterialSettings];
    luminanceValues = [baseMaterialSettings luminanceValues];
  }

  else
  {
    luminanceValues = 0;
  }

  baseMaterialSettings2 = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  luminanceValues2 = [baseMaterialSettings2 luminanceValues];

  if (luminanceValues | luminanceValues2)
  {
    if (luminanceValues && luminanceValues2)
    {
      if ([luminanceValues count] != 4 || objc_msgSend(luminanceValues2, "count") != 4)
      {
        [MTMaterialSettingsInterpolator _luminanceInputValues];
      }

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = 0;
      while (1)
      {
        if (MTFloatIsZero(self->_weighting))
        {
          v10 = luminanceValues;
        }

        else
        {
          if (!MTFloatIsOne(self->_weighting))
          {
            v12 = MEMORY[0x1E696AD98];
            v13 = [luminanceValues objectAtIndexedSubscript:?];
            [v13 floatValue];
            v14 = [luminanceValues2 objectAtIndexedSubscript:?];
            [v14 floatValue];
            v15 = [luminanceValues objectAtIndexedSubscript:?];
            [v15 floatValue];

            v11 = [v12 numberWithDouble:?];
            goto LABEL_16;
          }

          v10 = luminanceValues2;
        }

        v11 = [v10 objectAtIndexedSubscript:?];
LABEL_16:
        v16 = v11;
        [v8 addObject:?];

        if (++v9 == 4)
        {
          goto LABEL_23;
        }
      }
    }

    if (luminanceValues)
    {
      v17 = luminanceValues;
    }

    else
    {
      v17 = luminanceValues2;
    }

    v8 = v17;
  }

  else
  {
    v8 = 0;
  }

LABEL_23:
  v18 = v8;

  return v8;
}

uint64_t __63__MTMaterialSettingsInterpolator__filteringProtocolGetterNames__block_invoke()
{
  v0 = MTProtocolGetProperties(&unk_1F3E04410, 3);
  _filteringProtocolGetterNames___filteringProtocolSelectorNames = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (MTMaterialSettingsInterpolator)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v8.receiver = self;
  v8.super_class = MTMaterialSettingsInterpolator;
  v5 = [(MTMaterialSettingsInterpolator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTMaterialSettingsInterpolator *)v5 setFinalSettings:?];
  }

  return v6;
}

- (id)initialSettingsInterpolator
{
  finalSettings = self->_finalSettings;
  if (finalSettings)
  {
    if (self->_initialSettings)
    {
      finalSettings = self->_initialSettings;
    }

    v3 = finalSettings;
    v4 = [[MTMaterialSettingsInterpolator alloc] initWithSettings:?];

    [(MTMaterialSettingsInterpolator *)v4 setWeighting:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWeighting:(double)weighting
{
  weighting = self->_weighting;
  if (weighting != weighting)
  {
    self->_previousWeighting = weighting;
    self->_weighting = weighting;
  }
}

- (BOOL)isBackdropRequiredInitially
{
  if (self->_initialSettings)
  {
    return [(MTMaterialSettingsInterpolator *)self _isBackdropRequiredWithSettings:?];
  }

  else
  {
    return 0;
  }
}

- (CAColorMatrix)colorMatrix
{
  v4 = [MTMaterialSettingsInterpolator _propertyValueForProperty:"_propertyValueForProperty:withTransformer:" withTransformer:?];
  if (v4)
  {
    v6 = v4;
    [(CAColorMatrix *)retstr CAColorMatrixValue];
    v4 = v6;
  }

  else
  {
    *&retstr->m33 = 0u;
    *&retstr->m42 = 0u;
    *&retstr->m15 = 0u;
    *&retstr->m24 = 0u;
    *&retstr->m11 = 0u;
  }

  return result;
}

id __45__MTMaterialSettingsInterpolator_colorMatrix__block_invoke(double a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x1E696B098];
  if (v6)
  {
    [(float32x4_t *)v13 CAColorMatrixValue];
    if (v8)
    {
LABEL_3:
      [(float32x4_t *)v12 CAColorMatrixValue];
      goto LABEL_6;
    }
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    if (v7)
    {
      goto LABEL_3;
    }
  }

  memset(v12, 0, sizeof(v12));
LABEL_6:
  MTCAColorMatrixInterpolate(v13, v12, v14, a1);
  v10 = [v9 valueWithBytes:? objCType:?];

  return v10;
}

- (BOOL)_isPropertyEnabled:(id)enabled consideringWeighting:(BOOL)weighting
{
  enabledCopy = enabled;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:enabledCopy];
  NSSelectorFromString(v8);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(MTMaterialSettingsInterpolator *)a2 _isPropertyEnabled:v8 consideringWeighting:?];
  }

  if (self->_initialSettings)
  {
    v9 = [-[MTMaterialSettingsInterpolator performSelector:withObject:](self "performSelector:"mt_isIdentityValueForMaterialSettingsProperty:" withObject:?")] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = [-[MTMaterialSettingsInterpolator performSelector:withObject:](self "performSelector:"mt_isIdentityValueForMaterialSettingsProperty:" withObject:?")];
  weighting = self->_weighting;
  v12 = !weighting;
  v13 = weighting < 1.0 || !weighting;
  v14 = v9 & v13;
  if (weighting > 0.0)
  {
    v12 = 1;
  }

  if (v14)
  {
    v12 = v14;
  }

  if (v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (id)_propertyValueForProperty:(id)property withTransformer:(id)transformer
{
  propertyCopy = property;
  transformerCopy = transformer;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:propertyCopy];
  NSSelectorFromString(v9);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(MTMaterialSettingsInterpolator *)a2 _propertyValueForProperty:v9 withTransformer:?];
  }

  if (self->_initialSettings)
  {
    v10 = [MTMaterialSettingsInterpolator performSelector:"performSelector:withObject:" withObject:?];
  }

  else
  {
    v10 = [MEMORY[0x1E696B098] mt_identityValueForMaterialSettingsProperty:?];
  }

  v11 = v10;
  v12 = [MTMaterialSettingsInterpolator performSelector:"performSelector:withObject:" withObject:?];
  v13 = v12;
  if (transformerCopy)
  {
    v14 = transformerCopy[2](transformerCopy, v11, v12, self->_weighting);
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;

  return v15;
}

- (double)_floatPropertyValueForProperty:(id)property withTransformer:(id)transformer
{
  transformerCopy = transformer;
  v6 = [MTMaterialSettingsInterpolator _propertyValueForProperty:"_propertyValueForProperty:withTransformer:" withTransformer:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MTMaterialSettingsInterpolator _floatPropertyValueForProperty:withTransformer:];
  }

  [v6 floatValue];
  v8 = v7;

  return v8;
}

id __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v7 && (objc_opt_respondsToSelector() & 1) == 0 || v8 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke_cold_1(a1);
  }

  v9 = *(a1 + 40);
  v10 = MEMORY[0x1E696AD98];
  [v7 floatValue];
  if (v9)
  {
    v12 = v11;
    [v8 floatValue];
    (*(v9 + 16))(v9, a4, v12, v13);
  }

  else
  {
    [v8 floatValue];
    [v7 floatValue];
  }

  v14 = [v10 numberWithDouble:?];

  return v14;
}

- (id)_colorWithGetterBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [MTMaterialSettingsInterpolator _colorWithGetterBlock:];
  }

  if (self->_initialSettings)
  {
    v5 = [(MTMaterialSettingsInterpolator *)self _tintAlphaWithSettings:?];
  }

  else
  {
    v5 = 0;
  }

  if (self->_initialSettings)
  {
    [v5 doubleValue];
    v7 = v6 * (1.0 - self->_weighting);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(MTMaterialSettingsInterpolator *)self _tintAlphaWithSettings:?];
  [v8 doubleValue];
  v10 = v9 * self->_weighting;
  if (self->_initialSettings)
  {
    v11 = blockCopy[2](blockCopy, v7);
  }

  else
  {
    v11 = 0;
  }

  v12 = (blockCopy[2])(blockCopy, self->_finalSettings, v10);
  v13 = v12;
  if (!(v11 | v12))
  {
    goto LABEL_21;
  }

  if (!v11 || !v12)
  {
    if (v11)
    {
      v18 = v11;
LABEL_20:
      v17 = v18;
      goto LABEL_22;
    }

    if (v12)
    {
      v18 = v12;
      goto LABEL_20;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v14 = [v11 colorWithAlphaComponent:?];
  v15 = [v13 colorWithAlphaComponent:?];
  v16 = [v14 colorBlendedWithColor:?];
  v17 = [v16 colorWithAlphaComponent:?];

LABEL_22:
  v19 = v17;

  return v17;
}

- (BOOL)_isBackdropRequiredWithSubSettings:(id)settings
{
  settingsCopy = settings;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (settingsCopy)
  {
    _filteringProtocolGetterNames = [objc_opt_class() _filteringProtocolGetterNames];
    v7 = MEMORY[0x1E69E9820];
    v9 = &v10;
    v8 = settingsCopy;
    [_filteringProtocolGetterNames enumerateObjectsUsingBlock:{v7, 3221225472, __69__MTMaterialSettingsInterpolator__isBackdropRequiredWithSubSettings___block_invoke, &unk_1E80BDDA8}];

    v5 = *(v11 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v5 & 1;
}

void __69__MTMaterialSettingsInterpolator__isBackdropRequiredWithSubSettings___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 isEqualToString:?];
  v6 = [*(a1 + 32) valueForKey:?];
  v7 = v6;
  if (v5)
  {
    v8 = v6 != 0;
  }

  else
  {
    v8 = [v6 mt_isIdentityValueForMaterialSettingsProperty:?] ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;

  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)_isBackdropRequiredWithSettings:(id)settings
{
  baseMaterialSettings = [settings baseMaterialSettings];
  LOBYTE(self) = [(MTMaterialSettingsInterpolator *)self _isBackdropRequiredWithSubSettings:?];

  return self;
}

- (BOOL)_isTintEnabledWithSettings:(id)settings
{
  if (settings)
  {
    v3 = [(MTMaterialSettingsInterpolator *)self _tintAlphaWithSettings:?];
    v4 = [v3 mt_isIdentityValueForMaterialSettingsProperty:?] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_filteringProperty:(id)property withSettings:(id)settings
{
  propertyCopy = property;
  settingsCopy = settings;
  _filteringProtocolGetterNames = [objc_opt_class() _filteringProtocolGetterNames];
  v8 = [_filteringProtocolGetterNames containsObject:?];

  if ((v8 & 1) == 0)
  {
    [MTMaterialSettingsInterpolator _filteringProperty:withSettings:];
  }

  baseMaterialSettings = [settingsCopy baseMaterialSettings];
  v10 = [baseMaterialSettings valueForKey:?];

  return v10;
}

- (id)_tintAlphaWithSettings:(id)settings
{
  baseMaterialSettings = [settings baseMaterialSettings];
  v4 = MEMORY[0x1E696AD98];
  [baseMaterialSettings tintAlpha];
  v5 = [v4 numberWithDouble:?];

  return v5;
}

- (id)_zoomWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AD98];
  baseMaterialSettings = [settings baseMaterialSettings];
  [baseMaterialSettings zoom];
  v5 = [v3 numberWithDouble:?];

  return v5;
}

- (id)_colorMatrixColorWithSettings:(id)settings alpha:(double)alpha
{
  baseMaterialSettings = [settings baseMaterialSettings];
  if ([baseMaterialSettings tintColor])
  {
    [baseMaterialSettings tintColor];
    v5 = [MTColor colorWithCGColor:?];
    v6 = [v5 colorWithAlphaComponent:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_backdropScaleWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AD98];
  baseMaterialSettings = [settings baseMaterialSettings];
  [baseMaterialSettings backdropScale];
  v5 = [v3 numberWithDouble:?];

  return v5;
}

- (id)_averageColorEnabledWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AD98];
  baseMaterialSettings = [settings baseMaterialSettings];
  [baseMaterialSettings isAverageColorEnabled];
  v5 = [v3 numberWithBool:?];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:objc_opt_class(), self, self->_finalSettings];
  v4 = v3;
  if (self->_initialSettings)
  {
    [v3 appendFormat:self->_initialSettings];
  }

  [v4 appendFormat:*&self->_weighting];

  return v4;
}

- (void)isCurvesEnabled
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"curvesValues" object:? file:? lineNumber:? description:?];
}

- (void)curvesValues
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v1 object:v0 file:? lineNumber:? description:?];
}

- (void)_isPropertyEnabled:(uint64_t)a3 consideringWeighting:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];
}

- (void)_propertyValueForProperty:(uint64_t)a3 withTransformer:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];
}

- (void)_floatPropertyValueForProperty:withTransformer:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  [v1 handleFailureInMethod:@"(!initialValue || [initialValue respondsToSelector:@selector(floatValue)]) && (!finalValue || [finalValue respondsToSelector:@selector(floatValue)])" object:? file:? lineNumber:? description:?];
}

- (void)_colorWithGetterBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"getter" object:? file:? lineNumber:? description:?];
}

- (void)_luminanceInputValues
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v1 object:v0 file:? lineNumber:? description:?];
}

- (void)_filteringProperty:withSettings:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[[[self class] _filteringProtocolGetterNames] containsObject:filteringProperty]" object:? file:? lineNumber:? description:?];
}

@end