@interface MPAssistantGetMusicInfluence
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetMusicInfluence

- (void)performWithCompletion:(id)completion
{
  v79 = *MEMORY[0x277D85DE8];
  requestAceHash = self->_requestAceHash;
  completionCopy = completion;
  if (!objc_msgSend_length(requestAceHash, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_aceId(self, v10, v11, v12, v13);
    v15 = sub_233505670(@"Get Music Influence", v14);
    v16 = self->_requestAceHash;
    self->_requestAceHash = v15;
  }

  v17 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_requestAceHash;
    v75 = 138543362;
    v76 = v18;
    _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_DEFAULT, "Get Music Influence (invoke) <%{public}@>: invoked", &v75, 0xCu);
  }

  v23 = objc_msgSend_standardUserDefaults(MEMORY[0x277CD6008], v19, v20, v21, v22);
  v28 = objc_msgSend_isPrivateListeningEnabled(v23, v24, v25, v26, v27);
  isPrivateListeningEnabledForCurrentAccessory = objc_msgSend_BOOLValue(v28, v29, v30, v31, v32);

  v38 = objc_msgSend_monitorForCurrentUser(MEMORY[0x277CD5D98], v34, v35, v36, v37);
  v43 = v38;
  if (v38)
  {
    isPrivateListeningEnabledForCurrentAccessory = objc_msgSend_isPrivateListeningEnabledForCurrentAccessory(v38, v39, v40, v41, v42);
  }

  v44 = objc_alloc_init(MEMORY[0x277D47800]);
  objc_msgSend_setValue_(v44, v45, isPrivateListeningEnabledForCurrentAccessory ^ 1u, v46, v47);
  v48 = objc_alloc_init(MEMORY[0x277D47830]);
  objc_msgSend_setSetting_(v48, v49, v44, v50, v51);
  if (!objc_msgSend_length(self->_requestAceHash, v52, v53, v54, v55))
  {
    v60 = objc_msgSend_aceId(self, v56, v57, v58, v59);
    v61 = sub_233505670(@"Get Music Influence", v60);
    v62 = self->_requestAceHash;
    self->_requestAceHash = v61;
  }

  v63 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v68 = self->_requestAceHash;
    v69 = objc_msgSend_dictionary(v48, v64, v65, v66, v67);
    v75 = 138543618;
    v76 = v68;
    v77 = 2114;
    v78 = v69;
    _os_log_impl(&dword_2334D9000, v63, OS_LOG_TYPE_DEFAULT, "Get Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v75, 0x16u);
  }

  v74 = objc_msgSend_dictionary(v48, v70, v71, v72, v73);
  completionCopy[2](completionCopy, v74);
}

@end