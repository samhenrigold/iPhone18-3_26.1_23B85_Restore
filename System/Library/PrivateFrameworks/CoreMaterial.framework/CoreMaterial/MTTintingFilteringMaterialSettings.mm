@interface MTTintingFilteringMaterialSettings
- (CAColorMatrix)colorMatrix;
- (MTTintingFilteringMaterialSettings)initWithMaterialDescription:(id)description andDescendantDescriptions:(id)descriptions bundle:(id)bundle;
- (void)_processMaterialFilteringDescription:(id)description defaultingToIdentity:(BOOL)identity bundle:(id)bundle;
- (void)_processUserInfoDescription:(id)description;
- (void)dealloc;
@end

@implementation MTTintingFilteringMaterialSettings

- (CAColorMatrix)colorMatrix
{
  v3 = *&self[2].m31;
  *&retstr->m24 = *&self[2].m22;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[2].m35;
  v4 = *&self[2].m13;
  *&retstr->m11 = *&self[1].m44;
  *&retstr->m15 = v4;
  return self;
}

- (MTTintingFilteringMaterialSettings)initWithMaterialDescription:(id)description andDescendantDescriptions:(id)descriptions bundle:(id)bundle
{
  v33 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  bundleCopy = bundle;
  v11 = [descriptionCopy objectForKey:?];
  v12 = [descriptionsCopy valueForKey:?];
  v32.receiver = self;
  v32.super_class = MTTintingFilteringMaterialSettings;
  v13 = [(MTTintingMaterialSettings *)&v32 initWithTintingDescription:v11 andDescendantDescriptions:v12];

  if (v13)
  {
    v31 = descriptionCopy;
    v14 = [descriptionCopy objectForKey:?];
    [MTTintingFilteringMaterialSettings _processMaterialFilteringDescription:v13 defaultingToIdentity:"_processMaterialFilteringDescription:defaultingToIdentity:bundle:" bundle:?];

    v15 = [descriptionsCopy valueForKey:?];
    v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(8 * i);
          null = [MEMORY[0x1E695DFB0] null];

          if (v20 != null)
          {
            [MTTintingFilteringMaterialSettings _processMaterialFilteringDescription:v13 defaultingToIdentity:"_processMaterialFilteringDescription:defaultingToIdentity:bundle:" bundle:?];
          }
        }

        v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    v22 = [v31 objectForKey:?];
    [(MTTintingFilteringMaterialSettings *)v13 _processUserInfoDescription:?];

    v23 = [descriptionsCopy valueForKey:?];
    v24 = [v23 countByEnumeratingWithState:? objects:? count:?];
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0];
      do
      {
        for (j = 0; j != v25; j = (j + 1))
        {
          if (MEMORY[0] != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(8 * j);
          null2 = [MEMORY[0x1E695DFB0] null];

          if (v28 != null2)
          {
            [(MTTintingFilteringMaterialSettings *)v13 _processUserInfoDescription:?];
          }
        }

        v25 = [v23 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v25);
    }

    descriptionCopy = v31;
  }

  return v13;
}

- (void)dealloc
{
  variableBlurInputMask = self->_variableBlurInputMask;
  if (variableBlurInputMask)
  {
    CGImageRelease(variableBlurInputMask);
  }

  v4.receiver = self;
  v4.super_class = MTTintingFilteringMaterialSettings;
  [(MTTintingMaterialSettings *)&v4 dealloc];
}

- (void)_processMaterialFilteringDescription:(id)description defaultingToIdentity:(BOOL)identity bundle:(id)bundle
{
  identityCopy = identity;
  descriptionCopy = description;
  bundleCopy = bundle;
  v10 = [descriptionCopy objectForKey:?];
  if (v10)
  {
    v11 = [descriptionCopy objectForKey:?];
LABEL_5:
    v12 = v11;
    [v11 floatValue];
    self->_luminanceAmount = v13;

    goto LABEL_6;
  }

  if (identityCopy)
  {
    v11 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
    goto LABEL_5;
  }

LABEL_6:

  v14 = [descriptionCopy objectForKey:?];
  luminanceValues = v14;
  if (!v14)
  {
    luminanceValues = 0;
    if (!identityCopy)
    {
      luminanceValues = self->_luminanceValues;
    }
  }

  objc_storeStrong(&self->_luminanceValues, luminanceValues);

  v16 = [descriptionCopy objectForKey:?];
  if (v16)
  {
    v17 = [descriptionCopy objectForKey:?];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_14;
    }

    v17 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
  }

  v18 = v17;
  [v17 floatValue];
  self->_blurRadius = v19;

LABEL_14:
  v20 = [descriptionCopy objectForKey:?];
  if (v20)
  {
    v21 = [descriptionCopy objectForKey:?];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_19;
    }

    v21 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
  }

  v22 = v21;
  self->_averageColorEnabled = [v21 BOOLValue];

LABEL_19:
  v23 = [descriptionCopy objectForKey:?];
  if (v23)
  {
    v24 = [descriptionCopy objectForKey:?];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_24;
    }

    v24 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
  }

  v25 = v24;
  [v24 floatValue];
  self->_saturation = v26;

LABEL_24:
  v27 = [descriptionCopy objectForKey:?];
  if (v27)
  {
    v28 = [descriptionCopy objectForKey:?];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_29;
    }

    v28 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
  }

  v29 = v28;
  [v28 floatValue];
  self->_brightness = v30;

LABEL_29:
  v31 = [descriptionCopy objectForKey:?];
  if (v31)
  {
    v32 = [descriptionCopy objectForKey:?];
    MTCAColorMatrixMakeWithDictionaryRepresentation(v32, &v54);
LABEL_31:
    v33 = v57;
    *&self->_colorMatrix.m24 = v56;
    *&self->_colorMatrix.m33 = v33;
    *&self->_colorMatrix.m42 = v58;
    v34 = v55;
    *&self->_colorMatrix.m11 = v54;
    *&self->_colorMatrix.m15 = v34;

    goto LABEL_32;
  }

  if (identityCopy)
  {
    v32 = [MEMORY[0x1E696B098] mt_identityValueForFilter:?];
    if (v32)
    {
      [&v54 CAColorMatrixValue];
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
    }

    goto LABEL_31;
  }

LABEL_32:

  v35 = [descriptionCopy objectForKey:?];
  if (v35)
  {
    v36 = [descriptionCopy objectForKey:?];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_40;
    }

    v36 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
  }

  v37 = v36;
  [v36 floatValue];
  self->_zoom = v38;

LABEL_40:
  v39 = [descriptionCopy objectForKey:?];
  if (v39)
  {
    v40 = [descriptionCopy objectForKey:?];
LABEL_44:
    v41 = v40;
    [v40 floatValue];
    self->_backdropScale = v42;

    goto LABEL_45;
  }

  if (identityCopy)
  {
    v40 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
    goto LABEL_44;
  }

LABEL_45:

  v43 = [descriptionCopy objectForKey:?];
  v44 = v43;
  if (v43 || identityCopy)
  {
    if (v43)
    {
      blurInputQuality = v43;
    }

    else
    {
      blurInputQuality = @"default";
    }
  }

  else
  {
    blurInputQuality = self->_blurInputQuality;
  }

  objc_storeStrong(&self->_blurInputQuality, blurInputQuality);

  v46 = [descriptionCopy objectForKey:?];
  if (v46)
  {
    v47 = [descriptionCopy objectForKey:?];
LABEL_55:
    v48 = v47;
    self->_blurAtEnd = [v47 BOOLValue];

    goto LABEL_56;
  }

  if (identityCopy)
  {
    v47 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
    goto LABEL_55;
  }

LABEL_56:

  v49 = [descriptionCopy objectForKey:?];
  variableBlurInputMaskName = v49;
  if (!v49)
  {
    variableBlurInputMaskName = 0;
    if (!identityCopy)
    {
      variableBlurInputMaskName = self->_variableBlurInputMaskName;
    }
  }

  objc_storeStrong(&self->_variableBlurInputMaskName, variableBlurInputMaskName);

  v51 = self->_variableBlurInputMaskName;
  if (v51)
  {
    if (self->_variableBlurInputMask)
    {
      CGImageRelease(self->_variableBlurInputMask);
      v51 = self->_variableBlurInputMaskName;
    }

    self->_variableBlurInputMask = MTCGImageCreateWithName(v51, bundleCopy, 0.0);
  }

  v52 = [descriptionCopy objectForKey:{v54, v55, v56, v57, v58}];
  curvesValues = v52;
  if (!v52)
  {
    curvesValues = 0;
    if (!identityCopy)
    {
      curvesValues = self->_curvesValues;
    }
  }

  objc_storeStrong(&self->_curvesValues, curvesValues);
}

- (void)_processUserInfoDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy count])
  {
    userInfo = self->_userInfo;
    if (userInfo)
    {
      v6 = [(NSDictionary *)userInfo mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v6;
    v8 = descriptionCopy;
    v9 = [v8 countByEnumeratingWithState:0 objects:? count:?];
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
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKey:?];
          [NSDictionary setObject:v7 forKey:"setObject:forKey:"];
        }

        v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }

    v14 = self->_userInfo;
    self->_userInfo = v7;
  }
}

@end