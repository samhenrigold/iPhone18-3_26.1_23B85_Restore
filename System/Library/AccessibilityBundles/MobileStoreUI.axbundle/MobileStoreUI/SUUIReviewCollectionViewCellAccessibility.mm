@interface SUUIReviewCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUIReviewCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIReviewCollectionViewCell" isKindOfClass:@"SUUIViewReuseCollectionViewCell"];
  [validationsCopy validateClass:@"SUUIViewReuseCollectionViewCell" hasInstanceMethod:@"allExistingViews" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = [(SUUIReviewCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
  v3 = [v2 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isAccessibilityElement])
        {
          [v4 addObject:v10];
        }

        else if ([v10 _accessibilityHasOrderedChildren])
        {
          v13[0] = MEMORY[0x29EDCA5F8];
          v13[1] = 3221225472;
          v13[2] = __63__SUUIReviewCollectionViewCellAccessibility_accessibilityLabel__block_invoke;
          v13[3] = &unk_29F2D8FF0;
          v14 = v4;
          [v10 accessibilityEnumerateContainerElementsUsingBlock:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x29C2E1480](v4);

  return v11;
}

void __63__SUUIReviewCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement])
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end