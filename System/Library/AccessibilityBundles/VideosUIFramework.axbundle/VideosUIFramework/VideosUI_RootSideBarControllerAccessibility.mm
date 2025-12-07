@interface VideosUI_RootSideBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation VideosUI_RootSideBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.RootSideBarController" hasSwiftField:@"delegate" withSwiftType:"Optional<RootSideBarControllerDelegate>"];
  [validationsCopy validateClass:@"VideosUI.RootSplitViewController" hasSwiftField:@"pillView" withSwiftType:"RootSideBarPillView"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = VideosUI_RootSideBarControllerAccessibility;
  [(VideosUI_RootSideBarControllerAccessibility *)&v10 viewDidDisappear:disappear];
  v4 = [(VideosUI_RootSideBarControllerAccessibility *)self safeSwiftValueForKey:@"delegate"];
  v5 = [v4 safeSwiftValueForKey:@"pillView"];
  v6 = [v5 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_13];
  v7 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_302];

  if ([v7 count] == 2)
  {
    v8 = *MEMORY[0x29EDC7EA8];
    v9 = [v7 componentsJoinedByString:{@", "}];
    UIAccessibilityPostNotification(v8, v9);
  }
}

@end