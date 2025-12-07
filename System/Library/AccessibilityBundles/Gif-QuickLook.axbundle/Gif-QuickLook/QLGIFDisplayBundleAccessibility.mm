@interface QLGIFDisplayBundleAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation QLGIFDisplayBundleAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLGIFDisplayBundle" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateProtocol:@"QLSwippableItemProtocol" hasRequiredInstanceMethod:@"previewItem"];
  [validationsCopy validateProtocol:@"QLPreviewItem" hasRequiredInstanceMethod:@"previewItemURL"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = QLGIFDisplayBundleAccessibility;
  [(QLGIFDisplayBundleAccessibility *)&v9 viewDidAppear:appear];
  v4 = [(QLGIFDisplayBundleAccessibility *)self safeValueForKey:@"_imageView"];
  [v4 setIsAccessibilityElement:1];

  v5 = [(QLGIFDisplayBundleAccessibility *)self safeValueForKey:@"previewItem"];
  v6 = [v5 safeValueForKey:@"previewItemURL"];

  v7 = [(QLGIFDisplayBundleAccessibility *)self safeValueForKey:@"_imageView"];
  v8 = UIAccessibilityEmojiDescription();
  [v7 setAccessibilityLabel:v8];
}

@end