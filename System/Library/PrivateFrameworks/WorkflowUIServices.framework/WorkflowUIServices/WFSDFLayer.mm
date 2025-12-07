@interface WFSDFLayer
- (CGRect)frame;
- (_TtC18WorkflowUIServices10WFSDFLayer)initWithLayer:(id)layer;
- (double)cornerRadius;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
@end

@implementation WFSDFLayer

- (CGRect)frame
{
  selfCopy = self;
  sub_1C8346A84(selfCopy, v3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  sub_1C8346B30();
}

- (double)cornerRadius
{
  selfCopy = self;
  sub_1C8346C10(selfCopy, v3);
  v5 = v4;

  return v5;
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_1C8346C9C(selfCopy, v4, radius);
}

- (_TtC18WorkflowUIServices10WFSDFLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1C840D35C();
  swift_unknownObjectRelease();
  WFSDFLayer.init(layer:)();
}

@end