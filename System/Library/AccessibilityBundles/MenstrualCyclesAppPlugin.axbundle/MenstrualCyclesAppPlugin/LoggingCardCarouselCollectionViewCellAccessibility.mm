@interface LoggingCardCarouselCollectionViewCellAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation LoggingCardCarouselCollectionViewCellAccessibility

- (BOOL)accessibilityElementsHidden
{
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityAncestorIsKindOf:objc_opt_class()];
  [v3 bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  [v2 bounds];
  [v3 convertRect:v2 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  indexPathsForVisibleItems = [v3 indexPathsForVisibleItems];
  v17 = [indexPathsForVisibleItems countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v21 = [v3 cellForItemAtIndexPath:*(*(&v24 + 1) + 8 * i)];
        [v21 bounds];
        [v3 convertRect:v21 fromView:?];
        v31.x = v5;
        v31.y = v7;
        if (CGRectContainsPoint(v33, v31))
        {
          v34.origin.x = v9;
          v34.origin.y = v11;
          v34.size.width = v13;
          v34.size.height = v15;
          v32.x = v5;
          v32.y = v7;
          if (CGRectContainsPoint(v34, v32))
          {

            v22 = 0;
            goto LABEL_12;
          }
        }
      }

      v18 = [indexPathsForVisibleItems countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_12:

  return v22;
}

@end