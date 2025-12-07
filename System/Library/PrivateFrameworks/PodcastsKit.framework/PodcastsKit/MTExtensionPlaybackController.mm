@interface MTExtensionPlaybackController
+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info;
+ (void)_setPlaybackQueueWithIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account playerID:(id)d mrCompletion:(id)completion;
+ (void)setQueueWithPlaybackRequestIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account completion:(id)completion;
@end

@implementation MTExtensionPlaybackController

+ (void)setQueueWithPlaybackRequestIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account completion:(id)completion
{
  playbackCopy = playback;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __166__MTExtensionPlaybackController_setQueueWithPlaybackRequestIdentifier_startPlayback_assetInfo_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_completion___block_invoke;
  v16[3] = &unk_279A44F40;
  v17 = completionCopy;
  v15 = completionCopy;
  [self setQueueWithPlaybackRequestIdentifier:identifier startPlayback:playbackCopy assetInfo:info requesterSharedUserId:id sharedUserIdFromPlayableITunesAccount:account mrCompletion:v16];
}

uint64_t __166__MTExtensionPlaybackController_setQueueWithPlaybackRequestIdentifier_startPlayback_assetInfo_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_completion___block_invoke(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (a3 | a2) == 0);
  }

  return result;
}

+ (void)_setPlaybackQueueWithIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account playerID:(id)d mrCompletion:(id)completion
{
  playbackCopy = playback;
  v34[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  idCopy = id;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    [self playbackQueueForIdentifier:identifierCopy startPlayback:playbackCopy assetInfo:infoCopy];
    v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v22 = v21;
    if (idCopy)
    {
      [v21 setObject:idCopy forKey:@"requesterUserId"];
    }

    v30 = idCopy;
    v23 = infoCopy;
    if (accountCopy)
    {
      [v22 setObject:accountCopy forKey:@"sharedUserId"];
    }

    MRSystemAppPlaybackQueueSetUserInfo();
    v24 = dispatch_get_global_queue(0, 0);
    MRMediaRemoteGetLocalOrigin();
    v25 = MRNowPlayingClientCreate();
    v29 = dCopy;
    v26 = MRNowPlayingPlayerCreate();
    MRNowPlayingPlayerPathCreate();
    if (v25)
    {
      CFRelease(v25);
    }

    infoCopy = v23;
    if (v26)
    {
      CFRelease(v26);
    }

    v33 = *MEMORY[0x277D27CD8];
    v34[0] = &unk_2870B6C20;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v31 = completionCopy;
    MRMediaRemoteSetAppPlaybackQueueForPlayer();

    dCopy = v29;
    idCopy = v30;
  }

  else
  {
    v28 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25E9F0000, v28, OS_LOG_TYPE_ERROR, "Failed to set playback queue: empty playback request identifier provided", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 2, 7);
    }
  }
}

void __171__MTExtensionPlaybackController__setPlaybackQueueWithIdentifier_startPlayback_assetInfo_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_playerID_mrCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRSendCommandError: %ld", &v11, 0xCu);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 2, a2);
    }
  }

  else
  {
    v8 = [a3 firstObject];
    v9 = [v8 unsignedIntValue];
    if (v9)
    {
      v10 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = v9;
        _os_log_impl(&dword_25E9F0000, v10, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRMediaRemoteCommandHandlerStatus: %ld", &v11, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  identifierCopy = identifier;
  v7 = MEMORY[0x277CBEA60];
  identifierCopy2 = identifier;
  [v7 arrayWithObjects:&identifierCopy count:1];

  v9 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  if ([infoCopy length])
  {
    MRSystemAppPlaybackQueueSetSiriAssetInfo();
  }

  MRSystemAppPlaybackQueueSetFeatureName();

  return v9;
}

@end