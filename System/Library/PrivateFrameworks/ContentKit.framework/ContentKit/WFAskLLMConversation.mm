@interface WFAskLLMConversation
- (_TtC10ContentKit20WFAskLLMConversation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAskLLMConversation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21E1D4A38(coderCopy, selfCopy, v5);
}

- (_TtC10ContentKit20WFAskLLMConversation)initWithCoder:(id)coder
{
  coderCopy = coder;
  WFAskLLMConversation.init(coder:)(coderCopy, v4, v5);
  return result;
}

@end