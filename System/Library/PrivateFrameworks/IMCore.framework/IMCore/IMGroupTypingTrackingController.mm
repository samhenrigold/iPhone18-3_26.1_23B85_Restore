@interface IMGroupTypingTrackingController
- (IMGroupTypingTrackingController)init;
- (IMGroupTypingTrackingControllerDelegate)delegate;
- (NSArray)currentTypingHandles;
- (void)_addTyper:(id)typer messageTime:(id)time;
- (void)_removeTyper:(id)typer;
- (void)invalidateScheduledTimeoutsForHandleIfNecessary:(id)necessary;
- (void)scheduleTypingTimeoutForHandle:(id)handle withBeginDate:(id)date;
- (void)typingTimeoutDidTriggerWithTimer:(id)timer;
- (void)updateWithIncomingItem:(id)item;
@end

@implementation IMGroupTypingTrackingController

- (IMGroupTypingTrackingController)init
{
  v10.receiver = self;
  v10.super_class = IMGroupTypingTrackingController;
  v2 = [(IMGroupTypingTrackingController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    typingHandles = v2->_typingHandles;
    v2->_typingHandles = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scheduledTimers = v2->_scheduledTimers;
    v2->_scheduledTimers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pluginPayloads = v2->_pluginPayloads;
    v2->_pluginPayloads = v7;
  }

  return v2;
}

- (NSArray)currentTypingHandles
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

  if (isGroupTypingIndicatorsEnabled)
  {
    typingHandles = [(IMGroupTypingTrackingController *)self typingHandles];
    v6 = [typingHandles copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateWithIncomingItem:(id)item
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

  if (isGroupTypingIndicatorsEnabled)
  {
    v7 = IMOSLoggingEnabled();
    if (!itemCopy)
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Incoming item was nil. Ignoring.", buf, 2u);
      }

      goto LABEL_11;
    }

    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = itemCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Handling item: %@", buf, 0xCu);
      }
    }

    if ([itemCopy isFromMe])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Incoming item was from me. Ignoring.", buf, 2u);
        }

LABEL_11:
      }
    }

    else
    {
      _senderHandle = [itemCopy _senderHandle];
      if (_senderHandle)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = itemCopy;
          if ([v11 isIncomingTypingOrCancelTypingMessage])
          {
            if ([v11 isCancelTypingMessage])
            {
              [(IMGroupTypingTrackingController *)self _removeTyper:_senderHandle];
              [(IMGroupTypingTrackingController *)self setHandleToRemoveViaAnimation:0];
            }

            else
            {
              v25 = 0;
              v13 = [v11 isExtensibleMessageWithPluginPayload:&v25];
              v14 = v25;
              v15 = v14;
              if (v13)
              {
                if (v14)
                {
                  v16 = +[IMBalloonPluginManager sharedInstance];
                  pluginPayloads2 = [v16 dataSourceForPluginPayload:v15];
                }

                else
                {
                  pluginPayloads2 = 0;
                }

                v18 = objc_alloc_init(IMPluginTypingPayloadValue);
                typingIndicatorIcon = [v11 typingIndicatorIcon];
                [(IMPluginTypingPayloadValue *)v18 setTypingIndicatorIcon:typingIndicatorIcon];

                bundleID = [pluginPayloads2 bundleID];
                [(IMPluginTypingPayloadValue *)v18 setPluginBundleID:bundleID];

                bundleID2 = [pluginPayloads2 bundleID];
                [(IMPluginTypingPayloadValue *)v18 setType:bundleID2];

                pluginPayloads = [(IMGroupTypingTrackingController *)self pluginPayloads];
                v23 = [_senderHandle ID];
                [pluginPayloads setObject:v18 forKey:v23];
              }

              else
              {
                pluginPayloads2 = [(IMGroupTypingTrackingController *)self pluginPayloads];
                v18 = [_senderHandle ID];
                [pluginPayloads2 removeObjectForKey:v18];
              }

              time = [v11 time];
              [(IMGroupTypingTrackingController *)self _addTyper:_senderHandle messageTime:time];
            }
          }

          else
          {
            [(IMGroupTypingTrackingController *)self _removeTyper:_senderHandle];
          }
        }

        else
        {
          [(IMGroupTypingTrackingController *)self _removeTyper:_senderHandle];
          [(IMGroupTypingTrackingController *)self setHandleToRemoveViaAnimation:0];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Could not derive handle from the incoming item. Not updating typing controller.", buf, 2u);
        }
      }
    }
  }

LABEL_35:
}

- (void)_removeTyper:(id)typer
{
  v22 = *MEMORY[0x1E69E9840];
  typerCopy = typer;
  v5 = IMOSLoggingEnabled();
  if (typerCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[IMGroupTypingTrackingController _removeTyper:]";
        *&buf[12] = 2112;
        *&buf[14] = typerCopy;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s handle to remove: %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v21 = 0;
    typingHandles = [(IMGroupTypingTrackingController *)self typingHandles];
    _copyForEnumerating = [typingHandles _copyForEnumerating];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A835D4C4;
    v14[3] = &unk_1E7813538;
    v9 = typerCopy;
    v15 = v9;
    selfCopy = self;
    v17 = buf;
    [_copyForEnumerating enumerateObjectsUsingBlock:v14];

    [(IMGroupTypingTrackingController *)self invalidateScheduledTimeoutsForHandleIfNecessary:v9];
    if (*(*&buf[8] + 24))
    {
      [(IMGroupTypingTrackingController *)self setHandleToRemoveViaAnimation:v9];
    }

    else
    {
      [(IMGroupTypingTrackingController *)self setHandleToRemoveViaAnimation:0];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v18 = 138412290;
          v19 = v9;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "We received a call to remove a handle from typingHandles, but the there was no matching handle in the array. handle that we attempted to remove: %@", v18, 0xCu);
        }
      }
    }

    pluginPayloads = [(IMGroupTypingTrackingController *)self pluginPayloads];
    v13 = [v9 ID];
    [pluginPayloads removeObjectForKey:v13];

    _Block_object_dispose(buf, 8);
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "There was a call to remove a nil typer handle. Not attempting to removing typer.", buf, 2u);
    }
  }
}

- (void)_addTyper:(id)typer messageTime:(id)time
{
  v20 = *MEMORY[0x1E69E9840];
  typerCopy = typer;
  timeCopy = time;
  if (typerCopy)
  {
    [(IMGroupTypingTrackingController *)self setHandleToRemoveViaAnimation:0];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[IMGroupTypingTrackingController _addTyper:messageTime:]";
        *&buf[12] = 2112;
        *&buf[14] = typerCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%s handle to add: %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    typingHandles = [(IMGroupTypingTrackingController *)self typingHandles];
    _copyForEnumerating = [typingHandles _copyForEnumerating];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A835D7D0;
    v14[3] = &unk_1E7813560;
    v11 = typerCopy;
    selfCopy = self;
    v17 = buf;
    v15 = v11;
    [_copyForEnumerating enumerateObjectsUsingBlock:v14];

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      typingHandles2 = [(IMGroupTypingTrackingController *)self typingHandles];
      [typingHandles2 addObject:v11];
    }

    [(IMGroupTypingTrackingController *)self scheduleTypingTimeoutForHandle:v11 withBeginDate:timeCopy];

    _Block_object_dispose(buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "There was a call to add a nil typer handle. Not attempting to add typer.", buf, 2u);
    }
  }
}

- (void)invalidateScheduledTimeoutsForHandleIfNecessary:(id)necessary
{
  v33 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    *v23 = 0;
    v24 = v23;
    v25 = 0x3032000000;
    v26 = sub_1A8259C20;
    v27 = sub_1A825AF3C;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    scheduledTimers = [(IMGroupTypingTrackingController *)self scheduledTimers];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A835DC24;
    v15[3] = &unk_1E7813588;
    v6 = necessaryCopy;
    v16 = v6;
    v17 = v23;
    v18 = &v19;
    [scheduledTimers enumerateObjectsUsingBlock:v15];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        handle = [*(v24 + 5) handle];
        *buf = 138412546;
        v30 = handle;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Removing scheduled typing timeout for matchingTimer.handle %@, handle: %@", buf, 0x16u);
      }
    }

    v9 = *(v24 + 5);
    if (v9 && v20[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v9 isValid])
      {
        [*(v24 + 5) invalidate];
      }

      scheduledTimers2 = [(IMGroupTypingTrackingController *)self scheduledTimers];
      [scheduledTimers2 removeObjectAtIndex:v20[3]];
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(v24 + 5);
        v12 = v20[3];
        *buf = 138412546;
        v30 = v11;
        v31 = 2048;
        v32 = v12;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "No matchingTimer or invalid index. Not invalidating timer. matchingTimer %@, matchingTimerIndex %li", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v23, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Attempted to invalidate a scheduled typing indicator timeout with a nil handle. Not invalidating scheduled timeout.", v23, 2u);
    }
  }
}

- (void)scheduleTypingTimeoutForHandle:(id)handle withBeginDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  dateCopy = date;
  if (!dateCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Attempted to schedule typing indicator timeout with a nil beginDate. Not scheduling timeout.", &v13, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!handleCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Typing indicator timeout had a nil handle. Not scheduling timeout.", &v13, 2u);
    }

    goto LABEL_15;
  }

  [(IMGroupTypingTrackingController *)self invalidateScheduledTimeoutsForHandleIfNecessary:handleCopy];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = handleCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Scheduling typing timeout for handle %@", &v13, 0xCu);
    }
  }

  v9 = [IMTypingTimer alloc];
  +[IMGroupTypingTrackingController timeoutInterval];
  v10 = [(IMTypingTimer *)v9 initWithHandle:handleCopy beginDate:dateCopy timeoutInterval:self delegate:?];
  scheduledTimers = [(IMGroupTypingTrackingController *)self scheduledTimers];
  [scheduledTimers addObject:v10];

LABEL_16:
}

- (void)typingTimeoutDidTriggerWithTimer:(id)timer
{
  v12 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  handle = [timerCopy handle];
  v6 = IMOSLoggingEnabled();
  if (handle)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = handle;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Typing timeout triggered with handle: %@", &v10, 0xCu);
      }
    }

    [(IMGroupTypingTrackingController *)self _removeTyper:handle];
    [(IMGroupTypingTrackingController *)self setHandleToRemoveViaAnimation:0];
    delegate = [(IMGroupTypingTrackingController *)self delegate];
    [delegate typingTrackingControllerDidReceiveTimeout:self];
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Typing timeout triggered, but the underlying handle was nil. Not removing the typer.", &v10, 2u);
    }
  }
}

- (IMGroupTypingTrackingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end