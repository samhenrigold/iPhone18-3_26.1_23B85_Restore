@interface RUINavBarSpinnerManager
+ (id)sharedSpinnerManager;
- (RUINavBarSpinnerManager)init;
- (void)startAnimatingInNavItem:(id)item title:(id)title forIdentifier:(id)identifier hideBackButton:(BOOL)button hideLeftItems:(BOOL)items;
- (void)stopAnimatingForIdentifier:(id)identifier;
@end

@implementation RUINavBarSpinnerManager

- (RUINavBarSpinnerManager)init
{
  v6.receiver = self;
  v6.super_class = RUINavBarSpinnerManager;
  v2 = [(RUINavBarSpinnerManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    savedRecords = v2->_savedRecords;
    v2->_savedRecords = v3;
  }

  return v2;
}

+ (id)sharedSpinnerManager
{
  v2 = sharedSpinnerManager___sharedManager;
  if (!sharedSpinnerManager___sharedManager)
  {
    v3 = objc_alloc_init(RUINavBarSpinnerManager);
    v4 = sharedSpinnerManager___sharedManager;
    sharedSpinnerManager___sharedManager = v3;

    if (+[RUIPlatform isAppleTV])
    {
      v5 = 19;
    }

    else
    {
      v5 = 100;
    }

    [sharedSpinnerManager___sharedManager setActivityIndicatorViewStyle:v5];
    v2 = sharedSpinnerManager___sharedManager;
  }

  return v2;
}

- (void)startAnimatingInNavItem:(id)item title:(id)title forIdentifier:(id)identifier hideBackButton:(BOOL)button hideLeftItems:(BOOL)items
{
  itemsCopy = items;
  buttonCopy = button;
  v47 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  titleCopy = title;
  identifierCopy = identifier;
  v15 = [(NSMutableDictionary *)self->_savedRecords objectForKey:identifierCopy];

  if (!v15)
  {
    v35 = buttonCopy;
    v36 = itemsCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = self->_savedRecords;
    v20 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
          navigationItem = [v24 navigationItem];

          if (navigationItem == itemCopy)
          {
            isInternalInstall = _isInternalInstall(v26, v27);
            if (isInternalInstall)
            {
              v34 = _RUILoggingFacility(isInternalInstall);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v43 = itemCopy;
                v44 = 2112;
                v45 = identifierCopy;
                _os_log_impl(&dword_21B93D000, v34, OS_LOG_TYPE_DEFAULT, "Adding a second spinner to navigation item %@, identifer %@", buf, 0x16u);
              }
            }

            goto LABEL_25;
          }
        }

        v21 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v19 = objc_opt_new();
    [(NSMutableDictionary *)v19 setNavigationItem:itemCopy];
    [(NSMutableDictionary *)self->_savedRecords setObject:v19 forKey:identifierCopy];
    rightBarButtonItems = [itemCopy rightBarButtonItems];
    [(NSMutableDictionary *)v19 setRightItems:rightBarButtonItems];

    leftBarButtonItems = [itemCopy leftBarButtonItems];
    [(NSMutableDictionary *)v19 setLeftItems:leftBarButtonItems];

    -[NSMutableDictionary setHidesBackButton:](v19, "setHidesBackButton:", [itemCopy hidesBackButton]);
    v30 = [[RUIBarButtonSpinnerView alloc] initWithActivityIndicatorStyle:[(RUINavBarSpinnerManager *)self activityIndicatorViewStyle]];
    [(UIBarButtonItem *)v30 noPlatter];
    if (v35)
    {
      [itemCopy setHidesBackButton:1 animated:1];
    }

    if (v36)
    {
      [itemCopy setLeftBarButtonItems:0 animated:1];
    }

    v41 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [itemCopy setRightBarButtonItems:v31 animated:1];

    if (titleCopy)
    {
      title = [itemCopy title];
      [(NSMutableDictionary *)v19 setTitle:title];

      [(NSMutableDictionary *)v19 setSpinningTitle:titleCopy];
      [itemCopy setTitle:titleCopy];
    }

    [MEMORY[0x277CD9FF0] begin];
    [(RUIBarButtonSpinnerView *)v30 startAnimating];
    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];

    goto LABEL_25;
  }

  v18 = _isInternalInstall(v16, v17);
  if (v18)
  {
    v19 = _RUILoggingFacility(v18);
    if (os_log_type_enabled(&v19->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = identifierCopy;
      _os_log_impl(&dword_21B93D000, &v19->super.super, OS_LOG_TYPE_DEFAULT, "Duplicate spinner for identifier %@", buf, 0xCu);
    }

LABEL_25:
  }
}

- (void)stopAnimatingForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_savedRecords objectForKey:identifierCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:identifierCopy];
    navigationItem = [v6 navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    lastObject = [rightBarButtonItems lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [lastObject stopAnimating];
      leftItems = [v6 leftItems];
      [navigationItem setLeftBarButtonItems:leftItems animated:1];

      rightItems = [v6 rightItems];
      [navigationItem setRightBarButtonItems:rightItems animated:1];

      [navigationItem setHidesBackButton:objc_msgSend(v6 animated:{"hidesBackButton"), 1}];
      spinningTitle = [v6 spinningTitle];

      if (spinningTitle)
      {
        title = [v6 title];
        [navigationItem setTitle:title];
LABEL_8:
      }
    }

    else
    {
      isInternalInstall = _isInternalInstall(isKindOfClass, v11);
      if (isInternalInstall)
      {
        title = _RUILoggingFacility(isInternalInstall);
        if (os_log_type_enabled(title, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = identifierCopy;
          _os_log_impl(&dword_21B93D000, title, OS_LOG_TYPE_DEFAULT, "Error: Tried to remove a spinner for identifier %@but it wasn't there.", &v17, 0xCu);
        }

        goto LABEL_8;
      }
    }

    [(NSMutableDictionary *)self->_savedRecords removeObjectForKey:identifierCopy];
  }
}

@end