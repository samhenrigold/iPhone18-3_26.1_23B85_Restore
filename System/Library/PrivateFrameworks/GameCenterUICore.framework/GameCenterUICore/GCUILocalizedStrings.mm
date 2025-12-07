@interface GCUILocalizedStrings
+ (id)OVERLAY_FRIEND_REQUESTS_HIGHLIGHT_SUBTITLEWithAlias:(id)alias count:(int64_t)count;
@end

@implementation GCUILocalizedStrings

+ (id)OVERLAY_FRIEND_REQUESTS_HIGHLIGHT_SUBTITLEWithAlias:(id)alias count:(int64_t)count
{
  v5 = sub_24E4DEC78();
  static GCUILocalizedStrings.OVERLAY_FRIEND_REQUESTS_HIGHLIGHT_SUBTITLE(alias:count:)(v5, v6, count);

  v7 = sub_24E4DEC68();

  return v7;
}

@end