@interface MPAssistantStartPlayback
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantStartPlayback

- (void)performWithCompletion:(id)completion
{
  v85 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Start Playback", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_requestAceHash;
    v27 = objc_msgSend_hashedRouteUIDs(self, v22, v23, v24, v25);
    *buf = 138543618;
    v82 = v26;
    v83 = 2048;
    v84 = objc_msgSend_count(v27, v28, v29, v30, v31);
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Start Playback (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v32 = self->_requestAceHash;
  v37 = objc_msgSend_hashedRouteUIDs(self, v33, v34, v35, v36);
  sub_2335057BC(@"Start Playback", v32, v37);

  v79[0] = *MEMORY[0x277D27D08];
  v42 = objc_msgSend_refId(self, v38, v39, v40, v41);
  v79[1] = *MEMORY[0x277D27DC0];
  v80[0] = v42;
  v80[1] = @"com.apple.MediaAssistant.siri";
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v80, v79, 2);

  v49 = objc_msgSend_hashedRouteUIDs(self, v45, v46, v47, v48);
  v53 = objc_msgSend_containsObject_(v49, v50, @"LOCAL_DEVICE", v51, v52);

  if (v53)
  {
    v58 = 0;
  }

  else
  {
    v58 = objc_msgSend_hashedRouteUIDs(self, v54, v55, v56, v57);
  }

  v59 = objc_alloc_init(MEMORY[0x277D27828]);
  v64 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v60, v61, v62, v63);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_233501F48;
  v71[3] = &unk_2789DBBE8;
  v72 = v64;
  v73 = v58;
  v74 = v59;
  v75 = v44;
  v76 = v9;
  selfCopy = self;
  v78 = completionCopy;
  v65 = completionCopy;
  v66 = v9;
  v67 = v44;
  v68 = v59;
  v69 = v58;
  v70 = v64;
  sub_233501F48(v71, 0);
}

@end