@interface IMDCoreSpotlightSelectiveReindexingJob
+ (id)_sanitizedSearchableItemIdentifiers:(id)identifiers;
- (BOOL)_indexChats;
- (BOOL)_indexMessages;
- (IMDCoreSpotlightSelectiveReindexingJob)initWithItemIdentifiers:(id)identifiers;
- (void)_enterGroup;
- (void)_leaveGroup;
- (void)runWithAcknowledgementHandler:(id)handler;
@end

@implementation IMDCoreSpotlightSelectiveReindexingJob

+ (id)_sanitizedSearchableItemIdentifiers:(id)identifiers
{
  v37 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = MEMORY[0x1E695DFA8];
  v8 = objc_msgSend_count(identifiersCopy, v5, v6, v7);
  v11 = objc_msgSend_setWithCapacity_(v4, v9, v8, v10);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = identifiersCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v36, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_componentsSeparatedByString_(*(*(&v32 + 1) + 8 * i), v15, @"/", v16, v32);
        v24 = objc_msgSend_lastObject(v20, v21, v22, v23);
        objc_msgSend_addObject_(v11, v25, v24, v26);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v32, v36, 16);
    }

    while (v17);
  }

  v30 = objc_msgSend_allObjects(v11, v27, v28, v29);

  return v30;
}

- (IMDCoreSpotlightSelectiveReindexingJob)initWithItemIdentifiers:(id)identifiers
{
  v65 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v63.receiver = self;
  v63.super_class = IMDCoreSpotlightSelectiveReindexingJob;
  v5 = [(IMDCoreSpotlightSelectiveReindexingJob *)&v63 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v54 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v55 = identifiersCopy;
  v8 = identifiersCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v59, v64, 16);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v60;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v59 + 1) + 8 * i);
      if ((IMFileTransferGUIDIsTemporary() & 1) == 0)
      {
        v19 = IMMessageGuidFromIMFileTransferGuid();
        if (v19)
        {
          objc_msgSend_addObject_(v6, v26, v19, v27);
        }

        goto LABEL_12;
      }

      if (objc_msgSend_containsString_(v14, v15, @"/", v16))
      {
        v19 = objc_msgSend_componentsSeparatedByString_(v14, v17, @"/", v18);
        v23 = objc_msgSend_lastObject(v19, v20, v21, v22);
        objc_msgSend_addObject_(v6, v24, v23, v25);

LABEL_12:
        continue;
      }

      objc_msgSend_addObject_(v7, v17, v14, v18);
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v28, &v59, v64, 16);
  }

  while (v11);
LABEL_16:

  v35 = v54;
  if (objc_msgSend_count(v7, v29, v30, v31))
  {
    v36 = objc_msgSend_synchronousDatabase(IMDDatabase, v32, v33, v34);
    v40 = objc_msgSend_allObjects(v7, v37, v38, v39);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_1B7BC3238;
    v56[3] = &unk_1E7CBC268;
    v57 = v6;
    v58 = v54;
    objc_msgSend_resolveSpotlightItemIdentifiers_completionHandler_(v36, v41, v40, v56);
  }

  v42 = objc_msgSend_allObjects(v6, v32, v33, v34, v54);
  messageGUIDs = v5->_messageGUIDs;
  v5->_messageGUIDs = v42;

  v47 = objc_msgSend_allObjects(v35, v44, v45, v46);
  chatGUIDs = v5->_chatGUIDs;
  v5->_chatGUIDs = v47;

  v49 = [IMDIndexingContext alloc];
  v51 = objc_msgSend_initForReindexing_reason_(v49, v50, 1, 7);
  context = v5->_context;
  v5->_context = v51;

  identifiersCopy = v55;
LABEL_19:

  return v5;
}

- (void)runWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  block = handlerCopy;
  if (handlerCopy)
  {
    handlerCopy = dispatch_group_create();
  }

  group = self->_group;
  self->_group = handlerCopy;

  v9 = objc_msgSend__indexMessages(self, v6, v7, v8);
  v13 = objc_msgSend__indexChats(self, v10, v11, v12);
  v16 = block;
  if (block)
  {
    if ((v9 | v13))
    {
      v17 = objc_msgSend_group(self, block, v14, v15);
      v18 = dispatch_get_global_queue(2, 0);
      dispatch_group_notify(v17, v18, block);
    }

    else
    {
      (*(block + 2))(block);
    }

    v16 = block;
  }
}

- (void)_enterGroup
{
  v5 = objc_msgSend_group(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_group(self, v6, v7, v8);
    dispatch_group_enter(v9);
  }
}

- (void)_leaveGroup
{
  v5 = objc_msgSend_group(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_group(self, v6, v7, v8);
    dispatch_group_leave(v9);
  }
}

- (BOOL)_indexMessages
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_messageGUIDs(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_messageGUIDs(self, v11, v12, v13);
      *buf = 134217984;
      v37 = objc_msgSend_count(v14, v15, v16, v17);
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Going to index %ld messages due to selective reindexing request", buf, 0xCu);
    }

    objc_msgSend__enterGroup(self, v18, v19, v20);
    v24 = objc_msgSend_queryProvider(IMDIndexingController, v21, v22, v23);
    v28 = objc_msgSend_messageGUIDs(self, v25, v26, v27);
    v32 = objc_msgSend_context(self, v29, v30, v31);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7BC35F4;
    v35[3] = &unk_1E7CB6C58;
    v35[4] = self;
    objc_msgSend_addMessageGUIDs_context_completionHandler_(v24, v33, v28, v32, v35);
  }

  return v9 != 0;
}

- (BOOL)_indexChats
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_chatGUIDs(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_chatGUIDs(self, v11, v12, v13);
      *buf = 134217984;
      v37 = objc_msgSend_count(v14, v15, v16, v17);
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Going to index %ld chats due to selective reindexing request", buf, 0xCu);
    }

    objc_msgSend__enterGroup(self, v18, v19, v20);
    v24 = objc_msgSend_queryProvider(IMDIndexingController, v21, v22, v23);
    v28 = objc_msgSend_chatGUIDs(self, v25, v26, v27);
    v32 = objc_msgSend_context(self, v29, v30, v31);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7BC3900;
    v35[3] = &unk_1E7CB6C58;
    v35[4] = self;
    objc_msgSend_addChatGUIDs_context_completionHandler_(v24, v33, v28, v32, v35);
  }

  return v9 != 0;
}

@end