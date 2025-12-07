@interface CADStatsOccurrences
- (id)eventDictionaries;
- (void)prepareWithContext:(id)context;
- (void)processOccurrences:(id)occurrences;
@end

@implementation CADStatsOccurrences

- (void)prepareWithContext:(id)context
{
  v4 = objc_opt_new();
  occurrenceInfos = self->_occurrenceInfos;
  self->_occurrenceInfos = v4;

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_opt_new();
  now = self->_now;
  self->_now = v6;

  v8 = objc_alloc(MEMORY[0x277CF77A0]);
  v9 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:self->_now options:1024];
  v10 = [currentCalendar dateByAddingUnit:16 value:365 toDate:self->_now options:1024];
  v11 = [v8 initWithStartDate:v9 endDate:v10];
  desiredOccurrenceRange = self->_desiredOccurrenceRange;
  self->_desiredOccurrenceRange = v11;
}

- (void)processOccurrences:(id)occurrences
{
  v39 = *MEMORY[0x277D85DE8];
  occurrencesCopy = occurrences;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [occurrencesCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(occurrencesCopy);
        }

        v9 = objc_opt_new();
        [(NSMutableArray *)self->_occurrenceInfos addObject:v9];
        Event = CalEventOccurrenceGetEvent();
        CalEventOccurrenceGetDate();
        v12 = v11;
        [(NSDate *)self->_now timeIntervalSinceReferenceDate];
        v14 = (v12 - v13) / 60.0;
        *(v9 + 72) = v14;
        *(v9 + 80) = v14 + CalEventGetDuration() / 60.0;
        *(v9 + 64) = CalEventGetDuration() / 60.0;
        *(v9 + 8) = CalEventIsAllDay();
        *(v9 + 11) = CalEventIsCandidateForTravelAdvisories();
        *(v9 + 12) = CalEventIsImmediatelyEligibleForTravelAdvisories();
        v15 = CalCalendarItemCopyAttendees();
        if (v15)
        {
          v16 = v15;
          Count = CFArrayGetCount(v15);
          *(v9 + 32) = Count;
          if (Count >= 1)
          {
            v18 = Count;
            v19 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v16, v19);
              v21 = MEMORY[0x22AA4B0E0](ValueAtIndex);
              if (v21)
              {
                break;
              }

              if (v18 == ++v19)
              {
                goto LABEL_13;
              }
            }

            *(v9 + 13) = 1;
            CFRelease(v21);
          }

LABEL_13:
          CFRelease(v16);
          if (*(v9 + 32))
          {
            v22 = CalCalendarItemCopyOrganizer();
            if (v22)
            {
              v23 = v22;
              *(v9 + 14) = CalOrganizerIsSelf();
              CFRelease(v23);
            }
          }
        }

        *(v9 + 56) = CalEventGetParticipationStatus();
        *(v9 + 48) = CalCalendarItemGetStatus();
        v24 = MEMORY[0x22AA4BFE0](Event);
        if (v24)
        {
          v25 = v24;
          v26 = CFArrayGetCount(v24);
          if (v26 >= 1)
          {
            v27 = v26;
            v28 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v25, v28);
              if ((CalAlarmIsDefaultAlarm() & 1) == 0)
              {
                break;
              }

              if (v27 == ++v28)
              {
                goto LABEL_23;
              }
            }

            *(v9 + 15) = 1;
          }

LABEL_23:
          CFRelease(v25);
        }

        v29 = CalCalendarItemCopyPreferredLocation();
        *(v9 + 16) = v29 != 0;
        *(v9 + 17) = CalCalendarItemHasClientLocation();
        if (v29)
        {
          *(v9 + 18) = CalLocationHasKnownSpatialData();
          *(v9 + 19) = CalEventPreferredLocationIsAConferenceRoom();
          CFRelease(v29);
        }

        *(v9 + 20) = CalEventHasPredictedLocation();
        *(v9 + 40) = CalEventGetTravelAdvisoryBehavior();
        v30 = CalCalendarItemCopyCalendar();
        if (v30)
        {
          v31 = v30;
          *(v9 + 21) = CalCalendarIsIgnoringEventAlerts();
          *(v9 + 22) = CalCalendarGetSharingStatus() != 0;
          *(v9 + 9) = CalCalendarIsBirthdayCalendar();
          *(v9 + 10) = CalCalendarIsHolidaySubscribedCalendar();
          CFRelease(v31);
        }

        v32 = CalCalendarItemCopyURL();
        *(v9 + 23) = v32 != 0;
        if (v32)
        {
          CFRelease(v32);
        }

        v33 = CalCalendarItemCopyDescription();
        *(v9 + 24) = v33 != 0;
        if (v33)
        {
          CFRelease(v33);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [occurrencesCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }
}

- (id)eventDictionaries
{
  v43 = *MEMORY[0x277D85DE8];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_occurrenceInfos, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_occurrenceInfos;
  v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v18)
  {
    v16 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v36 + 1) + 8 * v3);
        v41[0] = &unk_2837C74C8;
        v40[0] = @"instance";
        v40[1] = @"minutesUntilStart";
        v34 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 72)];
        v41[1] = v34;
        v40[2] = @"minutesUntilEnd";
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 80)];
        v41[2] = v33;
        v40[3] = @"isAllDay";
        v32 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 8)];
        v41[3] = v32;
        v40[4] = @"isBirthday";
        v31 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 9)];
        v41[4] = v31;
        v40[5] = @"isHoliday";
        v30 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 10)];
        v41[5] = v30;
        v40[6] = @"isCandidateForTravelAdvisories";
        v29 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 11)];
        v41[6] = v29;
        v40[7] = @"isImmediatelyEligibleForTravelAdvisories";
        v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 12)];
        v41[7] = v28;
        v40[8] = @"hasResponseComment";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 13)];
        v41[8] = v27;
        v40[9] = @"organizerIsSelf";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 14)];
        v41[9] = v26;
        v40[10] = @"hasNonDefaultAlarm";
        v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 15)];
        v41[10] = v25;
        v40[11] = @"hasLocation";
        v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 16)];
        v41[11] = v24;
        v40[12] = @"hasClientLocation";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 17)];
        v41[12] = v23;
        v40[13] = @"hasLocationWithKnownSpatialData";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 18)];
        v41[13] = v22;
        v40[14] = @"hasConferenceRoomLocation";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 19)];
        v41[14] = v21;
        v40[15] = @"hasPredictedLocation";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 20)];
        v41[15] = v20;
        v40[16] = @"isOnCalendarThatSuppressesAlerts";
        v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 21)];
        v41[16] = v19;
        v40[17] = @"isOnSharedCalendar";
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 22)];
        v41[17] = v5;
        v40[18] = @"hasURL";
        v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 23)];
        v41[18] = v6;
        v40[19] = @"hasNotes";
        [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 24)];
        v7 = v35 = v3;
        v41[19] = v7;
        v40[20] = @"numAttendees";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 32)];
        v41[20] = v8;
        v40[21] = @"travelAdvisoryBehavior";
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 40)];
        v41[21] = v9;
        v40[22] = @"status";
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 48)];
        v41[22] = v10;
        v40[23] = @"participationStatus";
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 56)];
        v41[23] = v11;
        v40[24] = @"durationInMinutes";
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 64)];
        v41[24] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:25];
        [v17 addObject:v13];

        v3 = v35 + 1;
      }

      while (v18 != v35 + 1);
      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v18);
  }

  return v17;
}

@end