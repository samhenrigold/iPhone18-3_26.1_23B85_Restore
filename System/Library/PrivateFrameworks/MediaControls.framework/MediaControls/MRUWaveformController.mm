@interface MRUWaveformController
- (CGSize)artworkFittingSize;
- (MRUWaveformController)init;
- (MRUWaveformControllerDelegate)delegate;
- (void)controller:(id)controller playerPathDidChange:(id)change;
- (void)dealloc;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
- (void)routeDidUpdateNotification:(id)notification;
- (void)setArtworkImage:(id)image;
- (void)setEndpointRoute:(id)route;
- (void)setNowPlayingController:(id)controller;
- (void)setNowPlayingPID:(int)d;
- (void)setPlaying:(BOOL)playing;
- (void)setRouteSupportsWaveform:(BOOL)waveform;
- (void)setVisible:(BOOL)visible;
- (void)setWaveform:(id)waveform;
- (void)updateAnalyzer;
- (void)updateImage:(id)image;
- (void)updateRoute:(id)route;
@end

@implementation MRUWaveformController

- (MRUWaveformController)init
{
  v19.receiver = self;
  v19.super_class = MRUWaveformController;
  v2 = [(MRUWaveformController *)&v19 init];
  if (v2)
  {
    v3 = +[MRUWaveformData zero];
    waveform = v2->_waveform;
    v2->_waveform = v3;

    __asm { FMOV            V0.2D, #30.0 }

    v2->_artworkFittingSize = _Q0;
    v10 = objc_alloc(MEMORY[0x1E69B0A90]);
    proactiveDestination = [MEMORY[0x1E69B0A10] proactiveDestination];
    v12 = [v10 initWithDestination:proactiveDestination];

    configuration = [(MRNowPlayingController *)v2->_mrNowPlayingController configuration];
    [configuration setRequestPlaybackQueue:0];

    configuration2 = [(MRNowPlayingController *)v2->_mrNowPlayingController configuration];
    [configuration2 setRequestPlaybackState:0];

    configuration3 = [(MRNowPlayingController *)v2->_mrNowPlayingController configuration];
    [configuration3 setRequestSupportedCommands:0];

    v16 = [objc_alloc(MEMORY[0x1E69B0A88]) initWithConfiguration:v12];
    mrNowPlayingController = v2->_mrNowPlayingController;
    v2->_mrNowPlayingController = v16;

    [(MRNowPlayingController *)v2->_mrNowPlayingController setDelegate:v2];
    [(MRNowPlayingController *)v2->_mrNowPlayingController beginLoadingUpdates];
  }

  return v2;
}

- (void)dealloc
{
  [(MRUAudioAnalyzer *)self->_audioAnalyzer removeObserver:self];
  v3.receiver = self;
  v3.super_class = MRUWaveformController;
  [(MRUWaveformController *)&v3 dealloc];
}

- (void)updateAnalyzer
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  staticWaveform = [currentSettings staticWaveform];

  if (staticWaveform)
  {
    if (self->_playing)
    {
      +[MRUWaveformData staticData];
    }

    else
    {
      +[MRUWaveformData zero];
    }
    v18 = ;
    [(MRUWaveformController *)self setWaveform:?];
  }

  else if (self->_playing && self->_visible && self->_routeSupportsWaveform && self->_nowPlayingPID)
  {
    v6 = [(MRUAudioAnalyzer *)self->_audioAnalyzer pid];
    if (v6 != self->_nowPlayingPID)
    {
      v7 = MCLogCategoryWaveform(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        nowPlayingPID = self->_nowPlayingPID;
        *buf = 138412546;
        selfCopy3 = self;
        v21 = 1024;
        LODWORD(v22) = nowPlayingPID;
        _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%@ Creating new audio analyzer for PID: %u", buf, 0x12u);
      }

      [(MRUAudioAnalyzer *)self->_audioAnalyzer removeObserver:self];
      self->_isAnalyzingAudio = 0;
      v9 = [MRUAudioAnalyzer audioAnalyzerForPID:self->_nowPlayingPID];
      audioAnalyzer = self->_audioAnalyzer;
      self->_audioAnalyzer = v9;
    }

    if (!self->_isAnalyzingAudio)
    {
      v11 = +[MRUWaveformData zero];
      [(MRUWaveformController *)self setWaveform:v11];

      v13 = MCLogCategoryWaveform(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_audioAnalyzer;
        *buf = 138412546;
        selfCopy3 = self;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "%@ Starting audio analyzer: %@", buf, 0x16u);
      }

      [(MRUAudioAnalyzer *)self->_audioAnalyzer addObserver:self];
      self->_isAnalyzingAudio = 1;
    }
  }

  else if (self->_audioAnalyzer && self->_isAnalyzingAudio)
  {
    v15 = MCLogCategoryWaveform(v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_audioAnalyzer;
      *buf = 138412546;
      selfCopy3 = self;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%@ Stopping audio analyzer: %@", buf, 0x16u);
    }

    [(MRUAudioAnalyzer *)self->_audioAnalyzer removeObserver:self];
    self->_isAnalyzingAudio = 0;
    v17 = +[MRUWaveformData zero];
    [(MRUWaveformController *)self setWaveform:v17];
  }
}

- (void)setNowPlayingController:(id)controller
{
  controllerCopy = controller;
  nowPlayingController = self->_nowPlayingController;
  if (nowPlayingController != controllerCopy)
  {
    v11 = controllerCopy;
    [(MRUNowPlayingController *)nowPlayingController removeObserver:self];
    objc_storeStrong(&self->_nowPlayingController, controller);
    metadataController = [(MRUNowPlayingController *)v11 metadataController];
    nowPlayingInfo = [metadataController nowPlayingInfo];
    -[MRUWaveformController setPlaying:](self, "setPlaying:", [nowPlayingInfo isPlaying]);

    endpointController = [(MRUNowPlayingController *)v11 endpointController];
    route = [endpointController route];
    [(MRUWaveformController *)self setEndpointRoute:route];

    nowPlayingController = [(MRUNowPlayingController *)v11 addObserver:self];
    controllerCopy = v11;
  }

  MEMORY[0x1EEE66BB8](nowPlayingController, controllerCopy);
}

- (void)setNowPlayingPID:(int)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_nowPlayingPID != d)
  {
    v5 = MCLogCategoryWaveform(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      nowPlayingPID = self->_nowPlayingPID;
      v7 = 138412802;
      selfCopy = self;
      v9 = 1024;
      v10 = nowPlayingPID;
      v11 = 1024;
      dCopy = d;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ nowPlaying PID changing from: %u to: %u", &v7, 0x18u);
    }

    self->_nowPlayingPID = d;
    [(MRUWaveformController *)self updateAnalyzer];
  }
}

- (void)setVisible:(BOOL)visible
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_visible != visible)
  {
    visibleCopy = visible;
    self->_visible = visible;
    v5 = MCLogCategoryWaveform(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 1024;
      v10 = visibleCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ isVisible changed to: %u", &v7, 0x12u);
    }

    [(MRUWaveformController *)self updateRoute:self->_endpointRoute];
    [(MRUWaveformController *)self updateAnalyzer];
    nowPlayingController = [(MRUWaveformController *)self nowPlayingController];
    [nowPlayingController updateAutomaticResponseLoading];
  }
}

- (void)setPlaying:(BOOL)playing
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_playing != playing)
  {
    playingCopy = playing;
    self->_playing = playing;
    v5 = MCLogCategoryWaveform(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 1024;
      v9 = playingCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ isPlaying changed to: %u", &v6, 0x12u);
    }

    [(MRUWaveformController *)self updateAnalyzer];
  }
}

- (void)setWaveform:(id)waveform
{
  objc_storeStrong(&self->_waveform, waveform);
  waveformCopy = waveform;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformController:self waveformDidChange:waveformCopy];
}

- (void)setRouteSupportsWaveform:(BOOL)waveform
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_routeSupportsWaveform != waveform)
  {
    waveformCopy = waveform;
    self->_routeSupportsWaveform = waveform;
    v5 = MCLogCategoryWaveform(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 1024;
      v9 = waveformCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ routeSupportsWaveform changed to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUWaveformController *)self updateAnalyzer];
  }
}

- (void)setArtworkImage:(id)image
{
  objc_storeStrong(&self->_artworkImage, image);
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformController:self artworkImageDidChange:imageCopy];
}

- (void)setEndpointRoute:(id)route
{
  v15 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (self->_endpointRoute != routeCopy)
  {
    objc_storeStrong(&self->_endpointRoute, route);
    v7 = MCLogCategoryWaveform(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = routeCopy;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%@ endpointRoute changed to: %@", &v11, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E696F860];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696F860] object:0];

    [(MRUWaveformController *)self updateRoute:routeCopy];
    if (routeCopy)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_routeDidUpdateNotification_ name:v9 object:routeCopy];
    }
  }
}

- (void)routeDidUpdateNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRUWaveformController_routeDidUpdateNotification___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)updateRoute:(id)route
{
  v26 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = MCLogCategoryWaveform(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = routeCopy;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_INFO, "%@ updating info from route: %@", buf, 0x16u);
  }

  endpointObject = [routeCopy endpointObject];
  outputDevices = [endpointObject outputDevices];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [outputDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(outputDevices);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v15 isLocalDevice])
        {
          if ([v15 deviceSubtype] == 14 || objc_msgSend(v15, "deviceType") == 3)
          {
            v11 = 1;
          }
        }

        else
        {
          v12 = 1;
        }
      }

      v10 = [outputDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
    v16 = (v12 | v11) ^ 1;
  }

  else
  {
    v16 = 1;
  }

  [(MRUWaveformController *)self setRouteSupportsWaveform:v16 & 1];
}

- (void)updateImage:(id)image
{
  v4 = [MRUImageUtilities formatImage:image forDisplayAtSize:self->_artworkFittingSize.width, self->_artworkFittingSize.height];
  [(MRUWaveformController *)self setArtworkImage:v4];
}

- (void)controller:(id)controller playerPathDidChange:(id)change
{
  client = [change client];
  processIdentifier = [client processIdentifier];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MRUWaveformController_controller_playerPathDidChange___block_invoke;
  v7[3] = &unk_1E7664308;
  v7[4] = self;
  v8 = processIdentifier;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  infoCopy = info;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__MRUWaveformController_nowPlayingController_metadataController_didChangeNowPlayingInfo___block_invoke;
  v8[3] = &unk_1E76639D0;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __89__MRUWaveformController_nowPlayingController_metadataController_didChangeNowPlayingInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaying:{objc_msgSend(*(a1 + 40), "isPlaying")}];
  v2 = [*(a1 + 40) identifier];
  v3 = [v2 isEqual:*(*(a1 + 32) + 72)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 40) identifier];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained waveformControllerTrackDidChange:*(a1 + 32)];
  }
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  routeCopy = route;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__MRUWaveformController_nowPlayingController_endpointController_didChangeRoute___block_invoke;
  v8[3] = &unk_1E76639D0;
  v8[4] = self;
  v9 = routeCopy;
  v7 = routeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (MRUWaveformControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)artworkFittingSize
{
  width = self->_artworkFittingSize.width;
  height = self->_artworkFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end