@interface NikeUITableViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
@end

@implementation NikeUITableViewAccessibility

- (id)_accessibilitySupplementaryHeaderViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  accessibilityIdentification = [(NikeUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"TableWithFakeHeaderFooter"];

  if (v4)
  {
    v5 = [(NikeUITableViewAccessibility *)self _accessibilityValueForKey:@"_axHeader"];
    v9[0] = v5;
    _accessibilitySupplementaryHeaderViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NikeUITableViewAccessibility;
    _accessibilitySupplementaryHeaderViews = [(NikeUITableViewAccessibility *)&v8 _accessibilitySupplementaryHeaderViews];
  }

  return _accessibilitySupplementaryHeaderViews;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  accessibilityIdentification = [(NikeUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"TableWithFakeHeaderFooter"];

  if (v4)
  {
    v5 = [(NikeUITableViewAccessibility *)self _accessibilityValueForKey:@"_axFooter"];
    v9[0] = v5;
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NikeUITableViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(NikeUITableViewAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

@end