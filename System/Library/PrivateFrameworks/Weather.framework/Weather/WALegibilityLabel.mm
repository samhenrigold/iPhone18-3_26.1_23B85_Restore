@interface WALegibilityLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)textColor;
- (WALegibilityLabel)initWithCoder:(id)coder;
- (WALegibilityLabel)initWithFrame:(CGRect)frame;
- (WALegibilityLabel)initWithSettings:(id)settings strength:(double)strength;
- (WALegibilityLabel)initWithSettings:(id)settings strength:(double)strength text:(id)text font:(id)font options:(int64_t)options;
- (double)_layoutGuideOffsetFromBottom:(id)bottom;
- (double)firstBaselineOffsetFromBottom;
- (double)lastBaselineOffsetFromBottom;
- (void)_updateLabelForLegibilitySettings;
- (void)_updateLegibilityView;
- (void)layoutSubviews;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setAttributedText:(id)text;
- (void)setBounds:(CGRect)bounds;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setLegibilitySettings:(id)settings;
- (void)setMinimumScaleFactor:(double)factor;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)updateConstraints;
@end

@implementation WALegibilityLabel

- (WALegibilityLabel)initWithFrame:(CGRect)frame
{
  v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:{0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v5 = [(WALegibilityLabel *)self initWithSettings:v4 strength:*MEMORY[0x277D774E0]];

  return v5;
}

- (WALegibilityLabel)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WALegibilityLabel.m" lineNumber:50 description:@"Not supported"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(WALegibilityLabel *)self initWithFrame:v6, v7, v8, v9];
}

- (WALegibilityLabel)initWithSettings:(id)settings strength:(double)strength
{
  v6 = MEMORY[0x277D74300];
  settingsCopy = settings;
  [v6 systemFontSize];
  v8 = [v6 systemFontOfSize:?];
  v9 = [(WALegibilityLabel *)self initWithSettings:settingsCopy strength:0 text:v8 font:strength];

  return v9;
}

- (WALegibilityLabel)initWithSettings:(id)settings strength:(double)strength text:(id)text font:(id)font options:(int64_t)options
{
  v74[4] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  textCopy = text;
  fontCopy = font;
  v72.receiver = self;
  v72.super_class = WALegibilityLabel;
  v16 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [(WALegibilityLabel *)&v72 initWithFrame:*MEMORY[0x277CBF3A0], v17, v18, v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_legibilitySettings, settings);
    v21->_strength = strength;
    v22 = [textCopy copy];
    text = v21->_text;
    v21->_text = v22;

    objc_storeStrong(&v21->_font, font);
    v21->_options = options;
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v16, v17, v18, v19}];
    v71 = settingsCopy;
    lookasideLabel = v21->_lookasideLabel;
    v21->_lookasideLabel = v24;

    [(UILabel *)v21->_lookasideLabel setHidden:1];
    [(UILabel *)v21->_lookasideLabel setText:v21->_text];
    [(UILabel *)v21->_lookasideLabel setFont:v21->_font];
    [(UILabel *)v21->_lookasideLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WALegibilityLabel *)v21 addSubview:v21->_lookasideLabel];
    v57 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v21->_lookasideLabel topAnchor];
    topAnchor2 = [(WALegibilityLabel *)v21 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[0] = v63;
    leadingAnchor = [(UILabel *)v21->_lookasideLabel leadingAnchor];
    leadingAnchor2 = [(WALegibilityLabel *)v21 leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26 = v69 = fontCopy;
    v74[1] = v26;
    widthAnchor = [(UILabel *)v21->_lookasideLabel widthAnchor];
    widthAnchor2 = [(WALegibilityLabel *)v21 widthAnchor];
    [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v29 = v70 = textCopy;
    v74[2] = v29;
    heightAnchor = [(UILabel *)v21->_lookasideLabel heightAnchor];
    heightAnchor2 = [(WALegibilityLabel *)v21 heightAnchor];
    v32 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v74[3] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v57 activateConstraints:v33];

    v34 = objc_alloc_init(MEMORY[0x277D756D0]);
    firstBaselineLayoutGuide = v21->_firstBaselineLayoutGuide;
    v21->_firstBaselineLayoutGuide = v34;

    [(WALegibilityLabel *)v21 addLayoutGuide:v21->_firstBaselineLayoutGuide];
    v36 = objc_alloc_init(MEMORY[0x277D756D0]);
    lastBaselineLayoutGuide = v21->_lastBaselineLayoutGuide;
    v21->_lastBaselineLayoutGuide = v36;

    [(WALegibilityLabel *)v21 addLayoutGuide:v21->_lastBaselineLayoutGuide];
    v54 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide topAnchor];
    firstBaselineAnchor = [(UILabel *)v21->_lookasideLabel firstBaselineAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:firstBaselineAnchor];
    v73[0] = v64;
    heightAnchor3 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide heightAnchor];
    v60 = [heightAnchor3 constraintEqualToConstant:0.0];
    v73[1] = v60;
    leadingAnchor3 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide leadingAnchor];
    leadingAnchor4 = [(WALegibilityLabel *)v21 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v73[2] = v55;
    trailingAnchor = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide trailingAnchor];
    trailingAnchor2 = [(WALegibilityLabel *)v21 trailingAnchor];
    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v73[3] = v51;
    topAnchor4 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide topAnchor];
    lastBaselineAnchor = [(UILabel *)v21->_lookasideLabel lastBaselineAnchor];
    v48 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor];
    v73[4] = v48;
    heightAnchor4 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide heightAnchor];
    v39 = [heightAnchor4 constraintEqualToConstant:0.0];
    v73[5] = v39;
    leadingAnchor5 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide leadingAnchor];
    leadingAnchor6 = [(WALegibilityLabel *)v21 leadingAnchor];
    v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v73[6] = v42;
    trailingAnchor3 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide trailingAnchor];
    trailingAnchor4 = [(WALegibilityLabel *)v21 trailingAnchor];
    v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v73[7] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:8];
    [v54 activateConstraints:v46];

    fontCopy = v69;
    textCopy = v70;

    settingsCopy = v71;
    [(WALegibilityLabel *)v21 _markOurselfDirty];
  }

  return v21;
}

- (void)setAttributedText:(id)text
{
  v4 = [text copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  [(UILabel *)self->_lookasideLabel setAttributedText:self->_attributedText];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setText:(id)text
{
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  [(UILabel *)self->_lookasideLabel setText:self->_text];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (UIColor)textColor
{
  textColorOverride = self->_textColorOverride;
  if (textColorOverride)
  {
    primaryColor = textColorOverride;
  }

  else
  {
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  }

  return primaryColor;
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColorOverride, color);
  colorCopy = color;
  [(UILabel *)self->_lookasideLabel setTextColor:self->_textColorOverride];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  [(UILabel *)self->_lookasideLabel setFont:fontCopy];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setNumberOfLines:(int64_t)lines
{
  [(UILabel *)self->_lookasideLabel setNumberOfLines:lines];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  [(UILabel *)self->_lookasideLabel setAdjustsFontSizeToFitWidth:width];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (void)setMinimumScaleFactor:(double)factor
{
  [(UILabel *)self->_lookasideLabel setMinimumScaleFactor:factor];

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (double)firstBaselineOffsetFromBottom
{
  [(WALegibilityLabel *)self layoutIfNeeded];
  firstBaselineLayoutGuide = self->_firstBaselineLayoutGuide;

  [(WALegibilityLabel *)self _layoutGuideOffsetFromBottom:firstBaselineLayoutGuide];
  return result;
}

- (double)lastBaselineOffsetFromBottom
{
  [(WALegibilityLabel *)self layoutIfNeeded];
  lastBaselineLayoutGuide = self->_lastBaselineLayoutGuide;

  [(WALegibilityLabel *)self _layoutGuideOffsetFromBottom:lastBaselineLayoutGuide];
  return result;
}

- (void)updateConstraints
{
  v30[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v28 updateConstraints];
  legibilityView = self->_legibilityView;
  if (legibilityView)
  {
    leadingAnchor = [(_UILegibilityView *)legibilityView leadingAnchor];
    leadingAnchor2 = [(WALegibilityLabel *)self leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v21;
    trailingAnchor = [(_UILegibilityView *)self->_legibilityView trailingAnchor];
    trailingAnchor2 = [(WALegibilityLabel *)self trailingAnchor];
    v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v5;
    bottomAnchor = [(_UILegibilityView *)self->_legibilityView bottomAnchor];
    lastBaselineAnchor = [(WALegibilityLabel *)self lastBaselineAnchor];
    [(UILabel *)self->_lookasideLabel _baselineOffsetFromBottom];
    v8 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
    v30[2] = v8;
    topAnchor = [(_UILegibilityView *)self->_legibilityView topAnchor];
    topAnchor2 = [(WALegibilityLabel *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[3] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          LODWORD(v15) = 1144750080;
          [*(*(&v24 + 1) + 8 * v18++) setPriority:v15];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    legibilityConstraints = self->_legibilityConstraints;
    self->_legibilityConstraints = v13;
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(WALegibilityLabel *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(WALegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(WALegibilityLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(WALegibilityLabel *)self _markOurselfDirty];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_lookasideLabel sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WALegibilityLabel;
  [(WALegibilityLabel *)&v3 layoutSubviews];
  if (self->_isDirty)
  {
    self->_isDirty = 0;
    [(WALegibilityLabel *)self _updateLegibilityView];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  objc_storeStrong(&self->_legibilitySettings, settings);

  [(WALegibilityLabel *)self _markOurselfDirty];
}

- (double)_layoutGuideOffsetFromBottom:(id)bottom
{
  bottomCopy = bottom;
  [(WALegibilityLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  [bottomCopy layoutFrame];
  v10 = v9;

  return v6 + v8 - v10;
}

- (void)_updateLabelForLegibilitySettings
{
  attributedText = [(UILabel *)self->_lookasideLabel attributedText];
  v7 = [attributedText mutableCopy];

  v4 = [v7 length];
  textColor = [(WALegibilityLabel *)self textColor];
  v6 = *MEMORY[0x277D740C0];
  if (textColor)
  {
    [v7 addAttribute:v6 value:textColor range:{0, v4}];
  }

  else
  {
    [v7 removeAttribute:v6 range:{0, v4}];
  }

  [(UILabel *)self->_lookasideLabel setAttributedText:v7];
}

- (void)_updateLegibilityView
{
  [(WALegibilityLabel *)self _updateLabelForLegibilitySettings];
  [(WALegibilityLabel *)self bounds];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = _UIGraphicsDrawIntoImageContextWithOptions();

  legibilityConstraints = self->_legibilityConstraints;
  self->_legibilityConstraints = 0;

  [(_UILegibilityView *)self->_legibilityView removeFromSuperview];
  legibilityView = self->_legibilityView;
  self->_legibilityView = 0;

  v7 = [objc_alloc(MEMORY[0x277D760B8]) initWithSettings:self->_legibilitySettings strength:v4 image:0 shadowImage:self->_options options:self->_strength];
  v8 = self->_legibilityView;
  self->_legibilityView = v7;

  [(_UILegibilityView *)self->_legibilityView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WALegibilityLabel *)self addSubview:self->_legibilityView];
  [(WALegibilityLabel *)self setNeedsUpdateConstraints];
}

@end