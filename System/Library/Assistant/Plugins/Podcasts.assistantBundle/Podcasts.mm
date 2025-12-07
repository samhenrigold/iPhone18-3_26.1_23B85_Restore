void sub_23352E4C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, 0);
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

void sub_23352E790(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, 1);
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

id sub_23352EA4C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD18];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, v4, v7, v8);
  v12 = objc_msgSend_initWithName_value_(v5, v10, v4, v9, v11);

  return v12;
}

id sub_23352ECA0(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD18];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, v4, v7, v8);
  v12 = objc_msgSend_initWithName_value_(v5, v10, v4, v9, v11);

  return v12;
}

void sub_23352EDB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"playPodcast";
  v7[1] = @"playPodcasts";
  v7[2] = @"playStation";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 3, a5);
  v6 = qword_27DE0EBD0;
  qword_27DE0EBD0 = v5;
}

void sub_23352F908(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"playPodcasts";
  v4[1] = @"playPodcast";
  v5[0] = &unk_2848DD988;
  v5[1] = &unk_2848DD9A0;
  v4[2] = @"playStation";
  v5[2] = &unk_2848DD9B8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_27DE0EBE8;
  qword_27DE0EBE8 = v2;
}

void sub_233530CCC(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 120);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v22 = *(a1 + 120);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_233530E5C;
  v23[3] = &unk_2789DE398;
  v9 = *(a1 + 112);
  v10 = *(a1 + 64);
  v28 = *(a1 + 128);
  *&v11 = v9;
  *(&v11 + 1) = *v4;
  v21 = v11;
  v12 = *(a1 + 72);
  v29 = *(a1 + 129);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  v24 = v16;
  v25 = v15;
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v27 = v21;
  v26 = v19;
  objc_msgSend__resolveWithDestination_hashedRouteIdentifiers_decodedRouteIdentifiers_originatingOutputDeviceUID_localPlaybackPermitted_audioRoutingInfo_completion_(v22, v20, v5, v6, v7, v8, 1, a2, v23);
}

void sub_233530E5C(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = *MEMORY[0x277D27CD8];
  v28[0] = &unk_2848DD9E8;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v28, &v27, 1);
  v6 = objc_alloc_init(MEMORY[0x277D27828]);
  v7 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_233531038;
  v18[3] = &unk_2789DE370;
  v8 = *(a1 + 80);
  v25 = *(a1 + 96);
  v19 = v3;
  v9 = *(a1 + 88);
  v23 = v8;
  v24 = v9;
  v10 = *(a1 + 40);
  v26 = *(a1 + 97);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v20 = v15;
  v21 = v14;
  v22 = *(a1 + 72);
  v16 = v3;
  objc_msgSend_sendPlaybackQueueWithResult_toDestination_withOptions_completion_(v6, v17, v7, v16, v5, v18);
}

void sub_233531038(uint64_t a1, void *a2)
{
  v128 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_returnStatuses(v3, v4, v5, v6, v7);
    v14 = objc_msgSend_firstObject(v9, v10, v11, v12, v13);
    v19 = objc_msgSend_unsignedIntValue(v14, v15, v16, v17, v18);

    v24 = objc_msgSend_error(v8, v20, v21, v22, v23);
    POLogInitIfNeeded(v24, v25);
    v26 = MEMORY[0x277D86220];
    if (POLogContextCommand)
    {
      v27 = POLogContextCommand;
    }

    else
    {
      v27 = MEMORY[0x277D86220];
    }

    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      v30 = v27;
      v35 = objc_msgSend_localizedDescription(v24, v31, v32, v33, v34);
      *buf = 138412290;
      *v123 = v35;
      _os_log_impl(&dword_23352D000, v30, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Error: %@", buf, 0xCu);
    }

    POLogInitIfNeeded(v28, v29);
    if (POLogContextCommand)
    {
      v36 = POLogContextCommand;
    }

    else
    {
      v36 = v26;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v123 = v19;
      _os_log_impl(&dword_23352D000, v36, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Status: %d", buf, 8u);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v41 = objc_msgSend_underlyingErrors(v24, v37, v38, v39, v40, 0);
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v118, v127, 16);
    if (v43)
    {
      v47 = v43;
      v48 = *v119;
      while (2)
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v119 != v48)
          {
            objc_enumerationMutation(v41);
          }

          IsNoNetwork = objc_msgSend_errorIsNoNetwork_(POUtilities, v44, *(*(&v118 + 1) + 8 * i), v45, v46);
          if (IsNoNetwork)
          {
            POLogInitIfNeeded(IsNoNetwork, v44);
            if (POLogContextCommand)
            {
              v74 = POLogContextCommand;
            }

            else
            {
              v74 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_233538174(v74, v75, v76, v77, v78, v79, v80, v81);
            }

            v82 = *(*(a1 + 80) + 16);
            goto LABEL_63;
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v118, v127, 16);
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v55 = v19;
    v56 = MEMORY[0x277D86220];
    if (*(a1 + 96) == 1)
    {
      v57 = objc_msgSend_outputDeviceUIDs(*(a1 + 32), v51, v52, v53, v54);
      if (objc_msgSend_count(v57, v58, v59, v60, v61))
      {

        if ((v55 - 1) <= 1)
        {
          POLogInitIfNeeded(v62, v51);
          if (POLogContextCommand)
          {
            v63 = POLogContextCommand;
          }

          else
          {
            v63 = v56;
          }

          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v123 = v55;
            _os_log_impl(&dword_23352D000, v63, OS_LOG_TYPE_DEFAULT, "Falling back to airplay after status: %d", buf, 8u);
          }

          v66 = *(a1 + 88);
          v126 = *(a1 + 40);
          v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, &v126, 1, v65);
          isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount = objc_msgSend_createPlaybackQueueFromRequestIdentifiers_startPlaying_assetInfo_isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_(v66, v68, v67, *(a1 + 97), *(a1 + 48), *(a1 + 56) != 0, *(a1 + 64), *(a1 + 72));

          v70 = [MTMPCAssistantGenericPlaybackQueue alloc];
          v41 = objc_msgSend_initWithContextID_playbackQueueRef_(v70, v71, *(a1 + 56), isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount, v72);
          objc_msgSend_modifyContextForAirplay_andPlayLocally_completion_(*(a1 + 88), v73, *(a1 + 32), v41, *(a1 + 80));
          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    if (!*(a1 + 80))
    {
LABEL_65:

      goto LABEL_66;
    }

    v91 = objc_msgSend_domain(v24, v51, v52, v53, v54);
    if (objc_msgSend_isEqualToString_(v91, v92, *MEMORY[0x277D277F8], v93, v94))
    {
      v99 = objc_msgSend_code(v24, v95, v96, v97, v98);
    }

    else
    {
      v99 = 0;
    }

    v104 = objc_msgSend_domain(v24, v100, v101, v102, v103);
    if (objc_msgSend_isEqualToString_(v104, v105, *MEMORY[0x277D277F0], v106, v107))
    {
      v112 = objc_msgSend_code(v24, v108, v109, v110, v111);
    }

    else
    {
      v112 = 0;
    }

    POLogInitIfNeeded(v113, v114);
    if (POLogContextCommand)
    {
      v115 = POLogContextCommand;
    }

    else
    {
      v115 = v56;
    }

    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v123 = v55;
      *&v123[4] = 2048;
      *&v123[6] = v99;
      v124 = 2048;
      v125 = v112;
      _os_log_impl(&dword_23352D000, v115, OS_LOG_TYPE_DEFAULT, "Completed sendPlaybackQueueWithResult with MR status: %d, remote error: %ld, assistant error: %ld", buf, 0x1Cu);
    }

    if (v24 && (MPCAssistantErrorIsInformational() & 1) == 0)
    {
      v41 = v24;
      POLogInitIfNeeded(v41, v116);
      if (POLogContextCommand)
      {
        v117 = POLogContextCommand;
      }

      else
      {
        v117 = v56;
      }

      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        sub_2335381AC(v41, v117);
      }
    }

    else
    {
      v41 = 0;
    }

    v82 = *(*(a1 + 80) + 16);
LABEL_63:
    v82();
LABEL_64:

    goto LABEL_65;
  }

  POLogInitIfNeeded(0, v4);
  if (POLogContextCommand)
  {
    v83 = POLogContextCommand;
  }

  else
  {
    v83 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    sub_233538224(v83, v84, v85, v86, v87, v88, v89, v90);
  }

  (*(*(a1 + 80) + 16))();
LABEL_66:
}

uint64_t sub_233531780()
{
  qword_27DE0EBF0 = objc_alloc_init(MEMORY[0x277D27848]);

  return MEMORY[0x2821F96F8]();
}

void sub_2335317BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 2, v3);
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D27828]);
    v6 = objc_alloc(MEMORY[0x277D27878]);
    v8 = objc_msgSend_initWithAppBundleID_playerID_origin_(v6, v7, *MEMORY[0x277D3DCE0], @"Podcasts", 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2335318D4;
    v11[3] = &unk_2789DE3E8;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    objc_msgSend_sendPlaybackQueue_toDestination_completion_(v5, v10, v9, v8, v11);
  }
}

void sub_2335318D4(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v10 = objc_msgSend_firstObject(a3, v6, v7, v8, v9);
  v15 = objc_msgSend_unsignedIntValue(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_domain(v5, v16, v17, v18, v19);
  if (objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x277D277F8], v22, v23))
  {
    v28 = objc_msgSend_code(v5, v24, v25, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  v33 = objc_msgSend_domain(v5, v29, v30, v31, v32);
  if (objc_msgSend_isEqualToString_(v33, v34, *MEMORY[0x277D277F0], v35, v36))
  {
    v41 = objc_msgSend_code(v5, v37, v38, v39, v40);
  }

  else
  {
    v41 = 0;
  }

  POLogInitIfNeeded(v42, v43);
  if (POLogContextCommand)
  {
    v44 = POLogContextCommand;
  }

  else
  {
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v46[0] = 67109632;
    v46[1] = v15;
    v47 = 2048;
    v48 = v28;
    v49 = 2048;
    v50 = v41;
    _os_log_impl(&dword_23352D000, v44, OS_LOG_TYPE_DEFAULT, "Completed Airplay fallback with MR status: %d, remote error: %ld, assistant error: %ld", v46, 0x1Cu);
  }

  v45 = *(a1 + 32);
  if (v45)
  {
    (*(v45 + 16))(v45, v15, v5);
  }
}

void sub_233532004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23353201C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233532034(uint64_t a1, uint64_t a2)
{
  v17 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
  v3 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if (objc_msgSend_count(v17, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_lastObject(v17, v8, v9, v10, v11);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = v3;
    v14 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2335322B4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v28, v34, 16);
  if (!v5)
  {

LABEL_26:
    v12 = objc_alloc_init(MEMORY[0x277D47218]);
    goto LABEL_27;
  }

  v11 = v5;
  v12 = 0;
  v13 = *v29;
  v14 = MEMORY[0x277D86220];
  *&v10 = 67109120;
  v27 = v10;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v29 != v13)
    {
      objc_enumerationMutation(v3);
    }

    v16 = objc_msgSend_integerValue(*(*(&v28 + 1) + 8 * v15), v6, v7, v8, v9, v27, v28);
    v17 = v16;
    if (v16)
    {
      v18 = v16 == 3;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      POLogInitIfNeeded(v16, v6);
      if (POLogContextCommand)
      {
        v19 = POLogContextCommand;
      }

      else
      {
        v19 = v14;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = v27;
        v33 = v17;
        _os_log_error_impl(&dword_23352D000, v19, OS_LOG_TYPE_ERROR, "MediaRemote command failed with status %u", buf, 8u);
      }

      v20 = objc_alloc(MEMORY[0x277D47208]);
      v24 = objc_msgSend_initWithErrorCode_(v20, v21, *(a1 + 40), v22, v23);

      v12 = v24;
    }

    if (v17 != 3 && v17 != 0)
    {
      break;
    }

    if (v11 == ++v15)
    {
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v28, v34, 16);
      if (v11)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_27:
  v26 = *(a1 + 32);
  if (v26)
  {
    (*(v26 + 16))(v26, v12);
  }
}

void sub_233532598(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_233532814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = objc_msgSend__commandStatusForRemoteStatus_assistantError_(POSubscribeToPodcastCollection, a2, a2, a3, a5);
  v6 = *(a1 + 32);
  v11 = objc_msgSend_dictionary(v12, v7, v8, v9, v10);
  (*(v6 + 16))(v6, v11);
}

uint64_t sub_233532C18(uint64_t a1)
{
  qword_2814EEA68 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_233533168(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v14 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"Documents/PodcastsDB.plist", v8, v9);
  v13 = objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"Documents/PodcastsDiff.plist", v11, v12);

  (*(*(a1 + 32) + 16))();
}

void sub_2335338EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233533904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = v6;
  if (v5)
  {
    v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8, v9, v10);
    v17 = objc_msgSend_path(v5, v13, v14, v15, v16);
    v20 = objc_msgSend_attributesOfItemAtPath_error_(v12, v18, v17, 0, v19);
    v25 = objc_msgSend_fileModificationDate(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_revisionsDataPlistLastModified(*(a1 + 32), v26, v27, v28, v29);
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isEqual_(v25, v31, v30, v32, v33) ^ 1;
  }

  else
  {
    POLogInitIfNeeded(v6, v7);
    if (POLogContextSync)
    {
      v34 = POLogContextSync;
    }

    else
    {
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_233538434();
    }
  }
}

void sub_233533AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233533AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = v6;
  if (v5)
  {
    v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8, v9, v10);
    v17 = objc_msgSend_path(v5, v13, v14, v15, v16);
    v20 = objc_msgSend_attributesOfItemAtPath_error_(v12, v18, v17, 0, v19);
    v25 = objc_msgSend_fileModificationDate(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_podcastDataPlistLastModified(*(a1 + 32), v26, v27, v28, v29);
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isEqual_(v25, v31, v30, v32, v33) ^ 1;
  }

  else
  {
    POLogInitIfNeeded(v6, v7);
    if (POLogContextSync)
    {
      v34 = POLogContextSync;
    }

    else
    {
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_23353849C();
    }
  }
}

void sub_233534034(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v10 = v7;
  if (v7)
  {
    POLogInitIfNeeded(v7, v8);
    if (POLogContextSync)
    {
      v11 = POLogContextSync;
    }

    else
    {
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_233538548();
    }
  }

  else
  {
    objc_msgSend__withExtensionParseDataDictionary_revisionDictionary_(*(a1 + 32), v8, a2, a3, v9);
  }
}

void sub_233535608(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2335357B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, 0);
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

uint64_t sub_233535B44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233535B5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_233535C2C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_23352D000, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
}

void sub_233535E18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((objc_msgSend_hasFetchedInitialAccount(*(a1 + 32), a2, a3, a4, a5) & 1) == 0)
  {
    objc_msgSend__updateActiveAccount(*(a1 + 32), v6, v7, v8, v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233535ECC;
    block[3] = &unk_2789DE5D8;
    v13 = v10;
    dispatch_async(v11, block);
  }
}

void sub_233536230(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_23352D000, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v25, 2u);
  }

  v7 = objc_msgSend__activeAccountBlocking(*(a1 + 32), v3, v4, v5, v6);
  v12 = objc_msgSend_ams_DSID(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_stringValue(v12, v13, v14, v15, v16);

  v21 = *(a1 + 40);
  if (v21 | v17 && (objc_msgSend_isEqualToString_(v21, v18, v17, v19, v20) & 1) == 0)
  {
    dispatch_async(MEMORY[0x277D85CD0], &unk_2848D9E48);
  }

  objc_msgSend_setActiveAccount_(*(a1 + 32), v18, v7, v19, v20);
  objc_msgSend_setHasFetchedInitialAccount_(*(a1 + 32), v22, 1, v23, v24);
}

void sub_23353631C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_postNotificationName_object_(v7, v5, @"AccountDSIDChangedNotification", 0, v6);
}

void sub_233536B78(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, *(a1 + 40));
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

void POLogInitIfNeeded(uint64_t result, uint64_t a2)
{
  if (qword_2814EEA78 != -1)
  {
    sub_2335387E8();
  }
}

uint64_t sub_233536E24()
{
  v0 = os_log_create(POLoggingSubsystem, POLoggingContextCommand);
  v1 = POLogContextCommand;
  POLogContextCommand = v0;

  POLogContextSync = os_log_create(POLoggingSubsystem, POLoggingContextCommand);

  return MEMORY[0x2821F96F8]();
}

id POAssistantDecodeHashedRouteUIDs(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MSVWeakLinkClass());
  v4 = dispatch_group_create();
  v5 = dispatch_queue_create("DecodeSerialQueue", 0);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v26, v30, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CBEA90]);
        v15 = objc_msgSend_initWithBase64EncodedString_options_(v12, v13, v11, 0, v14);
        dispatch_group_enter(v4);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_233537400;
        v21[3] = &unk_2789DE678;
        v22 = v5;
        v23 = v11;
        v24 = v2;
        v25 = v4;
        objc_msgSend_processData_usingProcedure_completion_(v3, v16, v15, 2, v21);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v26, v30, 16);
    }

    while (v8);
  }

  v18 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v4, v18);

  return v2;
}

void sub_233537400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    POLogInitIfNeeded(v6, v7);
    if (POLogContextCommand)
    {
      v9 = POLogContextCommand;
    }

    else
    {
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_2335387FC(v8, v9);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233537510;
    block[3] = &unk_2789DE650;
    v11 = v5;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = v11;
    v16 = v12;
    v17 = v13;
    dispatch_sync(v10, block);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_233537510(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = objc_msgSend_initWithData_encoding_(v2, v3, *(a1 + 32), 4, v4);
  POLogInitIfNeeded(v5, v6);
  if (POLogContextCommand)
  {
    v7 = POLogContextCommand;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_233538874(a1, v5, v7);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    objc_msgSend_setObject_forKey_(*(a1 + 48), v8, *(a1 + 40), v5, v9);
  }

LABEL_7:
}

void sub_2335381AC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23352D000, a2, OS_LOG_TYPE_ERROR, "sendPlaybackQueueWithResult encountered error %@", &v2, 0xCu);
}

void sub_2335382B4(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_23352D000, a2, OS_LOG_TYPE_ERROR, "Subscribe command failed with an unexpected error code: %u", v2, 8u);
}

void sub_23353832C()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_233535624();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_23352D000, v1, OS_LOG_TYPE_ERROR, "Error reading plist at %@: %@", v2, 0x16u);
}

void sub_2335383B0()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_233535624();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_23352D000, v1, OS_LOG_TYPE_FAULT, "Error reading plist from path: %@ - with error: %@", v2, 0x16u);
}

void sub_2335386E8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23352D000, log, OS_LOG_TYPE_ERROR, "Unable to get UUID for first revision.", buf, 2u);
}

void sub_233538728(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v8 = objc_msgSend_podcastCollection(a2, v4, v5, v6, v7);
  v13 = objc_msgSend_identifier(v8, v9, v10, v11, v12);
  v14 = 138412290;
  v15 = v13;
  _os_log_error_impl(&dword_23352D000, v3, OS_LOG_TYPE_ERROR, "unable to create a play queue for identifier: %@", &v14, 0xCu);
}

void sub_2335387FC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_23352D000, a2, OS_LOG_TYPE_DEBUG, "Error decoding route UID: %{public}@", &v2, 0xCu);
}

void sub_233538874(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_23352D000, log, OS_LOG_TYPE_DEBUG, "%@ => %@", &v4, 0x16u);
}