@interface PUIReportSensorEventsController
- (BOOL)isGreenTeaSpecialCategory;
- (PUIReportSensorEventsController)init;
- (id)eventSpecifiersForRecords:(id)records greenTea:(BOOL)tea;
- (id)headerForCategory:(id)category;
- (id)specifiers;
@end

@implementation PUIReportSensorEventsController

- (PUIReportSensorEventsController)init
{
  v5.receiver = self;
  v5.super_class = PUIReportSensorEventsController;
  v2 = [(PUIReportSensorEventsController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_dataDidChange name:@"PUIReportSensorManagerDataHasChangedNotification" object:0];
  }

  return v2;
}

- (BOOL)isGreenTeaSpecialCategory
{
  if (isGreenTeaSpecialCategory_onceToken != -1)
  {
    [PUIReportSensorEventsController isGreenTeaSpecialCategory];
  }

  v3 = isGreenTeaSpecialCategory_greenTeaSpecialCategories;
  category = [(PUIReportSensorEventsController *)self category];
  LOBYTE(v3) = [v3 containsObject:category];

  return v3;
}

void __60__PUIReportSensorEventsController_isGreenTeaSpecialCategory__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D412B8];
  v5[0] = *MEMORY[0x277D412A0];
  v5[1] = v1;
  v5[2] = *MEMORY[0x277D412A8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = isGreenTeaSpecialCategory_greenTeaSpecialCategories;
  isGreenTeaSpecialCategory_greenTeaSpecialCategories = v3;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    bundleID = [(PUIReportSensorEventsController *)self bundleID];
    category = [(PUIReportSensorEventsController *)self category];
    PUIAnalyticsLogView(v6, bundleID, category);

    category2 = [(PUIReportSensorEventsController *)self category];

    if (!category2)
    {
      specifier = [(PUIReportSensorEventsController *)self specifier];
      identifier = [specifier identifier];
      [(PUIReportSensorEventsController *)self setCategory:identifier];

      specifier2 = [(PUIReportSensorEventsController *)self specifier];
      v13 = [specifier2 objectForKeyedSubscript:@"PUIReportAppIDKey"];
      [(PUIReportSensorEventsController *)self setBundleID:v13];

      specifier3 = [(PUIReportSensorEventsController *)self specifier];
      v15 = [specifier3 objectForKeyedSubscript:@"PUIReportSensorManagerKey"];
      [(PUIReportSensorEventsController *)self setManager:v15];
    }

    v16 = objc_opt_new();
    v17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"EVENTS_HEADER_GROUP"];
    category3 = [(PUIReportSensorEventsController *)self category];
    v19 = [(PUIReportSensorEventsController *)self headerForCategory:category3];
    [v17 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v16 addObject:v17];
    v20 = MEMORY[0x277D3FAD8];
    v21 = PUI_LocalizedStringForAppReport(@"PAST_7_DAYS");
    v22 = [v20 groupSpecifierWithID:@"EVENTS_GROUP" name:v21];

    [v16 addObject:v22];
    manager = [(PUIReportSensorEventsController *)self manager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__PUIReportSensorEventsController_specifiers__block_invoke;
    v29[3] = &unk_279BA21E0;
    v29[4] = self;
    v24 = [manager eventsFiltered:v29];

    if (isGreenTeaSKU_once != -1)
    {
      [PUIReportSensorEventsController specifiers];
    }

    v25 = [(PUIReportSensorEventsController *)self eventSpecifiersForRecords:v24 greenTea:isGreenTeaSKU_deviceIsChinaSKU];
    [v16 addObjectsFromArray:v25];
    v26 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v16;
    v27 = v16;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

uint64_t __45__PUIReportSensorEventsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 access];
  v5 = [v4 accessor];
  v6 = [v5 bundleID];
  v7 = [*(a1 + 32) bundleID];
  if ([v6 isEqual:v7])
  {
    v8 = [v3 access];
    v9 = [v8 category];
    v10 = [*(a1 + 32) category];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)eventSpecifiersForRecords:(id)records greenTea:(BOOL)tea
{
  teaCopy = tea;
  v46 = *MEMORY[0x277D85DE8];
  v4 = eventSpecifiersForRecords_greenTea__onceToken;
  recordsCopy = records;
  if (v4 != -1)
  {
    [PUIReportSensorEventsController eventSpecifiersForRecords:greenTea:];
  }

  v6 = [recordsCopy sortedArrayUsingComparator:&__block_literal_global_39];

  v35 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v37 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v37)
  {
    v36 = *v40;
    v38 = *MEMORY[0x277D401A8];
    v7 = 0x277CBE000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v11 = objc_opt_isKindOfClass(), (v11))
        {
          access = [v9 access];
          identifier = [access identifier];
          uUIDString = [identifier UUIDString];

          v15 = *(v7 + 2728);
          if (isKindOfClass)
          {
            v16 = v9;
            [v16 startTime];
            v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
            v18 = *(v7 + 2728);
            [v16 endTime];
            v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
            access2 = [v16 access];

            accessCount = [access2 accessCount];
          }

          else
          {
            [v9 startTime];
            v19 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
            accessCount = 0;
            v17 = v19;
          }

          v22 = [eventSpecifiersForRecords_greenTea__intervalFormatter stringFromDate:v17 toDate:v19];
          v23 = [eventSpecifiersForRecords_greenTea__valueFormatter stringFromDate:v17];
          v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
          [v24 setIdentifier:uUIDString];
          v25 = [eventSpecifiersForRecords_greenTea__titleFormatter stringFromDate:v17];
          [v24 setName:v25];

          [v24 setObject:v22 forKeyedSubscript:v38];
          if ((isKindOfClass & teaCopy) == 1)
          {
            if (accessCount)
            {
              v26 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%@ (%lu)", v23, accessCount];
              [v24 setObject:v26 forKeyedSubscript:v38];
              goto LABEL_16;
            }

            if (![v35 count] && -[PUIReportSensorEventsController isGreenTeaSpecialCategory](self, "isGreenTeaSpecialCategory") && (objc_msgSend(v22, "isEqualToString:", v23) & 1) == 0)
            {
              v27 = MEMORY[0x277D3FAD8];
              v28 = [eventSpecifiersForRecords_greenTea__titleFormatter stringFromDate:v19];
              v26 = [v27 preferenceSpecifierNamed:v28 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

              v29 = [eventSpecifiersForRecords_greenTea__valueFormatter stringFromDate:v19];
              [v26 setObject:v29 forKeyedSubscript:v38];

              [v35 addObject:v26];
LABEL_16:
            }
          }

          if ((isKindOfClass & 1) == 0)
          {
            [v24 setObject:v23 forKeyedSubscript:v38];
          }

          [v35 addObject:v24];

          v7 = 0x277CBE000;
          goto LABEL_25;
        }

        uUIDString = _PUILoggingFacility(v11);
        if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v9;
          _os_log_impl(&dword_2657FE000, uUIDString, OS_LOG_TYPE_DEFAULT, "Unrecognized record type, %@", buf, 0xCu);
        }

LABEL_25:

        ++v8;
      }

      while (v37 != v8);
      v30 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      v37 = v30;
    }

    while (v30);
  }

  return v35;
}

uint64_t __70__PUIReportSensorEventsController_eventSpecifiersForRecords_greenTea___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = eventSpecifiersForRecords_greenTea__titleFormatter;
  eventSpecifiersForRecords_greenTea__titleFormatter = v2;

  [eventSpecifiersForRecords_greenTea__titleFormatter setTimeStyle:0];
  [eventSpecifiersForRecords_greenTea__titleFormatter setDateStyle:2];
  [eventSpecifiersForRecords_greenTea__titleFormatter setDoesRelativeDateFormatting:1];
  v4 = objc_opt_new();
  v5 = eventSpecifiersForRecords_greenTea__valueFormatter;
  eventSpecifiersForRecords_greenTea__valueFormatter = v4;

  [eventSpecifiersForRecords_greenTea__valueFormatter setTimeStyle:1];
  [eventSpecifiersForRecords_greenTea__valueFormatter setDateStyle:0];
  v6 = objc_opt_new();
  v7 = eventSpecifiersForRecords_greenTea__intervalFormatter;
  eventSpecifiersForRecords_greenTea__intervalFormatter = v6;

  [eventSpecifiersForRecords_greenTea__intervalFormatter setDateStyle:0];
  v8 = eventSpecifiersForRecords_greenTea__intervalFormatter;

  return [v8 setTimeStyle:1];
}

uint64_t __70__PUIReportSensorEventsController_eventSpecifiersForRecords_greenTea___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = 1.79769313e308;
  v9 = 1.79769313e308;
  v6 = 1.79769313e308;
  v7 = 1.79769313e308;
  v4 = a3;
  getStartAndEndTimeForRecord(a2, &v9, &v8);
  getStartAndEndTimeForRecord(v4, &v7, &v6);

  if (v8 < v6)
  {
    return 1;
  }

  if (v8 > v6)
  {
    return -1;
  }

  if (v9 < v7)
  {
    return 1;
  }

  if (v9 <= v7)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (id)headerForCategory:(id)category
{
  v14[7] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v4 = *MEMORY[0x277D412B8];
  v13[0] = *MEMORY[0x277D412A0];
  v13[1] = v4;
  v14[0] = @"EVENTS_HEADER_TEXT_LOCATION";
  v14[1] = @"EVENTS_HEADER_TEXT_PHOTOS";
  v5 = *MEMORY[0x277D412B0];
  v13[2] = *MEMORY[0x277D41290];
  v13[3] = v5;
  v14[2] = @"EVENTS_HEADER_TEXT_CAMERA";
  v14[3] = @"EVENTS_HEADER_TEXT_MICROPHONE";
  v6 = *MEMORY[0x277D412A8];
  v13[4] = *MEMORY[0x277D41298];
  v13[5] = v6;
  v14[4] = @"EVENTS_HEADER_TEXT_CONTACTS";
  v14[5] = @"EVENTS_HEADER_TEXT_MEDIA_LIBRARY";
  v13[6] = *MEMORY[0x277D412C0];
  v14[6] = @"EVENTS_HEADER_TEXT_SCREEN_RECORDING";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];
  v8 = [v7 objectForKeyedSubscript:categoryCopy];

  if (v8)
  {
    v10 = [v7 objectForKeyedSubscript:categoryCopy];
    v11 = PUI_LocalizedStringForAppReport(v10);
  }

  else
  {
    v10 = _PUILoggingFacility(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PUIReportSensorEventsController *)categoryCopy headerForCategory:v10];
    }

    v11 = &stru_28771E540;
  }

  return v11;
}

- (void)headerForCategory:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[PUIReportSensorEventsController headerForCategory:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: no header string for category: %@", &v2, 0x16u);
}

@end