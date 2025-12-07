@interface OBSetupAssistantProgressController
- (OBSetupAssistantProgressController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (OBSetupAssistantProgressController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (double)_progressLabelTopAnchorConstraintConstantWithFont:(id)font;
- (void)setProgress:(double)progress;
- (void)setProgressText:(id)text;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantProgressController

- (OBSetupAssistantProgressController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantProgressController;
  return [(OBWelcomeController *)&v6 initWithTitle:title detailText:text icon:icon contentLayout:2];
}

- (OBSetupAssistantProgressController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantProgressController;
  return [(OBWelcomeController *)&v6 initWithTitle:title detailText:text symbolName:name contentLayout:2];
}

- (void)viewDidLoad
{
  v85[8] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = OBSetupAssistantProgressController;
  [(OBWelcomeController *)&v84 viewDidLoad];
  [(OBWelcomeController *)self setTemplateType:2];
  headerView = [(OBWelcomeController *)self headerView];
  [headerView setForceCenterAlignment:1];

  _progressFont = [(OBSetupAssistantProgressController *)self _progressFont];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBSetupAssistantProgressController *)self setProgressLabel:v6];

  progressLabel = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  progressLabel2 = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel2 setTextAlignment:1];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  progressLabel3 = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel3 setTextColor:labelColor];

  progressLabel4 = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel4 setFont:_progressFont];

  progressLabel5 = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel5 setNumberOfLines:0];

  v13 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  [(OBSetupAssistantProgressController *)self setProgressBar:v13];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  progressBar = [(OBSetupAssistantProgressController *)self progressBar];
  [progressBar setProgressTintColor:systemBlueColor];

  progressBar2 = [(OBSetupAssistantProgressController *)self progressBar];
  [progressBar2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(OBWelcomeController *)self contentView];
  progressLabel6 = [(OBSetupAssistantProgressController *)self progressLabel];
  [contentView addSubview:progressLabel6];

  contentView2 = [(OBWelcomeController *)self contentView];
  progressBar3 = [(OBSetupAssistantProgressController *)self progressBar];
  [contentView2 addSubview:progressBar3];

  progressLabel7 = [(OBSetupAssistantProgressController *)self progressLabel];
  topAnchor = [progressLabel7 topAnchor];
  scrollView = [(OBWelcomeController *)self scrollView];
  centerYAnchor = [scrollView centerYAnchor];
  v83 = _progressFont;
  [(OBSetupAssistantProgressController *)self _progressLabelTopAnchorConstraintConstantWithFont:_progressFont];
  v25 = [topAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor constant:?];
  [(OBSetupAssistantProgressController *)self setProgressLabelTopAnchorConstraint:v25];

  v67 = MEMORY[0x1E696ACD8];
  progressBar4 = [(OBSetupAssistantProgressController *)self progressBar];
  topAnchor2 = [progressBar4 topAnchor];
  contentView3 = [(OBWelcomeController *)self contentView];
  topAnchor3 = [contentView3 topAnchor];
  v78 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
  v85[0] = v78;
  progressBar5 = [(OBSetupAssistantProgressController *)self progressBar];
  centerXAnchor = [progressBar5 centerXAnchor];
  contentView4 = [(OBWelcomeController *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v73 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v85[1] = v73;
  progressBar6 = [(OBSetupAssistantProgressController *)self progressBar];
  heightAnchor = [progressBar6 heightAnchor];
  progressBar7 = [(OBSetupAssistantProgressController *)self progressBar];
  [progressBar7 intrinsicContentSize];
  v69 = [heightAnchor constraintEqualToConstant:v26];
  v85[2] = v69;
  progressBar8 = [(OBSetupAssistantProgressController *)self progressBar];
  bottomAnchor = [progressBar8 bottomAnchor];
  progressLabel8 = [(OBSetupAssistantProgressController *)self progressLabel];
  topAnchor4 = [progressLabel8 topAnchor];
  v63 = [bottomAnchor constraintEqualToAnchor:topAnchor4 constant:-14.0];
  v85[3] = v63;
  progressLabel9 = [(OBSetupAssistantProgressController *)self progressLabel];
  leftAnchor = [progressLabel9 leftAnchor];
  contentView5 = [(OBWelcomeController *)self contentView];
  safeAreaLayoutGuide = [contentView5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
  v57 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v85[4] = v57;
  progressLabel10 = [(OBSetupAssistantProgressController *)self progressLabel];
  rightAnchor = [progressLabel10 rightAnchor];
  contentView6 = [(OBWelcomeController *)self contentView];
  safeAreaLayoutGuide2 = [contentView6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v85[5] = v28;
  progressLabelTopAnchorConstraint = [(OBSetupAssistantProgressController *)self progressLabelTopAnchorConstraint];
  v85[6] = progressLabelTopAnchorConstraint;
  progressLabel11 = [(OBSetupAssistantProgressController *)self progressLabel];
  bottomAnchor2 = [progressLabel11 bottomAnchor];
  contentView7 = [(OBWelcomeController *)self contentView];
  bottomAnchor3 = [contentView7 bottomAnchor];
  v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v85[7] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:8];
  [v67 activateConstraints:v35];

  progressLabel12 = [(OBSetupAssistantProgressController *)self progressLabel];
  LODWORD(v37) = 1148846080;
  [progressLabel12 setContentHuggingPriority:1 forAxis:v37];

  v38 = +[OBDevice currentDevice];
  type = [v38 type];

  if (type != 2)
  {
    progressBar9 = [(OBSetupAssistantProgressController *)self progressBar];
    progressBar10 = progressBar9;
    goto LABEL_5;
  }

  v40 = +[OBFeatureFlags isNaturalUIEnabled];
  progressBar9 = [(OBSetupAssistantProgressController *)self progressBar];
  progressBar10 = progressBar9;
  if (v40)
  {
LABEL_5:
    leftAnchor3 = [progressBar9 leftAnchor];
    contentView8 = [(OBWelcomeController *)self contentView];
    safeAreaLayoutGuide3 = [contentView8 safeAreaLayoutGuide];
    leftAnchor4 = [safeAreaLayoutGuide3 leftAnchor];
    v49 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [v49 setActive:1];

    progressBar10 = [(OBSetupAssistantProgressController *)self progressBar];
    rightAnchor3 = [progressBar10 rightAnchor];
    contentView9 = [(OBWelcomeController *)self contentView];
    safeAreaLayoutGuide4 = [contentView9 safeAreaLayoutGuide];
    rightAnchor4 = [safeAreaLayoutGuide4 rightAnchor];
    v52 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [v52 setActive:1];

    goto LABEL_6;
  }

  rightAnchor3 = [progressBar9 widthAnchor];
  contentView9 = [rightAnchor3 constraintEqualToConstant:448.0];
  [contentView9 setActive:1];
LABEL_6:
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = OBSetupAssistantProgressController;
  [(OBWelcomeController *)&v9 traitCollectionDidChange:change];
  _progressFont = [(OBSetupAssistantProgressController *)self _progressFont];
  progressLabel = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel setFont:_progressFont];

  [(OBSetupAssistantProgressController *)self _progressLabelTopAnchorConstraintConstantWithFont:_progressFont];
  v7 = v6;
  progressLabelTopAnchorConstraint = [(OBSetupAssistantProgressController *)self progressLabelTopAnchorConstraint];
  [progressLabelTopAnchorConstraint setConstant:v7];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  headerView = [(OBWelcomeController *)self headerView];
  [headerView setTitle:titleCopy];
}

- (void)setProgressText:(id)text
{
  textCopy = text;
  progressLabel = [(OBSetupAssistantProgressController *)self progressLabel];
  [progressLabel setText:textCopy];
}

- (void)setProgress:(double)progress
{
  progressCopy = progress;
  progressBar = [(OBSetupAssistantProgressController *)self progressBar];
  *&v4 = progressCopy;
  [progressBar setProgress:v4];
}

- (double)_progressLabelTopAnchorConstraintConstantWithFont:(id)font
{
  fontCopy = font;
  [fontCopy ascender];
  v5 = v4;
  [fontCopy descender];
  v7 = v6;

  return -(v5 - v7);
}

@end