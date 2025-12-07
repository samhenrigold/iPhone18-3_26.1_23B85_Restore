@interface CoreImage_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation CoreImage_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F198F5C;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D90B8 != -1)
  {
    dispatch_once(&qword_2806D90B8, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:*MEMORY[0x277CBFB50] forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"kCIOutputImageKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAB8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputBackgroundImageKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAF0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputImageKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB30] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputTimeKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB38] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputTransformKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB18] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputScaleKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAB0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputAspectRatioKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAC8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputCenterKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB08] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputRadiusKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAA8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputAngleKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB48] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputWidthKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB20] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputSharpnessKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAF8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputIntensityKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAE0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputEVKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB10] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputSaturationKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAD0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputColorKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAC0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputBrightnessKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAD8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputContrastKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB00] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputMaskImageKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB28] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputTargetImageKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFAE8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputExtentKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBFB40] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIInputVersionKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeFilterName" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeFilterDisplayName" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7A8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeFilterCategories" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF790] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeClass" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7F0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeType" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7D0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeMin" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7C8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeMax" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7E8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeSliderMin" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7E0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeSliderMax" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF798] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeDefault" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7C0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeIdentity" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7D8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeName" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7A0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeDisplayName" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF858] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeTime" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF850] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeScalar" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF818] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeDistance" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF7F8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeAngle" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF800] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeBoolean" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF828] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeInteger" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF810] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeCount" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF838] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypePosition" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF830] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeOffset" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF840] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypePosition3" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF848] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeRectangle" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF808] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeColor" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF820] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeImage" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF860] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCIAttributeTypeTransform" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF898] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryDistortionEffect" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8A8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryGeometryAdjustment" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF890] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryCompositeOperation" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryHalftoneEffect" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF880] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryColorAdjustment" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF888] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryColorEffect" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF900] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryTransition" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8F8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryTileEffect" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8A0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryGenerator" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8D8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryReduction" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryGradient" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8F0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryStylize" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8E0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategorySharpen" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF870] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryBlur" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF908] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryVideo" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8E8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryStillImage" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8C8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryInterlaced" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8D0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryNonSquarePixels" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF8C0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryHighDynamicRange" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBF878] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCICategoryBuiltIn" descriptor:dictionary];
}

@end