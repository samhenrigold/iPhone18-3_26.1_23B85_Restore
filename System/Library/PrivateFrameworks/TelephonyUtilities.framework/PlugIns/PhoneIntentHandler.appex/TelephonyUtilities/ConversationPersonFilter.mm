@interface ConversationPersonFilter
- (BOOL)_matchesCallerFilter:(id)filter;
- (BOOL)_matchesParticipantsFilter:(id)filter;
- (BOOL)matches:(id)matches;
- (ConversationPersonFilter)initWithCaller:(id)caller participants:(id)participants dataSource:(id)source;
- (id)_contactPoolForConversation:(id)conversation;
- (id)_identifiersForRecommendedPerson:(id)person;
@end

@implementation ConversationPersonFilter

- (ConversationPersonFilter)initWithCaller:(id)caller participants:(id)participants dataSource:(id)source
{
  callerCopy = caller;
  participantsCopy = participants;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = ConversationPersonFilter;
  v12 = [(ConversationPersonFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_caller, caller);
    objc_storeStrong(&v13->_participants, participants);
    objc_storeStrong(&v13->_contactsDataSource, source);
  }

  return v13;
}

- (BOOL)matches:(id)matches
{
  selfCopy = self;
  v4 = [(ConversationPersonFilter *)self _contactPoolForConversation:matches];
  v5 = [(ConversationPersonFilter *)selfCopy _matchesCallerFilter:v4];
  LOBYTE(selfCopy) = [(ConversationPersonFilter *)selfCopy _matchesParticipantsFilter:v4];

  return v5 & selfCopy;
}

- (BOOL)_matchesCallerFilter:(id)filter
{
  filterCopy = filter;
  caller = [(ConversationPersonFilter *)self caller];

  if (caller)
  {
    caller2 = [(ConversationPersonFilter *)self caller];
    v7 = [(ConversationPersonFilter *)self _identifiersForRecommendedPerson:caller2];

    v8 = [filterCopy callerPoolContainsOneOf:v7];
    v9 = IntentHandlerDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConversationPersonFilter: matchesCaller=%@", &v12, 0xCu);
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)_matchesParticipantsFilter:(id)filter
{
  filterCopy = filter;
  participants = [(ConversationPersonFilter *)self participants];
  v6 = [participants count];

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    participants2 = [(ConversationPersonFilter *)self participants];
    v9 = [participants2 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(participants2);
          }

          v13 = [(ConversationPersonFilter *)self _identifiersForRecommendedPerson:*(*(&v19 + 1) + 8 * i)];
          v14 = [filterCopy participantsPoolContainsOneOf:v13];

          if (!v14)
          {
            v15 = 0;
            goto LABEL_12;
          }
        }

        v10 = [participants2 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_12:
  }

  else
  {
    v15 = 1;
  }

  v16 = IntentHandlerDefaultLog(v7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (v15)
    {
      v17 = @"YES";
    }

    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ConversationPersonFilter: matchesParticipants=%@", buf, 0xCu);
  }

  return v15;
}

- (id)_contactPoolForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  remoteMembers = [conversationCopy remoteMembers];
  v7 = [remoteMembers countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v35 + 1) + 8 * i) handle];
        [v5 addObject:handle];
      }

      v8 = [remoteMembers countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  contactsDataSource = [(ConversationPersonFilter *)self contactsDataSource];
  v40 = CNContactIdentifierKey;
  v13 = [NSArray arrayWithObjects:&v40 count:1];
  v14 = [contactsDataSource tu_contactsForHandles:v5 keyDescriptors:v13 error:0];

  v15 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allValues = [v14 allValues];
  v17 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(allValues);
        }

        [v15 addObjectsFromArray:*(*(&v31 + 1) + 8 * j)];
      }

      v18 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  v21 = [[ContactPool alloc] initWithContacts:v15];
  initiator = [conversationCopy initiator];

  v23 = &__NSArray0__struct;
  if (initiator)
  {
    initiator2 = [conversationCopy initiator];
    v25 = [v14 objectForKeyedSubscript:initiator2];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &__NSArray0__struct;
    }

    v23 = v27;
  }

  v28 = [[ContactPool alloc] initWithContacts:v23];
  v29 = objc_alloc_init(ConversationContactPool);
  [(ConversationContactPool *)v29 setCallerPool:v28];
  [(ConversationContactPool *)v29 setParticipantsPool:v21];

  return v29;
}

- (id)_identifiersForRecommendedPerson:(id)person
{
  extractRecommendation = [person extractRecommendation];
  contactIdentifiers = [extractRecommendation contactIdentifiers];

  v5 = [NSSet setWithArray:contactIdentifiers];

  return v5;
}

@end