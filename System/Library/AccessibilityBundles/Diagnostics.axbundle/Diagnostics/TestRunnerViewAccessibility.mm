@interface TestRunnerViewAccessibility
- (id)subviewsForStackViewElement;
@end

@implementation TestRunnerViewAccessibility

- (id)subviewsForStackViewElement
{
  v19 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v17 = 0;
  objc_opt_class();
  v4 = [(TestRunnerViewAccessibility *)self safeValueForKey:@"stackView"];
  v5 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  arrangedSubviews = [v5 arrangedSubviews];
  v7 = [arrangedSubviews countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        subviews = [*(*(&v13 + 1) + 8 * i) subviews];
        [array axSafelyAddObjectsFromArray:subviews];
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

@end