@interface CSSuggestion
@end

@implementation CSSuggestion

void __31__CSSuggestion_MailUI__mui_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = mui_log_log;
  mui_log_log = v2;
}

uint64_t __43__CSSuggestion_MailUI__mui_emptySuggestion__block_invoke()
{
  v0 = [MEMORY[0x277CC34D8] emptySuggestion];
  v1 = mui_emptySuggestion_emptySuggestion;
  mui_emptySuggestion_emptySuggestion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end