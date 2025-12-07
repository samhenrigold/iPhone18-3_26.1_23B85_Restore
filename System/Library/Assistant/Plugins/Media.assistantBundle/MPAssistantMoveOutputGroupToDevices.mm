@interface MPAssistantMoveOutputGroupToDevices
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantMoveOutputGroupToDevices

- (void)performWithCompletion:(id)completion
{
  v76 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Move Output Group To Devices", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestAceHash;
    *buf = 138543362;
    v75 = v17;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Move Output Group To Devices (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v18 = self->_requestAceHash;
  v23 = objc_msgSend_hashedRouteUIDs(self, v19, v20, v21, v22);
  sub_2335057BC(@"Move Output Group To Devices", v18, v23);

  v28 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25, v26, v27);
  v33 = objc_msgSend_groupID(self, v29, v30, v31, v32);
  isEqualToString = objc_msgSend_isEqualToString_(v33, v34, @"LOCAL_DEVICE", v35, v36);

  if (isEqualToString)
  {
    v42 = 0;
  }

  else
  {
    v43 = objc_msgSend_groupID(self, v38, v39, v40, v41);
    objc_msgSend_addObject_(v28, v44, v43, v45, v46);

    v51 = objc_msgSend_hashedRouteUIDs(self, v47, v48, v49, v50);
    v56 = objc_msgSend_groupID(self, v52, v53, v54, v55);
    v42 = objc_msgSend_containsObject_(v51, v57, v56, v58, v59);
  }

  v60 = objc_msgSend_hashedRouteUIDs(self, v38, v39, v40, v41);
  objc_msgSend_addObjectsFromArray_(v28, v61, v60, v62, v63);

  v64 = objc_alloc_init(MEMORY[0x277D27840]);
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_2334F13C0;
  v69[3] = &unk_2789DB558;
  v70 = v64;
  selfCopy = self;
  v73 = v42;
  v72 = completionCopy;
  v65 = completionCopy;
  v66 = v64;
  objc_msgSend_decodeHashedRouteUIDs_completion_(v66, v67, v28, v69, v68);
}

@end