@interface SiriSharedUICompactUserUtteranceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_setStreamingText:(id)text carousel:(BOOL)carousel showEditImage:(BOOL)image;
@end

@implementation SiriSharedUICompactUserUtteranceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriSharedUICompactUserUtteranceView" hasInstanceMethod:@"_streamingTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUICStreamingTextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriSharedUICompactUserUtteranceView" hasInstanceMethod:@"_setStreamingText:carousel:showEditImage:" withFullSignature:{"v", "@", "B", "B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SiriSharedUICompactUserUtteranceViewAccessibility *)self safeValueForKey:@"_streamingTextView"];
  v3 = [v2 safeValueForKey:@"text"];

  return v3;
}

- (void)_setStreamingText:(id)text carousel:(BOOL)carousel showEditImage:(BOOL)image
{
  v6.receiver = self;
  v6.super_class = SiriSharedUICompactUserUtteranceViewAccessibility;
  [(SiriSharedUICompactUserUtteranceViewAccessibility *)&v6 _setStreamingText:text carousel:carousel showEditImage:image];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end