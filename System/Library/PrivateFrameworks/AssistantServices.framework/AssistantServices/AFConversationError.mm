@interface AFConversationError
+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
- (AFConversationError)initWithCode:(int64_t)code localizedFailureReason:(id)reason;
@end

@implementation AFConversationError

+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  reasonCopy = reason;
  v7 = [[self alloc] initWithCode:code localizedFailureReason:reasonCopy];

  return v7;
}

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v7 = [[self alloc] initWithCode:code userInfo:infoCopy];

  return v7;
}

- (AFConversationError)initWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E696A588];
  v12[0] = reason;
  v6 = MEMORY[0x1E695DF20];
  reasonCopy = reason;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(AFConversationError *)self initWithCode:code userInfo:v8];
  return v9;
}

@end