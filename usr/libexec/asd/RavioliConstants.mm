@interface RavioliConstants
+ (NSUUID)ravioliUUID;
@end

@implementation RavioliConstants

+ (NSUUID)ravioliUUID
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static RavioliConstants.ravioliUUID.getter(v7);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v7, v2);

  return v8.super.isa;
}

@end