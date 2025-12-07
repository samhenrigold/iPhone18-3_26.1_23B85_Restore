@interface Artwork.View
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCV11MusicCoreUI7Artwork4View)initWithCoder:(id)coder;
- (_TtCV11MusicCoreUI7Artwork4View)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation Artwork.View

- (_TtCV11MusicCoreUI7Artwork4View)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v7 = 0;
  v7[8] = -1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  Artwork.View.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v3 = self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (v3[48] == 2 && v3[64] == 2)
  {
    v4 = *(v3 + 7);
    v5 = *(v3 + 5);
    selfCopy = self;
    v7.n128_u64[0] = v5;
    v8.n128_u64[0] = v4;
  }

  else
  {
    selfCopy2 = self;
    v7.n128_u64[0] = 0;
    v8.n128_u64[0] = 0;
  }

  Artwork.View.fittingImageSize(in:)(v7, v8);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v7 = v6[48];
  if (v7 == 255)
  {
    selfCopy = self;
    v9.n128_f64[0] = width;
    v10.n128_f64[0] = height;
    Artwork.View.fittingImageSize(in:)(v9, v10);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = *(v6 + 7);
    v16 = *(v6 + 5);
    v17 = v6[64];
    selfCopy2 = self;
    Artwork.Size.Dimension.value(in:)(width, height, v16, v7);
    v12 = v19;
    Artwork.Size.Dimension.value(in:)(width, height, v15, v17);
    v14 = v20;
  }

  v21 = v12;
  v22 = v14;
  result.height = v22;
  result.width = v21;
  return result;
}

- (_TtCV11MusicCoreUI7Artwork4View)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end