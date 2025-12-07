@interface NSCoder(SidecarNSCoderExtensions)
- (void)decodeObjectOfClass:()SidecarNSCoderExtensions;
@end

@implementation NSCoder(SidecarNSCoderExtensions)

- (void)decodeObjectOfClass:()SidecarNSCoderExtensions
{
  decodeObject = [self decodeObject];
  if (objc_opt_isKindOfClass())
  {
    v4 = decodeObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end