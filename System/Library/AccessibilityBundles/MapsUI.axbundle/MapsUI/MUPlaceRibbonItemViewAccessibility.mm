@interface MUPlaceRibbonItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MUPlaceRibbonItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUPlaceRibbonItemView" hasInstanceVariable:@"_titleLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MUPlaceRibbonItemView" hasInstanceVariable:@"_valueLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MUPlaceRibbonItemView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MUPlaceRibbonItemViewAccessibility *)self safeValueForKey:@"viewModel"];
  if ([v3 _accessibilityIntegerValueForKey:@"RibbonItemViewTypeKey"] == 7)
  {
    v7.receiver = self;
    v7.super_class = MUPlaceRibbonItemViewAccessibility;
    accessibilityTraits = ([(MUPlaceRibbonItemViewAccessibility *)&v7 accessibilityTraits]| *MEMORY[0x29EDC7F70]) != 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MUPlaceRibbonItemViewAccessibility;
    accessibilityTraits = [(MUPlaceRibbonItemViewAccessibility *)&v6 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (id)accessibilityLabel
{
  v3 = [(MUPlaceRibbonItemViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MUPlaceRibbonItemViewAccessibility *)self safeValueForKey:@"viewModel"];
  if ([v5 _accessibilityIntegerValueForKey:@"RibbonItemViewTypeKey"] == 2 && objc_msgSend(accessibilityLabel, "containsString:", @"("))
  {
    v8 = accessibilityLocalizedString(@"RATINGS");
    v6 = __AXStringForVariables();

    accessibilityLabel = v6;
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(MUPlaceRibbonItemViewAccessibility *)self safeValueForKey:@"viewModel"];
  v4 = [v3 _accessibilityIntegerValueForKey:@"RibbonItemViewTypeKey"];
  v5 = [(MUPlaceRibbonItemViewAccessibility *)self safeUIViewForKey:@"_valueLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  v7 = [(MUPlaceRibbonItemViewAccessibility *)self safeUIViewForKey:@"_valueLabel"];
  v8 = [v7 safeValueForKey:@"attributedText"];

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__0;
      v37 = __Block_byref_object_dispose__0;
      v38 = &stru_2A21F1AD0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v8 length];
        v21 = *MEMORY[0x29EDC7640];
        v30[0] = MEMORY[0x29EDCA5F8];
        v30[1] = 3221225472;
        v30[2] = __56__MUPlaceRibbonItemViewAccessibility_accessibilityValue__block_invoke;
        v30[3] = &unk_29F2CDDD8;
        v32 = &v33;
        v31 = v8;
        [v31 enumerateAttribute:v21 inRange:0 options:v20 usingBlock:{0, v30}];
      }

      v13 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v34[5]];
      v22 = *MEMORY[0x29EDBD9E8];
      v23 = [v34[5] length];
      [v13 setAttribute:MEMORY[0x29EDB8EB0] forKey:v22 withRange:{0, v23}];
      goto LABEL_18;
    }

    if (v4 != 7)
    {
LABEL_12:
      v13 = accessibilityLabel;
      goto LABEL_24;
    }

    v14 = [v3 _accessibilityIntegerValueForKey:@"RibbonItemViewRatingStateKey"];
    if (v14 == 2)
    {
      v15 = @"LIKED";
    }

    else if (v14 == 1)
    {
      v15 = @"DISLIKED";
    }

    else
    {
      v15 = @"NOT RATED";
    }

    v26 = accessibilityLocalizedString(v15);
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__0;
        v37 = __Block_byref_object_dispose__0;
        v38 = &stru_2A21F1AD0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 length];
          v10 = *MEMORY[0x29EDC7628];
          v29[0] = MEMORY[0x29EDCA5F8];
          v29[1] = 3221225472;
          v29[2] = __56__MUPlaceRibbonItemViewAccessibility_accessibilityValue__block_invoke_2;
          v29[3] = &unk_29F2CDE00;
          v29[4] = &v33;
          [v8 enumerateAttribute:v10 inRange:0 options:v9 usingBlock:{0, v29}];
          string = [v8 string];
          v11 = __UIAXStringForVariables();
          v12 = v34[5];
          v34[5] = v11;
        }

        v13 = v34[5];
LABEL_18:

        _Block_object_dispose(&v33, 8);
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    string2 = [v8 string];
    v17 = [string2 containsString:@"%"];

    if (v17)
    {
      v18 = MEMORY[0x29EDBA0F8];
      v19 = accessibilityLocalizedString(@"RECOMMEND");
      v13 = [v18 stringWithFormat:@"%@ %@", accessibilityLabel, v19];

      goto LABEL_24;
    }

    string3 = [v8 string];
    v25 = [string3 substringFromIndex:1];
    [v25 floatValue];

    v26 = UIAXStarRatingStringForRating();
  }

  v13 = v26;

LABEL_24:

  return v13;
}

void __56__MUPlaceRibbonItemViewAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x29EDC7A00];
  v8 = a2;
  v9 = [v7 systemGrayColor];

  if (v9 != v8)
  {
    v13 = [*(a1 + 32) string];
    v10 = [v13 substringWithRange:{a3, a4}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __56__MUPlaceRibbonItemViewAccessibility_accessibilityValue__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  MEMORY[0x29C2DD160](@"NSTextAttachment");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v8 image];
    v7 = [v3 accessibilityLabel];
    v4 = __UIAXStringForVariables();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

@end