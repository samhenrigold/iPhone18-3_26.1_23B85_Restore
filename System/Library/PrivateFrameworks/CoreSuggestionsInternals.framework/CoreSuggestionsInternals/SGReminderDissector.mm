@interface SGReminderDissector
+ (BOOL)isReminderDueDateComponentsInPast:(id)past givenReferenceDate:(id)date allDay:(BOOL)day;
+ (id)enrichedTaggedCharacterRangesFromEntity:(id)entity forMessage:(id)message;
+ (id)enrichedTaggedCharacterRangesFromTaggedCharacterRanges:(id)ranges messageIsSent:(BOOL)sent;
+ (id)getContactIdentifierForName:(id)name andEmail:(id)email ifMatchingPredicate:(id)predicate;
+ (id)sharedInstance;
- (BOOL)_isTestMessage:(id)message;
- (BOOL)isAllDay:(id)day;
- (BOOL)isValidTextMessageForProcessing:(id)processing;
- (BOOL)mailAddressIsAccountOwner:(id)owner;
- (SGReminderDissector)init;
- (SGReminderDissector)initWithConversations:(id)conversations rtRoutineManager:(id)manager;
- (id)_detectedReminderEnrichmentFromReminderMessage:(id)message parentEntity:(id)entity language:(id)language parentMessage:(id)parentMessage startTimeProcessing:(unint64_t)processing;
- (id)_reminderEnrichmentWithTitle:(id)title dueDateComponents:(id)components dueLocationType:(unsigned __int8)type dueLocation:(id)location dueLocationTrigger:(unsigned __int8)trigger sourceURL:(id)l reminderStatus:(unsigned __int8)status parentEntity:(id)self0 parentMessage:(id)self1 allDay:(BOOL)self2;
- (id)_reminderMessageForTextMessage:(id)message withEntity:(id)entity extractionModel:(id)model processingLanguage:(id)language preprocessing:(BOOL)preprocessing;
- (id)_testReminder:(id)reminder entity:(id)entity;
- (id)_validateDueDateComponents:(id)components dueLocation:(id)location forReminderMessages:(id)messages;
- (id)defaultDueDateComponentsFromMessages:(id)messages;
- (id)dueDateComponentsFromMessages:(id)messages;
- (id)dueLocationFromMessages:(id)messages;
- (id)extractReminderFromMailMessage:(id)message entity:(id)entity;
- (id)extractReminderFromOwnedMailMessage:(id)message entity:(id)entity;
- (id)extractReminderFromTextMessage:(id)message entity:(id)entity store:(id)store;
- (id)fetchLocationOfInterestByType:(int64_t)type name:(id)name;
- (id)processingLanguageForContent:(id)content;
- (id)reminderTitleForContent:(id)content;
- (id)reminderTitleFromMessages:(id)messages forLanguage:(id)language;
- (id)storageLocationFromDueLocation:(id)location;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGReminderDissector

- (id)fetchLocationOfInterestByType:(int64_t)type name:(id)name
{
  nameCopy = name;
  v7 = dispatch_semaphore_create(0);
  rtRoutineManager = self->_rtRoutineManager;
  if (rtRoutineManager)
  {
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__1849;
    v41 = __Block_byref_object_dispose__1850;
    v42 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__SGReminderDissector_fetchLocationOfInterestByType_name___block_invoke;
    v32[3] = &unk_27894B308;
    typeCopy = type;
    v33 = nameCopy;
    v35 = buf;
    v9 = v7;
    v34 = v9;
    [(RTRoutineManager *)rtRoutineManager fetchLocationsOfInterestOfType:type withHandler:v32];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v38 + 5))
    {
      v10 = [SGStorageLocation alloc];
      preferredName = [*(v38 + 5) preferredName];
      mapItem = [*(v38 + 5) mapItem];
      location = [mapItem location];
      [location latitude];
      v13 = v12;
      mapItem2 = [*(v38 + 5) mapItem];
      location2 = [mapItem2 location];
      [location2 longitude];
      v17 = v16;
      mapItem3 = [*(v38 + 5) mapItem];
      location3 = [mapItem3 location];
      [location3 horizontalUncertainty];
      v21 = v20;
      [*(v38 + 5) confidence];
      v23 = v22;
      mapItem4 = [*(v38 + 5) mapItem];
      geoMapItemHandle = [mapItem4 geoMapItemHandle];
      v26 = [(SGStorageLocation *)v10 initWithType:1 label:preferredName address:0 airportCode:0 latitude:geoMapItemHandle longitude:v13 accuracy:v17 quality:v21 handle:v23];
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    _Block_object_dispose(buf, 8);
    v28 = v27;
  }

  else
  {
    v27 = sgRemindersLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "Unable to load RTRoutineManager", buf, 2u);
    }

    v28 = 0;
  }

  return v28;
}

void __58__SGReminderDissector_fetchLocationOfInterestByType_name___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sgRemindersLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v6;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Unable to get LocationsOfInterest: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 56) != -1)
  {
    if (objc_msgSend_count(v5) == 1)
    {
      v8 = [v5 firstObject];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
LABEL_31:

      goto LABEL_32;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v5;
    v19 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (!v19)
    {
      goto LABEL_31;
    }

    v20 = v19;
    v28 = v6;
    v21 = 0;
    v22 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v10);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        v25 = [v24 visits];
        v26 = objc_msgSend_count(v25);

        if (v26 > v21)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v24);
          v27 = [v24 visits];
          v21 = objc_msgSend_count(v27);
        }
      }

      v20 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
LABEL_30:
    v6 = v28;
    goto LABEL_31;
  }

  if ([*(a1 + 32) length])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (!v11)
    {
      goto LABEL_31;
    }

    v12 = v11;
    v28 = v6;
    v13 = *v34;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * j);
        v16 = [v15 preferredName];
        if ([v16 length])
        {
          v17 = [v15 preferredName];
          v18 = [v17 caseInsensitiveCompare:*(a1 + 32)];

          if (!v18)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
    goto LABEL_30;
  }

LABEL_32:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)storageLocationFromDueLocation:(id)location
{
  locationCopy = location;
  locationType = [locationCopy locationType];
  name = 0;
  if (locationType <= 1)
  {
    if (!locationType)
    {
      goto LABEL_14;
    }

    v8 = 0;
    v7 = 0;
    if (locationType == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (locationType == 4)
    {
      name = [locationCopy name];
      if (!name)
      {
        v7 = 0;
        goto LABEL_13;
      }

      v8 = -1;
      goto LABEL_12;
    }

    if (locationType == 3)
    {
      name = 0;
      v8 = 2;
      goto LABEL_12;
    }

    v7 = 0;
    if (locationType == 2)
    {
      name = 0;
      v8 = 1;
LABEL_12:
      v7 = [(SGReminderDissector *)self fetchLocationOfInterestByType:v8 name:name];
    }
  }

LABEL_13:
  v9 = v7;

  name = v9;
LABEL_14:

  return name;
}

- (id)_reminderEnrichmentWithTitle:(id)title dueDateComponents:(id)components dueLocationType:(unsigned __int8)type dueLocation:(id)location dueLocationTrigger:(unsigned __int8)trigger sourceURL:(id)l reminderStatus:(unsigned __int8)status parentEntity:(id)self0 parentMessage:(id)self1 allDay:(BOOL)self2
{
  triggerCopy = trigger;
  typeCopy = type;
  v84 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  componentsCopy = components;
  locationCopy = location;
  lCopy = l;
  entityCopy = entity;
  messageCopy = message;
  v74 = messageCopy;
  if (componentsCopy | locationCopy)
  {
    v21 = messageCopy;
    v71 = lCopy;
    if (componentsCopy)
    {
      date = [messageCopy date];
      if (date)
      {
        v23 = date;
        v24 = objc_opt_class();
        date2 = [v21 date];
        if ([v24 isReminderDueDateComponentsInPast:componentsCopy givenReferenceDate:date2 allDay:day])
        {
          showPastEvents = [MEMORY[0x277D02098] showPastEvents];

          lCopy = v71;
          if ((showPastEvents & 1) == 0)
          {
            v27 = sgRemindersLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: DueDate in past, bailing", buf, 2u);
            }
          }
        }

        else
        {

          lCopy = v71;
        }
      }
    }

    v30 = sgRemindersLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740483;
      v79 = titleCopy;
      v80 = 2117;
      v81 = componentsCopy;
      v82 = 2117;
      v83 = locationCopy;
      _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Creating enrichment for Reminder: %{sensitive}@, dueTime: %{sensitive}@, dueLocation: %{sensitive}@", buf, 0x20u);
    }

    v31 = sgRemindersLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v31, OS_LOG_TYPE_INFO, "Creating Reminder enrichment", buf, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v21;
      if ([v32 isSent])
      {
        recipients = [v32 recipients];
        firstObject = [recipients firstObject];
        contactIdentifier = [firstObject contactIdentifier];

        lCopy = v71;
      }

      else
      {
        recipients = [v32 sender];
        contactIdentifier = [recipients contactIdentifier];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = sgRemindersLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "SGReminderDissector - Unknown object encountered while resolving contactId", buf, 2u);
        }

LABEL_29:
        v36 = sgRemindersLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v36, OS_LOG_TYPE_DEFAULT, "SGReminderDissector - Could not resolve Contact. Nil contactIdentifier", buf, 2u);
        }

        v28 = 0;
        contactIdentifier = &stru_284703F00;
        goto LABEL_32;
      }

      v36 = v21;
      from = [v36 from];
      asCSPerson = [from asCSPerson];
      contactIdentifier = [asCSPerson contactIdentifier];

      if (contactIdentifier)
      {
        v28 = contactIdentifier;
        lCopy = v71;
LABEL_32:

LABEL_33:
        v70 = locationCopy;
        titleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", titleCopy];
        if (!titleCopy)
        {
          v57 = sgRemindersLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v79 = entityCopy;
            _os_log_error_impl(&dword_231E60000, v57, OS_LOG_TYPE_ERROR, "No groupId found for entity %@", buf, 0xCu);
          }

          v29 = 0;
          goto LABEL_48;
        }

        [entityCopy creationTimestamp];
        v47 = v46;
        duplicateKey = [entityCopy duplicateKey];
        v49 = [SGDuplicateKey duplicateKeyForPseudoReminderWithGroupId:titleCopy withCreationTime:duplicateKey parentKey:v47];

        v67 = v49;
        v68 = entityCopy;
        v29 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v49 title:titleCopy parent:entityCopy];
        v69 = titleCopy;
        if (componentsCopy)
        {
          v50 = MEMORY[0x277D020E8];
          date3 = [componentsCopy date];
          timeZone = [componentsCopy timeZone];
          date4 = [componentsCopy date];
          timeZone2 = [componentsCopy timeZone];
          v55 = [v50 rangeWithStartDate:date3 startTimeZone:timeZone endDate:date4 endTimeZone:timeZone2];
          [(SGEntity *)v29 setTimeRange:v55];

          v56 = triggerCopy;
        }

        else
        {
          v56 = triggerCopy;
          if (!v70 || !triggerCopy)
          {
            goto LABEL_43;
          }

          v58 = objc_alloc(MEMORY[0x277CBEB58]);
          v77 = v70;
          date3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
          timeZone = [v58 initWithArray:date3];
          [(SGEntity *)v29 setLocations:timeZone];
        }

LABEL_43:
        v59 = MEMORY[0x277D01FA0];
        v75[0] = *MEMORY[0x277D02438];
        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:status];
        v76[0] = v60;
        v75[1] = *MEMORY[0x277D02428];
        v61 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
        v76[1] = v61;
        v75[2] = *MEMORY[0x277D02430];
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
        v75[3] = *MEMORY[0x277D02420];
        v76[2] = v62;
        v76[3] = contactIdentifier;
        v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:4];
        v64 = [v59 reminderMetadata:v63];

        entityCopy = v68;
        [v68 creationTimestamp];
        [(SGPipelineEnrichment *)v29 setCreationTimestamp:?];
        if (v64)
        {
          [(SGEntity *)v29 addTag:v64];
        }

        lCopy = v71;
        if (day)
        {
          allDay = [MEMORY[0x277D01FA0] allDay];
          [(SGEntity *)v29 addTag:allDay];
        }

        titleCopy = v69;
        v57 = v67;
LABEL_48:

        locationCopy = v70;
        goto LABEL_49;
      }

      v40 = objc_opt_class();
      from2 = [v36 from];
      name = [from2 name];
      from3 = [v36 from];
      emailAddress = [from3 emailAddress];
      recipients = [v40 getContactIdentifierForName:name andEmail:emailAddress ifMatchingPredicate:&__block_literal_global_120];

      contactIdentifier = [recipients identifier];
      lCopy = v71;
      v21 = v74;
    }

    v28 = contactIdentifier;
    if (contactIdentifier)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v28 = sgRemindersLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v28, OS_LOG_TYPE_DEBUG, "No dueLocation or dueDate, bailing", buf, 2u);
  }

  v29 = 0;
LABEL_49:

  return v29;
}

- (id)_testReminder:(id)reminder entity:(id)entity
{
  v6 = MEMORY[0x277CBEA80];
  entityCopy = entity;
  reminderCopy = reminder;
  currentCalendar = [v6 currentCalendar];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v11 = objc_opt_new();
  v12 = [v11 dateByAddingTimeInterval:172800.0];
  v13 = [currentCalendar componentsInTimeZone:defaultTimeZone fromDate:v12];

  v14 = [(SGReminderDissector *)self fetchLocationOfInterestByType:0 name:0];
  v15 = MEMORY[0x277D01F88];
  uniqueIdentifier = [reminderCopy uniqueIdentifier];
  v17 = [v15 urlForEKEventFromTextMessageWithUniqueIdentifier:uniqueIdentifier];
  LOBYTE(v21) = 0;
  LOBYTE(v20) = 2;
  v18 = [(SGReminderDissector *)self _reminderEnrichmentWithTitle:@"TEST REMINDER" dueDateComponents:v13 dueLocationType:1 dueLocation:v14 dueLocationTrigger:1 sourceURL:v17 reminderStatus:v20 parentEntity:entityCopy parentMessage:reminderCopy allDay:v21];

  return v18;
}

- (BOOL)_isTestMessage:(id)message
{
  messageCopy = message;
  textContent = [messageCopy textContent];
  v5 = [textContent length];

  if (v5)
  {
    textContent2 = [messageCopy textContent];
    v7 = [textContent2 isEqualToString:@"SG_QA_REMINDER_TEST"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_reminderMessageForTextMessage:(id)message withEntity:(id)entity extractionModel:(id)model processingLanguage:(id)language preprocessing:(BOOL)preprocessing
{
  messageCopy = message;
  entityCopy = entity;
  modelCopy = model;
  languageCopy = language;
  v16 = languageCopy;
  if (!modelCopy)
  {
    v21 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      v23 = 0;
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "SGReminderDissector: ExtractionModel is nil";
LABEL_21:
    _os_log_debug_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 2u);
    goto LABEL_12;
  }

  if (!languageCopy)
  {
    v21 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v22 = "SGReminderDissector: Processinglanguage is nil";
    goto LABEL_21;
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1849;
  v38 = __Block_byref_object_dispose__1850;
  v39 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __114__SGReminderDissector__reminderMessageForTextMessage_withEntity_extractionModel_processingLanguage_preprocessing___block_invoke;
  v28[3] = &unk_27894E068;
  v17 = entityCopy;
  v29 = v17;
  v18 = messageCopy;
  v30 = v18;
  selfCopy = self;
  v33 = buf;
  v31 = v16;
  [v17 runWithDissectorLock:v28];
  if (objc_msgSend_count(*(v35 + 5)))
  {
    conversationIdentifier = [modelCopy modelInferences:*(v35 + 5)];
    if (conversationIdentifier || preprocessing)
    {
      v25 = [SGReminderMessage alloc];
      v23 = [(SGReminderMessage *)v25 initWithMessage:v18 entity:v17 enrichedTaggedCharacterRanges:*(v35 + 5) modelOutput:conversationIdentifier];
      goto LABEL_16;
    }

    v20 = sgRemindersLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "SGReminderDissector: No model output, bailing", v27, 2u);
    }

    conversationIdentifier = 0;
  }

  else
  {
    conversations = self->_conversations;
    conversationIdentifier = [v18 conversationIdentifier];
    [(NSMutableDictionary *)conversations removeObjectForKey:conversationIdentifier];
  }

  v23 = 0;
LABEL_16:

  _Block_object_dispose(buf, 8);
LABEL_17:

  return v23;
}

uint64_t __114__SGReminderDissector__reminderMessageForTextMessage_withEntity_extractionModel_processingLanguage_preprocessing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[SGPOSTagger sharedInstance];
  v4 = [*(a1 + 40) textContent];
  v5 = [v3 tokenizeTextContent:v4 languageHint:*(a1 + 48)];
  [v2 addTaggedCharacterRanges:v5];

  v6 = [objc_opt_class() enrichedTaggedCharacterRangesFromEntity:*(a1 + 32) forMessage:*(a1 + 40)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x2821F96F8](v6, v8);
}

- (id)_validateDueDateComponents:(id)components dueLocation:(id)location forReminderMessages:(id)messages
{
  componentsCopy = components;
  locationCopy = location;
  messagesCopy = messages;
  if (!(componentsCopy | locationCopy))
  {
    componentsCopy = [(SGReminderDissector *)self defaultDueDateComponentsFromMessages:messagesCopy];
    v11 = +[SGReminderTrialClientWrapper sharedInstance];
    v12 = v11;
    if (!componentsCopy)
    {
      if ([v11 triggerOptional])
      {
        date = [MEMORY[0x277CBEAA8] date];
        componentsCopy = [(SGExtractionDocument *)SGReminderMessage allDayDateComponentsFromDate:date];
      }

      else
      {
        componentsCopy = 0;
      }
    }
  }

  if (componentsCopy)
  {
    v14 = objc_opt_class();
    date2 = [MEMORY[0x277CBEAA8] date];
    if ([v14 isReminderDueDateComponentsInPast:componentsCopy givenReferenceDate:date2 allDay:{-[SGReminderDissector isAllDay:](self, "isAllDay:", componentsCopy)}])
    {
      showPastEvents = [MEMORY[0x277D02098] showPastEvents];

      if ((showPastEvents & 1) == 0)
      {
        v17 = sgRemindersLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: Date is in the past, skipping", v19, 2u);
        }

        componentsCopy = 0;
      }
    }

    else
    {
    }
  }

  return componentsCopy;
}

- (BOOL)isAllDay:(id)day
{
  dayCopy = day;
  v4 = dayCopy;
  v5 = dayCopy && [dayCopy hour] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "minute") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "second") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "nanosecond") == 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (id)defaultDueDateComponentsFromMessages:(id)messages
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  messagesCopy = messages;
  v4 = [messagesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hasTrigger])
        {
          v4 = 0;
          goto LABEL_12;
        }

        v5 |= [v8 isTriggerOptional];
      }

      v4 = [messagesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v4 = [(SGExtractionDocument *)SGReminderMessage allDayDateComponentsFromDate:date];
      goto LABEL_13;
    }

    v4 = 0;
  }

  else
  {
LABEL_12:
    date = messagesCopy;
LABEL_13:
  }

  return v4;
}

- (id)dueLocationFromMessages:(id)messages
{
  v19 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dueLocation = [*(*(&v14 + 1) + 8 * i) dueLocation];
        if (dueLocation)
        {
          [v4 addObject:dueLocation];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (objc_msgSend_count(v4) == 1)
  {
    anyObject = [v4 anyObject];
LABEL_14:
    v12 = anyObject;
    goto LABEL_16;
  }

  if (objc_msgSend_count(v4) >= 2)
  {
    anyObject = [SGReminderDueLocation mergeDueLocations:v4];
    goto LABEL_14;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)dueDateComponentsFromMessages:(id)messages
{
  v36 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = messagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dueDateDataDetectorMatches = [*(*(&v30 + 1) + 8 * i) dueDateDataDetectorMatches];
        first = [dueDateDataDetectorMatches first];

        if (first)
        {
          first2 = [dueDateDataDetectorMatches first];
          [v5 addObjectsFromArray:first2];

          second = [dueDateDataDetectorMatches second];
          bOOLValue = [second BOOLValue];

          v10 &= bOOLValue ^ 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [SGExtractionDocument dateComponentsFromDataDetectorMatch:*(*(&v26 + 1) + 8 * j) inferDates:v10 & 1 approximateTime:1 partialDate:1 useEndForDurations:0, v26];
        if (v22)
        {
          [v4 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  if (objc_msgSend_count(v4) == 1)
  {
    anyObject = [v4 anyObject];
  }

  else if (objc_msgSend_count(v4) < 2)
  {
    anyObject = 0;
  }

  else
  {
    allObjects = [v4 allObjects];
    anyObject = [SGExtractionDocument mergeDetectedDateComponents:allObjects];
  }

  return anyObject;
}

- (id)reminderTitleFromMessages:(id)messages forLanguage:(id)language
{
  v21 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  languageCopy = language;
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = messagesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) detectedTitleForLanguage:{languageCopy, v16}];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (objc_msgSend_count(v7) == 1)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)mailAddressIsAccountOwner:(id)owner
{
  v19 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v4 = +[SGContactStoreFactory contactStore];
  v5 = [SGCuratedContactMatcher fetchMeContactFromContactStore:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  emailAddresses = [v5 emailAddresses];
  v7 = [emailAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        emailAddress = [ownerCopy emailAddress];
        v12 = SGNormalizeEmailAddress();
        LOBYTE(v10) = [v10 isEqualToString:v12];

        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [emailAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)processingLanguageForContent:(id)content
{
  v3 = [MEMORY[0x277D02548] detectLanguageFromText:content];
  defaultLanguage = [MEMORY[0x277D02548] defaultLanguage];
  v5 = [v3 isEqual:defaultLanguage];
  if (v3)
  {
    v6 = defaultLanguage == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v5 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (BOOL)isValidTextMessageForProcessing:(id)processing
{
  processingCopy = processing;
  textContent = [processingCopy textContent];
  if (![textContent length])
  {
    goto LABEL_4;
  }

  textContent2 = [processingCopy textContent];
  if ([textContent2 length] >= 0x3E9)
  {

LABEL_4:
LABEL_5:
    v6 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v12 = "SGReminderDissector: Message too short or too long to process or missing conversationIdentifier, bailing";
    v13 = buf;
LABEL_14:
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, v12, v13, 2u);
    goto LABEL_6;
  }

  conversationIdentifier = [processingCopy conversationIdentifier];

  if (!conversationIdentifier)
  {
    goto LABEL_5;
  }

  recipients = [processingCopy recipients];
  v11 = objc_msgSend_count(recipients);

  if (v11 < 3)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v6 = sgRemindersLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 0;
    v12 = "SGReminderDissector: Message is a group chat, bailing";
    v13 = &v14;
    goto LABEL_14;
  }

LABEL_6:

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)extractReminderFromTextMessage:(id)message entity:(id)entity store:(id)store
{
  v142 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  storeCopy = store;
  v10 = sgRemindersLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "Dissecting Text Message to find reminder", &buf, 2u);
  }

  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  conversations = self->_conversations;
  conversationIdentifier = [messageCopy conversationIdentifier];
  v13 = [(NSMutableDictionary *)conversations objectForKeyedSubscript:conversationIdentifier];

  if ([(SGReminderDissector *)self _isTestMessage:messageCopy])
  {
    v14 = [(SGReminderDissector *)self _testReminder:messageCopy entity:entityCopy];
    goto LABEL_69;
  }

  duplicateKey = [entityCopy duplicateKey];
  entityKey = [duplicateKey entityKey];

  source = [entityKey source];
  v17 = [source isEqualToString:@"suggest_tool_preprocess"];

  if (v17)
  {
    defaultLanguage = [MEMORY[0x277D02548] defaultLanguage];
    goto LABEL_7;
  }

  if (![(SGReminderDissector *)self isValidTextMessageForProcessing:messageCopy])
  {
    conversationIdentifier2 = [messageCopy conversationIdentifier];

    if (!conversationIdentifier2)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

  if (![messageCopy isSent])
  {
    v42 = +[SGReminderExtractionModel sharedInstance];
    textContent = [messageCopy textContent];
    v44 = [v42 hasWhitelistedVerbInContent:textContent];

    if (v44)
    {
      v45 = [[SGReminderMessage alloc] initWithMessage:messageCopy entity:entityCopy enrichedTaggedCharacterRanges:0 modelOutput:0];
      v46 = self->_conversations;
      conversationIdentifier3 = [messageCopy conversationIdentifier];
      [(NSMutableDictionary *)v46 setObject:v45 forKeyedSubscript:conversationIdentifier3];

      textContent2 = [messageCopy textContent];
      LODWORD(v45) = [SGReminderMessage isConfirmationOptionalForContent:textContent2];

      if (!v45)
      {
        goto LABEL_39;
      }

      sender = [messageCopy sender];
      if ([sender sg_isSignificantWithStore:storeCopy])
      {
        v49 = mach_absolute_time();
        textContent3 = [messageCopy textContent];
        v116 = [(SGReminderDissector *)self processingLanguageForContent:textContent3];

        v51 = +[SGReminderExtractionModel sharedInstance];
        v52 = [(SGReminderDissector *)self _reminderMessageForTextMessage:messageCopy withEntity:entityCopy extractionModel:v51 processingLanguage:v116 preprocessing:0];

        if (v52)
        {
          v53 = self->_conversations;
          conversationIdentifier4 = [messageCopy conversationIdentifier];
          [(NSMutableDictionary *)v53 setObject:v52 forKeyedSubscript:conversationIdentifier4];

          v14 = [(SGReminderDissector *)self _detectedReminderEnrichmentFromReminderMessage:v52 parentEntity:entityCopy language:v116 parentMessage:messageCopy startTimeProcessing:v49];
          if (v14)
          {
            v55 = self->_conversations;
            conversationIdentifier5 = [messageCopy conversationIdentifier];
            v57 = [(NSMutableDictionary *)v55 objectForKeyedSubscript:conversationIdentifier5];
            duplicateKey2 = [v14 duplicateKey];
            [v57 setExtractedReminderDuplicateKey:duplicateKey2];

            v59 = v14;
          }

          sender = v14;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_64;
      }

LABEL_66:
      v14 = 0;
      goto LABEL_67;
    }

LABEL_65:
    v75 = self->_conversations;
    sender = [messageCopy conversationIdentifier];
    [(NSMutableDictionary *)v75 removeObjectForKey:sender];
    goto LABEL_66;
  }

  if (v13)
  {
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    message = [v13 message];
    textContent4 = [message textContent];
    textContent5 = [messageCopy textContent];
    v34 = [v30 initWithFormat:@"%@ %@", textContent4, textContent5];

    v35 = [(SGReminderDissector *)self processingLanguageForContent:v34];

    if (v35)
    {
      defaultLanguage = v35;
LABEL_7:
      v19 = sgRemindersLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = defaultLanguage;
        _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "SGReminderDissector: ProcessingLanguage: %@", &buf, 0xCu);
      }

      v116 = defaultLanguage;

      v129[2] = 0;
      v129[0] = @"ReminderDissector full extraction";
      v110 = mach_absolute_time();
      v129[1] = v110;
      v115 = +[SGReminderExtractionModel sharedInstance];
      v20 = [SGReminderDissector _reminderMessageForTextMessage:"_reminderMessageForTextMessage:withEntity:extractionModel:processingLanguage:preprocessing:" withEntity:messageCopy extractionModel:entityCopy processingLanguage:? preprocessing:?];
      v21 = v20;
      if (!v20)
      {
        v37 = self->_conversations;
        conversationIdentifier6 = [messageCopy conversationIdentifier];
        [(NSMutableDictionary *)v37 removeObjectForKey:conversationIdentifier6];

        sender = 0;
LABEL_63:

        SGRecordMeasurementState(v129);
        v14 = sender;
LABEL_64:

LABEL_67:
        goto LABEL_68;
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v138 = 0x3032000000;
      v139 = __Block_byref_object_copy__1849;
      v140 = __Block_byref_object_dispose__1850;
      v141 = 0;
      if (v13)
      {
        if ([v20 isConfirmation] && (objc_msgSend(v13, "extractedReminderDuplicateKey"), v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v23))
        {
          v77 = sgRemindersLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            *v134 = 0;
            _os_log_debug_impl(&dword_231E60000, v77, OS_LOG_TYPE_DEBUG, "SGReminderDissector: Message with confirmation found", v134, 2u);
          }

          modelOutput = [v13 modelOutput];
          v79 = modelOutput == 0;

          if (v79)
          {
            entity = [v13 entity];
            [entity acquireDissectorLock];

            entity2 = [v13 entity];
            v114 = +[SGPOSTagger sharedInstance];
            message2 = [v13 message];
            textContent6 = [message2 textContent];
            v83 = [v114 tokenizeTextContent:textContent6 languageHint:v116];
            [entity2 addTaggedCharacterRanges:v83];

            v84 = objc_opt_class();
            entity3 = [v13 entity];
            message3 = [v13 message];
            v113 = [v84 enrichedTaggedCharacterRangesFromEntity:entity3 forMessage:message3];

            entity4 = [v13 entity];
            [entity4 releaseDissectorLock];

            v88 = [v115 modelInferences:v113];
            if (!v88)
            {
              v74 = sgRemindersLogHandle();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                *v134 = 0;
                _os_log_error_impl(&dword_231E60000, v74, OS_LOG_TYPE_ERROR, "SGReminderDissector: No modelOutput for previousMessage", v134, 2u);
              }

              sender = 0;
              goto LABEL_62;
            }

            [v13 setEnrichedTaggedCharacterRanges:v113];
            [v13 setModelOutput:v88];
          }

          if ([v13 isProposal])
          {
            v89 = sgRemindersLogHandle();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              *v134 = 0;
              _os_log_debug_impl(&dword_231E60000, v89, OS_LOG_TYPE_DEBUG, "SGReminderDissector: Previous message has proposal and question", v134, 2u);
            }

            v136[0] = v13;
            v136[1] = v21;
            v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:2];
            [(SGReminderDissector *)self reminderTitleFromMessages:v90 forLanguage:v116];
            v109 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v108 = v90;
            if (v109 == 0.0)
            {
              v101 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = @"No title found for message";

              v111 = 0;
              v113 = 0;
              v41 = 0;
              *(v131 + 24) = 5;
            }

            else
            {
              v91 = sgRemindersLogHandle();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
              {
                *v134 = 138739971;
                v135 = v109;
                _os_log_debug_impl(&dword_231E60000, v91, OS_LOG_TYPE_DEBUG, "SGReminderDissector: Found title for reminder %{sensitive}@", v134, 0xCu);
              }

              v92 = [(SGReminderDissector *)self dueDateComponentsFromMessages:v90];
              v113 = [(SGReminderDissector *)self dueLocationFromMessages:v90];
              v93 = [(SGReminderDissector *)self storageLocationFromDueLocation:?];
              v111 = [(SGReminderDissector *)self _validateDueDateComponents:v92 dueLocation:v93 forReminderMessages:v90];
              v107 = v93;

              if (v111 | v93)
              {
                v94 = MEMORY[0x277D01F88];
                message4 = [v13 message];
                uniqueIdentifier = [message4 uniqueIdentifier];
                v106 = [v94 urlForEKEventFromTextMessageWithUniqueIdentifier:uniqueIdentifier];

                locationType = [v113 locationType];
                trigger = [v113 trigger];
                LOBYTE(v105) = [(SGReminderDissector *)self isAllDay:v111];
                LOBYTE(v104) = 2;
                v41 = [(SGReminderDissector *)self _reminderEnrichmentWithTitle:*&v109 dueDateComponents:v111 dueLocationType:locationType dueLocation:v107 dueLocationTrigger:trigger sourceURL:v106 reminderStatus:v104 parentEntity:entityCopy parentMessage:messageCopy allDay:v105];
                *(v131 + 24) = 1;
              }

              else
              {
                v102 = *(*(&buf + 1) + 40);
                *(*(&buf + 1) + 40) = @"No dueDate nor dueLocation found in message";

                v41 = 0;
                *(v131 + 24) = 4;
              }
            }

            goto LABEL_42;
          }

          v99 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = @"No proposal found";

          v111 = 0;
          v113 = 0;
          v41 = 0;
          v61 = v131;
          v62 = 2;
        }

        else
        {
          if ([v21 isRejection])
          {
            extractedReminderDuplicateKey = [v13 extractedReminderDuplicateKey];
            v25 = extractedReminderDuplicateKey == 0;

            if (!v25)
            {
              extractedReminderDuplicateKey2 = [v13 extractedReminderDuplicateKey];
              v128 = 0;
              v27 = [storeCopy rejectReminderByKey:extractedReminderDuplicateKey2 error:&v128];
              v28 = COERCE_DOUBLE(v128);

              if ((v27 & 1) == 0)
              {
                v29 = sgRemindersLogHandle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *v134 = 138412290;
                  v135 = v28;
                  _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "SGReminderDissector: Couldn't reject reminder: %@", v134, 0xCu);
                }
              }

LABEL_31:
              v111 = 0;
              v113 = 0;
              v41 = 0;
LABEL_42:
              if (*(*(&buf + 1) + 40))
              {
                v63 = sgRemindersLogHandle();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  v100 = *(*(&buf + 1) + 40);
                  *v134 = 138412290;
                  v135 = v100;
                  _os_log_debug_impl(&dword_231E60000, v63, OS_LOG_TYPE_DEBUG, "SGReminderDissector: %@", v134, 0xCu);
                }
              }

              source2 = [entityKey source];
              v65 = [source2 hasPrefix:@"suggest_tool"];

              if (v65)
              {
                if (v17 && ([messageCopy isSent] & 1) == 0)
                {
                  v66 = self->_conversations;
                  conversationIdentifier7 = [messageCopy conversationIdentifier];
                  [(NSMutableDictionary *)v66 setObject:v21 forKeyedSubscript:conversationIdentifier7];
                }

                v120[0] = MEMORY[0x277D85DD0];
                v120[1] = 3221225472;
                v120[2] = __67__SGReminderDissector_extractReminderFromTextMessage_entity_store___block_invoke;
                v120[3] = &unk_27894B2E0;
                v121 = entityCopy;
                v122 = v21;
                p_buf = &buf;
                v123 = v13;
                v127 = &v130;
                v124 = v115;
                v125 = v116;
                [v121 runWithDissectorLock:v120];

                conversationIdentifier8 = v121;
              }

              else
              {
                if (([messageCopy isSent] & 1) == 0)
                {
                  currentHandler = [MEMORY[0x277CCA890] currentHandler];
                  [currentHandler handleFailureInMethod:a2 object:self file:@"SGReminderDissector.m" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"textMessage.isSent"}];
                }

                v69 = self->_conversations;
                conversationIdentifier8 = [messageCopy conversationIdentifier];
                [(NSMutableDictionary *)v69 removeObjectForKey:conversationIdentifier8];
              }

              v70 = mach_absolute_time() - v110;
              if (SGMachTimeToNanoseconds_onceToken != -1)
              {
                dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
              }

              v71 = (v70 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734) * 0.000001;
              if (v41 || *(*(&buf + 1) + 40))
              {
                v72 = +[SGRTCLogging defaultLogger];
                [v72 logReminderExtractionFromEntity:entityCopy interface:0 actionType:0 dueLocation:v113 dueDateComponents:v111 extractionStatus:*(v131 + 24) timingProcessing:v71];
              }

              v73 = sgRemindersLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                *v134 = 134217984;
                v135 = v71;
                _os_log_debug_impl(&dword_231E60000, v73, OS_LOG_TYPE_DEBUG, "SGReminderDissector: timing(ms): %f", v134, 0xCu);
              }

              sender = v41;
              v74 = v111;
LABEL_62:

              _Block_object_dispose(&buf, 8);
              goto LABEL_63;
            }
          }

          v60 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = @"No confirmation found";

          v111 = 0;
          v113 = 0;
          v41 = 0;
          v61 = v131;
          v62 = 3;
        }

        *(v61 + 24) = v62;
        goto LABEL_42;
      }

      v40 = sgRemindersLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *v134 = 0;
        _os_log_debug_impl(&dword_231E60000, v40, OS_LOG_TYPE_DEBUG, "SGReminderDissector: No previous message", v134, 2u);
      }

      goto LABEL_31;
    }
  }

LABEL_39:
  v14 = 0;
LABEL_68:

LABEL_69:
  _Block_object_dispose(&v130, 8);

  return v14;
}

void __67__SGReminderDissector_extractReminderFromTextMessage_entity_store___block_invoke(uint64_t a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) modelOutput];
  v4 = [*(a1 + 40) enrichedTaggedCharacterRanges];
  v5 = [SGReminderExtractionModel enrichTaggedCharacterRangesWithModelOutput:v3 usingInputCharacterRanges:v4];
  [v2 addTaggedCharacterRanges:v5];

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v6 = *(a1 + 40);
    v26[0] = *(a1 + 48);
    v26[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v23 = 0;
    v8 = [SGReminderMessage validModelOutput:v7 error:&v23];
    v9 = v23;

    if (!v8)
    {
      if (v9)
      {
        v10 = [v9 userInfo];
        v11 = [v10 description];
        v12 = *(*(a1 + 72) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      *(*(*(a1 + 80) + 8) + 24) = 6;
    }
  }

  v14 = [*(a1 + 56) modelDescription];
  v15 = MEMORY[0x277D01FA0];
  v24[0] = @"extractionStatus";
  v16 = [SGRTCLogging describeReminderExtractionStatus:*(*(*(a1 + 80) + 8) + 24)];
  v17 = v16;
  v24[1] = @"errorMessage";
  v18 = *(a1 + 64);
  v19 = *(*(*(a1 + 72) + 8) + 40);
  if (!v19)
  {
    v19 = &stru_284703F00;
  }

  v25[0] = v16;
  v25[1] = v19;
  v24[2] = @"processingLanguage";
  v24[3] = @"modelDescription";
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = &stru_284703F00;
  }

  v25[2] = v18;
  v25[3] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v22 = [v15 reminderMetadata:v21];

  if (v22)
  {
    [*(a1 + 32) addTag:v22];
  }
}

- (id)_detectedReminderEnrichmentFromReminderMessage:(id)message parentEntity:(id)entity language:(id)language parentMessage:(id)parentMessage startTimeProcessing:(unint64_t)processing
{
  v49[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  parentMessageCopy = parentMessage;
  if (!language)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v15 = [messageCopy detectedTitleForLanguage:language];
  v16 = +[SGReminderTrialClientWrapper sharedInstance];
  v48 = v16;
  if ([messageCopy isProposal] && ((objc_msgSend(messageCopy, "hasTrigger") & 1) != 0 || (objc_msgSend(messageCopy, "isTriggerOptional") & 1) != 0 || objc_msgSend(v16, "triggerOptional")) && v15)
  {
    detectedDueDateComponents = [messageCopy detectedDueDateComponents];
    v47 = detectedDueDateComponents;
    if (objc_msgSend_count(detectedDueDateComponents) == 1)
    {
      firstObject = [detectedDueDateComponents firstObject];
    }

    else
    {
      if (objc_msgSend_count(detectedDueDateComponents) < 2)
      {
        v26 = 0;
        goto LABEL_21;
      }

      firstObject = [SGExtractionDocument mergeDetectedDateComponents:detectedDueDateComponents];
    }

    v26 = firstObject;
LABEL_21:
    dueLocation = [messageCopy dueLocation];
    v27 = [(SGReminderDissector *)self storageLocationFromDueLocation:dueLocation];
    v49[0] = messageCopy;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    v46 = v27;
    v20 = [(SGReminderDissector *)self _validateDueDateComponents:v26 dueLocation:v27 forReminderMessages:v28];

    if (v20 | dueLocation)
    {
      message = [messageCopy message];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v44 = MEMORY[0x277D01F88];
      if (isKindOfClass)
      {
        message2 = [messageCopy message];
        uniqueIdentifier = [message2 uniqueIdentifier];
        v45 = [v44 urlForEKEventFromTextMessageWithUniqueIdentifier:uniqueIdentifier];
      }

      else
      {
        duplicateKey = [entityCopy duplicateKey];
        uniqueIdentifier = [duplicateKey emailKey];
        messageId = [uniqueIdentifier messageId];
        v45 = [v44 urlForMailMessageWithId:messageId];

        message2 = duplicateKey;
      }

      locationType = [dueLocation locationType];
      trigger = [dueLocation trigger];
      LOBYTE(v42) = [(SGReminderDissector *)self isAllDay:v20];
      LOBYTE(v41) = 2;
      v37 = locationType;
      v33 = v46;
      v24 = [(SGReminderDissector *)self _reminderEnrichmentWithTitle:v15 dueDateComponents:v20 dueLocationType:v37 dueLocation:v46 dueLocationTrigger:trigger sourceURL:v45 reminderStatus:v41 parentEntity:entityCopy parentMessage:parentMessageCopy allDay:v42];

      v22 = 1;
    }

    else
    {
      v24 = 0;
      v22 = 4;
      v33 = v46;
    }

    goto LABEL_28;
  }

  isProposal = [messageCopy isProposal];
  v20 = 0;
  if (v15)
  {
    v21 = 0;
  }

  else
  {
    v21 = 5;
  }

  if (isProposal)
  {
    v22 = v21;
  }

  else
  {
    v22 = 2;
  }

  dueLocation = 0;
  v24 = 0;
LABEL_28:
  v38 = +[SGRTCLogging defaultLogger];
  v39 = mach_absolute_time() - processing;
  if (SGMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
  }

  [v38 logReminderExtractionFromEntity:entityCopy interface:0 actionType:0 dueLocation:dueLocation dueDateComponents:v20 extractionStatus:v22 timingProcessing:(v39 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734 / 0xF4240)];
  v25 = v24;

LABEL_31:

  return v25;
}

- (id)extractReminderFromOwnedMailMessage:(id)message entity:(id)entity
{
  messageCopy = message;
  entityCopy = entity;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1849;
  v30 = __Block_byref_object_dispose__1850;
  v31 = 0;
  v8 = mach_absolute_time();
  v9 = +[SGReminderExtractionModel sharedInstance];
  textContent = [messageCopy textContent];
  v11 = [v9 whitelistedRangesInContent:textContent];

  textContent2 = [messageCopy textContent];
  v13 = [(SGReminderDissector *)self processingLanguageForContent:textContent2];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__SGReminderDissector_extractReminderFromOwnedMailMessage_entity___block_invoke;
  v19[3] = &unk_27894B2B8;
  v14 = entityCopy;
  v20 = v14;
  v15 = messageCopy;
  v21 = v15;
  v16 = v13;
  v22 = v16;
  selfCopy = self;
  v24 = &v26;
  v25 = v8;
  [v11 enumerateRangesUsingBlock:v19];
  v17 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __66__SGReminderDissector_extractReminderFromOwnedMailMessage_entity___block_invoke(uint64_t a1, NSUInteger a2, NSUInteger a3, _BYTE *a4)
{
  v88 = *MEMORY[0x277D85DE8];
  v70 = objc_opt_new();
  v67 = a1;
  v7 = [*(a1 + 32) taggedCharacterRanges];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v77;
    length = a3;
    location = a2;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v76 + 1) + 8 * i);
        v93.location = [v14 range];
        v93.length = v15;
        v89.location = a2;
        v89.length = a3;
        if (NSIntersectionRange(v89, v93).length)
        {
          v94.location = [v14 range];
          v94.length = v16;
          v90.location = location;
          v90.length = length;
          v17 = NSUnionRange(v90, v94);
          location = v17.location;
          length = v17.length;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v9);
  }

  else
  {
    length = a3;
    location = a2;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v7;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v73;
    v68 = length;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v73 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v72 + 1) + 8 * j);
        v95.location = [v22 range];
        v95.length = v23;
        v91.location = location;
        v91.length = length;
        v24 = NSIntersectionRange(v91, v95).length;
        v96.location = [v22 range];
        v96.length = v25;
        v92.location = location;
        v92.length = length;
        v26 = NSUnionRange(v92, v96);
        if (v24)
        {
          v27 = v26.location == location;
        }

        else
        {
          v27 = 0;
        }

        if (v27 && v26.length == length)
        {
          v29 = [SGTaggedCharacterRange alloc];
          v30 = [v22 annotationType];
          [v22 tags];
          v32 = v31 = v19;
          v33 = [v22 range] - location;
          [v22 range];
          v35 = v34;
          v36 = [v22 text];
          v37 = [(SGTaggedCharacterRange *)v29 initWithAnnotationType:v30 tags:v32 range:v33 text:v35, v36];

          v19 = v31;
          length = v68;
          [v70 addObject:v37];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v19);
  }

  v38 = [*(v67 + 40) quotedRegions];
  if ([v38 intersectsIndexesInRange:{location, length}])
  {
    goto LABEL_31;
  }

  v39 = [*(v67 + 40) htmlParser];
  v40 = [v39 tabularRegions];
  if ([v40 intersectsIndexesInRange:{location, length}])
  {

LABEL_31:
    goto LABEL_32;
  }

  v42 = [*(v67 + 40) htmlParser];
  v43 = [v42 signatureRegions];
  v44 = [v43 intersectsIndexesInRange:{location, length}];

  if (v44)
  {
LABEL_32:
    v41 = sgRemindersLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v41, OS_LOG_TYPE_INFO, "SGReminderDissector: Skipping parts of content that are identified as not plain text", buf, 2u);
    }

    goto LABEL_46;
  }

  v45 = objc_autoreleasePoolPush();
  v46 = [*(v67 + 40) textContent];
  v41 = [v46 substringWithRange:{location, length}];

  objc_autoreleasePoolPop(v45);
  v47 = [*(v67 + 40) date];
  v48 = [SGDataDetectorMatch detectionsInPlainText:v41 baseDate:v47];

  v49 = +[SGPOSTagger sharedInstance];
  v50 = [v49 tokenizeTextContent:v41 languageHint:*(v67 + 48)];
  [v70 addObjectsFromArray:v50];

  v51 = [objc_opt_class() enrichedTaggedCharacterRangesFromTaggedCharacterRanges:v70 messageIsSent:0];
  if (objc_msgSend_count(v51))
  {
    v52 = +[SGReminderExtractionModel sharedInstance];
    v53 = [v52 modelInferences:v51];
    if (v53)
    {
      v65 = v52;
      v54 = [SGMessage alloc];
      v84[0] = @"isSent";
      v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(v67 + 40), "isSent")}];
      v84[1] = @"body";
      v85[0] = v55;
      v85[1] = v41;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
      v57 = [(SGMessage *)v54 initWithMessageDictionary:v56];

      v69 = v48;
      v58 = [[SGReminderMessage alloc] initWithMessage:v57 plainTextDetectedData:v48 enrichedTaggedCharacterRanges:v51 modelOutput:v53];
      v59 = [*(v67 + 56) _detectedReminderEnrichmentFromReminderMessage:v58 parentEntity:*(v67 + 32) language:*(v67 + 48) parentMessage:*(v67 + 40) startTimeProcessing:*(v67 + 72)];
      v60 = *(*(v67 + 64) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;

      v62 = sgRemindersLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [*(v67 + 32) loggingIdentifier];
        v64 = [*(*(*(v67 + 64) + 8) + 40) loggingIdentifier];
        *buf = 138543618;
        v81 = v63;
        v82 = 2114;
        v83 = v64;
        _os_log_impl(&dword_231E60000, v62, OS_LOG_TYPE_DEFAULT, "SGEntity: %{public}@ -> SGPipelineEnrichment: %{public}@", buf, 0x16u);
      }

      if (*(*(*(v67 + 64) + 8) + 40))
      {
        *a4 = 1;
      }

      v48 = v69;
      v52 = v65;
    }

    else
    {
      v57 = sgRemindersLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v57, OS_LOG_TYPE_ERROR, "SGReminderDissector: Not model output, bailing", buf, 2u);
      }
    }
  }

LABEL_46:
}

- (id)extractReminderFromMailMessage:(id)message entity:(id)entity
{
  messageCopy = message;
  entityCopy = entity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1849;
  v20 = __Block_byref_object_dispose__1850;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SGReminderDissector_extractReminderFromMailMessage_entity___block_invoke;
  v12[3] = &unk_278953EC0;
  v15 = &v16;
  v12[4] = self;
  v8 = messageCopy;
  v13 = v8;
  v9 = entityCopy;
  v14 = v9;
  [v9 runWithDissectorLock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __61__SGReminderDissector_extractReminderFromMailMessage_entity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extractReminderFromOwnedMailMessage:*(a1 + 40) entity:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)reminderTitleForContent:(id)content
{
  contentCopy = content;
  v5 = [(SGReminderDissector *)self processingLanguageForContent:contentCopy];
  if (contentCopy && [contentCopy length] <= 0x3E8)
  {
    v6 = 0;
    if ([contentCopy length] && v5)
    {
      v8 = +[SGPOSTagger sharedInstance];
      v9 = [v8 tokenizeTextContent:contentCopy languageHint:v5];

      v10 = [objc_opt_class() enrichedTaggedCharacterRangesFromTaggedCharacterRanges:v9 messageIsSent:0];
      if (objc_msgSend_count(v10))
      {
        v11 = +[SGReminderExtractionModel sharedInstance];
        v12 = [v11 modelInferences:v10];
        if (v12)
        {
          v6 = [SGReminderMessage detectedTitleInModelOutput:v12 enrichedTaggedCharacterRanges:v10 textContent:contentCopy language:v5];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  v11 = objc_autoreleasePoolPush();
  if (([MEMORY[0x277D02098] detectReminders] & 1) == 0)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v13 = "SGReminderDissector: detectReminders is OFF";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

  if ([entityCopy hasEventEnrichment])
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v13 = "SGReminderDissector: Not processing since PseudoEvent found";
LABEL_7:
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, v13, &v22, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v14 = +[SGAsset localeAsset];
  assetVersion = [v14 assetVersion];

  if (assetVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = [entityCopy loggingIdentifier];
      v22 = 138543362;
      v23 = loggingIdentifier;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: Not processing due to a missing localeAsset. [SGEntity (%{public}@)]", &v22, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v11);
  [entityCopy releaseDissectorLock];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = objc_autoreleasePoolPush();
  serviceContext = [contextCopy serviceContext];
  store = [serviceContext store];
  v21 = [(SGReminderDissector *)selfCopy extractReminderFromTextMessage:messageCopy entity:entityCopy store:store];

  objc_autoreleasePoolPop(v18);
  objc_sync_exit(selfCopy);

  [entityCopy acquireDissectorLock];
  if (v21)
  {
    [entityCopy addEnrichment:v21];
  }

LABEL_9:
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  v11 = objc_autoreleasePoolPush();
  if (([MEMORY[0x277D02098] detectReminders] & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v16 = "SGReminderDissector: detectReminders is OFF";
LABEL_10:
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, v16, &v32, 2u);
    }

LABEL_11:

    objc_autoreleasePoolPop(v11);
    goto LABEL_12;
  }

  if (([MEMORY[0x277D02098] detectRemindersInMail] & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v16 = "SGReminderDissector: Reminder detection for mail is off";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = +[SGAsset localeAsset];
  assetVersion = [v12 assetVersion];

  if (assetVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = [entityCopy loggingIdentifier];
      v32 = 138543362;
      v33 = loggingIdentifier;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: Not processing due to a missing localeAsset. [SGEntity (%{public}@)]", &v32, 0xCu);
    }

    goto LABEL_11;
  }

  if ([entityCopy hasEventEnrichment])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Not processing since PseudoEvent found";
    goto LABEL_10;
  }

  allRecipients = [messageCopy allRecipients];
  v18 = objc_msgSend_count(allRecipients);

  if (v18 >= 2)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail has multiple recipients, skipping";
    goto LABEL_10;
  }

  if ([entityCopy isInhuman])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail is inhuman, skipping";
    goto LABEL_10;
  }

  mailingList = [messageCopy mailingList];

  if (mailingList)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail is from mailing list, skipping";
    goto LABEL_10;
  }

  if ([messageCopy isPartiallyDownloaded])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail is partially downloaded, skipping";
    goto LABEL_10;
  }

  if ([messageCopy isSent])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail is sent, skipping";
    goto LABEL_10;
  }

  date = [MEMORY[0x277CBEAA8] date];
  date2 = [messageCopy date];
  [date timeIntervalSinceDate:date2];
  v23 = v22;

  if (v23 > 604800.0)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail is older than one week, skipping";
    goto LABEL_10;
  }

  from = [messageCopy from];
  asCSPerson = [from asCSPerson];
  serviceContext = [contextCopy serviceContext];
  store = [serviceContext store];
  v28 = [asCSPerson sg_isSignificantWithStore:store];

  if ((v28 & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v32) = 0;
    v16 = "SGReminderDissector: Mail is from insignificant sender, skipping";
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v11);
  [entityCopy releaseDissectorLock];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = objc_autoreleasePoolPush();
  v31 = [(SGReminderDissector *)selfCopy extractReminderFromMailMessage:messageCopy entity:entityCopy];
  objc_autoreleasePoolPop(v30);
  objc_sync_exit(selfCopy);

  [entityCopy acquireDissectorLock];
  if (v31)
  {
    [entityCopy addEnrichment:v31];
  }

LABEL_12:
}

- (SGReminderDissector)initWithConversations:(id)conversations rtRoutineManager:(id)manager
{
  conversationsCopy = conversations;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SGReminderDissector;
  v9 = [(SGReminderDissector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversations, conversations);
    objc_storeStrong(&v10->_rtRoutineManager, manager);
  }

  return v10;
}

- (SGReminderDissector)init
{
  v3 = objc_opt_new();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getRTRoutineManagerClass_softClass;
  v15 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getRTRoutineManagerClass_block_invoke;
    v11[3] = &unk_278955BF0;
    v11[4] = &v12;
    __getRTRoutineManagerClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  if (v4)
  {
    v6 = NSSelectorFromString(@"defaultManager");
    v7 = ([v4 methodForSelector:v6])(v4, v6);
  }

  else
  {
    v8 = sgRemindersLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "Suggestions failed to dlopen CoreRoutine.", v11, 2u);
    }

    v7 = 0;
  }

  v9 = [(SGReminderDissector *)self initWithConversations:v3 rtRoutineManager:v7];

  return v9;
}

+ (id)getContactIdentifierForName:(id)name andEmail:(id)email ifMatchingPredicate:(id)predicate
{
  v55[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailCopy = email;
  predicateCopy = predicate;
  v10 = objc_opt_new();
  v11 = +[SGContactStoreFactory contactStore];
  v12 = *MEMORY[0x277CBCFC0];
  v55[0] = *MEMORY[0x277CBD018];
  v55[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v52 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __80__SGReminderDissector_getContactIdentifierForName_andEmail_ifMatchingPredicate___block_invoke;
  v49[3] = &unk_278951AD0;
  v37 = predicateCopy;
  v51 = v37;
  v14 = v10;
  v50 = v14;
  v40 = nameCopy;
  v38 = v11;
  [SGContactsInterface enumerateContactsMatchingName:nameCopy withKeysToFetch:v13 usingContactStore:v11 error:&v52 usingBlock:v49];
  v15 = v52;

  array = [v14 array];
  v39 = emailCopy;
  v17 = SGNormalizeEmailAddress();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = array;
  v35 = [v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v35)
  {
    v19 = *v46;
    v33 = v15;
    v34 = v14;
    v36 = v18;
    v32 = *v46;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        emailAddresses = [v21 emailAddresses];
        v23 = [emailAddresses countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          while (2)
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(emailAddresses);
              }

              value = [*(*(&v41 + 1) + 8 * j) value];
              v28 = SGNormalizeEmailAddress();
              v29 = [v17 isEqualToString:v28];

              if (v29)
              {
                v30 = v21;

                v15 = v33;
                v14 = v34;
                v18 = v36;
                goto LABEL_19;
              }
            }

            v24 = [emailAddresses countByEnumeratingWithState:&v41 objects:v53 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v18 = v36;
        v19 = v32;
      }

      v30 = 0;
      v15 = v33;
      v14 = v34;
      v35 = [v36 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v35);
  }

  else
  {
    v30 = 0;
  }

LABEL_19:

  return v30;
}

void __80__SGReminderDissector_getContactIdentifierForName_andEmail_ifMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (BOOL)isReminderDueDateComponentsInPast:(id)past givenReferenceDate:(id)date allDay:(BOOL)day
{
  dayCopy = day;
  pastCopy = past;
  [date timeIntervalSinceReferenceDate];
  v9 = v8;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [currentCalendar dateFromComponents:pastCopy];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  if (dayCopy)
  {
    v14 = [pastCopy copy];
    [v14 setHour:23];
    [v14 setMinute:59];
    [v14 setSecond:59];
    timeZone = [v14 timeZone];

    if (!timeZone)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
      [v14 setTimeZone:defaultTimeZone];
    }

    date = [v14 date];
    [date timeIntervalSinceReferenceDate];
    v13 = v18;
  }

  return v9 > v13;
}

+ (id)enrichedTaggedCharacterRangesFromEntity:(id)entity forMessage:(id)message
{
  messageCopy = message;
  taggedCharacterRanges = [entity taggedCharacterRanges];
  isSent = [messageCopy isSent];

  v9 = [self enrichedTaggedCharacterRangesFromTaggedCharacterRanges:taggedCharacterRanges messageIsSent:isSent];

  return v9;
}

+ (id)enrichedTaggedCharacterRangesFromTaggedCharacterRanges:(id)ranges messageIsSent:(BOOL)sent
{
  sentCopy = sent;
  v44 = *MEMORY[0x277D85DE8];
  v5 = [ranges mutableCopy];
  v6 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if ([v12 annotationType] == 3)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v9);
  }

  v13 = +[SGReminderExtractionModel sharedInstance];
  enrichments = [v13 enrichments];

  if (enrichments)
  {
    v15 = [enrichments objectForKeyedSubscript:@"polarityEmojisMapping"];
    v16 = v15;
    if (v15)
    {
      v42 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v18 = [SGTaggedCharacterRange enrichAndFilterTaggedCharacterRanges:v6 usingMapping:v17 withAnnotationType:3];

      v19 = [enrichments objectForKeyedSubscript:@"verbsMapping"];
      v20 = v19;
      if (v19)
      {
        v41 = v19;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
        v33 = [SGTaggedCharacterRange enrichAndFilterTaggedCharacterRanges:v6 usingMapping:v21 withAnnotationType:7];

        [v7 addObjectsFromArray:v18];
        [v7 addObjectsFromArray:v33];
        v22 = @"CONTACT";
        if (sentCopy)
        {
          v22 = @"ACCOUNT_OWNER";
        }

        v23 = v22;
        v24 = [SGTaggedCharacterRange alloc];
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IS_%@", v23];

        v39 = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        v27 = [(SGTaggedCharacterRange *)v24 initWithAnnotationType:5 tags:v26 range:0 text:0, &stru_284703F00];
        v40 = v27;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
        v29 = v28 = v18;

        v30 = [SGTaggedCharacterRange mergeTaggedCharacterRanges:v7 usingBaseTaggedCharacterRanges:v6 extraTags:v29 tagOverrides:0 alignWithGroundTruth:0];

        v18 = v28;
        v31 = v33;
      }

      else
      {
        v31 = sgRemindersLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v31, OS_LOG_TYPE_ERROR, "SGReminderDissector: Unable to load verb mapping", buf, 2u);
        }

        v30 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v18 = sgRemindersLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "SGReminderDissector: Unable to load emoji assets", buf, 2u);
      }

      v30 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = sgRemindersLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGReminderDissector: Unable to load model assets", buf, 2u);
    }

    v30 = MEMORY[0x277CBEBF8];
  }

  return v30;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken4, &__block_literal_global_1945);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __37__SGReminderDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end