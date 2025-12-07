@interface MPAssistantSetPlaybackSpeed
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetPlaybackSpeed

- (void)performWithCompletion:(id)completion
{
  v85 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Seek To Playback Speed", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_requestAceHash;
    v27 = objc_msgSend_hashedRouteUIDs(self, v22, v23, v24, v25);
    v32 = objc_msgSend_count(v27, v28, v29, v30, v31);
    objc_msgSend_scalingFactor(self, v33, v34, v35, v36);
    *buf = 138543874;
    v80 = v26;
    v81 = 2048;
    v82 = v32;
    v83 = 2048;
    v84 = v37;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Seek To Playback Speed (invoke) <%{public}@>: %lu UIDs, %f speed", buf, 0x20u);
  }

  v38 = self->_requestAceHash;
  v43 = objc_msgSend_hashedRouteUIDs(self, v39, v40, v41, v42);
  sub_2335057BC(@"Seek To Playback Speed", v38, v43);

  v77[0] = *MEMORY[0x277D27D60];
  v44 = MEMORY[0x277CCABB0];
  objc_msgSend_scalingFactor(self, v45, v46, v47, v48);
  v53 = objc_msgSend_numberWithDouble_(v44, v49, v50, v51, v52);
  v77[1] = *MEMORY[0x277D27DC0];
  v78[0] = v53;
  v78[1] = @"com.apple.MediaAssistant.siri";
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v78, v77, 2);

  v56 = objc_alloc_init(MEMORY[0x277D27828]);
  v61 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v57, v58, v59, v60);
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_2334F6DD8;
  v70[3] = &unk_2789DBAF8;
  v71 = v61;
  selfCopy = self;
  v73 = v56;
  v74 = v55;
  v75 = v9;
  v76 = completionCopy;
  v62 = completionCopy;
  v63 = v9;
  v64 = v55;
  v65 = v56;
  v66 = v61;
  sub_2334F6DD8(v70, 0, v67, v68, v69);
}

@end