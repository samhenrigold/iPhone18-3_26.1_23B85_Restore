@interface MSDContactsViewController
- (MSDContactsViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation MSDContactsViewController

- (MSDContactsViewController)init
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = MSDContactsViewController;
  v2 = [(MSDContactsViewController *)&v19 init];
  if (v2)
  {
    v3 = +[MSDStoreContactsModel sharedInstance];
    [(MSDContactsViewController *)v2 setContactsModel:v3];

    v4 = objc_opt_new();
    [(MSDContactsViewController *)v2 setRegions:v4];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    contactsModel = [(MSDContactsViewController *)v2 contactsModel];
    regionToCountryCode = [contactsModel regionToCountryCode];

    v7 = [regionToCountryCode countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(regionToCountryCode);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          regions = [(MSDContactsViewController *)v2 regions];
          [regions addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [regionToCountryCode countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [MSDSetupUILocalization localizedStringForKey:@"CONTACT_NUMBER_HEADER"];
    [(MSDContactsViewController *)v2 setTitle:v13];
  }

  return v2;
}

- (void)viewDidLoad
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = MSDContactsViewController;
  [(MSDContactsViewController *)&v27 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setDataSource:self];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(MSDContactsViewController *)self view];
  [view addSubview:v4];

  topAnchor = [v4 topAnchor];
  view2 = [(MSDContactsViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v22;
  bottomAnchor = [v4 bottomAnchor];
  view3 = [(MSDContactsViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[1] = v17;
  leftAnchor = [v4 leftAnchor];
  view4 = [(MSDContactsViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v28[2] = v9;
  rightAnchor = [v4 rightAnchor];
  view5 = [(MSDContactsViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v28[3] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ContactsViewTableCell"];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  regions = [(MSDContactsViewController *)self regions];
  v4 = [regions count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  regions = [(MSDContactsViewController *)self regions];
  v7 = [regions count];

  if (v7 <= section)
  {
    return 0;
  }

  regions2 = [(MSDContactsViewController *)self regions];
  v9 = [regions2 objectAtIndex:section];

  contactsModel = [(MSDContactsViewController *)self contactsModel];
  regionToCountryCode = [contactsModel regionToCountryCode];
  v12 = [regionToCountryCode objectForKey:v9];

  v13 = [v12 count];
  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  regions = [(MSDContactsViewController *)self regions];
  v8 = [regions count];

  if (section >= v8)
  {
    v20 = 0;
  }

  else
  {
    regions2 = [(MSDContactsViewController *)self regions];
    v10 = [regions2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    contactsModel = [(MSDContactsViewController *)self contactsModel];
    regionToCountryCode = [contactsModel regionToCountryCode];
    v13 = [regionToCountryCode objectForKey:v10];

    v14 = [pathCopy row];
    if (v14 >= [v13 count])
    {
      v20 = 0;
    }

    else
    {
      v15 = [v13 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      contactsModel2 = [(MSDContactsViewController *)self contactsModel];
      v17 = [contactsModel2 contactNumberForCountryCode:v15];

      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v19 = [currentLocale localizedStringForCountryCode:v15];

      v20 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ContactsViewTableCell"];
      defaultContentConfiguration = [v20 defaultContentConfiguration];
      [defaultContentConfiguration setText:v19];
      [defaultContentConfiguration setSecondaryText:v17];
      [v20 setContentConfiguration:defaultContentConfiguration];
    }
  }

  return v20;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  regions = [(MSDContactsViewController *)self regions];
  v7 = [regions count];

  if (v7 <= section)
  {
    v9 = 0;
  }

  else
  {
    regions2 = [(MSDContactsViewController *)self regions];
    v9 = [regions2 objectAtIndex:section];
  }

  return v9;
}

@end