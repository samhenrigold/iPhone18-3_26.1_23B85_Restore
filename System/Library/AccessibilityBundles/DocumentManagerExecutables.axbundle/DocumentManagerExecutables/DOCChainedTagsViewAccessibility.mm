@interface DOCChainedTagsViewAccessibility
- (id)accessibilityLabel;
@end

@implementation DOCChainedTagsViewAccessibility

- (id)accessibilityLabel
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [(DOCChainedTagsViewAccessibility *)self safeArrayForKey:@"tags"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        displayName = [*(*(&v12 + 1) + 8 * v7) displayName];
        v11 = @"__AXStringForVariablesSentinel";
        v5 = __UIAXStringForVariables();

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:{16, displayName, @"__AXStringForVariablesSentinel"}];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end