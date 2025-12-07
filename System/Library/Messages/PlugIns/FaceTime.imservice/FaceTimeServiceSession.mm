@interface FaceTimeServiceSession
+ (void)initialize;
- (BOOL)_anyPeersForConferenceIDMayRequireBreakBeforeMake:(id)make;
- (BOOL)_checkAliasInfoAndFailIfNecessaryWithAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties;
- (BOOL)_checkBadPushToken:(id)token;
- (BOOL)_checkCanSendRequestsAndFailIfNecessaryAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties;
- (BOOL)_checkConferenceIDAndFailIfNecessaryWithAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties;
- (BOOL)_checkForBadPeerIDWithAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties peerID:(id)iD;
- (BOOL)_checkManagedProfileAndFailIfNecessaryAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties;
- (BOOL)_checkRegistrationAndFailIfNecessaryAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties;
- (BOOL)_hasOutgoingInvitationInFlight;
- (BOOL)_hasOutgoingRelayInitiateInFlight;
- (BOOL)_hasPeersForPeerID:(id)d conferenceID:(id)iD;
- (BOOL)_registrationSupportedForRegistration;
- (BOOL)_validRegistrationStateToAcceptCalls;
- (BOOL)_validRegistrationStateToMakeCalls;
- (BOOL)queue:(id)queue shouldInvoke:(id)invoke;
- (FaceTimeServiceSession)initWithAccount:(id)account service:(id)service;
- (__SecKey)callerPrivateKey;
- (double)_messageTimeoutTimeForMessage:(id)message;
- (id)_displayIDForPeerID:(id)d conferenceID:(id)iD;
- (id)_peerIDForDiplayID:(id)d conferenceID:(id)iD;
- (id)_peerIDPushTokenPairsForConferenceID:(id)d;
- (id)_peerIDPushTokensPairsForPeerID:(id)d conferenceID:(id)iD skippingPairs:(id)pairs;
- (id)_peerIDsForDiplayID:(id)d conferenceID:(id)iD;
- (id)_peerInfoForDisplayID:(id)d conferenceID:(id)iD skippingPairs:(id)pairs;
- (id)_pushTokenForPeerID:(id)d conferenceID:(id)iD;
- (id)_pushTokensForPeerID:(id)d conferenceID:(id)iD;
- (id)callerCertForCallType:(int)type;
- (id)idsAccountForCallType:(int)type;
- (id)idsAccounts;
- (id)loggingName;
- (id)phoneNumber;
- (id)profileID;
- (id)regionBasePhoneNumber;
- (id)regionID;
- (id)regionServerContext;
- (id)registeredURIs;
- (id)topicForCallType:(int)type;
- (id)userID;
- (int)_callTypeForConferenceID:(id)d;
- (unint64_t)queue:(id)queue optionsForInvocation:(id)invocation;
- (void)_cancelOtherInvitesForPeerID:(id)d skipPairs:(id)pairs properties:(id)properties conference:(id)conference reason:(id)reason;
- (void)_cancelVCRequestWithPerson:(id)person properties:(id)properties conference:(id)conference pairsToSkip:(id)skip reason:(id)reason;
- (void)_logLocalInfo;
- (void)_purgeMap;
- (void)_retargetPeerID:(id)d displayID:(id)iD pushToken:(id)token conferenceID:(id)conferenceID;
- (void)_sendRejectToPeerID:(id)d peerToken:(id)token sessionToken:(id)sessionToken callType:(int)type reason:(int64_t)reason clientInfo:(id)info;
- (void)_setAlternateDisplayID:(id)d forPeerID:(id)iD conferenceID:(id)conferenceID;
- (void)_setCallType:(int)type forConferenceID:(id)d;
- (void)_setConferenceIDMap:(id)map forToken:(id)token;
- (void)_setInitiatedConference:(id)conference;
- (void)_setPeerInfo:(id)info conferenceID:(id)d;
- (void)_setPurgeTimer;
- (void)dealloc;
- (void)handler:(id)handler incomingMessage:(id)message topic:(id)topic peerID:(id)d reason:(id)reason clientInfo:(id)info serviceData:(id)data;
- (void)handler:(id)handler peerDisplay:(id)display topic:(id)topic myID:(id)d sessionInitated:(id)initated clientInfo:(id)info peerID:(id)iD peerPushToken:(id)self0;
- (void)handler:(id)handler relayCancelled:(id)cancelled topic:(id)topic peerID:(id)d relayType:(id)type relayTokenAllocReq:(id)req relayConnectionID:(id)value relayTransactionIDAlloc:(id)self0 relayCandidateID:(id)self1 myRelayIP:(id)self2 myRelayPort:(id)self3 peerRelayIP:(id)self4 peerRelayPort:(id)self5 reason:(id)self6 clientInfo:(id)self7 serviceData:(id)self8;
- (void)handler:(id)handler relayInitiated:(id)initiated topic:(id)topic peerID:(id)d peerPushToken:(id)token relayType:(id)type relayConnectionID:(id)value relayTransactionIDAlloc:(id)self0 relayTokenAllocReq:(id)self1 relayCandidateID:(id)self2 myRelayIP:(id)self3 myRelayPort:(id)self4 peerRelayIP:(id)self5 peerRelayPort:(id)self6 clientInfo:(id)self7 serviceData:(id)self8;
- (void)handler:(id)handler relayUpdated:(id)updated topic:(id)topic peerID:(id)d peerPushToken:(id)token relayType:(id)type relayConnectionID:(id)value relayTransactionIDChannelBind:(id)self0 relayTokenChannelBind:(id)self1 relayCandidateID:(id)self2 relayBlob:(id)self3 peerRelayNATIP:(id)self4 peerRelayNATPort:(id)self5 clientInfo:(id)self6 serviceData:(id)self7;
- (void)handler:(id)handler sessionAccepted:(id)accepted topic:(id)topic peerID:(id)d peerCN:(id)n peerPushToken:(id)token peerNATType:(id)type peerBlob:(id)self0 peerNatIP:(id)self1 relayType:(id)self2 relayConnectionID:(id)self3 relayTransactionIDAlloc:(id)self4 relayTokenAllocReq:(id)self5 myRelayIP:(id)self6 myRelayPort:(id)self7 peerRelayIP:(id)self8 peerRelayPort:(id)self9 clientInfo:(id)info serviceData:(id)data;
- (void)handler:(id)handler sessionCancelled:(id)cancelled topic:(id)topic peerID:(id)d reason:(id)reason clientInfo:(id)info serviceData:(id)data;
- (void)handler:(id)handler sessionInitated:(id)initated topic:(id)topic myID:(id)d peerID:(id)iD peerDisplayID:(id)displayID peerCN:(id)n peerPushToken:(id)self0 peerNATType:(id)self1 peerBlob:(id)self2 peerNatIP:(id)self3 clientInfo:(id)self4 serviceData:(id)self5;
- (void)handler:(id)handler sessionRejected:(id)rejected topic:(id)topic peerID:(id)d peerPushToken:(id)token reason:(id)reason clientInfo:(id)info serviceData:(id)self0;
- (void)refreshRegistration;
- (void)refreshServiceCapabilities;
- (void)relay:(id)relay sendCancel:(id)cancel toPerson:(id)person;
- (void)relay:(id)relay sendInitateRequest:(id)request toPerson:(id)person;
- (void)relay:(id)relay sendUpdate:(id)update toPerson:(id)person;
- (void)requestVCWithPerson:(id)person properties:(id)properties conference:(id)conference;
- (void)respondToVCInvitationWithPerson:(id)person properties:(id)properties conference:(id)conference;
- (void)sendAVMessageToPerson:(id)person sessionID:(unsigned int)d type:(unsigned int)type userInfo:(id)info conference:(id)conference;
- (void)sessionWillBecomeInactiveWithAccount:(id)account;
@end

@implementation FaceTimeServiceSession

+ (void)initialize
{
  if (qword_2814228A8 != -1)
  {
    sub_23BCBF7C8();
  }
}

- (void)_purgeMap
{
  v41 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v37 = 138412546;
      v38 = objc_msgSend_GUID(self, v3, v6, v7, v4, v8);
      v39 = 2112;
      v40 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_INFO, "Purging GUID %@ from conference maps %@", &v37, 0x16u);
    }
  }

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v3, self, sel__purgeMap, v4, 0);
  v9 = qword_2814228A0;
  v15 = objc_msgSend_GUID(self, v10, v11, v12, v14, v13);
  v20 = objc_msgSend_objectForKey_(v9, v16, v15, v17, v19, v18);
  objc_msgSend_removeAllObjects(v20, v21, v22, v23, v25, v24);
  v26 = qword_2814228A0;
  v32 = objc_msgSend_GUID(self, v27, v28, v29, v31, v30);
  objc_msgSend_removeObjectForKey_(v26, v33, v32, v34, v36, v35);
}

- (void)_setPurgeTimer
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], a2, self, sel__purgeMap, v2, 0);
  v4.n128_u64[0] = 0x409C200000000000;

  MEMORY[0x2821F9670](self, sel_performSelector_withObject_afterDelay_, sel__purgeMap, 0, v4);
}

- (void)_setPeerInfo:(id)info conferenceID:(id)d
{
  v93 = *MEMORY[0x277D85DE8];
  if (info && d)
  {
    v9 = qword_2814228A0;
    v10 = objc_msgSend_GUID(self, a2, info, d, v5, v4);
    if (!objc_msgSend_objectForKey_(v9, v11, v10, v12, v14, v13))
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = qword_2814228A0;
      v27 = objc_msgSend_GUID(self, v22, v23, v24, v26, v25);
      objc_msgSend_setObject_forKey_(v21, v28, v20, v27, v30, v29);
    }

    v31 = qword_2814228A0;
    v32 = objc_msgSend_GUID(self, v15, v16, v17, v19, v18);
    v37 = objc_msgSend_objectForKey_(v31, v33, v32, v34, v36, v35);
    if (objc_msgSend_count(v37, v38, v39, v40, v42, v41) >= 0x15)
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = qword_2814228A0;
          v55 = objc_msgSend_GUID(self, v48, v49, v50, v52, v51);
          *buf = 67109378;
          *v92 = 20;
          *&v92[4] = 2112;
          *&v92[6] = objc_msgSend_objectForKey_(v54, v56, v55, v57, v59, v58);
          _os_log_impl(&dword_23BC9F000, v53, OS_LOG_TYPE_INFO, "Max cache size of %d reached for CONFERENCE_MAP. Removing all objects in CONFERENCE_MAP %@", buf, 0x12u);
        }
      }

      v60 = qword_2814228A0;
      v61 = objc_msgSend_GUID(self, v48, v49, v50, v52, v51);
      v66 = objc_msgSend_objectForKey_(v60, v62, v61, v63, v65, v64);
      objc_msgSend_removeAllObjects(v66, v67, v68, v69, v71, v70);
    }

    v72 = qword_2814228A0;
    v73 = objc_msgSend_GUID(self, v43, v44, v45, v47, v46);
    v78 = objc_msgSend_objectForKey_(v72, v74, v73, v75, v77, v76);
    objc_msgSend_setObject_forKey_(v78, v79, info, d, v81, v80);
    if (IMOSLoggingEnabled())
    {
      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v92 = info;
        *&v92[8] = 2112;
        *&v92[10] = d;
        _os_log_impl(&dword_23BC9F000, v82, OS_LOG_TYPE_INFO, "Setting peer info: %@  for cid: %@", buf, 0x16u);
      }
    }

    v83 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v92 = info;
      *&v92[8] = 2112;
      *&v92[10] = d;
      _os_log_impl(&dword_23BC9F000, v83, OS_LOG_TYPE_DEFAULT, "Setting peer info: %@  for cid: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        infoCopy2 = info;
        dCopy2 = d;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        infoCopy2 = info;
        dCopy2 = d;
        IMLogString();
      }
    }

    objc_msgSend__setPurgeTimer(self, v84, v85, v86, v88, v87, infoCopy2, dCopy2);
  }
}

- (BOOL)_hasPeersForPeerID:(id)d conferenceID:(id)iD
{
  v72 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy2 = d;
      v70 = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_23BC9F000, v7, OS_LOG_TYPE_INFO, "Checking peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_GUID(self, v9, v10, v11, v13, v12);
      *buf = 138412290;
      dCopy2 = v14;
      _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "My GUID: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy2 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "Conference maps %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = qword_2814228A0;
      v23 = objc_msgSend_GUID(self, v16, v17, v18, v20, v19);
      v28 = objc_msgSend_objectForKey_(v22, v24, v23, v25, v27, v26);
      *buf = 138412290;
      dCopy2 = v28;
      _os_log_impl(&dword_23BC9F000, v21, OS_LOG_TYPE_INFO, "Looking for peer in map %@", buf, 0xCu);
    }
  }

  v29 = qword_2814228A0;
  v30 = objc_msgSend_GUID(self, v16, v17, v18, v20, v19);
  v35 = objc_msgSend_objectForKey_(v29, v31, v30, v32, v34, v33);
  v40 = objc_msgSend_objectForKey_(v35, v36, iD, v37, v39, v38);
  if (!v40)
  {
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy2 = v40;
      _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_INFO, "Peers %@", buf, 0xCu);
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v63, v67, 0, 16);
  if (!v43)
  {
    return 0;
  }

  v45 = *v64;
  *&v44 = 138412546;
  v62 = v44;
  while (2)
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v64 != v45)
      {
        objc_enumerationMutation(v40);
      }

      v47 = *(*(&v63 + 1) + 8 * i);
      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy2 = v47;
          _os_log_impl(&dword_23BC9F000, v52, OS_LOG_TYPE_INFO, "Peer info %@", buf, 0xCu);
        }
      }

      v53 = objc_msgSend_objectForKey_(v47, v48, @"id", v49, v51, v50, v62);
      if (IMOSLoggingEnabled())
      {
        v58 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = v62;
          dCopy2 = d;
          v70 = 2112;
          iDCopy = v53;
          _os_log_impl(&dword_23BC9F000, v58, OS_LOG_TYPE_INFO, "Comparing %@ to %@", buf, 0x16u);
        }
      }

      if (objc_msgSend_isEqualToString_(d, v54, v53, v55, v57, v56))
      {
        return 1;
      }
    }

    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v59, &v63, v67, v60, 16);
    result = 0;
    if (v43)
    {
      continue;
    }

    break;
  }

  return result;
}

- (id)_displayIDForPeerID:(id)d conferenceID:(id)iD
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = qword_2814228A0;
  v9 = objc_msgSend_GUID(self, a2, d, iD, v5, v4);
  v14 = objc_msgSend_objectForKey_(v8, v10, v9, v11, v13, v12);
  v19 = objc_msgSend_objectForKey_(v14, v15, iD, v16, v18, v17);
  if (v19)
  {
    v21 = v19;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v53, v57, 0, 16);
    if (v25)
    {
      v27 = *v54;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v53 + 1) + 8 * i);
          v30 = objc_msgSend_objectForKey_(v29, v22, @"id", v23, v26, v24);
          if (objc_msgSend_isEqualToString_(d, v31, v30, v32, v34, v33))
          {
            v42 = objc_msgSend_objectForKey_(v29, v22, @"canonical-id", v23, v26, v24);
            v41 = objc_msgSend__stripFZIDPrefix(v42, v43, v44, v45, v47, v46);
            if (v41)
            {
              v48 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                dCopy5 = v41;
                v60 = 2112;
                iDCopy = d;
                _os_log_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_DEFAULT, "Found display ID: %@ for peer ID: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  IMLogString();
                }
              }

              if (IMOSLoggingEnabled())
              {
                v49 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  dCopy5 = v41;
                  v60 = 2112;
                  iDCopy = d;
                  _os_log_impl(&dword_23BC9F000, v49, OS_LOG_TYPE_INFO, "Found display ID: %@ for peer ID: %@", buf, 0x16u);
                }
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  dCopy5 = d;
                  _os_log_impl(&dword_23BC9F000, v51, OS_LOG_TYPE_INFO, "Found no display ID for peer ID: %@", buf, 0xCu);
                }
              }

              return d;
            }

            return v41;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v53, v57, v26, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy5 = d;
        _os_log_impl(&dword_23BC9F000, v40, OS_LOG_TYPE_INFO, "Found no mapping at all for peer ID: %@", buf, 0xCu);
      }
    }

    return objc_msgSend__stripFZIDPrefix(d, v35, v36, v37, v39, v38);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy5 = d;
        v60 = 2112;
        iDCopy = iD;
        _os_log_impl(&dword_23BC9F000, v50, OS_LOG_TYPE_INFO, "No peers found for peer id: %@  cid: %@", buf, 0x16u);
      }
    }

    return 0;
  }
}

- (void)_retargetPeerID:(id)d displayID:(id)iD pushToken:(id)token conferenceID:(id)conferenceID
{
  v135 = *MEMORY[0x277D85DE8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *v130 = d;
      *&v130[8] = 2112;
      *&v130[10] = iD;
      v131 = 2112;
      tokenCopy2 = token;
      v133 = 2112;
      conferenceIDCopy2 = conferenceID;
      _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "Retargeting peer ID: %@   display ID: %@   token: %@   cid: %@", buf, 0x2Au);
    }
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *v130 = d;
    *&v130[8] = 2112;
    *&v130[10] = iD;
    v131 = 2112;
    tokenCopy2 = token;
    v133 = 2112;
    conferenceIDCopy2 = conferenceID;
    _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_DEFAULT, "Retargeting peer ID: %@   display ID: %@   token: %@   cid: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      tokenCopy4 = token;
      conferenceIDCopy4 = conferenceID;
      dCopy2 = d;
      iDCopy2 = iD;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      tokenCopy4 = token;
      conferenceIDCopy4 = conferenceID;
      dCopy2 = d;
      iDCopy2 = iD;
      IMLogString();
    }
  }

  if (!iD)
  {
    iD = objc_msgSend__displayIDForPeerID_conferenceID_(self, v14, d, conferenceID, v18, v17);
  }

  v19 = objc_msgSend__FZBestGuessFZIDType(iD, v14, v15, v16, v18, v17, dCopy2, iDCopy2, tokenCopy4, conferenceIDCopy4);
  v24 = objc_msgSend__IDFromFZIDType_(iD, v20, v19, v21, v23, v22);
  if (v24)
  {
    CFDictionarySetValue(v11, @"canonical-id", v24);
  }

  if (d)
  {
    CFDictionarySetValue(v11, @"id", d);
  }

  if (token)
  {
    CFDictionarySetValue(v11, @"push-token", token);
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v130 = v11;
      _os_log_impl(&dword_23BC9F000, v30, OS_LOG_TYPE_INFO, "Resulting peerInfo %@", buf, 0xCu);
    }
  }

  v31 = qword_2814228A0;
  v32 = objc_msgSend_GUID(self, v25, v26, v27, v29, v28);
  if (!objc_msgSend_objectForKey_(v31, v33, v32, v34, v36, v35))
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43 = qword_2814228A0;
    v49 = objc_msgSend_GUID(self, v44, v45, v46, v48, v47);
    objc_msgSend_setObject_forKey_(v43, v50, v42, v49, v52, v51);
  }

  v53 = qword_2814228A0;
  v54 = objc_msgSend_GUID(self, v37, v38, v39, v41, v40);
  v59 = objc_msgSend_objectForKey_(v53, v55, v54, v56, v58, v57);
  if (objc_msgSend_count(v59, v60, v61, v62, v64, v63) >= 0x15)
  {
    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = qword_2814228A0;
        v77 = objc_msgSend_GUID(self, v70, v71, v72, v74, v73);
        v82 = objc_msgSend_objectForKey_(v76, v78, v77, v79, v81, v80);
        *buf = 67109378;
        *v130 = 20;
        *&v130[4] = 2112;
        *&v130[6] = v82;
        _os_log_impl(&dword_23BC9F000, v75, OS_LOG_TYPE_INFO, "Max cache size of %d reached for CONFERENCE_MAP. Removing all objects in CONFERENCE_MAP %@", buf, 0x12u);
      }
    }

    v83 = qword_2814228A0;
    v84 = objc_msgSend_GUID(self, v70, v71, v72, v74, v73);
    v89 = objc_msgSend_objectForKey_(v83, v85, v84, v86, v88, v87);
    objc_msgSend_removeAllObjects(v89, v90, v91, v92, v94, v93);
  }

  v95 = qword_2814228A0;
  v96 = objc_msgSend_GUID(self, v65, v66, v67, v69, v68);
  v101 = objc_msgSend_objectForKey_(v95, v97, v96, v98, v100, v99);
  v102 = IMSingleObjectArray();
  objc_msgSend_setObject_forKey_(v101, v103, v102, conferenceID, v105, v104);
  if (IMOSLoggingEnabled())
  {
    v106 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      v112 = qword_2814228A0;
      v113 = objc_msgSend_GUID(self, v107, v108, v109, v111, v110);
      v118 = objc_msgSend_objectForKey_(v112, v114, v113, v115, v117, v116);
      *buf = 138412290;
      *v130 = v118;
      _os_log_impl(&dword_23BC9F000, v106, OS_LOG_TYPE_INFO, "Conference map after retarget: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v119 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v130 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v119, OS_LOG_TYPE_INFO, "All maps after retarget: %@", buf, 0xCu);
    }
  }

  objc_msgSend__setPurgeTimer(self, v120, v121, v122, v124, v123);
}

- (void)_setAlternateDisplayID:(id)d forPeerID:(id)iD conferenceID:(id)conferenceID
{
  v99 = *MEMORY[0x277D85DE8];
  if (d)
  {
    if (iD)
    {
      if (conferenceID)
      {
        v10 = qword_2814228A0;
        v11 = objc_msgSend_GUID(self, a2, d, iD, v5, conferenceID);
        if (objc_msgSend_objectForKey_(v10, v12, v11, v13, v15, v14))
        {
          v21 = qword_2814228A0;
          v22 = objc_msgSend_GUID(self, v16, v17, v18, v20, v19);
          v27 = objc_msgSend_objectForKey_(v21, v23, v22, v24, v26, v25);
          v32 = objc_msgSend_objectForKey_(v27, v28, conferenceID, v29, v31, v30);
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              dCopy2 = d;
              v95 = 2112;
              iDCopy2 = iD;
              v97 = 2112;
              conferenceIDCopy2 = conferenceID;
              _os_log_impl(&dword_23BC9F000, v33, OS_LOG_TYPE_INFO, "Setting alternate display ID: %@ for peer ID: %@ cid: %@", buf, 0x20u);
            }
          }

          v34 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            dCopy2 = d;
            v95 = 2112;
            iDCopy2 = iD;
            v97 = 2112;
            conferenceIDCopy2 = conferenceID;
            _os_log_impl(&dword_23BC9F000, v34, OS_LOG_TYPE_DEFAULT, "Setting alternate display ID: %@ for peer ID: %@ cid: %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              iDCopy4 = iD;
              conferenceIDCopy4 = conferenceID;
              dCopy4 = d;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              iDCopy4 = iD;
              conferenceIDCopy4 = conferenceID;
              dCopy4 = d;
              IMLogString();
            }
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v88, v92, 0, 16, dCopy4, iDCopy4, conferenceIDCopy4);
          if (v39)
          {
            v41 = *v89;
            while (2)
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v89 != v41)
                {
                  objc_enumerationMutation(v32);
                }

                v43 = *(*(&v88 + 1) + 8 * i);
                v44 = objc_msgSend_objectForKey_(v43, v36, @"id", v37, v40, v38);
                if (objc_msgSend_isEqualToString_(iD, v45, v44, v46, v48, v47))
                {
                  v51 = objc_msgSend_mutableCopy(v43, v36, v49, v37, v40, v38);
                  v50 = objc_msgSend_mutableCopy(v32, v52, v53, v54, v56, v55);
                  CFDictionarySetValue(v51, @"alternate-display-id", d);
                  objc_msgSend_removeObjectIdenticalTo_(v50, v57, v43, v58, v60, v59);
                  objc_msgSend_addObject_(v50, v61, v51, v62, v64, v63);

                  if (v50)
                  {
                    v70 = qword_2814228A0;
                    v71 = objc_msgSend_GUID(self, v65, v66, v67, v69, v68);
                    v76 = objc_msgSend_objectForKey_(v70, v72, v71, v73, v75, v74);
                    objc_msgSend_setObject_forKey_(v76, v77, v50, conferenceID, v79, v78);
                  }

                  goto LABEL_26;
                }
              }

              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v36, &v88, v92, v40, 16);
              if (v39)
              {
                continue;
              }

              break;
            }
          }

          v50 = 0;
LABEL_26:

          objc_msgSend__setPurgeTimer(self, v80, v81, v82, v84, v83);
        }
      }
    }
  }
}

- (BOOL)_anyPeersForConferenceIDMayRequireBreakBeforeMake:(id)make
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = qword_2814228A0;
  v8 = objc_msgSend_GUID(self, a2, make, v3, v5, v4);
  v13 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v12, v11);
  v18 = objc_msgSend_objectForKey_(v13, v14, make, v15, v17, v16);
  if (!v18)
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        makeCopy = make;
        _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_INFO, "No peers found for cid: %@", buf, 0xCu);
      }
    }

    return 0;
  }

  v20 = v18;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v44, v48, 0, 16);
  if (!v24)
  {
    return 0;
  }

  v26 = *v45;
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v45 != v26)
      {
        objc_enumerationMutation(v20);
      }

      v28 = *(*(&v44 + 1) + 8 * i);
      v29 = objc_msgSend_objectForKey_(v28, v21, @"protocol-flags", v22, v25, v23);
      v34 = objc_msgSend_objectForKey_(v28, v30, @"id", v31, v33, v32);
      if ((objc_msgSend_unsignedIntegerValue(v29, v35, v36, v37, v39, v38) & 0x10) != 0)
      {
        if (!IMOSLoggingEnabled())
        {
          return 1;
        }

        v41 = OSLogHandleForIMFoundationCategory();
        v40 = 1;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          makeCopy = v34;
          _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_INFO, "Peer: %@   requires break before make!", buf, 0xCu);
        }

        return v40;
      }
    }

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v44, v48, v25, 16);
    v40 = 0;
    if (v24)
    {
      continue;
    }

    break;
  }

  return v40;
}

- (id)_peerIDPushTokenPairsForConferenceID:(id)d
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = qword_2814228A0;
  v8 = objc_msgSend_GUID(self, a2, d, v3, v5, v4);
  v13 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v12, v11);
  v18 = objc_msgSend_objectForKey_(v13, v14, d, v15, v17, v16);
  if (v18)
  {
    dCopy = d;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v20 = v18;
    v21 = 0;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v62, v70, 0, 16);
    if (v26)
    {
      v28 = *v63;
      v27.n128_u64[0] = 138412546;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v63 != v28)
          {
            objc_enumerationMutation(v20);
          }

          v30 = *(*(&v62 + 1) + 8 * i);
          v31 = objc_msgSend_objectForKey_(v30, v22, @"id", v24, v27, v25, v59, v60);
          v36 = objc_msgSend_objectForKey_(v30, v32, @"push-token", v33, v35, v34);
          v37 = v36;
          if (v31)
          {
            v38 = v36 == 0;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
          v40 = IMOSLoggingEnabled();
          if (v39)
          {
            if (v40)
            {
              v41 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                dCopy2 = v37;
                v68 = 2112;
                v69 = v31;
                _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_INFO, "Found token: %@ for peer ID: %@", buf, 0x16u);
              }
            }

            v42 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              dCopy2 = v37;
              v68 = 2112;
              v69 = v31;
              _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_DEFAULT, "Found token: %@ for peer ID: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                MarcoLog();
              }

              if (IMShouldLog())
              {
                IMLogString();
              }
            }

            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v43 = objc_alloc(MEMORY[0x277CBEAC0]);
            v48 = objc_msgSend_initWithObjectsAndKeys_(v43, v44, v31, v45, v47, v46, @"id", v37, @"push-token", 0);
            objc_msgSend_addObject_(v21, v49, v48, v50, v52, v51);
          }

          else
          {
            if (v40)
            {
              v53 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                dCopy2 = v37;
                v68 = 2112;
                v69 = v31;
                _os_log_impl(&dword_23BC9F000, v53, OS_LOG_TYPE_INFO, "Peer didn't have a token %@ or peer ID: %@", buf, 0x16u);
              }
            }

            v54 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              dCopy2 = v37;
              v68 = 2112;
              v69 = v31;
              _os_log_impl(&dword_23BC9F000, v54, OS_LOG_TYPE_DEFAULT, "Peer didn't have a token %@ or peer ID: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                v59 = v37;
                v60 = v31;
                MarcoLog();
              }

              if (IMShouldLog())
              {
                v59 = v37;
                v60 = v31;
                IMLogString();
              }
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v62, v70, v27, 16);
      }

      while (v26);
    }

    if (!objc_msgSend_count(v21, v22, v23, v24, v27, v25, v59, v60))
    {
      v55 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        dCopy2 = dCopy;
        _os_log_impl(&dword_23BC9F000, v55, OS_LOG_TYPE_DEFAULT, "Couldn't build peerID to push token map for cid: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy2 = dCopy;
          _os_log_impl(&dword_23BC9F000, v56, OS_LOG_TYPE_INFO, "Couldn't build peerID to push token map for cid: %@", buf, 0xCu);
        }
      }
    }

    return v21;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy2 = d;
        _os_log_impl(&dword_23BC9F000, v58, OS_LOG_TYPE_INFO, "No peers found for cid: %@", buf, 0xCu);
      }
    }

    return 0;
  }
}

- (id)_pushTokensForPeerID:(id)d conferenceID:(id)iD
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = qword_2814228A0;
  v9 = objc_msgSend_GUID(self, a2, d, iD, v5, v4);
  v14 = objc_msgSend_objectForKey_(v8, v10, v9, v11, v13, v12);
  v19 = objc_msgSend_objectForKey_(v14, v15, iD, v16, v18, v17);
  if (v19)
  {
    v21 = v19;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = 0;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v53, v57, 0, 16);
    if (v27)
    {
      v29 = *v54;
      v28.n128_u64[0] = 138412546;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v54 != v29)
          {
            objc_enumerationMutation(v21);
          }

          v31 = *(*(&v53 + 1) + 8 * i);
          v32 = objc_msgSend_objectForKey_(v31, v23, @"id", v25, v28, v26, dCopy8);
          if (objc_msgSend_isEqualToString_(d, v33, v32, v34, v36, v35))
          {
            v37 = objc_msgSend_objectForKey_(v31, v23, @"push-token", v25, v28, v26);
            v38 = IMOSLoggingEnabled();
            if (v37)
            {
              if (v38)
              {
                v39 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  dCopy11 = v37;
                  v60 = 2112;
                  iDCopy = d;
                  _os_log_impl(&dword_23BC9F000, v39, OS_LOG_TYPE_INFO, "Found token: %@ for peer ID: %@", buf, 0x16u);
                }
              }

              v40 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                dCopy11 = v37;
                v60 = 2112;
                iDCopy = d;
                _os_log_impl(&dword_23BC9F000, v40, OS_LOG_TYPE_DEFAULT, "Found token: %@ for peer ID: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  dCopy8 = v37;
                  dCopy4 = d;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  dCopy8 = v37;
                  dCopy4 = d;
                  IMLogString();
                }
              }

              if (!v22)
              {
                v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              objc_msgSend_addObject_(v22, v41, v37, v42, v44, v43, dCopy8, dCopy4);
            }

            else
            {
              if (v38)
              {
                v45 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  dCopy11 = d;
                  _os_log_impl(&dword_23BC9F000, v45, OS_LOG_TYPE_INFO, "Found no token for peer ID: %@", buf, 0xCu);
                }
              }

              v46 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                dCopy11 = d;
                _os_log_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_DEFAULT, "Found no token for peer ID: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  dCopy8 = d;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  dCopy8 = d;
                  IMLogString();
                }
              }
            }
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v53, v57, v28, 16);
      }

      while (v27);
    }

    if (!objc_msgSend_count(v22, v23, v24, v25, v28, v26, dCopy8))
    {
      v47 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        dCopy11 = d;
        _os_log_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_DEFAULT, "Found no mapping at all for peer ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy11 = d;
          _os_log_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_INFO, "Found no mapping at all for peer ID: %@", buf, 0xCu);
        }
      }
    }

    return v22;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy11 = d;
        v60 = 2112;
        iDCopy = iD;
        _os_log_impl(&dword_23BC9F000, v50, OS_LOG_TYPE_INFO, "No peers found for peer id: %@  cid: %@", buf, 0x16u);
      }
    }

    return 0;
  }
}

- (id)_pushTokenForPeerID:(id)d conferenceID:(id)iD
{
  v6 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, a2, d, iD, v5, v4);

  return objc_msgSend_lastObject(v6, v7, v8, v9, v11, v10);
}

- (id)_peerIDsForDiplayID:(id)d conferenceID:(id)iD
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = qword_2814228A0;
  v9 = objc_msgSend_GUID(self, a2, d, iD, v5, v4);
  v14 = objc_msgSend_objectForKey_(v8, v10, v9, v11, v13, v12);
  v19 = objc_msgSend_objectForKey_(v14, v15, iD, v16, v18, v17);
  if (v19)
  {
    v20 = v19;
    v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v73, v83, 0, 16);
    if (v26)
    {
      v28 = *v74;
      v27.n128_u64[0] = 138412802;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v74 != v28)
          {
            objc_enumerationMutation(v20);
          }

          v30 = *(*(&v73 + 1) + 8 * i);
          v31 = objc_msgSend_objectForKey_(v30, v22, @"canonical-id", v24, v27, v25);
          v37 = objc_msgSend__stripFZIDPrefix(v31, v32, v33, v34, v36, v35);
          v42 = objc_msgSend_objectForKey_(v30, v38, @"alternate-display-id", v39, v41, v40);
          if ((objc_msgSend_isEqualToString_(v37, v43, d, v44, v46, v45) & 1) != 0 || v42 && objc_msgSend_isEqualToString_(d, v22, v42, v24, v27, v25))
          {
            v47 = objc_msgSend_objectForKey_(v30, v22, @"id", v24, v27, v25);
            if (v47)
            {
              v48 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                dCopy9 = v47;
                v79 = 2112;
                iDCopy2 = d;
                v81 = 2112;
                v82 = v30;
                _os_log_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_DEFAULT, "Found peer ID: %@ for display ID: %@  (Peer info: %@)", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  dCopy3 = d;
                  v71 = v30;
                  v69 = v47;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  dCopy3 = d;
                  v71 = v30;
                  v69 = v47;
                  IMLogString();
                }
              }

              if (IMOSLoggingEnabled())
              {
                v53 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  dCopy9 = v47;
                  v79 = 2112;
                  iDCopy2 = d;
                  v81 = 2112;
                  v82 = v30;
                  _os_log_impl(&dword_23BC9F000, v53, OS_LOG_TYPE_INFO, "Found peer ID: %@ for display ID: %@  (Peer info: %@)", buf, 0x20u);
                }
              }

              objc_msgSend_addObject_(v72, v49, v47, v50, v52, v51, v69, dCopy3, v71);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v54 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  dCopy9 = v30;
                  _os_log_impl(&dword_23BC9F000, v54, OS_LOG_TYPE_INFO, "Found no ref ID in peer info: %@", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v55 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  dCopy9 = v30;
                  _os_log_impl(&dword_23BC9F000, v55, OS_LOG_TYPE_INFO, "Found no ref ID in peer info: %@", buf, 0xCu);
                }
              }
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v73, v83, v27, 16);
      }

      while (v26);
    }

    if (objc_msgSend_count(v72, v22, v23, v24, v27, v25))
    {
      v56 = v72;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy9 = d;
          _os_log_impl(&dword_23BC9F000, v60, OS_LOG_TYPE_INFO, "Found no peers for display ID: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy9 = d;
          _os_log_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_INFO, "Found no peers for display ID: %@", buf, 0xCu);
        }
      }

      v62 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        dCopy9 = d;
        _os_log_impl(&dword_23BC9F000, v62, OS_LOG_TYPE_DEFAULT, "Found no peers for display ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v56 = 0;
    }

    v63 = v56;
    return objc_msgSend_allObjects(v63, v64, v65, v66, v68, v67);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy9 = d;
        v79 = 2112;
        iDCopy2 = iD;
        _os_log_impl(&dword_23BC9F000, v57, OS_LOG_TYPE_INFO, "No peers found for display id: %@  cid: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy9 = d;
        v79 = 2112;
        iDCopy2 = iD;
        _os_log_impl(&dword_23BC9F000, v58, OS_LOG_TYPE_INFO, "No peers found for display id: %@  cid: %@", buf, 0x16u);
      }
    }

    return 0;
  }
}

- (id)_peerIDForDiplayID:(id)d conferenceID:(id)iD
{
  v6 = objc_msgSend__peerIDsForDiplayID_conferenceID_(self, a2, d, iD, v5, v4);

  return objc_msgSend_lastObject(v6, v7, v8, v9, v11, v10);
}

- (id)_peerIDPushTokensPairsForPeerID:(id)d conferenceID:(id)iD skippingPairs:(id)pairs
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend__peerIDPushTokenPairsForConferenceID_(self, v9, iD, v10, v12, v11);
  v19 = objc_msgSend_pushToken(self, v14, v15, v16, v18, v17);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v37, v41, 0, 16);
  if (v21)
  {
    v27 = v21;
    v28 = *v38;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v13);
        }

        v30 = *(*(&v37 + 1) + 8 * i);
        v31 = objc_msgSend_objectForKey_(v30, v22, @"push-token", v24, v26, v25);
        if ((objc_msgSend_containsObject_(pairs, v32, v30, v33, v35, v34) & 1) == 0 && (!v19 || (objc_msgSend_isEqual_(v19, v22, v31, v24, v26, v25) & 1) == 0))
        {
          objc_msgSend_addObject_(v8, v22, v30, v24, v26, v25);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v22, &v37, v41, v26, 16);
    }

    while (v27);
  }

  if (!objc_msgSend_count(v8, v22, v23, v24, v26, v25))
  {

    v8 = 0;
  }

  return v8;
}

- (id)_peerInfoForDisplayID:(id)d conferenceID:(id)iD skippingPairs:(id)pairs
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  iDCopy = iD;
  v13 = objc_msgSend__peerIDPushTokenPairsForConferenceID_(self, v9, iD, v10, v12, v11);
  v19 = objc_msgSend_pushToken(self, v14, v15, v16, v18, v17);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v40, v52, 0, 16);
  if (v25)
  {
    v27 = *v41;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v13);
        }

        v29 = *(*(&v40 + 1) + 8 * i);
        v30 = objc_msgSend_objectForKey_(v29, v21, @"push-token", v23, v26, v24);
        if ((objc_msgSend_containsObject_(pairs, v31, v29, v32, v34, v33) & 1) == 0 && (!v19 || (objc_msgSend_isEqual_(v19, v21, v30, v23, v26, v24) & 1) == 0))
        {
          objc_msgSend_addObject_(v8, v21, v29, v23, v26, v24);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v21, &v40, v52, v26, 16);
    }

    while (v25);
  }

  if (!objc_msgSend_count(v8, v21, v22, v23, v26, v24))
  {

    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      pairsCopy2 = pairs;
      v46 = 2112;
      dCopy2 = d;
      v48 = 2112;
      v49 = iDCopy;
      v50 = 2112;
      v51 = v8;
      _os_log_impl(&dword_23BC9F000, v35, OS_LOG_TYPE_INFO, "Skipping pairs: %@    for display id: %@   conference: %@  Built peer info: %@", buf, 0x2Au);
    }
  }

  v36 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    pairsCopy2 = pairs;
    v46 = 2112;
    dCopy2 = d;
    v48 = 2112;
    v49 = iDCopy;
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&dword_23BC9F000, v36, OS_LOG_TYPE_DEFAULT, "Skipping pairs: %@    for display id: %@   conference: %@  Built peer info: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  return v8;
}

- (void)_setConferenceIDMap:(id)map forToken:(id)token
{
  v31 = *MEMORY[0x277D85DE8];
  if (map && token)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v29 = 138412546;
        *v30 = token;
        *&v30[8] = 2112;
        *&v30[10] = map;
        _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "Setting token %@ for conference ID %@", &v29, 0x16u);
      }
    }

    conferenceIDMap = self->_conferenceIDMap;
    if (!conferenceIDMap)
    {
      conferenceIDMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_conferenceIDMap = conferenceIDMap;
    }

    if (objc_msgSend_count(conferenceIDMap, v7, v8, v9, v11, v10) >= 0x15)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = self->_conferenceIDMap;
          v29 = 67109378;
          *v30 = 20;
          *&v30[4] = 2112;
          *&v30[6] = v23;
          _os_log_impl(&dword_23BC9F000, v22, OS_LOG_TYPE_INFO, "Max cache size of %d reached for conferenceIDMap. Removing all objects in conferenceIDMap %@", &v29, 0x12u);
        }
      }

      objc_msgSend_removeAllObjects(self->_conferenceIDMap, v17, v18, v19, v21, v20);
    }

    objc_msgSend_setObject_forKey_(self->_conferenceIDMap, v14, token, map, v16, v15);
    objc_msgSend__setPurgeTimer(self, v24, v25, v26, v28, v27);
  }
}

- (void)_setInitiatedConference:(id)conference
{
  v23 = *MEMORY[0x277D85DE8];
  if (conference)
  {
    initiatedConferences = self->_initiatedConferences;
    if (!initiatedConferences)
    {
      initiatedConferences = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_initiatedConferences = initiatedConferences;
    }

    if (objc_msgSend_count(initiatedConferences, a2, conference, v3, v5, v4) >= 0x15)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = self->_initiatedConferences;
          v20[0] = 67109378;
          v20[1] = 20;
          v21 = 2112;
          v22 = v19;
          _os_log_impl(&dword_23BC9F000, v18, OS_LOG_TYPE_INFO, "Max cache size of %d reached for initiatedConferences map. Removing all objects in initiatedConferences %@", v20, 0x12u);
        }
      }

      objc_msgSend_removeAllObjects(self->_initiatedConferences, v13, v14, v15, v17, v16);
    }

    objc_msgSend_addObject_(self->_initiatedConferences, v9, conference, v10, v12, v11);
  }
}

- (int)_callTypeForConferenceID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_objectForKey_(self->_callTypeMap, a2, d, v3, v5, v4);
  if (!v12)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        callTypeMap = self->_callTypeMap;
        v17 = 138412546;
        dCopy = d;
        v19 = 2112;
        v20 = callTypeMap;
        _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "Could not find call type for conference ID %@ in map: %@", &v17, 0x16u);
      }
    }
  }

  return objc_msgSend_intValue(v12, v8, v9, v10, v13, v11);
}

- (void)_setCallType:(int)type forConferenceID:(id)d
{
  v5 = *&type;
  v29 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"unknown";
      if (!v5)
      {
        v13 = @"video";
      }

      if (v5 == 1)
      {
        v13 = @"audio";
      }

      v27 = 138412546;
      *v28 = v13;
      *&v28[8] = 2112;
      *&v28[10] = d;
      _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "Setting call type to %@ for conference ID %@", &v27, 0x16u);
    }
  }

  callTypeMap = self->_callTypeMap;
  if (!callTypeMap)
  {
    callTypeMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    self->_callTypeMap = callTypeMap;
  }

  if (objc_msgSend_count(callTypeMap, v7, v8, v9, v11, v10) >= 0x15)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = self->_callTypeMap;
        v27 = 67109378;
        *v28 = 20;
        *&v28[4] = 2112;
        *&v28[6] = v25;
        _os_log_impl(&dword_23BC9F000, v24, OS_LOG_TYPE_INFO, "Max cache size of %d reached for callTypeMap. Removing all objects in callTypeMap %@", &v27, 0x12u);
      }
    }

    objc_msgSend_removeAllObjects(self->_callTypeMap, v19, v20, v21, v23, v22);
  }

  v26 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v5, v16, v18, v17);
  if (v26)
  {
    CFDictionarySetValue(self->_callTypeMap, d, v26);
  }
}

- (FaceTimeServiceSession)initWithAccount:(id)account service:(id)service
{
  v134 = *MEMORY[0x277D85DE8];
  v129.receiver = self;
  v129.super_class = FaceTimeServiceSession;
  v4 = [(IMDAppleServiceSession *)&v129 initWithAccount:account service:service];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D186C8]);
    v4->_callAccountController = objc_msgSend_initWithService_(v5, v6, *MEMORY[0x277D18690], v7, v9, v8);
    v4->_loggingCategory = @"FaceTime";
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      loggingCategory = v4->_loggingCategory;
      v17 = objc_msgSend_GUID(v4, v11, v12, v13, v15, v14);
      *buf = 138412546;
      *&buf[4] = loggingCategory;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_23BC9F000, v10, OS_LOG_TYPE_DEBUG, "Initializing FaceTime Session with category: %@   accountID: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v125 = v4->_loggingCategory;
      v126 = objc_msgSend_GUID(v4, v18, v19, v20, v22, v21);
      IMLogString();
    }

    v23 = qword_281422898;
    v24 = objc_msgSend_GUID(v4, v18, v19, v20, v22, v21, v125, v126);
    objc_msgSend_addObject_(v23, v25, v24, v26, v28, v27);
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v33, OS_LOG_TYPE_INFO, "Priming FaceTime Server bag", buf, 2u);
      }
    }

    objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], v29, 0, v30, v32, v31);
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v34, OS_LOG_TYPE_INFO, "...done", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v35, OS_LOG_TYPE_INFO, "Building push listener", buf, 2u);
      }
    }

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = objc_msgSend_topicForCallType_(v4, v37, 1, v38, v40, v39);
    if (objc_msgSend_length(v41, v42, v43, v44, v46, v45))
    {
      objc_msgSend_addObject_(v36, v47, v41, v48, v50, v49);
    }

    v51 = objc_msgSend_topicForCallType_(v4, v47, 0, v48, v50, v49);
    if (objc_msgSend_length(v51, v52, v53, v54, v56, v55))
    {
      objc_msgSend_addObject_(v36, v57, v51, v58, v60, v59);
    }

    if (IMOSLoggingEnabled())
    {
      v61 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v36;
        _os_log_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_INFO, "  => Topics: %@", buf, 0xCu);
      }
    }

    v62 = [FaceTimePushHandler alloc];
    v67 = objc_msgSend_initWithTopics_(v62, v63, v36, v64, v66, v65);
    v4->_ftPushHandler = v67;
    objc_msgSend_addListener_(v67, v68, v4, v69, v71, v70);

    objc_msgSend_configureAsMacNotificationCenterObserver_(v4->_ftPushHandler, v72, *MEMORY[0x277D194C0], v73, v75, v74);
    if (IMOSLoggingEnabled())
    {
      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v76, OS_LOG_TYPE_INFO, "...done", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v77 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v77, OS_LOG_TYPE_INFO, "Building Message delivery", buf, 2u);
      }
    }

    if (!qword_281422890)
    {
      if (IMOSLoggingEnabled())
      {
        v83 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v83, OS_LOG_TYPE_INFO, "Building Message delivery", buf, 2u);
        }
      }

      qword_281422890 = objc_alloc_init(objc_msgSend_APNSMessageDeliveryClass(MEMORY[0x277D07DC0], v78, v79, v80, v82, v81));
      objc_msgSend_setUserAgent_(qword_281422890, v84, @"com.apple.invitation-service", v85, v87, v86);
    }

    v88 = objc_alloc_init(MEMORY[0x277D19258]);
    v4->_broadcasterACInvocationQueue = v88;
    v89 = IMGetDaemonListenerProtocol();
    objc_msgSend_setProtocol_(v88, v90, v89, v91, v93, v92);
    objc_msgSend_setDelegate_(v4->_broadcasterACInvocationQueue, v94, v4, v95, v97, v96);
    v98.n128_u64[0] = 0x3FB999999999999ALL;
    objc_msgSend_setDequeueRate_(v4->_broadcasterACInvocationQueue, v99, v100, v101, v98, v102);
    v103 = objc_alloc_init(MEMORY[0x277D19258]);
    v4->_broadcasterVCInvocationQueue = v103;
    v104 = IMGetDaemonListenerProtocol();
    objc_msgSend_setProtocol_(v103, v105, v104, v106, v108, v107);
    objc_msgSend_setDelegate_(v4->_broadcasterVCInvocationQueue, v109, v4, v110, v112, v111);
    v113.n128_u64[0] = 0x3FB999999999999ALL;
    objc_msgSend_setDequeueRate_(v4->_broadcasterVCInvocationQueue, v114, v115, v116, v113, v117);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v131 = sub_23BCA41F0;
    v132 = sub_23BCA4200;
    v133 = v4;
    v128[0] = MEMORY[0x277D85DD0];
    v118.n128_u64[0] = 3221225472;
    v128[1] = 3221225472;
    v128[2] = sub_23BCA420C;
    v128[3] = &unk_278B8F168;
    v128[4] = v4;
    v128[5] = buf;
    v4->_completionBlock = objc_msgSend_copy(v128, v119, v120, v121, v118, v122);
    if (IMOSLoggingEnabled())
    {
      v123 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        *v127 = 0;
        _os_log_impl(&dword_23BC9F000, v123, OS_LOG_TYPE_INFO, "...done", v127, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  return v4;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "Dealloc", buf, 2u);
    }
  }

  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4, v5, v7, v6);
  objc_msgSend_removeObserver_name_object_(v9, v10, self, 0, v11, 0);
  objc_msgSend__purgeMap(self, v12, v13, v14, v16, v15);

  objc_msgSend_removeListener_(self->_ftPushHandler, v17, self, v18, v20, v19);
  v21 = qword_2814228A0;
  v27 = objc_msgSend_GUID(self, v22, v23, v24, v26, v25);
  objc_msgSend_removeObjectForKey_(v21, v28, v27, v29, v31, v30);

  v32 = qword_281422898;
  v38 = objc_msgSend_GUID(self, v33, v34, v35, v37, v36);
  objc_msgSend_removeObject_(v32, v39, v38, v40, v42, v41);
  if (!objc_msgSend_count(qword_281422898, v43, v44, v45, v47, v46))
  {
    objc_msgSend_invalidate(qword_281422890, v48, v49, v50, v52, v51);

    qword_281422890 = 0;
  }

  objc_msgSend_setDelegate_(self->_broadcasterACInvocationQueue, v53, 0, v54, v56, v55);
  objc_msgSend_setTarget_(self->_broadcasterACInvocationQueue, v57, 0, v58, v60, v59);
  objc_msgSend_removeAllInvocations(self->_broadcasterACInvocationQueue, v61, v62, v63, v65, v64);

  objc_msgSend_setDelegate_(self->_broadcasterVCInvocationQueue, v66, 0, v67, v69, v68);
  objc_msgSend_setTarget_(self->_broadcasterVCInvocationQueue, v70, 0, v71, v73, v72);
  objc_msgSend_removeAllInvocations(self->_broadcasterVCInvocationQueue, v74, v75, v76, v78, v77);

  v79.receiver = self;
  v79.super_class = FaceTimeServiceSession;
  [(IMDAppleServiceSession *)&v79 dealloc];
}

- (id)regionID
{
  v6 = objc_msgSend_idsAccount(self, a2, v2, v3, v5, v4);
  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v16 = 0;
    v14 = "********** Requesting regionID but we don't have an IDSAccount, please file a radar ********** ";
    v15 = &v16;
    goto LABEL_9;
  }

  result = objc_msgSend_regionID(v6, v7, v8, v9, v11, v10);
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v14 = "********** IDSAccount returned empty regionID ********** ";
      v15 = &v17;
LABEL_9:
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
    }
  }

  return 0;
}

- (id)regionBasePhoneNumber
{
  v6 = objc_msgSend_idsAccount(self, a2, v2, v3, v5, v4);
  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v16 = 0;
    v14 = "********** Requesting regionBasePhoneNumber but we don't have an IDSAccount, please file a radar ********** ";
    v15 = &v16;
    goto LABEL_9;
  }

  result = objc_msgSend_regionBasePhoneNumber(v6, v7, v8, v9, v11, v10);
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v14 = "********** IDSAccount returned empty regionBasePhoneNumber ********** ";
      v15 = &v17;
LABEL_9:
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
    }
  }

  return 0;
}

- (id)regionServerContext
{
  v6 = objc_msgSend_idsAccount(self, a2, v2, v3, v5, v4);
  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v16 = 0;
    v14 = "********** Requesting regionServerContext but we don't have an IDSAccount, please file a radar ********** ";
    v15 = &v16;
    goto LABEL_9;
  }

  result = objc_msgSend_regionServerContext(v6, v7, v8, v9, v11, v10);
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v14 = "********** IDSAccount returned empty regionServerContext ********** ";
      v15 = &v17;
LABEL_9:
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
    }
  }

  return 0;
}

- (id)profileID
{
  v6 = objc_msgSend_idsAccount(self, a2, v2, v3, v5, v4);
  if (v6)
  {
    v12 = objc_msgSend_profileID(v6, v7, v8, v9, v11, v10);
    if (!objc_msgSend_length(v12, v13, v14, v15, v17, v16))
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v18, OS_LOG_TYPE_INFO, "********** IDSAccount returned empty profileID ********** ", buf, 2u);
        }
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "********** Requesting profileID but we don't have an IDSAccount, please file a radar ********** ", v21, 2u);
      }
    }

    return 0;
  }

  return v12;
}

- (id)userID
{
  v6 = objc_msgSend_account(self, a2, v2, v3, v5, v4);

  return objc_msgSend_loginID(v6, v7, v8, v9, v11, v10);
}

- (id)phoneNumber
{
  v6 = objc_msgSend_idsAccount(self, a2, v2, v3, v5, v4);
  if (v6)
  {
    v12 = objc_msgSend_loginID(v6, v7, v8, v9, v11, v10);
    if (!objc_msgSend_length(v12, v13, v14, v15, v17, v16))
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v18, OS_LOG_TYPE_INFO, "********** IDSAccount returned empty phoneNumber ********** ", buf, 2u);
        }
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "********** Requesting phoneNumber but we don't have an IDSAccount, please file a radar ********** ", v21, 2u);
      }
    }

    return 0;
  }

  return v12;
}

- (__SecKey)callerPrivateKey
{
  if (!self->_privateIdentityLoaded)
  {
    v6 = 0;
    cf[0] = 0;
    v5 = 0;
    _IDSAppleRegistrationCopyKeyPair();
    self->_privateIdentityLoaded = 1;
  }

  if (!self->_privateKey)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(cf[0]) = 0;
        _os_log_impl(&dword_23BC9F000, v3, OS_LOG_TYPE_INFO, "********** Requesting private key but it's NULL ********** ", cf, 2u);
      }
    }
  }

  return self->_privateKey;
}

- (id)idsAccountForCallType:(int)type
{
  v80 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    v7 = objc_msgSend_idsAccount(self, a2, *&type, v3, v5, v4);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v12 = objc_msgSend_accounts(self->_callAccountController, v8, v9, v10, 0, v11);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v74, v79, v14, 16);
    if (v19)
    {
      v21 = 0;
      v22 = *v75;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v75 != v22)
          {
            objc_enumerationMutation(v12);
          }

          v24 = *(*(&v74 + 1) + 8 * i);
          v25 = objc_msgSend_accountType(v24, v15, v16, v17, v20, v18);
          if (v25 == objc_msgSend_accountType(v7, v26, v27, v28, v30, v29))
          {
            v31 = objc_msgSend_loginID(v24, v15, v16, v17, v20, v18);
            v37 = objc_msgSend_loginID(v7, v32, v33, v34, v36, v35);
            if (objc_msgSend_isEqualToIgnoringCase_(v31, v38, v37, v39, v41, v40))
            {
              if (objc_msgSend_registrationStatus(v24, v15, v16, v17, v20, v18) == 5)
              {
                v21 = v24;
              }
            }
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v74, v79, v20, 16);
      }

      while (v19);
      if (v21)
      {
        return v21;
      }
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v42 = objc_msgSend_accounts(self->_callAccountController, v15, v16, v17, 0, v18);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v70, v78, v44, 16);
    if (v49)
    {
      v21 = 0;
      v51 = *v71;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v71 != v51)
          {
            objc_enumerationMutation(v42);
          }

          v53 = *(*(&v70 + 1) + 8 * j);
          v54 = objc_msgSend_accountType(v53, v45, v46, v47, v50, v48);
          if (v54 == objc_msgSend_accountType(v7, v55, v56, v57, v59, v58) && objc_msgSend_registrationStatus(v53, v45, v46, v47, v50, v48) == 5)
          {
            v21 = v53;
          }
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v70, v78, v50, 16);
      }

      while (v49);
      if (v21)
      {
        return v21;
      }
    }

    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v60 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v69[0] = 0;
    v61 = "********** We don't have an IDSAccount for FaceTime Audio, please file a radar ********** ";
LABEL_35:
    _os_log_impl(&dword_23BC9F000, v60, OS_LOG_TYPE_INFO, v61, v69, 2u);
    return 0;
  }

  v62 = objc_msgSend_account(self, a2, *&type, v3, v5, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v60 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v69[0] = 0;
    v61 = "********** We don't have an IDSAccount for FaceTime Video, please file a radar ********** ";
    goto LABEL_35;
  }

  return objc_msgSend_idsAccount(v62, v63, v64, v65, v67, v66);
}

- (id)callerCertForCallType:(int)type
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_idsAccountForCallType_(self, a2, *&type, v3, v5, v4);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "  =>  Found account: %@", &v21, 0xCu);
    }
  }

  v13 = objc_msgSend_registrationCertificate(v6, v7, v8, v9, v11, v10);
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v13;
        v16 = "  =>  Returning caller cert: %@";
        v17 = v15;
        v18 = 12;
LABEL_11:
        _os_log_impl(&dword_23BC9F000, v17, OS_LOG_TYPE_INFO, v16, &v21, v18);
      }
    }
  }

  else if (v14)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v16 = " ** No caller Cert!";
      v17 = v19;
      v18 = 2;
      goto LABEL_11;
    }
  }

  return v13;
}

- (id)topicForCallType:(int)type
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = @"com.apple.private.ac";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type)
  {
    v7 = v6;
    v8 = objc_msgSend_length(v6, a2, *&type, v3, v5, v4);
  }

  else
  {
    v7 = @"com.apple.ess";
    v8 = objc_msgSend_length(@"com.apple.ess", a2, *&type, v3, v5, v4);
  }

  v9 = v8;
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v7;
        v12 = "  =>  Returning topic: %@";
        v13 = v11;
        v14 = 12;
LABEL_13:
        _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, v12, &v17, v14);
      }
    }
  }

  else if (v10)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      v12 = " ** No topic!";
      v13 = v15;
      v14 = 2;
      goto LABEL_13;
    }
  }

  return v7;
}

- (BOOL)_checkAliasInfoAndFailIfNecessaryWithAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties
{
  v11 = *&type;
  v115 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_idsAccountForCallType_(self, a2, *&type, *&type, v7, d);
  if (objc_msgSend_accountType(v14, v15, v16, v17, v19, v18) != 1)
  {
    return 1;
  }

  actionCopy = action;
  v25 = objc_msgSend_registeredURIs(self, v20, v21, v22, v24, v23);
  v31 = objc_msgSend_accountDefaults(self, v26, v27, v28, v30, v29);
  objc_msgSend_objectForKey_(v31, v32, *MEMORY[0x277D19408], v33, v35, v34);
  v40 = objc_msgSend___imArrayByApplyingBlock_(v25, v36, &unk_284E713C8, v37, v39, v38);
  v41 = _IDSCopyCallerID();
  v47 = objc_msgSend__FZBestGuessFZIDType(v41, v42, v43, v44, v46, v45);
  v52 = objc_msgSend__URIFromFZIDType_(v41, v48, v47, v49, v51, v50);
  if (IMOSLoggingEnabled())
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v108 = v41;
      v109 = 2112;
      v110 = v52;
      v111 = 2112;
      v112 = v40;
      _os_log_impl(&dword_23BC9F000, v57, OS_LOG_TYPE_INFO, "Choosing callerID %@ callerURI %@ from aliases %@", buf, 0x20u);
    }
  }

  v58 = objc_msgSend_callerCertForCallType_(self, v53, v11, v54, v56, v55);
  if (objc_msgSend_length(v52, v59, v60, v61, v63, v62))
  {
    if (objc_msgSend_length(v58, v64, v65, v66, v68, v67))
    {
      return 1;
    }
  }

  v70 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v108 = v52;
    v109 = 2112;
    v110 = v58;
    v111 = 2112;
    v112 = v41;
    v113 = 2112;
    v114 = v25;
    _os_log_impl(&dword_23BC9F000, v70, OS_LOG_TYPE_DEFAULT, "This conference invitation has bogus alias info! (callerURI: %@  Cert: %@  callerID: %@  bindings: %@)", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v104 = v41;
      v105 = v25;
      v102 = v52;
      v103 = v58;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v104 = v41;
      v105 = v25;
      v102 = v52;
      v103 = v58;
      IMLogString();
    }
  }

  if (IMOSLoggingEnabled())
  {
    v71 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v108 = v52;
      v109 = 2112;
      v110 = v58;
      v111 = 2112;
      v112 = v41;
      v113 = 2112;
      v114 = v25;
      _os_log_impl(&dword_23BC9F000, v71, OS_LOG_TYPE_INFO, "This conference invitation has bogus alias info! (callerURI: %@  Cert: %@  callerID: %@  bindings: %@)", buf, 0x2Au);
    }
  }

  v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (objc_msgSend_length(d, v73, v74, v75, v77, v76))
  {
    objc_msgSend_setObject_forKey_(v72, v78, d, @"conference", v82, v81);
  }

  if (objc_msgSend_length(person, v78, v79, v80, v82, v81, v102, v103, v104, v105))
  {
    objc_msgSend_setObject_forKey_(v72, v83, person, @"ID", v85, v84);
  }

  if (properties)
  {
    objc_msgSend_setObject_forKey_(v72, v83, properties, @"properties", v85, v84);
  }

  v86 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v83, *MEMORY[0x277D18F40], actionCopy, v85, v72);
  v92 = objc_msgSend_broadcaster(self, v87, v88, v89, v91, v90);
  v98 = objc_msgSend_accountID(self, v93, v94, v95, v97, v96);
  objc_msgSend_account_postedError_(v92, v99, v98, v86, v101, v100);

  return 0;
}

- (BOOL)_checkConferenceIDAndFailIfNecessaryWithAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties
{
  v50 = *MEMORY[0x277D85DE8];
  hasPrefix = objc_msgSend_hasPrefix_(d, a2, @"ConferenceID:", *&type, v7, d);
  if (hasPrefix)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      dCopy4 = d;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_DEFAULT, "This conference ID (%@) is bogus, failing this message", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        dCopy3 = d;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        dCopy3 = d;
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy4 = d;
        _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "Conference ID is bogus: %@", buf, 0xCu);
      }
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (objc_msgSend_length(d, v17, v18, v19, v21, v20))
    {
      objc_msgSend_setObject_forKey_(v16, v22, d, @"conference", v26, v25);
    }

    if (objc_msgSend_length(person, v22, v23, v24, v26, v25, dCopy3))
    {
      objc_msgSend_setObject_forKey_(v16, v27, person, @"ID", v29, v28);
    }

    if (properties)
    {
      objc_msgSend_setObject_forKey_(v16, v27, properties, @"properties", v29, v28);
    }

    v30 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v27, *MEMORY[0x277D18F40], action, v29, v16);
    v36 = objc_msgSend_broadcaster(self, v31, v32, v33, v35, v34);
    v42 = objc_msgSend_accountID(self, v37, v38, v39, v41, v40);
    objc_msgSend_account_postedError_(v36, v43, v42, v30, v45, v44);
  }

  return hasPrefix ^ 1;
}

- (BOOL)_checkCanSendRequestsAndFailIfNecessaryAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties
{
  Calls = objc_msgSend__validRegistrationStateToMakeCalls(self, a2, action, *&type, v7, d);
  if ((Calls & 1) == 0)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_DEFAULT, "The device is not allowed to make calls now", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v50 = 0;
        _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "The device is not allowed to make calls now", v50, 2u);
      }
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKey_(v16, v17, &unk_284E757D0, @"internalCode", v19, v18);
    if (objc_msgSend_length(d, v20, v21, v22, v24, v23))
    {
      objc_msgSend_setObject_forKey_(v16, v25, d, @"conference", v29, v28);
    }

    if (objc_msgSend_length(person, v25, v26, v27, v29, v28))
    {
      objc_msgSend_setObject_forKey_(v16, v30, person, @"ID", v32, v31);
    }

    if (properties)
    {
      objc_msgSend_setObject_forKey_(v16, v30, properties, @"properties", v32, v31);
    }

    v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, *MEMORY[0x277D18F40], action, v32, v16);
    v39 = objc_msgSend_broadcaster(self, v34, v35, v36, v38, v37);
    v45 = objc_msgSend_accountID(self, v40, v41, v42, v44, v43);
    objc_msgSend_account_postedError_(v39, v46, v45, v33, v48, v47);
  }

  return Calls;
}

- (BOOL)_checkManagedProfileAndFailIfNecessaryAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties
{
  v13 = objc_msgSend_allowedAsChild(self, a2, action, *&type, v7, d);
  if ((v13 & 1) == 0)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_DEFAULT, "The device has a managed profile, not allowed", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v50 = 0;
        _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "The device has a managed profile, not allowed", v50, 2u);
      }
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKey_(v16, v17, &unk_284E757E8, @"internalCode", v19, v18);
    if (objc_msgSend_length(d, v20, v21, v22, v24, v23))
    {
      objc_msgSend_setObject_forKey_(v16, v25, d, @"conference", v29, v28);
    }

    if (objc_msgSend_length(person, v25, v26, v27, v29, v28))
    {
      objc_msgSend_setObject_forKey_(v16, v30, person, @"ID", v32, v31);
    }

    if (properties)
    {
      objc_msgSend_setObject_forKey_(v16, v30, properties, @"properties", v32, v31);
    }

    v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, *MEMORY[0x277D18F40], action, v32, v16);
    v39 = objc_msgSend_broadcaster(self, v34, v35, v36, v38, v37);
    v45 = objc_msgSend_accountID(self, v40, v41, v42, v44, v43);
    objc_msgSend_account_postedError_(v39, v46, v45, v33, v48, v47);
  }

  return v13;
}

- (BOOL)_checkBadPushToken:(id)token
{
  v8 = objc_msgSend_pushToken(self, a2, token, v3, v5, v4);
  LOBYTE(v12) = 1;
  if (token && v8)
  {
    if (objc_msgSend_isEqual_(token, v7, v8, v9, v11, v10))
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_DEFAULT, "Received push to myself, from myself - ignoring", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v12 = IMOSLoggingEnabled();
      if (v12)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        v12 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
        if (v12)
        {
          *v16 = 0;
          _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "Received push to myself, from myself - ignoring", v16, 2u);
          LOBYTE(v12) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)_checkForBadPeerIDWithAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties peerID:(id)iD
{
  v61 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend__stripFZIDPrefix(iD, a2, action, *&type, v8, d);
  v20 = objc_msgSend_length(v14, v15, v16, v17, v19, v18);
  if (!v20)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      personCopy4 = person;
      _os_log_impl(&dword_23BC9F000, v21, OS_LOG_TYPE_DEFAULT, "Bad peer ID supplied for person ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        personCopy3 = person;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        personCopy3 = person;
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        personCopy4 = person;
        _os_log_impl(&dword_23BC9F000, v22, OS_LOG_TYPE_INFO, "Bad peer ID supplied for person ID: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        personCopy4 = qword_2814228A0;
        _os_log_impl(&dword_23BC9F000, v23, OS_LOG_TYPE_INFO, "Conference Map: %@", buf, 0xCu);
      }
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKey_(v24, v25, &unk_284E75800, @"internalCode", v27, v26);
    if (objc_msgSend_length(d, v28, v29, v30, v32, v31))
    {
      objc_msgSend_setObject_forKey_(v24, v33, d, @"conference", v37, v36);
    }

    if (objc_msgSend_length(person, v33, v34, v35, v37, v36, personCopy3))
    {
      objc_msgSend_setObject_forKey_(v24, v38, person, @"ID", v40, v39);
    }

    if (properties)
    {
      objc_msgSend_setObject_forKey_(v24, v38, properties, @"properties", v40, v39);
    }

    v41 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v38, *MEMORY[0x277D18F40], action, v40, v24);
    v47 = objc_msgSend_broadcaster(self, v42, v43, v44, v46, v45);
    v53 = objc_msgSend_accountID(self, v48, v49, v50, v52, v51);
    objc_msgSend_account_postedError_(v47, v54, v53, v41, v56, v55);
  }

  return v20 != 0;
}

- (BOOL)_checkRegistrationAndFailIfNecessaryAction:(int64_t)action callType:(int)type conferenceID:(id)d withPerson:(id)person properties:(id)properties
{
  isDeviceRegistered = objc_msgSend__isDeviceRegistered(self, a2, action, *&type, v7, d);
  if ((isDeviceRegistered & 1) == 0)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_DEFAULT, "The device is not registered, failing this message", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v50 = 0;
        _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "Device is not registered, failing", v50, 2u);
      }
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKey_(v16, v17, &unk_284E75818, @"internalCode", v19, v18);
    if (objc_msgSend_length(d, v20, v21, v22, v24, v23))
    {
      objc_msgSend_setObject_forKey_(v16, v25, d, @"conference", v29, v28);
    }

    if (objc_msgSend_length(person, v25, v26, v27, v29, v28))
    {
      objc_msgSend_setObject_forKey_(v16, v30, person, @"ID", v32, v31);
    }

    if (properties)
    {
      objc_msgSend_setObject_forKey_(v16, v30, properties, @"properties", v32, v31);
    }

    v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, *MEMORY[0x277D18F40], action, v32, v16);
    v39 = objc_msgSend_broadcaster(self, v34, v35, v36, v38, v37);
    v45 = objc_msgSend_accountID(self, v40, v41, v42, v44, v43);
    objc_msgSend_account_postedError_(v39, v46, v45, v33, v48, v47);
  }

  return isDeviceRegistered;
}

- (void)refreshRegistration
{
  v54 = *MEMORY[0x277D85DE8];
  ftPushHandler = self->_ftPushHandler;
  isDeviceRegistered = objc_msgSend__isDeviceRegistered(self, a2, v2, v3, v5, v4);
  objc_msgSend_setRegistered_(ftPushHandler, v9, isDeviceRegistered, v10, v12, v11);
  if (objc_msgSend__isDeviceRegistered(self, v13, v14, v15, v17, v16))
  {
    v22 = MEMORY[0x277CBEAC0];
    v23 = _IDSInvitationProtocolVersionNumber();
    v27 = objc_msgSend_dictionaryWithObject_forKey_(v22, v24, v23, @"InvitationProtocolVersion", v26, v25);
    v33 = objc_msgSend_account(self, v28, v29, v30, v32, v31);
    objc_msgSend_writeAccountDefaults_(v33, v34, v27, v35, v37, v36);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v38 = objc_msgSend_idsAccounts(self, v18, v19, v20, 0, v21, 0);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v49, v53, v40, 16);
  if (v41)
  {
    v46 = v41;
    v47 = *v50;
    do
    {
      v48 = 0;
      do
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(v38);
        }

        objc_msgSend_resetCallerIDForIDSAccount_(self, v42, *(*(&v49 + 1) + 8 * v48++), v43, v45, v44);
      }

      while (v46 != v48);
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v42, &v49, v53, v45, 16);
    }

    while (v46);
  }
}

- (BOOL)_registrationSupportedForRegistration
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, v2, v3, v5, v4);
  if (objc_msgSend_isExpired(v6, v7, v8, v9, v11, v10))
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v17, OS_LOG_TYPE_INFO, "*** Lockdown state is expired, not allowing registration", buf, 2u);
      }
    }

    v18 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v18, OS_LOG_TYPE_ERROR, "*** Lockdown state is expired, not allowing registration", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      IMLogString();
    }

    LOBYTE(v19) = 0;
  }

  else
  {
    v20 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v12, v13, v14, v16, v15);
    v19 = objc_msgSend_registrationSupported(v20, v21, v22, v23, v25, v24);
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = @"NO";
      if (v19)
      {
        v27 = @"YES";
      }

      *buf = 138412290;
      v30 = v27;
      _os_log_impl(&dword_23BC9F000, v26, OS_LOG_TYPE_DEBUG, "Returning device support registration supported: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  return v19;
}

- (BOOL)_validRegistrationStateToAcceptCalls
{
  v7 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, v2, v3, v5, v4);
  if (objc_msgSend_isExpired(v7, v8, v9, v10, v12, v11))
  {
    v18 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v18, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not allowing accept", buf, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ((objc_msgSend__registrationSupportedForRegistration(self, v13, v14, v15, v17, v16) & 1) == 0)
  {
    v70 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *v78 = 0;
      _os_log_impl(&dword_23BC9F000, v70, OS_LOG_TYPE_DEFAULT, "Registration is not supported, we cannot accept calls", v78, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v24 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v19, v20, v21, v23, v22);
  if ((objc_msgSend_isSetup(v24, v25, v26, v27, v29, v28) & 1) == 0)
  {
    v71 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *v77 = 0;
      _os_log_impl(&dword_23BC9F000, v71, OS_LOG_TYPE_DEFAULT, "We're not restored from backup yet, we cannot accept calls", v77, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v35 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v30, v31, v32, v34, v33);
  if ((objc_msgSend_isActivated(v35, v36, v37, v38, v40, v39) & 1) == 0)
  {
    v72 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v76 = 0;
      _os_log_impl(&dword_23BC9F000, v72, OS_LOG_TYPE_DEFAULT, "Locked down, we cannot accept calls", v76, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v46 = objc_msgSend_idsAccount(self, v41, v42, v43, v45, v44);
  if (objc_msgSend_accountType(v46, v47, v48, v49, v51, v50) || (v57 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v52, v53, v54, v56, v55), isTelephonyDevice = objc_msgSend_isTelephonyDevice(v57, v58, v59, v60, v62, v61), !isTelephonyDevice) || (sub_23BCAA810(isTelephonyDevice, v64, v65, v66, v67, v68) & 1) != 0)
  {
    LOBYTE(v69) = 1;
    return v69;
  }

  v73 = OSLogHandleForFaceTimeCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *v75 = 0;
    _os_log_impl(&dword_23BC9F000, v73, OS_LOG_TYPE_DEFAULT, "Not a valid sim state, we cannot accept calls", v75, 2u);
  }

  if (MarcoShouldLog())
  {
    MarcoLog();
  }

  v69 = _IMWillLog();
  if (v69)
  {
LABEL_32:
    _IMAlwaysLog();
LABEL_33:
    LOBYTE(v69) = 0;
  }

  return v69;
}

- (id)registeredURIs
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v5, v4);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = objc_msgSend_idsAccounts(self, v8, v9, v10, 0, v11);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v45, v49, v14, 16);
  if (v15)
  {
    v21 = v15;
    v22 = *v46;
    do
    {
      v23 = 0;
      do
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v12);
        }

        v24 = objc_msgSend_registeredURIs(*(*(&v45 + 1) + 8 * v23), v16, v17, v18, v20, v19);
        objc_msgSend_addObjectsFromArray_(v7, v25, v24, v26, v28, v27);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v16, &v45, v49, v20, 16);
    }

    while (v21);
  }

  if (objc_msgSend_count(v7, v16, v17, v18, v20, v19))
  {
    IMDInconsistencyResolved();
    return objc_msgSend_allObjects(v7, v34, v35, v36, v38, v37);
  }

  else
  {
    if (objc_msgSend_isActive(self, v29, v30, v31, v33, v32))
    {
      objc_msgSend_accounts(self, v40, v41, v42, v44, v43);
      IMDNoticedInconsistency();
    }

    return 0;
  }
}

- (id)idsAccounts
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v5, v4);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = objc_msgSend_accounts(self, v8, v9, v10, 0, v11);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v46, v50, v14, 16);
  if (v15)
  {
    v21 = v15;
    v22 = *v47;
    do
    {
      v23 = 0;
      do
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v12);
        }

        v24 = *(*(&v46 + 1) + 8 * v23);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = objc_msgSend_idsAccount(v24, v25, v26, v27, v29, v28);
          objc_msgSend_addObject_(v7, v31, v30, v32, v34, v33);
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v25, &v46, v50, v29, 16);
    }

    while (v21);
  }

  if (objc_msgSend_count(v7, v16, v17, v18, v20, v19))
  {
    IMDInconsistencyResolved();
  }

  else
  {
    if (objc_msgSend_isActive(self, v35, v36, v37, v39, v38))
    {
      objc_msgSend_accounts(self, v40, v41, v42, v44, v43);
      IMDNoticedInconsistency();
    }

    return 0;
  }

  return v7;
}

- (BOOL)_validRegistrationStateToMakeCalls
{
  v7 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, v2, v3, v5, v4);
  if ((objc_msgSend_isActivated(v7, v8, v9, v10, v12, v11) & 1) == 0)
  {
    v69 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v69, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not allowing calls", buf, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v18 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v13, v14, v15, v17, v16);
  if ((objc_msgSend_isSetup(v18, v19, v20, v21, v23, v22) & 1) == 0)
  {
    v70 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *v78 = 0;
      _os_log_impl(&dword_23BC9F000, v70, OS_LOG_TYPE_DEFAULT, "We're not restored from backup yet, we cannot make calls", v78, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ((objc_msgSend__registrationSupportedForRegistration(self, v24, v25, v26, v28, v27) & 1) == 0)
  {
    v71 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *v77 = 0;
      _os_log_impl(&dword_23BC9F000, v71, OS_LOG_TYPE_DEFAULT, "Registration is not supported, we cannot make calls", v77, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v34 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v29, v30, v31, v33, v32);
  if ((objc_msgSend_isActivated(v34, v35, v36, v37, v39, v38) & 1) == 0)
  {
    v72 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v76 = 0;
      _os_log_impl(&dword_23BC9F000, v72, OS_LOG_TYPE_DEFAULT, "Locked down, we cannot make calls", v76, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v45 = objc_msgSend_idsAccount(self, v40, v41, v42, v44, v43);
  if (objc_msgSend_accountType(v45, v46, v47, v48, v50, v49) || (v56 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v51, v52, v53, v55, v54), isTelephonyDevice = objc_msgSend_isTelephonyDevice(v56, v57, v58, v59, v61, v60), !isTelephonyDevice) || (sub_23BCAAF28(isTelephonyDevice, v63, v64, v65, v66, v67) & 1) != 0)
  {
    LOBYTE(v68) = 1;
    return v68;
  }

  v73 = OSLogHandleForFaceTimeCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *v75 = 0;
    _os_log_impl(&dword_23BC9F000, v73, OS_LOG_TYPE_DEFAULT, "Not a valid sim state, we cannot make calls", v75, 2u);
  }

  if (MarcoShouldLog())
  {
    MarcoLog();
  }

  v68 = _IMWillLog();
  if (v68)
  {
LABEL_32:
    _IMAlwaysLog();
LABEL_33:
    LOBYTE(v68) = 0;
  }

  return v68;
}

- (void)sessionWillBecomeInactiveWithAccount:(id)account
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[FaceTimeServiceSession sessionWillBecomeInactiveWithAccount:]";
      _os_log_impl(&dword_23BC9F000, v10, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  objc_msgSend__purgeMap(self, v5, v6, v7, v9, v8);
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {

    self->_completionBlock = 0;
  }

  v12.receiver = self;
  v12.super_class = FaceTimeServiceSession;
  [(IMDAppleServiceSession *)&v12 sessionWillBecomeInactiveWithAccount:account];
}

- (void)_logLocalInfo
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = objc_msgSend_registeredURIs(self, v4, v5, v6, v8, v7);
    _os_log_impl(&dword_23BC9F000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      objc_msgSend_registeredURIs(self, v9, v10, v11, v13, v12);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      objc_msgSend_registeredURIs(self, v14, v15, v16, v18, v17);
      IMLogString();
    }
  }
}

- (void)refreshServiceCapabilities
{
  v7 = objc_msgSend_broadcaster(self, a2, v2, v3, v5, v4);
  v13 = objc_msgSend_accountID(self, v8, v9, v10, v12, v11);
  v19 = objc_msgSend_capabilities(self, v14, v15, v16, v18, v17);

  MEMORY[0x2821F9670](v7, sel_account_capabilitiesChanged_, v13, v19, v20);
}

- (void)_sendRejectToPeerID:(id)d peerToken:(id)token sessionToken:(id)sessionToken callType:(int)type reason:(int64_t)reason clientInfo:(id)info
{
  v10 = *&type;
  v128 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v118 = 138413314;
      dCopy = d;
      v120 = 2112;
      tokenCopy = token;
      v122 = 2112;
      sessionTokenCopy = sessionToken;
      v124 = 1024;
      reasonCopy = reason;
      v126 = 2112;
      infoCopy = info;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "peerID: %@  peerToken: %@  sessionToken: %@  reason: %d  clientInfo: %@", &v118, 0x30u);
    }
  }

  v16 = objc_alloc_init(FTRejectMessage);
  v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, reason, v18, v20, v19);
  objc_msgSend_setReason_(v16, v22, v21, v23, v25, v24);
  objc_msgSend_setPeerID_(v16, v26, d, v27, v29, v28);
  objc_msgSend_setClientInfo_(v16, v30, info, v31, v33, v32);
  objc_msgSend_setSessionToken_(v16, v34, sessionToken, v35, v37, v36);
  objc_msgSend_setPeerPushToken_(v16, v38, token, v39, v41, v40);
  v47 = objc_msgSend_pushToken(self, v42, v43, v44, v46, v45);
  objc_msgSend_setSelfPushToken_(v16, v48, v47, v49, v51, v50);
  objc_msgSend_setCompletionBlock_(v16, v52, self->_completionBlock, v53, v55, v54);
  objc_msgSend__messageTimeoutTimeForMessage_(self, v56, v16, v57, v59, v58);
  objc_msgSend_setTimeout_(v16, v60, v61, v62, v64, v63);
  v69 = objc_msgSend_callerCertForCallType_(self, v65, v10, v66, v68, v67);
  objc_msgSend_setIDCertificate_(v16, v70, v69, v71, v73, v72);
  v79 = objc_msgSend_callerPrivateKey(self, v74, v75, v76, v78, v77);
  objc_msgSend_setIdentityPrivateKey_(v16, v80, v79, v81, v83, v82);
  v89 = objc_msgSend_callerURI(self, v84, v85, v86, v88, v87);
  objc_msgSend_setSelfURI_(v16, v90, v89, v91, v93, v92);
  v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v101 = objc_msgSend_date(MEMORY[0x277CBEAA8], v95, v96, v97, v99, v98);
  if (v101)
  {
    CFDictionarySetValue(v94, @"sendDate", v101);
  }

  objc_msgSend_setUserInfo_(v16, v100, v94, v102, v104, v103);
  v109 = objc_msgSend_topicForCallType_(self, v105, v10, v106, v108, v107);
  objc_msgSend_setTopic_(v16, v110, v109, v111, v113, v112);
  if (v16)
  {
    objc_msgSend_sendMessage_(qword_281422890, v114, v16, v115, v117, v116);
  }
}

- (void)_cancelVCRequestWithPerson:(id)person properties:(id)properties conference:(id)conference pairsToSkip:(id)skip reason:(id)reason
{
  v189 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      conferenceCopy6 = person;
      v181 = 2112;
      conferenceCopy5 = conference;
      v183 = 2112;
      conferenceCopy2 = properties;
      v185 = 2112;
      skipCopy = skip;
      v187 = 2112;
      reasonCopy = reason;
      _os_log_impl(&dword_23BC9F000, v17, OS_LOG_TYPE_INFO, "cancelVCRequestWithPerson: %@  conference: %@ properties: %@ pairsToSkip: %@ reason: %@", buf, 0x34u);
    }
  }

  v18 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v13, conference, v14, v16, v15);
  v23 = objc_msgSend__callTypeForConferenceID_(self, v19, conference, v20, v22, v21);
  v28 = objc_msgSend_objectForKey_(properties, v24, *MEMORY[0x277D19568], v25, v27, v26);
  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = @"unknown";
    if (!v23)
    {
      v30 = @"video";
    }

    *buf = 138413058;
    conferenceCopy6 = person;
    if (v23 == 1)
    {
      v30 = @"audio";
    }

    v181 = 2112;
    conferenceCopy5 = v30;
    v183 = 2112;
    conferenceCopy2 = conference;
    v185 = 2112;
    skipCopy = v28;
    _os_log_impl(&dword_23BC9F000, v29, OS_LOG_TYPE_DEFAULT, "userID: %@  call type: %@  rid: %@ sessionID: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v33 = @"unknown";
      if (!v23)
      {
        v33 = @"video";
      }

      if (v23 == 1)
      {
        v33 = @"audio";
      }

      conferenceCopy4 = conference;
      v175 = v28;
      personCopy4 = person;
      v173 = v33;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v34 = @"unknown";
      if (!v23)
      {
        v34 = @"video";
      }

      if (v23 == 1)
      {
        v34 = @"audio";
      }

      conferenceCopy4 = conference;
      v175 = v28;
      personCopy4 = person;
      v173 = v34;
      IMLogString();
    }
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v31, 3, v23, v32, conference, person, 0, personCopy4, v173, conferenceCopy4, v175) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v35, 3, v23, v36, conference, person, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v37, 3, v23, v38, conference, person, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v39, 3, v23, v40, conference, person, 0))
  {
    v176 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(self, v41, person, conference, v42, skip);
    if (objc_msgSend_count(v176, v43, v44, v45, v47, v46))
    {
      goto LABEL_35;
    }

    v52 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v48, conference, v49, v51, v50);
    v58 = objc_msgSend___imHexString(v52, v53, v54, v55, v57, v56);
    if (v58)
    {
      v177 = v58;
      if ((objc_msgSend_isEqualToString_(conference, v59, v58, v61, v63, v62) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v66 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            conferenceCopy6 = v177;
            v181 = 2112;
            conferenceCopy5 = conference;
            _os_log_impl(&dword_23BC9F000, v66, OS_LOG_TYPE_INFO, "New conference ID %@ for %@, finding peers", buf, 0x16u);
          }
        }

        v176 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(self, v64, person, v177, v65, skip);
      }
    }

    if (objc_msgSend_count(v176, v59, v60, v61, v63, v62))
    {
LABEL_35:
      v178 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *buf = objc_msgSend_unsignedIntValue(v28, v72, v73, v74, v76, v75);
      v80 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v77, buf, 4, v79, v78);
      objc_msgSend_setObject_forKey_(v178, v81, v80, @"s", v83, v82);
      v87 = objc_alloc_init(FTCancelMessage);
      if (!v18)
      {
        v18 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v84, conference, v85, v88, v86);
      }

      objc_msgSend_setSessionToken_(v87, v84, v18, v85, v88, v86);
      objc_msgSend_setReason_(v87, v89, reason, v90, v92, v91);
      objc_msgSend_setPeers_(v87, v93, v176, v94, v96, v95);
      objc_msgSend_setClientInfo_(v87, v97, v178, v98, v100, v99);
      v101 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v107 = v101;
      if (person)
      {
        CFDictionarySetValue(v101, @"ID", person);
      }

      if (conference)
      {
        CFDictionarySetValue(v107, @"conference", conference);
      }

      v109 = objc_msgSend_date(MEMORY[0x277CBEAA8], v102, v103, v104, v106, v105);
      if (v109)
      {
        CFDictionarySetValue(v107, @"sendDate", v109);
      }

      v113 = objc_msgSend_topicForCallType_(self, v108, v23, v110, v112, v111);
      objc_msgSend_setTopic_(v87, v114, v113, v115, v117, v116);
      objc_msgSend_setUserInfo_(v87, v118, v107, v119, v121, v120);
      objc_msgSend_setCompletionBlock_(v87, v122, self->_completionBlock, v123, v125, v124);
      objc_msgSend__messageTimeoutTimeForMessage_(self, v126, v87, v127, v129, v128);
      objc_msgSend_setTimeout_(v87, v130, v131, v132, v134, v133);
      v139 = objc_msgSend_callerCertForCallType_(self, v135, v23, v136, v138, v137);
      objc_msgSend_setIDCertificate_(v87, v140, v139, v141, v143, v142);
      v149 = objc_msgSend_callerPrivateKey(self, v144, v145, v146, v148, v147);
      objc_msgSend_setIdentityPrivateKey_(v87, v150, v149, v151, v153, v152);
      v159 = objc_msgSend_callerURI(self, v154, v155, v156, v158, v157);
      objc_msgSend_setSelfURI_(v87, v160, v159, v161, v163, v162);
      if (IMOSLoggingEnabled())
      {
        v164 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          conferenceCopy6 = person;
          _os_log_impl(&dword_23BC9F000, v164, OS_LOG_TYPE_INFO, "Sending cancel invitation to: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        personCopy6 = person;
        MarcoNoteCheckpoint();
      }

      objc_msgSend_sendMessage_(qword_281422890, v165, v87, v166, v168, v167, personCopy6);
    }

    else
    {
      if (objc_msgSend__hasOutgoingInvitationInFlight(self, v67, v68, v69, v71, v70))
      {
        if (IMOSLoggingEnabled())
        {
          v169 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            conferenceCopy6 = conference;
            _os_log_impl(&dword_23BC9F000, v169, OS_LOG_TYPE_INFO, "Delaying cancel for cid %@", buf, 0xCu);
          }
        }

        im_dispatch_after();
      }

      if (IMOSLoggingEnabled())
      {
        v170 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v170, OS_LOG_TYPE_INFO, "No peers to send cancel invitation to, ignoring", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }
    }
  }
}

- (void)requestVCWithPerson:(id)person properties:(id)properties conference:(id)conference
{
  v499 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      personCopy4 = person;
      v493 = 2112;
      conferenceCopy3 = properties;
      v495 = 2112;
      propertiesCopy2 = conference;
      _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "requestVCWithPerson: %@  properties: %@ conference: %@", buf, 0x20u);
    }
  }

  value = person;
  conferenceCopy2 = conference;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = objc_msgSend_callerURI(self, v10, v11, v12, v14, v13);
      *buf = 138412546;
      personCopy4 = person;
      v493 = 2112;
      conferenceCopy3 = v15;
      _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_INFO, "Sending invitation to: %@   from: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    personCopy3 = person;
    v466 = objc_msgSend_callerURI(self, v16, v17, v18, v20, v19);
    MarcoNoteCheckpoint();
  }

  objc_msgSend__logLocalInfo(self, v16, v17, v18, v20, v19, personCopy3, v466);
  v26 = objc_msgSend__FZBestGuessFZIDType(person, v21, v22, v23, v25, v24);
  v31 = objc_msgSend__URIFromFZIDType_(person, v27, v26, v28, v30, v29);
  v36 = objc_msgSend_objectForKey_(properties, v32, *MEMORY[0x277D194E0], v33, v35, v34);
  v41 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v37, v36, v38, v40, v39);
  v46 = objc_msgSend_objectForKey_(v41, v42, *MEMORY[0x277D194F0], v43, v45, v44);
  v51 = objc_msgSend_objectForKey_(v41, v47, *MEMORY[0x277D19510], v48, v50, v49);
  v56 = objc_msgSend_objectForKey_(v41, v52, *MEMORY[0x277D19508], v53, v55, v54);
  v473 = objc_msgSend_objectForKey_(v41, v57, *MEMORY[0x277D19560], v58, v60, v59);
  v474 = objc_msgSend_objectForKey_(v41, v61, *MEMORY[0x277D19568], v62, v64, v63);
  v472 = objc_msgSend_objectForKey_(v41, v65, *MEMORY[0x277D19500], v66, v68, v67);
  v73 = objc_msgSend_objectForKey_(v41, v69, @"excludingPushTokens", v70, v72, v71);
  v476 = objc_msgSend_objectForKey_(properties, v74, *MEMORY[0x277D194C8], v75, v77, v76);
  v82 = objc_msgSend_objectForKey_(properties, v78, *MEMORY[0x277D19518], v79, v81, v80);
  v475 = objc_msgSend_objectForKey_(properties, v83, *MEMORY[0x277D194D8], v84, v86, v85);
  v478 = objc_msgSend_BOOLValue(v476, v87, v88, v89, v91, v90);
  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v92, 1, v478, v93, conference, person, properties) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v94, 1, v478, v95, conference, person, properties) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v96, 1, v478, v97, conference, person, properties) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v98, 1, v478, v99, conference, person, properties) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v100, 1, v478, v101, conference, person, properties, v31))
  {
    v102 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = @"video";
      *buf = 138413058;
      personCopy4 = person;
      if (v478)
      {
        v103 = @"audio";
      }

      v493 = 2112;
      conferenceCopy3 = v474;
      v495 = 2112;
      propertiesCopy2 = properties;
      v497 = 2112;
      v498 = v103;
      _os_log_impl(&dword_23BC9F000, v102, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ props: %@   call type: %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v104 = @"video";
        if (v478)
        {
          v104 = @"audio";
        }

        propertiesCopy4 = properties;
        v469 = v104;
        personCopy6 = person;
        v467 = v474;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v105 = @"video";
        if (v478)
        {
          v105 = @"audio";
        }

        propertiesCopy4 = properties;
        v469 = v105;
        personCopy6 = person;
        v467 = v474;
        IMLogString();
      }
    }

    v470 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v475)
    {
      v471 = objc_alloc_init(FTReInitiateMessage);
      if (v82)
      {
        v110 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v106, v82, v107, v109, v108);
      }

      else
      {
        v110 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v106, conference, v107, v109, v108);
      }

      objc_msgSend_setSessionToken_(v471, v111, v110, v112, v114, v113, personCopy6, v467, propertiesCopy4, v469);
      if (IMOSLoggingEnabled())
      {
        v119 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
        {
          v121 = objc_msgSend_sessionToken(v471, v115, v120, v116, v118, v117);
          *buf = 138412802;
          personCopy4 = v82;
          v493 = 2112;
          conferenceCopy3 = conference;
          v495 = 2112;
          propertiesCopy2 = v121;
          _os_log_impl(&dword_23BC9F000, v119, OS_LOG_TYPE_INFO, "existingConferenceID %@   conferenceID %@   sessionToken %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v471 = objc_alloc_init(FTInitiateMessage);
    }

    objc_msgSend_setSelfNATType_(v471, v115, v51, v116, v118, v117);
    objc_msgSend_setSelfNatIP_(v471, v122, v56, v123, v125, v124);
    v131 = objc_msgSend_pushToken(self, v126, v127, v128, v130, v129);
    objc_msgSend_setSelfPushToken_(v471, v132, v131, v133, v135, v134);
    objc_msgSend_setSelfBlob_(v471, v136, v46, v137, v139, v138);
    v140 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v475)
    {
      v147 = qword_2814228A0;
      v148 = objc_msgSend_GUID(self, v141, v142, v143, v146, v144);
      v153 = objc_msgSend_objectForKey_(v147, v149, v148, v150, v152, v151);
      v163 = (objc_msgSend_length(v82, v154, v155, v156, v158, v157) ? objc_msgSend_objectForKey_(v153, v159, v82, v160, v162, v161, personCopy6) : objc_msgSend_objectForKey_(v153, v159, conference, v160, v162, v161, personCopy6));
      Object = objc_msgSend_lastObject(v163, v164, v165, v166, v168, v167);
      v170 = Object;
      if (Object)
      {
        v171 = objc_msgSend_objectForKey_(Object, v141, @"id", v143, v146, v144);
        v176 = objc_msgSend_objectForKey_(v170, v172, @"push-token", v173, v175, v174);
        if (IMOSLoggingEnabled())
        {
          v177 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            personCopy4 = v170;
            _os_log_impl(&dword_23BC9F000, v177, OS_LOG_TYPE_INFO, "Existing peer found %@", buf, 0xCu);
          }
        }

        v178 = objc_alloc(MEMORY[0x277CBEAC0]);
        v183 = objc_msgSend_initWithObjectsAndKeys_(v178, v179, v171, v180, v182, v181, @"id", v176, @"push-token", 0);
        objc_msgSend_addObject_(v140, v184, v183, v185, v187, v186);
      }
    }

    if (!objc_msgSend_count(v140, v141, v142, v143, v146, v144, personCopy6))
    {
      v188 = objc_alloc_init(MEMORY[0x277CBEB58]);
      if (objc_msgSend_count(v472, v189, v190, v191, v193, v192))
      {
        v198 = objc_msgSend_arrayByApplyingSelector_(v472, v194, sel__bestGuessURI, v195, v197, v196);
        objc_msgSend_addObjectsFromArray_(v188, v199, v198, v200, v202, v201);
      }

      v487 = 0u;
      v488 = 0u;
      v485 = 0u;
      v486 = 0u;
      v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v194, &v485, v490, 0, 16);
      if (v205)
      {
        v207 = *v486;
        do
        {
          for (i = 0; i != v205; ++i)
          {
            if (*v486 != v207)
            {
              objc_enumerationMutation(v188);
            }

            v209 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v203, *(*(&v485 + 1) + 8 * i), @"raw-id", v206, v204);
            objc_msgSend_addObject_(v140, v210, v209, v211, v213, v212);
          }

          v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v203, &v485, v490, v206, 16);
        }

        while (v205);
      }

      v483 = 0u;
      v484 = 0u;
      v481 = 0u;
      v482 = 0u;
      v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v203, &v481, v489, 0, 16);
      if (v216)
      {
        v218 = *v482;
        do
        {
          for (j = 0; j != v216; ++j)
          {
            if (*v482 != v218)
            {
              objc_enumerationMutation(v73);
            }

            v220 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v214, *(*(&v481 + 1) + 8 * j), @"push-token", v217, v215);
            objc_msgSend_addObject_(v145, v221, v220, v222, v224, v223);
          }

          v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v214, &v481, v489, v217, 16);
        }

        while (v216);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v229 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        personCopy4 = v145;
        _os_log_impl(&dword_23BC9F000, v229, OS_LOG_TYPE_INFO, "All peers %@", buf, 0xCu);
      }
    }

    objc_msgSend_setPeers_(v471, v225, v140, v226, v228, v227);
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v239 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          personCopy4 = v145;
          _os_log_impl(&dword_23BC9F000, v239, OS_LOG_TYPE_INFO, "Excluding push tokens %@", buf, 0xCu);
        }
      }

      objc_msgSend_setPushTokensToExclude_(v471, v235, v145, v236, v238, v237);
    }

    *buf = objc_msgSend_unsignedIntValue(v474, v230, v231, v232, v234, v233);
    v243 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v240, buf, 4, v242, v241);
    objc_msgSend_setObject_forKey_(v470, v244, v243, @"s", v246, v245);
    *buf = objc_msgSend_unsignedIntValue(v476, v247, v248, v249, v251, v250);
    v255 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v252, buf, 4, v254, v253);
    objc_msgSend_setObject_forKey_(v470, v256, v255, @"a", v258, v257);
    if (v475)
    {
      v263 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v259, 1, v260, v262, v261);
      sub_23BCACF04(v263, v470, v264, v265, v266, v267);
    }

    if (v473)
    {
      objc_msgSend_setObject_forKey_(v470, v259, v473, @"k", v262, v261);
      v272 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v268, 1, v269, v271, v270);
      objc_msgSend_setObject_forKey_(v470, v273, v272, @"kv", v275, v274);
    }

    v276 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v259, 1, v260, v262, v261);
    sub_23BCACFD4(v276, v470, v277, v278, v279, v280);
    v285 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v281, 2, v282, v284, v283);
    *buf = objc_msgSend_unsignedIntValue(v285, v286, v287, v288, v290, v289);
    v294 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v291, buf, 4, v293, v292);
    objc_msgSend_setObject_forKey_(v470, v295, v294, @"p", v297, v296);
    objc_msgSend_setClientInfo_(v471, v298, v470, v299, v301, v300);
    v306 = objc_msgSend_callerCertForCallType_(self, v302, v478, v303, v305, v304);
    objc_msgSend_setIDCertificate_(v471, v307, v306, v308, v310, v309);
    v316 = objc_msgSend_callerPrivateKey(self, v311, v312, v313, v315, v314);
    objc_msgSend_setIdentityPrivateKey_(v471, v317, v316, v318, v320, v319);
    v326 = objc_msgSend_callerURI(self, v321, v322, v323, v325, v324);
    objc_msgSend_setSelfURI_(v471, v327, v326, v328, v330, v329);
    v336 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v331, v332, v333, v335, v334);
    v342 = objc_msgSend_CTNetworkInformation(v336, v337, v338, v339, v341, v340);
    v352 = objc_msgSend_mutableCopy(v342, v343, v344, v345, v347, v346);
    if (!v352)
    {
      v352 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v354 = objc_msgSend_idsAccount(self, v348, v349, v350, v353, v351);
    v360 = objc_msgSend_accountType(v354, v355, v356, v357, v359, v358);
    if (!v360)
    {
      v399 = objc_msgSend_phoneNumber(self, v361, v362, v363, v365, v364);
      v410 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        personCopy4 = v399;
        _os_log_impl(&dword_23BC9F000, v410, OS_LOG_TYPE_DEFAULT, "Using base number: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v465 = v399;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v465 = v399;
          IMLogString();
        }
      }

      goto LABEL_120;
    }

    if (v360 != 1)
    {
      v411 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v411, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v411, OS_LOG_TYPE_DEFAULT, "Local account used to call someone, unsupported", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      goto LABEL_122;
    }

    v367 = objc_msgSend_regionID(self, v361, v362, v363, v365, v364);
    if (v367)
    {
      CFDictionarySetValue(v352, @"region-id", v367);
    }

    v372 = objc_msgSend_regionServerContext(self, v366, v367, v368, v370, v369);
    if (v372)
    {
      CFDictionarySetValue(v352, @"extra", v372);
    }

    v376 = objc_msgSend_regionBasePhoneNumber(self, v371, v372, v373, v375, v374);
    v382 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v377, v378, v379, v381, v380);
    if (objc_msgSend_isTelephonyDevice(v382, v383, v384, v385, v387, v386))
    {
      v393 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v388, v389, v390, v392, v391);
      v399 = objc_msgSend_telephoneNumber(v393, v394, v395, v396, v398, v397);
      if (objc_msgSend_length(v399, v400, v401, v402, v404, v403))
      {
        v405 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          personCopy4 = v399;
          v493 = 2112;
          conferenceCopy3 = v376;
          _os_log_impl(&dword_23BC9F000, v405, OS_LOG_TYPE_DEFAULT, "Using device number: %@ instead of base number: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v465 = v399;
            v467 = v376;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v465 = v399;
            v467 = v376;
            IMLogString();
          }
        }

        goto LABEL_120;
      }

      v413 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v413, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        personCopy4 = v376;
        _os_log_impl(&dword_23BC9F000, v413, OS_LOG_TYPE_DEFAULT, "No device number present, using base number: %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_119;
      }

      if (MarcoShouldLog())
      {
        v465 = v376;
        MarcoLog();
      }

      if (!IMShouldLog())
      {
LABEL_119:
        v399 = v376;
LABEL_120:
        if (v399)
        {
          CFDictionarySetValue(v352, @"base-phone-number", v399);
        }

LABEL_122:
        objc_msgSend_setRegionInformation_(v471, v406, v352, v407, v409, v408, v465, v467);
        v414 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v419 = v414;
        if (value)
        {
          CFDictionarySetValue(v414, @"ID", value);
        }

        if (v474)
        {
          CFDictionarySetValue(v419, @"sessionID", v474);
        }

        if (properties)
        {
          CFDictionarySetValue(v419, @"properties", properties);
        }

        v420 = conferenceCopy2;
        if (conferenceCopy2)
        {
          CFDictionarySetValue(v419, @"conference", conferenceCopy2);
        }

        v422 = objc_msgSend_date(MEMORY[0x277CBEAA8], v415, v420, v416, v418, v417);
        if (v422)
        {
          CFDictionarySetValue(v419, @"sendDate", v422);
        }

        v426 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v421, v422, v423, v425, v424);
        v433 = objc_msgSend_currentMessageContext(v426, v427, v428, v429, v431, v430);
        if (v433)
        {
          CFDictionarySetValue(v419, @"messageContext", v433);
        }

        v437 = objc_msgSend_topicForCallType_(self, v432, v478, v434, v436, v435);
        objc_msgSend_setTopic_(v471, v438, v437, v439, v441, v440);
        objc_msgSend_setUserInfo_(v471, v442, v419, v443, v445, v444);

        objc_msgSend_setCompletionBlock_(v471, v446, self->_completionBlock, v447, v449, v448);
        objc_msgSend__messageTimeoutTimeForMessage_(self, v450, v471, v451, v453, v452);
        objc_msgSend_setTimeout_(v471, v454, v455, v456, v458, v457);
        objc_msgSend_sendMessage_(qword_281422890, v459, v471, v460, v462, v461);

        return;
      }
    }

    else
    {
      v412 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        personCopy4 = v376;
        _os_log_impl(&dword_23BC9F000, v412, OS_LOG_TYPE_DEFAULT, "This is not a telephony device, just using base number: %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_119;
      }

      if (MarcoShouldLog())
      {
        v465 = v376;
        MarcoLog();
      }

      if (!IMShouldLog())
      {
        goto LABEL_119;
      }
    }

    v465 = v376;
    IMLogString();
    goto LABEL_119;
  }
}

- (void)respondToVCInvitationWithPerson:(id)person properties:(id)properties conference:(id)conference
{
  v365 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend__callTypeForConferenceID_(self, a2, conference, properties, v5, conference);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"unknown";
      if (!v10)
      {
        v12 = @"video";
      }

      *buf = 138413058;
      personCopy13 = person;
      if (v10 == 1)
      {
        v12 = @"audio";
      }

      v361 = 2112;
      conferenceCopy5 = properties;
      v363 = 2112;
      *v364 = conference;
      *&v364[8] = 2112;
      *&v364[10] = v12;
      _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_INFO, "respondToVCInvitationWithPerson: %@  properties: %@ conference: %@  callType: %@", buf, 0x2Au);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      personCopy13 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v16, OS_LOG_TYPE_INFO, "All conference maps %@", buf, 0xCu);
    }
  }

  v17 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v13, person, conference, v15, v14);
  v21 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v18, v17, conference, v20, v19);
  v26 = objc_msgSend_objectForKey_(properties, v22, *MEMORY[0x277D19550], v23, v25, v24);
  v31 = objc_msgSend_objectForKey_(properties, v27, *MEMORY[0x277D19558], v28, v30, v29);
  v36 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v32, v31, v33, v35, v34);
  value = objc_msgSend_objectForKey_(v36, v37, *MEMORY[0x277D19568], v38, v40, v39);
  if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      personCopy13 = v36;
      _os_log_impl(&dword_23BC9F000, v43, OS_LOG_TYPE_INFO, "Reponse dictionary: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v41, 4, v10, v42, conference, person, properties) && objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v44, 4, v10, v45, conference, person, properties) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v46, 4, v10, v47, conference, person, properties) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v48, 4, v10, v49, conference, person, properties) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v50, 4, v10, v51, conference, person, properties) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v52, 4, v10, v53, conference, person, properties, v17))
  {
    v356 = objc_alloc_init(MEMORY[0x277CBEB38]);
    theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (person)
    {
      CFDictionarySetValue(theDict, @"ID", person);
    }

    if (v26)
    {
      CFDictionarySetValue(theDict, @"response", v26);
    }

    if (value)
    {
      CFDictionarySetValue(theDict, @"sessionID", value);
    }

    if (properties)
    {
      CFDictionarySetValue(theDict, @"properties", properties);
    }

    if (conference)
    {
      CFDictionarySetValue(theDict, @"conference", conference);
    }

    v60 = objc_msgSend_date(MEMORY[0x277CBEAA8], v54, v55, v56, v58, v57);
    if (v60)
    {
      CFDictionarySetValue(theDict, @"sendDate", v60);
    }

    v64 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v59, v60, v61, v63, v62);
    v71 = objc_msgSend_currentMessageContext(v64, v65, v66, v67, v69, v68);
    if (v71)
    {
      CFDictionarySetValue(theDict, @"messageContext", v71);
    }

    *buf = objc_msgSend_unsignedIntValue(value, v70, v71, v72, v74, v73);
    v78 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v75, buf, 4, v77, v76);
    objc_msgSend_setObject_forKey_(v356, v79, v78, @"s", v81, v80);
    v86 = objc_msgSend_objectForKey_(properties, v82, *MEMORY[0x277D194E8], v83, v85, v84);
    sub_23BCACFD4(v86, v356, v87, v88, v89, v90);
    v95 = objc_msgSend_objectForKey_(v36, v91, *MEMORY[0x277D19560], v92, v94, v93);
    sub_23BCACF68(v95, v356, v99, v96, v97, v98);
    v104 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v100, 2, v101, v103, v102);
    *buf = objc_msgSend_unsignedIntValue(v104, v105, v106, v107, v109, v108);
    v113 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v110, buf, 4, v112, v111);
    objc_msgSend_setObject_forKey_(v356, v114, v113, @"p", v116, v115);
    if (!objc_msgSend_intValue(v26, v117, v118, v119, v121, v120))
    {
      v357 = objc_alloc_init(FTAcceptMessage);
      objc_msgSend_setClientInfo_(v357, v147, v356, v148, v150, v149);
      v155 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v151, conference, v152, v154, v153);
      objc_msgSend_setSessionToken_(v357, v156, v155, v157, v159, v158);
      v165 = objc_msgSend_pushToken(self, v160, v161, v162, v164, v163);
      objc_msgSend_setSelfPushToken_(v357, v166, v165, v167, v169, v168);
      v174 = objc_msgSend_objectForKey_(v36, v170, *MEMORY[0x277D194F0], v171, v173, v172);
      objc_msgSend_setSelfBlob_(v357, v175, v174, v176, v178, v177);
      v183 = objc_msgSend_objectForKey_(v36, v179, *MEMORY[0x277D19510], v180, v182, v181);
      objc_msgSend_setSelfNATType_(v357, v184, v183, v185, v187, v186);
      v192 = objc_msgSend_objectForKey_(v36, v188, *MEMORY[0x277D19508], v189, v191, v190);
      objc_msgSend_setSelfNATIP_(v357, v193, v192, v194, v196, v195);
      objc_msgSend_setPeerID_(v357, v197, v17, v198, v200, v199);
      objc_msgSend_setPeerPushToken_(v357, v201, v21, v202, v204, v203);
      v209 = objc_msgSend_objectForKey_(v36, v205, *MEMORY[0x277D19520], v206, v208, v207);
      objc_msgSend_setPeerBlob_(v357, v210, v209, v211, v213, v212);
      v218 = objc_msgSend_objectForKey_(v36, v214, *MEMORY[0x277D19538], v215, v217, v216);
      objc_msgSend_setPeerNATType_(v357, v219, v218, v220, v222, v221);
      v227 = objc_msgSend_objectForKey_(v36, v223, *MEMORY[0x277D19530], v224, v226, v225);
      objc_msgSend_setPeerNATIP_(v357, v228, v227, v229, v231, v230);
      if (IMOSLoggingEnabled())
      {
        v232 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          personCopy13 = person;
          v361 = 2112;
          conferenceCopy5 = conference;
          _os_log_impl(&dword_23BC9F000, v232, OS_LOG_TYPE_INFO, "Sending accept to: %@  for conference: %@", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        personCopy15 = person;
        conferenceCopy6 = conference;
        MarcoNoteCheckpoint();
      }

      v237 = objc_msgSend_topicForCallType_(self, v233, v10, v234, v236, v235, personCopy15, conferenceCopy6);
      objc_msgSend_setTopic_(v357, v238, v237, v239, v241, v240);
      objc_msgSend_setUserInfo_(v357, v242, theDict, v243, v245, v244);
      objc_msgSend_setCompletionBlock_(v357, v246, self->_completionBlock, v247, v249, v248);
      objc_msgSend__messageTimeoutTimeForMessage_(self, v250, v357, v251, v253, v252);
      objc_msgSend_setTimeout_(v357, v254, v255, v256, v258, v257);
      v263 = objc_msgSend_callerCertForCallType_(self, v259, v10, v260, v262, v261);
      objc_msgSend_setIDCertificate_(v357, v264, v263, v265, v267, v266);
      v273 = objc_msgSend_callerPrivateKey(self, v268, v269, v270, v272, v271);
      objc_msgSend_setIdentityPrivateKey_(v357, v274, v273, v275, v277, v276);
      v283 = objc_msgSend_callerURI(self, v278, v279, v280, v282, v281);
      objc_msgSend_setSelfURI_(v357, v284, v283, v285, v287, v286);
      objc_msgSend_sendMessage_(qword_281422890, v288, v357, v289, v291, v290);

      v292 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
      {
        v298 = objc_msgSend_intValue(v26, v293, v294, v295, v297, v296);
        *buf = 138413314;
        personCopy13 = person;
        v361 = 2112;
        conferenceCopy5 = value;
        v363 = 1024;
        *v364 = v298;
        *&v364[4] = 2112;
        *&v364[6] = properties;
        *&v364[14] = 2112;
        *&v364[16] = v356;
        _os_log_impl(&dword_23BC9F000, v292, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ response: %d props: %@  client info: %@", buf, 0x30u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          propertiesCopy6 = properties;
          v354 = v356;
          v351 = value;
          v352 = objc_msgSend_intValue(v26, v304, v305, v306, v308, v307);
          personCopy6 = person;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          propertiesCopy6 = properties;
          v354 = v356;
          v351 = value;
          v352 = objc_msgSend_intValue(v26, v299, v300, v301, v303, v302);
          personCopy6 = person;
          IMLogString();
        }
      }

      if (v10 == 1)
      {
        v309 = objc_msgSend_broadcasterForACConferenceListeners(self, v299, v300, v301, v303, v302);
      }

      else
      {
        v309 = objc_msgSend_broadcasterForVCConferenceListeners(self, v299, v300, v301, v303, v302);
      }

      v337 = v309;
      v338 = objc_msgSend_accountID(self, v310, v311, v312, v314, v313, personCopy6, v351, v352, propertiesCopy6, v354);
      v339 = sub_23BCA7F48(person);
      v345 = objc_msgSend_unsignedIntValue(value, v340, v341, v342, v344, v343);
      objc_msgSend_account_conference_receivedAVMessage_from_sessionID_userInfo_(v337, v346, v338, conference, v347, 350, v339, v345, 0);
      goto LABEL_77;
    }

    v127 = objc_msgSend_intValue(v26, v122, v123, v124, v126, v125) == 1;
    v128 = IMOSLoggingEnabled();
    if (v127)
    {
      if (v128)
      {
        v129 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          personCopy13 = person;
          v361 = 2112;
          conferenceCopy5 = conference;
          _os_log_impl(&dword_23BC9F000, v129, OS_LOG_TYPE_INFO, "Sending decline to: %@  for conference: %@", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        personCopy15 = person;
        conferenceCopy6 = conference;
        MarcoNoteCheckpoint();
      }

      v130 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        v136 = objc_msgSend_intValue(v26, v131, v132, v133, v135, v134);
        *buf = 138413058;
        personCopy13 = person;
        v361 = 2112;
        conferenceCopy5 = value;
        v363 = 1024;
        *v364 = v136;
        *&v364[4] = 2112;
        *&v364[6] = properties;
        _os_log_impl(&dword_23BC9F000, v130, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ response: %d props: %@", buf, 0x26u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_74;
      }

      if (MarcoShouldLog())
      {
        v352 = objc_msgSend_intValue(v26, v141, v142, v143, v145, v144);
        propertiesCopy6 = properties;
        personCopy15 = person;
        conferenceCopy6 = value;
        MarcoLog();
      }

      if ((IMShouldLog() & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v128)
      {
        v315 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v315, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          personCopy13 = person;
          v361 = 2112;
          conferenceCopy5 = conference;
          _os_log_impl(&dword_23BC9F000, v315, OS_LOG_TYPE_INFO, "Sending busy to: %@  for conference: %@", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        personCopy15 = person;
        conferenceCopy6 = conference;
        MarcoNoteCheckpoint();
      }

      v316 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
      {
        v322 = objc_msgSend_intValue(v26, v317, v318, v319, v321, v320);
        *buf = 138413058;
        personCopy13 = person;
        v361 = 2112;
        conferenceCopy5 = value;
        v363 = 1024;
        *v364 = v322;
        *&v364[4] = 2112;
        *&v364[6] = properties;
        _os_log_impl(&dword_23BC9F000, v316, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ response: %d props: %@", buf, 0x26u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_74;
      }

      if (MarcoShouldLog())
      {
        v352 = objc_msgSend_intValue(v26, v323, v324, v325, v327, v326);
        propertiesCopy6 = properties;
        personCopy15 = person;
        conferenceCopy6 = value;
        MarcoLog();
      }

      if (!IMShouldLog())
      {
        goto LABEL_74;
      }
    }

    v352 = objc_msgSend_intValue(v26, v137, v146, v138, v140, v139, personCopy15, conferenceCopy6, v352, propertiesCopy6);
    propertiesCopy6 = properties;
    personCopy15 = person;
    conferenceCopy6 = value;
    IMLogString();
LABEL_74:
    v328 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v137, conference, v138, v140, v139, personCopy15, conferenceCopy6, v352, propertiesCopy6);
    v334 = objc_msgSend_intValue(v26, v329, v330, v331, v333, v332);
    objc_msgSend__sendRejectToPeerID_peerToken_sessionToken_callType_reason_clientInfo_(self, v335, v17, v21, v336, v328, v10, v334, v356);
LABEL_77:
  }
}

- (void)sendAVMessageToPerson:(id)person sessionID:(unsigned int)d type:(unsigned int)type userInfo:(id)info conference:(id)conference
{
  v9 = *&type;
  v10 = *&d;
  v158 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67110146;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      *&buf[14] = 2112;
      *&buf[16] = conference;
      *&buf[24] = 2112;
      *&buf[26] = person;
      *&buf[34] = 2112;
      *&buf[36] = info;
      _os_log_impl(&dword_23BC9F000, v17, OS_LOG_TYPE_INFO, "Request to send AV Message type: %d   for session ID: %u  for conference: %@  to person: %@  userInfo: %@", buf, 0x2Cu);
    }
  }

  if ((v9 - 1000) < 2 || v9 == 1500)
  {
    v18 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v13, conference, v14, v16, v15);
    v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, v10, v20, v22, v21);
    v28 = objc_msgSend__callTypeForConferenceID_(self, v24, conference, v25, v27, v26);
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = @"unknown";
      if (!v28)
      {
        v30 = @"video";
      }

      *buf = 67109890;
      *&buf[4] = v9;
      if (v28 == 1)
      {
        v30 = @"audio";
      }

      *&buf[8] = 2112;
      *&buf[10] = v30;
      *&buf[18] = 2112;
      *&buf[20] = person;
      *&buf[28] = 2112;
      *&buf[30] = info;
      _os_log_impl(&dword_23BC9F000, v29, OS_LOG_TYPE_DEFAULT, "Sending AV Message type: %d callType: %@ to: %@ userInfo :%@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v33 = @"unknown";
        if (!v28)
        {
          v33 = @"video";
        }

        if (v28 == 1)
        {
          v33 = @"audio";
        }

        personCopy2 = person;
        infoCopy2 = info;
        v152 = v9;
        v154 = v33;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v34 = @"unknown";
        if (!v28)
        {
          v34 = @"video";
        }

        if (v28 == 1)
        {
          v34 = @"audio";
        }

        personCopy2 = person;
        infoCopy2 = info;
        v152 = v9;
        v154 = v34;
        IMLogString();
      }
    }

    if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v31, 6, v28, v32, conference, person, 0, v152, v154, personCopy2, infoCopy2, *buf) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v35, 6, v28, v36, conference, person, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v37, 6, v28, v38, conference, person, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v39, 6, v28, v40, conference, person, 0))
    {
      v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *buf = objc_msgSend_unsignedIntValue(v23, v42, v43, v44, v46, v45);
      v50 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v47, buf, 4, v49, v48);
      objc_msgSend_setObject_forKey_(v41, v51, v50, @"s", v53, v52);
      if (info)
      {
        CFDictionarySetValue(v41, @"info", info);
      }

      v57 = objc_alloc_init(FTSendMessage);
      if (!v18)
      {
        v18 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v54, conference, v55, v58, v56);
      }

      objc_msgSend_setSessionToken_(v57, v54, v18, v55, v58, v56);
      v63 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v59, v9, v60, v62, v61);
      objc_msgSend_setReason_(v57, v64, v63, v65, v67, v66);
      v70 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(self, v68, person, conference, v69, 0);
      objc_msgSend_setPeers_(v57, v71, v70, v72, v74, v73);
      objc_msgSend_setClientInfo_(v57, v75, v41, v76, v78, v77);
      v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v84 = v79;
      if (person)
      {
        CFDictionarySetValue(v79, @"ID", person);
      }

      if (conference)
      {
        CFDictionarySetValue(v84, @"conference", conference);
      }

      v85 = objc_msgSend_topicForCallType_(self, v80, v28, v81, v83, v82);
      objc_msgSend_setTopic_(v57, v86, v85, v87, v89, v88);
      objc_msgSend_setUserInfo_(v57, v90, v84, v91, v93, v92);
      objc_msgSend_setCompletionBlock_(v57, v94, self->_completionBlock, v95, v97, v96);
      objc_msgSend__messageTimeoutTimeForMessage_(self, v98, v57, v99, v101, v100);
      objc_msgSend_setTimeout_(v57, v102, v103, v104, v106, v105);
      v111 = objc_msgSend_callerCertForCallType_(self, v107, v28, v108, v110, v109);
      objc_msgSend_setIDCertificate_(v57, v112, v111, v113, v115, v114);
      v121 = objc_msgSend_callerPrivateKey(self, v116, v117, v118, v120, v119);
      objc_msgSend_setIdentityPrivateKey_(v57, v122, v121, v123, v125, v124);
      v131 = objc_msgSend_callerURI(self, v126, v127, v128, v130, v129);
      objc_msgSend_setSelfURI_(v57, v132, v131, v133, v135, v134);
      v141 = objc_msgSend_pushToken(self, v136, v137, v138, v140, v139);
      objc_msgSend_setSelfPushToken_(v57, v142, v141, v143, v145, v144);
      if (IMOSLoggingEnabled())
      {
        v146 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = person;
          _os_log_impl(&dword_23BC9F000, v146, OS_LOG_TYPE_INFO, "Sending generic message to: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        personCopy3 = person;
        MarcoNoteCheckpoint();
      }

      objc_msgSend_sendMessage_(qword_281422890, v147, v57, v148, v150, v149, personCopy3);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v151 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_23BC9F000, v151, OS_LOG_TYPE_INFO, " => Not sending, not supported message type: %d", buf, 8u);
    }
  }
}

- (void)relay:(id)relay sendInitateRequest:(id)request toPerson:(id)person
{
  v206 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      personCopy2 = person;
      v202 = 2112;
      relayCopy = relay;
      v204 = 2112;
      requestCopy = request;
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, "sendRelayInitateRequestTo: %@ relayID: %@  userInfo: %@", buf, 0x20u);
    }
  }

  v14 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v9, relay, v10, v12, v11);
  v18 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v15, person, relay, v17, v16);
  v22 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v19, v18, relay, v21, v20);
  v27 = objc_msgSend__callTypeForConferenceID_(self, v23, relay, v24, v26, v25);
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"unknown";
      if (!v27)
      {
        v29 = @"video";
      }

      if (v27 == 1)
      {
        v29 = @"audio";
      }

      *buf = 138412546;
      personCopy2 = person;
      v202 = 2112;
      relayCopy = v29;
      _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "Sending relay initate to: %@  callType: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v32 = @"unknown";
    if (!v27)
    {
      v32 = @"video";
    }

    if (v27 == 1)
    {
      v32 = @"audio";
    }

    personCopy3 = person;
    v199 = v32;
    MarcoNoteCheckpoint();
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v30, 7, v27, v31, relay, person, 0, personCopy3, v199) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v33, 7, v27, v34, relay, person, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v35, 7, v27, v36, relay, person, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v37, 7, v27, v38, relay, person, 0) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v39, 7, v27, v40, relay, person, 0, v18))
  {
    if (v14)
    {
      v43 = objc_alloc_init(FTRelayInitateMessage);
      objc_msgSend_setSessionToken_(v43, v44, v14, v45, v47, v46);
    }

    else
    {
      if ((objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v41, 7, v27, v42, relay, person, 0) & 1) == 0)
      {
        return;
      }

      v43 = objc_alloc_init(FTRelayInitateMessage);
      v57 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v53, relay, v54, v56, v55);
      objc_msgSend_setSessionToken_(v43, v58, v57, v59, v61, v60);
    }

    v62 = objc_msgSend_pushToken(self, v48, v49, v50, v52, v51);
    objc_msgSend_setSelfPushToken_(v43, v63, v62, v64, v66, v65);
    v71 = objc_msgSend_objectForKey_(request, v67, *MEMORY[0x277D18FB0], v68, v70, v69);
    objc_msgSend_setSelfNatType_(v43, v72, v71, v73, v75, v74);
    v80 = objc_msgSend_objectForKey_(request, v76, *MEMORY[0x277D18FA8], v77, v79, v78);
    objc_msgSend_setSelfNATIP_(v43, v81, v80, v82, v84, v83);
    objc_msgSend_setPeerID_(v43, v85, v18, v86, v88, v87);
    objc_msgSend_setPeerPushToken_(v43, v89, v22, v90, v92, v91);
    v97 = objc_msgSend_objectForKey_(request, v93, *MEMORY[0x277D18F68], v94, v96, v95);
    objc_msgSend_setPeerNatType_(v43, v98, v97, v99, v101, v100);
    v106 = objc_msgSend_objectForKey_(request, v102, *MEMORY[0x277D18F60], v103, v105, v104);
    objc_msgSend_setPeerNATIP_(v43, v107, v106, v108, v110, v109);
    v115 = objc_msgSend_objectForKey_(request, v111, *MEMORY[0x277D18F98], v112, v114, v113);
    objc_msgSend_setRelayCandidateID_(v43, v116, v115, v117, v119, v118);
    v120 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v126 = v120;
    if (person)
    {
      CFDictionarySetValue(v120, @"ID", person);
    }

    if (relay)
    {
      CFDictionarySetValue(v126, @"conference", relay);
    }

    v128 = objc_msgSend_date(MEMORY[0x277CBEAA8], v121, v122, v123, v125, v124);
    if (v128)
    {
      CFDictionarySetValue(v126, @"sendDate", v128);
    }

    v132 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v127, v128, v129, v131, v130);
    v139 = objc_msgSend_currentMessageContext(v132, v133, v134, v135, v137, v136);
    if (v139)
    {
      CFDictionarySetValue(v126, @"messageContext", v139);
    }

    v143 = objc_msgSend_topicForCallType_(self, v138, v27, v140, v142, v141);
    objc_msgSend_setTopic_(v43, v144, v143, v145, v147, v146);
    objc_msgSend_setUserInfo_(v43, v148, v126, v149, v151, v150);
    objc_msgSend_setCompletionBlock_(v43, v152, self->_completionBlock, v153, v155, v154);
    objc_msgSend__messageTimeoutTimeForMessage_(self, v156, v43, v157, v159, v158);
    objc_msgSend_setTimeout_(v43, v160, v161, v162, v164, v163);
    v169 = objc_msgSend_callerCertForCallType_(self, v165, v27, v166, v168, v167);
    objc_msgSend_setIDCertificate_(v43, v170, v169, v171, v173, v172);
    v179 = objc_msgSend_callerPrivateKey(self, v174, v175, v176, v178, v177);
    objc_msgSend_setIdentityPrivateKey_(v43, v180, v179, v181, v183, v182);
    v189 = objc_msgSend_callerURI(self, v184, v185, v186, v188, v187);
    objc_msgSend_setSelfURI_(v43, v190, v189, v191, v193, v192);
    objc_msgSend_sendMessage_(qword_281422890, v194, v43, v195, v197, v196);
  }
}

- (void)relay:(id)relay sendUpdate:(id)update toPerson:(id)person
{
  v274 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      personCopy2 = person;
      v270 = 2112;
      relayCopy = relay;
      v272 = 2112;
      updateCopy = update;
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, "sendRelayUpdateTo: %@ relayID: %@  userInfo: %@", buf, 0x20u);
    }
  }

  v14 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v9, relay, v10, v12, v11);
  v18 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v15, person, relay, v17, v16);
  v22 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v19, v18, relay, v21, v20);
  v27 = objc_msgSend__callTypeForConferenceID_(self, v23, relay, v24, v26, v25);
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"unknown";
      if (!v27)
      {
        v29 = @"video";
      }

      if (v27 == 1)
      {
        v29 = @"audio";
      }

      *buf = 138412546;
      personCopy2 = person;
      v270 = 2112;
      relayCopy = v29;
      _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "Sending relay update to: %@   callType: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v32 = @"unknown";
    if (!v27)
    {
      v32 = @"video";
    }

    if (v27 == 1)
    {
      v32 = @"audio";
    }

    personCopy3 = person;
    v267 = v32;
    MarcoNoteCheckpoint();
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v30, 8, v27, v31, relay, person, 0, personCopy3, v267) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v33, 8, v27, v34, relay, person, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v35, 8, v27, v36, relay, person, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v37, 8, v27, v38, relay, person, 0) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v39, 8, v27, v40, relay, person, 0, v18))
  {
    if (v14)
    {
      v43 = objc_alloc_init(FTRelayUpdateMessage);
      objc_msgSend_setSessionToken_(v43, v44, v14, v45, v47, v46);
    }

    else
    {
      if ((objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v41, 8, v27, v42, relay, person, 0) & 1) == 0)
      {
        return;
      }

      v43 = objc_alloc_init(FTRelayUpdateMessage);
      v56 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v52, relay, v53, v55, v54);
      objc_msgSend_setSessionToken_(v43, v57, v56, v58, v60, v59);
    }

    objc_msgSend_setPeerID_(v43, v48, v18, v49, v51, v50);
    objc_msgSend_setPeerPushToken_(v43, v61, v22, v62, v64, v63);
    v69 = objc_msgSend_objectForKey_(update, v65, *MEMORY[0x277D18FE8], v66, v68, v67);
    objc_msgSend_setRelayType_(v43, v70, v69, v71, v73, v72);
    v78 = objc_msgSend_objectForKey_(update, v74, *MEMORY[0x277D18F48], v75, v77, v76);
    objc_msgSend_setRelayConnectionID_(v43, v79, v78, v80, v82, v81);
    v87 = objc_msgSend_objectForKey_(update, v83, *MEMORY[0x277D18FE0], v84, v86, v85);
    objc_msgSend_setRelayTransactionIDAlloc_(v43, v88, v87, v89, v91, v90);
    v96 = objc_msgSend_objectForKey_(update, v92, *MEMORY[0x277D18FD8], v93, v95, v94);
    objc_msgSend_setRelayTokenAllocRes_(v43, v97, v96, v98, v100, v99);
    v106 = objc_msgSend_pushToken(self, v101, v102, v103, v105, v104);
    objc_msgSend_setSelfPushToken_(v43, v107, v106, v108, v110, v109);
    v115 = objc_msgSend_objectForKey_(update, v111, *MEMORY[0x277D18FB8], v112, v114, v113);
    objc_msgSend_setSelfRelayIP_(v43, v116, v115, v117, v119, v118);
    v124 = objc_msgSend_objectForKey_(update, v120, *MEMORY[0x277D18FD0], v121, v123, v122);
    objc_msgSend_setSelfRelayPort_(v43, v125, v124, v126, v128, v127);
    v133 = objc_msgSend_objectForKey_(update, v129, *MEMORY[0x277D18FC0], v130, v132, v131);
    objc_msgSend_setSelfRelayNATIP_(v43, v134, v133, v135, v137, v136);
    v142 = objc_msgSend_objectForKey_(update, v138, *MEMORY[0x277D18FC8], v139, v141, v140);
    objc_msgSend_setSelfRelayNATPort_(v43, v143, v142, v144, v146, v145);
    v147 = *MEMORY[0x277D18F78];
    if (objc_msgSend_objectForKey_(update, v148, *MEMORY[0x277D18F78], v149, v151, v150))
    {
      v156 = objc_msgSend_objectForKey_(update, v152, v147, v153, v155, v154);
    }

    else
    {
      v156 = objc_msgSend_objectForKey_(update, v152, *MEMORY[0x277D18F70], v153, v155, v154);
    }

    objc_msgSend_setPeerRelayIP_(v43, v157, v156, v158, v160, v159);
    v165 = objc_msgSend_objectForKey_(update, v161, *MEMORY[0x277D18F88], v162, v164, v163);
    objc_msgSend_setPeerRelayPort_(v43, v166, v165, v167, v169, v168);
    v174 = objc_msgSend_objectForKey_(update, v170, *MEMORY[0x277D18F90], v171, v173, v172);
    objc_msgSend_setSelfRelayBlob_(v43, v175, v174, v176, v178, v177);
    v183 = objc_msgSend_objectForKey_(update, v179, *MEMORY[0x277D18F98], v180, v182, v181);
    objc_msgSend_setRelayCandidateID_(v43, v184, v183, v185, v187, v186);
    v188 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v194 = v188;
    if (person)
    {
      CFDictionarySetValue(v188, @"ID", person);
    }

    if (relay)
    {
      CFDictionarySetValue(v194, @"conference", relay);
    }

    v196 = objc_msgSend_date(MEMORY[0x277CBEAA8], v189, v190, v191, v193, v192);
    if (v196)
    {
      CFDictionarySetValue(v194, @"sendDate", v196);
    }

    v200 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v195, v196, v197, v199, v198);
    v207 = objc_msgSend_currentMessageContext(v200, v201, v202, v203, v205, v204);
    if (v207)
    {
      CFDictionarySetValue(v194, @"messageContext", v207);
    }

    v211 = objc_msgSend_topicForCallType_(self, v206, v27, v208, v210, v209);
    objc_msgSend_setTopic_(v43, v212, v211, v213, v215, v214);
    objc_msgSend_setUserInfo_(v43, v216, v194, v217, v219, v218);
    objc_msgSend_setCompletionBlock_(v43, v220, self->_completionBlock, v221, v223, v222);
    objc_msgSend__messageTimeoutTimeForMessage_(self, v224, v43, v225, v227, v226);
    objc_msgSend_setTimeout_(v43, v228, v229, v230, v232, v231);
    v237 = objc_msgSend_callerCertForCallType_(self, v233, v27, v234, v236, v235);
    objc_msgSend_setIDCertificate_(v43, v238, v237, v239, v241, v240);
    v247 = objc_msgSend_callerPrivateKey(self, v242, v243, v244, v246, v245);
    objc_msgSend_setIdentityPrivateKey_(v43, v248, v247, v249, v251, v250);
    v257 = objc_msgSend_callerURI(self, v252, v253, v254, v256, v255);
    objc_msgSend_setSelfURI_(v43, v258, v257, v259, v261, v260);
    objc_msgSend_sendMessage_(qword_281422890, v262, v43, v263, v265, v264);
  }
}

- (BOOL)_hasOutgoingRelayInitiateInFlight
{
  v25 = *MEMORY[0x277D85DE8];
  objc_msgSend_currentMessage(qword_281422890, a2, v2, v3, v5, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v11 = objc_msgSend_allMessages(qword_281422890, v6, v7, v8, 0, v9, 0, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, v13, 16);
    if (!v10)
    {
      return v10;
    }

    v14 = v10;
    v15 = *v21;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v11);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v20, v24, v18, 16);
        LOBYTE(v10) = 0;
        if (v14)
        {
          goto LABEL_6;
        }

        return v10;
      }
    }
  }

  LOBYTE(v10) = 1;
  return v10;
}

- (void)relay:(id)relay sendCancel:(id)cancel toPerson:(id)person
{
  v211 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      personCopy2 = person;
      v207 = 2112;
      relayCopy = relay;
      v209 = 2112;
      cancelCopy = cancel;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "sendRelayCancelTo: %@ relayID: %@  userInfo: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend__hasOutgoingRelayInitiateInFlight(self, v9, v10, v11, v13, v12))
  {
    im_dispatch_after();
    return;
  }

  v19 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v15, relay, v16, v18, v17);
  v23 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v20, person, relay, v22, v21);
  v27 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v24, v23, relay, v26, v25);
  v32 = objc_msgSend__callTypeForConferenceID_(self, v28, relay, v29, v31, v30);
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = @"unknown";
      if (!v32)
      {
        v34 = @"video";
      }

      if (v32 == 1)
      {
        v34 = @"audio";
      }

      *buf = 138412546;
      personCopy2 = person;
      v207 = 2112;
      relayCopy = v34;
      _os_log_impl(&dword_23BC9F000, v33, OS_LOG_TYPE_INFO, "Sending relay cancel to: %@  callType: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v37 = @"unknown";
    if (!v32)
    {
      v37 = @"video";
    }

    if (v32 == 1)
    {
      v37 = @"audio";
    }

    personCopy3 = person;
    v204 = v37;
    MarcoNoteCheckpoint();
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v35, 9, v32, v36, relay, person, 0, personCopy3, v204) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v38, 9, v32, v39, relay, person, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v40, 9, v32, v41, relay, person, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v42, 9, v32, v43, relay, person, 0) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v44, 9, v32, v45, relay, person, 0, v23))
  {
    if (v19)
    {
      v48 = objc_alloc_init(FTRelayCancelMessage);
      objc_msgSend_setSessionToken_(v48, v49, v19, v50, v52, v51);
    }

    else
    {
      if ((objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v46, 9, v32, v47, relay, person, 0) & 1) == 0)
      {
        return;
      }

      v48 = objc_alloc_init(FTRelayCancelMessage);
      v61 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v57, relay, v58, v60, v59);
      objc_msgSend_setSessionToken_(v48, v62, v61, v63, v65, v64);
    }

    objc_msgSend_setPeerID_(v48, v53, v23, v54, v56, v55);
    objc_msgSend_setPeerPushToken_(v48, v66, v27, v67, v69, v68);
    objc_msgSend_setReason_(v48, v70, &unk_284E75830, v71, v73, v72);
    v78 = objc_msgSend_objectForKey_(cancel, v74, *MEMORY[0x277D18FE8], v75, v77, v76);
    objc_msgSend_setRelayType_(v48, v79, v78, v80, v82, v81);
    v87 = objc_msgSend_objectForKey_(cancel, v83, *MEMORY[0x277D18F48], v84, v86, v85);
    objc_msgSend_setRelayConnectionID_(v48, v88, v87, v89, v91, v90);
    v96 = objc_msgSend_objectForKey_(cancel, v92, *MEMORY[0x277D18FB8], v93, v95, v94);
    objc_msgSend_setSelfRelayIP_(v48, v97, v96, v98, v100, v99);
    v105 = objc_msgSend_objectForKey_(cancel, v101, *MEMORY[0x277D18FD0], v102, v104, v103);
    objc_msgSend_setSelfRelayPort_(v48, v106, v105, v107, v109, v108);
    v110 = *MEMORY[0x277D18F78];
    if (objc_msgSend_objectForKey_(cancel, v111, *MEMORY[0x277D18F78], v112, v114, v113))
    {
      v119 = objc_msgSend_objectForKey_(cancel, v115, v110, v116, v118, v117);
    }

    else
    {
      v119 = objc_msgSend_objectForKey_(cancel, v115, *MEMORY[0x277D18F70], v116, v118, v117);
    }

    objc_msgSend_setPeerRelayIP_(v48, v120, v119, v121, v123, v122);
    v128 = objc_msgSend_objectForKey_(cancel, v124, *MEMORY[0x277D18F88], v125, v127, v126);
    objc_msgSend_setPeerRelayPort_(v48, v129, v128, v130, v132, v131);
    v137 = objc_msgSend_objectForKey_(cancel, v133, *MEMORY[0x277D18F98], v134, v136, v135);
    objc_msgSend_setRelayCandidateID_(v48, v138, v137, v139, v141, v140);
    v142 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v147 = v142;
    if (person)
    {
      CFDictionarySetValue(v142, @"ID", person);
    }

    if (relay)
    {
      CFDictionarySetValue(v147, @"conference", relay);
    }

    v148 = objc_msgSend_topicForCallType_(self, v143, v32, v144, v146, v145);
    objc_msgSend_setTopic_(v48, v149, v148, v150, v152, v151);
    objc_msgSend_setUserInfo_(v48, v153, v147, v154, v156, v155);
    objc_msgSend_setCompletionBlock_(v48, v157, self->_completionBlock, v158, v160, v159);
    objc_msgSend__messageTimeoutTimeForMessage_(self, v161, v48, v162, v164, v163);
    objc_msgSend_setTimeout_(v48, v165, v166, v167, v169, v168);
    v174 = objc_msgSend_callerCertForCallType_(self, v170, v32, v171, v173, v172);
    objc_msgSend_setIDCertificate_(v48, v175, v174, v176, v178, v177);
    v184 = objc_msgSend_callerPrivateKey(self, v179, v180, v181, v183, v182);
    objc_msgSend_setIdentityPrivateKey_(v48, v185, v184, v186, v188, v187);
    v194 = objc_msgSend_callerURI(self, v189, v190, v191, v193, v192);
    objc_msgSend_setSelfURI_(v48, v195, v194, v196, v198, v197);
    objc_msgSend_sendMessage_(qword_281422890, v199, v48, v200, v202, v201);
  }
}

- (void)_cancelOtherInvitesForPeerID:(id)d skipPairs:(id)pairs properties:(id)properties conference:(id)conference reason:(id)reason
{
  v33 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v29 = 138412546;
      dCopy = d;
      v31 = 2112;
      pairsCopy = pairs;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "Cancelling other invites for peer ID: %@     ignore pairs: %@", &v29, 0x16u);
    }
  }

  v16 = objc_msgSend__peerIDPushTokensPairsForPeerID_conferenceID_skippingPairs_(self, v13, d, conference, v14, pairs);
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      dCopy = v16;
      _os_log_impl(&dword_23BC9F000, v22, OS_LOG_TYPE_INFO, "         pairs to cancel: %@", &v29, 0xCu);
    }
  }

  if (objc_msgSend_count(v16, v17, v18, v19, v21, v20))
  {
    v26 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v23, d, conference, v25, v24);
    objc_msgSend__cancelVCRequestWithPerson_properties_conference_pairsToSkip_reason_(self, v27, v26, properties, v28, conference, pairs, reason);
  }
}

- (BOOL)_hasOutgoingInvitationInFlight
{
  v25 = *MEMORY[0x277D85DE8];
  objc_msgSend_currentMessage(qword_281422890, a2, v2, v3, v5, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v11 = objc_msgSend_allMessages(qword_281422890, v6, v7, v8, 0, v9, 0, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, v13, 16);
    if (!v10)
    {
      return v10;
    }

    v14 = v10;
    v15 = *v21;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v11);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v20, v24, v18, 16);
        LOBYTE(v10) = 0;
        if (v14)
        {
          goto LABEL_6;
        }

        return v10;
      }
    }
  }

  LOBYTE(v10) = 1;
  return v10;
}

- (void)handler:(id)handler sessionInitated:(id)initated topic:(id)topic myID:(id)d peerID:(id)iD peerDisplayID:(id)displayID peerCN:(id)n peerPushToken:(id)self0 peerNATType:(id)self1 peerBlob:(id)self2 peerNatIP:(id)self3 clientInfo:(id)self4 serviceData:(id)self5
{
  v375 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      dCopy3 = initated;
      v371 = 2112;
      iDCopy2 = topic;
      v373 = 2112;
      dCopy = d;
      _os_log_impl(&dword_23BC9F000, v24, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@, myID: %@", buf, 0x20u);
    }
  }

  isEqualToString = objc_msgSend_isEqualToString_(topic, v20, @"com.apple.private.ac", v21, v23, v22);
  v30 = objc_msgSend_idsAccount(self, v25, v26, v27, v29, v28);
  v36 = objc_msgSend_accountType(v30, v31, v32, v33, v35, v34);
  if (v36)
  {
    if (v36 != 1)
    {
      if (IMOSLoggingEnabled())
      {
        v84 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v84, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v85 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v85, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      return;
    }

    v42 = objc_msgSend_profileID(self, v37, v38, v39, v41, v40);
    v47 = objc_msgSend_isEqualToString_(d, v43, v42, v44, v46, v45);
  }

  else
  {
    v53 = objc_msgSend_phoneNumber(self, v37, v38, v39, v41, v40);
    v58 = objc_msgSend__IDFromFZIDType_(v53, v54, 0, v55, v57, v56);
    v47 = objc_msgSend_isEqualToString_(d, v59, v58, v60, v62, v61);
  }

  if ((v47 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v86 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v92 = objc_msgSend_userID(self, v87, v88, v89, v91, v90);
        *buf = 138412546;
        dCopy3 = d;
        v371 = 2112;
        iDCopy2 = v92;
        _os_log_impl(&dword_23BC9F000, v86, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v93 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v99 = objc_msgSend_userID(self, v94, v95, v96, v98, v97);
        *buf = 138412546;
        dCopy3 = d;
        v371 = 2112;
        iDCopy2 = v99;
        _os_log_impl(&dword_23BC9F000, v93, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      objc_msgSend_userID(self, v100, v101, v102, v104, v103);
      MarcoNoteCheckpoint();
    }

    return;
  }

  v63 = objc_msgSend___imHexString(initated, v48, v49, v50, v52, v51);
  objc_msgSend__setCallType_forConferenceID_(self, v64, isEqualToString, v63, v66, v65);
  v364 = 0u;
  v365 = 0u;
  v362 = 0u;
  v363 = 0u;
  v71 = objc_msgSend_allValues(qword_2814228A0, v67, v68, v69, 0, v70);
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v362, v368, v73, 16);
  if (v78)
  {
    v80 = *v363;
LABEL_11:
    v81 = 0;
    while (1)
    {
      if (*v363 != v80)
      {
        objc_enumerationMutation(v71);
      }

      if (objc_msgSend_objectForKey_(*(*(&v362 + 1) + 8 * v81), v74, v63, v76, v79, v77))
      {
        break;
      }

      if (v78 == ++v81)
      {
        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v362, v368, v79, 16);
        if (v78)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (objc_msgSend__hasOutgoingInvitationInFlight(self, v74, v75, v76, v79, v77))
    {
      if (IMOSLoggingEnabled())
      {
        v83 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          dCopy3 = v63;
          v371 = 2112;
          iDCopy2 = initated;
          _os_log_impl(&dword_23BC9F000, v83, OS_LOG_TYPE_INFO, "Delaying initiate for conference ID: %@  (token: %@)", buf, 0x16u);
        }
      }

      v344 = MEMORY[0x277D85DD0];
      v345 = 3221225472;
      v346 = sub_23BCB0E2C;
      v347 = &unk_278B8F200;
      selfCopy = self;
      handlerCopy = handler;
      initatedCopy3 = initated;
      topicCopy2 = topic;
      dCopy4 = d;
      iDCopy = iD;
      displayIDCopy = displayID;
      nCopy = n;
      tokenCopy = token;
      typeCopy = type;
      blobCopy = blob;
      pCopy = p;
      infoCopy = info;
      dataCopy = data;
      im_dispatch_after();
      return;
    }
  }

  v105 = objc_msgSend_sharedInstance(MEMORY[0x277D18728], v74, v82, v76, v79, v77);
  objc_msgSend__setCurrentIDStatus_forDestination_service_(v105, v106, 1, displayID, v107, topic);
  v113 = sub_23BCB0E7C(info, v108, v112, v109, v110, v111);
  if (objc_msgSend_length(displayID, v114, v115, v116, v118, v117))
  {
    v124 = objc_msgSend__stripFZIDPrefix(displayID, v119, v120, v121, v123, v122);
  }

  else
  {
    v124 = objc_msgSend__stripFZIDPrefix(iD, v119, v120, v121, v123, v122);
  }

  v332 = v124;
  if ((v113 & 1) == 0)
  {
    MarcoBeginSession();
    MarcoSetInitiator();
  }

  v130 = objc_msgSend_idsAccount(self, v125, v126, v127, v129, v128);
  if (objc_msgSend_accountType(v130, v131, v132, v133, v135, v134) == 1)
  {
    v342 = 0u;
    v343 = 0u;
    v340 = 0u;
    v341 = 0u;
    v141 = objc_msgSend_aliases(self, v136, v137, v138, 0, v139);
    v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v142, &v340, v367, v143, 16);
    if (!v144)
    {
LABEL_52:
      if (IMOSLoggingEnabled())
      {
        v147 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v147, OS_LOG_TYPE_INFO, "Ignoring this invite, we don't have any validated aliases", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v148 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v148, OS_LOG_TYPE_INFO, "Ignoring this invite, we don't have any validated aliases", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
LABEL_59:
        MarcoNoteCheckpoint();
        return;
      }

      return;
    }

    v145 = *v341;
LABEL_46:
    v146 = 0;
    while (1)
    {
      if (*v341 != v145)
      {
        objc_enumerationMutation(v141);
      }

      if (objc_msgSend_validationStatusForAlias_(self, v136, *(*(&v340 + 1) + 8 * v146), v138, v140, v139) == 3)
      {
        break;
      }

      if (v144 == ++v146)
      {
        v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v136, &v340, v367, v140, 16);
        if (v144)
        {
          goto LABEL_46;
        }

        goto LABEL_52;
      }
    }
  }

  v149 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v136, v137, v138, v140, v139);
  if (objc_msgSend_isFastUserSwitched(v149, v150, v151, v152, v154, v153))
  {
    if (IMOSLoggingEnabled())
    {
      v159 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v159, OS_LOG_TYPE_INFO, "Ignoring this invite, we're fast user switched out", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v160 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v160, OS_LOG_TYPE_INFO, "Ignoring this invite, we're fast user switched out", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      goto LABEL_59;
    }
  }

  else
  {
    v338 = 0u;
    v339 = 0u;
    v336 = 0u;
    v337 = 0u;
    v161 = objc_msgSend_allValues(qword_2814228A0, v155, v156, v157, 0, v158);
    v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v162, &v336, v366, v163, 16);
    if (v167)
    {
      v169 = *v337;
LABEL_71:
      v170 = 0;
      while (1)
      {
        if (*v337 != v169)
        {
          objc_enumerationMutation(v161);
        }

        v171 = objc_msgSend_objectForKey_(*(*(&v336 + 1) + 8 * v170), v164, v63, v165, v168, v166);
        if (v171)
        {
          break;
        }

        if (v167 == ++v170)
        {
          v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v164, &v336, v366, v168, 16);
          if (v167)
          {
            goto LABEL_71;
          }

          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_77:
      v171 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v172 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy3 = v171;
        _os_log_impl(&dword_23BC9F000, v172, OS_LOG_TYPE_INFO, "Peers for this call %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v178 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
      {
        v179 = @"NO";
        if (v113)
        {
          v179 = @"YES";
        }

        *buf = 138412290;
        dCopy3 = v179;
        _os_log_impl(&dword_23BC9F000, v178, OS_LOG_TYPE_INFO, "Is reinitiate: %@", buf, 0xCu);
      }
    }

    if (v171)
    {
      v180 = v113;
    }

    else
    {
      v180 = 1;
    }

    if (v180)
    {
      v181 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v173, v174, v175, v177, v176);
      objc_msgSend_isScreenLocked(v181, v182, v183, v184, v186, v185);
      FTAWDSetSubmissionDate();
      FTAWDLogCallInvitationReceived();
      v187 = MEMORY[0x277CBEAC0];
      v192 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v188, @"%@", v189, v191, v190, v63);
      objc_msgSend_dictionaryWithObject_forKey_(v187, v193, v192, @"ConferenceID", v195, v194);
      PLLogRegisteredEvent();
      if (IMOSLoggingEnabled())
      {
        v196 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
        {
          v197 = @"video";
          *buf = 138412802;
          dCopy3 = v332;
          v371 = 2112;
          if (isEqualToString)
          {
            v197 = @"audio";
          }

          iDCopy2 = iD;
          v373 = 2112;
          dCopy = v197;
          _os_log_impl(&dword_23BC9F000, v196, OS_LOG_TYPE_INFO, "Received invite push from: %@ (%@)  type: %@", buf, 0x20u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        if (isEqualToString)
        {
          v198 = @"audio";
        }

        else
        {
          v198 = @"video";
        }

        iDCopy3 = iD;
        v331 = v198;
        v327 = v332;
        MarcoNoteCheckpoint();
      }

      if (IMOSLoggingEnabled())
      {
        v199 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy3 = v63;
          _os_log_impl(&dword_23BC9F000, v199, OS_LOG_TYPE_INFO, "Conference ID: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v327 = v63;
        MarcoNoteCheckpoint();
      }

      objc_msgSend__logLocalInfo(self, v200, v201, v202, v204, v203, v327, iDCopy3, v331);
      if (objc_msgSend_allowedAsChild(self, v205, v206, v207, v209, v208))
      {
        if (objc_msgSend__validRegistrationStateToAcceptCalls(self, v210, v211, v212, v214, v213))
        {
          if (objc_msgSend__isDeviceRegistered(self, v215, v216, v217, v219, v218))
          {
            v220 = objc_alloc(MEMORY[0x277D19290]);
            v221.n128_u64[0] = 10.0;
            v225 = objc_msgSend_initWithIdentifier_timeout_(v220, v222, @"IncomingFaceTimeCall", v223, v221, v224);
            v226 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v231 = v226;
            if (d)
            {
              CFDictionarySetValue(v226, *MEMORY[0x277D19570], d);
            }

            if (blob)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D194F0], blob);
            }

            if (n)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D194D0], n);
            }

            typeCopy2 = type;
            if (type)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D19510], type);
            }

            v233 = MEMORY[0x277D19508];
            if (p)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D19508], p);
            }

            v235 = sub_23BCB0F64(info, v227, v230, typeCopy2, v228, v229);
            if (v235)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D19568], v235);
            }

            v240 = sub_23BCB1050(info, v234, v238, v235, v236, v237);
            if (v240)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D194C8], v240);
            }

            v244 = MEMORY[0x277CCABB0];
            v245 = sub_23BCB0E7C(info, v239, v243, v240, v241, v242);
            v251 = objc_msgSend_numberWithBool_(v244, v246, v245, v247, v249, v248);
            if (v251)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D194D8], v251);
            }

            v255 = MEMORY[0x277CCABB0];
            v256 = sub_23BCB113C(info, v250, v254, v251, v252, v253);
            v262 = objc_msgSend_numberWithBool_(v255, v257, v256, v258, v260, v259);
            if (v262)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D194E8], v262);
            }

            v267 = sub_23BCB1224(info, v261, v265, v262, v263, v264);
            if (v267)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D19560], v267);
            }

            v271 = sub_23BCB1308(info, v266, v270, v267, v268, v269);
            if (v271)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277D19540], v271);
            }

            if (IMOSLoggingEnabled())
            {
              v272 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v272, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                dCopy3 = v231;
                _os_log_impl(&dword_23BC9F000, v272, OS_LOG_TYPE_INFO, "ConferenceDictionary: %@", buf, 0xCu);
              }
            }

            v273 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              dCopy3 = v231;
              _os_log_impl(&dword_23BC9F000, v273, OS_LOG_TYPE_DEFAULT, "Response dictionary: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                v328 = v231;
                MarcoLog();
              }

              if (IMShouldLog())
              {
                v328 = v231;
                IMLogString();
              }
            }

            v278 = MEMORY[0x277CBEB38];
            v279 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v274, 4, v275, v277, v276, v328);
            v285 = objc_msgSend_plistData(v231, v280, v281, v282, v284, v283);
            v290 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v286, 0, v287, v289, v288);
            v295 = objc_msgSend_dictionaryWithObjectsAndKeys_(v278, v291, v279, v292, v294, v293, *MEMORY[0x277D19578], v285, *MEMORY[0x277D194E0], v290, *MEMORY[0x277D19528], p, *v233, 0);
            objc_msgSend_addEntriesFromDictionary_(v295, v296, v231, v297, v299, v298);
            if (IMOSLoggingEnabled())
            {
              v300 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                dCopy3 = v295;
                _os_log_impl(&dword_23BC9F000, v300, OS_LOG_TYPE_INFO, "Generated Properties: %@", buf, 0xCu);
              }
            }

            v301 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              dCopy3 = v231;
              _os_log_impl(&dword_23BC9F000, v301, OS_LOG_TYPE_DEFAULT, "Properties dictionary: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                v329 = v231;
                MarcoLog();
              }

              if (IMShouldLog())
              {
                v329 = v231;
                IMLogString();
              }
            }

            if (isEqualToString)
            {
              v307 = objc_msgSend_broadcasterForACConferenceListeners(self, v302, v303, v304, v306, v305);
            }

            else
            {
              v307 = objc_msgSend_broadcasterForVCConferenceListeners(self, v302, v303, v304, v306, v305);
            }

            v320 = v307;
            v321 = objc_msgSend_accountID(self, v308, v309, v310, v312, v311, v329);
            v322 = sub_23BCA7F48(v332);
            objc_msgSend_account_conference_receivedInvitationFrom_properties_(v320, v323, v321, v63, v324, v322, v295);
            objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v325, iD, v332, v326, token, v63);

            return;
          }

          if (IMOSLoggingEnabled())
          {
            v318 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v318, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v319 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v319, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v319, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v316 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v316, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v316, OS_LOG_TYPE_INFO, "Ignoring invite due to reg agent state", buf, 2u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v317 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v317, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v317, OS_LOG_TYPE_INFO, "Ignoring this invite, we're not in a good state to recieve calls", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v314 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v314, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v314, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v315 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v315, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v315, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }

      MarcoEndSession();
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v313 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v313, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v313, OS_LOG_TYPE_INFO, "This is an invitation from ourselves. Ignoring it", buf, 2u);
      }
    }
  }
}

- (void)handler:(id)handler peerDisplay:(id)display topic:(id)topic myID:(id)d sessionInitated:(id)initated clientInfo:(id)info peerID:(id)iD peerPushToken:(id)self0
{
  v170 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v21, OS_LOG_TYPE_INFO, "started protected intitate", buf, 2u);
    }
  }

  v22 = objc_msgSend__stripFZIDPrefix(display, v16, v17, v18, v20, v19);
  isEqualToString = objc_msgSend_isEqualToString_(topic, v23, @"com.apple.private.ac", v24, v26, v25);
  v33 = objc_msgSend_idsAccount(self, v28, v29, v30, v32, v31);
  v39 = objc_msgSend_accountType(v33, v34, v35, v36, v38, v37);
  v45 = objc_msgSend___imHexString(initated, v40, v41, v42, v44, v43);
  objc_msgSend__setCallType_forConferenceID_(self, v46, isEqualToString, v45, v48, v47);
  if (v39)
  {
    if (v39 != 1)
    {
      if (IMOSLoggingEnabled())
      {
        v132 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v132, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v133 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v133, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      return;
    }

    v54 = objc_msgSend_profileID(self, v49, v50, v51, v53, v52);
    v59 = objc_msgSend_isEqualToString_(d, v55, v54, v56, v58, v57);
  }

  else
  {
    v65 = objc_msgSend_phoneNumber(self, v49, v50, v51, v53, v52);
    v70 = objc_msgSend__IDFromFZIDType_(v65, v66, 0, v67, v69, v68);
    v59 = objc_msgSend_isEqualToString_(d, v71, v70, v72, v74, v73);
  }

  if (v59)
  {
    if (objc_msgSend_allowedAsChild(self, v60, v61, v62, v64, v63))
    {
      if (objc_msgSend__validRegistrationStateToAcceptCalls(self, v75, v76, v77, v79, v78))
      {
        if (objc_msgSend__isDeviceRegistered(self, v80, v81, v82, v84, v83))
        {
          v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v92 = sub_23BCB0F64(info, v86, v90, v87, v88, v89);
          if (v92)
          {
            CFDictionarySetValue(v85, *MEMORY[0x277D19568], v92);
          }

          v97 = sub_23BCB1050(info, v91, v95, v92, v93, v94);
          if (v97)
          {
            CFDictionarySetValue(v85, *MEMORY[0x277D194C8], v97);
          }

          v101 = objc_msgSend_plistData(v85, v96, v97, v98, v100, v99);
          v107 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v102, v103, v104, v106, v105);
          v112 = v107;
          if (v101)
          {
            objc_msgSend_setObject_forKey_(v107, v108, v101, *MEMORY[0x277D194E0], v111, v110);
          }

          v113 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v108, 0, v109, v111, v110);
          objc_msgSend_setObject_forKey_(v112, v114, v113, *MEMORY[0x277D19528], v116, v115);
          objc_msgSend_addEntriesFromDictionary_(v112, v117, v85, v118, v120, v119);
          if (isEqualToString)
          {
            v126 = objc_msgSend_broadcasterForACConferenceListeners(self, v121, v122, v123, v125, v124);
          }

          else
          {
            v126 = objc_msgSend_broadcasterForVCConferenceListeners(self, v121, v122, v123, v125, v124);
          }

          v159 = v126;
          v160 = objc_msgSend_accountID(self, v127, v128, v129, v131, v130);
          v161 = sub_23BCA7F48(v22);
          objc_msgSend_account_conference_remoteUser_properties_(v159, v162, v160, v45, v163, v161, v112);
          objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v164, iD, v22, v165, token, v45);

          return;
        }

        if (IMOSLoggingEnabled())
        {
          v157 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v157, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v158 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v158, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v155 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v155, OS_LOG_TYPE_INFO, "Ignoring invite due to reg agent state", buf, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v156 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v156, OS_LOG_TYPE_INFO, "Ignoring this invite, we're not in a good state to recieve calls", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v153 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v153, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v154 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v154, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }
    }

    MarcoEndSession();
    return;
  }

  if (IMOSLoggingEnabled())
  {
    v134 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      v140 = objc_msgSend_userID(self, v135, v136, v137, v139, v138);
      *buf = 138412546;
      dCopy2 = d;
      v168 = 2112;
      v169 = v140;
      _os_log_impl(&dword_23BC9F000, v134, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v141 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
    {
      v147 = objc_msgSend_userID(self, v142, v143, v144, v146, v145);
      *buf = 138412546;
      dCopy2 = d;
      v168 = 2112;
      v169 = v147;
      _os_log_impl(&dword_23BC9F000, v141, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    objc_msgSend_userID(self, v148, v149, v150, v152, v151);
    MarcoNoteCheckpoint();
  }
}

- (void)handler:(id)handler sessionAccepted:(id)accepted topic:(id)topic peerID:(id)d peerCN:(id)n peerPushToken:(id)token peerNATType:(id)type peerBlob:(id)self0 peerNatIP:(id)self1 relayType:(id)self2 relayConnectionID:(id)self3 relayTransactionIDAlloc:(id)self4 relayTokenAllocReq:(id)self5 myRelayIP:(id)self6 myRelayPort:(id)self7 peerRelayIP:(id)self8 peerRelayPort:(id)self9 clientInfo:(id)info serviceData:(id)data
{
  v223 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      tokenCopy2 = accepted;
      v218 = 2112;
      dCopy2 = topic;
      _os_log_impl(&dword_23BC9F000, v29, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend__checkBadPushToken_(self, v25, token, v26, v28, v27))
  {
    v35 = objc_msgSend___imHexString(accepted, v30, v31, v32, v34, v33);
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v40 = objc_msgSend_allValues(qword_2814228A0, v36, v37, v38, 0, v39);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v212, v222, v42, 16);
    if (v47)
    {
      v49 = *v213;
LABEL_7:
      v50 = 0;
      while (1)
      {
        if (*v213 != v49)
        {
          objc_enumerationMutation(v40);
        }

        if (objc_msgSend_objectForKey_(*(*(&v212 + 1) + 8 * v50), v43, v35, v45, v48, v46))
        {
          break;
        }

        if (v47 == ++v50)
        {
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v212, v222, v48, 16);
          if (v47)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      if (objc_msgSend__hasOutgoingInvitationInFlight(self, v43, v44, v45, v48, v46))
      {
        if (IMOSLoggingEnabled())
        {
          v52 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            tokenCopy2 = v35;
            v218 = 2112;
            dCopy2 = accepted;
            _os_log_impl(&dword_23BC9F000, v52, OS_LOG_TYPE_INFO, "Delaying accept for conference ID: %@  (token: %@)", buf, 0x16u);
          }
        }

        im_dispatch_after();
        return;
      }
    }

    if ((sub_23BCB0E7C(info, v43, v48, v51, v45, v46) & 1) == 0 && (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v53, d, v35, v55, v54) & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v204 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 138412546;
      tokenCopy2 = d;
      v218 = 2112;
      dCopy2 = v35;
      v201 = "Ignoring this accept, no peers with peerID %@ in conferenceID %@";
      v202 = v204;
      v203 = 22;
LABEL_94:
      _os_log_impl(&dword_23BC9F000, v202, OS_LOG_TYPE_INFO, v201, buf, v203);
      return;
    }

    v56 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v53, d, v35, v55, v54);
    v60 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v57, d, v35, v59, v58);
    isEqualToString = objc_msgSend_isEqualToString_(topic, v61, @"com.apple.private.ac", v62, v64, v63);
    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = @"video";
        *buf = 138412802;
        tokenCopy2 = v56;
        v218 = 2112;
        if (isEqualToString)
        {
          v66 = @"audio";
        }

        dCopy2 = d;
        v220 = 2112;
        dCopy5 = v66;
        _os_log_impl(&dword_23BC9F000, v65, OS_LOG_TYPE_INFO, "Received accept push from: %@ (%@)   %@", buf, 0x20u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      if (isEqualToString)
      {
        v71 = @"audio";
      }

      else
      {
        v71 = @"video";
      }

      dCopy3 = d;
      v208 = v71;
      v205 = v56;
      MarcoNoteCheckpoint();
    }

    if (objc_msgSend_containsObject_(v60, v67, token, v68, v70, v69, v205, dCopy3, v208))
    {
      v77 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v72, v73, v74, v76, v75);
      objc_msgSend_isScreenLocked(v77, v78, v79, v80, v82, v81);
      FTAWDLogCallAcceptReceived();
      v83 = MEMORY[0x277CBEAC0];
      v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v84, @"%@", v85, v87, v86, v35);
      objc_msgSend_dictionaryWithObject_forKey_(v83, v89, v88, @"ConferenceID", v91, v90);
      PLLogRegisteredEvent();
      v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v97 = v92;
      if (blob)
      {
        CFDictionarySetValue(v92, *MEMORY[0x277D194F0], blob);
      }

      if (n)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D194D0], n);
      }

      typeCopy = type;
      if (type)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D19510], type);
      }

      v100 = sub_23BCB0F64(info, v93, v96, typeCopy, v94, v95);
      if (v100)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D19568], v100);
      }

      v104 = MEMORY[0x277CCABB0];
      v105 = sub_23BCB0E7C(info, v99, v103, v100, v101, v102);
      v111 = objc_msgSend_numberWithBool_(v104, v106, v105, v107, v109, v108);
      if (v111)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D194D8], v111);
      }

      v115 = MEMORY[0x277CCABB0];
      v116 = sub_23BCB113C(info, v110, v114, v111, v112, v113);
      v122 = objc_msgSend_numberWithBool_(v115, v117, v116, v118, v120, v119);
      if (v122)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D194E8], v122);
      }

      v127 = sub_23BCB1224(info, v121, v125, v122, v123, v124);
      if (v127)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D19560], v127);
      }

      v131 = sub_23BCB1308(info, v126, v130, v127, v128, v129);
      if (v131)
      {
        CFDictionarySetValue(v97, *MEMORY[0x277D19540], v131);
      }

      if (IMOSLoggingEnabled())
      {
        v136 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          tokenCopy2 = v97;
          _os_log_impl(&dword_23BC9F000, v136, OS_LOG_TYPE_INFO, "Response Dictionary : %@", buf, 0xCu);
        }
      }

      if (relayType)
      {
        if (IMOSLoggingEnabled())
        {
          v137 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            tokenCopy2 = relayType;
            _os_log_impl(&dword_23BC9F000, v137, OS_LOG_TYPE_INFO, "Accept also had inline relay request for relay type: %@", buf, 0xCu);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          relayTypeCopy2 = relayType;
          MarcoNoteCheckpoint();
        }

        v138 = objc_alloc_init(MEMORY[0x277CBEB38]);
        CFDictionarySetValue(v138, *MEMORY[0x277D18FE8], relayType);
        if (iD)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18F48], iD);
        }

        if (alloc)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18FE0], alloc);
        }

        if (req)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18FD8], req);
        }

        if (d)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18F58], d);
        }

        if (relayIP)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18F70], relayIP);
        }

        if (relayPort)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18F88], relayPort);
        }

        if (iP)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18FB8], iP);
        }

        if (port)
        {
          CFDictionarySetValue(v138, *MEMORY[0x277D18FD0], port);
        }

        if (v138)
        {
          CFDictionarySetValue(v97, *MEMORY[0x277D194F8], v138);
        }
      }

      v139 = MEMORY[0x277CBEAC0];
      v140 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v132, 0, v133, v135, v134, relayTypeCopy2);
      v145 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v141, 4, v142, v144, v143);
      v151 = objc_msgSend_plistData(v97, v146, v147, v148, v150, v149);
      v156 = objc_msgSend_dictionaryWithObjectsAndKeys_(v139, v152, v140, v153, v155, v154, *MEMORY[0x277D19550], v145, *MEMORY[0x277D19578], v151, *MEMORY[0x277D19558], 0);
      if (IMOSLoggingEnabled())
      {
        v162 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          tokenCopy2 = v156;
          _os_log_impl(&dword_23BC9F000, v162, OS_LOG_TYPE_INFO, "Generated Properties: %@", buf, 0xCu);
        }
      }

      v163 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
      if (isEqualToString)
      {
        v163 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
      }

      v164 = *(&self->super.super.super.isa + *v163);
      v165 = objc_msgSend_accountID(self, v157, v158, v159, v161, v160);
      v171 = objc_msgSend___imHexString(accepted, v166, v167, v168, v170, v169);
      v172 = sub_23BCA7F48(v56);
      objc_msgSend_account_conference_receivedResponseToInvitationFrom_properties_(v164, v173, v165, v171, v174, v172, v156);
      v175 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v181 = sub_23BCB0F64(info, v176, v180, v177, v178, v179);
      if (v181)
      {
        CFDictionarySetValue(v175, *MEMORY[0x277D19568], v181);
      }

      v182 = sub_23BCB2858(d, token);
      v188 = objc_msgSend___imHexString(accepted, v183, v184, v185, v187, v186);
      objc_msgSend__cancelOtherInvitesForPeerID_skipPairs_properties_conference_reason_(self, v189, d, v182, v190, v175, v188, &unk_284E75848);
      v196 = objc_msgSend___imHexString(accepted, v191, v192, v193, v195, v194);
      objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v197, d, 0, v198, token, v196);

      return;
    }

    if (IMOSLoggingEnabled())
    {
      v199 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        tokenCopy2 = token;
        v218 = 2112;
        dCopy2 = v60;
        v220 = 2112;
        dCopy5 = d;
        _os_log_impl(&dword_23BC9F000, v199, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v200 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        tokenCopy2 = token;
        v218 = 2112;
        dCopy2 = v60;
        v220 = 2112;
        dCopy5 = d;
        v201 = "Response from token (%@) not in this conference set: %@ (%@)";
        v202 = v200;
        v203 = 32;
        goto LABEL_94;
      }
    }
  }
}

- (void)handler:(id)handler sessionRejected:(id)rejected topic:(id)topic peerID:(id)d peerPushToken:(id)token reason:(id)reason clientInfo:(id)info serviceData:(id)self0
{
  v152 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy5 = rejected;
      v147 = 2112;
      dCopy3 = topic;
      _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v20 = objc_msgSend___imHexString(rejected, v14, v15, v16, v18, v17);
  isEqualToString = objc_msgSend_isEqualToString_(topic, v21, @"com.apple.private.ac", v22, v24, v23);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v29 = objc_msgSend_allValues(qword_2814228A0, v25, v26, v27, 0, v28);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v141, v151, v31, 16);
  if (v36)
  {
    v38 = *v142;
LABEL_6:
    v39 = 0;
    while (1)
    {
      if (*v142 != v38)
      {
        objc_enumerationMutation(v29);
      }

      if (objc_msgSend_objectForKey_(*(*(&v141 + 1) + 8 * v39), v32, v20, v34, v37, v35))
      {
        break;
      }

      if (v36 == ++v39)
      {
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v141, v151, v37, 16);
        if (v36)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (objc_msgSend__hasOutgoingInvitationInFlight(self, v32, v33, v34, v37, v35))
    {
      im_dispatch_after();
      return;
    }
  }

  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v32, d, v20, v37, v35))
  {
    v43 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v40, d, v20, v42, v41);
    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy5 = v43;
        v147 = 2112;
        dCopy3 = d;
        _os_log_impl(&dword_23BC9F000, v44, OS_LOG_TYPE_INFO, "Received reject push from: %@  (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v136 = v43;
      dCopy2 = d;
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy5 = v43;
        v147 = 2112;
        dCopy3 = d;
        _os_log_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_INFO, "Received reject push from: %@  (%@)", buf, 0x16u);
      }
    }

    v49 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v45, d, v20, v47, v46, v136, dCopy2);
    if (objc_msgSend_containsObject_(v49, v50, token, v51, v53, v52))
    {
      v58 = MEMORY[0x277CBEAC0];
      v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v54, @"%@", v55, v57, v56, v20);
      objc_msgSend_dictionaryWithObject_forKey_(v58, v60, v59, @"ConferenceID", v62, v61);
      PLLogRegisteredEvent();
      v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v69 = sub_23BCB0F64(info, v64, v68, v65, v66, v67);
      if (v69)
      {
        CFDictionarySetValue(v63, *MEMORY[0x277D19568], v69);
      }

      if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy5 = v63;
          _os_log_impl(&dword_23BC9F000, v74, OS_LOG_TYPE_INFO, "Response Dictionary : %@", buf, 0xCu);
        }
      }

      v75 = MEMORY[0x277CBEAC0];
      v76 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v70, 4, v71, v73, v72);
      v82 = objc_msgSend_plistData(v63, v77, v78, v79, v81, v80);
      v83 = *MEMORY[0x277D19550];
      v88 = objc_msgSend_dictionaryWithObjectsAndKeys_(v75, v84, reason, v85, v87, v86, *MEMORY[0x277D19550], v76, *MEMORY[0x277D19578], v82, *MEMORY[0x277D19558], 0);
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          dCopy5 = reason;
          v147 = 2112;
          dCopy3 = v43;
          v149 = 2112;
          dCopy4 = token;
          _os_log_impl(&dword_23BC9F000, v94, OS_LOG_TYPE_INFO, "Reject response: %@   from peer: %@   token: %@", buf, 0x20u);
        }
      }

      v95 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
      if (isEqualToString)
      {
        v95 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
      }

      v96 = *(&self->super.super.super.isa + *v95);
      v97 = objc_msgSend_accountID(self, v89, v90, v91, v93, v92);
      v103 = objc_msgSend___imHexString(rejected, v98, v99, v100, v102, v101);
      v104 = sub_23BCA7F48(v43);
      objc_msgSend_account_conference_receivedResponseToInvitationFrom_properties_(v96, v105, v97, v103, v106, v104, v88);
      v107 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v114 = sub_23BCB0F64(info, v108, v112, v109, v110, v111);
      if (v114)
      {
        CFDictionarySetValue(v107, *MEMORY[0x277D19568], v114);
      }

      v118 = objc_msgSend_objectForKey_(v88, v113, v83, v115, v117, v116);
      v124 = objc_msgSend_intValue(v118, v119, v120, v121, v123, v122);
      if (v124 > 0xB || ((1 << v124) & 0x830) == 0)
      {
        v125 = sub_23BCB2858(d, token);
        v131 = objc_msgSend___imHexString(rejected, v126, v127, v128, v130, v129);
        objc_msgSend__cancelOtherInvitesForPeerID_skipPairs_properties_conference_reason_(self, v132, d, v125, v133, v107, v131, &unk_284E75860);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v135 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          dCopy5 = token;
          v147 = 2112;
          dCopy3 = v49;
          v149 = 2112;
          dCopy4 = d;
          _os_log_impl(&dword_23BC9F000, v135, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v134 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy5 = d;
      v147 = 2112;
      dCopy3 = v20;
      _os_log_impl(&dword_23BC9F000, v134, OS_LOG_TYPE_INFO, "Ignoring this reject, no peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)handler sessionCancelled:(id)cancelled topic:(id)topic peerID:(id)d reason:(id)reason clientInfo:(id)info serviceData:(id)data
{
  v98 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy3 = cancelled;
      v96 = 2112;
      dCopy = topic;
      _os_log_impl(&dword_23BC9F000, v20, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v21 = objc_msgSend___imHexString(cancelled, v15, v16, v17, v19, v18);
  isEqualToString = objc_msgSend_isEqualToString_(topic, v22, @"com.apple.private.ac", v23, v25, v24);
  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v27, d, v21, v29, v28))
  {
    v34 = MEMORY[0x277CBEAC0];
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%@", v31, v33, v32, v21);
    objc_msgSend_dictionaryWithObject_forKey_(v34, v36, v35, @"ConferenceID", v38, v37);
    PLLogRegisteredEvent();
    v42 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v39, d, v21, v41, v40);
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy3 = v42;
        v96 = 2112;
        dCopy = d;
        _os_log_impl(&dword_23BC9F000, v43, OS_LOG_TYPE_INFO, "Received cancel push from: %@ (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v92 = v42;
      dCopy2 = d;
      MarcoNoteCheckpoint();
    }

    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v51 = sub_23BCB0F64(info, v45, v49, v46, v47, v48);
    if (v51)
    {
      CFDictionarySetValue(v44, *MEMORY[0x277D19568], v51);
    }

    v55 = MEMORY[0x277CCABB0];
    v56 = objc_msgSend_intValue(reason, v50, v51, v52, v54, v53, v92, dCopy2);
    v61 = objc_msgSend_numberWithInt_(v55, v57, v56, v58, v60, v59);
    if (v61)
    {
      CFDictionarySetValue(v44, *MEMORY[0x277D19550], v61);
    }

    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy3 = v44;
        _os_log_impl(&dword_23BC9F000, v67, OS_LOG_TYPE_INFO, "Response Dictionary : %@", buf, 0xCu);
      }
    }

    v68 = MEMORY[0x277CBEAC0];
    v69 = objc_msgSend_plistData(v44, v62, v63, v64, v66, v65);
    v78 = objc_msgSend_dictionaryWithObjectsAndKeys_(v68, v70, v69, v71, v73, v72, *MEMORY[0x277D19558], 0);
    if (isEqualToString)
    {
      v80 = objc_msgSend_broadcasterForACConferenceListeners(self, v74, v75, v76, v79, v77);
    }

    else
    {
      v80 = objc_msgSend_broadcasterForVCConferenceListeners(self, v74, v75, v76, v79, v77);
    }

    v87 = v80;
    v88 = objc_msgSend_accountID(self, v81, v82, v83, v85, v84);
    v89 = sub_23BCA7F48(v42);
    objc_msgSend_account_conference_receivedCancelInvitationFrom_properties_(v87, v90, v88, v21, v91, v89, v78);
  }

  else if (IMOSLoggingEnabled())
  {
    v86 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy3 = d;
      v96 = 2112;
      dCopy = v21;
      _os_log_impl(&dword_23BC9F000, v86, OS_LOG_TYPE_INFO, "Ignoring this cancel, no peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)handler incomingMessage:(id)message topic:(id)topic peerID:(id)d reason:(id)reason clientInfo:(id)info serviceData:(id)data
{
  v81 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v80 = message;
      *&v80[8] = 2112;
      *&v80[10] = topic;
      _os_log_impl(&dword_23BC9F000, v20, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v21 = objc_msgSend___imHexString(message, v15, v16, v17, v19, v18);
  v27 = sub_23BCB0F64(info, v22, v26, v23, v24, v25);
  isEqualToString = objc_msgSend_isEqualToString_(topic, v28, @"com.apple.private.ac", v29, v31, v30);
  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v33, d, v21, v35, v34))
  {
    v39 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v36, d, v21, v38, v37);
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v80 = v39;
        *&v80[8] = 2112;
        *&v80[10] = d;
        _os_log_impl(&dword_23BC9F000, v40, OS_LOG_TYPE_INFO, "Received generic message push from: %@ (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v77 = v39;
      dCopy = d;
      MarcoNoteCheckpoint();
    }

    v45 = objc_msgSend_objectForKey_(info, v41, @"info", v42, v44, v43, v77, dCopy);
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = objc_msgSend_intValue(reason, v46, v47, v48, v50, v49);
        *buf = 67109378;
        *v80 = v52;
        *&v80[4] = 2112;
        *&v80[6] = v45;
        _os_log_impl(&dword_23BC9F000, v51, OS_LOG_TYPE_INFO, "Incoming message type: %d   info: %@", buf, 0x12u);
      }
    }

    if (isEqualToString)
    {
      v53 = objc_msgSend_broadcasterForACConferenceListeners(self, v46, v47, v48, v50, v49);
    }

    else
    {
      v53 = objc_msgSend_broadcasterForVCConferenceListeners(self, v46, v47, v48, v50, v49);
    }

    v60 = v53;
    v61 = objc_msgSend_accountID(self, v54, v55, v56, v58, v57);
    v67 = objc_msgSend_intValue(reason, v62, v63, v64, v66, v65);
    v68 = sub_23BCA7F48(v39);
    v74 = objc_msgSend_unsignedIntValue(v27, v69, v70, v71, v73, v72);
    objc_msgSend_account_conference_receivedAVMessage_from_sessionID_userInfo_(v60, v75, v61, v21, v76, v67, v68, v74, v45);
  }

  else if (IMOSLoggingEnabled())
  {
    v59 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v80 = d;
      *&v80[8] = 2112;
      *&v80[10] = v21;
      _os_log_impl(&dword_23BC9F000, v59, OS_LOG_TYPE_INFO, "Ignoring this message, no peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)handler relayInitiated:(id)initiated topic:(id)topic peerID:(id)d peerPushToken:(id)token relayType:(id)type relayConnectionID:(id)value relayTransactionIDAlloc:(id)self0 relayTokenAllocReq:(id)self1 relayCandidateID:(id)self2 myRelayIP:(id)self3 myRelayPort:(id)self4 peerRelayIP:(id)self5 peerRelayPort:(id)self6 clientInfo:(id)self7 serviceData:(id)self8
{
  v117 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy4 = initiated;
      v113 = 2112;
      dCopy = topic;
      _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend__checkBadPushToken_(self, v24, token, v25, v27, v26))
  {
    v34 = objc_msgSend___imHexString(initiated, v29, v30, v31, v33, v32);
    isEqualToString = objc_msgSend_isEqualToString_(topic, v35, @"com.apple.private.ac", v36, v38, v37);
    if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v40, d, v34, v42, v41))
    {
      v46 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v43, d, v34, v45, v44);
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          dCopy4 = v46;
          v113 = 2112;
          dCopy = d;
          _os_log_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_INFO, "Received relay initate push from: %@ (%@)", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v109 = v46;
        dCopy2 = d;
        MarcoNoteCheckpoint();
      }

      v51 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v48, d, v34, v50, v49, v109, dCopy2);
      if (objc_msgSend_containsObject_(v51, v52, token, v53, v55, v54))
      {
        objc_msgSend_containsObject_(self->_initiatedConferences, v56, v34, v57, v59, v58);
        v65 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v60, v61, v62, v64, v63);
        objc_msgSend_isScreenLocked(v65, v66, v67, v68, v70, v69);
        FTAWDLogCallRelayInitiateReceived();
        v71 = MEMORY[0x277CBEAC0];
        v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"%@", v73, v75, v74, v34);
        objc_msgSend_dictionaryWithObject_forKey_(v71, v77, v76, @"ConferenceID", v79, v78);
        PLLogRegisteredEvent();
        v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v85 = v80;
        if (type)
        {
          CFDictionarySetValue(v80, *MEMORY[0x277D18FE8], type);
        }

        if (value)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18F48], value);
        }

        if (alloc)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18FE0], alloc);
        }

        if (req)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18FD8], req);
        }

        if (d)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18F58], d);
        }

        if (iP)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18F70], iP);
        }

        if (relayPort)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18F88], relayPort);
        }

        if (p)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18FB8], p);
        }

        if (port)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18FD0], port);
        }

        iDCopy = iD;
        if (iD)
        {
          CFDictionarySetValue(v85, *MEMORY[0x277D18F98], iD);
        }

        v87 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
        if (isEqualToString)
        {
          v87 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
        }

        v88 = *(&self->super.super.super.isa + *v87);
        v89 = objc_msgSend_accountID(self, v81, iDCopy, v82, v84, v83);
        v95 = objc_msgSend___imHexString(initiated, v90, v91, v92, v94, v93);
        v96 = sub_23BCA7F48(v46);
        objc_msgSend_account_relay_handleInitate_fromPerson_(v88, v97, v89, v95, v98, v85, v96);
        v104 = objc_msgSend___imHexString(initiated, v99, v100, v101, v103, v102);
        objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v105, d, 0, v106, token, v104);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v108 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            dCopy4 = token;
            v113 = 2112;
            dCopy = v51;
            v115 = 2112;
            dCopy3 = d;
            _os_log_impl(&dword_23BC9F000, v108, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v107 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy4 = d;
        v113 = 2112;
        dCopy = v34;
        _os_log_impl(&dword_23BC9F000, v107, OS_LOG_TYPE_INFO, "Ignoring this relay initiate, no peers with peerID %@ in conferenceID %@", buf, 0x16u);
      }
    }
  }
}

- (void)handler:(id)handler relayUpdated:(id)updated topic:(id)topic peerID:(id)d peerPushToken:(id)token relayType:(id)type relayConnectionID:(id)value relayTransactionIDChannelBind:(id)self0 relayTokenChannelBind:(id)self1 relayCandidateID:(id)self2 relayBlob:(id)self3 peerRelayNATIP:(id)self4 peerRelayNATPort:(id)self5 clientInfo:(id)self6 serviceData:(id)self7
{
  v116 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy4 = updated;
      v112 = 2112;
      dCopy = topic;
      _os_log_impl(&dword_23BC9F000, v27, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend__checkBadPushToken_(self, v23, token, v24, v26, v25))
  {
    v33 = objc_msgSend___imHexString(updated, v28, v29, v30, v32, v31);
    if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v34, d, v33, v36, v35))
    {
      v40 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v37, d, v33, v39, v38);
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          dCopy4 = v40;
          v112 = 2112;
          dCopy = d;
          _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_INFO, "Received relay update push from: %@ (%@)", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v108 = v40;
        dCopy2 = d;
        MarcoNoteCheckpoint();
      }

      v45 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v42, d, v33, v44, v43, v108, dCopy2);
      if (objc_msgSend_containsObject_(v45, v46, token, v47, v49, v48))
      {
        objc_msgSend_containsObject_(self->_initiatedConferences, v50, v33, v51, v53, v52);
        isEqualToString = objc_msgSend_isEqualToString_(topic, v54, @"com.apple.private.ac", v55, v57, v56);
        v64 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v59, v60, v61, v63, v62);
        objc_msgSend_isScreenLocked(v64, v65, v66, v67, v69, v68);
        FTAWDLogCallRelayUpdatedReceived();
        v70 = MEMORY[0x277CBEAC0];
        v75 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"%@", v72, v74, v73, v33);
        objc_msgSend_dictionaryWithObject_forKey_(v70, v76, v75, @"ConferenceID", v78, v77);
        PLLogRegisteredEvent();
        v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v84 = v79;
        if (type)
        {
          CFDictionarySetValue(v79, *MEMORY[0x277D18FE8], type);
        }

        if (value)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18F48], value);
        }

        if (bind)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18FE0], bind);
        }

        if (channelBind)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18FD8], channelBind);
        }

        if (d)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18F58], d);
        }

        if (p)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18F78], p);
        }

        if (port)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18F80], port);
        }

        if (blob)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18F90], blob);
        }

        iDCopy = iD;
        if (iD)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D18F98], iD);
        }

        v86 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
        if (isEqualToString)
        {
          v86 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
        }

        v87 = *(&self->super.super.super.isa + *v86);
        v88 = objc_msgSend_accountID(self, v80, iDCopy, v81, v83, v82);
        v94 = objc_msgSend___imHexString(updated, v89, v90, v91, v93, v92);
        v95 = sub_23BCA7F48(v40);
        objc_msgSend_account_relay_handleUpdate_fromPerson_(v87, v96, v88, v94, v97, v84, v95);
        v103 = objc_msgSend___imHexString(updated, v98, v99, v100, v102, v101);
        objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v104, d, 0, v105, token, v103);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v107 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            dCopy4 = token;
            v112 = 2112;
            dCopy = v45;
            v114 = 2112;
            dCopy3 = d;
            _os_log_impl(&dword_23BC9F000, v107, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v106 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy4 = d;
        v112 = 2112;
        dCopy = v33;
        _os_log_impl(&dword_23BC9F000, v106, OS_LOG_TYPE_INFO, "Ignoring this relay update, no peers with peerID %@ in conferenceID %@", buf, 0x16u);
      }
    }
  }
}

- (void)handler:(id)handler relayCancelled:(id)cancelled topic:(id)topic peerID:(id)d relayType:(id)type relayTokenAllocReq:(id)req relayConnectionID:(id)value relayTransactionIDAlloc:(id)self0 relayCandidateID:(id)self1 myRelayIP:(id)self2 myRelayPort:(id)self3 peerRelayIP:(id)self4 peerRelayPort:(id)self5 reason:(id)self6 clientInfo:(id)self7 serviceData:(id)self8
{
  v79 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy3 = cancelled;
      v77 = 2112;
      dCopy = topic;
      _os_log_impl(&dword_23BC9F000, v29, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v30 = objc_msgSend___imHexString(cancelled, v24, v25, v26, v28, v27);
  isEqualToString = objc_msgSend_isEqualToString_(topic, v31, @"com.apple.private.ac", v32, v34, v33);
  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v36, d, v30, v38, v37))
  {
    v43 = MEMORY[0x277CBEAC0];
    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%@", v40, v42, v41, v30);
    objc_msgSend_dictionaryWithObject_forKey_(v43, v45, v44, @"ConferenceID", v47, v46);
    PLLogRegisteredEvent();
    v51 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v48, d, v30, v50, v49);
    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy3 = v51;
        v77 = 2112;
        dCopy = d;
        _os_log_impl(&dword_23BC9F000, v52, OS_LOG_TYPE_INFO, "Received relay cancel push from: %@ (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v73 = v51;
      dCopy2 = d;
      MarcoNoteCheckpoint();
    }

    v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v58 = v53;
    if (type)
    {
      CFDictionarySetValue(v53, *MEMORY[0x277D18FE8], type);
    }

    if (req)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18FD8], req);
    }

    if (value)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18F48], value);
    }

    if (alloc)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18FE0], alloc);
    }

    if (iD)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18F98], iD);
    }

    if (p)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18FB8], p);
    }

    if (port)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18FD0], port);
    }

    if (iP)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18F70], iP);
    }

    relayPortCopy = relayPort;
    if (relayPort)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18F88], relayPort);
    }

    if (d)
    {
      CFDictionarySetValue(v58, *MEMORY[0x277D18F58], d);
    }

    v60 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
    if (isEqualToString)
    {
      v60 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
    }

    v61 = *(&self->super.super.super.isa + *v60);
    v62 = objc_msgSend_accountID(self, v54, relayPortCopy, v55, v57, v56, v73, dCopy2);
    v68 = objc_msgSend___imHexString(cancelled, v63, v64, v65, v67, v66);
    v69 = sub_23BCA7F48(v51);
    objc_msgSend_account_relay_handleCancel_fromPerson_(v61, v70, v62, v68, v71, v58, v69);
  }

  else if (IMOSLoggingEnabled())
  {
    v72 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      dCopy3 = d;
      v77 = 2112;
      dCopy = v30;
      _os_log_impl(&dword_23BC9F000, v72, OS_LOG_TYPE_INFO, "Ignoring this relay cancel, no peers with peerID %@ in conferenceID %@", buf, 0x16u);
    }
  }
}

- (unint64_t)queue:(id)queue optionsForInvocation:(id)invocation
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_selector(invocation, a2, queue, invocation, v5, v4);
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = NSStringFromSelector(v8);
    _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_DEFAULT, "Checking queue options for: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v28 = NSStringFromSelector(v8);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v28 = NSStringFromSelector(v8);
      IMLogString();
    }
  }

  if (objc_msgSend_hasQueuedItems(qword_281422890, v10, v11, v12, v14, v13, v28))
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_DEFAULT, "This should queue normally", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    return 1;
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v17, OS_LOG_TYPE_DEFAULT, "This should just happen now!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (self->_broadcasterACInvocationQueue == queue)
    {
      v23 = objc_msgSend_broadcasterForACConferenceListeners(self, v18, v19, v20, v22, v21);
    }

    else
    {
      v23 = objc_msgSend_broadcasterForVCConferenceListeners(self, v18, v19, v20, v22, v21);
    }

    objc_msgSend_setTarget_(queue, v24, v23, v25, v27, v26);
    return 16;
  }
}

- (BOOL)queue:(id)queue shouldInvoke:(id)invoke
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_selector(invoke, a2, queue, invoke, v5, v4);
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = NSStringFromSelector(v8);
    _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_DEFAULT, "Checking to see if I can invoke: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v61 = NSStringFromSelector(v8);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v61 = NSStringFromSelector(v8);
      IMLogString();
    }
  }

  hasQueuedItems = objc_msgSend_hasQueuedItems(qword_281422890, v10, v11, v12, v14, v13, v61);
  if (hasQueuedItems)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_currentMessage(qword_281422890, v17, v18, v19, v21, v20);
      v28 = objc_msgSend_queuedMessages(qword_281422890, v23, v24, v25, v27, v26);
      *buf = 138412546;
      v63 = v22;
      v64 = 2112;
      v65 = v28;
      _os_log_impl(&dword_23BC9F000, v16, OS_LOG_TYPE_DEFAULT, "Can't send yet, current delivery: %@ queued items: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        objc_msgSend_currentMessage(qword_281422890, v29, v30, v31, v33, v32);
        objc_msgSend_queuedMessages(qword_281422890, v34, v35, v36, v38, v37);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        objc_msgSend_currentMessage(qword_281422890, v39, v40, v41, v43, v42);
        objc_msgSend_queuedMessages(qword_281422890, v44, v45, v46, v48, v47);
        IMLogString();
      }
    }
  }

  else
  {
    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v49, OS_LOG_TYPE_DEFAULT, "Looks good to go, i'll send it along", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (self->_broadcasterACInvocationQueue == queue)
    {
      v55 = objc_msgSend_broadcasterForACConferenceListeners(self, v50, v51, v52, v54, v53);
    }

    else
    {
      v55 = objc_msgSend_broadcasterForVCConferenceListeners(self, v50, v51, v52, v54, v53);
    }

    objc_msgSend_setTarget_(queue, v56, v55, v57, v59, v58);
  }

  return hasQueuedItems ^ 1;
}

- (id)loggingName
{
  if (self->_loggingCategory)
  {
    return self->_loggingCategory;
  }

  else
  {
    return @"FaceTime";
  }
}

- (double)_messageTimeoutTimeForMessage:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  objc_msgSend_timeout(message, a2, message, v3, v5, v4);
  v7 = v6;
  v8 = IMGetCachedDomainIntForKey();
  if (v8 < 1)
  {
    return v7;
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_INFO, "Using override timeout for message delivery of %ld seconds", &v11, 0xCu);
    }
  }

  return v8;
}

@end