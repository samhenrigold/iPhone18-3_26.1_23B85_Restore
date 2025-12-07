@interface _UISplitViewControllerAdaptiveColumnViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShowsSidebar;
- (BOOL)shouldGroupAccessibilityChildren;
- (int64_t)_accessibilitySortPriority;
@end

@implementation _UISplitViewControllerAdaptiveColumnViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UISplitViewControllerAdaptiveColumnView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UISplitViewControllerAdaptiveColumnView" hasInstanceMethod:@"splitViewControllerColumn" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)shouldGroupAccessibilityChildren
{
  selfCopy = self;
  v5 = a2;
  if ([(_UISplitViewControllerAdaptiveColumnViewAccessibility *)self _axShowsSidebar])
  {
    shouldGroupAccessibilityChildren = 1;
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UISplitViewControllerAdaptiveColumnViewAccessibility;
    shouldGroupAccessibilityChildren = [(_UISplitViewControllerAdaptiveColumnViewAccessibility *)&v4 shouldGroupAccessibilityChildren];
  }

  return shouldGroupAccessibilityChildren != 0;
}

- (int64_t)_accessibilitySortPriority
{
  selfCopy = self;
  v5 = a2;
  if ([(_UISplitViewControllerAdaptiveColumnViewAccessibility *)self _axShowsSidebar])
  {
    return 1000;
  }

  v4.receiver = selfCopy;
  v4.super_class = _UISplitViewControllerAdaptiveColumnViewAccessibility;
  return [(_UISplitViewControllerAdaptiveColumnViewAccessibility *)&v4 _accessibilitySortPriority];
}

- (BOOL)_axShowsSidebar
{
  selfCopy = self;
  v12 = a2;
  v10 = 0;
  v9 = __UIAccessibilitySafeClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  traitCollection = [v8 traitCollection];
  v5 = [traitCollection horizontalSizeClass] == 1;
  MEMORY[0x29EDC9740](traitCollection);
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v11 = v5;
  v7 = [(_UISplitViewControllerAdaptiveColumnViewAccessibility *)selfCopy safeIntForKey:@"splitViewControllerColumn", v2]== 0;
  v6 = 0;
  if (!v11)
  {
    return v7;
  }

  return v6;
}

@end