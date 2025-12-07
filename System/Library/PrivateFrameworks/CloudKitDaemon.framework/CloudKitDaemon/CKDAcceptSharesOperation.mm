@interface CKDAcceptSharesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_acceptShares;
- (BOOL)_callingParticipantOONForShareMetadata:(id)metadata;
- (BOOL)makeStateTransition;
- (CKDAcceptSharesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_addSelfIdentityToShareMetadataPublicPCS:(id)s serviceType:(unint64_t)type forShareWithURL:(id)l error:(id *)error;
- (id)_keySwapForOONParticipant:(id)participant;
- (id)activityCreate;
- (unint64_t)sharingServiceTypeForShareMetadata:(id)metadata;
- (void)_decryptShareMetadata;
- (void)_fetchAcceptedShares;
- (void)_fetchMetadataForShares;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleShareURLAccepted:(id)accepted forShare:(id)share responseCode:(id)code;
- (void)_performCallbackForURL:(id)l withShare:(id)share error:(id)error;
- (void)_prepareShareMetadata;
- (void)_processAnonymousShares;
- (void)_synchronizeUserKeyRegistryIfNeeded;
- (void)_validateInvitedPCSCanBeDecryptedForShare:(id)share completionHandler:(id)handler;
- (void)main;
@end

@implementation CKDAcceptSharesOperation

- (CKDAcceptSharesOperation)initWithOperationInfo:(id)info container:(id)container
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v47.receiver = self;
  v47.super_class = CKDAcceptSharesOperation;
  v7 = [(CKDDatabaseOperation *)&v47 initWithOperationInfo:infoCopy container:container];
  if (v7)
  {
    v8 = objc_opt_new();
    clientProvidedMetadatasByURL = v7->_clientProvidedMetadatasByURL;
    v7->_clientProvidedMetadatasByURL = v8;

    v10 = objc_opt_new();
    shareURLsToAccept = v7->_shareURLsToAccept;
    v7->_shareURLsToAccept = v10;

    v12 = objc_opt_new();
    shareMetadatasToAcceptByURL = v7->_shareMetadatasToAcceptByURL;
    v7->_shareMetadatasToAcceptByURL = v12;

    v14 = objc_opt_new();
    acceptedShareURLsToFetch = v7->_acceptedShareURLsToFetch;
    v7->_acceptedShareURLsToFetch = v14;

    v16 = objc_opt_new();
    anonymousShareTuplesAcceptAttempted = v7->_anonymousShareTuplesAcceptAttempted;
    v7->_anonymousShareTuplesAcceptAttempted = v16;

    v18 = objc_opt_new();
    anonymousShareTuplesAccepted = v7->_anonymousShareTuplesAccepted;
    v7->_anonymousShareTuplesAccepted = v18;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = infoCopy;
    v22 = objc_msgSend_shareMetadatasToAccept(infoCopy, v20, v21);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v43, v48, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          v31 = v7->_clientProvidedMetadatasByURL;
          v32 = objc_msgSend_invitationURL(v30, v25, v26);
          objc_msgSend_setObject_forKeyedSubscript_(v31, v33, v30, v32);

          v34 = v7->_shareURLsToAccept;
          v37 = objc_msgSend_invitationURL(v30, v35, v36);
          objc_msgSend_addObject_(v34, v38, v37);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v43, v48, 16);
      }

      while (v27);
    }

    v7->_canSynchronizeUserKeyRegistry = 1;
    v39 = objc_opt_new();
    URLsWaitingKRSByServiceType = v7->_URLsWaitingKRSByServiceType;
    v7->_URLsWaitingKRSByServiceType = v39;

    infoCopy = v42;
  }

  return v7;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/accept-shares", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        objc_msgSend_setState_(self, v5, 5);
        objc_msgSend__fetchAcceptedShares(self, v18, v19);
      }

      else
      {
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend__synchronizeUserKeyRegistryIfNeeded(self, v10, v11);
      }

      return 1;
    }

    if (v4 != 1)
    {
      if (v4 == 2)
      {
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__prepareShareMetadata(self, v7, v8);
      }

      return 1;
    }

LABEL_19:
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend__fetchMetadataForShares(self, v24, v25);
    return 1;
  }

  if (v4 > 6)
  {
    if (v4 != 7)
    {
      if (v4 == 8)
      {
        objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
        v14 = objc_msgSend_error(self, v12, v13);
        objc_msgSend_finishWithError_(self, v15, v14);
      }

      return 1;
    }

    v20 = objc_msgSend_shareURLsToAccept(self, v5, v6);
    v23 = objc_msgSend_count(v20, v21, v22);

    if (!v23)
    {
      objc_msgSend_setState_(self, v5, 8);
      objc_msgSend__processAnonymousShares(self, v26, v27);
      return 1;
    }

    goto LABEL_19;
  }

  if (v4 == 5)
  {
    objc_msgSend_setState_(self, v5, 6);
    objc_msgSend__decryptShareMetadata(self, v16, v17);
    return 1;
  }

  objc_msgSend_setState_(self, v5, 7);

  return MEMORY[0x2821F9670](self, sel__acceptShares, v9);
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 7)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDAcceptSharesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854A7F0[state - 2];
  }

  return v5;
}

- (void)_performCallbackForURL:(id)l withShare:(id)share error:(id)error
{
  lCopy = l;
  shareCopy = share;
  errorCopy = error;
  if (!lCopy)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDAcceptSharesOperation.m", 177, @"Invalid parameter not satisfying: %@", @"shareURL");
  }

  v14 = objc_msgSend_shareURLsToAccept(self, v11, v12);
  objc_msgSend_removeObject_(v14, v15, lCopy);

  v18 = objc_msgSend_acceptedShareURLsToFetch(self, v16, v17);
  objc_msgSend_removeObject_(v18, v19, lCopy);

  v22 = objc_msgSend_callbackQueue(self, v20, v21);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252238F4;
  block[3] = &unk_2785463D0;
  block[4] = self;
  v29 = lCopy;
  v30 = shareCopy;
  v31 = errorCopy;
  v23 = errorCopy;
  v24 = shareCopy;
  v25 = lCopy;
  dispatch_async(v22, block);
}

- (void)_handleShareURLAccepted:(id)accepted forShare:(id)share responseCode:(id)code
{
  v147 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  shareCopy = share;
  codeCopy = code;
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = sub_225074090;
  v141 = sub_2250735D4;
  v142 = 0;
  v13 = objc_msgSend_container(self, v11, v12);
  shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v13, v14, v15);
  objc_msgSend_setSerializeOwnerInfo_(shareCopy, v17, shouldSerializeOwnerInfo);

  if (objc_msgSend_code(codeCopy, v18, v19) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v144 = acceptedCopy;
      _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Share with URL %@ was successfully accepted", buf, 0xCu);
    }

    v25 = objc_msgSend_container(self, v23, v24);
    v28 = objc_msgSend_options(v25, v26, v27);
    if (objc_msgSend_useAnonymousToServerShareParticipants(v28, v29, v30))
    {
      v33 = objc_msgSend_anonymousShareTuplesAcceptAttempted(self, v31, v32);
      v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, acceptedCopy);
      v36 = v35 == 0;

      if (v36)
      {
LABEL_10:
        v44 = objc_msgSend_shareMetadatasToAcceptByURL(self, v37, v38);
        v46 = objc_msgSend_objectForKeyedSubscript_(v44, v45, acceptedCopy);

        v49 = objc_msgSend_host(acceptedCopy, v47, v48);
        objc_msgSend_setDisplayedHostname_(shareCopy, v50, v49);

        if ((objc_msgSend_isCallingParticipantUsingOTL(v46, v51, v52) & 1) == 0)
        {
          objc_msgSend_setMutableURL_(shareCopy, v53, acceptedCopy);
        }

        v55 = objc_msgSend_stateTransitionGroup(self, v53, v54);
        dispatch_group_enter(v55);

        v58 = objc_msgSend_container(self, v56, v57);
        v61 = objc_msgSend_topmostParentOperation(self, v59, v60);
        v64 = objc_msgSend_operationID(v61, v62, v63);
        v132[0] = MEMORY[0x277D85DD0];
        v132[1] = 3221225472;
        v132[2] = sub_2252240CC;
        v132[3] = &unk_27854A780;
        v136 = &v137;
        v133 = shareCopy;
        selfCopy = self;
        v135 = acceptedCopy;
        objc_msgSend__prepPCSDataWithContainer_databaseScope_removeServerSpecifiedKeys_requestorOperationID_completionHandler_(v133, v65, v58, 3, 1, v64, v132);

        goto LABEL_34;
      }

      v25 = objc_msgSend_anonymousShareTuplesAccepted(self, v37, v38);
      v28 = objc_msgSend_anonymousShareTuplesAcceptAttempted(self, v39, v40);
      v42 = objc_msgSend_objectForKeyedSubscript_(v28, v41, acceptedCopy);
      objc_msgSend_addObject_(v25, v43, v42);
    }

    goto LABEL_10;
  }

  v66 = objc_msgSend_error(codeCopy, v20, v21);
  v69 = objc_msgSend_clientError(v66, v67, v68);
  if (objc_msgSend_type(v69, v70, v71) == 52)
  {
    goto LABEL_16;
  }

  v74 = objc_msgSend_error(codeCopy, v72, v73);
  v77 = objc_msgSend_clientError(v74, v75, v76);
  if (objc_msgSend_type(v77, v78, v79) == 53)
  {

LABEL_16:
LABEL_17:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v82 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v144 = acceptedCopy;
      _os_log_impl(&dword_22506F000, v82, OS_LOG_TYPE_INFO, "PCS oplock failure for share with url %@.", buf, 0xCu);
    }

    goto LABEL_34;
  }

  v83 = objc_msgSend_error(codeCopy, v80, v81);
  v86 = objc_msgSend_clientError(v83, v84, v85);
  v131 = objc_msgSend_type(v86, v87, v88) == 15;

  if (v131)
  {
    goto LABEL_17;
  }

  v91 = objc_msgSend_error(codeCopy, v89, v90);
  v94 = objc_msgSend_clientError(v91, v92, v93);
  v97 = objc_msgSend_type(v94, v95, v96) == 90;

  v98 = *MEMORY[0x277CBC878];
  if (v97)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v98);
    }

    v99 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v144 = acceptedCopy;
      _os_log_error_impl(&dword_22506F000, v99, OS_LOG_TYPE_ERROR, "Participant can be found on the share, but the participantID sent in request does not belong to the found participant. Share url: %@", buf, 0xCu);
    }

    v100 = MEMORY[0x277CBC560];
    v101 = sub_2253962A4(codeCopy);
    v104 = objc_msgSend_error(codeCopy, v102, v103);
    v107 = objc_msgSend_errorDescription(v104, v105, v106);
    v109 = objc_msgSend_errorWithDomain_code_format_(v100, v108, *MEMORY[0x277CBC120], v101, @"Error accepting share %@: %@", acceptedCopy, v107);
    v110 = v138[5];
    v138[5] = v109;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v98);
    }

    v111 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v114 = objc_msgSend_error(codeCopy, v112, v113);
      v117 = objc_msgSend_errorDescription(v114, v115, v116);
      *buf = 138412546;
      v144 = acceptedCopy;
      v145 = 2114;
      v146 = v117;
      _os_log_impl(&dword_22506F000, v111, OS_LOG_TYPE_INFO, "Error accepting share with URL %@: %{public}@", buf, 0x16u);
    }

    v118 = MEMORY[0x277CBC560];
    v119 = sub_2253962A4(codeCopy);
    v104 = objc_msgSend_request(self, v120, v121);
    v107 = sub_225395734(v104, codeCopy);
    v110 = objc_msgSend_error(codeCopy, v122, v123);
    v126 = objc_msgSend_errorDescription(v110, v124, v125);
    v128 = objc_msgSend_errorWithDomain_code_userInfo_format_(v118, v127, *MEMORY[0x277CBC120], v119, v107, @"Error accepting share %@: %@", acceptedCopy, v126);
    v129 = v138[5];
    v138[5] = v128;
  }

  objc_msgSend__performCallbackForURL_withShare_error_(self, v130, acceptedCopy, shareCopy, v138[5]);
LABEL_34:
  _Block_object_dispose(&v137, 8);
}

- (BOOL)_acceptShares
{
  v270 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_shareURLsToAccept(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  if (v6)
  {
    v253 = objc_msgSend_container(self, v7, v8);
    v247 = objc_opt_new();
    v263 = 0u;
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    obj = objc_msgSend_shareMetadatasToAcceptByURL(self, v9, v10);
    v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v263, v269, 16);
    if (!v252)
    {
      goto LABEL_63;
    }

    v251 = *v264;
    v248 = *MEMORY[0x277CBC120];
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v264 != v251)
        {
          objc_enumerationMutation(obj);
        }

        v254 = *(*(&v263 + 1) + 8 * v14);
        v15 = objc_msgSend_shareMetadatasToAcceptByURL(self, v12, v13);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v254);

        v18 = objc_opt_new();
        objc_msgSend_setShareURL_(v18, v19, v254);
        v22 = objc_msgSend_share(v17, v20, v21);
        v25 = objc_msgSend_recordID(v22, v23, v24);
        objc_msgSend_setShareRecordID_(v18, v26, v25);

        v29 = objc_msgSend_acceptedInProcess(v17, v27, v28);
        objc_msgSend_setAcceptedInProcess_(v18, v30, v29);
        v33 = objc_msgSend_participantRole(v17, v31, v32);
        v35 = objc_msgSend__callingParticipantOONForShareMetadata_(self, v34, v17);
        v38 = objc_msgSend_pcsManager(v253, v36, v37);
        IsManatee = objc_msgSend_currentServiceIsManatee(v38, v39, v40);

        v44 = objc_msgSend_options(v253, v42, v43);
        v47 = objc_msgSend_useAnonymousToServerShareParticipants(v44, v45, v46);

        if ((v35 & IsManatee) == 1)
        {
          v217 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v217, v218, a2, self, @"CKDAcceptSharesOperation.m", 275, @"OON Participants not supported in manatee");
        }

        if (((v33 == 4) & IsManatee) == 1)
        {
          v219 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v219, v220, a2, self, @"CKDAcceptSharesOperation.m", 276, @"Public sharing not supported in manatee");
        }

        if (((v33 == 4) & v47) == 1)
        {
          v221 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v221, v222, a2, self, @"CKDAcceptSharesOperation.m", 277, @"Public sharing not supported when using anonymous to server share participants");
        }

        if ((v35 & v47) == 1)
        {
          v223 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v223, v224, a2, self, @"CKDAcceptSharesOperation.m", 278, @"OON participants not supported when using anonymous to server share participants");
        }

        if (v33 == 4)
        {
          v50 = objc_msgSend_share(v17, v48, v49);
          v53 = objc_msgSend_etag(v50, v51, v52);
          objc_msgSend_setEtag_(v18, v54, v53);

          v57 = objc_msgSend_share(v17, v55, v56);
          v60 = objc_msgSend_publicProtectionData(v57, v58, v59);
          objc_msgSend_setPublicPCSData_(v18, v61, v60);

          v64 = objc_msgSend_share(v17, v62, v63);
          v67 = objc_msgSend_publicProtectionEtag(v64, v65, v66);
          objc_msgSend_setPublicPCSEtag_(v18, v68, v67);
LABEL_20:

          goto LABEL_21;
        }

        if (((IsManatee | v47) & 1) != 0 || v35)
        {
          v64 = objc_msgSend_callingParticipant(v17, v48, v49);
          v67 = objc_msgSend_protectionInfo(v64, v69, v70);
          objc_msgSend_setPppcsProtectionInfo_(v18, v71, v67);
          goto LABEL_20;
        }

LABEL_21:
        v72 = objc_msgSend_callingParticipant(v17, v48, v49);
        v75 = objc_msgSend_participantID(v72, v73, v74);
        objc_msgSend_setParticipantID_(v18, v76, v75);

        if (*MEMORY[0x277CBC810] == 1)
        {
          v79 = objc_msgSend_unitTestOverrides(self, v77, v78);
          v81 = objc_msgSend_objectForKeyedSubscript_(v79, v80, @"OverwriteParticipantID");
          v82 = v81 == 0;

          if (!v82)
          {
            v83 = objc_msgSend_unitTestOverrides(self, v77, v78);
            v85 = objc_msgSend_objectForKeyedSubscript_(v83, v84, @"OverwriteParticipantID");
            objc_msgSend_setParticipantID_(v18, v86, v85);
          }
        }

        if (!v47)
        {
          v91 = objc_msgSend_sharingServiceTypeForShareMetadata_(self, v77, v17);
          v94 = objc_msgSend_pcsManager(v253, v92, v93);
          v96 = objc_msgSend_publicKeyVersionForServiceType_(v94, v95, v91);
          objc_msgSend_setPublicKeyVersion_(v18, v97, v96);

          v100 = objc_msgSend_pcsManager(v253, v98, v99);
          v262 = 0;
          v102 = objc_msgSend_participantPublicKeyForServiceType_error_(v100, v101, v91, &v262);
          v103 = v262;
          objc_msgSend_setPublicKey_(v18, v104, v102);

          v107 = objc_msgSend_publicKey(v18, v105, v106);
          if (v107)
          {
            v108 = v103 == 0;
          }

          else
          {
            v108 = 0;
          }

          v109 = v108;

          if ((v109 & 1) == 0)
          {
            objc_msgSend__performCallbackForURL_withShare_error_(self, v110, v254, 0, v103);

            goto LABEL_61;
          }

          goto LABEL_46;
        }

        if (*MEMORY[0x277CBC810] == 1)
        {
          v87 = objc_msgSend_unitTestOverrides(self, v77, v78);
          v89 = objc_msgSend_objectForKeyedSubscript_(v87, v88, @"AcceptA2AShareUsingVersionOneAnonymousIdentifier");
          v90 = v89 != 0;
        }

        else
        {
          v90 = 0;
        }

        v111 = objc_msgSend_pcsManager(v253, v77, v78);
        v114 = objc_msgSend_share(v17, v112, v113);
        v117 = objc_msgSend_recordID(v114, v115, v116);
        v120 = objc_msgSend_containerID(v253, v118, v119);
        v122 = objc_msgSend_generateAnonymousCKUserIDForCurrentUserInShare_containerID_acceptA2AShareUsingVersionOneAnonymousIdentifier_(v111, v121, v117, v120, v90);

        if (v122)
        {
          v125 = objc_msgSend_share(v17, v123, v124);
          v128 = objc_msgSend_recordID(v125, v126, v127);
          v250 = objc_msgSend_copyWithAnonymousCKUserID_(v128, v129, v122);

          v132 = objc_msgSend_share(v17, v130, v131);
          objc_msgSend_replaceRecordIDWith_(v132, v133, v250);

          v136 = objc_msgSend_share(v17, v134, v135);
          v139 = objc_msgSend_recordID(v136, v137, v138);
          objc_msgSend_setShareRecordID_(v18, v140, v139);

          objc_msgSend_setAnonymousCKUserID_(v18, v141, v122);
          v142 = [CKDAnonymousShareTuple alloc];
          v145 = objc_msgSend_share(v17, v143, v144);
          v148 = objc_msgSend_recordID(v145, v146, v147);
          v151 = objc_msgSend_zoneID(v148, v149, v150);
          v154 = objc_msgSend_share(v17, v152, v153);
          v157 = objc_msgSend_recordID(v154, v155, v156);
          v159 = objc_msgSend_initWithZoneID_shareID_parentZoneID_(v142, v158, v151, v157, 0);

          if (v159)
          {
            v162 = objc_msgSend_anonymousShareTuplesAcceptAttempted(self, v160, v161);
            objc_msgSend_setObject_forKey_(v162, v163, v159, v254);
          }

          v164 = objc_msgSend_share(v17, v160, v161);
          v167 = objc_msgSend_myParticipantPCS(v164, v165, v166) == 0;

          if (v167)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v181 = *MEMORY[0x277CBC830];
            v182 = os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR);
            v184 = @"Share does not have the per-participant PCS to generate a signature for accepting share at %@";
            if (v182)
            {
              v185 = v181;
              v188 = objc_msgSend_share(v17, v186, v187);
              v191 = objc_msgSend_recordID(v188, v189, v190);
              *buf = 138412290;
              v268 = v191;
              _os_log_error_impl(&dword_22506F000, v185, OS_LOG_TYPE_ERROR, "Share does not have the per-participant PCS to generate a signature. Failing to accept share %@.", buf, 0xCu);

              v184 = @"Share does not have the per-participant PCS to generate a signature for accepting share at %@";
            }
          }

          else
          {
            v170 = objc_msgSend_share(v17, v168, v169);
            objc_msgSend_myParticipantPCS(v170, v171, v172);
            v173 = PCSFPCopyCurrentPrivateKey();

            v174 = *MEMORY[0x277CBC878];
            if (v173)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v174);
              }

              v175 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                v203 = v175;
                v206 = objc_msgSend_share(v17, v204, v205);
                v209 = objc_msgSend_recordID(v206, v207, v208);
                *buf = 138412290;
                v268 = v209;
                _os_log_error_impl(&dword_22506F000, v203, OS_LOG_TYPE_ERROR, "Setting per-participant PCS for signing ShareAcceptRequest for share %@.", buf, 0xCu);
              }

              objc_msgSend_setSigningPCSIdentity_(v18, v176, v173);
              CFRelease(v173);

LABEL_46:
              objc_msgSend_addObject_(v247, v110, v18);
              goto LABEL_61;
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v174);
            }

            v192 = *MEMORY[0x277CBC830];
            v193 = os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR);
            v184 = @"Share does not have the per-participant to generate a signature for accepting share at %@";
            if (v193)
            {
              v210 = v192;
              v213 = objc_msgSend_share(v17, v211, v212);
              v216 = objc_msgSend_recordID(v213, v214, v215);
              *buf = 138412290;
              v268 = v216;
              _os_log_error_impl(&dword_22506F000, v210, OS_LOG_TYPE_ERROR, "Failed to get private key from per-participant PCS to generate a signature. Failing to accept share %@.", buf, 0xCu);

              v184 = @"Share does not have the per-participant to generate a signature for accepting share at %@";
            }
          }

          v194 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v183, v248, 5005, v184, v254);
          objc_msgSend__performCallbackForURL_withShare_error_(self, v195, v254, 0, v194);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v177 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v196 = v177;
            v199 = objc_msgSend_share(v17, v197, v198);
            v202 = objc_msgSend_recordID(v199, v200, v201);
            *buf = 138412290;
            v268 = v202;
            _os_log_error_impl(&dword_22506F000, v196, OS_LOG_TYPE_ERROR, "Could not generate anonymous CK userID to accept share %@. Failing to accept share.", buf, 0xCu);
          }

          v179 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v178, v248, 5005, @"Couldn't generate an anonymous userID to accept share at %@", v254);
          objc_msgSend__performCallbackForURL_withShare_error_(self, v180, v254, 0, v179);
        }

LABEL_61:

        ++v14;
      }

      while (v252 != v14);
      v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v263, v269, 16);
      if (!v252)
      {
LABEL_63:

        v227 = objc_msgSend_count(v247, v225, v226);
        v230 = v227 != 0;
        if (v227)
        {
          v231 = objc_msgSend_numShareAcceptAttempts(self, v228, v229);
          objc_msgSend_setNumShareAcceptAttempts_(self, v232, v231 + 1);
          v233 = [CKDAcceptSharesURLRequest alloc];
          v235 = objc_msgSend_initWithOperation_shareMetadatasToAccept_(v233, v234, self, v247);
          objc_initWeak(buf, self);
          objc_initWeak(&location, v235);
          v238 = objc_msgSend_stateTransitionGroup(self, v236, v237);
          dispatch_group_enter(v238);

          v259[0] = MEMORY[0x277D85DD0];
          v259[1] = 3221225472;
          v259[2] = sub_225225300;
          v259[3] = &unk_27854A6E0;
          objc_copyWeak(&v260, buf);
          objc_msgSend_setShareAcceptedBlock_(v235, v239, v259);
          v256[0] = MEMORY[0x277D85DD0];
          v256[1] = 3221225472;
          v256[2] = sub_22522538C;
          v256[3] = &unk_278548748;
          objc_copyWeak(&v257, buf);
          objc_copyWeak(&v258, &location);
          objc_msgSend_setCompletionBlock_(v235, v240, v256);
          objc_msgSend_setRequest_(self, v241, v235);
          objc_msgSend_performRequest_(v253, v242, v235);
          objc_destroyWeak(&v258);
          objc_destroyWeak(&v257);
          objc_destroyWeak(&v260);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v244 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22506F000, v244, OS_LOG_TYPE_INFO, "No shares to accept", buf, 2u);
          }
        }

        return v230;
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v243 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v243, OS_LOG_TYPE_INFO, "No shares to accept", buf, 2u);
  }

  return 0;
}

- (unint64_t)sharingServiceTypeForShareMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = objc_msgSend_containerID(metadataCopy, v4, v5);
  v9 = objc_msgSend_specialContainerType(v6, v7, v8);

  v12 = objc_msgSend_participantRole(metadataCopy, v10, v11);
  v15 = objc_msgSend_callingParticipant(metadataCopy, v13, v14);

  v18 = objc_msgSend_userIdentity(v15, v16, v17);
  v21 = objc_msgSend_publicKeyVersion(v18, v19, v20) < 3;

  v22 = 1;
  if (v9 != 4)
  {
    v22 = 2;
  }

  if (v12 == 4)
  {
    return v22;
  }

  else
  {
    return 2 * v21;
  }
}

- (void)_decryptShareMetadata
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareURLsToAccept(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = objc_msgSend_shareMetadatasToAcceptByURL(self, v8, v9);
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v53, v57, 16);
    if (v48)
    {
      v47 = *v54;
      do
      {
        v13 = 0;
        do
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v53 + 1) + 8 * v13);
          v15 = objc_msgSend_shareMetadatasToAcceptByURL(self, v11, v12);
          v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14);

          v20 = objc_msgSend_clientProvidedMetadatasByURL(self, v18, v19);
          v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v14);

          v24 = objc_msgSend_sharingServiceTypeForShareMetadata_(self, v23, v17);
          v27 = objc_msgSend_stateTransitionGroup(self, v25, v26);
          dispatch_group_enter(v27);

          v30 = objc_msgSend_container(self, v28, v29);
          v33 = objc_msgSend_pcsManager(v30, v31, v32);
          v36 = objc_msgSend_share(v17, v34, v35);
          v39 = objc_msgSend_topmostParentOperation(self, v37, v38);
          v42 = objc_msgSend_operationID(v39, v40, v41);
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = sub_225225830;
          v49[3] = &unk_27854A708;
          v50 = v22;
          selfCopy = self;
          v52 = v17;
          v43 = v17;
          v44 = v22;
          objc_msgSend_pcsDataFromFetchedShare_withServiceType_requestorOperationID_completionHandler_(v33, v45, v36, v24, v42, v49);

          ++v13;
        }

        while (v48 != v13);
        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v53, v57, 16);
      }

      while (v48);
    }
  }
}

- (void)_fetchAcceptedShares
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_acceptedShareURLsToFetch(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v8 = objc_opt_new();
    v49 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = objc_msgSend_acceptedShareURLsToFetch(self, v9, v10);
    v14 = objc_msgSend_copy(v11, v12, v13);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v52, v58, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v53;
      v48 = *MEMORY[0x277CBC120];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          v23 = objc_msgSend_shareMetadatasToAcceptByURL(self, v17, v18, v48);
          v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v22);

          v28 = objc_msgSend_share(v25, v26, v27);
          v31 = objc_msgSend_recordID(v28, v29, v30);

          if (v31)
          {
            objc_msgSend_addObject_(v8, v32, v31);
            objc_msgSend_setObject_forKeyedSubscript_(v49, v33, v22, v31);
          }

          else
          {
            v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, v48, 2003, @"Fetched share metadata didn't have a share ID");
            objc_msgSend__performCallbackForURL_withShare_error_(self, v35, v22, 0, v34);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v52, v58, 16);
      }

      while (v19);
    }

    v36 = v8;
    if (objc_msgSend_count(v8, v37, v38))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v39 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v8;
        _os_log_impl(&dword_22506F000, v39, OS_LOG_TYPE_INFO, "Fetching shares for already accepted share IDs: %@", buf, 0xCu);
      }

      v42 = objc_msgSend_stateTransitionGroup(self, v40, v41);
      dispatch_group_enter(v42);

      v43 = objc_opt_new();
      objc_msgSend_setRecordIDs_(v43, v44, v8);
      objc_msgSend_setDatabaseScope_(v43, v45, 3);
      v46 = objc_opt_class();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_225226098;
      v50[3] = &unk_278548C48;
      v50[4] = self;
      v51 = v49;
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v47, v46, v43, v50);
    }
  }
}

- (id)_addSelfIdentityToShareMetadataPublicPCS:(id)s serviceType:(unint64_t)type forShareWithURL:(id)l error:(id *)error
{
  v130 = *MEMORY[0x277D85DE8];
  sCopy = s;
  lCopy = l;
  v14 = objc_msgSend_container(self, v12, v13);
  v17 = objc_msgSend_share(sCopy, v15, v16);
  v20 = objc_msgSend_publicProtectionData(v17, v18, v19);
  v23 = MEMORY[0x277CBC880];
  v24 = MEMORY[0x277CBC830];
  if (!v20)
  {

    goto LABEL_20;
  }

  v25 = v20;
  v26 = objc_msgSend_privateToken(sCopy, v21, v22);

  if (!v26)
  {
LABEL_20:
    if (*v23 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v69 = *v24;
    if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v125 = lCopy;
      _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Share metadata for the share at URL %@ doesn't have protection data on it, skipping", buf, 0xCu);
    }

    v40 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v70, *MEMORY[0x277CBC120], 5001, @"Share metadata for the share at URL %@ doesn't have protection data on it", lCopy);
    goto LABEL_37;
  }

  if (*v23 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
  {
    v30 = v27;
    v33 = objc_msgSend_privateToken(sCopy, v31, v32);
    *buf = 138412546;
    v125 = lCopy;
    v126 = 2112;
    v127 = v33;
    _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Preparing public PCS metadata for share at URL %@ using public sharing token %@", buf, 0x16u);
  }

  v34 = objc_msgSend_pcsManager(v14, v28, v29);
  v37 = objc_msgSend_privateToken(sCopy, v35, v36);
  v123 = 0;
  v39 = objc_msgSend_createSharingIdentityFromData_error_(v34, v38, v37, &v123);
  v40 = v123;

  if (!v39 || v40)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v71 = *v24;
    if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v95 = v71;
      v98 = objc_msgSend_privateToken(sCopy, v96, v97);
      *buf = 138412546;
      v125 = v98;
      v126 = 2112;
      v127 = v40;
      _os_log_error_impl(&dword_22506F000, v95, OS_LOG_TYPE_ERROR, "Couldn't create a sharing public identity from %@: %@", buf, 0x16u);
    }

    if (!v39)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  errorCopy = error;
  v43 = objc_msgSend_pcsManager(v14, v41, v42);
  v46 = objc_msgSend_share(sCopy, v44, v45);
  v49 = objc_msgSend_publicProtectionData(v46, v47, v48);
  v122 = 0;
  v50 = v39;
  v52 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(v43, v51, v49, v39, &v122);
  v40 = v122;

  cf = v52;
  if (!v52 || v40)
  {
    v72 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = v50;
    v73 = *v72;
    error = errorCopy;
    if (os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
    {
      v99 = v73;
      v102 = objc_msgSend_share(sCopy, v100, v101);
      v105 = objc_msgSend_publicProtectionData(v102, v103, v104);
      *buf = 138543618;
      v125 = v105;
      v126 = 2112;
      v127 = v39;
      _os_log_error_impl(&dword_22506F000, v99, OS_LOG_TYPE_ERROR, "Couldn't create a public PCS from the PCS data %{public}@ for identity %@", buf, 0x16u);
    }

    if (cf)
    {
      goto LABEL_51;
    }

LABEL_36:
    CFRelease(v39);
LABEL_37:
    v74 = 0;
    v75 = 0;
    goto LABEL_38;
  }

  v55 = objc_msgSend_pcsManager(v14, v53, v54);
  v57 = v55;
  if (type == 2)
  {
    v121 = 0;
    v58 = objc_msgSend_copyDiversifiedPublicIdentityForService_withError_(v55, v56, 2, &v121);
    v40 = v121;

    v61 = MEMORY[0x277CBC830];
    v39 = v50;
    if (!v58 || v40)
    {
      error = errorCopy;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v82 = *v61;
      if (os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
      {
        v108 = v82;
        v109 = sub_2252927B0(2);
        *buf = 138543874;
        v125 = v109;
        v126 = 2112;
        v127 = lCopy;
        v128 = 2112;
        v129 = v40;
        _os_log_error_impl(&dword_22506F000, v108, OS_LOG_TYPE_ERROR, "Couldn't get a diversified %{public}@ identity to the public PCS for share at URL %@: %@", buf, 0x20u);

        if (v40)
        {
          goto LABEL_72;
        }
      }

      else if (v40)
      {
LABEL_72:
        v75 = 0;
        v74 = 0;
        goto LABEL_73;
      }

      v83 = MEMORY[0x277CBC560];
      v84 = *MEMORY[0x277CBC120];
      v75 = sub_2252927B0(2);
      v40 = objc_msgSend_errorWithDomain_code_format_(v83, v85, v84, 5000, @"Couldn't get a diversified %@ identity to accept share at %@", v75, lCopy);
LABEL_71:

      goto LABEL_72;
    }

    v62 = objc_msgSend_pcsManager(v14, v59, v60);
    v40 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v62, v63, v58, cf, 0);

    error = errorCopy;
    if (v40)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v66 = *v61;
      if (os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
      {
        v67 = v66;
        v68 = sub_2252927B0(2);
        *buf = 138543874;
        v125 = v68;
        v126 = 2112;
        v127 = lCopy;
        v128 = 2112;
        v129 = v40;
        _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "Couldn't add our %{public}@ identity to the public PCS for share at URL %@: %@", buf, 0x20u);
      }

      goto LABEL_72;
    }

LABEL_58:
    v86 = objc_msgSend_pcsManager(v14, v64, v65);
    v120 = 0;
    v75 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v86, v87, cf, 0, &v120);
    v40 = v120;

    if (v75 && !v40)
    {
      v90 = objc_msgSend_pcsManager(v14, v88, v89);
      v119 = 0;
      v74 = objc_msgSend_etagFromSharePCS_error_(v90, v91, cf, &v119);
      v40 = v119;

      if (v74 && !v40)
      {
        goto LABEL_73;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v92 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v110 = v92;
        v117 = objc_msgSend_share(sCopy, v111, v112);
        v115 = objc_msgSend_recordID(v117, v113, v114);
        *buf = 138412290;
        v125 = v115;
        _os_log_error_impl(&dword_22506F000, v110, OS_LOG_TYPE_ERROR, "Couldn't get an etag for public PCS data on share %@", buf, 0xCu);
      }

      goto LABEL_72;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v93 = *v61;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v125 = lCopy;
      v126 = 2112;
      v127 = v40;
      _os_log_error_impl(&dword_22506F000, v93, OS_LOG_TYPE_ERROR, "Couldn't serialize share public PCS for share at URL %@: %@", buf, 0x16u);
    }

    goto LABEL_71;
  }

  v40 = objc_msgSend_addIdentityForService_toPCS_(v55, v56, type, v52);

  v61 = MEMORY[0x277CBC830];
  v39 = v50;
  if (!v40)
  {
    v58 = 0;
    error = errorCopy;
    goto LABEL_58;
  }

  error = errorCopy;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v81 = *v61;
  if (os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
  {
    v106 = v81;
    v107 = sub_2252927B0(type);
    *buf = 138543874;
    v125 = v107;
    v126 = 2112;
    v127 = lCopy;
    v128 = 2112;
    v129 = v40;
    _os_log_error_impl(&dword_22506F000, v106, OS_LOG_TYPE_ERROR, "Couldn't add our %{public}@ identity to the public PCS for share at URL %@: %@", buf, 0x20u);
  }

LABEL_51:
  v75 = 0;
  v74 = 0;
  v58 = 0;
LABEL_73:
  CFRelease(cf);
  CFRelease(v39);
  if (v58)
  {
    CFRelease(v58);
  }

  if (v75)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v94 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v125 = lCopy;
      _os_log_impl(&dword_22506F000, v94, OS_LOG_TYPE_INFO, "Successfully added our public identity to the share's public PCS at %@", buf, 0xCu);
    }
  }

LABEL_38:
  if (error)
  {
    v76 = v40;
    *error = v40;
  }

  if (v75)
  {
    v77 = objc_opt_new();
    objc_msgSend_setPublicPCSData_(v77, v78, v75);
    objc_msgSend_setPublicPCSEtag_(v77, v79, v74);
  }

  else
  {
    v77 = 0;
  }

  return v77;
}

- (void)_validateInvitedPCSCanBeDecryptedForShare:(id)share completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v8;
    v35 = objc_msgSend_callingParticipant(shareCopy, v33, v34);
    *buf = 138412290;
    v40 = v35;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Decrypting the per-participant PCS for calling participant %@", buf, 0xCu);
  }

  v10 = objc_msgSend_sharingServiceTypeForShareMetadata_(self, v9, shareCopy);
  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_pcsManager(v13, v14, v15);
  v19 = objc_msgSend_share(shareCopy, v17, v18);
  v22 = objc_msgSend_invitedProtectionData(v19, v20, v21);
  v25 = objc_msgSend_callingParticipant(shareCopy, v23, v24);
  v28 = objc_msgSend_protectionInfo(v25, v26, v27);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_225227328;
  v36[3] = &unk_27854A758;
  v37 = shareCopy;
  v38 = handlerCopy;
  v29 = handlerCopy;
  v30 = shareCopy;
  objc_msgSend_canDecryptInvitedProtectionData_participantProtectionInfo_serviceType_completionHandler_(v16, v31, v22, v28, v10, v36);
}

- (id)_keySwapForOONParticipant:(id)participant
{
  v128 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v8 = objc_msgSend_privateToken(participantCopy, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_callingParticipant(participantCopy, v9, v10);
    v15 = objc_msgSend_userIdentity(v12, v13, v14);
    v18 = objc_msgSend_outOfNetworkPrivateKey(v15, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_callingParticipant(participantCopy, v19, v20);
      v24 = objc_msgSend_container(self, v22, v23);
      v27 = objc_msgSend_pcsManager(v24, v25, v26);
      v121 = 0;
      v29 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(v27, v28, 2, &v121);
      v30 = v121;

      if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(self, v31, @"ForceUserKeyRegistrySyncRetryDuringShareAccept"))
      {

        v29 = 0;
        v33 = v30 == 0;
      }

      else
      {
        v33 = v30 == 0;
        if (!v30 && v29)
        {
          v115 = a2;
          v118 = v29;
          v119 = v21;
          v117 = objc_msgSend_container(self, v31, v32);
          v116 = objc_msgSend_pcsManager(v117, v42, v43);
          v46 = objc_msgSend_callingParticipant(participantCopy, v44, v45);
          v49 = objc_msgSend_userIdentity(v46, v47, v48);
          v52 = objc_msgSend_outOfNetworkPrivateKey(v49, v50, v51);
          v55 = objc_msgSend_privateToken(participantCopy, v53, v54);
          v58 = objc_msgSend_callingParticipant(participantCopy, v56, v57);
          v61 = objc_msgSend_protectionInfo(v58, v59, v60);
          v120 = 0;
          v63 = objc_msgSend_createProtectionInfoFromOONPrivateKey_privateToken_OONProtectionInfo_error_(v116, v62, v52, v55, v61, &v120);
          v64 = v120;

          if (v63)
          {
            v67 = v64;
            v21 = v119;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v29 = v118;
            v68 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v71 = v68;
              v74 = objc_msgSend_participantID(v119, v72, v73);
              v77 = objc_msgSend_share(participantCopy, v75, v76);
              v80 = objc_msgSend_recordID(v77, v78, v79);
              *buf = 138412546;
              v123 = v74;
              v124 = 2112;
              v125 = v80;
              _os_log_impl(&dword_22506F000, v71, OS_LOG_TYPE_INFO, "Create protection info in OON key-swap for participantID: %@, recordID: %@", buf, 0x16u);
            }

            v81 = objc_msgSend_callingParticipant(participantCopy, v69, v70);
            objc_msgSend_setProtectionInfo_(v81, v82, v63);

            v85 = objc_msgSend_callingParticipant(participantCopy, v83, v84);
            v88 = objc_msgSend_userIdentity(v85, v86, v87);
            objc_msgSend_setPublicSharingKey_(v88, v89, v118);

            v92 = objc_msgSend_callingParticipant(participantCopy, v90, v91);
            v95 = objc_msgSend_userIdentity(v92, v93, v94);
            objc_msgSend_setPublicKeyVersion_(v95, v96, 2);

            v41 = 0;
            goto LABEL_28;
          }

          v101 = v64;
          if (!v64)
          {
            v113 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v65, v66);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v113, v114, v115, self, @"CKDAcceptSharesOperation.m", 676, @"OON key-swap failed, but without error");
          }

          v29 = v118;
          v21 = v119;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v102 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v103 = v102;
            v106 = objc_msgSend_participantID(v119, v104, v105);
            v109 = objc_msgSend_share(participantCopy, v107, v108);
            v112 = objc_msgSend_recordID(v109, v110, v111);
            *buf = 138412802;
            v123 = v106;
            v124 = 2112;
            v125 = v112;
            v126 = 2112;
            v127 = v101;
            _os_log_error_impl(&dword_22506F000, v103, OS_LOG_TYPE_ERROR, "Failed to create protection info in OON key-swap for participantID: %@, recordID: %@, error: %@", buf, 0x20u);
          }

          v99 = v101;
LABEL_27:
          v67 = v99;
          v41 = v99;
LABEL_28:

          goto LABEL_29;
        }
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v97 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v123 = v30;
        _os_log_error_impl(&dword_22506F000, v97, OS_LOG_TYPE_ERROR, "Couldn't create a diversified public key for the owner participant: %@", buf, 0xCu);
        if (!v33)
        {
          goto LABEL_26;
        }
      }

      else if (!v33)
      {
LABEL_26:
        v99 = v30;
        goto LABEL_27;
      }

      v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v98, *MEMORY[0x277CBC120], 5000, @"Couldn't create a diversified public key for the owner participant");
      goto LABEL_26;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v36 = v34;
    v39 = objc_msgSend_privateToken(participantCopy, v37, v38);
    v40 = "outOfNetworkPrivateKey";
    if (!v39)
    {
      v40 = "privateToken";
    }

    *buf = 136315138;
    v123 = v40;
    _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "OON keyswap: Not swapping OON keys as %s is missing", buf, 0xCu);
  }

  v41 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 5000, @"We don't have the necessary keys to perform an OON key swap");
LABEL_29:

  return v41;
}

- (BOOL)_callingParticipantOONForShareMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = objc_msgSend_callingParticipant(metadataCopy, v4, v5);
  v9 = objc_msgSend_userIdentity(v6, v7, v8);
  if (objc_msgSend_hasiCloudAccount(v9, v10, v11))
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v15 = objc_msgSend_callingParticipant(metadataCopy, v12, v13);
    v14 = objc_msgSend_isAnonymousInvitedParticipant(v15, v16, v17) ^ 1;
  }

  return v14;
}

- (void)_prepareShareMetadata
{
  v229 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareURLsToAccept(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v10 = objc_msgSend_shareMetadatasToAcceptByURL(self, v8, v9);
    obj = objc_msgSend_allKeys(v10, v11, v12);

    v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v220, v228, 16);
    if (!v206)
    {
      goto LABEL_77;
    }

    v204 = *MEMORY[0x277CBC120];
    v205 = *v221;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v221 != v205)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v220 + 1) + 8 * v16);
        v18 = objc_msgSend_shareMetadatasToAcceptByURL(self, v14, v15);
        v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17);

        v214 = 0;
        v215 = &v214;
        v216 = 0x3032000000;
        v217 = sub_225074090;
        v218 = sub_2250735D4;
        v219 = 0;
        v23 = objc_msgSend_participantStatus(v20, v21, v22);
        v26 = objc_msgSend_callingParticipant(v20, v24, v25);
        isAnonymousInvitedParticipant = objc_msgSend_isAnonymousInvitedParticipant(v26, v27, v28);

        if (isAnonymousInvitedParticipant & 1 | (v23 != 2))
        {
          if (v23 == 2)
          {
            v32 = isAnonymousInvitedParticipant;
          }

          else
          {
            v32 = 0;
          }

          if (v32 != 1)
          {
            goto LABEL_15;
          }
        }

        else if (objc_msgSend__callingParticipantOONForShareMetadata_(self, v30, v20))
        {
          goto LABEL_15;
        }

        v33 = objc_msgSend_acceptedShareURLsToFetch(self, v30, v31);
        v35 = objc_msgSend_containsObject_(v33, v34, v17);

        if ((v35 & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v85 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v225 = v17;
            _os_log_impl(&dword_22506F000, v85, OS_LOG_TYPE_INFO, "Share at URL %@ has already been accepted by an in-network user. Fetching the share instead of re-accepting it", buf, 0xCu);
          }

          v50 = objc_msgSend_acceptedShareURLsToFetch(self, v86, v87);
          objc_msgSend_addObject_(v50, v88, v17);
          goto LABEL_74;
        }

LABEL_15:
        v36 = objc_msgSend_sharingServiceTypeForShareMetadata_(self, v30, v20);
        if (objc_msgSend_participantRole(v20, v37, v38) == 4)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v41 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v44 = objc_msgSend_share(v20, v42, v43);
            v47 = objc_msgSend_recordID(v44, v45, v46);
            *buf = 138412290;
            v225 = v47;
            _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Adding ourselves to the public PCS for share %@", buf, 0xCu);
          }

          v48 = (v215 + 5);
          v213 = v215[5];
          v50 = objc_msgSend__addSelfIdentityToShareMetadataPublicPCS_serviceType_forShareWithURL_error_(self, v49, v20, v36, v17, &v213);
          objc_storeStrong(v48, v213);
          if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(self, v51, @"ForceUserKeyRegistrySyncRetryDuringShareAccept"))
          {
            v53 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v51, v204, 5000, @"Forcing no public identity error");
            v54 = v215[5];
            v215[5] = v53;
          }

          v55 = v215[5];
          if (v55 || !v50)
          {
            v91 = objc_msgSend_domain(v55, v51, v52);
            if (v91 == v204 && objc_msgSend_code(v215[5], v89, v90) == 5000)
            {
              canSynchronizeUserKeyRegistry = objc_msgSend_canSynchronizeUserKeyRegistry(self, v92, v93);

              if (canSynchronizeUserKeyRegistry)
              {
                v97 = objc_msgSend_URLsWaitingKRSByServiceType(self, v95, v96);
                v99 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v98, v36);
                v101 = objc_msgSend_objectForKeyedSubscript_(v97, v100, v99);
                v102 = v101 == 0;

                if (v102)
                {
                  v105 = objc_opt_new();
                  v108 = objc_msgSend_URLsWaitingKRSByServiceType(self, v106, v107);
                  v110 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v109, v36);
                  objc_msgSend_setObject_forKeyedSubscript_(v108, v111, v105, v110);
                }

                v112 = objc_msgSend_URLsWaitingKRSByServiceType(self, v103, v104);
                v114 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v113, v36);
                v116 = objc_msgSend_objectForKeyedSubscript_(v112, v115, v114);
                objc_msgSend_addObject_(v116, v117, v17);

                objc_msgSend_setState_(self, v118, 4);
                goto LABEL_74;
              }
            }

            else
            {
            }

            objc_msgSend__performCallbackForURL_withShare_error_(self, v95, v17, 0, v215[5]);
            v66 = objc_msgSend_shareMetadatasToAcceptByURL(self, v119, v120);
            objc_msgSend_removeObjectForKey_(v66, v121, v17);
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v56 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v225 = v17;
              v226 = 2112;
              v227 = v50;
              _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_INFO, "Updated share public PCS for share at URL %@ is %@", buf, 0x16u);
            }

            v59 = objc_msgSend_publicPCSData(v50, v57, v58);
            v62 = objc_msgSend_share(v20, v60, v61);
            objc_msgSend_setPublicProtectionData_(v62, v63, v59);

            v66 = objc_msgSend_publicPCSEtag(v50, v64, v65);
            v69 = objc_msgSend_share(v20, v67, v68);
            objc_msgSend_setPublicProtectionEtag_(v69, v70, v66);
          }

LABEL_74:
          goto LABEL_75;
        }

        if (objc_msgSend_participantRole(v20, v39, v40) != 3 && objc_msgSend_participantRole(v20, v71, v72) != 2)
        {
          v122 = v215[5];
          if (!v122)
          {
            v123 = objc_msgSend_outOfNetworkMatches(v20, v71, v73);
            v126 = objc_msgSend_count(v123, v124, v125) == 0;

            v129 = MEMORY[0x277CBC560];
            if (v126)
            {
              v197 = objc_msgSend_participantRole(v20, v127, v128);
              objc_msgSend_errorWithDomain_code_format_(v129, v198, v204, 2007, @"Can not accept share at URL %@ because participant type %ld is unsupported", v17, v197);
            }

            else
            {
              objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v127, v204, 8000, @"Can not accept share at URL %@: vetting of the invited email is needed", v17);
            }
            v130 = ;
            v199 = v215[5];
            v215[5] = v130;

            v122 = v215[5];
          }

          objc_msgSend__performCallbackForURL_withShare_error_(self, v71, v17, 0, v122);
          v50 = objc_msgSend_shareMetadatasToAcceptByURL(self, v200, v201);
          objc_msgSend_removeObjectForKey_(v50, v202, v17);
          goto LABEL_74;
        }

        if (objc_msgSend__callingParticipantOONForShareMetadata_(self, v71, v20))
        {
          v76 = objc_msgSend_container(self, v74, v75);
          v79 = objc_msgSend_pcsManager(v76, v77, v78);
          if (objc_msgSend_currentServiceIsManatee(v79, v80, v81))
          {

            goto LABEL_53;
          }

          v131 = objc_msgSend_container(self, v82, v83);
          v134 = objc_msgSend_options(v131, v132, v133);
          v137 = objc_msgSend_useAnonymousToServerShareParticipants(v134, v135, v136);

          if (v137)
          {
LABEL_53:
            v138 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v84, v204, 8014, @"Cannot accept share %@ as an out-of-network participant", v17);
          }

          else
          {
            v138 = objc_msgSend__keySwapForOONParticipant_(self, v84, v20);
          }

          v139 = v215[5];
          v215[5] = v138;
        }

        v140 = objc_msgSend_container(self, v74, v75);
        v143 = objc_msgSend_options(v140, v141, v142);
        v146 = objc_msgSend_useAnonymousToServerShareParticipants(v143, v144, v145);

        if ((v146 & 1) == 0)
        {
          v149 = objc_msgSend_sharingServiceTypeForShareMetadata_(self, v147, v20);
          v152 = objc_msgSend_container(self, v150, v151);
          v155 = objc_msgSend_pcsManager(v152, v153, v154);
          v156 = (v215 + 5);
          v212 = v215[5];
          v158 = objc_msgSend_participantPublicKeyForServiceType_error_(v155, v157, v149, &v212);
          objc_storeStrong(v156, v212);
        }

        if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(self, v147, @"ForceUserKeyRegistrySyncRetryDuringShareAccept"))
        {
          v159 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v147, v204, 5000, @"Forcing no public identity error");
          v160 = v215[5];
          v215[5] = v159;
        }

        v161 = v215[5];
        if (!v161)
        {
          v195 = objc_msgSend_stateTransitionGroup(self, v147, v148);
          dispatch_group_enter(v195);

          v207[0] = MEMORY[0x277D85DD0];
          v207[1] = 3221225472;
          v207[2] = sub_2252287F8;
          v207[3] = &unk_27854A780;
          v208 = v20;
          v209 = v17;
          selfCopy = self;
          v211 = &v214;
          objc_msgSend__validateInvitedPCSCanBeDecryptedForShare_completionHandler_(self, v196, v208, v207);
          v50 = v208;
          goto LABEL_74;
        }

        v164 = objc_msgSend_domain(v161, v147, v148);
        if (v164 != v204 || objc_msgSend_code(v215[5], v162, v163) != 5000)
        {

LABEL_69:
          objc_msgSend__performCallbackForURL_withShare_error_(self, v168, v17, 0, v215[5]);
          v50 = objc_msgSend_shareMetadatasToAcceptByURL(self, v192, v193);
          objc_msgSend_removeObjectForKey_(v50, v194, v17);
          goto LABEL_74;
        }

        v167 = objc_msgSend_canSynchronizeUserKeyRegistry(self, v165, v166);

        if (!v167)
        {
          goto LABEL_69;
        }

        v170 = objc_msgSend_URLsWaitingKRSByServiceType(self, v168, v169);
        v172 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v171, v36);
        v174 = objc_msgSend_objectForKeyedSubscript_(v170, v173, v172);
        v175 = v174 == 0;

        if (v175)
        {
          v178 = objc_opt_new();
          v181 = objc_msgSend_URLsWaitingKRSByServiceType(self, v179, v180);
          v183 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v182, v36);
          objc_msgSend_setObject_forKeyedSubscript_(v181, v184, v178, v183);
        }

        v185 = objc_msgSend_URLsWaitingKRSByServiceType(self, v176, v177);
        v187 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v186, v36);
        v189 = objc_msgSend_objectForKeyedSubscript_(v185, v188, v187);
        objc_msgSend_addObject_(v189, v190, v17);

        objc_msgSend_setState_(self, v191, 4);
LABEL_75:
        _Block_object_dispose(&v214, 8);

        ++v16;
      }

      while (v206 != v16);
      v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v220, v228, 16);
      if (!v206)
      {
LABEL_77:

        return;
      }
    }
  }
}

- (void)_synchronizeUserKeyRegistryIfNeeded
{
  v60 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_canSynchronizeUserKeyRegistry(self, a2, v2))
  {
    v6 = objc_msgSend_URLsWaitingKRSByServiceType(self, v4, v5);
    v9 = objc_msgSend_allKeys(v6, v7, v8);
    v12 = objc_msgSend_count(v9, v10, v11);

    if (v12)
    {
      objc_msgSend_setCanSynchronizeUserKeyRegistry_(self, v13, 0);
      v16 = objc_msgSend_topmostParentOperation(self, v14, v15);
      v47 = objc_msgSend_operationID(v16, v17, v18);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v59 = v47;
        _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Will attempt user key sync for operation %{public}@.", buf, 0xCu);
      }

      v22 = objc_msgSend_URLsWaitingKRSByServiceType(self, v20, v21);
      v25 = objc_msgSend_allKeys(v22, v23, v24);

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v25;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v53, v57, 16);
      if (v29)
      {
        v46 = *v54;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v54 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v53 + 1) + 8 * i);
            v32 = objc_msgSend_intValue(v31, v27, v28);
            objc_initWeak(buf, self);
            objc_msgSend_noteOperationWillWaitOnPCS(self, v33, v34);
            v37 = objc_msgSend_stateTransitionGroup(self, v35, v36);
            dispatch_group_enter(v37);

            v40 = objc_msgSend_container(self, v38, v39);
            v43 = objc_msgSend_pcsManager(v40, v41, v42);
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = sub_225228DD8;
            v48[3] = &unk_27854A7A8;
            objc_copyWeak(&v52, buf);
            v49 = v47;
            selfCopy = self;
            v51 = v31;
            objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v43, v44, v32, 0, 0, 1, 0x28387E920, v49, v48);

            objc_destroyWeak(&v52);
            objc_destroyWeak(buf);
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v53, v57, 16);
        }

        while (v29);
      }
    }
  }
}

- (void)_fetchMetadataForShares
{
  v176 = *MEMORY[0x277D85DE8];
  v145 = objc_opt_new();
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  obj = objc_msgSend_shareURLsToAccept(self, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v163, v175, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v164;
    v11 = *MEMORY[0x277CBC120];
    do
    {
      v12 = 0;
      do
      {
        if (*v164 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v163 + 1) + 8 * v12);
        v14 = objc_msgSend_clientProvidedMetadatasByURL(self, v7, v8);
        v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v13);

        v19 = objc_msgSend_container(self, v17, v18);
        v22 = objc_msgSend_pcsManager(v19, v20, v21);
        if (objc_msgSend_currentServiceIsManatee(v22, v23, v24))
        {
          v27 = objc_msgSend_invitationToken(v16, v25, v26);

          if (!v27)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v30 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v169 = v13;
              _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Failing to accept manatee share with URL %@ since we were not given a sharing invitation blob by the client", buf, 0xCu);
            }

            v32 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v31, v11, 2006, 0, @"Error accepting share at URL %@: No manatee sharing invitation blob provided", v13);
            v35 = objc_msgSend_callbackQueue(self, v33, v34);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_225229A70;
            block[3] = &unk_278546990;
            block[4] = self;
            block[5] = v13;
            v162 = v32;
            v36 = v32;
            dispatch_async(v35, block);

            v37 = v162;
            goto LABEL_22;
          }
        }

        else
        {
        }

        if (objc_msgSend_participantRole(v16, v28, v29) != 1 && objc_msgSend_participantRole(v16, v38, v39))
        {
          objc_msgSend_addObject_(v145, v40, v13);
          goto LABEL_23;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v41 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v44 = v41;
          objc_msgSend_participantRole(v16, v45, v46);
          v47 = CKStringFromParticipantRole();
          *buf = 138412546;
          v169 = v13;
          v170 = 2114;
          v171 = v47;
          _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "Failing to accept share with URL %@ since we are ineligible to accept as role %{public}@", buf, 0x16u);
        }

        v48 = MEMORY[0x277CBC560];
        objc_msgSend_participantRole(v16, v42, v43);
        v49 = CKStringFromParticipantRole();
        v51 = objc_msgSend_errorWithDomain_code_userInfo_format_(v48, v50, v11, 2006, 0, @"Error accepting share at URL %@: %@ participant tried to accept share", v13, v49);

        v54 = objc_msgSend_callbackQueue(self, v52, v53);
        v159[0] = MEMORY[0x277D85DD0];
        v159[1] = 3221225472;
        v159[2] = sub_225229AF8;
        v159[3] = &unk_278546990;
        v159[4] = self;
        v159[5] = v13;
        v160 = v51;
        v36 = v51;
        dispatch_async(v54, v159);

        v37 = v160;
LABEL_22:

LABEL_23:
        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v163, v175, 16);
    }

    while (v9);
  }

  objc_msgSend_setShareURLsToAccept_(self, v55, v145);
  v58 = objc_msgSend_shareURLsToAccept(self, v56, v57);
  v61 = objc_msgSend_count(v58, v59, v60);

  if (v61)
  {
    if (objc_msgSend_numShareAcceptAttempts(self, v62, v63) && objc_msgSend_numShareAcceptAttempts(self, v64, v65) >= 5)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v147 = objc_msgSend_shareURLsToAccept(self, v64, v65);
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v66, &v155, v174, 16);
      if (v67)
      {
        v68 = v67;
        v69 = *v156;
        v70 = *MEMORY[0x277CBC120];
        do
        {
          v71 = 0;
          do
          {
            if (*v156 != v69)
            {
              objc_enumerationMutation(v147);
            }

            v72 = *(*(&v155 + 1) + 8 * v71);
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v73 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v75 = v73;
              v78 = objc_msgSend_numShareAcceptAttempts(self, v76, v77);
              *buf = 138412546;
              v169 = v72;
              v170 = 2048;
              v171 = v78;
              _os_log_impl(&dword_22506F000, v75, OS_LOG_TYPE_INFO, "Failed to accept share with URL %@ %lu times with a PCS oplock error", buf, 0x16u);
            }

            v79 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v74, v70, 2037, 0, @"Error accepting share at URL %@: Protection data didn't match", v72);
            v82 = objc_msgSend_callbackQueue(self, v80, v81);
            v153[0] = MEMORY[0x277D85DD0];
            v153[1] = 3221225472;
            v153[2] = sub_225229B80;
            v153[3] = &unk_278546990;
            v153[4] = self;
            v153[5] = v72;
            v154 = v79;
            v83 = v79;
            dispatch_async(v82, v153);

            ++v71;
          }

          while (v68 != v71);
          v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v84, &v155, v174, 16);
        }

        while (v68);
      }

      v87 = objc_msgSend_shareURLsToAccept(self, v85, v86);
      objc_msgSend_removeAllObjects(v87, v88, v89);
    }

    else
    {
      v90 = objc_msgSend_shareMetadatasToAcceptByURL(self, v64, v65);
      objc_msgSend_removeAllObjects(v90, v91, v92);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v93 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v96 = v93;
        v99 = objc_msgSend_shareURLsToAccept(self, v97, v98);
        v102 = objc_msgSend_count(v99, v100, v101);
        v105 = objc_msgSend_shareURLsToAccept(self, v103, v104);
        if (objc_msgSend_count(v105, v106, v107) == 1)
        {
          v110 = &stru_28385ED00;
        }

        else
        {
          v110 = @"s";
        }

        v111 = objc_msgSend_shareURLsToAccept(self, v108, v109);
        *buf = 134218498;
        v169 = v102;
        v170 = 2114;
        v171 = v110;
        v172 = 2112;
        v173 = v111;
        _os_log_impl(&dword_22506F000, v96, OS_LOG_TYPE_INFO, "Fetching share metadata for %ld URL%{public}@: %@", buf, 0x20u);
      }

      v112 = objc_msgSend_container(self, v94, v95);
      v115 = objc_msgSend_pcsManager(v112, v113, v114);
      IsManatee = objc_msgSend_currentServiceIsManatee(v115, v116, v117);

      if (IsManatee)
      {
        v87 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v121 = objc_msgSend_shareURLsToAccept(self, v119, v120);
        v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, &v149, v167, 16);
        if (v123)
        {
          v126 = v123;
          v127 = *v150;
          do
          {
            for (i = 0; i != v126; ++i)
            {
              if (*v150 != v127)
              {
                objc_enumerationMutation(v121);
              }

              v129 = *(*(&v149 + 1) + 8 * i);
              v130 = objc_msgSend_clientProvidedMetadatasByURL(self, v124, v125);
              v132 = objc_msgSend_objectForKeyedSubscript_(v130, v131, v129);

              v135 = objc_msgSend_invitationToken(v132, v133, v134);
              objc_msgSend_setObject_forKeyedSubscript_(v87, v136, v135, v129);
            }

            v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v124, &v149, v167, 16);
          }

          while (v126);
        }
      }

      else
      {
        v87 = 0;
      }

      v137 = objc_opt_new();
      v140 = objc_msgSend_shareURLsToAccept(self, v138, v139);
      objc_msgSend_setShareURLsToFetch_(v137, v141, v140);

      objc_msgSend_setShareInvitationTokensByShareURL_(v137, v142, v87);
      v143 = objc_opt_class();
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = sub_225229C08;
      v148[3] = &unk_278548B60;
      v148[4] = self;
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v144, v143, v137, v148);
    }
  }
}

- (void)_processAnonymousShares
{
  v4 = objc_msgSend_anonymousShareTuplesAccepted(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    objc_initWeak(&location, self);
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);

    v13 = objc_msgSend_container(self, v11, v12);
    v16 = objc_msgSend_anonymousSharingManager(v13, v14, v15);
    v19 = objc_msgSend_anonymousShareTuplesAccepted(self, v17, v18);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22522A158;
    v21[3] = &unk_278549318;
    objc_copyWeak(&v22, &location);
    objc_msgSend_addAnonymousSharesToSharedDB_operation_withCompletionBlock_(v16, v20, v19, self, v21);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)main
{
  v4 = objc_msgSend_shareURLsToAccept(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setAcceptCompletionBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDAcceptSharesOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

@end