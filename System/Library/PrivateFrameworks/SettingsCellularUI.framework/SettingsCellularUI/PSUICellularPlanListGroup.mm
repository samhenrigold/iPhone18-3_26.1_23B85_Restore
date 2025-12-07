@interface PSUICellularPlanListGroup
- (PSUICellularPlanListGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUICellularPlanListGroup)initWithListController:(id)controller groupSpecifier:(id)specifier isPrivateNetworkPlansList:(BOOL)list;
- (id)danglingPlanSpecifierDetailText:(id)text;
- (id)planSpecifierDetailText:(id)text;
- (id)specifiers;
- (void)danglingPlanPressed:(id)pressed;
@end

@implementation PSUICellularPlanListGroup

- (PSUICellularPlanListGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = PSUICellularPlanListGroup;
  v6 = [(PSUICellularPlanListGroup *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
    [specifierCopy setName:v8];
  }

  return v6;
}

- (PSUICellularPlanListGroup)initWithListController:(id)controller groupSpecifier:(id)specifier isPrivateNetworkPlansList:(BOOL)list
{
  listCopy = list;
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = PSUICellularPlanListGroup;
  v8 = [(PSUICellularPlanListGroup *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (listCopy)
    {
      v11 = [v9 localizedStringForKey:@"NON_PUBLIC_NETWORK_PLANS" value:&stru_287733598 table:@"Cellular"];
      [specifierCopy setName:v11];

      v8->_isPrivateNetworkPlansList = 1;
    }

    else
    {
      v12 = [v9 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
      [specifierCopy setName:v12];
    }
  }

  return v8;
}

- (id)specifiers
{
  v78 = *MEMORY[0x277D85DE8];
  v59 = objc_opt_new();
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  planItems = [v3 planItems];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = planItems;
  v5 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v70;
    v56 = *MEMORY[0x277D3FE58];
    v52 = *MEMORY[0x277D40128];
    v54 = *MEMORY[0x277D3FE70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v70 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v69 + 1) + 8 * i);
        if ([v9 settingsMode] && objc_msgSend(v9, "settingsMode") != 1)
        {
          if ([v9 settingsMode] == 2)
          {
            if (self->_isPrivateNetworkPlansList)
            {
              continue;
            }
          }

          else
          {
            getLogger = [(PSUICellularPlanListGroup *)self getLogger];
            if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v76 = "[PSUICellularPlanListGroup specifiers]";
              _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "%s unexpected settings mode", buf, 0xCu);
            }
          }
        }

        else if (!self->_isPrivateNetworkPlansList)
        {
          continue;
        }

        getLogger2 = [(PSUICellularPlanListGroup *)self getLogger];
        if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v76 = v9;
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "planItem: %@", buf, 0xCu);
        }

        plan = [v9 plan];
        subscriptionStatusOverride = [plan subscriptionStatusOverride];
        v14 = [subscriptionStatusOverride isEqualToNumber:&unk_287749218];

        if (v14)
        {
          v15 = MEMORY[0x277D3FAD8];
          name = [v9 name];
          v17 = [v15 preferenceSpecifierNamed:name target:self set:0 get:sel_planSpecifierDetailText_ detail:0 cell:16 edit:0];
        }

        else if ([v9 isInstalling])
        {
          v18 = MEMORY[0x277D3FAD8];
          name2 = [v9 name];
          v17 = [v18 preferenceSpecifierNamed:name2 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:3 edit:0];
        }

        else if ([v9 transferredStatus] == 4)
        {
          v20 = MEMORY[0x277D3FAD8];
          name3 = [v9 name];
          v17 = [v20 preferenceSpecifierNamed:name3 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:2 edit:0];

          [v9 isSelected];
        }

        else
        {
          transferredStatus = [v9 transferredStatus];
          v23 = MEMORY[0x277D3FAD8];
          name4 = [v9 name];
          v17 = [v23 preferenceSpecifierNamed:name4 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:2 edit:0];

          if (!transferredStatus)
          {
            [v9 isSelected];
          }
        }

        [v17 setProperty:objc_opt_class() forKey:v56];
        v25 = [PSUICellularPlanUniversalReference referenceFromPlanItem:v9];
        [v17 setProperty:v25 forKey:v54];

        v26 = +[PSUICellularPlanManagerCache sharedInstance];
        v27 = [v26 subscriptionContextForPlanItem:v9 cachedSubscriptionContexts:0];
        [v17 setProperty:v27 forKey:v52];

        [v59 addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v6);
  }

  v28 = +[PSUICellularPlanManagerCache sharedInstance];
  danglingPlanItems = [v28 danglingPlanItems];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = danglingPlanItems;
  v30 = [v57 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v30)
  {
    goto LABEL_43;
  }

  v31 = v30;
  v32 = *v66;
  v33 = *MEMORY[0x277D3FE58];
  v34 = *MEMORY[0x277D3FE70];
  do
  {
    for (j = 0; j != v31; ++j)
    {
      if (*v66 != v32)
      {
        objc_enumerationMutation(v57);
      }

      v36 = *(*(&v65 + 1) + 8 * j);
      if (self->_isPrivateNetworkPlansList)
      {
        if (![*(*(&v65 + 1) + 8 * j) isPrivateNetworkSim])
        {
          continue;
        }

        if (self->_isPrivateNetworkPlansList)
        {
          goto LABEL_59;
        }
      }

      if (([v36 isPrivateNetworkSim] & 1) == 0)
      {
LABEL_59:
        if (!obj || (v64[0] = MEMORY[0x277D85DD0], v64[1] = 3221225472, v64[2] = __39__PSUICellularPlanListGroup_specifiers__block_invoke, v64[3] = &unk_279BAAD60, v64[4] = v36, [obj indexOfObjectPassingTest:v64] == 0x7FFFFFFFFFFFFFFFLL))
        {
          v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:sel_danglingPlanSpecifierDetailText_ detail:0 cell:3 edit:0];
          [v37 setProperty:objc_opt_class() forKey:v33];
          v38 = [PSUICellularPlanUniversalReference referenceFromDanglingPlanItem:v36];
          [v37 setProperty:v38 forKey:v34];

          [v37 setButtonAction:sel_danglingPlanPressed_];
          [v59 addObject:v37];
        }
      }
    }

    v31 = [v57 countByEnumeratingWithState:&v65 objects:v74 count:16];
  }

  while (v31);
LABEL_43:

  if (!self->_isPrivateNetworkPlansList)
  {
    v39 = +[PSUICellularPlanManagerCache sharedInstance];
    plansPendingTransfer = [v39 plansPendingTransfer];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v55 = plansPendingTransfer;
    v41 = [v55 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v61;
      v53 = *MEMORY[0x277D3FE58];
      v44 = *MEMORY[0x277D3FE70];
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v61 != v43)
          {
            objc_enumerationMutation(v55);
          }

          v46 = *(*(&v60 + 1) + 8 * k);
          v47 = MEMORY[0x277D3FAD8];
          carrierName = [v46 carrierName];
          v49 = [v47 preferenceSpecifierNamed:carrierName target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          if ([v46 status] <= 3)
          {
            [v49 setProperty:objc_opt_class() forKey:v53];
          }

          v50 = [PSUICellularPlanUniversalReference referenceFromCellularPlanPendingTransfer:v46];
          [v49 setProperty:v50 forKey:v44];

          [v59 addObject:v49];
        }

        v42 = [v55 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v42);
    }
  }

  return v59;
}

uint64_t __39__PSUICellularPlanListGroup_specifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 userLabel];
  v8 = [v6 userLabel];

  v9 = [v7 isEqual:v8];
  if (v9)
  {
    *a4 = 1;
  }

  return v9;
}

- (id)planSpecifierDetailText:(id)text
{
  v3 = [text propertyForKey:*MEMORY[0x277D3FE70]];
  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  v5 = [v4 planFromReferenceSafe:v3];

  if (![v5 transferredStatus])
  {
    plan = [v5 plan];
    if ([plan status] == 14)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      sf_isiPhone = [currentDevice sf_isiPhone];

      if (sf_isiPhone)
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = v9;
        v11 = @"ACTIVATING";
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (![v5 transferredStatus])
  {
    isSelected = [v5 isSelected];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (isSelected)
    {
      v11 = @"ON_SINGLE_CELLULAR_PLAN";
    }

    else
    {
      v11 = @"OFF_SINGLE_CELLULAR_PLAN";
    }

    v14 = @"Cellular";
    goto LABEL_16;
  }

  if (![v5 isCheckingCellularConnectivity] || (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "sf_isiPhone"), v12, !v13))
  {
    v15 = 0;
    goto LABEL_17;
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  v11 = @"CHECKING";
LABEL_10:
  v14 = @"Gemini-Gemini";
LABEL_16:
  v15 = [v9 localizedStringForKey:v11 value:&stru_287733598 table:v14];

LABEL_17:

  return v15;
}

- (id)danglingPlanSpecifierDetailText:(id)text
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NO_SIM" value:&stru_287733598 table:@"Cellular"];

  return v4;
}

- (void)danglingPlanPressed:(id)pressed
{
  v6 = [pressed propertyForKey:*MEMORY[0x277D3FE70]];
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 danglingPlanFromReference:v6];

  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  [v5 didSelectDanglingPlan:v4];
}

@end