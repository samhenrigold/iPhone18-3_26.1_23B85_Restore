@interface NEKICSWrapper
+ (id)wrapperForChangeType:(int)type calendarItem:(id)item needsInvite:(id)invite eventStore:(id)store;
+ (id)wrapperForChangeType:(int)type reminder:(id)reminder oldListIdentifier:(id)identifier store:(id)store;
+ (void)setAllPropertiesForItem:(id)item identifier:(id)identifier wrapper:(id)wrapper needsInvite:(id)invite eventStore:(id)store calendar:(id)calendar;
+ (void)setAllPropertiesForReminder:(id)reminder identifier:(id)identifier wrapper:(id)wrapper store:(id)store list:(id)list oldListIdentifier:(id)listIdentifier;
+ (void)setMinimalPropertiesForItem:(id)item identifier:(id)identifier wrapper:(id)wrapper;
+ (void)setMinimalPropertiesForReminder:(id)reminder identifier:(id)identifier wrapper:(id)wrapper;
+ (void)setPropertiesForWrapper:(id)wrapper withCalendarItems:(id)items needsInvite:(id)invite sendAllProperties:(BOOL)properties eventStore:(id)store calendar:(id)calendar originalEvent:(id)event;
+ (void)setPropertiesForWrapper:(id)wrapper withReminders:(id)reminders oldListIdentifier:(id)identifier sendAllProperties:(BOOL)properties store:(id)store list:(id)list;
- (BOOL)attendeeCommentForIdentifier:(id)identifier;
- (BOOL)attendeeStatusFlagForIdentifier:(id)identifier;
- (BOOL)dateChangedForIdentifier:(id)identifier;
- (BOOL)hasPropertiesForIdentifier:(id)identifier;
- (BOOL)locationChangedForIdentifier:(id)identifier;
- (BOOL)timeChangedForIdentifier:(id)identifier;
- (BOOL)titleChangedForIdentifier:(id)identifier;
- (NEKICSWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType;
- (NSData)ICSData;
- (NSDictionary)startDateMap;
- (id)ICSWrapperMetadata;
- (id)description;
- (id)externalIDForIdentifier:(id)identifier;
- (id)invitationStatusForIdentifier:(id)identifier;
- (id)locationPredictionStateForIdentifier:(id)identifier;
- (id)objectIdentifier;
- (id)properInvitationStatusForIdentifier:(id)identifier;
- (id)selfAttendeeEmailForIdentifier:(id)identifier;
- (id)selfAttendeeUUIDForIdentifier:(id)identifier;
- (id)selfOrganizerEmailForIdentifier:(id)identifier;
- (id)selfOrganizerUUIDForIdentifier:(id)identifier;
- (id)settablePropertiesForCalendarItemIdentifier:(id)identifier;
- (id)startDateForIdentifier:(id)identifier;
- (int64_t)attendeeStatusForIdentifier:(id)identifier;
- (int64_t)objectTypeForCalendarItemWithIdentifier:(id)identifier;
- (unint64_t)entityTypeForCalendarItemWithIdentifier:(id)identifier;
- (void)enumerateCalendarItemIdentifiersUsingBlock:(id)block;
- (void)setAttendeeComment:(BOOL)comment forIdentifier:(id)identifier;
- (void)setAttendeeStatus:(int64_t)status forIdentifier:(id)identifier;
- (void)setAttendeeStatusFlag:(BOOL)flag forIdentifier:(id)identifier;
- (void)setDateChanged:(BOOL)changed forIdentifier:(id)identifier;
- (void)setExternalID:(id)d forIdentifier:(id)identifier;
- (void)setICSData:(id)data;
- (void)setInvitationStatus:(unint64_t)status forIdentifier:(id)identifier;
- (void)setLocationChanged:(BOOL)changed forIdentifier:(id)identifier;
- (void)setLocationPredictionState:(int64_t)state forIdentifier:(id)identifier;
- (void)setMetadata:(id)metadata forCalendarItemIdentifier:(id)identifier;
- (void)setProperInvitationStatus:(unint64_t)status forIdentifier:(id)identifier;
- (void)setSelfAttendeeEmail:(id)email forIdentifier:(id)identifier;
- (void)setSelfAttendeeUUID:(id)d forIdentifier:(id)identifier;
- (void)setSelfOrganizerEmail:(id)email forIdentifier:(id)identifier;
- (void)setSelfOrganizerUUID:(id)d forIdentifier:(id)identifier;
- (void)setStartDate:(id)date forIdentifier:(id)identifier;
- (void)setTimeChanged:(BOOL)changed forIdentifier:(id)identifier;
- (void)setTitleChanged:(BOOL)changed forIdentifier:(id)identifier;
@end

@implementation NEKICSWrapper

- (id)ICSWrapperMetadata
{
  properties = [(NEKICSWrapper *)self properties];
  allValues = [properties allValues];

  return allValues;
}

- (NEKICSWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType
{
  v11.receiver = self;
  v11.super_class = NEKICSWrapper;
  v4 = [(NEKWrapper *)&v11 initWithStoreType:type nekChangeType:*&changeType];
  if (v4)
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    syncId = v4->_syncId;
    v4->_syncId = uUIDString;

    v8 = objc_alloc_init(NSMutableDictionary);
    properties = v4->_properties;
    v4->_properties = v8;
  }

  return v4;
}

- (NSData)ICSData
{
  if (self->_zICSData)
  {
    nEKFluff = [(NSData *)self->_zICSData NEKFluff];
  }

  else
  {
    rICSData = self->_rICSData;
    if (rICSData)
    {
      nEKFluff = rICSData;
    }

    else
    {
      nEKFluff = 0;
    }
  }

  return nEKFluff;
}

- (void)setICSData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v12[0] = 67109120;
      v12[1] = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting ICS, len:%d", v12, 8u);
    }

    if ([dataCopy length] < 0x800)
    {
      zICSData = self->_zICSData;
      self->_zICSData = 0;

      v11 = [dataCopy copy];
      rICSData = self->_rICSData;
      self->_rICSData = v11;
      goto LABEL_9;
    }

    nEKSqueeze = [dataCopy NEKSqueeze];
    v8 = self->_zICSData;
    self->_zICSData = nEKSqueeze;
  }

  else
  {
    v8 = self->_zICSData;
    self->_zICSData = 0;
  }

  rICSData = self->_rICSData;
  self->_rICSData = 0;
LABEL_9:
}

- (id)objectIdentifier
{
  syncId = self->_syncId;
  if (syncId)
  {
    v3 = syncId;
  }

  else
  {
    v3 = +[NSUUID eks_garbageUUID];
  }

  return v3;
}

- (id)settablePropertiesForCalendarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_properties objectForKey:identifierCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(NEKICSWrapperMetadata);
    [(NSMutableDictionary *)self->_properties setObject:v5 forKey:identifierCopy];
  }

  return v5;
}

- (BOOL)hasPropertiesForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)setMetadata:(id)metadata forCalendarItemIdentifier:(id)identifier
{
  if (metadata)
  {
    if (identifier)
    {
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }
  }
}

- (NSDictionary)startDateMap
{
  startDateMap = self->_startDateMap;
  if (!startDateMap)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_properties, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_properties;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v10];
          startDate = [v11 startDate];
          [v4 setObject:v10 forKey:startDate];
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = self->_startDateMap;
    self->_startDateMap = v13;

    startDateMap = self->_startDateMap;
  }

  return startDateMap;
}

- (void)setDateChanged:(BOOL)changed forIdentifier:(id)identifier
{
  changedCopy = changed;
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setDateChanged:changedCopy];
}

- (BOOL)dateChangedForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  dateChanged = [v3 dateChanged];

  return dateChanged;
}

- (void)setTimeChanged:(BOOL)changed forIdentifier:(id)identifier
{
  changedCopy = changed;
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setTimeChanged:changedCopy];
}

- (BOOL)timeChangedForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  timeChanged = [v3 timeChanged];

  return timeChanged;
}

- (void)setTitleChanged:(BOOL)changed forIdentifier:(id)identifier
{
  changedCopy = changed;
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setTitleChanged:changedCopy];
}

- (BOOL)titleChangedForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  titleChanged = [v3 titleChanged];

  return titleChanged;
}

- (void)setLocationChanged:(BOOL)changed forIdentifier:(id)identifier
{
  changedCopy = changed;
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setLocationChanged:changedCopy];
}

- (BOOL)locationChangedForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  locationChanged = [v3 locationChanged];

  return locationChanged;
}

- (void)setAttendeeComment:(BOOL)comment forIdentifier:(id)identifier
{
  commentCopy = comment;
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setAttendeeComment:commentCopy];
}

- (BOOL)attendeeCommentForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  attendeeComment = [v3 attendeeComment];

  return attendeeComment;
}

- (void)setSelfAttendeeEmail:(id)email forIdentifier:(id)identifier
{
  emailCopy = email;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  v7 = sub_100003498(emailCopy);

  [v8 setSelfAttendeeEmail:v7];
}

- (id)selfAttendeeEmailForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  selfAttendeeEmail = [v3 selfAttendeeEmail];

  return selfAttendeeEmail;
}

- (void)setSelfAttendeeUUID:(id)d forIdentifier:(id)identifier
{
  dCopy = d;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  v7 = sub_100003498(dCopy);

  [v8 setSelfAttendeeUUID:v7];
}

- (id)selfAttendeeUUIDForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  selfAttendeeUUID = [v3 selfAttendeeUUID];

  return selfAttendeeUUID;
}

- (void)setSelfOrganizerEmail:(id)email forIdentifier:(id)identifier
{
  emailCopy = email;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  v7 = sub_100003498(emailCopy);

  [v8 setSelfOrganizerEmail:v7];
}

- (id)selfOrganizerEmailForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  selfOrganizerEmail = [v3 selfOrganizerEmail];

  return selfOrganizerEmail;
}

- (void)setSelfOrganizerUUID:(id)d forIdentifier:(id)identifier
{
  dCopy = d;
  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  v7 = sub_100003498(dCopy);

  [v8 setSelfOrganizerUUID:v7];
}

- (id)selfOrganizerUUIDForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  selfOrganizerUUID = [v3 selfOrganizerUUID];

  return selfOrganizerUUID;
}

- (void)setInvitationStatus:(unint64_t)status forIdentifier:(id)identifier
{
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setInvitationStatus:status];
}

- (id)invitationStatusForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 invitationStatus]);

  return v4;
}

- (void)setProperInvitationStatus:(unint64_t)status forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifierCopy];
  [v7 setProperInvitationStatus:status];

  v8 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifierCopy];

  [v8 setHasProperInvitationStatus:1];
}

- (id)properInvitationStatusForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  if ([v3 hasProperInvitationStatus])
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 properInvitationStatus]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLocationPredictionState:(int64_t)state forIdentifier:(id)identifier
{
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setLocationPredictionState:state];
}

- (id)locationPredictionStateForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 locationPredictionState]);

  return v4;
}

- (void)setAttendeeStatus:(int64_t)status forIdentifier:(id)identifier
{
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setAttendeeStatus:status];
}

- (int64_t)attendeeStatusForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  attendeeStatus = [v3 attendeeStatus];

  return attendeeStatus;
}

- (void)setAttendeeStatusFlag:(BOOL)flag forIdentifier:(id)identifier
{
  flagCopy = flag;
  v5 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v5 setAttendeeStatusFlag:flagCopy];
}

- (BOOL)attendeeStatusFlagForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  attendeeStatusFlag = [v3 attendeeStatusFlag];

  return attendeeStatusFlag;
}

- (void)setExternalID:(id)d forIdentifier:(id)identifier
{
  dCopy = d;
  v7 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v7 setExternalID:dCopy];
}

- (id)externalIDForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  externalID = [v3 externalID];

  return externalID;
}

- (void)setStartDate:(id)date forIdentifier:(id)identifier
{
  dateCopy = date;
  v7 = [(NEKICSWrapper *)self settablePropertiesForCalendarItemIdentifier:identifier];
  [v7 setStartDate:dateCopy];
}

- (id)startDateForIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  startDate = [v3 startDate];

  return startDate;
}

- (void)enumerateCalendarItemIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_properties keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)entityTypeForCalendarItemWithIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  entityType = [v3 entityType];

  v5 = 1;
  if (entityType != 3)
  {
    v5 = -1;
  }

  if (entityType == 2)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int64_t)objectTypeForCalendarItemWithIdentifier:(id)identifier
{
  v3 = [(NEKICSWrapper *)self propertiesForCalendarItemIdentifier:identifier];
  entityType = [v3 entityType];

  if (entityType == 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)description
{
  if (self->_calendarItemCount != 1)
  {
    v13 = objc_opt_class();
    v5 = NSStringFromClass(v13);
    calendarIdentifier = self->_calendarIdentifier;
    oldCalendarIdentifier = [(NEKICSWrapper *)self oldCalendarIdentifier];
    title2 = [NSNumber numberWithInteger:self->_calendarItemCount];
    v12 = [NSString stringWithFormat:@"<%@ %p, calendarIdentifier = %@ oldCalendarIdentifier = %@; count = %@>", v5, self, calendarIdentifier, oldCalendarIdentifier, title2];;
    goto LABEL_5;
  }

  title = [(NEKICSWrapper *)self title];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  syncId = self->_syncId;
  v7 = self->_calendarIdentifier;
  oldCalendarIdentifier2 = [(NEKICSWrapper *)self oldCalendarIdentifier];
  oldCalendarIdentifier = oldCalendarIdentifier2;
  if (title)
  {
    title2 = [(NEKICSWrapper *)self title];
    v11 = sub_10002CDF8(title2);
    v12 = [NSString stringWithFormat:@"<%@ %p identifier=%@; calendarIdentifier=%@; oldCalendarIdentifier=%@; title='%@'>", v5, self, syncId, v7, oldCalendarIdentifier, v11];;

LABEL_5:
    goto LABEL_6;
  }

  v12 = [NSString stringWithFormat:@"<%@ %p identifier=%@; calendarIdentifier=%@; oldCalendarIdentifier=%@>", v5, self, syncId, v7, oldCalendarIdentifier2];;
LABEL_6:

  return v12;
}

+ (id)wrapperForChangeType:(int)type reminder:(id)reminder oldListIdentifier:(id)identifier store:(id)store
{
  v8 = *&type;
  reminderCopy = reminder;
  identifierCopy = identifier;
  storeCopy = store;
  [reminderCopy alarms];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = v54 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        trigger = [v16 trigger];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          trigger2 = [v16 trigger];
          structuredLocation = [trigger2 structuredLocation];

          if (structuredLocation)
          {
            ct_green_tea_logger_create();
            v21 = getCTGreenTeaOsLogHandle();
            v22 = v21;
            if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Read in location for a reminder", buf, 2u);
            }

            ct_green_tea_logger_destroy();
            v20 = 1;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_18:

  v23 = [[NEKICSWrapper alloc] initWithStoreType:1 nekChangeType:v8];
  list = [reminderCopy list];
  v25 = [[NEKCalendarID alloc] initWithList:list];
  [(NEKICSWrapper *)v23 setCalendarIdentifier:v25];

  [(NEKICSWrapper *)v23 setCalendarItemCount:1];
  store = [list store];
  v55 = reminderCopy;
  v26 = [NSArray arrayWithObjects:&v55 count:1];
  v48 = list;
  [self setPropertiesForWrapper:v23 withReminders:v26 oldListIdentifier:identifierCopy sendAllProperties:1 store:storeCopy list:list];

  v27 = [REMExporting icsTodoFromReminder:reminderCopy exportingOption:REMICSExportingEventKitSync];
  v28 = objc_alloc_init(ICSCalendar);
  v29 = v27;
  v30 = v28;
  v31 = objc_alloc_init(ICSCalendar);
  if (v31)
  {
    [v31 setX_calendarserver_access:{objc_msgSend(v30, "x_calendarserver_access")}];
    *buf = v29;
    v32 = [NSArray arrayWithObjects:buf count:1];
    [v31 setComponents:v32 options:2];

    v33 = v31;
    v46 = v29;
    v34 = v20;
    v35 = reminderCopy;
    v36 = objc_autoreleasePoolPush();
    v37 = [[ICSDocument alloc] initWithCalendar:v33];
    v38 = [v37 ICSDataWithOptions:68];

    v39 = v36;
    reminderCopy = v35;
    v20 = v34;
    v29 = v46;
    objc_autoreleasePoolPop(v39);
  }

  else
  {
    v38 = 0;
  }

  v40 = *(qword_1000D18B0 + 8);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_10006EDA0(v40, v38);
  }

  [(NEKICSWrapper *)v23 setICSData:v38];

  daCalendarItemUniqueIdentifier = [reminderCopy daCalendarItemUniqueIdentifier];
  [(NEKICSWrapper *)v23 setSyncId:daCalendarItemUniqueIdentifier];

  title = [reminderCopy title];
  string = [title string];
  title = v23->_title;
  v23->_title = string;

  [(NEKICSWrapper *)v23 setIsReminderWithLocation:v20];
  -[NEKICSWrapper setDisplayOrder:](v23, "setDisplayOrder:", [reminderCopy icsDisplayOrder]);

  return v23;
}

+ (void)setAllPropertiesForReminder:(id)reminder identifier:(id)identifier wrapper:(id)wrapper store:(id)store list:(id)list oldListIdentifier:(id)listIdentifier
{
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  listCopy = list;
  listIdentifierCopy = listIdentifier;
  externalIdentifier = [reminder externalIdentifier];
  if (externalIdentifier)
  {
    [wrapperCopy setExternalID:externalIdentifier forIdentifier:identifierCopy];
  }

  if (listIdentifierCopy)
  {
    [wrapperCopy setOldCalendarIdentifier:listIdentifierCopy];
  }

  else
  {
    objectID = [listCopy objectID];
    uuid = [objectID uuid];
    uUIDString = [uuid UUIDString];
    [wrapperCopy setOldCalendarIdentifier:uUIDString];
  }
}

+ (void)setMinimalPropertiesForReminder:(id)reminder identifier:(id)identifier wrapper:(id)wrapper
{
  reminderCopy = reminder;
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  if ([reminderCopy isCompleted])
  {
    completionDate = [reminderCopy completionDate];
    [wrapperCopy setTaskCompleted:1];
    [completionDate timeIntervalSinceReferenceDate];
    [wrapperCopy setTaskCompletionDate:?];
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = identifierCopy;
      v14 = 2114;
      v15 = completionDate;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting task with identifier %{public}@ as completed, completion date is %{public}@", &v12, 0x16u);
    }
  }
}

+ (void)setPropertiesForWrapper:(id)wrapper withReminders:(id)reminders oldListIdentifier:(id)identifier sendAllProperties:(BOOL)properties store:(id)store list:(id)list
{
  propertiesCopy = properties;
  wrapperCopy = wrapper;
  remindersCopy = reminders;
  identifierCopy = identifier;
  v17 = propertiesCopy;
  selfCopy = self;
  v49 = identifierCopy;
  storeCopy = store;
  listCopy = list;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = remindersCopy;
  v19 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v19)
  {
    v21 = v19;
    v51 = *v53;
    *&v20 = 138543618;
    v44 = v20;
    v45 = v17;
    selfCopy2 = self;
    do
    {
      v22 = 0;
      do
      {
        if (*v53 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v52 + 1) + 8 * v22);
        v24 = objc_autoreleasePoolPush();
        daCalendarItemUniqueIdentifier = [v23 daCalendarItemUniqueIdentifier];
        if (daCalendarItemUniqueIdentifier)
        {
          uUIDString = daCalendarItemUniqueIdentifier;
LABEL_11:
          v30 = [wrapperCopy settablePropertiesForCalendarItemIdentifier:{uUIDString, v44}];
          [v30 setEntityType:1];
          if (os_variant_has_internal_diagnostics())
          {
            v31 = *(qword_1000D18A8 + 8);
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              if (v32)
              {
                v33 = v31;
                eks_debugDesc = [v23 eks_debugDesc];
                daCalendarItemUniqueIdentifier2 = [v23 daCalendarItemUniqueIdentifier];
                *buf = 138412546;
                v57 = eks_debugDesc;
                v58 = 2114;
                v59 = daCalendarItemUniqueIdentifier2;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting all properties on %@, identifier: %{public}@", buf, 0x16u);

                selfCopy = selfCopy2;
                v17 = v45;
              }

LABEL_16:
              [selfCopy setAllPropertiesForReminder:v23 identifier:uUIDString wrapper:wrapperCopy store:storeCopy list:listCopy oldListIdentifier:v49];
LABEL_20:

              goto LABEL_21;
            }

            if (v32)
            {
              v36 = v31;
              eks_debugDesc2 = [v23 eks_debugDesc];
              daCalendarItemUniqueIdentifier3 = [v23 daCalendarItemUniqueIdentifier];
              *buf = 138412546;
              v57 = eks_debugDesc2;
              v58 = 2114;
              v59 = daCalendarItemUniqueIdentifier3;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting minimal properties on %@, identifier: %{public}@", buf, 0x16u);

              v17 = v45;
              selfCopy = selfCopy2;
            }
          }

          else if (v17)
          {
            goto LABEL_16;
          }

          [selfCopy setMinimalPropertiesForReminder:v23 identifier:uUIDString wrapper:wrapperCopy];
          goto LABEL_20;
        }

        v27 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10006EE70(v60, v27, v23, &v61);
        }

        remObjectID = [v23 remObjectID];
        uuid = [remObjectID uuid];
        uUIDString = [uuid UUIDString];

        if (uUIDString)
        {
          goto LABEL_11;
        }

        v39 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = v39;
          eks_debugDesc3 = [v23 eks_debugDesc];
          daCalendarItemUniqueIdentifier4 = [v23 daCalendarItemUniqueIdentifier];
          *buf = v44;
          v57 = eks_debugDesc3;
          v58 = 2114;
          v59 = daCalendarItemUniqueIdentifier4;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Can't create canonical unique identifier for reminder %{public}@. Identifier returned by REMReminder is %{public}@", buf, 0x16u);

          selfCopy = selfCopy2;
        }

LABEL_21:
        objc_autoreleasePoolPop(v24);
        v22 = v22 + 1;
      }

      while (v21 != v22);
      v43 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      v21 = v43;
    }

    while (v43);
  }
}

+ (id)wrapperForChangeType:(int)type calendarItem:(id)item needsInvite:(id)invite eventStore:(id)store
{
  v8 = *&type;
  itemCopy = item;
  inviteCopy = invite;
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = itemCopy;
    uniqueId = [v12 uniqueId];
    if ([v12 isDetached])
    {
      originalItem = [v12 originalItem];
      if (originalItem)
      {
        v15 = originalItem;
        uniqueId2 = [originalItem uniqueId];
        v17 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v82 = uniqueId;
          v83 = 2112;
          v84 = uniqueId2;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "wrapperForCalendarItem: Entity with identifier %{public}@ is detached, master identifier is %@", buf, 0x16u);
        }

        v18 = v15;

        v19 = 0;
        itemCopy = v18;
        goto LABEL_32;
      }

      v29 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v82 = uniqueId;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Entity with identifier %{public}@ is detached, but can't get master", buf, 0xCu);
      }
    }

    else if ([v12 hasRecurrenceRules])
    {
      v12 = v12;
      v26 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v82 = uniqueId;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Entity with identifier %{public}@ is master for a recurring series", buf, 0xCu);
      }

      v19 = 0;
      v18 = v12;
      goto LABEL_30;
    }

    v19 = 0;
    v18 = 0;
LABEL_30:
    itemCopy = v12;
LABEL_32:

    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [itemCopy alarms];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    uniqueId = v78 = 0u;
    v20 = [uniqueId countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = inviteCopy;
      v23 = *v76;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v76 != v23)
          {
            objc_enumerationMutation(uniqueId);
          }

          structuredLocation = [*(*(&v75 + 1) + 8 * i) structuredLocation];

          if (structuredLocation)
          {
            ct_green_tea_logger_create();
            v27 = getCTGreenTeaOsLogHandle();
            v28 = v27;
            if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Read in location for a reminder", buf, 2u);
            }

            ct_green_tea_logger_destroy();
            v18 = 0;
            v19 = 1;
            goto LABEL_26;
          }
        }

        v21 = [uniqueId countByEnumeratingWithState:&v75 objects:v80 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v19 = 0;
      v18 = 0;
LABEL_26:
      v12 = uniqueId;
      inviteCopy = v22;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v12 = uniqueId;
    }

    goto LABEL_32;
  }

  v19 = 0;
  v18 = 0;
LABEL_33:
  v30 = [[NEKICSWrapper alloc] initWithStoreType:0 nekChangeType:v8];
  calendar = [itemCopy calendar];
  v32 = [[NEKCalendarID alloc] initWithCalendar:calendar];
  [(NEKICSWrapper *)v30 setCalendarIdentifier:v32];

  [(NEKICSWrapper *)v30 setCalendarItemCount:1];
  eventStore = [calendar eventStore];
  v79 = itemCopy;
  v33 = [NSArray arrayWithObjects:&v79 count:1];
  v73 = inviteCopy;
  v71 = calendar;
  [self setPropertiesForWrapper:v30 withCalendarItems:0 needsInvite:? sendAllProperties:? eventStore:? calendar:? originalEvent:?];
  v34 = +[NEKEnvironment instance];
  recordMap = [v34 recordMap];

  objectID = [itemCopy objectID];
  v69 = recordMap;
  v37 = [recordMap identifierForRecordID:objectID];

  eks_compoundIdentifier = [itemCopy eks_compoundIdentifier];
  v39 = eks_compoundIdentifier;
  if (eks_compoundIdentifier)
  {
    if (v37)
    {
      if (([eks_compoundIdentifier isEqualToString:v37] & 1) == 0)
      {
        v40 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v82 = v37;
          v83 = 2114;
          v84 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "CalendarItem remap detected: %{public}@ => %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v72 = v39;
  if (v30 && v37)
  {
    v41 = v19;
    v42 = v18;
    selfCopy = self;
    v44 = v30;
    v45 = [v37 componentsSeparatedByString:@"::"];
    if ([v45 count] == 2)
    {
      v46 = [v45 objectAtIndexedSubscript:0];
      [(NEKICSWrapper *)v44 setOldIdentifier:v46];

      v47 = [v72 componentsSeparatedByString:@"::"];

      v48 = [v47 objectAtIndexedSubscript:0];
      [(NEKICSWrapper *)v44 setNuevoIdentifier:v48];

      v45 = v47;
    }

    self = selfCopy;
    v18 = v42;
    v19 = v41;
  }

  if (v18)
  {
    detachedItems = [v18 detachedItems];
    allObjects = [detachedItems allObjects];

    if ([allObjects count])
    {
      v68 = v19;
      selfCopy2 = self;
      v52 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v52;
        uniqueIdentifier = [v18 uniqueIdentifier];
        v55 = [allObjects count];
        *buf = 138543618;
        v82 = uniqueIdentifier;
        v83 = 1024;
        LODWORD(v84) = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Handling detached events for %{public}@, count=%d", buf, 0x12u);
      }

      [selfCopy2 setPropertiesForWrapper:v30 withCalendarItems:allObjects needsInvite:v73 sendAllProperties:1 eventStore:0 calendar:0 originalEvent:v18];
      v19 = v68;
    }
  }

  v56 = +[NEKCapabilities instance];
  canUseLzfse = [v56 canUseLzfse];

  if (canUseLzfse)
  {
    v58 = 130;
  }

  else
  {
    v58 = 2;
  }

  v59 = [eventStore ICSDataForCalendarItems:v33 options:v58];
  if (canUseLzfse)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v60 = *(qword_1000D18B0 + 8);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
        v62 = [v59 base64EncodedStringWithOptions:0];
        *buf = 138412290;
        v82 = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "LZFSE ICS: <<!%@!>>", buf, 0xCu);
      }
    }

    [(NEKICSWrapper *)v30 setLzfseICSData:v59];
  }

  else
  {
    v63 = *(qword_1000D18B0 + 8);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      sub_10006EDA0(v63, v59);
    }

    [(NEKICSWrapper *)v30 setICSData:v59];
  }

  v64 = sub_1000624F8(itemCopy);
  [(NEKICSWrapper *)v30 setSyncId:v64];

  title = [itemCopy title];
  title = v30->_title;
  v30->_title = title;

  [(NEKICSWrapper *)v30 setIsReminderWithLocation:v19];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[NEKICSWrapper setDisplayOrder:](v30, "setDisplayOrder:", [itemCopy displayOrder]);
  }

  return v30;
}

+ (void)setAllPropertiesForItem:(id)item identifier:(id)identifier wrapper:(id)wrapper needsInvite:(id)invite eventStore:(id)store calendar:(id)calendar
{
  itemCopy = item;
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  inviteCopy = invite;
  storeCopy = store;
  calendarCopy = calendar;
  selfAttendee = [itemCopy selfAttendee];
  v19 = selfAttendee;
  if (selfAttendee)
  {
    [wrapperCopy setAttendeeStatus:objc_msgSend(selfAttendee forIdentifier:{"participantStatus"), identifierCopy}];
    emailAddress = [v19 emailAddress];
    [wrapperCopy setSelfAttendeeEmail:emailAddress forIdentifier:identifierCopy];
    v21 = [v19 URL];
    absoluteString = [v21 absoluteString];
    [wrapperCopy setSelfAttendeeUUID:absoluteString forIdentifier:identifierCopy];
  }

  organizer = [itemCopy organizer];
  v24 = organizer;
  if (organizer && [organizer isCurrentUser])
  {
    emailAddress2 = [v24 emailAddress];
    [wrapperCopy setSelfOrganizerEmail:emailAddress2 forIdentifier:identifierCopy];
    v26 = [v24 URL];
    absoluteString2 = [v26 absoluteString];
    [wrapperCopy setSelfOrganizerUUID:absoluteString2 forIdentifier:identifierCopy];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v29 = itemCopy;
  if (isKindOfClass)
  {
    v30 = itemCopy;
    startDate = [v30 startDate];
    [wrapperCopy setStartDate:startDate forIdentifier:identifierCopy];

    [wrapperCopy setDateChanged:objc_msgSend(v30 forIdentifier:{"dateChanged"), identifierCopy}];
    [wrapperCopy setTimeChanged:objc_msgSend(v30 forIdentifier:{"timeChanged"), identifierCopy}];
    [wrapperCopy setTitleChanged:objc_msgSend(v30 forIdentifier:{"titleChanged"), identifierCopy}];
    [wrapperCopy setLocationChanged:objc_msgSend(v30 forIdentifier:{"locationChanged"), identifierCopy}];
    [wrapperCopy setAttendeeComment:objc_msgSend(v30 forIdentifier:{"attendeeComment"), identifierCopy}];
    [wrapperCopy setAttendeeStatusFlag:objc_msgSend(v30 forIdentifier:{"attendeeStatus"), identifierCopy}];
    invitationStatus = [v30 invitationStatus];
    if ([inviteCopy containsObject:identifierCopy])
    {
      [wrapperCopy setInvitationStatus:invitationStatus forIdentifier:identifierCopy];
    }

    [wrapperCopy setProperInvitationStatus:invitationStatus forIdentifier:identifierCopy];

    v29 = itemCopy;
  }

  externalID = [v29 externalID];
  if (externalID)
  {
    [wrapperCopy setExternalID:externalID forIdentifier:identifierCopy];
  }

  if (calendarCopy)
  {
    v34 = sub_1000624F8(calendarCopy);
    if (!storeCopy)
    {
      [wrapperCopy setOldCalendarIdentifier:v34];
LABEL_21:

      goto LABEL_22;
    }

    v35 = [storeCopy calendarIdentifierInRowMappingForEventOrTask:itemCopy];
    if (v35)
    {
      v36 = wrapperCopy;
      v37 = v35;
    }

    else
    {
      if ([storeCopy hasRowMappingForEntity:itemCopy])
      {
LABEL_20:

        goto LABEL_21;
      }

      v36 = wrapperCopy;
      v37 = v34;
    }

    [v36 setOldCalendarIdentifier:v37];
    goto LABEL_20;
  }

LABEL_22:
}

+ (void)setMinimalPropertiesForItem:(id)item identifier:(id)identifier wrapper:(id)wrapper
{
  itemCopy = item;
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  objectID = [itemCopy objectID];
  entityType = [objectID entityType];

  if (entityType == 3)
  {
    completionDate = [itemCopy completionDate];
    if (completionDate)
    {
      [wrapperCopy setTaskCompleted:1];
      [completionDate timeIntervalSinceReferenceDate];
      [wrapperCopy setTaskCompletionDate:?];
      v15 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        *v17 = identifierCopy;
        *&v17[8] = 2114;
        *&v17[10] = completionDate;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting task with identifier %{public}@ as completed, completion date is %{public}@", &v16, 0x16u);
      }
    }

    goto LABEL_10;
  }

  if (entityType == 2)
  {
    completionDate = [itemCopy selfAttendee];
    if (completionDate)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v16 = 67109378;
        *v17 = [completionDate participantStatus];
        *&v17[4] = 2114;
        *&v17[6] = identifierCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "self attendee status is 0x%08x for event with identifier %{public}@", &v16, 0x12u);
      }

      [wrapperCopy setAttendeeStatus:objc_msgSend(completionDate forIdentifier:{"participantStatus"), identifierCopy}];
    }

LABEL_10:
  }
}

+ (void)setPropertiesForWrapper:(id)wrapper withCalendarItems:(id)items needsInvite:(id)invite sendAllProperties:(BOOL)properties eventStore:(id)store calendar:(id)calendar originalEvent:(id)event
{
  propertiesCopy = properties;
  wrapperCopy = wrapper;
  itemsCopy = items;
  inviteCopy = invite;
  storeCopy = store;
  calendarCopy = calendar;
  eventCopy = event;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = itemsCopy;
  v16 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v46 = *v48;
    v40 = wrapperCopy;
    v39 = propertiesCopy;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        uniqueId = [v19 uniqueId];
        if (uniqueId)
        {
          v22 = [wrapperCopy settablePropertiesForCalendarItemIdentifier:uniqueId];
          objectID = [v19 objectID];
          entityType = [objectID entityType];

          [v22 setEntityType:entityType == 3];
          if (os_variant_has_internal_diagnostics())
          {
            attendees = [v19 attendees];
            v26 = [attendees count];

            v27 = *(qword_1000D18A8 + 8);
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (propertiesCopy)
            {
              if (v28)
              {
                v29 = v27;
                eks_debugDesc = [v19 eks_debugDesc];
                uniqueIdentifier = [v19 uniqueIdentifier];
                *buf = 138412802;
                v52 = eks_debugDesc;
                v53 = 2114;
                v54 = uniqueIdentifier;
                v55 = 1024;
                v56 = v26;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Setting all properties on %@, identifier: %{public}@, attendees: %d", buf, 0x1Cu);

                wrapperCopy = v40;
                propertiesCopy = v39;
              }
            }

            else if (v28)
            {
              v35 = v27;
              eks_debugDesc2 = [v19 eks_debugDesc];
              uniqueIdentifier2 = [v19 uniqueIdentifier];
              *buf = 138412802;
              v52 = eks_debugDesc2;
              v53 = 2114;
              v54 = uniqueIdentifier2;
              v55 = 1024;
              v56 = v26;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Setting minimal properties on %@, identifier: %{public}@, attendees: %d", buf, 0x1Cu);

              propertiesCopy = v39;
              wrapperCopy = v40;
            }
          }

          if (propertiesCopy)
          {
            [self setAllPropertiesForItem:v19 identifier:uniqueId wrapper:wrapperCopy needsInvite:inviteCopy eventStore:storeCopy calendar:calendarCopy];
          }

          else
          {
            [self setMinimalPropertiesForItem:v19 identifier:uniqueId wrapper:wrapperCopy];
          }
        }

        else
        {
          v32 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = v32;
            uniqueId2 = [v19 uniqueId];
            *buf = 138543618;
            v52 = v19;
            v53 = 2114;
            v54 = uniqueId2;
            _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Can't create canonical unique identifier for event %{public}@. Identifier returned by CalCalendarItemCopyUniqueIdentifier is %{public}@", buf, 0x16u);

            propertiesCopy = v39;
            wrapperCopy = v40;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v17 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v17);
  }
}

@end