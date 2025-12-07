void sub_22512E730(uint64_t a1, void *a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v113 = objc_msgSend_sectionItems(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_count(v113, v6, v7);
  v115 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v9, v8);
  v12 = objc_msgSend_signature(*(a1 + 32), v10, v11);
  objc_msgSend_bytes(v12, v13, v14);
  v17 = objc_msgSend_authToken(*(a1 + 32), v15, v16);
  objc_msgSend_UTF8String(v17, v18, v19);
  v20 = objc_opt_new();
  v112 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v111 = malloc_type_calloc(v8, 8uLL, 0x10040436913F5uLL);
  v110 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v114 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v23 = objc_msgSend_operation(v3, v21, v22);
  v26 = objc_msgSend_operationInfo(v23, v24, v25);

  v101 = v26;
  v29 = objc_msgSend_fetchingAssetsForRereference(v26, v27, v28);
  v102 = v17;
  v103 = v3;
  if (v8)
  {
    v32 = v29;
    v33 = 0;
    v106 = *MEMORY[0x277D254F8];
    v105 = *MEMORY[0x277D254F0];
    v104 = *MEMORY[0x277D25660];
    v108 = *MEMORY[0x277D25488];
    v34 = -1;
    do
    {
      v35 = v8;
      v36 = v12;
      v37 = objc_msgSend_objectAtIndexedSubscript_(v113, v30, v33);
      v12 = objc_msgSend_signature(v37, v38, v39);

      if (!objc_msgSend_itemID(v37, v40, v41))
      {
        v69 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v42, v43);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v69, v70, *(a1 + 72), *(a1 + 40), @"CKDMMCS.m", 1664, @"Zero item ID");
      }

      v112[v33] = objc_msgSend_itemID(v37, v42, v43);
      v111[v33] = objc_msgSend_bytes(v12, v44, v45);
      v110[v33] = objc_msgSend_offset(v37, v46, v47);
      v114[v33] = objc_msgSend_fileSize(v37, v48, v49);
      if (objc_msgSend_downloadTokenExpiration(v37, v50, v51) < v34)
      {
        v34 = objc_msgSend_downloadTokenExpiration(v37, v52, v53);
      }

      v54 = objc_msgSend_referenceSignature(*(a1 + 32), v52, v53);
      if (v54)
      {
        v57 = v54;
        v58 = objc_msgSend_assetKey(*(a1 + 32), v55, v56);

        if (v58)
        {
          v59 = objc_opt_new();
          v62 = objc_msgSend_referenceSignature(*(a1 + 32), v60, v61);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v63, v62, v106);

          v66 = objc_msgSend_assetKey(*(a1 + 32), v64, v65);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v67, v66, v105);

          objc_msgSend_setObject_forKeyedSubscript_(v20, v68, v59, v104);
        }
      }

      if (v32)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v20, v55, MEMORY[0x277CBEC38], v108);
      }

      objc_msgSend_addObject_(v115, v55, v20);

      ++v33;
      v8 = v35;
    }

    while (v35 != v33);
    v71 = v34 + -978307200.0;
  }

  else
  {
    v71 = 1.84467441e19;
  }

  v72 = objc_msgSend_MMCSOptions(*(a1 + 48), v30, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v73, v115, *MEMORY[0x277D25598]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v74, *(a1 + 56), *MEMORY[0x277D25560]);
  v77 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v75, v76, v71);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v78, v77, *MEMORY[0x277D25538]);

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(*(a1 + 40), v79, v72);
  }

  v81 = objc_msgSend_contentBaseURL(*(a1 + 32), v79, v80);
  v84 = objc_msgSend_owner(*(a1 + 32), v82, v83);
  v109 = objc_msgSend_URLByAppendingPathComponent_(v81, v85, v84);

  v116 = 0;
  objc_msgSend_getMMCSEngine(*(a1 + 40), v86, v87);
  v90 = objc_msgSend_requestor(*(a1 + 32), v88, v89);
  v91 = v72;
  v107 = MMCSGetItemsWithSection();

  free(v112);
  free(v111);
  free(v110);
  free(v114);
  if (!v107)
  {
    v94 = v116;
    v95 = objc_msgSend_mmcsOperationType(v103, v92, v93, v112, v111, v110, v114, &v116);
    v97 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v96, v94, @"Fetching section failed", v95);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v98 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v100 = *(a1 + 64);
      *buf = 134218498;
      v118 = v8;
      v119 = 2114;
      v120 = v100;
      v121 = 2112;
      v122 = v97;
      _os_log_error_impl(&dword_22506F000, v98, OS_LOG_TYPE_ERROR, "Failed getting a section with %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);
    }

    objc_msgSend_didCompleteRequestWithError_(v103, v99, v97);
    if (v116)
    {
      CFRelease(v116);
    }
  }
}

void sub_22512F3B8(void *a1, void *a2, uint64_t a3)
{
  v406 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = v5;
  v9 = "register";
  if (a3)
  {
    v9 = "fetch";
  }

  v367 = v9;
  v10 = "Registered";
  if (a3)
  {
    v10 = "Fetched";
  }

  v342 = v10;
  v349 = objc_msgSend_operation(v5, v6, v7);
  v11 = a2;
  v364 = *MEMORY[0x277D25640];
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x277D25640]);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, *MEMORY[0x277D25598]);
  v19 = objc_msgSend_objectForKeyedSubscript_(v11, v16, *MEMORY[0x277D255F0]);
  if (!v13)
  {
    v20 = objc_msgSend_itemGroup(v8, v17, v18);
    objc_msgSend_setAuthPutRequest_(v20, v21, v19);
  }

  v344 = v19;
  v22 = objc_msgSend_count(v15, v17, v18);
  v25 = objc_msgSend_itemGroup(v8, v23, v24);
  v28 = objc_msgSend_items(v25, v26, v27);

  v31 = objc_msgSend_operationInfo(v8, v29, v30);
  v34 = objc_msgSend_options(v31, v32, v33);

  v35 = (v34 >> 4) & 1;
  v38 = objc_msgSend_operationInfo(v8, v36, v37);
  LOBYTE(v34) = objc_msgSend_options(v38, v39, v40);

  v385[0] = MEMORY[0x277D85DD0];
  v385[1] = 3221225472;
  v385[2] = sub_225130D6C;
  v385[3] = &unk_278546500;
  v386 = v35;
  v387 = a3;
  v388 = (v34 & 0x40) != 0;
  v347 = v28;
  v343 = objc_msgSend_CKFilter_(v28, v41, v385);
  v44 = objc_msgSend_count(v343, v42, v43);
  v46 = MEMORY[0x277CBC880];
  v346 = v22;
  v345 = v15;
  if (!v13)
  {
    v60 = v44;
    if (v44 != v22)
    {
      v293 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v45, *MEMORY[0x277CBC120], 3001, @"Failed to register all assets");
      if (*v46 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v294 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v337 = v294;
        v340 = objc_msgSend_operationID(v349, v338, v339);
        *buf = 136447234;
        v390 = v367;
        v391 = 2048;
        v392 = v22;
        v393 = 2048;
        v394 = v60;
        v395 = 2114;
        v396 = v340;
        v397 = 2112;
        v398 = v293;
        _os_log_error_impl(&dword_22506F000, v337, OS_LOG_TYPE_ERROR, "Failed to %{public}s MMCS items (%lu/%lu) not already registered for operationID:%{public}@: %@", buf, 0x34u);
      }

      v49 = v293;
      v377 = 0u;
      v378 = 0u;
      v379 = 0u;
      v380 = 0u;
      v50 = v28;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v295, &v377, v404, 16);
      if (!v54)
      {
        v292 = v49;
        goto LABEL_151;
      }

      v55 = v11;
      v298 = *v378;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v378 != v298)
          {
            objc_enumerationMutation(v50);
          }

          v300 = *(*(&v377 + 1) + 8 * i);
          v301 = objc_msgSend_error(v300, v296, v297);

          if (!v301)
          {
            objc_msgSend_setError_(v300, v296, v49);
          }
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v296, &v377, v404, 16);
      }

      while (v54);
      goto LABEL_150;
    }

    v375 = 0u;
    v376 = 0u;
    v373 = 0u;
    v374 = 0u;
    v50 = v15;
    v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v61, &v373, v403, 16);
    if (!v365)
    {
      v49 = 0;
      v54 = 0;
      v292 = 0;
      goto LABEL_151;
    }

    v341 = v11;
    v49 = 0;
    v359 = 0;
    v362 = *MEMORY[0x277D254B0];
    v363 = *v374;
    v348 = *MEMORY[0x277CBBF50];
    v356 = *MEMORY[0x277D25658];
    v355 = *MEMORY[0x277D25480];
    v354 = *MEMORY[0x277D254D8];
    v353 = *MEMORY[0x277D25420];
    v351 = a3;
    v350 = v8;
LABEL_25:
    v63 = 0;
    while (1)
    {
      if (*v374 != v363)
      {
        objc_enumerationMutation(v50);
      }

      v64 = *(*(&v373 + 1) + 8 * v63);
      v67 = objc_msgSend_objectForKeyedSubscript_(v64, v62, v362);
      if (!v67)
      {
        v280 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v65, v66);
        v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v281, "void CKDMMCSFetchOrRegisterCompleteCallback(void *, CFDictionaryRef, BOOL)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v280, v283, v282, @"CKDMMCS.m", 670, @"Invalid response from MMCS");
      }

      v68 = objc_msgSend_unsignedLongLongValue(v67, v65, v66);
      v72 = objc_msgSend_findTrackedMMCSItemByItemID_(v8, v69, v68);
      if (!v72)
      {
        v284 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v70, v71);
        v286 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v285, "void CKDMMCSFetchOrRegisterCompleteCallback(void *, CFDictionaryRef, BOOL)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v284, v287, v286, @"CKDMMCS.m", 672, @"Item not found");
      }

      v73 = objc_msgSend_itemID(v72, v70, v71);
      if (v73 != objc_msgSend_unsignedLongLongValue(v67, v74, v75))
      {
        v288 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v76, v77);
        v290 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v289, "void CKDMMCSFetchOrRegisterCompleteCallback(void *, CFDictionaryRef, BOOL)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v288, v291, v290, @"CKDMMCS.m", 673, @"itemID mismatch");
      }

      v366 = objc_msgSend_itemID(v72, v76, v77);
      v80 = objc_msgSend_fileURL(v72, v78, v79);
      v368 = objc_msgSend_path(v80, v81, v82);

      v84 = objc_msgSend_objectForKeyedSubscript_(v64, v83, v364);

      if (v84)
      {
        v87 = MEMORY[0x277CBC880];
LABEL_36:
        v88 = *MEMORY[0x277CBC878];
        if (a3)
        {
          if (*v87 != -1)
          {
            dispatch_once(v87, v88);
          }

          v89 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v265 = v89;
            v268 = objc_msgSend_operationID(v349, v266, v267);
            *buf = 134218498;
            v390 = v366;
            v391 = 2114;
            v392 = v268;
            v393 = 2112;
            v394 = v84;
            _os_log_error_impl(&dword_22506F000, v265, OS_LOG_TYPE_ERROR, "Failed to fetch registered MMCS item %llu for operationID:%{public}@ %@", buf, 0x20u);
          }

          v92 = objc_msgSend_mmcsOperationType(v8, v90, v91);
          v49 = objc_msgSend__errorWithMMCSError_path_description_operationType_(CKDMMCS, v93, v84, 0, @"Failed to check registered asset", v92);
        }

        else
        {
          if (*v87 != -1)
          {
            dispatch_once(v87, v88);
          }

          v124 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v269 = v124;
            v272 = objc_msgSend_operationID(v349, v270, v271);
            v275 = objc_msgSend_CKSanitizedPath(v368, v273, v274);
            *buf = 134218754;
            v390 = v366;
            v391 = 2114;
            v392 = v272;
            v393 = 2114;
            v394 = v275;
            v395 = 2112;
            v396 = v84;
            _os_log_error_impl(&dword_22506F000, v269, OS_LOG_TYPE_ERROR, "Failed to register MMCS item %llu for operationID:%{public}@ at %{public}@: %@", buf, 0x2Au);
          }

          v127 = objc_msgSend_CKSanitizedPath(v368, v125, v126);
          v130 = objc_msgSend_mmcsOperationType(v8, v128, v129);
          v49 = objc_msgSend__errorWithMMCSError_path_description_operationType_(CKDMMCS, v131, v84, v127, @"Failed to register asset", v130);
        }

        objc_msgSend_setError_(v72, v94, v49);
        goto LABEL_133;
      }

      if ((objc_msgSend_isAlreadyRegistered(v72, v85, v86) & 1) == 0 && (objc_msgSend_isReaderReadFrom(v72, v95, v96) & 1) == 0)
      {
        if (objc_msgSend_canBeRegistered(v72, v95, v97))
        {
          v99 = MEMORY[0x277CBC560];
          v100 = objc_msgSend_fileURL(v72, v95, v98);
          v103 = objc_msgSend_CKSanitizedPath(v100, v101, v102);
          v84 = objc_msgSend_errorWithDomain_code_path_format_(v99, v104, v348, 17, v103, @"Stale chunk state found during registration when none expected");

          a3 = v351;
          v87 = MEMORY[0x277CBC880];
          if (v84)
          {
            goto LABEL_36;
          }
        }
      }

      v105 = v67;
      v106 = v50;
      v107 = a3;
      v108 = objc_msgSend_objectForKeyedSubscript_(v64, v95, v356);
      v110 = objc_msgSend_objectForKeyedSubscript_(v64, v109, v355);
      v112 = objc_msgSend_objectForKeyedSubscript_(v64, v111, v354);
      v114 = objc_msgSend_objectForKeyedSubscript_(v64, v113, v353);
      v360 = v108;
      objc_msgSend_setSignature_(v72, v115, v108);
      v358 = v110;
      v118 = objc_msgSend_unsignedLongLongValue(v110, v116, v117);
      objc_msgSend_setFileSize_(v72, v119, v118);
      v357 = v112;
      v122 = v112 ? objc_msgSend_unsignedLongLongValue(v112, v120, v121) : objc_msgSend_fileSize(v72, v120, v121);
      objc_msgSend_setPaddedFileSize_(v72, v123, v122);
      v361 = v114;
      v134 = objc_msgSend_unsignedIntValue(v114, v132, v133);
      objc_msgSend_setChunkCount_(v72, v135, v134);
      v138 = objc_msgSend_signature(v72, v136, v137);
      v141 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v139, v140);
      isEqualToData = objc_msgSend_isEqualToData_(v138, v142, v141);

      v148 = objc_msgSend_mmcsOperationType(v8, v144, v145);
      a3 = v107;
      v149 = v148 == 6 && objc_msgSend_chunkCount(v72, v146, v147) == 0;
      v50 = v106;
      v67 = v105;
      if (((isEqualToData | v149) & 1) == 0 && ((a3 & 1) != 0 || objc_msgSend_fileSize(v72, v146, v147)))
      {
        v158 = v361;
        v155 = MEMORY[0x277CBC880];
        if (v148 == 6 && !objc_msgSend_chunkCount(v72, v146, v147))
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 720, "MMCSItem.chunkCount != 0 && Expected MMCSItem.chunkCount != 0");
        }
      }

      else
      {
        v150 = MEMORY[0x277CBC6A8];
        v151 = objc_msgSend_signature(v72, v146, v147);
        LODWORD(v150) = objc_msgSend_isValidV2Signature_(v150, v152, v151);

        v155 = MEMORY[0x277CBC880];
        if (((v150 | isEqualToData) & 1) == 0)
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 712, "isZeroFileSignature && Expected zeroSizeFileSignature");
        }

        if (objc_msgSend_mmcsOperationType(v8, v153, v154) == 6 && objc_msgSend_chunkCount(v72, v156, v157))
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 715, "MMCSItem.chunkCount == 0 && Expected MMCSItem.chunkCount == 0");
        }

        if (objc_msgSend_fileSize(v72, v156, v157))
        {
          __assert_rtn("CKDMMCSFetchOrRegisterCompleteCallback", "CKDMMCS.m", 717, "MMCSItem.fileSize == 0 && MMCSItem.size == 0");
        }

        if (*v155 != -1)
        {
          dispatch_once(v155, *MEMORY[0x277CBC878]);
        }

        v158 = v361;
        v159 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v390 = v366;
          _os_log_debug_impl(&dword_22506F000, v159, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %llu", buf, 0xCu);
        }
      }

      if ((objc_msgSend_isAlreadyRegistered(v72, v146, v147) & 1) == 0 && (a3 & 1) == 0)
      {
        v162 = objc_msgSend_asset(v72, v160, v161);
        v165 = objc_msgSend_signature(v72, v163, v164);
        objc_msgSend_setSignature_(v162, v166, v165);

        v169 = objc_msgSend_fileSize(v72, v167, v168);
        objc_msgSend_setSize_(v162, v170, v169);
        v173 = objc_msgSend_paddedFileSize(v72, v171, v172);
        objc_msgSend_setPaddedFileSize_(v162, v174, v173);
        if (*v155 != -1)
        {
          dispatch_once(v155, *MEMORY[0x277CBC878]);
        }

        v175 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v276 = v175;
          v279 = objc_msgSend_asset(v72, v277, v278);
          *buf = 138412546;
          v390 = v279;
          v391 = 2112;
          v392 = v72;
          _os_log_debug_impl(&dword_22506F000, v276, OS_LOG_TYPE_DEBUG, "Register complete: Pushed sig and size to asset:%@ for item %@", buf, 0x16u);
        }

        v352 = objc_autoreleasePoolPush();
        v372 = 0;
        v177 = objc_msgSend_getCKDMMCSItemReaderByPathForMMCSItem_error_(v8, v176, v72, &v372);
        v178 = v372;
        v180 = v178;
        if (v177)
        {
          v371 = v178;
          v181 = objc_msgSend_openWithError_(v177, v179, &v371);
          v182 = v371;

          if (v181)
          {
            v370 = v182;
            v184 = objc_msgSend_getFileMetadataWithError_(v177, v183, &v370);
            v185 = v370;

            if (v184)
            {
              v188 = objc_msgSend_deviceID(v184, v186, v187);
              objc_msgSend_setDeviceID_(v72, v189, v188);

              v192 = objc_msgSend_fileID(v184, v190, v191);
              objc_msgSend_setFileID_(v72, v193, v192);

              v196 = objc_msgSend_generationID(v184, v194, v195);
              objc_msgSend_setGenerationID_(v72, v197, v196);

              v200 = objc_msgSend_modTimeInSeconds(v184, v198, v199);
              objc_msgSend_setModTimeInSeconds_(v72, v201, v200);
            }

            else
            {
              if (*v155 != -1)
              {
                dispatch_once(v155, *MEMORY[0x277CBC878]);
              }

              v205 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v390 = v72;
                v391 = 2112;
                v392 = v185;
                _os_log_error_impl(&dword_22506F000, v205, OS_LOG_TYPE_ERROR, "Unable to get info for %@: %@", buf, 0x16u);
              }

              v200 = v185;
              v185 = 0;
            }

            v369 = v185;
            v207 = objc_msgSend_closeWithError_(v177, v206, &v369);
            v182 = v369;

            if (v207)
            {
              v155 = MEMORY[0x277CBC880];
            }

            else
            {
              v155 = MEMORY[0x277CBC880];
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v208 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v390 = v72;
                v391 = 2112;
                v392 = v182;
                _os_log_error_impl(&dword_22506F000, v208, OS_LOG_TYPE_ERROR, "Unable to close for %@: %@", buf, 0x16u);
              }

              v182 = 0;
            }

            v203 = v352;

            v8 = v350;
          }

          else
          {
            if (*v155 != -1)
            {
              dispatch_once(v155, *MEMORY[0x277CBC878]);
            }

            v8 = v350;
            v204 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v390 = v72;
              v391 = 2112;
              v392 = v182;
              _os_log_error_impl(&dword_22506F000, v204, OS_LOG_TYPE_ERROR, "Unable to open for %@: %@", buf, 0x16u);
            }

            v203 = v352;
          }
        }

        else
        {
          if (*v155 != -1)
          {
            dispatch_once(v155, *MEMORY[0x277CBC878]);
          }

          v202 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v390 = v72;
            v391 = 2112;
            v392 = v180;
            _os_log_error_impl(&dword_22506F000, v202, OS_LOG_TYPE_ERROR, "Unable to open reader for %@: %@", buf, 0x16u);
          }

          v177 = v180;
          v203 = v352;
        }

        objc_autoreleasePoolPop(v203);
        a3 = v351;
        v158 = v361;
      }

      if ((a3 & 1) == 0)
      {
        break;
      }

      if (!v158)
      {
        v237 = objc_msgSend_fileSize(v72, v160, v161);
        v238 = *MEMORY[0x277CBC878];
        if (!v237)
        {
          if (*v155 != -1)
          {
            dispatch_once(v155, v238);
          }

          v261 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_132;
          }

          v210 = v261;
          v264 = objc_msgSend_signature(v72, v262, v263);
          *buf = 136446722;
          v390 = "Fetched";
          v391 = 2048;
          v392 = v366;
          v393 = 2112;
          v394 = v264;
          _os_log_debug_impl(&dword_22506F000, v210, OS_LOG_TYPE_DEBUG, "%{public}s MMCS item %llu signature:%@", buf, 0x20u);

          goto LABEL_131;
        }

        if (*v155 != -1)
        {
          dispatch_once(v155, v238);
        }

        v239 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_132;
        }

        v210 = v239;
        v242 = objc_msgSend_fileSize(v72, v240, v241);
        v245 = objc_msgSend_paddedFileSize(v72, v243, v244);
        v233 = objc_msgSend_signature(v72, v246, v247);
        *buf = 136447234;
        v390 = "Fetched";
        v391 = 2048;
        v392 = v366;
        v393 = 2048;
        v394 = v242;
        v395 = 2048;
        v396 = v245;
        v397 = 2112;
        v398 = v233;
        v234 = v210;
        v235 = "%{public}s MMCS item %llu with size:%llu, paddedSize:%llu, signature:%@";
        v236 = 52;
LABEL_122:
        _os_log_debug_impl(&dword_22506F000, v234, OS_LOG_TYPE_DEBUG, v235, buf, v236);

        v158 = v361;
        goto LABEL_131;
      }

      if (*v155 != -1)
      {
        dispatch_once(v155, *MEMORY[0x277CBC878]);
      }

      v209 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_132;
      }

      v210 = v209;
      v213 = objc_msgSend_fileSize(v72, v211, v212);
      v216 = objc_msgSend_paddedFileSize(v72, v214, v215);
      v219 = objc_msgSend_chunkCount(v72, v217, v218);
      *buf = 136447490;
      v390 = "Fetched";
      v391 = 2048;
      v392 = v366;
      v393 = 2048;
      v394 = v213;
      v395 = 2048;
      v396 = v216;
      v397 = 2048;
      v398 = v219;
      v399 = 2112;
      v400 = v360;
      _os_log_debug_impl(&dword_22506F000, v210, OS_LOG_TYPE_DEBUG, "%{public}s MMCS item %llu with size:%llu, paddedSize:%llu, chunkCount:%lu, signature:%@", buf, 0x3Eu);
LABEL_131:

LABEL_132:
      ++v359;

      v49 = 0;
LABEL_133:

      if (v365 == ++v63)
      {
        v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v62, &v373, v403, 16);
        if (!v365)
        {
          v292 = 0;
          v11 = v341;
          v47 = v346;
          v54 = v359;
          goto LABEL_152;
        }

        goto LABEL_25;
      }
    }

    v220 = *MEMORY[0x277CBC878];
    if (!v158)
    {
      if (*v155 != -1)
      {
        dispatch_once(v155, v220);
      }

      v248 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_132;
      }

      v210 = v248;
      v251 = objc_msgSend_fileSize(v72, v249, v250);
      v254 = objc_msgSend_paddedFileSize(v72, v252, v253);
      v257 = objc_msgSend_signature(v72, v255, v256);
      v260 = objc_msgSend_CKSanitizedPath(v368, v258, v259);
      *buf = 136316418;
      v390 = "Registered";
      v391 = 2048;
      v392 = v366;
      v393 = 2048;
      v394 = v251;
      v395 = 2048;
      v396 = v254;
      v397 = 2112;
      v398 = v257;
      v399 = 2112;
      v400 = v260;
      _os_log_debug_impl(&dword_22506F000, v210, OS_LOG_TYPE_DEBUG, "{public}%s MMCS item %llu with size:%llu, paddedSize:%llu, signature:%@, path:%@", buf, 0x3Eu);

      v158 = v361;
      a3 = v351;
      goto LABEL_131;
    }

    if (*v155 != -1)
    {
      dispatch_once(v155, v220);
    }

    v221 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_132;
    }

    v210 = v221;
    v224 = objc_msgSend_fileSize(v72, v222, v223);
    v227 = objc_msgSend_paddedFileSize(v72, v225, v226);
    v230 = objc_msgSend_chunkCount(v72, v228, v229);
    v233 = objc_msgSend_CKSanitizedPath(v368, v231, v232);
    *buf = 136447746;
    v390 = "Registered";
    v391 = 2048;
    v392 = v366;
    v393 = 2048;
    v394 = v224;
    v395 = 2048;
    v396 = v227;
    v397 = 2048;
    v398 = v230;
    a3 = v351;
    v399 = 2112;
    v400 = v360;
    v401 = 2112;
    v402 = v233;
    v234 = v210;
    v235 = "%{public}s MMCS item %llu with size:%llu, paddedSize:%llu, chunkCount:%lu, signature:%@, path:%@";
    v236 = 72;
    goto LABEL_122;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v47 = v22;
  v48 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v326 = v48;
    v329 = objc_msgSend_count(v28, v327, v328);
    v332 = objc_msgSend_operationID(v349, v330, v331);
    *buf = 136446978;
    v390 = v367;
    v391 = 2048;
    v392 = v329;
    v47 = v22;
    v393 = 2114;
    v394 = v332;
    v395 = 2112;
    v396 = v13;
    _os_log_error_impl(&dword_22506F000, v326, OS_LOG_TYPE_ERROR, "Failed to %{public}s %lu MMCS items for operationID:%{public}@: %@", buf, 0x2Au);
  }

  v49 = v13;
  v381 = 0u;
  v382 = 0u;
  v383 = 0u;
  v384 = 0u;
  v50 = v28;
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v381, v405, 16);
  if (!v54)
  {
    v292 = v49;
    goto LABEL_152;
  }

  v55 = v11;
  v56 = *v382;
  do
  {
    for (j = 0; j != v54; ++j)
    {
      if (*v382 != v56)
      {
        objc_enumerationMutation(v50);
      }

      v58 = *(*(&v381 + 1) + 8 * j);
      v59 = objc_msgSend_error(v58, v52, v53);

      if (!v59)
      {
        objc_msgSend_setError_(v58, v52, v49);
      }
    }

    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v381, v405, 16);
  }

  while (v54);
LABEL_150:
  v292 = v49;
  v11 = v55;
LABEL_151:
  v47 = v346;
LABEL_152:

  v302 = *MEMORY[0x277CBC878];
  v303 = *MEMORY[0x277CBC880];
  if (v54 == v47)
  {
    v304 = v345;
    v305 = v343;
    if (v303 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v302);
    }

    v306 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v309 = v306;
      v312 = objc_msgSend_operationID(v349, v310, v311);
      v313 = v47;
      v314 = v312;
      *buf = 136446722;
      v390 = v342;
      v391 = 2048;
      v392 = v313;
      v393 = 2114;
      v394 = v312;
      v315 = "%{public}s %lu MMCS items for operationID:%{public}@";
      v316 = v309;
      v317 = 32;
      goto LABEL_166;
    }
  }

  else
  {
    v318 = v54;
    v304 = v345;
    v305 = v343;
    if (v303 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v302);
    }

    v319 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v309 = v319;
      v335 = objc_msgSend_operationID(v349, v333, v334);
      v336 = v47;
      v314 = v335;
      *buf = 136446978;
      v390 = v342;
      v391 = 2048;
      v392 = v318;
      v393 = 2048;
      v394 = v336;
      v395 = 2114;
      v396 = v335;
      v315 = "%{public}s %lu/%lu MMCS items for operationID:%{public}@";
      v316 = v309;
      v317 = 42;
LABEL_166:
      _os_log_debug_impl(&dword_22506F000, v316, OS_LOG_TYPE_DEBUG, v315, buf, v317);

      if (a3)
      {
        goto LABEL_162;
      }

      goto LABEL_161;
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_161:
    v320 = objc_msgSend_MMCS(v8, v307, v308);
    v323 = objc_msgSend_assetCache(v320, v321, v322);
    v325 = objc_msgSend_updateAssetHandlesForRegisteredMMCSItems_error_(v323, v324, v305, 0);
  }

LABEL_162:
  objc_msgSend_didCompleteRequestWithError_(v8, v307, v292);
}

uint64_t sub_225130D6C(_BYTE *a1, void *a2, uint64_t a3)
{
  if (!objc_msgSend_isAlreadyRegistered(a2, a2, a3) || (a1[32] & 1) != 0 || (a1[33] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1[34];
  }

  return v4 & 1;
}

void sub_225132410(uint64_t a1)
{
  v1 = objc_opt_class();
  v8 = NSStringFromClass(v1);
  v4 = objc_msgSend_UTF8String(v8, v2, v3);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);
  v7 = qword_280D580D8;
  qword_280D580D8 = v6;
}

uint64_t sub_225132498(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D580E8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225132D20(void *a1, uint64_t a2, double a3, uint64_t a4, int a5, uint64_t a6)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225134438;
  v6[3] = &unk_278546598;
  v6[4] = a1;
  v7 = a5;
  *&v6[5] = a3;
  v6[6] = a2;
  v6[7] = a6;
  sub_22513435C(a1, v6);
}

void sub_225132D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22513445C;
  v6[3] = &unk_2785465B8;
  v6[4] = a1;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a2;
  v6[8] = a5;
  v6[9] = a6;
  sub_22513435C(a1, v6);
}

void sub_225132E0C(void *a1, uint64_t a2, double a3, uint64_t a4, int a5, uint64_t a6)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225134544;
  v6[3] = &unk_278546598;
  v6[4] = a1;
  v7 = a5;
  *&v6[5] = a3;
  v6[6] = a2;
  v6[7] = a6;
  sub_22513435C(a1, v6);
}

void sub_225132E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225134568;
  v4[3] = &unk_2785465D8;
  v4[4] = a1;
  v4[5] = a3;
  v4[6] = a2;
  v4[7] = a4;
  sub_22513435C(a1, v4);
}

void sub_225132EF4(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2251345F4;
  v2[3] = &unk_2785464E0;
  v2[4] = a1;
  v2[5] = a2;
  sub_22513435C(a1, v2);
}

uint64_t sub_225132F60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251346B8;
  v7[3] = &unk_278546600;
  v7[6] = a2;
  v7[7] = a3;
  v7[4] = &v8;
  v7[5] = a1;
  v7[8] = a4;
  v7[9] = a5;
  sub_22513435C(a2, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_22513302C(void *a1, double a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225134954;
  v7[3] = &unk_278546620;
  v7[4] = a1;
  v8 = a5;
  *&v7[5] = a2;
  v7[6] = a7;
  sub_22513435C(a1, v7);
}

void sub_2251330A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225134A34;
  v4[3] = &unk_278546640;
  v4[4] = a1;
  v4[5] = a3;
  v4[6] = a4;
  sub_22513435C(a1, v4);
}

BOOL sub_225133114(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_225073EB0;
  v44 = sub_2250734E4;
  v45 = 0;
  v10 = a2;
  v13 = objc_msgSend_currentProcess(CKDDaemonProcess, v11, v12);
  v16 = objc_msgSend_multipeer(v13, v14, v15);

  if (_os_feature_enabled_impl())
  {
    if (v16)
    {
      v35 = v9;
      v18 = dispatch_semaphore_create(0);
      v21 = objc_msgSend_operation(v10, v19, v20);
      v24 = objc_msgSend_container(v21, v22, v23);
      v27 = objc_msgSend_containerID(v24, v25, v26);
      v30 = objc_msgSend_containerIdentifier(v27, v28, v29);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_225134AC0;
      v36[3] = &unk_278546668;
      v38 = &v40;
      v39 = a4;
      v31 = v18;
      v37 = v31;
      objc_msgSend_discoverChunkSignature_forContainerIdentifier_chunkDataCallback_(v16, v32, a3, v30, v36);

      dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
      v9 = v35;
      goto LABEL_11;
    }

    v33 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"expected non-nil object, expected if feature flag is toggled without restarting cloudd");
  }

  else
  {
    v33 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"feature flag disabled");
  }

  v31 = v41[5];
  v41[5] = v33;
LABEL_11:

  if (a5)
  {
    *a5 = v41[5];
  }

  _Block_object_dispose(&v40, 8);
  objc_autoreleasePoolPop(v9);
  return a4 && *a4 != 0;
}

void sub_225133394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225133CF4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  MMCSEngineCancelRequests();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[6];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Did cancel for MMCS engine wrapper %@ to cancel the requests for %@", &v5, 0x16u);
  }
}

void sub_22513414C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_sync_exit(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22513416C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  *a4 = 1;
  return result;
}

void sub_22513435C(void *a1, void *a2)
{
  v15 = a2;
  v5 = objc_msgSend_MMCS(a1, v3, v4);
  v10 = objc_msgSend_MMCSEngineContext(v5, v6, v7);
  if (!v10)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void runSerialized(void *, void (^__strong)(void))");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v11, v14, v13, @"CKDMMCSEngineContext.m", 134, @"Expected a non nil CKDMMCSEngineContext");
  }

  objc_msgSend_MMCSRunSerialized_(v10, v8, v15);
}

void sub_22513445C(uint64_t a1)
{
  v13 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 40);
  v4 = MEMORY[0x22AA64000](v3);
  v8 = objc_msgSend_dataWithBytes_length_(v2, v5, v3, v4);
  if (*(a1 + 48))
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
    v10 = strlen(*(a1 + 48));
    v12 = objc_msgSend_stringWithFileSystemRepresentation_length_(v9, v11, *(a1 + 48), v10);
  }

  else
  {
    v12 = 0;
  }

  objc_msgSend_didGetItemID_signature_path_error_results_(v13, v6, *(a1 + 56), v8, v12, *(a1 + 64), *(a1 + 72));
}

void sub_225134568(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AA64000](v3);
  v8 = objc_msgSend_dataWithBytes_length_(v2, v6, v3, v5);
  objc_msgSend_didPutItemID_signature_results_(v4, v7, *(a1 + 48), v8, *(a1 + 56));
}

void sub_2251345F4(uint64_t a1)
{
  v11 = *(a1 + 32);
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v2, @"metricObject");
  if (v4)
  {
    objc_msgSend_didGetMetricsForRequest_(v11, v3, v4);
  }

  v5 = objc_msgSend_objectForKey_(*(a1 + 40), v3, *MEMORY[0x277D255E8]);
  v8 = objc_msgSend_itemGroup(v11, v6, v7);
  objc_msgSend_setCloneContext_(v8, v9, v5);

  objc_msgSend_didCompleteRequestWithError_(v11, v10, 0);
}

void sub_2251346B8(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  v4 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v7 = *(a1 + 56);
  v8 = objc_msgSend_MMCS(v2, v5, v6);
  v18 = 0;
  MMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error = objc_msgSend_getMMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error_(CKDMMCSItemGroupContext, v9, v7, v8, v3, v4, &v18);
  v11 = v18;

  *(*(*(a1 + 32) + 8) + 24) = MMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error != 0;
  v12 = *MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 56);
      *buf = 134218242;
      v20 = v16;
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Created a readerWriter for itemID:%llu error: %@", buf, 0x16u);
    }

    **(a1 + 64) = MMCSItemReaderForItemID_MMCS_itemGroupContext_downloadChunkContext_error;
  }

  else
  {
    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 56);
      *buf = 134218242;
      v20 = v17;
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Failed to get the item readerWriter for itemID:%llu error: %@", buf, 0x16u);
    }
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0 && *(a1 + 72))
  {
    **(a1 + 72) = v11;
  }
}

void sub_225134954(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = -1.0;
  if (v4 == 4)
  {
    v5 = *(a1 + 40);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v9 = *MEMORY[0x277D25640];
    v10[0] = v6;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v10, &v9, 1);
    objc_msgSend_updateProgressForPackageSectionState_progress_results_(v3, v8, *(a1 + 56), v7, v5);
  }

  else
  {
    v7 = 0;
    objc_msgSend_updateProgressForPackageSectionState_progress_results_(v3, v2, v4, 0, v5);
  }
}

void sub_225134A34(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AA64000](v3);
  v8 = objc_msgSend_dataWithBytes_length_(v2, v6, v3, v5);
  objc_msgSend_didPutSectionWithSignature_results_(v4, v7, v8, *(a1 + 48));
}

void sub_225134AC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 48))
  {
    **(a1 + 48) = MMCSItemReaderWriterCreateWithData();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  v7 = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_225136FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225137004(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_225137C28(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = objc_msgSend__setupMMCSItemsWithError_(v3, a2, &v10);
  v7 = v10;
  v8 = *(a1 + 32);
  if (v4)
  {
    v9 = objc_msgSend_startBlock(v8, v5, v6);
    v9[2](v9, *(a1 + 32));
  }

  else
  {
    objc_msgSend_didCompleteRequestWithError_(v8, v5, v7);
  }
}

void sub_22513B060(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v5 = objc_msgSend_completionBlock(*(a1 + 32), v3, v4);
  objc_msgSend_setCompletionBlock_(*(a1 + 32), v6, 0);
  objc_sync_exit(v2);

  if (v5)
  {
    v9 = objc_msgSend_itemGroup(*(a1 + 32), v7, v8);
    (v5)[2](v5, v9);
  }

  v10 = *(a1 + 40) == 0;
  v11 = objc_msgSend_signpost(*(a1 + 32), v7, v8);

  if (v10)
  {
    if (v11)
    {
      v29 = objc_msgSend_signpost(*(a1 + 32), v12, v13);
      v17 = objc_msgSend_log(v29, v30, v31);

      v34 = objc_msgSend_signpost(*(a1 + 32), v32, v33);
      v37 = objc_msgSend_identifier(v34, v35, v36);

      if ((v37 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_13;
      }

      LOWORD(v38) = 0;
      v25 = "";
      v26 = v17;
      v27 = v37;
      v28 = 2;
      goto LABEL_12;
    }
  }

  else if (v11)
  {
    v14 = objc_msgSend_signpost(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_log(v14, v15, v16);

    v20 = objc_msgSend_signpost(*(a1 + 32), v18, v19);
    v23 = objc_msgSend_identifier(v20, v21, v22);

    if ((v23 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
    {
      goto LABEL_13;
    }

    v24 = *(a1 + 40);
    v38 = 138412290;
    v39 = v24;
    v25 = "Error: %@";
    v26 = v17;
    v27 = v23;
    v28 = 12;
LABEL_12:
    _os_signpost_emit_with_name_impl(&dword_22506F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "CKDMMCSItemGroupContext", v25, &v38, v28);
LABEL_13:
  }
}

BOOL sub_22513DC9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v38 = 0;
  v9 = objc_msgSend_getFileMetadataWithError_(a2, v8, &v38);
  v10 = v38;
  v11 = v10;
  if (a3 && v9)
  {
    v12 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = objc_msgSend_initWithCapacity_(v12, v13, 4);
    v17 = objc_msgSend_fileSize(v9, v15, v16);

    if (v17)
    {
      v20 = objc_msgSend_fileSize(v9, v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v21, v20, *MEMORY[0x277D254C8]);
    }

    v22 = objc_msgSend_fileID(v9, v18, v19);

    if (v22)
    {
      v25 = objc_msgSend_fileID(v9, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v26, v25, *MEMORY[0x277D254D0]);
    }

    v27 = objc_msgSend_generationID(v9, v23, v24);

    if (v27)
    {
      v30 = objc_msgSend_generationID(v9, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v31, v30, *MEMORY[0x277D254B8]);
    }

    v32 = objc_msgSend_modTimeInSeconds(v9, v28, v29);

    if (v32)
    {
      v35 = objc_msgSend_modTimeInSeconds(v9, v33, v34);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v36, v35, *MEMORY[0x277D254C0]);
    }

    *a3 = v14;
  }

  else if (a4 && !v9)
  {
    *a4 = v10;
  }

  objc_autoreleasePoolPop(v7);
  return v9 != 0;
}

uint64_t sub_22513DE6C(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v7 = objc_msgSend_MMCSItem(v4, v5, v6);
  v10 = objc_msgSend_MMCSRequest(v4, v8, v9);
  v13 = objc_msgSend_MMCS(v10, v11, v12);
  v18 = objc_msgSend_operation(v10, v14, v15);
  if (v13)
  {
    v36 = 0;
  }

  else
  {
    v36 = objc_msgSend_downloadChunkContext(v4, v16, v17);
    v13 = objc_msgSend_MMCS(v36, v19, v20);
  }

  v21 = objc_msgSend_assetCache(v13, v16, v17);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v36;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v51 = v21;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "CKDMMCSItemReaderOpen %@ %@ %@", buf, 0x20u);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_13:
    __assert_rtn("CKDMMCSItemReaderOpen", "CKDMMCSItemGroupContext.m", 904, "assetCache && Expected non-nil asset cache");
  }

  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = sub_225073EC0;
  v52 = sub_2250734EC;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v25 = objc_msgSend_MMCSEngineContext(v13, v23, v24);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22513ED0C;
  v37[3] = &unk_278546690;
  v26 = v7;
  v38 = v26;
  v44 = &v46;
  v27 = v4;
  v39 = v27;
  v45 = buf;
  v28 = v18;
  v40 = v28;
  v29 = v10;
  v41 = v29;
  v30 = v13;
  v42 = v30;
  v31 = v21;
  v43 = v31;
  objc_msgSend_MMCSRunSerialized_(v25, v32, v37);

  v33 = v47;
  v34 = *(v47 + 24);
  if (a3 && (v34 & 1) == 0)
  {
    *a3 = *(*&buf[8] + 40);
    v34 = *(v33 + 24);
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(buf, 8);

  return v34;
}

void sub_22513E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22513E1F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  v19 = 0;
  v15 = objc_msgSend_readBytesAtOffset_bytes_length_bytesRead_error_(a2, v14, a3, a4, a5, a6, &v19);
  v16 = v19;
  v17 = v16;
  if (a7 && (v15 & 1) == 0)
  {
    *a7 = v16;
  }

  objc_autoreleasePoolPop(v13);

  return v15;
}

uint64_t sub_22513E29C(uint64_t a1, void *a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = objc_msgSend_closeWithError_(a2, v6, &v11);
  v8 = v11;
  v9 = v8;
  if (a3 && (v7 & 1) == 0)
  {
    *a3 = v8;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

void sub_22513E318(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "invalidate, reader:%p", &v3, 0xCu);
  }
}

uint64_t sub_22513E3F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  v19 = 0;
  v15 = objc_msgSend_writeBytesAtOffset_bytes_length_bytesWritten_error_(a2, v14, a3, a4, a5, a6, &v19);
  v16 = v19;
  v17 = v16;
  if (a7 && (v15 & 1) == 0)
  {
    *a7 = v16;
  }

  objc_autoreleasePoolPop(v13);

  return v15;
}

uint64_t sub_22513E4A0(uint64_t a1, void *a2, const void *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a2;
    v10 = objc_msgSend_MMCSRequest(v7, v8, v9);
    v13 = objc_msgSend_operation(v10, v11, v12);
    v16 = objc_msgSend_container(v13, v14, v15);

    v19 = objc_msgSend_serverConfig(v16, v17, v18);
    v22 = objc_msgSend_containerID(v16, v20, v21);
    if (CFEqual(a3, *MEMORY[0x277D254A8]))
    {
      v24 = objc_msgSend_chunkProfileConfigurationVersion_(v19, v23, v22);
    }

    else if (CFEqual(a3, *MEMORY[0x277D254A0]))
    {
      v24 = objc_msgSend_chunkProfileConfigurationFileExtensionToProfileMap_(v19, v25, v22);
    }

    else
    {
      if (!CFEqual(a3, *MEMORY[0x277D25498]))
      {
        v29 = objc_msgSend_MMCSItem(v7, v26, v27);
        v32 = objc_msgSend_assetChunkerOptions(v29, v30, v31);

        if (v32 && CFEqual(a3, *MEMORY[0x277D25490]))
        {
          v3 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277CBC8A8]);
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_11;
      }

      v24 = objc_msgSend_chunkProfileConfigurationDefaultProfilePolicy_(v19, v26, v22);
    }

    v3 = v24;
LABEL_11:

    objc_autoreleasePoolPop(v6);
  }

  return v3;
}

void sub_22513ED0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_itemID(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_trackingUUID(*(a1 + 32), v5, v6);
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = objc_msgSend_initWithUUIDString_(v8, v9, v7);
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 88) + 8);
  obj = *(v12 + 40);
  v14 = objc_msgSend_openWithError_(v11, v13, &obj);
  objc_storeStrong((v12 + 40), obj);
  *(*(*(a1 + 80) + 8) + 24) = v14;
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    if ((objc_msgSend_shouldFetchAssetContentInMemory(*(a1 + 56), v15, v16) & 1) == 0)
    {
      objc_msgSend_updateLastAccessTimeForUUID_(*(a1 + 72), v17, v10);
    }
  }

  else
  {
    v18 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = MEMORY[0x277CBC830];
    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 40);
      v32 = v20;
      v35 = objc_msgSend_MMCSItem(v31, v33, v34);
      v38 = objc_msgSend_operationID(*(a1 + 48), v36, v37);
      v39 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138412802;
      v42 = v35;
      v43 = 2114;
      v44 = v38;
      v45 = 2112;
      v46 = v39;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Failed to open %@ for operationID:%{public}@: %@", buf, 0x20u);
    }

    if ((objc_msgSend_shouldFetchAssetContentInMemory(*(a1 + 56), v21, v22) & 1) == 0 && (objc_msgSend_isTrackingItemID_(*(a1 + 64), v23, v4) & 1) == 0)
    {
      if (*v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v24 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v42 = v4;
        v43 = 2114;
        v44 = v10;
        _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Deleting the asset handle with itemID:%llu, UUID:%{public}@", buf, 0x16u);
      }

      v26 = MEMORY[0x277CBEB70];
      v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v25, v4);
      v29 = objc_msgSend_orderedSetWithObject_(v26, v28, v27);

      objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 72), v30, v29, 0);
    }
  }
}

void sub_22513F868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = objc_msgSend_itemGroupSetCompletionGroup(WeakRetained, v2, v3);
    dispatch_group_leave(v4);

    WeakRetained = v5;
  }
}

void sub_22513FBB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_itemGroupSetCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_itemGroupSetCompletionBlock(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_itemGroupSet(*(a1 + 32), v8, v9);
    (v7)[2](v7, v10);

    v11 = *(a1 + 32);

    MEMORY[0x2821F9670](v11, sel_setItemGroupSetCompletionBlock_, 0);
  }
}

void sub_225144378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225144390(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = objc_msgSend_firstMMCSItemError(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_225144494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251444AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_allMMCSSectionItems(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_count(v6, v7, v8) != 0;

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_2251445FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_225144614(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_isEmpty(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

void sub_225144714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22514472C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_isEmpty(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

BOOL sub_2251449BC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, int a7, int a8, char a9, void *a10)
{
  v116 = *MEMORY[0x277D85DE8];
  v106 = a3;
  v17 = a4;
  v18 = a6;
  v21 = objc_msgSend_downloadBaseURL(a1, v19, v20);
  v24 = objc_msgSend_downloadURLExpiration(a1, v22, v23);
  v27 = objc_msgSend_constructedAssetDownloadURLTemplate(a1, v25, v26);
  v30 = v27;
  if (v24)
  {
    v31 = v21 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31 && !v27)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v115 = a1;
      _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Missing required info on %@", buf, 0xCu);
    }

    v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 1000, @"Missing required info on %@", a1);
    goto LABEL_69;
  }

  if ((a7 & 1) == 0 && !a8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v115 = a1;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Not using encryption keys for the asset %@", buf, 0xCu);
      if (v17)
      {
        goto LABEL_18;
      }
    }

    else if (v17)
    {
LABEL_18:
      v108[0] = @"f";
      v108[1] = @"uk";
      v109[0] = v17;
      v109[1] = @"1234";
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v109, v108, 2);
LABEL_57:
      if (v21)
      {
        v90 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v36, v21, v37);
        objc_msgSend_setDownloadURLTemplate_(a1, v91, v90);
      }

      if (v30)
      {
        v92 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v36, v30, v37);
        v94 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v93, v92);
        objc_msgSend_setConstructedAssetDownloadURL_(a1, v95, v94);

        v98 = objc_msgSend_constructedAssetDownloadURL(a1, v96, v97);

        if (v98)
        {
          v34 = 0;
        }

        else
        {
          v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, *MEMORY[0x277CBC120], 1, @"Couldn't create url from template");
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v100 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v115 = v30;
            _os_log_error_impl(&dword_22506F000, v100, OS_LOG_TYPE_ERROR, "Couldn't create url from template %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v34 = 0;
      }

LABEL_68:

      goto LABEL_69;
    }

    v37 = &unk_2838C9188;
    goto LABEL_57;
  }

  if (!a7)
  {
    if (!a8)
    {
      v72 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v72, v73, a2, a1, @"CKDAssetExtensions.m", 70, @"Unhandled code path.");

      v34 = 0;
      goto LABEL_72;
    }

    v48 = objc_msgSend_clearAssetKey(a1, v28, v29);
    if (!v48)
    {
      v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v49, *MEMORY[0x277CBC120], 1, @"Couldn't find clear asset key for publishing");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v88 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v115 = v34;
        _os_log_error_impl(&dword_22506F000, v88, OS_LOG_TYPE_ERROR, "Error find clear asset key: %@", buf, 0xCu);
      }

      goto LABEL_69;
    }

    v37 = v48;
    v34 = 0;
    objc_msgSend_CKBase64URLSafeString(v48, v49, v50);
    goto LABEL_28;
  }

  v104 = v18;
  if ((a9 & 1) != 0 || (objc_msgSend_deviceContext(v18, v28, v29), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend_accountDataSecurityObserver(v38, v39, v40), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend_account(v18, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v41, v45, v44, 1), v44, v41, v38, !v46))
  {
    v51 = [CKDWrappingContext alloc];
    v54 = objc_msgSend_recordID(a1, v52, v53);
    v57 = objc_msgSend_signature(a1, v55, v56);
    v60 = objc_msgSend_referenceSignature(a1, v58, v59);
    v62 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v51, v61, v54, v106, 0, v57, v60);

    v65 = objc_msgSend_wrappedAssetKey(a1, v63, v64);
    v107 = 0;
    v37 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v104, v66, v65, a5, v62, &v107);
    v34 = v107;

    if (!v37)
    {
      if (!v34)
      {
        v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v67, *MEMORY[0x277CBC120], 5004, @"Couldn't unwrap asset key for publishing");
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v87 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v115 = v34;
        _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Error unwrapping asset key: %@", buf, 0xCu);
      }

      goto LABEL_44;
    }

    v18 = v104;
    objc_msgSend_CKBase64URLSafeString(v37, v68, v69);
    v70 = LABEL_28:;
    v105 = v70;
    if (v17)
    {
      v112[0] = @"f";
      v112[1] = @"uk";
      v113[0] = v17;
      v113[1] = v70;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, v113, v112, 2);
    }

    else
    {
      v110 = @"uk";
      v111 = v70;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &v111, &v110, 1);
    }
    v75 = ;
    if (v21)
    {
      v76 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v74, v21, v75);
      objc_msgSend_setDownloadURLTemplate_(a1, v77, v76);
    }

    if (v30)
    {
      v103 = objc_msgSend__expandTemplateURL_fieldValues_(MEMORY[0x277CBC190], v74, v30, v75);
      v79 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v78, v103);
      objc_msgSend_setConstructedAssetDownloadURL_(a1, v80, v79);

      v83 = objc_msgSend_constructedAssetDownloadURL(a1, v81, v82);

      if (v83)
      {
        v85 = v34;
        v86 = v103;
      }

      else
      {
        v85 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v84, *MEMORY[0x277CBC120], 1, @"Couldn't create url from template");

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v86 = v103;
        v89 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v115 = v30;
          _os_log_error_impl(&dword_22506F000, v89, OS_LOG_TYPE_ERROR, "Couldn't create url from template %@", buf, 0xCu);
        }
      }

      v34 = v85;
    }

    goto LABEL_68;
  }

  v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v47, *MEMORY[0x277CBC120], 5013, @"Cannot fill in derivative template due to walrus enabled");
LABEL_44:
  v18 = v104;
LABEL_69:
  if (a10 && v34)
  {
    v101 = v34;
    *a10 = v34;
  }

LABEL_72:

  return v34 == 0;
}

uint64_t sub_2251452C8(void *a1, const char *a2)
{
  objc_msgSend_setAssetKey_(a1, a2, 0);
  objc_msgSend_setReferenceSignature_(a1, v3, 0);
  objc_msgSend_setDownloadToken_(a1, v4, 0);

  return objc_msgSend_setDownloadTokenExpiration_(a1, v5, 0);
}

uint64_t sub_225145320(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_contentBaseURL(v4, v5, v6);
  v10 = objc_msgSend_owner(v4, v8, v9);
  v13 = objc_msgSend_requestor(v4, v11, v12);
  v16 = objc_msgSend_signature(v4, v14, v15);
  v19 = objc_msgSend_referenceSignature(v4, v17, v18);
  v22 = objc_msgSend_authToken(v4, v20, v21);
  v25 = objc_msgSend_assetKey(v4, v23, v24);
  v28 = objc_msgSend_clearAssetKey(v4, v26, v27);
  v62 = v25;
  v63 = v28;
  if (!v4)
  {
    v37 = v22;
    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 3011, @"Re-referenced asset not found");
    objc_msgSend_setError_(a1, v39, v38);

    goto LABEL_31;
  }

  v31 = v28;
  if (v7)
  {
    v32 = v10 == 0;
  }

  else
  {
    v32 = 1;
  }

  v36 = !v32 && v13 != 0 && v16 != 0 && v22 != 0;
  if (!v19)
  {
    if (v36)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!v36 || !(v25 | v28))
  {
LABEL_23:
    v61 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v29, v30);
    if (!objc_msgSend_size(v4, v40, v41) && objc_msgSend_isEqualToData_(v16, v42, v61))
    {

      goto LABEL_26;
    }

    v37 = v22;
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 3011, @"Re-referenced asset missing expected values");
    v53 = v19;
    v54 = v16;
    v55 = v13;
    v56 = v10;
    v58 = v57 = v7;
    objc_msgSend_setError_(a1, v59, v58);

    v7 = v57;
    v10 = v56;
    v13 = v55;
    v16 = v54;
    v19 = v53;

LABEL_31:
    v52 = 0;
    goto LABEL_32;
  }

LABEL_26:
  objc_msgSend_setContentBaseURL_(a1, v29, v7);
  objc_msgSend_setOwner_(a1, v43, v10);
  objc_msgSend_setRequestor_(a1, v44, v13);
  if (v25)
  {
    objc_msgSend_setAssetKey_(a1, v45, v25);
  }

  else
  {
    objc_msgSend_setAssetKey_(a1, v45, v31);
  }

  objc_msgSend_setReferenceSignature_(a1, v46, v19);
  v37 = v22;
  objc_msgSend_setDownloadToken_(a1, v47, v22);
  v50 = objc_msgSend_downloadTokenExpiration(v4, v48, v49);
  objc_msgSend_setDownloadTokenExpiration_(a1, v51, v50);
  v52 = 1;
LABEL_32:

  return v52;
}

void sub_225146154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22514616C(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_count(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += 69930 * result;
  return result;
}

void *sub_2251461B0(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_count(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += 69930 * result;
  return result;
}

void sub_2251462C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2251462E0(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_count(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += 69930 * result;
  return result;
}

id sub_22514676C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);
  v8 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 32), v7, v4);

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
  }

  else
  {
    v12 = objc_msgSend_arrayByAddingObjectsFromArray_(v6, v9, v8);
  }

  v13 = v12;

  return v13;
}

id sub_22514699C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  v12 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 32), v11, v4);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  v17 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 40), v16, v4);

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;

  v21 = objc_msgSend_arrayByAddingObjectsFromArray_(v10, v20, v15);
  v23 = objc_msgSend_arrayByAddingObjectsFromArray_(v21, v22, v19);

  return v23;
}

void sub_225146B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_225146BB4(uint64_t a1, const char *a2, void *a3, BOOL *a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225146C54;
  v7[3] = &unk_278546728;
  v7[4] = *(a1 + 32);
  result = objc_msgSend_enumerateObjectsUsingBlock_(a3, a2, v7);
  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return result;
}

void sub_225146C54(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = objc_msgSend_error(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_225146D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_225146DB4(uint64_t a1, const char *a2, void *a3, BOOL *a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225146E54;
  v7[3] = &unk_278546728;
  v7[4] = *(a1 + 32);
  result = objc_msgSend_enumerateObjectsUsingBlock_(a3, a2, v7);
  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return result;
}

void sub_225146E54(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = objc_msgSend_error(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_225148304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22514831C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_firstMMCSItemError(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) |= v6 == 0;

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

BOOL sub_22514838C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_firstMMCSItemError(a2, a2, a3);
  v4 = v3 == 0;

  return v4;
}

id sub_2251495DC(void *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  objc_msgSend_setRowID_(v3, v4, &unk_2838C8220);
  v6 = objc_msgSend_sqliteRepresentations_(MEMORY[0x277CBC2B0], v5, a1[4]);
  objc_msgSend_setDeviceCapabilityStringSet_(v3, v7, v6);

  objc_msgSend_setCapabilitySetSavedDate_(v3, v8, a1[5]);
  v9 = a1[6];
  v15[0] = @"deviceCapabilityStringSet";
  v15[1] = @"capabilitySetSavedDate";
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v15, 2);
  v13 = objc_msgSend_insertObject_orUpdateProperties_label_(v9, v12, v3, v11, off_27D719CB8);

  return v13;
}

id sub_2251498F4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  objc_msgSend_setRowID_(v3, v4, &unk_2838C8220);
  objc_msgSend_setUsageSavedDate_(v3, v5, *(a1 + 32));
  v6 = *(a1 + 40);
  v12[0] = @"usageSavedDate";
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v12, 1);
  v10 = objc_msgSend_insertObject_orUpdateProperties_label_(v6, v9, v3, v8, off_27D719CD0);

  return v10;
}

void sub_225149BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225149C04(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v26 = 0;
  v4 = objc_msgSend_fetchAllEntries_(v3, a2, &v26);
  v7 = v26;
  if (v7 || objc_msgSend_count(v4, v5, v6) != 1)
  {
    if (objc_msgSend_count(v4, v5, v6) < 2)
    {
      goto LABEL_11;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = v16;
      v24 = objc_msgSend_containerID(v20, v22, v23);
      *buf = 138412546;
      v28 = v24;
      v29 = 2112;
      v30 = v4;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Found more than one last sent capabilities and usage date for containerID %@. Deleting all of them: %@", buf, 0x16u);
    }

    v18 = *(a1 + 32);
    v25 = v7;
    objc_msgSend_deleteAllEntries_(v18, v17, &v25);
    v15 = v25;
  }

  else
  {
    v8 = [CKLastSentCapabilitiesAndUsage alloc];
    v7 = objc_msgSend_firstObject(v4, v9, v10);
    SentCapabilitiesAndUsageEntry = objc_msgSend_initWithLastSentCapabilitiesAndUsageEntry_(v8, v11, v7);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = SentCapabilitiesAndUsageEntry;

    v15 = 0;
  }

  v7 = v15;
LABEL_11:

  return v7;
}

void sub_22514B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22514B698(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v14 = 0;
  v5 = objc_msgSend_entryWithValues_label_error_setupBlock_(v3, a2, v4, off_27D719CE8, &v14, &unk_28385C7E0);
  v6 = v14;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    v8 = [CKUsageInfo alloc];
    v10 = objc_msgSend_initWithUsageInfoEntry_(v8, v9, v5);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return v6;
}

void sub_22514B74C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"IDString = $IDString AND itemType = $itemType");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

void sub_22514C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22514C93C(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22514CA78;
  v21[3] = &unk_278546848;
  v21[4] = a1[7];
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(v3, a2, v4, off_27D719D00, v21);
  v8 = objc_msgSend_nextObject(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    do
    {
      v12 = *(*(a1[6] + 8) + 40);
      if (!v12)
      {
        v13 = objc_opt_new();
        v14 = *(a1[6] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = *(*(a1[6] + 8) + 40);
      }

      objc_msgSend_addObject_(v12, v9, v11);
      v18 = objc_msgSend_nextObject(v5, v16, v17);

      v11 = v18;
    }

    while (v18);
  }

  v19 = objc_msgSend_error(v5, v9, v10);

  return v19;
}

void sub_22514CA78(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"itemType = $itemType");
  objc_msgSend_setSearchPredicate_(v10, v5, v4);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, v7);
    objc_msgSend_setLimit_(v10, v9, v8);
  }
}

id sub_22514CF4C(uint64_t a1, const char *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v49 = 0;
  v5 = objc_msgSend_entryWithValues_label_error_setupBlock_(v3, a2, v4, off_280D53260, &v49, &unk_28385C800);
  v8 = v49;
  if (v8 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v6, v8) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v36 = *(a1 + 48);
      v37 = *(a1 + 64) - 1;
      if (v37 > 2)
      {
        v38 = 0;
      }

      else
      {
        v38 = off_278546890[v37];
      }

      v44 = *(a1 + 32);
      v45 = v30;
      v48 = objc_msgSend_containerID(v44, v46, v47);
      *buf = 138413058;
      v51 = v36;
      v52 = 2112;
      v53 = v38;
      v54 = 2112;
      v55 = v48;
      v56 = 2112;
      v57 = v8;
      _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Encountered unexpected error when fetching IDString %@ for type %@ in DeviceCapabilityUsageSQLTable for container %@. Error %@", buf, 0x2Au);
    }
  }

  else
  {
    if (!v5)
    {
      v5 = objc_opt_new();
    }

    v9 = objc_msgSend_lastSent(*(a1 + 56), v6, v7);
    objc_msgSend_setLastSent_(v5, v10, v9);

    v13 = objc_msgSend_lastUsed(*(a1 + 56), v11, v12);
    objc_msgSend_setLastUsed_(v5, v14, v13);

    v17 = objc_msgSend_sending(*(a1 + 56), v15, v16);
    objc_msgSend_setSending_(v5, v18, v17);

    v21 = objc_msgSend_failureCount(*(a1 + 56), v19, v20);
    objc_msgSend_setFailureCount_(v5, v22, v21);
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, *(a1 + 64));
    objc_msgSend_setItemType_(v5, v25, v24);

    objc_msgSend_setIDString_(v5, v26, *(a1 + 48));
    v28 = objc_msgSend_insertObject_orUpdateProperties_label_(*(a1 + 32), v27, v5, 0, off_280D53278);

    if (v28)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 48);
        v34 = *(a1 + 64) - 1;
        if (v34 > 2)
        {
          v35 = 0;
        }

        else
        {
          v35 = off_278546890[v34];
        }

        v39 = *(a1 + 32);
        v40 = v29;
        v43 = objc_msgSend_containerID(v39, v41, v42);
        *buf = 138413058;
        v51 = v33;
        v52 = 2112;
        v53 = v35;
        v54 = 2112;
        v55 = v43;
        v56 = 2112;
        v57 = v28;
        _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Failed to set usage for IDString %@ for type %@ in DeviceCapabilityUsageSQLTable for container %@. Error %@", buf, 0x2Au);
      }
    }

    v8 = v28;
  }

  v31 = v8;

  return v31;
}

void sub_22514D2E8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"IDString = $IDString AND itemType = $itemType");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

uint64_t sub_22514D7D4(uint64_t a1, uint64_t a2)
{
  qword_280D580F8 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

id sub_22514E7E8(void *a1)
{
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v4 = objc_opt_new();
    if (objc_msgSend_count(v1, v5, v6))
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(v1, v7, v8);
        if (v8 == objc_msgSend_count(v1, v10, v11) - 1)
        {
          objc_msgSend_appendFormat_(v4, v12, @"%@ = $%@", v9, v9);
        }

        else
        {
          objc_msgSend_appendFormat_(v4, v12, @"%@ = $%@ AND ", v9, v9);
        }

        ++v8;
      }

      while (v8 < objc_msgSend_count(v1, v13, v14));
    }

    v15 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_22514EB94(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = @"zoneIDString";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, &v8, 1);
  v6 = sub_22514E7E8(v5);
  objc_msgSend_setSearchPredicate_(v3, v7, v6, v8, v9);
}

void sub_22514F240(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"recordName";
  v8[1] = @"zoneRowID";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, v8, 2);
  v6 = sub_22514E7E8(v5);

  objc_msgSend_setSearchPredicate_(v3, v7, v6);
}

void sub_22514F630(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = @"zoneRowID";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, &v8, 1);
  v6 = sub_22514E7E8(v5);
  objc_msgSend_setSearchPredicate_(v3, v7, v6, v8, v9);
}

id sub_22514F840(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"zoneRowID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 1);
  v3 = sub_22514E7E8(v2);

  return v3;
}

id sub_22514F9E8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ = $%@ AND NOT %@ = $%@", @"zoneRowID", @"zoneRowID", @"rowID", @"rowID");
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, v2);

  return v4;
}

void sub_22515072C(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"zoneRowID";
  v8[1] = @"recordName";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, v8, 2);
  v6 = sub_22514E7E8(v5);

  objc_msgSend_setSearchPredicate_(v3, v7, v6);
}

void sub_225150E8C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = @"parentRowID";
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, &v8, 1);
  v6 = sub_22514E7E8(v5);
  objc_msgSend_setSearchPredicate_(v3, v7, v6, v8, v9);
}

id sub_2251510C0(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"shareRowID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 1);
  v3 = sub_22514E7E8(v2);

  return v3;
}

id sub_2251513CC(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"zoneRowID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 1);
  v3 = sub_22514E7E8(v2);

  return v3;
}

void sub_225151EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225151F04(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_zoneID(*(a1 + 40), v5, v6);
  v18 = 0;
  v9 = objc_msgSend_shareIDForZoneID_error_(v4, v8, v7, &v18);
  v10 = v18;

  if (!v10)
  {
    if (v9 || (objc_msgSend_recordTable(*(a1 + 32), v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = *(a1 + 40), v17 = 0, objc_msgSend_shareIDForRecordID_error_(v13, v15, v14, &v17), v9 = objc_claimAutoreleasedReturnValue(), v10 = v17, v13, !v10) && v9)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
      v10 = 0;
    }
  }

  return v10;
}

void sub_2251521E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225152204(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v12 = 0;
  v7 = objc_msgSend_shareIDForZoneID_error_(v4, v6, v5, &v12);
  v8 = v12;
  v9 = v12;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (!v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
  }

  return v8;
}

void sub_225152488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2251524A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v18 = 0;
  v7 = objc_msgSend_shareIDForZoneID_error_(v4, v6, v5, &v18);
  v8 = v18;

  if (!v8)
  {
    if (v7)
    {
      objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v9, v7);
    }

    v11 = objc_msgSend_recordTable(*(a1 + 32), v9, v10);
    v12 = *(a1 + 40);
    v17 = 0;
    v14 = objc_msgSend_shareIDsForZoneID_error_(v11, v13, v12, &v17);
    v8 = v17;

    if (!v8 && v14)
    {
      objc_msgSend_unionSet_(*(*(*(a1 + 48) + 8) + 40), v15, v14);
    }
  }

  return v8;
}

id sub_225152740(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_zoneID(*(a1 + 40), v5, v6);
  v19 = 0;
  hasZoneID_error = objc_msgSend_hasZoneID_error_(v4, v8, v7, &v19);
  v10 = v19;

  if (!v10 && (hasZoneID_error & 1) == 0)
  {
    v13 = objc_msgSend_recordTable(*(a1 + 32), v11, v12);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = 0;
    objc_msgSend_addOrUpdateRecordID_withParentID_error_(v13, v16, v14, v15, &v18);
    v10 = v18;
  }

  return v10;
}

id sub_22515297C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareIDTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v18 = 0;
  v7 = objc_msgSend_entryForShareID_addIfNotFound_error_(v4, v6, v5, 0, &v18);
  v8 = v18;

  if (!v8)
  {
    v11 = *(a1 + 32);
    if (v7)
    {
      v17 = 0;
      objc_msgSend_removeShareWithShareEntry_error_(v11, v9, v7, &v17);
      v8 = v17;
    }

    else
    {
      v12 = objc_msgSend_recordTable(v11, v9, v10);
      v13 = *(a1 + 40);
      v16 = 0;
      objc_msgSend_removeRecordID_error_(v12, v14, v13, &v16);
      v8 = v16;
    }
  }

  return v8;
}

id sub_225152BC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v39 = 0;
  v7 = objc_msgSend_addZoneShareID_error_(v4, v6, v5, &v39);
  v8 = v39;

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = objc_msgSend_recordTable(*(a1 + 32), v9, v10);
    v15 = objc_msgSend_zoneID(*(a1 + 40), v13, v14);
    v38 = 0;
    objc_msgSend_removeZoneID_error_(v12, v16, v15, &v38);
    v8 = v38;

    if (!v8)
    {
      v19 = objc_msgSend_zoneShareTable(*(a1 + 32), v17, v18);
      v22 = objc_msgSend_zoneID(*(a1 + 40), v20, v21);
      v37 = 0;
      v24 = objc_msgSend_entryForZoneID_error_(v19, v23, v22, &v37);
      v8 = v37;

      if (!v8 && v24)
      {
        v27 = objc_msgSend_shareIDTable(*(a1 + 32), v25, v26);
        v30 = objc_msgSend_zoneRowID(v24, v28, v29);
        v33 = objc_msgSend_shareRowID(v24, v31, v32);
        v36 = 0;
        objc_msgSend_removeSharesWithZoneRowID_exceptRowID_error_(v27, v34, v30, v33, &v36);
        v8 = v36;
      }
    }
  }

  return v8;
}

id sub_225152EF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zoneID(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_zoneShareTable(*(a1 + 40), v5, v6);
  v38 = 0;
  v9 = objc_msgSend_entryForZoneID_error_(v7, v8, v4, &v38);
  v10 = v38;

  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v40 = v16;
      v41 = 2112;
      v42 = v4;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: A hierarchical share %@ is added to a zone with a zone share in the shareID cache, zoneID: %@", buf, 0x16u);
    }

    v17 = objc_msgSend_zoneShareTable(*(a1 + 40), v14, v15);
    v20 = objc_msgSend_zoneRowID(v9, v18, v19);
    v37 = 0;
    objc_msgSend_removeRowID_error_(v17, v21, v20, &v37);
    v10 = v37;

    if (!v10)
    {
      v24 = objc_msgSend_shareIDTable(*(a1 + 40), v22, v23);
      v27 = objc_msgSend_shareRowID(v9, v25, v26);
      v36 = 0;
      objc_msgSend_removeRowID_error_(v24, v28, v27, &v36);
      v10 = v36;

      if (!v10)
      {
LABEL_9:
        v29 = objc_msgSend_recordTable(*(a1 + 40), v11, v12);
        v30 = *(a1 + 32);
        v31 = *(a1 + 48);
        v35 = 0;
        objc_msgSend_addShareID_forRootRecordID_error_(v29, v32, v30, v31, &v35);
        v10 = v35;
      }
    }
  }

  v33 = v10;

  return v10;
}

id sub_225153284(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareIDTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v14 = 0;
  v7 = objc_msgSend_entryForShareID_addIfNotFound_error_(v4, v6, v5, 0, &v14);
  v8 = v14;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (!v10)
  {
    v11 = *(a1 + 32);
    v13 = 0;
    objc_msgSend_removeShareWithShareEntry_error_(v11, v9, v7, &v13);
    v8 = v13;
  }

  return v8;
}

id sub_2251534A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneShareTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v27 = 0;
  v7 = objc_msgSend_entryForZoneID_error_(v4, v6, v5, &v27);
  v8 = v27;

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = objc_msgSend_zoneShareTable(*(a1 + 32), v9, v10);
    v15 = objc_msgSend_zoneRowID(v7, v13, v14);
    v26 = 0;
    objc_msgSend_removeRowID_error_(v12, v16, v15, &v26);
    v8 = v26;

    if (!v8)
    {
      v19 = objc_msgSend_shareIDTable(*(a1 + 32), v17, v18);
      v22 = objc_msgSend_shareRowID(v7, v20, v21);
      v25 = 0;
      objc_msgSend_removeRowID_error_(v19, v23, v22, &v25);
      v8 = v25;
    }
  }

  return v8;
}

id sub_225153734(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneIDTable(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v31 = 0;
  v7 = objc_msgSend_rowIDForZoneID_addIfNotFound_error_(v4, v6, v5, 0, &v31);
  v8 = v31;

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = objc_msgSend_zoneShareTable(*(a1 + 32), v9, v10);
    v30 = 0;
    objc_msgSend_removeRowID_error_(v12, v13, v7, &v30);
    v8 = v30;

    if (!v8)
    {
      v16 = objc_msgSend_recordTable(*(a1 + 32), v14, v15);
      v29 = 0;
      objc_msgSend_removeRecordsWithZoneRowID_error_(v16, v17, v7, &v29);
      v8 = v29;

      if (!v8)
      {
        v20 = objc_msgSend_shareIDTable(*(a1 + 32), v18, v19);
        v28 = 0;
        objc_msgSend_removeSharesWithZoneRowID_error_(v20, v21, v7, &v28);
        v8 = v28;

        if (!v8)
        {
          v24 = objc_msgSend_zoneIDTable(*(a1 + 32), v22, v23);
          v27 = 0;
          objc_msgSend_removeRowID_error_(v24, v25, v7, &v27);
          v8 = v27;
        }
      }
    }
  }

  return v8;
}

void sub_2251540B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_containerServerInfos(*(a1 + 32), v7, v8);
  if (v6[2](v6))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v12 = "Failed to get existing container server info from database";
LABEL_16:
      _os_log_fault_impl(&dword_22506F000, v11, OS_LOG_TYPE_FAULT, v12, buf, 2u);
    }
  }

  else
  {
    objc_msgSend_executeSQL_(v5, v10, @"DROP TABLE %@", @"ContainerServerInfo");
    if (v6[2](v6))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v12 = "Failed to drop table";
        goto LABEL_16;
      }
    }

    else
    {
      objc_msgSend_executeSQL_(v5, v13, @"%@", @"create table if not exists ContainerServerInfo (\n    containerID                 text,\n    publicCloudDBURL            text,\n    publicShareServiceURL       text,\n    publicDeviceServiceURL      text,\n    publicCodeServiceURL        text,\n    publicMetricsServiceURL     text,\n    scopedUserID                text,\n    orgAdminUserID              text,\n    environment                 text,\n    accountID                   text,\n    unique (containerID, accountID) on conflict replace\n);\n");
      if (!v6[2](v6))
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_22515432C;
        v15[3] = &unk_2785468D0;
        v16 = *(a1 + 32);
        objc_msgSend_enumerateObjectsUsingBlock_(v9, v14, v15);

        goto LABEL_18;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v12 = "Failed to create table";
        goto LABEL_16;
      }
    }
  }

LABEL_18:
}

void sub_22515432C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v13 = objc_msgSend_v3(v3, v4, v5);
  v8 = objc_msgSend_v1(v3, v6, v7);
  v11 = objc_msgSend_v2(v3, v9, v10);

  objc_msgSend_setContainerServerInfo_forContainerID_accountID_(v2, v12, v13, v8, v11);
}

id sub_2251545A0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225154618;
  v4[3] = &unk_2785468F8;
  v4[4] = v2;
  return objc_msgSend_performDatabaseOperation_(v2, a2, v4);
}

void sub_225154618(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Removing all container metadata cached info", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v22[0] = @"PushTokens";
  v22[1] = @"AppContainerAccount";
  v22[2] = @"ContainerServerInfo";
  v22[3] = @"ServerConfiguration";
  v22[4] = @"VerifiedPublicKey";
  v22[5] = @"DSIDMap";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v22, 6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v23, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_deleteFrom_where_bindings_(v5, v12, *(*(&v17 + 1) + 8 * i), @"1", 0);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v17, v23, 16);
    }

    while (v13);
  }

  objc_msgSend_inlock_setDateOfLastTokenUpdate_(*(a1 + 32), v16, 0);
}

void sub_2251548C8(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v5 = objc_msgSend_stringWithFormat_(v2, v4, @"%@ < ?", @"expirationDate");
  v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
  v12[0] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v12, 1);
  objc_msgSend_deleteFrom_where_bindings_(v3, v11, @"PushTokens", v5, v10);
}

void sub_225154A54(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ = ?", @"accountID");
  v22[0] = *(a1 + 32);
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v22, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v9, @"ContainerServerInfo", v6, v8);

  v21 = *(a1 + 32);
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, &v21, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v12, @"PushTokens", v6, v11);

  v20 = *(a1 + 32);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v20, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v15, @"AppContainerAccount", v6, v14);

  v19 = *(a1 + 32);
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v19, 1);
  objc_msgSend_deleteFrom_where_bindings_(v4, v18, @"DSIDMap", v6, v17);
}

uint64_t sub_225154CA4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Removing container metadata cached info for accountID %@", &v6, 0xCu);
  }

  return objc_msgSend_inlock_expungeDataForAccountID_(*(a1 + 40), v3, *(a1 + 32));
}

void sub_225154E0C(uint64_t a1, const char *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v60[0] = @"accountID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v60, 1);
  v6 = objc_msgSend_select_from_(v3, v5, v4, @"ContainerServerInfo");

  v8 = objc_msgSend_valueForKey_(v6, v7, @"accountID");
  if (objc_msgSend_count(v8, v9, v10))
  {
    v12 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v11, v8);
    v15 = objc_msgSend_sharedAccountStore(CKDAccountStore, v13, v14);
    v18 = objc_msgSend_accountStore(v15, v16, v17);

    v48 = v18;
    v47 = objc_msgSend_aa_appleAccounts(v18, v19, v20);
    v22 = objc_msgSend_valueForKeyPath_(v47, v21, @"identifier");
    if (objc_msgSend_count(v22, v23, v24))
    {
      v26 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v25, v22);
    }

    else
    {
      v26 = 0;
    }

    v49 = v8;
    v50 = v6;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = v22;
    v27 = MEMORY[0x277CBC830];
    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v32 = objc_msgSend_allObjects(v26, v30, v31);
      v35 = objc_msgSend_allObjects(v12, v33, v34);
      *buf = 138412546;
      v57 = v32;
      v58 = 2112;
      v59 = v35;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Got the following Apple account identifiers from Accounts:\n%@\nCached account identifiers:\n%@", buf, 0x16u);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = v12;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v51, v55, 16);
    if (v38)
    {
      v40 = v38;
      v41 = *v52;
      do
      {
        v42 = 0;
        do
        {
          if (*v52 != v41)
          {
            objc_enumerationMutation(v36);
          }

          v43 = *(*(&v51 + 1) + 8 * v42);
          if ((objc_msgSend_containsObject_(v26, v39, v43) & 1) == 0)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v44 = *v27;
            if (os_log_type_enabled(*v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v57 = v43;
              _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "Removing container metadata cached info for stale accountID %@", buf, 0xCu);
            }

            objc_msgSend_inlock_expungeDataForAccountID_(*(a1 + 32), v45, v43);
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v51, v55, 16);
      }

      while (v40);
    }

    v8 = v49;
    v6 = v50;
  }
}

void sub_2251552CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251552E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v65[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v64[0] = @"applicationID";
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v65[0] = v7;
  v64[1] = @"containerID";
  v10 = objc_msgSend_containerID(v4, v8, v9);
  v65[1] = v10;
  v64[2] = @"personaID";
  v13 = objc_msgSend_personaID(v4, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v65[2] = v17;
  v64[3] = @"accountID";
  v18 = objc_msgSend_accountID(*(a1 + 32), v14, v15);
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v65[3] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v65, v64, 4);

  v24 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v23, v22);
  v27 = objc_msgSend_v1(v24, v25, v26);
  v31 = objc_msgSend_v2(v24, v28, v29);
  if (*(a1 + 56) == 1)
  {
    v32 = objc_msgSend_stringByAppendingFormat_(v27, v30, @"AND %@ > ?", @"expirationDate");

    v35 = objc_msgSend_date(MEMORY[0x277CBEAA8], v33, v34);
    v37 = objc_msgSend_arrayByAddingObject_(v31, v36, v35);

    v31 = v37;
    v27 = v32;
  }

  v38 = *(a1 + 40);
  v63[0] = @"apsToken";
  v63[1] = @"apsEnvironment";
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v63, 2);
  v41 = objc_msgSend_select_from_where_bindings_(v38, v40, v39, @"PushTokens", v27, v31);

  if (objc_msgSend_count(v41, v42, v43))
  {
    v62 = v22;
    v45 = objc_msgSend_objectAtIndexedSubscript_(v41, v44, 0);
    v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"apsEnvironment");
    v50 = objc_msgSend_lowercaseString(v47, v48, v49);
    v51 = v50;
    v52 = *MEMORY[0x277CEE9F0];
    if (v50)
    {
      v52 = v50;
    }

    v53 = v52;

    v55 = objc_msgSend_objectForKeyedSubscript_(v45, v54, @"apsToken");
    v56 = v55;
    if (v53 && v55)
    {
      v57 = [CKDPushToken alloc];
      v59 = objc_msgSend_initWithAPSEnvironmentString_apsToken_(v57, v58, v53, v56);
      v60 = *(*(a1 + 48) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;
    }

    v22 = v62;
  }
}

void sub_2251556DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v30[0] = @"applicationID";
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v31[0] = v7;
  v30[1] = @"containerID";
  v10 = objc_msgSend_containerID(v4, v8, v9);
  v31[1] = v10;
  v30[2] = @"personaID";
  v13 = objc_msgSend_personaID(v4, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v31[2] = v17;
  v30[3] = @"accountID";
  v18 = objc_msgSend_accountID(*(a1 + 32), v14, v15);
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v31[3] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v31, v30, 4);

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2251558A0;
  v27[3] = &unk_278546968;
  v23 = *(a1 + 40);
  v28 = *(a1 + 48);
  v29 = v22;
  v24 = v22;
  v26 = objc_msgSend_performDatabaseOperation_(v23, v25, v27);
}

void sub_2251558A0(uint64_t a1, void *a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = MEMORY[0x277CBEAA8];
    v4 = a2;
    v7 = objc_msgSend_dateWithTimeIntervalSinceNow_(v3, v5, v6, 604800.0);
    v10 = objc_msgSend_mutableCopy(*(a1 + 40), v8, v9);
    v33[0] = @"apsToken";
    v13 = objc_msgSend_apsToken(*(a1 + 32), v11, v12);
    v34[0] = v13;
    v33[1] = @"apsEnvironment";
    v16 = objc_msgSend_apsEnvironmentString(*(a1 + 32), v14, v15);
    v33[2] = @"expirationDate";
    v34[1] = v16;
    v34[2] = v7;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v34, v33, 3);
    objc_msgSend_addEntriesFromDictionary_(v10, v19, v18);

    objc_msgSend_insertOrReplaceInto_values_(v4, v20, @"PushTokens", v10);
  }

  else
  {
    v21 = MEMORY[0x277CBC648];
    v22 = *(a1 + 40);
    v23 = a2;
    v32 = objc_msgSend_equalityClauseAndBindingsForDict_(v21, v24, v22);
    v27 = objc_msgSend_v1(v32, v25, v26);
    v30 = objc_msgSend_v2(v32, v28, v29);
    objc_msgSend_deleteFrom_where_bindings_(v23, v31, @"PushTokens", v27, v30);
  }
}

void sub_225155B4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v8 = objc_msgSend_appContainerTuple(v5, v6, v7);
  v11 = objc_msgSend_persona(v8, v9, v10);
  v13 = *(a1 + 32);
  v12 = v5;
  CKPersonaPerformBlock();
}

void *sub_225155C2C(void *result, uint64_t a2)
{
  if (!a2)
  {
    return (*(result[5] + 16))(result[5], result[4], result[6]);
  }

  return result;
}

void sub_225155D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225155D90(uint64_t a1, const char *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v19[0] = @"applicationID";
  v19[1] = @"containerID";
  v19[2] = @"personaID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v19, 3);
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@ = ?", @"accountID");
  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = &stru_28385ED00;
  }

  v18 = v8;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v18, 1);
  v11 = objc_msgSend_select_from_where_bindings_(v3, v10, v4, @"AppContainerAccount", v7, v9);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225155F3C;
  v16[3] = &unk_2785462E0;
  v17 = *(a1 + 40);
  v13 = objc_msgSend_CKCompactMap_(v11, v12, v16);
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

CKDAppContainerAccountTuple *sub_225155F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDApplicationID alloc];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"applicationID");
  v8 = objc_msgSend_initWithSqliteRepresentation_(v4, v7, v6);

  v9 = objc_alloc(MEMORY[0x277CBC220]);
  v11 = objc_msgSend_objectForKeyedSubscript_(v3, v10, @"containerID");
  v13 = objc_msgSend_initWithSqliteRepresentation_(v9, v12, v11);

  v15 = objc_msgSend_objectForKeyedSubscript_(v3, v14, @"personaID");

  v18 = objc_msgSend_CKNilIfLengthZero(v15, v16, v17);

  v19 = 0;
  if (v8 && v13)
  {
    if (*(a1 + 32))
    {
      v20 = [CKDAppContainerTuple alloc];
      v22 = objc_msgSend_initWithApplicationID_containerID_personaID_(v20, v21, v8, v13, v18);
      v23 = [CKDAppContainerAccountTuple alloc];
      v19 = objc_msgSend_initWithAppContainerTuple_accountID_(v23, v24, v22, *(a1 + 32));
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

void sub_225156148(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v8 = objc_msgSend_appContainerTuple(v5, v6, v7);
  v11 = objc_msgSend_persona(v8, v9, v10);
  v13 = *(a1 + 32);
  v12 = v5;
  CKPersonaPerformBlock();
}

void *sub_225156228(void *result, uint64_t a2)
{
  if (!a2)
  {
    return (*(result[5] + 16))(result[5], result[4], result[6]);
  }

  return result;
}

void sub_22515634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225156364(uint64_t a1, const char *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v11[0] = @"applicationID";
  v11[1] = @"containerID";
  v11[2] = @"personaID";
  v11[3] = @"accountID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 4);
  v6 = objc_msgSend_select_from_(v3, v5, v4, @"AppContainerAccount");

  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385C9E0);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

CKDAppContainerAccountTuple *sub_225156454(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [CKDApplicationID alloc];
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v5, @"applicationID");
  v8 = objc_msgSend_initWithSqliteRepresentation_(v4, v7, v6);

  v9 = objc_alloc(MEMORY[0x277CBC220]);
  v11 = objc_msgSend_objectForKeyedSubscript_(v2, v10, @"containerID");
  v13 = objc_msgSend_initWithSqliteRepresentation_(v9, v12, v11);

  v15 = objc_msgSend_objectForKeyedSubscript_(v2, v14, @"personaID");
  v18 = objc_msgSend_CKNilIfLengthZero(v15, v16, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(v2, v19, @"accountID");
  v23 = objc_msgSend_CKNilIfLengthZero(v20, v21, v22);

  v24 = 0;
  if (v8 && v13 && v23)
  {
    v25 = [CKDAppContainerTuple alloc];
    v27 = objc_msgSend_initWithApplicationID_containerID_personaID_(v25, v26, v8, v13, v18);
    v28 = [CKDAppContainerAccountTuple alloc];
    v24 = objc_msgSend_initWithAppContainerTuple_accountID_(v28, v29, v27, v23);
  }

  objc_autoreleasePoolPop(v3);

  return v24;
}

void sub_22515670C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225156724(uint64_t a1, const char *a2, uint64_t a3)
{
  v59[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v58[0] = @"applicationID";
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v59[0] = v7;
  v58[1] = @"containerID";
  v10 = objc_msgSend_containerID(v4, v8, v9);
  v59[1] = v10;
  v58[2] = @"personaID";
  v13 = objc_msgSend_personaID(v4, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v59[2] = v17;
  v58[3] = @"accountID";
  v18 = objc_msgSend_accountID(*(a1 + 32), v14, v15);
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v59[3] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v59, v58, 4);

  v24 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v23, v22);
  v25 = *(a1 + 40);
  v57[0] = @"containerOptions";
  v57[1] = @"tokenRegistered";
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v57, 2);
  v30 = objc_msgSend_v1(v24, v28, v29);
  v33 = objc_msgSend_v2(v24, v31, v32);
  v35 = objc_msgSend_select_from_where_bindings_(v25, v34, v27, @"AppContainerAccount", v30, v33);

  if (objc_msgSend_count(v35, v36, v37))
  {
    v39 = objc_msgSend_objectAtIndexedSubscript_(v35, v38, 0);
    v40 = objc_alloc(MEMORY[0x277CBC230]);
    v42 = objc_msgSend_objectForKeyedSubscript_(v39, v41, @"containerOptions");
    v44 = objc_msgSend_initWithSqliteRepresentation_(v40, v43, v42);

    v46 = objc_msgSend_objectForKeyedSubscript_(v39, v45, @"tokenRegistered");
    v49 = objc_msgSend_integerValue(v46, v47, v48);

    v50 = [CKDAppContainerAccountMetadata alloc];
    v52 = objc_msgSend_initWithContainerOptions_tokenRegistered_(v50, v51, v44, v49);
    v53 = *(*(a1 + 48) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;
  }

  else
  {
    v55 = objc_opt_new();
    v56 = *(*(a1 + 48) + 8);
    v39 = *(v56 + 40);
    *(v56 + 40) = v55;
  }
}

void sub_225156AC4(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225156B6C;
  v5[3] = &unk_278546968;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = objc_msgSend_performDatabaseOperation_(v2, v3, v5);
}

void sub_225156B6C(uint64_t a1, void *a2)
{
  v65[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_appContainerTuple(*(a1 + 32), v4, v5);
  v64[0] = @"applicationID";
  v9 = objc_msgSend_applicationID(v6, v7, v8);
  v65[0] = v9;
  v64[1] = @"containerID";
  v12 = objc_msgSend_containerID(v6, v10, v11);
  v65[1] = v12;
  v64[2] = @"personaID";
  v15 = objc_msgSend_personaID(v6, v13, v14);
  v18 = v15;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = &stru_28385ED00;
  }

  v65[2] = v19;
  v64[3] = @"accountID";
  v20 = objc_msgSend_accountID(*(a1 + 32), v16, v17);
  v22 = v20;
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = &stru_28385ED00;
  }

  v65[3] = v23;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v65, v64, 4);

  v26 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v25, v24);
  v63 = @"tokenRegistered";
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, &v63, 1);
  v31 = objc_msgSend_v1(v26, v29, v30);
  v34 = objc_msgSend_v2(v26, v32, v33);
  v36 = objc_msgSend_select_from_where_bindings_(v3, v35, v28, @"AppContainerAccount", v31, v34);

  if (objc_msgSend_count(v36, v37, v38))
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(v36, v39, 0);
    if (objc_msgSend_tokenRegistered(*(a1 + 40), v42, v43) == -1)
    {
      v45 = objc_msgSend_objectForKeyedSubscript_(v41, v44, @"tokenRegistered");
      v48 = objc_msgSend_integerValue(v45, v46, v47);
      objc_msgSend_setTokenRegistered_(*(a1 + 40), v49, v48);
    }
  }

  v50 = objc_msgSend_mutableCopy(v24, v39, v40);
  v53 = objc_msgSend_containerOptions(*(a1 + 40), v51, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v54, v53, @"containerOptions");

  v55 = MEMORY[0x277CCABB0];
  v58 = objc_msgSend_tokenRegistered(*(a1 + 40), v56, v57);
  v60 = objc_msgSend_numberWithInteger_(v55, v59, v58);
  objc_msgSend_setObject_forKeyedSubscript_(v50, v61, v60, @"tokenRegistered");

  objc_msgSend_insertOrReplaceInto_values_(v3, v62, @"AppContainerAccount", v50);
}

void sub_225156F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225156F64(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_datePropertyForKey_(*(a1 + 32), a2, @"lastTokenUpdate");

  return MEMORY[0x2821F96F8]();
}

void sub_2251574B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251574C8(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 48) + 8) + 40) = objc_msgSend_inlock_applicationMetadataForApplicationID_(*(a1 + 32), a2, *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_2251575F0(id *a1, const char *a2)
{
  v3 = objc_msgSend_inlock_applicationMetadataForApplicationID_(a1[4], a2, a1[5]);
  v4 = objc_opt_new();
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, a1[5], @"applicationID");
  v8 = objc_msgSend_adopterProcessType(a1[6], v6, v7);
  v13 = objc_msgSend_adopterProcessType(v3, v9, v10);
  v14 = MEMORY[0x277CCABB0];
  v15 = v3;
  v16 = v8 != v13;
  if (v8 != v13)
  {
    v15 = a1[6];
  }

  v17 = objc_msgSend_adopterProcessType(v15, v11, v12);
  v19 = objc_msgSend_numberWithInteger_(v14, v18, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, @"adopterProcessType");

  v23 = objc_msgSend_applicationContainerPath(a1[6], v21, v22);
  v26 = objc_msgSend_applicationContainerPath(v3, v24, v25);
  v29 = v26;
  if (v23 == v26)
  {

    v38 = v3;
  }

  else
  {
    v30 = objc_msgSend_applicationContainerPath(a1[6], v27, v28);
    v33 = objc_msgSend_applicationContainerPath(v3, v31, v32);
    isEqualToString = objc_msgSend_isEqualToString_(v30, v34, v33);

    v38 = v3;
    if ((isEqualToString & 1) == 0)
    {
      v16 = 1;
      objc_msgSend_applicationContainerPath(a1[6], v36, v37);
      goto LABEL_8;
    }
  }

  objc_msgSend_applicationContainerPath(v38, v36, v37);
  v39 = LABEL_8:;
  v41 = v39;
  if (v39)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v40, v39, @"applicationContainerPath");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v40, &stru_28385ED00, @"applicationContainerPath");
  }

  v44 = objc_msgSend_clientSDKVersion(a1[6], v42, v43);
  v49 = objc_msgSend_clientSDKVersion(v3, v45, v46);
  v50 = MEMORY[0x277CCABB0];
  v51 = v3;
  if (v44 != v49)
  {
    v51 = a1[6];
    v16 = 1;
  }

  v52 = objc_msgSend_clientSDKVersion(v51, v47, v48);
  v54 = objc_msgSend_numberWithUnsignedInt_(v50, v53, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v55, v54, @"clientSDKVersion");

  v58 = objc_msgSend_containingBundleID(a1[6], v56, v57);
  v61 = objc_msgSend_containingBundleID(v3, v59, v60);
  v64 = v61;
  if (v58 == v61)
  {

    v73 = v3;
  }

  else
  {
    v65 = objc_msgSend_containingBundleID(a1[6], v62, v63);
    v68 = objc_msgSend_containingBundleID(v3, v66, v67);
    v70 = objc_msgSend_isEqualToString_(v65, v69, v68);

    v73 = v3;
    if ((v70 & 1) == 0)
    {
      v16 = 1;
      objc_msgSend_containingBundleID(a1[6], v71, v72);
      goto LABEL_18;
    }
  }

  objc_msgSend_containingBundleID(v73, v71, v72);
  v74 = LABEL_18:;
  v76 = v74;
  if (v74)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v75, v74, @"containingBundleID");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v75, &stru_28385ED00, @"containingBundleID");
  }

  v79 = objc_msgSend_entitlements(a1[6], v77, v78);
  v82 = objc_msgSend_entitlements(v3, v80, v81);
  v85 = v82;
  if (v79 == v82)
  {

    v94 = v3;
  }

  else
  {
    v86 = objc_msgSend_entitlements(a1[6], v83, v84);
    v89 = objc_msgSend_entitlements(v3, v87, v88);
    isEqual = objc_msgSend_isEqual_(v86, v90, v89);

    v94 = v3;
    if ((isEqual & 1) == 0)
    {
      v16 = 1;
      objc_msgSend_entitlements(a1[6], v92, v93);
      goto LABEL_26;
    }
  }

  objc_msgSend_entitlements(v94, v92, v93);
  v95 = LABEL_26:;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v96, v95, @"entitlements");

  isClientMainBundleAppleExecutable = objc_msgSend_isClientMainBundleAppleExecutable(a1[6], v97, v98);
  v102 = objc_msgSend_isClientMainBundleAppleExecutable(v3, v100, v101);
  v105 = MEMORY[0x277CCABB0];
  if (isClientMainBundleAppleExecutable != v102)
  {
    v106 = objc_msgSend_isClientMainBundleAppleExecutable(a1[6], v103, v104);
    v108 = objc_msgSend_numberWithBool_(v105, v107, v106);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v109, v108, @"isMainBundleAppleExecutable");

LABEL_29:
    v114 = a1[4];
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = sub_225157A64;
    v117[3] = &unk_278546968;
    v118 = v4;
    v119 = a1[5];
    v116 = objc_msgSend_performDatabaseOperation_(v114, v115, v117);

    goto LABEL_30;
  }

  v110 = objc_msgSend_isClientMainBundleAppleExecutable(v3, v103, v104);
  v112 = objc_msgSend_numberWithBool_(v105, v111, v110);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v113, v112, @"isMainBundleAppleExecutable");

  if (v16)
  {
    goto LABEL_29;
  }

LABEL_30:
}

void sub_225157A64(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_insertOrReplaceInto_values_(v4, v5, @"AppBundle", v3);
  v6 = *(a1 + 40);
  v27 = @"applicationID";
  v28[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v28, &v27, 1);
  v10 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v9, v8);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@ = %@", @"tokenRegistered", &unk_2838C8340);
  v15 = objc_msgSend_v1(v10, v13, v14);
  v18 = objc_msgSend_v2(v10, v16, v17);
  objc_msgSend_update_set_where_bindings_limit_(v4, v19, @"AppContainerAccount", v12, v15, v18, 0);

  v22 = objc_msgSend_v1(v10, v20, v21);
  v25 = objc_msgSend_v2(v10, v23, v24);
  objc_msgSend_deleteFrom_where_bindings_(v4, v26, @"PushTokens", v22, v25);
}

void sub_225157CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225157D10(uint64_t a1, const char *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v11[0] = @"applicationID";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 1);
  v6 = objc_msgSend_select_from_(v3, v5, v4, @"AppBundle");

  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385CA00);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

CKDApplicationID *sub_225157DE4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKDApplicationID alloc];
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, @"applicationID");

  v7 = objc_msgSend_initWithSqliteRepresentation_(v3, v6, v5);

  return v7;
}

void sub_225157F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225157F84(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ IS NOT NULL AND %@ != ", @"applicationContainerPath", @"applicationContainerPath");
  v4 = *(a1 + 32);
  v13[0] = @"applicationID";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v13, 1);
  v8 = objc_msgSend_select_from_where_bindings_(v4, v7, v6, @"AppBundle", v3, 0);

  v10 = objc_msgSend_CKCompactMap_(v8, v9, &unk_28385CA20);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

CKDApplicationID *sub_22515808C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKDApplicationID alloc];
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, @"applicationID");

  v7 = objc_msgSend_initWithSqliteRepresentation_(v3, v6, v5);

  return v7;
}

void sub_2251581C4(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225158254;
  v4[3] = &unk_2785468F8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = objc_msgSend_performDatabaseOperation_(v1, v2, v4);
}

void sub_225158254(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v16 = @"applicationID";
  v17[0] = v2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v3, v5, v17, &v16, 1);
  v8 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v7, v6);
  v11 = objc_msgSend_v1(v8, v9, v10);
  v14 = objc_msgSend_v2(v8, v12, v13);
  objc_msgSend_deleteFrom_where_bindings_(v4, v15, @"AppBundle", v11, v14);
}

void sub_225158454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515846C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v10 = objc_msgSend_selectAllObjectsOfClass_(v2, v4, v3);
  v7 = objc_msgSend_lastObject(v10, v5, v6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_2251585C4(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225158654;
  v4[3] = &unk_2785468F8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = objc_msgSend_performDatabaseOperation_(v1, v2, v4);
}

void sub_225158654(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_msgSend_deleteFrom_where_bindings_(v7, v3, @"ServerConfiguration", @"1", 0);
  objc_msgSend_deleteFrom_where_bindings_(v7, v4, @"VerifiedPublicKey", @"1", 0);
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_insertOrReplaceObject_(v7, v5, v6);
  }
}

void sub_22515887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225158894(void *a1, const char *a2)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v55[0] = @"keyType";
  v55[1] = @"keyID";
  v3 = a1[5];
  v56[0] = a1[4];
  v56[1] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v56, v55, 2);
  v6 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v5, v4);
  v7 = a1[6];
  v10 = objc_msgSend_v1(v6, v8, v9);
  v13 = objc_msgSend_v2(v6, v11, v12);
  v15 = objc_msgSend_selectAllFrom_where_bindings_(v7, v14, @"VerifiedPublicKey", v10, v13);

  if (objc_msgSend_count(v15, v16, v17) >= 2)
  {
    v50 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v50, v51, a1[8], a1[6], @"CKDMetadataCache.m", 798, @"Unique constraint violation in public key table");
  }

  v20 = objc_msgSend_firstObject(v15, v18, v19);
  v22 = v20;
  if (v20)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"keyExpiration");
    v26 = objc_msgSend_integerValue(v23, v24, v25);

    v28 = objc_msgSend_objectForKeyedSubscript_(v22, v27, @"protectionSource");
    if (objc_msgSend_length(v28, v29, v30))
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v53 = objc_alloc(MEMORY[0x277CBC568]);
    v52 = objc_msgSend_objectForKeyedSubscript_(v22, v33, @"publicKey");
    v35 = objc_msgSend_objectForKeyedSubscript_(v22, v34, @"keyVersion");
    v38 = objc_msgSend_integerValue(v35, v36, v37);
    objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v39, v40, v26);
    v41 = v54 = v4;
    objc_msgSend_objectForKeyedSubscript_(v22, v42, @"keyCert");
    v43 = v15;
    v45 = v44 = v6;
    v47 = objc_msgSend_initWithPublicKey_version_expiration_certificateData_protectionSource_(v53, v46, v52, v38, v41, v45, v32);

    v48 = *(a1[7] + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;

    v6 = v44;
    v15 = v43;

    v4 = v54;
  }
}

void sub_225158C98(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225158D54;
  v5[3] = &unk_278546A78;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = objc_msgSend_performDatabaseOperation_(v2, v3, v5);
}

void sub_225158D54(uint64_t a1, void *a2)
{
  v51[7] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v50[0] = @"keyType";
    v50[1] = @"keyID";
    v4 = *(a1 + 48);
    v51[0] = *(a1 + 40);
    v51[1] = v4;
    v50[2] = @"publicKey";
    v5 = a2;
    v8 = objc_msgSend_publicKey(v3, v6, v7);
    v51[2] = v8;
    v50[3] = @"keyVersion";
    v9 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_version(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_numberWithInteger_(v9, v13, v12);
    v51[3] = v14;
    v50[4] = @"keyExpiration";
    v15 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_expiration(*(a1 + 32), v16, v17);
    objc_msgSend_timeIntervalSince1970(v18, v19, v20);
    v23 = objc_msgSend_numberWithDouble_(v15, v21, v22);
    v51[4] = v23;
    v50[5] = @"keyCert";
    v26 = objc_msgSend_certData(*(a1 + 32), v24, v25);
    v51[5] = v26;
    v50[6] = @"protectionSource";
    v29 = objc_msgSend_protectionSource(*(a1 + 32), v27, v28);
    v31 = v29;
    v32 = &stru_28385ED00;
    if (v29)
    {
      v32 = v29;
    }

    v51[6] = v32;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v51, v50, 7);
    objc_msgSend_insertOrReplaceInto_values_(v5, v34, @"VerifiedPublicKey", v33);
  }

  else
  {
    v35 = *(a1 + 48);
    v26 = a2;
    if (objc_msgSend_isEqualToString_(v35, v36, @"*") && CKIsRunningInTestHost())
    {
      v38 = *(a1 + 40);
      v48 = @"keyType";
      v49 = v38;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v49, &v48, 1);
    }

    else
    {
      v46[0] = @"keyType";
      v46[1] = @"keyID";
      v39 = *(a1 + 48);
      v47[0] = *(a1 + 40);
      v47[1] = v39;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v47, v46, 2);
    }
    v8 = ;
    v14 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v40, v8);
    v18 = objc_msgSend_v1(v14, v41, v42);
    v23 = objc_msgSend_v2(v14, v43, v44);
    objc_msgSend_deleteFrom_where_bindings_(v26, v45, @"VerifiedPublicKey", v18, v23);
  }
}

void sub_2251590E0(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_225159170;
  v3[3] = &unk_2785468D0;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_msgSend__enumerateContainerServerInfo_bindings_usingBlock_(v1, v2, 0, 0, v3);
}

void sub_225159364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225159388(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_v3(a2, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_225159588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v8 = objc_msgSend_objectForKeyedSubscript_(v58, v7, @"containerID");
  v10 = objc_msgSend_objectForKeyedSubscript_(v58, v9, @"accountID");
  v11 = objc_alloc_init(CKDContainerServerInfo);
  v13 = objc_msgSend_objectForKeyedSubscript_(v58, v12, @"publicCloudDBURL");
  if (objc_msgSend_length(v13, v14, v15))
  {
    v17 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v16, v13);
    objc_msgSend_setPublicCloudDBURL_(v11, v18, v17);
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(v58, v16, @"publicShareServiceURL");

  if (objc_msgSend_length(v19, v20, v21))
  {
    v23 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v22, v19);
    objc_msgSend_setPublicShareServiceURL_(v11, v24, v23);
  }

  v25 = objc_msgSend_objectForKeyedSubscript_(v58, v22, @"publicDeviceServiceURL");

  if (objc_msgSend_length(v25, v26, v27))
  {
    v29 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v28, v25);
    objc_msgSend_setPublicDeviceServiceURL_(v11, v30, v29);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(v58, v28, @"publicCodeServiceURL");

  if (objc_msgSend_length(v31, v32, v33))
  {
    v35 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v34, v31);
    objc_msgSend_setPublicCodeServiceURL_(v11, v36, v35);
  }

  v37 = objc_msgSend_objectForKeyedSubscript_(v58, v34, @"publicMetricsServiceURL");

  if (objc_msgSend_length(v37, v38, v39))
  {
    v41 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v40, v37);
    objc_msgSend_setPublicMetricsServiceURL_(v11, v42, v41);
  }

  v43 = objc_msgSend_objectForKeyedSubscript_(v58, v40, @"scopedUserID");
  objc_msgSend_setContainerScopedUserID_(v11, v44, v43);

  v46 = objc_msgSend_objectForKeyedSubscript_(v58, v45, @"orgAdminUserID");
  objc_msgSend_setOrgAdminUserID_(v11, v47, v46);

  v49 = objc_msgSend_objectForKeyedSubscript_(v58, v48, @"environment");

  if (v49)
  {
    v51 = objc_msgSend_objectForKeyedSubscript_(v58, v50, @"environment");
    v52 = CKServerEnvironmentFromString();
    objc_msgSend_setEnvironment_(v11, v53, v52);
  }

  v54 = *(a1 + 32);
  v55 = objc_alloc(MEMORY[0x277CBC7A8]);
  v57 = objc_msgSend_initWithObject1_object2_object3_(v55, v56, v8, v10, v11);
  (*(v54 + 16))(v54, v57, a3, a4);
}

void sub_225159A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225159A4C(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 56) + 8) + 40) = objc_msgSend_inlock_containerServerInfoForContainerID_accountID_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));

  return MEMORY[0x2821F96F8]();
}

void sub_225159BE0(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225159D98;
  v15[3] = &unk_278546B18;
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v14 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v16 = v14;
  v17 = v7;
  v9 = objc_msgSend_performDatabaseOperation_(v3, v8, v15);
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138413058;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Failed to set container server info %@ for container %@:%@ with error: %@", buf, 0x2Au);
    }
  }
}

void sub_225159D98(uint64_t a1, void *a2)
{
  v112[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*(a1 + 32))
  {
    v5 = objc_msgSend_inlock_containerServerInfoForContainerID_accountID_(*(a1 + 40), v3, *(a1 + 48), *(a1 + 56));
    v6 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v6, v7, *(a1 + 48), @"containerID");
    objc_msgSend_setObject_forKeyedSubscript_(v6, v8, *(a1 + 56), @"accountID");
    v11 = objc_msgSend_publicCloudDBURL(*(a1 + 32), v9, v10);

    if (v11)
    {
      objc_msgSend_publicCloudDBURL(*(a1 + 32), v12, v13);
    }

    else
    {
      v23 = objc_msgSend_publicCloudDBURL(v5, v12, v13);
      v26 = objc_msgSend_absoluteString(v23, v24, v25);

      if (!v26)
      {
        goto LABEL_8;
      }

      objc_msgSend_publicCloudDBURL(v5, v27, v28);
    }
    v29 = ;
    v32 = objc_msgSend_absoluteString(v29, v30, v31);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v33, v32, @"publicCloudDBURL");

LABEL_8:
    v34 = objc_msgSend_publicShareServiceURL(*(a1 + 32), v27, v28);

    if (v34)
    {
      objc_msgSend_publicShareServiceURL(*(a1 + 32), v35, v36);
    }

    else
    {
      v37 = objc_msgSend_publicShareServiceURL(v5, v35, v36);
      v40 = objc_msgSend_absoluteString(v37, v38, v39);

      if (!v40)
      {
        goto LABEL_13;
      }

      objc_msgSend_publicShareServiceURL(v5, v41, v42);
    }
    v43 = ;
    v46 = objc_msgSend_absoluteString(v43, v44, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"publicShareServiceURL");

LABEL_13:
    v48 = objc_msgSend_publicDeviceServiceURL(*(a1 + 32), v41, v42);

    if (v48)
    {
      objc_msgSend_publicDeviceServiceURL(*(a1 + 32), v49, v50);
    }

    else
    {
      v51 = objc_msgSend_publicDeviceServiceURL(v5, v49, v50);
      v54 = objc_msgSend_absoluteString(v51, v52, v53);

      if (!v54)
      {
        goto LABEL_18;
      }

      objc_msgSend_publicDeviceServiceURL(v5, v55, v56);
    }
    v57 = ;
    v60 = objc_msgSend_absoluteString(v57, v58, v59);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v61, v60, @"publicDeviceServiceURL");

LABEL_18:
    v62 = objc_msgSend_publicCodeServiceURL(*(a1 + 32), v55, v56);

    if (v62)
    {
      objc_msgSend_publicCodeServiceURL(*(a1 + 32), v63, v64);
    }

    else
    {
      v65 = objc_msgSend_publicCodeServiceURL(v5, v63, v64);
      v68 = objc_msgSend_absoluteString(v65, v66, v67);

      if (!v68)
      {
        goto LABEL_23;
      }

      objc_msgSend_publicCodeServiceURL(v5, v69, v70);
    }
    v71 = ;
    v74 = objc_msgSend_absoluteString(v71, v72, v73);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v75, v74, @"publicCodeServiceURL");

LABEL_23:
    v76 = objc_msgSend_publicMetricsServiceURL(*(a1 + 32), v69, v70);

    if (v76)
    {
      objc_msgSend_publicMetricsServiceURL(*(a1 + 32), v77, v78);
    }

    else
    {
      v79 = objc_msgSend_publicMetricsServiceURL(v5, v77, v78);
      v82 = objc_msgSend_absoluteString(v79, v80, v81);

      if (!v82)
      {
        goto LABEL_28;
      }

      objc_msgSend_publicMetricsServiceURL(v5, v83, v84);
    }
    v85 = ;
    v88 = objc_msgSend_absoluteString(v85, v86, v87);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v89, v88, @"publicMetricsServiceURL");

LABEL_28:
    v90 = objc_msgSend_containerScopedUserID(*(a1 + 32), v83, v84);

    if (v90)
    {
      objc_msgSend_containerScopedUserID(*(a1 + 32), v91, v92);
    }

    else
    {
      v93 = objc_msgSend_containerScopedUserID(v5, v91, v92);

      if (!v93)
      {
        goto LABEL_33;
      }

      objc_msgSend_containerScopedUserID(v5, v94, v95);
    }
    v96 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v6, v97, v96, @"scopedUserID");

LABEL_33:
    v98 = objc_msgSend_orgAdminUserID(*(a1 + 32), v94, v95);

    if (v98)
    {
      objc_msgSend_orgAdminUserID(*(a1 + 32), v99, v100);
    }

    else
    {
      v101 = objc_msgSend_orgAdminUserID(v5, v99, v100);

      if (!v101)
      {
        goto LABEL_38;
      }

      objc_msgSend_orgAdminUserID(v5, v102, v103);
    }
    v104 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v6, v105, v104, @"orgAdminUserID");

LABEL_38:
    if (objc_msgSend_environment(*(a1 + 32), v102, v103) == -1)
    {
      if (!v5 || objc_msgSend_environment(v5, v106, v107) == -1)
      {
        goto LABEL_41;
      }

      objc_msgSend_environment(v5, v106, v110);
    }

    else
    {
      objc_msgSend_environment(*(a1 + 32), v106, v107);
    }

    v108 = CKStringFromServerEnvironment();
    objc_msgSend_setObject_forKeyedSubscript_(v6, v109, v108, @"environment");

LABEL_41:
    objc_msgSend_insertOrReplaceInto_values_(v4, v106, @"ContainerServerInfo", v6);
    goto LABEL_42;
  }

  v14 = *(a1 + 48);
  v111 = @"containerID";
  v112[0] = v14;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v112, &v111, 1);
  v6 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v15, v5);
  v18 = objc_msgSend_v1(v6, v16, v17);
  v21 = objc_msgSend_v2(v6, v19, v20);
  objc_msgSend_deleteFrom_where_bindings_(v4, v22, @"ContainerServerInfo", v18, v21);

LABEL_42:
}

void sub_22515A348(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22515A3D8;
  v4[3] = &unk_2785468F8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = objc_msgSend_performDatabaseOperation_(v1, v2, v4);
}

void sub_22515A3D8(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v30 = @"containerID";
  v31[0] = v2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v3, v5, v31, &v30, 1);
  v8 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v7, v6);
  v11 = objc_msgSend_v1(v8, v9, v10);
  v14 = objc_msgSend_v2(v8, v12, v13);
  objc_msgSend_deleteFrom_where_bindings_(v4, v15, @"ContainerServerInfo", v11, v14);

  v18 = objc_msgSend_v1(v8, v16, v17);
  v21 = objc_msgSend_v2(v8, v19, v20);
  objc_msgSend_deleteFrom_where_bindings_(v4, v22, @"AppContainerAccount", v18, v21);

  v25 = objc_msgSend_v1(v8, v23, v24);
  v28 = objc_msgSend_v2(v8, v26, v27);
  objc_msgSend_deleteFrom_where_bindings_(v4, v29, @"PushTokens", v25, v28);
}

void sub_22515A62C(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22515A6D4;
  v5[3] = &unk_278546968;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = objc_msgSend_performDatabaseOperation_(v2, v3, v5);
}

void sub_22515A6D4(uint64_t a1, void *a2, void *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9)
  {
    if (v8)
    {
      v23[0] = @"accountID";
      v23[1] = @"DSID";
      v24[0] = v8;
      v24[1] = v9;
      v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v24, v23, 2);
      objc_msgSend_insertOrReplaceInto_values_(v5, v11, @"DSIDMap", v10);
LABEL_6:
    }
  }

  else if (v8)
  {
    v21 = @"accountID";
    v22 = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v22, &v21, 1);
    v13 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v12, v10);
    v16 = objc_msgSend_v1(v13, v14, v15);
    v19 = objc_msgSend_v2(v13, v17, v18);
    objc_msgSend_deleteFrom_where_bindings_(v5, v20, @"DSIDMap", v16, v19);

    goto LABEL_6;
  }
}

void sub_22515A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515A98C(void *a1, const char *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v27 = @"accountID";
  v28[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v28, &v27, 1);
  v6 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v5, v4);
  v7 = a1[5];
  v26 = @"DSID";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, &v26, 1);
  v12 = objc_msgSend_v1(v6, v10, v11);
  v15 = objc_msgSend_v2(v6, v13, v14);
  v17 = objc_msgSend_select_from_where_bindings_(v7, v16, v9, @"DSIDMap", v12, v15);

  if (objc_msgSend_count(v17, v18, v19))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v17, v20, 0);
    v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"DSID");
    v24 = *(a1[6] + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }
}

void sub_22515AE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a1 + 40);
    v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
    (*(v4 + 16))(v4, v5);
  }
}

void sub_22515B170(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cacheDelegateQueue(*(a1 + 32), a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515B240;
  block[3] = &unk_278546BB8;
  v7 = *(a1 + 32);
  v5 = *(&v7 + 1);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  v9 = v7;
  v10 = v6;
  dispatch_sync(v4, block);
}

void sub_22515B240(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22515B3F0;
  v26[3] = &unk_278546B68;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v9 = *(a1 + 32);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v27 = v10;
  v28 = v9;
  objc_msgSend_performWithDelegate_(v6, v11, v26);
  v12 = [CKDOperationInfoDelegateWrapper alloc];
  v14 = objc_msgSend_initWithDelegate_(v12, v13, *(a1 + 48));
  v17 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v14, *(a1 + 40));

  v21 = objc_msgSend_cacheQueue(*(a1 + 32), v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515B570;
  block[3] = &unk_278546990;
  v22 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v24 = v22;
  v25 = *(a1 + 48);
  dispatch_async(v21, block);
}

void sub_22515B3F0(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (objc_msgSend_isInvalidated(v3, v4, v5))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        *buf = 138543874;
        v20 = v17;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v18;
        _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "An existing invalidated proxy operation was found for operation %{public}@: %@. Unregistering that operation and setting %@ as the new delegate", buf, 0x20u);
      }

      v12 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 48), v10, v11);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v13, 0, *(a1 + 32));

      objc_msgSend_wasUnexpectedlyUnregisteredForOperationID_(v6, v14, *(a1 + 32));
    }

    else
    {
      v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, *(a1 + 56), *(a1 + 48), @"CKDOperationInfoCache.m", 159, @"A valid delegate is already registered (%@) for operation ID %@", v6, *(a1 + 32));
    }
  }
}

void sub_22515B570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22515B620;
  v5[3] = &unk_278546B90;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  objc_msgSend__locked_enumerateCallbacksForOperationWithID_usingBlock_(v2, v4, v3, v5);
}

void sub_22515B708(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v14 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_delegate(v14, v6, v7);
  v9 = *(a1 + 48);

  if (v8 == v9)
  {
    v12 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, 0, *(a1 + 40));
  }
}

void sub_22515B8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515B8F4(void *a1, const char *a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ = ?", @"operationID");
  v4 = a1[4];
  v40[0] = @"operationInfo";
  v40[1] = @"retryNumber";
  v40[2] = @"lastAttemptDate";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v40, 3);
  v39 = a1[5];
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, &v39, 1);
  v10 = objc_msgSend_select_from_where_bindings_(v4, v9, v6, @"OperationInfo", v3, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v15 = objc_msgSend_firstObject(v10, v13, v14);
    if (v15)
    {
      v17 = v15;
      v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"operationInfo");
      v20 = objc_msgSend_objectForKeyedSubscript_(v17, v19, @"retryNumber");
      v22 = objc_msgSend_objectForKeyedSubscript_(v17, v21, @"lastAttemptDate");
      objc_msgSend_doubleValue(v22, v23, v24);
      v26 = v25;

      v29 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v27, v28, v26);
      if (v18 && v20)
      {
        v30 = [CKDOperationInfoMetadata alloc];
        AttemptDate_retryNumber = objc_msgSend_initWithOperationInfo_lastAttemptDate_retryNumber_(v30, v31, v18, v29, v20);
        v33 = *(a1[6] + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = AttemptDate_retryNumber;
      }
    }
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v36 = a1[5];
      *buf = 138543362;
      v38 = v36;
      _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Couldn't find metadata for operation %{public}@", buf, 0xCu);
    }
  }
}

void sub_22515BC90(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v11[0] = *(a1 + 40);
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, v11, 1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22515BDA0;
  v9[3] = &unk_278546BE0;
  v10 = *(a1 + 48);
  objc_msgSend_selectFrom_where_bindings_orderBy_limit_block_(v5, v8, @"Callback", v3, v7, 0, 0, v9);
}

void sub_22515BDA0(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"callback");
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_opt_class();
    v9 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v8, v7, v5, 0);
    if (v9)
    {
      v11 = 0;
      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, v9, &v11);
        if (v11)
        {
          *a3 = 1;
        }
      }
    }
  }
}

void sub_22515C01C(uint64_t a1, const char *a2)
{
  v100[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v100[0] = @"applicationID";
  v100[1] = @"personaID";
  v100[2] = @"containerID";
  v100[3] = @"accountID";
  v100[4] = @"operationInfo";
  v100[5] = @"lastAttemptDate";
  v100[6] = @"retryNumber";
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v100, 7);
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%@ = 0", @"operationIsComplete");
  v7 = objc_msgSend_select_from_where_bindings_(v2, v6, v3, @"OperationInfo", v5, 0);

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v7;
  v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v88, v99, 16);
  if (v79)
  {
    v78 = *v89;
    do
    {
      v9 = 0;
      do
      {
        if (*v89 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v88 + 1) + 8 * v9);
        v11 = [CKDApplicationID alloc];
        v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"applicationID");
        v82 = objc_msgSend_initWithSqliteRepresentation_(v11, v14, v13);

        v16 = objc_msgSend_objectForKeyedSubscript_(v10, v15, @"personaID");
        v17 = objc_alloc(MEMORY[0x277CBC220]);
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, @"containerID");
        v81 = objc_msgSend_initWithSqliteRepresentation_(v17, v20, v19);

        v22 = objc_msgSend_objectForKeyedSubscript_(v10, v21, @"accountID");
        v80 = objc_msgSend_objectForKeyedSubscript_(v10, v23, @"retryNumber");
        v25 = objc_msgSend_objectForKeyedSubscript_(v10, v24, @"lastAttemptDate");
        objc_msgSend_doubleValue(v25, v26, v27);
        v29 = v28;

        v33 = objc_msgSend_objectForKeyedSubscript_(v10, v30, @"operationInfo");
        if (v33)
        {
          v34 = MEMORY[0x277CCAAC8];
          v35 = objc_opt_class();
          v37 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v34, v36, v35, v33, 0);
        }

        else
        {
          v37 = 0;
        }

        v38 = objc_msgSend_CKNilIfLengthZero(v16, v31, v32);

        v41 = objc_msgSend_CKNilIfLengthZero(v22, v39, v40);

        if (v82 && v81 && v37)
        {
          *&v94 = 0;
          *(&v94 + 1) = &v94;
          v95 = 0x3032000000;
          v96 = sub_225073F30;
          v97 = sub_225073524;
          v98 = 0;
          v44 = objc_msgSend_cacheDelegateQueue(*(a1 + 32), v42, v43);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22515C764;
          block[3] = &unk_278546420;
          v45 = *(a1 + 32);
          v87 = &v94;
          block[4] = v45;
          v46 = v37;
          v86 = v46;
          dispatch_sync(v44, block);

          if (*(*(&v94 + 1) + 40))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v47 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v50 = objc_msgSend_operationID(v46, v48, v49);
              *buf = 138543362;
              v93 = v50;
              _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Not returning operation %{public}@ as resumable since it has a delegate", buf, 0xCu);
            }
          }

          else
          {
            v52 = [CKDAppContainerTuple alloc];
            v47 = objc_msgSend_initWithApplicationID_containerID_personaID_(v52, v53, v82, v81, v38);
            v54 = [CKDAppContainerAccountTuple alloc];
            v56 = objc_msgSend_initWithAppContainerTuple_accountID_(v54, v55, v47, v41);
            v57 = [CKDOperationInfoMetadata alloc];
            v60 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v58, v59, v29);
            AttemptDate_retryNumber = objc_msgSend_initWithOperationInfo_lastAttemptDate_retryNumber_(v57, v61, v46, v60, v80);

            objc_msgSend_setObject_forKey_(*(a1 + 40), v63, AttemptDate_retryNumber, v56);
          }

          _Block_object_dispose(&v94, 8);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v51 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v94) = 138412290;
            *(&v94 + 4) = v10;
            _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "Operation info entry is corrupted: %@", &v94, 0xCu);
          }
        }

        ++v9;
      }

      while (v79 != v9);
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v88, v99, 16);
    }

    while (v79);
  }

  if (*(a1 + 48) == 1)
  {
    v67 = objc_msgSend_allValues(*(a1 + 40), v65, v66);
    v69 = objc_msgSend_valueForKey_(v67, v68, @"operationInfo");
    v71 = objc_msgSend_valueForKey_(v69, v70, @"operationID");
    v72 = *(a1 + 32);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_22515C7E8;
    v83[3] = &unk_2785468F8;
    v84 = v71;
    v73 = v71;
    v75 = objc_msgSend_performDatabaseOperation_(v72, v74, v83);
  }
}

void sub_22515C734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515C764(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_delegateWrappersByOperationID(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_operationID(*(a1 + 40), v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v11, v7, v6);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_22515C7E8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v18, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v17 = *(*(&v13 + 1) + 8 * v10);
        v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, &v17, 1, v13);
        objc_msgSend_deleteFrom_where_bindings_(v3, v12, @"Callback", @"operationID = ?", v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v13, v18, 16);
    }

    while (v8);
  }
}

void sub_22515CA20(uint64_t a1, const char *a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(a1 + 32);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v41, v50, 16);
    if (v34)
    {
      v33 = *v42;
      do
      {
        v6 = 0;
        do
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v6;
          v7 = *(*(&v41 + 1) + 8 * v6);
          v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@ = ?", @"operationID");
          v9 = *(a1 + 40);
          v49 = @"operationInfo";
          v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, &v49, 1);
          v48 = v7;
          v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v48, 1);
          v35 = v8;
          v15 = objc_msgSend_select_from_where_bindings_(v9, v14, v11, @"OperationInfo", v8, v13);

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v16 = v15;
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v37, v47, 16);
          if (v18)
          {
            v20 = v18;
            v21 = *v38;
            do
            {
              v22 = 0;
              do
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(v16);
                }

                v23 = *(*(&v37 + 1) + 8 * v22);
                v24 = objc_msgSend_objectForKeyedSubscript_(v23, v19, @"operationInfo");
                if (v24 && (v25 = MEMORY[0x277CCAAC8], v26 = objc_opt_class(), objc_msgSend_unarchivedObjectOfClass_fromData_error_(v25, v27, v26, v24, 0), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v30 = v28;
                  objc_msgSend_addObject_(*(a1 + 48), v29, v28);
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v31 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v46 = v23;
                    _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Operation info entry is corrupted: %@", buf, 0xCu);
                  }
                }

                ++v22;
              }

              while (v20 != v22);
              v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v37, v47, 16);
            }

            while (v20);
          }

          v6 = v36 + 1;
        }

        while (v36 + 1 != v34);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v41, v50, 16);
      }

      while (v34);
    }
  }
}

void sub_22515CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515CEA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v47[0] = @"applicationID";
  v4 = objc_msgSend_appContainerTuple(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_applicationID(v4, v5, v6);
  v48[0] = v7;
  v47[1] = @"personaID";
  v10 = objc_msgSend_appContainerTuple(*(a1 + 32), v8, v9);
  v13 = objc_msgSend_personaID(v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v48[1] = v17;
  v47[2] = @"containerID";
  v18 = objc_msgSend_appContainerTuple(*(a1 + 32), v14, v15);
  v21 = objc_msgSend_containerID(v18, v19, v20);
  v48[2] = v21;
  v47[3] = @"accountID";
  v24 = objc_msgSend_accountID(*(a1 + 32), v22, v23);
  v26 = v24;
  if (v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = &stru_28385ED00;
  }

  v48[3] = v27;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v48, v47, 4);

  v30 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v29, v28);
  v31 = *(a1 + 40);
  v46 = @"operationID";
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, &v46, 1);
  v36 = objc_msgSend_v1(v30, v34, v35);
  v39 = objc_msgSend_v2(v30, v37, v38);
  v41 = objc_msgSend_select_from_where_bindings_(v31, v40, v33, @"OperationInfo", v36, v39);

  v43 = objc_msgSend_CKCompactMap_(v41, v42, &unk_28385CA40);
  v44 = *(*(a1 + 48) + 8);
  v45 = *(v44 + 40);
  *(v44 + 40) = v43;
}

id sub_22515D0DC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"operationID");
  if (!v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_error_impl(&dword_22506F000, v5, OS_LOG_TYPE_ERROR, "Unexpected operation info result: %@", &v7, 0xCu);
    }
  }

  return v4;
}

void sub_22515D34C(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Removing all cached long-lived operation info for account ID %@", buf, 0xCu);
    }

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%@ = ?", @"accountID");
    v21 = *(a1 + 32);
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v21, 1);
    objc_msgSend_deleteFrom_where_bindings_(v5, v14, @"OperationInfo", v11, v13);
  }

  else
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@ < ?", @"expirationDate");
    v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16);
    v20 = v13;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, &v20, 1);
    objc_msgSend_deleteFrom_where_bindings_(v5, v19, @"OperationInfo", v11, v18);
  }
}

void sub_22515D65C(uint64_t a1, void *a2)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x277CCAAB0];
    v5 = a2;
    v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v4, v6, v3, 1, 0);
    v8 = *(a1 + 48);
    v42[0] = *(a1 + 40);
    v41[0] = @"operationID";
    v41[1] = @"applicationID";
    v11 = objc_msgSend_appContainerTuple(v8, v9, v10);
    v14 = objc_msgSend_applicationID(v11, v12, v13);
    v42[1] = v14;
    v41[2] = @"personaID";
    v17 = objc_msgSend_appContainerTuple(*(a1 + 48), v15, v16);
    v20 = objc_msgSend_personaID(v17, v18, v19);
    v23 = v20;
    if (v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = &stru_28385ED00;
    }

    v42[2] = v24;
    v41[3] = @"containerID";
    v25 = objc_msgSend_appContainerTuple(*(a1 + 48), v21, v22);
    v28 = objc_msgSend_containerID(v25, v26, v27);
    v42[3] = v28;
    v41[4] = @"accountID";
    v31 = objc_msgSend_accountID(*(a1 + 48), v29, v30);
    v33 = v31;
    if (v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = &stru_28385ED00;
    }

    v41[5] = @"operationInfo";
    v42[4] = v34;
    v42[5] = v7;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v42, v41, 6);
    objc_msgSend_insertOrReplaceInto_values_(v5, v36, @"OperationInfo", v35);
  }

  else
  {
    v40 = *(a1 + 40);
    v37 = MEMORY[0x277CBEA60];
    v11 = a2;
    v7 = objc_msgSend_arrayWithObjects_count_(v37, v38, &v40, 1);
    objc_msgSend_deleteFrom_where_bindings_(v11, v39, @"OperationInfo", @"operationID = ?", v7, v40);
  }
}

void sub_22515DC5C(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegateWrappersByOperationID(a1[4], a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, a1[5]);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22515DD2C;
  v8[3] = &unk_278546C58;
  v9 = a1[5];
  v10 = a1[6];
  objc_msgSend_performWithDelegate_(v6, v7, v8);
}

uint64_t sub_22515DD2C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x2821F9670](a2, sel_operationWithID_receivedCallback_, *(result + 32));
  }

  return result;
}

void sub_22515DD40(uint64_t a1, void *a2)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35[0] = @"operationID";
  v35[1] = @"callback";
  v3 = *(a1 + 40);
  v36[0] = *(a1 + 32);
  v36[1] = v3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v36, v35, 2);
  objc_msgSend_insertOrReplaceInto_values_(v5, v8, @"Callback", v7);

  v34[0] = *(a1 + 32);
  v33[0] = @"operationID";
  v33[1] = @"applicationID";
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v9, @"applicationID");
  v34[1] = v10;
  v33[2] = @"personaID";
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v11, @"personaID");
  v14 = v12;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &stru_28385ED00;
  }

  v34[2] = v15;
  v33[3] = @"containerID";
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v13, @"containerID");
  v34[3] = v16;
  v33[4] = @"accountID";
  v18 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v17, @"accountID");
  v20 = v18;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v34[4] = v21;
  v33[5] = @"operationInfo";
  v22 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v19, @"operationInfo");
  v34[5] = v22;
  v33[6] = @"operationIsComplete";
  v23 = MEMORY[0x277CCABB0];
  isCompletionCallback = objc_msgSend_isCompletionCallback(*(a1 + 56), v24, v25);
  v28 = objc_msgSend_numberWithBool_(v23, v27, isCompletionCallback);
  v33[7] = @"expirationDate";
  v29 = *(a1 + 64);
  v34[6] = v28;
  v34[7] = v29;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v34, v33, 8);
  objc_msgSend_insertOrReplaceInto_values_(v5, v32, @"OperationInfo", v31);
}

void sub_22515E104(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__locked_operationInfoForID_(*(a1 + 32), a2, *(a1 + 40));
  if (v5)
  {
    v6 = objc_msgSend_cacheDelegateQueue(*(a1 + 32), v3, v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22515E294;
    block[3] = &unk_278546990;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v11 = v7;
    v12 = v5;
    dispatch_sync(v6, block);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v14 = v9;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Couldn't find an operation with ID %{public}@ to register a retry", buf, 0xCu);
    }
  }
}

void sub_22515E294(id *a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v4 = objc_msgSend_delegateWrappersByOperationID(a1[4], a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, a1[5]);

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22515E5C4;
  v33[3] = &unk_278546CA8;
  v33[4] = &v34;
  objc_msgSend_performWithDelegate_(v6, v7, v33);
  if (*(v35 + 24) == 1)
  {
    v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
    objc_msgSend_timeIntervalSince1970(v10, v11, v12);
    v14 = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(a1[6], v15, @"retryNumber");
    v19 = objc_msgSend_integerValue(v16, v17, v18);

    v20 = v19 + 1;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v22 = a1[5];
      *buf = 67109378;
      *v39 = v20;
      *&v39[4] = 2114;
      *&v39[6] = v22;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Registering retry number %d for operation %{public}@", buf, 0x12u);
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22515E5D8;
    v28[3] = &unk_278546CD0;
    v23 = a1[4];
    v29 = a1[5];
    v30 = a1[6];
    v31 = v14;
    v32 = v20;
    v25 = objc_msgSend_performDatabaseOperation_(v23, v24, v28);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = a1[5];
      *buf = 138543362;
      *v39 = v27;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Not registering a retry for operation %{public}@ since we have an interested delegate", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v34, 8);
}

void sub_22515E59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22515E5C4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_22515E5D8(uint64_t a1, void *a2)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v28[0] = *(a1 + 32);
  v27[0] = @"operationID";
  v27[1] = @"applicationID";
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"applicationID");
  v28[1] = v6;
  v27[2] = @"personaID";
  v8 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v7, @"personaID");
  v10 = v8;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_28385ED00;
  }

  v28[2] = v11;
  v27[3] = @"containerID";
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v9, @"containerID");
  v28[3] = v12;
  v27[4] = @"accountID";
  v14 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v13, @"accountID");
  v16 = v14;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_28385ED00;
  }

  v28[4] = v17;
  v27[5] = @"operationInfo";
  v18 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v15, @"operationInfo");
  v28[5] = v18;
  v27[6] = @"lastAttemptDate";
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, *(a1 + 48));
  v28[6] = v21;
  v27[7] = @"retryNumber";
  v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, *(a1 + 56));
  v28[7] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v28, v27, 8);
  objc_msgSend_insertOrReplaceInto_values_(v4, v26, @"OperationInfo", v25);
}

void sub_22515EB58(uint64_t a1, void *a2)
{
  v2 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Running operation info cache eviction", v13, 2u);
  }

  v6 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v4, v5);
  v9 = objc_msgSend_operationInfoCache(v6, v7, v8);
  objc_msgSend__expungeOperationInfoForDeletedAccountID_(v9, v10, 0);

  objc_msgSend_setTaskCompleted(v2, v11, v12);
}

void sub_22515F3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22515F3EC(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v8 = a3;
  v9 = a1[4];
  if (!v9 || objc_msgSend_containsObject_(v9, v7, v15))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = *(*(a1[5] + 8) + 40);
      if (!v11)
      {
        v12 = objc_opt_new();
        v13 = *(a1[5] + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v11 = *(*(a1[5] + 8) + 40);
      }

      objc_msgSend_addObject_(v11, v10, v8);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void sub_22515F8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CKDProtocolTranslator *sub_22515F8D0(uint64_t a1, const char *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, *(a1 + 40), off_27D719E98, &unk_28385CA80);
  v8 = objc_msgSend_nextObject(v3, v4, v5);
  if (!v8)
  {
    v14 = 0;
LABEL_11:
    v32 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_knownUserKeys(v8, v6, v7);
    LOBYTE(v9) = objc_msgSend__cachedRecordKnownUserKeyData_satisfiesRequiredKeys_(v9, v11, v10, *(a1 + 48));

    if (v9)
    {
      break;
    }

    v14 = objc_msgSend_nextObject(v3, v12, v13);

    v8 = v14;
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v15 = objc_msgSend_fetchCacheEntryRecordData_(*(a1 + 32), v12, v8);
  v16 = [CKDPRecord alloc];
  v19 = objc_msgSend_recordData(v8, v17, v18);
  v14 = objc_msgSend_initWithData_(v16, v20, v19);

  if (!v14)
  {
    goto LABEL_11;
  }

  v21 = [CKDProtocolTranslator alloc];
  v23 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v21, v22, *(a1 + 56), *(a1 + 80), 0);
  v26 = objc_msgSend_zoneID(*(a1 + 64), v24, v25);
  v29 = objc_msgSend_anonymousCKUserID(v26, v27, v28);
  v63 = 0;
  v31 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v23, v30, v14, v29, &v63);
  v32 = v63;
  v33 = *(*(a1 + 72) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v31;

  v36 = *(*(*(a1 + 72) + 8) + 40);
  if (v36)
  {
    objc_msgSend_setWasCached_(v36, v35, 1);
    v39 = objc_msgSend_entitlements(*(a1 + 56), v37, v38);
    hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v39, v40, v41);
    objc_msgSend_setSerializeProtectionData_(*(*(*(a1 + 72) + 8) + 40), v43, hasProtectionDataEntitlement);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = objc_msgSend_entitlements(*(a1 + 56), v44, v45);
      hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v46, v47, v48);
      if (hasOutOfProcessUIEntitlement)
      {
        objc_msgSend_setSerializePersonalInfo_(*(*(*(a1 + 72) + 8) + 40), v49, 1);
      }

      else
      {
        v31 = objc_msgSend_entitlements(*(a1 + 56), v49, v50);
        hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v31, v54, v55);
        objc_msgSend_setSerializePersonalInfo_(*(*(*(a1 + 72) + 8) + 40), v57, hasParticipantPIIEntitlement);
      }

      if ((hasOutOfProcessUIEntitlement & 1) == 0)
      {
      }

      shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(*(a1 + 56), v58, v59);
      objc_msgSend_setSerializeOwnerInfo_(*(*(*(a1 + 72) + 8) + 40), v61, shouldSerializeOwnerInfo);
    }

    v62 = objc_msgSend_extendExpiration_(*(a1 + 32), v44, v8);

    v23 = v32;
    v32 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v53 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v65 = v32;
      v66 = 2112;
      v67 = v14;
      _os_log_error_impl(&dword_22506F000, v53, OS_LOG_TYPE_ERROR, "Failed to convert pRecord %@ : %@", buf, 0x16u);
    }
  }

LABEL_12:

  return v32;
}

void sub_22515FC5C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8E38);
  objc_msgSend_orderDescendingByProperty_(v2, v4, @"modificationTime");
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"recordID = $RECORDID AND containerID = $CONTAINERID AND databaseScope = $SCOPE AND dsid = $DSID");
  objc_msgSend_setSearchPredicate_(v2, v6, v7);
}

uint64_t sub_225160410(uint64_t a1)
{
  v109 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = sub_225160940;
  v102[3] = &unk_278545C98;
  v103 = *(a1 + 48);
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(v2, v4, v3, 0, v102);
  v8 = objc_msgSend_nextObject(v5, v6, v7);
  if (v8)
  {
    v12 = v8;
    *&v11 = 138412546;
    v92 = v11;
    v94 = v5;
    while (1)
    {
      v13 = *(a1 + 32);
      v14 = objc_msgSend_knownUserKeys(v12, v9, v10, v92);
      LODWORD(v13) = objc_msgSend__cachedRecordKnownUserKeyData_satisfiesRequiredKeys_(v13, v15, v14, *(a1 + 56));

      if (v13)
      {
        v18 = objc_msgSend_fetchCacheEntryRecordData_(*(a1 + 32), v16, v12);
        v19 = [CKDPRecord alloc];
        v22 = objc_msgSend_recordData(v12, v20, v21);
        v24 = objc_msgSend_initWithData_(v19, v23, v22);

        if (v24)
        {
          break;
        }
      }

      v52 = 0;
      v53 = 0;
LABEL_18:
      v54 = objc_msgSend_nextObject(v5, v16, v17);

      v12 = v54;
      if (!v54)
      {
        goto LABEL_39;
      }
    }

    v25 = [CKDProtocolTranslator alloc];
    v27 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v25, v26, *(a1 + 64), *(a1 + 88), 0);
    v30 = objc_msgSend_recordIdentifier(v24, v28, v29);

    v95 = v24;
    if (v30)
    {
      v33 = objc_msgSend_recordIdentifier(v24, v31, v32);
      v101 = 0;
      v35 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v27, v34, v33, &v101);
      v36 = v101;

      v39 = objc_msgSend_options(*(a1 + 64), v37, v38);
      v42 = objc_msgSend_useAnonymousToServerShareParticipants(v39, v40, v41);

      v45 = 0;
      if (v42 && v35)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v46 = *(a1 + 72);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v97, v108, 16);
        if (v45)
        {
          v93 = v36;
          v49 = *v98;
          while (2)
          {
            for (i = 0; i != v45; i = i + 1)
            {
              if (*v98 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v97 + 1) + 8 * i);
              if (objc_msgSend_isEqualIgnoringAnonymousUserIDsToRecordID_(v51, v48, v35))
              {
                v45 = v51;
                goto LABEL_22;
              }
            }

            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v97, v108, 16);
            if (v45)
            {
              continue;
            }

            break;
          }

LABEL_22:
          v36 = v93;
        }
      }

      v56 = objc_msgSend_zoneID(v45, v43, v44);
      v59 = objc_msgSend_anonymousCKUserID(v56, v57, v58);
      v96 = v36;
      objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v27, v60, v24, v59, &v96);
      v61 = v27;
      v52 = v62 = v36;
      v55 = v96;

      v27 = v61;
      v5 = v94;
      if (v52)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v55 = 0;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v64 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = v92;
      v105 = v55;
      v106 = 2112;
      v107 = v95;
      _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Failed to convert pRecord %@ : %@", buf, 0x16u);
    }

    v52 = 0;
LABEL_30:
    objc_msgSend_setWasCached_(v52, v63, 1);

    if (v52)
    {
      v53 = v95;
      if (objc_msgSend__cachedRecordHasValidAssets_forRequiredKeys_(*(a1 + 32), v16, v52, *(a1 + 56)))
      {
        v65 = objc_msgSend__trimRecord_toRequiredKeys_(*(a1 + 32), v16, v52, *(a1 + 56));
        v68 = objc_msgSend_entitlements(*(a1 + 64), v66, v67);
        hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v68, v69, v70);
        objc_msgSend_setSerializeProtectionData_(v52, v72, hasProtectionDataEntitlement);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = objc_msgSend_entitlements(*(a1 + 64), v73, v74);
          if (objc_msgSend_hasOutOfProcessUIEntitlement(v75, v76, v77))
          {
            objc_msgSend_setSerializePersonalInfo_(v52, v78, 1);
          }

          else
          {
            v80 = objc_msgSend_entitlements(*(a1 + 64), v78, v79);
            hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v80, v81, v82);
            objc_msgSend_setSerializePersonalInfo_(v52, v84, hasParticipantPIIEntitlement);
          }

          shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(*(a1 + 64), v85, v86);
          objc_msgSend_setSerializeOwnerInfo_(v52, v88, shouldSerializeOwnerInfo);
        }

        objc_msgSend_addObject_(*(a1 + 80), v73, v52);
        v90 = objc_msgSend_extendExpiration_(*(a1 + 32), v89, v12);
      }
    }

    else
    {
      v53 = v95;
    }

    goto LABEL_18;
  }

LABEL_39:

  return 0;
}

void sub_225160940(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setFetchedProperties_(v3, v4, &unk_2838C8E50);
  objc_msgSend_orderDescendingByProperty_(v3, v5, @"modificationTime");
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v6, @"containerID = $CONTAINERID AND databaseScope = $SCOPE AND dsid = $DSID AND recordID IN %@", *(a1 + 32));
  objc_msgSend_setSearchPredicate_(v3, v7, v8);
}

void sub_225161354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251613A4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = CKIsIndexedArrayKey();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

id sub_2251613E8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(*(a1 + 32), a2, &unk_2838C8E68, *(a1 + 40), &unk_2838C8E80, off_27D719EC8);
  if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v4, v3))
  {
    objc_msgSend_setModificationTime_(*(a1 + 40), v5, *(a1 + 48));
    v8 = objc_msgSend_insertObject_(*(a1 + 32), v7, *(a1 + 40));

    v3 = v8;
  }

  else if (!v3)
  {
    v9 = objc_msgSend_modificationTime(*(a1 + 40), v5, v6);
    objc_msgSend_timeIntervalSinceDate_(v9, v10, *(a1 + 48));
    v12 = v11;

    if (v12 >= 0.0)
    {
      v3 = 0;
    }

    else
    {
      objc_msgSend_setModificationTime_(*(a1 + 40), v13, *(a1 + 48));
      v3 = objc_msgSend_updateUsingObject_(*(a1 + 32), v14, *(a1 + 40));
    }
  }

  return v3;
}

void sub_22516185C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22516187C(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, *(a1 + 40), off_27D719EE0, &unk_28385CAE0);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v22 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = objc_msgSend_knownUserKeys(v11, v6, v7, v19);
        LODWORD(v12) = objc_msgSend__cachedRecordKnownUserKeyData_satisfiesRequiredKeys_(v12, v14, v13, *(a1 + 48));

        if (v12)
        {
          v15 = objc_msgSend_etag(v11, v6, v7);
          v16 = *(*(a1 + 56) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v19, v23, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return 0;
}

void sub_2251619F0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8E98);
  objc_msgSend_orderDescendingByProperty_(v2, v4, @"modificationTime");
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"recordID = $RECORDID AND containerID = $CONTAINERID AND databaseScope = $SCOPE AND dsid = $DSID");
  objc_msgSend_setSearchPredicate_(v2, v6, v7);
}

uint64_t sub_22516251C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6 = objc_msgSend_objectAtIndex_(a2, v5, 0);
  v8 = objc_msgSend_objectAtIndex_(v4, v7, 0);

  v10 = 0;
  if (v6 && v8)
  {
    v10 = objc_msgSend_compare_(v6, v9, v8);
  }

  return v10;
}

void sub_225162EA4(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  if (*(a1 + 32) == 1)
  {
    pthread_mutex_lock(&stru_280D54E50);
    objc_msgSend_removeObjectForKey_(qword_280D586D8, v8, v7);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v13 = v9;
    v14 = NSStringFromClass(v7);
    v17 = objc_msgSend_path(v5, v15, v16);
    v20 = objc_msgSend_CKSanitizedPath(v17, v18, v19);
    v21 = 138412802;
    v22 = v14;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v6;
    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "%@ instance at %@ became invalid. Error: %@", &v21, 0x20u);
  }

  if (objc_msgSend_CKIsCorruptDatabaseError_(MEMORY[0x277CCA9B8], v10, v6))
  {
    objc_msgSend_remove(v5, v11, v12);
  }

  if (*(a1 + 32) == 1)
  {
    pthread_mutex_unlock(&stru_280D54E50);
  }
}

uint64_t sub_225163400()
{
  qword_280D58110 = objc_alloc_init(CKLastSentCapabilitiesAndUsage);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225163CF8()
{
  qword_280D58120 = objc_alloc_init(CKUsageInfoImmutable);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225164670()
{
  v0 = [CKDDeviceCapabilityManager alloc];
  qword_280D58128 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_225164984(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_capabilitiesAndUsagesCachePerContainer(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, *(a1 + 40));

  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 48);
      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Dropping device capability and usage cache connection for container with ID: %@", &v14, 0xCu);
    }

    v11 = objc_msgSend_capabilitiesAndUsagesCachePerContainer(*(a1 + 32), v9, v10);
    objc_msgSend_removeObjectForKey_(v11, v12, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_225165BF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_225165C0C(uint64_t a1)
{
  v159 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_queue(WeakRetained, v3, v4);
    dispatch_assert_queue_V2(v6);

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v7, v8);
    v10 = v9;
    objc_msgSend_lastTrackedFailureTime(v5, v11, v12);
    v14 = v13;
    objc_msgSend_failureBackoffDelay(v5, v15, v16);
    if (v14 + v19 <= v10 || *(a1 + 96) == 1)
    {
      v20 = objc_msgSend_updateOperationsPerContainer(v5, v17, v18);
      v22 = objc_msgSend_objectForKey_(v20, v21, *(a1 + 32));

      if (v22)
      {
LABEL_93:

        goto LABEL_94;
      }

      v24 = *(a1 + 40);
      v154 = 0;
      v128 = objc_msgSend__lastSentCapabilityAndUsageForContainer_withError_(v5, v23, v24, &v154);
      v27 = v154;
      if (!v128)
      {
        if (!v27)
        {
          v114 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v114, v115, *(a1 + 88), *(a1 + 48), @"CKDDeviceCapabilityManager.m", 348, @"There should be an error");
        }

        objc_msgSend__handleCacheErrorBeforeServerRequest_skipErrorMitigation_(v5, v25, v27, *(a1 + 96));
        v127 = 0;
        goto LABEL_92;
      }

      if (objc_msgSend_isNone(v128, v25, v26))
      {
        v125 = 0;
        v127 = 0;
        v30 = 1;
        isObsoleteUsage_operation = 1;
LABEL_22:
        if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 56), v28, v29), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v39, v40, @"BypassDeviceCapabilityManagerThrottling"), v41 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend_BOOLValue(v41, v42, v43), v41, v39, (v44 & 1) != 0))
        {
          v45 = 1;
          v46 = 1;
          v47 = isObsoleteUsage_operation;
        }

        else
        {
          v48 = objc_msgSend_deviceContext(*(a1 + 56), v28, v29);
          v51 = objc_msgSend_throttleManager(v48, v49, v50);

          v55 = objc_msgSend_databaseScope(*(a1 + 56), v52, v53);
          if (v30)
          {
            v30 = objc_msgSend__isThrottledOperationType_forContainer_databaseScope_throttleManager_(v5, v54, 407, *(a1 + 40), v55, v51) ^ 1;
          }

          if ((v30 | isObsoleteUsage_operation))
          {
            v46 = objc_msgSend__isThrottledOperationType_forContainer_databaseScope_throttleManager_(v5, v54, 409, *(a1 + 40), v55, v51) ^ 1;
            v47 = v46 & isObsoleteUsage_operation;
            v45 = objc_msgSend__isThrottledOperationType_forContainer_databaseScope_throttleManager_(v5, v56, 410, *(a1 + 40), v55, v51) ^ 1;
            isObsoleteUsage_operation &= v45;
          }

          else
          {
            v47 = 0;
            isObsoleteUsage_operation = 0;
            v46 = 1;
            v45 = 1;
          }
        }

        if (v30)
        {
          v47 = v46;
        }

        else
        {
          v45 = isObsoleteUsage_operation;
        }

        if (v47 == 1)
        {
          v57 = *(a1 + 40);
          v58 = *(a1 + 56);
          v153 = v27;
          v59 = objc_msgSend__prepareZoneUsageSendForContainer_maxCount_triggerOperation_withCacheError_(v5, v28, v57, 1024, v58, &v153);
          v60 = v153;

          if (!v59)
          {
            if (!v60)
            {
              v116 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v116, v117, *(a1 + 88), *(a1 + 48), @"CKDDeviceCapabilityManager.m", 432, @"There should be an error");
            }

            objc_msgSend__handleCacheErrorBeforeServerRequest_skipErrorMitigation_(v5, v28, v60, *(a1 + 96));
            v27 = v60;
            goto LABEL_92;
          }

          v27 = v60;
          if (!v45)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v59 = 0;
          if (!v45)
          {
LABEL_37:
            v61 = 0;
            goto LABEL_41;
          }
        }

        v62 = *(a1 + 40);
        v63 = *(a1 + 56);
        v152 = v27;
        v61 = objc_msgSend__prepareShareUsageSendForContainer_maxCount_triggerOperation_withCacheError_(v5, v28, v62, 1024, v63, &v152);
        v64 = v152;

        if (!v61)
        {
          if (!v64)
          {
            v118 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v118, v119, *(a1 + 88), *(a1 + 48), @"CKDDeviceCapabilityManager.m", 444, @"There should be an error");
          }

          objc_msgSend__handleCacheErrorBeforeServerRequest_skipErrorMitigation_(v5, v28, v64, *(a1 + 96));
          v61 = 0;
          goto LABEL_91;
        }

        v27 = v64;
LABEL_41:
        if (objc_msgSend_count(v59, v28, v29))
        {
          v67 = v47;
        }

        else
        {
          v67 = 0;
        }

        v68 = (objc_msgSend_count(v61, v65, v66) != 0) & v45;
        if (((v30 | v67) & 1) == 0 && !v68)
        {
LABEL_90:
          v64 = v27;
LABEL_91:

          v27 = v64;
LABEL_92:

          goto LABEL_93;
        }

        if (!v30)
        {
          v123 = 0;
LABEL_73:
          if ((v67 | v68))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v80 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
              v84 = objc_msgSend_count(v59, v82, v83);
              v87 = objc_msgSend_count(v61, v85, v86);
              v88 = *(a1 + 72);
              *buf = 134218498;
              *&buf[4] = v84;
              *&buf[12] = 2048;
              *&buf[14] = v87;
              *&buf[22] = 2114;
              v156 = v88;
              _os_log_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEFAULT, "Sending %zu zone usage and %zu share usage for container ID %{public}@", buf, 0x20u);
            }
          }

          v89 = [CKUpdateDeviceCapabilitiesOperationInfo alloc];
          if (v67)
          {
            v91 = v59;
          }

          else
          {
            v91 = 0;
          }

          if (v68)
          {
            SentCapabilities_zoneUsages_shareUsages = objc_msgSend_initWithSupportedCapabilities_lastSentCapabilities_zoneUsages_shareUsages_(v89, v90, v123, v127, v91, v61);
          }

          else
          {
            SentCapabilities_zoneUsages_shareUsages = objc_msgSend_initWithSupportedCapabilities_lastSentCapabilities_zoneUsages_shareUsages_(v89, v90, v123, v127, v91, 0);
          }

          v124 = SentCapabilities_zoneUsages_shareUsages;
          v126 = objc_opt_new();
          objc_msgSend_setName_(v126, v93, @"UpdateDeviceCapabilities");
          objc_msgSend_setGroup_(v124, v94, v126);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_2251668CC;
          aBlock[3] = &unk_278546E68;
          objc_copyWeak(&v150, (a1 + 80));
          v149 = *(a1 + 40);
          v151 = *(a1 + 96);
          v120 = _Block_copy(aBlock);
          v144[0] = MEMORY[0x277D85DD0];
          v144[1] = 3221225472;
          v144[2] = sub_225166A74;
          v144[3] = &unk_278546E90;
          objc_copyWeak(&v146, (a1 + 80));
          v145 = *(a1 + 40);
          v147 = *(a1 + 96);
          v122 = _Block_copy(v144);
          v140[0] = MEMORY[0x277D85DD0];
          v140[1] = 3221225472;
          v140[2] = sub_225166C38;
          v140[3] = &unk_278546EB8;
          objc_copyWeak(&v142, (a1 + 80));
          v141 = *(a1 + 40);
          v143 = *(a1 + 96);
          v95 = _Block_copy(v140);
          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 3221225472;
          v136[2] = sub_225166DFC;
          v136[3] = &unk_278546EE0;
          objc_copyWeak(&v139, (a1 + 80));
          v137 = *(a1 + 32);
          v138 = *(a1 + 72);
          v96 = _Block_copy(v136);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v156 = sub_225073F50;
          v157 = sub_225073534;
          v158 = 0;
          if (*(a1 + 97) == 1)
          {
            v97 = *(a1 + 56);
            v98 = objc_opt_class();
            v129[0] = MEMORY[0x277D85DD0];
            v129[1] = 3221225472;
            v129[2] = sub_225166F34;
            v129[3] = &unk_278546F08;
            v135 = buf;
            v130 = v126;
            v131 = v120;
            v132 = v122;
            v133 = v95;
            v134 = v96;
            objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v97, v99, v98, v124, v129);
          }

          else
          {
            v102 = [CKDUpdateDeviceCapabilitiesOperation alloc];
            v104 = objc_msgSend_initWithOperationInfo_container_(v102, v103, v124, *(a1 + 40));
            v105 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v104;

            if (*MEMORY[0x277CBC810] == 1)
            {
              objc_msgSend_setSkipSettingUnitTestOverrides_(*(*&buf[8] + 40), v106, 1);
            }

            objc_msgSend_setUpdateDeviceCapabilitiesCompletionBlock_(*(*&buf[8] + 40), v106, v120, v120);
            objc_msgSend_setPerZoneUsageCompletionBlock_(*(*&buf[8] + 40), v107, v122);
            objc_msgSend_setPerShareUsageCompletionBlock_(*(*&buf[8] + 40), v108, v95);
            objc_msgSend_setCompletionBlock_(*(*&buf[8] + 40), v109, v96);
            objc_msgSend_addOperation_(*(a1 + 40), v110, *(*&buf[8] + 40));
          }

          v111 = *(*&buf[8] + 40);
          v112 = objc_msgSend_updateOperationsPerContainer(v5, v100, v101, v120);
          objc_msgSend_setObject_forKeyedSubscript_(v112, v113, v111, *(a1 + 32));

          _Block_object_dispose(buf, 8);
          objc_destroyWeak(&v139);

          objc_destroyWeak(&v142);
          objc_destroyWeak(&v146);

          objc_destroyWeak(&v150);
          goto LABEL_90;
        }

        v69 = *(a1 + 64);
        if (v69)
        {
          v123 = v69;
        }

        else
        {
          v123 = objc_opt_new();
        }

        if (v125)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v70 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v71 = *(a1 + 72);
          *buf = 138543618;
          *&buf[4] = v71;
          *&buf[12] = 2114;
          *&buf[14] = v123;
          v72 = "Device capabilities for container ID %{public}@ have not been sent to the server recently, will send: %{public}@";
        }

        else
        {
          v73 = *MEMORY[0x277CBC878];
          v74 = *MEMORY[0x277CBC880];
          if (v127)
          {
            if (v74 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v73);
            }

            v75 = *MEMORY[0x277CBC830];
            if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v76 = *(a1 + 72);
            *buf = 138543874;
            *&buf[4] = v76;
            *&buf[12] = 2114;
            *&buf[14] = v123;
            *&buf[22] = 2114;
            v156 = v127;
            v72 = "Device capabilities for container ID %{public}@ have changed, will send updated capabilities to the server. new: %{public}@, previous: %{public}@";
            v77 = v75;
            v78 = 32;
            goto LABEL_72;
          }

          if (v74 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v73);
          }

          v70 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v79 = *(a1 + 72);
          *buf = 138543618;
          *&buf[4] = v79;
          *&buf[12] = 2114;
          *&buf[14] = v123;
          v72 = "Device capabilities for container ID %{public}@ have not previously been sent to the server, will send: %{public}@";
        }

        v77 = v70;
        v78 = 22;
LABEL_72:
        _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_DEFAULT, v72, buf, v78);
        goto LABEL_73;
      }

      v127 = objc_msgSend_capabilitySet(v128, v28, v29);
      if (v127)
      {
        v34 = objc_msgSend_capabilitySetSavedDate(v128, v32, v33);
        isObsoleteCapabilities_operation = objc_msgSend_isObsoleteCapabilities_operation_(v5, v35, v34, *(a1 + 56));

        if (isObsoleteCapabilities_operation)
        {
          v30 = 1;
          v125 = 1;
LABEL_21:
          v37 = objc_msgSend_usageSavedDate(v128, v32, v33);
          isObsoleteUsage_operation = objc_msgSend_isObsoleteUsage_operation_(v5, v38, v37, *(a1 + 56));

          goto LABEL_22;
        }

        if (!*(a1 + 64))
        {
          goto LABEL_19;
        }

        if (objc_msgSend_isCapabilitySet_equalTo_(MEMORY[0x277CBC2B0], v32, v127))
        {
          if (*MEMORY[0x277CBC810] == 1)
          {
            v30 = objc_msgSend_checkAndClearUnitTestOverrides_(*(a1 + 56), v32, @"SendDeviceCapabilitiesEvenIfUnchanged");
LABEL_20:
            v125 = 0;
            goto LABEL_21;
          }

LABEL_19:
          v30 = 0;
          goto LABEL_20;
        }
      }

      v125 = 0;
      v30 = 1;
      goto LABEL_21;
    }
  }

LABEL_94:
}

void sub_22516687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  _Block_object_dispose((v45 - 176), 8);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 216));
  _Unwind_Resume(a1);
}

void sub_2251668CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_msgSend_queue(WeakRetained, v11, v12);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166A14;
    block[3] = &unk_278546E40;
    objc_copyWeak(&v20, (a1 + 40));
    block[4] = v13;
    v16 = *(a1 + 32);
    v17 = v7;
    v21 = *(a1 + 48);
    v18 = v8;
    v19 = v9;
    dispatch_async(v14, block);

    objc_destroyWeak(&v20);
  }
}

void sub_225166A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleDeviceCapabilitiesResultForContainer_savedCapabilities_skipErrorMitigation_withCapabilitiesError_operationError_(*(a1 + 32), v3, *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64));
    WeakRetained = v4;
  }
}

void sub_225166A74(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = objc_msgSend_queue(WeakRetained, v14, v15);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166BD8;
    block[3] = &unk_278546E40;
    objc_copyWeak(&v24, (a1 + 40));
    v19 = *(a1 + 32);
    v20 = v9;
    v21 = v10;
    v25 = *(a1 + 48);
    v22 = v11;
    v23 = v12;
    dispatch_async(v17, block);

    objc_destroyWeak(&v24);
  }
}

void sub_225166BD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleZoneUsageResultForContainer_zoneID_date_skipErrorMitigation_withUsageError_operationError_(WeakRetained, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64));
    WeakRetained = v4;
  }
}

void sub_225166C38(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = objc_msgSend_queue(WeakRetained, v14, v15);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166D9C;
    block[3] = &unk_278546E40;
    objc_copyWeak(&v24, (a1 + 40));
    v19 = *(a1 + 32);
    v20 = v9;
    v21 = v10;
    v25 = *(a1 + 48);
    v22 = v11;
    v23 = v12;
    dispatch_async(v17, block);

    objc_destroyWeak(&v24);
  }
}

void sub_225166D9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleShareUsageResultForContainer_shareID_date_skipErrorMitigation_withUsageError_operationError_(WeakRetained, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 64));
    WeakRetained = v4;
  }
}

void sub_225166DFC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_queue(WeakRetained, v3, v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225166EE0;
    block[3] = &unk_278546EE0;
    objc_copyWeak(&v10, a1 + 6);
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void sub_225166EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__handleOperationCompletedForContainerLookupName_containerID_(WeakRetained, v3, *(a1 + 32), *(a1 + 40));
    WeakRetained = v4;
  }
}

void sub_225166F34(void *a1, void *a2)
{
  objc_storeStrong((*(a1[9] + 8) + 40), a2);
  v14 = a2;
  objc_msgSend_setUseEncryption_(*(*(a1[9] + 8) + 40), v4, 1);
  v5 = a1[4];
  v8 = objc_msgSend_operationInfo(*(*(a1[9] + 8) + 40), v6, v7);
  objc_msgSend_setGroup_(v8, v9, v5);

  objc_msgSend_setUpdateDeviceCapabilitiesCompletionBlock_(*(*(a1[9] + 8) + 40), v10, a1[5]);
  objc_msgSend_setPerZoneUsageCompletionBlock_(*(*(a1[9] + 8) + 40), v11, a1[6]);
  objc_msgSend_setPerShareUsageCompletionBlock_(*(*(a1[9] + 8) + 40), v12, a1[7]);
  objc_msgSend_setCompletionBlock_(*(*(a1[9] + 8) + 40), v13, a1[8]);
}

void sub_225167658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_225167698(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v10 = objc_msgSend_startSendingWithResendingRefreshInterval_maxFailureCount_(v8, v9, 3, 86400.0);
  v14 = objc_msgSend_failureCount(v8, v11, v12);
  v15 = a1[4];
  v16 = a1[5];
  v17 = *(a1[6] + 8);
  v20 = *(v17 + 40);
  v19 = (v17 + 40);
  v18 = v20;
  if (v14 >= 4)
  {
    obj = v18;
    v21 = objc_msgSend__deleteZoneUsageForZoneID_inContainer_withError_(v15, v13, v7, v16, &obj);
    objc_storeStrong(v19, obj);
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v36 = v18;
  v22 = objc_msgSend__setZoneUsage_forZoneID_inContainer_withError_(v15, v13, v8, v7, v16, &v36);
  objc_storeStrong(v19, v36);
  if (!v22)
  {
    goto LABEL_13;
  }

  if (v10)
  {
    v24 = *(*(a1[7] + 8) + 40);
    if (!v24)
    {
      v25 = objc_opt_new();
      v26 = *(a1[7] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v24 = *(*(a1[7] + 8) + 40);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v24, v23, v10, v7);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = a1[5];
      v32 = v28;
      v35 = objc_msgSend_containerID(v31, v33, v34);
      *buf = 138543874;
      v39 = v35;
      v40 = 2112;
      v41 = v10;
      v42 = 2114;
      v43 = v7;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Sending zone usage to the server. \n\tcontainerID: %{public}@ \n\tdate: %@ \n\tzoneID: %{public}@", buf, 0x20u);
    }

    v29 = *(a1[8] + 8);
    v30 = *(v29 + 24) + 1;
    *(v29 + 24) = v30;
    if (v30 >= a1[9])
    {
LABEL_13:
      *a4 = 1;
    }
  }

LABEL_14:
}

void sub_225167D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 184), 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_225167D8C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v10 = objc_msgSend_startSendingWithResendingRefreshInterval_maxFailureCount_(a3, v8, 3, 86400.0);
  if (v10)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1[5] + 8) + 40), v9, v10, v7);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v14 = a1[4];
      v15 = v11;
      v18 = objc_msgSend_containerID(v14, v16, v17);
      v19 = 138543874;
      v20 = v18;
      v21 = 2112;
      v22 = v10;
      v23 = 2114;
      v24 = v7;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending share usage to the server. \n\tcontainerID: %{public}@ \n\tdate: %@ \n\tshareID: %{public}@", &v19, 0x20u);
    }

    v12 = *(a1[6] + 8);
    v13 = *(v12 + 24) + 1;
    *(v12 + 24) = v13;
    if (v13 >= a1[7])
    {
      *a4 = 1;
    }
  }
}

void sub_225167F28(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a1[6];
  v9 = *(v8 + 16);
  v10 = a2;
  v9(v8, v10, v7, a4);
  v14 = objc_msgSend_failureCount(v7, v11, v12);
  v15 = a1[4];
  v16 = a1[5];
  v17 = *(a1[7] + 8);
  v20 = *(v17 + 40);
  v19 = (v17 + 40);
  v18 = v20;
  if (v14 < 4)
  {
    obj = v18;
    v21 = objc_msgSend__setShareUsage_forShareID_inContainer_withError_(v15, v13, v7, v10, v16, &obj);

    v22 = obj;
  }

  else
  {
    v24 = v18;
    v21 = objc_msgSend__deleteShareUsageForShareID_inContainer_withError_(v15, v13, v10, v16, &v24);

    v22 = v24;
  }

  objc_storeStrong(v19, v22);
  if ((v21 & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_225168024(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = objc_msgSend_shareIDForRecordID_(*(a1 + 32), v9, v7);
  if (v10)
  {
    (*(*(a1 + 56) + 16))();
    v14 = objc_msgSend_failureCount(v8, v11, v12);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 64) + 8);
    v20 = *(v17 + 40);
    v19 = (v17 + 40);
    v18 = v20;
    if (v14 >= 4)
    {
      obj = v18;
      v21 = objc_msgSend__deleteShareUsageForShareID_inContainer_withError_(v15, v13, v10, v16, &obj);
      objc_storeStrong(v19, obj);
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v29 = v18;
    v22 = objc_msgSend__setShareUsage_forShareID_inContainer_withError_(v15, v13, v8, v10, v16, &v29);
    objc_storeStrong(v19, v29);
    if (!v22 || (v24 = *(a1 + 40), v25 = *(a1 + 48), v26 = *(*(a1 + 64) + 8), v28 = *(v26 + 40), v27 = objc_msgSend__deleteRecordWithUnknownShareUsage_inContainer_withError_(v24, v23, v7, v25, &v28), objc_storeStrong((v26 + 40), v28), (v27 & 1) == 0))
    {
LABEL_7:
      *a4 = 1;
    }
  }

LABEL_8:
}

void sub_2251697B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251697D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, a3);
  v7 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v8 = objc_msgSend_unitTestOverrides(*(a1 + 32), v4, v5);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"InvalidUsageTimestamp");
    v13 = objc_msgSend_BOOLValue(v10, v11, v12);

    if (v13)
    {
      v16 = MEMORY[0x277CBEAA8];
      objc_msgSend_timeIntervalSince1970(v6, v14, v15);
      v20 = objc_msgSend_dateWithTimeIntervalSince1970_(v16, v18, v19, v17 + -2764800.0);
LABEL_7:

      v6 = v20;
      goto LABEL_8;
    }

    if (*v7)
    {
      v21 = objc_msgSend_unitTestOverrides(*(a1 + 32), v14, v15);
      v23 = objc_msgSend_objectForKey_(v21, v22, @"ZoneAndShareUsageDate");

      if (v23)
      {
        v26 = objc_msgSend_unitTestOverrides(*(a1 + 32), v24, v25);
        v20 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"ZoneAndShareUsageDate");

        v6 = v26;
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = *(a1 + 40);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v53, v57, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v54;
LABEL_10:
    v34 = 0;
    while (1)
    {
      if (*v54 != v33)
      {
        objc_enumerationMutation(v28);
      }

      v35 = *(*(&v53 + 1) + 8 * v34);
      v36 = *(a1 + 48);
      v37 = *(a1 + 56);
      v38 = *(*(a1 + 64) + 8);
      obj = *(v38 + 40);
      v39 = objc_msgSend__zoneUsageForZoneID_inContainer_withError_(v36, v31, v35, v37, &obj);
      objc_storeStrong((v38 + 40), obj);
      if (!v39)
      {
        break;
      }

      if (objc_msgSend_isNone(v39, v40, v41))
      {
        v43 = [CKUsageInfo alloc];
        Used = objc_msgSend_initWithLastUsed_(v43, v44, v6);

        v39 = Used;
      }

      else
      {
        objc_msgSend_setLastUsed_(v39, v42, v6);
      }

      v47 = *(a1 + 48);
      v48 = *(a1 + 56);
      v49 = *(*(a1 + 64) + 8);
      v51 = *(v49 + 40);
      v50 = objc_msgSend__setZoneUsage_forZoneID_inContainer_withError_(v47, v46, v39, v35, v48, &v51);
      objc_storeStrong((v49 + 40), v51);

      if (!v50)
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v53, v57, 16);
        if (v32)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }
}

void sub_22516AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  objc_destroyWeak((v19 + 72));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v20 - 120));
  _Unwind_Resume(a1);
}

void sub_22516AAE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [CKUsageInfo alloc];
    Used = objc_msgSend_initWithLastUsed_(v3, v4, *(a1 + 32));
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    objc_msgSend__setRecordWithUnknownShareUsage_forRecordID_inContainer_withError_(v6, v10, Used, v7, v8, &obj);
    objc_storeStrong((v9 + 40), obj);
  }
}

void sub_22516AE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22516AE38(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = objc_msgSend__shareUsageForShareID_inContainer_withError_(v3, a2, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    if (objc_msgSend_isNone(v7, v8, v9))
    {
      v11 = [CKUsageInfo alloc];
      Used = objc_msgSend_initWithLastUsed_(v11, v12, a1[7]);

      v7 = Used;
    }

    else
    {
      objc_msgSend_setLastUsed_(v7, v10, a1[7]);
    }

    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v18 = *(a1[8] + 8);
    v19 = *(v18 + 40);
    objc_msgSend__setShareUsage_forShareID_inContainer_withError_(v15, v14, v7, v16, v17, &v19);
    objc_storeStrong((v18 + 40), v19);
  }
}

uint64_t sub_22516AF9C(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D58138 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], a2, a3);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22516B030(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D58148 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_22516C0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22516C0F8()
{
  qword_280D58158 = dispatch_workloop_create("com.apple.cloudkit.accountStatus");

  return MEMORY[0x2821F96F8]();
}

void sub_22516C134(uint64_t a1, void *a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v10 = objc_msgSend_accountOrNil(WeakRetained, v7, v8);
      v13 = v10;
      if (v10)
      {
        v14 = objc_msgSend_accountID(v10, v11, v12);
        isEqualToString = objc_msgSend_isEqualToString_(v5, v15, v14);

        if (isEqualToString)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v17 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v20 = 134218242;
            v21 = v9;
            v22 = 2112;
            v23 = v5;
            _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Container %p clearing caches for deletion of account %@", &v20, 0x16u);
          }

          objc_msgSend__clearCaches(v9, v18, v19);
        }
      }
    }

    objc_msgSend__reloadAccount_(v9, v7, 1);
  }
}

void sub_22516C2A0(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if ((objc_msgSend_isEqualToString_(*(a1 + 32), v5, v12) & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, *(a1 + 56), *(a1 + 40), @"CKDContainer.m", 499, @"Received auth token renewal change notification for a different account: %@, expected: %@", v12, *(a1 + 32));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_handleAuthTokenRenewalChangeInProgress_(WeakRetained, v9, a2);
}

void sub_22516C4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_sync_exit(v15);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22516C518(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v5 = v2;
      v8 = objc_msgSend_containerID(WeakRetained, v6, v7);
      v11 = objc_msgSend_ckShortDescription(v8, v9, v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Session validation timer fired for container: %@", &v13, 0xCu);
    }

    objc_msgSend__cancelSessionValidationTimer(WeakRetained, v3, v4);
    objc_msgSend_checkSessionValidityCacheOnly_error_(WeakRetained, v12, 0, 0);
  }
}

void sub_22516DD14(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v17 = 0;
    v4 = objc_msgSend_checkSessionValidityCacheOnly_error_(WeakRetained, v2, 0, &v17);
    v5 = v17;
    v8 = v5;
    if ((v4 & 1) == 0)
    {
      isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v5, v6, v7);
      v10 = *MEMORY[0x277CBC878];
      if (isCloudCoreSessionNoLongerValidError)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v10);
        }

        v11 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v8;
          _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Container session is invalid: %@", buf, 0xCu);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v10);
        }

        v12 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          v16 = objc_msgSend_ckShortDescription(v3, v14, v15);
          *buf = 138412546;
          v19 = v16;
          v20 = 2112;
          v21 = v8;
          _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Failed to validate the CloudCore session for container %@: %@", buf, 0x16u);
        }
      }
    }
  }
}

void sub_22516E478(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBC878];
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_22506F000, v5, OS_LOG_TYPE_ERROR, "Failed to set file attribution for %@: %@", &v9, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Set file attribution for %@", &v9, 0xCu);
    }
  }
}

void sub_22516E700(uint64_t a1, const char *a2, uint64_t a3)
{
  v139 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_fakeErrorsByClassName(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
LABEL_14:
    v40 = objc_msgSend_fakeResponseOperationResultByClassNameByItemID(*(a1 + 32), v8, v9);
    v43 = objc_msgSend_count(v40, v41, v42);

    if (!v43)
    {
LABEL_37:
      objc_msgSend_performRequest(*(a1 + 40), v44, v45);
      return;
    }

    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v50 = objc_msgSend_fakeResponseOperationResultByClassNameByItemID(*(a1 + 32), v48, v49);
    v52 = objc_msgSend_objectForKeyedSubscript_(v50, v51, v47);

    if (!v52)
    {
LABEL_36:

      goto LABEL_37;
    }

    v55 = objc_msgSend_fakeResponseOperationLifetimeByClassName(*(a1 + 32), v53, v54);
    v57 = objc_msgSend_objectForKeyedSubscript_(v55, v56, v47);

    if (objc_msgSend_integerValue(v57, v58, v59) < 2)
    {
      if (objc_msgSend_integerValue(v57, v60, v61) == 1)
      {
        v72 = objc_msgSend_fakeResponseOperationResultByClassNameByItemID(*(a1 + 32), v70, v71);
        objc_msgSend_removeObjectForKey_(v72, v73, v47);

        v76 = objc_msgSend_fakeResponseOperationLifetimeByClassName(*(a1 + 32), v74, v75);
        objc_msgSend_removeObjectForKey_(v76, v77, v47);

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v65 = objc_msgSend_allValues(v52, v78, v79);
        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v80, &v124, v128, 16);
        if (v81)
        {
          v84 = v81;
          v85 = *v125;
          do
          {
            for (i = 0; i != v84; ++i)
            {
              if (*v125 != v85)
              {
                objc_enumerationMutation(v65);
              }

              v87 = objc_msgSend_v2(*(*(&v124 + 1) + 8 * i), v82, v83);
              v88 = v87;
              if (v87)
              {
                (*(v87 + 16))(v87, 0);
              }
            }

            v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v82, &v124, v128, 16);
          }

          while (v84);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v89 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v65 = v89;
        *buf = 134217984;
        v130 = objc_msgSend_integerValue(v57, v119, v120);
        _os_log_error_impl(&dword_22506F000, v65, OS_LOG_TYPE_ERROR, "A fake response is being tracked that has an invalid lifetime of %li", buf, 0xCu);
      }
    }

    else
    {
      v62 = MEMORY[0x277CCABB0];
      v63 = objc_msgSend_integerValue(v57, v60, v61);
      v65 = objc_msgSend_numberWithInteger_(v62, v64, v63 - 1);
      v68 = objc_msgSend_fakeResponseOperationLifetimeByClassName(*(a1 + 32), v66, v67);
      objc_msgSend_setObject_forKeyedSubscript_(v68, v69, v65, v47);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

LABEL_33:
    v90 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      loga = v90;
      v94 = objc_opt_class();
      v95 = NSStringFromClass(v94);
      v96 = *(a1 + 40);
      v121 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v96, v97, 1, 0, 0);
      v100 = objc_msgSend_CKPropertiesStyleString(v121, v98, v99);
      v102 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 40), v101, 0, 1, 0);
      v105 = objc_msgSend_CKPropertiesStyleString(v102, v103, v104);
      *buf = 138544386;
      v130 = v95;
      v131 = 2048;
      v132 = v96;
      v133 = 2114;
      v134 = v100;
      v135 = 2112;
      v136 = v105;
      v137 = 2112;
      v138 = v52;
      _os_log_error_impl(&dword_22506F000, loga, OS_LOG_TYPE_ERROR, "Asking URL Request <%{public}@: %p; %{public}@, %@> to return fake operation result %@", buf, 0x34u);
    }

    v92 = objc_msgSend_CKMapValues_(v52, v91, &unk_28385CC40);
    objc_msgSend_setFakeResponseOperationResultByItemID_(*(a1 + 40), v93, v92);

    goto LABEL_36;
  }

  v10 = objc_msgSend_fakeErrorsByClassName(*(a1 + 32), v8, v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v10, v13, v12);

  if (!v14 || (objc_msgSend_firstObject(v14, v15, v16), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_14;
  }

  v19 = v17;
  objc_msgSend_removeObjectAtIndex_(v14, v18, 0);
  if (!objc_msgSend_count(v14, v20, v21))
  {
    v24 = objc_msgSend_fakeErrorsByClassName(*(a1 + 32), v22, v23);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    objc_msgSend_removeObjectForKey_(v24, v27, v26);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    log = v28;
    v106 = objc_opt_class();
    v107 = NSStringFromClass(v106);
    v108 = *(a1 + 40);
    v110 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v108, v109, 1, 0, 0);
    v113 = objc_msgSend_CKPropertiesStyleString(v110, v111, v112);
    v115 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 40), v114, 0, 1, 0);
    v118 = objc_msgSend_CKPropertiesStyleString(v115, v116, v117);
    *buf = 138544386;
    v130 = v107;
    v131 = 2048;
    v132 = v108;
    v133 = 2114;
    v134 = v113;
    v135 = 2112;
    v136 = v118;
    v137 = 2112;
    v138 = v19;
    _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Prematurely failing request <%{public}@: %p; %{public}@, %@> with error %@ because that's what you asked for", buf, 0x34u);
  }

  v31 = *(a1 + 40);
  v32 = objc_msgSend_v1(v19, v29, v30);
  objc_msgSend_finishWithError_(v31, v33, v32);

  v36 = objc_msgSend_v2(v19, v34, v35);

  if (v36)
  {
    v39 = objc_msgSend_v2(v19, v37, v38);
    v39[2](v39, 0);
  }
}

void sub_22516F554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22516F578(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setServerConfig_(WeakRetained, v7, v9);

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void sub_22516F6F0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_msgSend_setServerInfo_(*(a1 + 32), v5, v8);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v6);
  }
}

void sub_22516F820(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = objc_msgSend_publicCodeServiceURL(v12, v5, v6);
      goto LABEL_13;
    }

    if (v9 == 4)
    {
      v10 = objc_msgSend_publicMetricsServiceURL(v12, v5, v6);
      goto LABEL_13;
    }

LABEL_10:
    v10 = objc_msgSend_publicCloudDBURL(v12, v5, v6);
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    v10 = objc_msgSend_publicShareServiceURL(v12, v5, v6);
    goto LABEL_13;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  v10 = objc_msgSend_publicDeviceServiceURL(v12, v5, v6);
LABEL_13:
  v8 = v10;
LABEL_14:
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v7);
  }
}

void sub_22516F9D0(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = v7;
    v18 = objc_msgSend_containerScopedUserID(v5, v16, v17);
    v21 = objc_msgSend_account(*(a1 + 32), v19, v20);
    v24 = objc_msgSend_dsid(v21, v22, v23);
    v25 = 138543618;
    v26 = v18;
    v27 = 2112;
    v28 = v24;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Fetched container scoped user ID of %{public}@ for dsid %@", &v25, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = objc_msgSend_containerScopedUserID(v5, v8, v9);
    v14 = objc_msgSend_orgAdminUserID(v5, v12, v13);
    (*(v10 + 16))(v10, v11, v14, v6);
  }
}

void sub_22516FC24(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v8 = a3;
    v7 = objc_msgSend_environment(a2, v5, v6);
    (*(v3 + 16))(v3, v7, v8);
  }
}

void sub_22516FE48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22516FE6C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (*(a1 + 32))
  {
    v7 = objc_msgSend_baseURLForServerType_partitionType_(WeakRetained, v5, *(a1 + 48), 1);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_2251706D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2251706FC(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277CBBF10];
  v8 = objc_msgSend_applicationBundleID(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v4, v9, v5, @"%@", 0, v8);

  if (objc_msgSend_isEqualToString_(v10, v11, v3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    v15 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v28 = v16;
      v29 = 2114;
      v30 = v3;
      v17 = "Allowing data repair container %{public}@ to set bundle identifier override on operation to '%{public}@'";
LABEL_12:
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, v17, buf, 0x16u);
    }
  }

  else if (objc_msgSend_length(*(a1 + 40), v12, v13) && objc_msgSend_hasPrefix_(v3, v18, *(a1 + 40)))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    v15 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = v3;
      v17 = "Allowing %{public}@ to set bundle identifier override on operation to prefixed value '%{public}@'";
      goto LABEL_12;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 32);
      *buf = 138412546;
      v28 = v26;
      v29 = 2114;
      v30 = v3;
      _os_log_fault_impl(&dword_22506F000, v20, OS_LOG_TYPE_FAULT, "Container %@ is not allowed to set bundle identifier override '%{public}@'", buf, 0x16u);
    }

    v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBBF50], 8, @"Container %@ is not allowed to set application bundle identifier override %@ without an entitlement", *(a1 + 32), v3);
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v15 = 0;
  }

  return v15;
}

void sub_2251710F8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_280D58170;
  qword_280D58170 = v2;

  objc_msgSend_setName_(qword_280D58170, v4, @"com.apple.cloudkit.sharedThrottlingQueue");
  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v5, v6);
  v9 = objc_msgSend_clientThrottleQueueWidth(v11, v7, v8);
  objc_msgSend_setMaxConcurrentOperationCount_(qword_280D58170, v10, v9);
}

void sub_225171180(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_userInfo(v3, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"CKDAuthorizationBundleIdentifierKey");

  v12 = objc_msgSend_applicationBundleIdentifierForTCC(WeakRetained, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, v9);

  if (isEqualToString)
  {
    v17 = objc_msgSend_tccAuthQueue(WeakRetained, v15, v16);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22517129C;
    v18[3] = &unk_278545898;
    v19 = v3;
    v20 = WeakRetained;
    dispatch_async(v17, v18);
  }
}

void sub_22517129C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(*(a1 + 32), a2, a3);
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"CKDAuthorizationKey");

  if (v10)
  {
    v8 = objc_msgSend_unsignedIntegerValue(v10, v6, v7);
    objc_msgSend__lockedHandleTCCAuthorizationChangedEvent_(*(a1 + 40), v9, v8);
  }

  else
  {
    objc_msgSend__lockedHandleTCCAuthorizationChangedEvent_(*(a1 + 40), v6, -1);
  }
}

void sub_225171E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_225171E64(uint64_t a1, const char *a2)
{
  result = objc_msgSend__lockedHasTCCAuthorization_(*(a1 + 32), a2, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_22517233C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6 = objc_msgSend_completionBlock(*(a1 + 32), v4, v5);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22517255C;
  v27[3] = &unk_2785471F8;
  v7 = v6;
  v28 = v7;
  objc_copyWeak(&v31, &location);
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  objc_msgSend_setCompletionBlock_(*(a1 + 32), v8, v27);
  isLongLived = objc_msgSend_isLongLived(*(a1 + 32), v9, v10);
  v14 = *(a1 + 40);
  if (isLongLived)
  {
    v15 = objc_msgSend_uncancellableOperationQueue(v14, v11, v12);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2251725FC;
    v23[3] = &unk_278547248;
    v22 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v22;
    *(&v20 + 1) = v16;
    v24 = v20;
    v25 = v19;
    v26 = *(a1 + 72);
    objc_msgSend_addOperationWithBlock_(v15, v21, v23);
  }

  else
  {
    objc_msgSend_addOperation_(v14, v11, *(a1 + 32));
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void sub_225172534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_22517255C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 40);
  v11 = WeakRetained;
  v7 = objc_msgSend_container(WeakRetained, v5, v6);
  v9 = v7;
  v10 = *(a1 + 48);
  if (v4)
  {
    objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_customCompletionBlock_(v7, v8, v11, v10, *(a1 + 40));
  }

  else
  {
    objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_(v7, v8, v11, v10);
  }
}

void sub_2251725FC(uint64_t a1, const char *a2, uint64_t a3)
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_operationInfoCache(v4, v5, v6);
  v10 = objc_msgSend_operationID(*(a1 + 40), v8, v9);
  v12 = objc_msgSend_operationInfoMetadataForOperationWithID_(v7, v11, v10);

  v15 = objc_msgSend_retryNumber(v12, v13, v14);
  v18 = objc_msgSend_integerValue(v15, v16, v17);

  if (objc_msgSend_isOutstandingOperation(*(a1 + 40), v19, v20) && (!objc_msgSend_isOutstandingOperation(*(a1 + 40), v21, v22) || (objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_longlivedOperationMaxRetryCount(v23, v24, v25), v23, v18 <= v26)))
  {
    if (!v12)
    {
      v29 = objc_msgSend_operationID(*(a1 + 48), v21, v22);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v29;
        _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "No cached metadata found for outstanding operation %{public}@. Finishing it with an error", location, 0xCu);
      }

      v33 = objc_msgSend_deviceContext(*(a1 + 32), v31, v32);
      v36 = objc_msgSend_operationInfoCache(v33, v34, v35);
      v37 = *(a1 + 40);
      v40 = objc_msgSend_appContainerAccountTuple(*(a1 + 32), v38, v39);
      objc_msgSend_setOperationInfo_forOperationID_appContainerAccountTuple_(v36, v41, v37, v29, v40);

      v43 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 1000, @"No cached metadata found for outstanding operation %@", v29);
      v45 = objc_msgSend_CKInvocationToFinishOperationWithInfo_withError_(MEMORY[0x277CBEAE8], v44, *(a1 + 40), v43);
      v46 = [CKDLongLivedOperationPersistedCallback alloc];
      isCompletionCallback = objc_msgSend_initWithProtocol_invocation_isCompletionCallback_(v46, v47, *(a1 + 56), v45, 1);
      v51 = objc_msgSend_deviceContext(*(a1 + 32), v49, v50);
      v54 = objc_msgSend_operationInfoCache(v51, v52, v53);
      objc_msgSend_archiveCallback_forOperationID_(v54, v55, isCompletionCallback, v29);
    }
  }

  else
  {
    v27 = objc_msgSend_container(*(a1 + 48), v21, v22);
    objc_msgSend_addOperation_(v27, v28, *(a1 + 48));
  }

  v56 = [CKDLongLivedCallbackRelayOperation alloc];
  v58 = objc_msgSend_initWithOperationInfo_container_(v56, v57, *(a1 + 40), *(a1 + 32));
  v61 = objc_msgSend_clientOperationCallbackProxy(v58, v59, v60);
  objc_msgSend_activate(v61, v62, v63);

  objc_initWeak(location, v58);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_2251729D0;
  v66[3] = &unk_278547220;
  objc_copyWeak(&v68, location);
  v67 = *(a1 + 64);
  objc_msgSend_setCompletionBlock_(v58, v64, v66);
  objc_msgSend_addOperation_(*(a1 + 32), v65, v58);

  objc_destroyWeak(&v68);
  objc_destroyWeak(location);
}

void sub_2251729A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251729D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_container(WeakRetained, v2, v3);
  objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_customCompletionBlock_(v4, v5, WeakRetained, *(a1 + 32), &unk_28385CC80);
}

void sub_225172B94(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, *(a1 + 32));
  if (objc_msgSend_wantsRequestStatistics(*(a1 + 40), v2, v3))
  {
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_225172FF8;
    v79[3] = &unk_278547298;
    objc_copyWeak(&v80, &location);
    objc_msgSend_setRequestCompletedBlock_(*(a1 + 32), v6, v79);
    objc_destroyWeak(&v80);
  }

  v7 = objc_msgSend_pendingOperationIDs(*(a1 + 48), v4, v5);
  objc_sync_enter(v7);
  v10 = objc_msgSend_pendingOperationIDs(*(a1 + 48), v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, *(a1 + 56));

  v15 = objc_msgSend_pendingOperationIDs(*(a1 + 48), v13, v14);
  objc_msgSend_removeObject_(v15, v16, *(a1 + 56));

  objc_sync_exit(v7);
  if ((v12 & 1) != 0 || (objc_msgSend_cancel(*(a1 + 32), v17, v18), objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1, @"Operation %@ was cancelled", *(a1 + 56)), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = *(a1 + 48);
    v23 = *(a1 + 32);
    v78 = 0;
    objc_msgSend__isContainerAuthorizedForOperation_error_(v22, v17, v23, &v78);
    v21 = v78;
    if (!v21)
    {
      if (objc_msgSend_isLongLivedCallbackRelayOperation(*(a1 + 32), v17, v20))
      {
        v29 = objc_msgSend_processScopedClientProxy(*(a1 + 48), v27, v28);
        if (!objc_msgSend_processIsAttached(v29, v30, v31))
        {
LABEL_15:

          goto LABEL_16;
        }

        isOutstandingOperation = objc_msgSend_isOutstandingOperation(*(a1 + 40), v32, v33);

        if ((isOutstandingOperation & 1) == 0)
        {
          v35 = objc_msgSend_deviceContext(*(a1 + 48), v27, v28);
          v38 = objc_msgSend_operationInfoCache(v35, v36, v37);
          v39 = *(a1 + 56);
          v40 = *(a1 + 40);
          v43 = objc_msgSend_appContainerAccountTuple(*(a1 + 48), v41, v42);
          objc_msgSend_setOperationInfo_forOperationID_appContainerAccountTuple_(v38, v44, v40, v39, v43);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v45 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v77 = *(a1 + 48);
            v76 = *(a1 + 56);
            *buf = 138543618;
            v83 = v76;
            v84 = 2112;
            v85 = v77;
            _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Writing down long-lived operation %{public}@ for container: %@", buf, 0x16u);
          }

          v29 = objc_msgSend_clientOperationCallbackProxy(*(a1 + 32), v46, v47);
          objc_msgSend_handleLongLivedOperationDidPersist(v29, v48, v49);
          goto LABEL_15;
        }
      }

LABEL_16:
      if (objc_msgSend_isLongLived(*(a1 + 32), v27, v28))
      {
        if ((objc_msgSend_isLongLivedCallbackRelayOperation(*(a1 + 32), v50, v51) & 1) == 0)
        {
          v52 = objc_msgSend_ckOperationClassName(*(a1 + 40), v50, v51);
          v55 = objc_msgSend_containerID(*(a1 + 48), v53, v54);
          isOperationAllowedIndependentlyInSyncBubble = _isOperationAllowedIndependentlyInSyncBubble(v52, v55);

          if (isOperationAllowedIndependentlyInSyncBubble)
          {
            objc_msgSend_beginUserSyncTask(*(a1 + 32), v50, v51);
          }
        }
      }

      v21 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v50, v51);
      if (objc_msgSend_usesBackgroundSession(*(a1 + 32), v57, v58))
      {
        v61 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 48), v59, v60);

        v21 = v61;
      }

      v62 = objc_msgSend_entitlements(*(a1 + 48), v59, v60);
      if (objc_msgSend_hasCloudKitSupportServiceEntitlement(v62, v63, v64))
      {
        isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(*(a1 + 32), v65, v66);

        if (!isCloudKitSupportOperation)
        {
LABEL_26:
          v70 = [CKDPlaceholderOperation alloc];
          v25 = objc_msgSend_initWithOperation_targetOperationQueue_(v70, v71, *(a1 + 32), v21);
          v74 = objc_msgSend_operationQueue(*(a1 + 48), v72, v73);
          objc_msgSend_addOperation_(v74, v75, v25);

          goto LABEL_27;
        }

        objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 48), v68, v69);
        v21 = v62 = v21;
      }

      goto LABEL_26;
    }
  }

  v24 = *(a1 + 32);
  v25 = objc_msgSend_CKClientSuitableError(v21, v17, v20);
  objc_msgSend_finishWithError_(v24, v26, v25);
LABEL_27:

  objc_destroyWeak(&location);
}