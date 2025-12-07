@interface AMUIPhotosLabelView
- (AMUIPhotosLabelView)initWithSymbolName:(id)name title:(id)title;
- (id)_symbolImageConfiguration;
- (void)_noteWindowWillRotate:(id)rotate;
- (void)_updateForAmbientDisplayStyleAnimated:(BOOL)animated;
- (void)_updateForInterfaceOrientation:(int64_t)orientation;
- (void)_updateForWindow:(id)window;
- (void)didMoveToWindow;
- (void)setSymbolName:(id)name;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)willMoveToWindow:(id)window;
@end

@implementation AMUIPhotosLabelView

- (AMUIPhotosLabelView)initWithSymbolName:(id)name title:(id)title
{
  v60[10] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  titleCopy = title;
  v58.receiver = self;
  v58.super_class = AMUIPhotosLabelView;
  v8 = [(AMUIPhotosLabelView *)&v58 init];
  if (v8)
  {
    v9 = +[AMUIPosterSwitcherDomain rootSettings];
    settings = v8->_settings;
    v8->_settings = v9;

    [(PTSettings *)v8->_settings addKeyObserver:v8];
    v55 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D74368] weight:42.0 design:*MEMORY[0x277D743F8]];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setFont:v55];
    v54 = v11;
    [v11 setText:titleCopy];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v11 setTextColor:whiteColor];

    [(AMUIPhotosLabelView *)v8 addSubview:v11];
    v56 = titleCopy;
    objc_storeStrong(&v8->_titleLabel, v11);
    v13 = objc_alloc(MEMORY[0x277D75D68]);
    v14 = [MEMORY[0x277D75210] effectWithStyle:6];
    v15 = [v13 initWithEffect:v14];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 _setCornerRadius:37.0];
    [v15 setOverrideUserInterfaceStyle:1];
    [(AMUIPhotosLabelView *)v8 addSubview:v15];
    v53 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v15 contentView];
    [contentView addSubview:v53];

    objc_storeStrong(&v8->_symbolImageView, v53);
    [(AMUIPhotosLabelView *)v8 setSymbolName:nameCopy];
    v40 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(AMUIPhotosLabelView *)v8 leadingAnchor];
    leadingAnchor2 = [v15 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v60[0] = v50;
    trailingAnchor = [(AMUIPhotosLabelView *)v8 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v8->_titleLabel trailingAnchor];
    v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v60[1] = v47;
    topAnchor = [(AMUIPhotosLabelView *)v8 topAnchor];
    topAnchor2 = [v15 topAnchor];
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v60[2] = v44;
    bottomAnchor = [(AMUIPhotosLabelView *)v8 bottomAnchor];
    bottomAnchor2 = [v15 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v60[3] = v41;
    widthAnchor = [v15 widthAnchor];
    v38 = [widthAnchor constraintEqualToConstant:74.0];
    v60[4] = v38;
    heightAnchor = [v15 heightAnchor];
    widthAnchor2 = [v15 widthAnchor];
    v35 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v60[5] = v35;
    centerXAnchor = [(UIImageView *)v8->_symbolImageView centerXAnchor];
    centerXAnchor2 = [v15 centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v60[6] = v32;
    centerYAnchor = [(UIImageView *)v8->_symbolImageView centerYAnchor];
    centerYAnchor2 = [v15 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v60[7] = v17;
    firstBaselineAnchor = [(UIImageView *)v8->_symbolImageView firstBaselineAnchor];
    [(UILabel *)v8->_titleLabel firstBaselineAnchor];
    v19 = v57 = nameCopy;
    v20 = [firstBaselineAnchor constraintEqualToAnchor:v19];
    v60[8] = v20;
    leadingAnchor3 = [(UILabel *)v8->_titleLabel leadingAnchor];
    trailingAnchor3 = [v15 trailingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    v60[9] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:10];
    [v40 activateConstraints:v24];

    titleCopy = v56;
    nameCopy = v57;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__noteWindowWillRotate_ name:*MEMORY[0x277D772D8] object:0];

    v26 = objc_opt_self();
    v59 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v28 = [(AMUIPhotosLabelView *)v8 registerForTraitChanges:v27 withAction:sel__updateForAmbientDisplayStyle];

    [(AMUIPhotosLabelView *)v8 _updateForAmbientDisplayStyleAnimated:0];
  }

  return v8;
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [nameCopy copy];
    symbolName = self->_symbolName;
    self->_symbolName = v4;

    v6 = MEMORY[0x277D755B8];
    _symbolImageConfiguration = [(AMUIPhotosLabelView *)self _symbolImageConfiguration];
    v8 = [v6 systemImageNamed:nameCopy withConfiguration:_symbolImageConfiguration];

    [(UIImageView *)self->_symbolImageView setImage:v8];
  }
}

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    [(AMUIPhotosLabelView *)self _updateForWindow:?];
  }
}

- (void)didMoveToWindow
{
  window = [(AMUIPhotosLabelView *)self window];
  v4 = window;
  if (window)
  {
    v5 = window;
    window = [(AMUIPhotosLabelView *)self _updateForWindow:window];
    v4 = v5;
  }

  MEMORY[0x2821F96F8](window, v4);
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key isEqualToString:@"photoSymbolHugsEdge"])
  {
    window = [(AMUIPhotosLabelView *)self window];
    [(AMUIPhotosLabelView *)self _updateForWindow:window];
  }
}

- (id)_symbolImageConfiguration
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:42.0];
  v3 = MEMORY[0x277D755D0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = [v3 configurationWithHierarchicalColor:whiteColor];
  v6 = [v2 configurationByApplyingConfiguration:v5];

  return v6;
}

- (void)_noteWindowWillRotate:(id)rotate
{
  rotateCopy = rotate;
  object = [rotateCopy object];
  window = [(AMUIPhotosLabelView *)self window];

  if (object == window)
  {
    userInfo = [rotateCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D772C0]];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    integerValue = [v11 integerValue];
    [(AMUIPhotosLabelView *)self _updateForInterfaceOrientation:integerValue];
  }
}

- (void)_updateForWindow:(id)window
{
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  [(AMUIPhotosLabelView *)self _updateForInterfaceOrientation:_windowInterfaceOrientation];
}

- (void)_updateForInterfaceOrientation:(int64_t)orientation
{
  photoSymbolHugsEdge = [(AMUIPosterSwitcherSettings *)self->_settings photoSymbolHugsEdge];
  v6 = 3;
  if (orientation != 4)
  {
    v6 = 0;
  }

  if (orientation == 3)
  {
    v6 = 4;
  }

  if (photoSymbolHugsEdge)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(AMUIPhotosLabelView *)self setSemanticContentAttribute:v7];
}

- (void)_updateForAmbientDisplayStyleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(AMUIPhotosLabelView *)self traitCollection];
  v6 = objc_opt_self();
  [traitCollection valueForNSIntegerTrait:v6];
  IsRedMode = AMUIAmbientDisplayStyleIsRedMode();

  if (IsRedMode)
  {

    [(AMUIPhotosLabelView *)self amui_applyRedModeFilterAnimated:animatedCopy withCompletion:0];
  }

  else
  {

    [(AMUIPhotosLabelView *)self amui_clearRedModeFilterAnimated:animatedCopy withCompletion:0];
  }
}

@end