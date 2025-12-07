@interface PosterKitUtilities
+ (BOOL)saveCompoundLayerStack:(id)stack toWallpaperURL:(id)l error:(id *)error;
+ (BOOL)storeConfiguredPropertiesForPath:(id)path configuredProperties:(id)properties error:(id *)error;
+ (id)archiver;
+ (id)configurationIdentityWithProvider:(id)provider identifier:(id)identifier posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement role:(int64_t)role;
+ (id)configurationWithPath:(id)path;
+ (id)configuredPropertiesWithTitleStyleConfiguration:(id)configuration renderingConfiguration:(id)renderingConfiguration;
+ (id)discreteColorsContentStyleForColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variation:(double)a6;
+ (id)gradientContentStyleForColors:(id)colors gradientType:(unint64_t)type locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
+ (id)loadConfiguredPropertiesFromPosterConfiguration:(id)configuration error:(id *)error;
+ (id)posterColorWithColor:(CGColor *)color preferredStyle:(unint64_t)style localizedName:(id)name;
+ (id)renderingConfigurationWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled;
+ (id)serverPathWithProviderURL:(id)l identity:(id)identity;
+ (id)systemTimeFontConfigurationWithTimeFontIdentifier:(id)identifier weight:(double)weight systemItem:(BOOL)item;
+ (id)titleStyleConfigurationWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1;
+ (id)vibrantMaterialContentStyle;
+ (id)vibrantMonochromeContentStyle;
@end

@implementation PosterKitUtilities

+ (id)archiver
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPRSPosterArchiverClass_softClass;
  v10 = getPRSPosterArchiverClass_softClass;
  if (!getPRSPosterArchiverClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPRSPosterArchiverClass_block_invoke;
    v6[3] = &unk_2781764E8;
    v6[4] = &v7;
    __getPRSPosterArchiverClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] init];

  return v4;
}

+ (id)systemTimeFontConfigurationWithTimeFontIdentifier:(id)identifier weight:(double)weight systemItem:(BOOL)item
{
  itemCopy = item;
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getPRPosterSystemTimeFontConfigurationClass_softClass;
  v16 = getPRPosterSystemTimeFontConfigurationClass_softClass;
  if (!getPRPosterSystemTimeFontConfigurationClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getPRPosterSystemTimeFontConfigurationClass_block_invoke;
    v12[3] = &unk_2781764E8;
    v12[4] = &v13;
    __getPRPosterSystemTimeFontConfigurationClass_block_invoke(v12);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = [[v8 alloc] initWithTimeFontIdentifier:identifierCopy weight:itemCopy systemItem:weight];

  return v10;
}

+ (id)posterColorWithColor:(CGColor *)color preferredStyle:(unint64_t)style localizedName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getPRPosterColorClass_softClass;
  v18 = getPRPosterColorClass_softClass;
  if (!getPRPosterColorClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getPRPosterColorClass_block_invoke;
    v14[3] = &unk_2781764E8;
    v14[4] = &v15;
    __getPRPosterColorClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v10 = [v8 alloc];
  v11 = [objc_alloc(getUIColorClass()) initWithCGColor:color];
  v12 = [v10 initWithColor:v11 preferredStyle:style localizedName:nameCopy];

  return v12;
}

+ (id)titleStyleConfigurationWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1
{
  configuredCopy = configured;
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  styleCopy = style;
  systemCopy = system;
  nameCopy = name;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v21 = getPRPosterTitleStyleConfigurationClass_softClass;
  v30 = getPRPosterTitleStyleConfigurationClass_softClass;
  if (!getPRPosterTitleStyleConfigurationClass_softClass)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __getPRPosterTitleStyleConfigurationClass_block_invoke;
    v26[3] = &unk_2781764E8;
    v26[4] = &v27;
    __getPRPosterTitleStyleConfigurationClass_block_invoke(v26);
    v21 = v28[3];
  }

  v22 = v21;
  _Block_object_dispose(&v27, 8);
  LOBYTE(v25) = enabled;
  v23 = [[v21 alloc] initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy timeNumberingSystem:systemCopy userConfigured:configuredCopy contentsLuminance:luminance alternateDateEnabled:v25 groupName:nameCopy];

  return v23;
}

+ (id)renderingConfigurationWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled
{
  effectsDisabledCopy = effectsDisabled;
  disabledCopy = disabled;
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = getPRPosterRenderingConfigurationClass_softClass;
  v14 = getPRPosterRenderingConfigurationClass_softClass;
  if (!getPRPosterRenderingConfigurationClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getPRPosterRenderingConfigurationClass_block_invoke;
    v10[3] = &unk_2781764E8;
    v10[4] = &v11;
    __getPRPosterRenderingConfigurationClass_block_invoke(v10);
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = [[v6 alloc] initWithDepthEffectDisabled:disabledCopy motionEffectsDisabled:effectsDisabledCopy];

  return v8;
}

+ (id)configuredPropertiesWithTitleStyleConfiguration:(id)configuration renderingConfiguration:(id)renderingConfiguration
{
  v16 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  renderingConfigurationCopy = renderingConfiguration;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getPRPosterConfiguredPropertiesClass_softClass;
  v15 = getPRPosterConfiguredPropertiesClass_softClass;
  if (!getPRPosterConfiguredPropertiesClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getPRPosterConfiguredPropertiesClass_block_invoke;
    v11[3] = &unk_2781764E8;
    v11[4] = &v12;
    __getPRPosterConfiguredPropertiesClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [[v7 alloc] initWithTitleStyleConfiguration:configurationCopy focusConfiguration:0 complicationLayout:0 renderingConfiguration:renderingConfigurationCopy homeScreenConfiguration:0 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];

  return v9;
}

+ (BOOL)storeConfiguredPropertiesForPath:(id)path configuredProperties:(id)properties error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  propertiesCopy = properties;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v9 = getPRPosterPathUtilitiesClass_softClass;
  v17 = getPRPosterPathUtilitiesClass_softClass;
  if (!getPRPosterPathUtilitiesClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getPRPosterPathUtilitiesClass_block_invoke;
    v13[3] = &unk_2781764E8;
    v13[4] = &v14;
    __getPRPosterPathUtilitiesClass_block_invoke(v13);
    v9 = v15[3];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);
  v11 = [v9 storeConfiguredPropertiesForPath:pathCopy configuredProperties:propertiesCopy error:error];

  return v11;
}

+ (id)loadConfiguredPropertiesFromPosterConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  PosterKitLibrary();
  v6 = [configurationCopy pr_loadConfiguredPropertiesWithError:error];

  return v6;
}

+ (id)discreteColorsContentStyleForColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variation:(double)a6
{
  variationCopy = variation;
  vibrantCopy = vibrant;
  v22 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB18];
  colorsCopy = colors;
  v11 = [[v9 alloc] initWithCapacity:{objc_msgSend(colorsCopy, "count")}];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __94__PosterKitUtilities_discreteColorsContentStyleForColors_vibrant_supportsVariation_variation___block_invoke;
  v20 = &unk_2781764C0;
  v21 = v11;
  v12 = v11;
  [colorsCopy enumerateObjectsUsingBlock:&v17];

  v13 = objc_alloc(getPRPosterContentDiscreteColorsStyleClass());
  if (vibrantCopy && variationCopy)
  {
    v14 = [v13 initWithVibrantColors:v12 variation:{a6, v17, v18, v19, v20, v21, v22}];
  }

  else if (variationCopy || !vibrantCopy)
  {
    v14 = [v13 initWithOpaqueColors:v12 variation:{a6, v17, v18, v19, v20, v21, v22}];
  }

  else
  {
    v14 = [v13 initWithVibrantColors:{v12, v17, v18, v19, v20, v21, v22}];
  }

  v15 = v14;

  return v15;
}

void __94__PosterKitUtilities_discreteColorsContentStyleForColors_vibrant_supportsVariation_variation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_alloc(getUIColorClass()) initWithCGColor:v3];

  [v2 addObject:v4];
}

+ (id)gradientContentStyleForColors:(id)colors gradientType:(unint64_t)type locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v9 = point.y;
  v10 = point.x;
  v28 = *MEMORY[0x277D85DE8];
  colorsCopy = colors;
  locationsCopy = locations;
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(colorsCopy, "count")}];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__PosterKitUtilities_gradientContentStyleForColors_gradientType_locations_startPoint_endPoint___block_invoke;
  v21[3] = &unk_2781764C0;
  v16 = v15;
  v22 = v16;
  [colorsCopy enumerateObjectsUsingBlock:v21];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v17 = getPRPosterContentGradientStyleClass_softClass;
  v27 = getPRPosterContentGradientStyleClass_softClass;
  if (!getPRPosterContentGradientStyleClass_softClass)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __getPRPosterContentGradientStyleClass_block_invoke;
    v23[3] = &unk_2781764E8;
    v23[4] = &v24;
    __getPRPosterContentGradientStyleClass_block_invoke(v23);
    v17 = v25[3];
  }

  v18 = v17;
  _Block_object_dispose(&v24, 8);
  v19 = [[v17 alloc] initWithColors:v16 gradientType:type locations:locationsCopy startPoint:v10 endPoint:{v9, x, y}];

  return v19;
}

void __95__PosterKitUtilities_gradientContentStyleForColors_gradientType_locations_startPoint_endPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_alloc(getUIColorClass()) initWithCGColor:v3];

  [v2 addObject:v4];
}

+ (id)vibrantMaterialContentStyle
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPRPosterContentVibrantMaterialStyleClass_softClass;
  v10 = getPRPosterContentVibrantMaterialStyleClass_softClass;
  if (!getPRPosterContentVibrantMaterialStyleClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPRPosterContentVibrantMaterialStyleClass_block_invoke;
    v6[3] = &unk_2781764E8;
    v6[4] = &v7;
    __getPRPosterContentVibrantMaterialStyleClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

+ (id)vibrantMonochromeContentStyle
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPRPosterContentVibrantMonochromeStyleClass_softClass;
  v10 = getPRPosterContentVibrantMonochromeStyleClass_softClass;
  if (!getPRPosterContentVibrantMonochromeStyleClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPRPosterContentVibrantMonochromeStyleClass_block_invoke;
    v6[3] = &unk_2781764E8;
    v6[4] = &v7;
    __getPRPosterContentVibrantMonochromeStyleClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

+ (BOOL)saveCompoundLayerStack:(id)stack toWallpaperURL:(id)l error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v9 = getPISegmentationLoaderClass_softClass;
  v17 = getPISegmentationLoaderClass_softClass;
  if (!getPISegmentationLoaderClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getPISegmentationLoaderClass_block_invoke;
    v13[3] = &unk_2781764E8;
    v13[4] = &v14;
    __getPISegmentationLoaderClass_block_invoke(v13);
    v9 = v15[3];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);
  v11 = [v9 saveSegmentationItem:0 compoundLayerStack:stackCopy style:0 toWallpaperURL:lCopy error:error];

  return v11;
}

+ (id)configurationIdentityWithProvider:(id)provider identifier:(id)identifier posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement role:(int64_t)role
{
  v33 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  identifierCopy = identifier;
  dCopy = d;
  if (role == 1)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v16 = getPFPosterRoleBackdropSymbolLoc_ptr;
    v32 = getPFPosterRoleBackdropSymbolLoc_ptr;
    if (!getPFPosterRoleBackdropSymbolLoc_ptr)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getPFPosterRoleBackdropSymbolLoc_block_invoke;
      v27 = &unk_2781764E8;
      v28 = &v29;
      v18 = PosterFoundationLibrary();
      v30[3] = dlsym(v18, "PFPosterRoleBackdrop");
      getPFPosterRoleBackdropSymbolLoc_ptr = *(v28[1] + 24);
      v16 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (!v16)
    {
      +[PosterKitUtilities configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:];
    }

    goto LABEL_10;
  }

  if (!role)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v16 = getPFPosterRoleIncomingCallSymbolLoc_ptr;
    v32 = getPFPosterRoleIncomingCallSymbolLoc_ptr;
    if (!getPFPosterRoleIncomingCallSymbolLoc_ptr)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getPFPosterRoleIncomingCallSymbolLoc_block_invoke;
      v27 = &unk_2781764E8;
      v28 = &v29;
      v17 = PosterFoundationLibrary();
      v30[3] = dlsym(v17, "PFPosterRoleIncomingCall");
      getPFPosterRoleIncomingCallSymbolLoc_ptr = *(v28[1] + 24);
      v16 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (!v16)
    {
      +[PosterKitUtilities configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:];
    }

LABEL_10:
    v19 = *v16;
    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v20 = getPFServerPosterIdentityClass_softClass;
  v32 = getPFServerPosterIdentityClass_softClass;
  if (!getPFServerPosterIdentityClass_softClass)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getPFServerPosterIdentityClass_block_invoke;
    v27 = &unk_2781764E8;
    v28 = &v29;
    __getPFServerPosterIdentityClass_block_invoke(&v24);
    v20 = v30[3];
  }

  v21 = v20;
  _Block_object_dispose(&v29, 8);
  v22 = [v20 configurationIdentityWithProvider:providerCopy identifier:identifierCopy role:v19 posterUUID:dCopy version:version supplement:supplement];

  return v22;
}

+ (id)serverPathWithProviderURL:(id)l identity:(id)identity
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getPFServerPosterPathClass_softClass;
  v15 = getPFServerPosterPathClass_softClass;
  if (!getPFServerPosterPathClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getPFServerPosterPathClass_block_invoke;
    v11[3] = &unk_2781764E8;
    v11[4] = &v12;
    __getPFServerPosterPathClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v7 pathWithProviderURL:lCopy identity:identityCopy];

  return v9;
}

+ (id)configurationWithPath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getPRSPosterConfigurationClass_softClass;
  v12 = getPRSPosterConfigurationClass_softClass;
  if (!getPRSPosterConfigurationClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getPRSPosterConfigurationClass_block_invoke;
    v8[3] = &unk_2781764E8;
    v8[4] = &v9;
    __getPRSPosterConfigurationClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithPath:pathCopy];

  return v6;
}

+ (void)configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __getPRSPosterArchiverClass_block_invoke_cold_1();
}

@end