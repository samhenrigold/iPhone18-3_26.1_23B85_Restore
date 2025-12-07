@interface TVRXKeyboardController
- (NSString)text;
- (TVRXKeyboardControllerDelegate)delegate;
- (id)_init;
- (void)_beginSessionWithAttributes:(id)attributes;
- (void)_editingSessionUpdatedAttributes:(id)attributes;
- (void)_editingSessionUpdatedText:(id)text;
- (void)_endSession;
- (void)_setKeyboardImpl:(id)impl;
- (void)sendTextActionPayload:(id)payload;
- (void)setText:(id)text;
@end

@implementation TVRXKeyboardController

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRXKeyboardController;
  return [(TVRXKeyboardController *)&v3 init];
}

- (NSString)text
{
  text = [(TVRXKeyboardImpl *)self->_keyboardImpl text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_287E5AB30;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setText:(id)text
{
  textCopy = &stru_287E5AB30;
  if (text)
  {
    textCopy = text;
  }

  v5 = textCopy;
  [(TVRXKeyboardImpl *)self->_keyboardImpl setText:v5];
}

- (void)sendTextActionPayload:(id)payload
{
  v11 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    v6 = _TVRCRemoteTextInputLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[TVRXKeyboardController sendTextActionPayload:]";
      v9 = 2112;
      v10 = payloadCopy;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - payload: %@", &v7, 0x16u);
    }

    [(TVRXKeyboardImpl *)self->_keyboardImpl setTextActionPayload:payloadCopy];
  }
}

- (void)_setKeyboardImpl:(id)impl
{
  v17 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v6 = _TVRCRemoteTextInputLog(implCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    keyboardImpl = self->_keyboardImpl;
    v13 = 138412546;
    v14 = implCopy;
    v15 = 2112;
    v16 = keyboardImpl;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Setting kbimpl: new: %@ old: %@", &v13, 0x16u);
  }

  p_keyboardImpl = &self->_keyboardImpl;
  v8 = self->_keyboardImpl;
  if (v8 != implCopy)
  {
    isEditing = [(TVRXKeyboardImpl *)v8 isEditing];
    [(TVRXKeyboardImpl *)*p_keyboardImpl setKeyboardController:0];
    v11 = *p_keyboardImpl;
    *p_keyboardImpl = 0;

    if (isEditing)
    {
      [(TVRXKeyboardController *)self _endSession];
    }

    objc_storeStrong(&self->_keyboardImpl, impl);
    [(TVRXKeyboardImpl *)self->_keyboardImpl setKeyboardController:self];
    if ([(TVRXKeyboardImpl *)self->_keyboardImpl isEditing])
    {
      attributes = [(TVRXKeyboardImpl *)self->_keyboardImpl attributes];
      [(TVRXKeyboardController *)self _beginSessionWithAttributes:attributes];
    }
  }
}

- (void)_editingSessionUpdatedText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardController:self didUpdateText:textCopy];
  }
}

- (void)_editingSessionUpdatedAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardController:self didUpdateAttributes:attributesCopy];
  }
}

- (void)_beginSessionWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardController:self beganTextEditingWithAttributes:attributesCopy];
  }
}

- (void)_endSession
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardControllerEndedTextEditing:self];
  }
}

- (TVRXKeyboardControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end