@interface _UITabButton.Label
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines;
- (NSAttributedString)attributedText;
- (NSString)text;
- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithCoder:(id)coder;
- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithFrame:(CGRect)frame;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
@end

@implementation _UITabButton.Label

- (NSString)text
{
  type metadata accessor for _UITabButton.Label();
  v9.receiver = self;
  v9.super_class = v3;
  selfCopy = self;
  text = [(UILabel *)&v9 text];
  if (text)
  {
    v6 = text;
    sub_18A4A7288();

    v7 = sub_18A4A7258();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)setText:(id)text
{
  if (text)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_189207068(v4, v6);
}

- (NSAttributedString)attributedText
{
  v3 = type metadata accessor for _UITabButton.Label();
  v7.receiver = self;
  v7.super_class = v4;
  attributedText = [(UILabel *)&v7 attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  type metadata accessor for _UITabButton.Label();
  v6 = v5;
  v11.receiver = self;
  v11.super_class = v5;
  textCopy = text;
  selfCopy = self;
  attributedText = [(UILabel *)&v11 attributedText];
  v10.receiver = selfCopy;
  v10.super_class = v6;
  [(UILabel *)&v10 setAttributedText:textCopy];
  sub_189207364(attributedText);
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_189208114(selfCopy, selfCopy, lines, x, y, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment) = 0;
  type metadata accessor for _UITabButton.Label();
  v11.receiver = self;
  v11.super_class = v9;
  return [(UILabel *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label)initWithCoder:(id)coder
{
  v5 = self + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment;
  *v5 = 0;
  v5[8] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment) = 0;
  type metadata accessor for _UITabButton.Label();
  v10.receiver = self;
  v10.super_class = v6;
  coderCopy = coder;
  v8 = [(UILabel *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end