@interface STRecoveryEmailMismatchCoreAnalyticsEvent
- (NSDictionary)payload;
- (STRecoveryEmailMismatchCoreAnalyticsEvent)initWithRecoveryEmailMismatched:(BOOL)mismatched;
@end

@implementation STRecoveryEmailMismatchCoreAnalyticsEvent

- (STRecoveryEmailMismatchCoreAnalyticsEvent)initWithRecoveryEmailMismatched:(BOOL)mismatched
{
  v5.receiver = self;
  v5.super_class = STRecoveryEmailMismatchCoreAnalyticsEvent;
  result = [(STRecoveryEmailMismatchCoreAnalyticsEvent *)&v5 init];
  result->_isRecoveryEmailMismatched = mismatched;
  return result;
}

- (NSDictionary)payload
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"isRecoveryEmailMismatched";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRecoveryEmailMismatchCoreAnalyticsEvent isRecoveryEmailMismatched](self, "isRecoveryEmailMismatched")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end