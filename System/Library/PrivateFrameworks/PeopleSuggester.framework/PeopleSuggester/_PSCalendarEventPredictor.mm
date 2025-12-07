@interface _PSCalendarEventPredictor
+ (BOOL)currentUserIsEligibleForEvent:(id)event;
+ (BOOL)hasFaceTimeSignalInEvent:(id)event;
+ (BOOL)isCorecipientParticipant:(id)participant seedRecipients:(id)recipients contactsMap:(id)map;
+ (BOOL)isEligibleParticipant:(id)participant context:(id)context contactsMap:(id)map;
+ (BOOL)isMaybeFaceTimeEvent:(id)event earliestStartDate:(id)date latestStartDate:(id)startDate maxParticipants:(unint64_t)participants;
+ (id)_handleFromParticipant:(id)participant;
+ (id)createFinalSuggestions:(id)suggestions context:(id)context;
+ (id)eventComparatorWithPredictionContext:(id)context contactsMap:(id)map;
+ (id)getZKWSuggestionForCalendarEvent:(id)event context:(id)context contactsMap:(id)map;
+ (id)participantComparatorWithContactsMap:(id)map;
+ (unint64_t)_numOfOtherParticipantsInEvent:(id)event;
- (_PSCalendarEventPredictor)init;
- (_PSCalendarEventPredictor)initWithEventStore:(id)store contactStore:(id)contactStore;
- (id)contactKeysToFetch;
- (id)getParticipantContactsMapFromEvent:(id)event;
- (id)zkwSuggestionsFromCalendarWithPredictionContext:(id)context startDate:(id)date endDate:(id)endDate maxParticipants:(unint64_t)participants;
@end

@implementation _PSCalendarEventPredictor

- (_PSCalendarEventPredictor)init
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getEKEventStoreClass_softClass_0;
  v20 = getEKEventStoreClass_softClass_0;
  if (!getEKEventStoreClass_softClass_0)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getEKEventStoreClass_block_invoke_0;
    v15 = &unk_1E7C23BF0;
    v16 = &v17;
    __getEKEventStoreClass_block_invoke_0(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = objc_opt_new();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getCNContactStoreClass_softClass_8;
  v20 = getCNContactStoreClass_softClass_8;
  if (!getCNContactStoreClass_softClass_8)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getCNContactStoreClass_block_invoke_8;
    v15 = &unk_1E7C23BF0;
    v16 = &v17;
    ContactsLibraryCore_9(0);
    Class = objc_getClass("CNContactStore");
    *(v16[1] + 24) = Class;
    getCNContactStoreClass_softClass_8 = *(v16[1] + 24);
    v6 = v18[3];
  }

  v8 = v6;
  _Block_object_dispose(&v17, 8);
  v9 = objc_opt_new();
  v10 = [(_PSCalendarEventPredictor *)self initWithEventStore:v5 contactStore:v9];

  return v10;
}

- (_PSCalendarEventPredictor)initWithEventStore:(id)store contactStore:(id)contactStore
{
  storeCopy = store;
  contactStoreCopy = contactStore;
  v12.receiver = self;
  v12.super_class = _PSCalendarEventPredictor;
  v9 = [(_PSCalendarEventPredictor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, store);
    objc_storeStrong(&v10->_contactStore, contactStore);
  }

  return v10;
}

+ (id)_handleFromParticipant:(id)participant
{
  participantCopy = participant;
  phoneNumber = [participantCopy phoneNumber];
  v5 = [phoneNumber length];

  if (v5)
  {
    [participantCopy phoneNumber];
  }

  else
  {
    [participantCopy emailAddress];
  }
  v6 = ;

  return v6;
}

+ (BOOL)isCorecipientParticipant:(id)participant seedRecipients:(id)recipients contactsMap:(id)map
{
  v44 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  recipientsCopy = recipients;
  mapCopy = map;
  if ([recipientsCopy count] && _os_feature_enabled_impl())
  {
    v10 = objc_opt_new();
    phoneNumber = [participantCopy phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [participantCopy phoneNumber];
      [v10 addObject:phoneNumber2];
    }

    emailAddress = [participantCopy emailAddress];

    if (emailAddress)
    {
      emailAddress2 = [participantCopy emailAddress];
      [v10 addObject:emailAddress2];
    }

    v15 = [mapCopy objectForKeyedSubscript:participantCopy];
    firstObject = [v15 firstObject];

    if (firstObject)
    {
      identifier = [firstObject identifier];
      [v10 addObject:identifier];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      emailAddresses = [firstObject emailAddresses];
      v19 = [emailAddresses countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(emailAddresses);
            }

            value = [*(*(&v38 + 1) + 8 * i) value];
            [v10 addObject:value];
          }

          v20 = [emailAddresses countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v20);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = firstObject;
      phoneNumbers = [firstObject phoneNumbers];
      v25 = [phoneNumbers countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v35;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(phoneNumbers);
            }

            value2 = [*(*(&v34 + 1) + 8 * j) value];
            fullyQualifiedDigits = [value2 fullyQualifiedDigits];

            if (fullyQualifiedDigits)
            {
              [v10 addObject:fullyQualifiedDigits];
            }
          }

          v26 = [phoneNumbers countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v26);
      }

      firstObject = v33;
    }

    v31 = [v10 intersectsSet:recipientsCopy];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (BOOL)isEligibleParticipant:(id)participant context:(id)context contactsMap:(id)map
{
  participantCopy = participant;
  contextCopy = context;
  mapCopy = map;
  if ([participantCopy isCurrentUser])
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

  else if ([participantCopy participantType] == 1)
  {
    seedRecipients = [contextCopy seedRecipients];
    if ([seedRecipients count] && (_os_feature_enabled_impl() & 1) != 0)
    {
      v12 = MEMORY[0x1E695DFD8];
      seedRecipients2 = [contextCopy seedRecipients];
      v14 = [v12 setWithArray:seedRecipients2];
      v15 = [_PSCalendarEventPredictor isCorecipientParticipant:participantCopy seedRecipients:v14 contactsMap:mapCopy];

      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([participantCopy participantStatus] != 3)
    {
      v16 = 1;
      goto LABEL_17;
    }

    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

  else
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isEligibleParticipant:context:contactsMap:];
    }
  }

LABEL_16:
  v16 = 0;
LABEL_17:

  return v16;
}

+ (BOOL)hasFaceTimeSignalInEvent:(id)event
{
  eventCopy = event;
  title = [eventCopy title];
  lowercaseString = [title lowercaseString];
  if ([lowercaseString containsString:@"facetime"])
  {
    v6 = 1;
  }

  else
  {
    location = [eventCopy location];
    lowercaseString2 = [location lowercaseString];
    if ([lowercaseString2 containsString:@"facetime"])
    {
      v6 = 1;
    }

    else
    {
      notes = [eventCopy notes];
      lowercaseString3 = [notes lowercaseString];
      if ([lowercaseString3 containsString:@"facetime"])
      {
        v6 = 1;
      }

      else
      {
        location2 = [eventCopy location];
        v6 = [location2 length] == 0;
      }
    }
  }

  return v6;
}

+ (id)eventComparatorWithPredictionContext:(id)context contactsMap:(id)map
{
  contextCopy = context;
  mapCopy = map;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78___PSCalendarEventPredictor_eventComparatorWithPredictionContext_contactsMap___block_invoke;
  v13[3] = &unk_1E7C26BD8;
  v14 = contextCopy;
  v15 = v7;
  v16 = mapCopy;
  v8 = mapCopy;
  v9 = v7;
  v10 = contextCopy;
  v11 = MEMORY[0x1B8C8C060](v13);

  return v11;
}

+ (id)participantComparatorWithContactsMap:(id)map
{
  mapCopy = map;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___PSCalendarEventPredictor_participantComparatorWithContactsMap___block_invoke;
  v7[3] = &unk_1E7C26C00;
  v8 = mapCopy;
  v4 = mapCopy;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

+ (unint64_t)_numOfOtherParticipantsInEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  attendees = [event attendees];
  v4 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(attendees);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      participantType = [v9 participantType];
      if (participantType == 4)
      {
        break;
      }

      v11 = participantType;
      LODWORD(v12) = [v9 isCurrentUser] ^ 1;
      if (v11 == 1)
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      v6 += v12;
      if (v5 == ++v8)
      {
        v5 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (BOOL)currentUserIsEligibleForEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    attendees = [eventCopy attendees];
    v6 = [attendees countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(attendees);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if ([v10 isCurrentUser])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [attendees countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = v10;

      if (!v11)
      {
        goto LABEL_16;
      }

      if ([v11 participantType] == 1)
      {
        if ([v11 participantRole] == 3 || objc_msgSend(v11, "participantStatus") == 2)
        {
          v12 = 1;
          goto LABEL_23;
        }

        v13 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [_PSCalendarEventPredictor currentUserIsEligibleForEvent:v4];
        }
      }

      else
      {
        v13 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [_PSCalendarEventPredictor currentUserIsEligibleForEvent:v4];
        }
      }
    }

    else
    {
LABEL_10:

LABEL_16:
      v13 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_PSCalendarEventPredictor currentUserIsEligibleForEvent:v4];
      }

      v11 = 0;
    }

    v12 = 0;
LABEL_23:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isMaybeFaceTimeEvent:(id)event earliestStartDate:(id)date latestStartDate:(id)startDate maxParticipants:(unint64_t)participants
{
  eventCopy = event;
  dateCopy = date;
  startDateCopy = startDate;
  if (eventCopy)
  {
    startDate = [eventCopy startDate];
    if (startDate)
    {
      v13 = startDate;
      startDate2 = [eventCopy startDate];
      if ([startDate2 compare:dateCopy] == -1)
      {
      }

      else
      {
        startDate3 = [eventCopy startDate];
        v16 = [startDate3 compare:startDateCopy];

        if (v16 != 1)
        {
          if ([eventCopy isAllDay])
          {
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

LABEL_12:
            v18 = 0;
LABEL_13:

            goto LABEL_14;
          }

          if ([eventCopy status] == 3)
          {
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            goto LABEL_12;
          }

          attendees = [eventCopy attendees];
          if ([attendees count] < 2)
          {

            goto LABEL_21;
          }

          v21 = [_PSCalendarEventPredictor _numOfOtherParticipantsInEvent:eventCopy];

          if (v21 > participants)
          {
LABEL_21:
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            goto LABEL_12;
          }

          virtualConference = [eventCopy virtualConference];

          if (virtualConference)
          {
            lowercaseString = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:eventCopy earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            goto LABEL_12;
          }

          location = [eventCopy location];
          lowercaseString = [location lowercaseString];

          if (([lowercaseString hasPrefix:@"http://"]& 1) != 0 || [lowercaseString hasPrefix:@"https://"])
          {
            lowercaseString2 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(lowercaseString2, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:eventCopy earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            goto LABEL_30;
          }

          v25 = [eventCopy URL];
          scheme = [v25 scheme];
          lowercaseString2 = [scheme lowercaseString];

          if (([lowercaseString2 hasPrefix:@"http"]& 1) != 0 || [lowercaseString2 hasPrefix:@"https"])
          {
            v27 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor isMaybeFaceTimeEvent:eventCopy earliestStartDate:? latestStartDate:? maxParticipants:?];
            }

            v18 = 0;
          }

          else
          {
            if (![_PSCalendarEventPredictor currentUserIsEligibleForEvent:eventCopy])
            {
LABEL_30:
              v18 = 0;
LABEL_37:

              goto LABEL_13;
            }

            v27 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
            }

            v18 = 1;
          }

          goto LABEL_37;
        }
      }
    }

    lowercaseString = +[_PSLogging generalChannel];
    if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
    {
      +[_PSCalendarEventPredictor isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:];
    }

    goto LABEL_12;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

+ (id)getZKWSuggestionForCalendarEvent:(id)event context:(id)context contactsMap:(id)map
{
  v48 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  contextCopy = context;
  mapCopy = map;
  v37 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  attendees = [eventCopy attendees];
  v11 = [attendees countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(attendees);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        if ([_PSCalendarEventPredictor isEligibleParticipant:v15 context:contextCopy contactsMap:mapCopy])
        {
          [v37 addObject:v15];
        }
      }

      v12 = [attendees countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v12);
  }

  v16 = v37;
  if ([v37 count])
  {
    v34 = contextCopy;
    v35 = eventCopy;
    v17 = [_PSCalendarEventPredictor participantComparatorWithContactsMap:mapCopy];
    v18 = [v37 sortedArrayUsingComparator:v17];

    v19 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v18;
    v20 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v38 + 1) + 8 * j);
          v25 = [_PSCalendarEventPredictor _handleFromParticipant:v24];
          name = [v24 name];
          v27 = [mapCopy objectForKeyedSubscript:v24];
          firstObject = [v27 firstObject];

          v29 = [[_PSRecipient alloc] initWithIdentifier:v25 handle:v25 displayName:name contact:firstObject];
          [v19 addObject:v29];
        }

        v21 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v21);
    }

    if ([v19 count])
    {
      v30 = [_PSSuggestion alloc];
      contextCopy = v34;
      bundleID = [v34 bundleID];
      v32 = [(_PSSuggestion *)v30 initWithBundleID:bundleID conversationIdentifier:0 groupName:0 recipients:v19 reason:@"Calendar Event Participants" reasonType:0];
      eventCopy = v35;
    }

    else
    {
      bundleID = +[_PSLogging generalChannel];
      contextCopy = v34;
      eventCopy = v35;
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:v35 context:? contactsMap:?];
      }

      v32 = 0;
    }

    v16 = v37;
  }

  else
  {
    obj = +[_PSLogging generalChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:eventCopy context:? contactsMap:?];
    }

    v32 = 0;
  }

  return v32;
}

+ (id)createFinalSuggestions:(id)suggestions context:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  seedRecipients = [context seedRecipients];
  if (![seedRecipients count])
  {

    goto LABEL_21;
  }

  v7 = _os_feature_enabled_impl();

  if ((v7 & 1) == 0)
  {
LABEL_21:
    v32 = suggestionsCopy;
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v32 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = suggestionsCopy;
  obj = suggestionsCopy;
  v29 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v29)
  {
    v28 = *v41;
    v31 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v9;
        v10 = *(*(&v40 + 1) + 8 * v9);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v10;
        recipients = [v10 recipients];
        v11 = [recipients countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v37;
          do
          {
            v14 = 0;
            v34 = v12;
            do
            {
              if (*v37 != v13)
              {
                objc_enumerationMutation(recipients);
              }

              v15 = *(*(&v36 + 1) + 8 * v14);
              identifier = [v15 identifier];
              if (([v8 containsObject:identifier] & 1) == 0)
              {
                v17 = [_PSSuggestion alloc];
                bundleID = [v33 bundleID];
                conversationIdentifier = [v33 conversationIdentifier];
                groupName = [v33 groupName];
                v44 = v15;
                v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
                reason = [v33 reason];
                reasonType = [v33 reasonType];
                v24 = [(_PSSuggestion *)v17 initWithBundleID:bundleID conversationIdentifier:conversationIdentifier groupName:groupName recipients:v21 reason:reason reasonType:reasonType];

                v12 = v34;
                v8 = v31;

                [v32 addObject:v24];
                [v31 addObject:identifier];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [recipients countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v12);
        }

        v9 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v29);
  }

  suggestionsCopy = v26;
LABEL_22:

  return v32;
}

- (id)getParticipantContactsMapFromEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v19 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = eventCopy;
  obj = [eventCopy attendees];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        contactStore = self->_contactStore;
        contactPredicate = [v9 contactPredicate];
        contactKeysToFetch = [(_PSCalendarEventPredictor *)self contactKeysToFetch];
        v21 = 0;
        v13 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:contactPredicate keysToFetch:contactKeysToFetch error:&v21];
        v14 = v21;

        if ([v13 count])
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          [v19 setObject:v13 forKeyedSubscript:v9];
        }

        else
        {
          v16 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v27 = v9;
            v28 = 2112;
            v29 = v14;
            _os_log_debug_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEBUG, "Unable to find Contact for participant %@ w/ error: %@", buf, 0x16u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  return v19;
}

- (id)zkwSuggestionsFromCalendarWithPredictionContext:(id)context startDate:(id)date endDate:(id)endDate maxParticipants:(unint64_t)participants
{
  v64 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  v12 = [(EKEventStore *)self->_eventStore calendarsForEntityType:0];
  v13 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:v12];
  v14 = objc_opt_new();
  eventStore = self->_eventStore;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __111___PSCalendarEventPredictor_zkwSuggestionsFromCalendarWithPredictionContext_startDate_endDate_maxParticipants___block_invoke;
  v55[3] = &unk_1E7C26C28;
  v45 = dateCopy;
  v56 = v45;
  v16 = endDateCopy;
  v57 = v16;
  participantsCopy = participants;
  v17 = v14;
  v58 = v17;
  [(EKEventStore *)eventStore enumerateEventsMatchingPredicate:v13 usingBlock:v55];
  if ([v17 count])
  {
    v43 = v13;
    v44 = v12;
    v18 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v51 objects:v63 count:16];
    v21 = contextCopy;
    if (v20)
    {
      v22 = v20;
      v23 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = [(_PSCalendarEventPredictor *)self getParticipantContactsMapFromEvent:*(*(&v51 + 1) + 8 * i)];
          [v18 addEntriesFromDictionary:v25];
        }

        v22 = [v19 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v22);
    }

    v41 = v17;
    v42 = v16;

    v26 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [_PSCalendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:];
    }

    v27 = [_PSCalendarEventPredictor eventComparatorWithPredictionContext:contextCopy contactsMap:v18];
    v28 = [v19 sortedArrayUsingComparator:v27];

    v29 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v47 + 1) + 8 * j);
          v36 = [_PSCalendarEventPredictor getZKWSuggestionForCalendarEvent:v35 context:v21 contactsMap:v18, v41, v42];
          if (v36)
          {
            [v29 addObject:v36];
          }

          else
          {
            v37 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [_PSCalendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:v60 startDate:v35 endDate:&v61 maxParticipants:v37];
            }

            v21 = contextCopy;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v47 objects:v62 count:16];
      }

      while (v32);
    }

    v38 = [_PSCalendarEventPredictor createFinalSuggestions:v29 context:v21];

    v13 = v43;
    v12 = v44;
    v39 = v45;
    v17 = v41;
    v16 = v42;
  }

  else
  {
    v18 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_PSCalendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:];
    }

    v38 = MEMORY[0x1E695E0F0];
    v39 = v45;
    v21 = contextCopy;
  }

  return v38;
}

- (id)contactKeysToFetch
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getCNContactFormatterClass_softClass_6;
  v20 = getCNContactFormatterClass_softClass_6;
  if (!getCNContactFormatterClass_softClass_6)
  {
    ContactsLibraryCore_9(0);
    v18[3] = objc_getClass("CNContactFormatter");
    getCNContactFormatterClass_softClass_6 = v18[3];
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = [v2 descriptorForRequiredKeysForStyle:0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = getCNContactIdentifierKeySymbolLoc_ptr_8;
  v20 = getCNContactIdentifierKeySymbolLoc_ptr_8;
  if (!getCNContactIdentifierKeySymbolLoc_ptr_8)
  {
    v6 = ContactsLibrary_8();
    v18[3] = dlsym(v6, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr_8 = v18[3];
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = getCNContactPhoneNumbersKeySymbolLoc_ptr_7;
  v20 = getCNContactPhoneNumbersKeySymbolLoc_ptr_7;
  v21[0] = v7;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_7)
  {
    v9 = ContactsLibrary_8();
    v18[3] = dlsym(v9, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_7 = v18[3];
    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = *v8;
  v21[1] = v10;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v11 = getCNContactEmailAddressesKeySymbolLoc_ptr_7;
  v20 = getCNContactEmailAddressesKeySymbolLoc_ptr_7;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_7)
  {
    v12 = ContactsLibrary_8();
    v18[3] = dlsym(v12, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_7 = v18[3];
    v11 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v11)
  {
LABEL_15:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v22 = *v11;
  v23 = v4;
  v13 = MEMORY[0x1E695DEC8];
  v14 = v22;
  v15 = [v13 arrayWithObjects:v21 count:4];

  return v15;
}

+ (void)isEligibleParticipant:context:contactsMap:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isEligibleParticipant:context:contactsMap:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isEligibleParticipant:context:contactsMap:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)currentUserIsEligibleForEvent:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)currentUserIsEligibleForEvent:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)currentUserIsEligibleForEvent:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)isMaybeFaceTimeEvent:(void *)a1 earliestStartDate:latestStartDate:maxParticipants:.cold.1(void *a1)
{
  v1 = [a1 virtualConference];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isMaybeFaceTimeEvent:(void *)a1 earliestStartDate:latestStartDate:maxParticipants:.cold.3(void *a1)
{
  v1 = [a1 URL];
  v2 = [v1 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)isMaybeFaceTimeEvent:(void *)a1 earliestStartDate:latestStartDate:maxParticipants:.cold.4(void *a1)
{
  v1 = [a1 location];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getZKWSuggestionForCalendarEvent:(void *)a1 context:contactsMap:.cold.1(void *a1)
{
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)getZKWSuggestionForCalendarEvent:(void *)a1 context:contactsMap:.cold.2(void *a1)
{
  v1 = [a1 title];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)zkwSuggestionsFromCalendarWithPredictionContext:(uint8_t *)a1 startDate:(void *)a2 endDate:(void *)a3 maxParticipants:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 title];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B5ED1000, a4, OS_LOG_TYPE_DEBUG, "Event %@ has no suggestions found. Skipping", a1, 0xCu);
}

- (void)zkwSuggestionsFromCalendarWithPredictionContext:startDate:endDate:maxParticipants:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end