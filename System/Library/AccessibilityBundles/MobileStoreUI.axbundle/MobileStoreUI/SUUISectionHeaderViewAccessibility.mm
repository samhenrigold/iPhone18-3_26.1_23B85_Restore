@interface SUUISectionHeaderViewAccessibility
- (BOOL)_axHasOnlyStringViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation SUUISectionHeaderViewAccessibility

- (void)layoutSubviews
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = SUUISectionHeaderViewAccessibility;
  [(SUUISectionHeaderViewAccessibility *)&v15 layoutSubviews];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(SUUISectionHeaderViewAccessibility *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDBDC00];
    v8 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ((v7 & [v10 _accessibilityNativeTraits]) == 0)
        {
          [v10 setAccessibilityTraits:{v8 | objc_msgSend(v10, "accessibilityTraits")}];
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (BOOL)_axHasOnlyStringViews
{
  v14 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SUUISectionHeaderViewAccessibility *)self subviews:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        NSClassFromString(&cfstr_Suuiattributed.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  subviews = [(SUUISectionHeaderViewAccessibility *)self subviews];
  string = [MEMORY[0x29EDBA0F8] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = subviews;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuiattributed.isa);
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 _accessibilityViewIsVisible])
        {
          accessibilityLabel = [v9 accessibilityLabel];
          v10 = __AXStringForVariables();

          string = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return string;
}

- (unint64_t)accessibilityTraits
{
  v16 = *MEMORY[0x29EDCA608];
  if (![(SUUISectionHeaderViewAccessibility *)self _axHasOnlyStringViews])
  {
    return *MEMORY[0x29EDC7FA0];
  }

  [(SUUISectionHeaderViewAccessibility *)self subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        NSClassFromString(&cfstr_Suuiattributed.isa);
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 _accessibilityViewIsVisible])
        {
          accessibilityTraits = [v8 accessibilityTraits];

          goto LABEL_14;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  accessibilityTraits = *MEMORY[0x29EDC7578];
LABEL_14:

  return accessibilityTraits;
}

@end