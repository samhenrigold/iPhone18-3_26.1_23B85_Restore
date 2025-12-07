@interface TPPhonePadAccessibility
- (id)_accessibilityScannerGroupElements;
- (id)accessibilityElements;
@end

@implementation TPPhonePadAccessibility

- (id)accessibilityElements
{
  v3 = [(TPPhonePadAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v3)
  {
    v26 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [TPPhonePadAccessibility _accessibilitySetRetainedValue:"_accessibilitySetRetainedValue:forKey:" forKey:?];
    v4 = 0;
    v25 = *MEMORY[0x29EDC7F90] | *MEMORY[0x29EDC7FB0];
    v5 = *MEMORY[0x29EDB8F00];
    do
    {
      v6 = [objc_allocWithZone(TPButtonAccessibilityElement) initWithAccessibilityContainer:self];
      v7 = AX_kKeyStrs[v4];
      v8 = [(TPPhonePadAccessibility *)self _buttonForKeyAtIndex:v4];
      v9 = v8;
      if (v8)
      {
        accessibilityLabel = [v8 accessibilityLabel];
        if ([accessibilityLabel length])
        {
          v11 = accessibilityLabel;

          accessibilityTraits = [v9 accessibilityTraits];
          v7 = v11;
        }

        else
        {
          accessibilityTraits = v25;
        }
      }

      else
      {
        accessibilityTraits = v25;
      }

      [v6 setAccessibilityTraits:accessibilityTraits];
      v13 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];
      [v13 setAttribute:v5 forKey:*MEMORY[0x29EDBD960]];
      [v6 setAccessibilityLabel:v13];
      v14 = MEMORY[0x29EDBD7E8];
      lowercaseString = [(__CFString *)AX_kLettersStrings[v4] lowercaseString];
      v16 = [v14 axAttributedStringWithString:lowercaseString];

      [v16 setAttribute:v5 forKey:*MEMORY[0x29EDBD930]];
      [v6 setAccessibilityHint:v16];
      v27 = 0;
      v28 = &v27;
      v29 = 0x4010000000;
      v30 = &unk_29C4B18DE;
      v31 = 0u;
      v32 = 0u;
      AXPerformSafeBlock();
      v17 = v28[4];
      v18 = v28[5];
      v19 = v28[6];
      v20 = v28[7];
      _Block_object_dispose(&v27, 8);
      [v6 setAccessibilityFrameInContainerSpace:{v17, v18, v19, v20}];
      accessibilityLabel2 = [v6 accessibilityLabel];
      v22 = [accessibilityLabel2 length];

      if (v22)
      {
        [v26 addObject:v6];
      }

      ++v4;
    }

    while (v4 != 12);
    v3 = v26;
  }

  v23 = v3;

  return v23;
}

void *__48__TPPhonePadAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rectForKey:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (id)_accessibilityScannerGroupElements
{
  v18[2] = *MEMORY[0x29EDCA608];
  v16 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:4];
  accessibilityElements = [(TPPhonePadAccessibility *)self accessibilityElements];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = AX_kKeyStrs;
  do
  {
    v7 = 0;
    v8 = 0;
    ++v5;
    do
    {
      if ([(__CFString *)v6[v7] length])
      {
        v9 = 1;
      }

      else
      {
        v10 = [(TPPhonePadAccessibility *)self _buttonForKeyAtIndex:v3 + v7];
        accessibilityLabel = [v10 accessibilityLabel];
        v9 = [accessibilityLabel length] != 0;
      }

      v8 += v9;
      ++v7;
    }

    while (v7 != 3);
    v12 = [accessibilityElements subarrayWithRange:{v4, v8}];
    v17[0] = @"GroupElements";
    v17[1] = @"GroupTraits";
    v18[0] = v12;
    v18[1] = &unk_2A2346110;
    v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v16 addObject:v13];
    v4 += v8;

    v3 += 3;
    v6 += 3;
  }

  while (v5 != 4);

  return v16;
}

@end