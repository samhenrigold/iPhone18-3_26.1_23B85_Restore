@interface SyncedLyricsLineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setSelected:(BOOL)selected animator:(id)animator;
@end

@implementation SyncedLyricsLineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicCoreUI.SyncedLyricsLineView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.SyncedLyricsLineView" hasSwiftField:@"containerView" withSwiftType:"UIView"];
  [validationsCopy validateClass:@"MusicTextContentView"];
  [validationsCopy validateClass:@"MusicTextContentView" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"attributedText" withSwiftType:"Optional<NSAttributedString>"];
  [validationsCopy validateClass:@"MusicInstrumentalContentView"];
  [validationsCopy validateClass:@"MusicCoreUI.SyncedLyricsLineView" hasInstanceMethod:@"setSelected:animator:" withFullSignature:{"v", "B", "@", 0}];
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
  objc_opt_class();
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicSBS_TextContentView")];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safeSwiftValueForKey:@"text"];
    v8 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = v8;
      goto LABEL_11;
    }

    objc_opt_class();
    v14 = [v6 safeSwiftValueForKey:@"attributedText"];
    v12 = __UIAccessibilityCastAsClass();

    string = [v12 string];
    goto LABEL_9;
  }

  v8 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicTextContentView")];
  if (!v8 || (objc_opt_class(), [v8 safeSwiftValueForKey:@"label"], v10 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v11 = objc_claimAutoreleasedReturnValue(), v10, objc_msgSend(v11, "accessibilityLabel"), v9 = objc_claimAutoreleasedReturnValue(), v11, !v9))
  {
    v12 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicInstrumentalContentView")];
    if (!v12)
    {
      v9 = 0;
      goto LABEL_10;
    }

    string = accessibilityMusicLocalizedString(@"instrumental.break");
LABEL_9:
    v9 = string;
LABEL_10:
  }

LABEL_11:

  return v9;
}

- (void)setSelected:(BOOL)selected animator:(id)animator
{
  v12[1] = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = SyncedLyricsLineViewAccessibility;
  [(SyncedLyricsLineViewAccessibility *)&v9 setSelected:selected animator:animator];
  accessibilityLabel = [(SyncedLyricsLineViewAccessibility *)self accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v6 = *MEMORY[0x29EDBDAD8];
    v10 = accessibilityLabel;
    v11 = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v10 count:1];
    v12[0] = v7;
    v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    UIAccessibilityPostNotification(0x42Cu, v8);
  }
}

@end