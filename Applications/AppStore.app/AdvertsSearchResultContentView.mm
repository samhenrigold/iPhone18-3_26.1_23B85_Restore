@interface AdvertsSearchResultContentView
- (void)disableAdvertRotationTap;
- (void)layoutSubviews;
@end

@implementation AdvertsSearchResultContentView

- (void)disableAdvertRotationTap
{
  v3 = self + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    selfCopy = self;
    v7 = sub_10000827C(v4, v5);
    v4(v7);

    sub_10001F63C(v4, v5);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006871EC();
}

@end