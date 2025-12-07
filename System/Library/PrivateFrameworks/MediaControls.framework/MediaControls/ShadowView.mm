@interface ShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC13MediaControls10ShadowView)initWithCoder:(id)coder;
- (_TtC13MediaControls10ShadowView)initWithFrame:(CGRect)frame;
@end

@implementation ShadowView

- (_TtC13MediaControls10ShadowView)initWithCoder:(id)coder
{
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    sub_1A22E65C8();
    v5 = v4;
    selfCopy = self;
    selfCopy2 = sub_1A22E6598();
    v9 = selfCopy2;
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
    v5 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for ShadowView(selfCopy2, v8);
  v10 = [(ShadowView *)&v13 _shouldAnimatePropertyWithKey:v9];

  if (v10)
  {

    v12 = 1;
    return v12 & 1;
  }

  if (v5)
  {
    v12 = sub_1A22E66B8();

    return v12 & 1;
  }

  __break(1u);
  return result;
}

- (_TtC13MediaControls10ShadowView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end