@interface MPAssistantSetRepeatMode
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetRepeatMode

- (void)performWithCompletion:(id)completion
{
  v107 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Set Repeat Mode", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_requestAceHash;
    v27 = objc_msgSend_hashedRouteUIDs(self, v22, v23, v24, v25);
    v32 = objc_msgSend_count(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_repeatMode(self, v33, v34, v35, v36);
    *buf = 138543874;
    v102 = v26;
    v103 = 2048;
    v104 = v32;
    v105 = 2114;
    v106 = v37;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Set Repeat Mode (invoke) <%{public}@>: %lu UIDs, %{public}@ mode", buf, 0x20u);
  }

  v38 = self->_requestAceHash;
  v43 = objc_msgSend_hashedRouteUIDs(self, v39, v40, v41, v42);
  sub_2335057BC(@"Set Repeat Mode", v38, v43);

  v48 = objc_msgSend_repeatMode(self, v44, v45, v46, v47);
  LOBYTE(v43) = objc_msgSend_isEqualToString_(v48, v49, *MEMORY[0x277D486F8], v50, v51);

  if (v43)
  {
    v56 = 3;
  }

  else
  {
    v57 = objc_msgSend_repeatMode(self, v52, v53, v54, v55);
    isEqualToString = objc_msgSend_isEqualToString_(v57, v58, *MEMORY[0x277D48708], v59, v60);

    if (isEqualToString)
    {
      v56 = 2;
    }

    else
    {
      v63 = objc_msgSend_repeatMode(self, v52, v62, v54, v55);
      v67 = objc_msgSend_isEqualToString_(v63, v64, *MEMORY[0x277D48700], v65, v66);

      if ((v67 & 1) == 0)
      {
        v84 = objc_alloc_init(MEMORY[0x277D47208]);
        v83 = objc_msgSend_dictionary(v84, v88, v89, v90, v91);
        completionCopy[2](completionCopy, v83);
        goto LABEL_12;
      }

      v56 = 1;
    }
  }

  v99[0] = *MEMORY[0x277D27DC8];
  v68 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v52, v56, v54, v55);
  v100[0] = v68;
  v99[1] = *MEMORY[0x277D27D08];
  v73 = objc_msgSend_refId(self, v69, v70, v71, v72);
  v99[2] = *MEMORY[0x277D27DC0];
  v100[1] = v73;
  v100[2] = @"com.apple.MediaAssistant.siri";
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, v100, v99, 3);

  v76 = objc_alloc_init(MEMORY[0x277D27828]);
  v81 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v77, v78, v79, v80);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_2334FDD50;
  v92[3] = &unk_2789DBAF8;
  v93 = v81;
  selfCopy = self;
  v95 = v76;
  v96 = v75;
  v97 = v9;
  v98 = completionCopy;
  v82 = v75;
  v83 = v76;
  v84 = v81;
  sub_2334FDD50(v92, 0, v85, v86, v87);

LABEL_12:
}

@end