@interface _TVListViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityFrameDelegate;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation _TVListViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  v3 = MEMORY[0x29EDBD618];
  v4 = *MEMORY[0x29EDBD618];
  validationsCopy = validations;
  [validationsCopy client:v4 validateClass:@"_TVListViewController"];
  [validationsCopy client:*v3 validateClass:@"_TVListViewController" hasInstanceVariable:@"_collectionElement" withType:"IKCollectionElement"];
  [validationsCopy validateClass:@"_TVListViewCell" hasInstanceMethod:@"setSelected:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"_TVListViewCell" hasInstanceMethod:@"floatingView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  _accessibleSubviews = [(_TVListViewCellAccessibility *)self _accessibleSubviews];
  array = [MEMORY[0x29EDB8DE8] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _accessibleSubviews;
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:{v9, v13}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [array sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
  v11 = MEMORY[0x29ED3B640](array);

  return v11;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v16 = *MEMORY[0x29EDCA608];
  _accessibleSubviews = [(_TVListViewCellAccessibility *)self _accessibleSubviews];
  array = [MEMORY[0x29EDB8DE8] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _accessibleSubviews;
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

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isAccessibilityElement])
        {
          [array addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = _TVListViewCellAccessibility;
  [(_TVListViewCellAccessibility *)&v7 setSelected:selected animated:animated];
  v6 = MEMORY[0x29EDC7FC0];
  if (!selectedCopy)
  {
    v6 = MEMORY[0x29EDC7FA0];
  }

  [(_TVListViewCellAccessibility *)self setAccessibilityTraits:*v6];
}

- (unint64_t)accessibilityTraits
{
  _accessibleSubviews = [(_TVListViewCellAccessibility *)self _accessibleSubviews];
  v4 = [_accessibleSubviews count];

  if (!v4)
  {
    return *MEMORY[0x29EDC7578];
  }

  v5 = *MEMORY[0x29EDC7FA0];
  v6 = [(_TVListViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_6];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  v9.receiver = self;
  v9.super_class = _TVListViewCellAccessibility;
  return v7 | v5 | [(_TVListViewCellAccessibility *)&v9 accessibilityTraits];
}

- (id)_accessibilityFrameDelegate
{
  v3 = [(_TVListViewCellAccessibility *)self safeValueForKey:@"floatingView"];
  v4 = v3;
  if (v3)
  {
    _accessibilityFrameDelegate = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _TVListViewCellAccessibility;
    _accessibilityFrameDelegate = [(_TVListViewCellAccessibility *)&v8 _accessibilityFrameDelegate];
  }

  v6 = _accessibilityFrameDelegate;

  return v6;
}

@end