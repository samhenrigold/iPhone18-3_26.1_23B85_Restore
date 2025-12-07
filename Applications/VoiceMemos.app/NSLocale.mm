@interface NSLocale
+ (id)numberingSystem;
@end

@implementation NSLocale

+ (id)numberingSystem
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.autoupdatingCurrent.getter();
  Locale.numberingSystem.getter();
  Locale.NumberingSystem.identifier.getter();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = String._bridgeToObjectiveC()();

  return v10;
}

@end