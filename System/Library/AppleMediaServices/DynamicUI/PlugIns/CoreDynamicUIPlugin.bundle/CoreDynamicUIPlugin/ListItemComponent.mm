@interface ListItemComponent
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ListItemComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_4B66C(selfCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4C1DC(&selRef_layoutSubviews);
}

@end