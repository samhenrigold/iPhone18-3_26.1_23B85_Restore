@interface PBShelfTileAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PBShelfTileAccessibility

- (id)accessibilityLabel
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(PBShelfTileAccessibility *)self safeValueForKeyPath:@"superview.subviews"];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = [v3 indexOfObject:self];
  v11 = MEMORY[0x29EDBA0F8];
  v12 = axLocalizedString(@"photo.position");
  v13 = MEMORY[0x29C2E5CE0](v10 + 1);
  v14 = [v11 stringWithFormat:v12, v13];

  return v14;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F88];
  v3 = [(PBShelfTileAccessibility *)self safeValueForKey:@"isSelected"];
  bOOLValue = [v3 BOOLValue];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!bOOLValue)
  {
    v5 = 0;
  }

  return v5 | v2;
}

@end