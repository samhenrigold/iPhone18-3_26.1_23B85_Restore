@interface TabDocumentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_webView:(id)view takeFocus:(int64_t)focus;
- (void)setActive:(BOOL)active;
@end

@implementation TabDocumentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"_webView:takeFocus:" withFullSignature:{"v", "@", "q", 0}];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v5 = [(TabDocumentAccessibility *)self safeBoolForKey:@"isActive"];
  v6.receiver = self;
  v6.super_class = TabDocumentAccessibility;
  [(TabDocumentAccessibility *)&v6 setActive:activeCopy];
  if (activeCopy && (v5 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (void)_webView:(id)view takeFocus:(int64_t)focus
{
  viewCopy = view;
  if (([viewCopy _accessibilityIsFKARunningForFocusItem] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TabDocumentAccessibility;
    [(TabDocumentAccessibility *)&v7 _webView:viewCopy takeFocus:focus];
  }
}

@end