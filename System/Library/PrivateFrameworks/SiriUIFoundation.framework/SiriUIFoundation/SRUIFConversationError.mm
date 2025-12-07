@interface SRUIFConversationError
+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
- (SRUIFConversationError)initWithCode:(int64_t)code localizedFailureReason:(id)reason;
@end

@implementation SRUIFConversationError

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v7 = [[self alloc] initWithCode:code userInfo:infoCopy];

  return v7;
}

+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  reasonCopy = reason;
  v7 = [[self alloc] initWithCode:code localizedFailureReason:reasonCopy];

  return v7;
}

- (SRUIFConversationError)initWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA470];
  v12[0] = reason;
  v6 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(SRUIFConversationError *)self initWithCode:code userInfo:v8];
  return v9;
}

@end