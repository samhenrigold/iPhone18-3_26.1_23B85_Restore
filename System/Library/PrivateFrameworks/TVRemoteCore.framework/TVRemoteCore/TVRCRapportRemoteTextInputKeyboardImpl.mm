@interface TVRCRapportRemoteTextInputKeyboardImpl
- (TVRXKeyboardController)keyboardController;
- (id)text;
- (void)_receivedInputSourceSession:(id)session;
- (void)_stopObservingTelevisionEditingSession;
- (void)handleTextActionPayload:(id)payload;
- (void)inputSessionDidBegin:(id)begin;
- (void)inputSessionDidDie:(id)die;
- (void)inputSessionDidEnd:(id)end;
- (void)setCompanionLinkWrapper:(id)wrapper;
- (void)setTextActionPayload:(id)payload;
@end

@implementation TVRCRapportRemoteTextInputKeyboardImpl

- (void)setCompanionLinkWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  p_companionLinkWrapper = &self->_companionLinkWrapper;
  companionLinkWrapper = self->_companionLinkWrapper;
  if (companionLinkWrapper != wrapperCopy)
  {
    [(TVRCRPCompanionLinkClientWrapper *)companionLinkWrapper setRTISessionHandler:0];
    objc_storeStrong(&self->_companionLinkWrapper, wrapper);
    objc_initWeak(&location, self);
    v8 = self->_companionLinkWrapper;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke;
    v12[3] = &unk_279D83228;
    objc_copyWeak(&v13, &location);
    [(TVRCRPCompanionLinkClientWrapper *)v8 getCurrentRTISourceSession:v12];
    v9 = *p_companionLinkWrapper;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_1;
    v10[3] = &unk_279D83250;
    objc_copyWeak(&v11, &location);
    [(TVRCRPCompanionLinkClientWrapper *)v9 setRTISessionHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = _TVRCRemoteTextInputLog(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_cold_1(v6, v9);
      }
    }

    else if (v5)
    {
      v10 = _TVRCRemoteTextInputLog(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Keyboard connected to existing RemoteTextInput source session during setup", v11, 2u);
      }

      [v8 _receivedInputSourceSession:v5];
    }
  }
}

void __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRemoteTextInputLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard received callback for RemoteTextInput session", v7, 2u);
    }

    [v5 _receivedInputSourceSession:v3];
  }
}

- (id)text
{
  v16 = *MEMORY[0x277D85DE8];
  documentState = [(RTIInputSystemDataPayload *)self->_cachedInputSystemDataPayload documentState];
  v3DocumentState = [documentState documentState];
  contextBeforeInput = [v3DocumentState contextBeforeInput];

  v7 = _TVRCRemoteTextInputLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSString *)self->_cachedText length];
    v12 = 134218240;
    v13 = v8;
    v14 = 2048;
    v15 = [contextBeforeInput length];
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Cached text length:%lu remote text length: %lu", &v12, 0x16u);
  }

  cachedText = self->_cachedText;
  v10 = cachedText;

  return cachedText;
}

- (void)setTextActionPayload:(id)payload
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = _TVRCRemoteTextInputLog(payloadCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[TVRCRapportRemoteTextInputKeyboardImpl setTextActionPayload:]";
    v15 = 2112;
    v16 = payloadCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s - payload: %@", &v13, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    documentState = [payloadCopy documentState];
    v6DocumentState = [documentState documentState];
    contextBeforeInput = [v6DocumentState contextBeforeInput];

    v10 = _TVRCRemoteTextInputLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [contextBeforeInput length];
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput send payload string length: %lu", &v13, 0xCu);
    }
  }

  payloadDelegate = [(RTIInputSystemSourceSession *)self->_currentSession payloadDelegate];
  [payloadDelegate handleTextActionPayload:payloadCopy];
}

- (void)inputSessionDidBegin:(id)begin
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRemoteTextInputLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editing = self->_editing;
    v7[0] = 67109120;
    v7[1] = editing;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput source session did begin isEditing: %{BOOL}d", v7, 8u);
  }

  if (!self->_editing)
  {
    self->_editing = 1;
    WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
    [WeakRetained _editingSessionBeganWithAttributes:self->_currentAttributes];
  }
}

- (void)inputSessionDidEnd:(id)end
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRemoteTextInputLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editing = self->_editing;
    v7[0] = 67109120;
    v7[1] = editing;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput source session did end isEditing: %{BOOL}d", v7, 8u);
  }

  if (self->_editing)
  {
    self->_editing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
    [WeakRetained _editingSessionEnded];
  }
}

- (void)inputSessionDidDie:(id)die
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRemoteTextInputLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editing = self->_editing;
    v7[0] = 67109120;
    v7[1] = editing;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput source session did die isEditing: %{BOOL}d", v7, 8u);
  }

  if (self->_editing)
  {
    self->_editing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
    [WeakRetained _editingSessionEnded];
  }
}

- (void)handleTextActionPayload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = payloadCopy;
  if (payloadCopy)
  {
    v6 = _TVRCRemoteTextInputLog(payloadCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = v5;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput received text action payload: %{public}@", &v24, 0xCu);
    }

    v7 = MEMORY[0x277D46160];
    data = [v5 data];
    v9 = [v7 payloadWithData:data version:{objc_msgSend(v5, "version")}];

    objc_storeStrong(&self->_cachedInputSystemDataPayload, v9);
    documentState = [v9 documentState];
    v10DocumentState = [documentState documentState];
    contextBeforeInput = [v10DocumentState contextBeforeInput];

    objc_storeStrong(&self->_cachedText, contextBeforeInput);
    v14 = _TVRCRemoteTextInputLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [contextBeforeInput length];
      v24 = 134217984;
      v25 = v15;
      _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput received payload string length: %lu", &v24, 0xCu);
    }

    _init = [[TVRCKeyboardAttributes alloc] _init];
    currentAttributes = self->_currentAttributes;
    self->_currentAttributes = _init;

    [(TVRCKeyboardAttributes *)self->_currentAttributes setRtiDataPayload:v5];
    documentTraits = [(RTIInputSystemSourceSession *)self->_currentSession documentTraits];
    prompt = [documentTraits prompt];

    v20 = self->_currentAttributes;
    if (prompt)
    {
      [(TVRCKeyboardAttributes *)self->_currentAttributes setTitle:prompt];
    }

    else
    {
      documentTraits2 = [(RTIInputSystemSourceSession *)self->_currentSession documentTraits];
      title = [documentTraits2 title];
      [(TVRCKeyboardAttributes *)v20 setTitle:title];
    }

    if (self->_editing)
    {
      WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
      [WeakRetained _editingSessionUpdatedAttributes:self->_currentAttributes];
    }

    else
    {
      self->_editing = 1;
      WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
      [WeakRetained _editingSessionBeganWithAttributes:self->_currentAttributes];
    }
  }
}

- (void)_stopObservingTelevisionEditingSession
{
  v3 = _TVRCRemoteTextInputLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stop observing TV editing session", v6, 2u);
  }

  [(RTIInputSystemSourceSession *)self->_currentSession removeSessionDelegate:self];
  [(RTIInputSystemSourceSession *)self->_currentSession setForwardingPayloadDelegate:0];
  currentSession = self->_currentSession;
  self->_currentSession = 0;

  cachedText = self->_cachedText;
  self->_cachedText = 0;
}

- (void)_receivedInputSourceSession:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = _TVRCRemoteTextInputLog(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentSession = self->_currentSession;
    v11 = 138412546;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = currentSession;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "_receivedInputSourceSession: newSession: %@ currentSession: %@", &v11, 0x16u);
  }

  v8 = self->_currentSession;
  if (v8 != sessionCopy)
  {
    [(RTIInputSystemSourceSession *)v8 setForwardingPayloadDelegate:0];
    [(RTIInputSystemSourceSession *)self->_currentSession removeSessionDelegate:self];
    cachedInputSystemDataPayload = self->_cachedInputSystemDataPayload;
    self->_cachedInputSystemDataPayload = 0;

    objc_storeStrong(&self->_currentSession, session);
    [(RTIInputSystemSourceSession *)self->_currentSession addSessionDelegate:self];
    [(RTIInputSystemSourceSession *)self->_currentSession setForwardingPayloadDelegate:self];
    currentForwardingDataPayload = [(RTIInputSystemSourceSession *)self->_currentSession currentForwardingDataPayload];
    [(TVRCRapportRemoteTextInputKeyboardImpl *)self handleTextActionPayload:currentForwardingDataPayload];
  }
}

- (TVRXKeyboardController)keyboardController
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardController);

  return WeakRetained;
}

void __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Keyboard failed to fetch current RemoteTextInput source session from television. Error %{public}@", &v2, 0xCu);
}

@end