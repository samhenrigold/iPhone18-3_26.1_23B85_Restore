@interface CADStatsEvents
- (id)eventDictionaries;
- (void)prepareWithContext:(id)context;
- (void)processEvents:(id)events;
@end

@implementation CADStatsEvents

- (void)prepareWithContext:(id)context
{
  v4 = objc_opt_new();
  self->_eventInfos = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)processEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = objc_opt_new();
        [(NSMutableArray *)self->_eventInfos addObject:v9];
        *(v9 + 8) = CalEventIsDetached();
        *(v9 + 9) = CalCalendarItemHasRecurrenceRules();
        *(v9 + 10) = CalCalendarItemIsAllDay();
        *(v9 + 32) = CalEventGetParticipationStatus();
        v10 = CalCalendarItemCopyPreferredLocation();
        *(v9 + 13) = v10 != 0;
        if (v10)
        {
          v11 = v10;
          *(v9 + 14) = CalLocationHasKnownSpatialData();
          CFRelease(v11);
        }

        *(v9 + 15) = CalCalendarItemHasClientLocation();
        *(v9 + 16) = CalEventPreferredLocationIsAConferenceRoom();
        *(v9 + 24) = CalEventGetTravelAdvisoryBehavior();
        *(v9 + 17) = CalEventIsCandidateForTravelAdvisories();
        *(v9 + 18) = CalEventIsImmediatelyEligibleForTravelAdvisories();
        *(v9 + 19) = CalEventHasPredictedLocation();
        v12 = CalCalendarItemCopyCalendar();
        if (v12)
        {
          v13 = v12;
          *(v9 + 20) = CalCalendarIsIgnoringEventAlerts();
          *(v9 + 21) = CalCalendarGetSharingStatus() != 0;
          *(v9 + 11) = CalCalendarIsBirthdayCalendar();
          *(v9 + 12) = CalCalendarIsHolidaySubscribedCalendar();
          CFRelease(v13);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)eventDictionaries
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_eventInfos, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_eventInfos;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v17)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v27 + 1) + 8 * i);
        v32[0] = &unk_2837C74B0;
        v31[0] = @"instance";
        v31[1] = @"isDetached";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 8)];
        v32[1] = v26;
        v31[2] = @"hasRecurrenceRules";
        v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 9)];
        v32[2] = v25;
        v31[3] = @"isAllDay";
        v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 10)];
        v32[3] = v24;
        v31[4] = @"isBirthday";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 11)];
        v32[4] = v23;
        v31[5] = @"isHoliday";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 12)];
        v32[5] = v22;
        v31[6] = @"hasLocation";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 13)];
        v32[6] = v21;
        v31[7] = @"locationHasKnownSpatialData";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 14)];
        v32[7] = v20;
        v31[8] = @"hasClientLocation";
        v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 15)];
        v32[8] = v19;
        v31[9] = @"preferredLocationIsAConferenceRoom";
        v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 16)];
        v32[9] = v18;
        v31[10] = @"isCandidateForTravelAdvisories";
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 17)];
        v32[10] = v5;
        v31[11] = @"isImmediatelyEligibleForTravelAdvisories";
        v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 18)];
        v32[11] = v6;
        v31[12] = @"travelAdvisoryBehavior";
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 24)];
        v32[12] = v7;
        v31[13] = @"participationStatus";
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 32)];
        v32[13] = v8;
        v31[14] = @"hasPredictedLocation";
        v9 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 19)];
        v32[14] = v9;
        v31[15] = @"isOnCalendarIgnoringEventAlerts";
        v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 20)];
        v32[15] = v10;
        v31[16] = @"isOnSharedCalendar";
        v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 21)];
        v32[16] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:17];
        [v16 addObject:v12];
      }

      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v17);
  }

  return v16;
}

@end