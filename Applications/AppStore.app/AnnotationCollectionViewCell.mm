@interface AnnotationCollectionViewCell
- (BOOL)accessibilityIsSummaryExpandable;
- (NSArray)accessibilityDetailItems;
- (void)accessibilityLinkLabelTapped;
- (void)layoutSubviews;
- (void)linkLabelTapped:(id)tapped;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AnnotationCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1000B08EC(selfCopy, v2);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000B0BD8(selfCopy, v2);
}

- (void)linkLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1000B38FC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000B1E9C(change, selfCopy);
}

- (NSArray)accessibilityDetailItems
{
  selfCopy = self;
  sub_1000B2008();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  selfCopy = self;
  v4 = sub_1000AE724(selfCopy, v3);

  return v4;
}

- (void)accessibilityLinkLabelTapped
{
  selfCopy = self;
  sub_1000B38FC();
}

@end