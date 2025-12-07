@interface UILabel(FocusUI)
+ (void)fcui_layoutPrimaryLabel:()FocusUI secondaryLabel:inTextFrame:primaryLabelFrame:secondaryLabelFrame:drawingContext:;
- (double)fcui_drawingHeightWithNumberOfLines:()FocusUI;
- (double)fcui_measuringHeightWithNumberOfLines:()FocusUI;
- (uint64_t)fcui_numberOfLinesInFrame:()FocusUI maximum:drawingContext:;
@end

@implementation UILabel(FocusUI)

+ (void)fcui_layoutPrimaryLabel:()FocusUI secondaryLabel:inTextFrame:primaryLabelFrame:secondaryLabelFrame:drawingContext:
{
  v32 = a7;
  v18 = a8;
  v19 = a11;
  if (v32 && a9)
  {
    v20 = [v32 fcui_numberOfLinesInFrame:0 maximum:v19 drawingContext:{self, a2, a3, 1.79769313e308}];
    [v32 fcui_drawingHeightWithNumberOfLines:v20];
    text = [v18 text];
    v22 = [text length];

    if (v22)
    {
      [v32 fcui_measuringHeightWithNumberOfLines:v20];
      v23 = [v18 fcui_numberOfLinesInFrame:0 maximum:v19 drawingContext:{self, a2, a3, 1.79769313e308}];
      [v18 fcui_measuringHeightWithNumberOfLines:v23];
      UIRectCenteredYInRect();
      CGRectGetMaxY(v34);
      [v18 fcui_drawingHeightWithNumberOfLines:v23];
      UIRectCenteredIntegralRectScale();
      if (a10)
      {
        *a10 = v24;
        a10[1] = v25;
        a10[2] = v26;
        a10[3] = v27;
      }
    }

    UIRectCenteredIntegralRectScale();
    *a9 = v28;
    a9[1] = v29;
    a9[2] = v30;
    a9[3] = v31;
  }
}

- (uint64_t)fcui_numberOfLinesInFrame:()FocusUI maximum:drawingContext:
{
  v14 = a8;
  font = [self font];
  text = [self text];
  v17 = [font fcui_numberOfLinesForText:text inFrame:a7 maximum:v14 drawingContext:{a2, a3, a4, a5}];

  return v17;
}

- (double)fcui_measuringHeightWithNumberOfLines:()FocusUI
{
  font = [self font];
  text = [self text];
  [font fcui_measuringHeightForText:text withNumberOfLines:a3];
  v8 = v7;

  return v8;
}

- (double)fcui_drawingHeightWithNumberOfLines:()FocusUI
{
  font = [self font];
  text = [self text];
  [font fcui_drawingHeightForText:text withNumberOfLines:a3 additionalPadding:2.0];
  v8 = v7;

  return v8;
}

@end