@interface MPAssistantDislikesMediaEntity
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantDislikesMediaEntity

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  requestAceHash = self->_requestAceHash;
  userIdentity = self->_userIdentity;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334E72B8;
  v8[3] = &unk_2789DB2D8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  sub_233505CB8(@"Dislikes Media Entity", requestAceHash, 22, userIdentity, v8);
}

- (void)performWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Dislikes Media Entity", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestAceHash;
    *buf = 138543362;
    v33 = v17;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v18 = self->_requestAceHash;
  v23 = objc_msgSend_influencedUserSharedUserId(self, v19, v20, v21, v22);
  v28 = objc_msgSend_influencedUserSharedUserId(self, v24, v25, v26, v27);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2334E7594;
  v30[3] = &unk_2789DB648;
  v30[4] = self;
  v31 = completionCopy;
  v29 = completionCopy;
  sub_233506A24(@"Dislikes Media Entity", v18, v23, v28, v30);
}

@end