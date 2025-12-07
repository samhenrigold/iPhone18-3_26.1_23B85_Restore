@interface PLCropOverlayAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PLCropOverlayAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  [(PLCropOverlayAccessibility *)self safeValueForKey:@"subviews"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [(PLCropOverlayAccessibility *)self convertPoint:v13 toView:x, y, v17];
        v14 = [v13 _accessibilityHitTest:eventCopy withEvent:?];
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end