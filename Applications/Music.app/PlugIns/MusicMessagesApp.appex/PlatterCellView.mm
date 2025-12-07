@interface PlatterCellView
- (BOOL)isHighlighted;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PlatterCellView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100011D3C(selfCopy);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlatterCellView();
  return [(PlatterCellView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  selfCopy = self;
  sub_100011F38(highlightedCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100012070(selfCopy);
}

@end