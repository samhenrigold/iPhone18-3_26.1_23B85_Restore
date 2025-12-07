@interface EKSerializableEvent
+ (id)classesForKey;
+ (id)serializedProperties;
- (EKSerializableEvent)initWithEvent:(id)event;
- (id)createEventInEventStore:(id)store;
- (void)_initAlarms:(id)alarms;
- (void)_initAttachments:(id)attachments;
- (void)_initAttendees:(id)attendees selfAttendee:(id)attendee;
- (void)_initRecurrenceRule:(id)rule;
@end

@implementation EKSerializableEvent

+ (id)serializedProperties
{
  v4[10] = *MEMORY[0x1E69E9840];
  v4[0] = @"startDate";
  v4[1] = @"endDate";
  v4[2] = @"isAllDay";
  v4[3] = @"title";
  v4[4] = @"notes";
  v4[5] = @"URL";
  v4[6] = @"location";
  v4[7] = @"travelTime";
  v4[8] = @"calendar.calendarIdentifier";
  v4[9] = @"timeZone";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:10];

  return v2;
}

+ (id)classesForKey
{
  v39[17] = *MEMORY[0x1E69E9840];
  v38[0] = @"startDate";
  v37 = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v39[0] = v20;
  v38[1] = @"endDate";
  v36 = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v39[1] = v19;
  v38[2] = @"isAllDay";
  v35 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v39[2] = v18;
  v38[3] = @"title";
  v34 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v39[3] = v17;
  v38[4] = @"notes";
  v33 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v39[4] = v16;
  v38[5] = @"url";
  v32 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v39[5] = v15;
  v38[6] = @"travelTime";
  v31 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v39[6] = v14;
  v38[7] = @"location";
  v30 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v39[7] = v13;
  v38[8] = @"structuredLocation";
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v39[8] = v2;
  v38[9] = @"attendees";
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v39[9] = v3;
  v38[10] = @"selfAttendee";
  v27 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v39[10] = v4;
  v38[11] = @"attachments";
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v39[11] = v5;
  v38[12] = @"alarms";
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v39[12] = v6;
  v38[13] = @"recurrenceRules";
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v39[13] = v7;
  v38[14] = @"calendarIdentifier";
  v23 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v39[14] = v8;
  v38[15] = @"timeZone";
  v22 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v39[15] = v9;
  v38[16] = @"isNew";
  v21 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v39[16] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:17];

  return v11;
}

- (EKSerializableEvent)initWithEvent:(id)event
{
  eventCopy = event;
  v28.receiver = self;
  v28.super_class = EKSerializableEvent;
  v5 = [(EKSerializableEvent *)&v28 init];
  if (v5)
  {
    startDate = [eventCopy startDate];
    [(EKSerializableEvent *)v5 setStartDate:startDate];

    endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
    [(EKSerializableEvent *)v5 setEndDate:endDateUnadjustedForLegacyClients];

    -[EKSerializableEvent setIsAllDay:](v5, "setIsAllDay:", [eventCopy isAllDay]);
    title = [eventCopy title];
    [(EKSerializableEvent *)v5 setTitle:title];

    notes = [eventCopy notes];
    [(EKSerializableEvent *)v5 setNotes:notes];

    v10 = [eventCopy URL];
    [(EKSerializableEvent *)v5 setUrl:v10];

    [eventCopy travelTime];
    [(EKSerializableEvent *)v5 setTravelTime:?];
    location = [eventCopy location];
    [(EKSerializableEvent *)v5 setLocation:location];

    timeZone = [eventCopy timeZone];
    [(EKSerializableEvent *)v5 setTimeZone:timeZone];

    v13 = MEMORY[0x1E696AD98];
    objectID = [eventCopy objectID];
    v15 = [v13 numberWithBool:{objc_msgSend(objectID, "isTemporary")}];
    [(EKSerializableEvent *)v5 setIsNew:v15];

    structuredLocation = [eventCopy structuredLocation];

    if (structuredLocation)
    {
      v17 = [EKSerializableStructuredLocation alloc];
      structuredLocation2 = [eventCopy structuredLocation];
      v19 = [(EKSerializableStructuredLocation *)v17 initWithStructuredLocation:structuredLocation2];
      [(EKSerializableEvent *)v5 setStructuredLocation:v19];
    }

    calendar = [eventCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    [(EKSerializableEvent *)v5 setCalendarIdentifier:calendarIdentifier];

    allAlarms = [eventCopy allAlarms];
    [(EKSerializableEvent *)v5 _initAlarms:allAlarms];

    attachments = [eventCopy attachments];
    [(EKSerializableEvent *)v5 _initAttachments:attachments];

    attendees = [eventCopy attendees];
    selfAttendee = [eventCopy selfAttendee];
    [(EKSerializableEvent *)v5 _initAttendees:attendees selfAttendee:selfAttendee];

    singleRecurrenceRule = [eventCopy singleRecurrenceRule];
    [(EKSerializableEvent *)v5 _initRecurrenceRule:singleRecurrenceRule];
  }

  return v5;
}

- (void)_initAttendees:(id)attendees selfAttendee:(id)attendee
{
  v23 = *MEMORY[0x1E69E9840];
  attendeesCopy = attendees;
  attendeeCopy = attendee;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(attendeesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = attendeesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [EKSerializableParticipant alloc];
        v16 = [(EKSerializableParticipant *)v15 initWithParticipant:v14, v18];
        [v8 addObject:v16];
        if (v14 == attendeeCopy)
        {
          [(EKSerializableEvent *)self setSelfAttendee:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = [v8 copy];
  [(EKSerializableEvent *)self setAttendees:v17];
}

- (void)_initAlarms:(id)alarms
{
  v20 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(alarmsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = alarmsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [EKSerializableAlarm alloc];
        v13 = [(EKSerializableAlarm *)v12 initWithAlarm:v11, v15];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  [(EKSerializableEvent *)self setAlarms:v14];
}

- (void)_initAttachments:(id)attachments
{
  v20 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(attachmentsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = attachmentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [EKSerializableAttachment alloc];
        v13 = [(EKSerializableAttachment *)v12 initWithAttachment:v11, v15];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  [(EKSerializableEvent *)self setAttachments:v14];
}

- (void)_initRecurrenceRule:(id)rule
{
  v7[1] = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  v5 = [[EKSerializableRecurrenceRule alloc] initWithRecurrenceRule:ruleCopy];

  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(EKSerializableEvent *)self setRecurrenceRules:v6];
}

- (id)createEventInEventStore:(id)store
{
  v75 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v5 = [EKEvent eventWithEventStore:storeCopy];
  timeZone = [(EKSerializableEvent *)self timeZone];
  [v5 setTimeZone:timeZone];

  startDate = [(EKSerializableEvent *)self startDate];
  [v5 setStartDate:startDate];

  [v5 setAllDay:{-[EKSerializableEvent isAllDay](self, "isAllDay")}];
  endDate = [(EKSerializableEvent *)self endDate];
  [v5 setEndDateUnadjustedForLegacyClients:endDate];

  title = [(EKSerializableEvent *)self title];
  [v5 setTitle:title];

  notes = [(EKSerializableEvent *)self notes];
  [v5 setNotes:notes];

  v11 = [(EKSerializableEvent *)self url];
  [v5 setURL:v11];

  [(EKSerializableEvent *)self travelTime];
  [v5 setTravelTime:?];
  location = [(EKSerializableEvent *)self location];
  [v5 setLocation:location];

  structuredLocation = [(EKSerializableEvent *)self structuredLocation];
  createStructuredLocation = [structuredLocation createStructuredLocation];
  [v5 setStructuredLocation:createStructuredLocation];

  calendarIdentifier = [(EKSerializableEvent *)self calendarIdentifier];
  v51 = storeCopy;
  v16 = [storeCopy calendarWithIdentifier:calendarIdentifier];

  v52 = v16;
  [v5 setCalendar:v16];
  [v5 setAlarms:MEMORY[0x1E695E0F0]];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  selfCopy = self;
  alarms = [(EKSerializableEvent *)self alarms];
  v19 = [alarms countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v67;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v67 != v21)
        {
          objc_enumerationMutation(alarms);
        }

        v23 = *(*(&v66 + 1) + 8 * i);
        v65 = 0;
        v24 = [v23 createAlarm:&v65];
        v25 = v65;
        if (v24)
        {
          [v5 addAlarm:v24];
        }

        else
        {
          v26 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v25;
            _os_log_error_impl(&dword_1A805E000, v26, OS_LOG_TYPE_ERROR, "Error creating alarm: [%@]", buf, 0xCu);
          }
        }
      }

      v20 = [alarms countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v20);
  }

  v64 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  attendees = [(EKSerializableEvent *)selfCopy attendees];
  v28 = [attendees countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (!v28)
  {
    v40 = 0;
    goto LABEL_29;
  }

  v29 = v28;
  v53 = 0;
  v30 = *v62;
  do
  {
    for (j = 0; j != v29; ++j)
    {
      if (*v62 != v30)
      {
        objc_enumerationMutation(attendees);
      }

      v32 = *(*(&v61 + 1) + 8 * j);
      v60 = 0;
      v33 = [v32 createAttendee:&v60];
      v34 = v60;
      if (v33)
      {
        [v5 addAttendee:v33];
        selfAttendee = [(EKSerializableEvent *)selfCopy selfAttendee];

        if (v32 == selfAttendee)
        {
          ownerIdentityOrganizer = [v52 ownerIdentityOrganizer];
          v37 = [v33 isEqualToParticipant:ownerIdentityOrganizer];

          if ((v37 & 1) == 0)
          {
            v38 = v33;

            v53 = v38;
          }

          [v5 setSelfAttendee:v33];
        }
      }

      else
      {
        v39 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v73 = v34;
          _os_log_error_impl(&dword_1A805E000, v39, OS_LOG_TYPE_ERROR, "Error creating attendee: [%@]", buf, 0xCu);
        }
      }
    }

    v29 = [attendees countByEnumeratingWithState:&v61 objects:v71 count:16];
  }

  while (v29);

  v40 = v53;
  if (v53)
  {
    [v5 removeAttendee:v53];
    [v5 addOrganizerAndSelfAttendeeForNewInvitation];
    attendees = [v5 selfAttendee];
    [attendees setParticipantStatus:{objc_msgSend(v53, "participantStatus")}];
LABEL_29:
    v54 = v40;

    goto LABEL_31;
  }

  v54 = 0;
LABEL_31:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  recurrenceRules = [(EKSerializableEvent *)selfCopy recurrenceRules];
  v42 = [recurrenceRules countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v57;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(recurrenceRules);
        }

        v46 = *(*(&v56 + 1) + 8 * k);
        v55 = 0;
        v47 = [v46 createRecurrenceRule:&v55];
        v48 = v55;
        if (v47)
        {
          [v5 addRecurrenceRule:v47];
        }

        else
        {
          v49 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v48;
            _os_log_error_impl(&dword_1A805E000, v49, OS_LOG_TYPE_ERROR, "Error creating recurrence rule: [%@]", buf, 0xCu);
          }
        }
      }

      v43 = [recurrenceRules countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v43);
  }

  return v5;
}

@end