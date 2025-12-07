@interface MPAssistantGetVolumeLevel
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetVolumeLevel

- (void)performWithCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Get Volume Level", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    *buf = 138543618;
    v48 = v21;
    v49 = 2048;
    v50 = objc_msgSend_count(v22, v23, v24, v25, v26);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Get Volume Level (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v27 = self->_requestAceHash;
  v32 = objc_msgSend_hashedRouteUIDs(self, v28, v29, v30, v31);
  sub_2335057BC(@"Get Volume Level", v27, v32);

  v33 = objc_alloc_init(MEMORY[0x277D27840]);
  v38 = objc_msgSend_hashedRouteUIDs(self, v34, v35, v36, v37);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2334ECBDC;
  v43[3] = &unk_2789DBA80;
  v44 = v33;
  selfCopy = self;
  v46 = completionCopy;
  v39 = completionCopy;
  v40 = v33;
  objc_msgSend_decodeHashedRouteUIDs_completion_(v40, v41, v38, v43, v42);
}

@end