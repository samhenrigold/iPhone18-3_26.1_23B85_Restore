@interface _UIIntelligenceButton.FillView
- (_TtCC5UIKit21_UIIntelligenceButton8FillView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIIntelligenceButton.FillView

- (void)layoutSubviews
{
  type metadata accessor for _UIIntelligenceButton.FillView();
  v7.receiver = self;
  v7.super_class = v3;
  selfCopy = self;
  [(UIView *)&v7 layoutSubviews];
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_staticLightView);
  [(UIView *)selfCopy bounds:v7.receiver];
  [v5 setFrame_];
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_livingLightView);
  [(UIView *)selfCopy bounds];
  [v6 setFrame_];
}

- (_TtCC5UIKit21_UIIntelligenceButton8FillView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end