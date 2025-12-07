@interface CADContactEventsPredicate
- (BOOL)_isCandidate:(void *)candidate allowAllDayEvent:(BOOL)event;
- (BOOL)isEqual:(id)equal;
- (CADContactEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate contacts:(id)contacts;
- (CADContactEventsPredicate)initWithCoder:(id)coder;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADContactEventsPredicate

- (CADContactEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate contacts:(id)contacts
{
  v73 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  contactsCopy = contacts;
  v64.receiver = self;
  v64.super_class = CADContactEventsPredicate;
  v13 = [(EKPredicate *)&v64 initWithCalendars:ds];
  if (!v13)
  {
    goto LABEL_31;
  }

  if (dateCopy && endDateCopy)
  {
    if ([dateCopy CalIsAfterDate:endDateCopy])
    {
      v14 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138412802;
        v68 = v17;
        v69 = 2112;
        v70 = dateCopy;
        v71 = 2112;
        v72 = endDateCopy;
        v18 = "[%@] must be given a 'startDate' that occurs before the given 'endDate.'  startDate: [%@] endDate: [%@]";
        v19 = v15;
        v20 = 32;
LABEL_9:
        _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v49 = dateCopy;
    [(EKPredicate *)v13 setStartDate:dateCopy];
    v46 = v13;
    v48 = endDateCopy;
    [(EKPredicate *)v13 setEndDate:endDateCopy];
    v24 = objc_opt_new();
    v50 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v47 = contactsCopy;
    obj = contactsCopy;
    v25 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v61;
      v28 = *MEMORY[0x277CBCFC0];
      v55 = *MEMORY[0x277CBD000];
      v51 = *MEMORY[0x277CBCFF8];
      v52 = *MEMORY[0x277CBCFC0];
      do
      {
        v29 = 0;
        v53 = v26;
        do
        {
          if (*v61 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v60 + 1) + 8 * v29);
          if ([v30 isKeyAvailable:v28])
          {
            v31 = v27;
            emailAddresses = [v30 emailAddresses];
            v33 = [emailAddresses valueForKey:@"value"];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v34 = [v33 countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v57;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v57 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  lowercaseString = [*(*(&v56 + 1) + 8 * i) lowercaseString];
                  [v24 addObject:lowercaseString];
                }

                v35 = [v33 countByEnumeratingWithState:&v56 objects:v65 count:16];
              }

              while (v35);
            }

            v27 = v31;
            v28 = v52;
            v26 = v53;
          }

          if ([v30 isKeyAvailable:v55] && objc_msgSend(v30, "isKeyAvailable:", v51))
          {
            familyName = [v30 familyName];
            givenName = [v30 givenName];
            v41 = [familyName stringByAppendingString:givenName];
            [v50 addObject:v41];

            givenName2 = [v30 givenName];
            familyName2 = [v30 familyName];
            v44 = [givenName2 stringByAppendingString:familyName2];
            [v50 addObject:v44];
          }

          ++v29;
        }

        while (v29 != v26);
        v26 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v26);
    }

    v13 = v46;
    [(CADContactEventsPredicate *)v46 setContactEmailAddresses:v24];
    [(CADContactEventsPredicate *)v46 setContactNameComponents:v50];

    endDateCopy = v48;
    dateCopy = v49;
    contactsCopy = v47;
LABEL_31:
    v23 = v13;
    goto LABEL_32;
  }

  v21 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v15 = v21;
    v22 = objc_opt_class();
    v17 = NSStringFromClass(v22);
    *buf = 138412290;
    v68 = v17;
    v18 = "[%@] must be given non-nil 'startDate' and 'endDate'";
    v19 = v15;
    v20 = 12;
    goto LABEL_9;
  }

LABEL_10:
  v23 = 0;
LABEL_32:

  return v23;
}

- (CADContactEventsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CADContactEventsPredicate;
  v5 = [(EKPredicate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contactEmailAddresses"];
    [(CADContactEventsPredicate *)v5 setContactEmailAddresses:v11];

    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contactNameComponents"];
    [(CADContactEventsPredicate *)v5 setContactNameComponents:v12];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CADContactEventsPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v9 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  contactEmailAddresses = [(CADContactEventsPredicate *)self contactEmailAddresses];
  [coderCopy encodeObject:contactEmailAddresses forKey:@"contactEmailAddresses"];

  contactNameComponents = [(CADContactEventsPredicate *)self contactNameComponents];
  [coderCopy encodeObject:contactNameComponents forKey:@"contactNameComponents"];
}

- (id)predicateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  startDate = [(EKPredicate *)self startDate];
  v8 = [v3 stringFromDate:startDate];
  endDate = [(EKPredicate *)self endDate];
  v10 = [v3 stringFromDate:endDate];
  calendars = [(EKPredicate *)self calendars];
  v12 = [CADPredicate conciseCalendarList:calendars];
  v13 = [v4 stringWithFormat:@"[%@] start:%@ end:%@; cals:%@", v6, v8, v10, v12];;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
    goto LABEL_27;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    startDate = [(EKPredicate *)equalCopy startDate];
    startDate2 = [(EKPredicate *)self startDate];
    if (![startDate isEqual:startDate2])
    {
      v7 = 0;
LABEL_26:

      goto LABEL_27;
    }

    endDate = [(EKPredicate *)equalCopy endDate];
    endDate2 = [(EKPredicate *)self endDate];
    if (![endDate isEqual:endDate2])
    {
      v7 = 0;
LABEL_25:

      goto LABEL_26;
    }

    calendars = [(EKPredicate *)equalCopy calendars];
    calendars2 = [(EKPredicate *)self calendars];
    v32 = calendars;
    if (calendars != calendars2)
    {
      calendars = [(EKPredicate *)equalCopy calendars];
      calendars3 = [(EKPredicate *)self calendars];
      if (![calendars isEqual:calendars3])
      {
        v7 = 0;
        goto LABEL_23;
      }
    }

    contactEmailAddresses = [(CADContactEventsPredicate *)equalCopy contactEmailAddresses];
    contactEmailAddresses2 = [(CADContactEventsPredicate *)self contactEmailAddresses];
    v30 = contactEmailAddresses;
    v15 = contactEmailAddresses == contactEmailAddresses2;
    v16 = contactEmailAddresses2;
    if (v15)
    {
      v28 = calendars3;
      v29 = calendars;
    }

    else
    {
      contactEmailAddresses3 = [(CADContactEventsPredicate *)equalCopy contactEmailAddresses];
      contactEmailAddresses4 = [(CADContactEventsPredicate *)self contactEmailAddresses];
      v26 = contactEmailAddresses3;
      if (![contactEmailAddresses3 isEqual:?])
      {
        v7 = 0;
        v23 = v30;
        goto LABEL_21;
      }

      v28 = calendars3;
      v29 = calendars;
    }

    v27 = v16;
    contactNameComponents = [(CADContactEventsPredicate *)equalCopy contactNameComponents];
    contactNameComponents2 = [(CADContactEventsPredicate *)self contactNameComponents];
    v20 = contactNameComponents2;
    if (contactNameComponents == contactNameComponents2)
    {

      v7 = 1;
    }

    else
    {
      contactNameComponents3 = [(CADContactEventsPredicate *)equalCopy contactNameComponents];
      contactNameComponents4 = [(CADContactEventsPredicate *)self contactNameComponents];
      v7 = [contactNameComponents3 isEqual:contactNameComponents4];
    }

    calendars = v29;
    v23 = v30;
    v16 = v27;
    calendars3 = v28;
    if (v30 == v27)
    {
LABEL_22:

      if (v32 == calendars2)
      {
LABEL_24:

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_21:

    goto LABEL_22;
  }

  v7 = 0;
LABEL_27:

  return v7;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v39 = *MEMORY[0x277D85DE8];
  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  v7 = [startDate CalIsAfterDate:endDate];

  if (v7)
  {
    return MEMORY[0x277CBEBF8];
  }

  v9 = CalDatabaseCopyEventOccurrenceCache();
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v11 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v12 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v11, v12, 2, database);
  v14 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    startDate2 = [(EKPredicate *)self startDate];
    endDate2 = [(EKPredicate *)self endDate];
    *buf = 138412802;
    selfCopy = startDate2;
    v35 = 2112;
    v36 = endDate2;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_DEBUG, "Commencing contact event search with start date: [%@] end date: [%@] calendar object IDs: [%@]", buf, 0x20u);
  }

  startDate3 = [(EKPredicate *)self startDate];
  endDate3 = [(EKPredicate *)self endDate];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v21 = CalEventOccurrenceCacheCopyEventOccurrencesInDateRange();

  if (v21)
  {
    v29 = v12;
    Count = CFArrayGetCount(v21);
    v23 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      selfCopy = Count;
      _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_DEBUG, "Found [%ld] contact event candidates.  Proceeding to filter.", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
        CalEventOccurrenceGetEvent();
        v26 = CalCalendarItemCopyAttendees();
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __59__CADContactEventsPredicate_copyMatchingItemsWithDatabase___block_invoke;
        v30[3] = &unk_27851A1C0;
        v30[4] = self;
        v31 = v8;
        v32 = ValueAtIndex;
        [v26 enumerateObjectsUsingBlock:v30];
      }
    }

    CFRelease(v21);
    v12 = v29;
    if (!FilterFromRowIDs)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v28 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_DEBUG, "NULL occurrences array returned for [%@].", buf, 0xCu);
    }

    v8 = 0;
    if (!FilterFromRowIDs)
    {
      goto LABEL_13;
    }
  }

  CFRelease(FilterFromRowIDs);
LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

void __59__CADContactEventsPredicate_copyMatchingItemsWithDatabase___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = a2;
  v6 = MEMORY[0x22AA4B090]();
  v7 = [*(a1 + 32) contactEmailAddresses];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    [*(a1 + 40) addObject:*(a1 + 48)];
    *a4 = 1;
    goto LABEL_10;
  }

  v9 = MEMORY[0x22AA4B0A0](v20);
  v10 = MEMORY[0x22AA4B0B0](v20);
  v11 = v10;
  if (v9 && v10)
  {
    v12 = v9;
    v13 = v11;
    v14 = [*(a1 + 32) contactNameComponents];
    v15 = [v12 stringByAppendingString:v13];
    if ([v14 containsObject:v15])
    {
    }

    else
    {
      v16 = [*(a1 + 32) contactNameComponents];
      [v13 stringByAppendingString:v12];
      v17 = v19 = v12;
      v18 = [v16 containsObject:v17];

      v12 = v19;
      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    [*(a1 + 40) addObject:*(a1 + 48)];
    *a4 = 1;
    goto LABEL_15;
  }

  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  CFRelease(v9);
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

LABEL_10:
}

- (BOOL)_isCandidate:(void *)candidate allowAllDayEvent:(BOOL)event
{
  if (!candidate)
  {
    return 0;
  }

  if (!event && (CalEventIsAllDay() & 1) != 0 || CalCalendarItemGetStatus() == 3)
  {
    return 0;
  }

  if (CalCalendarItemHasAttendees())
  {
    v5 = CalCalendarItemCopyOrganizer();
    if (v5)
    {
      v6 = v5;
      if (CalOrganizerIsSelf())
      {
        CFRelease(v6);
      }

      else
      {
        ParticipationStatus = CalEventGetParticipationStatus();
        CFRelease(v6);
        if (ParticipationStatus == 2)
        {
          return 0;
        }
      }
    }
  }

  v8 = CalEventCopyStore();
  if (v8)
  {
    v9 = v8;
    if (CalStoreGetType() == 5)
    {
      v10 = CalCalendarItemCopyCalendar();
      if (v10)
      {
        v11 = v10;
        IsFoundInMailCalendar = CalCalendarIsFoundInMailCalendar();
        CFRelease(v11);
        CFRelease(v9);
        return (IsFoundInMailCalendar & 1) != 0;
      }
    }

    CFRelease(v9);
  }

  return 1;
}

@end