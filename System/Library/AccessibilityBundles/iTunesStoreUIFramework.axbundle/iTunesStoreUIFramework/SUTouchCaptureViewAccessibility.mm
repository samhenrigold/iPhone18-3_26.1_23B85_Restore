@interface SUTouchCaptureViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SUTouchCaptureViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v30 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v28.receiver = self;
  v28.super_class = SUTouchCaptureViewAccessibility;
  v8 = [(SUTouchCaptureViewAccessibility *)&v28 _accessibilityHitTest:eventCopy withEvent:x, y];
  selfCopy = v8;
  if (v8)
  {
    v10 = v8 == self;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    currentDevice = [(SUTouchCaptureViewAccessibility *)self safeValueForKey:@"passThroughViews", 0];
    v12 = [currentDevice countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(currentDevice);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          [v16 convertPoint:self fromView:{x, y}];
          v17 = [v16 _accessibilityHitTest:eventCopy withEvent:?];

          if (v17)
          {

            selfCopy = v17;
            goto LABEL_20;
          }
        }

        v13 = [currentDevice countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if (!selfCopy)
    {
      if (![(SUTouchCaptureViewAccessibility *)self pointInside:eventCopy withEvent:x, y])
      {
LABEL_28:
        selfCopy = 0;
        goto LABEL_21;
      }

      currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
      if (objc_opt_respondsToSelector())
      {
        currentDevice2 = [MEMORY[0x29EDC7A58] currentDevice];
        userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

        if (userInterfaceIdiom == 1)
        {
          selfCopy = self;
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      selfCopy = 0;
LABEL_20:
    }
  }

LABEL_21:
  if (selfCopy != self)
  {
LABEL_23:
    selfCopy = selfCopy;
    v22 = selfCopy;
    goto LABEL_24;
  }

LABEL_22:
  subviews = [(SUTouchCaptureViewAccessibility *)self subviews];
  v21 = [subviews count];

  if (v21)
  {
    goto LABEL_23;
  }

  v22 = 0;
LABEL_24:

  return v22;
}

@end