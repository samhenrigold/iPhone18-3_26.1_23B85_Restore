@interface MPAssistantDecreasePlaybackSpeed
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantDecreasePlaybackSpeed

- (void)performWithCompletion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Decrease Playback Speed", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_requestAceHash;
    v27 = objc_msgSend_hashedRouteUIDs(self, v22, v23, v24, v25);
    *buf = 138543618;
    v65 = v26;
    v66 = 2048;
    v67 = objc_msgSend_count(v27, v28, v29, v30, v31);
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Decrease Playback Speed (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v32 = self->_requestAceHash;
  v37 = objc_msgSend_hashedRouteUIDs(self, v33, v34, v35, v36);
  sub_2335057BC(@"Decrease Playback Speed", v32, v37);

  v38 = *MEMORY[0x277D27DC0];
  v62[0] = *MEMORY[0x277D27DA0];
  v62[1] = v38;
  v63[0] = &unk_2848D8C10;
  v63[1] = @"com.apple.MediaAssistant.siri";
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v63, v62, 2);
  v41 = objc_alloc_init(MEMORY[0x277D27828]);
  v46 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v42, v43, v44, v45);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2334E6C8C;
  v55[3] = &unk_2789DBAF8;
  v56 = v46;
  selfCopy = self;
  v58 = v41;
  v59 = v40;
  v60 = v9;
  v61 = completionCopy;
  v47 = completionCopy;
  v48 = v9;
  v49 = v40;
  v50 = v41;
  v51 = v46;
  sub_2334E6C8C(v55, 0, v52, v53, v54);
}

@end