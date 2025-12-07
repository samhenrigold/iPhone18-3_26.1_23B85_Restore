@interface DummyPreview
- (NSString)description;
- (_TtC5UIKitP33_3B71486064EBB3A7715396E0775E2F5F12DummyPreview)initWithView:(id)view parameters:(id)parameters target:(id)target;
@end

@implementation DummyPreview

- (_TtC5UIKitP33_3B71486064EBB3A7715396E0775E2F5F12DummyPreview)initWithView:(id)view parameters:(id)parameters target:(id)target
{
  v9 = type metadata accessor for DummyPreview();
  v12.receiver = self;
  v12.super_class = v10;
  return [(UITargetedPreview *)&v12 initWithView:view parameters:parameters target:target, v9];
}

- (NSString)description
{
  selfCopy = self;
  view = [(UITargetedPreview *)selfCopy view];
  layer = [(UIView *)view layer];

  name = [(CALayer *)layer name];
  if (!name)
  {
    v6 = type metadata accessor for DummyPreview();
    v10.receiver = selfCopy;
    v10.super_class = v7;
    name = [(UITargetedPreview *)&v10 description];
  }

  sub_18A4A7288();

  v8 = sub_18A4A7258();

  return v8;
}

@end