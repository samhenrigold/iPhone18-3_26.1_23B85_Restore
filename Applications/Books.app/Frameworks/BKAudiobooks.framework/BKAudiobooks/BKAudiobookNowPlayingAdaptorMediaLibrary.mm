@interface BKAudiobookNowPlayingAdaptorMediaLibrary
- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d;
- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset;
- (void)_fireAndFreeArtworkCompletionBlocksWithImage:(id)image error:(id)error;
- (void)coverWillChangeTo:(CGImage *)to;
- (void)dealloc;
- (void)nowPlayingInfoChanged:(BOOL)changed;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)setSessionID:(id)d;
@end

@implementation BKAudiobookNowPlayingAdaptorMediaLibrary

- (void)dealloc
{
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:0 error:0];
  v3.receiver = self;
  v3.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)&v3 dealloc];
}

- (void)setSessionID:(id)d
{
  v4.receiver = self;
  v4.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptor *)&v4 setSessionID:d];
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue];
}

- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset
{
  if ([(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput])
  {
    objc_opt_class();
    player = [(BKAudiobookNowPlayingAdaptor *)self player];
    currentAudiobook = [player currentAudiobook];
    v8 = BUDynamicCast();

    if (v8)
    {
      objc_opt_class();
      player2 = [(BKAudiobookNowPlayingAdaptor *)self player];
      currentChapter = [player2 currentChapter];
      v11 = BUDynamicCast();

      if (v11)
      {
        player3 = [(BKAudiobookNowPlayingAdaptor *)self player];
        currentChapterIndex = [player3 currentChapterIndex];

        chapters = [v8 chapters];
        v15 = [chapters count];

        if (&currentChapterIndex[offset] >= v15)
        {
          v19 = 0;
          identifier = 0;
        }

        else
        {
          objc_opt_class();
          chapters2 = [v8 chapters];
          v18 = [chapters2 objectAtIndexedSubscript:&currentChapterIndex[offset]];
          v19 = BUDynamicCast();

          contentItem = [v19 contentItem];
          identifier = [contentItem identifier];
        }

        v27 = BKAudiobooksNowPlayingAdaptorLog(v16);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [NSNumber numberWithInteger:offset];
          contentItem2 = [v19 contentItem];
          identifier2 = [contentItem2 identifier];
          v31 = [NSNumber numberWithInteger:currentChapterIndex];
          v33 = 138412802;
          v34 = v28;
          v35 = 2112;
          v36 = identifier2;
          v37 = 2112;
          v38 = v31;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "contentItemIDForOffset[%@]=%@ chapter=%@", &v33, 0x20u);
        }
      }

      else
      {
        identifier = 0;
      }
    }

    else
    {
      player4 = [(BKAudiobookNowPlayingAdaptor *)self player];
      currentAudiobook2 = [player4 currentAudiobook];
      isAudiobookPreview = [currentAudiobook2 isAudiobookPreview];

      identifier = 0;
      if (isAudiobookPreview && !offset)
      {
        player5 = [(BKAudiobookNowPlayingAdaptor *)self player];
        currentAudiobook3 = [player5 currentAudiobook];
        identifier = [currentAudiobook3 assetID];
      }
    }
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d
{
  dCopy = d;
  player = [(BKAudiobookNowPlayingAdaptor *)self player];
  currentAudiobook = [player currentAudiobook];

  if (![(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput])
  {
    v12 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  v8 = BUDynamicCast();
  if (v8)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    player2 = [(BKAudiobookNowPlayingAdaptor *)self player];
    currentAudiobook2 = [player2 currentAudiobook];
    chapters = [currentAudiobook2 chapters];

    v12 = [chapters countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v12)
    {
      v33 = currentAudiobook;
      v13 = *v35;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(chapters);
          }

          objc_opt_class();
          v15 = BUDynamicCast();
          contentItem = [v15 contentItem];
          identifier = [contentItem identifier];
          v18 = [identifier isEqualToString:dCopy];

          if (v18)
          {
            v12 = contentItem;
            v19 = BKAudiobooksNowPlayingAdaptorLog(v12);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v12 identifier];
              *buf = 138412546;
              v41 = identifier2;
              v42 = 2112;
              v43 = v12;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "contentItemForID[%@]=%@", buf, 0x16u);
            }

            currentAudiobook = v33;
            goto LABEL_16;
          }
        }

        v12 = [chapters countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      currentAudiobook = v33;
    }
  }

  else
  {
    if (![currentAudiobook isAudiobookPreview] || (objc_msgSend(currentAudiobook, "assetID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(dCopy, "isEqual:", v21), v21, !v22))
    {
      v12 = 0;
      goto LABEL_23;
    }

    v23 = [MPNowPlayingContentItem alloc];
    assetID = [currentAudiobook assetID];
    v12 = [v23 initWithIdentifier:assetID];

    [v12 setMediaType:4];
    author = [currentAudiobook author];
    [v12 setTrackArtistName:author];

    author2 = [currentAudiobook author];
    [v12 setAlbumArtistName:author2];

    title = [currentAudiobook title];
    [v12 setTitle:title];

    title2 = [currentAudiobook title];
    [v12 setAlbumName:title2];

    [currentAudiobook duration];
    [v12 setDuration:?];
    [v12 setElapsedTime:0.0];
    [v12 setPlaybackRate:0.0];
    LODWORD(v29) = 1.0;
    [v12 setDefaultPlaybackRate:v29];
    [v12 setNumberOfChildren:0];
    [v12 setContainer:0];
    [v12 setHasArtwork:1];
    [v12 setPlayable:1];
    v38[0] = kMRMediaRemoteNowPlayingInfoChapterNumber;
    v38[1] = kMRMediaRemoteNowPlayingInfoTotalChapterCount;
    v39[0] = &off_3E0D8;
    v39[1] = &off_3E0F0;
    v38[2] = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
    assetID2 = [currentAudiobook assetID];
    v39[2] = assetID2;
    chapters = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];

    [v12 setNowPlayingInfo:chapters];
    v15 = BKAudiobooksNowPlayingAdaptorLog([(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setContentItemForPreviews:v12]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [v12 identifier];
      *buf = 138412546;
      v41 = identifier3;
      v42 = 2112;
      v43 = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "contentItemForID[%@]=%@", buf, 0x16u);
    }

LABEL_16:
  }

LABEL_23:
LABEL_24:

  return v12;
}

- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  centerCopy = center;
  itemCopy = item;
  completionCopy = completion;
  audiobookPlayerActiveOutput = [(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput];
  v15 = audiobookPlayerActiveOutput;
  v16 = BKAudiobooksNowPlayingAdaptorLog(audiobookPlayerActiveOutput);
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Attempting to fetch artwork for active audiobook.", buf, 2u);
    }

    player = [(BKAudiobookNowPlayingAdaptor *)self player];
    currentAudiobook = [player currentAudiobook];

    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_C1B0;
    v22[3] = &unk_3CD58;
    objc_copyWeak(v26, buf);
    v20 = currentAudiobook;
    v23 = v20;
    selfCopy = self;
    v25 = completionCopy;
    v26[1] = *&width;
    v26[2] = *&height;
    [v20 artworkWithCompletion:v22];

    objc_destroyWeak(v26);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_213DC(v17);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return 0;
}

- (void)nowPlayingInfoChanged:(BOOL)changed
{
  changedCopy = changed;
  objc_opt_class();
  player = [(BKAudiobookNowPlayingAdaptor *)self player];
  currentChapter = [player currentChapter];
  v7 = BUDynamicCast();

  player2 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [player2 playbackRate];
  v10 = v9;

  player3 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [player3 positionInCurrentChapter];
  v13 = v12;

  if (changedCopy)
  {
    player4 = [(BKAudiobookNowPlayingAdaptor *)self player];
    isPlaying = [player4 isPlaying];

    if (!isPlaying)
    {
      v10 = 0.0;
    }
  }

  contentItem = [v7 contentItem];
  player5 = [(BKAudiobookNowPlayingAdaptor *)self player];
  currentAudiobook = [player5 currentAudiobook];
  isAudiobookPreview = [currentAudiobook isAudiobookPreview];

  if (isAudiobookPreview)
  {
    contentItemForPreviews = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self contentItemForPreviews];

    contentItem = contentItemForPreviews;
  }

  if (contentItem)
  {
    *&v21 = v10;
    [contentItem setElapsedTime:v13 playbackRate:v21];
    player6 = [(BKAudiobookNowPlayingAdaptor *)self player];
    [player6 playbackRate];
    [contentItem setDefaultPlaybackRate:?];

    userInfo = [contentItem userInfo];
    if (!userInfo)
    {
      userInfo = +[NSDictionary dictionary];
    }

    player7 = [(BKAudiobookNowPlayingAdaptor *)self player];
    if ([player7 isStalling])
    {
      isLoadingResources = &dword_0 + 1;
    }

    else
    {
      player8 = [(BKAudiobookNowPlayingAdaptor *)self player];
      isLoadingResources = [player8 isLoadingResources];
    }

    v28 = MPNowPlayingContentItemUserInfoKeyIsLoading;
    v29 = [userInfo objectForKey:MPNowPlayingContentItemUserInfoKeyIsLoading];
    bOOLValue = [v29 BOOLValue];

    if (isLoadingResources != bOOLValue)
    {
      v32 = [userInfo mutableCopy];
      v33 = [NSNumber numberWithBool:isLoadingResources];
      [v32 setObject:v33 forKey:v28];

      [contentItem setUserInfo:v32];
    }

    v34 = BKAudiobooksNowPlayingAdaptorLog(v31);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [contentItem identifier];
      [contentItem playbackRate];
      v37 = v36;
      [contentItem elapsedTime];
      v39 = v38;
      v40 = [NSNumber numberWithBool:isLoadingResources];
      v47 = 138413058;
      v48 = identifier;
      v49 = 2048;
      v50 = v37;
      v51 = 2048;
      v52 = v39;
      v53 = 2112;
      v54 = v40;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "nowPlayingInfoChanged identifier=%@ rate=%f elapsedTime=%f isLoading=%@", &v47, 0x2Au);
    }
  }

  else
  {
    userInfo = BKAudiobooksNowPlayingAdaptorLog(v20);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_0, userInfo, OS_LOG_TYPE_DEFAULT, "nowPlayingInfoChanged no contentItem available", &v47, 2u);
    }
  }

  player9 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [player9 playbackRate];
  v43 = v42;
  v44 = +[MPRemoteCommandCenter sharedCommandCenter];
  changePlaybackRateCommand = [v44 changePlaybackRateCommand];
  LODWORD(v46) = v43;
  [changePlaybackRateCommand setPreferredRate:v46];
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptor *)&v5 player:player audiobookDidChange:change];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:0 error:0];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setNowPlayingAudiobookArtworkForPreviews:0];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setContentItemForPreviews:0];
}

- (void)coverWillChangeTo:(CGImage *)to
{
  if (to)
  {
    v4 = [UIImage imageWithCGImage:?];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setNowPlayingAudiobookArtworkForPreviews:v4];

    nowPlayingAudiobookArtworkForPreviews = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self nowPlayingAudiobookArtworkForPreviews];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:nowPlayingAudiobookArtworkForPreviews error:0];
  }
}

- (void)_fireAndFreeArtworkCompletionBlocksWithImage:(id)image error:(id)error
{
  imageCopy = image;
  errorCopy = error;
  artworkCompletionBlocks = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self artworkCompletionBlocks];
  v9 = [artworkCompletionBlocks copy];

  v10 = BKAudiobooksNowPlayingAdaptorLog([(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setArtworkCompletionBlocks:0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [imageCopy size];
    v11 = NSStringFromCGSize(v24);
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Finished generating artwork for active preview audiobook (%{public}@)", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

@end