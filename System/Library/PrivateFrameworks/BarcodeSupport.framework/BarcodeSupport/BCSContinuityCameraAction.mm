@interface BCSContinuityCameraAction
- (BCSContinuityCameraAction)initWithData:(id)data codePayload:(id)payload;
- (id)actionPickerItems;
- (id)localizedDefaultActionDescription;
- (void)performDefaultActionWithCompletionHandler:(id)handler;
- (void)setConnecting:(BOOL)connecting;
@end

@implementation BCSContinuityCameraAction

- (BCSContinuityCameraAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BCSContinuityCameraAction;
  v8 = [(BCSAction *)&v11 initWithData:dataCopy codePayload:payloadCopy];
  if (!v8)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = v8;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (void)setConnecting:(BOOL)connecting
{
  if (self->_connecting != connecting)
  {
    self->_connecting = connecting;
    delegate = [(BCSAction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionDidUpdateTitle:self];
    }
  }
}

- (id)localizedDefaultActionDescription
{
  if (self->_connecting)
  {
    v3 = @"Connecting to Apple TV…";
  }

  else
  {
    v3 = @"Connect to Apple TV";
  }

  v4 = _BCSLocalizedString(v3, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);

  return v4;
}

- (id)actionPickerItems
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSContinuityCameraActionPickerItem alloc];
  localizedActionDescription = [(BCSAction *)self localizedActionDescription];
  v5 = [(BCSActionPickerItem *)v3 initWithLabel:localizedActionDescription action:self];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)performDefaultActionWithCompletionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(BCSContinuityCameraAction *)self setConnecting:1];
  v5 = MEMORY[0x277CCACE0];
  data = [(BCSAction *)self data];
  v7 = [data url];
  v8 = [v5 componentsWithURL:v7 resolvingAgainstBaseURL:0];

  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    queryItems = [v8 queryItems];
    v11 = [queryItems countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(queryItems);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          value = [v14 value];
          name = [v14 name];
          [dictionary setObject:value forKeyedSubscript:name];
        }

        v11 = [queryItems countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v11);
    }

    v33 = 0;
    v17 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:&v33];
    v18 = v33;
    if (v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        _bcs_privacyPreservingDescription = [v18 _bcs_privacyPreservingDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = _bcs_privacyPreservingDescription;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Failed to serialize pairing info: %@", &buf, 0xCu);
      }

      v20 = BCSActionError(3);
      handlerCopy[2](handlerCopy, v20);
    }

    else
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v21 = getRPRemoteDisplayDeviceClass_softClass;
      v41 = getRPRemoteDisplayDeviceClass_softClass;
      if (!getRPRemoteDisplayDeviceClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v44 = __getRPRemoteDisplayDeviceClass_block_invoke;
        v45 = &unk_278CFE620;
        v46 = &v38;
        __getRPRemoteDisplayDeviceClass_block_invoke(&buf);
        v21 = v39[3];
      }

      v22 = v21;
      _Block_object_dispose(&v38, 8);
      v20 = objc_alloc_init(v21);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v20 setIdentifier:uUIDString];

      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v25 = getRPRemoteDisplaySessionClass_softClass;
      v41 = getRPRemoteDisplaySessionClass_softClass;
      if (!getRPRemoteDisplaySessionClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v44 = __getRPRemoteDisplaySessionClass_block_invoke;
        v45 = &unk_278CFE620;
        v46 = &v38;
        __getRPRemoteDisplaySessionClass_block_invoke(&buf);
        v25 = v39[3];
      }

      v26 = v25;
      _Block_object_dispose(&v38, 8);
      v27 = objc_alloc_init(v25);
      remoteDisplaySession = self->_remoteDisplaySession;
      self->_remoteDisplaySession = v27;

      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setDestinationDevice:v20];
      if (remoteDisplaySessionQueue_onceToken != -1)
      {
        [BCSContinuityCameraAction performDefaultActionWithCompletionHandler:];
      }

      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setDispatchQueue:remoteDisplaySessionQueue_queue];
      if (objc_opt_respondsToSelector())
      {
        [(RPRemoteDisplaySession *)self->_remoteDisplaySession setPairingInfo:v17];
      }

      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setPasswordType:10];
      [(RPRemoteDisplaySession *)self->_remoteDisplaySession setServiceType:@"com.apple.ddui.guestpairing"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Connecting camera", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v29 = self->_remoteDisplaySession;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke;
      v30[3] = &unk_278CFF5E8;
      v31 = handlerCopy;
      objc_copyWeak(&v32, &buf);
      [(RPRemoteDisplaySession *)v29 activateWithCompletion:v30];
      objc_destroyWeak(&v32);

      objc_destroyWeak(&buf);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Failed to get URL components", &buf, 2u);
    }

    dictionary = BCSActionError(3);
    handlerCopy[2](handlerCopy, dictionary);
  }
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278CFF5C0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2(id *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2_cold_1(v2);
    }

    v3 = a1[5];
    v4 = BCSActionError(3);
    v3[2](v3, v4);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Successfully connected", buf, 2u);
    }

    v5 = dispatch_time(0, 10000000000);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_21;
    v6[3] = &unk_278CFF598;
    objc_copyWeak(&v8, a1 + 6);
    v7 = a1[5];
    dispatch_after(v5, MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_21(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSContinuityCameraAction: Invalidating session and calling completion", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 13) invalidate];
    v4 = v3[13];
    v3[13] = 0;

    [v3 setConnecting:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __71__BCSContinuityCameraAction_performDefaultActionWithCompletionHandler___block_invoke_2_cold_1(id *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [*a1 _bcs_privacyPreservingDescription];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSContinuityCameraAction: Failed to connect: %{public}@", &v2, 0xCu);
}

@end