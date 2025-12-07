@interface SiriAnalyticsError
- (SiriAnalyticsError)initWithErrorType:(unint64_t)type message:(id)message;
@end

@implementation SiriAnalyticsError

- (SiriAnalyticsError)initWithErrorType:(unint64_t)type message:(id)message
{
  v15[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v8 = messageCopy;
  if (messageCopy)
  {
    v14 = @"message";
    v15[0] = messageCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = self;
  v13.super_class = SiriAnalyticsError;
  v10 = [(SiriAnalyticsError *)&v13 initWithDomain:@"com.apple.siri.analytics" code:type userInfo:v9];
  v11 = v10;
  if (v10)
  {
    v10->_errorType = type;
    objc_storeStrong(&v10->_message, message);
  }

  return v11;
}

@end