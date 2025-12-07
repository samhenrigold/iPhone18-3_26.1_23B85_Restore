@interface CADUpNextEventsPredicate
+ (BOOL)_occurrencePassesFilter:(CalEventOccurrence *)filter event:(void *)event;
+ (id)_descriptionForOccurrence:(CalEventOccurrence *)occurrence ofEvent:(void *)event;
- (BOOL)isEqual:(id)equal;
- (CADUpNextEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate;
- (CADUpNextEventsPredicate)initWithCoder:(id)coder;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADUpNextEventsPredicate

- (CADUpNextEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v22.receiver = self;
  v22.super_class = CADUpNextEventsPredicate;
  v10 = [(EKPredicate *)&v22 initWithCalendars:ds];
  if (!v10)
  {
    goto LABEL_12;
  }

  if (dateCopy && endDateCopy)
  {
    if ([dateCopy CalIsAfterDate:endDateCopy])
    {
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412802;
        v24 = v14;
        v25 = 2112;
        v26 = dateCopy;
        v27 = 2112;
        v28 = endDateCopy;
        v15 = "[%@] must be given a 'startDate' that occurs before the given 'endDate.'  startDate: [%@] endDate: [%@]";
        v16 = v12;
        v17 = 32;
LABEL_9:
        _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    [(EKPredicate *)v10 setStartDate:dateCopy];
    [(EKPredicate *)v10 setEndDate:endDateCopy];
LABEL_12:
    v20 = v10;
    goto LABEL_13;
  }

  v18 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v18;
    v19 = objc_opt_class();
    v14 = NSStringFromClass(v19);
    *buf = 138412290;
    v24 = v14;
    v15 = "[%@] must be given non-nil 'startDate' and 'endDate'";
    v16 = v12;
    v17 = 12;
    goto LABEL_9;
  }

LABEL_10:
  v20 = 0;
LABEL_13:

  return v20;
}

- (CADUpNextEventsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CADUpNextEventsPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    [coderCopy decodeDoubleForKey:@"startDateRestrictionThreshold"];
    [(CADUpNextEventsPredicate *)v5 setStartDateRestrictionThreshold:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADUpNextEventsPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [(CADUpNextEventsPredicate *)self startDateRestrictionThreshold];
  [coderCopy encodeDouble:@"startDateRestrictionThreshold" forKey:?];
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
    v17 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && ([(CADUpNextEventsPredicate *)equalCopy startDateRestrictionThreshold], v7 = v6, [(CADUpNextEventsPredicate *)self startDateRestrictionThreshold], vabdd_f64(v7, v8) < 2.22044605e-16))
    {
      startDate = [(EKPredicate *)equalCopy startDate];
      startDate2 = [(EKPredicate *)self startDate];
      if ([startDate isEqual:startDate2])
      {
        endDate = [(EKPredicate *)equalCopy endDate];
        endDate2 = [(EKPredicate *)self endDate];
        if ([endDate isEqual:endDate2])
        {
          calendars = [(EKPredicate *)equalCopy calendars];
          calendars2 = [(EKPredicate *)self calendars];
          if (calendars == calendars2)
          {
            v17 = 1;
          }

          else
          {
            calendars3 = [(EKPredicate *)equalCopy calendars];
            calendars4 = [(EKPredicate *)self calendars];
            v17 = [calendars3 isEqual:calendars4];
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v72 = *MEMORY[0x277D85DE8];
  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  v7 = [startDate CalIsAfterDate:endDate];

  if (v7)
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      startDate2 = [(EKPredicate *)self startDate];
      endDate2 = [(EKPredicate *)self endDate];
      *buf = 138412802;
      selfCopy2 = startDate2;
      v64 = 2112;
      v65 = endDate2;
      v66 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "Start date [%@] is after end date [%@].  Will not query for events for [%@]", buf, 0x20u);
    }

    return MEMORY[0x277CBEBF8];
  }

  v13 = CalDatabaseCopyEventOccurrenceCache();
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v15 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v16 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v15, v16, 2, database);
  v18 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v19 = v18;
    startDate3 = [(EKPredicate *)self startDate];
    endDate3 = [(EKPredicate *)self endDate];
    v22 = MEMORY[0x277CCABB0];
    [(CADUpNextEventsPredicate *)self startDateRestrictionThreshold];
    v23 = [v22 numberWithDouble:?];
    *buf = 138413314;
    selfCopy2 = startDate3;
    v64 = 2112;
    v65 = endDate3;
    v66 = 2112;
    selfCopy = v15;
    v68 = 2112;
    v69 = v16;
    v70 = 2112;
    v71 = v23;
    _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_DEBUG, "Commencing up next event search with start date: [%@] end date: [%@] calendar object IDs: [%@] restricted calendar row IDs: [%@] startDateRestrictionThreshold: [%@]", buf, 0x34u);
  }

  startDate4 = [(EKPredicate *)self startDate];
  endDate4 = [(EKPredicate *)self endDate];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v27 = CalEventOccurrenceCacheCopyEventOccurrencesInDateRange();

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = v28;
  if (!v27)
  {
    v50 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22430B000, v50, OS_LOG_TYPE_DEBUG, "NULL occurrences array returned for [%@].", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v60 = v28;
  v57 = v16;
  Count = CFArrayGetCount(v27);
  v30 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy2 = Count;
    _os_log_impl(&dword_22430B000, v30, OS_LOG_TYPE_DEBUG, "Found [%ld] up next event candidates.  Proceeding to sort and filter.", buf, 0xCu);
  }

  cf = v27;
  v56 = FilterFromRowIDs;
  v58 = v15;
  v59 = v13;
  v31 = [(__CFArray *)v27 sortedArrayUsingComparator:&__block_literal_global_4];
  calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  if (Count < 1)
  {
    v33 = 0;
    goto LABEL_38;
  }

  v61 = Count;
  v33 = 0;
  v34 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v31, v34);
    Event = CalEventOccurrenceGetEvent();
    v37 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v38 = v37;
      v39 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412290;
      selfCopy2 = v39;
      _os_log_impl(&dword_22430B000, v38, OS_LOG_TYPE_DEBUG, "Analyzing 'up next' candidate: [%@]", buf, 0xCu);
    }

    CalEventOccurrenceGetDate();
    v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v41 = [v40 dateByAddingTimeInterval:CalEventGetDuration()];
    if (![v41 CalIsBeforeDate:calSimulatedDateForNow])
    {
      break;
    }

    v42 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v43 = v42;
      v44 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412802;
      selfCopy2 = calSimulatedDateForNow;
      v64 = 2112;
      v65 = v41;
      v66 = 2112;
      selfCopy = v44;
      v45 = v43;
      v46 = "Rejected 'up next' candidate because it ended before 'now' at [%@].  End date: [%@].  Candidate: [%@]";
      v47 = 32;
LABEL_29:
      _os_log_impl(&dword_22430B000, v45, OS_LOG_TYPE_DEBUG, v46, buf, v47);
    }

LABEL_30:

    if (v61 == ++v34)
    {
      goto LABEL_38;
    }
  }

  if (!v33 || ([(CADUpNextEventsPredicate *)v33 isEqualToDate:v40]& 1) != 0)
  {
    if ([objc_opt_class() _occurrencePassesFilter:ValueAtIndex event:Event])
    {
      [v60 addObject:ValueAtIndex];
      if (!v33)
      {
        if ([v40 CalIsAfterOrSameAsDate:calSimulatedDateForNow])
        {
          v33 = v40;
        }

        else
        {
          v33 = 0;
        }
      }

      v49 = CADLogHandle;
      if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v43 = v49;
      v44 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412290;
      selfCopy2 = v44;
      v45 = v43;
      v46 = "Accepted 'up next' candidate: [%@]";
    }

    else
    {
      v48 = CADLogHandle;
      if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v43 = v48;
      v44 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412290;
      selfCopy2 = v44;
      v45 = v43;
      v46 = "Rejected 'up next' candidate because it didn't pass the filter.  Candidate: [%@]";
    }

    v47 = 12;
    goto LABEL_29;
  }

  v51 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v52 = v51;
    v53 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
    *buf = 138412546;
    selfCopy2 = v33;
    v64 = 2112;
    v65 = v53;
    _os_log_impl(&dword_22430B000, v52, OS_LOG_TYPE_DEBUG, "Rejected 'up next' candidate because its start date is not equal to the earliest start date on or after now.  Earliest date: [%@]  Candidate: [%@]", buf, 0x16u);
  }

LABEL_38:
  CFRelease(cf);

  v15 = v58;
  v13 = v59;
  FilterFromRowIDs = v56;
  v16 = v57;
  v12 = v60;
LABEL_39:
  if (FilterFromRowIDs)
  {
    CFRelease(FilterFromRowIDs);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

uint64_t __58__CADUpNextEventsPredicate_copyMatchingItemsWithDatabase___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  CalEventOccurrenceGetDate();
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = MEMORY[0x277CBEAA8];
  CalEventOccurrenceGetDate();
  v8 = v7;

  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:v8];
  v10 = [v5 compare:v9];

  return v10;
}

+ (BOOL)_occurrencePassesFilter:(CalEventOccurrence *)filter event:(void *)event
{
  v27 = *MEMORY[0x277D85DE8];
  if (event)
  {
    if (CalEventIsAllDay())
    {
      v7 = CADLogHandle;
      v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        v9 = v7;
        v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
        v25 = 138412290;
        selfCopy = v10;
        v11 = "Occurrence does not pass filter since it is an all-day event.  Occurrence: [%@]";
LABEL_10:
        _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEBUG, v11, &v25, 0xCu);

        goto LABEL_11;
      }
    }

    else
    {
      if (CalCalendarItemGetStatus() != 3)
      {
        if (CalCalendarItemHasAttendees())
        {
          v14 = CalCalendarItemCopyOrganizer();
          if (v14)
          {
            v15 = v14;
            if (CalOrganizerIsSelf())
            {
              CFRelease(v15);
            }

            else
            {
              ParticipationStatus = CalEventGetParticipationStatus();
              CFRelease(v15);
              if (ParticipationStatus == 2)
              {
                v17 = CADLogHandle;
                v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
                if (!v8)
                {
                  return v8;
                }

                v9 = v17;
                v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
                v25 = 138412290;
                selfCopy = v10;
                v11 = "Occurrence does not pass filter since it is a declined event.  Occurrence: [%@]";
                goto LABEL_10;
              }
            }
          }
        }

        v18 = CalEventCopyStore();
        if (v18)
        {
          v19 = v18;
          if (CalStoreGetType() == 5 && (v20 = CalCalendarItemCopyCalendar()) != 0)
          {
            v21 = v20;
            IsFoundInMailCalendar = CalCalendarIsFoundInMailCalendar();
            CFRelease(v21);
            CFRelease(v19);
            if ((IsFoundInMailCalendar & 1) == 0)
            {
              v23 = CADLogHandle;
              v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
              if (!v8)
              {
                return v8;
              }

              v9 = v23;
              v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
              v25 = 138412290;
              selfCopy = v10;
              v11 = "Occurrence does not pass filter since it is a birthday event.  Occurrence: [%@]";
              goto LABEL_10;
            }
          }

          else
          {
            CFRelease(v19);
          }
        }

        LOBYTE(v8) = 1;
        return v8;
      }

      v13 = CADLogHandle;
      v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        v9 = v13;
        v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
        v25 = 138412290;
        selfCopy = v10;
        v11 = "Occurrence does not pass filter since it is a cancelled event.  Occurrence: [%@]";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = CADLogHandle;
    v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      v25 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_ERROR, "NULL 'event' given.  Will not check to see if the event passes the filter for [%@]", &v25, 0xCu);
LABEL_11:
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

+ (id)_descriptionForOccurrence:(CalEventOccurrence *)occurrence ofEvent:(void *)event
{
  if (occurrence)
  {
    if (event)
    {
      v4 = CalCalendarItemCopySummary();
      v5 = MEMORY[0x277CBEAA8];
      CalEventOccurrenceGetDate();
      v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
      v7 = MEMORY[0x277CBEAA8];
      CalEventOccurrenceGetDate();
      [v7 dateWithTimeIntervalSinceReferenceDate:?];
      v8 = CalEventCopyURI();
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"summary: [%@], occurrence start date: [%@], URI: [%@]", v4, v6, v8];

      goto LABEL_10;
    }

    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "NULL 'event' given.  Will not find a description for the occurrence.";
      v12 = buf;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v11 = "NULL 'occurrence' given.  Will not find a description for the occurrence.";
      v12 = &v15;
LABEL_8:
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    }
  }

  v9 = &stru_2837B4630;
LABEL_10:

  return v9;
}

@end