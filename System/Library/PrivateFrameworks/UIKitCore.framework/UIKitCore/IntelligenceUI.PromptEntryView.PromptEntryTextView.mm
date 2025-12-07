@interface IntelligenceUI.PromptEntryView.PromptEntryTextView
- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019PromptEntryTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation IntelligenceUI.PromptEntryView.PromptEntryTextView

- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019PromptEntryTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _s15PromptEntryViewC19PromptEntryTextViewCMa();
  v12.receiver = self;
  v12.super_class = v10;
  return [(UITextView *)&v12 initWithFrame:container textContainer:x, y, width, height];
}

@end