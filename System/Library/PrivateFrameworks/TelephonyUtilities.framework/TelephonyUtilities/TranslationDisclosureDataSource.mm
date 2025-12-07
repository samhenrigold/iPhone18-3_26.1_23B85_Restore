@interface TranslationDisclosureDataSource
- (void)assetsUpdated:(id)updated availability:(int64_t)availability;
- (void)localeUpdated:(id)updated;
@end

@implementation TranslationDisclosureDataSource

- (void)localeUpdated:(id)updated
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10037FC84();

  (*(v4 + 8))(v6, v3);
}

- (void)assetsUpdated:(id)updated availability:(int64_t)availability
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100380014(v5, v7, availability);
}

@end