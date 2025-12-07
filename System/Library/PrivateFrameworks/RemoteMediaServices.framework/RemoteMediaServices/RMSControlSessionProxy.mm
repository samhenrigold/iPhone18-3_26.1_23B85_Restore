@interface RMSControlSessionProxy
- (RMSControlSessionDelegate)delegate;
- (RMSControlSessionProxy)init;
- (void)_handleAudioRoutesDidUpdateNotification:(id)notification;
- (void)_handleDidBeginEditingTextNotification:(id)notification;
- (void)_handleDidEndEditingTextNotification:(id)notification;
- (void)_handleDidReceivePairingChallengeRequestNotification:(id)notification;
- (void)_handleNowPlayingArtworkDidBecomeAvailableNotification:(id)notification;
- (void)_handleNowPlayingInfoDidUpdateNotification:(id)notification;
- (void)_handleSessionDidEndNotification:(id)notification;
- (void)_handleVolumeDidUpdateNotification:(id)notification;
- (void)_notifyDelegateForArtworkChange;
- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler;
- (void)beginObservingNowPlaying;
- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler;
- (void)dealloc;
- (void)endObservingNowPlaying;
- (void)heartbeatDidFail;
- (void)logout;
- (void)pickAudioRoute:(id)route completionHandler:(id)handler;
- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler;
- (void)sendNavigationCommand:(int64_t)command;
- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler;
- (void)sendText:(id)text completionHandler:(id)handler;
- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(unsigned int)count;
- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count;
- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler;
- (void)setVolume:(float)volume completionHandler:(id)handler;
@end

@implementation RMSControlSessionProxy

- (RMSControlSessionProxy)init
{
  v7.receiver = self;
  v7.super_class = RMSControlSessionProxy;
  v2 = [(RMSSessionProxy *)&v7 initWithTimeout:*&RMSControlSessionTimeout];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleDidReceivePairingChallengeRequestNotification_ name:@"RMSIDSClientDidReceivePairingChallengeRequestNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleNowPlayingInfoDidUpdateNotification_ name:@"RMSIDSClientNowPlayingInfoDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleNowPlayingArtworkDidBecomeAvailableNotification_ name:@"RMSIDSClientNowPlayingArtworkDidBecomeAvailableNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleAudioRoutesDidUpdateNotification_ name:@"RMSIDSClientNowPlayingAudioRoutesDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleVolumeDidUpdateNotification_ name:@"RMSIDSClientNowPlayingVolumeDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleSessionDidEndNotification_ name:@"RMSIDSClientSessionDidEndNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleDidBeginEditingTextNotification_ name:@"RMSIDSClientDidBeginEditingTextNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleDidEndEditingTextNotification_ name:@"RMSIDSClientDidEndEditingTextNotification" object:0];
    v4 = +[RMSIDSClient sharedClient];
    idsClient = v2->_idsClient;
    v2->_idsClient = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(RMSSessionProxy *)self endHeartbeat];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RMSControlSessionProxy;
  [(RMSSessionProxy *)&v4 dealloc];
}

- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler
{
  pairingCopy = pairing;
  serviceCopy = service;
  dCopy = d;
  handlerCopy = handler;
  objc_storeStrong(&self->_service, service);
  [(RMSSessionProxy *)self setSessionIdentifier:0];
  objc_initWeak(&location, self);
  idsClient = self->_idsClient;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__RMSControlSessionProxy_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke;
  v17[3] = &unk_279B093F8;
  v15 = serviceCopy;
  v18 = v15;
  objc_copyWeak(&v20, &location);
  v16 = handlerCopy;
  v19 = v16;
  [(RMSIDSClient *)idsClient connectToService:v15 pairingGUID:dCopy allowPairing:pairingCopy completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __86__RMSControlSessionProxy_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  if (a2 == 3)
  {
    v17 = +[RMSPairingRecordStore sharedRecordStore];
    v18 = [*(a1 + 32) networkName];
    [v17 removePairingRecordForServiceWithNetworkName:v18];

LABEL_10:
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v10 = RMSLogger(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109120;
      v19[1] = a5;
      _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Control session proxy received successful connection response, sessionIdentifier=%d", v19, 8u);
    }

    if (([*(a1 + 32) isTVRemoteCoreSupported] & 1) == 0)
    {
      v11 = [*(a1 + 32) networkName];

      if (v11)
      {
        v12 = +[RMSPairingRecordStore sharedRecordStore];
        v13 = [MEMORY[0x277CCAD78] UUID];
        v14 = [v13 UUIDString];
        v15 = [*(a1 + 32) networkName];
        [v12 savePairingRecord:v14 forServiceWithNetworkName:v15];
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setSessionIdentifier:a5];

    v17 = objc_loadWeakRetained((a1 + 48));
    [v17 beginHeartbeat];
    goto LABEL_10;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

- (void)logout
{
  if ([(RMSSessionProxy *)self sessionIdentifier])
  {
    [(RMSIDSClient *)self->_idsClient logoutWithSessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier]];

    [(RMSSessionProxy *)self endHeartbeat];
  }
}

- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  v6 = [(RMSSessionProxy *)self sessionIdentifier:command];

  [(RMSIDSClient *)idsClient sendPlaybackCommand:command sessionIdentifier:v6];
}

- (void)setVolume:(float)volume completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];
  *&v7 = volume;

  [(RMSIDSClient *)idsClient setVolume:sessionIdentifier sessionIdentifier:v7];
}

- (void)pickAudioRoute:(id)route completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  -[RMSIDSClient pickAudioRouteWithMacAddress:sessionIdentifier:completionHandler:](idsClient, "pickAudioRouteWithMacAddress:sessionIdentifier:completionHandler:", [route macAddress], -[RMSSessionProxy sessionIdentifier](self, "sessionIdentifier"), handlerCopy);
}

- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler
{
  v4 = *&time;
  idsClient = self->_idsClient;
  v6 = [(RMSSessionProxy *)self sessionIdentifier:*&time];

  [(RMSIDSClient *)idsClient seekToPlaybackTime:v4 sessionIdentifier:v6];
}

- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  [(RMSIDSClient *)idsClient setLikedState:state itemID:d databaseID:iD sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  [(RMSIDSClient *)idsClient addToWishlist:wishlist databaseID:d sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)beginObservingNowPlaying
{
  objc_initWeak(&location, self);
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__RMSControlSessionProxy_beginObservingNowPlaying__block_invoke;
  v5[3] = &unk_279B08930;
  objc_copyWeak(&v6, &location);
  [(RMSIDSClient *)idsClient beginObservingNowPlayingWithSessionIdentifier:sessionIdentifier completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__RMSControlSessionProxy_beginObservingNowPlaying__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained beginObservingNowPlaying];
  }
}

- (void)endObservingNowPlaying
{
  if ([(RMSSessionProxy *)self sessionIdentifier])
  {
    idsClient = self->_idsClient;
    sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

    [(RMSIDSClient *)idsClient endObservingNowPlayingWithSessionIdentifier:sessionIdentifier];
  }
}

- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count
{
  v4 = *&count;
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

  [(RMSIDSClient *)idsClient sendTouchMoveWithDirection:direction repeatCount:v4 sessionIdentifier:sessionIdentifier];
}

- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(unsigned int)count
{
  v4 = *&count;
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

  [(RMSIDSClient *)idsClient sendTouchEndWithDirection:direction repeatCount:v4 sessionIdentifier:sessionIdentifier];
}

- (void)sendNavigationCommand:(int64_t)command
{
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

  [(RMSIDSClient *)idsClient sendNavigationCommand:command sessionIdentifier:sessionIdentifier];
}

- (void)sendText:(id)text completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  textCopy = text;
  [(RMSIDSClient *)idsClient sendText:textCopy sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)heartbeatDidFail
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)_notifyDelegateForArtworkChange
{
  artworkIdentifier = [(RMSNowPlayingInfo *)self->_nowPlayingInfo artworkIdentifier];
  v3 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  v4 = [v3 artworkDataForIdentifier:artworkIdentifier];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self artworkDataDidBecomeAvailable:v4 identifier:artworkIdentifier];
}

- (void)_handleDidReceivePairingChallengeRequestNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__RMSControlSessionProxy__handleDidReceivePairingChallengeRequestNotification___block_invoke;
  v6[3] = &unk_279B09020;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __79__RMSControlSessionProxy__handleDidReceivePairingChallengeRequestNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"RMSIDSClientPairingCredentialsNotificationKey"];
  v5 = [*(a1 + 40) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"RMSIDSClientPairingCompletionHandlerNotificationKey"];
  [WeakRetained controlSession:v2 didReceivePairingChallengeRequestWithCredentials:v4 completionHandler:v6];
}

- (void)_handleNowPlayingInfoDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientNowPlayingInfoNotificationKey"];

    LODWORD(userInfo) = [v5 revisionNumber];
    if (userInfo >= [(RMSNowPlayingInfo *)self->_nowPlayingInfo revisionNumber])
    {
      artworkIdentifier = [(RMSNowPlayingInfo *)self->_nowPlayingInfo artworkIdentifier];
      artworkIdentifier2 = [v5 artworkIdentifier];
      objc_storeStrong(&self->_nowPlayingInfo, v5);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained controlSession:self didUpdateNowPlayingInfo:v5];

      if (([artworkIdentifier2 isEqualToString:artworkIdentifier] & 1) == 0 && artworkIdentifier2 != artworkIdentifier)
      {
        [(RMSControlSessionProxy *)self _notifyDelegateForArtworkChange];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_handleAudioRoutesDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientNowPlayingAudioRoutesNotificationKey"];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained controlSession:self didUpdateAudioRoutes:v5];
  }
}

- (void)_handleVolumeDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientNowPlayingVolumeNotificationKey"];
    [v5 floatValue];
    v7 = v6;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LODWORD(v9) = v7;
    [WeakRetained controlSession:self didUpdateVolume:v9];
  }
}

- (void)_handleNowPlayingArtworkDidBecomeAvailableNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v6 = [userInfo objectForKey:@"RMSIDSClientNowPlayingArtworkIdentifierKey"];

    artworkIdentifier = [(RMSNowPlayingInfo *)self->_nowPlayingInfo artworkIdentifier];
    v8 = [v6 isEqualToString:artworkIdentifier];
    if (v8)
    {
      v9 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
      v10 = [v9 artworkDataForIdentifier:artworkIdentifier];

      if (v10)
      {
        v12 = RMSLogger(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "Control session was notified of avialable artwork for [%@], but data is already in cache", buf, 0xCu);
        }
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v15 = v14;
        v17 = v16;

        objc_initWeak(buf, self);
        idsClient = self->_idsClient;
        nowPlayingInfo = self->_nowPlayingInfo;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __81__RMSControlSessionProxy__handleNowPlayingArtworkDidBecomeAvailableNotification___block_invoke;
        v21[3] = &unk_279B09420;
        v22 = v6;
        objc_copyWeak(&v23, buf);
        LODWORD(v20) = 1050253722;
        [(RMSIDSClient *)idsClient requestArtworkDataForNowPlayingInfo:nowPlayingInfo width:v15 height:v17 compressionQuality:v21 completionHandler:v20];
        objc_destroyWeak(&v23);

        objc_destroyWeak(buf);
      }
    }

    else
    {
      v10 = RMSLogger(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = artworkIdentifier;
        _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Control session was notified of available artwork for [%@], but current now playing is [%@]", buf, 0x16u);
      }
    }
  }
}

void __81__RMSControlSessionProxy__handleNowPlayingArtworkDidBecomeAvailableNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  [v4 setArtworkData:v3 forIdentifier:*(a1 + 32)];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyDelegateForArtworkChange];
}

- (void)_handleSessionDidEndNotification:(id)notification
{
  v4 = [(RMSSessionProxy *)self sessionMatchesNotification:notification];
  if (v4)
  {
    v5 = RMSLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Control session ended", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__RMSControlSessionProxy__handleSessionDidEndNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__RMSControlSessionProxy__handleSessionDidEndNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) endHeartbeat];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained controlSessionDidEnd:*(a1 + 32)];
}

- (void)_handleDidBeginEditingTextNotification:(id)notification
{
  v4 = [(RMSSessionProxy *)self sessionMatchesNotification:notification];
  if (v4)
  {
    v5 = RMSLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Control session did begin editing text", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__RMSControlSessionProxy__handleDidBeginEditingTextNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__RMSControlSessionProxy__handleDidBeginEditingTextNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained controlSessionDidBeginEditingText:*(a1 + 32)];
}

- (void)_handleDidEndEditingTextNotification:(id)notification
{
  v4 = [(RMSSessionProxy *)self sessionMatchesNotification:notification];
  if (v4)
  {
    v5 = RMSLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Control session did end diting text", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RMSControlSessionProxy__handleDidEndEditingTextNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__RMSControlSessionProxy__handleDidEndEditingTextNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained controlSessionDidEndEditingText:*(a1 + 32)];
}

- (RMSControlSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end