@interface ATXContextualSuggestionSnapshot
- (ATXContextualSuggestionSnapshot)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXContextualSuggestionSnapshot

- (void)encodeWithCoder:(id)coder
{
  type metadata accessor for ContextualSuggestionContext();
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_2441D8CFC();
  v7 = sub_2441D8C4C();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (ATXContextualSuggestionSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end