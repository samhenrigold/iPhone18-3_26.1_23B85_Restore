@interface MPAssistantGeniusSummon
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGeniusSummon

- (void)performWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D47540];
  completionCopy = completion;
  v6 = [v4 alloc];
  v10 = objc_msgSend_initWithReason_(v6, v7, @"Unsupported Feature", v8, v9);
  if (!objc_msgSend_length(self->_requestAceHash, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_aceId(self, v15, v16, v17, v18);
    v20 = sub_233505670(@"Genius Summon", v19);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v20;
  }

  v22 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v27 = self->_requestAceHash;
    v28 = objc_msgSend_dictionary(v10, v23, v24, v25, v26);
    v34 = 138543618;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_ERROR, "Genius Summon (completion) <%{public}@>: notifying assistant %{public}@", &v34, 0x16u);
  }

  v33 = objc_msgSend_dictionary(v10, v29, v30, v31, v32);
  completionCopy[2](completionCopy, v33);
}

@end