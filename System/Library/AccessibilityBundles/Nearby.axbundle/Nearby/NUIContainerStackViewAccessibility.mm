@interface NUIContainerStackViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_axArrangedSubviews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NUIContainerStackViewAccessibility

- (id)_axArrangedSubviews
{
  objc_opt_class();
  v3 = [(NUIContainerStackViewAccessibility *)self safeValueForKey:@"_arrangedSubviews"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)isAccessibilityElement
{
  _axArrangedSubviews = [(NUIContainerStackViewAccessibility *)self _axArrangedSubviews];
  v3 = [_axArrangedSubviews count] == 2;

  return v3;
}

- (id)accessibilityLabel
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _axArrangedSubviews = [(NUIContainerStackViewAccessibility *)self _axArrangedSubviews];
  v4 = [_axArrangedSubviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_axArrangedSubviews);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        MEMORY[0x29C2E3980](@"UILabel");
        if (objc_opt_isKindOfClass())
        {
          accessibilityLabel = [v8 accessibilityLabel];

          goto LABEL_11;
        }
      }

      v5 = [_axArrangedSubviews countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11.receiver = self;
  v11.super_class = NUIContainerStackViewAccessibility;
  accessibilityLabel = [(NUIContainerStackViewAccessibility *)&v11 accessibilityLabel];
LABEL_11:

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NUIContainerStackViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(NUIContainerStackViewAccessibility *)&v3 accessibilityTraits];
}

@end