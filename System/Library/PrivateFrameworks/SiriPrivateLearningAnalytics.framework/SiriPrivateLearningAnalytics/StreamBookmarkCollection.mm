@interface StreamBookmarkCollection
- (_TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StreamBookmarkCollection

- (void)encodeWithCoder:(id)coder
{
  type metadata accessor for StreamBookmark();
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_222B025D8();
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (_TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end