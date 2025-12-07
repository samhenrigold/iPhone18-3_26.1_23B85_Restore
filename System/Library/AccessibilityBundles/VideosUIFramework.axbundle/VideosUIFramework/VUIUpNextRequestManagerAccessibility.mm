@interface VUIUpNextRequestManagerAccessibility
- (void)sendRequestForCanonicalID:(id)d action:(unint64_t)action confirmationShouldWaitCompletion:(BOOL)completion;
@end

@implementation VUIUpNextRequestManagerAccessibility

- (void)sendRequestForCanonicalID:(id)d action:(unint64_t)action confirmationShouldWaitCompletion:(BOOL)completion
{
  completionCopy = completion;
  v8 = *MEMORY[0x29EDC7F10];
  dCopy = d;
  MEMORY[0x29ED40060](v8);
  v10.receiver = self;
  v10.super_class = VUIUpNextRequestManagerAccessibility;
  [(VUIUpNextRequestManagerAccessibility *)&v10 sendRequestForCanonicalID:dCopy action:action confirmationShouldWaitCompletion:completionCopy];
}

@end