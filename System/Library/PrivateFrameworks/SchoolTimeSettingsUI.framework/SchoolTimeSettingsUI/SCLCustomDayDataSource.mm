@interface SCLCustomDayDataSource
- (SCLCustomDayDataSource)initWithListController:(id)controller viewModel:(id)model;
- (id)scheduleIntervalForSpecifier:(id)specifier;
- (id)specifierForDay:(int64_t)day;
- (int64_t)dayForSpecifier:(id)specifier;
- (void)customDayViewControllerWillDismiss:(id)dismiss;
- (void)showEditorForSpecifier:(id)specifier;
- (void)updateSpecifiersWithCurrentCalendar;
@end

@implementation SCLCustomDayDataSource

- (SCLCustomDayDataSource)initWithListController:(id)controller viewModel:(id)model
{
  v22.receiver = self;
  v22.super_class = SCLCustomDayDataSource;
  v4 = [(SCLSpecifierDataSource *)&v22 initWithListController:controller viewModel:model];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __59__SCLCustomDayDataSource_initWithListController_viewModel___block_invoke;
    v19 = &unk_279B6F1C0;
    v7 = v4;
    v20 = v7;
    v21 = v5;
    v8 = v5;
    [currentCalendar SCL_enumerateWeekdaysUsingBlock:&v16];
    v9 = [v8 copy];
    weekdaySpecifiers = v7->_weekdaySpecifiers;
    v7->_weekdaySpecifiers = v9;

    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CUSTOM_DAY_SELECTION_GROUP"];
    groupSpecifier = v7->_groupSpecifier;
    v7->_groupSpecifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277D4B780]);
    formatter = v7->_formatter;
    v7->_formatter = v13;

    [(SCLCustomDayDataSource *)v7 updateSpecifiersWithCurrentCalendar];
  }

  return v4;
}

void __59__SCLCustomDayDataSource_initWithListController_viewModel___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v4 stringWithFormat:@"CUSTOM_DAY_%@", v5];

  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28762AB68 target:*(a1 + 32) set:0 get:sel_scheduleIntervalForSpecifier_ detail:0 cell:4 edit:0];
  [v6 setControllerLoadAction:sel_showEditorForSpecifier_];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D401A8]];

  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v6 setProperty:&unk_28762D880 forKey:*MEMORY[0x277D3FD68]];
  [v6 setIdentifier:v8];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [*(a1 + 40) addObject:v6];
}

- (void)updateSpecifiersWithCurrentCalendar
{
  v21 = *MEMORY[0x277D85DE8];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  weekdaySpecifiers = [(SCLCustomDayDataSource *)self weekdaySpecifiers];
  v5 = [weekdaySpecifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(weekdaySpecifiers);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(SCLCustomDayDataSource *)self dayForSpecifier:v9]- 1;
        weekdaySymbols = [currentCalendar weekdaySymbols];
        v12 = [weekdaySymbols objectAtIndex:v10];

        [v9 setName:v12];
      }

      v6 = [weekdaySpecifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  array = [MEMORY[0x277CBEB18] array];
  groupSpecifier = [(SCLCustomDayDataSource *)self groupSpecifier];
  [array addObject:groupSpecifier];

  weekdaySpecifiers2 = [(SCLCustomDayDataSource *)self weekdaySpecifiers];
  [array addObjectsFromArray:weekdaySpecifiers2];

  [(SCLSpecifierDataSource *)self setSpecifiers:array];
}

- (int64_t)dayForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)specifierForDay:(int64_t)day
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  weekdaySpecifiers = [(SCLCustomDayDataSource *)self weekdaySpecifiers];
  v6 = [weekdaySpecifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(weekdaySpecifiers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(SCLCustomDayDataSource *)self dayForSpecifier:v10]== day)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [weekdaySpecifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)scheduleIntervalForSpecifier:(id)specifier
{
  v4 = [(SCLCustomDayDataSource *)self dayForSpecifier:specifier];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  customSchedule = [viewModel customSchedule];
  v7 = [customSchedule timeIntervalsForDay:v4];

  formatter = [(SCLCustomDayDataSource *)self formatter];
  v9 = [formatter stringFromTimeIntervals:v7];

  return v9;
}

- (void)showEditorForSpecifier:(id)specifier
{
  v18[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = [(SCLCustomDayDataSource *)self dayForSpecifier:specifierCopy];
  v6 = objc_alloc_init(SCLSettingsViewModel);
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  customSchedule = [viewModel customSchedule];

  [(SCLSettingsViewModel *)v6 setRepeatSchedule:SCLRepeatScheduleForDay()];
  v9 = [customSchedule timeIntervalsForDay:v5];
  [(SCLSettingsViewModel *)v6 setTimeIntervals:v9];

  timeIntervals = [(SCLSettingsViewModel *)v6 timeIntervals];
  v11 = [timeIntervals count];

  if (!v11)
  {
    v12 = +[SCLTimeIntervalModel defaultTimeInterval];
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [(SCLSettingsViewModel *)v6 setTimeIntervals:v13];
  }

  -[SCLSettingsViewModel setEnabled:](v6, "setEnabled:", [customSchedule isScheduledForDay:v5]);
  v14 = [SCLCustomDayViewController alloc];
  name = [specifierCopy name];

  v16 = [(SCLCustomDayViewController *)v14 initWithViewModel:v6 title:name];
  [(SCLCustomDayViewController *)v16 setDelegate:self];
  listController = [(SCLSpecifierDataSource *)self listController];
  [listController showController:v16 animate:1];
}

- (void)customDayViewControllerWillDismiss:(id)dismiss
{
  v32 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  viewModel = [dismissCopy viewModel];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  [viewModel repeatSchedule];
  v26[5] = MEMORY[0x277D85DD0];
  v26[6] = 3221225472;
  v26[7] = __61__SCLCustomDayDataSource_customDayViewControllerWillDismiss___block_invoke;
  v26[8] = &unk_279B6F198;
  v26[9] = &v27;
  SCLEnumerateDaysInRepeatSchedule();
  viewModel2 = [(SCLSpecifierDataSource *)self viewModel];
  customSchedule = [viewModel2 customSchedule];
  recurrences = [customSchedule recurrences];
  v8 = [recurrences mutableCopy];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__SCLCustomDayDataSource_customDayViewControllerWillDismiss___block_invoke_2;
  v26[3] = &unk_279B6F1E8;
  v26[4] = &v27;
  v9 = [v8 indexesOfObjectsPassingTest:v26];
  [v8 removeObjectsAtIndexes:v9];
  if ([viewModel isEnabled])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    timeIntervals = [viewModel timeIntervals];
    v11 = [timeIntervals countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(timeIntervals);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = objc_alloc(MEMORY[0x277D4B748]);
          v16 = [v15 initWithTimeInterval:v14 day:v28[3]];
          [v8 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [timeIntervals countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v11);
    }
  }

  v17 = [objc_alloc(MEMORY[0x277D4B738]) initWithRecurrences:v8];
  viewModel3 = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel3 setCustomSchedule:v17];

  listController = [(SCLSpecifierDataSource *)self listController];
  v20 = [(SCLCustomDayDataSource *)self specifierForDay:v28[3]];
  [listController reloadSpecifier:v20 animated:0];

  _Block_object_dispose(&v27, 8);
}

@end