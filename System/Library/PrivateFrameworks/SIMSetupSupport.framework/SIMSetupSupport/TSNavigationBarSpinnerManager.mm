@interface TSNavigationBarSpinnerManager
+ (id)sharedManager;
- (TSNavigationBarSpinnerManager)init;
- (void)startSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier;
- (void)stopSpinnerForIdentifier:(id)identifier;
- (void)stopSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier;
@end

@implementation TSNavigationBarSpinnerManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[TSNavigationBarSpinnerManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __46__TSNavigationBarSpinnerManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(TSNavigationBarSpinnerManager);

  return MEMORY[0x2821F96F8]();
}

- (TSNavigationBarSpinnerManager)init
{
  v7.receiver = self;
  v7.super_class = TSNavigationBarSpinnerManager;
  v2 = [(TSNavigationBarSpinnerManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSNavigationBarSpinnerManager *)v2 setNavigationItems:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSNavigationBarSpinnerManager *)v2 setPreviousLeftBarButtonItems:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSNavigationBarSpinnerManager *)v2 setPreviousRightBarButtonItems:v5];
  }

  return v2;
}

- (void)startSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier
{
  v19[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  navigationItems = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v9 = [navigationItems objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    navigationItems2 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    [navigationItems2 setObject:itemCopy forKeyedSubscript:identifierCopy];

    leftBarButtonItems = [itemCopy leftBarButtonItems];

    if (leftBarButtonItems)
    {
      previousLeftBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
      leftBarButtonItems2 = [itemCopy leftBarButtonItems];
      [previousLeftBarButtonItems setObject:leftBarButtonItems2 forKey:identifierCopy];
    }

    rightBarButtonItems = [itemCopy rightBarButtonItems];

    if (rightBarButtonItems)
    {
      previousRightBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
      rightBarButtonItems2 = [itemCopy rightBarButtonItems];
      [previousRightBarButtonItems setObject:rightBarButtonItems2 forKey:identifierCopy];
    }

    v17 = objc_alloc_init(TSSpinnerNavigationBarItem);
    v19[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [itemCopy setRightBarButtonItems:v18 animated:1];

    [itemCopy setLeftBarButtonItems:0 animated:1];
    [(TSSpinnerNavigationBarItem *)v17 startAnimating];
  }
}

- (void)stopSpinnerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  navigationItems = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v6 = [navigationItems objectForKeyedSubscript:identifierCopy];

  [(TSNavigationBarSpinnerManager *)self stopSpinnerInNavigationItem:v6 withIdentifier:identifierCopy];
}

- (void)stopSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  navigationItems = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v9 = [navigationItems objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    navigationItems2 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    v11 = [navigationItems2 objectForKeyedSubscript:identifierCopy];

    if (v11 != itemCopy)
    {
      v13 = _TSLogDomain(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        navigationItems3 = [(TSNavigationBarSpinnerManager *)self navigationItems];
        v28 = [navigationItems3 objectForKeyedSubscript:identifierCopy];
        v29 = 138413058;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = itemCopy;
        v33 = 2112;
        v34 = v28;
        v35 = 2080;
        v36 = "[TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:withIdentifier:]";
        _os_log_fault_impl(&dword_262AA8000, v13, OS_LOG_TYPE_FAULT, "[F](%@) stop untracked navigation item: %@, expect:%@ @%s", &v29, 0x2Au);
      }
    }

    rightBarButtonItems = [itemCopy rightBarButtonItems];
    lastObject = [rightBarButtonItems lastObject];

    v16 = objc_opt_respondsToSelector();
    if (v16)
    {
      [lastObject stopAnimating];
    }

    else
    {
      v17 = _TSLogDomain(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:lastObject withIdentifier:v17];
      }
    }

    previousLeftBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
    v19 = [previousLeftBarButtonItems objectForKeyedSubscript:identifierCopy];

    if (v19)
    {
      previousLeftBarButtonItems2 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
      v21 = [previousLeftBarButtonItems2 objectForKeyedSubscript:identifierCopy];
      [itemCopy setLeftBarButtonItems:v21 animated:1];
    }

    previousRightBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
    v23 = [previousRightBarButtonItems objectForKeyedSubscript:identifierCopy];
    [itemCopy setRightBarButtonItems:v23 animated:1];

    navigationItems4 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    [navigationItems4 removeObjectForKey:identifierCopy];

    previousLeftBarButtonItems3 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
    [previousLeftBarButtonItems3 removeObjectForKey:identifierCopy];

    previousRightBarButtonItems2 = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
    [previousRightBarButtonItems2 removeObjectForKey:identifierCopy];
  }
}

- (void)stopSpinnerInNavigationItem:(uint64_t)a1 withIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:withIdentifier:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpected bar item : %@ @%s", &v2, 0x16u);
}

@end