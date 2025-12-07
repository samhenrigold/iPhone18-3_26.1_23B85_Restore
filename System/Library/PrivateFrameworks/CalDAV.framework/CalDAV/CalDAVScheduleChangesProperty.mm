@interface CalDAVScheduleChangesProperty
+ (id)debugStringForType:(int)type;
+ (id)propertyWithItem:(id)item;
- (CalDAVScheduleChangesProperty)init;
- (NSArray)recurrenceIDs;
- (id)changeForOccurrence:(id)occurrence;
- (void)addOccurrenceChange:(id)change;
@end

@implementation CalDAVScheduleChangesProperty

- (CalDAVScheduleChangesProperty)init
{
  v6.receiver = self;
  v6.super_class = CalDAVScheduleChangesProperty;
  v2 = [(CalDAVScheduleChangesProperty *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CalDAVScheduleChangesProperty *)v2 setActionType:0];
    [(CalDAVScheduleChangesProperty *)v3 setDateStamp:0];
    [(CalDAVScheduleChangesProperty *)v3 setAttendeeAddress:0];
    [(CalDAVScheduleChangesProperty *)v3 setMasterChange:0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(CalDAVScheduleChangesProperty *)v3 setOccurrenceChanges:dictionary];
  }

  return v3;
}

+ (id)debugStringForType:(int)type
{
  if ((type - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_278D66DB0[type - 1];
  }
}

+ (id)propertyWithItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (!itemCopy)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v4 = objc_opt_new();
  dtstamp = [itemCopy dtstamp];
  payloadAsString = [dtstamp payloadAsString];

  if ([payloadAsString length])
  {
    [v4 setDateStamp:payloadAsString];
  }

  action = [itemCopy action];
  create = [action create];

  if (!create)
  {
    cancel = [action cancel];

    if (cancel)
    {
      [v4 setActionType:3];
      cancel2 = [action cancel];
    }

    else
    {
      reply = [action reply];

      if (reply)
      {
        [v4 setActionType:4];
        reply2 = [action reply];
        attendee = [reply2 attendee];
        payloadAsString2 = [attendee payloadAsString];
        trimWhiteSpace = [payloadAsString2 trimWhiteSpace];
        [v4 setAttendeeAddress:trimWhiteSpace];

        cancel2 = [action reply];
      }

      else
      {
        update = [action update];

        if (!update)
        {
          goto LABEL_22;
        }

        [v4 setActionType:2];
        cancel2 = [action update];
      }
    }

    v17 = cancel2;
    recurrences = [cancel2 recurrences];

    if (recurrences)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v19 = recurrences;
      v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [CalDAVOccurrenceChange changeWithItem:*(*(&v26 + 1) + 8 * i), v26];
            [v4 addOccurrenceChange:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v21);
      }
    }

    goto LABEL_22;
  }

  [v4 setActionType:1];
LABEL_22:

LABEL_23:

  return v4;
}

- (void)addOccurrenceChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    if ([changeCopy isMaster])
    {
      masterChange = [(CalDAVScheduleChangesProperty *)self masterChange];

      if (masterChange)
      {
        v8 = scheduleChangesLogHandle(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [CalDAVScheduleChangesProperty addOccurrenceChange:v8];
        }
      }

      [(CalDAVScheduleChangesProperty *)self setMasterChange:v5];
    }

    else
    {
      recurrenceID = [v5 recurrenceID];
      v10 = [recurrenceID ICSStringWithOptions:0];

      occurrenceChanges = [(CalDAVScheduleChangesProperty *)self occurrenceChanges];
      [occurrenceChanges setObject:v5 forKeyedSubscript:v10];
    }
  }
}

- (NSArray)recurrenceIDs
{
  occurrenceChanges = [(CalDAVScheduleChangesProperty *)self occurrenceChanges];
  allValues = [occurrenceChanges allValues];
  v4 = [allValues arrayByApplyingSelector:sel_recurrenceID];

  return v4;
}

- (id)changeForOccurrence:(id)occurrence
{
  if (occurrence)
  {
    v4 = [occurrence ICSStringWithOptions:0];
    occurrenceChanges = [(CalDAVScheduleChangesProperty *)self occurrenceChanges];
    masterChange = [occurrenceChanges objectForKeyedSubscript:v4];
  }

  else
  {
    masterChange = [(CalDAVScheduleChangesProperty *)self masterChange];
  }

  return masterChange;
}

@end