@interface UIView(AccessibilityDragAndDrop)
- (id)_accessibilityDragAndDropTargetViewForDrop:()AccessibilityDragAndDrop eventGestureController:;
@end

@implementation UIView(AccessibilityDragAndDrop)

- (id)_accessibilityDragAndDropTargetViewForDrop:()AccessibilityDragAndDrop eventGestureController:
{
  v25 = *MEMORY[0x29EDCA608];
  superview = [self superview];
  if (superview)
  {
    v6 = superview;
    v19 = a4;
    v7 = 0uLL;
    do
    {
      v22 = v7;
      v23 = v7;
      v20 = v7;
      v21 = v7;
      interactions = [v6 interactions];
      v9 = [interactions countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(interactions);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              delegate = [v13 delegate];
            }

            else
            {
              delegate = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v6;
              if (v19)
              {
                v17 = delegate;
                *v19 = delegate;
              }

              goto LABEL_19;
            }
          }

          v10 = [interactions countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      superview2 = [v6 superview];

      v6 = superview2;
      v7 = 0uLL;
    }

    while (superview2);
  }

  v16 = 0;
LABEL_19:

  return v16;
}

@end