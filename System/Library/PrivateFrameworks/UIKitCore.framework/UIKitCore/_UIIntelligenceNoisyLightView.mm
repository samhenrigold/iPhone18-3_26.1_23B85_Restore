@interface _UIIntelligenceNoisyLightView
+ (Class)layerClass;
- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithCoder:(id)coder;
- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithFrame:(CGRect)frame;
- (void)_layerCornerCurveDidChange:(id)change;
- (void)_layerCornerRadiusDidChange:(double)change;
- (void)_layerMaskedCornersDidChange:(unint64_t)change;
- (void)layoutSubviews;
@end

@implementation _UIIntelligenceNoisyLightView

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  v2 = v12.receiver;
  [(UIView *)&v12 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  sub_188DEDFE8(KeyPath, v4, v6, v8, v10);
}

+ (Class)layerClass
{
  sub_18912BF9C();

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithCoder:(id)coder
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_layerCornerRadiusDidChange:(double)change
{
  KeyPath = swift_getKeyPath();
  selfCopy = self;
  sub_18912BB88(KeyPath, change);
}

- (void)_layerCornerCurveDidChange:(id)change
{
  KeyPath = swift_getKeyPath();
  changeCopy = change;
  selfCopy = self;
  sub_18912BC24(changeCopy, KeyPath);
}

- (void)_layerMaskedCornersDidChange:(unint64_t)change
{
  KeyPath = swift_getKeyPath();
  selfCopy = self;
  sub_18912BCBC(change, KeyPath);
}

- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end