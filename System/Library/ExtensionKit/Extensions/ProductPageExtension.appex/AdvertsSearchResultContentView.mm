@interface AdvertsSearchResultContentView
- (void)disableAdvertRotationTap;
- (void)layoutSubviews;
@end

@implementation AdvertsSearchResultContentView

- (void)disableAdvertRotationTap
{
  v3 = self + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    selfCopy = self;
    v7 = sub_10001CE50(v4, v5);
    v4(v7);

    sub_1000167E0(v4, v5);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100534634();
}

@end