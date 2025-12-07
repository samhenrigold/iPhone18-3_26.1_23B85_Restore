@interface FeatureDiscoveryView
+ ($1AB5FA073B851C12C2339EC22442E995)_cellMetricsForIdiom:(int64_t)idiom context:(unint64_t)context;
+ ($29727DC6989B69F22950FCD998EA20D4)_metricsForIdiom:(SEL)idiom;
+ (id)_constraintsForFeatureDiscoveryView:(id)view centeredInContentView:(id)contentView withIdiom:(int64_t)idiom context:(unint64_t)context;
- (FeatureDiscoveryView)initWithFrame:(CGRect)frame;
- (double)arrowOffset;
- (void)_configureActionButton;
- (void)_dismiss;
- (void)_performAction;
- (void)_performBodyTap;
- (void)_setupActionButtonIfNeeded;
- (void)setModel:(id)model;
@end

@implementation FeatureDiscoveryView

- (void)_configureActionButton
{
  v14 = objc_alloc_init(NSMutableDictionary);
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v14 setObject:v3 forKeyedSubscript:NSFontAttributeName];

  v4 = +[UIColor systemBlueColor];
  [v14 setObject:v4 forKeyedSubscript:NSForegroundColorAttributeName];

  [(UIButton *)self->_actionButton setUserInteractionEnabled:1];
  model = [(FeatureDiscoveryView *)self model];
  if ([model shouldDisableAffordanceAfterAction])
  {
    model2 = [(FeatureDiscoveryView *)self model];
    hasActionExecuted = [model2 hasActionExecuted];

    if (hasActionExecuted)
    {
      v8 = +[UIColor systemGray2Color];
      [v14 setObject:v8 forKeyedSubscript:NSForegroundColorAttributeName];

      [(UIButton *)self->_actionButton setUserInteractionEnabled:0];
    }
  }

  else
  {
  }

  actionTitle = [(FeatureDiscoveryModel *)self->_model actionTitle];
  if (actionTitle)
  {
    v10 = [NSAttributedString alloc];
    actionTitle2 = [(FeatureDiscoveryModel *)self->_model actionTitle];
    v12 = [v10 initWithString:actionTitle2 attributes:v14];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_configuration(self->_actionButton);
  [v13 setAttributedTitle:v12];
  [(UIButton *)self->_actionButton setConfiguration:v13];
}

- (void)_setupActionButtonIfNeeded
{
  v97 = 0u;
  v3 = objc_opt_class();
  traitCollection = [(FeatureDiscoveryView *)self traitCollection];
  [traitCollection userInterfaceIdiom];
  if (v3)
  {
    objc_msgSend__metricsForIdiom_(v3);
  }

  else
  {
    v97 = 0u;
  }

  model = [(FeatureDiscoveryView *)self model];
  dismissHandler = [model dismissHandler];

  model2 = [(FeatureDiscoveryView *)self model];
  actionTitle = [model2 actionTitle];
  if (!actionTitle)
  {
    if (dismissHandler)
    {
      v13 = sub_10000FA08(self);

      if (v13 != 5)
      {
        goto LABEL_14;
      }

LABEL_11:
      [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
      [(NSLayoutConstraint *)self->_closeButtonTrailingConstraint setActive:0];
      bottomAnchor = [(FeatureDiscoveryView *)self bottomAnchor];
      bottomAnchor2 = [(MapsLargerHitTargetButton *)self->_closeButton bottomAnchor];
      v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v16;

      trailingAnchor = [(FeatureDiscoveryView *)self trailingAnchor];
      trailingAnchor2 = [(MapsLargerHitTargetButton *)self->_closeButton trailingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
      closeButtonTrailingConstraint = self->_closeButtonTrailingConstraint;
      self->_closeButtonTrailingConstraint = v20;

      v22 = self->_bottomConstraint;
      v101[0] = self->_closeButtonTrailingConstraint;
      v101[1] = v22;
      model4 = [NSArray arrayWithObjects:v101 count:2];
      [NSLayoutConstraint activateConstraints:model4];
LABEL_16:

      return;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = actionTitle;
  model3 = [(FeatureDiscoveryView *)self model];
  actionTitle2 = [model3 actionTitle];
  if ([actionTitle2 length] || !dismissHandler)
  {

    goto LABEL_13;
  }

  v12 = sub_10000FA08(self);

  if (v12 == 5)
  {
    goto LABEL_11;
  }

LABEL_14:
  model4 = [(FeatureDiscoveryView *)self model];
  actionTitle3 = [model4 actionTitle];
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  text = [titleLabel text];
  v27 = actionTitle3;
  v28 = text;
  if (!(v27 | v28))
  {

    goto LABEL_16;
  }

  v29 = v28;
  v30 = [v27 isEqual:v28];

  if ((v30 & 1) == 0)
  {
    [(UIButton *)self->_actionButton removeFromSuperview];
    [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
    [(NSLayoutConstraint *)self->_closeButtonTrailingConstraint setActive:0];
    model5 = [(FeatureDiscoveryView *)self model];
    actionTitle4 = [model5 actionTitle];
    v33 = [actionTitle4 length];

    if (v33)
    {
      model4 = objc_alloc_init(NSMutableArray);
      if (sub_10000FA08(self) == 5)
      {
        v34 = [UIButton buttonWithType:1];
        actionButton = self->_actionButton;
        self->_actionButton = v34;

        [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"FeatureDiscoveryActionButton"];
        bottomAnchor3 = [(FeatureDiscoveryView *)self bottomAnchor];
        bottomAnchor4 = [(UIButton *)self->_actionButton bottomAnchor];
        v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
        v39 = self->_bottomConstraint;
        self->_bottomConstraint = v38;

        leadingAnchor = [(UIButton *)self->_actionButton leadingAnchor];
        trailingAnchor3 = [(MapsLargerHitTargetButton *)self->_closeButton trailingAnchor];
        v42 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
        v43 = self->_closeButtonTrailingConstraint;
        self->_closeButtonTrailingConstraint = v42;

        v99[0] = self->_closeButtonTrailingConstraint;
        trailingAnchor4 = [(FeatureDiscoveryView *)self trailingAnchor];
        trailingAnchor5 = [(UIButton *)self->_actionButton trailingAnchor];
        v46 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:0.0];
        v99[1] = v46;
        topAnchor = [(MapsLargerHitTargetButton *)self->_closeButton topAnchor];
        topAnchor2 = [(UIButton *)self->_actionButton topAnchor];
        v95 = [topAnchor constraintEqualToAnchor:?];
        v99[2] = v95;
        bottomAnchor5 = [(MapsLargerHitTargetButton *)self->_closeButton bottomAnchor];
        bottomAnchor6 = [(UIButton *)self->_actionButton bottomAnchor];
        v93 = [bottomAnchor5 constraintEqualToAnchor:?];
        v99[3] = v93;
        topAnchor3 = [(UIButton *)self->_actionButton topAnchor];
        bottomAnchor7 = [(UIStackView *)self->_textStackView bottomAnchor];
        trailingAnchor7 = topAnchor3;
        v50 = [topAnchor3 constraintEqualToAnchor:*&v97 constant:?];
        v51 = self->_bottomConstraint;
        v52 = v50;
        v99[4] = v50;
        v99[5] = v51;
        bottomAnchor11 = [NSArray arrayWithObjects:v99 count:6];
        [model4 addObjectsFromArray:bottomAnchor11];
      }

      else
      {
        v59 = [UIButton buttonWithType:0];
        v60 = self->_actionButton;
        self->_actionButton = v59;

        [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"FeatureDiscoveryActionButton"];
        [(UIButton *)self->_actionButton setContentHorizontalAlignment:4];
        titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
        [titleLabel2 setLineBreakMode:4];

        titleLabel3 = [(UIButton *)self->_actionButton titleLabel];
        [titleLabel3 setNumberOfLines:0];

        v90 = +[UIButtonConfiguration plainButtonConfiguration];
        [v90 setContentInsets:{*(&v97 + 1), 0.0, 0.0, 0.0}];
        [(UIButton *)self->_actionButton setConfiguration:v90];
        LODWORD(v63) = 1148846080;
        [(UIButton *)self->_actionButton setContentCompressionResistancePriority:1 forAxis:v63];
        v64 = [[HairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        [(HairlineView *)v64 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(FeatureDiscoveryView *)self addSubview:v64];
        bottomAnchor8 = [(FeatureDiscoveryView *)self bottomAnchor];
        bottomAnchor9 = [(UIButton *)self->_actionButton bottomAnchor];
        v67 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
        v68 = self->_bottomConstraint;
        self->_bottomConstraint = v67;

        leadingAnchor2 = [(UIButton *)self->_actionButton leadingAnchor];
        leadingAnchor3 = [(UIStackView *)self->_textStackView leadingAnchor];
        topAnchor2 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
        v98[0] = topAnchor2;
        leadingAnchor4 = [(HairlineView *)v64 leadingAnchor];
        leadingAnchor5 = [(UIButton *)self->_actionButton leadingAnchor];
        v95 = leadingAnchor4;
        bottomAnchor6 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        v98[1] = bottomAnchor6;
        trailingAnchor6 = [(FeatureDiscoveryView *)self trailingAnchor];
        trailingAnchor7 = [(HairlineView *)v64 trailingAnchor];
        v93 = trailingAnchor6;
        bottomAnchor7 = [trailingAnchor6 constraintEqualToAnchor:?];
        v98[2] = bottomAnchor7;
        bottomAnchor10 = [(HairlineView *)v64 bottomAnchor];
        bottomAnchor11 = [(UIStackView *)self->_textStackView bottomAnchor];
        v86 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:*&v97];
        v98[3] = v86;
        trailingAnchor8 = [(UIButton *)self->_actionButton trailingAnchor];
        leadingAnchor6 = [(MapsLargerHitTargetButton *)self->_closeButton leadingAnchor];
        v71 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor6];
        v98[4] = v71;
        topAnchor4 = [(UIButton *)self->_actionButton topAnchor];
        bottomAnchor12 = [(HairlineView *)v64 bottomAnchor];
        v74 = [topAnchor4 constraintEqualToAnchor:bottomAnchor12];
        v75 = self->_bottomConstraint;
        v98[5] = v74;
        v98[6] = v75;
        v76 = [NSArray arrayWithObjects:v98 count:7];
        [model4 addObjectsFromArray:v76];

        v52 = bottomAnchor10;
        bottomAnchor5 = leadingAnchor5;

        topAnchor = leadingAnchor3;
        trailingAnchor5 = v64;
        v46 = leadingAnchor2;

        trailingAnchor4 = v90;
      }

      [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      titleLabel4 = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel4 setAdjustsFontForContentSizeCategory:1];

      [(UIButton *)self->_actionButton setRole:1];
      model6 = [(FeatureDiscoveryView *)self model];
      actionHandler = [model6 actionHandler];
      [(UIButton *)self->_actionButton setEnabled:actionHandler != 0];

      [(UIButton *)self->_actionButton addTarget:self action:"_performAction" forControlEvents:64];
      [(FeatureDiscoveryView *)self addSubview:self->_actionButton];
      [NSLayoutConstraint activateConstraints:model4];
      if (sub_10000FA08(self) == 5)
      {
        v80 = self->_actionButton;
        model7 = [(FeatureDiscoveryView *)self model];
        actionTitle5 = [model7 actionTitle];
        [(UIButton *)v80 setTitle:actionTitle5 forState:0];
      }

      else
      {
        [(FeatureDiscoveryView *)self _configureActionButton];
      }
    }

    else
    {
      bottomAnchor13 = [(FeatureDiscoveryView *)self bottomAnchor];
      bottomAnchor14 = [(UIStackView *)self->_textStackView bottomAnchor];
      v56 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14 constant:0.0];
      v57 = self->_bottomConstraint;
      self->_bottomConstraint = v56;

      v100 = self->_bottomConstraint;
      v58 = [NSArray arrayWithObjects:&v100 count:1];
      [NSLayoutConstraint activateConstraints:v58];

      model4 = self->_actionButton;
      self->_actionButton = 0;
    }

    goto LABEL_16;
  }
}

- (void)_performBodyTap
{
  model = [(FeatureDiscoveryView *)self model];
  if (([model isDismissed] & 1) == 0)
  {
    model2 = [(FeatureDiscoveryView *)self model];
    bodyTapHandler = [model2 bodyTapHandler];

    if (!bodyTapHandler)
    {
      return;
    }

    model = [(FeatureDiscoveryView *)self model];
    bodyTapHandler2 = [model bodyTapHandler];
    bodyTapHandler2[2]();
  }
}

- (void)_performAction
{
  model = [(FeatureDiscoveryView *)self model];
  if ([model isDismissed])
  {
  }

  else
  {
    model2 = [(FeatureDiscoveryView *)self model];
    actionHandler = [model2 actionHandler];

    if (actionHandler)
    {
      model3 = [(FeatureDiscoveryView *)self model];
      actionHandler2 = [model3 actionHandler];
      actionHandler2[2]();

      [(FeatureDiscoveryView *)self _configureActionButton];
    }
  }
}

- (void)_dismiss
{
  model = [(FeatureDiscoveryView *)self model];
  if (([model isDismissed] & 1) == 0)
  {
    model2 = [(FeatureDiscoveryView *)self model];
    dismissHandler = [model2 dismissHandler];

    if (!dismissHandler)
    {
      goto LABEL_5;
    }

    model = [(FeatureDiscoveryView *)self model];
    dismissHandler2 = [model dismissHandler];
    dismissHandler2[2]();
  }

LABEL_5:
  model3 = [(FeatureDiscoveryView *)self model];
  [model3 setDismissed:1];
}

- (void)setModel:(id)model
{
  modelCopy = model;
  model = self->_model;
  v20 = modelCopy;
  modelCopy2 = model;
  v8 = v20;
  if (v20 | modelCopy2)
  {
    v9 = [v20 isEqual:modelCopy2];

    v8 = v20;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_model, model);
      [(FeatureDiscoveryModel *)self->_model setUpdatesDelegate:self];
      [(FeatureDiscoveryView *)self setShowBubbleIndicator:[(FeatureDiscoveryModel *)self->_model isTipMode]];
      image = [v20 image];

      image2 = [v20 image];
      [(UIImageView *)self->_imageView setImage:image2];

      [(UIImageView *)self->_imageView setHidden:image == 0];
      title = [v20 title];
      [(UILabel *)self->_titleLabel setText:title];

      subtitle = [v20 subtitle];
      [(UILabel *)self->_subtitleLabel setText:subtitle];

      dismissHandler = [v20 dismissHandler];
      v15 = dismissHandler == 0;

      [(MapsLargerHitTargetButton *)self->_closeButton setHidden:v15];
      [(FeatureDiscoveryView *)self _setupActionButtonIfNeeded];
      bodyTapHandler = [v20 bodyTapHandler];

      tapGesture = self->_tapGesture;
      if (bodyTapHandler)
      {
        [(FeatureDiscoveryView *)self addGestureRecognizer:tapGesture];
      }

      else
      {
        [(FeatureDiscoveryView *)self removeGestureRecognizer:tapGesture];
      }

      if (image)
      {
        v18 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithoutImage;
      }

      else
      {
        v18 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithImage;
      }

      if (image)
      {
        v19 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithImage;
      }

      else
      {
        v19 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithoutImage;
      }

      [NSLayoutConstraint deactivateConstraints:*&self->MUFeatureDiscoveryAnnotationView_opaque[*v18]];
      [NSLayoutConstraint activateConstraints:*&self->MUFeatureDiscoveryAnnotationView_opaque[*v19]];
      v8 = v20;
    }
  }
}

- (double)arrowOffset
{
  sourceView = [(FeatureDiscoveryView *)self sourceView];

  if (sourceView)
  {
    v6.receiver = self;
    v6.super_class = FeatureDiscoveryView;
    [(FeatureDiscoveryView *)&v6 arrowOffset];
  }

  else
  {
    [(FeatureDiscoveryView *)self bounds];
    return v5 * 0.5 + -25.0;
  }

  return result;
}

- (FeatureDiscoveryView)initWithFrame:(CGRect)frame
{
  v116.receiver = self;
  v116.super_class = FeatureDiscoveryView;
  v3 = [(FeatureDiscoveryView *)&v116 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FeatureDiscoveryView *)v3 setClipsToBounds:0];
    [(FeatureDiscoveryView *)v4 setFloatingIndicator:1];
    traitCollection = [(FeatureDiscoveryView *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(FeatureDiscoveryView *)v4 setCornerRadius:?];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(FeatureDiscoveryView *)v4 setAccessibilityIdentifier:v7];

    v115 = 0u;
    v114 = 0u;
    v8 = objc_opt_class();
    traitCollection2 = [(FeatureDiscoveryView *)v4 traitCollection];
    [traitCollection2 userInterfaceIdiom];
    if (v8)
    {
      objc_msgSend__metricsForIdiom_(v8);
    }

    else
    {
      v115 = 0u;
      v114 = 0u;
    }

    v10 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v14 = [v10 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v4->_imageView;
    v4->_imageView = v14;

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_imageView setContentMode:1];
    [(UIImageView *)v4->_imageView setAccessibilityIdentifier:@"FeatureDiscoveryImageView"];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_imageView];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v16;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v19 = [v18 _mapkit_fontWithWeight:UIFontWeightSemibold];
    [(UILabel *)v4->_titleLabel setFont:v19];

    v20 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v20];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"FeatureDiscoveryTitle"];
    LODWORD(v21) = 1132068864;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:0 forAxis:v21];
    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v22;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v24];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"FeatureDiscoverySubtitle"];
    LODWORD(v25) = 1132068864;
    [(UILabel *)v4->_subtitleLabel setContentHuggingPriority:0 forAxis:v25];
    v26 = [UIStackView alloc];
    v121[0] = v4->_titleLabel;
    v121[1] = v4->_subtitleLabel;
    v27 = [NSArray arrayWithObjects:v121 count:2];
    v28 = [v26 initWithArrangedSubviews:v27];
    textStackView = v4->_textStackView;
    v4->_textStackView = v28;

    [(UIStackView *)v4->_textStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_textStackView setAxis:1];
    [(UIStackView *)v4->_textStackView setDistribution:0];
    [(UIStackView *)v4->_textStackView setAlignment:0];
    v30 = 0.0;
    [(UIStackView *)v4->_textStackView setSpacing:0.0];
    [(UIStackView *)v4->_textStackView setAccessibilityIdentifier:@"FeatureDiscoveryTextStack"];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_textStackView];
    v31 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"_performBodyTap"];
    tapGesture = v4->_tapGesture;
    v4->_tapGesture = v31;

    v33 = objc_alloc_init(NSMutableArray);
    traitCollection3 = [(FeatureDiscoveryView *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(FeatureDiscoveryView *)v4 setCornerRadius:?];

    v35 = UIFontTextStyleSubheadline;
    v113 = v33;
    if (sub_10000FA08(v4) == 5)
    {
      v36 = [UIColor colorWithWhite:0.0 alpha:0.0199999996];
      cGColor = [v36 CGColor];
      layer = [(FeatureDiscoveryView *)v4 layer];
      [layer setBorderColor:cGColor];

      traitCollection4 = [(FeatureDiscoveryView *)v4 traitCollection];
      [traitCollection4 displayScale];
      v41 = v40;
      v42 = v40 <= 1.0;
      v43 = 1.0;
      if (!v42)
      {
        cGColor = [(FeatureDiscoveryView *)v4 traitCollection];
        [cGColor displayScale];
      }

      v44 = 1.0 / v43;
      layer2 = [(FeatureDiscoveryView *)v4 layer];
      [layer2 setBorderWidth:v44];

      if (v41 > 1.0)
      {
      }

      v111 = UIFontTextStyleBody;
      v46 = [MapsLargerHitTargetButton buttonWithType:1];
      closeButton = v4->_closeButton;
      v4->_closeButton = v46;

      v48 = v4->_closeButton;
      v49 = +[NSBundle mainBundle];
      v50 = [v49 localizedStringForKey:@"Dismiss [Action value:Route Planning table:{Feature Discovery, Mac]", @"localized string not found", 0}];
      [(MapsLargerHitTargetButton *)v48 setTitle:v50 forState:0];

      [(MapsLargerHitTargetButton *)v4->_closeButton setAccessibilityIdentifier:@"FeatureDiscoveryCloseButton"];
      leadingAnchor = [(MapsLargerHitTargetButton *)v4->_closeButton leadingAnchor];
      leadingAnchor2 = [(FeatureDiscoveryView *)v4 leadingAnchor];
      v108 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:*&v114 constant:?];
      v120[0] = v108;
      topAnchor = [(MapsLargerHitTargetButton *)v4->_closeButton topAnchor];
      bottomAnchor = [(UIStackView *)v4->_textStackView bottomAnchor];
      v104 = topAnchor;
      trailingAnchor3 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:*&v114];
      v120[1] = trailingAnchor3;
      trailingAnchor = [(FeatureDiscoveryView *)v4 trailingAnchor];
      trailingAnchor2 = [(UIStackView *)v4->_textStackView trailingAnchor];
      topAnchor2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:*&v114];
      v120[2] = topAnchor2;
      topAnchor3 = [NSArray arrayWithObjects:v120 count:3];
      [v33 addObjectsFromArray:topAnchor3];
      v59 = v111;
    }

    else
    {
      v60 = [MapsLargerHitTargetButton buttonWithType:0];
      v61 = v4->_closeButton;
      v4->_closeButton = v60;

      +[UIFont systemFontSize];
      v62 = [UIFont systemFontOfSize:?];
      v63 = [v62 _mapkit_fontWithWeight:UIFontWeightMedium];
      v64 = [UIImageSymbolConfiguration configurationWithFont:v63];

      v103 = v64;
      v65 = [UIImage systemImageNamed:@"xmark" withConfiguration:v64];
      v66 = [v65 imageWithRenderingMode:2];

      [(MapsLargerHitTargetButton *)v4->_closeButton setImage:v66 forState:0];
      [v66 size];
      if (v67 <= 0.0)
      {
        [v66 size];
        v30 = (0.0 - v68) * 0.5;
      }

      v112 = v35;
      [v66 size];
      v69 = 0.0;
      if (v70 <= 0.0)
      {
        [v66 size];
        v69 = (0.0 - v71) * 0.5;
      }

      [(MapsLargerHitTargetButton *)v4->_closeButton setTouchInsets:-v69, -v30, -v69, -v30];
      v72 = +[UIColor secondaryLabelColor];
      [(MapsLargerHitTargetButton *)v4->_closeButton setTintColor:v72];

      LODWORD(v73) = 1144750080;
      [(MapsLargerHitTargetButton *)v4->_closeButton setContentHuggingPriority:0 forAxis:v73];
      LODWORD(v74) = 1148846080;
      [(MapsLargerHitTargetButton *)v4->_closeButton setContentCompressionResistancePriority:0 forAxis:v74];
      leadingAnchor3 = [(MapsLargerHitTargetButton *)v4->_closeButton leadingAnchor];
      [(UIStackView *)v4->_textStackView trailingAnchor];
      v104 = v108 = leadingAnchor3;
      bottomAnchor = [leadingAnchor3 constraintEqualToAnchor:*&v114 constant:?];
      v119[0] = bottomAnchor;
      trailingAnchor3 = [(FeatureDiscoveryView *)v4 trailingAnchor];
      [(MapsLargerHitTargetButton *)v4->_closeButton trailingAnchor];
      trailingAnchor = leadingAnchor2 = v66;
      trailingAnchor2 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor constant:*&v114];
      v119[1] = trailingAnchor2;
      topAnchor2 = [(MapsLargerHitTargetButton *)v4->_closeButton topAnchor];
      topAnchor3 = [(UIStackView *)v4->_textStackView topAnchor];
      v76 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      v119[2] = v76;
      v77 = [NSArray arrayWithObjects:v119 count:3];
      [v33 addObjectsFromArray:v77];

      v59 = v112;
      leadingAnchor = v103;
    }

    v78 = [UIFont preferredFontForTextStyle:v59];
    [(UILabel *)v4->_subtitleLabel setFont:v78];

    [(MapsLargerHitTargetButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsLargerHitTargetButton *)v4->_closeButton addTarget:v4 action:"_dismiss" forControlEvents:64];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_closeButton];
    widthAnchor = [(UIImageView *)v4->_imageView widthAnchor];
    v109 = [widthAnchor constraintEqualToConstant:*(&v115 + 1)];
    v118[0] = v109;
    leadingAnchor4 = [(UIImageView *)v4->_imageView leadingAnchor];
    leadingAnchor5 = [(FeatureDiscoveryView *)v4 leadingAnchor];
    v79 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:*&v114];
    v118[1] = v79;
    centerYAnchor = [(UIImageView *)v4->_imageView centerYAnchor];
    centerYAnchor2 = [(UIStackView *)v4->_textStackView centerYAnchor];
    v82 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v118[2] = v82;
    topAnchor4 = [(UIStackView *)v4->_textStackView topAnchor];
    topAnchor5 = [(FeatureDiscoveryView *)v4 topAnchor];
    v85 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:*(&v114 + 1)];
    v118[3] = v85;
    v86 = [NSArray arrayWithObjects:v118 count:4];
    [v113 addObjectsFromArray:v86];

    leadingAnchor6 = [(UIStackView *)v4->_textStackView leadingAnchor];
    trailingAnchor4 = [(UIImageView *)v4->_imageView trailingAnchor];
    v89 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:*&v114];
    v90 = [v113 arrayByAddingObject:v89];
    constraintsWithImage = v4->_constraintsWithImage;
    v4->_constraintsWithImage = v90;

    leadingAnchor7 = [(UIStackView *)v4->_textStackView leadingAnchor];
    leadingAnchor8 = [(UIImageView *)v4->_imageView leadingAnchor];
    v94 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v95 = [v113 arrayByAddingObject:v94];
    constraintsWithoutImage = v4->_constraintsWithoutImage;
    v4->_constraintsWithoutImage = v95;

    [NSLayoutConstraint activateConstraints:v4->_constraintsWithoutImage];
    bottomAnchor2 = [(FeatureDiscoveryView *)v4 bottomAnchor];
    bottomAnchor3 = [(UIStackView *)v4->_textStackView bottomAnchor];
    v99 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:*&v115];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v99;

    v117 = v4->_bottomConstraint;
    v101 = [NSArray arrayWithObjects:&v117 count:1];
    [NSLayoutConstraint activateConstraints:v101];

    [(FeatureDiscoveryView *)v4 _setupActionButtonIfNeeded];
  }

  return v4;
}

+ (id)_constraintsForFeatureDiscoveryView:(id)view centeredInContentView:(id)contentView withIdiom:(int64_t)idiom context:(unint64_t)context
{
  contentViewCopy = contentView;
  viewCopy = view;
  [FeatureDiscoveryView _cellMetricsForIdiom:idiom context:context];
  v11 = [viewCopy _maps_constraintsEqualToEdgesOfView:contentViewCopy insets:? priority:?];

  allConstraints = [v11 allConstraints];

  return allConstraints;
}

+ ($1AB5FA073B851C12C2339EC22442E995)_cellMetricsForIdiom:(int64_t)idiom context:(unint64_t)context
{
  v4 = 2.0;
  if (!context)
  {
    v4 = 12.0;
  }

  v5 = 4.0;
  if (!context)
  {
    v5 = 0.0;
  }

  if (idiom == 5)
  {
    v5 = v4;
  }

  v6 = 10.0;
  if (idiom != 5)
  {
    v6 = 16.0;
  }

  v7 = 6.0;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v7;
  return result;
}

+ ($29727DC6989B69F22950FCD998EA20D4)_metricsForIdiom:(SEL)idiom
{
  if (a4 == 5)
  {
    retstr->var6 = 0.0;
    *&retstr->var0 = xmmword_101215ED0;
    *&retstr->var2 = unk_101215EE0;
    *&retstr->var4 = xmmword_101215EF0;
  }

  else
  {
    *&retstr->var0 = xmmword_101215F08;
    *&retstr->var2 = unk_101215F18;
    *&retstr->var4 = xmmword_101215F28;
    retstr->var6 = 40.0;
  }

  return result;
}

@end