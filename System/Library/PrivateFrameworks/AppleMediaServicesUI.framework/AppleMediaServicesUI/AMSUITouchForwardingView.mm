@interface AMSUITouchForwardingView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation AMSUITouchForwardingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = AMSUITouchForwardingView;
  v8 = [(AMSUITouchForwardingView *)&v25 hitTest:eventCopy withEvent:x, y];
  v9 = v8;
  if (v8 == self)
  {
    passthroughViews = [(AMSUITouchForwardingView *)self passthroughViews];

    if (passthroughViews)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      passthroughViews2 = [(AMSUITouchForwardingView *)self passthroughViews];
      v13 = [passthroughViews2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(passthroughViews2);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            if (v17)
            {
              [(AMSUITouchForwardingView *)self convertPoint:*(*(&v21 + 1) + 8 * i) toView:x, y];
              v18 = [v17 hitTest:eventCopy withEvent:?];
              if (v18)
              {
                v19 = v18;

                goto LABEL_16;
              }
            }
          }

          v14 = [passthroughViews2 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = v8;
  }

  v19 = selfCopy;
LABEL_16:

  return v19;
}

@end