@interface ScrollEdgeEffectView.PocketMask
- (BOOL)isHidden;
- (UIEdgeInsets)alignmentRectInsets;
- (_TtCC5UIKit20ScrollEdgeEffectView10PocketMask)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
@end

@implementation ScrollEdgeEffectView.PocketMask

- (_TtCC5UIKit20ScrollEdgeEffectView10PocketMask)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 18) = 0;
  v4 = (self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_previousBarFrame);
  v5 = *(MEMORY[0x1E695F040] + 16);
  *v4 = *MEMORY[0x1E695F040];
  v4[1] = v5;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (BOOL)isHidden
{
  v3 = _s10PocketMaskCMa();
  v6.receiver = self;
  v6.super_class = v4;
  return [(UIView *)&v6 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  if ([(ScrollEdgeEffectView.PocketMask *)selfCopy isHidden]== hiddenCopy)
  {
  }

  else
  {
    v4 = _s10PocketMaskCMa();
    v7.receiver = selfCopy;
    v7.super_class = v5;
    [(UIView *)&v7 setHidden:hiddenCopy, v4];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  selfCopy = self;
  v3 = sub_188FFD8D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188FFD9C4(selfCopy);
}

@end