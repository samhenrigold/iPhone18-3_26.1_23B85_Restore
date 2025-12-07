@interface DeprecatedText.Drawing.Cache.AttributesWrapper
- (int64_t)hash;
@end

@implementation DeprecatedText.Drawing.Cache.AttributesWrapper

- (int64_t)hash
{
  sub_14545C();
  v3 = *&self->attributes[16];
  v9[0] = *self->attributes;
  v9[1] = v3;
  v4 = *&self->attributes[48];
  v9[2] = *&self->attributes[32];
  v9[3] = v4;

  sub_9674(v9, v7);
  sub_950A4(v8);
  sub_96D0(v9);
  v5 = sub_1454AC();

  return v5;
}

@end