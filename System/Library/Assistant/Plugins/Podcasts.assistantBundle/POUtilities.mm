@interface POUtilities
+ (BOOL)errorIsApplicationRequiresPreflight:(id)preflight;
+ (BOOL)errorIsNoNetwork:(id)network;
+ (BOOL)isPodcastsNowPlaying;
+ (_MRSystemAppPlaybackQueue)createPlaybackQueueFromRequestIdentifiers:(id)identifiers startPlaying:(BOOL)playing assetInfo:(id)info isSiriRequest:(BOOL)request requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account;
+ (id)commandStatusForRemoteStatus:(unsigned int)status error:(id)error isRemoteStorePlayback:(BOOL)playback;
+ (id)identifierFromDomainObject:(id)object;
+ (id)typeFromDomainObject:(id)object;
+ (void)_resolveWithDestination:(id)destination hashedRouteIdentifiers:(id)identifiers decodedRouteIdentifiers:(id)routeIdentifiers originatingOutputDeviceUID:(id)d localPlaybackPermitted:(BOOL)permitted audioRoutingInfo:(id)info completion:(id)completion;
+ (void)modifyContextForAirplay:(id)airplay andPlayLocally:(id)locally completion:(id)completion;
+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)identifier assetInfo:(id)info hashedRouteUIDs:(id)ds decodedRouteUIDs:(id)iDs originatingOutputDeviceUID:(id)d startPlaying:(BOOL)playing requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)self0 context:(id)self1 allowsFallback:(BOOL)self2 completion:(id)self3;
+ (void)setPlaybackRate:(float)rate failureErrorCode:(int64_t)code completion:(id)completion;
@end

@implementation POUtilities

+ (id)identifierFromDomainObject:(id)object
{
  v5 = objc_msgSend_identifier(object, a2, object, v3, v4);
  v10 = objc_msgSend_lastPathComponent(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)typeFromDomainObject:(id)object
{
  v5 = objc_msgSend_identifier(object, a2, object, v3, v4);
  v10 = objc_msgSend_host(v5, v6, v7, v8, v9);

  return v10;
}

+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)identifier assetInfo:(id)info hashedRouteUIDs:(id)ds decodedRouteUIDs:(id)iDs originatingOutputDeviceUID:(id)d startPlaying:(BOOL)playing requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)self0 context:(id)self1 allowsFallback:(BOOL)self2 completion:(id)self3
{
  playingCopy = playing;
  v124 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  idCopy = id;
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  if (objc_msgSend_length(identifierCopy, v24, v25, v26, v27))
  {
    v93 = completionCopy;
    v96 = accountCopy;
    v97 = idCopy;
    v32 = objc_msgSend_count(dsCopy, v28, v29, v30, v31);
    v37 = iDsCopy;
    if (v32 || objc_msgSend_count(iDsCopy, v33, v34, v35, v36) && (v32 = objc_msgSend_length(dCopy, v33, v83, v84, v85)) != 0 || (objc_msgSend_sharedInstance(PODataSource, v33, v83, v84, v85), v86 = objc_claimAutoreleasedReturnValue(), isPodcastsInstalled = objc_msgSend_isPodcastsInstalled(v86, v87, v88, v89, v90), v86, (isPodcastsInstalled & 1) != 0))
    {
      POLogInitIfNeeded(v32, v33);
      if (POLogContextCommand)
      {
        v38 = POLogContextCommand;
      }

      else
      {
        v38 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v38;
        objc_msgSend_componentsJoinedByString_(dsCopy, v42, @", ", v43, v44);
        v46 = v45 = dsCopy;
        v50 = objc_msgSend_componentsJoinedByString_(iDsCopy, v47, @", ", v48, v49);
        *buf = 138413058;
        v117 = identifierCopy;
        v118 = 2112;
        v119 = v46;
        v120 = 2112;
        v121 = v50;
        v122 = 2112;
        v123 = dCopy;
        v37 = iDsCopy;
        _os_log_impl(&dword_23352D000, v41, OS_LOG_TYPE_DEFAULT, "Will be setting playbackQueue using MediaRemote to %@ with routeUIDs %@ decodedRouteUIDs %@ originatingOutputDeviceUID %@", buf, 0x2Au);

        dsCopy = v45;
      }

      v115 = identifierCopy;
      v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, &v115, 1, v40);
      isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount = objc_msgSend_createPlaybackQueueFromRequestIdentifiers_startPlaying_assetInfo_isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_(self, v52, v51, playingCopy, infoCopy, contextCopy != 0, idCopy, v96);

      v54 = [MTMPCAssistantGenericPlaybackQueue alloc];
      v57 = dsCopy;
      v58 = identifierCopy;
      v59 = v37;
      v60 = contextCopy;
      v61 = objc_msgSend_initWithContextID_playbackQueueRef_(v54, v55, contextCopy, isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount, v56);
      v66 = objc_msgSend_podcastsApplicationDestination(MEMORY[0x277D27850], v62, v63, v64, v65);
      objc_msgSend_setSingleGroup_(v66, v67, 1, v68, v69);
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = sub_233530CCC;
      v100[3] = &unk_2789DE3C0;
      selfCopy = self;
      v101 = v66;
      v102 = v57;
      v103 = v59;
      v70 = dCopy;
      v104 = dCopy;
      completionCopy = v93;
      v111 = v93;
      v105 = v61;
      fallbackCopy = fallback;
      v106 = v58;
      v114 = playingCopy;
      v107 = infoCopy;
      v108 = v60;
      v109 = v97;
      v110 = v96;
      v71 = v61;
      contextCopy = v60;
      v37 = v59;
      identifierCopy = v58;
      dsCopy = v57;
      v72 = v71;
      v73 = v66;
      MPAssistantWatchGetCurrentAudioRoutingInfo(v100);

      accountCopy = v96;
      idCopy = v97;
    }

    else
    {
      v92 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v33, @"POUtilitiesErrorDomain", 103, 0);
      completionCopy = v93;
      (v93)[2](v93, 2, v92);

      v70 = dCopy;
      accountCopy = v96;
    }
  }

  else
  {
    POLogInitIfNeeded(0, v28);
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
      sub_23353813C(v74, v75, v76, v77, v78, v79, v80, v81);
    }

    v82 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v75, @"POUtilitiesErrorDomain", 102, 0);
    (*(completionCopy + 2))(completionCopy, 2, v82);

    v37 = iDsCopy;
    v70 = dCopy;
  }
}

+ (void)_resolveWithDestination:(id)destination hashedRouteIdentifiers:(id)identifiers decodedRouteIdentifiers:(id)routeIdentifiers originatingOutputDeviceUID:(id)d localPlaybackPermitted:(BOOL)permitted audioRoutingInfo:(id)info completion:(id)completion
{
  permittedCopy = permitted;
  destinationCopy = destination;
  identifiersCopy = identifiers;
  routeIdentifiersCopy = routeIdentifiers;
  dCopy = d;
  completionCopy = completion;
  if (objc_msgSend_length(dCopy, v18, v19, v20, v21))
  {
    objc_msgSend_setOriginatingOutputDeviceUID_(destinationCopy, v22, dCopy, v24, v25);
  }

  if (objc_msgSend_count(routeIdentifiersCopy, v22, v23, v24, v25))
  {
    objc_msgSend_resolveWithQueue_routeIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(destinationCopy, v26, 0, routeIdentifiersCopy, permittedCopy, *&info, completionCopy);
  }

  else
  {
    objc_msgSend_resolveWithQueue_hashedRouteIdentifiers_localPlaybackPermitted_audioRoutingInfo_completion_(destinationCopy, v26, 0, identifiersCopy, permittedCopy, *&info, completionCopy);
  }
}

+ (void)modifyContextForAirplay:(id)airplay andPlayLocally:(id)locally completion:(id)completion
{
  locallyCopy = locally;
  completionCopy = completion;
  v9 = qword_27DE0EBF8;
  airplayCopy = airplay;
  if (v9 != -1)
  {
    sub_23353825C();
  }

  v11 = qword_27DE0EBF0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2335317BC;
  v16[3] = &unk_2789DE410;
  v17 = locallyCopy;
  v18 = completionCopy;
  v12 = locallyCopy;
  v13 = completionCopy;
  objc_msgSend_modifySystemMusicContextForDestination_completion_(v11, v14, airplayCopy, v16, v15);
}

+ (_MRSystemAppPlaybackQueue)createPlaybackQueueFromRequestIdentifiers:(id)identifiers startPlaying:(BOOL)playing assetInfo:(id)info isSiriRequest:(BOOL)request requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account
{
  requestCopy = request;
  idCopy = id;
  accountCopy = account;
  infoCopy = info;
  identifiersCopy = identifiers;
  v16 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  v20 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v17, 2, v18, v19);
  v23 = v20;
  if (idCopy)
  {
    objc_msgSend_setObject_forKey_(v20, v21, idCopy, @"requesterUserId", v22);
  }

  if (accountCopy)
  {
    objc_msgSend_setObject_forKey_(v23, v21, accountCopy, @"sharedUserId", v22);
  }

  MRSystemAppPlaybackQueueSetUserInfo();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  if (requestCopy)
  {
    MRSystemAppPlaybackQueueSetFeatureName();
  }

  return v16;
}

+ (id)commandStatusForRemoteStatus:(unsigned int)status error:(id)error isRemoteStorePlayback:(BOOL)playback
{
  playbackCopy = playback;
  errorCopy = error;
  v12 = objc_msgSend_domain(errorCopy, v8, v9, v10, v11);
  if (objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x277D277F8], v14, v15))
  {
    v20 = objc_msgSend_code(errorCopy, v16, v17, v18, v19);
  }

  else
  {
    v21 = objc_msgSend_domain(errorCopy, v16, v17, v18, v19);
    if (objc_msgSend_isEqualToString_(v21, v22, @"POUtilitiesMRSendCommandErrorDomain", v23, v24))
    {
      v20 = objc_msgSend_code(errorCopy, v25, v26, v27, v28);
    }

    else
    {
      v20 = 0;
    }
  }

  v33 = objc_msgSend_domain(errorCopy, v29, v30, v31, v32);
  if (objc_msgSend_isEqualToString_(v33, v34, *MEMORY[0x277D277F0], v35, v36))
  {
    v41 = objc_msgSend_code(errorCopy, v37, v38, v39, v40);
  }

  else
  {
    v41 = 0;
  }

  v46 = objc_msgSend_domain(errorCopy, v42, v43, v44, v45);
  if (objc_msgSend_isEqualToString_(v46, v47, @"POUtilitiesErrorDomain", v48, v49))
  {
    v54 = objc_msgSend_code(errorCopy, v50, v51, v52, v53);
  }

  else
  {
    v54 = 0;
  }

  if (v20)
  {
    v59 = objc_alloc(MEMORY[0x277D47208]);
    v63 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v60, @"MediaRemote error code %ld", v61, v62, v20);
    v67 = objc_msgSend_initWithReason_(v59, v64, v63, v65, v66);

    goto LABEL_52;
  }

  if (status > 9)
  {
    if (status == 20)
    {
      v68 = MEMORY[0x277D48688];
      goto LABEL_28;
    }

    if (status == 10)
    {
      v68 = MEMORY[0x277D485D0];
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (!status)
  {
    v69 = 0;
    goto LABEL_29;
  }

  if (status != 1)
  {
LABEL_23:
    if (playbackCopy)
    {
      v69 = *MEMORY[0x277D48680];
    }

    else
    {
      v69 = -1;
    }

    goto LABEL_29;
  }

  if (playbackCopy)
  {
    v68 = MEMORY[0x277D48658];
LABEL_28:
    v69 = *v68;
    goto LABEL_29;
  }

  v79 = objc_msgSend_sharedInstance(PODataSource, v55, v56, v57, v58);
  v84 = objc_msgSend_podcastCollections(v79, v80, v81, v82, v83);
  v89 = objc_msgSend_count(v84, v85, v86, v87, v88);
  v90 = MEMORY[0x277D485E0];
  if (!v89)
  {
    v90 = MEMORY[0x277D485F8];
  }

  v69 = *v90;

LABEL_29:
  if (v54 > 103)
  {
    if (v54 == 104)
    {
      v70 = MEMORY[0x277D485A8];
    }

    else
    {
      if (v54 != 105)
      {
        goto LABEL_39;
      }

      v70 = MEMORY[0x277D485A0];
    }
  }

  else if (v54 == 101)
  {
    v70 = MEMORY[0x277D48628];
  }

  else
  {
    if (v54 != 103)
    {
      goto LABEL_39;
    }

    v70 = MEMORY[0x277D485D8];
  }

  v69 = *v70;
LABEL_39:
  if (v69)
  {
    if (v41 != 1)
    {
      goto LABEL_47;
    }

    v71 = MEMORY[0x277D485A0];
  }

  else if (v41 == 6)
  {
    v71 = MEMORY[0x277D48668];
  }

  else
  {
    if (v41 != 7)
    {
LABEL_49:
      v72 = MEMORY[0x277D47218];
      goto LABEL_50;
    }

    v71 = MEMORY[0x277D48670];
  }

  v69 = *v71;
  if (!*v71)
  {
    goto LABEL_49;
  }

LABEL_47:
  v72 = MEMORY[0x277D47208];
  if (v69 == -1)
  {
LABEL_50:
    v77 = objc_alloc_init(v72);
    goto LABEL_51;
  }

  v73 = objc_alloc(MEMORY[0x277D47208]);
  v77 = objc_msgSend_initWithErrorCode_(v73, v74, v69, v75, v76);
LABEL_51:
  v67 = v77;
LABEL_52:

  return v67;
}

+ (BOOL)isPodcastsNowPlaying
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_23353201C;
  v14 = sub_23353202C;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v8 = MEMORY[0x277D85DD0];
  v9 = v2;
  MRMediaRemoteGetNowPlayingClient();

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = objc_msgSend_isEqual_(v11[5], v4, @"com.apple.podcasts", v5, v6, v8, 3221225472, sub_233532034, &unk_2789DE438);

  _Block_object_dispose(&v10, 8);
  return v3;
}

+ (void)setPlaybackRate:(float)rate failureErrorCode:(int64_t)code completion:(id)completion
{
  v23[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v22[0] = *MEMORY[0x277D27D60];
  *&v7 = rate;
  v12 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v7);
  v22[1] = *MEMORY[0x277D27D10];
  v23[0] = v12;
  v23[1] = MEMORY[0x277CBEC38];
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v23, v22, 2);

  POLogInitIfNeeded(v15, v16);
  if (POLogContextCommand)
  {
    v17 = POLogContextCommand;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    rateCopy = rate;
    _os_log_impl(&dword_23352D000, v17, OS_LOG_TYPE_INFO, "Will be setting currentPlaybackRate using MediaRemote to %f", buf, 0xCu);
  }

  v18 = dispatch_get_global_queue(0, 0);
  v19 = completionCopy;
  MRMediaRemoteSendCommandWithReply();
}

+ (BOOL)errorIsNoNetwork:(id)network
{
  networkCopy = network;
  v8 = objc_msgSend_domain(networkCopy, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"MTSetPlaybackQueueUtilErrorDomain", v10, v11))
  {
    v16 = objc_msgSend_code(networkCopy, v12, v13, v14, v15) == -433001;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)errorIsApplicationRequiresPreflight:(id)preflight
{
  preflightCopy = preflight;
  v8 = objc_msgSend_domain(preflightCopy, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277D277F8], v10, v11))
  {
    v16 = objc_msgSend_code(preflightCopy, v12, v13, v14, v15) == 15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end