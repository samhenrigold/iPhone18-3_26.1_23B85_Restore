@interface NSCoder(BCSNSCoderExtras)
- (id)_bcs_strictlyDecodeObjectOfClass:()BCSNSCoderExtras forKey:;
@end

@implementation NSCoder(BCSNSCoderExtras)

- (id)_bcs_strictlyDecodeObjectOfClass:()BCSNSCoderExtras forKey:
{
  v3 = [self decodeObjectOfClass:? forKey:?];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end