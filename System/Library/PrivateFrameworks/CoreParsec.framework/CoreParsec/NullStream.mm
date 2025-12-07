@interface NullStream
- (_TtC7parsecd10NullStream)initWithURL:(id)l append:(BOOL)append;
@end

@implementation NullStream

- (_TtC7parsecd10NullStream)initWithURL:(id)l append:(BOOL)append
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100108740(v7, append);
}

@end