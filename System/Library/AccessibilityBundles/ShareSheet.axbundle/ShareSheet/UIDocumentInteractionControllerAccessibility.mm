@interface UIDocumentInteractionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)presentPreviewAnimated:(BOOL)animated;
@end

@implementation UIDocumentInteractionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"presentPreviewAnimated:" withFullSignature:{"B", "B", 0}];
  [validationsCopy validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"previewsPresentWithMarkup" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"previewController" withFullSignature:{"@", 0}];
}

- (BOOL)presentPreviewAnimated:(BOOL)animated
{
  v11.receiver = self;
  v11.super_class = UIDocumentInteractionControllerAccessibility;
  v4 = [(UIDocumentInteractionControllerAccessibility *)&v11 presentPreviewAnimated:animated];
  if ([(UIDocumentInteractionControllerAccessibility *)self safeBoolForKey:@"previewsPresentWithMarkup"])
  {
    objc_opt_class();
    v5 = [(UIDocumentInteractionControllerAccessibility *)self safeValueForKey:@"previewController"];
    v6 = [v5 safeValueForKey:@"additionalRightBarButtonItems"];
    v7 = __UIAccessibilityCastAsClass();

    lastObject = [v7 lastObject];
    v9 = accessibilityLocalizedString(@"sharing.markup.button.label");
    [lastObject setAccessibilityLabel:v9];
  }

  return v4;
}

@end