@interface ArcadeDownloadPackGameLockupPlaceholder
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(ArcadeDownloadPackGameLockupPlaceholder *)selfCopy traitCollection];
  v6 = sub_100333214(width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ArcadeDownloadPackGameLockupPlaceholder *)&v6 layoutSubviews];
  sub_100332210(v4);
  sub_10000CF78(v4, v5);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

@end