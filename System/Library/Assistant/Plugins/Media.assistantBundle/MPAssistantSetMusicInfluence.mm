@interface MPAssistantSetMusicInfluence
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetMusicInfluence

- (void)performWithCompletion:(id)completion
{
  v149 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Set Music Influence", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v143 = 138543618;
    v144 = v21;
    v145 = 1024;
    *v146 = objc_msgSend_value(self, v17, v18, v19, v20);
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Music Influence (invoke) <%{public}@>: enabled %{BOOL}u", &v143, 0x12u);
  }

  v26 = objc_msgSend_standardUserDefaults(MEMORY[0x277CD6008], v22, v23, v24, v25);
  v31 = objc_msgSend_isPrivateListeningEnabled(v26, v27, v28, v29, v30);
  isPrivateListeningEnabledForCurrentAccessory = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  v41 = objc_msgSend_monitorForCurrentUser(MEMORY[0x277CD5D98], v37, v38, v39, v40);
  v46 = v41;
  if (v41)
  {
    isPrivateListeningEnabledForCurrentAccessory = objc_msgSend_isPrivateListeningEnabledForCurrentAccessory(v41, v42, v43, v44, v45);
  }

  v51 = isPrivateListeningEnabledForCurrentAccessory;
  if ((objc_msgSend_toggle(self, v42, v43, v44, v45) & 1) == 0)
  {
    v51 = objc_msgSend_value(self, v47, v48, v49, v50);
  }

  v52 = objc_msgSend_dryRun(self, v47, v48, v49, v50);
  if (isPrivateListeningEnabledForCurrentAccessory == v51)
  {
    v87 = v52;
    if ((v52 & 1) == 0)
    {
      if (v46)
      {
        objc_msgSend_setPrivateListeningEnabledForCurrentAccessory_(v46, v53, v51 ^ 1, v55, v56);
      }

      else
      {
        v88 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v53, v51 ^ 1, v55, v56);
        objc_msgSend_setPrivateListeningEnabled_(v26, v89, v88, v90, v91);
      }
    }

    v92 = isPrivateListeningEnabledForCurrentAccessory ^ 1;
    if (!objc_msgSend_length(self->_requestAceHash, v53, v54, v55, v56))
    {
      v97 = objc_msgSend_aceId(self, v93, v94, v95, v96);
      v98 = sub_233505670(@"Set Music Influence", v97);
      v99 = self->_requestAceHash;
      self->_requestAceHash = v98;
    }

    v100 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = self->_requestAceHash;
      v143 = 138544130;
      v144 = v101;
      v145 = 1024;
      *v146 = v87;
      *&v146[4] = 1024;
      *&v146[6] = v92;
      v147 = 1024;
      v148 = v51;
      _os_log_impl(&dword_2334D9000, v100, OS_LOG_TYPE_DEFAULT, "Set Music Influence (perform) <%{public}@>: Dry run: %d, previous music influence: %d, and music influence: %d", &v143, 0x1Eu);
    }

    v57 = objc_alloc_init(MEMORY[0x277D47800]);
    objc_msgSend_setValue_(v57, v102, v51, v103, v104);
    v108 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v105, v92, v106, v107);
    objc_msgSend_setPreviousValue_(v57, v109, v108, v110, v111);

    v86 = objc_alloc_init(MEMORY[0x277D47890]);
    objc_msgSend_setSetting_(v86, v112, v57, v113, v114);
    v119 = objc_msgSend_dictionary(v86, v115, v116, v117, v118);
    completionCopy[2](completionCopy, v119);

    if (!objc_msgSend_length(self->_requestAceHash, v120, v121, v122, v123))
    {
      v128 = objc_msgSend_aceId(self, v124, v125, v126, v127);
      v129 = sub_233505670(@"Set Music Influence", v128);
      v130 = self->_requestAceHash;
      self->_requestAceHash = v129;
    }

    v131 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v136 = self->_requestAceHash;
      v137 = objc_msgSend_dictionary(v86, v132, v133, v134, v135);
      v143 = 138543618;
      v144 = v136;
      v145 = 2114;
      *v146 = v137;
      _os_log_impl(&dword_2334D9000, v131, OS_LOG_TYPE_DEFAULT, "Set Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v143, 0x16u);
    }

    v142 = objc_msgSend_dictionary(v86, v138, v139, v140, v141);
    completionCopy[2](completionCopy, v142);
  }

  else
  {
    v57 = objc_alloc_init(MEMORY[0x277D47208]);
    objc_msgSend_setErrorCode_(v57, v58, *MEMORY[0x277D489A0], v59, v60);
    objc_msgSend_setReason_(v57, v61, @"Value unchanged, No change was made", v62, v63);
    if (!objc_msgSend_length(self->_requestAceHash, v64, v65, v66, v67))
    {
      v72 = objc_msgSend_aceId(self, v68, v69, v70, v71);
      v73 = sub_233505670(@"Set Music Influence", v72);
      v74 = self->_requestAceHash;
      self->_requestAceHash = v73;
    }

    v75 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v80 = self->_requestAceHash;
      v81 = objc_msgSend_dictionary(v57, v76, v77, v78, v79);
      v143 = 138543618;
      v144 = v80;
      v145 = 2114;
      *v146 = v81;
      _os_log_impl(&dword_2334D9000, v75, OS_LOG_TYPE_DEFAULT, "Set Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v143, 0x16u);
    }

    v86 = objc_msgSend_dictionary(v57, v82, v83, v84, v85);
    completionCopy[2](completionCopy, v86);
  }
}

@end