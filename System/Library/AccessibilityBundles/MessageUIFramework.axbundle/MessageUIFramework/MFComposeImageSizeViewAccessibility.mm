@interface MFComposeImageSizeViewAccessibility
- (BOOL)accessibilityElementsHidden;
- (void)setSizeDescription:(id)description forScale:(unsigned int)scale;
@end

@implementation MFComposeImageSizeViewAccessibility

- (void)setSizeDescription:(id)description forScale:(unsigned int)scale
{
  v4 = *&scale;
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = MFComposeImageSizeViewAccessibility;
  [(MFComposeImageSizeViewAccessibility *)&v18 setSizeDescription:descriptionCopy forScale:v4];
  if (setSizeDescription_forScale__onceToken != -1)
  {
    [MFComposeImageSizeViewAccessibility setSizeDescription:forScale:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v13 = 0;
  AXPerformSafeBlock();
  v7 = [(MFComposeImageSizeViewAccessibility *)self safeValueForKey:@"_segmentedControl"];
  v8 = __UIAccessibilitySafeClass();

  v9 = v15[3];
  if (v9 < [v8 numberOfSegments])
  {
    v10 = [v8 imageForSegmentAtIndex:v15[3]];
    v11 = __UIAXStringForVariables();
    [v10 setAccessibilityLabel:{v11, descriptionCopy, @"__AXStringForVariablesSentinel"}];
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
}

void __67__MFComposeImageSizeViewAccessibility_setSizeDescription_forScale___block_invoke()
{
  v10[4] = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v1 = [v0 localizedStringForKey:@"SMALL_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v10[0] = v1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v3 = [v2 localizedStringForKey:@"MEDIUM_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v10[1] = v3;
  v4 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v5 = [v4 localizedStringForKey:@"LARGE_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v10[2] = v5;
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:NSClassFromString(&cfstr_Mfcomposeimage.isa)];
  v7 = [v6 localizedStringForKey:@"ACTUAL_SIZE_BAR_TITLE" value:&stru_2A2207348 table:@"Main"];
  v10[3] = v7;
  v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:4];
  v9 = setSizeDescription_forScale__scaleLabels;
  setSizeDescription_forScale__scaleLabels = v8;
}

uint64_t __67__MFComposeImageSizeViewAccessibility_setSizeDescription_forScale___block_invoke_308(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _scaleLabelIndexForScale:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 40) = [setSizeDescription_forScale__scaleLabels objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)accessibilityElementsHidden
{
  v2 = [(MFComposeImageSizeViewAccessibility *)self safeValueForKey:@"alpha"];
  [v2 floatValue];
  v4 = v3 != 1.0;

  return v4;
}

@end