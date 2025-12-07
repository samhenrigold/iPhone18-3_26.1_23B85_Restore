@interface IntelligenceUI.PromptEntryView.AnimatingButtonView
+ (Class)_visualProviderClassForIdiom:(int64_t)idiom;
- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019AnimatingButtonView)initWithFrame:(CGRect)frame;
@end

@implementation IntelligenceUI.PromptEntryView.AnimatingButtonView

+ (Class)_visualProviderClassForIdiom:(int64_t)idiom
{
  sub_188A34624(0, &qword_1EA92FD50, off_1E70EB000);

  return swift_getObjCClassFromMetadata();
}

- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019AnimatingButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _s15PromptEntryViewC19AnimatingButtonViewCMa();
  v10.receiver = self;
  v10.super_class = v8;
  return [(_UIIntelligenceButton *)&v10 initWithFrame:x, y, width, height];
}

@end