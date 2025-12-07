@interface EpicShowcaseViewControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation EpicShowcaseViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = EpicShowcaseViewControllerAccessibility;
  [(EpicShowcaseViewControllerAccessibility *)&v6 viewDidAppear:appear];
  if (viewDidAppear__onceToken_targetClass != -1)
  {
    [EpicShowcaseViewControllerAccessibility viewDidAppear:];
  }

  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];
  v5 = [view _accessibilityDescendantOfType:viewDidAppear__targetClass];

  if (v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v5);
  }
}

uint64_t __57__EpicShowcaseViewControllerAccessibility_viewDidAppear___block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.CollectionRichHeaderView");
  viewDidAppear__targetClass = result;
  return result;
}

@end