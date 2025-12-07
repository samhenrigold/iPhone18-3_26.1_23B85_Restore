@interface ConversationContactPool
- (BOOL)callerPoolContainsOneOf:(id)of;
- (BOOL)participantsPoolContainsOneOf:(id)of;
@end

@implementation ConversationContactPool

- (BOOL)callerPoolContainsOneOf:(id)of
{
  ofCopy = of;
  callerPool = [(ConversationContactPool *)self callerPool];
  allContactIds = [callerPool allContactIds];

  v8 = IntentHandlerDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = ofCopy;
    v14 = 2112;
    v15 = allContactIds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ConversationContactPool: Searching for %@ in caller ContactPool: %@", &v12, 0x16u);
  }

  callerPool2 = [(ConversationContactPool *)self callerPool];
  if (callerPool2)
  {
    v10 = [allContactIds intersectsSet:ofCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)participantsPoolContainsOneOf:(id)of
{
  ofCopy = of;
  participantsPool = [(ConversationContactPool *)self participantsPool];
  allContactIds = [participantsPool allContactIds];

  v8 = IntentHandlerDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = ofCopy;
    v14 = 2112;
    v15 = allContactIds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ConversationContactPool: Searching for %@ in participants ContactPool: %@", &v12, 0x16u);
  }

  participantsPool2 = [(ConversationContactPool *)self participantsPool];
  if (participantsPool2)
  {
    v10 = [allContactIds intersectsSet:ofCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end