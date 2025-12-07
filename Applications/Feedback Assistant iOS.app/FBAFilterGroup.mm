@interface FBAFilterGroup
- (NSArray)filters;
- (NSString)title;
- (_TtC18Feedback_Assistant14FBAFilterGroup)init;
- (_TtC18Feedback_Assistant14FBAFilterGroup)initWithName:(id)name filters:(id)filters;
- (void)setFilters:(id)filters;
- (void)setTitle:(id)title;
@end

@implementation FBAFilterGroup

- (NSArray)filters
{
  type metadata accessor for FBAFilter(0, a2);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setFilters:(id)filters
{
  type metadata accessor for FBAFilter(0, a2);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC18Feedback_Assistant14FBAFilterGroup)initWithName:(id)name filters:(id)filters
{
  if (name)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  type metadata accessor for FBAFilter(0, a2);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100059FF8(v4, v5, v6);
}

- (_TtC18Feedback_Assistant14FBAFilterGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end