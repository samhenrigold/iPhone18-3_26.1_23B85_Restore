@interface ASEvent
+ (ASEvent)eventWithCalEvent:(void *)event serverID:(id)d account:(id)account;
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)attendeeExternalRepClasses;
+ (id)calendarItemExternalRepClasses;
+ (void)_setFakeDTStampDateForUnitTests:(id)tests;
+ (void)setSystemTimeZoneNameForUnitTests:(id)tests;
- (ASEvent)init;
- (ASEvent)initWithCalEvent:(void *)event serverID:(id)d account:(id)account;
- (ASEvent)initWithCoder:(id)coder;
- (BOOL)_selfIsMoreCorrectThanOtherEvent:(id)event account:(id)account;
- (BOOL)cachedOrganizerIsSelfWithAccount:(id)account;
- (BOOL)deleteFromCalendar;
- (BOOL)fillOutMissingExternalIdsForAccountID:(id)d;
- (BOOL)hasOccurrenceInTheFuture;
- (BOOL)isEqualToEvent:(id)event;
- (BOOL)isTombstoneEndTimeInFuture;
- (BOOL)loadCalRecordForAccount:(id)account;
- (BOOL)purgeAttendeesPendingDeletionForAccountID:(id)d;
- (BOOL)saveDetachedEventsWithExistingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (BOOL)saveServerIDAndUidToCalendar;
- (BOOL)saveToCalendarWithExistingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (BOOL)setCalEventWithExistingRecord:(void *)record intoCalendar:(void *)calendar;
- (BOOL)verifyExternalIdsForAccountID:(id)d;
- (NSCalendarDate)endDateForCalFramework;
- (NSCalendarDate)startDateForCalFramework;
- (NSString)description;
- (id)_attachmentFromAttachmentRef:(void *)ref;
- (id)_transformedEndDateForActiveSync:(id)sync isFloating:(BOOL)floating;
- (id)_transformedEndDateForCalFramework:(id)framework startDate:(id)date;
- (id)_transformedStartDateForActiveSync:(id)sync isFloating:(BOOL)floating;
- (id)_transformedStartDateForCalFramework:(id)framework;
- (id)eventByMergingInEvent:(id)event account:(id)account;
- (id)eventByMergingInLosingEvent:(id)event account:(id)account;
- (id)timeZoneForCalFramework;
- (id)timeZoneNameForCalFramework;
- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account;
- (int)CalCalendarItemStatus;
- (int)_meetingResponseShouldUseEmail:(BOOL)email shouldFilterForEmail:(BOOL)forEmail;
- (int)_nextAttendeeStatusWithOldStatus:(int)status account:(id)account;
- (int)_nextAttendeeStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account;
- (int)_nextEventStatusWithOldStatus:(int)status account:(id)account;
- (int)_nextEventStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account;
- (int)calAttendeePendingStatus;
- (int)calAttendeeStatus;
- (int)meetingResponseForAccount:(id)account;
- (int)meetingResponseForEmail;
- (int)selfAttendeeMeetingResponse;
- (void)_determineSelfnessWithLocalEvent:(void *)event forAccount:(id)account;
- (void)_loadAttachmentsChangesForEvent:(void *)event account:(id)account;
- (void)_loadAttributesFromCalEvent:(void *)event forAccount:(id)account;
- (void)_sanitizeLocalExceptionsForAccount:(id)account;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)informExceptionsThatParentIsReadyForAccount:(id)account;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)postProcessApplicationData;
- (void)setBody:(id)body;
- (void)setCalEvent:(void *)event;
- (void)setExceptions:(id)exceptions;
- (void)setRecurrence:(id)recurrence;
- (void)updateAttachmentsForAccountID:(id)d;
@end

@implementation ASEvent

+ (void)setSystemTimeZoneNameForUnitTests:(id)tests
{
  testsCopy = tests;
  if (kUnitTestTimeZoneName != testsCopy)
  {
    v5 = testsCopy;
    objc_storeStrong(&kUnitTestTimeZoneName, tests);
    testsCopy = v5;
  }
}

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_27 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_27 = v2;
    acceptsTopLevelLeaves___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_27 == 1)
  {
    v2 = parsingLeafNode___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_27 = v2;
    parsingLeafNode___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_27 == 1)
  {
    v2 = parsingWithSubItems___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_27 = v2;
    parsingWithSubItems___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_27 == 1)
  {
    v2 = frontingBasicTypes___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_27 = v2;
    frontingBasicTypes___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_27 == 1)
  {
    v2 = notifyOfUnknownTokens___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_27 = v2;
    notifyOfUnknownTokens___haveChecked_27 = 1;
  }

  return v2 & 1;
}

- (id)_transformedStartDateForCalFramework:(id)framework
{
  frameworkCopy = framework;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    nearestMidnight = [frameworkCopy nearestMidnight];
  }

  else
  {
    nearestMidnight = frameworkCopy;
  }

  v8 = nearestMidnight;

  return v8;
}

- (id)_transformedEndDateForCalFramework:(id)framework startDate:(id)date
{
  frameworkCopy = framework;
  dateCopy = date;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    timeZone = [(ASEvent *)self timeZone];
    v11 = [dateCopy tzDateToDateInGMT:timeZone];

    timeZone2 = [(ASEvent *)self timeZone];
    v13 = [frameworkCopy tzDateToDateInGMT:timeZone2];

    v14 = [(ASEvent *)self _transformedStartDateForCalFramework:dateCopy];
    [v13 timeIntervalSinceDate:v11];
    v16 = [v14 dateByAddingTimeInterval:v15 + -1.0];
  }

  else
  {
    v16 = frameworkCopy;
  }

  return v16;
}

- (id)_transformedStartDateForActiveSync:(id)sync isFloating:(BOOL)floating
{
  floatingCopy = floating;
  syncCopy = sync;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue || floatingCopy)
  {
    timeZone = [(ASEvent *)self timeZone];
    v9 = [syncCopy gmtDateToDateInTimeZone:timeZone];
  }

  else
  {
    v9 = syncCopy;
  }

  return v9;
}

- (id)_transformedEndDateForActiveSync:(id)sync isFloating:(BOOL)floating
{
  floatingCopy = floating;
  syncCopy = sync;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  v9 = syncCopy;
  if (intValue)
  {
    v9 = [syncCopy dateByAddingYears:0 months:0 days:0 hours:0 minutes:0 seconds:1];
  }

  allDayEvent2 = [(ASEvent *)self allDayEvent];
  intValue2 = [allDayEvent2 intValue];

  if (intValue2 || floatingCopy)
  {
    timeZone = [(ASEvent *)self timeZone];
    v12 = [v9 gmtDateToDateInTimeZone:timeZone];
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)timeZoneNameForCalFramework
{
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    name2 = @"_float";
  }

  else
  {
    timeZone = [(ASEvent *)self timeZone];
    name = [timeZone name];

    if (name)
    {
      [(ASEvent *)self timeZone];
    }

    else
    {
      [MEMORY[0x277CBEBB0] defaultTimeZone];
    }
    v8 = ;
    name2 = [v8 name];
  }

  return name2;
}

- (id)timeZoneForCalFramework
{
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    v5 = 0;
  }

  else
  {
    timeZone = [(ASEvent *)self timeZone];

    if (timeZone)
    {
      [(ASEvent *)self timeZone];
    }

    else
    {
      [MEMORY[0x277CBEBB0] defaultTimeZone];
    }
    v5 = ;
  }

  return v5;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v60.receiver = self;
    v60.super_class = &OBJC_METACLASS___ASEvent;
    v6 = objc_msgSendSuper2(&v60, sel_asParseRules);
    v51 = [v6 mutableCopy];

    v47 = objc_alloc(MEMORY[0x277CBEAC0]);
    v45 = [ASParseRule alloc];
    v44 = objc_opt_class();
    v43 = MEMORY[0x277CBEAC0];
    v58 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:27 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    selfCopy = self;
    v59 = [MEMORY[0x277CCABB0] numberWithInt:1051];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CBEAC0];
    v50 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:19 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v49 = [MEMORY[0x277CCABB0] numberWithInt:1043];
    v46 = [v9 dictionaryWithObjectsAndKeys:{v50, v49, 0}];
    v57 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:20 objectClass:v8 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v46];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:1044];
    v10 = [ASParseRule alloc];
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CBEAC0];
    v42 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v41 = [MEMORY[0x277CCABB0] numberWithInt:1032];
    v40 = [v12 dictionaryWithObjectsAndKeys:{v42, v41, 0}];
    v55 = [(ASParseRule *)v10 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:7 objectClass:v11 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v40];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:1031];
    v13 = [ASParseRule alloc];
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CBEAC0];
    v39 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v38 = [MEMORY[0x277CCABB0] numberWithInt:1039];
    v37 = [v15 dictionaryWithObjectsAndKeys:{v39, v38, 0}];
    v54 = [(ASParseRule *)v13 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:14 objectClass:v14 setterMethod:sel_setCategories_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v37];
    v35 = [MEMORY[0x277CCABB0] numberWithInt:1038];
    v53 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v32 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:32 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:4384];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:5 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:1029];
    v16 = [ASParseRule alloc];
    v17 = objc_opt_class();
    v18 = MEMORY[0x277CBEAC0];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v20 = [v18 dictionaryWithObjectsAndKeys:{v34, v19, 0}];
    v21 = [(ASParseRule *)v16 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v17 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v20];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v23 = [v43 dictionaryWithObjectsAndKeys:{v58, v59, v57, v56, v55, v36, v54, v35, v53, v33, v32, v31, v30, v29, v21, v22, 0}];
    v24 = [(ASParseRule *)v45 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:v44 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v23];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v48 = [v47 initWithObjectsAndKeys:{v24, v25, 0}];

    v5 = v51;
    [v51 addEntriesFromDictionary:v48];
    v26 = +[ASItem parseRuleCache];
    v27 = NSStringFromClass(selfCopy);
    [v26 setObject:v51 forKey:v27];
  }

  return v5;
}

- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account
{
  accountCopy = account;
  eventUID = [(ASEvent *)self eventUID];
  uidForCalFramework = [eventUID uidForCalFramework];

  if (!uidForCalFramework)
  {
    if (event)
    {
      v9 = CalCalendarItemCopyUniqueIdentifier();
      da_new64ByteGUID = v9;
      if (!v9)
      {
        da_new64ByteGUID = [MEMORY[0x277CCACA8] da_new64ByteGUID];
      }

      v11 = [[ASEventUID alloc] initWithCalFrameworkString:da_new64ByteGUID];
      exceptionDate = [(ASEvent *)self exceptionDate];

      if (exceptionDate)
      {
        exceptionDate2 = [(ASEvent *)self exceptionDate];
        [(ASEventUID *)v11 setExceptionDate:exceptionDate2];
      }

      [(ASEvent *)self setEventUID:v11];
      eventUID2 = [(ASEvent *)self eventUID];
      uidForCalFramework2 = [eventUID2 uidForCalFramework];

      if (!v9)
      {
        CalCalendarItemSetUniqueIdentifier();
        v16 = +[ASLocalDBHelper sharedInstance];
        accountID = [accountCopy accountID];
        [v16 calSaveDatabaseForAccountID:accountID];
      }

      uidForCalFramework = uidForCalFramework2;
    }

    else
    {
      uidForCalFramework = 0;
    }
  }

  return uidForCalFramework;
}

- (void)copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    subject = self->_subject;
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    v26 = 138412546;
    v27 = subject;
    v28 = 2112;
    v29 = serverID;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Event %@ %@ is looking for a self attendee", &v26, 0x16u);
  }

  Attendee = CalCalendarItemCopySelfAttendee();
  if (!Attendee)
  {
    v11 = CalCalendarItemCopyAttendees();
    if (-[ASEvent cachedOrganizerIsSelfWithAccount:](self, "cachedOrganizerIsSelfWithAccount:", accountCopy) && ![v11 count])
    {
      Attendee = 0;
    }

    else
    {
      if (![v11 count])
      {
        goto LABEL_15;
      }

      v12 = 1;
      do
      {
        Attendee = [v11 objectAtIndexedSubscript:v12 - 1];

        v13 = MEMORY[0x24C210570](Attendee);
        if (v13 && [accountCopy accountContainsEmailAddress:v13])
        {
          CFRetain(Attendee);
          CalCalendarItemSetSelfAttendee();
        }

        else
        {
          Attendee = 0;
        }

        if (v12 >= [v11 count])
        {
          break;
        }

        ++v12;
      }

      while (!Attendee);
      if (!Attendee)
      {
LABEL_15:
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v7))
        {
          v15 = self->_subject;
          serverID2 = [(ASChangedCollectionLeaf *)self serverID];
          v26 = 138412546;
          v27 = v15;
          v28 = 2112;
          v29 = serverID2;
          _os_log_impl(&dword_24A0AC000, v14, v7, "Adding self attendee to event %@ %@", &v26, 0x16u);
        }

        v17 = +[ASLocalDBHelper sharedInstance];
        accountID = [accountCopy accountID];
        [v17 calDatabaseForAccountID:accountID];
        Attendee = CalDatabaseCreateAttendee();

        MEMORY[0x24C210620](Attendee, [accountCopy emailAddress]);
        CalAttendeeSetType();
        CalAttendeeSetStatus();
        v19 = DALoggingwithCategory();
        if (os_log_type_enabled(v19, v7))
        {
          emailAddress = [accountCopy emailAddress];
          v21 = self->_subject;
          serverID3 = [(ASChangedCollectionLeaf *)self serverID];
          v26 = 138412802;
          v27 = emailAddress;
          v28 = 2112;
          v29 = v21;
          v30 = 2112;
          v31 = serverID3;
          _os_log_impl(&dword_24A0AC000, v19, v7, "Marking attendee %@ as DA-added self attendee for event %@ %@ ", &v26, 0x20u);
        }

        v23 = objc_opt_new();
        [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"addedSelfAttendee"];
        v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23];
        MEMORY[0x24C210630](Attendee, v24);
        CalCalendarItemAddAttendee();
        CalCalendarItemSetSelfAttendee();
      }
    }
  }

  return Attendee;
}

+ (id)attendeeExternalRepClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)calendarItemExternalRepClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (id)_attachmentFromAttachmentRef:(void *)ref
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = CalAttachmentCopyExternalID();
  [v5 setName:v6];

  v7 = CalAttachmentCopyFilename();
  [v5 setDisplayName:v7];

  v8 = MEMORY[0x24C210510](ref);
  [v5 setSize:v8];

  v9 = CalAttachmentCopyUUID();
  [v5 setClientId:v9];

  v10 = CalAttachmentCopyLocalURL();
  [v5 setLocalPath:v10];

  localPath = [v5 localPath];

  if (!localPath)
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      subject = self->_subject;
      clientId = [v5 clientId];
      v17 = 138412546;
      v18 = subject;
      v19 = 2112;
      v20 = clientId;
      _os_log_impl(&dword_24A0AC000, v12, v13, "Local URL not found for event %@, attachment client Id %@", &v17, 0x16u);
    }
  }

  return v5;
}

- (void)_loadAttachmentsChangesForEvent:(void *)event account:(id)account
{
  accountCopy = account;
  v5 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  v7 = [v5 calDatabaseForAccountID:accountID];

  if (v7)
  {
    theDict = 0;
    v8 = CalCalendarItemCopyCalendar();
    if (CalDatabaseCopyAttachmentChangesInCalendar() != -1 && theDict != 0)
    {
      v32 = v8;
      v33 = accountCopy;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7608]);
      v11 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7620]);
      v12 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7618]);
      v13 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF75E8]);
      theArray = v11;
      Count = CFArrayGetCount(v11);
      v15 = CFArrayGetCount(v12);
      v16 = CFArrayGetCount(Value);
      v36 = v13;
      v17 = v13;
      v18 = Value;
      v19 = CFArrayGetCount(v17);
      if (Count == v15 && Count == v16 && Count == v19 && v16 >= 1)
      {
        v20 = 0;
        v21 = *MEMORY[0x277CF7640];
        type = *(MEMORY[0x277D03988] + 6);
        v22 = *MEMORY[0x277CF7648];
        v34 = v18;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
          if (CalCalendarItemGetRowID() == ValueAtIndex)
          {
            v24 = CFArrayGetValueAtIndex(v12, v20);
            if (v21 == v24)
            {
              v25 = v12;
              CFArrayGetValueAtIndex(theArray, v20);
              v26 = v7;
              v27 = CalDatabaseCopyAttachmentWithUUID();
              if (v27)
              {
                v28 = v27;
                v29 = [(ASEvent *)self _attachmentFromAttachmentRef:v27];
                [array addObject:v29];
                CFRelease(v28);
              }

              else
              {
                v29 = DALoggingwithCategory();
                if (os_log_type_enabled(v29, type))
                {
                  *buf = 0;
                  _os_log_impl(&dword_24A0AC000, v29, type, "CalDatabaseCopyAttachmentWithUUID returned NULL", buf, 2u);
                }
              }

              v7 = v26;
              v12 = v25;
              v18 = v34;
            }

            if (v22 == v24)
            {
              v30 = [CFArrayGetValueAtIndex(v36 v20)];
              [array2 addObject:v30];
            }
          }

          ++v20;
        }

        while (Count != v20);
      }

      [(ASEvent *)self setAttachments:array];
      [(ASEvent *)self setDeletedAttachmentsIDs:array2];
      CFRelease(theDict);

      v8 = v32;
      accountCopy = v33;
    }

    CFRelease(v8);
  }
}

- (void)_loadAttributesFromCalEvent:(void *)event forAccount:(id)account
{
  v131 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  protocol = [accountCopy protocol];
  useFloatingTimeForAllDayEvents = [protocol useFloatingTimeForAllDayEvents];

  if (!event)
  {
    goto LABEL_97;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", CalCalendarItemGetRowID()];
  [(ASChangedCollectionLeaf *)self setClientID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:CalEventIsAllDay()];
  [(ASEvent *)self setAllDayEvent:v8];

  v9 = [(ASEvent *)self uidGeneratedIfNecessaryWithLocalEvent:event forAccount:accountCopy];
  [(ASEvent *)self setLocalMask:CalEventGetModifiedProperties()];
  [(ASEvent *)self setItemStatus:CalCalendarItemGetStatus()];
  v112 = CalCalendarItemCopyDescription();
  if (v112)
  {
    v10 = [v112 stringByConvertingLineEndingsTo:@"\r\n"];
    [(ASEvent *)self setBody:v10];
  }

  v11 = CalCalendarItemCopyLocation();
  if (v11)
  {
    v12 = v11;
    v13 = [ASLocation locationWithCalLocation:v11];
    [(ASEvent *)self setLocation:v13];

    CFRelease(v12);
  }

  v14 = CalCalendarItemCopyAlarms();
  v117 = v14;
  if ([v14 count] && objc_msgSend(v14, "count"))
  {
    v15 = 0;
    while (1)
    {
      [v14 objectAtIndexedSubscript:v15];

      if ((CalAlarmIsDefaultAlarm() & 1) == 0)
      {
        break;
      }

      ++v15;
      v14 = v117;
      if (v15 >= [v117 count])
      {
        goto LABEL_13;
      }
    }

    TriggerInterval = CalAlarmGetTriggerInterval();
    v17 = [MEMORY[0x277CCABB0] numberWithInt:((((2004318071 * TriggerInterval) >> 32) - TriggerInterval) >> 5) + ((((2004318071 * TriggerInterval) >> 32) - TriggerInterval) >> 31)];
    [(ASEvent *)self setReminderMinsBefore:v17];
  }

LABEL_13:
  v18 = CalCalendarItemCopySummary();
  if (v18)
  {
    [(ASEvent *)self setSubject:v18];
  }

  v109 = v18;
  v19 = CalCalendarItemCopyOrganizer();
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x24C210E50]();
    if (v21)
    {
      [(ASEvent *)self setOrganizerName:v21];
    }

    v22 = MEMORY[0x24C210E60](v20);
    if (v22)
    {
      [(ASEvent *)self setOrganizerEmail:v22];
    }

    CFRelease(v20);
  }

  IsFloating = CalCalendarItemIsFloating();
  if (!IsFloating)
  {
    started = CalCalendarItemCopyStartTimeZone();
    name = [started name];

    if (name)
    {
      v27 = [ASTimeZone alloc];
      name2 = [started name];
      v24 = [(ASTimeZone *)v27 initWithTZNameFromCalDB:name2];
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = [ASTimeZone alloc];
  v24 = [(ASTimeZone *)v23 initWithTZNameFromCalDB:kUnitTestTimeZoneName];
  if (!v24)
  {
LABEL_28:
    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    v30 = [ASTimeZone alloc];
    name3 = [defaultTimeZone name];
    v24 = [(ASTimeZone *)v30 initWithTZNameFromCalDB:name3];
  }

LABEL_29:
  v107 = v24;
  [(ASEvent *)self setTimeZone:v24];
  v32 = CalCalendarItemCopyStartDate();
  v110 = v32;
  if (useFloatingTimeForAllDayEvents)
  {
    v33 = v32;
  }

  else
  {
    timeZone = [(ASEvent *)self timeZone];
    v35 = [v110 dateWithCalendarFormat:0 timeZone:timeZone];
    v36 = [(ASEvent *)self _transformedStartDateForActiveSync:v35 isFloating:IsFloating];

    v33 = v36;
  }

  v108 = v33;
  [(ASEvent *)self setStartTime:?];
  v37 = MEMORY[0x277CBEAA8];
  CalEventGetEndDate();
  v114 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
  if (useFloatingTimeForAllDayEvents)
  {
    allDayEvent = [(ASEvent *)self allDayEvent];
    intValue = [allDayEvent intValue];

    if (intValue)
    {
      v113 = [v114 dateByAddingTimeInterval:1.0];
    }

    else
    {
      v113 = v114;
    }

    [(ASEvent *)self setEndTime:v113];
  }

  else
  {
    timeZone2 = [(ASEvent *)self timeZone];
    v41 = [v114 dateWithCalendarFormat:0 timeZone:timeZone2];
    v113 = [(ASEvent *)self _transformedEndDateForActiveSync:v41 isFloating:IsFloating];

    [(ASEvent *)self setEndTime:v113];
  }

  v111 = CalCalendarItemCopyRecurrences();
  if ([v111 count])
  {
    v42 = [v111 objectAtIndexedSubscript:0];

    v43 = [[ASRecurrence alloc] initWithCalRecurrence:v42 parentEvent:self useFloatingTimeForAllDayEvents:useFloatingTimeForAllDayEvents];
    [(ASEvent *)self setRecurrence:v43];
  }

  v122 = objc_opt_new();
  v124 = CalCalendarItemCopyAttendees();
  if ([v124 count])
  {
    v44 = 0;
    type = *(MEMORY[0x277D03988] + 6);
    v115 = *(MEMORY[0x277D03988] + 4);
    do
    {
      v45 = [v124 objectAtIndexedSubscript:v44];

      v46 = MEMORY[0x24C210580](v45);
      if (v46)
      {
        v47 = MEMORY[0x277CCAAC8];
        v48 = +[ASEvent attendeeExternalRepClasses];
        v126 = 0;
        v49 = [v47 unarchivedObjectOfClasses:v48 fromData:v46 error:&v126];
        v50 = v126;

        if (v49)
        {
          v51 = [v49 objectForKeyedSubscript:@"addedSelfAttendee"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v51;
            if ([v52 BOOLValue])
            {
              v53 = DALoggingwithCategory();
              if (os_log_type_enabled(v53, type))
              {
                subject = self->_subject;
                serverID = [(ASChangedCollectionLeaf *)self serverID];
                *buf = 138412546;
                v128 = subject;
                v129 = 2112;
                v130 = serverID;
                _os_log_impl(&dword_24A0AC000, v53, type, "Event %@ %@ contains DA added self attendee", buf, 0x16u);
              }

              v56 = DALoggingwithCategory();
              if (os_log_type_enabled(&v56->super.super, type))
              {
                *buf = 0;
                _os_log_impl(&dword_24A0AC000, &v56->super.super, type, "Not adding DA added self attendee to the attendee list", buf, 2u);
              }

              goto LABEL_56;
            }
          }

          else
          {
          }
        }

        else
        {
          v49 = v50;
          v50 = DALoggingwithCategory();
          if (os_log_type_enabled(v50, v115))
          {
            *buf = 138412290;
            v128 = v49;
            _os_log_impl(&dword_24A0AC000, v50, v115, "Unable to decode attendee properties: %@", buf, 0xCu);
          }
        }
      }

      v56 = [[ASAttendee alloc] initWithCalAttendee:v45 parentEvent:self];
      [v122 addObject:v56];
LABEL_56:

      ++v44;
    }

    while (v44 < [v124 count]);
  }

  typea = CalCalendarItemCopyAttendeesPendingDeletion();
  if ([typea count])
  {
    v57 = objc_opt_new();
    if ([typea count])
    {
      v58 = 0;
      do
      {
        v59 = [typea objectAtIndexedSubscript:v58];

        v60 = [[ASAttendee alloc] initWithCalAttendee:v59 parentEvent:self];
        [v122 addObject:v60];
        [v57 addObject:v60];

        ++v58;
      }

      while (v58 < [typea count]);
    }

    [(ASEvent *)self setAttendeesPendingDeletion:v57];
  }

  [(ASEvent *)self setAttendees:v122];
  v61 = CalCalendarItemCopyExceptionDatesAsCFDates();
  v62 = CalEventCopyDetachedEvents();
  if ([v61 count] || objc_msgSend(v62, "count"))
  {
    v63 = objc_opt_new();
    v64 = objc_opt_new();
    if ([v62 count])
    {
      v65 = 0;
      do
      {
        v66 = [v62 objectAtIndexedSubscript:v65];

        if (v66 != event)
        {
          v67 = [[ASEventException alloc] initWithCalEvent:v66 originalEvent:self account:accountCopy];
          v68 = v67;
          if (v67)
          {
            exceptionStartTime = [(ASEventException *)v67 exceptionStartTime];
            [v64 addObject:exceptionStartTime];

            [v63 addObject:v68];
          }
        }

        ++v65;
      }

      while (v65 < [v62 count]);
    }

    if ([v61 count])
    {
      v70 = 0;
      do
      {
        v71 = [v61 objectAtIndexedSubscript:v70];
        timeZone3 = [(ASEvent *)self timeZone];
        v73 = [v71 dateWithCalendarFormat:0 timeZone:timeZone3];
        v74 = [(ASEvent *)self _transformedStartDateForActiveSync:v73 isFloating:IsFloating];

        if (([v64 containsObject:v74] & 1) == 0)
        {
          v75 = [[ASEventException alloc] initWithExceptionStartTime:v74];
          v76 = v75;
          if (v75)
          {
            exceptionStartTime2 = [(ASEventException *)v75 exceptionStartTime];
            [v64 addObject:exceptionStartTime2];

            [v63 addObject:v76];
          }
        }

        ++v70;
      }

      while (v70 < [v61 count]);
    }

    [(ASEvent *)self setExceptions:v63];
  }

  Availability = CalCalendarItemGetAvailability();
  if (Availability <= 3)
  {
    [(ASEvent *)self setBusyStatus:qword_278FC7F20[Availability]];
  }

  PrivacyLevel = CalCalendarItemGetPrivacyLevel();
  if (PrivacyLevel <= 3)
  {
    [(ASEvent *)self setSensitivity:qword_278FC7F40[PrivacyLevel]];
  }

  ModifiedDate = CalCalendarItemCopyLastModifiedDate();
  if (ModifiedDate)
  {
    [(ASEvent *)self setDTStamp:?];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(ASEvent *)self setDTStamp:date];
  }

  v81 = CalEventCopyResponseComment();
  [(ASEvent *)self setResponseComment:v81];

  CalEventGetProposedStartDate();
  if (v82 != *MEMORY[0x277CF78F0])
  {
    v83 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    [(ASEvent *)self setProposedStartTime:v83];
    endTime = [(ASEvent *)self endTime];
    startTime = [(ASEvent *)self startTime];
    [endTime timeIntervalSinceDate:startTime];
    v87 = v86;

    v88 = MEMORY[0x277CBEAA8];
    proposedStartTime = [(ASEvent *)self proposedStartTime];
    v90 = [v88 dateWithTimeInterval:proposedStartTime sinceDate:v87];
    [(ASEvent *)self setProposedEndTime:v90];
  }

  v91 = CalCalendarItemCopyExternalRepresentation();
  if (v91)
  {
    v92 = MEMORY[0x277CCAAC8];
    v93 = +[ASEvent calendarItemExternalRepClasses];
    v125 = 0;
    v94 = [v92 unarchivedObjectOfClasses:v93 fromData:v91 error:&v125];
    v95 = v125;

    if (!v94)
    {
      v96 = DALoggingwithCategory();
      v97 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v96, v97))
      {
        *buf = 138412290;
        v128 = v95;
        _os_log_impl(&dword_24A0AC000, v96, v97, "Unable to decode calendar item properties: %@", buf, 0xCu);
      }
    }

    v98 = [v94 objectForKeyedSubscript:@"easExtraProperties"];
    v99 = [v98 objectForKeyedSubscript:&unk_285D57D38];
    [(ASEvent *)self setMeetingStatus:v99];

    v100 = [v98 objectForKeyedSubscript:&unk_285D57D50];
    [(ASEvent *)self setResponseRequested:v100];

    v101 = [v98 objectForKeyedSubscript:&unk_285D57D68];
    [(ASEvent *)self setCategories:v101];
  }

  [(ASEvent *)self _loadAttachmentsChangesForEvent:event account:accountCopy];
  v102 = MEMORY[0x277CBEAA8];
  CalEventGetOriginalStartDate();
  v103 = [v102 dateWithTimeIntervalSinceReferenceDate:?];
  if (v103)
  {
    timeZone4 = [(ASEvent *)self timeZone];
    v105 = [v103 dateWithCalendarFormat:0 timeZone:timeZone4];
    v106 = [(ASEvent *)self _transformedStartDateForActiveSync:v105 isFloating:IsFloating];

    [(ASEvent *)self setExceptionDate:v106];
  }

  [(ASEvent *)self _determineSelfnessWithLocalEvent:event forAccount:accountCopy];

LABEL_97:
}

- (ASEvent)init
{
  v3.receiver = self;
  v3.super_class = ASEvent;
  result = [(ASChangedCollectionLeaf *)&v3 init];
  if (result)
  {
    result->_calculateNextStatusAsIfMeetingRequest = 0;
    result->_shouldUpdateStatus = 1;
    result->_meetingResponseToEmailAbout = -1;
    result->_haveCheckedOrganizerEmail = 0;
  }

  return result;
}

- (ASEvent)initWithCalEvent:(void *)event serverID:(id)d account:(id)account
{
  dCopy = d;
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = ASEvent;
  v10 = [(ASChangedCollectionLeaf *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_calculateNextStatusAsIfMeetingRequest = 0;
    v10->_shouldUpdateStatus = 1;
    v10->_haveCheckedOrganizerEmail = 0;
    [(ASChangedCollectionLeaf *)v10 setServerID:dCopy];
    [(ASEvent *)v11 _loadAttributesFromCalEvent:event forAccount:accountCopy];
    [(ASEvent *)v11 setCalEvent:event];
    v11->_meetingResponseToEmailAbout = -1;
  }

  return v11;
}

+ (ASEvent)eventWithCalEvent:(void *)event serverID:(id)d account:(id)account
{
  accountCopy = account;
  dCopy = d;
  v10 = [[self alloc] initWithCalEvent:event serverID:dCopy account:accountCopy];

  return v10;
}

- (void)dealloc
{
  calEvent = self->_calEvent;
  if (calEvent)
  {
    CFRelease(calEvent);
    self->_calEvent = 0;
  }

  v4.receiver = self;
  v4.super_class = ASEvent;
  [(ASEvent *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  clientID = [(ASChangedCollectionLeaf *)self clientID];
  v7 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@] [%@]>", v4, serverID, clientID, self->_subject, self->_startTime];

  return v7;
}

- (int)calAttendeeStatus
{
  if (![(ASEvent *)self calEvent])
  {
    return 7;
  }

  [(ASEvent *)self calEvent];
  v3 = CalCalendarItemCopySelfAttendee();
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  Status = CalAttendeeGetStatus();
  CFRelease(v4);
  return Status;
}

- (int)calAttendeePendingStatus
{
  if (![(ASEvent *)self calEvent])
  {
    return 7;
  }

  [(ASEvent *)self calEvent];
  v3 = CalCalendarItemCopySelfAttendee();
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  PendingStatus = CalAttendeeGetPendingStatus();
  CFRelease(v4);
  return PendingStatus;
}

- (int)CalCalendarItemStatus
{
  calEvent = [(ASEvent *)self calEvent];
  if (calEvent)
  {
    [(ASEvent *)self calEvent];

    LODWORD(calEvent) = CalCalendarItemGetStatus();
  }

  return calEvent;
}

- (int)_nextEventStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account
{
  accountCopy = account;
  if (self->_calculateNextStatusAsIfMeetingRequest)
  {
    if (type == 2)
    {
      status = 3;
    }

    else
    {
      status = 1;
    }
  }

  else
  {
    meetingStatus = self->_meetingStatus;
    if (meetingStatus && ([(NSNumber *)meetingStatus intValue]& 4) != 0)
    {
      status = 3;
    }
  }

  return status;
}

- (int)_nextEventStatusWithOldStatus:(int)status account:(id)account
{
  v4 = *&status;
  accountCopy = account;
  v7 = [(ASEvent *)self _nextEventStatusWithOldStatus:v4 meetingClassType:1 account:accountCopy];
  if (!v7)
  {
    v7 = ![(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
  }

  return v7;
}

- (int)_nextAttendeeStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account
{
  accountCopy = account;
  v8 = accountCopy;
  if (self->_calculateNextStatusAsIfMeetingRequest)
  {
    protocol = [accountCopy protocol];
    serverUpdatesAttendeeStatusOnEvents = [protocol serverUpdatesAttendeeStatusOnEvents];

    if (status == 7)
    {
      statusCopy = 0;
    }

    else
    {
      statusCopy = status;
    }

    if (serverUpdatesAttendeeStatusOnEvents)
    {
      status = statusCopy;
    }

    else
    {
      status = 0;
    }
  }

  else
  {
    responseType = self->_responseType;
    if (responseType)
    {
      v13 = [(NSNumber *)responseType intValue]- 2;
      if (v13 <= 3)
      {
        status = dword_24A14DDC0[v13];
      }
    }
  }

  return status;
}

- (int)_nextAttendeeStatusWithOldStatus:(int)status account:(id)account
{
  v4 = *&status;
  accountCopy = account;
  v7 = [(ASEvent *)self _nextAttendeeStatusWithOldStatus:v4 meetingClassType:1 account:accountCopy];
  if (v7 == 7)
  {
    if ([(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy])
    {
      v7 = 7;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (int)_meetingResponseShouldUseEmail:(BOOL)email shouldFilterForEmail:(BOOL)forEmail
{
  forEmailCopy = forEmail;
  emailCopy = email;
  if (![(ASEvent *)self calEvent])
  {
    return 0;
  }

  [(ASEvent *)self calEvent];
  v7 = CalEventGetPendingParticipationStatus() - 1;
  if (v7 >= 3)
  {
    [(ASEvent *)self calEvent];
    v9 = CalEventCopyResponseComment();
    [(ASEvent *)self calEvent];
    v8 = 0;
    if (CalEventCommentHasChanged() && v9)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 7);
      v12 = os_log_type_enabled(v10, v11);
      if (emailCopy)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_24A0AC000, v10, v11, "Use email to send user comments", buf, 2u);
        }

        v8 = 4;
      }

      else
      {
        if (v12)
        {
          *v17 = 0;
          _os_log_impl(&dword_24A0AC000, v10, v11, "Use MeetingResponse to send user comments", v17, 2u);
        }

        v13 = [(ASEvent *)self calAttendeeStatus]- 1;
        if (v13 > 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = dword_24A14DDD0[v13];
        }
      }
    }
  }

  else
  {
    v8 = dword_24A14DDD0[v7];
  }

  if (v8)
  {
    v14 = !forEmailCopy;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    [(ASEvent *)self calEvent];
    v15 = CalEventCopyEventActions();
    if (![v15 count])
    {
      v8 = 4;
    }
  }

  return v8;
}

- (int)meetingResponseForAccount:(id)account
{
  accountCopy = account;
  protocol = [accountCopy protocol];
  sendEmailForMeetingInvitationAndResponse = [protocol sendEmailForMeetingInvitationAndResponse];
  protocol2 = [accountCopy protocol];

  LODWORD(self) = -[ASEvent _meetingResponseShouldUseEmail:shouldFilterForEmail:](self, "_meetingResponseShouldUseEmail:shouldFilterForEmail:", sendEmailForMeetingInvitationAndResponse, [protocol2 useEventIdsInMeetingResponse] ^ 1);
  return self;
}

- (int)selfAttendeeMeetingResponse
{
  v2 = [(ASEvent *)self calAttendeeStatus]- 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return dword_24A14DDD0[v2];
  }
}

- (int)meetingResponseForEmail
{
  if (self->_meetingResponseToEmailAbout == -1)
  {
    return [(ASEvent *)self _meetingResponseShouldUseEmail:1 shouldFilterForEmail:0];
  }

  else
  {
    return self->_meetingResponseToEmailAbout;
  }
}

- (BOOL)setCalEventWithExistingRecord:(void *)record intoCalendar:(void *)calendar
{
  if (record)
  {
    [(ASEvent *)self setCalEvent:record, calendar];
  }

  return record != 0;
}

- (BOOL)saveToCalendarWithExistingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  propertiesCopy = properties;
  v349 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  protocol = [accountCopy protocol];
  useFloatingTimeForAllDayEvents = [protocol useFloatingTimeForAllDayEvents];

  protocol2 = [accountCopy protocol];
  useInstanceIdForException = [protocol2 useInstanceIdForException];

  v15 = 0x27EF33000uLL;
  if (!record && (self->_isDTStampUpdateOnly || self->_isAttendeeUpdateOnly))
  {
    v39 = DALoggingwithCategory();
    v42 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v39, v42))
    {
      isDTStampUpdateOnly = self->_isDTStampUpdateOnly;
      isAttendeeUpdateOnly = self->_isAttendeeUpdateOnly;
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = isDTStampUpdateOnly;
      *&buf[18] = 1024;
      *&buf[20] = isAttendeeUpdateOnly;
      _os_log_impl(&dword_24A0AC000, v39, v42, "Asked to save new event %@, but record is NULL, and one of _isDTStampUpdateOnly (%d) or _isAttendeeUpdateOnly (%d) is true.  Dropping this event on the floor", buf, 0x18u);
    }

    v45 = 0;
    goto LABEL_302;
  }

  v16 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  [v16 calDatabaseForAccountID:accountID];

  selfCopy = self;
  localPropertiesCopy = localProperties;
  v313 = propertiesCopy;
  IsDefaultCalendarForStore = CalCalendarIsDefaultCalendarForStore();
  if (record)
  {
    ModifiedProperties = CalEventGetModifiedProperties();
    v18 = CalCalendarItemCopyExternalRepresentation();
    if (!v18)
    {
      v304 = 0;
      v302 = 0;
      recordCopy = record;
LABEL_32:
      [(ASEvent *)self setCalEvent:recordCopy];
      v300 = 1;
      cf = recordCopy;
      if (record)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    v19 = v18;
    v298 = accountCopy;
    v20 = MEMORY[0x277CCAAC8];
    v21 = +[ASEvent calendarItemExternalRepClasses];
    v343 = 0;
    v22 = [v20 unarchivedObjectOfClasses:v21 fromData:v19 error:&v343];
    v23 = v343;

    if (!v22)
    {
      v24 = DALoggingwithCategory();
      v25 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&dword_24A0AC000, v24, v25, "Unable to decode calendar item properties: %@", buf, 0xCu);
      }
    }

    v26 = [v22 objectForKeyedSubscript:@"easExtraProperties"];
    v304 = [v26 objectForKeyedSubscript:&unk_285D57D50];
    v302 = [v26 objectForKeyedSubscript:&unk_285D57D68];
    recordCopy2 = record;
    ModifiedDate = CalCalendarItemCopyLastModifiedDate();
    if (!ModifiedDate || (-[ASEvent dTStamp](selfCopy, "dTStamp"), (v29 = objc_claimAutoreleasedReturnValue()) == 0) || (v30 = v29, -[ASEvent dTStamp](selfCopy, "dTStamp"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [ModifiedDate compare:v31], v31, localProperties = localPropertiesCopy, v30, v33 = v32 == 1, propertiesCopy = v313, !v33))
    {

      record = recordCopy2;
      recordCopy = recordCopy2;
      accountCopy = v298;
      self = selfCopy;
LABEL_30:
      v15 = 0x27EF33000;
      goto LABEL_32;
    }

    v34 = DALoggingwithCategory();
    type = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v34, type))
    {
      dTStamp = [(ASEvent *)selfCopy dTStamp];
      *buf = 138412802;
      *&buf[4] = ModifiedDate;
      *&buf[12] = 2112;
      *&buf[14] = dTStamp;
      *&buf[22] = 2112;
      *&buf[24] = selfCopy;
      _os_log_impl(&dword_24A0AC000, v34, type, "Out of date timestamp.  cal db has (%@) I have (%@) - self is %@", buf, 0x20u);

      propertiesCopy = v313;
    }

    self = selfCopy;
    accountCopy = v298;
    if (![(ASEvent *)selfCopy _bailIfNotNewestDataForAccount:v298])
    {
      record = recordCopy2;
      recordCopy = recordCopy2;
      localProperties = localPropertiesCopy;
      goto LABEL_30;
    }

    v36 = DALoggingwithCategory();
    if (os_log_type_enabled(v36, type))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v36, type, "Not saving the in-memory event due to that out of date timestamp", buf, 2u);
    }

    v37 = CalCalendarItemCopyExternalID();
    serverID = [(ASChangedCollectionLeaf *)selfCopy serverID];

    v39 = v304;
    if (!serverID || v37 && (-[ASChangedCollectionLeaf serverID](selfCopy, "serverID"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 isEqualToString:v37], v40, (v41 & 1) != 0))
    {
      if (CalCalendarItemGetStatus())
      {
LABEL_92:

        v45 = 0;
        goto LABEL_301;
      }
    }

    else
    {
      serverID2 = [(ASChangedCollectionLeaf *)selfCopy serverID];
      CalCalendarItemSetExternalID();

      [(ASEvent *)selfCopy calEvent];
      v91 = CalEventCopyDetachedEvents();
      if ([v91 count])
      {
        v92 = 0;
        do
        {
          v93 = [v91 objectAtIndexedSubscript:v92];

          v94 = [[ASEventException alloc] initWithCalEvent:v93 originalEvent:selfCopy account:accountCopy];
          v95 = [(ASEventException *)v94 serverIdForCalFrameworkWithParentEvent:selfCopy];
          CalCalendarItemSetExternalID();

          accountCopy = v298;
          ++v92;
        }

        while (v92 < [v91 count]);
      }

      if (CalCalendarItemGetStatus())
      {
        goto LABEL_91;
      }
    }

    CalCalendarItemSetStatus();
LABEL_91:
    v96 = +[ASLocalDBHelper sharedInstance];
    accountID2 = [accountCopy accountID];
    [v96 calSaveDatabaseForAccountID:accountID2];

    goto LABEL_92;
  }

  Event = CalDatabaseCreateEvent();
  if (Event)
  {
    recordCopy = Event;
    ModifiedProperties = 0;
    v304 = 0;
    v302 = 0;
    goto LABEL_32;
  }

  v300 = 0;
  ModifiedProperties = 0;
  v304 = 0;
  cf = 0;
  v302 = 0;
LABEL_33:
  if (calendar)
  {
    MEMORY[0x24C2106B0](calendar, cf);
  }

LABEL_35:
  if (self->_dTStamp)
  {
    v48 = CalCalendarItemCopyLastModifiedDate();
    v49 = self->_dTStamp;
    if (v48)
    {
      [v48 compare:v49];
    }

    CalCalendarItemSetLastModifiedDate();
  }

  serverID3 = [(ASChangedCollectionLeaf *)self serverID];

  if (serverID3)
  {
    if (useInstanceIdForException && ([(ASChangedCollectionLeaf *)self instanceID], v51 = objc_claimAutoreleasedReturnValue(), v51, v51))
    {
      v52 = MEMORY[0x277CCACA8];
      serverID4 = [(ASChangedCollectionLeaf *)self serverID];
      instanceID = [(ASChangedCollectionLeaf *)self instanceID];
      serverID5 = [v52 stringWithFormat:@"%@%@%@", serverID4, @"<!ExceptionDate!>", instanceID];
    }

    else
    {
      serverID5 = [(ASChangedCollectionLeaf *)self serverID];
    }

    [(ASEvent *)self calEvent];
    CalCalendarItemSetExternalID();
  }

  if (*(&self->super.super.super.isa + *(v15 + 3312)))
  {
    v56 = 0;
    if (localProperties)
    {
      goto LABEL_288;
    }

    goto LABEL_289;
  }

  recordCopy3 = record;
  if (self->_isAttendeeUpdateOnly)
  {
    v293 = 0;
    v296 = 0;
    goto LABEL_229;
  }

  allDayEvent = [(ASEvent *)self allDayEvent];
  [allDayEvent BOOLValue];
  v58 = cf;
  CalEventSetAllDay();

  body = [(ASEvent *)self body];

  if (body)
  {
    if ([(ASEvent *)self bodyTruncated])
    {
      body3 = CalCalendarItemCopyDescription();
      if (!body3 || (-[ASEvent body](self, "body"), v61 = objc_claimAutoreleasedReturnValue(), v62 = [body3 hasPrefix:v61], v61, (v62 & 1) == 0))
      {
        body2 = [(ASEvent *)self body];
        CalCalendarItemSetDescription();
      }
    }

    else
    {
      body3 = [(ASEvent *)self body];
      CalCalendarItemSetDescription();
    }

    goto LABEL_64;
  }

  if ((propertiesCopy & 1) == 0)
  {
    CalCalendarItemSetDescription();
    goto LABEL_64;
  }

  v64 = CalCalendarItemCopyDescription();
  if (!v64)
  {
LABEL_64:
    v296 = 0;
    goto LABEL_65;
  }

  v65 = v64;
  v66 = DALoggingwithCategory();
  v67 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v66, v67))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&dword_24A0AC000, v66, v67, "event %@ had local description over remote", buf, 0xCu);
  }

  CFRelease(v65);
  v296 = 1;
LABEL_65:
  CalEventGetEndDate();
  v69 = v68;
  if (useFloatingTimeForAllDayEvents)
  {
    allDayEvent2 = [(ASEvent *)self allDayEvent];
    intValue = [allDayEvent2 intValue];

    endTime = [(ASEvent *)self endTime];
    endDateForCalFramework = endTime;
    if (intValue)
    {
      v74 = [endTime dateByAddingTimeInterval:-1.0];

      endDateForCalFramework = v74;
    }
  }

  else
  {
    endDateForCalFramework = [(ASEvent *)self endDateForCalFramework];
  }

  [endDateForCalFramework timeIntervalSinceReferenceDate];
  CalEventSetEndDate();
  [(ASEvent *)self timeZoneForCalFramework];
  CalCalendarItemSetEndTimeZone();
  v292 = endDateForCalFramework;
  [endDateForCalFramework timeIntervalSinceReferenceDate];
  v76 = 2 * (v69 != v75);
  Location = CalCalendarItemCopyLocation();
  location = [(ASEvent *)self location];

  v299 = accountCopy;
  if (!location)
  {
    if (propertiesCopy)
    {
      if (Location)
      {
        v81 = DALoggingwithCategory();
        v82 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v81, v82))
        {
          *buf = 138412290;
          *&buf[4] = self;
          _os_log_impl(&dword_24A0AC000, v81, v82, "event %@ had local location over remote", buf, 0xCu);
        }

        v296 = 1;
        goto LABEL_112;
      }

      goto LABEL_113;
    }

    CalCalendarItemSetLocation();
    if (Location)
    {
      v76 |= 8u;
    }

    goto LABEL_111;
  }

  location2 = [(ASEvent *)self location];
  isEmptyLocation = [location2 isEmptyLocation];

  if ((isEmptyLocation & 1) == 0)
  {
    if (!Location)
    {
      Location = CalDatabaseCreateLocation();
      CalCalendarItemSetLocation();
    }

    v83 = [ASLocation locationWithCalLocation:Location];
    location3 = [(ASEvent *)self location];
    v85 = [location3 isEqualToLocation:v83];

    if (v85)
    {
      goto LABEL_110;
    }

    location4 = [(ASEvent *)self location];
    annotation = [location4 annotation];

    location5 = [(ASEvent *)self location];
    v89 = location5;
    *typea = v83;
    if (annotation)
    {
      [location5 annotation];
      CalLocationSetAddress();

LABEL_102:
      v76 |= 8u;
      location6 = [(ASEvent *)self location];
      displayName = [location6 displayName];

      if (displayName)
      {
        location7 = [(ASEvent *)self location];
        [location7 displayName];
        CalLocationSetTitle();
      }

      else
      {
        CalLocationSetTitle();
      }

      v118 = accountCopy;
      location8 = [(ASEvent *)self location];
      latitude = [location8 latitude];
      if (latitude)
      {
        v121 = latitude;
        propertiesCopy = [(ASEvent *)self location];
        longitude = [propertiesCopy longitude];

        LODWORD(propertiesCopy) = v313;
        if (longitude)
        {
          *buf = 0;
          *&buf[8] = 0;
          location9 = [(ASEvent *)self location];
          latitude2 = [location9 latitude];
          [latitude2 doubleValue];
          *buf = v125;

          location10 = [(ASEvent *)self location];
          longitude2 = [location10 longitude];
          [longitude2 doubleValue];
          *&buf[8] = v128;
        }
      }

      else
      {
      }

      CalLocationSetCoordinates();
      accountCopy = v118;
      v83 = *typea;
LABEL_110:

LABEL_111:
      if (Location)
      {
        goto LABEL_112;
      }

      goto LABEL_113;
    }

    street = [location5 street];
    if (street)
    {
      v99 = street;
      propertiesCopy = [(ASEvent *)self location];
      country = [propertiesCopy country];
      if (country)
      {
        v101 = country;
        location11 = [(ASEvent *)self location];
        city = [location11 city];
        if (city)
        {
          v104 = city;
          location12 = [(ASEvent *)self location];
          state = [location12 state];

          self = selfCopy;
          accountCopy = v299;
          LODWORD(propertiesCopy) = v313;
          v58 = cf;
          if (state)
          {
            v314 = MEMORY[0x277CCACA8];
            location13 = [(ASEvent *)selfCopy location];
            street2 = [location13 street];
            propertiesCopy = [(ASEvent *)selfCopy location];
            city2 = [propertiesCopy city];
            location14 = [(ASEvent *)selfCopy location];
            state2 = [location14 state];
            location15 = [(ASEvent *)selfCopy location];
            country2 = [location15 country];
            v113 = street2;
            v112 = [v314 stringWithFormat:@"%@, %@, %@, %@", street2, city2, state2, country2];

            accountCopy = v299;
            self = selfCopy;

            v58 = cf;
            LODWORD(propertiesCopy) = v313;

            CalLocationSetAddress();
            goto LABEL_102;
          }

LABEL_101:
          CalLocationSetAddress();
          goto LABEL_102;
        }
      }

      LODWORD(propertiesCopy) = v313;
      v58 = cf;
    }

    goto LABEL_101;
  }

  if (Location)
  {
    CalCalendarItemSetLocation();
LABEL_112:
    CFRelease(Location);
  }

LABEL_113:
  v129 = CalCalendarItemCopyAlarms();
  v130 = [v129 count];
  if (propertiesCopy && (ModifiedProperties & 1) != 0)
  {
    if (!v130)
    {
      if (!self->_reminderMinsBefore)
      {
        goto LABEL_135;
      }

      v135 = DALoggingwithCategory();
      v136 = *(MEMORY[0x277D03988] + 7);
      if (!os_log_type_enabled(v135, v136))
      {
        goto LABEL_134;
      }

      *buf = 138412290;
      *&buf[4] = self;
      v137 = "event %@ had local alarm over remote";
      goto LABEL_133;
    }

    if (v130 == 1)
    {
      if (!self->_reminderMinsBefore)
      {
        goto LABEL_123;
      }

      [v129 objectAtIndexedSubscript:0];

      reminderMinsBefore = [(ASEvent *)self reminderMinsBefore];
      v132 = -60 * [reminderMinsBefore intValue];

      if (v132 != CalAlarmGetTriggerInterval())
      {
        v133 = DALoggingwithCategory();
        v134 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v133, v134))
        {
          *buf = 138412290;
          *&buf[4] = self;
          _os_log_impl(&dword_24A0AC000, v133, v134, "event %@ had local alarm over remote", buf, 0xCu);
        }

        v296 = 1;
      }

      if (!self->_reminderMinsBefore)
      {
LABEL_123:
        v135 = DALoggingwithCategory();
        v136 = *(MEMORY[0x277D03988] + 7);
        if (!os_log_type_enabled(v135, v136))
        {
LABEL_134:

          v296 = 1;
          goto LABEL_135;
        }

        *buf = 138412290;
        *&buf[4] = self;
        v137 = "event %@ had NO local alarm over remote";
LABEL_133:
        _os_log_impl(&dword_24A0AC000, v135, v136, v137, buf, 0xCu);
        goto LABEL_134;
      }
    }
  }

  else
  {
    if (v130)
    {
      v138 = 0;
      do
      {
        v139 = [v129 objectAtIndexedSubscript:v138];

        MEMORY[0x24C210D40](v58, v139);
        ++v138;
      }

      while (v138 < [v129 count]);
    }

    reminderMinsBefore2 = [(ASEvent *)self reminderMinsBefore];

    if (reminderMinsBefore2)
    {
      Alarm = CalDatabaseCreateAlarm();
      reminderMinsBefore3 = [(ASEvent *)self reminderMinsBefore];
      [reminderMinsBefore3 intValue];
      CalAlarmSetTriggerInterval();

      CalCalendarItemAddAlarm();
      CFRelease(Alarm);
    }
  }

LABEL_135:

  subject = [(ASEvent *)self subject];

  if (subject)
  {
    [(ASEvent *)self subject];
LABEL_142:
    CalCalendarItemSetSummary();
    goto LABEL_143;
  }

  if ((v313 & 1) == 0)
  {
    goto LABEL_142;
  }

  v144 = CalCalendarItemCopySummary();
  if (v144)
  {
    v145 = v144;
    v146 = DALoggingwithCategory();
    v147 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v146, v147))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_24A0AC000, v146, v147, "event %@ had local summary over remote", buf, 0xCu);
    }

    CFRelease(v145);
    v296 = 1;
  }

LABEL_143:
  organizerName = [(ASEvent *)self organizerName];
  if ([organizerName length])
  {
    v149 = 1;
  }

  else
  {
    organizerEmail = [(ASEvent *)self organizerEmail];
    v149 = [organizerEmail length] != 0;
  }

  [(ASEvent *)self calEvent];
  Organizer = CalCalendarItemCopyOrganizer();
  v152 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
  if (!Organizer || v149)
  {
    if (!v149)
    {
      goto LABEL_165;
    }

    if (Organizer == 0 && !v152)
    {
      Organizer = CalDatabaseCreateOrganizer();
      [(ASEvent *)self calEvent];
      CalCalendarItemSetOrganizer();
    }

    if (Organizer)
    {
      MEMORY[0x24C210E70](Organizer, [(ASEvent *)self organizerName]);
      MEMORY[0x24C210E80](Organizer, [(ASEvent *)self organizerEmail]);
      [(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
      CalOrganizerSetIsSelf();
    }

    v153 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
    if (!calendar || !v153)
    {
LABEL_165:
      if (!Organizer)
      {
        goto LABEL_167;
      }

      goto LABEL_166;
    }

    v154 = CalCalendarCopyOwnerIdentityDisplayName();
    organizerName2 = [(ASEvent *)self organizerName];
    v156 = organizerName2;
    if (v154)
    {
      if (!organizerName2)
      {
        goto LABEL_164;
      }

      organizerName3 = [(ASEvent *)self organizerName];
      v158 = [v154 isEqualToString:organizerName3];

      if (v158)
      {
        goto LABEL_164;
      }
    }

    else
    {

      if (!v156)
      {
LABEL_164:

        goto LABEL_165;
      }
    }

    v159 = DALoggingwithCategory();
    v160 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v159, v160))
    {
      organizerName4 = [(ASEvent *)self organizerName];
      *buf = 138412546;
      *&buf[4] = v154;
      *&buf[12] = 2112;
      *&buf[14] = organizerName4;
      _os_log_impl(&dword_24A0AC000, v159, v160, "Updating calendar owner name from %@ to %@", buf, 0x16u);
    }

    [(ASEvent *)self organizerName];
    CalCalendarSetOwnerIdentityDisplayName();
    goto LABEL_164;
  }

  [(ASEvent *)self calEvent];
  CalCalendarItemSetOrganizer();
LABEL_166:
  CFRelease(Organizer);
LABEL_167:
  CalEventGetStartDate();
  v163 = v162;
  if (useFloatingTimeForAllDayEvents)
  {
    [(ASEvent *)self startTime];
  }

  else
  {
    [(ASEvent *)self startDateForCalFramework];
  }
  v164 = ;
  [v164 timeIntervalSinceReferenceDate];
  [(ASEvent *)self timeZoneNameForCalFramework];
  CalEventSetStartDateDirectly();
  [v164 timeIntervalSinceReferenceDate];
  v165 = v76 | 2;
  if (v163 == v166)
  {
    v165 = v76;
  }

  v293 = v165;
  if ((v165 & 2) != 0)
  {
    [(ASEvent *)self calEvent];
    CalEventGetRawProposedStartDate();
    if (v167 != *MEMORY[0x277CF78F0])
    {
      [(ASEvent *)self calEvent];
      CalEventSetProposedStartDate();
      [(ASEvent *)self calEvent];
      CalEventSetResponseComment();
    }
  }

  sensitivity = self->_sensitivity;
  if (!sensitivity || [(NSNumber *)sensitivity intValue]<= 3)
  {
    [(ASEvent *)self calEvent];
    CalCalendarItemSetPrivacyLevel();
  }

  v169 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v170 = v169;
  meetingStatus = self->_meetingStatus;
  if (meetingStatus)
  {
    [v169 setObject:meetingStatus forKeyedSubscript:&unk_285D57D38];
  }

  responseRequested = self->_responseRequested;
  if (responseRequested || (responseRequested = v304) != 0)
  {
    [v170 setObject:responseRequested forKeyedSubscript:&unk_285D57D50];
  }

  v173 = objc_opt_new();
  v174 = v173;
  if (self->_categories)
  {
    [v173 addObjectsFromArray:?];
  }

  if ([v174 count])
  {
    allObjects = [v174 allObjects];
    [v170 setObject:allObjects forKeyedSubscript:&unk_285D57D68];
  }

  v289 = v174;
  if (self->_disallowNewTimeProposal)
  {
    [(ASEvent *)self calEvent];
    [(NSNumber *)self->_disallowNewTimeProposal BOOLValue];
    CalEventSetDisallowProposeNewTime();
  }

  if (self->_onlineMeetingExternalLink)
  {
    v176 = MEMORY[0x277CBEBC0];
    onlineMeetingExternalLink = [(ASEvent *)self onlineMeetingExternalLink];
    v178 = [v176 URLWithString:onlineMeetingExternalLink];

    [(ASEvent *)self calEvent];
    CalEventSetConferenceURL();
  }

  [(ASEvent *)self calEvent];
  v294 = CalCalendarItemCopyExternalRepresentation();
  v291 = v164;
  if (!v294)
  {
    goto LABEL_197;
  }

  v179 = v170;
  v180 = MEMORY[0x277CCAAC8];
  v181 = +[ASEvent calendarItemExternalRepClasses];
  v342 = 0;
  v182 = [v180 unarchivedObjectOfClasses:v181 fromData:v294 error:&v342];
  v183 = v342;
  v184 = [v182 mutableCopy];

  if (!v184)
  {
    v186 = DALoggingwithCategory();
    v187 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v186, v187))
    {
      *buf = 138412290;
      *&buf[4] = v183;
      _os_log_impl(&dword_24A0AC000, v186, v187, "Unable to decode calendar item properties: %@", buf, 0xCu);
    }

    v170 = v179;
LABEL_197:
    v185 = objc_opt_new();
    goto LABEL_198;
  }

  v170 = v179;
  v185 = v184;
LABEL_198:
  v290 = v170;
  [v185 setObject:v170 forKeyedSubscript:@"easExtraProperties"];
  v288 = v185;
  v188 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v185];
  [(ASEvent *)self calEvent];
  v287 = v188;
  CalCalendarItemSetExternalRepresentation();
  typeb = objc_opt_new();
  v189 = CalCalendarItemCopyAttachments();
  if (!v189)
  {
    goto LABEL_218;
  }

  v190 = v189;
  Count = CFArrayGetCount(v189);
  if (Count < 1)
  {
    goto LABEL_217;
  }

  v191 = 0;
  v301 = v190;
  do
  {
    CFArrayGetValueAtIndex(v190, v191);
    v192 = CalAttachmentCopyUUID();
    v315 = CalAttachmentCopyExternalID();
    v338 = 0u;
    v339 = 0u;
    v340 = 0u;
    v341 = 0u;
    attachments = [(ASEvent *)self attachments];
    v194 = [attachments countByEnumeratingWithState:&v338 objects:v347 count:16];
    if (!v194)
    {

LABEL_215:
      CalCalendarItemRemoveAttachment();
      goto LABEL_216;
    }

    v195 = v194;
    v308 = v191;
    v318 = 0;
    v196 = *v339;
    do
    {
      for (i = 0; i != v195; ++i)
      {
        if (*v339 != v196)
        {
          objc_enumerationMutation(attachments);
        }

        v198 = *(*(&v338 + 1) + 8 * i);
        clientId = [v198 clientId];
        if ([v192 isEqualToString:clientId])
        {
        }

        else
        {
          [v198 name];
          v200 = v192;
          v202 = v201 = attachments;
          v203 = [v315 isEqualToString:v202];

          attachments = v201;
          v192 = v200;

          if (!v203)
          {
            continue;
          }
        }

        name = [v198 name];
        CalAttachmentSetExternalID();

        displayName2 = [v198 displayName];
        CalAttachmentSetFilename();

        v206 = [v198 size];
        CalAttachmentSetFileSize();

        [typeb addObject:v198];
        v318 = 1;
      }

      v195 = [attachments countByEnumeratingWithState:&v338 objects:v347 count:16];
    }

    while (v195);

    v190 = v301;
    v191 = v308;
    if ((v318 & 1) == 0)
    {
      goto LABEL_215;
    }

LABEL_216:

    ++v191;
    self = selfCopy;
  }

  while (v191 != Count);
LABEL_217:
  CFRelease(v190);
LABEL_218:
  v336 = 0u;
  v337 = 0u;
  v334 = 0u;
  v335 = 0u;
  attachments2 = [(ASEvent *)self attachments];
  v208 = [attachments2 countByEnumeratingWithState:&v334 objects:v346 count:16];
  if (v208)
  {
    v209 = v208;
    v210 = *v335;
    do
    {
      for (j = 0; j != v209; ++j)
      {
        if (*v335 != v210)
        {
          objc_enumerationMutation(attachments2);
        }

        v212 = *(*(&v334 + 1) + 8 * j);
        if (([typeb containsObject:v212] & 1) == 0)
        {
          method = [v212 method];
          intValue2 = [method intValue];

          if (intValue2 == 1)
          {
            CalDatabaseCreateAttachment();
            name2 = [v212 name];
            CalAttachmentSetExternalID();

            displayName3 = [v212 displayName];
            CalAttachmentSetFilename();

            v217 = [v212 size];
            CalAttachmentSetFileSize();

            v218 = [MEMORY[0x277CBEBC0] URLWithString:@"http://localhost"];
            CalAttachmentSetURL();
            CalCalendarItemAddAttachment();
          }
        }
      }

      v209 = [attachments2 countByEnumeratingWithState:&v334 objects:v346 count:16];
    }

    while (v209);
  }

  accountCopy = v299;
  localProperties = localPropertiesCopy;
  propertiesCopy = v313;
LABEL_229:
  [(ASEvent *)self calEvent];
  v219 = CalCalendarItemCopyAttendees();
  [(ASEvent *)self calEvent];
  v220 = CalCalendarItemCopyAttendeesPendingDeletion();
  if (v219)
  {
    v221 = [v219 mutableCopy];
  }

  else
  {
    v221 = objc_opt_new();
  }

  v222 = v221;
  if (v220)
  {
    [v221 addObjectsFromArray:v220];
  }

  if (-[ASEvent shouldUseInMemoryAttendeesForAccount:numExistingAttendees:](self, "shouldUseInMemoryAttendeesForAccount:numExistingAttendees:", accountCopy, [v222 count]))
  {
    v319 = v219;
    *typec = v220;
    selfCopy2 = self;
    v224 = accountCopy;
    v225 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:selfCopy2->_attendees];
    v226 = objc_opt_new();
    v330 = 0u;
    v331 = 0u;
    v332 = 0u;
    v333 = 0u;
    v227 = selfCopy2->_attendees;
    v228 = [(NSArray *)v227 countByEnumeratingWithState:&v330 objects:v345 count:16];
    if (v228)
    {
      v229 = v228;
      v230 = *v331;
      do
      {
        for (k = 0; k != v229; ++k)
        {
          if (*v331 != v230)
          {
            objc_enumerationMutation(v227);
          }

          v232 = *(*(&v330 + 1) + 8 * k);
          email = [v232 email];
          if (email)
          {
            [v226 setObject:v232 forKeyedSubscript:email];
          }
        }

        v229 = [(NSArray *)v227 countByEnumeratingWithState:&v330 objects:v345 count:16];
      }

      while (v229);
    }

    accountCopy = v224;
    if ([v222 count])
    {
      v234 = 0;
      do
      {
        v235 = [v222 objectAtIndexedSubscript:v234];

        v236 = MEMORY[0x24C210570](v235);
        if (v236 && ([v226 objectForKeyedSubscript:v236], (v237 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v238 = v237;
          [v237 setLocalId:MEMORY[0x24C210600](v235)];
          [v225 removeObject:v238];
          [v238 saveToCalendarWithParentASEvent:selfCopy existingRecord:-[ASEvent calEvent](selfCopy isDefaultCalendar:"calEvent") shouldMergeProperties:IsDefaultCalendarForStore outMergeDidChooseLocalProperties:v313 account:{localPropertiesCopy, accountCopy}];
        }

        else
        {
          [(ASEvent *)selfCopy calEvent];
          CalCalendarItemRemoveAttendee();
        }

        ++v234;
      }

      while (v234 < [v222 count]);
    }

    allObjects2 = [v225 allObjects];
    self = selfCopy;
    localProperties = localPropertiesCopy;
    if ([allObjects2 count])
    {
      v240 = 0;
      do
      {
        v241 = [allObjects2 objectAtIndexedSubscript:v240];
        [v241 saveToCalendarWithParentASEvent:selfCopy existingRecord:-[ASEvent calEvent](selfCopy isDefaultCalendar:"calEvent") shouldMergeProperties:IsDefaultCalendarForStore outMergeDidChooseLocalProperties:v313 account:{localPropertiesCopy, accountCopy}];

        ++v240;
      }

      while (v240 < [allObjects2 count]);
    }

    propertiesCopy = v313;
    v219 = v319;
    v220 = *typec;
  }

  if (self->_isAttendeeUpdateOnly)
  {
    goto LABEL_287;
  }

  [(ASEvent *)self calEvent];
  [(ASEvent *)self uidGeneratedIfNecessaryWithLocalEvent:[(ASEvent *)self calEvent] forAccount:accountCopy];
  CalCalendarItemSetUniqueIdentifier();
  if (!self->_shouldUpdateStatus || self->_calculateNextStatusAsIfMeetingRequest)
  {
    v242 = 0;
    goto LABEL_259;
  }

  *typed = v220;
  [(ASEvent *)self calEvent];
  Status = CalCalendarItemGetStatus();
  v316 = [(ASEvent *)self _nextEventStatusWithOldStatus:Status account:accountCopy];
  v310 = Status;
  if (!v316)
  {
    v242 = 0;
    goto LABEL_340;
  }

  v248 = [(ASEvent *)self copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:[(ASEvent *)self calEvent] forAccount:accountCopy];
  if (v248)
  {
    v249 = v248;
    Status = CalAttendeeGetStatus();
    v250 = [(ASEvent *)self _nextAttendeeStatusWithOldStatus:Status account:accountCopy];
    CalAttendeeGetPendingStatus();
    CalAttendeeSetStatus();
    CalAttendeeSetPendingStatus();
    CFRelease(v249);
    v242 = Status != v250;
    v251 = DALoggingwithCategory();
    v252 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v251, v252))
    {
      v253 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
      *buf = 67109888;
      *&buf[4] = v250;
      *&buf[8] = 1024;
      *&buf[10] = v310;
      *&buf[14] = 1024;
      *&buf[16] = Status;
      *&buf[20] = 1024;
      *&buf[22] = v253;
      _os_log_impl(&dword_24A0AC000, v251, v252, "Event: setting new attendee status %d, as I had old event status %d, attendee status %d, and organizerIsSelf is %d", buf, 0x1Au);
    }

    v254 = Status != 0;
    propertiesCopy = v313;
    LODWORD(Status) = v310;
  }

  else
  {
    v250 = [(ASEvent *)self _nextAttendeeStatusWithOldStatus:7 account:accountCopy];
    v242 = 0;
    v254 = 1;
  }

  if (Status == 1)
  {
    if (v316 != 3)
    {
      goto LABEL_316;
    }

    goto LABEL_313;
  }

  if (!Status)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v316 == 3 && (isKindOfClass & 1) != 0)
    {
LABEL_313:
      if ((v250 & 0xFFFFFFFD) == 0)
      {
        goto LABEL_316;
      }

      v268 = DALoggingwithCategory();
      LOBYTE(v269) = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v268, v269))
      {
        *buf = 0;
        v270 = "Event is going from Confirmed to Cancelled: setting NeedsNotification flag to YES";
        goto LABEL_320;
      }

LABEL_321:

      if (IsDefaultCalendarForStore)
      {
        [(ASEvent *)self calEvent];
        CalEventSetNeedsNotification();
      }

      v272 = 0;
      goto LABEL_341;
    }
  }

LABEL_316:
  protocol3 = [accountCopy protocol];
  if ((v254 & [protocol3 serverCreatesEventChangesForInvitations]) == 1)
  {

    if (!v250)
    {
      v268 = DALoggingwithCategory();
      v269 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v268, *(MEMORY[0x277D03988] + 6)))
      {
        *buf = 0;
        v270 = "Event is moving the attendee status to Pending from non-Pending: setting NeedsNotification flag to YES";
LABEL_320:
        _os_log_impl(&dword_24A0AC000, v268, v269, v270, buf, 2u);
      }

      goto LABEL_321;
    }
  }

  else
  {
  }

  appointmentReplyTime = [(ASEvent *)self appointmentReplyTime];

  if (appointmentReplyTime)
  {
    [(ASEvent *)self calEvent];
    v274 = CalEventCopyEventActions();
    v275 = v274;
    if (v274 && CFArrayGetCount(v274))
    {
      if (CFArrayGetValueAtIndex(v275, 0))
      {
        v276 = CalEventActionCopyExternalRepresentation();
        if (v276)
        {
          v277 = v276;
          v278 = ASUnarchiveDate(@"emailDateReceived", v276);
          if (v278 && [(NSDate *)self->_appointmentReplyTime compare:v278]== NSOrderedDescending)
          {
            v320 = v219;
            v279 = accountCopy;
            v280 = DALoggingwithCategory();
            v281 = *(MEMORY[0x277D03988] + 6);
            if (os_log_type_enabled(v280, v281))
            {
              *buf = 0;
              _os_log_impl(&dword_24A0AC000, v280, v281, "Event due to more recent appointmentReplyTime: setting NeedsNotification flag to NO", buf, 2u);
            }

            [(ASEvent *)self calEvent];
            CalEventSetNeedsNotification();
            accountCopy = v279;
            propertiesCopy = v313;
            v219 = v320;
          }

          CFRelease(v277);
        }
      }

      goto LABEL_339;
    }

    v282 = DALoggingwithCategory();
    v283 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v282, v283))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v282, v283, "Event has appointmentReplyTime, but no event action. This is usually normal. If notification is not cleared when it should, this could be an edge case that has not been addressed.", buf, 2u);
    }

    if (v275)
    {
LABEL_339:
      CFRelease(v275);
    }
  }

LABEL_340:
  v272 = 1;
LABEL_341:
  v284 = DALoggingwithCategory();
  v285 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v284, v285))
  {
    *buf = 67109376;
    *&buf[4] = v316;
    *&buf[8] = 1024;
    *&buf[10] = v310;
    _os_log_impl(&dword_24A0AC000, v284, v285, "Event: setting new event status %d, as I had old event status %d", buf, 0xEu);
  }

  [(ASEvent *)self calEvent];
  CalCalendarItemSetStatus();
  if (v293)
  {
    v286 = v272;
  }

  else
  {
    v286 = 1;
  }

  if (recordCopy3)
  {
    v220 = *typed;
    if ((v286 & 1) == 0)
    {
      [(ASEvent *)self calEvent];
      CalEventAddInvitationChangedProperties();
    }
  }

  else
  {
    v220 = *typed;
  }

LABEL_259:
  busyStatus = self->_busyStatus;
  if (busyStatus)
  {
    v244 = v242 || (propertiesCopy & 1) == 0 || (ModifiedProperties & 2) == 0;
    intValue3 = [(NSNumber *)busyStatus intValue];
    if (intValue3 == 3)
    {
      v246 = 3;
      if (!v244)
      {
        goto LABEL_276;
      }

      goto LABEL_274;
    }

    if (intValue3 == 1)
    {
      v246 = 2;
      if (!v244)
      {
        goto LABEL_276;
      }

      goto LABEL_274;
    }

    if (intValue3)
    {
      v246 = 0;
      if (v244)
      {
        goto LABEL_274;
      }

LABEL_276:
      if (self->_busyStatus)
      {
        [(ASEvent *)self calEvent];
        if (CalCalendarItemGetAvailability() != v246)
        {
          v255 = DALoggingwithCategory();
          v256 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v255, v256))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&dword_24A0AC000, v255, v256, "event %@ had local availability different from server", buf, 0xCu);
          }

          v296 = 1;
        }
      }
    }

    else
    {
      v246 = 1;
      if (!v244)
      {
        goto LABEL_276;
      }

LABEL_274:
      [(ASEvent *)self calEvent];
      CalCalendarItemSetAvailability();
    }
  }

  [(ASEvent *)self _sanitizeLocalExceptionsForAccount:accountCopy];
  recurrence = [(ASEvent *)self recurrence];

  if (recurrence)
  {
    recurrence2 = [(ASEvent *)self recurrence];
    [recurrence2 saveToCalendarWithParentASEvent:self existingRecord:-[ASEvent calEvent](self shouldMergeProperties:"calEvent") outMergeDidChooseLocalProperties:propertiesCopy useFloatingTimeForAllDayEvents:localProperties account:{useFloatingTimeForAllDayEvents, accountCopy}];
  }

  else
  {
    [(ASEvent *)self calEvent];
    recurrence2 = CalCalendarItemCopyRecurrences();
    if ([recurrence2 count])
    {
      v259 = 0;
      do
      {
        [recurrence2 objectAtIndexedSubscript:v259];

        [(ASEvent *)self calEvent];
        CalCalendarItemRemoveRecurrence();
        ++v259;
      }

      while (v259 < [recurrence2 count]);
    }
  }

LABEL_287:
  record = recordCopy3;
  v56 = v296;
  if (localProperties)
  {
LABEL_288:
    *localProperties |= v56;
  }

LABEL_289:
  v328 = 0u;
  v329 = 0u;
  v326 = 0u;
  v327 = 0u;
  v260 = self->_exceptions;
  v261 = [(NSArray *)v260 countByEnumeratingWithState:&v326 objects:v344 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v327;
    do
    {
      for (m = 0; m != v262; ++m)
      {
        if (*v327 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [*(*(&v326 + 1) + 8 * m) saveToCalendarWithParentASEvent:self existingRecord:objc_msgSend(*(*(&v326 + 1) + 8 * m) intoCalendar:"calEvent") shouldMergeProperties:calendar outMergeDidChooseLocalProperties:v313 account:{localProperties, accountCopy}];
      }

      v262 = [(NSArray *)v260 countByEnumeratingWithState:&v326 objects:v344 count:16];
    }

    while (v262);
  }

  v265 = v300 ^ 1;
  if (record)
  {
    v265 = 1;
  }

  if ((v265 & 1) == 0)
  {
    CFRelease(cf);
  }

  v45 = 1;
  v39 = v304;
LABEL_301:

LABEL_302:
  return v45;
}

- (void)updateAttachmentsForAccountID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attachments = [(ASEvent *)self attachments];
  v6 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(attachments);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = +[ASLocalDBHelper sharedInstance];
        [v11 calDatabaseForAccountID:dCopy];

        clientId = [v10 clientId];
        v13 = CalDatabaseCopyAttachmentWithUUID();

        if (v13)
        {
          name = [v10 name];
          CalAttachmentSetExternalID();
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_sanitizeLocalExceptionsForAccount:(id)account
{
  v37 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](self->_exceptions, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  v5 = self->_exceptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        exceptionStartTime = [(ASEventException *)v11 exceptionStartTime];
        if (exceptionStartTime)
        {
          exceptionStartTime2 = [(ASEventException *)v11 exceptionStartTime];
          [v4 setObject:v11 forKeyedSubscript:exceptionStartTime2];
        }

        else
        {
          exceptionStartTime2 = DALoggingwithCategory();
          if (os_log_type_enabled(exceptionStartTime2, v9))
          {
            *buf = 138412546;
            v33 = v11;
            v34 = 2112;
            v35 = selfCopy;
            _os_log_impl(&dword_24A0AC000, exceptionStartTime2, v9, "Exception %@ with parent %@ has no start time.  Ignoring it", buf, 0x16u);
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  v14 = selfCopy;
  [(ASEvent *)selfCopy calEvent];
  v15 = CalEventCopyDetachedEvents();
  if ([v15 count])
  {
    v16 = 0;
    v17 = *(MEMORY[0x277D03988] + 6);
    do
    {
      v18 = [v15 objectAtIndexedSubscript:v16];

      if (v18 != [(ASEvent *)v14 calEvent])
      {
        v19 = [[ASEventException alloc] initWithCalEvent:v18 originalEvent:v14 account:accountCopy];
        exceptionStartTime3 = [(ASEventException *)v19 exceptionStartTime];
        v21 = [v4 objectForKeyedSubscript:exceptionStartTime3];

        if (v21)
        {
          [v21 setCalEvent:v18];
        }

        else
        {
          v22 = DALoggingwithCategory();
          if (os_log_type_enabled(v22, v17))
          {
            *buf = 138412290;
            v33 = v19;
            _os_log_impl(&dword_24A0AC000, v22, v17, "Removing a local exception %@", buf, 0xCu);
          }

          CalRemoveEvent();
        }

        v14 = selfCopy;
      }

      ++v16;
    }

    while (v16 < [v15 count]);
  }

  [(ASEvent *)v14 calEvent];
  v23 = CalCalendarItemCopyExceptionDatesAsCFDates();
  if ([v23 count])
  {
    v24 = 0;
    do
    {
      [v23 objectAtIndexedSubscript:v24];

      [(ASEvent *)v14 calEvent];
      CalCalendarItemRemoveExceptionDateWithCFDate();
      ++v24;
    }

    while (v24 < [v23 count]);
  }

  allValues = [v4 allValues];
  [(ASEvent *)v14 setExceptions:allValues];
}

- (BOOL)saveDetachedEventsWithExistingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  propertiesCopy = properties;
  v26 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  calEvent = [(ASEvent *)self calEvent];
  if (calEvent)
  {
    v20 = calEvent;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_exceptions;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v21 + 1) + 8 * i) saveToCalendarWithParentASEvent:self existingRecord:objc_msgSend(*(*(&v21 + 1) + 8 * i) intoCalendar:"calEvent") shouldMergeProperties:calendar outMergeDidChooseLocalProperties:propertiesCopy account:{localProperties, accountCopy}];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    calEvent = v20;
  }

  v18 = calEvent != 0;

  return v18;
}

- (void)informExceptionsThatParentIsReadyForAccount:(id)account
{
  v15 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_exceptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) takeValuesFromParentForAccount:{accountCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_determineSelfnessWithLocalEvent:(void *)event forAccount:(id)account
{
  accountCopy = account;
  self->_haveCheckedOrganizerEmail = 1;
  self->_cachedOrganizerIsSelf = 0;
  meetingStatus = self->_meetingStatus;
  if (meetingStatus)
  {
    v8 = ([(NSNumber *)meetingStatus intValue]& 2) == 0;
LABEL_3:
    self->_cachedOrganizerIsSelf = v8;
    goto LABEL_4;
  }

  responseType = self->_responseType;
  if (responseType)
  {
    if ([(NSNumber *)responseType intValue]== 1)
    {
      v8 = 1;
      goto LABEL_3;
    }
  }

  else
  {
    organizerEmail = [(ASEvent *)self organizerEmail];
    v21 = [organizerEmail length];

    if (v21)
    {
      organizerEmail2 = [(ASEvent *)self organizerEmail];
      self->_cachedOrganizerIsSelf = [accountCopy accountContainsEmailAddress:organizerEmail2];
    }
  }

LABEL_4:
  organizerEmail3 = [(ASEvent *)self organizerEmail];
  if ([organizerEmail3 length])
  {
LABEL_5:

    goto LABEL_6;
  }

  attendees = [(ASEvent *)self attendees];
  if (![attendees count])
  {

    goto LABEL_5;
  }

  cachedOrganizerIsSelf = self->_cachedOrganizerIsSelf;

  if (event && cachedOrganizerIsSelf)
  {
    Organizer = CalCalendarItemCopyOrganizer();
    if (Organizer)
    {
      goto LABEL_17;
    }

    v14 = +[ASLocalDBHelper sharedInstance];
    accountID = [accountCopy accountID];
    [v14 calDatabaseForAccountID:accountID];
    Organizer = CalDatabaseCreateOrganizer();

    CalOrganizerSetIsSelf();
    MEMORY[0x24C210E70](Organizer, [accountCopy usernameWithoutDomain]);
    MEMORY[0x24C210E80](Organizer, [accountCopy emailAddress]);
    CalCalendarItemSetOrganizer();
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      *v23 = 0;
      _os_log_impl(&dword_24A0AC000, v16, v17, "Saving cal DB for an event without organizer. The organizer is set to self.", v23, 2u);
    }

    v18 = +[ASLocalDBHelper sharedInstance];
    accountID2 = [accountCopy accountID];
    [v18 calDatabaseForAccountID:accountID2];
    CalDatabaseSave();

    if (Organizer)
    {
LABEL_17:
      CFRelease(Organizer);
    }
  }

LABEL_6:
}

- (void)postProcessApplicationData
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v105 = [applicationData objectForKeyedSubscript:&unk_285D57D80];

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1041];
  v6 = [applicationData2 objectForKey:v5];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v6];
      [(ASEvent *)self setDTStamp:v7];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v9 = [applicationData3 count];

  dTStamp = self->_dTStamp;
  if (v9 - (v105 != 0) == (dTStamp != 0) && (v105 | dTStamp) != 0)
  {
    v12 = &OBJC_IVAR___ASEvent__isDTStampUpdateOnly;
    if (v105)
    {
      v12 = &OBJC_IVAR___ASEvent__isAttendeeUpdateOnly;
    }

    *(&self->super.super.super.isa + *v12) = 1;
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:1030];
  v15 = [applicationData4 objectForKey:v14];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "intValue")}];
      [(ASEvent *)self setAllDayEvent:v16];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v18 = [applicationData5 objectForKeyedSubscript:&unk_285D57D98];

  if (v18)
  {
    applicationData6 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v20 = [v18 objectForKey:applicationData6];
  }

  else
  {
    applicationData6 = [(ASChangedCollectionLeaf *)self applicationData];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:1035];
    v20 = [applicationData6 objectForKey:v21];
  }

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setBody:v20];
    }
  }

  applicationData7 = [(ASChangedCollectionLeaf *)self applicationData];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:1038];
  v24 = [applicationData7 objectForKey:v23];

  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setCategories:v24];
    }
  }

  applicationData8 = [(ASChangedCollectionLeaf *)self applicationData];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:1042];
  v27 = [applicationData8 objectForKey:v26];

  if (v27)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v27];
      [(ASEvent *)self setEndTime:v28];
    }
  }

  applicationData9 = [(ASChangedCollectionLeaf *)self applicationData];
  v30 = [applicationData9 objectForKeyedSubscript:&unk_285D57DB0];

  if (v30)
  {
    v31 = [[ASLocation alloc] initWithApplicationData:v30];
    [(ASEvent *)self setLocation:v31];
  }

  else
  {
    applicationData10 = [(ASChangedCollectionLeaf *)self applicationData];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:1047];
    v31 = [applicationData10 objectForKey:v56];

    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = [[ASLocation alloc] initWithTitle:v31];
        [(ASEvent *)self setLocation:v57];
      }
    }
  }

  applicationData11 = [(ASChangedCollectionLeaf *)self applicationData];
  v33 = [MEMORY[0x277CCABB0] numberWithInt:1060];
  v34 = [applicationData11 objectForKey:v33];

  if (v34)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v34, "intValue")}];
      [(ASEvent *)self setReminderMinsBefore:v35];
    }
  }

  applicationData12 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:1062];
  v38 = [applicationData12 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setSubject:v38];
    }
  }

  applicationData13 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:1063];
  v41 = [applicationData13 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v41];
      [(ASEvent *)self setStartTime:v42];
    }
  }

  applicationData14 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:1029];
  v45 = [applicationData14 objectForKey:v44];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASEvent *)self setTimeZone:v45];
  }

  applicationData15 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:4397];
  v48 = [applicationData15 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASChangedCollectionLeaf *)self setInstanceID:v48];
    }
  }

  applicationData16 = [(ASChangedCollectionLeaf *)self applicationData];
  v50 = [applicationData16 objectForKeyedSubscript:&unk_285D57DC8];

  if (v50)
  {
    v51 = [[ASEventUID alloc] initWithUidString:v50];
    [(ASEvent *)self setEventUID:v51];

    exceptionDate = [(ASEvent *)self exceptionDate];

    if (exceptionDate)
    {
      eventUID = [(ASEvent *)self eventUID];
      exceptionDate2 = [(ASEvent *)self exceptionDate];
      [eventUID setExceptionDate:exceptionDate2];
LABEL_50:

      goto LABEL_51;
    }

    instanceID = [(ASChangedCollectionLeaf *)self instanceID];

    if (instanceID)
    {
      eventUID = [(ASEvent *)self eventUID];
      v59 = MEMORY[0x277CBEAA8];
      exceptionDate2 = [(ASChangedCollectionLeaf *)self instanceID];
      v60 = [v59 dateWithActiveSyncStringWithoutSeparators:exceptionDate2];
      [eventUID setExceptionDate:v60];

      goto LABEL_50;
    }
  }

LABEL_51:
  applicationData17 = [(ASChangedCollectionLeaf *)self applicationData];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:1050];
  v63 = [applicationData17 objectForKey:v62];

  if (v63)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOrganizerName:v63];
    }
  }

  v104 = v30;

  applicationData18 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:1049];
  v66 = [applicationData18 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOrganizerEmail:v66, v30];
    }
  }

  applicationData19 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:1083];
  v69 = [applicationData19 objectForKey:v68];

  if (v69)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOnlineMeetingExternalLink:v69];
    }
  }

  applicationData20 = [(ASChangedCollectionLeaf *)self applicationData];
  v71 = [applicationData20 objectForKeyedSubscript:&unk_285D57DE0];

  [(ASEvent *)self setRecurrence:v71];
  applicationData21 = [(ASChangedCollectionLeaf *)self applicationData];
  v73 = [applicationData21 objectForKeyedSubscript:&unk_285D57DF8];

  [(ASEvent *)self setExceptions:v73];
  [(ASEvent *)self setAttendees:v105];
  applicationData22 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:1037];
  v76 = [applicationData22 objectForKey:v75];

  if (v76)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v77 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v76, "intValue")}];
      [(ASEvent *)self setBusyStatus:v77];
    }
  }

  applicationData23 = [(ASChangedCollectionLeaf *)self applicationData];
  v79 = [MEMORY[0x277CCABB0] numberWithInt:1048];
  v80 = [applicationData23 objectForKey:v79];

  if (v80)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v80, "intValue")}];
      [(ASEvent *)self setMeetingStatus:v81];
    }
  }

  applicationData24 = [(ASChangedCollectionLeaf *)self applicationData];
  v83 = [MEMORY[0x277CCABB0] numberWithInt:1061];
  v84 = [applicationData24 objectForKey:v83];

  if (v84)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v84, "intValue")}];
      [(ASEvent *)self setSensitivity:v85];
    }
  }

  applicationData25 = [(ASChangedCollectionLeaf *)self applicationData];
  v87 = [MEMORY[0x277CCABB0] numberWithInt:1076];
  v88 = [applicationData25 objectForKey:v87];

  if (v88)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v89 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v88, "intValue")}];
      [(ASEvent *)self setResponseRequested:v89];
    }
  }

  applicationData26 = [(ASChangedCollectionLeaf *)self applicationData];
  v91 = [MEMORY[0x277CCABB0] numberWithInt:1078];
  v92 = [applicationData26 objectForKey:v91];

  if (v92)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v93 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v92, "intValue")}];
      [(ASEvent *)self setResponseType:v93];
    }
  }

  applicationData27 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [MEMORY[0x277CCABB0] numberWithInt:1077];
  v96 = [applicationData27 objectForKey:v95];

  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v96];
      [(ASEvent *)self setAppointmentReplyTime:v97];
    }
  }

  applicationData28 = [(ASChangedCollectionLeaf *)self applicationData];
  v99 = [MEMORY[0x277CCABB0] numberWithInt:1075];
  v100 = [applicationData28 objectForKey:v99];

  if (v100)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v101 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v100, "intValue")}];
      [(ASEvent *)self setDisallowNewTimeProposal:v101];
    }
  }

  applicationData29 = [(ASChangedCollectionLeaf *)self applicationData];
  v103 = [applicationData29 objectForKeyedSubscript:&unk_285D57E10];

  [(ASEvent *)self setAttachments:v103];
  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = ASEvent;
  [(ASChangedCollectionLeaf *)&v16 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:accountCopy];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
    }

    else if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1)
    {
      [(ASEvent *)self postProcessApplicationData];
      [(ASEvent *)self informExceptionsThatParentIsReadyForAccount:accountCopy];
      [(ASEvent *)self _determineSelfnessWithLocalEvent:0 forAccount:accountCopy];
    }
  }
}

- (BOOL)deleteFromCalendar
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_exceptions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) deleteFromCalendar];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    CalRemoveEventAndDetachedEvents();
  }

  return 1;
}

+ (void)_setFakeDTStampDateForUnitTests:(id)tests
{
  testsCopy = tests;
  if (__fakeDTStampDateForUnitTests != testsCopy)
  {
    v5 = testsCopy;
    objc_storeStrong(&__fakeDTStampDateForUnitTests, tests);
    testsCopy = v5;
  }
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v228 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  sendDTStamp = [protocol2 sendDTStamp];

  taskManager3 = [taskCopy taskManager];
  protocol3 = [taskManager3 protocol];
  sendUID = [protocol3 sendUID];

  taskManager4 = [taskCopy taskManager];
  protocol4 = [taskManager4 protocol];
  useStructuredLocation = [protocol4 useStructuredLocation];

  taskManager5 = [taskCopy taskManager];
  protocol5 = [taskManager5 protocol];
  includeExceptionsInParent = [protocol5 includeExceptionsInParent];

  taskManager6 = [taskCopy taskManager];
  protocol6 = [taskManager6 protocol];
  useFloatingTimeForAllDayEvents = [protocol6 useFloatingTimeForAllDayEvents];

  taskManager7 = [taskCopy taskManager];
  protocol7 = [taskManager7 protocol];
  useEmptyRecurrence = [protocol7 useEmptyRecurrence];

  taskManager8 = [taskCopy taskManager];
  protocol8 = [taskManager8 protocol];
  useEmptyReminderMinutes = [protocol8 useEmptyReminderMinutes];

  taskManager9 = [taskCopy taskManager];
  protocol9 = [taskManager9 protocol];
  useEmptyLocation = [protocol9 useEmptyLocation];

  taskManager10 = [taskCopy taskManager];
  protocol10 = [taskManager10 protocol];
  alwaysSendTimezone = [protocol10 alwaysSendTimezone];

  taskManager11 = [taskCopy taskManager];
  protocol11 = [taskManager11 protocol];
  useEmptyAttendees = [protocol11 useEmptyAttendees];

  taskManager12 = [taskCopy taskManager];
  protocol12 = [taskManager12 protocol];
  supportsAttachments = [protocol12 supportsAttachments];

  organizerEmail = [(ASEvent *)self organizerEmail];
  selfCopy = self;
  if ([organizerEmail length])
  {
    taskManager13 = [taskCopy taskManager];
    account = [taskManager13 account];
    v38 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:account];

    if (!v38)
    {
      v39 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (![(ASEvent *)self doNotSendBody]&& ([(ASEvent *)self localMask]& 0x20) != 0)
  {
    body = [(ASEvent *)self body];
    if (usesAirSyncBaseNamespace)
    {
      [dataCopy switchToCodePage:17];
      [dataCopy openTag:10];
      [dataCopy appendTag:6 withIntContent:1];
      if ([body length])
      {
        [dataCopy appendTag:11 withStringContent:body];
      }

      else
      {
        [dataCopy appendEmptyTag:11];
      }

      [dataCopy closeTag:10];
    }

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v38 = 1;
LABEL_15:
  [dataCopy switchToCodePage:4];
  if ((includeExceptionsInParent & 1) != 0 || ([(ASChangedCollectionLeaf *)self serverID], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
  {
    v44 = 1;
  }

  else
  {
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    v43 = [serverID rangeOfString:@"<!ExceptionDate!>"];

    v44 = v43 == 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = v44 & useFloatingTimeForAllDayEvents;
  selfCopy3 = self;
  if (v45 == 1)
  {
    allDayEvent = [(ASEvent *)self allDayEvent];
    intValue = [allDayEvent intValue];

    v44 = intValue == 0;
  }

  if ((alwaysSendTimezone | (v38 && v44)))
  {
    timeZone = [(ASEvent *)self timeZone];

    if (timeZone)
    {
      timeZone2 = [(ASEvent *)self timeZone];
      startTime = [(ASEvent *)self startTime];
      v52 = [timeZone2 mallocTZIForDate:startTime];

      v53 = DALoggingwithCategory();
      v54 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v53, v54))
      {
        timeZone3 = [(ASEvent *)self timeZone];
        *buf = 138412290;
        v227 = timeZone3;
        _os_log_impl(&dword_24A0AC000, v53, v54, "Setting timeZone to Exchange equivalent of %@", buf, 0xCu);
      }

      selfCopy3 = self;
      if (v52)
      {
        v56 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v52 length:172];
        v57 = [v56 base64EncodedStringWithOptions:0];
        [dataCopy appendTag:5 withStringContent:v57];
        free(v52);
      }
    }
  }

  allDayEvent2 = [(ASEvent *)selfCopy3 allDayEvent];
  v59 = allDayEvent2;
  if (allDayEvent2)
  {
    [dataCopy appendTag:6 withIntContent:{objc_msgSend(allDayEvent2, "intValue")}];
  }

  if (((v39 | usesAirSyncBaseNamespace) & 1) == 0)
  {
    body2 = [(ASEvent *)selfCopy3 body];
    if (body2)
    {
      [dataCopy appendTag:11 withStringContent:body2];
    }
  }

  busyStatus = [(ASEvent *)selfCopy3 busyStatus];

  if (busyStatus)
  {
    busyStatus2 = [(ASEvent *)selfCopy3 busyStatus];
    [dataCopy appendTag:13 withIntContent:{objc_msgSend(busyStatus2, "intValue")}];
  }

  else
  {
    [dataCopy appendTag:13 withIntContent:2];
  }

  dTStamp = [(ASEvent *)selfCopy3 dTStamp];
  if (!dTStamp)
  {
    dTStamp = [MEMORY[0x277CBEAA8] date];
  }

  if ((sendDTStamp & v38) == 1)
  {
    activeSyncStringWithoutSeparators = [dTStamp activeSyncStringWithoutSeparators];
    [dataCopy appendTag:17 withStringContent:activeSyncStringWithoutSeparators];
  }

  if (v38)
  {
    endTime = [(ASEvent *)selfCopy3 endTime];
    v66 = endTime;
    if (endTime)
    {
      activeSyncStringWithoutSeparators2 = [endTime activeSyncStringWithoutSeparators];
      [dataCopy appendTag:18 withStringContent:activeSyncStringWithoutSeparators2];
    }
  }

  location = [(ASEvent *)selfCopy3 location];

  if (!location)
  {
    if (!useEmptyLocation)
    {
      goto LABEL_76;
    }

    [dataCopy switchToCodePage:17];
    [dataCopy appendEmptyTag:32];
    goto LABEL_73;
  }

  if (useStructuredLocation)
  {
    [dataCopy switchToCodePage:17];
    [dataCopy openTag:32];
    location2 = [(ASEvent *)selfCopy3 location];
    displayName = [location2 displayName];

    if (displayName)
    {
      location3 = [(ASEvent *)selfCopy3 location];
      displayName2 = [location3 displayName];
      [dataCopy appendTag:16 withStringContent:displayName2];
    }

    location4 = [(ASEvent *)selfCopy3 location];
    annotation = [location4 annotation];

    if (annotation)
    {
      location5 = [(ASEvent *)selfCopy3 location];
      annotation2 = [location5 annotation];
      [dataCopy appendTag:33 withStringContent:annotation2];
    }

    location6 = [(ASEvent *)selfCopy3 location];
    street = [location6 street];

    if (street)
    {
      location7 = [(ASEvent *)selfCopy3 location];
      street2 = [location7 street];
      [dataCopy appendTag:34 withStringContent:street2];
    }

    location8 = [(ASEvent *)selfCopy3 location];
    city = [location8 city];

    if (city)
    {
      location9 = [(ASEvent *)selfCopy3 location];
      city2 = [location9 city];
      [dataCopy appendTag:35 withStringContent:city2];
    }

    location10 = [(ASEvent *)selfCopy3 location];
    state = [location10 state];

    if (state)
    {
      location11 = [(ASEvent *)selfCopy3 location];
      state2 = [location11 state];
      [dataCopy appendTag:36 withStringContent:state2];
    }

    location12 = [(ASEvent *)selfCopy3 location];
    postalCode = [location12 postalCode];

    if (postalCode)
    {
      location13 = [(ASEvent *)selfCopy3 location];
      postalCode2 = [location13 postalCode];
      [dataCopy appendTag:38 withStringContent:postalCode2];
    }

    location14 = [(ASEvent *)selfCopy3 location];
    country = [location14 country];

    if (country)
    {
      location15 = [(ASEvent *)selfCopy3 location];
      country2 = [location15 country];
      [dataCopy appendTag:37 withStringContent:country2];
    }

    location16 = [(ASEvent *)selfCopy3 location];
    latitude = [location16 latitude];

    if (latitude)
    {
      location17 = [(ASEvent *)selfCopy3 location];
      latitude2 = [location17 latitude];
      [dataCopy appendTag:39 withStringContent:latitude2];
    }

    location18 = [(ASEvent *)selfCopy3 location];
    longitude = [location18 longitude];

    if (longitude)
    {
      location19 = [(ASEvent *)selfCopy3 location];
      longitude2 = [location19 longitude];
      [dataCopy appendTag:40 withStringContent:longitude2];
    }

    location20 = [(ASEvent *)selfCopy3 location];
    accuracy = [location20 accuracy];

    if (accuracy)
    {
      location21 = [(ASEvent *)selfCopy3 location];
      accuracy2 = [location21 accuracy];
      [dataCopy appendTag:41 withStringContent:accuracy2];
    }

    location22 = [(ASEvent *)selfCopy3 location];
    altitude = [location22 altitude];

    if (altitude)
    {
      location23 = [(ASEvent *)selfCopy3 location];
      altitude2 = [location23 altitude];
      [dataCopy appendTag:42 withStringContent:altitude2];
    }

    location24 = [(ASEvent *)selfCopy3 location];
    altitudeAccuracy = [location24 altitudeAccuracy];

    if (altitudeAccuracy)
    {
      location25 = [(ASEvent *)selfCopy3 location];
      altitudeAccuracy2 = [location25 altitudeAccuracy];
      [dataCopy appendTag:43 withStringContent:altitudeAccuracy2];
    }

    [dataCopy closeTag:32];
LABEL_73:
    [dataCopy switchToCodePage:4];
    goto LABEL_76;
  }

  location26 = [(ASEvent *)selfCopy3 location];
  displayName3 = [location26 displayName];

  if (displayName3)
  {
    location27 = [(ASEvent *)selfCopy3 location];
    displayName4 = [location27 displayName];
    [dataCopy appendTag:23 withStringContent:displayName4];
  }

LABEL_76:
  reminderMinsBefore = [(ASEvent *)selfCopy3 reminderMinsBefore];

  if (reminderMinsBefore)
  {
    reminderMinsBefore2 = [(ASEvent *)selfCopy3 reminderMinsBefore];
    [dataCopy appendTag:36 withIntContent:{objc_msgSend(reminderMinsBefore2, "intValue")}];
  }

  else if (useEmptyReminderMinutes)
  {
    [dataCopy appendEmptyTag:36];
  }

  sensitivity = [(ASEvent *)selfCopy3 sensitivity];

  if (sensitivity)
  {
    sensitivity2 = [(ASEvent *)selfCopy3 sensitivity];
    [dataCopy appendTag:37 withIntContent:{objc_msgSend(sensitivity2, "intValue")}];
  }

  else
  {
    [dataCopy appendTag:37 withIntContent:0];
  }

  subject = [(ASEvent *)selfCopy3 subject];
  if (subject)
  {
    [dataCopy appendTag:38 withStringContent:subject];
  }

  if (v38)
  {
    startTime2 = [(ASEvent *)selfCopy3 startTime];
    v127 = startTime2;
    if (startTime2)
    {
      activeSyncStringWithoutSeparators3 = [startTime2 activeSyncStringWithoutSeparators];
      [dataCopy appendTag:39 withStringContent:activeSyncStringWithoutSeparators3];
    }
  }

  eventUID = [(ASEvent *)selfCopy3 eventUID];
  timeZone4 = [(ASEvent *)selfCopy3 timeZone];
  v131 = [eventUID uidForActiveSyncWithTimeZone:timeZone4];

  if (v131)
  {
    if (sendUID)
    {
      v132 = 40;
    }

    else
    {
      serverID2 = [(ASChangedCollectionLeaf *)selfCopy3 serverID];

      if (serverID2)
      {
        goto LABEL_95;
      }

      v132 = 60;
    }

    [dataCopy appendTag:v132 withStringContent:v131];
  }

LABEL_95:
  v192 = dTStamp;
  if ([(ASEvent *)selfCopy3 itemStatus]== 3)
  {
    intValue3 = 4;
  }

  else
  {
    meetingStatus = [(ASEvent *)selfCopy3 meetingStatus];
    intValue2 = [meetingStatus intValue];

    if (intValue2)
    {
      meetingStatus2 = [(ASEvent *)selfCopy3 meetingStatus];
      intValue3 = [meetingStatus2 intValue];
    }

    else if ([(NSArray *)selfCopy3->_attendees count])
    {
      taskManager14 = [taskCopy taskManager];
      account2 = [taskManager14 account];
      v140 = [(ASEvent *)selfCopy3 cachedOrganizerIsSelfWithAccount:account2];

      if (v140)
      {
        intValue3 = 1;
      }

      else
      {
        intValue3 = 3;
      }
    }

    else
    {
      intValue3 = 0;
    }
  }

  [dataCopy appendTag:24 withIntContent:intValue3];
  if ([(NSArray *)selfCopy3->_attendees count])
  {
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v141 = selfCopy3->_attendees;
    v142 = [(NSArray *)v141 countByEnumeratingWithState:&v216 objects:v225 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = 0;
      v145 = *v217;
      do
      {
        for (i = 0; i != v143; ++i)
        {
          if (*v217 != v145)
          {
            objc_enumerationMutation(v141);
          }

          if ([*(*(&v216 + 1) + 8 * i) status] != 6)
          {
            ++v144;
          }
        }

        v143 = [(NSArray *)v141 countByEnumeratingWithState:&v216 objects:v225 count:16];
      }

      while (v143);

      selfCopy3 = selfCopy;
      if (v144)
      {
        [dataCopy openProspectiveTag:7];
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v147 = selfCopy->_attendees;
        v148 = [(NSArray *)v147 countByEnumeratingWithState:&v212 objects:v224 count:16];
        if (v148)
        {
          v149 = v148;
          v150 = *v213;
          do
          {
            for (j = 0; j != v149; ++j)
            {
              if (*v213 != v150)
              {
                objc_enumerationMutation(v147);
              }

              v152 = *(*(&v212 + 1) + 8 * j);
              if ([v152 status] != 6)
              {
                [dataCopy openTag:8];
                [v152 appendActiveSyncDataForTask:taskCopy toData:dataCopy];
                [dataCopy closeTag:8];
              }
            }

            v149 = [(NSArray *)v147 countByEnumeratingWithState:&v212 objects:v224 count:16];
          }

          while (v149);
        }

        [dataCopy closeProspectiveTag:7];
        goto LABEL_128;
      }
    }

    else
    {
    }
  }

  if (useEmptyAttendees)
  {
    [dataCopy appendEmptyTag:7];
  }

LABEL_128:
  if (!supportsAttachments)
  {
    goto LABEL_152;
  }

  attachments = [(ASEvent *)selfCopy3 attachments];
  if ([attachments count])
  {
  }

  else
  {
    deletedAttachmentsIDs = [(ASEvent *)selfCopy3 deletedAttachmentsIDs];
    v155 = [deletedAttachmentsIDs count];

    if (!v155)
    {
      goto LABEL_152;
    }
  }

  [dataCopy switchToCodePage:17];
  [dataCopy openProspectiveTag:14];
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  attachments2 = [(ASEvent *)selfCopy3 attachments];
  v157 = [attachments2 countByEnumeratingWithState:&v208 objects:v223 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v209;
    do
    {
      for (k = 0; k != v158; ++k)
      {
        if (*v209 != v159)
        {
          objc_enumerationMutation(attachments2);
        }

        v161 = *(*(&v208 + 1) + 8 * k);
        [dataCopy openProspectiveTag:28];
        [v161 appendActiveSyncDataForTask:taskCopy toData:dataCopy];
        [dataCopy closeProspectiveTag:28];
      }

      v158 = [attachments2 countByEnumeratingWithState:&v208 objects:v223 count:16];
    }

    while (v158);
  }

  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  deletedAttachmentsIDs2 = [(ASEvent *)selfCopy3 deletedAttachmentsIDs];
  v163 = [deletedAttachmentsIDs2 countByEnumeratingWithState:&v204 objects:v222 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v205;
    v166 = *(MEMORY[0x277D03988] + 4);
    do
    {
      for (m = 0; m != v164; ++m)
      {
        if (*v205 != v165)
        {
          objc_enumerationMutation(deletedAttachmentsIDs2);
        }

        v168 = *(*(&v204 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [dataCopy openProspectiveTag:29];
          [dataCopy appendTag:17 withStringContent:v168];
          [dataCopy closeProspectiveTag:29];
        }

        else
        {
          v169 = DALoggingwithCategory();
          if (os_log_type_enabled(v169, v166))
          {
            v170 = objc_opt_class();
            v171 = NSStringFromClass(v170);
            *buf = 138412290;
            v227 = v171;
            _os_log_impl(&dword_24A0AC000, v169, v166, "The attachment ID is not a string, but %@", buf, 0xCu);
          }
        }
      }

      v164 = [deletedAttachmentsIDs2 countByEnumeratingWithState:&v204 objects:v222 count:16];
    }

    while (v164);
  }

  [dataCopy closeProspectiveTag:14];
  [dataCopy switchToCodePage:4];
  selfCopy3 = selfCopy;
LABEL_152:
  if ([(NSArray *)selfCopy3->_categories count])
  {
    [dataCopy openTag:14];
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v172 = selfCopy3->_categories;
    v173 = [(NSArray *)v172 countByEnumeratingWithState:&v200 objects:v221 count:16];
    if (v173)
    {
      v174 = v173;
      v175 = *v201;
      do
      {
        for (n = 0; n != v174; ++n)
        {
          if (*v201 != v175)
          {
            objc_enumerationMutation(v172);
          }

          [dataCopy appendTag:15 withStringContent:*(*(&v200 + 1) + 8 * n)];
        }

        v174 = [(NSArray *)v172 countByEnumeratingWithState:&v200 objects:v221 count:16];
      }

      while (v174);
    }

    [dataCopy closeTag:14];
  }

  recurrence = [(ASEvent *)selfCopy3 recurrence];

  if (recurrence)
  {
    recurrence2 = [(ASEvent *)selfCopy3 recurrence];
    [recurrence2 appendActiveSyncDataForTask:taskCopy toWBXMLData:dataCopy];
  }

  else if (useEmptyRecurrence)
  {
    [dataCopy appendEmptyTag:27];
  }

  if ((([(NSArray *)selfCopy3->_exceptions count]!= 0) & includeExceptionsInParent) == 1)
  {
    [dataCopy openTag:20];
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v179 = selfCopy3->_exceptions;
    v180 = [(NSArray *)v179 countByEnumeratingWithState:&v196 objects:v220 count:16];
    if (v180)
    {
      v181 = v180;
      v182 = *v197;
      do
      {
        for (ii = 0; ii != v181; ++ii)
        {
          if (*v197 != v182)
          {
            objc_enumerationMutation(v179);
          }

          v184 = *(*(&v196 + 1) + 8 * ii);
          [dataCopy openTag:19];
          [v184 appendActiveSyncDataForTask:taskCopy toWBXMLData:dataCopy];
          [dataCopy closeTag:19];
        }

        v181 = [(NSArray *)v179 countByEnumeratingWithState:&v196 objects:v220 count:16];
      }

      while (v181);
    }

    [dataCopy closeTag:20];
  }
}

- (void)setCalEvent:(void *)event
{
  v16 = *MEMORY[0x277D85DE8];
  calEvent = self->_calEvent;
  if (calEvent != event)
  {
    if (calEvent)
    {
      CFRelease(calEvent);
    }

    self->_calEvent = event;
    if (!event || (CFRetain(event), !self->_calEvent))
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = self->_exceptions;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10++) setCalEvent:{0, v11}];
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (BOOL)loadCalRecordForAccount:(id)account
{
  accountCopy = account;
  if ([(ASEvent *)self calEvent])
  {
    [ASEvent loadCalRecordForAccount:];
  }

  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    [ASEvent loadCalRecordForAccount:];
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  [v6 calDatabaseForAccountID:accountID];
  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  [clientID2 intValue];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  [(ASEvent *)self _loadAttributesFromCalEvent:v9 forAccount:accountCopy];
  [(ASEvent *)self setCalEvent:v9];
  if (v9)
  {
    CFRelease(v9);
  }

  return v9 != 0;
}

- (BOOL)saveServerIDAndUidToCalendar
{
  calEvent = [(ASEvent *)self calEvent];
  if (calEvent)
  {
    [(ASEvent *)self calEvent];
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    CalCalendarItemSetExternalID();

    eventUID = [(ASEvent *)self eventUID];

    if (eventUID)
    {
      [(ASEvent *)self calEvent];
      eventUID2 = [(ASEvent *)self eventUID];
      [eventUID2 uidForCalFramework];
      CalCalendarItemSetUniqueIdentifier();
    }
  }

  return calEvent != 0;
}

- (BOOL)verifyExternalIdsForAccountID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID || (+[ASLocalDBHelper sharedInstance](ASLocalDBHelper, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), [v6 calDatabaseForAccountID:dCopy], -[ASChangedCollectionLeaf clientID](self, "clientID"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "intValue"), v8 = CalDatabaseCopyCalendarItemWithRowID(), v7, v6, !v8))
  {
    LOBYTE(v14) = 0;
    goto LABEL_18;
  }

  v9 = CalCalendarItemCopyExternalID();
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  if (!serverID)
  {
    goto LABEL_6;
  }

  v11 = serverID;
  if (!v9)
  {

    goto LABEL_9;
  }

  serverID2 = [(ASChangedCollectionLeaf *)self serverID];
  v13 = [v9 isEqualToString:serverID2];

  if ((v13 & 1) == 0)
  {
LABEL_9:
    serverID3 = [(ASChangedCollectionLeaf *)self serverID];
    CalCalendarItemSetExternalID();

    v14 = 1;
    goto LABEL_10;
  }

LABEL_6:
  v14 = 0;
LABEL_10:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = self->_exceptions;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v14 |= [*(*(&v22 + 1) + 8 * v20++) verifyExternalIdsForAccountID:{dCopy, v22}];
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  CFRelease(v8);
LABEL_18:

  return v14 & 1;
}

- (BOOL)fillOutMissingExternalIdsForAccountID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Entering [ASEvent fillOutMissingExternalIdsForAccountID:]", buf, 2u);
  }

  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (clientID && (+[ASLocalDBHelper sharedInstance](ASLocalDBHelper, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), [v8 calDatabaseForAccountID:dCopy], v8, -[ASChangedCollectionLeaf clientID](self, "clientID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "intValue"), v10 = CalDatabaseCopyCalendarItemWithRowID(), v9, v10))
  {
    v11 = CalCalendarItemCopyExternalID();
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    if (serverID)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 == 1)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v6))
      {
        serverID2 = [(ASChangedCollectionLeaf *)self serverID];
        *buf = 138412290;
        v30 = serverID2;
        _os_log_impl(&dword_24A0AC000, v15, v6, "Missing ServerID! Use the server id in pushedActions to set external ID: %@", buf, 0xCu);
      }

      serverID3 = [(ASChangedCollectionLeaf *)self serverID];
      CalCalendarItemSetExternalID();
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = self->_exceptions;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v14 |= [*(*(&v24 + 1) + 8 * i) verifyExternalIdsForAccountID:{dCopy, v24}];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v20);
    }

    CFRelease(v10);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

- (void)loadClientIDs
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(ASEvent *)self calEvent])
  {
    v3 = MEMORY[0x277CCACA8];
    [(ASEvent *)self calEvent];
    v4 = [v3 stringWithFormat:@"%d", CalCalendarItemGetRowID()];
    [(ASChangedCollectionLeaf *)self setClientID:v4];
  }

  else
  {
    v4 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_exceptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 loadClientIDs];
        [v10 setParentClientID:v4];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (NSCalendarDate)startDateForCalFramework
{
  startTime = [(ASEvent *)self startTime];
  timeZone = [(ASEvent *)self timeZone];
  v5 = [startTime dateWithCalendarFormat:0 timeZone:timeZone];
  v6 = [(ASEvent *)self _transformedStartDateForCalFramework:v5];

  return v6;
}

- (NSCalendarDate)endDateForCalFramework
{
  endTime = [(ASEvent *)self endTime];
  timeZone = [(ASEvent *)self timeZone];
  v5 = [endTime dateWithCalendarFormat:0 timeZone:timeZone];
  startTime = [(ASEvent *)self startTime];
  timeZone2 = [(ASEvent *)self timeZone];
  v8 = [startTime dateWithCalendarFormat:0 timeZone:timeZone2];
  v9 = [(ASEvent *)self _transformedEndDateForCalFramework:v5 startDate:v8];

  return v9;
}

- (ASEvent)initWithCoder:(id)coder
{
  v102[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v98.receiver = self;
  v98.super_class = ASEvent;
  v5 = [(ASChangedCollectionLeaf *)&v98 initWithCoder:coderCopy];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [ASEvent initWithCoder:];
    }

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"timeZoneDict"];

    if (v11)
    {
      v12 = [[ASTimeZone alloc] initWithCodingDict:v11];
      timeZone = v5->_timeZone;
      v5->_timeZone = v12;
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allDayEvent"];
    allDayEvent = v5->_allDayEvent;
    v5->_allDayEvent = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v16;

    v5->_bodyTruncated = [coderCopy decodeBoolForKey:@"bodyTruncated"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"busyStatus"];
    busyStatus = v5->_busyStatus;
    v5->_busyStatus = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v23;

    v25 = MEMORY[0x277CBEB98];
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"dTStamp"];
    dTStamp = v5->_dTStamp;
    v5->_dTStamp = v28;

    v30 = MEMORY[0x277CBEB98];
    v101[0] = objc_opt_class();
    v101[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v33;

    v35 = MEMORY[0x277CBEB98];
    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v38;

    v40 = MEMORY[0x277CBEB98];
    v99[0] = objc_opt_class();
    v99[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"appointmentReplyTime"];
    appointmentReplyTime = v5->_appointmentReplyTime;
    v5->_appointmentReplyTime = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"meetingStatus"];
    meetingStatus = v5->_meetingStatus;
    v5->_meetingStatus = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizerEmail"];
    organizerEmail = v5->_organizerEmail;
    v5->_organizerEmail = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizerName"];
    organizerName = v5->_organizerName;
    v5->_organizerName = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderMinsBefore"];
    reminderMinsBefore = v5->_reminderMinsBefore;
    v5->_reminderMinsBefore = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sensitivity"];
    sensitivity = v5->_sensitivity;
    v5->_sensitivity = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v57;

    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"from"];
    from = v5->_from;
    v5->_from = v62;

    v64 = [ASEventUID alloc];
    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventUID"];
    v66 = [(ASEventUID *)v64 initWithCalFrameworkString:v65];
    eventUID = v5->_eventUID;
    v5->_eventUID = v66;

    v68 = MEMORY[0x277CBEB98];
    v69 = objc_opt_class();
    v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
    v71 = [coderCopy decodeObjectOfClasses:v70 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurrence"];
    recurrence = v5->_recurrence;
    v5->_recurrence = v73;

    v75 = MEMORY[0x277CBEB98];
    v76 = objc_opt_class();
    v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
    v78 = [coderCopy decodeObjectOfClasses:v77 forKey:@"exceptions"];
    exceptions = v5->_exceptions;
    v5->_exceptions = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseRequested"];
    responseRequested = v5->_responseRequested;
    v5->_responseRequested = v80;

    v5->_cachedOrganizerIsSelf = [coderCopy decodeBoolForKey:@"cachedOrganizerIsSelf"];
    v5->_haveCheckedOrganizerEmail = [coderCopy decodeBoolForKey:@"haveCheckedOrganizerEmail"];
    v82 = MEMORY[0x277CBEB98];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    v85 = [coderCopy decodeObjectOfClasses:v84 forKey:@"attendeesPendingDeletion"];
    attendeesPendingDeletion = v5->_attendeesPendingDeletion;
    v5->_attendeesPendingDeletion = v85;

    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseType"];
    responseType = v5->_responseType;
    v5->_responseType = v87;

    v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disallowNewTimeProposal"];
    disallowNewTimeProposal = v5->_disallowNewTimeProposal;
    v5->_disallowNewTimeProposal = v89;

    v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onlineMeetingExternalLink"];
    onlineMeetingExternalLink = v5->_onlineMeetingExternalLink;
    v5->_onlineMeetingExternalLink = v91;

    v93 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proposedStartTime"];
    proposedStartTime = v5->_proposedStartTime;
    v5->_proposedStartTime = v93;

    v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proposedEndTime"];
    proposedEndTime = v5->_proposedEndTime;
    v5->_proposedEndTime = v95;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [ASEvent encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = ASEvent;
  [(ASChangedCollectionLeaf *)&v8 encodeWithCoder:coderCopy];
  dictForCoding = [(ASTimeZone *)self->_timeZone dictForCoding];
  [coderCopy encodeObject:dictForCoding forKey:@"timeZoneDict"];
  [coderCopy encodeObject:self->_allDayEvent forKey:@"allDayEvent"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeBool:self->_bodyTruncated forKey:@"bodyTruncated"];
  [coderCopy encodeObject:self->_busyStatus forKey:@"busyStatus"];
  [coderCopy encodeObject:self->_dTStamp forKey:@"dTStamp"];
  [coderCopy encodeObject:self->_categories forKey:@"categories"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_meetingStatus forKey:@"meetingStatus"];
  [coderCopy encodeObject:self->_organizerEmail forKey:@"organizerEmail"];
  [coderCopy encodeObject:self->_organizerName forKey:@"organizerName"];
  [coderCopy encodeObject:self->_reminderMinsBefore forKey:@"reminderMinsBefore"];
  [coderCopy encodeObject:self->_sensitivity forKey:@"sensitivity"];
  subject = [(ASEvent *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  [coderCopy encodeObject:self->_startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_from forKey:@"from"];
  uidForCalFramework = [(ASEventUID *)self->_eventUID uidForCalFramework];
  [coderCopy encodeObject:uidForCalFramework forKey:@"eventUID"];

  [coderCopy encodeObject:self->_attendees forKey:@"attendees"];
  [coderCopy encodeObject:self->_recurrence forKey:@"recurrence"];
  [coderCopy encodeObject:self->_exceptions forKey:@"exceptions"];
  [coderCopy encodeObject:self->_responseRequested forKey:@"responseRequested"];
  [coderCopy encodeBool:self->_cachedOrganizerIsSelf forKey:@"cachedOrganizerIsSelf"];
  [coderCopy encodeBool:self->_haveCheckedOrganizerEmail forKey:@"haveCheckedOrganizerEmail"];
  [coderCopy encodeObject:self->_attendeesPendingDeletion forKey:@"attendeesPendingDeletion"];
  [coderCopy encodeObject:self->_responseType forKey:@"responseType"];
  [coderCopy encodeObject:self->_appointmentReplyTime forKey:@"appointmentReplyTime"];
  [coderCopy encodeObject:self->_disallowNewTimeProposal forKey:@"disallowNewTimeProposal"];
  [coderCopy encodeObject:self->_onlineMeetingExternalLink forKey:@"onlineMeetingExternalLink"];
  [coderCopy encodeObject:self->_proposedStartTime forKey:@"proposedStartTime"];
  [coderCopy encodeObject:self->_proposedEndTime forKey:@"proposedEndTime"];
}

- (void)setBody:(id)body
{
  stringByTrimmingNotesJunk = [body stringByTrimmingNotesJunk];
  v5 = stringByTrimmingNotesJunk;
  if (self->_body != stringByTrimmingNotesJunk)
  {
    v6 = stringByTrimmingNotesJunk;
    objc_storeStrong(&self->_body, stringByTrimmingNotesJunk);
    v5 = v6;
  }

  MEMORY[0x2821F96F8](stringByTrimmingNotesJunk, v5);
}

- (BOOL)cachedOrganizerIsSelfWithAccount:(id)account
{
  if (!self->_haveCheckedOrganizerEmail)
  {
    accountCopy = account;
    [(ASEvent *)self _determineSelfnessWithLocalEvent:[(ASEvent *)self calEvent] forAccount:accountCopy];
  }

  return self->_cachedOrganizerIsSelf;
}

- (BOOL)purgeAttendeesPendingDeletionForAccountID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(ASEvent *)self calEvent])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_attendeesPendingDeletion;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v8 = v6;
      selfCopy = self;
      v9 = 0;
      v10 = *v23;
      v11 = *(MEMORY[0x277D03988] + 3);
      *&v7 = 67109120;
      v20 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v5);
          }

          localId = [*(*(&v22 + 1) + 8 * i) localId];
          if (localId == -1)
          {
            v17 = DALoggingwithCategory();
            if (os_log_type_enabled(v17, v11))
            {
              *buf = 0;
              _os_log_impl(&dword_24A0AC000, v17, v11, "Asked to purge an attendee that doesn't have a local attendee id", buf, 2u);
            }
          }

          else
          {
            v14 = localId;
            v15 = +[ASLocalDBHelper sharedInstance];
            v16 = MEMORY[0x24C210A30]([v15 calDatabaseForAccountID:dCopy], v14);

            if (v16)
            {
              [(ASEvent *)selfCopy calEvent];
              CalCalendarItemRemoveAttendee();
              CFRelease(v16);
              v9 = 1;
            }

            else
            {
              v18 = DALoggingwithCategory();
              if (os_log_type_enabled(v18, v11))
              {
                *buf = v20;
                v27 = v14;
                _os_log_impl(&dword_24A0AC000, v18, v11, "Asked to purge an attendee with local id %d, but the db doesn't seem to have that one", buf, 8u);
              }
            }
          }
        }

        v8 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)hasOccurrenceInTheFuture
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    CalEventCopyStartDate();
    v4 = v3;
    [(ASEvent *)self calEvent];
    v5 = CalCalendarItemCopyRecurrences();
    if ([v5 count])
    {
      v6 = [[ASTimeZone alloc] initWithTZNameFromCalDB:v4];
      if (!v6)
      {
        defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
        v8 = [ASTimeZone alloc];
        name = [defaultTimeZone name];
        v6 = [(ASTimeZone *)v8 initWithTZNameFromCalDB:name];
      }

      v29[0] = 0;
      v29[1] = 0;
      date = [MEMORY[0x277CCA8F8] date];
      [date setTimeZone:v6];
      [date getGregorianDate:v29];
      v28[0] = 0;
      v28[1] = 0;
      distantFuture = [MEMORY[0x277CCA8F8] distantFuture];

      [distantFuture setTimeZone:v6];
      [distantFuture getGregorianDate:v28];
      [(ASEvent *)self calEvent];
      if (CalEventOccurrencesExistForEventInDateRange())
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v20 = self->_exceptions;
        v12 = [(NSArray *)v20 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v12)
        {
          v21 = *v25;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(v20);
              }

              if ([*(*(&v24 + 1) + 8 * i) hasOccurrenceInTheFuture])
              {
                LOBYTE(v12) = 1;
                goto LABEL_22;
              }
            }

            v12 = [(NSArray *)v20 countByEnumeratingWithState:&v24 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }
    }

    else
    {
      [(ASEvent *)self calEvent];
      CalEventGetEndDate();
      v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      [v17 timeIntervalSinceNow];
      v19 = v18;

      LOBYTE(v12) = v19 >= 0.0;
    }

    CalDateTimeRelease();
  }

  else
  {
    exceptionDate = [(ASEvent *)self exceptionDate];
    if (exceptionDate)
    {
      exceptionDate2 = [(ASEvent *)self exceptionDate];
      [exceptionDate2 timeIntervalSinceNow];
      v16 = v15;

      LOBYTE(v12) = v16 >= 0.0;
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)isTombstoneEndTimeInFuture
{
  tombstoneEndTime = self->_tombstoneEndTime;
  if (tombstoneEndTime)
  {
    [(NSDate *)tombstoneEndTime timeIntervalSinceNow];
    LOBYTE(tombstoneEndTime) = v3 >= 0.0;
  }

  return tombstoneEndTime;
}

- (BOOL)_selfIsMoreCorrectThanOtherEvent:(id)event account:(id)account
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accountCopy = account;
  organizerEmail = [(ASEvent *)self organizerEmail];

  organizerEmail2 = [(ASEvent *)eventCopy organizerEmail];

  if (!organizerEmail || organizerEmail2)
  {
    if (!organizerEmail && organizerEmail2)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(dTStamp, v14))
      {
        v32 = 138412546;
        selfCopy11 = eventCopy;
        v34 = 2112;
        selfCopy10 = self;
        v15 = "%@ beats %@ because it has an organizer";
LABEL_14:
        _os_log_impl(&dword_24A0AC000, dTStamp, v14, v15, &v32, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v16 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
    v17 = [(ASEvent *)eventCopy cachedOrganizerIsSelfWithAccount:accountCopy];
    if (v16 && !v17)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(dTStamp, v14))
      {
        v32 = 138412546;
        selfCopy11 = eventCopy;
        v34 = 2112;
        selfCopy10 = self;
        v15 = "%@ beats %@ because it has an organizer who isn't me";
        goto LABEL_14;
      }

LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    if (!v16 && v17)
    {
      v10 = 1;
      dTStamp = DALoggingwithCategory();
      LOBYTE(v12) = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, v12))
      {
        goto LABEL_16;
      }

      v32 = 138412546;
      selfCopy11 = self;
      v34 = 2112;
      selfCopy10 = eventCopy;
      v13 = "%@ beats %@ because it has an organizer who isn't me";
      goto LABEL_5;
    }

    attendees = [(ASEvent *)self attendees];
    v20 = [attendees count];

    attendees2 = [(ASEvent *)eventCopy attendees];
    v22 = [attendees2 count];

    if (v20 && !v22)
    {
      v10 = 1;
      dTStamp = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, *(MEMORY[0x277D03988] + 6)))
      {
        goto LABEL_16;
      }

      v32 = 138412546;
      selfCopy11 = self;
      v34 = 2112;
      selfCopy10 = eventCopy;
      v13 = "%@ beats %@ because it has attendees";
      goto LABEL_5;
    }

    if (!v20 && v22)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, v14))
      {
        goto LABEL_15;
      }

      v32 = 138412546;
      selfCopy11 = eventCopy;
      v34 = 2112;
      selfCopy10 = self;
      v15 = "%@ beats %@ because it has attendees";
      goto LABEL_14;
    }

    recurrence = [(ASEvent *)self recurrence];

    recurrence2 = [(ASEvent *)eventCopy recurrence];

    if (recurrence && !recurrence2)
    {
      v10 = 1;
      dTStamp = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, *(MEMORY[0x277D03988] + 6)))
      {
        goto LABEL_16;
      }

      v32 = 138412546;
      selfCopy11 = self;
      v34 = 2112;
      selfCopy10 = eventCopy;
      v13 = "%@ beats %@ because it has a recurrence";
      goto LABEL_5;
    }

    if (!recurrence && recurrence2)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, v14))
      {
        goto LABEL_15;
      }

      v32 = 138412546;
      selfCopy11 = eventCopy;
      v34 = 2112;
      selfCopy10 = self;
      v15 = "%@ beats %@ because it has a recurrence";
      goto LABEL_14;
    }

    dTStamp = [(ASEvent *)self dTStamp];
    dTStamp2 = [(ASEvent *)eventCopy dTStamp];
    v26 = dTStamp2;
    if (dTStamp && dTStamp2)
    {
      v27 = [dTStamp compare:dTStamp2];
      if (v27 == -1)
      {
        v28 = DALoggingwithCategory();
        v30 = *(MEMORY[0x277D03988] + 6);
        if (!os_log_type_enabled(v28, v30))
        {
          goto LABEL_45;
        }

        v32 = 138412546;
        selfCopy11 = eventCopy;
        v34 = 2112;
        selfCopy10 = self;
        v31 = "%@ beats %@ because it has an later dTStamp";
        goto LABEL_44;
      }

      if (v27 == 1)
      {
        v10 = 1;
        v28 = DALoggingwithCategory();
        v29 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v28, v29))
        {
          v32 = 138412546;
          selfCopy11 = self;
          v34 = 2112;
          selfCopy10 = eventCopy;
          _os_log_impl(&dword_24A0AC000, v28, v29, "%@ beats %@ because it has a later dTStamp", &v32, 0x16u);
          v10 = 1;
        }

        goto LABEL_46;
      }
    }

    v28 = DALoggingwithCategory();
    v30 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v28, v30))
    {
LABEL_45:
      v10 = 0;
LABEL_46:

      goto LABEL_16;
    }

    v32 = 138412546;
    selfCopy11 = eventCopy;
    v34 = 2112;
    selfCopy10 = self;
    v31 = "%@ beats %@ because it's the new kid on the block";
LABEL_44:
    _os_log_impl(&dword_24A0AC000, v28, v30, v31, &v32, 0x16u);
    goto LABEL_45;
  }

  v10 = 1;
  dTStamp = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(dTStamp, *(MEMORY[0x277D03988] + 6)))
  {
    v32 = 138412546;
    selfCopy11 = self;
    v34 = 2112;
    selfCopy10 = eventCopy;
    v13 = "%@ beats %@ because it has an organizer";
LABEL_5:
    _os_log_impl(&dword_24A0AC000, dTStamp, v12, v13, &v32, 0x16u);
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (BOOL)isEqualToEvent:(id)event
{
  v71 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = *(eventCopy + 21);
  if (v5 != self->_timeZone && ([(ASTimeZone *)v5 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v24 = *(eventCopy + 21);
    timeZone = self->_timeZone;
    v65 = 67109634;
    v66 = 2552;
    v67 = 2112;
    v68 = v24;
    v69 = 2112;
    v70 = timeZone;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
LABEL_84:
    _os_log_impl(&dword_24A0AC000, v22, v23, v26, &v65, 0x1Cu);
    goto LABEL_85;
  }

  v6 = *(eventCopy + 22);
  if (v6 != self->_allDayEvent && ([(NSNumber *)v6 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v27 = *(eventCopy + 22);
    allDayEvent = self->_allDayEvent;
    v65 = 67109634;
    v66 = 2553;
    v67 = 2112;
    v68 = v27;
    v69 = 2112;
    v70 = allDayEvent;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v7 = *(eventCopy + 23);
  if (v7 != self->_body && ([(NSString *)v7 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v32 = *(eventCopy + 23);
    body = self->_body;
    v65 = 67109634;
    v66 = 2554;
    v67 = 2112;
    v68 = v32;
    v69 = 2112;
    v70 = body;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  if (eventCopy[136] != self->_bodyTruncated)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v29 = @"NO";
      bodyTruncated = self->_bodyTruncated;
      if (eventCopy[136])
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v65 = 67109634;
      v66 = 2556;
      v67 = 2112;
      if (bodyTruncated)
      {
        v29 = @"YES";
      }

      v68 = v31;
      v69 = 2112;
      v70 = v29;
      v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other _bodyTruncated of %@ vs. %@";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v8 = *(eventCopy + 24);
  if (v8 != self->_busyStatus && ([(NSNumber *)v8 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v34 = *(eventCopy + 24);
    busyStatus = self->_busyStatus;
    v65 = 67109634;
    v66 = 2560;
    v67 = 2112;
    v68 = v34;
    v69 = 2112;
    v70 = busyStatus;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v9 = *(eventCopy + 26);
  if (v9 != self->_dTStamp && ([(NSDate *)v9 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v36 = *(eventCopy + 26);
    dTStamp = self->_dTStamp;
    v65 = 67109634;
    v66 = 2561;
    v67 = 2112;
    v68 = v36;
    v69 = 2112;
    v70 = dTStamp;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v10 = *(eventCopy + 27);
  if (v10 != self->_endTime && ([(NSDate *)v10 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v38 = *(eventCopy + 27);
    endTime = self->_endTime;
    v65 = 67109634;
    v66 = 2562;
    v67 = 2112;
    v68 = v38;
    v69 = 2112;
    v70 = endTime;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v11 = *(eventCopy + 28);
  if (v11 != self->_location && ([(ASLocation *)v11 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v40 = *(eventCopy + 28);
    location = self->_location;
    v65 = 67109634;
    v66 = 2563;
    v67 = 2112;
    v68 = v40;
    v69 = 2112;
    v70 = location;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v12 = *(eventCopy + 29);
  if (v12 != self->_meetingStatus && ([(NSNumber *)v12 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v42 = *(eventCopy + 29);
    meetingStatus = self->_meetingStatus;
    v65 = 67109634;
    v66 = 2564;
    v67 = 2112;
    v68 = v42;
    v69 = 2112;
    v70 = meetingStatus;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v13 = *(eventCopy + 32);
  if (v13 != self->_reminderMinsBefore && ([(NSNumber *)v13 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v44 = *(eventCopy + 32);
    reminderMinsBefore = self->_reminderMinsBefore;
    v65 = 67109634;
    v66 = 2568;
    v67 = 2112;
    v68 = v44;
    v69 = 2112;
    v70 = reminderMinsBefore;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v14 = *(eventCopy + 33);
  if (v14 != self->_sensitivity && ([(NSNumber *)v14 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v46 = *(eventCopy + 33);
    sensitivity = self->_sensitivity;
    v65 = 67109634;
    v66 = 2569;
    v67 = 2112;
    v68 = v46;
    v69 = 2112;
    v70 = sensitivity;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v15 = *(eventCopy + 34);
  if (v15 != self->_subject && ([(NSString *)v15 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v48 = *(eventCopy + 34);
    subject = self->_subject;
    v65 = 67109634;
    v66 = 2570;
    v67 = 2112;
    v68 = v48;
    v69 = 2112;
    v70 = subject;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v16 = *(eventCopy + 35);
  if (v16 != self->_startTime && ([(NSDate *)v16 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v50 = *(eventCopy + 35);
    startTime = self->_startTime;
    v65 = 67109634;
    v66 = 2571;
    v67 = 2112;
    v68 = v50;
    v69 = 2112;
    v70 = startTime;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v17 = *(eventCopy + 40);
  if (v17 != self->_eventUID && ([(ASEventUID *)v17 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v52 = *(eventCopy + 40);
    eventUID = self->_eventUID;
    v65 = 67109634;
    v66 = 2572;
    v67 = 2112;
    v68 = v52;
    v69 = 2112;
    v70 = eventUID;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v18 = *(eventCopy + 43);
  if (v18 != self->_recurrence && ([(ASRecurrence *)v18 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v54 = *(eventCopy + 43);
    recurrence = self->_recurrence;
    v65 = 67109634;
    v66 = 2574;
    v67 = 2112;
    v68 = v54;
    v69 = 2112;
    v70 = recurrence;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  if (([*(eventCopy + 41) count] || -[NSArray count](self->_attendees, "count")) && (objc_msgSend(*(eventCopy + 41), "isEqual:", self->_attendees) & 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v56 = *(eventCopy + 41);
    attendees = self->_attendees;
    v65 = 67109634;
    v66 = 2576;
    v67 = 2112;
    v68 = v56;
    v69 = 2112;
    v70 = attendees;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  if (([*(eventCopy + 44) count] || -[NSArray count](self->_exceptions, "count")) && (objc_msgSend(*(eventCopy + 44), "isEqual:", self->_exceptions) & 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v58 = *(eventCopy + 44);
    exceptions = self->_exceptions;
    v65 = 67109634;
    v66 = 2577;
    v67 = 2112;
    v68 = v58;
    v69 = 2112;
    v70 = exceptions;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v19 = *(eventCopy + 47);
  if (v19 != self->_appointmentReplyTime && ([(NSDate *)v19 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v60 = *(eventCopy + 47);
    appointmentReplyTime = self->_appointmentReplyTime;
    v65 = 67109634;
    v66 = 2579;
    v67 = 2112;
    v68 = v60;
    v69 = 2112;
    v70 = appointmentReplyTime;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v20 = *(eventCopy + 38);
  if (v20 != self->_onlineMeetingExternalLink && ([(NSString *)v20 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v62 = *(eventCopy + 38);
      onlineMeetingExternalLink = self->_onlineMeetingExternalLink;
      v65 = 67109634;
      v66 = 2581;
      v67 = 2112;
      v68 = v62;
      v69 = 2112;
      v70 = onlineMeetingExternalLink;
      v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
      goto LABEL_84;
    }

LABEL_85:

    v21 = 0;
    goto LABEL_86;
  }

  v21 = 1;
LABEL_86:

  return v21;
}

- (id)eventByMergingInLosingEvent:(id)event account:(id)account
{
  v84 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accountCopy = account;
  selfCopy = self;
  v9 = objc_opt_new();
  calEvent = [(ASEvent *)selfCopy calEvent];
  if (!calEvent)
  {
    calEvent = [eventCopy calEvent];
  }

  [v9 setCalEvent:calEvent];
  [v9 loadClientIDs];
  serverID = [(ASChangedCollectionLeaf *)selfCopy serverID];
  if (serverID)
  {
    [v9 setServerID:serverID];
  }

  else
  {
    serverID2 = [eventCopy serverID];
    [v9 setServerID:serverID2];
  }

  timeZone = [(ASEvent *)selfCopy timeZone];
  [v9 setTimeZone:timeZone];

  allDayEvent = [(ASEvent *)selfCopy allDayEvent];
  [v9 setAllDayEvent:allDayEvent];

  body = [(ASEvent *)selfCopy body];
  if (![body length])
  {
    body2 = [eventCopy body];

    body = body2;
  }

  [v9 setBody:body];
  busyStatus = [(ASEvent *)selfCopy busyStatus];
  [v9 setBusyStatus:busyStatus];

  categories = [(ASEvent *)selfCopy categories];
  [v9 setCategories:categories];

  dTStamp = [(ASEvent *)selfCopy dTStamp];
  dTStamp2 = [eventCopy dTStamp];
  v21 = [dTStamp compare:dTStamp2];

  if (v21 == -1)
  {
    dTStamp3 = [eventCopy dTStamp];

    dTStamp = dTStamp3;
  }

  [v9 setDTStamp:dTStamp];
  endTime = [(ASEvent *)selfCopy endTime];
  [v9 setEndTime:endTime];

  location = [(ASEvent *)selfCopy location];
  if (!location)
  {
    location = [eventCopy location];
  }

  [v9 setLocation:{location, location}];
  meetingStatus = [(ASEvent *)selfCopy meetingStatus];
  [v9 setMeetingStatus:meetingStatus];

  organizerName = [(ASEvent *)selfCopy organizerName];
  [v9 setOrganizerName:organizerName];

  organizerEmail = [(ASEvent *)selfCopy organizerEmail];
  [v9 setOrganizerEmail:organizerEmail];

  reminderMinsBefore = [(ASEvent *)selfCopy reminderMinsBefore];
  [v9 setReminderMinsBefore:reminderMinsBefore];

  sensitivity = [(ASEvent *)selfCopy sensitivity];
  [v9 setSensitivity:sensitivity];

  subject = [(ASEvent *)selfCopy subject];
  [v9 setSubject:subject];

  startTime = [(ASEvent *)selfCopy startTime];
  [v9 setStartTime:startTime];

  eventUID = [(ASEvent *)selfCopy eventUID];
  [v9 setEventUID:eventUID];

  attendees = [(ASEvent *)selfCopy attendees];
  [v9 setAttendees:attendees];

  attendeesPendingDeletion = [(ASEvent *)selfCopy attendeesPendingDeletion];
  [v9 setAttendeesPendingDeletion:attendeesPendingDeletion];

  recurrence = [(ASEvent *)selfCopy recurrence];
  if (recurrence)
  {
    [v9 setRecurrence:recurrence];
  }

  else
  {
    recurrence2 = [eventCopy recurrence];
    [v9 setRecurrence:recurrence2];
  }

  appointmentReplyTime = [(ASEvent *)selfCopy appointmentReplyTime];
  v59 = dTStamp;
  v60 = body;
  if (appointmentReplyTime)
  {
    [v9 setAppointmentReplyTime:appointmentReplyTime];
  }

  else
  {
    appointmentReplyTime2 = [eventCopy appointmentReplyTime];
    [v9 setAppointmentReplyTime:appointmentReplyTime2];
  }

  v61 = accountCopy;
  [v9 _determineSelfnessWithLocalEvent:objc_msgSend(v9 forAccount:{"calEvent"), accountCopy}];
  v39 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  exceptions = [eventCopy exceptions];
  v41 = [exceptions countByEnumeratingWithState:&v66 objects:v83 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v67;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v67 != v43)
        {
          objc_enumerationMutation(exceptions);
        }

        v45 = *(*(&v66 + 1) + 8 * i);
        exceptionStartTime = [v45 exceptionStartTime];
        [v39 setObject:v45 forKeyedSubscript:exceptionStartTime];
      }

      v42 = [exceptions countByEnumeratingWithState:&v66 objects:v83 count:16];
    }

    while (v42);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  exceptions2 = [(ASEvent *)selfCopy exceptions];
  v48 = [exceptions2 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v63;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(exceptions2);
        }

        v52 = *(*(&v62 + 1) + 8 * j);
        exceptionStartTime2 = [v52 exceptionStartTime];
        [v39 setObject:v52 forKeyedSubscript:exceptionStartTime2];
      }

      v49 = [exceptions2 countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v49);
  }

  allValues = [v39 allValues];
  [v9 setExceptions:allValues];

  v55 = DALoggingwithCategory();
  v56 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v55, v56))
  {
    *buf = 134219266;
    v71 = selfCopy;
    v72 = 2112;
    v73 = selfCopy;
    v74 = 2048;
    v75 = eventCopy;
    v76 = 2112;
    v77 = eventCopy;
    v78 = 2048;
    v79 = v9;
    v80 = 2112;
    v81 = v9;
    _os_log_impl(&dword_24A0AC000, v55, v56, "Merged winner %p %@ and loser %p %@, and got %p %@", buf, 0x3Eu);
  }

  return v9;
}

- (id)eventByMergingInEvent:(id)event account:(id)account
{
  eventCopy = event;
  accountCopy = account;
  v8 = [(ASEvent *)self _selfIsMoreCorrectThanOtherEvent:eventCopy account:accountCopy];
  selfCopy = self;
  if (v8)
  {
    v10 = selfCopy;
  }

  else
  {
    v10 = eventCopy;
  }

  if (v8)
  {
    v11 = eventCopy;
  }

  else
  {
    v11 = selfCopy;
  }

  v12 = eventCopy;
  v13 = [(ASEvent *)v10 eventByMergingInLosingEvent:v11 account:accountCopy];

  return v13;
}

- (void)setExceptions:(id)exceptions
{
  v16 = *MEMORY[0x277D85DE8];
  exceptionsCopy = exceptions;
  if (self->_exceptions != exceptionsCopy)
  {
    objc_storeStrong(&self->_exceptions, exceptions);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = exceptionsCopy;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setOriginalEvent:{self, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  if (self->_recurrence != recurrenceCopy)
  {
    v6 = recurrenceCopy;
    objc_storeStrong(&self->_recurrence, recurrence);
    [(ASRecurrence *)self->_recurrence setParentEvent:self];
    recurrenceCopy = v6;
  }
}

- (void)loadCalRecordForAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)loadCalRecordForAccount:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end