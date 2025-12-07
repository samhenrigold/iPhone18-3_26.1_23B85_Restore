@interface BLHLSAudiobookFetcher
+ (id)preferredStreamFromMasterPlaylist:(id)playlist;
- (id)initCanUseCellularData:(BOOL)data powerRequired:(BOOL)required bundleID:(id)d;
- (id)setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:(id)l completion:(id)completion;
- (void)getRacGUIDFromMasterPlaylistURL:(id)l completion:(id)completion;
@end

@implementation BLHLSAudiobookFetcher

+ (id)preferredStreamFromMasterPlaylist:(id)playlist
{
  v26 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  streamInfs = [playlistCopy streamInfs];
  v5 = [streamInfs count];

  if (!v5)
  {
    streamInfs2 = BLAudiobookSyncLog(v6);
    if (os_log_type_enabled(streamInfs2, OS_LOG_TYPE_ERROR))
    {
      sub_241D76E40();
    }

    goto LABEL_24;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  streamInfs2 = [playlistCopy streamInfs];
  v8 = [streamInfs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v20 = playlistCopy;
  v10 = 0;
  v11 = *v22;
  v12 = -1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(streamInfs2);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      averageBandwidthFallbackToPeak = [v14 averageBandwidthFallbackToPeak];
      v16 = averageBandwidthFallbackToPeak <= 0x30000 || v10 == 0;
      if (v16 || [v10 averageBandwidthFallbackToPeak] > 0x30000)
      {
        v17 = averageBandwidthFallbackToPeak <= 0x20000 ? 0x20000 - averageBandwidthFallbackToPeak : averageBandwidthFallbackToPeak - 0x20000;
        if (v17 < v12 || averageBandwidthFallbackToPeak <= 0x30000 && [v10 averageBandwidthFallbackToPeak] > 0x30000)
        {
          v18 = v14;

          v12 = v17;
          v10 = v18;
        }
      }
    }

    v9 = [streamInfs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
  playlistCopy = v20;
LABEL_25:

  return v10;
}

- (id)initCanUseCellularData:(BOOL)data powerRequired:(BOOL)required bundleID:(id)d
{
  requiredCopy = required;
  dataCopy = data;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = BLHLSAudiobookFetcher;
  v9 = [(BLHLSAudiobookFetcher *)&v15 init];
  if (v9)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v11 = [defaultSessionConfiguration copy];

    [v11 setAllowsCellularAccess:dataCopy];
    [v11 set_requiresPowerPluggedIn:requiredCopy];
    [v11 setWaitsForConnectivity:0];
    if ([dCopy length])
    {
      [v11 set_sourceApplicationBundleIdentifier:dCopy];
    }

    v12 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v11 delegate:0 delegateQueue:0];
    session = v9->_session;
    v9->_session = v12;
  }

  return v9;
}

- (id)setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:(id)l completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = BLAudiobookSyncLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = lCopy;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "Downloading master playlist from: %@", buf, 0xCu);
  }

  session = [(BLHLSAudiobookFetcher *)self session];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D46CD4;
  v13[3] = &unk_278D17770;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = [session downloadTaskWithURL:lCopy completionHandler:v13];

  return v11;
}

- (void)getRacGUIDFromMasterPlaylistURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  session = [(BLHLSAudiobookFetcher *)self session];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D471B8;
  v11[3] = &unk_278D17770;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [session downloadTaskWithURL:lCopy completionHandler:v11];

  [v10 resume];
}

@end