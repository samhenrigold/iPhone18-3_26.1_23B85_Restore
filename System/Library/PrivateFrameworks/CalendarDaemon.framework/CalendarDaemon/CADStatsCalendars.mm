@interface CADStatsCalendars
- (BOOL)calendarUsesAuthentication:(void *)authentication;
- (id)eventDictionaries;
- (void)prepareWithContext:(id)context;
- (void)processCalendars:(id)calendars inStore:(void *)store;
@end

@implementation CADStatsCalendars

- (void)prepareWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  v5 = objc_opt_new();
  calendarInfos = self->_calendarInfos;
  self->_calendarInfos = v5;
}

- (void)processCalendars:(id)calendars inStore:(void *)store
{
  v30 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  CalGetDatabaseForRecord();
  v6 = CalDatabaseGetPreferences();
  preferences = [v6 preferences];

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v23 = preferences;
  v9 = [preferences getValueForPreference:@"LastDeselectedCalendars" expectedClass:objc_opt_class()];
  v10 = [v8 initWithArray:v9];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = calendarsCopy;
  v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = objc_opt_new();
        [(NSMutableArray *)self->_calendarInfos addObject:v16];
        v17 = CalCalendarCopyUUID();
        *(v16 + 8) = [v10 containsObject:v17] ^ 1;

        *(v16 + 9) = CalCalendarIsHolidaySubscribedCalendar();
        *(v16 + 10) = CalCalendarIsSubscribed();
        *(v16 + 11) = CalStoreGetType() == 2;
        *(v16 + 12) = [(CADStatsCalendars *)self calendarUsesAuthentication:v15];
        *(v16 + 16) = CalCalendarIsBirthdayCalendar();
        *(v16 + 17) = CalCalendarIsFacebookBirthdayCalendar();
        *(v16 + 18) = CalCalendarIsFamilyCalendar();
        *(v16 + 19) = CalCalendarIsFoundInMailCalendar();
        *(v16 + 20) = CalCalendarIsNaturalLanguageSuggestedEventsCalendar();
        *(v16 + 15) = CalCalendarIsHidden();
        *(v16 + 13) = CalCalendarGetSharingStatus() != 0;
        *(v16 + 21) = CalCalendarGetSharingStatus() == 1;
        *(v16 + 22) = CalCalendarIsHolidaySyncedCalendar();
        *(v16 + 14) = CalCalendarCanContainEntityTypeAndStoreAllowsIt();
        *(v16 + 24) = 0;
        v18 = (v16 + 24);
        *(v16 + 32) = 0;
        v19 = CalCalendarCopySharees();
        if (v19)
        {
          v20 = v19;
          Count = CFArrayGetCount(v19);
          *v18 = Count;
          if (Count)
          {
            v22 = 0;
            do
            {
              CFArrayGetValueAtIndex(v20, v22);
              if (CalShareeGetAccessLevel() <= 1)
              {
                ++*(v16 + 32);
              }

              ++v22;
            }

            while (v22 < *v18);
          }

          CFRelease(v20);
        }

        *(v16 + 40) = *(v16 + 24) - *(v16 + 32);

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

- (BOOL)calendarUsesAuthentication:(void *)authentication
{
  v4 = CalCalendarCopySubscriptionURL();
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  user = [v5 user];
  if ([user length])
  {
    goto LABEL_2;
  }

  password = [v5 password];
  v9 = [password length];

  if (v9)
  {
    v7 = 1;
    goto LABEL_6;
  }

  user = CalCalendarCopySubCalAccountID();
  if (!user)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_3;
  }

  accountStore = [(CADStatCollectionContext *)self->_context accountStore];
  v12 = [accountStore accountWithIdentifier:user];
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v12;
  username = [v12 username];
  v15 = [username length];

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_2:
  v7 = 1;
LABEL_3:

LABEL_6:
  return v7;
}

- (id)eventDictionaries
{
  v36 = *MEMORY[0x277D85DE8];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_calendarInfos, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_calendarInfos;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v17)
  {
    v15 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * i);
        v34[0] = &unk_2837C7180;
        v33[0] = @"instance";
        v33[1] = @"isSelected";
        v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 8)];
        v34[1] = v28;
        v33[2] = @"isHoliday";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 9)];
        v34[2] = v27;
        v33[3] = @"isSubscribed";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 10)];
        v34[3] = v26;
        v33[4] = @"isCalDAV";
        v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 11)];
        v34[4] = v25;
        v33[5] = @"isAuthenticated";
        v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 12)];
        v34[5] = v24;
        v33[6] = @"isShared";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 13)];
        v34[6] = v23;
        v33[7] = @"allowsEvents";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 14)];
        v34[7] = v22;
        v33[8] = @"isHidden";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 15)];
        v34[8] = v21;
        v33[9] = @"isBirthday";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 16)];
        v34[9] = v20;
        v33[10] = @"isFacebookBirthday";
        v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 17)];
        v34[10] = v19;
        v33[11] = @"isFamily";
        v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 18)];
        v34[11] = v18;
        v33[12] = @"isFoundInMail";
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 19)];
        v34[12] = v5;
        v33[13] = @"isNaturalLanguageSuggestedEvents";
        v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 20)];
        v34[13] = v6;
        v33[14] = @"isSharedByMe";
        v7 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 21)];
        v34[14] = v7;
        v33[15] = @"isSyncedHolidayCalendar";
        v8 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 22)];
        v34[15] = v8;
        v33[16] = @"numSharees";
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 24)];
        v34[16] = v9;
        v33[17] = @"readOnlySharees";
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 32)];
        v34[17] = v10;
        v33[18] = @"readWriteSharees";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 40)];
        v34[18] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:19];
        [v16 addObject:v12];
      }

      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v17);
  }

  return v16;
}

@end