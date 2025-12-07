@interface UIPrintPanelViewControllerAccessibility
- (void)dismissPrintPanelWithAction:(int64_t)action animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation UIPrintPanelViewControllerAccessibility

- (void)dismissPrintPanelWithAction:(int64_t)action animated:(BOOL)animated completionHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = UIPrintPanelViewControllerAccessibility;
  [(UIPrintPanelViewControllerAccessibility *)&v5 dismissPrintPanelWithAction:action animated:animated completionHandler:handler];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end