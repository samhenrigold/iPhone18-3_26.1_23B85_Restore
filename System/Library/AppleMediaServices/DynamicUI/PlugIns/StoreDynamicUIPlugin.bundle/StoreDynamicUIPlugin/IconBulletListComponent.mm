@interface IconBulletListComponent
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation IconBulletListComponent

- (void)layoutSubviews
{
  selfCopy = self;
  sub_B53C0();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_B5578(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_B5894(selfCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_B59F8(change);
}

@end