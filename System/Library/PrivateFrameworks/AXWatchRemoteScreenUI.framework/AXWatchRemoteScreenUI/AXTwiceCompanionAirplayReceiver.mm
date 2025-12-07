@interface AXTwiceCompanionAirplayReceiver
+ (id)sharedInstance;
- (AXTwiceCompanionAirplayReceiverDelegate)delegate;
- (id)_init;
- (id)start;
- (void)cleanup;
- (void)dealloc;
- (void)didChangeStreamRendererModeTo:(unint64_t)to forRenderer:(id)renderer;
- (void)didStartStreamingWithRenderer:(id)renderer;
- (void)didStopStreamingWithRenderer:(id)renderer;
- (void)shouldHideGlobalPasscode;
- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name;
@end

@implementation AXTwiceCompanionAirplayReceiver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXTwiceCompanionAirplayReceiver sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __49__AXTwiceCompanionAirplayReceiver_sharedInstance__block_invoke()
{
  sharedInstance__Shared = [[AXTwiceCompanionAirplayReceiver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)start
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[AXTwiceCompanionAirplayReceiver start]";
    _os_log_impl(&dword_23D6CB000, v3, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v7, 0xCu);
  }

  sharedInstance = [getAPRKStreamRenderingManagerClass() sharedInstance];
  [sharedInstance setDelegate:self];
  [sharedInstance setAssistedModeEnabled:1];
  [sharedInstance setEnableMixingMediaAudio:1];
  [sharedInstance setOptimizeAudioRenderingLatency:1];
  [sharedInstance startReceiverServer];
  assistedInfoForAWDL = [sharedInstance assistedInfoForAWDL];

  return assistedInfoForAWDL;
}

- (void)cleanup
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AXTwiceCompanionAirplayReceiver cleanup]";
    _os_log_impl(&dword_23D6CB000, v2, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v4, 0xCu);
  }

  sharedInstance = [getAPRKStreamRenderingManagerClass() sharedInstance];
  [sharedInstance setAssistedModeEnabled:0];
  [sharedInstance stopReceiverServer];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXTwiceCompanionAirplayReceiver;
  return [(AXTwiceCompanionAirplayReceiver *)&v3 init];
}

- (void)dealloc
{
  [(AXTwiceCompanionAirplayReceiver *)self cleanup];
  v3.receiver = self;
  v3.super_class = AXTwiceCompanionAirplayReceiver;
  [(AXTwiceCompanionAirplayReceiver *)&v3 dealloc];
}

- (void)didChangeStreamRendererModeTo:(unint64_t)to forRenderer:(id)renderer
{
  v17 = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v6 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [rendererCopy uniqueID];
    v13 = 136315394;
    v14 = "[AXTwiceCompanionAirplayReceiver didChangeStreamRendererModeTo:forRenderer:]";
    v15 = 2112;
    v16 = uniqueID;
    _os_log_impl(&dword_23D6CB000, v6, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v13, 0x16u);
  }

  v8 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    streamRendererMode = [rendererCopy streamRendererMode];
    v13 = 136315394;
    v14 = "[AXTwiceCompanionAirplayReceiver didChangeStreamRendererModeTo:forRenderer:]";
    v15 = 2048;
    v16 = streamRendererMode;
    _os_log_impl(&dword_23D6CB000, v8, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %lu", &v13, 0x16u);
  }

  streamRenderer = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  mirroringLayer = [streamRenderer mirroringLayer];

  if (mirroringLayer)
  {
    delegate = [(AXTwiceCompanionAirplayReceiver *)self delegate];
    [delegate airplayDidStartStreamingWithMirroringLayer:mirroringLayer];
  }
}

- (void)didStartStreamingWithRenderer:(id)renderer
{
  v21 = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [rendererCopy uniqueID];
    v17 = 136315394;
    v18 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
    v19 = 2112;
    v20 = uniqueID;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v17, 0x16u);
  }

  v7 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    streamRendererMode = [rendererCopy streamRendererMode];
    v17 = 136315394;
    v18 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
    v19 = 2048;
    v20 = streamRendererMode;
    _os_log_impl(&dword_23D6CB000, v7, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %lu", &v17, 0x16u);
  }

  streamRenderer = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

  if (streamRenderer)
  {
    streamRenderer2 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
    [streamRenderer2 stop];

    v11 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AXTwiceCompanionAirplayReceiver *)self didStartStreamingWithRenderer:rendererCopy];
    }
  }

  [(AXTwiceCompanionAirplayReceiver *)self setStreamRenderer:rendererCopy];
  streamRenderer3 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  [streamRenderer3 setDelegate:self];

  streamRenderer4 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];
  mirroringLayer = [streamRenderer4 mirroringLayer];

  if (mirroringLayer)
  {
    v15 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[AXTwiceCompanionAirplayReceiver didStartStreamingWithRenderer:]";
      v19 = 2112;
      v20 = mirroringLayer;
      _os_log_impl(&dword_23D6CB000, v15, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v17, 0x16u);
    }

    delegate = [(AXTwiceCompanionAirplayReceiver *)self delegate];
    [delegate airplayDidStartStreamingWithMirroringLayer:mirroringLayer];
  }
}

- (void)didStopStreamingWithRenderer:(id)renderer
{
  v14 = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [rendererCopy uniqueID];
    v10 = 136315394;
    v11 = "[AXTwiceCompanionAirplayReceiver didStopStreamingWithRenderer:]";
    v12 = 2112;
    v13 = uniqueID;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v10, 0x16u);
  }

  streamRenderer = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

  if (streamRenderer)
  {
    streamRenderer2 = [(AXTwiceCompanionAirplayReceiver *)self streamRenderer];

    if (streamRenderer2 == rendererCopy)
    {
      [(AXTwiceCompanionAirplayReceiver *)self setStreamRenderer:0];
      delegate = [(AXTwiceCompanionAirplayReceiver *)self delegate];
      [delegate airplayDidStopStreaming];
    }

    else
    {
      delegate = AXLogTwiceRemoteScreen();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        [(AXTwiceCompanionAirplayReceiver *)self didStopStreamingWithRenderer:rendererCopy];
      }
    }
  }
}

- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AXTwiceCompanionAirplayReceiver shouldShowGlobalPasscodeWithString:withClientName:]";
    v8 = 2112;
    v9 = stringCopy;
    _os_log_impl(&dword_23D6CB000, v5, OS_LOG_TYPE_DEFAULT, "[TWICE] %s %@", &v6, 0x16u);
  }
}

- (void)shouldHideGlobalPasscode
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[AXTwiceCompanionAirplayReceiver shouldHideGlobalPasscode]";
    _os_log_impl(&dword_23D6CB000, v2, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v3, 0xCu);
  }
}

- (AXTwiceCompanionAirplayReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didStartStreamingWithRenderer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 streamRenderer];
  [v3 streamRendererMode];
  [a2 streamRendererMode];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D6CB000, v4, v5, "[TWICE] Stop %lu before assigning %lu", v6, v7, v8, v9);
}

- (void)didStopStreamingWithRenderer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 streamRenderer];
  [v3 streamRendererMode];
  [a2 streamRendererMode];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D6CB000, v4, v5, "[TWICE] mismatch renderer %lu - %lu", v6, v7, v8, v9);
}

@end