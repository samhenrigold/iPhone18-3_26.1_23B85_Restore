@interface IMAVHandler
+ (void)ensureHandlerSetup;
+ (void)initialize;
- (BOOL)_isReady:(BOOL)ready reason:(int64_t *)reason;
- (BOOL)_notAllowingInvitesAndChatInvitesNonZero:(id)zero fromHandle:(id)handle properties:(id)properties;
- (BOOL)_notAllowingInvitesDuringCallAndRunningConference:(id)conference fromHandle:(id)handle properties:(id)properties;
- (void)_checkConferenceCapabilities:(id)capabilities;
- (void)_enqueueIMAVChatForNetworkActivation:(id)activation;
- (void)_handleIncomingAVChatForNotification:(id)notification;
- (void)_handleIncomingWithAccount:(id)account fromHandle:(id)handle conference:(id)conference properties:(id)properties;
- (void)_handleInviteFailed:(id)failed fromHandle:(id)handle conference:(id)conference properties:(id)properties reason:(int64_t)reason;
- (void)_handleProtectedIncomingWithAccount:(id)account fromHandle:(id)handle conference:(id)conference properties:(id)properties;
- (void)_notifyOfIncomingInvitationFor:(id)for notifyInvitationListeners:(BOOL)listeners;
- (void)_setUpChat:(id)chat isAudioOnly:(BOOL)only conference:(id)conference properties:(id)properties protectedType:(int64_t)type avChat:(id)avChat;
- (void)account:(id)account avAction:(unsigned int)action withArguments:(id)arguments toAVChat:(id)chat isVideo:(BOOL)video;
- (void)account:(id)account conference:(id)conference changedToNewConferenceID:(id)d;
- (void)account:(id)account conference:(id)conference invitationSentSuccessfully:(BOOL)successfully;
- (void)account:(id)account conference:(id)conference peerID:(id)d propertiesUpdated:(id)updated;
- (void)account:(id)account conference:(id)conference peerIDChangedFromID:(id)d toID:(id)iD;
- (void)account:(id)account conference:(id)conference receivedAVMessage:(unsigned int)message from:(id)from sessionID:(unsigned int)d userInfo:(id)info;
- (void)account:(id)account conference:(id)conference receivedCancelInvitationFrom:(id)from properties:(id)properties;
- (void)account:(id)account conference:(id)conference receivedInvitationFrom:(id)from properties:(id)properties;
- (void)account:(id)account conference:(id)conference receivedResponseToInvitationFrom:(id)from properties:(id)properties;
- (void)account:(id)account conference:(id)conference remoteUser:(id)user properties:(id)properties;
- (void)account:(id)account postedError:(id)error;
- (void)account:(id)account relay:(id)relay handleCancel:(id)cancel fromPerson:(id)person;
- (void)account:(id)account relay:(id)relay handleInitate:(id)initate fromPerson:(id)person;
- (void)account:(id)account relay:(id)relay handleUpdate:(id)update fromPerson:(id)person;
- (void)pendingACRequestComplete;
- (void)pendingVCRequestComplete;
- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from;
- (void)property:(id)property changedTo:(id)to from:(id)from;
- (void)setupComplete;
- (void)vcCapabilitiesChanged:(unint64_t)changed;
@end

@implementation IMAVHandler

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v6, v7);
    objc_msgSend_addObserver_selector_name_object_(v9, v8, self, sel_ensureHandlerSetup, *MEMORY[0x277D07DA0], 0);
  }
}

+ (void)ensureHandlerSetup
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, v2, v3, v4);
  v10 = objc_msgSend_faceTimeSupported(v5, v6, v7, v8, v9);

  if (v10)
  {
    if (qword_28134A450 != -1)
    {
      sub_25477F7D8();
    }
  }

  else
  {
    v12 = sub_254761764(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "VC is not supported on this device, not setting up the AV Handler", v13, 2u);
    }
  }
}

- (BOOL)_notAllowingInvitesDuringCallAndRunningConference:(id)conference fromHandle:(id)handle properties:(id)properties
{
  v85 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  handleCopy = handle;
  propertiesCopy = properties;
  v10 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v78 = conferenceCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "In active conference, declining conference ID: %@", buf, 0xCu);
  }

  v12 = sub_254761764(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend__activeChat(IMAVChat, v13, v14, v15, v16);
    v22 = objc_msgSend__nonFinalChat(IMAVChat, v18, v19, v20, v21);
    v27 = objc_msgSend__connectedChat(IMAVChat, v23, v24, v25, v26);
    v32 = objc_msgSend__avChatArray(IMAVChat, v28, v29, v30, v31);
    *buf = 138413058;
    v78 = v17;
    v79 = 2112;
    v80 = v22;
    v81 = 2112;
    v82 = v27;
    v83 = 2112;
    v84 = v32;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Active chat: %@, Non final chat: %@, Connected chat: %@, All chats: %@", buf, 0x2Au);
  }

  v37 = objc_msgSend__activeChat(IMAVChat, v33, v34, v35, v36);

  if (v37)
  {
    v43 = sub_254761764(v38);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_msgSend__activeChat(IMAVChat, v44, v45, v46, v47);
      *buf = 138412290;
      v78 = v48;
      _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Simple ActiveChat: %@", buf, 0xCu);
    }

    v53 = objc_msgSend_sharedInstance(IMAVController, v49, v50, v51, v52);
    objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v53, v54, handleCopy, 2, propertiesCopy, 0, conferenceCopy);
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v55 = objc_msgSend__avChatArray(IMAVChat, v39, v40, v41, v42, 0);
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v72, v76, 16);
    if (v57)
    {
      v62 = v57;
      v63 = *v73;
      while (2)
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v73 != v63)
          {
            objc_enumerationMutation(v55);
          }

          v65 = *(*(&v72 + 1) + 8 * i);
          isActive = objc_msgSend_isActive(v65, v58, v59, v60, v61);
          if (isActive)
          {
            v67 = sub_254761764(isActive);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v78 = v65;
              _os_log_impl(&dword_254743000, v67, OS_LOG_TYPE_DEFAULT, "chat that was active: %@", buf, 0xCu);
            }

            goto LABEL_21;
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v72, v76, 16);
        if (v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v69 = sub_254761764(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v69, OS_LOG_TYPE_DEFAULT, "[IMAVController hasRunningConference] claimed to have an active chat, but we really don't... *******FILE THIS PLEASE*****", buf, 2u);
    }

    v53 = sub_254761764(v70);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVController hasRunningConference] claimed to have an active chat, but we really don't...", buf, 2u);
    }
  }

  return v37 != 0;
}

- (BOOL)_notAllowingInvitesAndChatInvitesNonZero:(id)zero fromHandle:(id)handle properties:(id)properties
{
  v86 = *MEMORY[0x277D85DE8];
  zeroCopy = zero;
  handleCopy = handle;
  propertiesCopy = properties;
  v10 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = zeroCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "We have active invite, declining conference ID: %@", buf, 0xCu);
  }

  v12 = sub_254761764(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend__activeChat(IMAVChat, v13, v14, v15, v16);
    v22 = objc_msgSend__nonFinalChat(IMAVChat, v18, v19, v20, v21);
    v27 = objc_msgSend__connectedChat(IMAVChat, v23, v24, v25, v26);
    v32 = objc_msgSend__avChatArray(IMAVChat, v28, v29, v30, v31);
    *buf = 138413058;
    v79 = v17;
    v80 = 2112;
    v81 = v22;
    v82 = 2112;
    v83 = v27;
    v84 = 2112;
    v85 = v32;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Active chat: %@, Non final chat: %@, Connected chat: %@, All chats: %@", buf, 0x2Au);
  }

  v37 = objc_msgSend__nonFinalChat(IMAVChat, v33, v34, v35, v36);

  if (v37)
  {
    v43 = sub_254761764(v38);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

      v65 = objc_msgSend_sharedInstance(IMAVController, v67, v68, v69, v70);
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v65, v71, handleCopy, 2, propertiesCopy, 0, zeroCopy);
      v66 = 1;
      goto LABEL_26;
    }

    v48 = objc_msgSend__nonFinalChat(IMAVChat, v44, v45, v46, v47);
    *buf = 138412290;
    v79 = v48;
    v49 = "Simple nonFinalChat: %@";
    v50 = v43;
LABEL_23:
    _os_log_impl(&dword_254743000, v50, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);
LABEL_24:

    goto LABEL_25;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v43 = objc_msgSend__avChatArray(IMAVChat, v39, v40, v41, v42, 0);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v51, &v73, v77, 16);
  if (v52)
  {
    v57 = v52;
    v58 = *v74;
LABEL_10:
    v59 = 0;
    while (1)
    {
      if (*v74 != v58)
      {
        objc_enumerationMutation(v43);
      }

      v60 = *(*(&v73 + 1) + 8 * v59);
      isActive = objc_msgSend_isActive(v60, v53, v54, v55, v56);
      if (isActive)
      {
        break;
      }

      if (v57 == ++v59)
      {
        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v53, &v73, v77, 16);
        if (v57)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v48 = sub_254761764(isActive);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v79 = v60;
    v49 = "chat that was active: %@";
    v50 = v48;
    goto LABEL_23;
  }

LABEL_16:

  v63 = sub_254761764(v62);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v63, OS_LOG_TYPE_DEFAULT, "[IMAVController hasRunningConference] claimed to have an active chat, but we really don't... *******FILE THIS PLEASE*****", buf, 2u);
  }

  v65 = sub_254761764(v64);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVController hasRunningConference] claimed to have an active chat, but we really don't...", buf, 2u);
  }

  v66 = 0;
LABEL_26:

  return v66;
}

- (void)_handleInviteFailed:(id)failed fromHandle:(id)handle conference:(id)conference properties:(id)properties reason:(int64_t)reason
{
  v58 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  handleCopy = handle;
  conferenceCopy = conference;
  propertiesCopy = properties;
  v18 = objc_msgSend_sharedInstance(IMAVController, v14, v15, v16, v17);
  v45 = propertiesCopy;
  v46 = conferenceCopy;
  v47 = failedCopy;
  objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v18, v19, handleCopy, 1, propertiesCopy, failedCopy, conferenceCopy);

  v21 = sub_254761764(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v55 = handleCopy;
    v56 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Notifying delegates about inviteFailedFromIMHandle %@ reason %ld", buf, 0x16u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = objc_msgSend_sharedInstance(IMAVController, v22, v23, v24, v25);
  v31 = objc_msgSend_delegates(v26, v27, v28, v29, v30);

  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v49, v53, 16);
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v49 + 1) + 8 * i);
        v38 = objc_opt_respondsToSelector();
        v39 = v38;
        v40 = sub_254761764(v38);
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        if (v39)
        {
          if (v41)
          {
            *buf = 138412290;
            v55 = v37;
            _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
          }

          objc_msgSend_inviteFailedFromIMHandle_reason_(v37, v42, handleCopy, reason, v43);
        }

        else
        {
          if (v41)
          {
            *buf = 138412290;
            v55 = v37;
            _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
          }
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v44, &v49, v53, 16);
    }

    while (v34);
  }
}

- (void)_setUpChat:(id)chat isAudioOnly:(BOOL)only conference:(id)conference properties:(id)properties protectedType:(int64_t)type avChat:(id)avChat
{
  v51 = *MEMORY[0x277D85DE8];
  avChatCopy = avChat;
  v14 = objc_msgSend_beginChat(avChatCopy, v10, v11, v12, v13);
  v15 = sub_254761764(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = avChatCopy;
    _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Notifying delegates about invitedToIMAVChat %@", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = objc_msgSend_sharedInstance(IMAVController, v16, v17, v18, v19);
  v25 = objc_msgSend_delegates(v20, v21, v22, v23, v24);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v44, v48, 16);
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v44 + 1) + 8 * i);
        v32 = objc_opt_respondsToSelector();
        v33 = v32;
        v34 = sub_254761764(v32);
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          if (v35)
          {
            *buf = 138412290;
            v50 = v31;
            _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
          }

          if (type == 1)
          {
            objc_msgSend_invitedToIMAVChat_(v31, v36, avChatCopy, v37, v38);
          }

          else
          {
            objc_msgSend_receivedProtectedInitiate_(v31, v36, avChatCopy, v37, v38);
          }
        }

        else
        {
          if (v35)
          {
            *buf = 138412290;
            v50 = v31;
            _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
          }
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v39, &v44, v48, 16);
    }

    while (v28);
  }

  objc_msgSend_acceptInvitation(avChatCopy, v40, v41, v42, v43);
}

- (void)_checkConferenceCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v7 = objc_msgSend_allBuddyListIMHandles(MEMORY[0x277D18D20], v3, v4, v5, v6);
  v11 = objc_msgSend_indexOfObjectIdenticalTo_(v7, v8, capabilitiesCopy, v9, v10);

  if ((objc_msgSend_hasConferencing(capabilitiesCopy, v12, v13, v14, v15) & 1) == 0 && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setCapabilities_(capabilitiesCopy, v16, 0x1000000E0000, v17, v18);
    objc_msgSend_setPersonStatus_(capabilitiesCopy, v19, 4, v20, v21);
  }
}

- (BOOL)_isReady:(BOOL)ready reason:(int64_t *)reason
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], a2, ready, reason, v4);
  isFastUserSwitched = objc_msgSend_isFastUserSwitched(v6, v7, v8, v9, v10);

  if (isFastUserSwitched)
  {
    v13 = sub_254761764(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "We're fast user switched out, declining invite", v15, 2u);
    }

    *reason = 3;
  }

  return isFastUserSwitched ^ 1;
}

- (void)_handleIncomingWithAccount:(id)account fromHandle:(id)handle conference:(id)conference properties:(id)properties
{
  v314 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  handleCopy = handle;
  conferenceCopy = conference;
  propertiesCopy = properties;
  v310 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v13, handleCopy, conferenceCopy, v14);
  if (conferenceCopy)
  {
    v309 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v15, conferenceCopy, v16, v17);
  }

  else
  {
    v309 = 0;
  }

  v308 = objc_msgSend__avChatConnectingFromIMHandle_(IMAVChat, v15, handleCopy, v16, v17);
  v22 = objc_msgSend_sharedInstance(IMAVController, v18, v19, v20, v21);
  v27 = objc_msgSend_blockMultipleIncomingInvitations(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_sharedInstance(IMAVController, v28, v29, v30, v31);
  v37 = objc_msgSend_blockIncomingInvitationsDuringCall(v32, v33, v34, v35, v36);

  v41 = objc_msgSend_objectForKey_(propertiesCopy, v38, *MEMORY[0x277D194C8], v39, v40);
  v306 = objc_msgSend_BOOLValue(v41, v42, v43, v44, v45);

  v47 = sub_254761764(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    if (v27)
    {
      v48 = @"NO";
    }

    else
    {
      v48 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v48;
    _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "Allowing multiple invitations: %@", buf, 0xCu);
  }

  v50 = sub_254761764(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (v37)
    {
      v51 = @"NO";
    }

    else
    {
      v51 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v51;
    _os_log_impl(&dword_254743000, v50, OS_LOG_TYPE_DEFAULT, "Allowing incoming invitations during call: %@", buf, 0xCu);
  }

  v53 = sub_254761764(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v58 = objc_msgSend_sharedInstance(IMAVController, v54, v55, v56, v57);
    if (objc_msgSend_hasRunningConference(v58, v59, v60, v61, v62))
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    *buf = 138412290;
    *&buf[4] = v63;
    _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "Has running conference %@", buf, 0xCu);
  }

  v67 = objc_msgSend_objectForKey_(propertiesCopy, v64, *MEMORY[0x277D194D8], v65, v66);
  v72 = objc_msgSend_BOOLValue(v67, v68, v69, v70, v71);
  if (v72)
  {
    v77 = sub_254761764(v72);
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
    v80 = v309;
    v79 = v310;
    if (v309)
    {
      v81 = accountCopy;
      if (v78)
      {
        *buf = 138412546;
        *&buf[4] = v309;
        v312 = 2112;
        v313 = conferenceCopy;
        _os_log_impl(&dword_254743000, v77, OS_LOG_TYPE_DEFAULT, "We already have a chat running for %@  (%@)", buf, 0x16u);
      }

      v85 = objc_msgSend_participantMatchingIMHandle_(v309, v82, handleCopy, v83, v84);
      v86 = sub_254761764(v85);
      v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
      if (v85)
      {
        if (v87)
        {
          *buf = 138412290;
          *&buf[4] = v85;
          _os_log_impl(&dword_254743000, v86, OS_LOG_TYPE_DEFAULT, "Re-initiate for: %@", buf, 0xCu);
        }

        if (objc_msgSend_hasConnectingSessions(v85, v88, v89, v90, v91) && (objc_msgSend_localParticipant(v309, v92, v93, v94, v95), v96 = objc_claimAutoreleasedReturnValue(), isInitiator = objc_msgSend_isInitiator(v96, v97, v98, v99, v100), v96, v80 = v309, isInitiator))
        {
          v86 = sub_254761764(v102);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v103 = "We already started a re-invite and we are the initiator dropping invite on the floor";
LABEL_58:
            _os_log_impl(&dword_254743000, v86, OS_LOG_TYPE_DEFAULT, v103, buf, 2u);
          }
        }

        else
        {
          v86 = objc_msgSend__processIncomingCallProperties_(v85, v92, propertiesCopy, v94, v95);
          objc_msgSend_setIsReinitiate_(v86, v192, 1, v193, v194);
          objc_msgSend__sendResponse_callInfo_(v85, v195, 0, v86, v196);
        }
      }

      else if (v87)
      {
        *buf = 0;
        v103 = "[WARN] No participant found to re-initiate";
        goto LABEL_58;
      }

      v131 = v308;
      goto LABEL_115;
    }

    v81 = accountCopy;
    v131 = v308;
    if (v78)
    {
      *buf = 138412290;
      *&buf[4] = conferenceCopy;
      _os_log_impl(&dword_254743000, v77, OS_LOG_TYPE_DEFAULT, "This is is a re-initiate and we do not have a chat running for CID (%@)", buf, 0xCu);
    }

LABEL_93:

    goto LABEL_115;
  }

  v79 = v310;
  if (v310)
  {
    v104 = sub_254761764(v72);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v109 = objc_msgSend_otherIMHandle(v310, v105, v106, v107, v108);
      v114 = objc_msgSend_ID(v109, v110, v111, v112, v113);
      *buf = 138412546;
      *&buf[4] = v114;
      v312 = 2112;
      v313 = v310;
      _os_log_impl(&dword_254743000, v104, OS_LOG_TYPE_DEFAULT, "We already have a chat awaiting reply from %@  (%@)", buf, 0x16u);
    }

    v119 = objc_msgSend_remoteParticipants(v310, v115, v116, v117, v118);
    v124 = objc_msgSend_count(v119, v120, v121, v122, v123);

    if (v124 >= 2)
    {
      v129 = objc_msgSend_sharedInstance(IMAVController, v125, v126, v127, v128);
      v81 = accountCopy;
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v129, v130, handleCopy, 2, propertiesCopy, accountCopy, conferenceCopy);

      v131 = v308;
      v80 = v309;
      goto LABEL_115;
    }

    v303 = v67;
    v146 = objc_msgSend_participantMatchingIMHandle_(v310, v125, handleCopy, v127, v128);
    v302 = v146 != 0;
    v301 = objc_msgSend_objectForKey_(propertiesCopy, v147, *MEMORY[0x277D194E0], v148, v149);
    v300 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v150, v301, v151, v152);
    v156 = objc_msgSend_objectForKey_(v300, v153, *MEMORY[0x277D19568], v154, v155);
    v161 = objc_msgSend_sessionID(v310, v157, v158, v159, v160);
    v299 = v156;
    v166 = objc_msgSend_unsignedIntValue(v156, v162, v163, v164, v165);
    v167 = v166;
    v168 = sub_254761764(v166);
    v169 = os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT);
    v305 = v146;
    if (v146)
    {
      if (v169)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v168, OS_LOG_TYPE_DEFAULT, "We have cross invites", buf, 2u);
      }

      if (v161 == v167)
      {
        v81 = accountCopy;
        v80 = v309;
        v67 = v303;
        if (!conferenceCopy)
        {
          goto LABEL_111;
        }

        v175 = objc_msgSend_conferenceID(v310, v171, v172, v173, v174);

        if (!v175)
        {
          goto LABEL_111;
        }

        v176 = sub_254761764(v170);
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v176, OS_LOG_TYPE_DEFAULT, "Using conference IDs to pick the host", buf, 2u);
        }

        v181 = objc_msgSend_conferenceID(v310, v177, v178, v179, v180);
        isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(conferenceCopy, v182, v181, v183, v184);

        if (isEqualToIgnoringCase)
        {
          v191 = 0;
        }

        else
        {
          v281 = objc_msgSend_conferenceID(v310, v187, v188, v189, v190);
          v191 = objc_msgSend_compare_(conferenceCopy, v282, v281, v283, v284) == 1;
        }

        v285 = sub_254761764(v186);
        if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
        {
          v290 = objc_msgSend_conferenceID(v310, v286, v287, v288, v289);
          *buf = 138412290;
          *&buf[4] = v290;
          _os_log_impl(&dword_254743000, v285, OS_LOG_TYPE_DEFAULT, "Cross invites: our   conference ID %@", buf, 0xCu);
        }

        v292 = sub_254761764(v291);
        v80 = v309;
        if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = conferenceCopy;
          _os_log_impl(&dword_254743000, v292, OS_LOG_TYPE_DEFAULT, "Cross invites: their conference ID %@", buf, 0xCu);
        }

        if (!v191)
        {
LABEL_111:
          v210 = sub_254761764(v170);
          v131 = v308;
          if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v210, OS_LOG_TYPE_DEFAULT, "Cross invites: We are the host, declining incoming invite", buf, 2u);
          }

          v79 = v310;
LABEL_114:

          v297 = objc_msgSend_sharedInstance(IMAVController, v293, v294, v295, v296);
          objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v297, v298, handleCopy, 2, propertiesCopy, v81, conferenceCopy);

          goto LABEL_115;
        }
      }

      else
      {
        v211 = sub_254761764(v170);
        v80 = v309;
        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v211, OS_LOG_TYPE_DEFAULT, "Using session IDs to pick the host", buf, 2u);
        }

        v213 = sub_254761764(v212);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v161;
          _os_log_impl(&dword_254743000, v213, OS_LOG_TYPE_DEFAULT, "Cross invites: our   session ID %u", buf, 8u);
        }

        v215 = sub_254761764(v214);
        if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v167;
          _os_log_impl(&dword_254743000, v215, OS_LOG_TYPE_DEFAULT, "Cross invites: their session ID %u", buf, 8u);
        }

        v216 = v161 >= v167;
        v81 = accountCopy;
        v67 = v303;
        if (v216)
        {
          goto LABEL_111;
        }
      }

      v217 = sub_254761764(v170);
      v131 = v308;
      if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v217, OS_LOG_TYPE_DEFAULT, "They are the host, cancelling our outgoing invite", buf, 2u);
      }

      v79 = v310;
      selfCopy6 = self;
    }

    else
    {
      if (v169)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v168, OS_LOG_TYPE_DEFAULT, "Buddy not found, this is not a cross invite", buf, 2u);
      }

      v81 = accountCopy;
      v131 = v308;
      v80 = v309;
      selfCopy6 = self;
      v67 = v303;
      if (v37)
      {
        v210 = sub_254761764(v209);
        if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v210, OS_LOG_TYPE_DEFAULT, "Not allowing incoming invitation during call, declining...", buf, 2u);
        }

        goto LABEL_114;
      }
    }

    goto LABEL_79;
  }

  v131 = v308;
  if (v308)
  {
    v132 = v37;
  }

  else
  {
    v132 = 1;
  }

  if ((v132 & 1) == 0)
  {
    v197 = sub_254761764(v72);
    v305 = v197;
    if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
    {
      v202 = objc_msgSend_otherIMHandle(v308, v198, v199, v200, v201);
      v207 = objc_msgSend_ID(v202, v203, v204, v205, v206);
      *buf = 138412546;
      *&buf[4] = v207;
      v312 = 2112;
      v313 = v308;
      _os_log_impl(&dword_254743000, v197, OS_LOG_TYPE_DEFAULT, "We already have a chat connecting from %@  (%@), accepting incoming invite and declining existing chat", buf, 0x16u);
    }

    v302 = 1;
    v81 = accountCopy;
    v80 = v309;
    selfCopy6 = self;
LABEL_79:
    v218 = v306;

LABEL_80:
    objc_msgSend__checkConferenceCapabilities_(selfCopy6, v219, handleCopy, v220, v221);
    goto LABEL_81;
  }

  if (v37)
  {
    v133 = objc_msgSend_sharedInstance(IMAVCallManager, v73, v74, v75, v76);
    v138 = objc_msgSend_callState(v133, v134, v135, v136, v137);

    if (v138 == 3)
    {
      v144 = sub_254761764(v139);
      v81 = accountCopy;
      v80 = v309;
      v79 = 0;
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = conferenceCopy;
        v145 = "We have a call we're making, declining conference ID: %@";
LABEL_91:
        _os_log_impl(&dword_254743000, v144, OS_LOG_TYPE_DEFAULT, v145, buf, 0xCu);
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    v243 = objc_msgSend_sharedInstance(IMAVCallManager, v140, v141, v142, v143);
    v248 = objc_msgSend_callState(v243, v244, v245, v246, v247);

    if (v248 == 1)
    {
      v144 = sub_254761764(v249);
      v81 = accountCopy;
      v80 = v309;
      v79 = 0;
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = conferenceCopy;
        v145 = "We have a call we're invited to, declining conference ID: %@";
        goto LABEL_91;
      }

LABEL_92:

      v77 = objc_msgSend_sharedInstance(IMAVController, v254, v255, v256, v257);
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v77, v258, handleCopy, 2, propertiesCopy, 0, conferenceCopy);
      goto LABEL_93;
    }

    v259 = objc_msgSend_sharedInstance(IMAVController, v250, v251, v252, v253);
    hasRunningConference = objc_msgSend_hasRunningConference(v259, v260, v261, v262, v263);

    v79 = 0;
    if (hasRunningConference)
    {
      v265 = objc_msgSend__notAllowingInvitesDuringCallAndRunningConference_fromHandle_properties_(self, v73, conferenceCopy, handleCopy, propertiesCopy);
      v81 = accountCopy;
      selfCopy6 = self;
      v80 = v309;
LABEL_103:
      v218 = v306;
      if (v265)
      {
        goto LABEL_115;
      }

      v302 = 0;
      goto LABEL_80;
    }
  }

  if (v27)
  {
    v266 = objc_msgSend__incomingInvitations(IMAVChat, v73, v74, v75, v76);
    if (objc_msgSend_count(v266, v267, v268, v269, v270))
    {

      v81 = accountCopy;
LABEL_102:
      selfCopy6 = self;
      v265 = objc_msgSend__notAllowingInvitesAndChatInvitesNonZero_fromHandle_properties_(self, v73, conferenceCopy, handleCopy, propertiesCopy);
      v131 = v308;
      v80 = v309;
      goto LABEL_103;
    }

    v275 = objc_msgSend__outgoingInvitations(IMAVChat, v271, v272, v273, v274);
    v280 = objc_msgSend_count(v275, v276, v277, v278, v279);

    v81 = accountCopy;
    if (v280)
    {
      goto LABEL_102;
    }

    v302 = 0;
    v131 = v308;
    v80 = v309;
  }

  else
  {
    v302 = 0;
    v81 = accountCopy;
    v80 = v309;
  }

  selfCopy6 = self;
  v218 = v306;
  objc_msgSend__checkConferenceCapabilities_(self, v73, handleCopy, v75, v76);
LABEL_81:
  *buf = 0;
  if (objc_msgSend__isReady_reason_(selfCopy6, v222, v218, buf, v223))
  {
    if (handleCopy)
    {
      v304 = v67;
      v225 = [IMAVChat alloc];
      v227 = v218;
      isVideo_callerProperties = objc_msgSend_initIncomingFrom_isVideo_callerProperties_(v225, v226, handleCopy, v218 ^ 1, propertiesCopy);
      objc_msgSend__setConferenceID_(isVideo_callerProperties, v229, conferenceCopy, v230, v231);
      if (v302)
      {
        objc_msgSend__setUpChat_isAudioOnly_conference_properties_protectedType_avChat_(selfCopy6, v232, handleCopy, v227, conferenceCopy, propertiesCopy, 1, isVideo_callerProperties);
        objc_msgSend_cancelInvitation(v79, v235, v236, v237, v238);
        objc_msgSend_endChat(v131, v239, v240, v241, v242);
      }

      else
      {
        objc_msgSend__handleIncomingAVChatForNotification_(selfCopy6, v232, isVideo_callerProperties, v233, v234);
      }

      v67 = v304;
    }
  }

  else
  {
    objc_msgSend__handleInviteFailed_fromHandle_conference_properties_reason_(selfCopy6, v224, v81, handleCopy, conferenceCopy, propertiesCopy, *buf);
  }

LABEL_115:
}

- (void)_handleProtectedIncomingWithAccount:(id)account fromHandle:(id)handle conference:(id)conference properties:(id)properties
{
  v146 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  handleCopy = handle;
  conferenceCopy = conference;
  propertiesCopy = properties;
  v16 = objc_msgSend__avChatConnectingFromIMHandle_(IMAVChat, v13, handleCopy, v14, v15);
  v19 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v17, handleCopy, conferenceCopy, v18);
  v24 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
  v29 = objc_msgSend_blockMultipleIncomingInvitations(v24, v25, v26, v27, v28);

  v34 = objc_msgSend_sharedInstance(IMAVController, v30, v31, v32, v33);
  v39 = objc_msgSend_blockIncomingInvitationsDuringCall(v34, v35, v36, v37, v38);

  v43 = objc_msgSend_objectForKey_(propertiesCopy, v40, *MEMORY[0x277D194C8], v41, v42);
  v139 = objc_msgSend_BOOLValue(v43, v44, v45, v46, v47);

  v49 = sub_254761764(v48);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v138 = conferenceCopy;
    v54 = v19;
    v55 = v16;
    if (v29)
    {
      v56 = @"NO";
    }

    else
    {
      v56 = @"YES";
    }

    if (v39)
    {
      v57 = @"NO";
    }

    else
    {
      v57 = @"YES";
    }

    objc_msgSend_sharedInstance(IMAVController, v50, v51, v52, v53);
    v58 = v137 = v39;
    hasRunningConference = objc_msgSend_hasRunningConference(v58, v59, v60, v61, v62);
    *buf = 138412802;
    v64 = @"YES";
    if (!hasRunningConference)
    {
      v64 = @"NO";
    }

    *&buf[4] = v56;
    v16 = v55;
    v19 = v54;
    v142 = 2112;
    v143 = v57;
    conferenceCopy = v138;
    v144 = 2112;
    v145 = v64;
    _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "Allowing multiple invitations: %@, Allowing incoming invitations during call: %@, Has running conference %@", buf, 0x20u);

    v39 = v137;
  }

  if (!v39)
  {
    goto LABEL_23;
  }

  v69 = objc_msgSend_sharedInstance(IMAVCallManager, v65, v66, v67, v68);
  v74 = objc_msgSend_callState(v69, v70, v71, v72, v73);

  if (v74 == 3)
  {
    v80 = sub_254761764(v75);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = conferenceCopy;
      v81 = "We have a call we're making, declining conference ID: %@";
LABEL_18:
      _os_log_impl(&dword_254743000, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 0xCu);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v82 = objc_msgSend_sharedInstance(IMAVCallManager, v76, v77, v78, v79);
  v87 = objc_msgSend_callState(v82, v83, v84, v85, v86);

  if (v87 == 1)
  {
    v80 = sub_254761764(v88);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = conferenceCopy;
      v81 = "We have a call we're invited to, declining conference ID: %@";
      goto LABEL_18;
    }

LABEL_19:

    isVideo_callerProperties = objc_msgSend_sharedInstance(IMAVController, v93, v94, v95, v96);
    objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(isVideo_callerProperties, v98, handleCopy, 2, propertiesCopy, 0, conferenceCopy);
LABEL_31:

    goto LABEL_33;
  }

  v99 = objc_msgSend_sharedInstance(IMAVController, v89, v90, v91, v92);
  v104 = objc_msgSend_hasRunningConference(v99, v100, v101, v102, v103);

  if (!v104)
  {
LABEL_23:
    if (!v29)
    {
      goto LABEL_28;
    }

    v105 = objc_msgSend__incomingInvitations(IMAVChat, v65, v66, v67, v68);
    if (objc_msgSend_count(v105, v106, v107, v108, v109))
    {
    }

    else
    {
      v114 = objc_msgSend__outgoingInvitations(IMAVChat, v110, v111, v112, v113);
      v119 = objc_msgSend_count(v114, v115, v116, v117, v118);

      if (!v119)
      {
        goto LABEL_28;
      }
    }

    if (objc_msgSend__notAllowingInvitesAndChatInvitesNonZero_fromHandle_properties_(self, v65, conferenceCopy, handleCopy, propertiesCopy))
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if (objc_msgSend__notAllowingInvitesDuringCallAndRunningConference_fromHandle_properties_(self, v65, conferenceCopy, handleCopy, propertiesCopy))
  {
    goto LABEL_33;
  }

LABEL_28:
  objc_msgSend__checkConferenceCapabilities_(self, v65, handleCopy, v67, v68);
  *buf = 0;
  if (!objc_msgSend__isReady_reason_(self, v120, v139, buf, v121))
  {
    objc_msgSend__handleInviteFailed_fromHandle_conference_properties_reason_(self, v122, accountCopy, handleCopy, conferenceCopy, propertiesCopy, *buf);
    goto LABEL_33;
  }

  if (handleCopy)
  {
    v123 = [IMAVChat alloc];
    isVideo_callerProperties = objc_msgSend_initIncomingFrom_isVideo_callerProperties_(v123, v124, handleCopy, v139 ^ 1, propertiesCopy);
    objc_msgSend__setConferenceID_(isVideo_callerProperties, v125, conferenceCopy, v126, v127);
    objc_msgSend__setUpChat_isAudioOnly_conference_properties_protectedType_avChat_(self, v128, handleCopy, v139, conferenceCopy, propertiesCopy, 0, isVideo_callerProperties);
    objc_msgSend_cancelInvitation(v19, v129, v130, v131, v132);
    objc_msgSend_endChat(v16, v133, v134, v135, v136);
    goto LABEL_31;
  }

LABEL_33:
}

- (void)account:(id)account conference:(id)conference remoteUser:(id)user properties:(id)properties
{
  v31 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  userCopy = user;
  propertiesCopy = properties;
  accountCopy = account;
  v14 = sub_254761764(accountCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = userCopy;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Received protected initiate in IMAVHandler for remoteUser %@", &v29, 0xCu);
  }

  v19 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v15, v16, v17, v18);
  v23 = objc_msgSend_accountForUniqueID_(v19, v20, accountCopy, v21, v22);

  v28 = objc_msgSend_imHandleWithInfo_(v23, v24, userCopy, v25, v26);
  if (v28)
  {
    objc_msgSend__handleProtectedIncomingWithAccount_fromHandle_conference_properties_(self, v27, v23, v28, conferenceCopy, propertiesCopy);
  }
}

- (void)account:(id)account conference:(id)conference receivedInvitationFrom:(id)from properties:(id)properties
{
  v33 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  fromCopy = from;
  propertiesCopy = properties;
  accountCopy = account;
  v14 = sub_254761764(accountCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412546;
    v30 = fromCopy;
    v31 = 2112;
    v32 = conferenceCopy;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Incoming VC Invitation from: %@   conference ID: %@", &v29, 0x16u);
  }

  v19 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v15, v16, v17, v18);
  v23 = objc_msgSend_accountForUniqueID_(v19, v20, accountCopy, v21, v22);

  v27 = objc_msgSend_imHandleWithInfo_(v23, v24, fromCopy, v25, v26);
  objc_msgSend__handleIncomingWithAccount_fromHandle_conference_properties_(self, v28, v23, v27, conferenceCopy, propertiesCopy);
}

- (void)account:(id)account conference:(id)conference receivedResponseToInvitationFrom:(id)from properties:(id)properties
{
  v82 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  propertiesCopy = properties;
  v11 = MEMORY[0x277D18D28];
  fromCopy = from;
  accountCopy = account;
  v18 = objc_msgSend_sharedInstance(v11, v14, v15, v16, v17);
  v22 = objc_msgSend_accountForUniqueID_(v18, v19, accountCopy, v20, v21);

  v77 = v22;
  v26 = objc_msgSend_imHandleWithInfo_(v22, v23, fromCopy, v24, v25);

  v28 = sub_254761764(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_msgSend_ID(v26, v29, v30, v31, v32);
    *buf = 138412290;
    v79 = v33;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "Incoming VC Response from: %@", buf, 0xCu);
  }

  v37 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v34, propertiesCopy, v35, v36);
  v41 = v37;
  if (v26)
  {
    objc_msgSend_setObject_forKey_(v37, v38, v26, *MEMORY[0x277D19548], v40);
  }

  v42 = objc_msgSend_objectForKey_(propertiesCopy, v38, *MEMORY[0x277D19558], v39, v40);
  v46 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v43, v42, v44, v45);
  v50 = objc_msgSend_objectForKey_(v46, v47, *MEMORY[0x277D19568], v48, v49);
  v58 = objc_msgSend_unsignedIntValue(v50, v51, v52, v53, v54);
  if (!conferenceCopy)
  {
    v63 = 0;
LABEL_15:
    v69 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v55, v26, conferenceCopy, v58, 0);
    objc_msgSend__responseToVCInvite_(v69, v74, v41, v75, v76);
    goto LABEL_16;
  }

  v59 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v55, conferenceCopy, v56, v57);
  v63 = v59;
  if (!v59)
  {
    goto LABEL_15;
  }

  v64 = objc_msgSend_state(v59, v55, v60, v61, v62);
  if (v64 != 4)
  {
    goto LABEL_15;
  }

  v65 = sub_254761764(v64);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v79 = v63;
    v80 = 2112;
    v81 = conferenceCopy;
    _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "We already have a chat running for %@  (%@)", buf, 0x16u);
  }

  v69 = objc_msgSend_participantMatchingIMHandle_(v63, v66, v26, v67, v68);
  v70 = sub_254761764(v69);
  v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
  if (v69)
  {
    if (v71)
    {
      *buf = 138412290;
      v79 = v69;
      _os_log_impl(&dword_254743000, v70, OS_LOG_TYPE_DEFAULT, "Accept re-initiate for: %@", buf, 0xCu);
    }

    objc_msgSend__processResponseDictionary_allowSecondConnection_(v69, v72, propertiesCopy, 1, v73);
  }

  else
  {
    if (v71)
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v70, OS_LOG_TYPE_DEFAULT, "[WARN] No participant found to accept re-initiate", buf, 2u);
    }
  }

LABEL_16:
}

- (void)account:(id)account conference:(id)conference receivedCancelInvitationFrom:(id)from properties:(id)properties
{
  v76 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v10 = MEMORY[0x277D18D28];
  propertiesCopy = properties;
  fromCopy = from;
  accountCopy = account;
  v18 = objc_msgSend_sharedInstance(v10, v14, v15, v16, v17);
  v22 = objc_msgSend_accountForUniqueID_(v18, v19, accountCopy, v20, v21);

  v26 = objc_msgSend_imHandleWithInfo_(v22, v23, fromCopy, v24, v25);

  v28 = sub_254761764(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_msgSend_ID(v26, v29, v30, v31, v32);
    v72 = 138412290;
    v73 = v33;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "Incoming VC Cancel from: %@", &v72, 0xCu);
  }

  v37 = objc_msgSend_objectForKey_(propertiesCopy, v34, *MEMORY[0x277D19558], v35, v36);

  v41 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v38, v37, v39, v40);
  v45 = objc_msgSend_objectForKey_(v41, v42, *MEMORY[0x277D19568], v43, v44);
  v49 = objc_msgSend_objectForKey_(v41, v46, *MEMORY[0x277D19550], v47, v48);
  v54 = objc_msgSend_unsignedIntValue(v45, v50, v51, v52, v53);
  v56 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v55, v26, conferenceCopy, v54, 0);
  v57 = sub_254761764(v56);
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
  if (v56)
  {
    if (v58)
    {
      v72 = 138412290;
      v73 = v56;
      _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "Found chat to cancel: %@", &v72, 0xCu);
    }

    v67 = objc_msgSend_intValue(v49, v63, v64, v65, v66);
    if (v67 == 10)
    {
      v70 = 29;
    }

    else
    {
      v70 = 1;
    }

    if (v67 == 8)
    {
      objc_msgSend__cancelInvitationWithReason_error_(v56, v68, 27, 0, v69);
    }

    else
    {
      objc_msgSend__cancelInvitationWithReason_error_(v56, v68, v70, 0, v69);
    }
  }

  else
  {
    if (v58)
    {
      v71 = objc_msgSend_ID(v26, v59, v60, v61, v62);
      v72 = 138412546;
      v73 = conferenceCopy;
      v74 = 2112;
      v75 = v71;
      _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "[WARN] Found no VC chat to cancel for conference: %@ with buddy: %@", &v72, 0x16u);
    }
  }
}

- (void)account:(id)account conference:(id)conference receivedAVMessage:(unsigned int)message from:(id)from sessionID:(unsigned int)d userInfo:(id)info
{
  v9 = *&d;
  v11 = *&message;
  accountCopy = account;
  fromCopy = from;
  infoCopy = info;
  v20 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v15, 0, conference, v9, 0);
  if (v20)
  {
    v21 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v16, v17, v18, v19);
    v25 = objc_msgSend_accountForUniqueID_(v21, v22, accountCopy, v23, v24);

    v29 = objc_msgSend_imHandleWithInfo_(v25, v26, fromCopy, v27, v28);
    v33 = objc_msgSend_participantMatchingIMHandle_(v20, v30, v29, v31, v32);

    objc_msgSend_handleGenericAVMessageFromParticipant_type_userInfo_(v20, v34, v33, v11, infoCopy);
  }
}

- (void)account:(id)account conference:(id)conference peerIDChangedFromID:(id)d toID:(id)iD
{
  v30 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  conferenceCopy = conference;
  dCopy = d;
  iDCopy = iD;
  v13 = sub_254761764(iDCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    v23 = accountCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Account: %@    Requested changing of Peer ID from: %@  to %@", &v22, 0x20u);
  }

  v17 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v14, conferenceCopy, v15, v16);
  v20 = v17;
  if (v17)
  {
    objc_msgSend__peerID_changedTo_(v17, v18, dCopy, iDCopy, v19);
  }

  else
  {
    v21 = sub_254761764(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138413058;
      v23 = accountCopy;
      v24 = 2112;
      v25 = conferenceCopy;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = iDCopy;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "%@ requested a change of conference (%@) peer ID: %@  to: %@  but it doesn't exist!", &v22, 0x2Au);
    }
  }
}

- (void)account:(id)account conference:(id)conference changedToNewConferenceID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  conferenceCopy = conference;
  dCopy = d;
  v10 = sub_254761764(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    v23 = accountCopy;
    v24 = 2112;
    v25 = conferenceCopy;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Account: %@    Requested changing of conference ID: %@  to %@", &v22, 0x20u);
  }

  v14 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v11, conferenceCopy, v12, v13);
  v15 = sub_254761764(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v22 = 138412290;
      v23 = dCopy;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "VC Conference ID Set to: %@", &v22, 0xCu);
    }

    objc_msgSend__setConferenceID_(v14, v17, dCopy, v18, v19);
  }

  else
  {
    if (v16)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "** VC Conference ID could not be set!", &v22, 2u);
    }

    v21 = sub_254761764(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412802;
      v23 = accountCopy;
      v24 = 2112;
      v25 = conferenceCopy;
      v26 = 2112;
      v27 = dCopy;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "%@ requested a change of conference ID: %@  to: %@  but it doesn't exist!", &v22, 0x20u);
    }
  }
}

- (void)_notifyOfIncomingInvitationFor:(id)for notifyInvitationListeners:(BOOL)listeners
{
  listenersCopy = listeners;
  v65 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v6 = sub_254761764(forCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (listenersCopy)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v62 = forCopy;
    v63 = 2112;
    v64 = v7;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "chat %@ notifyInvitationListeners %@", buf, 0x16u);
  }

  if (listenersCopy)
  {
    if (!objc_msgSend_state(forCopy, v8, v9, v10, v11))
    {
      v55 = forCopy;
      objc_msgSend_beginChat(forCopy, v12, v13, v14, v15);
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v20 = objc_msgSend_sharedInstance(IMAVController, v16, v17, v18, v19);
      v25 = objc_msgSend_delegates(v20, v21, v22, v23, v24);

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v56, v60, 16);
      if (v27)
      {
        v28 = v27;
        v29 = *v57;
        do
        {
          v30 = 0;
          do
          {
            if (*v57 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v56 + 1) + 8 * v30);
            v32 = sub_254761764(v27);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v62 = v31;
              _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, "Checking delegate: %@", buf, 0xCu);
            }

            v33 = objc_opt_respondsToSelector();
            v34 = v33;
            v35 = sub_254761764(v33);
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
            if (v34)
            {
              if (v36)
              {
                *buf = 138412290;
                v62 = v31;
                _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
              }

              v27 = objc_msgSend_invitedToIMAVChat_(v31, v37, v55, v38, v39);
            }

            else
            {
              if (v36)
              {
                *buf = 138412290;
                v62 = v31;
                _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
              }
            }

            ++v30;
          }

          while (v28 != v30);
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v40, &v56, v60, 16);
          v28 = v27;
        }

        while (v27);
      }

      forCopy = v55;
    }

    v41 = objc_msgSend_initiatorIMHandle(forCopy, v12, v13, v14, v15);
    v46 = objc_msgSend_ID(v41, v42, v43, v44, v45);
    isVideo = objc_msgSend_isVideo(forCopy, v47, v48, v49, v50);
    objc_msgSend__submitCallStartedLoggingWithRecipientID_isCaller_isVideo_(forCopy, v52, v46, 0, isVideo);

    if (ShouldAutoAcceptInvitations())
    {
      objc_msgSend_performSelector_withObject_afterDelay_(forCopy, v53, sel_acceptInvitation, 0, v54, 0.0);
    }
  }
}

- (void)_enqueueIMAVChatForNetworkActivation:(id)activation
{
  v156 = *MEMORY[0x277D85DE8];
  activationCopy = activation;
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_pendingChats, v5, activationCopy, v6, v7) & 1) == 0)
  {
    if (!self->_pendingLookups)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pendingLookups = self->_pendingLookups;
      self->_pendingLookups = v12;
    }

    if (!self->_pendingChats)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pendingChats = self->_pendingChats;
      self->_pendingChats = v14;
    }

    v141 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v8, v9, v10, v11);
    v20 = objc_msgSend_allowAnyNetwork(v141, v16, v17, v18, v19);
    if (v20)
    {
      v25 = sub_254761764(v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "We're allowed to use any network, bypassing check", buf, 2u);
      }

      v30 = objc_msgSend_state(activationCopy, v26, v27, v28, v29);
      if (v30 > 4)
      {
        goto LABEL_47;
      }

      v31 = sub_254761764(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v153 = activationCopy;
        _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Notifying for chat: %@", buf, 0xCu);
      }

      objc_msgSend__notifyOfIncomingInvitationFor_notifyInvitationListeners_(self, v32, activationCopy, 1, v33);
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v34 = self->_pendingChats;
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v142, v151, 16);
      v38 = v36;
      if (v36)
      {
        v39 = *v143;
        do
        {
          v40 = 0;
          do
          {
            if (*v143 != v39)
            {
              objc_enumerationMutation(v34);
            }

            v41 = *(*(&v142 + 1) + 8 * v40);
            if (v41 != activationCopy)
            {
              v42 = sub_254761764(v36);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v153 = v41;
                _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "Declining other chat: %@", buf, 0xCu);
              }

              v36 = objc_msgSend_declineInvitationWithResponse_(v41, v43, 2, v44, v45);
            }

            ++v40;
          }

          while (v38 != v40);
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v142, v151, 16);
          v38 = v36;
        }

        while (v36);
      }
    }

    else
    {
      v46 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v21, v22, v23, v24);
      v50 = objc_msgSend_wifiAllowedForBundleId_(v46, v47, @"com.apple.facetime", v48, v49);

      v55 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v51, v52, v53, v54);
      v56 = v50;
      v61 = objc_msgSend_nonWifiFaceTimeAvailable(v55, v57, v58, v59, v60);

      if (v61)
      {
        v66 = 2.0;
      }

      else
      {
        v66 = 15.0;
      }

      if (v61)
      {
        v67 = (v56 | 2);
      }

      else
      {
        v67 = v56;
      }

      v68 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v62, v63, v64, v65);
      isScreenLit = objc_msgSend_isScreenLit(v68, v69, v70, v71, v72);

      if (isScreenLit)
      {
        v74 = objc_alloc_init(MEMORY[0x277CBEAA8]);
        v79 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v75, v76, v77, v78);
        v84 = objc_msgSend_dateScreenLightLastChanged(v79, v80, v81, v82, v83);

        v88 = objc_msgSend_timeIntervalSinceDate_(v74, v85, v84, v86, v87);
        v90 = v89;
        v91 = sub_254761764(v88);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v153 = *&v90;
          _os_log_impl(&dword_254743000, v91, OS_LOG_TYPE_DEFAULT, "Time since lights on: %f", buf, 0xCu);
        }

        if (v90 <= 0.0)
        {
          v92 = v66;
        }

        else
        {
          v92 = 0.0;
          if (v90 < v66)
          {
            v92 = v66 - v90;
          }
        }
      }

      else
      {
        v92 = v66;
      }

      IMTimeOfDay();
      v94 = v93;
      v99 = objc_msgSend__timings(activationCopy, v95, v96, v97, v98);
      objc_msgSend_startTimingForKey_(v99, v100, @"incoming-network-check", v101, v102);

      v104 = sub_254761764(v103);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v153 = 0x403E000000000000;
        v154 = 2048;
        v155 = v92;
        _os_log_impl(&dword_254743000, v104, OS_LOG_TYPE_DEFAULT, "Starting availability check with network timeout: %fs   wifi timeout: %fs", buf, 0x16u);
      }

      v105 = objc_alloc(MEMORY[0x277D19280]);
      objc_initWeak(&location, v105);
      v106 = v105;
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = sub_254747DC4;
      v146[3] = &unk_2797830B8;
      v107 = activationCopy;
      v147 = v107;
      v149[1] = v94;
      objc_copyWeak(v149, &location);
      selfCopy = self;
      v149[2] = v67;
      v34 = objc_msgSend_initWithFlags_options_timeout_wifiTimeout_completionBlock_(v106, v108, v67, 0, v146, 30.0, v92);

      v110 = sub_254761764(v109);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v115 = objc_msgSend_initiatorIMHandle(v107, v111, v112, v113, v114);
        v120 = objc_msgSend_ID(v115, v116, v117, v118, v119);
        v125 = objc_msgSend_conferenceID(v107, v121, v122, v123, v124);
        *buf = 138412546;
        v153 = v120;
        v154 = 2112;
        v155 = *&v125;
        _os_log_impl(&dword_254743000, v110, OS_LOG_TYPE_DEFAULT, "Enqueing VC Invitation from: %@   conference ID: %@", buf, 0x16u);
      }

      objc_msgSend_setContext_(v34, v126, v107, v127, v128);
      objc_msgSend_addObject_(self->_pendingLookups, v129, v34, v130, v131);
      v135 = objc_msgSend_addObject_(self->_pendingChats, v132, v107, v133, v134);
      v136 = sub_254761764(v135);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v153 = v107;
        _os_log_impl(&dword_254743000, v136, OS_LOG_TYPE_DEFAULT, "Adding pendingChat %@", buf, 0xCu);
      }

      objc_msgSend_start(v34, v137, v138, v139, v140);
      objc_destroyWeak(v149);

      objc_destroyWeak(&location);
    }

LABEL_47:
  }
}

- (void)_handleIncomingAVChatForNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = sub_254761764(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_initiatorIMHandle(notificationCopy, v6, v7, v8, v9);
    v15 = objc_msgSend_ID(v10, v11, v12, v13, v14);
    v20 = objc_msgSend_conferenceID(notificationCopy, v16, v17, v18, v19);
    v28 = 138412546;
    v29 = v15;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Handling VC Invitation from: %@   conference ID: %@", &v28, 0x16u);
  }

  v22 = sub_254761764(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Will try to bring up network if needed", &v28, 2u);
  }

  objc_msgSend__enqueueIMAVChatForNetworkActivation_(self, v23, notificationCopy, v24, v25);
  objc_msgSend__notifyOfIncomingInvitationFor_notifyInvitationListeners_(self, v26, notificationCopy, 0, v27);
}

- (void)account:(id)account avAction:(unsigned int)action withArguments:(id)arguments toAVChat:(id)chat isVideo:(BOOL)video
{
  videoCopy = video;
  v272 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  argumentsCopy = arguments;
  chatCopy = chat;
  v14 = sub_254761764(chatCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *&v269[8] = 1024;
    v15 = @"NO";
    *buf = 138413314;
    *v269 = accountCopy;
    if (videoCopy)
    {
      v15 = @"YES";
    }

    *&v269[10] = action;
    *&v269[14] = 2112;
    *&v269[16] = argumentsCopy;
    *&v269[24] = 2112;
    *&v269[26] = chatCopy;
    v270 = 2112;
    v271 = v15;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "account %@   avAction %d   withArguments %@   toAVChat %@   isVideo %@", buf, 0x30u);
  }

  if (!action)
  {
    v30 = sub_254761764(v16);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Told to create an outgoing chat", buf, 2u);
    }

    v24 = objc_msgSend_objectForKey_(argumentsCopy, v31, @"Initiator", v32, v33);
    v37 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v34, v24, v35, v36);
    v259 = objc_msgSend_objectForKey_(argumentsCopy, v38, @"Other", v39, v40);
    v260 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v41, v259, v42, v43);
    v47 = objc_msgSend_objectForKey_(argumentsCopy, v44, @"IsRelayed", v45, v46);
    v52 = objc_msgSend_BOOLValue(v47, v48, v49, v50, v51);

    v56 = objc_msgSend_objectForKey_(argumentsCopy, v53, @"GUID", v54, v55);
    v57 = v56;
    if (!v37 || !v260 || !v56)
    {
      isRelayed_GUID = sub_254761764(v56);
      if (os_log_type_enabled(isRelayed_GUID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v269 = v37;
        *&v269[8] = 2112;
        *&v269[10] = v260;
        *&v269[18] = 2112;
        *&v269[20] = v57;
        _os_log_impl(&dword_254743000, isRelayed_GUID, OS_LOG_TYPE_DEFAULT, "Missing arguments to create outgoing chat, initiatorIMHandle %@ otherIMHandle %@ guid %@", buf, 0x20u);
      }

      v84 = v259;
      goto LABEL_43;
    }

    v255 = v37;
    v256 = v24;
    v257 = accountCopy;
    v58 = v56;
    v59 = [IMAVChat alloc];
    v63 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v60, v260, v61, v62);
    v254 = v58;
    isRelayed_GUID = objc_msgSend__initOutgoingTo_isVideo_isRelayed_GUID_(v59, v64, v63, videoCopy, v52, v58);

    v70 = objc_msgSend_sharedInstance(IMAVController, v66, v67, v68, v69);
    if (objc_msgSend__shouldRunConferences(v70, v71, v72, v73, v74))
    {
    }

    else
    {
      v85 = objc_msgSend_sharedInstance(IMAVController, v75, v76, v77, v78);
      shouldRunACConferences = objc_msgSend__shouldRunACConferences(v85, v86, v87, v88, v89);

      if (!shouldRunACConferences)
      {
LABEL_42:
        v84 = v259;
        v37 = v255;
        v24 = v256;
        v57 = v254;
LABEL_43:

        goto LABEL_44;
      }
    }

    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v91 = objc_msgSend_sharedInstance(IMAVController, v79, v80, v81, v82, argumentsCopy);
    v96 = objc_msgSend_delegates(v91, v92, v93, v94, v95);

    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v263, v267, 16);
    if (v98)
    {
      v99 = v98;
      v100 = *v264;
      do
      {
        v101 = 0;
        do
        {
          if (*v264 != v100)
          {
            objc_enumerationMutation(v96);
          }

          v102 = *(*(&v263 + 1) + 8 * v101);
          v103 = sub_254761764(v98);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v269 = v102;
            _os_log_impl(&dword_254743000, v103, OS_LOG_TYPE_DEFAULT, "Checking delegate: %@", buf, 0xCu);
          }

          v104 = objc_opt_respondsToSelector();
          v105 = v104;
          v106 = sub_254761764(v104);
          v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
          if (v105)
          {
            if (v107)
            {
              *buf = 138412290;
              *v269 = v102;
              _os_log_impl(&dword_254743000, v106, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
            }

            v98 = objc_msgSend_createdOutgoingIMAVChat_(v102, v108, isRelayed_GUID, v109, v110);
          }

          else
          {
            if (v107)
            {
              *buf = 138412290;
              *v269 = v102;
              _os_log_impl(&dword_254743000, v106, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
            }
          }

          ++v101;
        }

        while (v99 != v101);
        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v111, &v263, v267, 16);
        v99 = v98;
      }

      while (v98);
    }

    accountCopy = v257;
    argumentsCopy = v253;
    goto LABEL_42;
  }

  v20 = objc_msgSend__avChatWithGUID_(IMAVChat, v17, chatCopy, v18, v19);
  v24 = v20;
  if (v20)
  {
    switch(action)
    {
      case 1u:
        v25 = sub_254761764(v20);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v269 = v24;
          _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Told to accept chat %@", buf, 0xCu);
        }

        objc_msgSend_acceptInvitation(v24, v26, v27, v28, v29);
        break;
      case 2u:
        v196 = sub_254761764(v20);
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v269 = v24;
          _os_log_impl(&dword_254743000, v196, OS_LOG_TYPE_DEFAULT, "Told to decline chat %@", buf, 0xCu);
        }

        objc_msgSend_declineInvitation(v24, v197, v198, v199, v200);
        break;
      case 3u:
        v163 = sub_254761764(v20);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v269 = v24;
          _os_log_impl(&dword_254743000, v163, OS_LOG_TYPE_DEFAULT, "Told to cancel chat %@", buf, 0xCu);
        }

        objc_msgSend_cancelInvitation(v24, v164, v165, v166, v167);
        break;
      case 4u:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"EndedReason", v22, v23);
        v172 = objc_msgSend_intValue(v83, v168, v169, v170, v171);
        v173 = sub_254761764(v172);
        v174 = os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT);
        if (v172)
        {
          if (v174)
          {
            _NSStringDescriptionForIMAVChatEndedReason(v172, v175, v176, v177, v178);
            v180 = v179 = v24;
            *buf = 138412546;
            *v269 = v179;
            *&v269[8] = 2112;
            *&v269[10] = v180;
            _os_log_impl(&dword_254743000, v173, OS_LOG_TYPE_DEFAULT, "Told to end chat %@ with reason %@", buf, 0x16u);

            v24 = v179;
          }

          objc_msgSend_endChatWithReason_(v24, v181, v172, v182, v183);
        }

        else
        {
          if (v174)
          {
            *buf = 138412290;
            *v269 = v24;
            _os_log_impl(&dword_254743000, v173, OS_LOG_TYPE_DEFAULT, "Told to end chat %@", buf, 0xCu);
          }

          objc_msgSend_endChat(v24, v249, v250, v251, v252);
        }

        goto LABEL_20;
      case 5u:
        v140 = sub_254761764(v20);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v269 = v24;
          _os_log_impl(&dword_254743000, v140, OS_LOG_TYPE_DEFAULT, "Told to inviteAll on chat %@", buf, 0xCu);
        }

        objc_msgSend_inviteAll(v24, v141, v142, v143, v144);
        break;
      case 6u:
        v201 = sub_254761764(v20);
        if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v269 = v24;
          _os_log_impl(&dword_254743000, v201, OS_LOG_TYPE_DEFAULT, "Told to inviteAdditionalPeers on chat %@", buf, 0xCu);
        }

        v83 = objc_msgSend_objectForKey_(argumentsCopy, v202, @"Buddy", v203, v204);
        v208 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v205, v83, v206, v207);
        v212 = objc_msgSend_objectForKey_(argumentsCopy, v209, @"AdditionalPeers", v210, v211);
        objc_msgSend_objectForKey_(argumentsCopy, v213, @"ExcludingPushTokens", v214, v215);
        v217 = v216 = v24;
        objc_msgSend_invite_additionalPeers_excludingPushTokens_(v216, v218, v208, v212, v217);

        v24 = v216;
        goto LABEL_20;
      case 7u:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"InvitationTimeoutTime", v22, v23);
        v223 = objc_msgSend_doubleValue(v83, v219, v220, v221, v222);
        v225 = v224;
        v226 = sub_254761764(v223);
        if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *v269 = v225;
          *&v269[8] = 2112;
          *&v269[10] = v24;
          _os_log_impl(&dword_254743000, v226, OS_LOG_TYPE_DEFAULT, "Told to setInvitationTimeoutTime to %f on chat %@", buf, 0x16u);
        }

        objc_msgSend_setInvitationTimeoutTime_(v24, v227, v228, v229, v230, v225);
        goto LABEL_20;
      case 8u:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"ConnectionTimeoutTime", v22, v23);
        v188 = objc_msgSend_doubleValue(v83, v184, v185, v186, v187);
        v190 = v189;
        v191 = sub_254761764(v188);
        if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *v269 = v190;
          *&v269[8] = 2112;
          *&v269[10] = v24;
          _os_log_impl(&dword_254743000, v191, OS_LOG_TYPE_DEFAULT, "Told to setConnectionTimeoutTime to %f on chat %@", buf, 0x16u);
        }

        objc_msgSend_setConnectionTimeoutTime_(v24, v192, v193, v194, v195, v190);
        goto LABEL_20;
      case 9u:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"IsMute", v22, v23);
        v244 = objc_msgSend_BOOLValue(v83, v240, v241, v242, v243);
        v245 = sub_254761764(v244);
        if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v269 = v244;
          *&v269[4] = 2112;
          *&v269[6] = v24;
          _os_log_impl(&dword_254743000, v245, OS_LOG_TYPE_DEFAULT, "Told to setMute to %d on chat %@", buf, 0x12u);
        }

        objc_msgSend_setMute_(v24, v246, v244, v247, v248);
        goto LABEL_20;
      case 0xAu:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"IsRelayed", v22, v23);
        v158 = objc_msgSend_BOOLValue(v83, v154, v155, v156, v157);
        v159 = sub_254761764(v158);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v269 = v158;
          *&v269[4] = 2112;
          *&v269[6] = v24;
          _os_log_impl(&dword_254743000, v159, OS_LOG_TYPE_DEFAULT, "Told to setRelayed to %d on chat %@", buf, 0x12u);
        }

        objc_msgSend_setRelayed_(v24, v160, v158, v161, v162);
        goto LABEL_20;
      case 0xBu:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"IsSendingAudio", v22, v23);
        v235 = objc_msgSend_BOOLValue(v83, v231, v232, v233, v234);
        v236 = sub_254761764(v235);
        if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v269 = v235;
          *&v269[4] = 2112;
          *&v269[6] = v24;
          _os_log_impl(&dword_254743000, v236, OS_LOG_TYPE_DEFAULT, "Told to setIsSendingAudio to %d on chat %@", buf, 0x12u);
        }

        objc_msgSend_setIsSendingAudio_(v24, v237, v235, v238, v239);
        goto LABEL_20;
      case 0xCu:
        v258 = chatCopy;
        v112 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"AspectRatio", v22, v23);
        v261 = 0.0;
        v262 = 0.0;
        objc_msgSend_getValue_(v112, v113, &v261, v114, v115);
        v116 = v261;
        v117 = v262;
        v121 = objc_msgSend_objectForKey_(argumentsCopy, v118, @"Orientation", v119, v120);
        v126 = objc_msgSend_unsignedIntValue(v121, v122, v123, v124, v125);
        v130 = objc_msgSend_objectForKey_(argumentsCopy, v127, @"CameraType", v128, v129);
        v135 = objc_msgSend_unsignedIntValue(v130, v131, v132, v133, v134);
        v136 = sub_254761764(v135);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          v273.width = v116;
          v273.height = v117;
          v137 = NSStringFromSize(v273);
          *buf = 138413058;
          *v269 = v137;
          *&v269[8] = 1024;
          *&v269[10] = v126;
          *&v269[14] = 1024;
          *&v269[16] = v135;
          *&v269[20] = 2112;
          *&v269[22] = v24;
          _os_log_impl(&dword_254743000, v136, OS_LOG_TYPE_DEFAULT, "Told to setLocalAspectRatio %@ for orientation %d cameraType %d on chat %@", buf, 0x22u);
        }

        objc_msgSend_setLocalAspectRatio_cameraOrientation_cameraType_(v24, v138, v126, v135, v139, v116, v117);
        chatCopy = v258;
        break;
      case 0xDu:
        v83 = objc_msgSend_objectForKey_(argumentsCopy, v21, @"IsSendingVideo", v22, v23);
        v149 = objc_msgSend_BOOLValue(v83, v145, v146, v147, v148);
        v150 = sub_254761764(v149);
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v269 = v149;
          *&v269[4] = 2112;
          *&v269[6] = v24;
          _os_log_impl(&dword_254743000, v150, OS_LOG_TYPE_DEFAULT, "Told to setIsSendingVideo to %d on chat %@", buf, 0x12u);
        }

        objc_msgSend_setIsSendingVideo_(v24, v151, v149, v152, v153);
        goto LABEL_20;
      default:
        break;
    }
  }

  else
  {
    v83 = sub_254761764(0);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v83, OS_LOG_TYPE_DEFAULT, "We don't have this chat, ignoring...", buf, 2u);
    }

LABEL_20:
  }

LABEL_44:
}

- (void)vcCapabilitiesChanged:(unint64_t)changed
{
  v9 = objc_msgSend_sharedInstance(IMAVController, a2, changed, v3, v4);
  objc_msgSend_vcCapabilitiesChanged_(v9, v6, changed, v7, v8);
}

- (void)pendingVCRequestComplete
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v5, @"__kIMAVControllerPendingAVInvitationRequestComplete", 0, v6);
}

- (void)pendingACRequestComplete
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v5, @"__kIMAVControllerPendingACInvitationRequestComplete", 0, v6);
}

- (void)setupComplete
{
  v5 = objc_msgSend_sharedController(MEMORY[0x277D18D68], a2, v2, v3, v4);
  v10 = objc_msgSend_listener(v5, v6, v7, v8, v9);
  v102 = objc_msgSend_properties(v10, v11, v12, v13, v14);

  v19 = objc_msgSend_sharedInstance(IMAVController, v15, v16, v17, v18);
  if ((objc_msgSend__shouldRunACConferences(v19, v20, v21, v22, v23) & 1) == 0)
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v24, v25, v26, v27);
    shouldObserveConferences = objc_msgSend__shouldObserveConferences(v28, v29, v30, v31, v32);

    if (!shouldObserveConferences)
    {
      goto LABEL_5;
    }

    v19 = objc_msgSend_objectForKey_(v102, v34, @"ACChatProxy", v36, v37);
    v42 = objc_msgSend_sharedInstance(IMAVCallManager, v38, v39, v40, v41);
    objc_msgSend__updateACChatProxyWithInfo_(v42, v43, v19, v44, v45);
  }

LABEL_5:
  v46 = objc_msgSend_sharedInstance(IMAVController, v34, v35, v36, v37);
  if ((objc_msgSend__shouldRunConferences(v46, v47, v48, v49, v50) & 1) == 0)
  {
    v55 = objc_msgSend_sharedInstance(IMAVController, v51, v52, v53, v54);
    v60 = objc_msgSend__shouldObserveConferences(v55, v56, v57, v58, v59);

    if (!v60)
    {
      goto LABEL_9;
    }

    v46 = objc_msgSend_objectForKey_(v102, v61, @"AVChatProxy", v63, v64);
    v69 = objc_msgSend_sharedInstance(IMAVCallManager, v65, v66, v67, v68);
    objc_msgSend__updateAVChatProxyWithInfo_(v69, v70, v46, v71, v72);
  }

LABEL_9:
  v73 = objc_msgSend_sharedInstance(IMAVController, v61, v62, v63, v64);
  if (objc_msgSend__shouldRunConferences(v73, v74, v75, v76, v77))
  {
  }

  else
  {
    v86 = objc_msgSend_sharedInstance(IMAVController, v78, v79, v80, v81);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v86, v87, v88, v89, v90);

    if (!shouldRunACConferences)
    {
      goto LABEL_13;
    }
  }

  v92 = objc_msgSend_sharedInstance(IMAVController, v82, v83, v84, v85);
  objc_msgSend_pushCachedVCCapsToDaemon(v92, v93, v94, v95, v96);

LABEL_13:
  v97 = objc_msgSend_sharedInstance(IMAVCallManager, v82, v83, v84, v85);
  objc_msgSend__updateOverallChatState(v97, v98, v99, v100, v101);
}

- (void)account:(id)account conference:(id)conference peerID:(id)d propertiesUpdated:(id)updated
{
  v29 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v10 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v8, 0, conference, v9);
  v11 = sub_254761764(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = updatedCopy;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Chat: %@ properties updated to: %@", &v25, 0x16u);
  }

  v16 = objc_msgSend_remoteParticipants(v10, v12, v13, v14, v15);
  v21 = objc_msgSend_lastObject(v16, v17, v18, v19, v20);
  objc_msgSend__updateProperties_(v21, v22, updatedCopy, v23, v24);
}

- (void)property:(id)property changedTo:(id)to from:(id)from
{
  v69 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  toCopy = to;
  if (objc_msgSend_isEqualToString_(propertyCopy, v8, @"AVChatProxy", v9, v10))
  {
    v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
    if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
    {
    }

    else
    {
      v24 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
      shouldObserveConferences = objc_msgSend__shouldObserveConferences(v24, v25, v26, v27, v28);

      if (shouldObserveConferences)
      {
        v31 = sub_254761764(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v67 = 138412290;
          v68 = propertyCopy;
          _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Received %@ property change", &v67, 0xCu);
        }

        v36 = objc_msgSend_sharedInstance(IMAVCallManager, v32, v33, v34, v35);
        objc_msgSend__updateAVChatProxyWithInfo_(v36, v37, toCopy, v38, v39);
        goto LABEL_14;
      }
    }
  }

  if (objc_msgSend_isEqualToString_(propertyCopy, v11, @"ACChatProxy", v13, v14))
  {
    v36 = objc_msgSend_sharedInstance(IMAVController, v40, v41, v42, v43);
    if (objc_msgSend__shouldRunACConferences(v36, v44, v45, v46, v47))
    {
LABEL_14:

      goto LABEL_15;
    }

    v52 = objc_msgSend_sharedInstance(IMAVController, v48, v49, v50, v51);
    v57 = objc_msgSend__shouldObserveConferences(v52, v53, v54, v55, v56);

    if (v57)
    {
      v59 = sub_254761764(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v67 = 138412290;
        v68 = propertyCopy;
        _os_log_impl(&dword_254743000, v59, OS_LOG_TYPE_DEFAULT, "Received %@ property change", &v67, 0xCu);
      }

      v36 = objc_msgSend_sharedInstance(IMAVCallManager, v60, v61, v62, v63);
      objc_msgSend__updateACChatProxyWithInfo_(v36, v64, toCopy, v65, v66);
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from
{
  v9 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v6 = sub_254761764(propertyCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = propertyCopy;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Persistent property %@ changed", &v7, 0xCu);
  }
}

- (void)account:(id)account postedError:(id)error
{
  v101 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  errorCopy = error;
  v11 = objc_msgSend_domain(errorCopy, v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x277D18F40], v13, v14);

  if (isEqualToString)
  {
    v17 = sub_254761764(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v98 = accountCopy;
      v99 = 2112;
      v100 = errorCopy;
      _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "Account: %@   Posted AV Error: %@", buf, 0x16u);
    }

    v22 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v18, v19, v20, v21);
    v26 = objc_msgSend_accountForUniqueID_(v22, v23, accountCopy, v24, v25);

    v28 = sub_254761764(v27);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v29)
      {
        *buf = 138412546;
        v98 = v26;
        v99 = 2112;
        v100 = errorCopy;
        _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "Account: %@    Posted AV Error: %@", buf, 0x16u);
      }

      v34 = objc_msgSend_userInfo(errorCopy, v30, v31, v32, v33);
      v38 = objc_msgSend_objectForKey_(v34, v35, @"ID", v36, v37);
      v96 = objc_msgSend_objectForKey_(v34, v39, @"conference", v40, v41);
      v94 = objc_msgSend_objectForKey_(v34, v42, @"properties", v43, v44);
      v95 = objc_msgSend_objectForKey_(v94, v45, *MEMORY[0x277D19568], v46, v47);
      v51 = objc_msgSend_objectForKey_(v34, v48, @"internalErrorDomain", v49, v50);
      v55 = objc_msgSend_objectForKey_(v34, v52, @"internalUserInfo", v53, v54);
      v59 = objc_msgSend_objectForKey_(v34, v56, @"internalCode", v57, v58);
      v60 = sub_254761764(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v34;
        _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "            UserInfo: %@", buf, 0xCu);
      }

      v62 = sub_254761764(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v96;
        _os_log_impl(&dword_254743000, v62, OS_LOG_TYPE_DEFAULT, "        conferenceID: %@", buf, 0xCu);
      }

      v64 = sub_254761764(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v69 = objc_msgSend_unsignedIntValue(v95, v65, v66, v67, v68);
        *buf = 67109120;
        LODWORD(v98) = v69;
        _os_log_impl(&dword_254743000, v64, OS_LOG_TYPE_DEFAULT, "           SessionID: %u", buf, 8u);
      }

      v71 = sub_254761764(v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v51;
        _os_log_impl(&dword_254743000, v71, OS_LOG_TYPE_DEFAULT, "      internalDomain: %@", buf, 0xCu);
      }

      v73 = sub_254761764(v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v59;
        _os_log_impl(&dword_254743000, v73, OS_LOG_TYPE_DEFAULT, "        internalCode: %@", buf, 0xCu);
      }

      v93 = v51;

      v75 = sub_254761764(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v55;
        _os_log_impl(&dword_254743000, v75, OS_LOG_TYPE_DEFAULT, "    internalUserInfo: %@", buf, 0xCu);
      }

      v76 = v55;

      v77 = v38;
      v81 = objc_msgSend_imHandleWithID_(v26, v78, v38, v79, v80);
      v86 = objc_msgSend_unsignedIntValue(v95, v82, v83, v84, v85);
      v28 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v87, v81, v96, v86, 0);

      v89 = sub_254761764(v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v28;
        _os_log_impl(&dword_254743000, v89, OS_LOG_TYPE_DEFAULT, "  Using found AVChat: %@", buf, 0xCu);
      }

      objc_msgSend__handleAVError_(v28, v90, errorCopy, v91, v92);
    }

    else if (v29)
    {
      *buf = 138412290;
      v98 = errorCopy;
      _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Posted AVError: %@ from nil account", buf, 0xCu);
    }
  }
}

- (void)account:(id)account relay:(id)relay handleInitate:(id)initate fromPerson:(id)person
{
  v42 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  relayCopy = relay;
  initateCopy = initate;
  personCopy = person;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v13, v14, v15, v16);
  v21 = objc_msgSend_accountForUniqueID_(v17, v18, accountCopy, v19, v20);

  if (v21)
  {
    v26 = objc_msgSend_imHandleWithInfo_(v21, v23, personCopy, v24, v25);
    v28 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v27, v26, relayCopy, 0, 0);
    v32 = objc_msgSend_participantMatchingIMHandle_(v28, v29, v26, v30, v31);
    v33 = sub_254761764(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412802;
      v37 = personCopy;
      v38 = 2112;
      v39 = relayCopy;
      v40 = 2112;
      v41 = initateCopy;
      _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "Handling incoming relay initiate from person: %@    conference: %@   request: %@", &v36, 0x20u);
    }

    objc_msgSend__handleRelayInitate_fromParticipant_(v28, v34, initateCopy, v32, v35);
  }

  else
  {
    v26 = sub_254761764(v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412290;
      v37 = accountCopy;
      _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Posted relay initiate: %@ from nil account", &v36, 0xCu);
    }
  }
}

- (void)account:(id)account relay:(id)relay handleUpdate:(id)update fromPerson:(id)person
{
  v42 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  relayCopy = relay;
  updateCopy = update;
  personCopy = person;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v13, v14, v15, v16);
  v21 = objc_msgSend_accountForUniqueID_(v17, v18, accountCopy, v19, v20);

  v23 = sub_254761764(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v24)
    {
      v36 = 138412802;
      v37 = personCopy;
      v38 = 2112;
      v39 = relayCopy;
      v40 = 2112;
      v41 = updateCopy;
      _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Handling incoming relay update from person: %@    conference: %@   request: %@", &v36, 0x20u);
    }

    v23 = objc_msgSend_imHandleWithInfo_(v21, v25, personCopy, v26, v27);
    v29 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v28, v23, relayCopy, 0, 0);
    v33 = objc_msgSend_participantMatchingIMHandle_(v29, v30, v23, v31, v32);
    objc_msgSend__handleRelayUpdate_fromParticipant_(v29, v34, updateCopy, v33, v35);
  }

  else if (v24)
  {
    v36 = 138412290;
    v37 = accountCopy;
    _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Posted relay update: %@ from nil account", &v36, 0xCu);
  }
}

- (void)account:(id)account relay:(id)relay handleCancel:(id)cancel fromPerson:(id)person
{
  v42 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  relayCopy = relay;
  cancelCopy = cancel;
  personCopy = person;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v13, v14, v15, v16);
  v21 = objc_msgSend_accountForUniqueID_(v17, v18, accountCopy, v19, v20);

  v23 = sub_254761764(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v24)
    {
      v36 = 138412802;
      v37 = personCopy;
      v38 = 2112;
      v39 = relayCopy;
      v40 = 2112;
      v41 = cancelCopy;
      _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Handling incoming relay cancel from person: %@    conference: %@   request: %@", &v36, 0x20u);
    }

    v23 = objc_msgSend_imHandleWithInfo_(v21, v25, personCopy, v26, v27);
    v29 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v28, v23, relayCopy, 0, 0);
    v33 = objc_msgSend_participantMatchingIMHandle_(v29, v30, v23, v31, v32);
    objc_msgSend__handleRelayCancel_fromParticipant_(v29, v34, cancelCopy, v33, v35);
  }

  else if (v24)
  {
    v36 = 138412290;
    v37 = accountCopy;
    _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Posted relay cancel: %@ from nil account", &v36, 0xCu);
  }
}

- (void)account:(id)account conference:(id)conference invitationSentSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v29 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v8 = objc_msgSend__bestGuessAVChatWithIMHandle_conferenceID_sessionID_properties_(IMAVChat, v7, 0, conferenceCopy, 0, 0);
  v13 = objc_msgSend_remoteParticipants(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_lastObject(v13, v14, v15, v16, v17);

  v20 = sub_254761764(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"NO";
    if (successfullyCopy)
    {
      v21 = @"YES";
    }

    v25 = 138412546;
    v26 = v21;
    v27 = 2112;
    v28 = conferenceCopy;
    _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Handling invitation sent successfully: %@    conference: %@", &v25, 0x16u);
  }

  objc_msgSend__noteInviteDelivered_(v18, v22, successfullyCopy, v23, v24);
}

@end