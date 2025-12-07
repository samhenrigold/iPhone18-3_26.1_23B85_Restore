@interface CADEventPredicate
+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars;
+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode;
+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars;
- (BOOL)isEqual:(id)equal;
- (CADEventPredicate)initWithCoder:(id)coder;
- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode;
- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars;
- (id)concisePublicDescription;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)copyWithStartDate:(id)date endDate:(id)endDate;
- (id)defaultPropertiesToLoad;
- (id)generateDatesForEvent:(void *)event;
- (id)incrementalPredicatesToExpandResultsFromPredicate:(id)predicate filteringRequiredToRemoveEventsNoLongerMatched:(BOOL *)matched;
- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset;
- (id)predicateFormat;
- (id)relatedObjectPropertiesToLoad;
- (unint64_t)hash;
- (void)beginSignpostWithHandle:(id)handle signpostID:(unint64_t)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventPredicate

- (id)defaultPropertiesToLoad
{
  propertyLoadMode = [(CADEventPredicate *)self propertyLoadMode];
  if (propertyLoadMode == 2)
  {
    if (defaultPropertiesToLoad_onceToken != -1)
    {
      [CADEventPredicate defaultPropertiesToLoad];
    }

    v3 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  }

  else if (propertyLoadMode == 1)
  {
    v3 = CADEKPersistentEventDefaultPropertiesToLoad();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)relatedObjectPropertiesToLoad
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_2837C7108;
  v2 = *MEMORY[0x277CF73F0];
  v16[0] = *MEMORY[0x277CF73C8];
  v16[1] = v2;
  v3 = *MEMORY[0x277CF7400];
  v16[2] = *MEMORY[0x277CF71E8];
  v16[3] = v3;
  v4 = *MEMORY[0x277CF73F8];
  v16[4] = *MEMORY[0x277CF7418];
  v16[5] = v4;
  v5 = *MEMORY[0x277CF7410];
  v16[6] = *MEMORY[0x277CF7408];
  v16[7] = v5;
  v6 = *MEMORY[0x277CF71E0];
  v16[8] = *MEMORY[0x277CF71D0];
  v16[9] = v6;
  v7 = *MEMORY[0x277CF7420];
  v16[10] = *MEMORY[0x277CF71D8];
  v16[11] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:12];
  v18[0] = v8;
  v17[1] = &unk_2837C7120;
  v15 = *MEMORY[0x277CF73E8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v18[1] = v9;
  v17[2] = &unk_2837C7138;
  v10 = *MEMORY[0x277CF7388];
  v14[0] = *MEMORY[0x277CF73B8];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v18[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  return v12;
}

- (id)predicateFormat
{
  v3 = objc_opt_new();
  if ([(CADEventPredicate *)self excludeTimedEvents])
  {
    [v3 addObject:@"timed"];
  }

  if ([(CADEventPredicate *)self excludeAllDayEvents])
  {
    [v3 addObject:@"allday"];
  }

  if ([(CADEventPredicate *)self excludeDeclined])
  {
    [v3 addObject:@"declined"];
  }

  if ([(CADEventPredicate *)self excludeProposed])
  {
    [v3 addObject:@"proposed"];
  }

  if ([(CADEventPredicate *)self excludeDeclinedUnlessProposed])
  {
    [v3 addObject:@"declinedUnlessProposed"];
  }

  if ([(CADEventPredicate *)self excludeNoAttendeeEvents])
  {
    [v3 addObject:@"noAttendee"];
  }

  excludeNoLocationEvents = [(CADEventPredicate *)self excludeNoLocationEvents];
  if (excludeNoLocationEvents)
  {
    excludeNoLocationEvents = [v3 addObject:@"noLocation"];
  }

  v5 = CADEventPredicateDescriptionDateFormatter(excludeNoLocationEvents);
  v17 = MEMORY[0x277CCACA8];
  startDate = [(EKPredicate *)self startDate];
  v7 = [v5 stringFromDate:startDate];
  endDate = [(EKPredicate *)self endDate];
  v9 = [v5 stringFromDate:endDate];
  calendars = [(EKPredicate *)self calendars];
  v11 = [CADPredicate conciseCalendarList:calendars];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = v12;
  if (self->_randomize)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v17 stringWithFormat:@"CADEventPredicate start:%@ end:%@; cals:%@, exclusions:[%@], filterdOutTitles:[%@], limit:%ld, randomize:%@", v7, v9, v11, v12, self->_filteredOutTitles, self->_limit, v14];;

  return v15;
}

- (id)concisePublicDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"CADEventPredicate"];
  v4 = CADEventPredicateDescriptionDateFormatter(v3);
  startDate = [(EKPredicate *)self startDate];
  if (startDate)
  {
    v6 = [v4 stringFromDate:startDate];
    [v3 appendFormat:@"; start:%@", v6];
  }

  endDate = [(EKPredicate *)self endDate];
  if (endDate)
  {
    v8 = [v4 stringFromDate:endDate];
    [v3 appendFormat:@"; end:%@", v8];
  }

  calendars = [(EKPredicate *)self calendars];
  if (calendars)
  {
    v10 = [CADPredicate conciseCalendarList:calendars];
    [v3 appendFormat:@"; cals:%@", v10];
  }

  if (self->_excludeTimedEvents || self->_excludeAllDayEvents || self->_excludeDeclined || self->_excludeProposed || self->_excludeDeclinedUnlessProposed || self->_excludeNoAttendeeEvents || self->_excludeNoLocationEvents)
  {
    [v3 appendString:@"; exclusions:["];
    if (self->_excludeTimedEvents)
    {
      [v3 appendString:{@"timed, "}];
    }

    if (self->_excludeAllDayEvents)
    {
      [v3 appendString:{@"allday, "}];
    }

    if (self->_excludeDeclined)
    {
      [v3 appendString:{@"declined, "}];
    }

    if (self->_excludeProposed)
    {
      [v3 appendString:{@"proposed, "}];
    }

    if (self->_excludeDeclinedUnlessProposed)
    {
      [v3 appendString:{@"declinedUnlessProposed, "}];
    }

    if (self->_excludeNoAttendeeEvents)
    {
      [v3 appendString:{@"noAttendee, "}];
    }

    if (self->_excludeNoLocationEvents)
    {
      [v3 appendString:{@"noLocation, "}];
    }

    [v3 replaceCharactersInRange:objc_msgSend(v3 withString:{"length") - 1, 1, @"]"}];
  }

  filteredOutTitles = self->_filteredOutTitles;
  if (filteredOutTitles)
  {
    [v3 appendFormat:@"; filteredOutTitles:[%lu]", -[NSSet count](filteredOutTitles, "count")];
  }

  if (self->_limit)
  {
    [v3 appendFormat:@"; limit:%ld", self->_limit];
  }

  if (self->_randomize)
  {
    [v3 appendString:@"; randomize:YES"];
  }

  return v3;
}

+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars
{
  calendarsCopy = calendars;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy calendars:calendarsCopy];

  return v13;
}

+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode
{
  calendarsCopy = calendars;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v15 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy calendars:calendarsCopy propertyLoadMode:mode];

  return v15;
}

+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars
{
  calendarsCopy = calendars;
  dCopy = d;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v16 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy eventUUID:dCopy calendars:calendarsCopy];

  return v16;
}

- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars
{
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = CADEventPredicate;
  v16 = [(EKPredicate *)&v22 initWithCalendars:calendars];
  v17 = v16;
  if (!v16)
  {
LABEL_9:
    v19 = v17;
    goto LABEL_10;
  }

  if (dateCopy && endDateCopy)
  {
    [(EKPredicate *)v16 setStartDate:dateCopy];
    [(EKPredicate *)v17 setEndDate:endDateCopy];
    objc_storeStrong(&v17->super._uuid, d);
    if (zoneCopy)
    {
      v18 = [zoneCopy copy];
    }

    else
    {
      v18 = CalCopyTimeZone();
    }

    v20 = v18;
    objc_storeStrong(&v17->super._timeZone, v18);

    v17->_excludeSkippedReminders = 1;
    goto LABEL_9;
  }

  NSLog(&cfstr_WarningCadeven.isa);
  v19 = 0;
LABEL_10:

  return v19;
}

- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode
{
  result = [(CADEventPredicate *)self initWithStartDate:date endDate:endDate timeZone:zone calendars:calendars];
  if (result)
  {
    result->_propertyLoadMode = mode;
  }

  return result;
}

- (CADEventPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CADEventPredicate;
  v5 = [(EKPredicate *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->super._uuid;
    v5->super._uuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v10;

    v5->_propertyLoadMode = [coderCopy decodeIntegerForKey:@"propertyLoadMode"];
    v5->_shouldLoadProposedTimesInRange = [coderCopy decodeBoolForKey:@"shouldLoadProposedTimesInRange"];
    v5->_excludeTimedEvents = [coderCopy decodeBoolForKey:@"excludeTimedEvents"];
    v5->_excludeAllDayEvents = [coderCopy decodeBoolForKey:@"excludeAllDayEvents"];
    v5->_excludeDeclined = [coderCopy decodeBoolForKey:@"excludeDeclined"];
    v5->_excludeProposed = [coderCopy decodeBoolForKey:@"excludeProposed"];
    v5->_excludeDeclinedUnlessProposed = [coderCopy decodeBoolForKey:@"excludeDeclinedUnlessProposed"];
    v5->_excludeNoAttendeeEvents = [coderCopy decodeBoolForKey:@"excludeNoAttendeeEvents"];
    v5->_excludeNoLocationEvents = [coderCopy decodeBoolForKey:@"excludeNoLocationEvents"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filteredOutTitles"];
    filteredOutTitles = v5->_filteredOutTitles;
    v5->_filteredOutTitles = v12;

    v5->_randomize = [coderCopy decodeBoolForKey:@"randomize"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADEventPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [coderCopy encodeObject:self->super._uuid forKey:@"UUID"];
  [coderCopy encodeObject:self->super._timeZone forKey:@"timeZone"];
  [coderCopy encodeInteger:-[CADEventPredicate propertyLoadMode](self forKey:{"propertyLoadMode"), @"propertyLoadMode"}];
  [coderCopy encodeBool:self->_shouldLoadProposedTimesInRange forKey:@"shouldLoadProposedTimesInRange"];
  [coderCopy encodeBool:self->_excludeTimedEvents forKey:@"excludeTimedEvents"];
  [coderCopy encodeBool:self->_excludeAllDayEvents forKey:@"excludeAllDayEvents"];
  [coderCopy encodeBool:self->_excludeDeclined forKey:@"excludeDeclined"];
  [coderCopy encodeBool:self->_excludeProposed forKey:@"excludeProposed"];
  [coderCopy encodeBool:self->_excludeDeclinedUnlessProposed forKey:@"excludeDeclinedUnlessProposed"];
  [coderCopy encodeBool:self->_excludeNoAttendeeEvents forKey:@"excludeNoAttendeeEvents"];
  [coderCopy encodeBool:self->_excludeNoLocationEvents forKey:@"excludeNoLocationEvents"];
  [coderCopy encodeObject:self->_filteredOutTitles forKey:@"filteredOutTitles"];
  [coderCopy encodeBool:self->_randomize forKey:@"randomize"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
}

void __44__CADEventPredicate_defaultPropertiesToLoad__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = CADEKPersistentEventDefaultPropertiesToLoad();
  v1 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  defaultPropertiesToLoad_extendedPropertiesToLoad = v0;

  v2 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  v3 = *MEMORY[0x277CF7260];
  v7[0] = *MEMORY[0x277CF71F8];
  v7[1] = v3;
  v7[2] = *MEMORY[0x277CF7300];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];
  v6 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  defaultPropertiesToLoad_extendedPropertiesToLoad = v5;
}

- (id)copyWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [CADEventPredicate alloc];
  timeZone = self->super._timeZone;
  calendars = [(EKPredicate *)self calendars];
  v11 = [(CADEventPredicate *)v8 initWithStartDate:dateCopy endDate:endDateCopy timeZone:timeZone calendars:calendars];

  title = [(EKPredicate *)self title];
  [v11 setTitle:title];

  objc_storeStrong((v11 + 16), self->super._uuid);
  [v11 setExcludeAllDayEvents:{-[CADEventPredicate excludeAllDayEvents](self, "excludeAllDayEvents")}];
  [v11 setExcludeDeclined:{-[CADEventPredicate excludeDeclined](self, "excludeDeclined")}];
  [v11 setExcludeProposed:{-[CADEventPredicate excludeProposed](self, "excludeProposed")}];
  [v11 setExcludeTimedEvents:{-[CADEventPredicate excludeTimedEvents](self, "excludeTimedEvents")}];
  [v11 setExcludeSkippedReminders:{-[CADEventPredicate excludeSkippedReminders](self, "excludeSkippedReminders")}];
  [v11 setExcludeNoAttendeeEvents:{-[CADEventPredicate excludeNoAttendeeEvents](self, "excludeNoAttendeeEvents")}];
  [v11 setExcludeNoLocationEvents:{-[CADEventPredicate excludeNoLocationEvents](self, "excludeNoLocationEvents")}];
  [v11 setExcludeDeclinedUnlessProposed:{-[CADEventPredicate excludeDeclinedUnlessProposed](self, "excludeDeclinedUnlessProposed")}];
  filteredOutTitles = [(CADEventPredicate *)self filteredOutTitles];
  [v11 setFilteredOutTitles:filteredOutTitles];

  *(v11 + 120) = self->_propertyLoadMode;
  return v11;
}

- (void)beginSignpostWithHandle:(id)handle signpostID:(unint64_t)d
{
  v15 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = handleCopy;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(handleCopy))
  {
    v8 = objc_opt_class();
    v9 = v8;
    predicateFormat = [(CADEventPredicate *)self predicateFormat];
    v11 = 138412546;
    v12 = v8;
    v13 = 2114;
    v14 = predicateFormat;
    _os_signpost_emit_with_name_impl(&dword_22430B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, d, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%{public}@", &v11, 0x16u);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_41;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    startDate = [(EKPredicate *)equalCopy startDate];
    startDate2 = [(EKPredicate *)self startDate];
    if (![startDate isEqual:startDate2])
    {
      v6 = 0;
LABEL_40:

      goto LABEL_41;
    }

    endDate = [(EKPredicate *)equalCopy endDate];
    endDate2 = [(EKPredicate *)self endDate];
    if (![endDate isEqual:endDate2])
    {
      v6 = 0;
LABEL_39:

      goto LABEL_40;
    }

    timeZone = [(CADEventPredicate *)equalCopy timeZone];
    timeZone2 = [(CADEventPredicate *)self timeZone];
    v49 = timeZone;
    if (![timeZone isEquivalentTo:timeZone2])
    {
      v6 = 0;
LABEL_38:

      goto LABEL_39;
    }

    eventUUID = [(CADEventPredicate *)equalCopy eventUUID];
    eventUUID2 = [(CADEventPredicate *)self eventUUID];
    if (eventUUID != eventUUID2)
    {
      eventUUID3 = [(CADEventPredicate *)equalCopy eventUUID];
      eventUUID4 = [(CADEventPredicate *)self eventUUID];
      v45 = eventUUID3;
      if (![eventUUID3 isEqual:?])
      {
        v6 = 0;
        goto LABEL_36;
      }
    }

    calendars = [(EKPredicate *)equalCopy calendars];
    calendars2 = [(EKPredicate *)self calendars];
    v46 = calendars;
    v47 = eventUUID;
    v17 = calendars == calendars2;
    v18 = calendars2;
    if (!v17)
    {
      calendars3 = [(EKPredicate *)equalCopy calendars];
      calendars4 = [(EKPredicate *)self calendars];
      v41 = calendars3;
      v21 = calendars3;
      timeZone = calendars4;
      if (![v21 isEqual:calendars4])
      {
        v6 = 0;
        v22 = v46;
LABEL_31:

        goto LABEL_35;
      }
    }

    v42 = v18;
    propertyLoadMode = [(CADEventPredicate *)equalCopy propertyLoadMode];
    if (propertyLoadMode == [(CADEventPredicate *)self propertyLoadMode]&& (v24 = [(CADEventPredicate *)equalCopy excludeTimedEvents], v24 == [(CADEventPredicate *)self excludeTimedEvents]) && (v25 = [(CADEventPredicate *)equalCopy excludeAllDayEvents], v25 == [(CADEventPredicate *)self excludeAllDayEvents]) && (v26 = [(CADEventPredicate *)equalCopy excludeDeclined], v26 == [(CADEventPredicate *)self excludeDeclined]) && (v27 = [(CADEventPredicate *)equalCopy excludeProposed], v27 == [(CADEventPredicate *)self excludeProposed]) && (v28 = [(CADEventPredicate *)equalCopy excludeDeclinedUnlessProposed], v28 == [(CADEventPredicate *)self excludeDeclinedUnlessProposed]) && (v29 = [(CADEventPredicate *)equalCopy excludeNoAttendeeEvents], v29 == [(CADEventPredicate *)self excludeNoAttendeeEvents]) && (v30 = [(CADEventPredicate *)equalCopy excludeNoLocationEvents], v30 == [(CADEventPredicate *)self excludeNoLocationEvents]) && (v31 = [(CADEventPredicate *)equalCopy randomize], v31 == [(CADEventPredicate *)self randomize]) && (v32 = [(CADEventPredicate *)equalCopy limit], v32 == [(CADEventPredicate *)self limit]))
    {
      v40 = timeZone;
      v43 = timeZone2;
      filteredOutTitles = [(CADEventPredicate *)equalCopy filteredOutTitles];
      filteredOutTitles2 = [(CADEventPredicate *)self filteredOutTitles];
      v35 = filteredOutTitles2;
      if (filteredOutTitles == filteredOutTitles2)
      {

        v6 = 1;
        v38 = 1;
      }

      else
      {
        filteredOutTitles3 = [(CADEventPredicate *)equalCopy filteredOutTitles];
        filteredOutTitles4 = [(CADEventPredicate *)self filteredOutTitles];
        v6 = [filteredOutTitles3 isEqualToSet:filteredOutTitles4];

        v38 = v6;
      }

      v22 = v46;
      v18 = v42;
      timeZone2 = v43;
      timeZone = v40;
      if (v46 != v42)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = 0;
      v38 = 0;
      v22 = v46;
      if (v46 != v18)
      {
        goto LABEL_31;
      }
    }

    v6 = v38;
LABEL_35:

    eventUUID = v47;
    if (v47 == eventUUID2)
    {
LABEL_37:

      goto LABEL_38;
    }

LABEL_36:

    goto LABEL_37;
  }

  v6 = 0;
LABEL_41:

  return v6;
}

- (unint64_t)hash
{
  startDate = [(EKPredicate *)self startDate];
  v4 = [startDate hash];
  endDate = [(EKPredicate *)self endDate];
  v6 = 17 * [endDate hash] + 13 * v4;
  v7 = v6 + 23 * [(NSTimeZone *)self->super._timeZone hash];
  v8 = v7 + 29 * [(NSString *)self->super._uuid hash];
  if (self->_shouldLoadProposedTimesInRange)
  {
    v9 = 31;
  }

  else
  {
    v9 = 0;
  }

  return v8 + v9;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v51 = *MEMORY[0x277D85DE8];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v6 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v7 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v6, v7, 2, database);
  if (FilterFromRowIDs)
  {
    v9 = FilterFromRowIDs;
    startDate = [(EKPredicate *)self startDate];
    endDate = [(EKPredicate *)self endDate];
    timeZone = [(CADEventPredicate *)self timeZone];
    defaultTimeZone = timeZone;
    if (!timeZone)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    }

    [(CADEventPredicate *)self shouldLoadProposedTimesInRange];
    v14 = CalDatabaseCopyEventOccurrencesInDateRangeEx();
    if (!timeZone)
    {
    }

    if (!v14)
    {
      v16 = 0;
      v24 = 0;
LABEL_52:
      CFRelease(v9);
      goto LABEL_53;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v16 = Mutable;
    if (Mutable)
    {
      theArray = Mutable;
      v43 = v7;
      Count = CFArrayGetCount(v14);
      v18 = objc_opt_new();
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithLong:i];
          [v18 addObject:v20];
        }
      }

      v42 = v9;
      v44 = v6;
      if (self->_randomize)
      {
        v21 = [v18 count];
        if (v21 >= 2)
        {
          v22 = v21;
          v23 = 0;
          do
          {
            [v18 exchangeObjectAtIndex:v23 withObjectAtIndex:v23 + arc4random_uniform(v22)];
            ++v23;
            --v22;
          }

          while (v22 != 1);
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = v18;
      v25 = [v24 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v47;
        v28 = *MEMORY[0x277CF78F0];
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(v24);
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v14, [*(*(&v46 + 1) + 8 * j) longValue]);
            v31 = CFGetTypeID(ValueAtIndex);
            if (v31 == CalEventOccurrenceGetTypeID())
            {
              CalEventOccurrenceGetEvent();
              if (!self->super._uuid || (v32 = CalEventCopyUniqueIdentifier(), v33 = [v32 isEqualToString:self->super._uuid], v32, v33))
              {
                if ((!self->_excludeTimedEvents || CalEventIsAllDay()) && (!self->_excludeAllDayEvents || (CalEventIsAllDay() & 1) == 0) && (!self->_excludeNoAttendeeEvents || CalCalendarItemHasAttendees()) && (!self->_excludeNoLocationEvents || CalCalendarItemHasLocation()))
                {
                  v34 = CalCalendarItemCopySummary();
                  if (![(NSSet *)self->_filteredOutTitles containsObject:v34])
                  {
                    CalEventGetProposedStartDate();
                    if (v35 == v28)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      v36 = v35;
                      CalEventOccurrenceGetDate();
                      v38 = vabdd_f64(v37, v36) < 2.22044605e-16;
                    }

                    if ((CalEventGetParticipationStatus() != 2 || (v38 || !self->_excludeDeclinedUnlessProposed) && !self->_excludeDeclined) && (!self->_excludeProposed || !v38))
                    {
                      CFArrayAppendValue(theArray, ValueAtIndex);
                      if (self->_limit >= 1 && self->_limit == CFArrayGetCount(theArray))
                      {

                        goto LABEL_49;
                      }
                    }
                  }
                }
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_49:

      v16 = theArray;
      v39 = theArray;
      v7 = v43;
      v6 = v44;
      v9 = v42;
    }

    else
    {
      v24 = 0;
    }

    CFRelease(v9);
    CFRelease(v14);
    if (v16)
    {
      v9 = v16;
      goto LABEL_52;
    }
  }

  else
  {
    v16 = 0;
    v24 = 0;
  }

LABEL_53:
  v40 = v16;

  return v40;
}

- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset
{
  v68 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  rangeCopy = range;
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  calendars = [(EKPredicate *)self calendars];
  v15 = [calendars count];

  if (v15)
  {
    v16 = CalCalendarItemCopyCalendar();
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:CalCalendarGetUID()];
    CFRelease(v16);
    v18 = [(EKPredicate *)self calendarRowIDSetForDatabaseID:AuxilliaryDatabaseID];
    if (![v18 containsObject:v17])
    {
      goto LABEL_7;
    }

    v19 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
    v20 = v19;
    if (v19 && ([v19 containsObject:v17] & 1) != 0)
    {

LABEL_7:
LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }
  }

  if (self->super._uuid)
  {
    v21 = CalEventCopyUniqueIdentifier();
    v22 = [v21 isEqualToString:self->super._uuid];

    if (!v22)
    {
      goto LABEL_16;
    }
  }

  IsAllDay = CalEventIsAllDay();
  if (self->_excludeTimedEvents && IsAllDay == 0)
  {
    goto LABEL_16;
  }

  v25 = IsAllDay;
  if ((self->_excludeAllDayEvents & IsAllDay & 1) != 0 || self->_excludeNoAttendeeEvents && !CalCalendarItemHasAttendees())
  {
    goto LABEL_16;
  }

  if (self->_excludeNoLocationEvents && !CalCalendarItemHasLocation())
  {
    goto LABEL_16;
  }

  if (self->_filteredOutTitles)
  {
    v27 = CalCalendarItemCopySummary();
    v28 = [(NSSet *)self->_filteredOutTitles containsObject:v27];

    if (v28)
    {
      goto LABEL_16;
    }
  }

  CalEventGetProposedStartDate();
  if (v29 == *MEMORY[0x277CF78F0])
  {
    v30 = 0;
  }

  else
  {
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  if (!self->_excludeDeclined && (!self->_excludeDeclinedUnlessProposed || v30) || CalEventGetParticipationStatus() != 2)
  {
    if (rangeCopy)
    {
      startDate = [(EKPredicate *)self startDate];
      startDate2 = [rangeCopy startDate];
      if ([startDate CalIsBeforeDate:startDate2])
      {

LABEL_38:
        v16 = [(CADEventPredicate *)self generateDatesForEvent:event];
        goto LABEL_70;
      }

      endDate = [(EKPredicate *)self endDate];
      endDate2 = [rangeCopy endDate];
      v61 = [endDate CalIsAfterDate:endDate2];

      if (v61)
      {
        goto LABEL_38;
      }
    }

    Duration = CalEventGetDuration();
    v36 = objc_opt_new();
    [v36 setSecond:-Duration];
    if (v25)
    {
      v37 = (Duration + 1.0) / *MEMORY[0x277CF7750];
      v38 = -v37;
      v39 = v37 <= 0.0;
      v40 = -0.0;
      if (!v39)
      {
        v40 = v38;
      }

      [v36 setDay:v40];
      [v36 setSecond:1];
    }

    started = CalEventCopyStartTimeZone();
    if (!started)
    {
      started = self->super._timeZone;
    }

    startDate3 = [(EKPredicate *)self startDate];
    v60 = started;
    v43 = [MEMORY[0x277CBEA80] CalGregorianCalendarForTimeZone:started];
    v62 = v36;
    v44 = [startDate3 CalDateByComponentwiseAddingComponents:v36 inCalendar:v43];

    v59 = v44;
    [v44 timeIntervalSinceReferenceDate];
    v46 = v45;
    endDate3 = [(EKPredicate *)self endDate];
    [endDate3 timeIntervalSinceReferenceDate];
    v49 = v48;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v16 = datesCopy;
    v50 = [v16 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = 0;
      v53 = *v64;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(v16);
          }

          v55 = *(*(&v63 + 1) + 8 * i);
          [v55 timeIntervalSinceReferenceDate];
          if (v56 >= v46 && v56 < v49)
          {
            v58 = !self->_excludeProposed || v30 == 0;
            if (v58 || ([v55 isEqualToDate:v30] & 1) == 0)
            {
              if (!v52)
              {
                if ([v16 count] < 2)
                {
                  goto LABEL_69;
                }

                v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v52 addObject:v55];
            }
          }
        }

        v51 = [v16 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v51);
    }

    else
    {
      v52 = 0;
    }

    v16 = v52;
LABEL_69:

    goto LABEL_70;
  }

  v16 = 0;
LABEL_70:

LABEL_17:

  return v16;
}

- (id)generateDatesForEvent:(void *)event
{
  started = CalEventCopyStartTimeZone();
  if (!started)
  {
    started = self->super._timeZone;
  }

  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  v7 = CalEventCopyOccurrenceDatesInDateRange();

  return v7;
}

- (id)incrementalPredicatesToExpandResultsFromPredicate:(id)predicate filteringRequiredToRemoveEventsNoLongerMatched:(BOOL *)matched
{
  v43 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    v8 = 0;
    goto LABEL_39;
  }

  v9 = predicateCopy;
  calendars = [(EKPredicate *)self calendars];
  calendars2 = [v9 calendars];
  v12 = [calendars count];
  v13 = [calendars2 count];
  if (v12 || !v13)
  {
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 != 0;
    }

    if (v12 && v13)
    {
      matchedCopy = matched;
      startDate = [MEMORY[0x277CBEB98] setWithArray:calendars];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v36 = calendars2;
      v16 = calendars2;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v39;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v19 += [startDate containsObject:*(*(&v38 + 1) + 8 * i)] ^ 1;
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v22 = [calendars count] + v19;
      if (v22 != [v16 count])
      {
        v8 = 0;
        calendars2 = v36;
LABEL_43:

        goto LABEL_38;
      }

      v14 = v19 > 0;

      matched = matchedCopy;
      calendars2 = v36;
    }

    uuid = self->super._uuid;
    if ((!(uuid | *(v9 + 2)) || [(NSString *)uuid isEqual:?]) && self->_excludeTimedEvents == v9[90] && self->_excludeAllDayEvents == v9[89] && self->_excludeNoAttendeeEvents == v9[94] && self->_excludeNoLocationEvents == v9[95])
    {
      filteredOutTitles = self->_filteredOutTitles;
      if ((!(filteredOutTitles | *(v9 + 13)) || [(NSSet *)filteredOutTitles isEqual:?]) && self->_excludeDeclined == v9[91] && self->_excludeDeclinedUnlessProposed == v9[93])
      {
        timeZone = self->super._timeZone;
        if (!(timeZone | *(v9 + 3)) || [(NSTimeZone *)timeZone isEqual:?])
        {
          startDate = [(EKPredicate *)self startDate];
          endDate = [(EKPredicate *)self endDate];
          startDate2 = [v9 startDate];
          endDate2 = [v9 endDate];
          v32 = startDate2;
          v33 = endDate;
          if ([endDate CalIsBeforeOrSameAsDate:startDate2] & 1) != 0 || (objc_msgSend(endDate2, "CalIsBeforeOrSameAsDate:", startDate))
          {
            v8 = 0;
            v28 = endDate2;
          }

          else
          {
            matchedCopy2 = matched;
            v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
            if ([startDate isBeforeDate:startDate2])
            {
              v30 = [(CADEventPredicate *)self copyWithStartDate:startDate endDate:startDate2];
              [v8 addObject:v30];
            }

            else
            {
              v14 |= [startDate isAfterDate:startDate2];
            }

            v28 = endDate2;
            if ([v33 isAfterDate:endDate2])
            {
              v31 = [(CADEventPredicate *)self copyWithStartDate:endDate2 endDate:v33];
              [v8 addObject:v31];
            }

            else
            {
              LOBYTE(v14) = [v33 isBeforeDate:endDate2] | v14;
            }

            if (matchedCopy2)
            {
              *matchedCopy2 = v14 & 1;
            }
          }

          goto LABEL_43;
        }
      }
    }
  }

  v8 = 0;
LABEL_38:

LABEL_39:

  return v8;
}

@end