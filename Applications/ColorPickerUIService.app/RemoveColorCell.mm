@interface RemoveColorCell
- (BOOL)isSelected;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation RemoveColorCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoveColorCell();
  return [(RemoveColorCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RemoveColorCell();
  v4 = v5.receiver;
  [(RemoveColorCell *)&v5 setSelected:selectedCopy];
  [v4 setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000376A4(selfCopy);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = sub_100037A44();

  return v3;
}

@end