@interface _UIIntelligenceButton
- (BOOL)isHighlighted;
- (_TtC5UIKit21_UIIntelligenceButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateConfiguration;
@end

@implementation _UIIntelligenceButton

- (BOOL)isHighlighted
{
  v3 = type metadata accessor for _UIIntelligenceButton();
  v6.receiver = self;
  v6.super_class = v4;
  return [(UIControl *)&v6 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  type metadata accessor for _UIIntelligenceButton();
  v7.receiver = self;
  v7.super_class = v5;
  selfCopy = self;
  [(UIButton *)&v7 setHighlighted:highlightedCopy];
  sub_18913AF64();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18913AC18();
}

- (void)updateConfiguration
{
  type metadata accessor for _UIIntelligenceButton();
  v7.receiver = self;
  v7.super_class = v3;
  selfCopy = self;
  [(UIButton *)&v7 updateConfiguration];
  v5 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal);
  v6 = [(UIButton *)selfCopy _imageEffectContainerView:v7.receiver];
  [v5 setSourceView_];

  sub_18913AE28();
}

- (_TtC5UIKit21_UIIntelligenceButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_scaleAnimator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_opacityAnimator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_rotationAnimator) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end