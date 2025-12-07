@interface IMDSmartRepliesMessageDonationJob
- (BOOL)isMessageTimeWithinBoundsForSmartRepliesDonation:(id)donation;
- (IMDSmartRepliesMessageDonationJob)init;
- (id)srMessageFromMessageDictionary:(id)dictionary;
- (id)srRequestForMessage:(id)message;
- (void)finishWithCompletion:(id)completion;
- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
@end

@implementation IMDSmartRepliesMessageDonationJob

- (IMDSmartRepliesMessageDonationJob)init
{
  v6.receiver = self;
  v6.super_class = IMDSmartRepliesMessageDonationJob;
  v2 = [(IMDSmartRepliesMessageDonationJob *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    srMessages = v2->_srMessages;
    v2->_srMessages = v3;
  }

  return v2;
}

- (BOOL)isMessageTimeWithinBoundsForSmartRepliesDonation:(id)donation
{
  if (!donation)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF00];
  donationCopy = donation;
  v8 = objc_msgSend_date(v3, v5, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v8, v9, donationCopy, v10);
  v12 = v11;

  v13 = v12 < 180.0;
  return v13;
}

- (id)srMessageFromMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"guid", v6);
  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v8, @"time", v9);
  if (objc_msgSend_isMessageTimeWithinBoundsForSmartRepliesDonation_(self, v11, v10, v12))
  {
    v80 = 0;
    v81 = &v80;
    v82 = 0x2050000000;
    v16 = qword_1EDBE5B48;
    v83 = qword_1EDBE5B48;
    if (!qword_1EDBE5B48)
    {
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = sub_1B7B8F1D4;
      v79[3] = &unk_1E7CB6EA8;
      v79[4] = &v80;
      sub_1B7B8F1D4(v79, v13, v14, v15);
      v16 = v81[3];
    }

    v17 = v16;
    _Block_object_dispose(&v80, 8);
    v18 = objc_alloc_init(v16);
    v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v19, @"plainBody", v20);
    if (objc_msgSend_length(v21, v22, v23, v24))
    {
      v27 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v25, @"associatedMessageType", v26);
      v31 = objc_msgSend_integerValue(v27, v28, v29, v30);

      if ((v31 - 2000) >= 7 && (v31 - 3000) >= 7)
      {
        objc_msgSend_setTapBack_(v18, v32, 0, v33);
      }

      else
      {
        objc_msgSend_setTapBack_(v18, v32, 1, v33);
      }

      v39 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v35, @"timeRead", v36);
      if (v39)
      {
        v40 = objc_alloc(MEMORY[0x1E695DF00]);
        v44 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v40, v41, v42, v43, 0.0);
        isEqual = objc_msgSend_isEqual_(v39, v45, v44, v46);
        objc_msgSend_setRead_(v18, v48, isEqual ^ 1u, v49);
      }

      else
      {
        objc_msgSend_setRead_(v18, v37, 0, v38);
      }

      objc_msgSend_setEmote_(v18, v50, 0, v51);
      v56 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v54, @"flags", v55);
      v60 = objc_msgSend_unsignedLongLongValue(v56, v57, v58, v59);

      if ((v60 & 4) != 0)
      {
        objc_msgSend_setSenderIdentifier_(v18, v61, 0, v62);
      }

      else
      {
        v63 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v61, @"handle", v62);
        v67 = objc_msgSend_copy(v63, v64, v65, v66);
        objc_msgSend_setSenderIdentifier_(v18, v68, v67, v69);
      }

      v73 = objc_msgSend_copy(v21, v70, v71, v72);
      objc_msgSend_setSummary_(v18, v74, v73, v75);

      objc_msgSend_setDateSent_(v18, v76, v10, v77);
      v52 = v18;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          LOWORD(v79[0]) = 0;
          _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "Skipping donation of message to SmartReplies due to nil text", v79, 2u);
        }
      }

      v52 = 0;
    }
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CF8AD4(v7, v18);
    }

    v52 = 0;
  }

  return v52;
}

- (id)srRequestForMessage:(id)message
{
  v37[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = messageCopy;
  if (messageCopy)
  {
    v8 = objc_msgSend_senderIdentifier(messageCopy, v4, v5, v6);

    v37[0] = v7;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v37, 1);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v14 = qword_1EDBE5B38;
    v36 = qword_1EDBE5B38;
    if (!qword_1EDBE5B38)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1B7B8F394;
      v32[3] = &unk_1E7CB6EA8;
      v32[4] = &v33;
      sub_1B7B8F394(v32, v10, v11, v12);
      v14 = v34[3];
    }

    v15 = v14;
    _Block_object_dispose(&v33, 8);
    v16 = [v14 alloc];
    if (v8)
    {
      v18 = objc_msgSend_initWithType_receivedMessages_(v16, v17, 0, v13);
    }

    else
    {
      v18 = objc_msgSend_initWithType_receivedMessages_(v16, v17, 0, MEMORY[0x1E695E0F0]);
    }

    v21 = v18;
    if (v18)
    {
      if (v8)
      {
        objc_msgSend_setSenderMessages_(v18, v19, 0, v20);
      }

      else
      {
        objc_msgSend_setSenderMessages_(v18, v19, v13, v20);
      }

      objc_msgSend_setIncludesDynamicSuggestions_(v21, v22, 1, v23);
      v27 = objc_msgSend_dateSent(v7, v24, v25, v26);
      objc_msgSend_setRequestDate_(v21, v28, v27, v29);

      v30 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  v5 = objc_msgSend_srMessageFromMessageDictionary_(self, a2, dictionary, chatDictionary);
  if (v5)
  {
    v12 = v5;
    v9 = objc_msgSend_srMessages(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v10, v12, v11);

    v5 = v12;
  }
}

- (void)finishWithCompletion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_msgSend_srMessages(self, v4, v5, v6);
  v11 = objc_msgSend_count(v7, v8, v9, v10);

  if (v11)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v15 = qword_1EDBE5B58;
    v53 = qword_1EDBE5B58;
    if (!qword_1EDBE5B58)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = sub_1B7B8F3EC;
      v49[3] = &unk_1E7CB6EA8;
      v49[4] = &v50;
      sub_1B7B8F3EC(v49, v12, v13, v14);
      v15 = v51[3];
    }

    v16 = v15;
    _Block_object_dispose(&v50, 8);
    v20 = objc_msgSend_sharedManager(v15, v17, v18, v19);
    v21 = dispatch_group_create();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = objc_msgSend_srMessages(self, v22, v23, v24);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v45, v54, 16);
    if (v26)
    {
      v27 = *v46;
      do
      {
        v28 = 0;
        do
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v45 + 1) + 8 * v28);
          dispatch_group_enter(v21);
          v30 = objc_autoreleasePoolPush();
          v33 = objc_msgSend_srRequestForMessage_(self, v31, v29, v32);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = sub_1B7B8F190;
          v43[3] = &unk_1E7CBB548;
          v44 = v21;
          objc_msgSend_suggestionsForRequest_withCompletion_(v20, v34, v33, v43);

          objc_autoreleasePoolPop(v30);
          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v45, v54, 16);
      }

      while (v26);
    }

    v37 = IMDIndexingClientRequestQueue(v36);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B8F198;
    block[3] = &unk_1E7CB67C0;
    v42 = completionCopy;
    dispatch_group_notify(v21, v37, block);

    v38 = completionCopy;
  }

  else
  {
    v38 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

@end