@interface _UILightBoxView
- (_TtC5UIKit15_UILightBoxView)initWithCoder:(id)coder;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
@end

@implementation _UILightBoxView

- (void)layoutSubviews
{
  type metadata accessor for _UILightBoxView();
  v6.receiver = self;
  v6.super_class = v3;
  selfCopy = self;
  [(_UILightEffectTransitionView *)&v6 layoutSubviews];
  v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit15_UILightBoxView_lightSourceView);
  [(UIView *)selfCopy bounds:v6.receiver];
  v8 = CGRectInset(v7, -*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset), -*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset));
  [v5 setFrame_];
}

- (void)didAddSubview:(id)subview
{
  type metadata accessor for _UILightBoxView();
  v8.receiver = self;
  v8.super_class = v5;
  subviewCopy = subview;
  selfCopy = self;
  [(UIView *)&v8 didAddSubview:subviewCopy];
  [(UIView *)selfCopy bringSubviewToFront:*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit15_UILightBoxView_lightSourceView), v8.receiver, v8.super_class];
}

- (_TtC5UIKit15_UILightBoxView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end