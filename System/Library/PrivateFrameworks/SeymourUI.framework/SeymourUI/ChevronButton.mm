@interface ChevronButton
- (void)contentSizeCategoryChanged;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ChevronButton

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_20B823318(selfCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B823454(selfCopy);
}

- (void)contentSizeCategoryChanged
{
  selfCopy = self;
  traitCollection = [(ChevronButton *)selfCopy traitCollection];
  sub_20B8236EC(traitCollection);
}

@end