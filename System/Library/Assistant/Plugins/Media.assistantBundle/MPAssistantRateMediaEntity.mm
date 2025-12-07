@interface MPAssistantRateMediaEntity
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantRateMediaEntity

- (void)performWithCompletion:(id)completion
{
  v79[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  v14 = objc_msgSend_hashedRouteUID(self, v10, v11, v12, v13);

  if (v14)
  {
    v19 = objc_msgSend_hashedRouteUID(self, v15, v16, v17, v18);
    v79[0] = v19;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v79, 1, v21);
  }

  if (!objc_msgSend_length(self->_requestAceHash, v15, v16, v17, v18))
  {
    v26 = objc_msgSend_aceId(self, v22, v23, v24, v25);
    v27 = sub_233505670(@"Rate Media Entity", v26);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v27;
  }

  v29 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v34 = self->_requestAceHash;
    *buf = 138543874;
    v74 = v34;
    v75 = 2048;
    v76 = objc_msgSend_count(v14, v30, v31, v32, v33);
    v77 = 2048;
    v78 = objc_msgSend_rating(self, v35, v36, v37, v38);
    _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_DEFAULT, "Rate Media Entity (invoke) <%{public}@>: %lu UIDs rating %ld", buf, 0x20u);
  }

  sub_2335057BC(@"Rate Media Entity", self->_requestAceHash, v14);
  v43 = objc_msgSend_rating(self, v39, v40, v41, v42) / 5.0;
  *&v43 = v43;
  v71[0] = *MEMORY[0x277D27DB8];
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
  v71[1] = *MEMORY[0x277D27DC0];
  v72[0] = v48;
  v72[1] = @"com.apple.MediaAssistant.siri";
  v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v72, v71, 2);

  v51 = objc_alloc_init(MEMORY[0x277D27828]);
  v56 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v52, v53, v54, v55);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_2334F2DA4;
  v63[3] = &unk_2789DBBE8;
  v64 = v56;
  v65 = v14;
  v66 = v51;
  v67 = v50;
  v68 = v9;
  selfCopy = self;
  v70 = completionCopy;
  v57 = completionCopy;
  v58 = v9;
  v59 = v50;
  v60 = v51;
  v61 = v14;
  v62 = v56;
  sub_2334F2DA4(v63, 0);
}

@end