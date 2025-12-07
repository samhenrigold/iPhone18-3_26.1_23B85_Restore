@interface PUIReportWebsiteDetailController
- (PUIReportWebsiteDetailController)init;
- (id)appSpecifiersFromResults:(id)results;
- (id)domainsSpecifiersFromResults:(id)results;
- (id)iconForContext:(id)context;
- (id)specifiers;
- (id)timeStringForDate:(id)date;
- (id)valueForSpecifier:(id)specifier;
- (void)dataDidChange;
- (void)reloadAsyncSpecifiers;
@end

@implementation PUIReportWebsiteDetailController

- (PUIReportWebsiteDetailController)init
{
  v7.receiver = self;
  v7.super_class = PUIReportWebsiteDetailController;
  v2 = [(PUIReportWebsiteDetailController *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_dataDidChange name:*MEMORY[0x277D76648] object:0];

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    PUIAnalyticsLogView(v5, 0, 0);
  }

  return v2;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    context = [(PUIReportWebsiteDetailController *)self context];

    if (!context)
    {
      specifier = [(PUIReportWebsiteDetailController *)self specifier];
      v8 = [specifier objectForKeyedSubscript:@"PUIReportWebsiteKey"];
      [(PUIReportWebsiteDetailController *)self setContext:v8];
    }

    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CONTEXT_GROUP"];
    [v5 addObject:v9];
    v10 = MEMORY[0x277D3FAD8];
    context2 = [(PUIReportWebsiteDetailController *)self context];
    v12 = [v10 preferenceSpecifierNamed:context2 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    [v12 setIdentifier:@"CONTEXT"];
    [v12 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    context3 = [(PUIReportWebsiteDetailController *)self context];
    v14 = [(PUIReportWebsiteDetailController *)self iconForContext:context3];
    [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    [v5 addObject:v12];
    v15 = MEMORY[0x277D3FAD8];
    v16 = PUI_LocalizedStringForAppReport(@"DOMAINS_CONTACTED_BY_WEBSITE");
    v17 = [v15 groupSpecifierWithID:@"DOMAINS_GROUP" name:v16];
    [(PUIReportWebsiteDetailController *)self setDomainHeader:v17];

    v18 = MEMORY[0x277D3FAD8];
    v19 = PUI_LocalizedStringForAppReport(@"APPS_YOU_VIEWED_THIS_WEBSITE_IN");
    v20 = [v18 groupSpecifierWithID:@"APPS_GROUP" name:v19];
    [(PUIReportWebsiteDetailController *)self setAppHeader:v20];

    v21 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)dataDidChange
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = _PUILoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[PUIReportWebsiteDetailController dataDidChange]";
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "%s: Starting page load", buf, 0xCu);
  }

  v4 = PUILogForCategory(1uLL);
  v5 = os_signpost_id_make_with_pointer(v4, "PUIReportWebsiteDetailController.load");

  v6 = PUILogForCategory(1uLL);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PUIReportWebsiteDetailController.load", "", buf, 2u);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = objc_opt_new();
  v10 = *MEMORY[0x277D6B668];
  [v9 setObject:&unk_28772B4C8 forKeyedSubscript:*MEMORY[0x277D6B668]];
  context = [(PUIReportWebsiteDetailController *)self context];
  v12 = *MEMORY[0x277D6B670];
  [v9 setObject:context forKeyedSubscript:*MEMORY[0x277D6B670]];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke;
  v25[3] = &unk_279BA1FB8;
  v25[4] = self;
  v13 = v8;
  v26 = v13;
  [PUITrackingReportManager queryWithOptions:v9 reply:v25];
  dispatch_group_enter(v13);
  v14 = objc_opt_new();
  [v14 setObject:&unk_28772B4E0 forKeyedSubscript:v10];
  [v14 setObject:&unk_28772B4F8 forKeyedSubscript:*MEMORY[0x277D6B658]];
  context2 = [(PUIReportWebsiteDetailController *)self context];
  [v14 setObject:context2 forKeyedSubscript:v12];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_44;
  v23[3] = &unk_279BA1FB8;
  v23[4] = self;
  v16 = v13;
  v24 = v16;
  [PUITrackingReportManager queryWithOptions:v14 reply:v23];
  dispatch_group_enter(v16);
  v17 = objc_opt_new();
  [v17 setObject:&unk_28772B510 forKeyedSubscript:v10];
  context3 = [(PUIReportWebsiteDetailController *)self context];
  [v17 setObject:context3 forKeyedSubscript:v12];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_48;
  v21[3] = &unk_279BA1FB8;
  v21[4] = self;
  v22 = v16;
  v19 = v16;
  [PUITrackingReportManager queryWithOptions:v17 reply:v21];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v5;
  dispatch_group_notify(v19, MEMORY[0x277D85CD0], block);
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_2(uint64_t a1)
{
  v8 = [*(a1 + 32) specifierForID:@"CONTEXT"];
  v2 = MEMORY[0x277CCACA8];
  v3 = PUI_LocalizedStringForAppReport(@"VISITED_N_TIMES");
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"result"];
  v5 = [v4 firstObject];
  v6 = [v5 objectForKeyedSubscript:@"sumHits"];
  v7 = [v2 localizedStringWithFormat:v3, objc_msgSend(v6, "integerValue")];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D40160]];

  [*(a1 + 32) reloadSpecifier:v8];
  dispatch_group_leave(*(a1 + 48));
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 domainsSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_2_45;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_2_45(uint64_t a1)
{
  [*(a1 + 32) setDomainRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"result"];
  v5 = [v3 appSpecifiersFromResults:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_2_49;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_2_49(uint64_t a1)
{
  [*(a1 + 32) setAppRowsAwaitingDisplay:*(a1 + 40)];
  [*(a1 + 32) reloadAsyncSpecifiers];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __49__PUIReportWebsiteDetailController_dataDidChange__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PUILogForCategory(1uLL);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PUIReportWebsiteDetailController.load", "", &v7, 2u);
  }

  v6 = _PUILoggingFacility(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PUIReportWebsiteDetailController dataDidChange]_block_invoke";
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "%s: Finished page load", &v7, 0xCu);
  }
}

- (void)reloadAsyncSpecifiers
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(PUIReportWebsiteDetailController *)self specifierForID:@"CONTEXT"];
  domainRows = [(PUIReportWebsiteDetailController *)self domainRows];
  domainRowsAwaitingDisplay = [(PUIReportWebsiteDetailController *)self domainRowsAwaitingDisplay];
  domainHeader = [(PUIReportWebsiteDetailController *)self domainHeader];
  v17[0] = domainHeader;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [(PSListController *)self pui_replaceRows:domainRows withRows:domainRowsAwaitingDisplay header:v7 insertPoint:v3];

  domainRowsAwaitingDisplay2 = [(PUIReportWebsiteDetailController *)self domainRowsAwaitingDisplay];
  [(PUIReportWebsiteDetailController *)self setDomainRows:domainRowsAwaitingDisplay2];

  appRows = [(PUIReportWebsiteDetailController *)self appRows];
  appRowsAwaitingDisplay = [(PUIReportWebsiteDetailController *)self appRowsAwaitingDisplay];
  appHeader = [(PUIReportWebsiteDetailController *)self appHeader];
  v16 = appHeader;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v14 = [(PSListController *)self pui_replaceRows:appRows withRows:appRowsAwaitingDisplay header:v13 insertPoint:v8];

  appRowsAwaitingDisplay2 = [(PUIReportWebsiteDetailController *)self appRowsAwaitingDisplay];
  [(PUIReportWebsiteDetailController *)self setAppRows:appRowsAwaitingDisplay2];
}

- (id)domainsSpecifiersFromResults:(id)results
{
  resultsCopy = results;
  v5 = objc_opt_new();
  context = [(PUIReportWebsiteDetailController *)self context];
  v7 = [PUIReportDomainListController domainSpecifiersFromResults:resultsCopy showDates:1 showAppAndWebsiteCounts:0 app:0 appOther:0 website:context];

  v8 = [v7 mutableCopy];
  v9 = [v8 count];
  v10 = [v8 count];
  if (v10 >= 5)
  {
    v11 = 5;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 mutableCopy];

  if (v9 >= 6)
  {
    v14 = MEMORY[0x277D3FAD8];
    v15 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v16 setIdentifier:@"SHOW_ALL_DOMAIN"];
    context2 = [(PUIReportWebsiteDetailController *)self context];
    [v16 setObject:context2 forKeyedSubscript:@"PUIReportDomainListWebsite"];

    [v13 addObject:v16];
  }

  [v5 addObjectsFromArray:v13];
  v18 = [v5 copy];

  return v18;
}

- (id)appSpecifiersFromResults:(id)results
{
  v33 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v22 = objc_opt_new();
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = resultsCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *MEMORY[0x277D40008];
    v26 = *v29;
    v24 = *MEMORY[0x277D40020];
    v7 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"bundleName"];
        v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];
        localizedName = [v11 localizedName];

        v13 = MEMORY[0x277D3FAD8];
        if ([localizedName length])
        {
          v14 = localizedName;
        }

        else
        {
          v14 = v10;
        }

        v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
        [v15 setIdentifier:v10];
        [v15 setObject:v10 forKeyedSubscript:v25];
        [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v24];
        v16 = MEMORY[0x277CBEAA8];
        v17 = [v9 objectForKeyedSubscript:@"maxTimeStamp"];
        v18 = [v16 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v17, "integerValue")}];

        v19 = [(PUIReportWebsiteDetailController *)self timeStringForDate:v18];
        [v15 setObject:v19 forKeyedSubscript:v7];

        [v27 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [v27 sortUsingComparator:&__block_literal_global_20];
  [v22 addObjectsFromArray:v27];
  v20 = [v22 copy];

  return v20;
}

uint64_t __61__PUIReportWebsiteDetailController_appSpecifiersFromResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277D40160];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:v4];

  v8 = [v6 compare:v7];
  return v8;
}

- (id)timeStringForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  [v4 setTimeStyle:1];
  [v4 setDateStyle:1];
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

- (id)valueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D401A8]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40160]];
  }

  v7 = v6;

  return v7;
}

- (id)iconForContext:(id)context
{
  contextCopy = context;
  v5 = PUIWebsiteIconView(contextCopy, v4);
  v6 = [contextCopy substringWithRange:{0, 1}];

  localizedUppercaseString = [v6 localizedUppercaseString];
  [v5 setText:localizedUppercaseString];

  v8 = PUIImageFromLabel(v5);

  return v8;
}

@end