@interface MPAssistantSkipTimeInterval
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSkipTimeInterval

- (void)performWithCompletion:(id)completion
{
  v110 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Skip Time Interval", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_requestAceHash;
    v27 = objc_msgSend_hashedRouteUIDs(self, v22, v23, v24, v25);
    v32 = objc_msgSend_count(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_adjustmentInMilliseconds(self, v33, v34, v35, v36);
    *buf = 138543874;
    v105 = v26;
    v106 = 2048;
    v107 = v32;
    v108 = 2114;
    v109 = v37;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Skip Time Interval (invoke) <%{public}@>: %lu UIDs, %{public}@ milliseconds", buf, 0x20u);
  }

  v38 = self->_requestAceHash;
  v43 = objc_msgSend_hashedRouteUIDs(self, v39, v40, v41, v42);
  sub_2335057BC(@"Skip Time Interval", v38, v43);

  v48 = objc_msgSend_adjustmentInMilliseconds(self, v44, v45, v46, v47);
  objc_msgSend_doubleValue(v48, v49, v50, v51, v52);
  v54 = v53;

  if (v54 >= 0.0)
  {
    v59 = 17;
  }

  else
  {
    v59 = 18;
  }

  v102[0] = *MEMORY[0x277D27DF8];
  v60 = MEMORY[0x277CCABB0];
  v61 = objc_msgSend_adjustmentInMilliseconds(self, v55, v56, v57, v58);
  v66 = objc_msgSend_longValue(v61, v62, v63, v64, v65);
  if (v66 >= 0)
  {
    v71 = v66;
  }

  else
  {
    v71 = -v66;
  }

  v72 = objc_msgSend_numberWithDouble_(v60, v67, v68, v69, v70, v71 / 1000.0);
  v103[0] = v72;
  v102[1] = *MEMORY[0x277D27D08];
  v77 = objc_msgSend_refId(self, v73, v74, v75, v76);
  v102[2] = *MEMORY[0x277D27DC0];
  v103[1] = v77;
  v103[2] = @"com.apple.MediaAssistant.siri";
  v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v78, v103, v102, 3);

  v80 = objc_alloc_init(MEMORY[0x277D27828]);
  v85 = objc_msgSend_nowPlayingApplicationDestination(MEMORY[0x277D27850], v81, v82, v83, v84);
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_23350078C;
  v94[3] = &unk_2789DBAD0;
  v95 = v85;
  selfCopy = self;
  v101 = v59;
  v97 = v80;
  v98 = v79;
  v99 = v9;
  v100 = completionCopy;
  v86 = completionCopy;
  v87 = v9;
  v88 = v79;
  v89 = v80;
  v90 = v85;
  sub_23350078C(v94, 0, v91, v92, v93);
}

@end