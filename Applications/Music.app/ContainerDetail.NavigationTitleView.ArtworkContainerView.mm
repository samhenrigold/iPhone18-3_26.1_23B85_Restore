@interface ContainerDetail.NavigationTitleView.ArtworkContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ContainerDetail.NavigationTitleView.ArtworkContainerView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _s19NavigationTitleViewC20ArtworkContainerViewCMa(0);
  v2 = v11.receiver;
  [(ContainerDetail.NavigationTitleView.ArtworkContainerView *)&v11 layoutSubviews];
  v3 = &v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs];
  v4 = CGRect.centeringAlong(axes:in:)(0.0, 0.0, *&v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs], *&v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs + 8]);
  v5 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkView;
  [*&v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkView] setFrame:{v4, v11.receiver, v11.super_class}];
  v6 = *&v2[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkShadowView];
  [*&v2[v5] frame];
  [v6 setFrame:{sub_100058728(v7, v8, v9, v10, v3[8], v3[9])}];
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs);
  v3 = *&self->artworkView[OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(ContainerDetail.NavigationTitleView.ArtworkContainerView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end