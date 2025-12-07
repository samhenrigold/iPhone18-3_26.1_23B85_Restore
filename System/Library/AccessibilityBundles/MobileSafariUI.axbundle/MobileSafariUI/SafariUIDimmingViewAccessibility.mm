@interface SafariUIDimmingViewAccessibility
- (id)passthroughViews;
@end

@implementation SafariUIDimmingViewAccessibility

- (id)passthroughViews
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = SafariUIDimmingViewAccessibility;
  passthroughViews = [(SafariUIDimmingViewAccessibility *)&v16 passthroughViews];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    array = [MEMORY[0x29EDB8DE8] array];
    NSClassFromString(&cfstr_Browsertoolbar.isa);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = passthroughViews;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [array addObject:{v10, v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    [(SafariUIDimmingViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:@"axPassthroughViews"];
  }

  else
  {
    array = passthroughViews;
  }

  return array;
}

@end