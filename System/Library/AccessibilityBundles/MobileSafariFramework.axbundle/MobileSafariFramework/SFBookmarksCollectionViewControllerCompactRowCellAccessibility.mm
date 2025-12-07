@interface SFBookmarksCollectionViewControllerCompactRowCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SFBookmarksCollectionViewControllerCompactRowCellAccessibility

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(SFBookmarksCollectionViewControllerCompactRowCellAccessibility *)self safeSwiftStringForKey:@"title"];
  v16 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessories = [v3 accessories];
  text = [accessories countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (text)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != text; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = 0;
          objc_opt_class();
          v8 = __UIAccessibilityCastAsClass();
          if (v16 == 1)
          {
            abort();
          }

          v9 = v8;
          text = [v8 text];

          goto LABEL_12;
        }
      }

      text = [accessories countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (text)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = __AXStringForVariables();

  return v10;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SFBookmarksCollectionViewControllerCompactRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SFBookmarksCollectionViewControllerCompactRowCellAccessibility *)&v3 accessibilityTraits];
}

@end