@interface AKAuthorizationScopeEditTableViewCell
- (AKAuthorizationScopeEditTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setup;
- (void)_setupDetailTextField;
@end

@implementation AKAuthorizationScopeEditTableViewCell

- (AKAuthorizationScopeEditTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AKAuthorizationScopeEditTableViewCell;
  selfCopy = [(AKAuthorizationScopeEditTableViewCell *)&v7 initWithStyle:2 reuseIdentifier:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKAuthorizationScopeEditTableViewCell *)selfCopy _setup];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_setup
{
  v2 = +[AKAuthorizationAppearance editScopeRowBackgroundColor];
  [(AKAuthorizationScopeEditTableViewCell *)self setBackgroundColor:?];
  [(AKAuthorizationScopeEditTableViewCell *)self setSelectionStyle:1, MEMORY[0x277D82BD8](v2).n128_f64[0]];
  [(AKAuthorizationScopeEditTableViewCell *)self setAccessoryType:0];
  v4 = +[AKAuthorizationAppearance editScopeInfoLabelTextColor];
  textLabel = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  [textLabel setTextColor:v4];
  MEMORY[0x277D82BD8](textLabel);
  v6 = +[AKAuthorizationAppearance editScopeInfoLabelFont];
  textLabel2 = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  [textLabel2 setFont:v6];
  MEMORY[0x277D82BD8](textLabel2);
  textLabel3 = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  [textLabel3 setAdjustsFontSizeToFitWidth:1];
  [(AKAuthorizationScopeEditTableViewCell *)self _setupDetailTextField];
}

- (void)_setupDetailTextField
{
  v31[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D75BB8]);
  detailTextField = self->_detailTextField;
  self->_detailTextField = v2;
  [(UITextField *)self->_detailTextField setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](detailTextField).n128_f64[0]];
  [(UITextField *)self->_detailTextField setAutocorrectionType:1];
  [(UITextField *)self->_detailTextField setReturnKeyType:?];
  v5 = +[AKAuthorizationAppearance editScopeInputFieldFont];
  [(UITextField *)self->_detailTextField setFont:?];
  v6 = +[AKAuthorizationAppearance editScopeInputFieldTextColor];
  [(UITextField *)self->_detailTextField setTextColor:?];
  detailTextLabel = [(AKAuthorizationScopeEditTableViewCell *)self detailTextLabel];
  [detailTextLabel setHidden:1];
  contentView = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  detailTextField = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  [contentView addSubview:?];
  MEMORY[0x277D82BD8](detailTextField);
  *&v4 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  v10 = MEMORY[0x277CCAAD0];
  contentView2 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  heightAnchor = [contentView2 heightAnchor];
  +[AKAuthorizationPaneMetrics nameCellHeight];
  v27 = [heightAnchor constraintEqualToConstant:?];
  v31[0] = v27;
  detailTextField2 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  leadingAnchor = [(UITextField *)detailTextField2 leadingAnchor];
  textLabel = [(AKAuthorizationScopeEditTableViewCell *)self textLabel];
  trailingAnchor = [textLabel trailingAnchor];
  +[AKAuthorizationSubPaneMetrics editInfoLabelToInputFieldSpacing];
  v22 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:?];
  v31[1] = v22;
  detailTextField3 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  trailingAnchor2 = [(UITextField *)detailTextField3 trailingAnchor];
  contentView3 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  trailingAnchor3 = [contentView3 trailingAnchor];
  v17 = [trailingAnchor2 constraintEqualToAnchor:?];
  v31[2] = v17;
  detailTextField4 = [(AKAuthorizationScopeEditTableViewCell *)self detailTextField];
  centerYAnchor = [(UITextField *)detailTextField4 centerYAnchor];
  contentView4 = [(AKAuthorizationScopeEditTableViewCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:?];
  v31[3] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v10 activateConstraints:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](detailTextField4);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](contentView3);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](detailTextField3);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](textLabel);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](detailTextField2);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](contentView2);
}

@end