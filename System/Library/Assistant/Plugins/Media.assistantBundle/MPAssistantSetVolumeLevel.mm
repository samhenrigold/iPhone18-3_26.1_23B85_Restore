@interface MPAssistantSetVolumeLevel
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetVolumeLevel

- (void)performWithCompletion:(id)completion
{
  v72 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Set Volume Level", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_actionType(self, v28, v29, v30, v31);
    v37 = objc_msgSend_volumeValue(self, v33, v34, v35, v36);
    *buf = 138544386;
    v63 = v21;
    v64 = 2048;
    v65 = v27;
    v66 = 2114;
    v67 = v32;
    v68 = 2114;
    v69 = v37;
    v70 = 1024;
    v71 = objc_msgSend_acknowledgedExceedingVolumeLimit(self, v38, v39, v40, v41);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Volume Level (invoke) <%{public}@>: %lu UIDs, %{public}@ action, %{public}@ volume, %{BOOL}u ack", buf, 0x30u);
  }

  v42 = self->_requestAceHash;
  v47 = objc_msgSend_hashedRouteUIDs(self, v43, v44, v45, v46);
  sub_2335057BC(@"Set Volume Level", v42, v47);

  v48 = objc_alloc_init(MEMORY[0x277D27840]);
  v53 = objc_msgSend_hashedRouteUIDs(self, v49, v50, v51, v52);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_2334FEE54;
  v58[3] = &unk_2789DBA80;
  v59 = v48;
  selfCopy = self;
  v61 = completionCopy;
  v54 = completionCopy;
  v55 = v48;
  objc_msgSend_decodeHashedRouteUIDs_completion_(v55, v56, v53, v58, v57);
}

@end