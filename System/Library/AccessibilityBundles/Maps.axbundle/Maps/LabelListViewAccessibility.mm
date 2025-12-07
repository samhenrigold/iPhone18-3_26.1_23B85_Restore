@interface LabelListViewAccessibility
- (id)accessibilityLabel;
@end

@implementation LabelListViewAccessibility

- (id)accessibilityLabel
{
  v16 = *MEMORY[0x29EDCA608];
  string = [MEMORY[0x29EDBA050] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(LabelListViewAccessibility *)self safeValueForKey:@"_labels"];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        accessibilityLabel = [*(*(&v11 + 1) + 8 * i) accessibilityLabel];
        if ([accessibilityLabel length])
        {
          [string appendFormat:@"%@, ", accessibilityLabel];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return string;
}

@end