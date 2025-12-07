@interface SUUIImageCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIImageCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIViewReuseCollectionViewCell" hasInstanceMethod:@"allExistingViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIImageView"];
}

- (unint64_t)accessibilityTraits
{
  v14 = 0;
  objc_opt_class();
  superview = [(SUUIImageCollectionViewCellAccessibility *)self superview];
  v4 = __UIAccessibilityCastAsClass();

  collectionViewLayout = [v4 collectionViewLayout];
  NSClassFromString(&cfstr_Suuicarouselco.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selfCopy = self;
    v7 = MEMORY[0x29EDC7F70];
    v8 = &selfCopy;
  }

  else
  {
    v12.receiver = self;
    v7 = MEMORY[0x29EDC7F88];
    v8 = &v12;
  }

  v8->super_class = SUUIImageCollectionViewCellAccessibility;
  accessibilityTraits = [(objc_super *)v8 accessibilityTraits];
  v10 = *v7;

  return v10 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  v39 = *MEMORY[0x29EDCA608];
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __62__SUUIImageCollectionViewCellAccessibility_accessibilityLabel__block_invoke;
  v36[3] = &unk_29F2D9060;
  v36[4] = self;
  v3 = [(SUUIImageCollectionViewCellAccessibility *)self _accessibilityFindDescendant:v36];
  accessibilityLabel = [v3 accessibilityLabel];

  if (!accessibilityLabel)
  {
    v35 = 0;
    objc_opt_class();
    superview = [(SUUIImageCollectionViewCellAccessibility *)self superview];
    v6 = __UIAccessibilityCastAsClass();

    collectionViewLayout = [v6 collectionViewLayout];
    NSClassFromString(&cfstr_Suuistorepagec.isa);
    LOBYTE(superview) = objc_opt_isKindOfClass();

    if (superview)
    {
      [v6 subviews];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = v34 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            NSClassFromString(&cfstr_Suuiproductloc.isa);
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_13:

      v15 = [v14 safeValueForKey:@"allExistingViews"];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        while (2)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * j);
            NSClassFromString(&cfstr_Suuiimageview.isa);
            if (objc_opt_isKindOfClass())
            {
              v24 = MEMORY[0x29EDBA0F8];
              v25 = accessibilityLocalizedString(@"cover.photo.of.artist");
              accessibilityLabel2 = [v21 accessibilityLabel];
              accessibilityLabel3 = [v24 stringWithFormat:v25, accessibilityLabel2];

              goto LABEL_24;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  accessibilityLabel3 = [v3 accessibilityLabel];
LABEL_24:

  return accessibilityLabel3;
}

BOOL __62__SUUIImageCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  v2 = [a2 accessibilityLabel];
  v3 = [v2 length] != 0;

  return v3;
}

@end