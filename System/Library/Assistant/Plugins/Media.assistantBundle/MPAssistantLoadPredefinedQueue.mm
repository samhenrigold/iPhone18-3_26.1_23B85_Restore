@interface MPAssistantLoadPredefinedQueue
- (id)_radioStations;
- (id)_validate;
- (void)_performWithNowPlayingItem:(id)item audioRoutingInfo:(id)info completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MPAssistantLoadPredefinedQueue

- (id)_radioStations
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_2334EE62C;
  v41 = sub_2334EE63C;
  v42 = 0;
  v2 = dispatch_semaphore_create(0);
  v7 = objc_msgSend_defaultRadioLibrary(MEMORY[0x277CD6020], v3, v4, v5, v6);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_2334EE644;
  v34 = &unk_2789DB490;
  v36 = &v37;
  v8 = v2;
  v35 = v8;
  objc_msgSend_getRecentStationGroupsWithCompletionHandler_(v7, v9, &v31, v10, v11);

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v38[5];
  if (!v16)
  {
    v17 = objc_msgSend_defaultRadioLibrary(MEMORY[0x277CD6020], v12, v13, v14, v15, v31, v32, v33, v34);
    v22 = objc_msgSend_stations(v17, v18, v19, v20, v21);
    v27 = objc_msgSend_mutableCopy(v22, v23, v24, v25, v26);
    v28 = v38[5];
    v38[5] = v27;

    v16 = v38[5];
  }

  v29 = v16;

  _Block_object_dispose(&v37, 8);

  return v29;
}

- (id)_validate
{
  v5 = objc_msgSend_mediaItemType(self, a2, v2, v3, v4);
  if (v5 > 0xF || ((1 << v5) & 0xC008) == 0)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v7 = objc_msgSend_initWithReason_(v8, v9, @"Unsupported media item type", v10, v11);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_performWithNowPlayingItem:(id)item audioRoutingInfo:(id)info completion:(id)completion
{
  v211[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v210 = *MEMORY[0x277D27DC0];
  v211[0] = @"com.apple.MediaAssistant.siri";
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v211, &v210, 1);
  v203[0] = MEMORY[0x277D85DD0];
  v203[1] = 3221225472;
  v203[2] = sub_2334EF324;
  v203[3] = &unk_2789DB378;
  v203[4] = self;
  v11 = v10;
  v204 = v11;
  v12 = completionCopy;
  v205 = v12;
  v13 = MEMORY[0x2383A14D0](v203);
  v201[0] = MEMORY[0x277D85DD0];
  v201[1] = 3221225472;
  v201[2] = sub_2334EF440;
  v201[3] = &unk_2789DB3F0;
  v201[4] = self;
  v14 = v13;
  v202 = v14;
  v15 = MEMORY[0x2383A14D0](v201);
  v20 = objc_msgSend_mediaItemType(self, v16, v17, v18, v19);
  v189 = objc_msgSend_refId(self, v21, v22, v23, v24);
  if (v20 == 3)
  {
    if ((MRMediaRemoteIsBooksAppInstalled() & 1) == 0)
    {
      v38 = objc_alloc_init(MEMORY[0x277D47208]);
      (*(v12 + 2))(v12, v38);
    }

    v33 = objc_msgSend_audiobooksQuery(MEMORY[0x277CD5E38], v34, v35, v36, v37);
LABEL_9:
    v39 = v33;
    if (!v33)
    {
      goto LABEL_18;
    }

    v40 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v25, self->_userIdentity, v27, v28);
    objc_msgSend_setMediaLibrary_(v39, v41, v40, v42, v43);

    infoCopy = info;
    Availability = objc_msgSend_assistantStreamingGetAvailability_(self->_availability, v44, *&info, v45, v46);
    v52 = 1;
    if (Availability <= 1)
    {
      if (!Availability)
      {
        if (!objc_msgSend_length(self->_requestAceHash, v48, v49, v50, v51))
        {
          v101 = objc_msgSend_aceId(self, v97, v98, v99, v100);
          v102 = sub_233505670(@"Load Predefined Queue", v101);
          requestAceHash = self->_requestAceHash;
          self->_requestAceHash = v102;
        }

        v78 = _MPLogCategoryAssistant();
        if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v104 = self->_requestAceHash;
        *buf = 138543362;
        v207 = v104;
        v80 = "Load Predefined Queue (query) <%{public}@>: streaming not available";
        goto LABEL_42;
      }

      if (Availability != 1)
      {
        goto LABEL_45;
      }

      if (!objc_msgSend_length(self->_requestAceHash, v48, v49, v50, v51))
      {
        v75 = objc_msgSend_aceId(self, v71, v72, v73, v74);
        v76 = sub_233505670(@"Load Predefined Queue", v75);
        v77 = self->_requestAceHash;
        self->_requestAceHash = v76;
      }

      v78 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = self->_requestAceHash;
        *buf = 138543362;
        v207 = v79;
        v80 = "Load Predefined Queue (query) <%{public}@>: network conditions do not permit streaming";
LABEL_42:
        _os_log_impl(&dword_2334D9000, v78, OS_LOG_TYPE_DEFAULT, v80, buf, 0xCu);
      }
    }

    else
    {
      if (Availability != 2)
      {
        if (Availability == 3)
        {
          if (!objc_msgSend_length(self->_requestAceHash, v48, v49, v50, v51))
          {
            v93 = objc_msgSend_aceId(self, v89, v90, v91, v92);
            v94 = sub_233505670(@"Load Predefined Queue", v93);
            v95 = self->_requestAceHash;
            self->_requestAceHash = v94;
          }

          v60 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v96 = self->_requestAceHash;
            *buf = 138543362;
            v207 = v96;
            _os_log_impl(&dword_2334D9000, v60, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (query) <%{public}@>: companion will be used", buf, 0xCu);
          }

          v52 = 0;
          goto LABEL_44;
        }

        if (Availability == 4)
        {
          if (!objc_msgSend_length(self->_requestAceHash, v48, v49, v50, v51))
          {
            v57 = objc_msgSend_aceId(self, v53, v54, v55, v56);
            v58 = sub_233505670(@"Load Predefined Queue", v57);
            v59 = self->_requestAceHash;
            self->_requestAceHash = v58;
          }

          v60 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = self->_requestAceHash;
            *buf = 138543362;
            v207 = v61;
            _os_log_impl(&dword_2334D9000, v60, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (query) <%{public}@>: streaming available", buf, 0xCu);
          }

          goto LABEL_44;
        }

LABEL_45:
        if (objc_msgSend__countOfItems(v39, v48, v49, v50, v51))
        {
          if (!objc_msgSend_length(self->_requestAceHash, v110, v111, v112, v113))
          {
            v118 = objc_msgSend_aceId(self, v114, v115, v116, v117);
            v119 = sub_233505670(@"Load Predefined Queue", v118);
            v120 = self->_requestAceHash;
            self->_requestAceHash = v119;
          }

          v121 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            v122 = self->_requestAceHash;
            *buf = 138543618;
            v207 = v122;
            v208 = 2048;
            v209 = v20;
            _os_log_impl(&dword_2334D9000, v121, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: beginning playback (type %ld).", buf, 0x16u);
          }

          shouldShuffle = objc_msgSend_shouldShuffle(self, v123, v124, v125, v126);
          v130 = objc_msgSend_queryQueueWithContextID_query_(MEMORY[0x277D27868], v128, v189, v39, v129);
          objc_msgSend_setShuffleType_(v130, v131, shouldShuffle, v132, v133);
          v138 = objc_msgSend_startPlaying(self, v134, v135, v136, v137);
          v143 = objc_msgSend_BOOLValue(v138, v139, v140, v141, v142);
          objc_msgSend_setShouldImmediatelyStartPlayback_(v130, v144, v143, v145, v146);

          objc_msgSend_setShouldOverrideManuallyCuratedQueue_(v130, v147, 1, v148, v149);
          v154 = objc_msgSend_systemMediaApplicationDestination(MEMORY[0x277D27850], v150, v151, v152, v153);
          v159 = objc_msgSend_hashedRouteUIDs(self, v155, v156, v157, v158);
          v190[0] = MEMORY[0x277D85DD0];
          v190[1] = 3221225472;
          v190[2] = sub_2334EFCF4;
          v190[3] = &unk_2789DB440;
          v190[4] = self;
          v192 = v12;
          v193 = v15;
          v191 = v130;
          v160 = v130;
          objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(v154, v161, v160, v159, v52, infoCopy, v190);
        }

        else
        {
          v162 = sub_2335055C0(self->_userIdentity);
          v167 = objc_msgSend_length(self->_requestAceHash, v163, v164, v165, v166);
          if (v162)
          {
            if (!v167)
            {
              v172 = objc_msgSend_aceId(self, v168, v169, v170, v171);
              v173 = sub_233505670(@"Load Predefined Queue", v172);
              v174 = self->_requestAceHash;
              self->_requestAceHash = v173;
            }

            v175 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
            {
              v176 = self->_requestAceHash;
              *buf = 138543618;
              v207 = v176;
              v208 = 2048;
              v209 = v20;
              _os_log_impl(&dword_2334D9000, v175, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: still loading library (type %ld).", buf, 0x16u);
            }

            v177 = objc_alloc(MEMORY[0x277D47208]);
            v181 = MEMORY[0x277D48630];
          }

          else
          {
            if (!v167)
            {
              v182 = objc_msgSend_aceId(self, v168, v169, v170, v171);
              v183 = sub_233505670(@"Load Predefined Queue", v182);
              v184 = self->_requestAceHash;
              self->_requestAceHash = v183;
            }

            v185 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
            {
              v186 = self->_requestAceHash;
              *buf = 138543618;
              v207 = v186;
              v208 = 2048;
              v209 = v20;
              _os_log_impl(&dword_2334D9000, v185, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: empty library for (type %ld).", buf, 0x16u);
            }

            v177 = objc_alloc(MEMORY[0x277D47208]);
            v181 = MEMORY[0x277D485F8];
          }

          v154 = objc_msgSend_initWithErrorCode_(v177, v178, *v181, v179, v180);
          (*(v12 + 2))(v12, v154);
        }

        goto LABEL_64;
      }

      if (!objc_msgSend_length(self->_requestAceHash, v48, v49, v50, v51))
      {
        v85 = objc_msgSend_aceId(self, v81, v82, v83, v84);
        v86 = sub_233505670(@"Load Predefined Queue", v85);
        v87 = self->_requestAceHash;
        self->_requestAceHash = v86;
      }

      v78 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v88 = self->_requestAceHash;
        *buf = 138543362;
        v207 = v88;
        v80 = "Load Predefined Queue (query) <%{public}@>: companion not available";
        goto LABEL_42;
      }
    }

LABEL_43:

    v60 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v105, MEMORY[0x277CBEC38], *MEMORY[0x277CD5790], v106);
    objc_msgSend_addFilterPredicate_(v39, v107, v60, v108, v109);
    v52 = 1;
LABEL_44:

    goto LABEL_45;
  }

  if (v20 == 15)
  {
    v33 = objc_msgSend_songsQuery(MEMORY[0x277CD5E38], v25, v26, v27, v28);
    goto LABEL_9;
  }

  if (v20 != 14)
  {
LABEL_18:
    if (!objc_msgSend_length(self->_requestAceHash, v25, v26, v27, v28))
    {
      v66 = objc_msgSend_aceId(self, v62, v63, v64, v65);
      v67 = sub_233505670(@"Load Predefined Queue", v66);
      v68 = self->_requestAceHash;
      self->_requestAceHash = v67;
    }

    v69 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = self->_requestAceHash;
      *buf = 138543618;
      v207 = v70;
      v208 = 2048;
      v209 = v20;
      _os_log_impl(&dword_2334D9000, v69, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: unrecognized media (type %ld).", buf, 0x16u);
    }

    v39 = objc_alloc_init(MEMORY[0x277D47208]);
    (*(v12 + 2))(v12, v39);
LABEL_64:

    v30 = itemCopy;
    goto LABEL_65;
  }

  v29 = self->_availability;
  v194[0] = MEMORY[0x277D85DD0];
  v194[1] = 3221225472;
  v194[2] = sub_2334EF52C;
  v194[3] = &unk_2789DB468;
  v194[4] = self;
  v197 = v12;
  v30 = itemCopy;
  v195 = itemCopy;
  infoCopy2 = info;
  v196 = v11;
  v198 = v15;
  v199 = 14;
  objc_msgSend_assistantRadioGetAvailability_completion_(v29, v31, *&info, v194, v32);

LABEL_65:
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  v77 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  helperCopy = helper;
  v8 = objc_alloc_init(MEMORY[0x277D27820]);
  availability = self->_availability;
  self->_availability = v8;

  objc_storeStrong(&self->_serviceHelper, helper);
  if (qword_27DE0E768 != -1)
  {
    dispatch_once(&qword_27DE0E768, &unk_2848D4400);
  }

  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Load Predefined Queue", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_requestAceHash;
    objc_msgSend_mediaItemType(self, v22, v23, v24, v25);
    v27 = stringForSAMPType();
    v32 = objc_msgSend_dryRun(self, v28, v29, v30, v31);
    v33 = &stru_2848D4AE0;
    *buf = 138543874;
    v72 = v26;
    v73 = 2114;
    if (v32)
    {
      v33 = @" ⚠️ DRY RUN";
    }

    v74 = v27;
    v75 = 2114;
    v76 = v33;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (invoke) <%{public}@>: media item type %{public}@%{public}@", buf, 0x20u);
  }

  v34 = self->_requestAceHash;
  v39 = objc_msgSend_hashedRouteUIDs(self, v35, v36, v37, v38);
  sub_2335057BC(@"Load Predefined Queue", v34, v39);

  v48 = objc_msgSend__validate(self, v40, v41, v42, v43);
  if (v48)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v44, v45, v46, v47))
    {
      v53 = objc_msgSend_aceId(self, v49, v50, v51, v52);
      v54 = sub_233505670(@"Load Predefined Queue", v53);
      v55 = self->_requestAceHash;
      self->_requestAceHash = v54;
    }

    v56 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v61 = self->_requestAceHash;
      v62 = objc_msgSend_dictionary(v48, v57, v58, v59, v60);
      *buf = 138543618;
      v72 = v61;
      v73 = 2114;
      v74 = v62;
      _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v67 = objc_msgSend_dictionary(v48, v63, v64, v65, v66);
    completionCopy[2](completionCopy, v67);
  }

  else
  {
    v67 = sub_23350699C();
    v68 = dispatch_queue_create("com.apple.mediaPlayer.assistant.loadPredefinedQueue", 0);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_2334F0A58;
    v69[3] = &unk_2789DB670;
    v69[4] = self;
    v70 = completionCopy;
    dispatch_group_notify(v67, v68, v69);
  }
}

@end