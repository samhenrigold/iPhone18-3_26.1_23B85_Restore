@interface MPAssistantGetDynamiteClientState
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetDynamiteClientState

- (void)performWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277D477E0]);
  if (!objc_msgSend_length(self->_requestAceHash, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_aceId(self, v10, v11, v12, v13);
    v15 = sub_233505670(@"Get Dynamite Client State", v14);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v15;
  }

  v17 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_requestAceHash;
    *buf = 138543362;
    v25 = v18;
    _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_DEFAULT, "Get Dynamite Client State (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2334E7C10;
  v21[3] = &unk_2789DAEF0;
  v21[4] = self;
  v22 = v5;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v5;
  sub_2334E7C10(v21, 0);
}

@end