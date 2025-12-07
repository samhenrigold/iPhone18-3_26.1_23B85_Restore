@interface PSUICellularPlanLabelSpecifier
- (PSUICellularPlanLabelSpecifier)initWithPlanUniversalReference:(id)reference planManagerCache:(id)cache;
- (id)cellularPlanLabel:(id)label;
- (void)updateValuesAndTitles;
@end

@implementation PSUICellularPlanLabelSpecifier

- (PSUICellularPlanLabelSpecifier)initWithPlanUniversalReference:(id)reference planManagerCache:(id)cache
{
  referenceCopy = reference;
  cacheCopy = cache;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CELLULAR_PLAN_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v11 = objc_opt_class();
  v14.receiver = self;
  v14.super_class = PSUICellularPlanLabelSpecifier;
  v12 = [(PSUICellularPlanLabelSpecifier *)&v14 initWithName:v10 target:self set:0 get:sel_cellularPlanLabel_ detail:v11 cell:2 edit:0];

  if (v12)
  {
    objc_storeStrong(&v12->_planReference, reference);
    objc_storeStrong(&v12->_planManagerCache, cache);
    [(PSUICellularPlanLabelSpecifier *)v12 setProperty:v12->_planReference forKey:*MEMORY[0x277D3FE70]];
    [(PSUICellularPlanLabelSpecifier *)v12 updateValuesAndTitles];
  }

  return v12;
}

- (void)updateValuesAndTitles
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  v4 = MEMORY[0x277CBEB18];
  predefinedLabels = [(PSUICellularPlanManagerCache *)self->_planManagerCache predefinedLabels];
  v6 = [v4 arrayWithArray:predefinedLabels];

  userLabel = [v3 userLabel];
  if (userLabel)
  {
    v8 = userLabel;
    userLabel2 = [v3 userLabel];
    v10 = [v6 containsObject:userLabel2];

    if ((v10 & 1) == 0)
    {
      userLabel3 = [v3 userLabel];
      [v6 addObject:userLabel3];
    }
  }

  v12 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        label = [*(*(&v21 + 1) + 8 * i) label];
        [v12 addObject:label];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  getLogger = [(PSUICellularPlanLabelSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v13;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "updating values and titles: %@ %@", buf, 0x16u);
  }

  [(PSUICellularPlanLabelSpecifier *)self setValues:v13 titles:v12 shortTitles:v12];
  if ([v3 transferredStatus] == 4)
  {
    v20 = MEMORY[0x277CBEC28];
  }

  else
  {
    v20 = MEMORY[0x277CBEC38];
  }

  [(PSUICellularPlanLabelSpecifier *)self setProperty:v20 forKey:*MEMORY[0x277D3FF38], v21];
}

- (id)cellularPlanLabel:(id)label
{
  v13 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanLabelSpecifier *)self updateValuesAndTitles];
  v4 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  getLogger = [(PSUICellularPlanLabelSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    userLabel = [v4 userLabel];
    v9 = 138412546;
    v10 = userLabel;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "displaying user label %@ for plan item %@", &v9, 0x16u);
  }

  userLabel2 = [v4 userLabel];

  return userLabel2;
}

@end