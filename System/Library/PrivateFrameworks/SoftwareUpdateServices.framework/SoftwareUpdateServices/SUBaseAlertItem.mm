@interface SUBaseAlertItem
- (BOOL)_createNotification;
- (BOOL)_updateNotification;
- (BOOL)present;
- (BOOL)update;
- (SUBaseAlertItem)init;
- (id)_notificationButtonActions;
- (id)_notificationButtons;
- (id)_notificationOptions;
- (id)buildAlertItemDefinition;
- (int)_SBPresentationStyleForSUSPresentationStyle:(unint64_t)style;
- (unint64_t)_notificationFlags;
- (void)_cancelNotification;
- (void)_notificationWasDismissed:(unint64_t)dismissed;
- (void)alertWasDismissed:(unint64_t)dismissed;
- (void)dealloc;
- (void)dismiss;
- (void)willPresentAlert;
@end

@implementation SUBaseAlertItem

- (SUBaseAlertItem)init
{
  v8.receiver = self;
  v8.super_class = SUBaseAlertItem;
  v2 = [(SUBaseAlertItem *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_isUILocked = 0;
    v2->_notification = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.sus.alertItem.stateQ", v4);
    stateQ = v3->_stateQ;
    v3->_stateQ = v5;

    objc_storeWeak(&v3->_manager, 0);
  }

  return v3;
}

- (void)dealloc
{
  stateQ = self->_stateQ;
  self->_notification = 0;
  self->_stateQ = 0;

  v4.receiver = self;
  v4.super_class = SUBaseAlertItem;
  [(SUBaseAlertItem *)&v4 dealloc];
}

- (BOOL)present
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_stateQ);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQ = selfCopy->_stateQ;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SUBaseAlertItem_present__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(stateQ, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__26__SUBaseAlertItem_present__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createNotification];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)update
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_stateQ);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQ = selfCopy->_stateQ;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__SUBaseAlertItem_update__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(stateQ, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__25__SUBaseAlertItem_update__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateNotification];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dismiss
{
  dispatch_assert_queue_not_V2(self->_stateQ);
  stateQ = self->_stateQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SUBaseAlertItem_dismiss__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(stateQ, block);
}

- (void)willPresentAlert
{
  dispatch_assert_queue_V2(self->_stateQ);
  v11 = SULogAlerts(v2);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  SULogInfoForSubsystem(v11, @"[%@] willPresentAlert", v5, v6, v7, v8, v9, v10, v4);
}

- (void)alertWasDismissed:(unint64_t)dismissed
{
  dispatch_assert_queue_V2(self->_stateQ);
  v12 = SULogAlerts(v3);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  SULogInfoForSubsystem(v12, @"[%@] was dismissed for %ld", v6, v7, v8, v9, v10, v11, v5);
}

- (BOOL)_createNotification
{
  dispatch_assert_queue_V2(self->_stateQ);
  if (self->_notification)
  {
    v4 = SULogAlerts(v3);
    SULogErrorForSubsystem(v4, @"%@ is being presented for %@. Dismiss it first", v5, v6, v7, v8, v9, v10, self->_notification);

    return 0;
  }

  else
  {
    [(SUBaseAlertItem *)self willPresentAlert];
    _notificationFlags = [(SUBaseAlertItem *)self _notificationFlags];
    _notificationOptions = [(SUBaseAlertItem *)self _notificationOptions];
    _notificationButtonActions = [(SUBaseAlertItem *)self _notificationButtonActions];
    error = -1;
    v15 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, _notificationFlags, &error, _notificationOptions);
    v16 = SULogAlerts(v15);
    objc_opt_class();
    SULogDebugForSubsystem(v16, @"created %@ for %@ with error %ld", v17, v18, v19, v20, v21, v22, v15);

    if (v15)
    {
      v24 = error == 0;
    }

    else
    {
      v24 = 0;
    }

    v11 = v24;
    if (v24)
    {
      self->_notification = v15;
      v25 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__SUBaseAlertItem__createNotification__block_invoke;
      block[3] = &unk_279CAA8A8;
      v36 = v15;
      block[4] = self;
      v35 = _notificationButtonActions;
      dispatch_async(v25, block);
    }

    else
    {
      v26 = SULogAlerts(v23);
      SULogInfoForSubsystem(v26, @"failed to display notification: %ld", v27, v28, v29, v30, v31, v32, error);

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  return v11;
}

void __38__SUBaseAlertItem__createNotification__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  v2 = CFUserNotificationReceiveResponse(*(a1 + 48), 0.0, &responseFlags);
  if (v2)
  {
    v3 = v2;
    v4 = SULogAlerts(v2);
    SULogInfoForSubsystem(v4, @"failed to get response from CFUserNotification: %ld", v5, v6, v7, v8, v9, v10, v3);

    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__SUBaseAlertItem__createNotification__block_invoke_2;
    block[3] = &unk_279CAAD28;
    v13 = *(a1 + 48);
    v99 = 0;
    v100 = v13;
    block[4] = v11;
    dispatch_async(v12, block);
    v14 = v99;
  }

  else if ((~responseFlags & 3) != 0)
  {
    ResponseDictionary = CFUserNotificationGetResponseDictionary(*(a1 + 48));
    v26 = CFRetain(ResponseDictionary);
    v14 = v26;
    if (v26)
    {
      v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D67218]];
      v28 = SULogAlerts(v27);
      v35 = v28;
      if (v27)
      {
        v36 = [v27 unsignedIntegerValue];
        SULogInfoForSubsystem(v35, @"User clicked button index %ld", v37, v38, v39, v40, v41, v42, v36);

        v43 = [v27 unsignedIntegerValue];
        v44 = [*(a1 + 40) count];
        if (v43 >= v44)
        {
          v71 = SULogAlerts(v44);
          SULogInfoForSubsystem(v71, @"index does not match any button", v72, v73, v74, v75, v76, v77, v82);

          v78 = *(a1 + 32);
          v79 = *(v78 + 16);
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __38__SUBaseAlertItem__createNotification__block_invoke_6;
          v86[3] = &unk_279CAAD28;
          v80 = *(a1 + 48);
          v87 = 0;
          v88 = v80;
          v86[4] = v78;
          dispatch_async(v79, v86);
          v57 = v87;
        }

        else
        {
          v45 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v27, "integerValue")}];
          if (!v45)
          {
            v46 = SULogAlerts(0);
            v47 = [v27 unsignedIntegerValue];
            SULogInfoForSubsystem(v46, @"No action registered for button %ld", v48, v49, v50, v51, v52, v53, v47);
          }

          v54 = *(a1 + 32);
          v55 = *(v54 + 16);
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __38__SUBaseAlertItem__createNotification__block_invoke_7;
          v83[3] = &unk_279CAAD28;
          v56 = *(a1 + 48);
          v84 = v45;
          v85 = v56;
          v83[4] = v54;
          v57 = v45;
          dispatch_async(v55, v83);
        }
      }

      else
      {
        SULogInfoForSubsystem(v28, @"failed to get button index from response dictionary", v29, v30, v31, v32, v33, v34, v81);

        v68 = *(a1 + 32);
        v69 = *(v68 + 16);
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __38__SUBaseAlertItem__createNotification__block_invoke_5;
        v89[3] = &unk_279CAAD28;
        v70 = *(a1 + 48);
        v90 = 0;
        v91 = v70;
        v89[4] = v68;
        dispatch_async(v69, v89);
        v57 = v90;
      }
    }

    else
    {
      v58 = SULogAlerts(0);
      SULogInfoForSubsystem(v58, @"failed to get response dictionary from CFUserNotification: %ld", v59, v60, v61, v62, v63, v64, 0);

      v65 = *(a1 + 32);
      v66 = *(v65 + 16);
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __38__SUBaseAlertItem__createNotification__block_invoke_4;
      v92[3] = &unk_279CAAD28;
      v67 = *(a1 + 48);
      v93 = 0;
      v94 = v67;
      v92[4] = v65;
      dispatch_async(v66, v92);
      v27 = v93;
    }
  }

  else
  {
    v15 = SULogAlerts(v2);
    SULogInfoForSubsystem(v15, @"notification was canceled (alert = %@)", v16, v17, v18, v19, v20, v21, *(a1 + 32));

    v22 = *(a1 + 32);
    v23 = *(v22 + 16);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __38__SUBaseAlertItem__createNotification__block_invoke_3;
    v95[3] = &unk_279CAAD28;
    v24 = *(a1 + 48);
    v96 = 0;
    v97 = v24;
    v95[4] = v22;
    dispatch_async(v23, v95);
    v14 = v96;
  }
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_3(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:2];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_4(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_6(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:0];
}

uint64_t __38__SUBaseAlertItem__createNotification__block_invoke_7(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1[4] + 8) = 0;
  v4 = a1[4];

  return [v4 _notificationWasDismissed:1];
}

- (BOOL)_updateNotification
{
  dispatch_assert_queue_V2(self->_stateQ);
  if (!self->_notification)
  {
    _notificationOptions = SULogAlerts(v3);
    SULogErrorForSubsystem(_notificationOptions, @"No notification for %@", v15, v16, v17, v18, v19, v20, self);
    goto LABEL_5;
  }

  _notificationFlags = [(SUBaseAlertItem *)self _notificationFlags];
  _notificationOptions = [(SUBaseAlertItem *)self _notificationOptions];
  v6 = CFUserNotificationUpdate(self->_notification, 0.0, _notificationFlags, _notificationOptions);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = SULogAlerts(v6);
    SULogErrorForSubsystem(v8, @"Failed to update %@ for %@", v9, v10, v11, v12, v13, v14, self->_notification);

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)_cancelNotification
{
  dispatch_assert_queue_V2(self->_stateQ);
  notification = self->_notification;
  if (notification)
  {

    CFUserNotificationCancel(notification);
  }
}

- (void)_notificationWasDismissed:(unint64_t)dismissed
{
  dispatch_assert_queue_V2(self->_stateQ);
  v6 = SULogAlerts(v5);
  SULogInfoForSubsystem(v6, @"notification was dismissed for %ld", v7, v8, v9, v10, v11, v12, dismissed);

  [(SUBaseAlertItem *)self alertWasDismissed:dismissed];
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained _noteAlertDeactivated:self];
}

- (id)buildAlertItemDefinition
{
  v3 = [SUAlertItemDefinition alloc];
  title = [(SUBaseAlertItem *)self title];
  message = [(SUBaseAlertItem *)self message];
  buttons = [(SUBaseAlertItem *)self buttons];
  v7 = [(SUAlertItemDefinition *)v3 initWithTitle:title message:message buttons:buttons];

  return v7;
}

- (id)_notificationOptions
{
  v39[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  buildAlertItemDefinition = [(SUBaseAlertItem *)self buildAlertItemDefinition];
  title = [buildAlertItemDefinition title];

  if (title)
  {
    title2 = [buildAlertItemDefinition title];
    [dictionary setObject:title2 forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  contentExtensionID = [(SUBaseAlertItem *)self contentExtensionID];

  if (contentExtensionID)
  {
    contentExtensionID2 = [(SUBaseAlertItem *)self contentExtensionID];
    [dictionary setObject:contentExtensionID2 forKeyedSubscript:*MEMORY[0x277D67350]];

    extensionDictionary = [(SUBaseAlertItem *)self extensionDictionary];

    if (extensionDictionary)
    {
      message2 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      extensionDictionary2 = [(SUBaseAlertItem *)self extensionDictionary];
      [message2 setUserInfo:extensionDictionary2];

      v12 = MEMORY[0x277CCAAB0];
      v39[0] = message2;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];

      if (v14)
      {
        [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277D67358]];
      }

      goto LABEL_10;
    }
  }

  else
  {
    message = [buildAlertItemDefinition message];

    if (message)
    {
      message2 = [buildAlertItemDefinition message];
      [dictionary setObject:message2 forKeyedSubscript:*MEMORY[0x277CBF198]];
LABEL_10:
    }
  }

  _notificationButtons = [(SUBaseAlertItem *)self _notificationButtons];
  v17 = _notificationButtons;
  if (_notificationButtons && [_notificationButtons count])
  {
    _notificationButtons2 = [(SUBaseAlertItem *)self _notificationButtons];
    [dictionary setObject:_notificationButtons2 forKeyedSubscript:*MEMORY[0x277D67220]];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem shouldShowInLockScreen](self, "shouldShowInLockScreen")}];
  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CBF1B0]];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUBaseAlertItem reappearsAfterLock](self, "reappearsAfterLock") ^ 1}];
  [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277D67320]];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem reappearsAfterUnlock](self, "reappearsAfterUnlock")}];
  [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277D67340]];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem forcesModalAlertAppearance](self, "forcesModalAlertAppearance")}];
  [dictionary setObject:v22 forKeyedSubscript:*MEMORY[0x277D67360]];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem showButtonsOnLockScreen](self, "showButtonsOnLockScreen")}];
  [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x277D67338]];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem allowInSetup](self, "allowInSetup")}];
  [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x277D67288]];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem undimsScreen](self, "undimsScreen")}];
  [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277D67450]];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem allowLockScreenDismissal](self, "allowLockScreenDismissal")}];
  [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x277D67290]];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUBaseAlertItem allowMenuButtonDismissal](self, "allowMenuButtonDismissal")}];
  [dictionary setObject:v27 forKeyedSubscript:*MEMORY[0x277D67298]];

  allowedApps = [(SUBaseAlertItem *)self allowedApps];

  if (allowedApps)
  {
    allowedApps2 = [(SUBaseAlertItem *)self allowedApps];
    [dictionary setObject:allowedApps2 forKeyedSubscript:*MEMORY[0x277D672A8]];
  }

  v31 = SULogAlerts(v29);
  SULogInfoForSubsystem(v31, @"notificationOptions %@", v32, v33, v34, v35, v36, v37, dictionary);

  return dictionary;
}

- (unint64_t)_notificationFlags
{
  if ([(SUBaseAlertItem *)self allowNoButton])
  {
    return 35;
  }

  else
  {
    return 3;
  }
}

- (id)_notificationButtons
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [(SUBaseAlertItem *)self buildAlertItemDefinition];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = v20 = 0u;
  buttons = [v16 buttons];
  v5 = [buttons countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(buttons);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D66B50]);
        label = [v9 label];
        v12 = [v10 initWithTitle:label];

        [v12 setPresentationStyle:{-[SUBaseAlertItem _SBPresentationStyleForSUSPresentationStyle:](self, "_SBPresentationStyleForSUSPresentationStyle:", objc_msgSend(v9, "presentationStyle"))}];
        [v12 setIsPreferredButton:{objc_msgSend(v9, "isPreferredButton")}];
        build = [v12 build];
        [array addObject:build];
      }

      v6 = [buttons countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [array copy];

  return v14;
}

- (id)_notificationButtonActions
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  buildAlertItemDefinition = [(SUBaseAlertItem *)self buildAlertItemDefinition];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  buttons = [buildAlertItemDefinition buttons];
  v6 = [buttons countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(buttons);
        }

        handler = [*(*(&v13 + 1) + 8 * i) handler];
        [array addObject:handler];
      }

      v7 = [buttons countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array copy];

  return v11;
}

- (int)_SBPresentationStyleForSUSPresentationStyle:(unint64_t)style
{
  if (style == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (style == 2);
  }
}

@end