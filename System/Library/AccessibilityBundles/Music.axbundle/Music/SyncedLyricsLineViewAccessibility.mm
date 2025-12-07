@interface SyncedLyricsLineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (BOOL)isInstrumentalBreak;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setSelected:(BOOL)selected animator:(id)animator;
@end

@implementation SyncedLyricsLineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LyricsX.SyncedLyricsLineView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"LyricsX.SyncedLyricsLineView" hasSwiftField:@"containerView" withSwiftType:"UIView"];
  [validationsCopy validateClass:@"MusicTextContentView"];
  [validationsCopy validateClass:@"MusicTextContentView" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"attributedText" withSwiftType:"Optional<NSAttributedString>"];
  [validationsCopy validateClass:@"MusicInstrumentalContentView"];
  [validationsCopy validateClass:@"MusicDespacitoContentView"];
  [validationsCopy validateClass:@"LyricsX.SyncedLyricsLineView" hasInstanceMethod:@"setSelected:animator:" withFullSignature:{"v", "B", "@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  return [(SyncedLyricsLineViewAccessibility *)self isInstrumentalBreak];
}

- (id)accessibilityElements
{
  v18[1] = *MEMORY[0x29EDCA608];
  if (!_os_feature_enabled_impl())
  {
    v6 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicDespacitoContentView")];
  if (v5)
  {
    v6 = [MEMORY[0x29EDB8E90] mutableCopy];
    v7 = [v5 safeSwiftValueForKey:@"mainLineView"];
    currentAccessibilityLabel = [v7 currentAccessibilityLabel];
    if (currentAccessibilityLabel)
    {
      [currentAccessibilityLabel setAccessibilityTraits:{-[SyncedLyricsLineViewAccessibility accessibilityTraits](self, "accessibilityTraits")}];
      [v6 addObject:currentAccessibilityLabel];
    }

    accessibilityMainTextView = [v5 safeSwiftValueForKey:@"translationLineView"];
    currentAccessibilityLabel2 = [accessibilityMainTextView currentAccessibilityLabel];
LABEL_6:
    v11 = currentAccessibilityLabel2;
    if (currentAccessibilityLabel2)
    {
      [currentAccessibilityLabel2 setAccessibilityTraits:{-[SyncedLyricsLineViewAccessibility accessibilityTraits](self, "accessibilityTraits")}];
      [v6 addObject:v11];
    }

    goto LABEL_12;
  }

  v7 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicTextContentView")];
  if (v7)
  {
    objc_opt_class();
    currentAccessibilityLabel3 = [v7 currentAccessibilityLabel];
    currentAccessibilityLabel = __UIAccessibilityCastAsClass();

    v18[0] = currentAccessibilityLabel;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:1];
  }

  else
  {
    currentAccessibilityLabel = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicSBS_TextContentView")];
    if (currentAccessibilityLabel)
    {
      v6 = [MEMORY[0x29EDB8E90] mutableCopy];
      accessibilityMainTextView = [currentAccessibilityLabel accessibilityMainTextView];
      [accessibilityMainTextView setIsAccessibilityElement:1];
      if (accessibilityMainTextView)
      {
        v14 = [currentAccessibilityLabel safeSwiftValueForKey:@"text"];
        if (v14)
        {
          [accessibilityMainTextView setAccessibilityLabel:v14];
        }

        else
        {
          objc_opt_class();
          v15 = [currentAccessibilityLabel safeSwiftValueForKey:@"attributedText"];
          v16 = __UIAccessibilityCastAsClass();

          string = [v16 string];
          [accessibilityMainTextView setAccessibilityLabel:string];
        }

        [accessibilityMainTextView setAccessibilityTraits:{-[SyncedLyricsLineViewAccessibility accessibilityTraits](self, "accessibilityTraits")}];
        [v6 addObject:accessibilityMainTextView];
      }

      currentAccessibilityLabel2 = [currentAccessibilityLabel accessibilityTranslationLabel];
      goto LABEL_6;
    }

    v6 = 0;
  }

LABEL_12:

LABEL_13:

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityLabel
{
  if (!_os_feature_enabled_impl())
  {
    objc_opt_class();
    v4 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicSBS_TextContentView")];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 safeSwiftValueForKey:@"text"];
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        accessibilityLabel = v9;
LABEL_15:

        goto LABEL_16;
      }

      objc_opt_class();
      v14 = [v7 safeSwiftValueForKey:@"attributedText"];
      v12 = __UIAccessibilityCastAsClass();

      string = [v12 string];
    }

    else
    {
      v9 = [v5 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicTextContentView")];
      if (v9)
      {
        objc_opt_class();
        v10 = [v9 safeSwiftValueForKey:@"label"];
        v11 = __UIAccessibilityCastAsClass();

        accessibilityLabel = [v11 accessibilityLabel];

        if (accessibilityLabel)
        {
          goto LABEL_15;
        }
      }

      v12 = [v5 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicInstrumentalContentView")];
      if (!v12)
      {
        accessibilityLabel = 0;
        goto LABEL_14;
      }

      string = accessibilityMusicLocalizedString(@"instrumental.break");
    }

    accessibilityLabel = string;
LABEL_14:

    goto LABEL_15;
  }

  if ([(SyncedLyricsLineViewAccessibility *)self isInstrumentalBreak])
  {
    accessibilityLabel = accessibilityMusicLocalizedString(@"instrumental.break");
  }

  else
  {
    accessibilityLabel = 0;
  }

LABEL_16:

  return accessibilityLabel;
}

- (BOOL)isInstrumentalBreak
{
  objc_opt_class();
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicInstrumentalContentView")];
  v6 = v5 != 0;

  return v6;
}

- (void)setSelected:(BOOL)selected animator:(id)animator
{
  v14[1] = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = SyncedLyricsLineViewAccessibility;
  [(SyncedLyricsLineViewAccessibility *)&v11 setSelected:selected animator:animator];
  accessibilityLabel = [(SyncedLyricsLineViewAccessibility *)self accessibilityLabel];
  if (!accessibilityLabel)
  {
    if (_os_feature_enabled_impl())
    {
      accessibilityElements = [(SyncedLyricsLineViewAccessibility *)self accessibilityElements];
      firstObject = [accessibilityElements firstObject];
      accessibilityLabel = [firstObject accessibilityLabel];
    }

    else
    {
      accessibilityLabel = 0;
    }
  }

  if ([accessibilityLabel length])
  {
    v8 = *MEMORY[0x29EDBDAD8];
    v12 = accessibilityLabel;
    v13 = v8;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v12 count:1];
    v14[0] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    UIAccessibilityPostNotification(0x42Cu, v10);
  }
}

@end