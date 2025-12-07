@interface NPHCSAppCellularDataUsageCell
+ (id)cellForTableView:(id)view reuseIdentifier:(id)identifier appDataUsageItem:(id)item isCellularSetup:(BOOL)setup;
- (NPHCSAppCellularDataUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier appDataUsageItem:(id)item;
- (void)_cellularDataPolicySwitchFlipped:(id)flipped;
- (void)_setIcon;
- (void)prepareForReuse;
@end

@implementation NPHCSAppCellularDataUsageCell

- (NPHCSAppCellularDataUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier appDataUsageItem:(id)item
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = NPHCSAppCellularDataUsageCell;
  v9 = [(NPHCSAppCellularDataUsageCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    imageView = [(NPHCSAppCellularDataUsageCell *)v9 imageView];
    [imageView setImage:0];

    textLabel = [(NPHCSAppCellularDataUsageCell *)v10 textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [(NPHCSAppCellularDataUsageCell *)v10 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];

    [(NPHCSAppCellularDataUsageCell *)v10 setAppDataUsageItem:itemCopy];
    if (+[NPHSharedUtilities isActiveWatchChinaRegionCellular](NPHSharedUtilities, "isActiveWatchChinaRegionCellular") || (-[NPHCSAppCellularDataUsageCell appDataUsageItem](v10, "appDataUsageItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isForAnApp], v14, (v15 & 1) == 0))
    {
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessoryType:1];
    }

    else
    {
      v16 = objc_alloc_init(UISwitch);
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessorySwitch:v16];

      accessorySwitch = [(NPHCSAppCellularDataUsageCell *)v10 accessorySwitch];
      [accessorySwitch addTarget:v10 action:"_cellularDataPolicySwitchFlipped:" forControlEvents:4096];

      accessorySwitch2 = [(NPHCSAppCellularDataUsageCell *)v10 accessorySwitch];
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessoryView:accessorySwitch2];

      [(NPHCSAppCellularDataUsageCell *)v10 setSelectionStyle:0];
    }
  }

  return v10;
}

+ (id)cellForTableView:(id)view reuseIdentifier:(id)identifier appDataUsageItem:(id)item isCellularSetup:(BOOL)setup
{
  setupCopy = setup;
  identifierCopy = identifier;
  itemCopy = item;
  v11 = [view dequeueReusableCellWithIdentifier:identifierCopy];
  if (!v11)
  {
    v11 = [[NPHCSAppCellularDataUsageCell alloc] initWithStyle:3 reuseIdentifier:identifierCopy appDataUsageItem:itemCopy];
  }

  [(NPHCSAppCellularDataUsageCell *)v11 setAppDataUsageItem:itemCopy];
  hyphenatedDisplayName = [itemCopy hyphenatedDisplayName];
  textLabel = [(NPHCSAppCellularDataUsageCell *)v11 textLabel];
  [textLabel setAttributedText:hyphenatedDisplayName];

  isCellularDataEnabled = [itemCopy isCellularDataEnabled];
  accessorySwitch = [(NPHCSAppCellularDataUsageCell *)v11 accessorySwitch];
  [accessorySwitch setOn:isCellularDataEnabled];

  if (+[NPHSharedUtilities isActiveWatchChinaRegionCellular])
  {
    v16 = [itemCopy chinaSKUWirelessDataOptionForCellularSetup:setupCopy];
    detailTextLabel = [(NPHCSAppCellularDataUsageCell *)v11 detailTextLabel];
    [detailTextLabel setText:v16];

    usageDisplayString = [itemCopy usageDisplayString];
    v19 = [usageDisplayString length];

    if (!v19)
    {
      goto LABEL_8;
    }

    displayName = [itemCopy displayName];
    usageDisplayString2 = [itemCopy usageDisplayString];
    usageDisplayString4 = [NSString stringWithFormat:@"%@\n%@", displayName, usageDisplayString2];

    usageDisplayString3 = [itemCopy usageDisplayString];
    v24 = [usageDisplayString4 rangeOfString:usageDisplayString3];
    v26 = v25;

    detailTextLabel2 = [[NSMutableAttributedString alloc] initWithString:usageDisplayString4];
    v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [detailTextLabel2 addAttribute:NSFontAttributeName value:v28 range:{v24, v26}];

    v29 = [detailTextLabel2 copy];
    textLabel2 = [(NPHCSAppCellularDataUsageCell *)v11 textLabel];
    [textLabel2 setAttributedText:v29];
  }

  else
  {
    usageDisplayString4 = [itemCopy usageDisplayString];
    detailTextLabel2 = [(NPHCSAppCellularDataUsageCell *)v11 detailTextLabel];
    [detailTextLabel2 setText:usageDisplayString4];
  }

LABEL_8:
  if ([itemCopy isForAnApp])
  {
    accessoryView = [(NPHCSAppCellularDataUsageCell *)v11 accessoryView];
    [accessoryView setHidden:0];

    [(NPHCSAppCellularDataUsageCell *)v11 _setIcon];
    v32 = +[MCProfileConnection sharedConnection];
    v33 = [v32 effectiveBoolValueForSetting:MCFeatureAppCellularDataModificationAllowed];

    v34 = v33 != 2;
    if (v33 == 2)
    {
      v35 = 0.5;
    }

    else
    {
      v35 = 1.0;
    }

    [(NPHCSAppCellularDataUsageCell *)v11 setUserInteractionEnabled:v33 != 2];
    accessorySwitch2 = [(NPHCSAppCellularDataUsageCell *)v11 accessorySwitch];
    [accessorySwitch2 setEnabled:v34];
    detailTextLabel3 = [(NPHCSAppCellularDataUsageCell *)v11 detailTextLabel];
    [detailTextLabel3 setEnabled:v34];
    textLabel3 = [(NPHCSAppCellularDataUsageCell *)v11 textLabel];
    [textLabel3 setEnabled:v34];

    imageView = [(NPHCSAppCellularDataUsageCell *)v11 imageView];
    [imageView setAlpha:v35];
  }

  else
  {
    childObjects = [itemCopy childObjects];

    if (childObjects)
    {
      [(NPHCSAppCellularDataUsageCell *)v11 setAccessoryType:1];
      v41 = v11;
      v42 = 3;
    }

    else
    {
      [(NPHCSAppCellularDataUsageCell *)v11 setAccessoryType:0];
      v41 = v11;
      v42 = 0;
    }

    [(NPHCSAppCellularDataUsageCell *)v41 setSelectionStyle:v42];
  }

  return v11;
}

- (void)_setIcon
{
  objc_initWeak(&location, self);
  appDataUsageItem = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
  isForAnApp = [appDataUsageItem isForAnApp];

  if (isForAnApp)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_37A4;
    v19[3] = &unk_1C628;
    objc_copyWeak(&v20, &location);
    v5 = objc_retainBlock(v19);
    v18 = 0;
    v6 = +[UIScreen mainScreen];
    traitCollection = [v6 traitCollection];
    [traitCollection displayScale];
    if (v8 <= 2.0)
    {
      v9 = 47;
    }

    else
    {
      v9 = 48;
    }

    v10 = +[NanoResourceGrabber sharedInstance];
    appDataUsageItem2 = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
    bundleID = [appDataUsageItem2 bundleID];
    [v10 getCachedIconForBundleID:bundleID iconVariant:v9 outIconImage:&v18 updateBlock:v5];

    if (v18)
    {
      imageView = [(NPHCSAppCellularDataUsageCell *)self imageView];
      [imageView setImage:v18];
    }

    else
    {
      imageView2 = [(NPHCSAppCellularDataUsageCell *)self imageView];
      v15 = PSBlankIconImage();
      [imageView2 setImage:v15];

      imageView = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
      bundleID2 = [imageView bundleID];
      v17 = dispatch_get_global_queue(0, 0);
      [v10 getIconForBundleID:bundleID2 iconVariant:v9 queue:v17 block:v5 timeout:10.0];
    }

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (void)_cellularDataPolicySwitchFlipped:(id)flipped
{
  v4 = nph_general_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHCSAppCellularDataUsageCell _cellularDataPolicySwitchFlipped:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  accessorySwitch = [(NPHCSAppCellularDataUsageCell *)self accessorySwitch];
  isOn = [accessorySwitch isOn];

  appDataUsageItem = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
  [appDataUsageItem setUsagePoliciesForCellular:isOn];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NPHCSAppCellularDataUsageCell;
  [(NPHCSAppCellularDataUsageCell *)&v4 prepareForReuse];
  [(NPHCSAppCellularDataUsageCell *)self setAppDataUsageItem:0];
  imageView = [(NPHCSAppCellularDataUsageCell *)self imageView];
  [imageView setImage:0];
}

@end