@interface MPAssistantSkipToNextItem
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSkipToNextItem

- (void)performWithCompletion:(id)completion
{
  v71[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  v70[0] = *MEMORY[0x277D27D08];
  v14 = objc_msgSend_refId(self, v10, v11, v12, v13);
  v70[1] = *MEMORY[0x277D27DC0];
  v71[0] = v14;
  v71[1] = @"com.apple.MediaAssistant.siri";
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v71, v70, 2);

  if (!objc_msgSend_length(self->_requestAceHash, v17, v18, v19, v20))
  {
    v25 = objc_msgSend_aceId(self, v21, v22, v23, v24);
    v26 = sub_233505670(@"Skip To Next Item", v25);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v26;
  }

  v28 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = self->_requestAceHash;
    v34 = objc_msgSend_hashedRouteUIDs(self, v29, v30, v31, v32);
    *buf = 138543618;
    v67 = v33;
    v68 = 2048;
    v69 = objc_msgSend_count(v34, v35, v36, v37, v38);
    _os_log_impl(&dword_2334D9000, v28, OS_LOG_TYPE_DEFAULT, "Skip To Next Item (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v39 = self->_requestAceHash;
  v44 = objc_msgSend_hashedRouteUIDs(self, v40, v41, v42, v43);
  sub_2335057BC(@"Skip To Next Item", v39, v44);

  v45 = objc_alloc_init(MEMORY[0x277D27828]);
  v50 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v46, v47, v48, v49);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_233500F50;
  v59[3] = &unk_2789DBAF8;
  v60 = v50;
  selfCopy = self;
  v62 = v45;
  v63 = v16;
  v64 = v9;
  v65 = completionCopy;
  v51 = completionCopy;
  v52 = v9;
  v53 = v16;
  v54 = v45;
  v55 = v50;
  sub_233500F50(v59, 0, v56, v57, v58);
}

@end