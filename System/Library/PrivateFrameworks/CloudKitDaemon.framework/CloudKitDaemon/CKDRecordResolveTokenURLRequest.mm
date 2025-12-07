@interface CKDRecordResolveTokenURLRequest
- (BOOL)sendRequestAnonymously;
- (CKDRecordResolveTokenURLRequest)initWithOperation:(id)operation shortTokenLookupInfos:(id)infos;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDRecordResolveTokenURLRequest

- (CKDRecordResolveTokenURLRequest)initWithOperation:(id)operation shortTokenLookupInfos:(id)infos
{
  infosCopy = infos;
  v13.receiver = self;
  v13.super_class = CKDRecordResolveTokenURLRequest;
  v8 = [(CKDURLRequest *)&v13 initWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lookupInfos, infos);
    v10 = objc_opt_new();
    lookupInfosByRequestID = v9->_lookupInfosByRequestID;
    v9->_lookupInfosByRequestID = v10;
  }

  return v9;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDRecordResolveTokenURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_lookupInfos(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"lookupInfos");
}

- (id)requestOperationClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

- (BOOL)sendRequestAnonymously
{
  v13.receiver = self;
  v13.super_class = CKDRecordResolveTokenURLRequest;
  if ([(CKDURLRequest *)&v13 sendRequestAnonymously])
  {
    return 1;
  }

  v6 = objc_msgSend_container(self, v3, v4);
  v9 = objc_msgSend_options(v6, v7, v8);
  v5 = objc_msgSend_useAnonymousToServerShareParticipants(v9, v10, v11);

  return v5;
}

- (id)generateRequestOperations
{
  v4 = objc_msgSend_lookupInfos(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253D6884;
  v8[3] = &unk_27854D5F8;
  v8[4] = self;
  v6 = objc_msgSend_CKMap_(v4, v5, v8);

  return v6;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v523 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_response(objectCopy, v5, v6);
  v10 = objc_msgSend_operationUUID(v7, v8, v9);

  v13 = objc_msgSend_lookupInfosByRequestID(self, v11, v12);
  v493 = v10;
  v495 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v10);

  if (!objc_msgSend_hasRecordResolveTokenResponse(objectCopy, v15, v16))
  {
    inited = 0;
    v101 = 0;
LABEL_136:
    v419 = objc_msgSend_result(objectCopy, v17, v18);
    if (v101)
    {
      v420 = objc_opt_new();

      objc_msgSend_setCode_(v420, v421, 3);
      v422 = objc_opt_new();
      objc_msgSend_setError_(v420, v423, v422);

      v424 = objc_opt_new();
      objc_msgSend_error(v420, v425, v426);
      v428 = v427 = self;
      objc_msgSend_setClientError_(v428, v429, v424);

      v432 = objc_msgSend_error(v420, v430, v431);
      v435 = objc_msgSend_clientError(v432, v433, v434);
      objc_msgSend_setType_(v435, v436, 106);

      self = v427;
      v439 = objc_msgSend_error(v420, v437, v438);
      objc_msgSend_setErrorKey_(v439, v440, @"Client OS version does not support the crypto requirements on the share");

      v443 = objc_msgSend_error(v420, v441, v442);
      objc_msgSend_setErrorDescription_(v443, v444, @"Unable to parse crypto requirements on the share");

      v419 = v420;
    }

    v445 = objc_msgSend_tokenResolveBlock(self, v417, v418);

    if (v445)
    {
      v448 = objc_msgSend_tokenResolveBlock(self, v446, v447);
      (v448)[2](v448, v495, inited, v419);
    }

    v449 = v101;

    goto LABEL_141;
  }

  v19 = objc_msgSend_recordResolveTokenResponse(objectCopy, v17, v18);
  v22 = objc_msgSend_shareMetadata(v19, v20, v21);
  v25 = v22;
  if (!v22 || !objc_msgSend_hasDenyAccessRequests(v22, v23, v24) || (objc_msgSend_denyAccessRequests(v25, v26, v27) & 1) != 0 || (objc_msgSend_hasCallerParticipant(v25, v28, v29) & 1) != 0 || (objc_msgSend_hasOwnerParticipant(v25, v30, v31) & 1) != 0 || (objc_msgSend_hasParticipantType(v25, v32, v33) & 1) != 0 || (objc_msgSend_hasParticipantState(v25, v34, v35) & 1) != 0 || (objc_msgSend_hasParticipantPermission(v25, v36, v37) & 1) != 0 || objc_msgSend_hasProtectedFullToken(v25, v38, v39))
  {

    goto LABEL_12;
  }

  hasRootRecordType = objc_msgSend_hasRootRecordType(v25, v40, v41);

  if (hasRootRecordType)
  {
LABEL_12:
    v44 = objc_msgSend_container(v19, v42, v43);
    if (objc_msgSend_containerEnvironment(v19, v45, v46) == 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = 2;
    }

    v48 = objc_alloc(MEMORY[0x277CBC220]);
    v491 = v44;
    v492 = objc_msgSend_initWithContainerIdentifier_environment_(v48, v49, v44, v47);
    v497 = objc_msgSend_translator(self, v50, v51);
    v54 = objc_msgSend_shareMetadata(v19, v52, v53);
    if (objc_msgSend_hasParticipantType(v54, v55, v56))
    {
      v59 = objc_msgSend_shareMetadata(v19, v57, v58);
      if (objc_msgSend_participantType(v59, v60, v61) == 1)
      {
        v64 = objc_msgSend_shareMetadata(v19, v62, v63);
        hasOwnerParticipant = objc_msgSend_hasOwnerParticipant(v64, v65, v66);

        if (!hasOwnerParticipant)
        {
          goto LABEL_24;
        }

        v70 = objc_msgSend_privateDBTranslator(self, v68, v69);

        if (!v70)
        {
          v73 = [CKDProtocolTranslator alloc];
          v76 = objc_msgSend_container(self, v74, v75);
          v78 = objc_msgSend_initWithContainer_databaseScope_(v73, v77, v76, 2);
          objc_msgSend_setPrivateDBTranslator_(self, v79, v78);

          v82 = objc_msgSend_shareMetadata(v19, v80, v81);
          v85 = objc_msgSend_ownerParticipant(v82, v83, v84);
          v88 = objc_msgSend_userId(v85, v86, v87);
          v91 = objc_msgSend_name(v88, v89, v90);
          v94 = objc_msgSend_privateDBTranslator(self, v92, v93);
          objc_msgSend_setOverriddenContainerScopedUserID_(v94, v95, v91);

          v98 = objc_msgSend_privateDBTranslator(self, v96, v97);
          objc_msgSend_setOverriddenDatabaseScope_(v98, v99, 2);
        }

        objc_msgSend_privateDBTranslator(self, v71, v72);
        v497 = v54 = v497;
      }

      else
      {
      }
    }

LABEL_24:
    v102 = objc_msgSend_shareRecord(v19, v68, v69);
    v513 = 0;
    v494 = objc_msgSend_recordFromPRecord_error_(v497, v103, v102, &v513);
    v104 = v513;

    if (v104)
    {
      v105 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v105);
      }

      v106 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v109 = objc_msgSend_shareRecord(v19, v107, v108);
        *buf = 138412546;
        v515 = v109;
        v516 = 2112;
        v517 = v104;
        _os_log_impl(&dword_22506F000, v106, OS_LOG_TYPE_INFO, "Warn: Couldn't get a shareRecord from %@: %@", buf, 0x16u);
      }
    }

    v110 = objc_alloc(MEMORY[0x277CBC698]);
    inited = objc_msgSend_initWithShare_containerID_(v110, v111, v494, v492);
    v114 = objc_msgSend_shareMetadata(v19, v112, v113);
    hasParticipantType = objc_msgSend_hasParticipantType(v114, v115, v116);

    v496 = inited;
    if (hasParticipantType)
    {
      v120 = objc_msgSend_shareMetadata(v19, v118, v119);
      v123 = objc_msgSend_participantType(v120, v121, v122);
      v126 = objc_msgSend_container(self, v124, v125);
      v129 = objc_msgSend_clientSDKVersion(v126, v127, v128);
      v132 = objc_msgSend_container(self, v130, v131);
      v135 = objc_msgSend_containerID(v132, v133, v134);
      isAppleInternal = objc_msgSend_isAppleInternal(v135, v136, v137);
      v139 = sub_2253965F8(v123, v129, isAppleInternal);
      objc_msgSend_setParticipantRole_(v496, v140, v139);

      inited = v496;
    }

    v141 = objc_msgSend_shareMetadata(v19, v118, v119);
    hasParticipantState = objc_msgSend_hasParticipantState(v141, v142, v143);

    if (hasParticipantState)
    {
      v147 = objc_msgSend_shareMetadata(v19, v145, v146);
      v151 = objc_msgSend_participantState(v147, v148, v149) - 2;
      if (v151 >= 3)
      {
        objc_msgSend_setParticipantStatus_(inited, v150, 1);
      }

      else
      {
        objc_msgSend_setParticipantStatus_(inited, v150, v151 + 2);
      }
    }

    v152 = objc_msgSend_shareMetadata(v19, v145, v146);
    hasParticipantPermission = objc_msgSend_hasParticipantPermission(v152, v153, v154);

    if (hasParticipantPermission)
    {
      v158 = objc_msgSend_shareMetadata(v19, v156, v157);
      v162 = objc_msgSend_participantPermission(v158, v159, v160) - 1;
      if (v162 < 3)
      {
        objc_msgSend_setParticipantPermission_(inited, v161, v162 + 1);
      }

      else
      {
        objc_msgSend_setParticipantPermission_(inited, v161, 0);
      }
    }

    v163 = objc_msgSend_shareMetadata(v19, v156, v157);
    v166 = objc_msgSend_protectedFullToken(v163, v164, v165);
    objc_msgSend_setProtectedFullToken_(inited, v167, v166);

    v170 = objc_msgSend_shareMetadata(v19, v168, v169);
    v173 = objc_msgSend_rootRecordType(v170, v171, v172);
    v176 = objc_msgSend_name(v173, v174, v175);
    objc_msgSend_setRootRecordType_(inited, v177, v176);

    if (objc_msgSend_recordsCount(v19, v178, v179))
    {
      v484 = objc_autoreleasePoolPush();
      v184 = objc_msgSend_records(v19, v182, v183);
      v187 = objc_msgSend_firstObject(v184, v185, v186);
      v512 = 0;
      v487 = objc_msgSend_recordFromPRecord_error_(v497, v188, v187, &v512);
      v189 = v512;

      if (v189)
      {
        v192 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v192);
        }

        v193 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
        {
          v196 = objc_msgSend_records(v19, v194, v195);
          v199 = objc_msgSend_firstObject(v196, v197, v198);
          *buf = 138412546;
          v515 = v199;
          v516 = 2112;
          v517 = v189;
          _os_log_impl(&dword_22506F000, v193, OS_LOG_TYPE_INFO, "Warn: Couldn't get a root record from %@: %@", buf, 0x16u);
        }
      }

      v200 = v487;
      v204 = objc_msgSend_recordID(v487, v190, v191);
      objc_msgSend_setHierarchicalRootRecordID_(inited, v201, v204);

      LODWORD(v204) = objc_msgSend_shouldFetchRootRecord(self, v202, v203);
      if (objc_msgSend_recordsCount(v19, v205, v206) <= v204)
      {
        v212 = 0;
        v251 = v484;
        objc_msgSend_setSharedItemHierarchyIDs_(inited, v207, 0);
      }

      else
      {
        v204 = v204;
        v208 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v208);
        }

        v209 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
        {
          v455 = objc_msgSend_recordsCount(v19, v210, v211);
          *buf = 134217984;
          v515 = v455 - v204;
          _os_log_debug_impl(&dword_22506F000, v209, OS_LOG_TYPE_DEBUG, "Found %lu additional share hierarchy records", buf, 0xCu);
        }

        v212 = objc_opt_new();
        v215 = objc_msgSend_records(v19, v213, v214);
        v218 = objc_msgSend_count(v215, v216, v217);

        if (v218 > v204)
        {
          selfCopy = 138543362;
          while (1)
          {
            v221 = objc_msgSend_records(v19, v219, v220, selfCopy);
            v223 = objc_msgSend_objectAtIndex_(v221, v222, v204);

            v224 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v224);
            }

            v225 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
            {
              v244 = objc_msgSend_recordIdentifier(v223, v226, v227);
              v247 = objc_msgSend_value(v244, v245, v246);
              v250 = objc_msgSend_name(v247, v248, v249);
              *buf = selfCopy;
              v515 = v250;
              _os_log_debug_impl(&dword_22506F000, v225, OS_LOG_TYPE_DEBUG, "Parsing share hierarchy record %{public}@", buf, 0xCu);
            }

            v230 = objc_msgSend_recordIdentifier(v223, v228, v229);
            v511 = 0;
            v232 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v497, v231, v230, &v511);
            v233 = v511;

            v234 = *MEMORY[0x277CBC878];
            v235 = *MEMORY[0x277CBC880];
            if (v233 || !v232)
            {
              break;
            }

            if (v235 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v234);
            }

            v236 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEBUG))
            {
              *buf = selfCopy;
              v515 = v232;
              _os_log_debug_impl(&dword_22506F000, v236, OS_LOG_TYPE_DEBUG, "Parsed share hierarchy record ID %{public}@", buf, 0xCu);
            }

            objc_msgSend_addObject_(v212, v237, v232);
            ++v204;
            v240 = objc_msgSend_records(v19, v238, v239);
            v243 = objc_msgSend_count(v240, v241, v242);

            if (v204 >= v243)
            {
              goto LABEL_74;
            }
          }

          if (v235 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v234);
          }

          v254 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v254, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v515 = v223;
            v516 = 2112;
            v517 = v233;
            _os_log_impl(&dword_22506F000, v254, OS_LOG_TYPE_INFO, "Warn: Couldn't get a shared hierarchy record ID from %@: %@", buf, 0x16u);
          }

          objc_msgSend_removeAllObjects(v212, v255, v256);
LABEL_74:
          inited = v496;
        }

        v251 = v484;
        v200 = v487;
        objc_msgSend_setSharedItemHierarchyIDs_(inited, v219, v212);
      }

      if (objc_msgSend_shouldFetchRootRecord(self, v252, v253))
      {
        objc_msgSend_setRootRecord_(inited, v257, v200);
      }

      objc_autoreleasePoolPop(v251);
    }

    v258 = objc_msgSend_shareMetadata(v19, v180, v181);
    hasCallerParticipant = objc_msgSend_hasCallerParticipant(v258, v259, v260);

    if (hasCallerParticipant)
    {
      v264 = objc_msgSend_shareMetadata(v19, v262, v263);
      v267 = objc_msgSend_callerParticipant(v264, v265, v266);
      v270 = objc_msgSend_recordID(v494, v268, v269);
      v510 = 0;
      v272 = objc_msgSend_shareParticipantFromPParticipant_shareID_error_(v497, v271, v267, v270, &v510);
      v273 = v510;
      objc_msgSend_setCallingParticipant_(inited, v274, v272);

      v277 = objc_msgSend_callingParticipant(inited, v275, v276);
      objc_msgSend_setIsCurrentUser_(v277, v278, 1);

      v279 = *MEMORY[0x277CBC878];
      if (v273)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v279);
        }

        v280 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v280, OS_LOG_TYPE_INFO))
        {
          v283 = objc_msgSend_shareMetadata(v19, v281, v282);
          v286 = objc_msgSend_callerParticipant(v283, v284, v285);
          *buf = 138412546;
          v515 = v286;
          v516 = 2112;
          v517 = v273;
          _os_log_impl(&dword_22506F000, v280, OS_LOG_TYPE_INFO, "Warn: Couldn't get a calling participant from %@: %@", buf, 0x16u);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v279);
        }

        v273 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v273, OS_LOG_TYPE_INFO))
        {
          v289 = objc_msgSend_callingParticipant(inited, v287, v288);
          *buf = 138412290;
          v515 = v289;
          _os_log_impl(&dword_22506F000, v273, OS_LOG_TYPE_INFO, "Parsed calling participant: %@", buf, 0xCu);
        }
      }
    }

    v290 = objc_msgSend_share(inited, v262, v263);
    v293 = objc_msgSend_currentUserParticipant(v290, v291, v292);

    if (!v293)
    {
      v296 = objc_msgSend_callingParticipant(inited, v294, v295);

      if (v296)
      {
        v485 = objectCopy;
        v488 = v19;
        selfCopy = self;
        v509 = 0u;
        v507 = 0u;
        v508 = 0u;
        v506 = 0u;
        v297 = objc_msgSend_share(inited, v294, v295);
        v300 = objc_msgSend_participants(v297, v298, v299);

        v302 = objc_msgSend_countByEnumeratingWithState_objects_count_(v300, v301, &v506, v522, 16);
        if (v302)
        {
          v305 = v302;
          v306 = *v507;
          while (2)
          {
            for (i = 0; i != v305; ++i)
            {
              if (*v507 != v306)
              {
                objc_enumerationMutation(v300);
              }

              v308 = *(*(&v506 + 1) + 8 * i);
              v309 = objc_msgSend_participantID(v308, v303, v304);
              v312 = objc_msgSend_callingParticipant(inited, v310, v311);
              v315 = objc_msgSend_participantID(v312, v313, v314);
              isEqualToString = objc_msgSend_isEqualToString_(v309, v316, v315);

              if (isEqualToString)
              {
                objc_msgSend_setIsCurrentUser_(v308, v303, 1);
                inited = v496;
                goto LABEL_103;
              }

              inited = v496;
            }

            v305 = objc_msgSend_countByEnumeratingWithState_objects_count_(v300, v303, &v506, v522, 16);
            if (v305)
            {
              continue;
            }

            break;
          }
        }

LABEL_103:

        objectCopy = v485;
        v19 = v488;
        self = selfCopy;
      }
    }

    v318 = objc_msgSend_share(inited, v294, v295);
    v321 = objc_msgSend_currentUserParticipant(v318, v319, v320);

    v322 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v322);
    }

    v323 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v323, OS_LOG_TYPE_DEBUG))
    {
      v451 = objc_msgSend_share(inited, v324, v325);
      v454 = objc_msgSend_recordID(v451, v452, v453);
      *buf = 138543618;
      v515 = v454;
      v516 = 2112;
      v517 = v321;
      _os_log_debug_impl(&dword_22506F000, v323, OS_LOG_TYPE_DEBUG, "Found current user participant on share %{public}@: %@", buf, 0x16u);
    }

    v328 = objc_msgSend_shareMetadata(v19, v326, v327);
    v331 = objc_msgSend_hasOwnerParticipant(v328, v329, v330);

    if (v331)
    {
      v334 = objc_msgSend_shareMetadata(v19, v332, v333);
      v337 = objc_msgSend_ownerParticipant(v334, v335, v336);
      objc_msgSend_recordID(v494, v338, v339);
      v340 = v19;
      v342 = v341 = self;
      v505 = 0;
      v344 = objc_msgSend_shareParticipantFromPParticipant_shareID_error_(v497, v343, v337, v342, &v505);
      v101 = v505;

      self = v341;
      v19 = v340;

      v347 = objc_msgSend_userIdentity(v344, v345, v346);
      objc_msgSend_setOwnerIdentity_(inited, v348, v347);

      if (v101)
      {
        goto LABEL_135;
      }
    }

    v349 = objc_msgSend_shareMetadata(v19, v332, v333);
    hasSignedCryptoRequirements = objc_msgSend_hasSignedCryptoRequirements(v349, v350, v351);

    if (hasSignedCryptoRequirements)
    {
      v355 = v321;
      v356 = v19;
      selfCopy2 = self;
      v489 = v356;
      v358 = objc_msgSend_shareMetadata(v356, v353, v354);
      v361 = objc_msgSend_signedCryptoRequirements(v358, v359, v360);
      v364 = objc_msgSend_recordID(v494, v362, v363);
      v367 = objc_msgSend_zoneID(v364, v365, v366);
      v503 = 0;
      v504 = 0;
      v369 = objc_msgSend_cryptoRequirementsFromPSignedCryptoRequirements_zoneID_error_requiredFeaturesValidationFailureType_(v497, v368, v361, v367, &v504, &v503);
      v101 = v504;
      v370 = v503;

      if (!(v101 | v370))
      {
        v373 = objc_msgSend_requiredAdopterFeatures(v369, v371, v372);

        if (v373)
        {
          v375 = objc_msgSend_requiredAdopterFeatures(v369, v371, v374);
          inited = v496;
          objc_msgSend_setRequiredFeatures_(v496, v376, v375);

          self = selfCopy2;
          v19 = v489;
          v321 = v355;
          objc_msgSend_shareRecord(v489, v377, v378);
          v381 = LABEL_119:;
          v384 = objc_msgSend_shareInfo(v381, v382, v383);
          v387 = objc_msgSend_potentialMatchsCount(v384, v385, v386);

          if (v387)
          {
            v390 = objc_msgSend_shareRecord(v19, v388, v389);
            v393 = objc_msgSend_shareInfo(v390, v391, v392);
            v396 = objc_msgSend_potentialMatchs(v393, v394, v395);
            v500[0] = MEMORY[0x277D85DD0];
            v500[1] = 3221225472;
            v500[2] = sub_2253D8234;
            v500[3] = &unk_27854D620;
            v501 = v497;
            v502 = v494;
            objc_msgSend_CKCompactMap_(v396, v397, v500);
            v398 = v19;
            v400 = v399 = self;
            objc_msgSend_setOutOfNetworkMatches_(inited, v401, v400);

            self = v399;
            v19 = v398;
          }

          if (objc_msgSend_hasRecordZone(v19, v388, v389))
          {
            v404 = objc_msgSend_recordZone(v19, v402, v403);
            v498 = 0;
            v499 = 0;
            v406 = objc_msgSend_recordZoneFromPRecordZone_error_requiredFeaturesValidationFailureType_(v497, v405, v404, &v499, &v498);
            v101 = v499;
            v407 = v498;

            v408 = *MEMORY[0x277CBC878];
            if (v101)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v408);
              }

              v409 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v409, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v515 = v101;
                _os_log_error_impl(&dword_22506F000, v409, OS_LOG_TYPE_ERROR, "Couldn't parse shared zone from resolve token response: %@", buf, 0xCu);
              }
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v408);
              }

              v409 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v409, OS_LOG_TYPE_DEBUG))
              {
                v486 = v321;
                v490 = objc_msgSend_zoneID(v406, v410, v411);
                v460 = objc_msgSend_share(v406, v456, v457);
                if (v460)
                {
                  v461 = @" with shareID ";
                }

                else
                {
                  v461 = @" without any shareID ";
                }

                v464 = objc_msgSend_share(v406, v458, v459);
                if (v464)
                {
                  selfCopy = objc_msgSend_share(v406, v462, v463);
                  v465 = objc_msgSend_recordID(selfCopy, v466, v467);
                }

                else
                {
                  v465 = &stru_28385ED00;
                }

                *buf = 138544130;
                v515 = v490;
                v516 = 2114;
                v517 = v461;
                v518 = 2114;
                v468 = v465;
                v519 = v465;
                v520 = 2112;
                v521 = v496;
                _os_log_debug_impl(&dword_22506F000, v409, OS_LOG_TYPE_DEBUG, "Parsed zone %{public}@%{public}@%{public}@ from response for share metadata %@", buf, 0x2Au);
                if (v464)
                {
                }

                v321 = v486;
              }
            }

            v415 = objc_msgSend_share(v406, v412, v413);
            if (v415)
            {
              v416 = v406;
            }

            else
            {
              v416 = 0;
            }

            objc_msgSend_setSharedZone_(v496, v414, v416);

            inited = v496;
          }

          else
          {
            v101 = 0;
          }

LABEL_135:

          goto LABEL_136;
        }
      }

      inited = v496;
      if ((objc_msgSend_isEqualToString_(v370, v371, @"unsupportedCryptoRequirementsVersion") & 1) != 0 || objc_msgSend_isEqualToString_(v370, v379, @"unsupportedCryptoFeatureRequirementsVersion"))
      {
        v380 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v379, *MEMORY[0x277CBC120], 5021, @"Crypto requirements in the share metadata are not supported by this OS version");

        v101 = v380;
      }

      self = selfCopy2;
      v321 = v355;

      v19 = v489;
      if (v101)
      {
        goto LABEL_135;
      }
    }

    objc_msgSend_shareRecord(v19, v353, v354);
    goto LABEL_119;
  }

  v470 = objc_alloc(MEMORY[0x277CBC698]);
  inited = objc_msgSend_initInternal(v470, v471, v472);
  objc_msgSend_setAccessRequestsEnabled_(inited, v473, 1);
  v476 = objc_msgSend_tokenResolveBlock(self, v474, v475);

  if (v476)
  {
    v479 = objc_msgSend_tokenResolveBlock(self, v477, v478);
    v482 = objc_msgSend_result(objectCopy, v480, v481);
    (v479)[2](v479, v495, inited, v482);
  }

  v449 = 0;
LABEL_141:

  return v449;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_response(failureCopy, v4, v5);
  v9 = objc_msgSend_operationUUID(v6, v7, v8);

  v12 = objc_msgSend_lookupInfosByRequestID(self, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  v17 = objc_msgSend_tokenResolveBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_tokenResolveBlock(self, v18, v19);
    v23 = objc_msgSend_result(failureCopy, v21, v22);
    (v20)[2](v20, v14, 0, v23);
  }
}

@end