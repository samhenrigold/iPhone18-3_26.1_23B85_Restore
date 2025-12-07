@interface CHUISControlIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CHUISControlIconView)initWithCoder:(id)coder;
- (UIFont)font;
- (unint64_t)style;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setStyle:(unint64_t)style;
@end

@implementation CHUISControlIconView

- (UIFont)font
{
  v3 = OBJC_IVAR___CHUISControlIconView_font;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  CHUISControlIconView.font.setter(font);
}

- (unint64_t)style
{
  v3 = type metadata accessor for ControlIconView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(self + v6, v10);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 20)];
  sub_1D92D2EB0(v5);
  return v7;
}

- (void)setStyle:(unint64_t)style
{
  v5 = type metadata accessor for ControlIconView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(self + v8, v11);
  selfCopy = self;
  swift_dynamicCast();
  *&v7[*(v5 + 20)] = style;
  sub_1D92D2694(v7);
}

- (CHUISControlIconView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CHUISControlIconView_font) = 0;
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHUISControlIconView;
  selfCopy = self;
  [(CHUISControlIconView *)&v4 layoutSubviews];
  v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___CHUISControlIconView__hostingView);
  [(CHUISControlIconView *)selfCopy bounds:v4.receiver];
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR___CHUISControlIconView__hostingView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

@end