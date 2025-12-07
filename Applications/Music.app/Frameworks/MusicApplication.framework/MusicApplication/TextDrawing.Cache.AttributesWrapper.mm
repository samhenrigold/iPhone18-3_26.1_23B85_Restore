@interface TextDrawing.Cache.AttributesWrapper
- (int64_t)hash;
@end

@implementation TextDrawing.Cache.AttributesWrapper

- (int64_t)hash
{
  sub_ABB5C0();
  v3 = *&self->attributes[16];
  v7 = *self->attributes;
  v8 = v3;
  v9 = *&self->attributes[32];
  v10 = *&self->attributes[48];

  TextAttributes.hash(into:)(v6);
  v4 = sub_ABB610();

  return v4;
}

@end