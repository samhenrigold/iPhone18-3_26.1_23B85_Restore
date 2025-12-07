@interface PKPaymentAuthorizationFooterViewAccessibility
- (void)setState:(int64_t)state string:(id)string animated:(BOOL)animated withCompletion:(id)completion;
@end

@implementation PKPaymentAuthorizationFooterViewAccessibility

- (void)setState:(int64_t)state string:(id)string animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  v11.receiver = self;
  v11.super_class = PKPaymentAuthorizationFooterViewAccessibility;
  [(PKPaymentAuthorizationFooterViewAccessibility *)&v11 setState:state string:string animated:animated withCompletion:completion];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __89__PKPaymentAuthorizationFooterViewAccessibility_setState_string_animated_withCompletion___block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = state;
  v8 = MEMORY[0x29C2E4F70](v10);
  v9 = v8;
  if (animatedCopy)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

void __89__PKPaymentAuthorizationFooterViewAccessibility_setState_string_animated_withCompletion___block_invoke(uint64_t a1)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v3[1] = @"PKPaymentProgressState";
  v4[0] = @"ViewDidAppear";
  v3[0] = @"event";
  v1 = [MEMORY[0x29EDBA070] numberWithInteger:*(a1 + 32)];
  v4[1] = v1;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  UIAccessibilityPostNotification(0xFA2u, v2);
}

@end