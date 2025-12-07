@interface JoinCallIntentHandler
- (JoinCallIntentHandler)init;
- (JoinCallIntentHandler)initWithCallCenter:(id)center contactsDataSource:(id)source;
- (id)_responseForMatchingConversation:(id)conversation intent:(id)intent;
- (void)confirmJoinCall:(id)call completion:(id)completion;
- (void)handleJoinCall:(id)call completion:(id)completion;
- (void)resolveGroupConversationForJoinCall:(id)call withCompletion:(id)completion;
@end

@implementation JoinCallIntentHandler

- (JoinCallIntentHandler)init
{
  v3 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
  v4 = dispatch_queue_create([v3 UTF8String], 0);

  v5 = [TUCallCenter callCenterWithQueue:v4];
  contactStore = [v5 contactStore];
  v7 = [(JoinCallIntentHandler *)self initWithCallCenter:v5 contactsDataSource:contactStore];

  return v7;
}

- (JoinCallIntentHandler)initWithCallCenter:(id)center contactsDataSource:(id)source
{
  centerCopy = center;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = JoinCallIntentHandler;
  v9 = [(JoinCallIntentHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_callCenter, center);
    objc_storeStrong(&v10->_contactsDataSource, source);
  }

  return v10;
}

- (void)handleJoinCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling join call intent: %@", &buf, 0xCu);
  }

  groupConversation = [callCopy groupConversation];
  conversationId = [groupConversation conversationId];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = sub_100021958;
  v27 = sub_100021968;
  v28 = 0;
  callCenter = [(JoinCallIntentHandler *)self callCenter];
  queue = [callCenter queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021970;
  block[3] = &unk_10004D130;
  v13 = conversationId;
  v21 = v13;
  selfCopy = self;
  p_buf = &buf;
  dispatch_sync(queue, block);

  v15 = *(*(&buf + 1) + 40);
  if (v15)
  {
    v16 = [(JoinCallIntentHandler *)self _responseForMatchingConversation:v15 intent:callCopy];
  }

  else
  {
    v17 = IntentHandlerDefaultLog(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No matching conversation. Returning failure.", v19, 2u);
    }

    v16 = [[INJoinCallIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v18 = v16;
  completionCopy[2](completionCopy, v16);

  _Block_object_dispose(&buf, 8);
}

- (id)_responseForMatchingConversation:(id)conversation intent:(id)intent
{
  intentCopy = intent;
  conversationCopy = conversation;
  v7 = [[TUJoinConversationRequest alloc] initWithConversation:conversationCopy originatingUIType:37];

  [v7 setVideoEnabled:1];
  v8 = [NSUserActivity makeActivityWithIntent:intentCopy joinRequestAttachment:v7];

  v10 = IntentHandlerDefaultLog(v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attaching TUJoinConversationRequest to UserActivity", v17, 2u);
    }

    v12 = [INJoinCallIntentResponse alloc];
    v13 = 2;
    v14 = v8;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003094C(v11);
    }

    v12 = [INJoinCallIntentResponse alloc];
    v13 = 5;
    v14 = 0;
  }

  v15 = [v12 initWithCode:v13 userActivity:v14];

  return v15;
}

- (void)confirmJoinCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v7 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Confirming join call intent: %@", &v9, 0xCu);
  }

  v8 = [[INJoinCallIntentResponse alloc] initWithCode:1 userActivity:0];
  completionCopy[2](completionCopy, v8);
}

- (void)resolveGroupConversationForJoinCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100021958;
  v30 = sub_100021968;
  v31 = 0;
  v8 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving join call intent: %@", buf, 0xCu);
  }

  groupConversation = [callCopy groupConversation];
  conversationId = [groupConversation conversationId];
  v11 = [conversationId length] == 0;

  if (v11)
  {
    callCenter = [(JoinCallIntentHandler *)self callCenter];
    queue = [callCenter queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000220C0;
    block[3] = &unk_10004D130;
    v23 = callCopy;
    selfCopy = self;
    v25 = &v26;
    dispatch_sync(queue, block);

    groupConversation2 = v23;
  }

  else
  {
    v13 = IntentHandlerDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "INCallGroupConversation already resolved.", buf, 2u);
    }

    groupConversation2 = [callCopy groupConversation];
    v15 = [INCallGroupConversationResolutionResult successWithResolvedCallGroupConversation:groupConversation2];
    v16 = v27[5];
    v27[5] = v15;
  }

  v20 = IntentHandlerDefaultLog(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v27[5];
    *buf = 138412290;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Calling completion on resolution result: %@", buf, 0xCu);
  }

  completionCopy[2](completionCopy, v27[5]);
  _Block_object_dispose(&v26, 8);
}

@end