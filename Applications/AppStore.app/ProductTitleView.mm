@interface ProductTitleView
- (void)contentDidChange;
- (void)didTapIcon:(id)icon;
- (void)layoutSubviews;
@end

@implementation ProductTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100274844();
}

- (void)didTapIcon:(id)icon
{
  v3 = *&self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
  if (v3)
  {
    v4 = *&self->iconTitleView[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
    selfCopy = self;
    v6 = sub_10000827C(v3, v4);
    v3(v6);

    sub_10001F63C(v3, v4);
  }
}

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProductTitleView();
  v2 = v3.receiver;
  [(ProductTitleView *)&v3 contentDidChange];
  [v2 setNeedsLayout];
}

@end