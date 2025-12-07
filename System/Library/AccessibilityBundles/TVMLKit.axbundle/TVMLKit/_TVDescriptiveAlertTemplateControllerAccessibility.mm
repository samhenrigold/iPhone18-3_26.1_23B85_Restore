@interface _TVDescriptiveAlertTemplateControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation _TVDescriptiveAlertTemplateControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = _TVDescriptiveAlertTemplateControllerAccessibility;
  [(_TVDescriptiveAlertTemplateControllerAccessibility *)&v3 viewDidAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7380], 0);
}

@end