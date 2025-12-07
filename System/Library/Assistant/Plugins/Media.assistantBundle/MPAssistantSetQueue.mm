@interface MPAssistantSetQueue
- (void)_performMediaItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion;
- (void)_performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:(BOOL)run onlyPlayableItems:(BOOL)items onlyLocalItems:(BOOL)localItems completion:(id)completion;
- (void)_performRadioStationSetQueueAsDryRun:(BOOL)run completion:(id)completion;
- (void)_performStoreItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion;
- (void)_performWithCompletion:(id)completion;
- (void)_playAlbumFromMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion;
- (void)_playMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
- (void)sendQueue:(id)queue toDestination:(id)destination shouldResync:(BOOL)resync completion:(id)completion;
@end

@implementation MPAssistantSetQueue

- (void)sendQueue:(id)queue toDestination:(id)destination shouldResync:(BOOL)resync completion:(id)completion
{
  queueCopy = queue;
  destinationCopy = destination;
  completionCopy = completion;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2334F750C;
  v35[3] = &unk_2789DB8F0;
  v13 = queueCopy;
  v36 = v13;
  selfCopy = self;
  resyncCopy = resync;
  v38 = completionCopy;
  v14 = completionCopy;
  v15 = MEMORY[0x2383A14D0](v35);
  v16 = dispatch_queue_create("com.apple.mediaPlayer.assistant.setQueue.sendCommand", 0);
  v21 = objc_msgSend_mutableCopy(destinationCopy, v17, v18, v19, v20);
  objc_msgSend_setSingleGroup_(v21, v22, 1, v23, v24);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2334F76C4;
  v29[3] = &unk_2789DB940;
  v30 = destinationCopy;
  selfCopy2 = self;
  v33 = v13;
  v34 = v15;
  v32 = v21;
  v25 = v13;
  v26 = v21;
  v27 = v15;
  v28 = destinationCopy;
  MEMORY[0x2383A0F90](v16, v29);
}

- (void)_playMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion
{
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2334F7DE8;
  v19[3] = &unk_2789DB8A0;
  v19[4] = self;
  v20 = itemsCopy;
  v21 = dCopy;
  v22 = completionCopy;
  runCopy = run;
  v13 = completionCopy;
  v14 = dCopy;
  v15 = itemsCopy;
  sub_2334F7DE8(v19, 0, v16, v17, v18);
}

- (void)_playAlbumFromMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_aceId(self, v17, v18, v19, v20);
    v22 = sub_233505670(@"Set Queue", v21);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v22;
  }

  v24 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_requestAceHash;
    *buf = 138543618;
    v38 = v25;
    v39 = 2114;
    v40 = itemsCopy;
    _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: find album with pid %{public}@", buf, 0x16u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2334F8844;
  v32[3] = &unk_2789DB8A0;
  v32[4] = self;
  v33 = itemsCopy;
  v34 = dCopy;
  v35 = completionCopy;
  runCopy = run;
  v26 = completionCopy;
  v27 = dCopy;
  v28 = itemsCopy;
  sub_2334F8844(v32, 0, v29, v30, v31);
}

- (void)_performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:(BOOL)run onlyPlayableItems:(BOOL)items onlyLocalItems:(BOOL)localItems completion:(id)completion
{
  localItemsCopy = localItems;
  itemsCopy = items;
  runCopy = run;
  v501 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v12 = objc_msgSend_mediaItems(self, v8, v9, v10, v11);
  v463 = objc_msgSend_identifier(v12, v13, v14, v15, v16);

  v21 = objc_msgSend_refId(self, v17, v18, v19, v20);
  v486 = 0;
  v487 = &v486;
  v488 = 0x3032000000;
  v489 = sub_2334FA878;
  v490 = sub_2334FA888;
  v491 = 0;
  v481[0] = MEMORY[0x277D85DD0];
  v481[1] = 3221225472;
  v481[2] = sub_2334FA890;
  v481[3] = &unk_2789DB828;
  v484 = &v486;
  v481[4] = self;
  v458 = completionCopy;
  v483 = v458;
  v456 = v21;
  v482 = v456;
  v485 = runCopy;
  v459 = MEMORY[0x2383A14D0](v481);
  v26 = objc_msgSend_scheme(v463, v22, v23, v24, v25);
  LODWORD(v21) = objc_msgSend_isEqualToString_(v26, v27, @"x-sampplaylist", v28, v29);

  if (v21)
  {
    obj = objc_msgSend_playlistsQuery(MEMORY[0x277CD5E38], v30, v31, v32, v33);
    userIdentity = self->_userIdentity;
    if (userIdentity)
    {
      v38 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v34, userIdentity, v35, v36);
      objc_msgSend_setMediaLibrary_(obj, v39, v38, v40, v41);
    }

    v462 = objc_msgSend_lastPathComponent(v463, v34, userIdentity, v35, v36);
    if (!objc_msgSend_length(v462, v42, v43, v44, v45))
    {
      v347 = objc_alloc(MEMORY[0x277D47208]);
      v63 = objc_msgSend_initWithErrorCode_(v347, v348, *MEMORY[0x277D48648], v349, v350);
      (*(v458 + 2))(v458, 1, v63);
      goto LABEL_89;
    }

    v48 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v46, v462, *MEMORY[0x277CD58F0], v47);
    objc_msgSend_addFilterPredicate_(obj, v49, v48, v50, v51);

    objc_storeStrong(v487 + 5, obj);
    if (!objc_msgSend_length(self->_requestAceHash, v52, v53, v54, v55))
    {
      v60 = objc_msgSend_aceId(self, v56, v57, v58, v59);
      v61 = sub_233505670(@"Set Queue", v60);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v61;
    }

    v63 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v68 = self->_requestAceHash;
      v69 = objc_msgSend_collections(obj, v64, v65, v66, v67);
      v74 = objc_msgSend_firstObject(v69, v70, v71, v72, v73);
      *buf = 138543618;
      v498 = v68;
      v499 = 2114;
      v500 = v74;
      _os_log_impl(&dword_2334D9000, v63, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: playlist %{public}@", buf, 0x16u);
    }

    goto LABEL_98;
  }

  v75 = objc_msgSend_scheme(v463, v30, v31, v32, v33);
  isEqualToString = objc_msgSend_isEqualToString_(v75, v76, @"x-sampmeditem", v77, v78);

  if (!isEqualToString)
  {
    v227 = objc_msgSend_scheme(v463, v80, v81, v82, v83);
    v231 = objc_msgSend_isEqualToString_(v227, v228, @"x-sampcollection-album", v229, v230);

    if (!v231)
    {
LABEL_99:
      v459[2]();
      goto LABEL_100;
    }

    v236 = MEMORY[0x277CCABB0];
    v237 = objc_msgSend_lastPathComponent(v463, v232, v233, v234, v235);
    v242 = objc_msgSend_longLongValue(v237, v238, v239, v240, v241);
    obj = objc_msgSend_numberWithLongLong_(v236, v243, v242, v244, v245);

    if (!objc_msgSend_longLongValue(obj, v246, v247, v248, v249))
    {
      if (!objc_msgSend_length(self->_requestAceHash, v250, v251, v252, v253))
      {
        v390 = objc_msgSend_aceId(self, v386, v387, v388, v389);
        v391 = sub_233505670(@"Set Queue", v390);
        v392 = self->_requestAceHash;
        self->_requestAceHash = v391;
      }

      v393 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v393, OS_LOG_TYPE_ERROR))
      {
        v394 = self->_requestAceHash;
        *buf = 138543362;
        v498 = v394;
        _os_log_impl(&dword_2334D9000, v393, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no identifier received", buf, 0xCu);
      }

      v395 = objc_alloc(MEMORY[0x277D47208]);
      v462 = objc_msgSend_initWithErrorCode_(v395, v396, *MEMORY[0x277D48648], v397, v398);
      (*(v458 + 2))(v458, 0, v462);
      goto LABEL_90;
    }

    v462 = objc_alloc_init(MEMORY[0x277CD5E38]);
    v257 = self->_userIdentity;
    if (v257)
    {
      v258 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v254, v257, v255, v256);
      objc_msgSend_setMediaLibrary_(v462, v259, v258, v260, v261);
    }

    objc_msgSend_setIgnoreSystemFilterPredicates_(v462, v254, 1, v255, v256);
    objc_msgSend_setShouldIncludeNonLibraryEntities_(v462, v262, 1, v263, v264);
    v267 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v265, obj, *MEMORY[0x277CD5890], v266);
    objc_msgSend_addFilterPredicate_(v462, v268, v267, v269, v270);

    v271 = MEMORY[0x277CCABB0];
    v276 = objc_msgSend_items(v462, v272, v273, v274, v275);
    v281 = objc_msgSend_firstObject(v276, v277, v278, v279, v280);
    v282 = *MEMORY[0x277CD56C8];
    v286 = objc_msgSend_valueForProperty_(v281, v283, *MEMORY[0x277CD56C8], v284, v285);
    v291 = objc_msgSend_unsignedLongLongValue(v286, v287, v288, v289, v290);
    v63 = objc_msgSend_numberWithUnsignedLongLong_(v271, v292, v291, v293, v294);

    v303 = objc_msgSend_longLongValue(v63, v295, v296, v297, v298);
    v304 = self->_requestAceHash;
    if (!v303)
    {
      if (!objc_msgSend_length(v304, v299, v300, v301, v302))
      {
        v440 = objc_msgSend_aceId(self, v436, v437, v438, v439);
        v441 = sub_233505670(@"Set Queue", v440);
        v442 = self->_requestAceHash;
        self->_requestAceHash = v441;
      }

      v443 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v443, OS_LOG_TYPE_ERROR))
      {
        v444 = self->_requestAceHash;
        *buf = 138543618;
        v498 = v444;
        v499 = 2114;
        v500 = obj;
        _os_log_impl(&dword_2334D9000, v443, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no local item %{public}@.", buf, 0x16u);
      }

      v445 = objc_alloc(MEMORY[0x277D47208]);
      v225 = objc_msgSend_initWithErrorCode_(v445, v446, *MEMORY[0x277D48640], v447, v448);
      (*(v458 + 2))(v458, 1, v225);
      goto LABEL_88;
    }

    if (!objc_msgSend_length(v304, v299, v300, v301, v302))
    {
      v309 = objc_msgSend_aceId(self, v305, v306, v307, v308);
      v310 = sub_233505670(@"Set Queue", v309);
      v311 = self->_requestAceHash;
      self->_requestAceHash = v310;
    }

    v312 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v312, OS_LOG_TYPE_DEFAULT))
    {
      v317 = self->_requestAceHash;
      v318 = objc_msgSend_items(v462, v313, v314, v315, v316);
      v323 = objc_msgSend_firstObject(v318, v319, v320, v321, v322);
      *buf = 138543618;
      v498 = v317;
      v499 = 2114;
      v500 = v323;
      _os_log_impl(&dword_2334D9000, v312, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: pilot item %{public}@", buf, 0x16u);
    }

    v331 = objc_msgSend_albumsQuery(MEMORY[0x277CD5E38], v324, v325, v326, v327);
    v332 = self->_userIdentity;
    if (v332)
    {
      v333 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v328, v332, v329, v330);
      objc_msgSend_setMediaLibrary_(v331, v334, v333, v335, v336);
    }

    objc_msgSend_setIgnoreSystemFilterPredicates_(v331, v328, 1, v329, v330);
    objc_msgSend_setShouldIncludeNonLibraryEntities_(v331, v337, 1, v338, v339);
    v342 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v340, v63, v282, v341);
    objc_msgSend_addFilterPredicate_(v331, v343, v342, v344, v345);

    v346 = v487[5];
    v487[5] = v331;

LABEL_98:
    goto LABEL_99;
  }

  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v462 = objc_msgSend_mediaItems(self, v84, v85, v86, v87);
  v479 = 0u;
  v480 = 0u;
  v477 = 0u;
  v478 = 0u;
  v92 = objc_msgSend_items(v462, v88, v89, v90, v91);
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v477, v496, 16);
  if (v98)
  {
    v99 = *v478;
    do
    {
      for (i = 0; i != v98; ++i)
      {
        if (*v478 != v99)
        {
          objc_enumerationMutation(v92);
        }

        v101 = objc_msgSend_identifier(*(*(&v477 + 1) + 8 * i), v94, v95, v96, v97);
        if (sub_23350261C(v101) == 3)
        {
          v106 = objc_msgSend_lastPathComponent(v101, v102, v103, v104, v105);
          v111 = objc_msgSend_longLongValue(v106, v107, v108, v109, v110);

          if (!v111)
          {
            goto LABEL_23;
          }

          v115 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v112, v111, v113, v114);
          objc_msgSend_addObject_(obj, v116, v115, v117, v118);
        }

        else
        {
          if (!objc_msgSend_length(self->_requestAceHash, v102, v103, v104, v105))
          {
            v123 = objc_msgSend_aceId(self, v119, v120, v121, v122);
            v124 = sub_233505670(@"Set Queue", v123);
            v125 = self->_requestAceHash;
            self->_requestAceHash = v124;
          }

          v115 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            v126 = self->_requestAceHash;
            *buf = 138543618;
            v498 = v126;
            v499 = 2114;
            v500 = v101;
            _os_log_impl(&dword_2334D9000, v115, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: content origin %{public}@", buf, 0x16u);
          }
        }

LABEL_23:
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v477, v496, 16);
    }

    while (v98);
  }

  if (!objc_msgSend_count(obj, v127, v128, v129, v130))
  {
    v351 = objc_msgSend_identifier(v462, v131, v132, v133, v134);
    v352 = v351 == 0;

    if (!v352)
    {
      v353 = objc_msgSend_identifier(v462, v131, v132, v133, v134);
      v358 = objc_msgSend_lastPathComponent(v353, v354, v355, v356, v357);
      v363 = objc_msgSend_longLongValue(v358, v359, v360, v361, v362);

      if (v363)
      {
        v364 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v131, v363, v133, v134);
        objc_msgSend_addObject_(obj, v365, v364, v366, v367);
      }
    }
  }

  if (!objc_msgSend_count(obj, v131, v132, v133, v134))
  {
    v368 = objc_alloc(MEMORY[0x277D47208]);
    v63 = objc_msgSend_initWithErrorCode_(v368, v369, *MEMORY[0x277D48648], v370, v371);
    (*(v458 + 2))(v458, 1, v63);
    goto LABEL_89;
  }

  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v135, v136, v137, v138);
  v475 = 0u;
  v476 = 0u;
  v473 = 0u;
  v474 = 0u;
  obj = obj;
  v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v139, &v473, v495, 16);
  if (!v140)
  {
    goto LABEL_48;
  }

  v455 = *v474;
  v141 = MEMORY[0x277CD57A0];
  v451 = *MEMORY[0x277CD5888];
  v450 = *MEMORY[0x277CD58A0];
  v454 = localItemsCopy || itemsCopy;
  if (localItemsCopy)
  {
    v141 = MEMORY[0x277CD5790];
  }

  v452 = *v141;
  while (2)
  {
    v449 = v140;
    for (j = 0; j != v449; ++j)
    {
      if (*v474 != v455)
      {
        objc_enumerationMutation(obj);
      }

      v464 = *(*(&v473 + 1) + 8 * j);
      v146 = objc_alloc_init(MEMORY[0x277CD5E38]);
      v147 = self->_userIdentity;
      if (v147)
      {
        v148 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v143, v147, v144, v145);
        objc_msgSend_setMediaLibrary_(v146, v149, v148, v150, v151);
      }

      objc_msgSend_setIgnoreSystemFilterPredicates_(v146, v143, 1, v144, v145);
      objc_msgSend_setShouldIncludeNonLibraryEntities_(v146, v152, 1, v153, v154);
      if (!v454 || (objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v155, MEMORY[0x277CBEC38], v452, v158), (v461 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if (!objc_msgSend_length(self->_requestAceHash, v155, v156, v157, v158))
        {
          v376 = objc_msgSend_aceId(self, v372, v373, v374, v375);
          v377 = sub_233505670(@"Set Queue", v376);
          v378 = self->_requestAceHash;
          self->_requestAceHash = v377;
        }

        v379 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v379, OS_LOG_TYPE_ERROR))
        {
          v380 = self->_requestAceHash;
          *buf = 138543362;
          v498 = v380;
          _os_log_impl(&dword_2334D9000, v379, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no playable type set", buf, 0xCu);
        }

        v381 = objc_alloc(MEMORY[0x277D47208]);
        v385 = objc_msgSend_initWithReason_(v381, v382, @"no playable type set", v383, v384);
        (*(v458 + 2))(v458, 1, v385);

        goto LABEL_86;
      }

      v159 = MEMORY[0x277CD5DB8];
      v160 = MEMORY[0x277CD5DC0];
      v161 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v155, v464, v451, v158);
      v493[0] = v161;
      v164 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v162, v464, v450, v163);
      v493[1] = v164;
      v167 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v165, v493, 2, v166);
      v171 = objc_msgSend_predicateMatchingPredicates_(v160, v168, v167, v169, v170);
      v494[0] = v171;
      v494[1] = v461;
      v174 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v172, v494, 2, v173);
      v178 = objc_msgSend_predicateMatchingPredicates_(v159, v175, v174, v176, v177);

      objc_msgSend_addFilterPredicate_(v146, v179, v178, v180, v181);
      v186 = objc_msgSend_items(v146, v182, v183, v184, v185);
      LOBYTE(v164) = objc_msgSend_count(v186, v187, v188, v189, v190) == 0;

      if (v164)
      {
        if (!objc_msgSend_length(self->_requestAceHash, v191, v192, v193, v194))
        {
          v403 = objc_msgSend_aceId(self, v399, v400, v401, v402);
          v404 = sub_233505670(@"Set Queue", v403);
          v405 = self->_requestAceHash;
          self->_requestAceHash = v404;
        }

        v406 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
        {
          v407 = self->_requestAceHash;
          *buf = 138543618;
          v498 = v407;
          v499 = 2114;
          v500 = v464;
          _os_log_impl(&dword_2334D9000, v406, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no local item %{public}@", buf, 0x16u);
        }

        v408 = objc_alloc(MEMORY[0x277D47208]);
        v412 = objc_msgSend_initWithErrorCode_(v408, v409, *MEMORY[0x277D48640], v410, v411);
        (*(v458 + 2))(v458, 1, v412);

LABEL_86:
        v225 = obj;
        goto LABEL_87;
      }

      v471 = 0u;
      v472 = 0u;
      v469 = 0u;
      v470 = 0u;
      v195 = objc_msgSend_items(v146, v191, v192, v193, v194);
      v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v196, &v469, v492, 16);
      if (v200)
      {
        v201 = *v470;
        do
        {
          for (k = 0; k != v200; ++k)
          {
            if (*v470 != v201)
            {
              objc_enumerationMutation(v195);
            }

            objc_msgSend_addObject_(v63, v197, *(*(&v469 + 1) + 8 * k), v198, v199);
          }

          v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v197, &v469, v492, 16);
        }

        while (v200);
      }
    }

    v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v203, &v473, v495, 16);
    if (v140)
    {
      continue;
    }

    break;
  }

LABEL_48:

  if (objc_msgSend_count(v63, v204, v205, v206, v207) != 1)
  {
    v413 = objc_alloc(MEMORY[0x277CD5E38]);
    v416 = objc_msgSend_initWithEntities_entityType_(v413, v414, v63, 0, v415);
    v417 = v487[5];
    v487[5] = v416;

    v421 = self->_userIdentity;
    if (v421)
    {
      v422 = objc_msgSend_deviceMediaLibraryWithUserIdentity_(MEMORY[0x277CD5E10], v418, v421, v419, v420);
      objc_msgSend_setMediaLibrary_(v487[5], v423, v422, v424, v425);
    }

    if (!objc_msgSend_length(self->_requestAceHash, v418, v421, v419, v420))
    {
      v430 = objc_msgSend_aceId(self, v426, v427, v428, v429);
      v431 = sub_233505670(@"Set Queue", v430);
      v432 = self->_requestAceHash;
      self->_requestAceHash = v431;
    }

    v433 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v433, OS_LOG_TYPE_DEFAULT))
    {
      v434 = self->_requestAceHash;
      v435 = v487[5];
      *buf = 138543618;
      v498 = v434;
      v499 = 2114;
      v500 = v435;
      _os_log_impl(&dword_2334D9000, v433, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: queue from %{public}@", buf, 0x16u);
    }

    goto LABEL_98;
  }

  if (!objc_msgSend_length(self->_requestAceHash, v208, v209, v210, v211))
  {
    v216 = objc_msgSend_aceId(self, v212, v213, v214, v215);
    v217 = sub_233505670(@"Set Queue", v216);
    v218 = self->_requestAceHash;
    self->_requestAceHash = v217;
  }

  v219 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
  {
    v220 = self->_requestAceHash;
    *buf = 138543618;
    v498 = v220;
    v499 = 2114;
    v500 = v63;
    _os_log_impl(&dword_2334D9000, v219, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: album from %{public}@", buf, 0x16u);
  }

  v221 = objc_alloc(MEMORY[0x277CD5DF0]);
  v225 = objc_msgSend_initWithItems_(v221, v222, v63, v223, v224);
  v466[0] = MEMORY[0x277D85DD0];
  v466[1] = 3221225472;
  v466[2] = sub_2334FAA74;
  v466[3] = &unk_2789DB760;
  v467 = v459;
  v468 = v458;
  objc_msgSend__playAlbumFromMediaItems_contextID_dryRun_completion_(self, v226, v225, v456, runCopy, v466);

  v146 = v467;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
LABEL_100:

  _Block_object_dispose(&v486, 8);
}

- (void)_performStoreItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion
{
  completionCopy = completion;
  v11 = objc_msgSend_mediaItems(self, v7, v8, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2334FAB84;
  v17[3] = &unk_2789DB710;
  v18 = v11;
  v19 = completionCopy;
  v17[4] = self;
  runCopy = run;
  v12 = v11;
  v13 = completionCopy;
  sub_2334FAB84(v17, 0, v14, v15, v16);
}

- (void)_performMediaItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion
{
  runCopy = run;
  completionCopy = completion;
  v11 = objc_msgSend_mediaItems(self, v7, v8, v9, v10);
  v16 = objc_msgSend_identifier(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_refId(self, v17, v18, v19, v20);
  v23 = objc_msgSend_MPMediaItemQueryOnlyPlayableItems_withUserIdentity_plugin_hash_(v11, v22, 1, self->_userIdentity, @"Set Queue", self->_requestAceHash);
  if (objc_msgSend__countOfItems(v23, v24, v25, v26, v27))
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_2334FBE48;
    v78[3] = &unk_2789DB738;
    v74 = v23;
    v79 = v74;
    v28 = v16;
    v80 = v28;
    v81 = v11;
    selfCopy = self;
    v29 = v21;
    v83 = v29;
    v85 = runCopy;
    v73 = completionCopy;
    v84 = v73;
    v30 = MEMORY[0x2383A14D0](v78);
    v35 = objc_msgSend_scheme(v28, v31, v32, v33, v34);
    if (objc_msgSend_isEqualToString_(v35, v36, @"x-sampmeditem", v37, v38))
    {
      v71 = v29;
      v72 = runCopy;
      objc_msgSend_items(v74, v39, v40, v41, v42);
      v43 = v30;
      v44 = v11;
      v45 = v23;
      v46 = v21;
      v47 = v16;
      v49 = v48 = completionCopy;
      v54 = objc_msgSend_count(v49, v50, v51, v52, v53);

      completionCopy = v48;
      v16 = v47;
      v21 = v46;
      v23 = v45;
      v11 = v44;
      v30 = v43;

      if (v54 == 1)
      {
        v59 = objc_msgSend_collections(v74, v55, v56, v57, v58);
        v64 = objc_msgSend_firstObject(v59, v60, v61, v62, v63);
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = sub_2334FBF74;
        v75[3] = &unk_2789DB760;
        v76 = v43;
        v77 = v73;
        objc_msgSend__playAlbumFromMediaItems_contextID_dryRun_completion_(self, v65, v64, v71, v72, v75);

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
    }

    v30[2](v30);
    goto LABEL_8;
  }

  v66 = objc_alloc(MEMORY[0x277D47208]);
  v70 = objc_msgSend_initWithErrorCode_(v66, v67, *MEMORY[0x277D48640], v68, v69);
  (*(completionCopy + 2))(completionCopy, v70);

LABEL_9:
}

- (void)_performRadioStationSetQueueAsDryRun:(BOOL)run completion:(id)completion
{
  completionCopy = completion;
  v11 = objc_msgSend_mediaItems(self, v7, v8, v9, v10);
  v16 = objc_msgSend_identifier(v11, v12, v13, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2334FC074;
  v19[3] = &unk_2789DB710;
  v20 = v16;
  v21 = completionCopy;
  v19[4] = self;
  runCopy = run;
  v17 = v16;
  v18 = completionCopy;
  sub_2334FC074(v19, 0);
}

- (void)_performWithCompletion:(id)completion
{
  v184 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_mediaItems(self, v5, v6, v7, v8);
  v14 = objc_msgSend_identifier(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_scheme(v14, v15, v16, v17, v18);
  v24 = v19;
  if (!v19)
  {
    if (!objc_msgSend_length(self->_requestAceHash, v20, v21, v22, v23))
    {
      v55 = objc_msgSend_aceId(self, v51, v52, v53, v54);
      v56 = sub_233505670(@"Set Queue", v55);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v56;
    }

    v58 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v63 = self->_requestAceHash;
    v64 = objc_msgSend_dryRun(self, v59, v60, v61, v62);
    v65 = &stru_2848D4AE0;
    *buf = 138543874;
    v179 = v63;
    v180 = 2114;
    if (v64)
    {
      v65 = @" ⚠️ DRY RUN";
    }

    v181 = v14;
    v182 = 2114;
    v183 = v65;
    v66 = "Set Queue (invalid) <%{public}@>: invoke with identifier %{public}@%{public}@";
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v19, v20, @"x-sampradio", v22, v23))
  {
    if (!objc_msgSend_length(self->_requestAceHash, v25, v26, v27, v28))
    {
      v33 = objc_msgSend_aceId(self, v29, v30, v31, v32);
      v34 = sub_233505670(@"Set Queue", v33);
      v35 = self->_requestAceHash;
      self->_requestAceHash = v34;
    }

    v36 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_requestAceHash;
      v42 = objc_msgSend_dryRun(self, v37, v38, v39, v40);
      v43 = &stru_2848D4AE0;
      *buf = 138543874;
      v179 = v41;
      v180 = 2114;
      if (v42)
      {
        v43 = @" ⚠️ DRY RUN";
      }

      v181 = v14;
      v182 = 2114;
      v183 = v43;
      _os_log_impl(&dword_2334D9000, v36, OS_LOG_TYPE_DEFAULT, "Set Queue (radio) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
    }

    v48 = objc_msgSend_dryRun(self, v44, v45, v46, v47);
    objc_msgSend__performRadioStationSetQueueAsDryRun_completion_(self, v49, v48, completionCopy, v50);
    goto LABEL_51;
  }

  v72 = sub_23350261C(v14);
  if (v72 == 4)
  {
    goto LABEL_21;
  }

  if (v72 != 3)
  {
    if (v72 == 1)
    {
LABEL_21:
      if (!objc_msgSend_length(self->_requestAceHash, v73, v74, v75, v76))
      {
        v81 = objc_msgSend_aceId(self, v77, v78, v79, v80);
        v82 = sub_233505670(@"Set Queue", v81);
        v83 = self->_requestAceHash;
        self->_requestAceHash = v82;
      }

      v84 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v89 = self->_requestAceHash;
        v90 = objc_msgSend_dryRun(self, v85, v86, v87, v88);
        v91 = &stru_2848D4AE0;
        *buf = 138543874;
        v179 = v89;
        v180 = 2114;
        if (v90)
        {
          v91 = @" ⚠️ DRY RUN";
        }

        v181 = v14;
        v182 = 2114;
        v183 = v91;
        _os_log_impl(&dword_2334D9000, v84, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
      }

      v96 = objc_msgSend_dryRun(self, v92, v93, v94, v95);
      objc_msgSend__performMediaItemsSetQueueAsDryRun_completion_(self, v97, v96, completionCopy, v98);
      goto LABEL_51;
    }

    if (!objc_msgSend_length(self->_requestAceHash, v73, v74, v75, v76))
    {
      v143 = objc_msgSend_aceId(self, v139, v140, v141, v142);
      v144 = sub_233505670(@"Set Queue", v143);
      v145 = self->_requestAceHash;
      self->_requestAceHash = v144;
    }

    v58 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v67 = objc_alloc(MEMORY[0x277D47208]);
      v71 = objc_msgSend_initWithErrorCode_(v67, v68, *MEMORY[0x277D48638], v69, v70);
      completionCopy[2](completionCopy, v71);

      goto LABEL_51;
    }

    v150 = self->_requestAceHash;
    v151 = objc_msgSend_dryRun(self, v146, v147, v148, v149);
    v152 = &stru_2848D4AE0;
    *buf = 138543874;
    v179 = v150;
    v180 = 2114;
    if (v151)
    {
      v152 = @" ⚠️ DRY RUN";
    }

    v181 = v14;
    v182 = 2114;
    v183 = v152;
    v66 = "Set Queue (invalid) <%{public}@>: invoke with invalid origin identifier %{public}@%{public}@";
LABEL_16:
    _os_log_impl(&dword_2334D9000, v58, OS_LOG_TYPE_ERROR, v66, buf, 0x20u);
    goto LABEL_17;
  }

  v99 = objc_msgSend_sharedUserIdFromPlayableMusicAccount(self, v73, v74, v75, v76);
  if (objc_msgSend_length(v99, v100, v101, v102, v103))
  {
    v108 = objc_msgSend_assetInfo(self, v104, v105, v106, v107);
    v113 = objc_msgSend_length(v108, v109, v110, v111, v112);

    if (!v113)
    {
      if (!objc_msgSend_length(self->_requestAceHash, v114, v115, v116, v117))
      {
        v122 = objc_msgSend_aceId(self, v118, v119, v120, v121);
        v123 = sub_233505670(@"Set Queue", v122);
        v124 = self->_requestAceHash;
        self->_requestAceHash = v123;
      }

      v125 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        v130 = self->_requestAceHash;
        v131 = objc_msgSend_dryRun(self, v126, v127, v128, v129);
        v132 = &stru_2848D4AE0;
        *buf = 138543874;
        v179 = v130;
        v180 = 2114;
        if (v131)
        {
          v132 = @" ⚠️ DRY RUN";
        }

        v181 = v14;
        v182 = 2114;
        v183 = v132;
        _os_log_impl(&dword_2334D9000, v125, OS_LOG_TYPE_DEFAULT, "Set Queue (localstore) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
      }

      v137 = objc_msgSend_dryRun(self, v133, v134, v135, v136);
      v175[0] = MEMORY[0x277D85DD0];
      v175[1] = 3221225472;
      v175[2] = sub_2334FD034;
      v175[3] = &unk_2789DB698;
      v175[4] = self;
      v176 = v14;
      v177 = completionCopy;
      objc_msgSend__performMediaItemsSetQueueFromStoreIdentifiersAsDryRun_onlyPlayableItems_onlyLocalItems_completion_(self, v138, v137, 1, 0, v175);

      goto LABEL_51;
    }
  }

  else
  {
  }

  if (!objc_msgSend_length(self->_requestAceHash, v114, v115, v116, v117))
  {
    v157 = objc_msgSend_aceId(self, v153, v154, v155, v156);
    v158 = sub_233505670(@"Set Queue", v157);
    v159 = self->_requestAceHash;
    self->_requestAceHash = v158;
  }

  v160 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v165 = self->_requestAceHash;
    v166 = objc_msgSend_dryRun(self, v161, v162, v163, v164);
    v167 = &stru_2848D4AE0;
    *buf = 138543874;
    v179 = v165;
    v180 = 2114;
    if (v166)
    {
      v167 = @" ⚠️ DRY RUN";
    }

    v181 = v14;
    v182 = 2114;
    v183 = v167;
    _os_log_impl(&dword_2334D9000, v160, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
  }

  v172 = objc_msgSend_dryRun(self, v168, v169, v170, v171);
  objc_msgSend__performStoreItemsSetQueueAsDryRun_completion_(self, v173, v172, completionCopy, v174);
LABEL_51:
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  v95 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  helperCopy = helper;
  v8 = objc_alloc_init(MEMORY[0x277D27820]);
  availability = self->_availability;
  self->_availability = v8;

  if (!objc_msgSend_length(self->_requestAceHash, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_aceId(self, v14, v15, v16, v17);
    v19 = sub_233505670(@"Set Queue", v18);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v77 = self->_requestAceHash;
    v79 = objc_msgSend_hashedRouteUIDs(self, v22, v23, v24, v25);
    v76 = objc_msgSend_count(v79, v26, v27, v28, v29);
    objc_msgSend_assetInfo(self, v30, v31, v32, v33);
    v78 = v80 = completionCopy;
    v38 = objc_msgSend_length(v78, v34, v35, v36, v37) != 0;
    v43 = objc_msgSend_requesterSharedUserId(self, v39, v40, v41, v42);
    v48 = helperCopy;
    v49 = objc_msgSend_length(v43, v44, v45, v46, v47) != 0;
    v54 = objc_msgSend_sharedUserIdFromPlayableMusicAccount(self, v50, v51, v52, v53);
    v59 = objc_msgSend_length(v54, v55, v56, v57, v58) != 0;
    v64 = objc_msgSend_startPlaying(self, v60, v61, v62, v63);
    *buf = 138544642;
    v84 = v77;
    v85 = 2048;
    v86 = v76;
    v87 = 1024;
    v88 = v38;
    v89 = 1024;
    v90 = v49;
    helperCopy = v48;
    v91 = 1024;
    v92 = v59;
    v93 = 2114;
    v94 = v64;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Set Queue (invoke) <%{public}@>: %lu UIDs, asset info present %{BOOL}u, requester shared user id present %{BOOL}u, playable music account shared user id present %{BOOL}u, start %{public}@", buf, 0x32u);

    completionCopy = v80;
  }

  v65 = self->_requestAceHash;
  v70 = objc_msgSend_hashedRouteUIDs(self, v66, v67, v68, v69);
  sub_2335057BC(@"Set Queue", v65, v70);

  serviceHelper = self->_serviceHelper;
  self->_serviceHelper = helperCopy;
  v72 = helperCopy;

  v73 = sub_23350699C();
  v74 = dispatch_queue_create("com.apple.mediaPlayer.assistant.setQueue", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334FD4DC;
  block[3] = &unk_2789DB670;
  block[4] = self;
  v82 = completionCopy;
  v75 = completionCopy;
  dispatch_group_notify(v73, v74, block);
}

@end