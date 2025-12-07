@interface SUReviewCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUReviewCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUReviewCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  [v3 bytes];
  v4 = [(SUReviewCellConfigurationAccessibility *)self safeValueForKey:@"_representedObject"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeValueForKey:@"reviewStatistics"];
    v7 = [v6 safeValueForKey:@"averageUserRating"];
    [v7 floatValue];
    v9 = v8;

    v10 = starStringForStarCount(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = __UIAXStringForVariables();

  return v11;
}

@end