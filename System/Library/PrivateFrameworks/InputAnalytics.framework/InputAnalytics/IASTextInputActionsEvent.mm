@interface IASTextInputActionsEvent
- (IASTextInputActionsEvent)initWithbundleId:(id)id;
- (void)dispatchEvent:(id)event;
- (void)resetMeasures;
@end

@implementation IASTextInputActionsEvent

- (IASTextInputActionsEvent)initWithbundleId:(id)id
{
  idCopy = id;
  v16.receiver = self;
  v16.super_class = IASTextInputActionsEvent;
  v6 = [(IASTextInputActionsEvent *)&v16 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_netCharacters = 0u;
    *&v6->_netEmojiCharacters = 0u;
    *&v6->_source = 0u;
    sessionActions = v6->_sessionActions;
    v6->_inputActionCount = 0;
    v6->_sessionActions = @"T";

    *&v7->_isEmojiSearch = 0;
    v7->_sessionIsModeless = 0;
    language = v7->_language;
    v7->_language = @"None";

    region = v7->_region;
    v7->_region = @"None";

    keyboardVariant = v7->_keyboardVariant;
    v7->_keyboardVariant = @"None";

    keyboardLayout = v7->_keyboardLayout;
    v7->_keyboardLayout = @"None";

    keyboardType = v7->_keyboardType;
    v7->_keyboardType = @"None";

    inputModeIdentifier = v7->_inputModeIdentifier;
    v7->_inputModeIdentifier = @"None";

    objc_storeStrong(&v7->_bundleId, id);
  }

  return v7;
}

- (void)dispatchEvent:(id)event
{
  v41 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  isDispatchable = objc_msgSend_isDispatchable(self, v5, v6);
  if (eventCopy && isDispatchable)
  {
    v34[0] = @"src";
    v33 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, self->_source);
    v35[0] = v33;
    v34[1] = @"type";
    v32 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, self->_type);
    v35[1] = v32;
    v34[2] = @"netChars";
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, self->_netCharacters);
    v35[2] = v11;
    v34[3] = @"usrRmChars";
    v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v12, self->_userRemovedCharacters);
    v35[3] = v13;
    v34[4] = @"netEmojis";
    v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v14, self->_netEmojiCharacters);
    v35[4] = v15;
    v34[5] = @"usrRmEmojis";
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v16, self->_userRemovedEmojiCharacters);
    v35[5] = v17;
    v34[6] = @"isEmojiSearch";
    v19 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v18, self->_isEmojiSearch);
    v35[6] = v19;
    v34[7] = @"isMarkedText";
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v20, self->_isMarkedText);
    v35[7] = v21;
    v34[8] = @"inputActionCount";
    v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v22, self->_inputActionCount);
    v35[8] = v23;
    v34[9] = @"sessionIsModeless";
    v25 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v24, self->_sessionIsModeless);
    sessionActions = self->_sessionActions;
    language = self->_language;
    v35[9] = v25;
    v35[10] = sessionActions;
    v34[10] = @"sessionActions";
    v34[11] = @"language";
    v35[11] = language;
    v36 = *&self->_region;
    v34[12] = @"region";
    v34[13] = @"kbVariant";
    v34[14] = @"kbLayout";
    v34[15] = @"kbType";
    keyboardType = self->_keyboardType;
    keyboardLayout = self->_keyboardLayout;
    v38 = keyboardType;
    v34[16] = @"kbConfiguration";
    v34[17] = @"bundleId";
    bundleId = self->_bundleId;
    inputModeIdentifier = self->_inputModeIdentifier;
    v40 = bundleId;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v35, v34, 18);

    eventCopy[2](eventCopy, v31);
  }
}

- (void)resetMeasures
{
  self->_inputActionCount = 0;
  *&self->_netCharacters = 0u;
  *&self->_netEmojiCharacters = 0u;
}

@end