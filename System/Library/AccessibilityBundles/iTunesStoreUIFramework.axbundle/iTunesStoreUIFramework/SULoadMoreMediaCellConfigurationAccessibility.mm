@interface SULoadMoreMediaCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SULoadMoreMediaCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SULoadMoreMediaCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  [v3 bytes];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end