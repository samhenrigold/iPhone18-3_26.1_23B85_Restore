@interface TPNumberPadKey
+ (float)absoluteTrackingValueForString:(id)string pointSize:(float)size unitsPerEm:(float)em;
+ (void)initialize;
- (BOOL)isAsterisk;
- (BOOL)isPound;
- (TPNumberPadKey)initWithFrame:(CGRect)frame;
- (double)digitBaselineForDiameter:(double)diameter;
- (double)digitFontSizeForScreenSizeCategory:(unint64_t)category language:(unint64_t)language showLocalizedLetters:(BOOL)letters;
- (double)letterFontSizeForScreenSizeCategory:(unint64_t)category language:(unint64_t)language showLocalizedLetters:(BOOL)letters;
- (double)secondaryLetterFontSizeForScreenSizeCategory:(unint64_t)category;
- (void)doLayoutNow;
- (void)setDigit:(id)digit primaryLetters:(id)letters secondaryLetters:(id)secondaryLetters;
- (void)setFontStylesForHighlightState:(BOOL)state language:(unint64_t)language showLocalizedLetters:(BOOL)letters shouldCenterDigit:(BOOL)digit fontColor:(BOOL)color circleDiameter:(double)diameter isCarPlay:(BOOL)play screenSizeCategory:(unint64_t)self0;
- (void)updateBaselineConstraintConstantsFor:(unint64_t)for language:(unint64_t)language showLocalizedLetters:(BOOL)letters;
@end

@implementation TPNumberPadKey

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[TPNumberPadKey initialize];
  }
}

- (TPNumberPadKey)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = TPNumberPadKey;
  v3 = [(TPNumberPadKey *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    digit = v3->_digit;
    v3->_digit = v4;

    v6 = objc_opt_new();
    letters = v3->_letters;
    v3->_letters = v6;

    v8 = objc_opt_new();
    secondaryLetters = v3->_secondaryLetters;
    v3->_secondaryLetters = v8;

    [(TPNumberPadKey *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryLetters setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_letters setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_digit setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPNumberPadKey *)v3 addSubview:v3->_digit];
    [(TPNumberPadKey *)v3 addSubview:v3->_letters];
    [(TPNumberPadKey *)v3 addSubview:v3->_secondaryLetters];
    widthAnchor = [(TPNumberPadKey *)v3 widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:75.0];
    [v11 setActive:1];

    heightAnchor = [(TPNumberPadKey *)v3 heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:75.0];
    [v13 setActive:1];

    centerXAnchor = [(UILabel *)v3->_digit centerXAnchor];
    centerXAnchor2 = [(TPNumberPadKey *)v3 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v16 setActive:1];

    centerXAnchor3 = [(UILabel *)v3->_secondaryLetters centerXAnchor];
    centerXAnchor4 = [(TPNumberPadKey *)v3 centerXAnchor];
    v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v19 setActive:1];

    centerYAnchor = [(UILabel *)v3->_digit centerYAnchor];
    centerYAnchor2 = [(TPNumberPadKey *)v3 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v23) = 1132068864;
    [v22 setPriority:v23];
    [v22 setActive:1];
    centerXAnchor5 = [(UILabel *)v3->_letters centerXAnchor];
    centerXAnchor6 = [(TPNumberPadKey *)v3 centerXAnchor];
    v26 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v26 setActive:1];

    firstBaselineAnchor = [(UILabel *)v3->_letters firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)v3->_digit firstBaselineAnchor];
    v29 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:14.0];
    letterBaseline = v3->_letterBaseline;
    v3->_letterBaseline = v29;

    firstBaselineAnchor3 = [(UILabel *)v3->_digit firstBaselineAnchor];
    topAnchor = [(TPNumberPadKey *)v3 topAnchor];
    v33 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor constant:44.0];
    digitBaseline = v3->_digitBaseline;
    v3->_digitBaseline = v33;

    firstBaselineAnchor4 = [(UILabel *)v3->_secondaryLetters firstBaselineAnchor];
    firstBaselineAnchor5 = [(UILabel *)v3->_letters firstBaselineAnchor];
    v37 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5];
    secondaryLetterBaseline = v3->_secondaryLetterBaseline;
    v3->_secondaryLetterBaseline = v37;

    [(NSLayoutConstraint *)v3->_secondaryLetterBaseline setActive:1];
    [(NSLayoutConstraint *)v3->_digitBaseline setActive:1];
    [(NSLayoutConstraint *)v3->_letterBaseline setActive:1];
  }

  return v3;
}

+ (float)absoluteTrackingValueForString:(id)string pointSize:(float)size unitsPerEm:(float)em
{
  v7 = [string length];
  v8 = -175.0;
  v9 = 0.0;
  if (isBold)
  {
    v9 = -175.0;
  }

  else
  {
    v8 = -25.0;
  }

  if (v7 < 6)
  {
    v8 = v9;
  }

  return (v8 / em) * size;
}

- (double)digitBaselineForDiameter:(double)diameter
{
  if (diameter == 65.0)
  {
    return 38.0;
  }

  if (diameter != 83.0)
  {
    return 44.0;
  }

  return 47.0;
}

- (BOOL)isAsterisk
{
  digit = [(TPNumberPadKey *)self digit];
  text = [digit text];
  v4 = [text isEqualToString:@"*"];

  return v4;
}

- (BOOL)isPound
{
  digit = [(TPNumberPadKey *)self digit];
  text = [digit text];
  v4 = [text isEqualToString:@"#"];

  return v4;
}

- (double)digitFontSizeForScreenSizeCategory:(unint64_t)category language:(unint64_t)language showLocalizedLetters:(BOOL)letters
{
  lettersCopy = letters;
  v7 = 36.0;
  if (category <= 5)
  {
    if (category == 3)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      if ([mainScreen isUserInterfaceIdiomPad])
      {
        v7 = 36.0;
      }

      else
      {
        v7 = 40.0;
      }
    }

    else if (category == 5)
    {
      v7 = 37.0;
      if (language)
      {
        return v7;
      }

      goto LABEL_15;
    }

LABEL_14:
    if (language)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (category != 6)
  {
    if (category == 10)
    {
      v7 = 41.0;
      if (language)
      {
        return v7;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = 40.0;
  if (language)
  {
    return v7;
  }

LABEL_15:
  if (useIndicDigits == 1 && lettersCopy)
  {
    return v7 + 2.0;
  }

  return v7;
}

- (double)letterFontSizeForScreenSizeCategory:(unint64_t)category language:(unint64_t)language showLocalizedLetters:(BOOL)letters
{
  lettersCopy = letters;
  v7 = 10.0;
  if (category == 3)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    if (![mainScreen isUserInterfaceIdiomPad])
    {
      v7 = 12.0;
    }

    if (language)
    {
      goto LABEL_9;
    }

    return v7 + 1.0;
  }

  if (category == 10)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 10.0;
  }

  if (category == 6)
  {
    v7 = 12.0;
  }

  else
  {
    v7 = v8;
  }

  if (!language)
  {
    return v7 + 1.0;
  }

LABEL_9:
  if (lettersCopy)
  {
    if (language == 2)
    {
      return v7 + 1.0;
    }

    else
    {
      return v7 + -1.0;
    }
  }

  return v7;
}

- (double)secondaryLetterFontSizeForScreenSizeCategory:(unint64_t)category
{
  v3 = 9.0;
  if (category == 3)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    if (![mainScreen isUserInterfaceIdiomPad])
    {
      v3 = 11.0;
    }
  }

  else
  {
    v4 = 10.0;
    if (category != 10)
    {
      v4 = 9.0;
    }

    if (category == 6)
    {
      return 11.0;
    }

    else
    {
      return v4;
    }
  }

  return v3;
}

- (void)updateBaselineConstraintConstantsFor:(unint64_t)for language:(unint64_t)language showLocalizedLetters:(BOOL)letters
{
  lettersCopy = letters;
  if (for == 6)
  {
    v9 = 1;
    if (language)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (useIndicDigits == 1)
    {
      letterBaseline = [(TPNumberPadKey *)self letterBaseline];
      [letterBaseline setConstant:14.0];
    }

    v10 = v9 == 0;
    v11 = 12.0;
    v12 = 14.0;
    goto LABEL_12;
  }

  if (for != 3)
  {
    v9 = 0;
    if (language)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  v9 = [mainScreen isUserInterfaceIdiomPad] ^ 1;

  if (!language)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!lettersCopy)
  {
    goto LABEL_16;
  }

  v10 = v9 == 0;
  v11 = 11.0;
  v12 = 13.0;
LABEL_12:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  secondaryLetterBaseline = [(TPNumberPadKey *)self secondaryLetterBaseline];
  [secondaryLetterBaseline setConstant:v14];

LABEL_16:
  if (v9)
  {
    v16 = 16.0;
  }

  else
  {
    v16 = 14.0;
  }

  letterBaseline2 = [(TPNumberPadKey *)self letterBaseline];
  [letterBaseline2 setConstant:v16];
}

- (void)setFontStylesForHighlightState:(BOOL)state language:(unint64_t)language showLocalizedLetters:(BOOL)letters shouldCenterDigit:(BOOL)digit fontColor:(BOOL)color circleDiameter:(double)diameter isCarPlay:(BOOL)play screenSizeCategory:(unint64_t)self0
{
  playCopy = play;
  colorCopy = color;
  digitCopy = digit;
  lettersCopy = letters;
  [TPNumberPadKey digitFontSizeForScreenSizeCategory:"digitFontSizeForScreenSizeCategory:language:showLocalizedLetters:" language:category showLocalizedLetters:?];
  v18 = v17;
  [(TPNumberPadKey *)self letterFontSizeForScreenSizeCategory:category language:language showLocalizedLetters:lettersCopy];
  v20 = v19;
  [(TPNumberPadKey *)self secondaryLetterFontSizeForScreenSizeCategory:category];
  v22 = v21;
  if (isBold)
  {
    v23 = &semiBoldFont;
  }

  else
  {
    v23 = &regularFont;
  }

  v90 = *v23;
  v24 = boldFont;
  v25 = &blackColor;
  if (colorCopy)
  {
    v25 = &whiteColor;
  }

  v92 = *v25;
  letters = [(TPNumberPadKey *)self letters];
  [letters setHidden:0];

  secondaryLetters = [(TPNumberPadKey *)self secondaryLetters];
  [secondaryLetters setHidden:0];

  [(TPNumberPadKey *)self updateBaselineConstraintConstantsFor:category language:language showLocalizedLetters:lettersCopy];
  if (lettersCopy)
  {
    v28 = 38.0;
  }

  else
  {
    secondaryLetters2 = [(TPNumberPadKey *)self secondaryLetters];
    [secondaryLetters2 setHidden:1];

    letters2 = [(TPNumberPadKey *)self letters];
    text = [letters2 text];
    v32 = [text isEqualToString:@"+"];

    if (v32)
    {
      v20 = v20 + 5.0;
    }

    [(TPNumberPadKey *)self digitBaselineForDiameter:diameter, v90];
    v28 = v33;
  }

  digitBaseline = [(TPNumberPadKey *)self digitBaseline];
  [digitBaseline setConstant:v28];

  digitBaseline2 = [(TPNumberPadKey *)self digitBaseline];
  [digitBaseline2 setActive:!digitCopy];

  if (playCopy)
  {
    v18 = v18 * 0.5;
    v20 = v20 * 0.5;
    v22 = v22 * 0.5;
    secondaryLetterBaseline = [(TPNumberPadKey *)self secondaryLetterBaseline];
    [secondaryLetterBaseline constant];
    [secondaryLetterBaseline setConstant:v37 * 0.5];

    letterBaseline = [(TPNumberPadKey *)self letterBaseline];
    [letterBaseline constant];
    [letterBaseline setConstant:v39 * 0.5];

    if (!lettersCopy)
    {
      digitBaseline3 = [(TPNumberPadKey *)self digitBaseline];
      [digitBaseline3 constant];
      [digitBaseline3 setConstant:v41 + -3.0];
    }
  }

  v42 = [MEMORY[0x1E69DB878] fontWithDescriptor:v24 size:v20];
  v43 = [MEMORY[0x1E69DB878] fontWithDescriptor:v24 size:v22];
  letters3 = [(TPNumberPadKey *)self letters];
  text2 = [letters3 text];
  *&v47 = CTFontGetUnitsPerEm(v42);
  v46 = v20;
  *&v48 = v46;
  [TPNumberPadKey absoluteTrackingValueForString:text2 pointSize:v48 unitsPerEm:v47];
  v50 = v49;

  secondaryLetters3 = [(TPNumberPadKey *)self secondaryLetters];
  text3 = [secondaryLetters3 text];

  if (text3)
  {
    secondaryLetters4 = [(TPNumberPadKey *)self secondaryLetters];
    text4 = [secondaryLetters4 text];
    *&v56 = CTFontGetUnitsPerEm(v42);
    v55 = v22;
    *&v57 = v55;
    [TPNumberPadKey absoluteTrackingValueForString:text4 pointSize:v57 unitsPerEm:v56];
    v59 = v58;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = objc_alloc(MEMORY[0x1E696AD40]);
  letters4 = [(TPNumberPadKey *)self letters];
  text5 = [letters4 text];
  v63 = [v60 initWithString:text5];

  v64 = *MEMORY[0x1E69DB660];
  v65 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
  letters5 = [(TPNumberPadKey *)self letters];
  text6 = [letters5 text];
  [v63 addAttribute:v64 value:v65 range:{0, objc_msgSend(text6, "length")}];

  letters6 = [(TPNumberPadKey *)self letters];
  [letters6 setAttributedText:v63];

  secondaryLetters5 = [(TPNumberPadKey *)self secondaryLetters];
  text7 = [secondaryLetters5 text];

  if (text7)
  {
    v71 = objc_alloc(MEMORY[0x1E696AD40]);
    secondaryLetters6 = [(TPNumberPadKey *)self secondaryLetters];
    text8 = [secondaryLetters6 text];
    v74 = [v71 initWithString:text8];

    v75 = [MEMORY[0x1E696AD98] numberWithDouble:v59];
    secondaryLetters7 = [(TPNumberPadKey *)self secondaryLetters];
    text9 = [secondaryLetters7 text];
    [v74 addAttribute:v64 value:v75 range:{0, objc_msgSend(text9, "length")}];

    secondaryLetters8 = [(TPNumberPadKey *)self secondaryLetters];
    [secondaryLetters8 setAttributedText:v74];
  }

  v79 = [MEMORY[0x1E69DB878] fontWithDescriptor:v91 size:v18];
  digit = [(TPNumberPadKey *)self digit];
  [digit setFont:v79];

  if ([(TPNumberPadKey *)self isAsterisk]|| [(TPNumberPadKey *)self isPound])
  {
    digit2 = [(TPNumberPadKey *)self digit];
    font = [digit2 font];
    withCaseSensitiveAttribute = [font withCaseSensitiveAttribute];
    digit3 = [(TPNumberPadKey *)self digit];
    [digit3 setFont:withCaseSensitiveAttribute];
  }

  letters7 = [(TPNumberPadKey *)self letters];
  [letters7 setFont:v42];

  secondaryLetters9 = [(TPNumberPadKey *)self secondaryLetters];
  [secondaryLetters9 setFont:v43];

  digit4 = [(TPNumberPadKey *)self digit];
  [digit4 setTextColor:v92];

  letters8 = [(TPNumberPadKey *)self letters];
  [letters8 setTextColor:v92];

  secondaryLetters10 = [(TPNumberPadKey *)self secondaryLetters];
  [secondaryLetters10 setTextColor:v92];
}

- (void)setDigit:(id)digit primaryLetters:(id)letters secondaryLetters:(id)secondaryLetters
{
  secondaryLettersCopy = secondaryLetters;
  lettersCopy = letters;
  digitCopy = digit;
  digit = [(TPNumberPadKey *)self digit];
  [digit setText:digitCopy];

  letters = [(TPNumberPadKey *)self letters];
  [letters setText:lettersCopy];

  if (secondaryLettersCopy)
  {
    secondaryLetters = [(TPNumberPadKey *)self secondaryLetters];
    [secondaryLetters setText:secondaryLettersCopy];
  }
}

- (void)doLayoutNow
{
  [(TPNumberPadKey *)self setNeedsLayout];
  [(TPNumberPadKey *)self setNeedsDisplay];

  [(TPNumberPadKey *)self layoutIfNeeded];
}

@end