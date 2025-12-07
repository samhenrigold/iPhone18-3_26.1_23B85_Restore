@interface _CDReceiverNotifier
+ (id)sharedInstance;
- (_CDReceiverNotifier)init;
- (void)_publishXPCEvent:(id)event uid:(unsigned int)uid;
- (void)addSubscriber:(id)subscriber;
- (void)handleXPCNotificationEvent:(id)event;
- (void)publishXPCEventForAppIntents:(id)intents appActivities:(id)activities uid:(unsigned int)uid;
- (void)publishXPCEventForDeletedIntentGroupIdentifiers:(id)identifiers bundleID:(id)d uid:(unsigned int)uid;
- (void)publishXPCEventForDeletedIntentIdentifiers:(id)identifiers bundleID:(id)d uid:(unsigned int)uid;
- (void)publishXPCEventForRelevantShortcuts:(id)shortcuts bundleID:(id)d uid:(unsigned int)uid;
- (void)removeSubscriberWithToken:(unint64_t)token streamName:(id)name;
@end

@implementation _CDReceiverNotifier

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken21 != -1)
  {
    +[_CDReceiverNotifier sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_1;

  return v3;
}

- (_CDReceiverNotifier)init
{
  v38.receiver = self;
  v38.super_class = _CDReceiverNotifier;
  v2 = [(_CDReceiverNotifier *)&v38 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = getuid();
    LODWORD(uTF8String) = v9;
    v2->_isRootProcess = v9 == 0;
    v10 = _logChannel(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (uTF8String)
    {
      if (v11)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "Setting up AppIntent/AppActivity XPC event handler", buf, 2u);
      }

      objc_initWeak(buf, v2);
      v12 = v2->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __27___CDReceiverNotifier_init__block_invoke;
      handler[3] = &unk_1E7369818;
      objc_copyWeak(&v36, buf);
      xpc_set_event_stream_handler("com.apple.coreduet.xpc.receiver", v12, handler);
      v13 = BiomeLibrary();
      v14 = [v13 App];
      intent = [v14 Intent];
      source = [intent source];
      intentSource = v2->_intentSource;
      v2->_intentSource = source;

      v18 = BiomeLibrary();
      v19 = [v18 App];
      activity = [v19 Activity];
      source2 = [activity source];
      activitySource = v2->_activitySource;
      v2->_activitySource = source2;

      v23 = BiomeLibrary();
      v24 = [v23 App];
      relevantShortcuts = [v24 RelevantShortcuts];
      relevantShortcutsStream = v2->_relevantShortcutsStream;
      v2->_relevantShortcutsStream = relevantShortcuts;

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v11)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "Setting up AppIntent/AppActivity XPC event publisher", buf, 2u);
      }

      v27 = v2->_queue;
      v29 = _logChannel(v28);
      v30 = [_CDXPCEventPublisher eventPublisherWithStreamName:"com.apple.coreduet.xpc.receiver" delegate:v2 queue:v27 log:v29];
      xpcPublisher = v2->_xpcPublisher;
      v2->_xpcPublisher = v30;

      v32 = objc_opt_new();
      subscribers = v2->_subscribers;
      v2->_subscribers = v32;
    }
  }

  return v2;
}

- (void)publishXPCEventForRelevantShortcuts:(id)shortcuts bundleID:(id)d uid:(unsigned int)uid
{
  v5 = *&uid;
  v31 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  dCopy = d;
  v10 = _logChannel(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier publishXPCEventForRelevantShortcuts:bundleID:uid:];
  }

  v11 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = shortcutsCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        serialize = [*(*(&v24 + 1) + 8 * v16) serialize];
        [v11 addObject:serialize];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  v28[0] = @"_CDAppRelevantShortcutsKey";
  v28[1] = @"_CDAppRelevantShortcutsBundleIDKey";
  v29[0] = v11;
  v29[1] = dCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v23 = 0;
  v19 = [_CDXPCCodecs notificationEventWithRegistrationIdentifier:@"_CDAppIntentNotification" info:v18 error:&v23];
  v20 = v23;

  if (!v19 || v20)
  {
    v22 = _logChannel(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier publishXPCEventForRelevantShortcuts:bundleID:uid:];
    }
  }

  else
  {
    [(_CDReceiverNotifier *)self _publishXPCEvent:v19 uid:v5];
  }
}

- (void)publishXPCEventForAppIntents:(id)intents appActivities:(id)activities uid:(unsigned int)uid
{
  v5 = *&uid;
  v49 = *MEMORY[0x1E69E9840];
  intentsCopy = intents;
  activitiesCopy = activities;
  v10 = _logChannel(activitiesCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478339;
    v44 = intentsCopy;
    v45 = 2113;
    v46 = activitiesCopy;
    v47 = 1024;
    v48 = v5;
    _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "Publishing XPC event with AppIntents: %{private}@; AppActivities: %{private}@; uid: %d", buf, 0x1Cu);
  }

  v11 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = intentsCopy;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        serialize = [*(*(&v35 + 1) + 8 * v16) serialize];
        [v11 addObject:serialize];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v14);
  }

  v18 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = activitiesCopy;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      v23 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        serialize2 = [*(*(&v31 + 1) + 8 * v23) serialize];
        [v18 addObject:serialize2];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v21);
  }

  v39[0] = @"_CDAppIntentsKey";
  v39[1] = @"_CDAppActivitiesKey";
  v40[0] = v11;
  v40[1] = v18;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v30 = 0;
  v26 = [_CDXPCCodecs notificationEventWithRegistrationIdentifier:@"_CDAppIntentNotification" info:v25 error:&v30];
  v27 = v30;

  if (!v26 || v27)
  {
    v29 = _logChannel(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier publishXPCEventForAppIntents:appActivities:uid:];
    }
  }

  else
  {
    [(_CDReceiverNotifier *)self _publishXPCEvent:v26 uid:v5];
  }
}

- (void)publishXPCEventForDeletedIntentIdentifiers:(id)identifiers bundleID:(id)d uid:(unsigned int)uid
{
  v5 = *&uid;
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  v10 = _logChannel(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478339;
    v20 = identifiersCopy;
    v21 = 2113;
    v22 = dCopy;
    v23 = 1024;
    v24 = v5;
    _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "Publishing XPC event with deleted intent identifiers: %{private}@; bundleID: %{private}@; uid: %d", buf, 0x1Cu);
  }

  v17[0] = @"_CDAppIntentsDeletedIdentifiersKey";
  v17[1] = @"_CDAppIntentsBundleIDKey";
  v18[0] = identifiersCopy;
  v18[1] = dCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v16 = 0;
  v12 = [_CDXPCCodecs notificationEventWithRegistrationIdentifier:@"_CDAppIntentNotification" info:v11 error:&v16];
  v13 = v16;

  if (!v12 || v13)
  {
    v15 = _logChannel(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier publishXPCEventForDeletedIntentIdentifiers:bundleID:uid:];
    }
  }

  else
  {
    [(_CDReceiverNotifier *)self _publishXPCEvent:v12 uid:v5];
  }
}

- (void)publishXPCEventForDeletedIntentGroupIdentifiers:(id)identifiers bundleID:(id)d uid:(unsigned int)uid
{
  v5 = *&uid;
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  v10 = _logChannel(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478339;
    v20 = identifiersCopy;
    v21 = 2113;
    v22 = dCopy;
    v23 = 1024;
    v24 = v5;
    _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "Publishing XPC event with deleted intent group identifiers: %{private}@; bundleID: %{private}@; uid: %d", buf, 0x1Cu);
  }

  v17[0] = @"_CDAppIntentsDeletedGroupIdentifiersKey";
  v17[1] = @"_CDAppIntentsBundleIDKey";
  v18[0] = identifiersCopy;
  v18[1] = dCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v16 = 0;
  v12 = [_CDXPCCodecs notificationEventWithRegistrationIdentifier:@"_CDAppIntentNotification" info:v11 error:&v16];
  v13 = v16;

  if (!v12 || v13)
  {
    v15 = _logChannel(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier publishXPCEventForDeletedIntentGroupIdentifiers:bundleID:uid:];
    }
  }

  else
  {
    [(_CDReceiverNotifier *)self _publishXPCEvent:v12 uid:v5];
  }
}

- (void)_publishXPCEvent:(id)event uid:(unsigned int)uid
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  obj = self->_subscribers;
  objc_sync_enter(obj);
  allValues = [(NSMutableDictionary *)self->_subscribers allValues];
  v8 = _logChannel(allValues);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier _publishXPCEvent:uid:];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = allValues;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 uid] == uid)
        {
          xpcPublisher = self->_xpcPublisher;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke;
          v16[3] = &unk_1E73675F8;
          v16[4] = v13;
          [(_CDXPCEventPublisher *)xpcPublisher sendEvent:eventCopy toSubscriber:v13 handler:v16];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
}

- (void)handleXPCNotificationEvent:(id)event
{
  v71 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = _logChannel(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier handleXPCNotificationEvent:];
  }

  v66 = 0;
  v67 = 0;
  v65 = 0;
  v6 = [_CDXPCCodecs parseNotificationEvent:eventCopy registrationIdentifier:&v67 info:&v66 error:&v65];
  v7 = v67;
  v8 = v66;
  v9 = v65;
  v10 = _logChannel(v9);
  v11 = v10;
  if (!v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier handleXPCNotificationEvent:];
    }

    goto LABEL_42;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier handleXPCNotificationEvent:];
  }

  v12 = [v8 objectForKeyedSubscript:@"_CDAppIntentsKey"];
  if (v12)
  {
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:@"_CDAppActivitiesKey"];

    if (!v13)
    {
      v31 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedIdentifiersKey"];

      if (v31)
      {
        v11 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedIdentifiersKey"];
        v32 = [v8 objectForKeyedSubscript:@"_CDAppIntentsBundleIDKey"];
        v33 = _logChannel(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [_CDReceiverNotifier handleXPCNotificationEvent:];
        }

        [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentIdentifiers:v11 bundleId:v32];
      }

      else
      {
        v34 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedGroupIdentifiersKey"];

        if (!v34)
        {
          v36 = [v8 objectForKeyedSubscript:@"_CDAppRelevantShortcutsKey"];

          v38 = _logChannel(v37);
          v11 = v38;
          if (!v36)
          {
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [_CDReceiverNotifier handleXPCNotificationEvent:];
            }

            goto LABEL_42;
          }

          v49 = v9;
          v50 = v7;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [_CDReceiverNotifier handleXPCNotificationEvent:];
          }

          v39 = [v8 objectForKeyedSubscript:@"_CDAppRelevantShortcutsKey"];
          v40 = [v8 objectForKeyedSubscript:@"_CDAppRelevantShortcutsBundleIDKey"];
          pruner = [(BMStream *)self->_relevantShortcutsStream pruner];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __50___CDReceiverNotifier_handleXPCNotificationEvent___block_invoke;
          v55[3] = &unk_1E7369840;
          v48 = v40;
          v56 = v48;
          [pruner deleteEventsPassingTest:v55];

          source = [(BMStream *)self->_relevantShortcutsStream source];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v11 = v39;
          v43 = [v11 countByEnumeratingWithState:&v51 objects:v68 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v52;
            do
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v52 != v45)
                {
                  objc_enumerationMutation(v11);
                }

                v47 = [MEMORY[0x1E698EB30] eventWithData:*(*(&v51 + 1) + 8 * i) dataVersion:{objc_msgSend(MEMORY[0x1E698EB30], "latestDataVersion")}];
                [source sendEvent:v47];
              }

              v44 = [v11 countByEnumeratingWithState:&v51 objects:v68 count:16];
            }

            while (v44);
          }

LABEL_32:
          v9 = v49;
          v7 = v50;
LABEL_42:

          goto LABEL_43;
        }

        v11 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedGroupIdentifiersKey"];
        v32 = [v8 objectForKeyedSubscript:@"_CDAppIntentsBundleIDKey"];
        v35 = _logChannel(v32);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [_CDReceiverNotifier handleXPCNotificationEvent:];
        }

        [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentGroupIdentifiers:v11 bundleId:v32];
      }

      goto LABEL_42;
    }
  }

  v14 = [v8 objectForKeyedSubscript:@"_CDAppIntentsKey"];

  v49 = v9;
  v50 = v7;
  if (v14)
  {
    v16 = _logChannel(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_CDReceiverNotifier handleXPCNotificationEvent:];
    }

    v17 = [v8 objectForKeyedSubscript:@"_CDAppIntentsKey"];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v62;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v62 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [MEMORY[0x1E698EA98] eventWithData:*(*(&v61 + 1) + 8 * j) dataVersion:{objc_msgSend(MEMORY[0x1E698EA98], "latestDataVersion")}];
          [(BMSource *)self->_intentSource sendEvent:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v19);
    }

    v9 = v49;
  }

  v23 = [v8 objectForKeyedSubscript:@"_CDAppActivitiesKey"];

  if (v23)
  {
    v25 = _logChannel(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [_CDReceiverNotifier handleXPCNotificationEvent:];
    }

    v11 = [v8 objectForKeyedSubscript:@"_CDAppActivitiesKey"];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v26 = [v11 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (!v26)
    {
      goto LABEL_42;
    }

    v27 = v26;
    v28 = *v58;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v11);
        }

        v30 = [MEMORY[0x1E698EA88] eventWithData:*(*(&v57 + 1) + 8 * k) dataVersion:{objc_msgSend(MEMORY[0x1E698EA88], "latestDataVersion")}];
        [(BMSource *)self->_activitySource sendEvent:v30];
      }

      v27 = [v11 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v27);
    goto LABEL_32;
  }

LABEL_43:
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v5 = _logChannel(subscriberCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Adding subscriber", buf, 2u);
  }

  streamName = [subscriberCopy streamName];
  token = [subscriberCopy token];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduet.xpc.receiver"];
  v9 = [v8 isEqualToString:streamName];

  if (v9)
  {
    v11 = self->_subscribers;
    objc_sync_enter(v11);
    subscribers = self->_subscribers;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)subscribers setObject:subscriberCopy forKeyedSubscript:v13];

    v15 = _logChannel(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Successfully added subscriber", v16, 2u);
    }

    objc_sync_exit(v11);
  }

  else
  {
    v11 = _logChannel(v10);
    if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier addSubscriber:];
    }
  }
}

- (void)removeSubscriberWithToken:(unint64_t)token streamName:(id)name
{
  nameCopy = name;
  v7 = _logChannel(nameCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Removing subscriber", buf, 2u);
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduet.xpc.receiver"];
  v9 = [v8 isEqualToString:nameCopy];

  if (v9)
  {
    v11 = self->_subscribers;
    objc_sync_enter(v11);
    subscribers = self->_subscribers;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)subscribers setObject:0 forKeyedSubscript:v13];

    v15 = _logChannel(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Successfully removed subscriber for AppIntent recording", v16, 2u);
    }

    objc_sync_exit(v11);
  }

  else
  {
    v11 = _logChannel(v10);
    if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier removeSubscriberWithToken:streamName:];
    }
  }
}

- (void)publishXPCEventForRelevantShortcuts:bundleID:uid:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_publishXPCEvent:uid:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleXPCNotificationEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.3()
{
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleXPCNotificationEvent:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.6()
{
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleXPCNotificationEvent:.cold.7()
{
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleXPCNotificationEvent:.cold.8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end