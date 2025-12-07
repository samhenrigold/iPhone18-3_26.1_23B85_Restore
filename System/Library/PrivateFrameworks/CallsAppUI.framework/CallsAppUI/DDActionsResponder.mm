@interface DDActionsResponder
- (BOOL)canHandleClientActionFromUrl:(id)url;
- (_TtC10CallsAppUI18DDActionsResponder)init;
- (void)handleClientActionFromUrl:(id)url context:(id)context;
@end

@implementation DDActionsResponder

- (BOOL)canHandleClientActionFromUrl:(id)url
{
  v3 = sub_1CFC9BF28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9BEF8();
  v7 = sub_1CFC54DFC();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (void)handleClientActionFromUrl:(id)url context:(id)context
{
  v4 = sub_1CFC9BF28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9BEF8();
  sub_1CFC54ED8();
  (*(v5 + 8))(v7, v4);
}

- (_TtC10CallsAppUI18DDActionsResponder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end