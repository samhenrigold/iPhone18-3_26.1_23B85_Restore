@interface CSPasscodeViewControllerAccessibility
- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion;
@end

@implementation CSPasscodeViewControllerAccessibility

- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __107__CSPasscodeViewControllerAccessibility_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke;
  v11[3] = &unk_29F2B94B8;
  v12 = completionCopy;
  v10.receiver = self;
  v10.super_class = CSPasscodeViewControllerAccessibility;
  v9 = completionCopy;
  [(CSPasscodeViewControllerAccessibility *)&v10 performCustomTransitionToVisible:visibleCopy withAnimationSettings:settings completion:v11];
}

void __107__CSPasscodeViewControllerAccessibility_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

@end