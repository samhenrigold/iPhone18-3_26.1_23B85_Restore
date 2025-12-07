@interface LaunchConfiguration
- (NSString)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LaunchConfiguration

- (NSString)identifier
{
  if (*(self + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier + 8))
  {

    v2 = sub_1B8A23EF4();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B8A09DA4(coderCopy);
}

@end