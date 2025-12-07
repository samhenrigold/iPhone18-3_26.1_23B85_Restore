@interface MPAssistantSkipToPreviousItem
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSkipToPreviousItem

- (void)performWithCompletion:(id)completion
{
  v72[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  v71[0] = *MEMORY[0x277D27D08];
  v14 = objc_msgSend_refId(self, v10, v11, v12, v13);
  v15 = *MEMORY[0x277D27DD0];
  v72[0] = v14;
  v72[1] = MEMORY[0x277CBEC38];
  v16 = *MEMORY[0x277D27DC0];
  v71[1] = v15;
  v71[2] = v16;
  v72[2] = @"com.apple.MediaAssistant.siri";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v72, v71, 3);

  if (!objc_msgSend_length(self->_requestAceHash, v19, v20, v21, v22))
  {
    v27 = objc_msgSend_aceId(self, v23, v24, v25, v26);
    v28 = sub_233505670(@"Seek To Previous Item", v27);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v28;
  }

  v30 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v35 = self->_requestAceHash;
    v36 = objc_msgSend_hashedRouteUIDs(self, v31, v32, v33, v34);
    *buf = 138543618;
    v68 = v35;
    v69 = 2048;
    v70 = objc_msgSend_count(v36, v37, v38, v39, v40);
    _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_DEFAULT, "Seek To Previous Item (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v41 = self->_requestAceHash;
  v46 = objc_msgSend_hashedRouteUIDs(self, v42, v43, v44, v45);
  sub_2335057BC(@"Seek To Previous Item", v41, v46);

  v47 = objc_alloc_init(MEMORY[0x277D27828]);
  command = self->command;
  self->command = v47;

  v53 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v49, v50, v51, v52);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_233501758;
  v61[3] = &unk_2789DBB70;
  v62 = v53;
  selfCopy = self;
  v64 = v18;
  v65 = v9;
  v66 = completionCopy;
  v54 = completionCopy;
  v55 = v9;
  v56 = v18;
  v57 = v53;
  sub_233501758(v61, 0, v58, v59, v60);
}

@end