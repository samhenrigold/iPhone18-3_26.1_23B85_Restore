@interface MPAssistantCreateRadioStation
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantCreateRadioStation

- (void)performWithCompletion:(id)completion
{
  v144 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Create Radio Station", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v113 = completionCopy;
    v21 = self->_requestAceHash;
    v112 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    v26 = objc_msgSend_count(v112, v22, v23, v24, v25);
    v31 = objc_msgSend_assetInfo(self, v27, v28, v29, v30);
    if (objc_msgSend_length(v31, v32, v33, v34, v35))
    {
      v40 = @"present";
    }

    else
    {
      v40 = @"not present";
    }

    v41 = objc_msgSend_startPlaying(self, v36, v37, v38, v39);
    v46 = objc_msgSend_stationUrl(self, v42, v43, v44, v45);
    *buf = 138544386;
    v135 = v21;
    completionCopy = v113;
    v136 = 2048;
    v137 = v26;
    v138 = 2114;
    v139 = v40;
    v140 = 2114;
    v141 = v41;
    v142 = 2114;
    v143 = v46;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Create Radio Station (invoke) <%{public}@>: %lu UIDs, asset info %{public}@, start %{public}@, station %{public}@", buf, 0x34u);
  }

  v47 = self->_requestAceHash;
  v52 = objc_msgSend_hashedRouteUIDs(self, v48, v49, v50, v51);
  sub_2335057BC(@"Create Radio Station", v47, v52);

  v57 = objc_msgSend_stationUrl(self, v53, v54, v55, v56);
  v62 = objc_msgSend_absoluteString(v57, v58, v59, v60, v61);

  v132[0] = *MEMORY[0x277D27DE0];
  v67 = objc_msgSend_startPlaying(self, v63, v64, v65, v66);
  v69 = v67;
  v70 = MEMORY[0x277CBEC28];
  if (v67)
  {
    v70 = v67;
  }

  v132[1] = *MEMORY[0x277D27DC0];
  v133[0] = v70;
  v133[1] = @"com.apple.MediaAssistant.siri";
  v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, v133, v132, 2);
  v76 = objc_msgSend_mutableCopy(v71, v72, v73, v74, v75);

  if (v62)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v76, v77, v62, *MEMORY[0x277D27E00], v80);
  }

  v83 = objc_msgSend_refId(self, v77, v78, v79, v80);
  if (v83)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v76, v81, v83, *MEMORY[0x277D27D08], v82);
  }

  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = sub_2334E5C54;
  v127[3] = &unk_2789DADD8;
  v84 = v76;
  v128 = v84;
  v85 = completionCopy;
  v131 = v85;
  selfCopy = self;
  v86 = v62;
  v130 = v86;
  v87 = MEMORY[0x2383A14D0](v127);
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = sub_2334E5D54;
  v124[3] = &unk_2789DAE28;
  v124[4] = self;
  v88 = v87;
  v125 = v88;
  v89 = v85;
  v126 = v89;
  v90 = MEMORY[0x2383A14D0](v124);
  v95 = objc_msgSend_hashedRouteUIDs(self, v91, v92, v93, v94);
  v100 = objc_msgSend_count(v95, v96, v97, v98, v99);

  if (v100)
  {
    v101 = objc_alloc_init(MEMORY[0x277D27828]);
    v106 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27850], v102, v103, v104, v105);
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_2334E5F04;
    v114[3] = &unk_2789DBB70;
    v115 = v106;
    selfCopy2 = self;
    v117 = v101;
    v118 = v84;
    v119 = v89;
    v107 = v101;
    v108 = v106;
    sub_2334E5F04(v114, 0, v109, v110, v111);
  }

  else
  {
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = sub_2334E5E28;
    v120[3] = &unk_2789DAE78;
    v120[4] = self;
    v121 = v90;
    v122 = v89;
    v123 = v88;
    sub_2334E5E28(v120, 0);
  }
}

@end