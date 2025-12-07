@interface ETGLSketchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)animateOutWithCompletion:(id)completion;
- (void)setPaused:(BOOL)paused;
@end

@implementation ETGLSketchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETGLSketchView"];
  [validationsCopy validateClass:@"ETGLSketchView" hasInstanceMethod:@"setPaused:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"ETGLSketchView" hasInstanceMethod:@"animateOutWithCompletion:" withFullSignature:{"v", "@?", 0}];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  if (paused || !UIAccessibilityIsVoiceOverRunning())
  {
    v5.receiver = self;
    v5.super_class = ETGLSketchViewAccessibility;
    [(ETGLSketchViewAccessibility *)&v5 setPaused:pausedCopy];
  }

  else
  {
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __41__ETGLSketchViewAccessibility_setPaused___block_invoke;
    v9 = &unk_29F2BAB18;
    v11 = pausedCopy;
    selfCopy = self;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

id __41__ETGLSketchViewAccessibility_setPaused___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = ETGLSketchViewAccessibility;
  return objc_msgSendSuper2(&v3, sel_setPaused_, v1);
}

- (void)animateOutWithCompletion:(id)completion
{
  completionCopy = completion;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ETGLSketchViewAccessibility;
    [(ETGLSketchViewAccessibility *)&v5 animateOutWithCompletion:completionCopy];
  }
}

@end