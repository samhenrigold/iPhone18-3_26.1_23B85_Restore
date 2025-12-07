@interface PLManagedAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PLManagedAssetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLManagedAsset" hasInstanceMethod:@"isPhoto" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PLManagedAsset" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PLManagedAsset" hasInstanceMethod:@"isAudio" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PLManagedAsset" hasInstanceMethod:@"isPhotoIris" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isPhoto"];
  bOOLValue = [v3 BOOLValue];

  v5 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isVideo"];
  bOOLValue2 = [v5 BOOLValue];

  v7 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isAudio"];
  bOOLValue3 = [v7 BOOLValue];

  v9 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"isPhotoIris"];
  bOOLValue4 = [v9 BOOLValue];

  v11 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"mainFileURL"];
  if (bOOLValue)
  {
    if (UIAccessibilityIsImageScreenshot())
    {
      v12 = accessibilityUIKitLocalizedString();
LABEL_12:
      v48 = v12;
      goto LABEL_13;
    }

    if (bOOLValue4)
    {
      v14 = accessibilityPLServicesLocalizedString(@"photo.label.type.photo.iris");
      v48 = AXAttributedStringForBetterPronuciation();

      goto LABEL_13;
    }

    v13 = @"photo.label.type.photo";
LABEL_11:
    v12 = accessibilityPLServicesLocalizedString(v13);
    goto LABEL_12;
  }

  if (bOOLValue2)
  {
    v13 = @"photo.label.type.video";
    goto LABEL_11;
  }

  if (bOOLValue3)
  {
    v13 = @"photo.label.type.audio";
    goto LABEL_11;
  }

  v48 = 0;
LABEL_13:
  v15 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"width"];
  v16 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"height"];
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  if ((v19 & bOOLValue) == 1)
  {
    integerValue = [v15 integerValue];
    if (integerValue >= [v17 integerValue])
    {
      v21 = @"photo.label.orientation.landscape";
    }

    else
    {
      v21 = @"photo.label.orientation.portrait";
    }

    v46 = accessibilityPLServicesLocalizedString(v21);
  }

  else
  {
    v46 = 0;
  }

  v47 = bOOLValue;
  v22 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"dateCreated"];
  v23 = bOOLValue3;
  if (v22)
  {
    v45 = bOOLValue2;
    v24 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
      v26 = [currentCalendar components:28 fromDate:v22];

      currentCalendar2 = [MEMORY[0x29EDB8D98] currentCalendar];
      date = [MEMORY[0x29EDB8DB0] date];
      v29 = [currentCalendar2 components:28 fromDate:date];

      year = [v26 year];
      if (year == [v29 year])
      {
        month = [v26 month];
        if (month == [v29 month])
        {
          [v26 day];
          [v29 day];
        }
      }

      v32 = AXDateStringForFormat();
    }

    else
    {
      v32 = 0;
    }

    v11 = v24;
    bOOLValue2 = v45;
  }

  else
  {
    v32 = 0;
  }

  v33 = [(PLManagedAssetAccessibility *)self safeValueForKey:@"duration"];
  [v33 floatValue];
  v35 = roundf(v34);

  v36 = 0;
  if (v35 > 0.0 && ((v23 | bOOLValue2) & 1) != 0)
  {
    v37 = MEMORY[0x29EDBD7E8];
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"%.0f", v35];
    v39 = v38 = v11;
    v36 = [v37 axAttributedStringWithString:v39];

    v11 = v38;
    if (v35 >= 3600.0)
    {
      v40 = MEMORY[0x29EDBD8B0];
    }

    else
    {
      v40 = MEMORY[0x29EDBD8C0];
    }

    [v36 setAttribute:*MEMORY[0x29EDB8F00] forKey:*v40];
  }

  if (v47)
  {
    v41 = UIAccessibilityMetadataDescriptionForImage();
    v42 = v46;
  }

  else
  {
    if (bOOLValue2)
    {
      v41 = UIAccessibilityMetadataDescriptionForVideo();
    }

    else
    {
      v41 = 0;
    }

    v42 = v46;
  }

  v43 = __UIAXStringForVariables();

  return v43;
}

@end