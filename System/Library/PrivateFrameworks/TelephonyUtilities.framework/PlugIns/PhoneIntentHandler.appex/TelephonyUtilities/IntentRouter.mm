@interface IntentRouter
- (IntentRouter)init;
- (id)existingHandlerForIntentIdentifier:(id)identifier;
- (id)handlerForIntent:(id)intent;
- (void)registerForProvider;
- (void)transactionDidCompleteForIntentIdentifier:(id)identifier;
- (void)updateRecentlyUsedHandlersWithHandler:(id)handler;
@end

@implementation IntentRouter

- (IntentRouter)init
{
  v8.receiver = self;
  v8.super_class = IntentRouter;
  v2 = [(IntentRouter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = IntentHandlerDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FC90(v4);
    }

    v5 = objc_alloc_init(NSMutableArray);
    recentIntentHandlersAndIdentifiers = v3->_recentIntentHandlersAndIdentifiers;
    v3->_recentIntentHandlersAndIdentifiers = v5;
  }

  [(IntentRouter *)v3 registerForProvider];
  return v3;
}

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  identifier = [intentCopy identifier];
  v6 = [(IntentRouter *)self existingHandlerForIntentIdentifier:identifier];

  if (v6)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = StartCallIntentHandler;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = IntentHandlerDefaultLog(isKindOfClass);
      v12 = os_signpost_id_generate(v11);

      v14 = IntentHandlerDefaultLog(v13);
      v15 = v14;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        LOWORD(v27) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HangUpIntentHandlerWaitForProvider", " enableTelemetry=YES ", &v27, 2u);
      }

      group = self->_group;
      v17 = dispatch_time(0, 1000000000);
      v18 = dispatch_group_wait(group, v17);
      if (v18)
      {
        v19 = IntentHandlerDefaultLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134217984;
          v28 = 1;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "registerForCallbacksForProvider did not complete before the %ld second timeout.", &v27, 0xCu);
        }
      }

      v20 = IntentHandlerDefaultLog(v18);
      v21 = v20;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        LOWORD(v27) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v12, "HangUpIntentHandlerWaitForProvider", "", &v27, 2u);
      }

      v9 = HangUpCallIntentHandler;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = PlayVoicemailIntentHandler;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = JoinCallIntentHandler;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = AddCallParticipantIntentHandler;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = SearchCallHistoryIntentHandler;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v9 = AnswerCallIntentHandler;
              }

              else
              {
                objc_opt_class();
                v22 = objc_opt_isKindOfClass();
                if ((v22 & 1) == 0)
                {
                  v26 = IntentHandlerDefaultLog(v22);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    sub_10002FCD4();
                  }

                  goto LABEL_38;
                }

                v9 = IdentifyIncomingCallerIntentHandler;
              }
            }
          }
        }
      }
    }
  }

  v23 = objc_alloc_init(v9);
  if (!v23)
  {
LABEL_38:
    v6 = 0;
    goto LABEL_3;
  }

  v24 = [IntentHandlerAndIdentifier alloc];
  identifier2 = [intentCopy identifier];
  v6 = [(IntentHandlerAndIdentifier *)v24 initWithHandler:v23 intentIdentifier:identifier2];

  if (v6)
  {
LABEL_2:
    [(IntentRouter *)self updateRecentlyUsedHandlersWithHandler:v6];
  }

LABEL_3:
  handler = [(IntentHandlerAndIdentifier *)v6 handler];

  return handler;
}

- (void)transactionDidCompleteForIntentIdentifier:(id)identifier
{
  v4 = [(IntentRouter *)self existingHandlerForIntentIdentifier:identifier];
  handler = [v4 handler];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [handler endPlayback];
  }
}

- (id)existingHandlerForIntentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v16 = IntentHandlerDefaultLog(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Intent does not have an identifier set. Creating new handler.", buf, 2u);
    }

    v7 = 0;
    goto LABEL_20;
  }

  recentIntentHandlersAndIdentifiers = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
  objc_sync_enter(recentIntentHandlersAndIdentifiers);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  recentIntentHandlersAndIdentifiers2 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
  v7 = [recentIntentHandlersAndIdentifiers2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(recentIntentHandlersAndIdentifiers2);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        intentIdentifier = [v10 intentIdentifier];
        v12 = [identifierCopy isEqualToString:intentIdentifier];

        if (v12)
        {
          v14 = IntentHandlerDefaultLog(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_10002FD48();
          }

          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [recentIntentHandlersAndIdentifiers2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  objc_sync_exit(recentIntentHandlersAndIdentifiers);
  if (!v7)
  {
    v16 = IntentHandlerDefaultLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FDBC();
    }

LABEL_20:
  }

  return v7;
}

- (void)updateRecentlyUsedHandlersWithHandler:(id)handler
{
  handlerCopy = handler;
  intentIdentifier = [handlerCopy intentIdentifier];
  v6 = [intentIdentifier length];

  if (v6)
  {
    recentIntentHandlersAndIdentifiers = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
    objc_sync_enter(recentIntentHandlersAndIdentifiers);
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    recentIntentHandlersAndIdentifiers2 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10000D3EC;
    v20 = &unk_10004CED8;
    v10 = handlerCopy;
    v21 = v10;
    v22 = buf;
    [recentIntentHandlersAndIdentifiers2 enumerateObjectsUsingBlock:&v17];

    v11 = *(v24 + 3);
    if (v11)
    {
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers:v17];
        [v12 removeObjectAtIndex:*(v24 + 3)];
      }

      v13 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers:v17];
      [v13 insertObject:v10 atIndex:0];

      recentIntentHandlersAndIdentifiers3 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
      v15 = [recentIntentHandlersAndIdentifiers3 count];

      if (v15 >= 6)
      {
        recentIntentHandlersAndIdentifiers4 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
        [recentIntentHandlersAndIdentifiers4 removeLastObject];
      }
    }

    _Block_object_dispose(buf, 8);
    objc_sync_exit(recentIntentHandlersAndIdentifiers);
  }

  else
  {
    recentIntentHandlersAndIdentifiers = IntentHandlerDefaultLog(v7);
    if (os_log_type_enabled(recentIntentHandlersAndIdentifiers, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, recentIntentHandlersAndIdentifiers, OS_LOG_TYPE_DEFAULT, "[WARN] Attempting to update recently used intent handler cache for an intent with no intentIdentifier. Ignoring.", buf, 2u);
    }
  }
}

- (void)registerForProvider
{
  v3 = objc_alloc_init(TUConversationProviderManager);
  conversationProviderManager = self->_conversationProviderManager;
  self->_conversationProviderManager = v3;

  v5 = dispatch_group_create();
  group = self->_group;
  self->_group = v5;

  dispatch_group_enter(self->_group);
  v8 = IntentHandlerDefaultLog(v7);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HangUpIntentHandlerRegisterForProvider", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = IntentHandlerDefaultLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registering for drop-in calls", buf, 2u);
  }

  v15 = self->_conversationProviderManager;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D5EC;
  v16[3] = &unk_10004CF00;
  v16[4] = self;
  v16[5] = v9;
  [(TUConversationProviderManager *)v15 registerForCallbacksForProvider:@"com.apple.private.alloy.dropin.communication" completionHandler:v16];
}

@end