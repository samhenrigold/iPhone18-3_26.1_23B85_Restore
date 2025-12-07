@interface MusicPageHeaderPlayButton
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MusicPageHeaderPlayButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_469B8(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_46AC8(selfCopy);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PageHeaderPlayButton();
  return [(MusicPageHeaderPlayButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  selfCopy = self;
  sub_46DDC(highlightedCopy);
}

@end