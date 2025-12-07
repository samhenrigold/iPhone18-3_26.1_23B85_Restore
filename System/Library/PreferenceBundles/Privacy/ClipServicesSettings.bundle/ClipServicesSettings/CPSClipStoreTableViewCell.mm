@interface CPSClipStoreTableViewCell
+ (id)specifierForBundleIdentifier:(id)identifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CPSClipStoreTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)preferredImageDescriptor;
- (void)createLockupViewWithSpecifier:(id)specifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CPSClipStoreTableViewCell

+ (id)specifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_14F50 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  if (![identifierCopy length])
  {
    v6 = sub_59B0(0, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_9FEC(v6);
    }
  }

  [v4 cps_setBundleIdentifier:identifierCopy];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 cps_isTestFlight];
  v7 = _CPSLocalizedString();
  [v4 setProperty:v7 forKey:PSTitleKey];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v4;
}

- (CPSClipStoreTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CPSClipStoreTableViewCell;
  v4 = [(CPSClipStoreTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CPSClipStoreTableViewCell *)v4 setSelectionStyle:0];
    v6 = v5;
  }

  return v5;
}

- (id)preferredImageDescriptor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = qword_1A060;
  v13 = qword_1A060;
  if (!qword_1A060)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4068;
    v9[3] = &unk_148E8;
    v9[4] = &v10;
    sub_4068(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 alloc];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = [v4 initWithSize:62.0 scale:{62.0, v6}];

  [v7 setShape:1];

  return v7;
}

- (void)createLockupViewWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  lockupView = self->_lockupView;
  if (lockupView)
  {
    [(ASCLockupView *)lockupView removeFromSuperview];
    v6 = self->_lockupView;
    self->_lockupView = 0;
  }

  cps_bundleIdentifier = [specifierCopy cps_bundleIdentifier];
  cps_storeItemIdentifier = [specifierCopy cps_storeItemIdentifier];
  v9 = [[ASCAdamID alloc] initWithInt64:cps_storeItemIdentifier];
  v10 = [[ASCLockupView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v11 = self->_lockupView;
  self->_lockupView = v10;

  [(ASCLockupView *)self->_lockupView setSize:ASCLockupViewSizeSmall];
  cps_isTestFlight = [specifierCopy cps_isTestFlight];
  v14 = cps_isTestFlight;
  if ((cps_isTestFlight & 1) == 0 && !cps_storeItemIdentifier)
  {
    v15 = sub_59B0(cps_isTestFlight, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_A030(cps_bundleIdentifier, v15);
    }
  }

  v16 = self->_lockupView;
  if (v14)
  {
    [(ASCLockupView *)v16 setUserInteractionEnabled:0];
    preferredImageDescriptor = [(CPSClipStoreTableViewCell *)self preferredImageDescriptor];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_3D24;
    v21[3] = &unk_148C0;
    v21[4] = self;
    v22 = v9;
    v23 = specifierCopy;
    [CPSAppClipRecord getApplicationIconForBundleIdentifier:cps_bundleIdentifier imageDescriptor:preferredImageDescriptor resultHandler:v21];
  }

  else
  {
    [(ASCLockupView *)v16 setUserInteractionEnabled:1];
    v18 = [ASCLockupRequest alloc];
    v19 = [v18 initWithID:v9 kind:ASCLockupKindApp context:ASCLockupContextStandard];
    [(ASCLockupView *)self->_lockupView setRequest:v19];
  }

  contentView = [(CPSClipStoreTableViewCell *)self contentView];
  [contentView addSubview:self->_lockupView];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CPSClipStoreTableViewCell;
  [(CPSClipStoreTableViewCell *)&v16 layoutSubviews];
  [(CPSClipStoreTableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  v12 = v11;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v13 = CGRectGetWidth(v17) - v12;
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  v15 = v13 - v14;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  [(ASCLockupView *)self->_lockupView setFrame:v12, 15.0, v15, CGRectGetHeight(v18) + -30.0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  lockupView = self->_lockupView;
  [(CPSClipStoreTableViewCell *)self bounds:fits.width];
  Width = CGRectGetWidth(v13);
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  v7 = Width - v6;
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  [(ASCLockupView *)lockupView sizeThatFits:v7 - v8, 1.79769313e308];
  v11 = v10 + 30.0;
  result.height = v11;
  result.width = v9;
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = CPSClipStoreTableViewCell;
  [(CPSClipStoreTableViewCell *)&v10 refreshCellContentsWithSpecifier:specifierCopy];
  cps_bundleIdentifier = [specifierCopy cps_bundleIdentifier];
  v6 = [cps_bundleIdentifier length];

  if (!v6)
  {
    v9 = sub_59B0(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_A0A8(v9);
    }
  }

  [(CPSClipStoreTableViewCell *)self createLockupViewWithSpecifier:specifierCopy];
}

@end