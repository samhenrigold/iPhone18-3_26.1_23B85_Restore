@interface PKApplePayUserEducationDemoAnimationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKApplePayUserEducationDemoAnimationView)initWithCoder:(id)coder;
- (void)dealloc;
@end

@implementation PKApplePayUserEducationDemoAnimationView

- (PKApplePayUserEducationDemoAnimationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor) = 0;
  v3 = OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_layerColorConfigurationSets;
  *(&self->super.super.super.super.super.isa + v3) = sub_1BD2844B4(self);
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor);
  selfCopy = self;
  if (v4)
  {
    sub_1BE048964();
    sub_1BD284158();
    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  [(PKApplePayUserEducationDemoAnimationView *)&v13 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Height = CGRectGetHeight(v20);
  v14.n128_u64[0] = 0.5;
  v15.n128_f64[0] = Height * 0.5;
  PKFloatRoundToPixel(v15, v14);
  v17 = v16;
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

@end