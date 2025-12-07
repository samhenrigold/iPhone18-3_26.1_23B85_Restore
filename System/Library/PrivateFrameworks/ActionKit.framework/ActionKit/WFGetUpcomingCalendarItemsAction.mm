@interface WFGetUpcomingCalendarItemsAction
- (void)runAsynchronouslyWithInput:(id)input;
- (void)updateCalendars;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasRemovedFromWorkflow:(id)workflow;
@end

@implementation WFGetUpcomingCalendarItemsAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v74[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFGetUpcomingItemCount" ofClass:objc_opt_class()];
  integerValue = [v4 integerValue];

  definition = [(WFGetUpcomingCalendarItemsAction *)self definition];
  v6 = [definition objectForKey:@"WFGetUpcomingItemType"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v57 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFGetUpcomingItemCalendar" ofClass:objc_opt_class()];
  resourceManager = [(WFGetUpcomingCalendarItemsAction *)self resourceManager];
  v9 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v9 anyObject];

  if ([anyObject status] != 4)
  {
    availabilityError = [anyObject availabilityError];
    [(WFGetUpcomingCalendarItemsAction *)self finishRunningWithError:availabilityError];

    goto LABEL_26;
  }

  if (!unsignedIntegerValue)
  {
    v31 = WFGetWorkflowEventStore();
    v61 = [v31 calendarsForEntityType:0];
    if (v57)
    {
      v32 = [v57 matchingCalendarsFromArray:v61];

      v61 = v32;
    }

    v59 = objc_opt_new();
    v53 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFDateSpecifier" ofClass:objc_opt_class()];
    v60 = [v53 isEqualToString:@"Today"];
    v55 = [v53 isEqualToString:@"Tomorrow"];
    v54 = [v53 isEqualToString:@"Specified Day"];
    v33 = 0.0;
    v34 = -86400;
    v35 = 86400;
    while (1)
    {
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      if (v60)
      {
        break;
      }

      if (v55)
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        date = [MEMORY[0x277CBEAA8] date];
        currentCalendar2 = [currentCalendar components:28 fromDate:date];

        [currentCalendar2 setDay:{objc_msgSend(currentCalendar2, "day") + 1}];
        date4 = [currentCalendar dateFromComponents:currentCalendar2];
        [currentCalendar2 setDay:{objc_msgSend(currentCalendar2, "day") + 1}];
        v40 = [currentCalendar dateFromComponents:currentCalendar2];
        v41 = [v31 predicateForEventsWithStartDate:date4 endDate:v40 calendars:v61];
        goto LABEL_14;
      }

      if (v54)
      {
        v46 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFSpecifiedDate" ofClass:objc_opt_class()];
        v47 = v46;
        if (v46)
        {
          date2 = v46;
        }

        else
        {
          date2 = [MEMORY[0x277CBEAA8] date];
        }

        currentCalendar = date2;

        currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
        date4 = [currentCalendar2 components:28 fromDate:currentCalendar];
        v40 = [currentCalendar2 dateFromComponents:date4];
        [date4 setDay:{objc_msgSend(date4, "day") + 1}];
        v49 = [currentCalendar2 dateFromComponents:date4];
        v43 = [v31 predicateForEventsWithStartDate:v40 endDate:v49 calendars:v61];

        goto LABEL_15;
      }

      v73 = 1;
      currentCalendar = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v33];
      currentCalendar2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v35];
      v43 = [v31 predicateForEventsWithStartDate:currentCalendar endDate:currentCalendar2 calendars:v61];
LABEL_16:

      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke;
      v66[3] = &unk_278C19B08;
      v44 = v59;
      v67 = v44;
      v68 = &v70;
      v69 = integerValue;
      [v31 enumerateEventsMatchingPredicate:v43 usingBlock:v66];
      v45 = *(v71 + 24);

      _Block_object_dispose(&v70, 8);
      if (v45)
      {
        v33 = v35;
        v35 += 86400;
        v34 += 86400;
        if (v34 <= 0x784CDFF)
        {
          continue;
        }
      }

      allValues = [v44 allValues];
      v51 = [allValues sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_2;
      v64[3] = &unk_278C19B30;
      v64[4] = self;
      v65 = v31;
      v52 = v31;
      [v51 enumerateObjectsUsingBlock:v64];

      [(WFGetUpcomingCalendarItemsAction *)self finishRunningWithError:0];
      goto LABEL_26;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date3 = [MEMORY[0x277CBEAA8] date];
    currentCalendar2 = [currentCalendar components:28 fromDate:date3];

    [currentCalendar2 setDay:{objc_msgSend(currentCalendar2, "day") + 1}];
    date4 = [MEMORY[0x277CBEAA8] date];
    v40 = [currentCalendar dateFromComponents:currentCalendar2];
    v41 = [v31 predicateForEventsWithStartDate:date4 endDate:v40 calendars:v61];
LABEL_14:
    v43 = v41;
LABEL_15:

    goto LABEL_16;
  }

  v10 = objc_opt_new();
  v11 = MEMORY[0x277CFC4E8];
  v12 = WFReminderPropertyNameDueDate();
  v13 = [v11 propertyForName:v12];

  v14 = MEMORY[0x277CFC4E8];
  v15 = WFReminderPropertyNameList();
  v16 = [v14 propertyForName:v15];

  v17 = MEMORY[0x277CFC4E8];
  v18 = WFReminderPropertyNameIsCompleted();
  v19 = [v17 propertyForName:v18];

  if (([v57 allCalendars] & 1) == 0)
  {
    v20 = MEMORY[0x277CFC2E8];
    calendarTitle = [v57 calendarTitle];
    v22 = [v20 predicateWithValue:calendarTitle forProperty:v16 comparisonType:4];
    [v10 addObject:v22];
  }

  v23 = [MEMORY[0x277CFC2E8] predicateWithValue:MEMORY[0x277CBEC28] forProperty:v19 comparisonType:4];
  [v10 addObject:v23];

  v24 = [MEMORY[0x277CFC2F0] andPredicateWithSubpredicates:v10];
  v25 = [objc_alloc(MEMORY[0x277CFC340]) initWithPredicate:v24];
  v26 = [MEMORY[0x277CFC348] sortDescriptorWithProperty:v13 ascending:1 comparator:0];
  v74[0] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  [v25 setSortDescriptors:v27];

  [v25 setSlice:{0x7FFFFFFFFFFFFFFFLL, integerValue}];
  v28 = MEMORY[0x277CFC4E8];
  contentPermissionRequestor = [(WFGetUpcomingCalendarItemsAction *)self contentPermissionRequestor];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_3;
  v63[3] = &unk_278C22518;
  v63[4] = self;
  [v28 runQuery:v25 withItems:0 permissionRequestor:contentPermissionRequestor completionHandler:v63];

LABEL_26:
}

void __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11 = v5;
  v7 = [v5 eventIdentifier];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = [v11 eventIdentifier];
    [v9 setObject:v11 forKey:v10];
  }

  if ([*(a1 + 32) count] == *(a1 + 48))
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 output];
  v5 = [MEMORY[0x277CFC288] itemWithEKEvent:v4 fromEventStore:*(a1 + 40)];

  [v6 addItem:v5];
}

void __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 32) output];
        [v12 addItem:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) finishRunningWithError:v6];
}

- (void)updateCalendars
{
  v2 = [(WFGetUpcomingCalendarItemsAction *)self parameterForKey:@"WFGetUpcomingItemCalendar"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 loadPossibleStatesWithCompletionHandler:&__block_literal_global_5943];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 reloadPossibleStates];
    }
  }
}

- (void)wasRemovedFromWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFGetUpcomingCalendarItemsAction;
  [(WFGetUpcomingCalendarItemsAction *)&v5 wasRemovedFromWorkflow:workflow];
  resourceManager = [(WFGetUpcomingCalendarItemsAction *)self resourceManager];
  [resourceManager removeTarget:self selector:sel_updateCalendars];
}

- (void)wasAddedToWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFGetUpcomingCalendarItemsAction;
  [(WFGetUpcomingCalendarItemsAction *)&v5 wasAddedToWorkflow:workflow];
  resourceManager = [(WFGetUpcomingCalendarItemsAction *)self resourceManager];
  [resourceManager addTarget:self selector:sel_updateCalendars];
}

@end