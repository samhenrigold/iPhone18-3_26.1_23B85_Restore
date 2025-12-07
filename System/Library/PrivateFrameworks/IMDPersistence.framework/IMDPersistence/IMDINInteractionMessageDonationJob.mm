@interface IMDINInteractionMessageDonationJob
- (IMDINInteractionMessageDonationJob)initWithContext:(id)context;
- (void)finishWithCompletion:(id)completion;
- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
@end

@implementation IMDINInteractionMessageDonationJob

- (IMDINInteractionMessageDonationJob)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = IMDINInteractionMessageDonationJob;
  v6 = [(IMDINInteractionMessageDonationJob *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    interactions = v7->_interactions;
    v7->_interactions = v8;
  }

  return v7;
}

- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  v11 = objc_msgSend_context(self, v8, v9, v10);
  isReindexing = objc_msgSend_isReindexing(v11, v12, v13, v14);

  if ((isReindexing & 1) == 0 && objc_msgSend_canDonateItemDictionary_(IMDIndexingUtilities, v16, dictionaryCopy, v17))
  {
    v20 = objc_msgSend_objectForKey_(dictionaryCopy, v18, @"flags", v19);
    v24 = objc_msgSend_unsignedLongLongValue(v20, v21, v22, v23);

    v27 = objc_msgSend_objectForKey_(dictionaryCopy, v25, @"time", v26);
    v30 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"plainBody", v29);
    v34 = v30;
    if (v27)
    {
      if (objc_msgSend_length(v30, v31, v32, v33))
      {
        if ((v24 & 4) == 0)
        {
          v38 = objc_msgSend_context(self, v35, v36, v37);
          objc_msgSend_reason(v38, v39, v40, v41);
          IsIncomingMessage = IMCoreSpotlightIndexReasonIsIncomingMessage();

          if (IsIncomingMessage)
          {
            v43 = [IMDINInteractionDonationContext alloc];
            v45 = objc_msgSend_initWithIndexableChatDictionary_messageDictionary_(v43, v44, chatDictionaryCopy, dictionaryCopy);
            v49 = objc_msgSend_sharedController(IMDINInteractionDonationController, v46, v47, v48);
            v51 = objc_msgSend_createInteractionWithContext_updateHandler_(v49, v50, v45, 0);

            if (v51)
            {
              v55 = objc_msgSend_interactions(self, v52, v53, v54);
              objc_msgSend_addObject_(v55, v56, v51, v57);
            }

            goto LABEL_20;
          }

          v58 = IMLogHandleForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v61 = 0;
            v59 = "Not donating INInteraction for non-incoming message";
            v60 = &v61;
            goto LABEL_18;
          }

LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v58 = IMLogHandleForCategory();
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v62 = 0;
        v59 = "Not donating INInteraction for message from me";
        v60 = &v62;
      }

      else
      {
        v58 = IMLogHandleForCategory();
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v63 = 0;
        v59 = "Not donating INInteraction for non-text message.";
        v60 = &v63;
      }
    }

    else
    {
      v58 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v64 = 0;
      v59 = "Not donating INInteraction for message without a date, to prevent message send from appearing to have taken place now.";
      v60 = &v64;
    }

LABEL_18:
    _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, v59, v60, 2u);
    goto LABEL_19;
  }

LABEL_21:
}

- (void)finishWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_interactions(self, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_donateInteractionWithCompletion_(*(*(&v16 + 1) + 8 * v15++), v11, &unk_1F2FA0CB0, v12);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v13);
  }

  completionCopy[2](completionCopy, 0);
}

@end