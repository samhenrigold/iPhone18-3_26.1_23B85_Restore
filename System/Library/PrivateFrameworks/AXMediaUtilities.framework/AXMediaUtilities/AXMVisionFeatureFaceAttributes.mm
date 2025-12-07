@interface AXMVisionFeatureFaceAttributes
+ (id)unitTestingFaceAttributes;
+ (id)unitTestingFaceAttributesForAge:(int64_t)age gender:(int64_t)gender eyes:(int64_t)eyes smiling:(int64_t)smiling facialHair:(int64_t)hair hairColor:(int64_t)color baldness:(int64_t)baldness glasses:(int64_t)self0 eyeMakeup:(int64_t)self1 lipMakeup:(int64_t)self2 faceMask:(int64_t)self3 ethnicity:(int64_t)self4 expression:(int64_t)self5 facialHairV2:(int64_t)self6 hairType:(int64_t)self7 headGear:(int64_t)self8 pose:(int64_t)self9 skinTone:(int64_t)tone excludeOptions:(int64_t)options;
- (AXMVisionFeatureFaceAttributes)initWithCoder:(id)coder;
- (AXMVisionFeatureFaceAttributes)initWithVisionFaceAttributes:(id)attributes;
- (id)_accessibilityIdentifierForAgeCategory;
- (id)_accessibilityIdentifierForEthnicityCategory;
- (id)_accessibilityIdentifierForExpressionCategory;
- (id)_accessibilityIdentifierForEyesCategory;
- (id)_accessibilityIdentifierForFaceHairV2Category;
- (id)_accessibilityIdentifierForFacemaskCategory;
- (id)_accessibilityIdentifierForGenderCategory;
- (id)_accessibilityIdentifierForGlassesCategory;
- (id)_accessibilityIdentifierForHairColorCategory;
- (id)_accessibilityIdentifierForHairTypeCategory;
- (id)_accessibilityIdentifierForHeadgearCategory;
- (id)_accessibilityIdentifierForMakeupEyesCategory;
- (id)_accessibilityIdentifierForMakeupLipsCategory;
- (id)_accessibilityIdentifierForPoseCategory;
- (id)_accessibilityIdentifierForSkintoneCategory;
- (id)_accessibilityLabelForAccessoryDetails;
- (id)_accessibilityLabelForDemographics;
- (id)_accessibilityLabelForExpressionDetails;
- (id)_accessibilityLabelForFacialHairDetails;
- (id)_accessibilityLabelForHairDetails;
- (id)_accessibilityLabelFormatterForAgeCategory;
- (id)_accessibilityLabelFormatterForExpressionCategory;
- (id)_accessibilityLabelFormatterForFaceHairV2Category;
- (id)_accessibilityLabelFormatterForFaceMaskCategory;
- (id)_accessibilityLabelFormatterForGlassesCategory;
- (id)_accessibilityLabelFormatterForHairColorCategory;
- (id)_accessibilityLabelFormatterForHairTypeCategory;
- (id)_accessibilityLabelFormatterForPoseCategory;
- (id)accessibilityLabelAndConfidenceMappingForAttributes;
- (id)accessibilityLabelForAttributes;
- (int64_t)_AXMAgeCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMEthnicityCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMExpressionCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMEyesCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMFaceHairV2CategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMFacemaskCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMGenderCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMGlassesCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMHairColorCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMHairtypeCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMHeadgearCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMMakeupEyesCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMMakeupLipsCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMPoseCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMSkintoneCategoryForVisionCategoryIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureFaceAttributes

- (AXMVisionFeatureFaceAttributes)initWithVisionFaceAttributes:(id)attributes
{
  attributesCopy = attributes;
  v97.receiver = self;
  v97.super_class = AXMVisionFeatureFaceAttributes;
  v5 = [(AXMVisionFeatureFaceAttributes *)&v97 init];
  if (v5)
  {
    ageCategory = [attributesCopy ageCategory];
    label = [ageCategory label];
    identifier = [label identifier];
    v5->_axAgeCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMAgeCategoryForVisionCategoryIdentifier:identifier];

    ageCategory2 = [attributesCopy ageCategory];
    label2 = [ageCategory2 label];
    [label2 confidence];
    v5->_axAgeCategoryConfidence = v11;

    vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = [attributesCopy VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
    label3 = [vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE label];
    identifier2 = [label3 identifier];
    v5->_axGenderCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMGenderCategoryForVisionCategoryIdentifier:identifier2];

    vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE2 = [attributesCopy VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
    label4 = [vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE2 label];
    [label4 confidence];
    v5->_axGenderCategoryConfidence = v17;

    eyesCategory = [attributesCopy eyesCategory];
    label5 = [eyesCategory label];
    identifier3 = [label5 identifier];
    v5->_axEyesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMEyesCategoryForVisionCategoryIdentifier:identifier3];

    eyesCategory2 = [attributesCopy eyesCategory];
    label6 = [eyesCategory2 label];
    [label6 confidence];
    v5->_axEyesCategoryConfidence = v23;

    hairColorCategory = [attributesCopy hairColorCategory];
    label7 = [hairColorCategory label];
    identifier4 = [label7 identifier];
    v5->_axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHairColorCategoryForVisionCategoryIdentifier:identifier4];

    hairColorCategory2 = [attributesCopy hairColorCategory];
    label8 = [hairColorCategory2 label];
    [label8 confidence];
    v5->_axHairColorCategoryConfidence = v29;

    glassesCategory = [attributesCopy glassesCategory];
    label9 = [glassesCategory label];
    identifier5 = [label9 identifier];
    v5->_axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMGlassesCategoryForVisionCategoryIdentifier:identifier5];

    glassesCategory2 = [attributesCopy glassesCategory];
    label10 = [glassesCategory2 label];
    [label10 confidence];
    v5->_axGlassesCategoryConfidence = v35;

    makeupEyesCategory = [attributesCopy makeupEyesCategory];
    label11 = [makeupEyesCategory label];
    identifier6 = [label11 identifier];
    v5->_axMakeupEyesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMMakeupEyesCategoryForVisionCategoryIdentifier:identifier6];

    makeupEyesCategory2 = [attributesCopy makeupEyesCategory];
    label12 = [makeupEyesCategory2 label];
    [label12 confidence];
    v5->_axMakeupEyesCategoryConfidence = v41;

    makeupLipsCategory = [attributesCopy makeupLipsCategory];
    label13 = [makeupLipsCategory label];
    identifier7 = [label13 identifier];
    v5->_axMakeupLipsCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMMakeupLipsCategoryForVisionCategoryIdentifier:identifier7];

    makeupLipsCategory2 = [attributesCopy makeupLipsCategory];
    label14 = [makeupLipsCategory2 label];
    [label14 confidence];
    v5->_axMakeupLipsCategoryConfidence = v47;

    facemaskCategory = [attributesCopy facemaskCategory];
    label15 = [facemaskCategory label];
    identifier8 = [label15 identifier];
    v5->_axFacemaskCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMFacemaskCategoryForVisionCategoryIdentifier:identifier8];

    facemaskCategory2 = [attributesCopy facemaskCategory];
    label16 = [facemaskCategory2 label];
    [label16 confidence];
    v5->_axFacemaskCategoryConfidence = v53;

    vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = [attributesCopy VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    label17 = [vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB label];
    identifier9 = [label17 identifier];
    v5->_axEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMEthnicityCategoryForVisionCategoryIdentifier:identifier9];

    vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB2 = [attributesCopy VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    label18 = [vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB2 label];
    [label18 confidence];
    v5->_axEthnicityCategoryConfidence = v59;

    vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = [attributesCopy VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    label19 = [vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 label];
    identifier10 = [label19 identifier];
    v5->_axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMExpressionCategoryForVisionCategoryIdentifier:identifier10];

    vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI12 = [attributesCopy VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    label20 = [vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI12 label];
    [label20 confidence];
    v5->_axExpressionCategoryConfidence = v65;

    vN2riiZbQrloRhCzYW56f0rk4N3ROe151S = [attributesCopy VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    label21 = [vN2riiZbQrloRhCzYW56f0rk4N3ROe151S label];
    identifier11 = [label21 identifier];
    v5->_axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)v5 _AXMFaceHairV2CategoryForVisionCategoryIdentifier:identifier11];

    vN2riiZbQrloRhCzYW56f0rk4N3ROe151S2 = [attributesCopy VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    label22 = [vN2riiZbQrloRhCzYW56f0rk4N3ROe151S2 label];
    [label22 confidence];
    v5->_axFaceHairV2CategoryConfidence = v71;

    vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = [attributesCopy VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    label23 = [vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk label];
    identifier12 = [label23 identifier];
    v5->_axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHairtypeCategoryForVisionCategoryIdentifier:identifier12];

    vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk2 = [attributesCopy VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    label24 = [vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk2 label];
    [label24 confidence];
    v5->_axHairTypeCategoryConfidence = v77;

    vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = [attributesCopy VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    label25 = [vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP label];
    identifier13 = [label25 identifier];
    v5->_axHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHeadgearCategoryForVisionCategoryIdentifier:identifier13];

    vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP2 = [attributesCopy VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    label26 = [vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP2 label];
    [label26 confidence];
    v5->_axHeadgearCategoryConfidence = v83;

    vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = [attributesCopy VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    label27 = [vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk label];
    identifier14 = [label27 identifier];
    v5->_axPoseCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMPoseCategoryForVisionCategoryIdentifier:identifier14];

    vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk2 = [attributesCopy VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    label28 = [vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk2 label];
    [label28 confidence];
    v5->_axPoseCategoryConfidence = v89;

    vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = [attributesCopy VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    label29 = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq label];
    identifier15 = [label29 identifier];
    v5->_axSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMSkintoneCategoryForVisionCategoryIdentifier:identifier15];

    vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq2 = [attributesCopy VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    label30 = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq2 label];
    [label30 confidence];
    v5->_axSkintoneCategoryConfidence = v95;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axAgeCategory](self forKey:{"axAgeCategory"), @"age"}];
  [(AXMVisionFeatureFaceAttributes *)self axAgeCategoryConfidence];
  *&v4 = v4;
  [coderCopy encodeFloat:@"ageConfidence" forKey:v4];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axGenderCategory](self forKey:{"axGenderCategory"), @"gender"}];
  [(AXMVisionFeatureFaceAttributes *)self axGenderCategoryConfidence];
  *&v5 = v5;
  [coderCopy encodeFloat:@"genderConfidence" forKey:v5];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axEyesCategory](self forKey:{"axEyesCategory"), @"eyes"}];
  [(AXMVisionFeatureFaceAttributes *)self axEyesCategoryConfidence];
  *&v6 = v6;
  [coderCopy encodeFloat:@"eyesConfidence" forKey:v6];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axSmilingCategory](self forKey:{"axSmilingCategory"), @"smiling"}];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axFaceHairCategory](self forKey:{"axFaceHairCategory"), @"faceHair"}];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axHairColorCategory](self forKey:{"axHairColorCategory"), @"hairColor"}];
  [(AXMVisionFeatureFaceAttributes *)self axHairColorCategoryConfidence];
  *&v7 = v7;
  [coderCopy encodeFloat:@"hairColorConfidence" forKey:v7];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axBaldCategory](self forKey:{"axBaldCategory"), @"bald"}];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axGlassesCategory](self forKey:{"axGlassesCategory"), @"glasses"}];
  [(AXMVisionFeatureFaceAttributes *)self axGlassesCategoryConfidence];
  *&v8 = v8;
  [coderCopy encodeFloat:@"glassesConfidence" forKey:v8];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axMakeupEyesCategory](self forKey:{"axMakeupEyesCategory"), @"makeupEyes"}];
  [(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategoryConfidence];
  *&v9 = v9;
  [coderCopy encodeFloat:@"makeupEyesConfidence" forKey:v9];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axMakeupLipsCategory](self forKey:{"axMakeupLipsCategory"), @"makeupLips"}];
  [(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategoryConfidence];
  *&v10 = v10;
  [coderCopy encodeFloat:@"makeupLipsConfidence" forKey:v10];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axFacemaskCategory](self forKey:{"axFacemaskCategory"), @"facemask"}];
  [(AXMVisionFeatureFaceAttributes *)self axFacemaskCategoryConfidence];
  *&v11 = v11;
  [coderCopy encodeFloat:@"facemaskConfidence" forKey:v11];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axEthnicityCategory](self forKey:{"axEthnicityCategory"), @"ethnicity"}];
  [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategoryConfidence];
  *&v12 = v12;
  [coderCopy encodeFloat:@"ethnicityConfidence" forKey:v12];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axExpressionCategory](self forKey:{"axExpressionCategory"), @"expression"}];
  [(AXMVisionFeatureFaceAttributes *)self axExpressionCategoryConfidence];
  *&v13 = v13;
  [coderCopy encodeFloat:@"expressionConfidence" forKey:v13];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axFaceHairV2Category](self forKey:{"axFaceHairV2Category"), @"faceHairV2"}];
  [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2CategoryConfidence];
  *&v14 = v14;
  [coderCopy encodeFloat:@"faceHairV2Confidence" forKey:v14];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axHairTypeCategory](self forKey:{"axHairTypeCategory"), @"hairType"}];
  [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategoryConfidence];
  *&v15 = v15;
  [coderCopy encodeFloat:@"hairTypeConfidence" forKey:v15];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axHeadgearCategory](self forKey:{"axHeadgearCategory"), @"headgear"}];
  [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategoryConfidence];
  *&v16 = v16;
  [coderCopy encodeFloat:@"headgearConfidence" forKey:v16];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axPoseCategory](self forKey:{"axPoseCategory"), @"pose"}];
  [(AXMVisionFeatureFaceAttributes *)self axPoseCategoryConfidence];
  *&v17 = v17;
  [coderCopy encodeFloat:@"poseConfidence" forKey:v17];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axSkintoneCategory](self forKey:{"axSkintoneCategory"), @"skintone"}];
  [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategoryConfidence];
  *&v18 = v18;
  [coderCopy encodeFloat:@"skintoneConfidence" forKey:v18];
}

- (AXMVisionFeatureFaceAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = AXMVisionFeatureFaceAttributes;
  v5 = [(AXMVisionFeatureFaceAttributes *)&v22 init];
  if (v5)
  {
    v5->_axAgeCategory = [coderCopy decodeIntegerForKey:@"age"];
    [coderCopy decodeFloatForKey:@"ageConfidence"];
    v5->_axAgeCategoryConfidence = v6;
    v5->_axGenderCategory = [coderCopy decodeIntegerForKey:@"gender"];
    [coderCopy decodeFloatForKey:@"genderConfidence"];
    v5->_axGenderCategoryConfidence = v7;
    v5->_axEyesCategory = [coderCopy decodeIntegerForKey:@"eyes"];
    [coderCopy decodeFloatForKey:@"eyesConfidence"];
    v5->_axEyesCategoryConfidence = v8;
    v5->_axSmilingCategory = [coderCopy decodeIntegerForKey:@"smiling"];
    v5->_axFaceHairCategory = [coderCopy decodeIntegerForKey:@"faceHair"];
    v5->_axHairColorCategory = [coderCopy decodeIntegerForKey:@"hairColor"];
    [coderCopy decodeFloatForKey:@"hairColorConfidence"];
    v5->_axHairColorCategoryConfidence = v9;
    v5->_axBaldCategory = [coderCopy decodeIntegerForKey:@"bald"];
    v5->_axGlassesCategory = [coderCopy decodeIntegerForKey:@"glasses"];
    [coderCopy decodeFloatForKey:@"glassesConfidence"];
    v5->_axGlassesCategoryConfidence = v10;
    v5->_axMakeupEyesCategory = [coderCopy decodeIntegerForKey:@"makeupEyes"];
    [coderCopy decodeFloatForKey:@"makeupEyesConfidence"];
    v5->_axMakeupEyesCategoryConfidence = v11;
    v5->_axMakeupLipsCategory = [coderCopy decodeIntegerForKey:@"makeupLips"];
    [coderCopy decodeFloatForKey:@"makeupLipsConfidence"];
    v5->_axMakeupLipsCategoryConfidence = v12;
    v5->_axFacemaskCategory = [coderCopy decodeIntegerForKey:@"facemask"];
    [coderCopy decodeFloatForKey:@"facemaskConfidence"];
    v5->_axFacemaskCategoryConfidence = v13;
    v5->_axEthnicityCategory = [coderCopy decodeIntegerForKey:@"ethnicity"];
    [coderCopy decodeFloatForKey:@"ethnicityConfidence"];
    v5->_axEthnicityCategoryConfidence = v14;
    v5->_axExpressionCategory = [coderCopy decodeIntegerForKey:@"expression"];
    [coderCopy decodeFloatForKey:@"expressionConfidence"];
    v5->_axExpressionCategoryConfidence = v15;
    v5->_axFaceHairV2Category = [coderCopy decodeIntegerForKey:@"faceHairV2"];
    [coderCopy decodeFloatForKey:@"faceHairV2Confidence"];
    v5->_axFaceHairV2CategoryConfidence = v16;
    v5->_axHairTypeCategory = [coderCopy decodeIntegerForKey:@"hairType"];
    [coderCopy decodeFloatForKey:@"hairTypeConfidence"];
    v5->_axHairTypeCategoryConfidence = v17;
    v5->_axHeadgearCategory = [coderCopy decodeIntegerForKey:@"headgear"];
    [coderCopy decodeFloatForKey:@"headgearConfidence"];
    v5->_axHeadgearCategoryConfidence = v18;
    v5->_axPoseCategory = [coderCopy decodeIntegerForKey:@"pose"];
    [coderCopy decodeFloatForKey:@"poseConfidence"];
    v5->_axPoseCategoryConfidence = v19;
    v5->_axSkintoneCategory = [coderCopy decodeIntegerForKey:@"skintone"];
    [coderCopy decodeFloatForKey:@"skintoneConfidence"];
    v5->_axSkintoneCategoryConfidence = v20;
  }

  return v5;
}

- (int64_t)_AXMAgeCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMAgeCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMAgeCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMAgeCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMAgeCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = getVNFaceAttributeAgeBabySymbolLoc_ptr;
  v25 = getVNFaceAttributeAgeBabySymbolLoc_ptr;
  if (!getVNFaceAttributeAgeBabySymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v23[3] = dlsym(v5, "VNFaceAttributeAgeBaby");
    getVNFaceAttributeAgeBabySymbolLoc_ptr = v23[3];
    v4 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = *v4;
  v28[0] = &unk_1F240A690;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getVNFaceAttributeAgeChildSymbolLoc_ptr;
  v25 = getVNFaceAttributeAgeChildSymbolLoc_ptr;
  v26[0] = v6;
  if (!getVNFaceAttributeAgeChildSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v23[3] = dlsym(v8, "VNFaceAttributeAgeChild");
    getVNFaceAttributeAgeChildSymbolLoc_ptr = v23[3];
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = *v7;
  v26[1] = v9;
  v28[1] = &unk_1F240A6A8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr;
  v25 = getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr;
  if (!getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v23[3] = dlsym(v11, "VNFaceAttributeAgeYoungAdult");
    getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr = v23[3];
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *v10;
  v26[2] = v12;
  v28[2] = &unk_1F240A6C0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v13 = getVNFaceAttributeAgeAdultSymbolLoc_ptr;
  v25 = getVNFaceAttributeAgeAdultSymbolLoc_ptr;
  if (!getVNFaceAttributeAgeAdultSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v23[3] = dlsym(v14, "VNFaceAttributeAgeAdult");
    getVNFaceAttributeAgeAdultSymbolLoc_ptr = v23[3];
    v13 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = *v13;
  v26[3] = v15;
  v28[3] = &unk_1F240A6D8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v16 = getVNFaceAttributeAgeSeniorSymbolLoc_ptr;
  v25 = getVNFaceAttributeAgeSeniorSymbolLoc_ptr;
  if (!getVNFaceAttributeAgeSeniorSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v23[3] = dlsym(v17, "VNFaceAttributeAgeSenior");
    getVNFaceAttributeAgeSeniorSymbolLoc_ptr = v23[3];
    v16 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v16)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v27 = *v16;
  v28[4] = &unk_1F240A6F0;
  v18 = MEMORY[0x1E695DF20];
  v19 = v27;
  v20 = [v18 dictionaryWithObjects:v28 forKeys:v26 count:5];
  v21 = _AXMAgeCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMAgeCategoryForVisionCategoryIdentifier__categoryMap = v20;
}

- (int64_t)_AXMGenderCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMGenderCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMGenderCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __80__AXMVisionFeatureFaceAttributes__AXMGenderCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr;
  v16 = getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr;
  if (!getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v14[3] = dlsym(v5, "VN1yPD9G185LIMKFd9RgandG6vUu4B3DZk");
    getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = *v4;
  v19[0] = &unk_1F240A690;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr;
  v16 = getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr;
  v17 = v6;
  if (!getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v14[3] = dlsym(v8, "VN6cM1E1jfvMnUZoEeDjinPOtJKpacqIpr");
    getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr = v14[3];
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v7)
  {
LABEL_8:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v18 = *v7;
  v19[1] = &unk_1F240A6A8;
  v9 = MEMORY[0x1E695DF20];
  v10 = v18;
  v11 = [v9 dictionaryWithObjects:v19 forKeys:&v17 count:2];
  v12 = _AXMGenderCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMGenderCategoryForVisionCategoryIdentifier__categoryMap = v11;
}

- (int64_t)_AXMEyesCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMEyesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMEyesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMEyesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMEyesCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __78__AXMVisionFeatureFaceAttributes__AXMEyesCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
  v16 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
  if (!getVNFaceAttributeEyesClosedSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v14[3] = dlsym(v5, "VNFaceAttributeEyesClosed");
    getVNFaceAttributeEyesClosedSymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = *v4;
  v19[0] = &unk_1F240A690;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = getVNFaceAttributeEyesOpenSymbolLoc_ptr;
  v16 = getVNFaceAttributeEyesOpenSymbolLoc_ptr;
  v17 = v6;
  if (!getVNFaceAttributeEyesOpenSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v14[3] = dlsym(v8, "VNFaceAttributeEyesOpen");
    getVNFaceAttributeEyesOpenSymbolLoc_ptr = v14[3];
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v7)
  {
LABEL_8:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v18 = *v7;
  v19[1] = &unk_1F240A6A8;
  v9 = MEMORY[0x1E695DF20];
  v10 = v18;
  v11 = [v9 dictionaryWithObjects:v19 forKeys:&v17 count:2];
  v12 = _AXMEyesCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMEyesCategoryForVisionCategoryIdentifier__categoryMap = v11;
}

- (int64_t)_AXMHairColorCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMHairColorCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHairColorCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHairColorCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __83__AXMVisionFeatureFaceAttributes__AXMHairColorCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v4 = getVNFaceAttributeHairColorBlackSymbolLoc_ptr;
  v28 = getVNFaceAttributeHairColorBlackSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorBlackSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v26[3] = dlsym(v5, "VNFaceAttributeHairColorBlack");
    getVNFaceAttributeHairColorBlackSymbolLoc_ptr = v26[3];
    v4 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = *v4;
  v31[0] = &unk_1F240A690;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v7 = getVNFaceAttributeHairColorBlondeSymbolLoc_ptr;
  v28 = getVNFaceAttributeHairColorBlondeSymbolLoc_ptr;
  v29[0] = v6;
  if (!getVNFaceAttributeHairColorBlondeSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v26[3] = dlsym(v8, "VNFaceAttributeHairColorBlonde");
    getVNFaceAttributeHairColorBlondeSymbolLoc_ptr = v26[3];
    v7 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  v29[1] = v9;
  v31[1] = &unk_1F240A6A8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v10 = getVNFaceAttributeHairColorBrownSymbolLoc_ptr;
  v28 = getVNFaceAttributeHairColorBrownSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorBrownSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v26[3] = dlsym(v11, "VNFaceAttributeHairColorBrown");
    getVNFaceAttributeHairColorBrownSymbolLoc_ptr = v26[3];
    v10 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = *v10;
  v29[2] = v12;
  v31[2] = &unk_1F240A6C0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v13 = getVNFaceAttributeHairColorGraySymbolLoc_ptr;
  v28 = getVNFaceAttributeHairColorGraySymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorGraySymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v26[3] = dlsym(v14, "VNFaceAttributeHairColorGray");
    getVNFaceAttributeHairColorGraySymbolLoc_ptr = v26[3];
    v13 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v13)
  {
    goto LABEL_20;
  }

  v15 = *v13;
  v29[3] = v15;
  v31[3] = &unk_1F240A6D8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v16 = getVNFaceAttributeHairColorRedSymbolLoc_ptr;
  v28 = getVNFaceAttributeHairColorRedSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorRedSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v26[3] = dlsym(v17, "VNFaceAttributeHairColorRed");
    getVNFaceAttributeHairColorRedSymbolLoc_ptr = v26[3];
    v16 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = *v16;
  v29[4] = v18;
  v31[4] = &unk_1F240A6F0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v19 = getVNFaceAttributeHairColorWhiteSymbolLoc_ptr;
  v28 = getVNFaceAttributeHairColorWhiteSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorWhiteSymbolLoc_ptr)
  {
    v20 = VisionLibrary();
    v26[3] = dlsym(v20, "VNFaceAttributeHairColorWhite");
    getVNFaceAttributeHairColorWhiteSymbolLoc_ptr = v26[3];
    v19 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v19)
  {
LABEL_20:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v30 = *v19;
  v31[5] = &unk_1F240A708;
  v21 = MEMORY[0x1E695DF20];
  v22 = v30;
  v23 = [v21 dictionaryWithObjects:v31 forKeys:v29 count:6];
  v24 = _AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap = v23;
}

- (int64_t)_AXMGlassesCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMGlassesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMGlassesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMGlassesCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __81__AXMVisionFeatureFaceAttributes__AXMGlassesCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr;
  v19 = getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr;
  if (!getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v17[3] = dlsym(v5, "VNFaceAttributeGlassesPrescription");
    getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr = v17[3];
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *v4;
  v22[0] = &unk_1F240A690;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr;
  v19 = getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr;
  v20[0] = v6;
  if (!getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v17[3] = dlsym(v8, "VNFaceAttributeGlassesSunglasses");
    getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr = v17[3];
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = *v7;
  v20[1] = v9;
  v22[1] = &unk_1F240A6A8;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getVNFaceAttributeGlassesNoneSymbolLoc_ptr;
  v19 = getVNFaceAttributeGlassesNoneSymbolLoc_ptr;
  if (!getVNFaceAttributeGlassesNoneSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v17[3] = dlsym(v11, "VNFaceAttributeGlassesNone");
    getVNFaceAttributeGlassesNoneSymbolLoc_ptr = v17[3];
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
LABEL_11:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v21 = *v10;
  v22[2] = &unk_1F240A6C0;
  v12 = MEMORY[0x1E695DF20];
  v13 = v21;
  v14 = [v12 dictionaryWithObjects:v22 forKeys:v20 count:3];
  v15 = _AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap = v14;
}

- (int64_t)_AXMMakeupEyesCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMMakeupEyesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMMakeupEyesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMMakeupEyesCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __84__AXMVisionFeatureFaceAttributes__AXMMakeupEyesCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr;
  v19 = getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v17[3] = dlsym(v5, "VNFaceAttributeMakeupEyesUnsure");
    getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr = v17[3];
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *v4;
  v22[0] = &unk_1F240A720;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr;
  v19 = getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr;
  v20[0] = v6;
  if (!getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v17[3] = dlsym(v8, "VNFaceAttributeMakeupEyesNone");
    getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr = v17[3];
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = *v7;
  v20[1] = v9;
  v22[1] = &unk_1F240A690;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getVNFaceAttributeMakeupEyesSymbolLoc_ptr;
  v19 = getVNFaceAttributeMakeupEyesSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupEyesSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v17[3] = dlsym(v11, "VNFaceAttributeMakeupEyes");
    getVNFaceAttributeMakeupEyesSymbolLoc_ptr = v17[3];
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
LABEL_11:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v21 = *v10;
  v22[2] = &unk_1F240A6A8;
  v12 = MEMORY[0x1E695DF20];
  v13 = v21;
  v14 = [v12 dictionaryWithObjects:v22 forKeys:v20 count:3];
  v15 = _AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap = v14;
}

- (int64_t)_AXMMakeupLipsCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMMakeupLipsCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMMakeupLipsCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMMakeupLipsCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __84__AXMVisionFeatureFaceAttributes__AXMMakeupLipsCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr;
  v19 = getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v17[3] = dlsym(v5, "VNFaceAttributeMakeupLipsUnsure");
    getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr = v17[3];
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *v4;
  v22[0] = &unk_1F240A720;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr;
  v19 = getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr;
  v20[0] = v6;
  if (!getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v17[3] = dlsym(v8, "VNFaceAttributeMakeupLipsNone");
    getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr = v17[3];
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = *v7;
  v20[1] = v9;
  v22[1] = &unk_1F240A690;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getVNFaceAttributeMakeupLipsSymbolLoc_ptr;
  v19 = getVNFaceAttributeMakeupLipsSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupLipsSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v17[3] = dlsym(v11, "VNFaceAttributeMakeupLips");
    getVNFaceAttributeMakeupLipsSymbolLoc_ptr = v17[3];
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
LABEL_11:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v21 = *v10;
  v22[2] = &unk_1F240A6A8;
  v12 = MEMORY[0x1E695DF20];
  v13 = v21;
  v14 = [v12 dictionaryWithObjects:v22 forKeys:v20 count:3];
  v15 = _AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap = v14;
}

- (int64_t)_AXMFacemaskCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMFacemaskCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMFacemaskCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMFacemaskCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __82__AXMVisionFeatureFaceAttributes__AXMFacemaskCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getVNFaceAttributeFacemaskNoneSymbolLoc_ptr;
  v16 = getVNFaceAttributeFacemaskNoneSymbolLoc_ptr;
  if (!getVNFaceAttributeFacemaskNoneSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v14[3] = dlsym(v5, "VNFaceAttributeFacemaskNone");
    getVNFaceAttributeFacemaskNoneSymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = *v4;
  v19[0] = &unk_1F240A690;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = getVNFaceAttributeFacemaskSymbolLoc_ptr;
  v16 = getVNFaceAttributeFacemaskSymbolLoc_ptr;
  v17 = v6;
  if (!getVNFaceAttributeFacemaskSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v14[3] = dlsym(v8, "VNFaceAttributeFacemask");
    getVNFaceAttributeFacemaskSymbolLoc_ptr = v14[3];
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v7)
  {
LABEL_8:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v18 = *v7;
  v19[1] = &unk_1F240A6A8;
  v9 = MEMORY[0x1E695DF20];
  v10 = v18;
  v11 = [v9 dictionaryWithObjects:v19 forKeys:&v17 count:2];
  v12 = _AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap = v11;
}

- (int64_t)_AXMEthnicityCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMEthnicityCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMEthnicityCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMEthnicityCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __83__AXMVisionFeatureFaceAttributes__AXMEthnicityCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr;
  v25 = getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr;
  if (!getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v23[3] = dlsym(v5, "VN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2p");
    getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr = v23[3];
    v4 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = *v4;
  v28[0] = &unk_1F240A690;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr;
  v25 = getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr;
  v26[0] = v6;
  if (!getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v23[3] = dlsym(v8, "VN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIp");
    getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr = v23[3];
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = *v7;
  v26[1] = v9;
  v28[1] = &unk_1F240A6A8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr;
  v25 = getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr;
  if (!getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v23[3] = dlsym(v11, "VN2AhEqI0IOCJAaCX6zovlg85aFZ80JfES");
    getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr = v23[3];
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *v10;
  v26[2] = v12;
  v28[2] = &unk_1F240A6C0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v13 = getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr;
  v25 = getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr;
  if (!getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v23[3] = dlsym(v14, "VN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2");
    getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr = v23[3];
    v13 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = *v13;
  v26[3] = v15;
  v28[3] = &unk_1F240A6D8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v16 = getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr;
  v25 = getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr;
  if (!getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v23[3] = dlsym(v17, "VN6pbJdmseepvIGYzcDyryle1xGdZEWhHN");
    getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr = v23[3];
    v16 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v16)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v27 = *v16;
  v28[4] = &unk_1F240A6F0;
  v18 = MEMORY[0x1E695DF20];
  v19 = v27;
  v20 = [v18 dictionaryWithObjects:v28 forKeys:v26 count:5];
  v21 = _AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap = v20;
}

- (int64_t)_AXMExpressionCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMExpressionCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMExpressionCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMExpressionCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __84__AXMVisionFeatureFaceAttributes__AXMExpressionCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v4 = getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr;
  v28 = getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr;
  if (!getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v26[3] = dlsym(v5, "VN607hNga4JKRc1ljftiy9QfPCqbXQmLP4");
    getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr = v26[3];
    v4 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = *v4;
  v31[0] = &unk_1F240A690;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v7 = getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr;
  v28 = getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr;
  v29[0] = v6;
  if (!getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v26[3] = dlsym(v8, "VN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQIS");
    getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr = v26[3];
    v7 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  v29[1] = v9;
  v31[1] = &unk_1F240A6A8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v10 = getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr;
  v28 = getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr;
  if (!getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v26[3] = dlsym(v11, "VN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRX");
    getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr = v26[3];
    v10 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = *v10;
  v29[2] = v12;
  v31[2] = &unk_1F240A6C0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v13 = getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr;
  v28 = getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr;
  if (!getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v26[3] = dlsym(v14, "VN4lC1NTVMt6oWugtej0fqgS3z5p60aMup");
    getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr = v26[3];
    v13 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v13)
  {
    goto LABEL_20;
  }

  v15 = *v13;
  v29[3] = v15;
  v31[3] = &unk_1F240A6D8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v16 = getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr;
  v28 = getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr;
  if (!getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v26[3] = dlsym(v17, "VN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmI");
    getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr = v26[3];
    v16 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = *v16;
  v29[4] = v18;
  v31[4] = &unk_1F240A6F0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v19 = getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr;
  v28 = getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr;
  if (!getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr)
  {
    v20 = VisionLibrary();
    v26[3] = dlsym(v20, "VN6i04vrZluouTItkCUMtS916cLgTyvODX");
    getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr = v26[3];
    v19 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v19)
  {
LABEL_20:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v30 = *v19;
  v31[5] = &unk_1F240A720;
  v21 = MEMORY[0x1E695DF20];
  v22 = v30;
  v23 = [v21 dictionaryWithObjects:v31 forKeys:v29 count:6];
  v24 = _AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap = v23;
}

- (int64_t)_AXMFaceHairV2CategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMFaceHairV2CategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMFaceHairV2CategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMFaceHairV2CategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __84__AXMVisionFeatureFaceAttributes__AXMFaceHairV2CategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[7] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v4 = getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr;
  v31 = getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr;
  if (!getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v29[3] = dlsym(v5, "VN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjm");
    getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr = v29[3];
    v4 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v4)
  {
    goto LABEL_23;
  }

  v6 = *v4;
  v34[0] = &unk_1F240A6A8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v7 = getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr;
  v31 = getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr;
  v32[0] = v6;
  if (!getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v29[3] = dlsym(v8, "VN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cF");
    getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr = v29[3];
    v7 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *v7;
  v32[1] = v9;
  v34[1] = &unk_1F240A6C0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v10 = getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr;
  v31 = getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr;
  if (!getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v29[3] = dlsym(v11, "VN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00");
    getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr = v29[3];
    v10 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v10)
  {
    goto LABEL_23;
  }

  v12 = *v10;
  v32[2] = v12;
  v34[2] = &unk_1F240A6F0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v13 = getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr;
  v31 = getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr;
  if (!getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v29[3] = dlsym(v14, "VN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmR");
    getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr = v29[3];
    v13 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v13)
  {
    goto LABEL_23;
  }

  v15 = *v13;
  v32[3] = v15;
  v34[3] = &unk_1F240A708;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v16 = getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr;
  v31 = getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr;
  if (!getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v29[3] = dlsym(v17, "VN4lCLwxDV30rFLSeoihd8yM1zdbka3cVu");
    getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr = v29[3];
    v16 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v16)
  {
    goto LABEL_23;
  }

  v18 = *v16;
  v32[4] = v18;
  v34[4] = &unk_1F240A738;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v19 = getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr;
  v31 = getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr;
  if (!getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr)
  {
    v20 = VisionLibrary();
    v29[3] = dlsym(v20, "VN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epx");
    getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr = v29[3];
    v19 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v19)
  {
    goto LABEL_23;
  }

  v21 = *v19;
  v32[5] = v21;
  v34[5] = &unk_1F240A6D8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v22 = getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr;
  v31 = getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr;
  if (!getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr)
  {
    v23 = VisionLibrary();
    v29[3] = dlsym(v23, "VN31UxDngUK44hDexm8CSuZnlLxECLb0yU");
    getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr = v29[3];
    v22 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v22)
  {
LABEL_23:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v33 = *v22;
  v34[6] = &unk_1F240A690;
  v24 = MEMORY[0x1E695DF20];
  v25 = v33;
  v26 = [v24 dictionaryWithObjects:v34 forKeys:v32 count:7];
  v27 = _AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap;
  _AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap = v26;
}

- (int64_t)_AXMHairtypeCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMHairtypeCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHairtypeCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHairtypeCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __82__AXMVisionFeatureFaceAttributes__AXMHairtypeCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[7] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v4 = getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr;
  v31 = getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr;
  if (!getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v29[3] = dlsym(v5, "VN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTg");
    getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr = v29[3];
    v4 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v4)
  {
    goto LABEL_23;
  }

  v6 = *v4;
  v34[0] = &unk_1F240A6C0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v7 = getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr;
  v31 = getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr;
  v32[0] = v6;
  if (!getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v29[3] = dlsym(v8, "VN7CY11MLEimaE8WoiQ4opgi5HOi84j0UH");
    getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr = v29[3];
    v7 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *v7;
  v32[1] = v9;
  v34[1] = &unk_1F240A708;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v10 = getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr;
  v31 = getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr;
  if (!getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v29[3] = dlsym(v11, "VN5SpoOVxahuTheCrHGepAYKTVB1baFLhQ");
    getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr = v29[3];
    v10 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v10)
  {
    goto LABEL_23;
  }

  v12 = *v10;
  v32[2] = v12;
  v34[2] = &unk_1F240A6D8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v13 = getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr;
  v31 = getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr;
  if (!getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v29[3] = dlsym(v14, "VN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5Qd");
    getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr = v29[3];
    v13 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v13)
  {
    goto LABEL_23;
  }

  v15 = *v13;
  v32[3] = v15;
  v34[3] = &unk_1F240A738;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v16 = getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr;
  v31 = getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr;
  if (!getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v29[3] = dlsym(v17, "VN21VM8NbCJMJjpepNo1kZkxteFybpDwlB");
    getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr = v29[3];
    v16 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v16)
  {
    goto LABEL_23;
  }

  v18 = *v16;
  v32[4] = v18;
  v34[4] = &unk_1F240A6F0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v19 = getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr;
  v31 = getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr;
  if (!getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr)
  {
    v20 = VisionLibrary();
    v29[3] = dlsym(v20, "VN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5");
    getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr = v29[3];
    v19 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v19)
  {
    goto LABEL_23;
  }

  v21 = *v19;
  v32[5] = v21;
  v34[5] = &unk_1F240A690;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v22 = getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr;
  v31 = getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr;
  if (!getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr)
  {
    v23 = VisionLibrary();
    v29[3] = dlsym(v23, "VN2X5h7waRTqk71pInqK4dnT6sZ6dRElxe");
    getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr = v29[3];
    v22 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v22)
  {
LABEL_23:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v33 = *v22;
  v34[6] = &unk_1F240A6A8;
  v24 = MEMORY[0x1E695DF20];
  v25 = v33;
  v26 = [v24 dictionaryWithObjects:v34 forKeys:v32 count:7];
  v27 = _AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap = v26;
}

- (int64_t)_AXMHeadgearCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMHeadgearCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHeadgearCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHeadgearCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __82__AXMVisionFeatureFaceAttributes__AXMHeadgearCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr;
  v25 = getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr;
  if (!getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v23[3] = dlsym(v5, "VNPdH78Lr962vQvRIq2JApX2QJZtbR3fvi");
    getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr = v23[3];
    v4 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = *v4;
  v28[0] = &unk_1F240A6A8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr;
  v25 = getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr;
  v26[0] = v6;
  if (!getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v23[3] = dlsym(v8, "VN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKi");
    getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr = v23[3];
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = *v7;
  v26[1] = v9;
  v28[1] = &unk_1F240A690;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr;
  v25 = getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr;
  if (!getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v23[3] = dlsym(v11, "VN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJw");
    getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr = v23[3];
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *v10;
  v26[2] = v12;
  v28[2] = &unk_1F240A6D8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v13 = getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr;
  v25 = getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr;
  if (!getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v23[3] = dlsym(v14, "VN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6p");
    getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr = v23[3];
    v13 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = *v13;
  v26[3] = v15;
  v28[3] = &unk_1F240A6C0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v16 = getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr;
  v25 = getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr;
  if (!getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v23[3] = dlsym(v17, "VN34LMYSFC7onytwsvH0y6uz2QaYvqY9qi");
    getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr = v23[3];
    v16 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v16)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v27 = *v16;
  v28[4] = &unk_1F240A6F0;
  v18 = MEMORY[0x1E695DF20];
  v19 = v27;
  v20 = [v18 dictionaryWithObjects:v28 forKeys:v26 count:5];
  v21 = _AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap = v20;
}

- (int64_t)_AXMPoseCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMPoseCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMPoseCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMPoseCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMPoseCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __78__AXMVisionFeatureFaceAttributes__AXMPoseCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr;
  v25 = getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr;
  if (!getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v23[3] = dlsym(v5, "VN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxY");
    getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr = v23[3];
    v4 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = *v4;
  v28[0] = &unk_1F240A690;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr;
  v25 = getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr;
  v26[0] = v6;
  if (!getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v23[3] = dlsym(v8, "VN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXR");
    getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr = v23[3];
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = *v7;
  v26[1] = v9;
  v28[1] = &unk_1F240A6A8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr;
  v25 = getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr;
  if (!getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v23[3] = dlsym(v11, "VN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grk");
    getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr = v23[3];
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *v10;
  v26[2] = v12;
  v28[2] = &unk_1F240A6C0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v13 = getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr;
  v25 = getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr;
  if (!getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v23[3] = dlsym(v14, "VN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1Ut");
    getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr = v23[3];
    v13 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = *v13;
  v26[3] = v15;
  v28[3] = &unk_1F240A6D8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v16 = getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr;
  v25 = getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr;
  if (!getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v23[3] = dlsym(v17, "VN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7c");
    getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr = v23[3];
    v16 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v16)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v27 = *v16;
  v28[4] = &unk_1F240A6F0;
  v18 = MEMORY[0x1E695DF20];
  v19 = v27;
  v20 = [v18 dictionaryWithObjects:v28 forKeys:v26 count:5];
  v21 = _AXMPoseCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMPoseCategoryForVisionCategoryIdentifier__categoryMap = v20;
}

- (int64_t)_AXMSkintoneCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMSkintoneCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMSkintoneCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMSkintoneCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
}

void __82__AXMVisionFeatureFaceAttributes__AXMSkintoneCategoryForVisionCategoryIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v4 = getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr;
  v28 = getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr;
  if (!getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr)
  {
    v5 = VisionLibrary();
    v26[3] = dlsym(v5, "VNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGN");
    getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr = v26[3];
    v4 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = *v4;
  v31[0] = &unk_1F240A690;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v7 = getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr;
  v28 = getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr;
  v29[0] = v6;
  if (!getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr)
  {
    v8 = VisionLibrary();
    v26[3] = dlsym(v8, "VN6LhAjooMZpZkrkhS48XbQt7602EpEAxv");
    getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr = v26[3];
    v7 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  v29[1] = v9;
  v31[1] = &unk_1F240A6A8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v10 = getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr;
  v28 = getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr;
  if (!getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr)
  {
    v11 = VisionLibrary();
    v26[3] = dlsym(v11, "VN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYS");
    getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr = v26[3];
    v10 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = *v10;
  v29[2] = v12;
  v31[2] = &unk_1F240A6C0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v13 = getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr;
  v28 = getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr;
  if (!getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr)
  {
    v14 = VisionLibrary();
    v26[3] = dlsym(v14, "VN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgtt");
    getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr = v26[3];
    v13 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v13)
  {
    goto LABEL_20;
  }

  v15 = *v13;
  v29[3] = v15;
  v31[3] = &unk_1F240A6D8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v16 = getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr;
  v28 = getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr;
  if (!getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr)
  {
    v17 = VisionLibrary();
    v26[3] = dlsym(v17, "VN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9p");
    getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr = v26[3];
    v16 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = *v16;
  v29[4] = v18;
  v31[4] = &unk_1F240A6F0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v19 = getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr;
  v28 = getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr;
  if (!getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr)
  {
    v20 = VisionLibrary();
    v26[3] = dlsym(v20, "VN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1Pv");
    getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr = v26[3];
    v19 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v19)
  {
LABEL_20:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v30 = *v19;
  v31[5] = &unk_1F240A708;
  v21 = MEMORY[0x1E695DF20];
  v22 = v30;
  v23 = [v21 dictionaryWithObjects:v31 forKeys:v29 count:6];
  v24 = _AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap = v23;
}

- (id)_accessibilityIdentifierForPoseCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x20) != 0)
  {
    return 0;
  }

  axPoseCategory = [(AXMVisionFeatureFaceAttributes *)self axPoseCategory];
  if ((axPoseCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C780[axPoseCategory - 1];
  }
}

- (id)_accessibilityIdentifierForSkintoneCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 8) != 0)
  {
    return 0;
  }

  axSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategory];
  if ((axSkintoneCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C7A8[axSkintoneCategory - 1];
  }
}

- (id)_accessibilityIdentifierForEthnicityCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x10) != 0)
  {
    return 0;
  }

  axEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategory];
  if ((axEthnicityCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C7D8[axEthnicityCategory - 1];
  }
}

- (id)_accessibilityIdentifierForGenderCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 4) != 0)
  {
    return 0;
  }

  axGenderCategory = [(AXMVisionFeatureFaceAttributes *)self axGenderCategory];
  v4 = @"Gender_Female";
  if (axGenderCategory != 2)
  {
    v4 = 0;
  }

  if (axGenderCategory == 1)
  {
    return @"Gender_Male";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityIdentifierForAgeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 2) != 0)
  {
    return 0;
  }

  axAgeCategory = [(AXMVisionFeatureFaceAttributes *)self axAgeCategory];
  if ((axAgeCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C800[axAgeCategory - 1];
  }
}

- (id)_accessibilityIdentifierForHairColorCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x40) != 0)
  {
    return 0;
  }

  axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self axHairColorCategory];
  if ((axHairColorCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C828[axHairColorCategory - 1];
  }
}

- (id)_accessibilityIdentifierForHairTypeCategory
{
  axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategory];
  if ((axHairTypeCategory - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C858[axHairTypeCategory - 1];
  }
}

- (id)_accessibilityIdentifierForFaceHairV2Category
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x100) != 0)
  {
    return 0;
  }

  axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2Category];
  if ((axFaceHairV2Category - 2) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C890[axFaceHairV2Category - 2];
  }
}

- (id)_accessibilityIdentifierForGlassesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x200) != 0)
  {
    return 0;
  }

  axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self axGlassesCategory];
  v4 = @"Glasses_Sunglasses";
  if (axGlassesCategory != 2)
  {
    v4 = 0;
  }

  if (axGlassesCategory == 1)
  {
    return @"Glasses_Prescription";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityIdentifierForFacemaskCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x400) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axFacemaskCategory]== 2)
  {
    return @"Facemask_Available";
  }

  return 0;
}

- (id)_accessibilityIdentifierForHeadgearCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x800) != 0)
  {
    return 0;
  }

  axHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategory];
  if ((axHeadgearCategory - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C8C0[axHeadgearCategory - 1];
  }
}

- (id)_accessibilityIdentifierForMakeupEyesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x1000) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategory]== 2)
  {
    return @"MakeupEyes_Available";
  }

  return 0;
}

- (id)_accessibilityIdentifierForMakeupLipsCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x1000) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategory]== 2)
  {
    return @"MakeupLips_Available";
  }

  return 0;
}

- (id)_accessibilityIdentifierForExpressionCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x2000) != 0)
  {
    return 0;
  }

  axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self axExpressionCategory];
  if ((axExpressionCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C8E0[axExpressionCategory - 1];
  }
}

- (id)_accessibilityIdentifierForEyesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x4000) != 0)
  {
    return 0;
  }

  axEyesCategory = [(AXMVisionFeatureFaceAttributes *)self axEyesCategory];
  v4 = @"Eyes_Open";
  if (axEyesCategory != 2)
  {
    v4 = 0;
  }

  if (axEyesCategory == 1)
  {
    return @"Eyes_Closed";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityLabelFormatterForPoseCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x20) != 0)
  {
    return 0;
  }

  axPoseCategory = [(AXMVisionFeatureFaceAttributes *)self axPoseCategory];
  if ((axPoseCategory - 2) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C908[axPoseCategory - 2];
  }
}

- (id)_accessibilityLabelFormatterForAgeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 2) != 0)
  {
    return @".age.person";
  }

  axAgeCategory = [(AXMVisionFeatureFaceAttributes *)self axAgeCategory];
  if (axAgeCategory > 5)
  {
    return @".age.baby";
  }

  else
  {
    return off_1E7A1C928[axAgeCategory];
  }
}

- (id)_accessibilityLabelFormatterForHairColorCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x40) != 0)
  {
    return 0;
  }

  axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self axHairColorCategory];
  if ((axHairColorCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C958[axHairColorCategory - 1];
  }
}

- (id)_accessibilityLabelFormatterForHairTypeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x80) != 0)
  {
    return 0;
  }

  axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategory];
  if ((axHairTypeCategory - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C988[axHairTypeCategory - 1];
  }
}

- (id)_accessibilityLabelFormatterForFaceHairV2Category
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x100) != 0)
  {
    _accessibilityLabelFormatterForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
    _accessibilityLabelFormatterForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
    v10 = 0;
  }

  else
  {
    axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2Category];
    _accessibilityLabelFormatterForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
    _accessibilityLabelFormatterForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
    if (_accessibilityLabelFormatterForHairTypeCategory | _accessibilityLabelFormatterForHairColorCategory)
    {
      v6 = _accessibilityLabelFormatterForHairTypeCategory;
    }

    else
    {
      v6 = 0;
    }

    v7 = @".facehair.present";
    if (_accessibilityLabelFormatterForHairTypeCategory | _accessibilityLabelFormatterForHairColorCategory)
    {
      v7 = @".facehair.included";
    }

    if (((1 << axFaceHairV2Category) & 0xEC) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = _accessibilityLabelFormatterForHairTypeCategory;
    }

    if (((1 << axFaceHairV2Category) & 0xEC) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (axFaceHairV2Category > 7)
    {
      v10 = 0;
    }

    else
    {
      _accessibilityLabelFormatterForHairTypeCategory = v8;
      v10 = v9;
    }
  }

  return v10;
}

- (id)_accessibilityLabelFormatterForGlassesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x200) != 0)
  {
    return 0;
  }

  axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self axGlassesCategory];
  v4 = @".sunglasses";
  if (axGlassesCategory != 2)
  {
    v4 = 0;
  }

  if (axGlassesCategory == 1)
  {
    return @".prescription";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityLabelFormatterForFaceMaskCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x400) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axFacemaskCategory]== 2)
  {
    return @".facemask";
  }

  return 0;
}

- (id)_accessibilityLabelFormatterForExpressionCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x2000) != 0)
  {
    return 0;
  }

  axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self axExpressionCategory];
  v4 = @".smiling";
  if (axExpressionCategory != 5)
  {
    v4 = 0;
  }

  if (axExpressionCategory == 2)
  {
    return @".laughing";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityLabelForDemographics
{
  v3 = MEMORY[0x1E696AD60];
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  _accessibilityLabelFormatterForPoseCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForPoseCategory];
  if (_accessibilityLabelFormatterForPoseCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForPoseCategory];
  }

  _accessibilityLabelFormatterForAgeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForAgeCategory];
  if (_accessibilityLabelFormatterForAgeCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForAgeCategory];
LABEL_6:
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_7;
  }

  if (_accessibilityLabelFormatterForPoseCategory)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_accessibilityLabelForHairDetails
{
  v3 = MEMORY[0x1E696AD60];
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  _accessibilityLabelFormatterForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
  _accessibilityLabelFormatterForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
  v8 = _accessibilityLabelFormatterForHairTypeCategory;
  if (_accessibilityLabelFormatterForHairColorCategory && _accessibilityLabelFormatterForHairTypeCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForHairColorCategory];
    v9 = v8;
LABEL_8:
    [v5 appendString:v9];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v11 = [v10 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_10;
  }

  if (_accessibilityLabelFormatterForHairColorCategory)
  {
    v9 = _accessibilityLabelFormatterForHairColorCategory;
  }

  else
  {
    v9 = _accessibilityLabelFormatterForHairTypeCategory;
  }

  if (_accessibilityLabelFormatterForHairColorCategory | _accessibilityLabelFormatterForHairTypeCategory)
  {
    goto LABEL_8;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)_accessibilityLabelForFacialHairDetails
{
  v3 = MEMORY[0x1E696AD60];
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  _accessibilityLabelFormatterForFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForFaceHairV2Category];
  if (_accessibilityLabelFormatterForFaceHairV2Category)
  {
    [v5 appendString:_accessibilityLabelFormatterForFaceHairV2Category];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v7 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_accessibilityLabelForAccessoryDetails
{
  v3 = MEMORY[0x1E696AD60];
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  [v5 appendString:@".accessories"];
  _accessibilityLabelFormatterForGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForGlassesCategory];
  if (_accessibilityLabelFormatterForGlassesCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForGlassesCategory];
  }

  _accessibilityLabelFormatterForFaceMaskCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForFaceMaskCategory];
  if (_accessibilityLabelFormatterForFaceMaskCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForFaceMaskCategory];
LABEL_6:
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_7;
  }

  if (_accessibilityLabelFormatterForGlassesCategory)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_accessibilityLabelForExpressionDetails
{
  v3 = MEMORY[0x1E696AD60];
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  [v5 appendString:@".expression"];
  _accessibilityLabelFormatterForExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForExpressionCategory];
  if (_accessibilityLabelFormatterForExpressionCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForExpressionCategory];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v7 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accessibilityLabelForAttributes
{
  _accessibilityLabelForDemographics = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForDemographics];
  _accessibilityLabelForHairDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForHairDetails];
  _accessibilityLabelForFacialHairDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForFacialHairDetails];
  _accessibilityLabelForAccessoryDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForAccessoryDetails];
  _accessibilityLabelForExpressionDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForExpressionDetails];
  v8 = [MEMORY[0x1E695DEC8] axmArrayByIgnoringNilElementsWithCount:{5, _accessibilityLabelForDemographics, _accessibilityLabelForHairDetails, _accessibilityLabelForFacialHairDetails, _accessibilityLabelForAccessoryDetails, _accessibilityLabelForExpressionDetails}];
  v9 = AXMLabelForNSStringElements(v8, 1, 0);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v11;
}

- (id)accessibilityLabelAndConfidenceMappingForAttributes
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _accessibilityIdentifierForPoseCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForPoseCategory];
  if (_accessibilityIdentifierForPoseCategory)
  {
    v5 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axPoseCategoryConfidence];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:_accessibilityIdentifierForPoseCategory];
  }

  _accessibilityIdentifierForAgeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForAgeCategory];
  if (_accessibilityIdentifierForAgeCategory)
  {
    v8 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axAgeCategoryConfidence];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:_accessibilityIdentifierForAgeCategory];
  }

  _accessibilityIdentifierForGenderCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForGenderCategory];
  if (_accessibilityIdentifierForGenderCategory)
  {
    v11 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axGenderCategoryConfidence];
    v12 = [v11 numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:_accessibilityIdentifierForGenderCategory];
  }

  _accessibilityIdentifierForGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForGlassesCategory];
  if (_accessibilityIdentifierForGlassesCategory)
  {
    v14 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axGlassesCategoryConfidence];
    v15 = [v14 numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:_accessibilityIdentifierForGlassesCategory];
  }

  v55 = _accessibilityIdentifierForGenderCategory;
  _accessibilityIdentifierForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHairColorCategory];
  if (_accessibilityIdentifierForHairColorCategory)
  {
    v17 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHairColorCategoryConfidence];
    v18 = [v17 numberWithDouble:?];
    [dictionary setObject:v18 forKeyedSubscript:_accessibilityIdentifierForHairColorCategory];
  }

  _accessibilityIdentifierForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHairTypeCategory];
  if (_accessibilityIdentifierForHairTypeCategory)
  {
    v20 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategoryConfidence];
    v21 = [v20 numberWithDouble:?];
    [dictionary setObject:v21 forKeyedSubscript:_accessibilityIdentifierForHairTypeCategory];
  }

  _accessibilityIdentifierForFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForFaceHairV2Category];
  if (_accessibilityIdentifierForFaceHairV2Category)
  {
    v23 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2CategoryConfidence];
    v24 = [v23 numberWithDouble:?];
    [dictionary setObject:v24 forKeyedSubscript:_accessibilityIdentifierForFaceHairV2Category];
  }

  v51 = _accessibilityIdentifierForFaceHairV2Category;
  v57 = _accessibilityIdentifierForPoseCategory;
  _accessibilityIdentifierForHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHeadgearCategory];
  if (_accessibilityIdentifierForHeadgearCategory)
  {
    v26 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategoryConfidence];
    v27 = [v26 numberWithDouble:?];
    [dictionary setObject:v27 forKeyedSubscript:_accessibilityIdentifierForHeadgearCategory];
  }

  v56 = _accessibilityIdentifierForAgeCategory;
  _accessibilityIdentifierForFacemaskCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForFacemaskCategory];
  if (_accessibilityIdentifierForFacemaskCategory)
  {
    v29 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axFacemaskCategoryConfidence];
    v30 = [v29 numberWithDouble:?];
    [dictionary setObject:v30 forKeyedSubscript:_accessibilityIdentifierForFacemaskCategory];
  }

  _accessibilityIdentifierForExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForExpressionCategory];
  if (_accessibilityIdentifierForExpressionCategory)
  {
    v32 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axExpressionCategoryConfidence];
    v33 = [v32 numberWithDouble:?];
    [dictionary setObject:v33 forKeyedSubscript:_accessibilityIdentifierForExpressionCategory];
  }

  v54 = _accessibilityIdentifierForGlassesCategory;
  _accessibilityIdentifierForEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForEthnicityCategory];
  if (_accessibilityIdentifierForEthnicityCategory)
  {
    v35 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategoryConfidence];
    v36 = [v35 numberWithDouble:?];
    [dictionary setObject:v36 forKeyedSubscript:_accessibilityIdentifierForEthnicityCategory];
  }

  v53 = _accessibilityIdentifierForHairColorCategory;
  _accessibilityIdentifierForEyesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForEyesCategory];
  if (_accessibilityIdentifierForEyesCategory)
  {
    v38 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axEyesCategoryConfidence];
    v39 = [v38 numberWithDouble:?];
    [dictionary setObject:v39 forKeyedSubscript:_accessibilityIdentifierForEyesCategory];
  }

  v52 = _accessibilityIdentifierForHairTypeCategory;
  _accessibilityIdentifierForMakeupEyesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForMakeupEyesCategory];
  if (_accessibilityIdentifierForMakeupEyesCategory)
  {
    v41 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategoryConfidence];
    v42 = [v41 numberWithDouble:?];
    [dictionary setObject:v42 forKeyedSubscript:_accessibilityIdentifierForMakeupEyesCategory];
  }

  _accessibilityIdentifierForMakeupLipsCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForMakeupLipsCategory];
  if (_accessibilityIdentifierForMakeupLipsCategory)
  {
    v44 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategoryConfidence];
    v45 = [v44 numberWithDouble:?];
    [dictionary setObject:v45 forKeyedSubscript:_accessibilityIdentifierForMakeupLipsCategory];
  }

  _accessibilityIdentifierForSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForSkintoneCategory];
  if (_accessibilityIdentifierForSkintoneCategory)
  {
    v47 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategoryConfidence];
    v48 = [v47 numberWithDouble:?];
    [dictionary setObject:v48 forKeyedSubscript:_accessibilityIdentifierForSkintoneCategory];
  }

  return dictionary;
}

+ (id)unitTestingFaceAttributesForAge:(int64_t)age gender:(int64_t)gender eyes:(int64_t)eyes smiling:(int64_t)smiling facialHair:(int64_t)hair hairColor:(int64_t)color baldness:(int64_t)baldness glasses:(int64_t)self0 eyeMakeup:(int64_t)self1 lipMakeup:(int64_t)self2 faceMask:(int64_t)self3 ethnicity:(int64_t)self4 expression:(int64_t)self5 facialHairV2:(int64_t)self6 hairType:(int64_t)self7 headGear:(int64_t)self8 pose:(int64_t)self9 skinTone:(int64_t)tone excludeOptions:(int64_t)options
{
  v24 = objc_alloc_init(AXMVisionFeatureFaceAttributes);
  [(AXMVisionFeatureFaceAttributes *)v24 setExcludeOptions:options];
  v24->_axAgeCategory = age;
  v24->_axGenderCategory = gender;
  v24->_axEyesCategory = eyes;
  v24->_axSmilingCategory = smiling;
  v24->_axFaceHairCategory = hair;
  v24->_axHairColorCategory = color;
  v24->_axBaldCategory = baldness;
  v24->_axGlassesCategory = glasses;
  v24->_axMakeupEyesCategory = makeup;
  v24->_axMakeupLipsCategory = lipMakeup;
  v24->_axFacemaskCategory = mask;
  v24->_axEthnicityCategory = ethnicity;
  v24->_axExpressionCategory = expression;
  v24->_axFaceHairV2Category = v2;
  v24->_axHairTypeCategory = type;
  v24->_axHeadgearCategory = gear;
  v24->_axPoseCategory = pose;
  v24->_axSkintoneCategory = tone;

  return v24;
}

+ (id)unitTestingFaceAttributes
{
  v2 = objc_alloc_init(AXMVisionFeatureFaceAttributes);
  v2->_axAgeCategory = 3;
  *&v2->_axSmilingCategory = vdupq_n_s64(2uLL);
  v2->_axHairColorCategory = 3;
  *&v2->_axBaldCategory = vdupq_n_s64(1uLL);

  return v2;
}

void __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
}

@end