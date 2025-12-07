@interface FBADraftDirectoriesCleanUp
+ (void)cleanDraftDirectoryWithStalenessDate:(id)date filerFormType:(int64_t)type url:(id)url;
- (_TtC18Feedback_Assistant26FBADraftDirectoriesCleanUp)init;
@end

@implementation FBADraftDirectoriesCleanUp

+ (void)cleanDraftDirectoryWithStalenessDate:(id)date filerFormType:(int64_t)type url:(id)url
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006E400(v13, type, v9);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

- (_TtC18Feedback_Assistant26FBADraftDirectoriesCleanUp)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBADraftDirectoriesCleanUp(self, a2);
  return [(FBADraftDirectoriesCleanUp *)&v3 init];
}

@end