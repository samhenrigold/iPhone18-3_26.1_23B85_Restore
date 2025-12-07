@interface CNFRegSelectableAliasTableCell
- (CNFRegSelectableAliasTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setChecked:(BOOL)checked;
@end

@implementation CNFRegSelectableAliasTableCell

- (CNFRegSelectableAliasTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = CNFRegSelectableAliasTableCell;
  v5 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = +[CNFRegAppearanceController globalAppearanceController];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    tableCellCheckmarkImage = [v6 tableCellCheckmarkImage];
    v9 = [v7 initWithImage:tableCellCheckmarkImage];

    [(CNFRegSelectableAliasTableCell *)v5 setAccessoryView:v9];
  }

  return v5;
}

- (void)setChecked:(BOOL)checked
{
  v13.receiver = self;
  v13.super_class = CNFRegSelectableAliasTableCell;
  [(PSTableCell *)&v13 setChecked:checked];
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  isChecked = [(PSTableCell *)self isChecked];
  accessoryView = [(CNFRegSelectableAliasTableCell *)self accessoryView];
  v7 = accessoryView;
  if (isChecked)
  {
    [accessoryView setHidden:0];

    if ([(CNFRegSelectableAliasTableCell *)self isEnabled])
    {
      [v4 tableCellCheckmarkImage];
    }

    else
    {
      [v4 tableCellCheckmarkImageDisabled];
    }
    v7 = ;
    accessoryView2 = [(CNFRegSelectableAliasTableCell *)self accessoryView];
    [accessoryView2 setImage:v7];
  }

  else
  {
    [accessoryView setHidden:1];
  }

  if ([v4 styleUsesCustomTableStyle] && (objc_msgSend(v4, "tableCellTextLabelColor"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    tableCellTextLabelColor = [v4 tableCellTextLabelColor];
  }

  else
  {
    tableCellTextLabelColor = [MEMORY[0x277D75348] blackColor];
  }

  v11 = tableCellTextLabelColor;
  textLabel = [(CNFRegSelectableAliasTableCell *)self textLabel];
  [textLabel setTextColor:v11];
}

@end