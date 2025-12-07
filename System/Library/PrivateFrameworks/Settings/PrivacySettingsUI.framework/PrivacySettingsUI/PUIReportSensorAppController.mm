@interface PUIReportSensorAppController
- (PUIReportSensorAppController)init;
- (id)specifiers;
@end

@implementation PUIReportSensorAppController

- (PUIReportSensorAppController)init
{
  v5.receiver = self;
  v5.super_class = PUIReportSensorAppController;
  v2 = [(PUIReportSensorAppController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_dataDidChange name:@"PUIReportSensorManagerDataHasChangedNotification" object:0];
  }

  return v2;
}

- (id)specifiers
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v48 = *MEMORY[0x277D3FC48];
    v57 = objc_opt_new();
    v4 = objc_opt_new();
    bundleID = [(PUIReportSensorAppController *)self bundleID];

    if (!bundleID)
    {
      specifier = [(PUIReportSensorAppController *)self specifier];
      v7 = [specifier objectForKeyedSubscript:@"PUIReportAppIDKey"];
      [(PUIReportSensorAppController *)self setBundleID:v7];

      specifier2 = [(PUIReportSensorAppController *)self specifier];
      v9 = [specifier2 objectForKeyedSubscript:@"PUIReportSensorManagerKey"];
      [(PUIReportSensorAppController *)self setManager:v9];
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    bundleID2 = [(PUIReportSensorAppController *)self bundleID];
    PUIAnalyticsLogView(v11, bundleID2, 0);

    manager = [(PUIReportSensorAppController *)self manager];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __42__PUIReportSensorAppController_specifiers__block_invoke;
    v64[3] = &unk_279BA21E0;
    v64[4] = self;
    v14 = [manager eventsFiltered:v64];

    manager2 = [(PUIReportSensorAppController *)self manager];
    v46 = v14;
    v16 = [manager2 categoriesAndLatestDatesFromEvents:v14];

    v17 = MEMORY[0x277D3FAD8];
    v18 = PUI_LocalizedStringForAppReport(@"PAST_7_DAYS");
    v19 = [v17 groupSpecifierWithID:@"CATEGORIES" name:v18];

    v47 = v4;
    v45 = v19;
    [v4 addObject:v19];
    v55 = objc_opt_new();
    v56 = v16;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [v16 allKeys];
    v20 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v54 = *v61;
      v52 = *MEMORY[0x277D3FFD8];
      v53 = *MEMORY[0x277D40020];
      v50 = *MEMORY[0x277D40008];
      v49 = *MEMORY[0x277D3FFC0];
      v22 = *MEMORY[0x277D401A8];
      do
      {
        v23 = 0;
        do
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v60 + 1) + 8 * v23);
          v25 = MEMORY[0x277D3FAD8];
          v26 = [PUIReportSensorManager localizedStringForCategory:v24];
          v27 = [v25 preferenceSpecifierNamed:v26 target:self set:0 get:sel_valueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

          [v27 setIdentifier:v24];
          manager3 = [(PUIReportSensorAppController *)self manager];
          [v27 setObject:manager3 forKeyedSubscript:@"PUIReportSensorManagerKey"];

          bundleID3 = [(PUIReportSensorAppController *)self bundleID];
          [v27 setObject:bundleID3 forKeyedSubscript:@"PUIReportAppIDKey"];

          v30 = [PUIReportSensorManager iconTypeIdentifierForCategory:v24];

          if (v30)
          {
            v31 = [PUIReportSensorManager iconTypeIdentifierForCategory:v24];
            v32 = v27;
            v33 = v31;
            v34 = v52;
LABEL_13:
            [v32 setObject:v33 forKeyedSubscript:v34];

            [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v53];
            goto LABEL_14;
          }

          v35 = [PUIReportSensorManager applicationBundleIdentifierForCategory:v24];

          if (v35)
          {
            v31 = [PUIReportSensorManager applicationBundleIdentifierForCategory:v24];
            v32 = v27;
            v33 = v31;
            v34 = v50;
            goto LABEL_13;
          }

          v39 = [PUIReportSensorManager iconForCategory:v24];
          [v27 setObject:v39 forKeyedSubscript:v49];

LABEL_14:
          v36 = [v56 objectForKeyedSubscript:v24];
          v37 = [MEMORY[0x277CBEAA8] now];
          v38 = [v57 localizedStringForDate:v36 relativeToDate:v37];
          [v27 setObject:v38 forKeyedSubscript:v22];

          [v55 addObject:v27];
          ++v23;
        }

        while (v21 != v23);
        v40 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        v21 = v40;
      }

      while (v40);
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __42__PUIReportSensorAppController_specifiers__block_invoke_2;
    v58[3] = &unk_279BA2208;
    v59 = v56;
    v41 = v56;
    [v55 sortUsingComparator:v58];
    [v47 addObjectsFromArray:v55];
    v42 = *(&self->super.super.super.super.super.isa + v48);
    *(&self->super.super.super.super.super.isa + v48) = v47;
    v43 = v47;

    v3 = *(&self->super.super.super.super.super.isa + v48);
  }

  return v3;
}

uint64_t __42__PUIReportSensorAppController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 access];
  v4 = [v3 accessor];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) bundleID];
  v7 = [v5 isEqual:v6];

  return v7;
}

uint64_t __42__PUIReportSensorAppController_specifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 compare:v11];

  return v12;
}

@end