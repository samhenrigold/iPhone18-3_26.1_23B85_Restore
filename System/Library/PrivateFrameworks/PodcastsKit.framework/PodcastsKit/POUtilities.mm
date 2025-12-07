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
  identifier = [object identifier];
  lastPathComponent = [identifier lastPathComponent];

  return lastPathComponent;
}

+ (id)typeFromDomainObject:(id)object
{
  identifier = [object identifier];
  host = [identifier host];

  return host;
}

+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)identifier assetInfo:(id)info hashedRouteUIDs:(id)ds decodedRouteUIDs:(id)iDs originatingOutputDeviceUID:(id)d startPlaying:(BOOL)playing requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)self0 context:(id)self1 allowsFallback:(BOOL)self2 completion:(id)self3
{
  playingCopy = playing;
  v88 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  idCopy = id;
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    v57 = completionCopy;
    v60 = accountCopy;
    v61 = idCopy;
    v25 = [dsCopy count];
    v27 = iDsCopy;
    if (v25 || [iDsCopy count] && (v25 = objc_msgSend(dCopy, "length")) != 0 || (+[PODataSource sharedInstance](PODataSource, "sharedInstance"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isPodcastsInstalled"), v54, (v55 & 1) != 0))
    {
      POLogInitIfNeeded(v25, v26);
      if (POLogContextCommand)
      {
        v28 = POLogContextCommand;
      }

      else
      {
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        [dsCopy componentsJoinedByString:{@", "}];
        v31 = v30 = dsCopy;
        v32 = [iDsCopy componentsJoinedByString:{@", "}];
        *buf = 138413058;
        v81 = identifierCopy;
        v82 = 2112;
        v83 = v31;
        v84 = 2112;
        v85 = v32;
        v86 = 2112;
        v87 = dCopy;
        v27 = iDsCopy;
        _os_log_impl(&dword_25E9F0000, v29, OS_LOG_TYPE_DEFAULT, "Will be setting playbackQueue using MediaRemote to %@ with routeUIDs %@ decodedRouteUIDs %@ originatingOutputDeviceUID %@", buf, 0x2Au);

        dsCopy = v30;
      }

      v79 = identifierCopy;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
      v34 = [self createPlaybackQueueFromRequestIdentifiers:v33 startPlaying:playingCopy assetInfo:infoCopy isSiriRequest:contextCopy != 0 requesterSharedUserId:idCopy sharedUserIdFromPlayableITunesAccount:v60];

      v35 = dsCopy;
      v36 = identifierCopy;
      v37 = v27;
      v38 = contextCopy;
      v39 = [[MTMPCAssistantGenericPlaybackQueue alloc] initWithContextID:contextCopy playbackQueueRef:v34];
      podcastsApplicationDestination = [MEMORY[0x277D27850] podcastsApplicationDestination];
      [podcastsApplicationDestination setSingleGroup:1];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke;
      v64[3] = &unk_279A44AB0;
      selfCopy = self;
      v65 = podcastsApplicationDestination;
      v66 = v35;
      v67 = v37;
      v41 = dCopy;
      v68 = dCopy;
      completionCopy = v57;
      v75 = v57;
      v69 = v39;
      fallbackCopy = fallback;
      v70 = v36;
      v78 = playingCopy;
      v71 = infoCopy;
      v72 = v38;
      v73 = v61;
      v74 = v60;
      v42 = v39;
      contextCopy = v38;
      v27 = v37;
      identifierCopy = v36;
      dsCopy = v35;
      v43 = v42;
      v44 = podcastsApplicationDestination;
      MPAssistantWatchGetCurrentAudioRoutingInfo(v64);

      accountCopy = v60;
      idCopy = v61;
    }

    else
    {
      v56 = [MEMORY[0x277CCA9B8] errorWithDomain:@"POUtilitiesErrorDomain" code:103 userInfo:0];
      completionCopy = v57;
      (v57)[2](v57, 2, v56);

      v41 = dCopy;
      accountCopy = v60;
    }
  }

  else
  {
    POLogInitIfNeeded(0, v24);
    if (POLogContextCommand)
    {
      v45 = POLogContextCommand;
    }

    else
    {
      v45 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [POUtilities performPodcastsPlaybackRequestWithIdentifier:v45 assetInfo:v46 hashedRouteUIDs:v47 decodedRouteUIDs:v48 originatingOutputDeviceUID:v49 startPlaying:v50 requesterSharedUserId:v51 sharedUserIdFromPlayableITunesAccount:v52 context:? allowsFallback:? completion:?];
    }

    v53 = [MEMORY[0x277CCA9B8] errorWithDomain:@"POUtilitiesErrorDomain" code:102 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 2, v53);

    v27 = iDsCopy;
    v41 = dCopy;
  }
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 120);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v21 = *(a1 + 120);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_2;
  v22[3] = &unk_279A44A88;
  v9 = *(a1 + 112);
  v10 = *(a1 + 64);
  v27 = *(a1 + 128);
  *&v11 = v9;
  *(&v11 + 1) = *v4;
  v20 = v11;
  v12 = *(a1 + 72);
  v28 = *(a1 + 129);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  v23 = v16;
  v24 = v15;
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v26 = v20;
  v25 = v19;
  [v21 _resolveWithDestination:v5 hashedRouteIdentifiers:v6 decodedRouteIdentifiers:v7 originatingOutputDeviceUID:v8 localPlaybackPermitted:1 audioRoutingInfo:a2 completion:v22];
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = *MEMORY[0x277D27CD8];
  v26[0] = &unk_2870B6B90;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v5 = objc_alloc_init(MEMORY[0x277D27828]);
  v6 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23;
  v16[3] = &unk_279A44A60;
  v7 = *(a1 + 80);
  v23 = *(a1 + 96);
  v17 = v3;
  v8 = *(a1 + 88);
  v21 = v7;
  v22 = v8;
  v9 = *(a1 + 40);
  v24 = *(a1 + 97);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v18 = v14;
  v19 = v13;
  v20 = *(a1 + 72);
  v15 = v3;
  [v5 sendPlaybackQueueWithResult:v6 toDestination:v15 withOptions:v4 completion:v16];
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = [v3 returnStatuses];
    v7 = [v6 firstObject];
    v8 = [v7 unsignedIntValue];

    v9 = [v5 error];
    POLogInitIfNeeded(v9, v10);
    v11 = MEMORY[0x277D86220];
    if (POLogContextCommand)
    {
      v12 = POLogContextCommand;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v15 = v12;
      v16 = [v9 localizedDescription];
      *buf = 138412290;
      *v65 = v16;
      _os_log_impl(&dword_25E9F0000, v15, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Error: %@", buf, 0xCu);
    }

    POLogInitIfNeeded(v13, v14);
    if (POLogContextCommand)
    {
      v17 = POLogContextCommand;
    }

    else
    {
      v17 = v11;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v65 = v8;
      _os_log_impl(&dword_25E9F0000, v17, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Status: %d", buf, 8u);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = [v9 underlyingErrors];
    v19 = [(MTMPCAssistantGenericPlaybackQueue *)v18 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v61;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [POUtilities errorIsNoNetwork:*(*(&v60 + 1) + 8 * i)];
          if (v23)
          {
            POLogInitIfNeeded(v23, v24);
            if (POLogContextCommand)
            {
              v34 = POLogContextCommand;
            }

            else
            {
              v34 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_1(v34, v35, v36, v37, v38, v39, v40, v41);
            }

            v42 = *(*(a1 + 80) + 16);
            goto LABEL_63;
          }
        }

        v20 = [(MTMPCAssistantGenericPlaybackQueue *)v18 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v25 = v8;
    v26 = MEMORY[0x277D86220];
    if (*(a1 + 96) == 1)
    {
      v27 = [*(a1 + 32) outputDeviceUIDs];
      if ([v27 count])
      {

        if ((v25 - 1) <= 1)
        {
          POLogInitIfNeeded(v28, v29);
          if (POLogContextCommand)
          {
            v30 = POLogContextCommand;
          }

          else
          {
            v30 = v26;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v65 = v25;
            _os_log_impl(&dword_25E9F0000, v30, OS_LOG_TYPE_DEFAULT, "Falling back to airplay after status: %d", buf, 8u);
          }

          v31 = *(a1 + 88);
          v68 = *(a1 + 40);
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
          v33 = [v31 createPlaybackQueueFromRequestIdentifiers:v32 startPlaying:*(a1 + 97) assetInfo:*(a1 + 48) isSiriRequest:*(a1 + 56) != 0 requesterSharedUserId:*(a1 + 64) sharedUserIdFromPlayableITunesAccount:*(a1 + 72)];

          v18 = [[MTMPCAssistantGenericPlaybackQueue alloc] initWithContextID:*(a1 + 56) playbackQueueRef:v33];
          [*(a1 + 88) modifyContextForAirplay:*(a1 + 32) andPlayLocally:v18 completion:*(a1 + 80)];
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

    v51 = [v9 domain];
    if ([v51 isEqualToString:*MEMORY[0x277D277F8]])
    {
      v52 = [v9 code];
    }

    else
    {
      v52 = 0;
    }

    v53 = [v9 domain];
    if ([v53 isEqualToString:*MEMORY[0x277D277F0]])
    {
      v54 = [v9 code];
    }

    else
    {
      v54 = 0;
    }

    POLogInitIfNeeded(v55, v56);
    if (POLogContextCommand)
    {
      v57 = POLogContextCommand;
    }

    else
    {
      v57 = v26;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v65 = v25;
      *&v65[4] = 2048;
      *&v65[6] = v52;
      v66 = 2048;
      v67 = v54;
      _os_log_impl(&dword_25E9F0000, v57, OS_LOG_TYPE_DEFAULT, "Completed sendPlaybackQueueWithResult with MR status: %d, remote error: %ld, assistant error: %ld", buf, 0x1Cu);
    }

    if (v9 && (MPCAssistantErrorIsInformational() & 1) == 0)
    {
      v18 = v9;
      POLogInitIfNeeded(v18, v58);
      if (POLogContextCommand)
      {
        v59 = POLogContextCommand;
      }

      else
      {
        v59 = v26;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_2(v18, v59);
      }
    }

    else
    {
      v18 = 0;
    }

    v42 = *(*(a1 + 80) + 16);
LABEL_63:
    v42();
LABEL_64:

    goto LABEL_65;
  }

  POLogInitIfNeeded(0, v4);
  if (POLogContextCommand)
  {
    v43 = POLogContextCommand;
  }

  else
  {
    v43 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_3(v43, v44, v45, v46, v47, v48, v49, v50);
  }

  (*(*(a1 + 80) + 16))();
LABEL_66:
}

+ (void)_resolveWithDestination:(id)destination hashedRouteIdentifiers:(id)identifiers decodedRouteIdentifiers:(id)routeIdentifiers originatingOutputDeviceUID:(id)d localPlaybackPermitted:(BOOL)permitted audioRoutingInfo:(id)info completion:(id)completion
{
  permittedCopy = permitted;
  destinationCopy = destination;
  identifiersCopy = identifiers;
  routeIdentifiersCopy = routeIdentifiers;
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length])
  {
    [destinationCopy setOriginatingOutputDeviceUID:dCopy];
  }

  if ([routeIdentifiersCopy count])
  {
    [destinationCopy resolveWithQueue:0 routeIdentifiers:routeIdentifiersCopy localPlaybackPermitted:permittedCopy audioRoutingInfo:*&info completion:completionCopy];
  }

  else
  {
    [destinationCopy resolveWithQueue:0 hashedRouteIdentifiers:identifiersCopy localPlaybackPermitted:permittedCopy audioRoutingInfo:*&info completion:completionCopy];
  }
}

+ (void)modifyContextForAirplay:(id)airplay andPlayLocally:(id)locally completion:(id)completion
{
  locallyCopy = locally;
  completionCopy = completion;
  v9 = modifyContextForAirplay_andPlayLocally_completion__onceToken;
  airplayCopy = airplay;
  if (v9 != -1)
  {
    +[POUtilities modifyContextForAirplay:andPlayLocally:completion:];
  }

  v11 = modifyContextForAirplay_andPlayLocally_completion__assistantContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_2;
  v14[3] = &unk_279A44B00;
  v15 = locallyCopy;
  v16 = completionCopy;
  v12 = locallyCopy;
  v13 = completionCopy;
  [v11 modifySystemMusicContextForDestination:airplayCopy completion:v14];
}

uint64_t __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke()
{
  modifyContextForAirplay_andPlayLocally_completion__assistantContext = objc_alloc_init(MEMORY[0x277D27848]);

  return MEMORY[0x2821F96F8]();
}

void __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_2(uint64_t a1, void *a2)
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
    v7 = [v6 initWithAppBundleID:*MEMORY[0x277D3DCE0] playerID:@"Podcasts" origin:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_3;
    v9[3] = &unk_279A44AD8;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v5 sendPlaybackQueue:v8 toDestination:v7 completion:v9];
  }
}

void __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 firstObject];
  v7 = [v6 unsignedIntValue];

  v8 = [v5 domain];
  if ([v8 isEqualToString:*MEMORY[0x277D277F8]])
  {
    v9 = [v5 code];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 domain];
  if ([v10 isEqualToString:*MEMORY[0x277D277F0]])
  {
    v11 = [v5 code];
  }

  else
  {
    v11 = 0;
  }

  POLogInitIfNeeded(v12, v13);
  if (POLogContextCommand)
  {
    v14 = POLogContextCommand;
  }

  else
  {
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109632;
    v16[1] = v7;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_25E9F0000, v14, OS_LOG_TYPE_DEFAULT, "Completed Airplay fallback with MR status: %d, remote error: %ld, assistant error: %ld", v16, 0x1Cu);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v7, v5);
  }
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

  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v18 = v17;
  if (idCopy)
  {
    [v17 setObject:idCopy forKey:@"requesterUserId"];
  }

  if (accountCopy)
  {
    [v18 setObject:accountCopy forKey:@"sharedUserId"];
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
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D277F8]])
  {
    code = [errorCopy code];
  }

  else
  {
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"POUtilitiesMRSendCommandErrorDomain"])
    {
      code = [errorCopy code];
    }

    else
    {
      code = 0;
    }
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:*MEMORY[0x277D277F0]])
  {
    code2 = [errorCopy code];
  }

  else
  {
    code2 = 0;
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqualToString:@"POUtilitiesErrorDomain"])
  {
    code3 = [errorCopy code];
  }

  else
  {
    code3 = 0;
  }

  if (code)
  {
    v15 = objc_alloc(MEMORY[0x277D47208]);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"MediaRemote error code %ld", code];
    v17 = [v15 initWithReason:v16];

    goto LABEL_52;
  }

  if (status > 9)
  {
    if (status == 20)
    {
      v18 = MEMORY[0x277D48688];
      goto LABEL_28;
    }

    if (status == 10)
    {
      v18 = MEMORY[0x277D485D0];
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (!status)
  {
    v19 = 0;
    goto LABEL_29;
  }

  if (status != 1)
  {
LABEL_23:
    if (playbackCopy)
    {
      v19 = *MEMORY[0x277D48680];
    }

    else
    {
      v19 = -1;
    }

    goto LABEL_29;
  }

  if (playbackCopy)
  {
    v18 = MEMORY[0x277D48658];
LABEL_28:
    v19 = *v18;
    goto LABEL_29;
  }

  v25 = +[PODataSource sharedInstance];
  podcastCollections = [v25 podcastCollections];
  v27 = [podcastCollections count];
  v28 = MEMORY[0x277D485E0];
  if (!v27)
  {
    v28 = MEMORY[0x277D485F8];
  }

  v19 = *v28;

LABEL_29:
  if (code3 > 103)
  {
    if (code3 == 104)
    {
      v20 = MEMORY[0x277D485A8];
    }

    else
    {
      if (code3 != 105)
      {
        goto LABEL_39;
      }

      v20 = MEMORY[0x277D485A0];
    }
  }

  else if (code3 == 101)
  {
    v20 = MEMORY[0x277D48628];
  }

  else
  {
    if (code3 != 103)
    {
      goto LABEL_39;
    }

    v20 = MEMORY[0x277D485D8];
  }

  v19 = *v20;
LABEL_39:
  if (v19)
  {
    if (code2 != 1)
    {
      goto LABEL_47;
    }

    v21 = MEMORY[0x277D485A0];
  }

  else if (code2 == 6)
  {
    v21 = MEMORY[0x277D48668];
  }

  else
  {
    if (code2 != 7)
    {
LABEL_49:
      v22 = MEMORY[0x277D47218];
      goto LABEL_50;
    }

    v21 = MEMORY[0x277D48670];
  }

  v19 = *v21;
  if (!*v21)
  {
    goto LABEL_49;
  }

LABEL_47:
  v22 = MEMORY[0x277D47208];
  if (v19 == -1)
  {
LABEL_50:
    v23 = objc_alloc_init(v22);
    goto LABEL_51;
  }

  v23 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:v19];
LABEL_51:
  v17 = v23;
LABEL_52:

  return v17;
}

+ (BOOL)isPodcastsNowPlaying
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v5 = MEMORY[0x277D85DD0];
  v6 = v2;
  MRMediaRemoteGetNowPlayingClient();

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = [v8[5] isEqual:{@"com.apple.podcasts", v5, 3221225472, __35__POUtilities_isPodcastsNowPlaying__block_invoke, &unk_279A44B28}];

  _Block_object_dispose(&v7, 8);
  return v3;
}

void __35__POUtilities_isPodcastsNowPlaying__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
  v3 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if ([v9 count])
  {
    v4 = [v9 lastObject];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v3;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)setPlaybackRate:(float)rate failureErrorCode:(int64_t)code completion:(id)completion
{
  v18[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v17[0] = *MEMORY[0x277D27D60];
  *&v7 = rate;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v17[1] = *MEMORY[0x277D27D10];
  v18[0] = v8;
  v18[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  POLogInitIfNeeded(v10, v11);
  if (POLogContextCommand)
  {
    v12 = POLogContextCommand;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    rateCopy = rate;
    _os_log_impl(&dword_25E9F0000, v12, OS_LOG_TYPE_INFO, "Will be setting currentPlaybackRate using MediaRemote to %f", buf, 0xCu);
  }

  v13 = dispatch_get_global_queue(0, 0);
  v14 = completionCopy;
  MRMediaRemoteSendCommandWithReply();
}

void __59__POUtilities_setPlaybackRate_failureErrorCode_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v4)
  {

LABEL_26:
    v7 = objc_alloc_init(MEMORY[0x277D47218]);
    goto LABEL_27;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v21;
  v9 = MEMORY[0x277D86220];
  *&v5 = 67109120;
  v19 = v5;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v21 != v8)
    {
      objc_enumerationMutation(v3);
    }

    v11 = [*(*(&v20 + 1) + 8 * v10) integerValue];
    v13 = v11;
    if (v11)
    {
      v14 = v11 == 3;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      POLogInitIfNeeded(v11, v12);
      if (POLogContextCommand)
      {
        v15 = POLogContextCommand;
      }

      else
      {
        v15 = v9;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v19;
        v25 = v13;
        _os_log_error_impl(&dword_25E9F0000, v15, OS_LOG_TYPE_ERROR, "MediaRemote command failed with status %u", buf, 8u);
      }

      v16 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:*(a1 + 40)];

      v7 = v16;
    }

    if (v13 != 3 && v13 != 0)
    {
      break;
    }

    if (v6 == ++v10)
    {
      v6 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_27:
  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v7);
  }
}

+ (BOOL)errorIsNoNetwork:(id)network
{
  networkCopy = network;
  domain = [networkCopy domain];
  if ([domain isEqualToString:@"MTSetPlaybackQueueUtilErrorDomain"])
  {
    v5 = [networkCopy code] == -433001;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)errorIsApplicationRequiresPreflight:(id)preflight
{
  preflightCopy = preflight;
  domain = [preflightCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D277F8]])
  {
    v5 = [preflightCopy code] == 15;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25E9F0000, a2, OS_LOG_TYPE_ERROR, "sendPlaybackQueueWithResult encountered error %@", &v2, 0xCu);
}

@end