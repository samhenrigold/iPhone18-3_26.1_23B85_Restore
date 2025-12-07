@interface TTMutableParagraphStyle
+ (id)paragraphStyleNamed:(unsigned int)named;
@end

@implementation TTMutableParagraphStyle

+ (id)paragraphStyleNamed:(unsigned int)named
{
  v3 = *&named;
  v4 = objc_alloc_init(TTMutableParagraphStyle);
  [(TTParagraphStyle *)v4 setStyle:v3];

  return v4;
}

@end