@interface UIImage
- (id)resizedImageWithNewSize:(CGSize)size;
@end

@implementation UIImage

- (id)resizedImageWithNewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_100183174(width, height);
  v7 = v6;

  return v7;
}

@end