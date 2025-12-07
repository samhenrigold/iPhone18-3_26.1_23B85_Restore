@interface _IMDAggregateMessageIndexingJob
+ (id)_classNamesOfObjects:(id)objects;
- (_IMDAggregateMessageIndexingJob)initWithIntegrations:(id)integrations size:(int64_t)size context:(id)context;
- (void)finishWithCompletion:(id)completion;
- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
@end

@implementation _IMDAggregateMessageIndexingJob

- (_IMDAggregateMessageIndexingJob)initWithIntegrations:(id)integrations size:(int64_t)size context:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  integrationsCopy = integrations;
  contextCopy = context;
  v42.receiver = self;
  v42.super_class = _IMDAggregateMessageIndexingJob;
  v9 = [(_IMDAggregateMessageIndexingJob *)&v42 init];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
  timing = v9->_timing;
  v9->_timing = v10;

  v12 = dispatch_group_create();
  group = v9->_group;
  v9->_group = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = integrationsCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v38, v43, 16);
  if (v17)
  {
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v38 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          v24 = objc_msgSend_messageIndexingJobWithSize_context_timingCollection_(v20, v21, size, contextCopy, v9->_timing);
          if (v24)
          {
            objc_msgSend_addObject_(v14, v22, v24, v23);
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v38, v43, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v14, v25, v26, v27))
  {
    v31 = objc_msgSend_copy(v14, v28, v29, v30);
    indexingJobs = v9->_indexingJobs;
    v9->_indexingJobs = v31;

LABEL_15:
    v33 = v9;
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Dropping request to index messages as no indexing managers are interested in indexing messages", buf, 2u);
    }
  }

  v33 = 0;
LABEL_21:

  return v33;
}

+ (id)_classNamesOfObjects:(id)objects
{
  v39 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  if (objc_msgSend_count(objectsCopy, v4, v5, v6))
  {
    v10 = MEMORY[0x1E695DF70];
    v11 = objc_msgSend_count(objectsCopy, v7, v8, v9);
    v14 = objc_msgSend_arrayWithCapacity_(v10, v12, v11, v13);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = objectsCopy;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v34, v38, 16);
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = objc_opt_class();
          if (v21)
          {
            v23 = NSStringFromClass(v21);
            if (objc_msgSend_length(v23, v24, v25, v26, v34))
            {
              objc_msgSend_addObject_(v14, v27, v23, v28);
            }
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, &v34, v38, 16);
      }

      while (v18);
    }

    v32 = objc_msgSend_copy(v14, v29, v30, v31);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)finishWithCompletion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_1B7AE1AF0;
  v44[4] = sub_1B7AE2580;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v8 = objc_msgSend_indexingJobs(self, v5, v6, v7);
  v11 = objc_msgSend_initWithArray_(v4, v9, v8, v10);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = objc_msgSend_indexingJobs(self, v12, v13, v14);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v40, v46, 16);
  if (v20)
  {
    v21 = *v41;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        v24 = objc_msgSend_group(self, v17, v18, v19);
        dispatch_group_enter(v24);

        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = sub_1B7BC82E4;
        v35[3] = &unk_1E7CBC2E0;
        v39 = v44;
        v36 = v11;
        v37 = v23;
        selfCopy = self;
        objc_msgSend_finishWithCompletion_(v23, v25, v35, v26);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v40, v46, 16);
    }

    while (v20);
  }

  v30 = objc_msgSend_group(self, v27, v28, v29);
  v31 = IMDIndexingClientRequestQueue(v30);
  dispatch_time(0, 120000000000);
  v33 = v11;
  v34 = completionCopy;
  IMDispatchGroupNotifyWithTimeout();

  _Block_object_dispose(v44, 8);
}

- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = objc_msgSend_indexingJobs(self, v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v22, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_processMessageDictionary_chatDictionary_(*(*(&v18 + 1) + 8 * v17++), v14, dictionaryCopy, chatDictionaryCopy);
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v18, v22, 16);
    }

    while (v15);
  }
}

@end