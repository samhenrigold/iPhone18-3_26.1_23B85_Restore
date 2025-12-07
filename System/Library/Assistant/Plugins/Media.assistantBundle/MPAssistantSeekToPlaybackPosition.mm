@interface MPAssistantSeekToPlaybackPosition
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSeekToPlaybackPosition

- (void)performWithCompletion:(id)completion
{
  v91[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  v90[0] = *MEMORY[0x277D27D50];
  v10 = MEMORY[0x277CCABB0];
  v15 = objc_msgSend_positionInMilliseconds(self, v11, v12, v13, v14);
  v20 = objc_msgSend_longValue(v15, v16, v17, v18, v19);
  if (v20 >= 0)
  {
    v25 = v20;
  }

  else
  {
    v25 = -v20;
  }

  v26 = objc_msgSend_numberWithDouble_(v10, v21, v22, v23, v24, v25 / 1000.0);
  v90[1] = *MEMORY[0x277D27DC0];
  v91[0] = v26;
  v91[1] = @"com.apple.MediaAssistant.siri";
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v91, v90, 2);

  if (!objc_msgSend_length(self->_requestAceHash, v29, v30, v31, v32))
  {
    v37 = objc_msgSend_aceId(self, v33, v34, v35, v36);
    v38 = sub_233505670(@"Seek To Playback Position", v37);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v38;
  }

  v40 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v45 = self->_requestAceHash;
    v46 = objc_msgSend_hashedRouteUIDs(self, v41, v42, v43, v44);
    v51 = objc_msgSend_count(v46, v47, v48, v49, v50);
    v56 = objc_msgSend_positionInMilliseconds(self, v52, v53, v54, v55);
    *buf = 138543874;
    v85 = v45;
    v86 = 2048;
    v87 = v51;
    v88 = 2114;
    v89 = v56;
    _os_log_impl(&dword_2334D9000, v40, OS_LOG_TYPE_DEFAULT, "Seek To Playback Position (invoke) <%{public}@>: %lu UIDs, %{public}@ position", buf, 0x20u);
  }

  v57 = self->_requestAceHash;
  v62 = objc_msgSend_hashedRouteUIDs(self, v58, v59, v60, v61);
  sub_2335057BC(@"Seek To Playback Position", v57, v62);

  v63 = objc_alloc_init(MEMORY[0x277D27828]);
  v68 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v64, v65, v66, v67);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_2334F603C;
  v77[3] = &unk_2789DBAF8;
  v78 = v68;
  selfCopy = self;
  v80 = v63;
  v81 = v28;
  v82 = v9;
  v83 = completionCopy;
  v69 = completionCopy;
  v70 = v9;
  v71 = v28;
  v72 = v63;
  v73 = v68;
  sub_2334F603C(v77, 0, v74, v75, v76);
}

@end