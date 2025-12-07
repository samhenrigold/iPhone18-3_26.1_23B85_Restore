@interface DebugFormatContentSizeCategoryCell
- (_TtC8NewsFeed34DebugFormatContentSizeCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)onValueChangeWithSlider:(id)slider;
- (void)prepareForReuse;
@end

@implementation DebugFormatContentSizeCategoryCell

- (_TtC8NewsFeed34DebugFormatContentSizeCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D6E96D3C(style, identifier, v6);
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(DebugFormatContentSizeCategoryCell *)&v6 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock];
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock];
  v5 = *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock + 8];
  *v3 = 0;
  *(v3 + 1) = 0;
  sub_1D613694C(v4, v5);
}

- (void)onValueChangeWithSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_1D6E97520(sliderCopy);
}

@end