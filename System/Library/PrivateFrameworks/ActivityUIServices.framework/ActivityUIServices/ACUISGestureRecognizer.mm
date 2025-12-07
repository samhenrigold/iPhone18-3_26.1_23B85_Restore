@interface ACUISGestureRecognizer
- (ACUISGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (BOOL)_shouldRecognizeTouchForView:(id)view;
- (BOOL)_shouldRecognizeTouches:(id)touches;
- (NSSet)observedControlClasses;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ACUISGestureRecognizer

- (NSSet)observedControlClasses
{
  observedControlClasses = self->_observedControlClasses;
  if (!observedControlClasses)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    v7 = self->_observedControlClasses;
    self->_observedControlClasses = v6;

    observedControlClasses = self->_observedControlClasses;
  }

  return observedControlClasses;
}

- (ACUISGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  v4 = [(ACUISGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(ACUISGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(ACUISGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(ACUISGestureRecognizer *)v5 setDelegate:v5];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  beganCopy = began;
  [(ACUISGestureRecognizer *)&v7 touchesBegan:beganCopy withEvent:event];
  LODWORD(event) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:beganCopy, v7.receiver, v7.super_class];

  if (event)
  {
    [(ACUISGestureRecognizer *)self setState:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  movedCopy = moved;
  [(ACUISGestureRecognizer *)&v7 touchesMoved:movedCopy withEvent:event];
  LODWORD(event) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:movedCopy, v7.receiver, v7.super_class];

  if (event)
  {
    [(ACUISGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = ACUISGestureRecognizer;
  endedCopy = ended;
  [(ACUISGestureRecognizer *)&v7 touchesEnded:endedCopy withEvent:event];
  LODWORD(event) = [(ACUISGestureRecognizer *)self _shouldRecognizeTouches:endedCopy, v7.receiver, v7.super_class];

  if (event)
  {
    [(ACUISGestureRecognizer *)self setState:3];
  }
}

- (BOOL)_shouldRecognizeTouches:(id)touches
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  touchesCopy = touches;
  v5 = [touchesCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(touchesCopy);
        }

        view = [*(*(&v21 + 1) + 8 * i) view];
        if ([(ACUISGestureRecognizer *)self _shouldRecognizeTouchForView:view])
        {
LABEL_19:

          v15 = 1;
          goto LABEL_21;
        }

        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        v10 = [(ACUISGestureRecognizer *)self observedControlClasses:0];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if (objc_opt_isKindOfClass())
              {

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [touchesCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  return v15;
}

- (BOOL)_shouldRecognizeTouchForView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v6 = viewCopy;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v7 = [(ACUISGestureRecognizer *)self observedControlClasses:0];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            isKindOfClass = objc_opt_isKindOfClass();
          }

          v13 = isKindOfClass;
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);

        if (v13)
        {
          v15 = 1;
          goto LABEL_18;
        }
      }

      else
      {
      }

      superview = [v6 superview];

      v6 = superview;
      if (!superview)
      {
        v15 = 0;
        goto LABEL_18;
      }
    }

    v15 = [v6 acuis_wantsPriorityOverTargetOfGestureRecognizer:self];
LABEL_18:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end