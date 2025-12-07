@interface CoreDataValidationCoreAnalyticsEvent
- (CoreDataValidationCoreAnalyticsEvent)initWithValidationError:(int64_t)error;
- (NSDictionary)payload;
@end

@implementation CoreDataValidationCoreAnalyticsEvent

- (CoreDataValidationCoreAnalyticsEvent)initWithValidationError:(int64_t)error
{
  v5.receiver = self;
  v5.super_class = CoreDataValidationCoreAnalyticsEvent;
  result = [(CoreDataValidationCoreAnalyticsEvent *)&v5 init];
  if (result)
  {
    result->_validationError = error;
  }

  return result;
}

- (NSDictionary)payload
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"validationError";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CoreDataValidationCoreAnalyticsEvent validationError](self, "validationError")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end