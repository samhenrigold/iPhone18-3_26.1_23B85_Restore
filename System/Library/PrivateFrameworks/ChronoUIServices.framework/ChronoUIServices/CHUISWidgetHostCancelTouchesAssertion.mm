@interface CHUISWidgetHostCancelTouchesAssertion
- (CHUISWidgetHostCancelTouchesAssertion)initWithAssertions:(id)assertions;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CHUISWidgetHostCancelTouchesAssertion

- (CHUISWidgetHostCancelTouchesAssertion)initWithAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v9.receiver = self;
  v9.super_class = CHUISWidgetHostCancelTouchesAssertion;
  v5 = [(CHUISWidgetHostCancelTouchesAssertion *)&v9 init];
  if (v5)
  {
    v6 = [assertionsCopy copy];
    assertions = v5->_assertions;
    v5->_assertions = v6;
  }

  return v5;
}

- (void)dealloc
{
  if (![(CHUISWidgetHostCancelTouchesAssertion *)self isInvalidated])
  {
    [(CHUISWidgetHostCancelTouchesAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = CHUISWidgetHostCancelTouchesAssertion;
  [(CHUISWidgetHostCancelTouchesAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  if (![(CHUISWidgetHostCancelTouchesAssertion *)self isInvalidated])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    assertions = [(CHUISWidgetHostCancelTouchesAssertion *)self assertions];
    v4 = [assertions countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(assertions);
          }

          [*(*(&v7 + 1) + 8 * v6++) invalidate];
        }

        while (v4 != v6);
        v4 = [assertions countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [(CHUISWidgetHostCancelTouchesAssertion *)self setInvalidated:1];
  }
}

@end