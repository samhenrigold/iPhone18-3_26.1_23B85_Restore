@interface BadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)didTapBadgeView:(id)view;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BadgeView

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for BadgeView(0);
  [(BadgeView *)&v6 dealloc];
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1005010B8();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BadgeView(0);
  v2 = v3.receiver;
  [(BadgeView *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_100501240();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100501B24();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100501E84(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100502178(change);
}

- (void)didTapBadgeView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1005036A4();
}

@end