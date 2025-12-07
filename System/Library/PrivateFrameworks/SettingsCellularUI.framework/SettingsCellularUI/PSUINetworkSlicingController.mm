@interface PSUINetworkSlicingController
- (PSUINetworkSlicingController)init;
- (PSUINetworkSlicingController)initWithCapabilityCache:(id)cache;
- (id)getNetworkSlicingAppCategory:(id)category;
- (id)specifiers;
- (void)_enableNetworkSlicing:(BOOL)slicing categoryID:(id)d;
- (void)setNetworkSlicingAppCategory:(id)category specifier:(id)specifier;
@end

@implementation PSUINetworkSlicingController

- (PSUINetworkSlicingController)init
{
  v3 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v4 = [(PSUINetworkSlicingController *)self initWithCapabilityCache:v3];

  return v4;
}

- (PSUINetworkSlicingController)initWithCapabilityCache:(id)cache
{
  cacheCopy = cache;
  v10.receiver = self;
  v10.super_class = PSUINetworkSlicingController;
  v6 = [(PSUINetworkSlicingController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capabilityCache, cache);
    fCategories = v7->_fCategories;
    v7->_fCategories = 0;
  }

  return v7;
}

- (id)specifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v31 = *MEMORY[0x277D3FC48];
    v4 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D40128]];
    getLogger = [(PSUINetworkSlicingController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v42 = v4;
      _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Slicing: reload, context=%@", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NetworkSlicingGroupSpecifierKey"];
    v34 = v33 = v6;
    [v6 addObject:v34];
    v7 = [(PSUICoreTelephonyCapabilitiesCache *)self->_capabilityCache networkSlicingCategories:v4];
    [(PSUINetworkSlicingController *)self setFCategories:v7];

    getLogger2 = [(PSUINetworkSlicingController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
    {
      fCategories = [(PSUINetworkSlicingController *)self fCategories];
      *buf = 138412546;
      v42 = v4;
      v43 = 2112;
      v44 = fCategories;
      _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "Slicing: reload, context=%@, categories:%@", buf, 0x16u);
    }

    v30 = v4;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    selfCopy = self;
    obj = [(PSUINetworkSlicingController *)self fCategories];
    v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v12 = *MEMORY[0x277CC3B38];
      v13 = *MEMORY[0x277CC3B30];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = MEMORY[0x277D3FAD8];
          v17 = [v15 objectForKey:v12];
          v18 = [v16 preferenceSpecifierNamed:v17 target:selfCopy set:sel_setNetworkSlicingAppCategory_specifier_ get:sel_getNetworkSlicingAppCategory_ detail:0 cell:6 edit:0];

          v19 = [v15 objectForKey:v13];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
          [v18 setIdentifier:v20];

          [v18 setUserInfo:v19];
          [v33 ps_addSpecifier:v18 toGroup:v34];
        }

        v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v10);
    }

    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"CONSUMER_SLICING_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
    v24 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    v25 = [v24 carrierName:v30];
    v26 = [v21 stringWithFormat:v23, v25];

    [v34 setProperty:v26 forKey:*MEMORY[0x277D3FF88]];
    [MEMORY[0x277D4D878] logSpecifiers:v33 origin:@"[PSUINetworkSlicingController specifiers] end"];
    v27 = *(&selfCopy->super.super.super.super.super.isa + v31);
    *(&selfCopy->super.super.super.super.super.isa + v31) = v33;

    v3 = *(&selfCopy->super.super.super.super.super.isa + v31);
  }

  return v3;
}

- (id)getNetworkSlicingAppCategory:(id)category
{
  v29 = *MEMORY[0x277D85DE8];
  userInfo = [category userInfo];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  fCategories = [(PSUINetworkSlicingController *)self fCategories];
  v6 = [fCategories countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = *MEMORY[0x277CC3B30];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(fCategories);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKey:v9];
        if ([v12 isEqual:userInfo])
        {
          v14 = [v11 objectForKey:*MEMORY[0x277CC3B40]];
          bOOLValue = [v14 BOOLValue];

          goto LABEL_11;
        }
      }

      v7 = [fCategories countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  bOOLValue = 0;
LABEL_11:

  getLogger = [(PSUINetworkSlicingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v23 = "[PSUINetworkSlicingController getNetworkSlicingAppCategory:]";
    v24 = 2112;
    v25 = userInfo;
    v26 = 1024;
    v27 = bOOLValue;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Slicing: %s category=%@ STATE=%d", buf, 0x1Cu);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];

  return v16;
}

- (void)setNetworkSlicingAppCategory:(id)category specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  bOOLValue = [category BOOLValue];
  getLogger = [(PSUINetworkSlicingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    userInfo = [specifierCopy userInfo];
    v13 = userInfo;
    v14 = @"disabled";
    v16 = "[PSUINetworkSlicingController setNetworkSlicingAppCategory:specifier:]";
    v15 = 136315650;
    if (bOOLValue)
    {
      v14 = @"enabled";
    }

    v17 = 2112;
    v18 = userInfo;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Slicing: %s category=%@ ->%@", &v15, 0x20u);
  }

  v9 = [(PSUINetworkSlicingController *)self getNetworkSlicingAppCategory:specifierCopy];
  bOOLValue2 = [v9 BOOLValue];

  if (bOOLValue == bOOLValue2)
  {
    [(PSUINetworkSlicingController *)self reloadSpecifiers];
    getLogger2 = [(PSUINetworkSlicingController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "Slicing: skipped", &v15, 2u);
    }
  }

  else
  {
    getLogger2 = [specifierCopy userInfo];
    [(PSUINetworkSlicingController *)self _enableNetworkSlicing:bOOLValue categoryID:getLogger2];
  }
}

- (void)_enableNetworkSlicing:(BOOL)slicing categoryID:(id)d
{
  slicingCopy = slicing;
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D40128]];
  fCategories = [(PSUINetworkSlicingController *)self fCategories];
  v9 = [fCategories mutableCopy];

  if ([v9 count])
  {
    v10 = 0;
    v11 = *MEMORY[0x277CC3B30];
    while (1)
    {
      v12 = [v9 objectAtIndex:v10];
      v13 = [v12 objectForKey:v11];
      if ([v13 isEqual:dCopy])
      {
        break;
      }

      if (++v10 >= [v9 count])
      {
        goto LABEL_7;
      }
    }

    v14 = [v12 mutableCopy];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:slicingCopy];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CC3B40]];

    [v9 replaceObjectAtIndex:v10 withObject:v14];
  }

LABEL_7:
  [(PSUINetworkSlicingController *)self setFCategories:v9];
  getLogger = [(PSUINetworkSlicingController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    fCategories2 = [(PSUINetworkSlicingController *)self fCategories];
    v20 = 136315650;
    v21 = "[PSUINetworkSlicingController _enableNetworkSlicing:categoryID:]";
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = fCategories2;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "Slicing: %s context=%@, UDPATE=%@", &v20, 0x20u);
  }

  capabilityCache = self->_capabilityCache;
  fCategories3 = [(PSUINetworkSlicingController *)self fCategories];
  [(PSUICoreTelephonyCapabilitiesCache *)capabilityCache setNetworkSlicingCategories:fCategories3 forContext:v7];

  [(PSUICoreTelephonyCapabilitiesCache *)self->_capabilityCache setNetworkSlicing:v7 enabled:slicingCopy category:dCopy];
  [(PSUINetworkSlicingController *)self reloadSpecifiers];
}

@end