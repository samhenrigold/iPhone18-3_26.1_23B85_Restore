@interface ATXContextEventSuggestionProducer
- (ATXContextEventSuggestionProducer)initWithEvent:(id)event validFromStartDate:(id)date validToEndDate:(id)endDate environment:(id)environment;
- (BOOL)_isStringValidEmail:(id)email;
- (double)scoreWithEventParticipantStatusPenalty:(double)penalty;
- (id)_dateInterval;
- (id)_spotlightActionWithParticipant:(id)participant subtitle:(id)subtitle;
- (id)_stringsWithPredictionReasons:(unint64_t)reasons;
- (id)suggestionForConferenceWithScore:(double)score predictionReasons:(unint64_t)reasons;
- (id)suggestionForDNDWithScore:(double)score predictionReasons:(unint64_t)reasons;
- (id)suggestionForEventOrganizerWithScore:(double)score predictionReasons:(unint64_t)reasons;
- (id)suggestionForEventParticipantWithScore:(double)score predictionReasons:(unint64_t)reasons;
@end

@implementation ATXContextEventSuggestionProducer

- (ATXContextEventSuggestionProducer)initWithEvent:(id)event validFromStartDate:(id)date validToEndDate:(id)endDate environment:(id)environment
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  environmentCopy = environment;
  v22.receiver = self;
  v22.super_class = ATXContextEventSuggestionProducer;
  v15 = [(ATXContextEventSuggestionProducer *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_event, event);
    title = [eventCopy title];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v19 = [title stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    eventTitle = v16->_eventTitle;
    v16->_eventTitle = v19;

    objc_storeStrong(&v16->_validFromStartDate, date);
    objc_storeStrong(&v16->_validToEndDate, endDate);
    objc_storeStrong(&v16->_environment, environment);
  }

  return v16;
}

- (id)suggestionForEventOrganizerWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  v35 = *MEMORY[0x277D85DE8];
  organizer = [(EKEvent *)self->_event organizer];

  if (!organizer)
  {
    v12 = __atxlog_handle_context_heuristic(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136446210;
      v32 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v13 = "%{public}s null _event.organizer: No suggestion";
      goto LABEL_7;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  organizer2 = [(EKEvent *)self->_event organizer];
  isCurrentUser = [organizer2 isCurrentUser];

  if (isCurrentUser)
  {
    v12 = __atxlog_handle_context_heuristic(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136446210;
      v32 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v13 = "%{public}s event organizer is current user: No suggestion";
LABEL_7:
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, v13, &v31, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  organizer3 = [(EKEvent *)self->_event organizer];
  name = [organizer3 name];
  v18 = [(ATXContextEventSuggestionProducer *)self _isStringValidEmail:name];

  if (v18)
  {
    v12 = __atxlog_handle_context_heuristic(v19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      organizer4 = [(EKEvent *)self->_event organizer];
      name2 = [organizer4 name];
      v31 = 136446466;
      v32 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v33 = 2112;
      v34 = name2;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s event organizer name (%@) is an email address: No suggestion", &v31, 0x16u);
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v12 localizedStringForKey:@"SUGGESTION_EVENT_ORGANIZER_SUBTITLE" value:&stru_2850AD368 table:0];
  organizer5 = [(EKEvent *)self->_event organizer];
  v24 = [(ATXContextEventSuggestionProducer *)self _spotlightActionWithParticipant:organizer5 subtitle:v22];

  if (v24)
  {
    v26 = self->_eventTitle;
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
    v28 = v27;
    _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v14 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v24 predictionReasons:reasons localizedReason:v26 score:_dateInterval dateInterval:v28];
  }

  else
  {
    v30 = __atxlog_handle_context_heuristic(v25);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "_actionWithParticipant returned nil", &v31, 2u);
    }

    v14 = 0;
  }

LABEL_9:

  return v14;
}

- (BOOL)_isStringValidEmail:(id)email
{
  v18 = *MEMORY[0x277D85DE8];
  if (!email)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA948];
  emailCopy = email;
  v5 = [v3 dataDetectorWithTypes:32 error:0];
  v6 = [v5 matchesInString:emailCopy options:0 range:{0, objc_msgSend(emailCopy, "length")}];

  memset(v16, 0, sizeof(v16));
  if ([v6 countByEnumeratingWithState:v16 objects:v17 count:16] && (v7 = **(&v16[0] + 1), objc_msgSend(**(&v16[0] + 1), "URL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "scheme"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lowercaseString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"mailto"), v10, v9, v8, v11))
  {
    v12 = [v7 URL];
    resourceSpecifier = [v12 resourceSpecifier];
    v14 = [resourceSpecifier length] != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)suggestionForEventParticipantWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  organizer = [(EKEvent *)self->_event organizer];
  isCurrentUser = [organizer isCurrentUser];

  if ((isCurrentUser & 1) == 0)
  {
    firstObject = __atxlog_handle_context_heuristic(v10);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v37 = "[ATXContextEventSuggestionProducer suggestionForEventParticipantWithScore:predictionReasons:]";
      v27 = "%{public}s You are not the organizer: No suggestion";
      v28 = firstObject;
      v29 = 12;
LABEL_19:
      _os_log_impl(&dword_23E3EA000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    }

LABEL_20:
    v26 = 0;
    goto LABEL_25;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  attendees = [(EKEvent *)self->_event attendees];
  v12 = [attendees countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(attendees);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if (([v16 isCurrentUser] & 1) == 0 && objc_msgSend(v16, "participantType") != 2)
        {
          [v7 addObject:v16];
        }
      }

      v13 = [attendees countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v13);
  }

  v17 = [v7 count];
  if (v17 != 1)
  {
    firstObject = __atxlog_handle_context_heuristic(v17);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v7 count];
      *buf = 136446466;
      v37 = "[ATXContextEventSuggestionProducer suggestionForEventParticipantWithScore:predictionReasons:]";
      v38 = 2048;
      v39 = v30;
      v27 = "%{public}s %lu other participants: No suggestion";
      v28 = firstObject;
      v29 = 22;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  firstObject = [v7 firstObject];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SUGGESTION_EVENT_PARTICIPANT_SUBTITLE" value:&stru_2850AD368 table:0];
  v21 = [(ATXContextEventSuggestionProducer *)self _spotlightActionWithParticipant:firstObject subtitle:v20];
  if (v21)
  {
    v22 = self->_eventTitle;
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
    v24 = v23;
    _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v26 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v21 predictionReasons:reasons localizedReason:v22 score:_dateInterval dateInterval:v24];
  }

  else
  {
    _dateInterval = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(_dateInterval, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, _dateInterval, OS_LOG_TYPE_DEFAULT, "_actionWithParticipant returned nil", buf, 2u);
    }

    v26 = 0;
  }

LABEL_25:

  return v26;
}

- (id)_spotlightActionWithParticipant:(id)participant subtitle:(id)subtitle
{
  v27 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  subtitleCopy = subtitle;
  name = [participantCopy name];

  if (name)
  {
    heuristicDevice = [(ATXContextHeuristicsEnvironment *)self->_environment heuristicDevice];
    v10 = [heuristicDevice contactForParticipant:participantCopy];

    name = [v10 identifier];
  }

  name2 = [participantCopy name];
  emailAddress = [participantCopy emailAddress];
  v13 = __atxlog_handle_context_heuristic(emailAddress);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446978;
    v20 = "[ATXContextEventSuggestionProducer _spotlightActionWithParticipant:subtitle:]";
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = name2;
    v25 = 2112;
    v26 = emailAddress;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s participantID:%@ participantName:%@, participantEmail:%@", &v19, 0x2Au);
  }

  v14 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
  v15 = v14;
  if (name2 && name)
  {
    v16 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:name2 contactIdentifier:name subtitle:subtitleCopy criteria:v14];
    goto LABEL_16;
  }

  if (name2 && emailAddress)
  {
    v16 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:name2 contactEmail:emailAddress subtitle:subtitleCopy criteria:v14];
    if (v16)
    {
      goto LABEL_16;
    }

    v17 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "Updated api to create participant using email not available", &v19, 2u);
    }
  }

  else
  {
    v17 = __atxlog_handle_context_heuristic(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicBirthdayContact _spotlightActionWithName:v17 email:? identifier:? startDate:? endDate:? subtitle:?];
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)_stringsWithPredictionReasons:(unint64_t)reasons
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = objc_opt_new();
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __67__ATXContextEventSuggestionProducer__stringsWithPredictionReasons___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

- (id)suggestionForDNDWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  endDate = [(EKEvent *)self->_event endDate];
  startDate = [(EKEvent *)self->_event startDate];
  v8 = [startDate dateByAddingTimeInterval:-900.0];

  eventTitle = self->_eventTitle;
  uUID = [(EKEvent *)self->_event UUID];
  calendarItemIdentifier = [(EKEvent *)self->_event calendarItemIdentifier];
  [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
  v13 = v12;
  v14 = self->_eventTitle;
  v15 = [(NSDate *)self->_validFromStartDate laterDate:v8];
  validToEndDate = self->_validToEndDate;
  _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
  v18 = [ATXContextHeuristicSuggestionProducer suggestionForDNDWithTitle:eventTitle eventUniqueID:uUID identifier:calendarItemIdentifier until:endDate score:reasons predictionReasons:v14 localizedReason:v13 validFromStartDate:v15 validToEndDate:validToEndDate dateInterval:_dateInterval];

  return v18;
}

- (id)suggestionForConferenceWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  virtualConference = [(EKEvent *)self->_event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v11 = [firstObject URL];
  v12 = v11;
  if (v11)
  {
    conferenceURLForDisplay = v11;
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v14 = conferenceURLForDisplay;

  objc_autoreleasePoolPop(v7);
  v16 = __atxlog_handle_context_heuristic(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    eventIdentifier = [(EKEvent *)self->_event eventIdentifier];
    title = [(EKEvent *)self->_event title];
    v19 = [title hash];
    startDate = [(EKEvent *)self->_event startDate];
    v28 = 138413058;
    v29 = eventIdentifier;
    v30 = 2048;
    v31 = v19;
    v32 = 2112;
    v33 = startDate;
    v34 = 1024;
    v35 = v14 != 0;
    _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has conferenceURL:%{BOOL}i", &v28, 0x26u);
  }

  if (v14)
  {
    v21 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
    v23 = v22;
    eventTitle = self->_eventTitle;
    _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v26 = [ATXContextHeuristicSuggestionProducer suggestionForConferenceWithURL:v14 score:reasons predictionReasons:eventTitle localizedReason:v21 criteria:_dateInterval dateInterval:v23];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (double)scoreWithEventParticipantStatusPenalty:(double)penalty
{
  p_event = &self->_event;
  participationStatus = [(EKEvent *)self->_event participationStatus];
  if (participationStatus != 2)
  {
    if (participationStatus == 4)
    {
      return penalty * 0.5;
    }

    else
    {
      v7 = __atxlog_handle_context_heuristic(participationStatus);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:v7];
      }
    }
  }

  return penalty;
}

- (id)_dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [(EKEvent *)self->_event startDate];
  endDate = [(EKEvent *)self->_event endDate];
  v6 = [v3 initWithStartDate:startDate endDate:endDate];

  return v6;
}

- (void)scoreWithEventParticipantStatusPenalty:(NSObject *)a3 .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = [*a2 participationStatus];
  v6 = 136447234;
  v7 = "[ATXContextEventSuggestionProducer scoreWithEventParticipantStatusPenalty:]";
  v8 = 2112;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2048;
  v13 = 2;
  v14 = 2048;
  v15 = 4;
  _os_log_fault_impl(&dword_23E3EA000, a3, OS_LOG_TYPE_FAULT, "%{public}s _event.participationStatus for %@ is %ld not one of {%ld, %ld}. No penalty aplied", &v6, 0x34u);
}

@end