@interface MTRecipeMaterialSettings
- (MTRecipeMaterialSettings)initWithRecipeName:(id)name andDescription:(id)description descendantDescriptions:(id)descriptions bundle:(id)bundle;
- (NSString)description;
- (id)_newVisualStyleSet;
- (id)_platformColorsStyleSetName;
- (id)_visualStyleSetDescription;
- (id)styleNameForCategory:(id)category;
@end

@implementation MTRecipeMaterialSettings

- (MTRecipeMaterialSettings)initWithRecipeName:(id)name andDescription:(id)description descendantDescriptions:(id)descriptions bundle:(id)bundle
{
  nameCopy = name;
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  bundleCopy = bundle;
  v26.receiver = self;
  v26.super_class = MTRecipeMaterialSettings;
  v14 = [(MTRecipeMaterialSettings *)&v26 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    recipeName = v14->_recipeName;
    v14->_recipeName = v15;

    v17 = [descriptionCopy objectForKey:?];
    v14->_materialSettingsVersion = [v17 integerValue];

    v18 = [descriptionCopy objectForKey:?];
    styles = v14->_styles;
    v14->_styles = v18;

    v20 = [MTTintingFilteringMaterialSettings alloc];
    v21 = [descriptionCopy objectForKey:?];
    v22 = [descriptionsCopy valueForKey:?];
    v23 = [MTTintingFilteringMaterialSettings initWithMaterialDescription:v20 andDescendantDescriptions:"initWithMaterialDescription:andDescendantDescriptions:bundle:" bundle:?];
    baseMaterialSettings = v14->_baseMaterialSettings;
    v14->_baseMaterialSettings = v23;
  }

  return v14;
}

- (id)styleNameForCategory:(id)category
{
  if (@"platformColor" == category)
  {
    [(MTRecipeMaterialSettings *)self _platformColorsStyleSetName];
  }

  else
  {
    [(NSDictionary *)self->_styles objectForKey:?];
  }
  v3 = ;

  return v3;
}

- (id)_visualStyleSetDescription
{
  v62 = *MEMORY[0x1E69E9840];
  baseMaterialSettings = [(MTRecipeMaterialSettings *)self baseMaterialSettings];
  if (!_CanGenerateVisualStylingDescriptionFromConfigurationSettings(baseMaterialSettings))
  {
    v14 = 0;
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __54__MTRecipeMaterialSettings__visualStyleSetDescription__block_invoke;
  v49[3] = &unk_1E80BDBE0;
  v49[4] = &v50;
  v3 = MEMORY[0x1BFB5AC50](v49);
  tintColorDescription = [baseMaterialSettings tintColorDescription];

  if (tintColorDescription)
  {
    v5 = v3[2](v3);
    tintColorDescription2 = [baseMaterialSettings tintColorDescription];
    [v5 setObject:? forKey:?];
  }

  v29 = *(MEMORY[0x1E6979280] + 48);
  v46 = *(MEMORY[0x1E6979280] + 32);
  v47 = v29;
  v48 = *(MEMORY[0x1E6979280] + 64);
  v26 = *(MEMORY[0x1E6979280] + 16);
  v44 = *MEMORY[0x1E6979280];
  v45 = v26;
  v7 = MEMORY[0x1E696AD98];
  [baseMaterialSettings saturation];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 mt_isIdentityValueForMaterialSettingsProperty:?];

  if ((v9 & 1) == 0)
  {
    [baseMaterialSettings saturation];
    CAColorMatrixMakeSaturation();
    v35 = v31;
    v36 = v30;
    v37 = v28;
    v33 = v25;
    v34 = v27;
    CAColorMatrixConcat();
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v44 = v39;
    v45 = v40;
  }

  v10 = MEMORY[0x1E696AD98];
  [baseMaterialSettings brightness];
  v11 = [v10 numberWithDouble:?];
  v12 = [v11 mt_isIdentityValueForMaterialSettingsProperty:?];

  if ((v12 & 1) == 0)
  {
    [baseMaterialSettings brightness];
    CAColorMatrixMakeBrightness();
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v33 = v44;
    v34 = v45;
    CAColorMatrixConcat();
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v44 = v39;
    v45 = v40;
  }

  v13 = MEMORY[0x1E696B098];
  if (baseMaterialSettings)
  {
    [v32 colorMatrix];
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  v15 = [v13 valueWithBytes:? objCType:?];
  v16 = [v15 mt_isIdentityValueForMaterialSettingsProperty:?];

  if ((v16 & 1) == 0)
  {
    if (baseMaterialSettings)
    {
      [v38 colorMatrix];
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    v35 = v46;
    v36 = v47;
    v37 = v48;
    v33 = v44;
    v34 = v45;
    CAColorMatrixConcat();
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v44 = v39;
    v45 = v40;
  }

  v41 = v46;
  v42 = v47;
  v43 = v48;
  v39 = v44;
  v40 = v45;
  if (!MTCAColorMatrixIsIdentity(&v39))
  {
    v17 = v3[2](v3);
    v18 = *MEMORY[0x1E6979D78];
    v59 = @"filterProperties";
    v60 = v18;
    v58 = @"filterType";
    v56 = @"inputColorMatrix";
    v19 = [MEMORY[0x1E696B098] valueWithBytes:? objCType:?];
    v57 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v61 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    [v17 setObject:? forKey:?];
  }

  if (v51[5])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:? forKey:?];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v50, 8);
  if (!v14)
  {
    goto LABEL_24;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v22 setObject:? forKey:?];
  [v22 setObject:? forKey:?];
LABEL_25:
  v23 = v22;

  return v22;
}

id __54__MTRecipeMaterialSettings__visualStyleSetDescription__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

- (id)_newVisualStyleSet
{
  _visualStyleSetDescription = [(MTRecipeMaterialSettings *)self _visualStyleSetDescription];
  if (_visualStyleSetDescription)
  {
    v4 = [MTVisualStyleSet alloc];
    v5 = objc_opt_class();
    recipeName = [(MTRecipeMaterialSettings *)self recipeName];
    v7 = [v5 styleSetNameForStyleSetFromRecipeWithName:?];
    v8 = [MTVisualStyleSet initWithName:v4 visualStyleSetDescription:"initWithName:visualStyleSetDescription:andDescendantDescriptions:" andDescendantDescriptions:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_platformColorsStyleSetName
{
  v2 = [(NSString *)self->_recipeName hasSuffix:?];
  v3 = &kMTCoreMaterialStyleNamePlatformColorsDark;
  if (!v2)
  {
    v3 = &kMTCoreMaterialStyleNamePlatformColorsLight;
  }

  v4 = *v3;

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:objc_opt_class(), self, self->_recipeName, self->_materialSettingsVersion, self->_styles];
  baseMaterialSettings = [(MTRecipeMaterialSettings *)self baseMaterialSettings];
  v5 = baseMaterialSettings;
  if (baseMaterialSettings)
  {
    [v3 appendFormat:baseMaterialSettings];
  }

  [v3 appendString:?];

  return v3;
}

@end