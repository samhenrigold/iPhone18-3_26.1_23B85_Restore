@interface SBUILockOverlayView
- (SBUILockOverlayView)initWithFrame:(CGRect)frame style:(unint64_t)style;
- (SBUILockOverlayViewDelegate)delegate;
- (id)_actionFont;
- (id)_legibilitySettingsForStyle:(unint64_t)style;
- (id)_titleFont;
- (unint64_t)_numberOfLinesForText:(id)text font:(id)font size:(CGSize)size;
- (void)_buttonPressed;
- (void)_sizeView:(id)view forFixedWith:(BOOL)with;
- (void)layoutSubviews;
@end

@implementation SBUILockOverlayView

- (SBUILockOverlayView)initWithFrame:(CGRect)frame style:(unint64_t)style
{
  v55.receiver = self;
  v55.super_class = SBUILockOverlayView;
  v5 = [(SBUILockOverlayView *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    [(SBUILockOverlayView *)v5 _maxLabelWidth];
    v8 = v7;
    _actionFont = [(SBUILockOverlayView *)v6 _actionFont];
    [_actionFont pointSize];
    v11 = v10;
    _titleFont = [(SBUILockOverlayView *)v6 _titleFont];
    [_titleFont pointSize];
    v14 = v11 / v13;

    v15 = [SBLockOverlayStylePropertiesFactory overlayPropertiesFactoryWithStyle:style];
    underlayPropertiesFactory = v6->_underlayPropertiesFactory;
    v6->_underlayPropertiesFactory = v15;

    v17 = [(SBUILockOverlayView *)v6 _legibilitySettingsForStyle:style];
    legibilitySettings = v6->_legibilitySettings;
    v6->_legibilitySettings = v17;

    v19 = [UIResizableView alloc];
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    v24 = [(UIResizableView *)v19 initWithFrame:*MEMORY[0x1E695F058], v21, v22, v23];
    textContainerView = v6->_textContainerView;
    v6->_textContainerView = v24;

    v26 = v6->_textContainerView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIResizableView *)v26 setBackgroundColor:clearColor];

    [(SBUILockOverlayView *)v6 addSubview:v6->_textContainerView];
    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v20, v21, v22, v23}];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v28;

    [(UILabel *)v6->_titleLabel setTextAlignment:1];
    v30 = v6->_titleLabel;
    _titleFont2 = [(SBUILockOverlayView *)v6 _titleFont];
    [(UILabel *)v30 setFont:_titleFont2];

    v32 = v6->_titleLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v32 setTextColor:whiteColor];

    v34 = v6->_titleLabel;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v34 setBackgroundColor:clearColor2];

    [(UILabel *)v6->_titleLabel setPreferredMaxLayoutWidth:v8];
    [(UILabel *)v6->_titleLabel setNumberOfLines:1];
    [(UILabel *)v6->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v6->_titleLabel setMinimumScaleFactor:v14];
    [(UIResizableView *)v6->_textContainerView addSubview:v6->_titleLabel];
    v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v20, v21, v22, v23}];
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v36;

    [(UILabel *)v6->_subtitleLabel setTextAlignment:1];
    v38 = v6->_subtitleLabel;
    _subtitleFont = [(SBUILockOverlayView *)v6 _subtitleFont];
    [(UILabel *)v38 setFont:_subtitleFont];

    v40 = v6->_subtitleLabel;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v40 setTextColor:whiteColor2];

    v42 = v6->_subtitleLabel;
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v42 setBackgroundColor:clearColor3];

    [(UILabel *)v6->_subtitleLabel setNumberOfLines:10];
    [(UIResizableView *)v6->_textContainerView addSubview:v6->_subtitleLabel];
    v44 = [MEMORY[0x1E69DC738] buttonWithType:1];
    actionButton = v6->_actionButton;
    v6->_actionButton = v44;

    v46 = v6->_actionButton;
    clearColor4 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v46 setBackgroundColor:clearColor4];

    [(UIButton *)v6->_actionButton addTarget:v6 action:sel__buttonPressed forControlEvents:64];
    titleLabel = [(UIButton *)v6->_actionButton titleLabel];
    [titleLabel setPreferredMaxLayoutWidth:v8];

    titleLabel2 = [(UIButton *)v6->_actionButton titleLabel];
    [titleLabel2 setNumberOfLines:2];

    titleLabel3 = [(UIButton *)v6->_actionButton titleLabel];
    _actionFont2 = [(SBUILockOverlayView *)v6 _actionFont];
    [titleLabel3 setFont:_actionFont2];

    v52 = v6->_actionButton;
    v53 = [MEMORY[0x1E69DC888] colorWithRed:0.203921569 green:0.666666667 blue:0.862745098 alpha:1.0];
    [(UIButton *)v52 setTitleColor:v53 forState:0];

    [(UIResizableView *)v6->_textContainerView addSubview:v6->_actionButton];
  }

  return v6;
}

- (id)_legibilitySettingsForStyle:(unint64_t)style
{
  if (style == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:v3];

  return v4;
}

- (void)layoutSubviews
{
  v97.receiver = self;
  v97.super_class = SBUILockOverlayView;
  [(SBUILockOverlayView *)&v97 layoutSubviews];
  [(SBUILockOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  p_titleLabel = &self->_titleLabel;
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  titleLabel = self->_titleLabel;
  _titleFont = [(SBUILockOverlayView *)self _titleFont];
  [(UILabel *)titleLabel setFont:_titleFont];

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  text = [(UILabel *)self->_titleLabel text];
  v11 = [text length];

  if (v11)
  {
    [(SBUILockOverlayView *)self _sizeView:self->_titleLabel forFixedWith:1];
    attributedText = [(UILabel *)*p_titleLabel attributedText];
    [attributedText size];
    v14 = v13;
    [(UILabel *)*p_titleLabel bounds];
    v16 = v15;

    if (v14 > v16)
    {
      [(UILabel *)*p_titleLabel setNumberOfLines:2];
      v17 = *p_titleLabel;
      _actionFont = [(SBUILockOverlayView *)self _actionFont];
      [(UILabel *)v17 setFont:_actionFont];

      [(UILabel *)*p_titleLabel setAdjustsFontSizeToFitWidth:0];
      [(SBUILockOverlayView *)self _sizeView:*p_titleLabel forFixedWith:1];
    }
  }

  else
  {
    [(UILabel *)*p_titleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  p_subtitleLabel = &self->_subtitleLabel;
  text2 = [(UILabel *)self->_subtitleLabel text];
  v21 = [text2 length];

  if (v21)
  {
    [(SBUILockOverlayView *)self _sizeView:self->_subtitleLabel forFixedWith:1];
  }

  else
  {
    [(UILabel *)*p_subtitleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v22 = [(UIButton *)self->_actionButton titleForState:0];
  if ([v22 length])
  {
  }

  else
  {
    v23 = [(UIButton *)self->_actionButton attributedTitleForState:0];
    v24 = [v23 length];

    if (!v24)
    {
      [(UIButton *)self->_actionButton setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v25 = 0;
      goto LABEL_12;
    }
  }

  [(SBUILockOverlayView *)self _sizeView:self->_actionButton forFixedWith:0];
  v25 = 1;
LABEL_12:
  [(UILabel *)*p_subtitleLabel frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *p_titleLabel;
  if (v21 && v11)
  {
    [(UILabel *)v32 _baselineOffsetFromBottom];
    v34 = v33;
    [(UILabel *)*p_subtitleLabel _firstLineBaselineOffsetFromBoundsTop];
    v36 = v34 + v35;
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v37 = 49.0;
      }

      else
      {
        v37 = 29.0;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v37 = 49.0;
      }

      else
      {
        v37 = 29.0;
      }
    }

    v43 = v37 - v36;
    [(UILabel *)*p_titleLabel origin];
    v45 = v44;
    v46 = [(UILabel *)*p_titleLabel size];
    v41 = SBFloatFloorForScale(v46, v48, v43 + v45 + v47, 0.0);
  }

  else
  {
    [(UILabel *)v32 origin];
    v39 = v38;
    [(UILabel *)*p_titleLabel size];
    v41 = v39 + v40;
  }

  v49 = (v21 | v11);
  [(UILabel *)*p_subtitleLabel setFrame:v27, v41, v29, v31];
  [(UIButton *)self->_actionButton frame];
  if (v21 | v11 && (v21 ? (v50 = &self->_subtitleLabel) : (v50 = &self->_titleLabel), (v49 = *v50) != 0 ? (v51 = v25) : (v51 = 0), v51 == 1))
  {
    titleLabel = [(UIButton *)self->_actionButton titleLabel];
    [(UILabel *)v49 _baselineOffsetFromBottom];
    v54 = v53;
    [titleLabel _firstLineBaselineOffsetFromBoundsTop];
    v56 = v55;
    [titleLabel origin];
    v58 = v54 + v56 + v57;
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v59 = 48.0;
      }

      else
      {
        v59 = 43.5;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] == 1)
      {
        v59 = 48.0;
      }

      else
      {
        v59 = 43.5;
      }
    }

    v61 = v59 - v58;
    [(UILabel *)v49 origin];
    v63 = v62;
    v64 = [(UILabel *)v49 size];
    SBFloatFloorForScale(v64, v66, v61 + v63 + v65, 0.0);
  }

  else
  {
    [(UILabel *)*p_subtitleLabel origin];
    [(UILabel *)*p_subtitleLabel size];
  }

  UIRectCenteredXInRect();
  [(UIButton *)self->_actionButton setFrame:?];
  [(SBUILockOverlayView *)self _sizeView:self->_textContainerView forFixedWith:1];
  frame = [(UIResizableView *)self->_textContainerView frame];
  v69 = v68;
  v71 = v70;
  v75 = SBFloatFloorForScale(frame, v72, v4 * 0.5 - v68 * 0.5, 0.0);
  if (v11)
  {
    font = [(UILabel *)*p_titleLabel font];
    [font descender];
    v78 = v77;

    if ((v25 & 1) == 0)
    {
      if (!v21)
      {
        v79 = *p_titleLabel;
LABEL_50:
        font2 = [(UILabel *)v79 font];
LABEL_54:
        v86 = font2;
        [font2 descender];
        v83 = v87;

        goto LABEL_55;
      }

LABEL_49:
      v79 = *p_subtitleLabel;
      goto LABEL_50;
    }

LABEL_53:
    font2 = [(SBUILockOverlayView *)self _actionFont];
    goto LABEL_54;
  }

  if (v21)
  {
    font3 = [(UILabel *)*p_subtitleLabel font];
    [font3 descender];
    v78 = v81;

    if ((v25 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v83 = 0.0;
  v78 = 0.0;
  if (v25)
  {
    _actionFont2 = [(SBUILockOverlayView *)self _actionFont];
    [_actionFont2 descender];
    v78 = v85;

    goto LABEL_53;
  }

LABEL_55:
  [(UIResizableView *)self->_textContainerView setFrame:v75, SBFloatFloorForScale(v73, v74, v6 * 0.5 - (v71 + fabs(v78) - fabs(v83)) * 0.5, 0.0), v69, v71];
  [(UIButton *)self->_actionButton frame];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  frame2 = [(UIResizableView *)self->_textContainerView frame];
  [(UIButton *)self->_actionButton setFrame:SBFloatFloorForScale(frame2, v96, (v95 - v91) * 0.5, 0.0), v89, v91, v93];
}

- (id)_titleFont
{
  v3 = MEMORY[0x1E69DB878];
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    v6 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [currentDevice userInterfaceIdiom] == 1;
  }

  v7 = 36.0;
  if (v6)
  {
    v7 = 48.0;
  }

  v8 = [v3 _thinSystemFontOfSize:v7];
  if ((v5 & 1) == 0)
  {
  }

  return v8;
}

- (id)_actionFont
{
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v5 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:24.0];
      goto LABEL_6;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0];
LABEL_6:
  v6 = v5;
  if ((v4 & 1) == 0)
  {
  }

  return v6;
}

- (void)_buttonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleTapGestureFromView:self];
}

- (unint64_t)_numberOfLinesForText:(id)text font:(id)font size:(CGSize)size
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!text)
  {
    return 0;
  }

  height = size.height;
  width = size.width;
  v8 = MEMORY[0x1E69DB7E0];
  fontCopy = font;
  textCopy = text;
  v11 = objc_alloc_init(v8);
  [v11 setWantsNumberOfLineFragments:1];
  v15 = *MEMORY[0x1E69DB648];
  v16[0] = fontCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [textCopy boundingRectWithSize:33 options:v12 attributes:v11 context:{width, height}];
  numberOfLineFragments = [v11 numberOfLineFragments];

  return numberOfLineFragments;
}

- (void)_sizeView:(id)view forFixedWith:(BOOL)with
{
  viewCopy = view;
  [(SBUILockOverlayView *)self _maxLabelWidth];
  [viewCopy sizeThatFits:?];
  [viewCopy frame];
  [viewCopy setFrame:?];
}

- (SBUILockOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end