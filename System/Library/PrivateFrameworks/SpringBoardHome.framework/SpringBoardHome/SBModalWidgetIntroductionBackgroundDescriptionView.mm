@interface SBModalWidgetIntroductionBackgroundDescriptionView
- (SBModalWidgetIntroductionBackgroundDescriptionView)initWithFrame:(CGRect)frame withOwner:(id)owner;
- (UIViewController)owner;
@end

@implementation SBModalWidgetIntroductionBackgroundDescriptionView

- (SBModalWidgetIntroductionBackgroundDescriptionView)initWithFrame:(CGRect)frame withOwner:(id)owner
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v85[4] = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  v82.receiver = self;
  v82.super_class = SBModalWidgetIntroductionBackgroundDescriptionView;
  height = [(SBModalWidgetIntroductionBackgroundDescriptionView *)&v82 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_owner, ownerCopy);
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v12;

    [(UIView *)v11->_backgroundView _setContinuousCornerRadius:40.0];
    [(UIView *)v11->_backgroundView setClipsToBounds:1];
    v14 = v11->_backgroundView;
    [MEMORY[0x1E69DC888] systemBackgroundColor];
    v15 = v81 = ownerCopy;
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v11->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 addSubview:v11->_backgroundView];
    v16 = SBHPinViewWithinView(v11, v11->_backgroundView);
    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    labelContainerView = v11->_labelContainerView;
    v11->_labelContainerView = v17;

    v19 = v11->_labelContainerView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v19 setBackgroundColor:clearColor];

    [(UIView *)v11->_labelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 addSubview:v11->_labelContainerView];
    v66 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)v11->_labelContainerView leadingAnchor];
    leadingAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 leadingAnchor];
    v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v85[0] = v72;
    trailingAnchor = [(UIView *)v11->_labelContainerView trailingAnchor];
    trailingAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v85[1] = v21;
    topAnchor = [(UIView *)v11->_labelContainerView topAnchor];
    topAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v85[2] = v24;
    bottomAnchor = [(UIView *)v11->_labelContainerView bottomAnchor];
    bottomAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v85[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
    [v66 activateConstraints:v28];

    v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v29;

    v31 = v11->_titleLabel;
    v33 = SBHBundle(v32);
    v34 = [v33 localizedStringForKey:@"MODAL_WIDGET_DISCOVERABILITY_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(UILabel *)v31 setText:v34];

    v35 = v11->_titleLabel;
    v36 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB968]];
    [(UILabel *)v35 setFont:v36];

    v37 = v11->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v37 setTextColor:labelColor];

    [(UILabel *)v11->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v11->_titleLabel setMinimumScaleFactor:0.6];
    [(UILabel *)v11->_titleLabel setNumberOfLines:2];
    [(UILabel *)v11->_titleLabel setTextAlignment:1];
    [(UILabel *)v11->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_labelContainerView addSubview:v11->_titleLabel];
    v70 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UILabel *)v11->_titleLabel centerXAnchor];
    centerXAnchor2 = [(UIView *)v11->_labelContainerView centerXAnchor];
    v73 = [centerXAnchor constraintGreaterThanOrEqualToAnchor:centerXAnchor2];
    v84[0] = v73;
    topAnchor3 = [(UILabel *)v11->_titleLabel topAnchor];
    topAnchor4 = [(UIView *)v11->_labelContainerView topAnchor];
    v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:100.0];
    v84[1] = v40;
    widthAnchor = [(UILabel *)v11->_titleLabel widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:200.0];
    v84[2] = v42;
    heightAnchor = [(UILabel *)v11->_titleLabel heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:50.0];
    v84[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:4];
    [v70 activateConstraints:v45];

    v46 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    introductionTextLabel = v11->_introductionTextLabel;
    v11->_introductionTextLabel = v46;

    v48 = v11->_introductionTextLabel;
    v50 = SBHBundle(v49);
    v51 = [v50 localizedStringForKey:@"MODAL_WIDGET_DISCOVERABILITY_DESCRIPTION" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(UILabel *)v48 setText:v51];

    v52 = v11->_introductionTextLabel;
    v53 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB978]];
    [(UILabel *)v52 setFont:v53];

    v54 = v11->_introductionTextLabel;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v54 setTextColor:labelColor2];

    [(UILabel *)v11->_introductionTextLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v11->_introductionTextLabel setMinimumScaleFactor:0.6];
    [(UILabel *)v11->_introductionTextLabel setNumberOfLines:2];
    [(UILabel *)v11->_introductionTextLabel setTextAlignment:1];
    [(UILabel *)v11->_introductionTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_labelContainerView addSubview:v11->_introductionTextLabel];
    v71 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UILabel *)v11->_introductionTextLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v11->_labelContainerView leadingAnchor];
    v74 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:30.0];
    v83[0] = v74;
    trailingAnchor3 = [(UILabel *)v11->_introductionTextLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)v11->_labelContainerView trailingAnchor];
    v58 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-30.0];
    v83[1] = v58;
    topAnchor5 = [(UILabel *)v11->_introductionTextLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v11->_titleLabel bottomAnchor];
    v61 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
    v83[2] = v61;
    heightAnchor2 = [(UILabel *)v11->_introductionTextLabel heightAnchor];
    v63 = [heightAnchor2 constraintEqualToConstant:60.0];
    v83[3] = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
    [v71 activateConstraints:v64];

    ownerCopy = v81;
  }

  return v11;
}

- (UIViewController)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end