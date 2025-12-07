@interface ContextualSuggestion
- (_TtC26ContextualSuggestionClient20ContextualSuggestion)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextualSuggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_2441D8C4C();
  v6 = sub_2441D8C4C();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC26ContextualSuggestionClient20ContextualSuggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end