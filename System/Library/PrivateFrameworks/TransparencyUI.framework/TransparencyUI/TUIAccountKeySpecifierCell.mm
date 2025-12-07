@interface TUIAccountKeySpecifierCell
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (TUIAccountKeySpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)handleLongPressGesture:(id)gesture;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TUIAccountKeySpecifierCell

- (TUIAccountKeySpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v42[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [TUIAccountKeySpecifierCell initWithStyle:reuseIdentifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    [TUIAccountKeySpecifierCell initWithStyle:reuseIdentifier:];
  }

  v41.receiver = self;
  v41.super_class = TUIAccountKeySpecifierCell;
  v7 = [(PSTableCell *)&v41 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [TUIAccountKeyLabel alloc];
    v9 = [(TUIAccountKeyLabel *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    accountKeyLabel = v7->_accountKeyLabel;
    v7->_accountKeyLabel = v9;

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v11 pointSize];
    v13 = v12;

    v14 = v7->_accountKeyLabel;
    v15 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:v13 weight:*MEMORY[0x277D74410]];
    [(TUIAccountKeyLabel *)v14 setFont:v15];

    v16 = v7->_accountKeyLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(TUIAccountKeyLabel *)v16 setTextColor:secondaryLabelColor];

    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setUserInteractionEnabled:1];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setLineBreakMode:1];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setNumberOfLines:0];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setTextAlignment:0];
    v18 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:v7];
    [(TUIAccountKeySpecifierCell *)v7 setEditInteraction:v18];

    v19 = v7->_accountKeyLabel;
    editInteraction = [(TUIAccountKeySpecifierCell *)v7 editInteraction];
    [(TUIAccountKeyLabel *)v19 addInteraction:editInteraction];

    v39 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel_handleLongPressGesture_];
    [v39 setAllowedTouchTypes:&unk_287F9E738];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel addGestureRecognizer:v39];
    contentView = [(TUIAccountKeySpecifierCell *)v7 contentView];
    [contentView addSubview:v7->_accountKeyLabel];

    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(TUIAccountKeySpecifierCell *)v7 contentView];
    [contentView2 layoutMarginsGuide];
    v23 = v40 = identifierCopy;

    v34 = MEMORY[0x277CCAAD0];
    topAnchor = [(TUIAccountKeyLabel *)v7->_accountKeyLabel topAnchor];
    topAnchor2 = [v23 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v42[0] = v36;
    bottomAnchor = [(TUIAccountKeyLabel *)v7->_accountKeyLabel bottomAnchor];
    bottomAnchor2 = [v23 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v42[1] = v24;
    leadingAnchor = [(TUIAccountKeyLabel *)v7->_accountKeyLabel leadingAnchor];
    leadingAnchor2 = [v23 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[2] = v27;
    trailingAnchor = [(TUIAccountKeyLabel *)v7->_accountKeyLabel trailingAnchor];
    trailingAnchor2 = [v23 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v34 activateConstraints:v31];

    identifierCopy = v40;
  }

  return v7;
}

uint64_t __60__TUIAccountKeySpecifierCell_initWithStyle_reuseIdentifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [TUIAccountKeySpecifierCell refreshCellContentsWithSpecifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    [TUIAccountKeySpecifierCell refreshCellContentsWithSpecifier:];
  }

  v10.receiver = self;
  v10.super_class = TUIAccountKeySpecifierCell;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:specifierCopy];
  textLabel = [(TUIAccountKeySpecifierCell *)self textLabel];
  [textLabel setHidden:1];

  accountKeyLabel = self->_accountKeyLabel;
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [(TUIAccountKeyLabel *)accountKeyLabel setText:v7];

  v8 = self->_accountKeyLabel;
  v9 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  [(TUIAccountKeyLabel *)v8 setAccessibilityIdentifier:v9];

  [(TUIAccountKeySpecifierCell *)self setNeedsLayout];
}

uint64_t __63__TUIAccountKeySpecifierCell_refreshCellContentsWithSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  [gestureCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  v11 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:{v7, v9}];
  editInteraction = [(TUIAccountKeySpecifierCell *)self editInteraction];
  [editInteraction presentEditMenuWithConfiguration:v11];
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  view = [interaction view];
  [view frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)initWithStyle:reuseIdentifier:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

- (void)refreshCellContentsWithSpecifier:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

@end