@interface MPAssistantAddMediaEntityToAcousticIDHistory
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaEntityToAcousticIDHistory

- (void)performWithCompletion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Add Media Entity To Acoustic ID History", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_adamId(self, v17, v18, v19, v20);
    v27 = objc_msgSend_affiliateId(self, v23, v24, v25, v26);
    *buf = 138543874;
    v63 = v21;
    v64 = 2114;
    v65 = v22;
    v66 = 2114;
    v67 = v27;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Acoustic ID History (invoke) <%{public}@>: adam ID %{public}@, affiliate ID %{public}@", buf, 0x20u);
  }

  v32 = objc_msgSend_adamId(self, v28, v29, v30, v31);
  v37 = objc_msgSend_longLongValue(v32, v33, v34, v35, v36);

  v42 = objc_msgSend_affiliateId(self, v38, v39, v40, v41);
  v43 = objc_alloc(MEMORY[0x277D7FC30]);
  v48 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v44, v45, v46, v47);
  v52 = objc_msgSend_initWithIdentity_(v43, v49, v48, v50, v51);

  v53 = objc_alloc(MEMORY[0x277D7FBF0]);
  v55 = objc_msgSend_initWithRequestContext_storeItemID_affiliateIdentifier_(v53, v54, v52, v37, v42);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_2334DD274;
  v60[3] = &unk_2789DAC48;
  v60[4] = self;
  v61 = completionCopy;
  v56 = completionCopy;
  objc_msgSend_performRequestWithCompletionHandler_(v55, v57, v60, v58, v59);
}

@end