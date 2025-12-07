@interface BKAudiobookPlayerDataSource
- (BKAudiobookPlayerDataSourceDelegate)delegate;
- (BOOL)_fetchKeysForMediaItem:(id)item loadingRequest:(id)request;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request;
- (void)setDelegate:(id)delegate;
@end

@implementation BKAudiobookPlayerDataSource

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    v7 = BKAudiobooksStreamingLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = delegateCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Data source delegate changed to %@.", &v8, 0xCu);
    }

    objc_storeWeak(&self->_delegate, delegateCopy);
  }
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  resourceCopy = resource;
  v6 = BKAudiobooksStreamingLog(resourceCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = resourceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AVAsset requested %@", &v24, 0xCu);
  }

  request = [resourceCopy request];
  v8 = [request URL];
  lastPathComponent = [v8 lastPathComponent];

  pathExtension = [lastPathComponent pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString bk_isPlaylistExtension])
  {
    delegate = [(BKAudiobookPlayerDataSource *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
      v16 = [delegate2 playerDataSource:self shouldWaitForLoadingOfRequestedPlaylist:resourceCopy fileName:lastPathComponent];
LABEL_9:
      v19 = v16;
LABEL_14:

      goto LABEL_16;
    }
  }

  else if ([lowercaseString bk_isAudioFileExtension])
  {
    delegate3 = [(BKAudiobookPlayerDataSource *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
      v16 = [delegate2 playerDataSource:self shouldWaitForLoadingOfRequestedAudioFile:resourceCopy fileName:lastPathComponent];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = ICSecureKeyDeliveryRequestSupportsAssetResourceLoadingRequest();
    if (v14)
    {
      v20 = BKAudiobooksStreamingLog(v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = lastPathComponent;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "AVAsset requested skd file '%@'.", &v24, 0xCu);
      }

      delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
      mediaItem = [delegate2 mediaItem];
      v19 = [(BKAudiobookPlayerDataSource *)self _fetchKeysForMediaItem:mediaItem loadingRequest:resourceCopy];

      goto LABEL_14;
    }
  }

  v19 = 0;
LABEL_16:
  v22 = BKAudiobooksStreamingLog(v14);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = lastPathComponent;
    v26 = 1024;
    v27 = v19;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "AVAsset request of '%@' wait for loading? %d", &v24, 0x12u);
  }

  return v19;
}

- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request
{
  requestCopy = request;
  v6 = BKAudiobooksStreamingLog(requestCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = requestCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AVAsset cancelled request %@", &v10, 0xCu);
  }

  delegate = [(BKAudiobookPlayerDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
    [delegate2 playerDataSource:self didCancelLoadingRequest:requestCopy];
  }
}

- (BOOL)_fetchKeysForMediaItem:(id)item loadingRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  request = [requestCopy request];
  v8 = [request URL];
  absoluteString = [v8 absoluteString];

  v10 = +[BLHLSKeyFetcher sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_AF70;
  v14[3] = &unk_3CCE8;
  v15 = requestCopy;
  v11 = requestCopy;
  v12 = [v10 fetchOfflineKeyForMediaItem:itemCopy identity:absoluteString completion:v14];

  return 1;
}

- (BKAudiobookPlayerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end