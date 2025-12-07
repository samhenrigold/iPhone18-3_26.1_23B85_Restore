@interface ScrollEdgeEffectView.PocketBlur
- (_TtCC5UIKit20ScrollEdgeEffectView10PocketBlur)initWithCoder:(id)coder;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ScrollEdgeEffectView.PocketBlur

- (_TtCC5UIKit20ScrollEdgeEffectView10PocketBlur)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges) = 0;
  v3 = (self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_pocketMaskPortal);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation) = 1065353216;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled) = 1;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  _s10PocketBlurCMa();
  v10.receiver = self;
  v10.super_class = v3;
  selfCopy = self;
  [(UIView *)&v10 layoutSubviews];
  v6 = sub_188FFA534(v9);
  if (*(v5 + 16))
  {
    v7 = v5;
    v8 = selfCopy;
    sub_188FFF7D8(v7, v8);
  }

  (v6)(v9, 0);
  sub_188FFAE38();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  v4 = sub_188FFA534(v7);
  if (*(v3 + 16))
  {
    v5 = v3;
    v6 = selfCopy;
    sub_188FFF7D8(v5, v6);
  }

  (v4)(v7, 0);
}

@end