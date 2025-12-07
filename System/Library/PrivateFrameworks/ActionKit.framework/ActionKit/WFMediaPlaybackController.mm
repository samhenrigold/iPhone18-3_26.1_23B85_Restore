@interface WFMediaPlaybackController
+ (id)bundleIdentifierForMediaPlaybackApplication:(unint64_t)application;
+ (id)songPropertySet;
- (WFMediaPlaybackController)init;
- (id)createSendCommandError:(unsigned int)error;
- (void)clearQueueWithCompletion:(id)completion;
- (void)connectToEndpoint:(id)endpoint completion:(id)completion;
- (void)connectToExternalDevice:(id)device completion:(id)completion;
- (void)getActivePlayerPathWithCompletion:(id)completion;
- (void)getCurrentlyPlayingMediaWithCompletion:(id)completion;
- (void)getPreferredMediaControlDestinationForOutputDeviceUIDs:(id)ds completionBlock:(id)block;
- (void)getPreferredMediaControlOriginWithCompletion:(id)completion;
- (void)getPreferredPlaybackDestinationForPlaybackArchive:(id)archive completionBlock:(id)block;
- (void)getPreferredPlaybackOriginWithCompletion:(id)completion;
- (void)getRemoteControlEndpointsMatchingUIDs:(id)ds completion:(id)completion;
- (void)queueItemsWithIdentifierSets:(id)sets inAdditionMode:(unint64_t)mode completion:(id)completion;
- (void)queueMediaItems:(id)items inAdditionMode:(unint64_t)mode completion:(id)completion;
- (void)queueiTunesStoreItems:(id)items inAdditionMode:(unint64_t)mode completion:(id)completion;
- (void)sendCommand:(unsigned int)command options:(id)options completion:(id)completion;
- (void)sendCommand:(unsigned int)command origin:(void *)origin options:(id)options completion:(id)completion;
- (void)sendCommand:(unsigned int)command playerPath:(void *)path options:(id)options completion:(id)completion;
- (void)sendCommandToDevicesWithUIDs:(unsigned int)ds deviceUIDs:(id)iDs options:(id)options sendTwice:(BOOL)twice completion:(id)completion;
- (void)skipBackwardOnDevicesWithUIDs:(id)ds interval:(double)interval completion:(id)completion;
- (void)skipForwardOnDevicesWithUIDs:(id)ds interval:(double)interval completion:(id)completion;
- (void)skipToPositionOnDevicesWithUIDs:(id)ds interval:(double)interval completion:(id)completion;
@end

@implementation WFMediaPlaybackController

- (void)skipToPositionOnDevicesWithUIDs:(id)ds interval:(double)interval completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D27D50];
  v8 = v14;
  v9 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  dsCopy = ds;
  v12 = [v9 numberWithDouble:interval];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [(WFMediaPlaybackController *)self sendCommandToDevicesWithUIDs:24 deviceUIDs:dsCopy options:v13 sendTwice:0 completion:completionCopy];
}

- (void)skipBackwardOnDevicesWithUIDs:(id)ds interval:(double)interval completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D27DF8];
  v8 = v14;
  v9 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  dsCopy = ds;
  v12 = [v9 numberWithDouble:interval];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [(WFMediaPlaybackController *)self sendCommandToDevicesWithUIDs:18 deviceUIDs:dsCopy options:v13 sendTwice:0 completion:completionCopy];
}

- (void)skipForwardOnDevicesWithUIDs:(id)ds interval:(double)interval completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D27DF8];
  v8 = v14;
  v9 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  dsCopy = ds;
  v12 = [v9 numberWithDouble:interval];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [(WFMediaPlaybackController *)self sendCommandToDevicesWithUIDs:17 deviceUIDs:dsCopy options:v13 sendTwice:0 completion:completionCopy];
}

- (void)sendCommandToDevicesWithUIDs:(unsigned int)ds deviceUIDs:(id)iDs options:(id)options sendTwice:(BOOL)twice completion:(id)completion
{
  v10 = *&ds;
  iDsCopy = iDs;
  optionsCopy = options;
  completionCopy = completion;
  if ([iDsCopy count])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2;
    v20[3] = &unk_278C19648;
    v21 = optionsCopy;
    v22 = completionCopy;
    v23 = v10;
    v20[4] = self;
    twiceCopy = twice;
    v15 = optionsCopy;
    v16 = completionCopy;
    [(WFMediaPlaybackController *)self getRemoteControlEndpointsMatchingUIDs:iDsCopy completion:v20];

    v17 = v22;
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke;
    v25[3] = &unk_278C195A8;
    twiceCopy2 = twice;
    v28 = v10;
    v25[4] = self;
    v26 = optionsCopy;
    v27 = completionCopy;
    v18 = optionsCopy;
    v19 = completionCopy;
    [(WFMediaPlaybackController *)self sendCommand:v10 origin:0 options:v18 completion:v25];

    v17 = v26;
  }
}

uint64_t __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    return [*(a1 + 32) sendCommand:*(a1 + 56) origin:0 options:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    if ([v7 count] || !objc_msgSend(v8, "count"))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = __Block_byref_object_copy__3072;
      v46 = __Block_byref_object_dispose__3073;
      v47 = 0;
      v10 = dispatch_group_create();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_226;
      aBlock[3] = &unk_278C195F8;
      v41 = buf;
      v11 = v10;
      v12 = *(a1 + 32);
      v38 = v11;
      v39 = v12;
      v42 = *(a1 + 56);
      v40 = *(a1 + 40);
      v43 = *(a1 + 60);
      v13 = _Block_copy(aBlock);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_4;
      v33[3] = &unk_278C19620;
      v14 = v11;
      v15 = *(a1 + 32);
      v34 = v14;
      v35 = v15;
      v16 = v13;
      v36 = v16;
      [v7 enumerateObjectsUsingBlock:v33];
      v17 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_5;
      block[3] = &unk_278C223F8;
      v31 = *(a1 + 48);
      v32 = buf;
      dispatch_group_notify(v14, v17, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = getWFActionsLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[WFMediaPlaybackController sendCommandToDevicesWithUIDs:deviceUIDs:options:sendTwice:completion:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_23DE30000, v18, OS_LOG_TYPE_INFO, "%s Found no endpoints for provided UIDs, only devices: %@", buf, 0x16u);
      }

      if (v9)
      {
        v19 = [v9 userInfo];
        v20 = [v19 mutableCopy];
      }

      else
      {
        v20 = objc_opt_new();
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = WFLocalizedPluralString(@"These devices can't be controlled remotely.");
      v26 = [v24 localizedStringWithFormat:v25, objc_msgSend(v8, "count")];
      [v20 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCA450]];

      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:objc_msgSend(v9 userInfo:{"code"), v20}];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v21 = getWFActionsLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[WFMediaPlaybackController sendCommandToDevicesWithUIDs:deviceUIDs:options:sendTwice:completion:]_block_invoke_2";
      _os_log_impl(&dword_23DE30000, v21, OS_LOG_TYPE_INFO, "%s Found no endpoints and no devices for provided UIDs.", buf, 0xCu);
    }

    if (v9)
    {
      v22 = [v9 userInfo];
      v23 = [v22 mutableCopy];
    }

    else
    {
      v23 = objc_opt_new();
    }

    v28 = WFLocalizedString(@"No endpoints were found.");
    [v23 setObject:v28 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:objc_msgSend(v9 userInfo:{"code"), v23}];
    (*(*(a1 + 48) + 16))();
  }
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_226(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2_227;
    aBlock[3] = &unk_278C1CE08;
    v21 = *(a1 + 56);
    v20 = *(a1 + 32);
    v8 = _Block_copy(aBlock);
    v9 = *(a1 + 64);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_3;
    v13[3] = &unk_278C195D0;
    v18 = *(a1 + 68);
    v17 = v9;
    v13[4] = v11;
    v16 = a3;
    v14 = v10;
    v15 = v8;
    v12 = v8;
    [v11 sendCommand:v9 origin:a3 options:v14 completion:v13];
  }
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  [*(a1 + 40) connectToEndpoint:v4 completion:*(a1 + 48)];
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2_227(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    return [*(a1 + 32) sendCommand:*(a1 + 64) origin:*(a1 + 56) options:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)sendCommand:(unsigned int)command options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__WFMediaPlaybackController_sendCommand_options_completion___block_invoke;
  v16 = &unk_278C19580;
  commandCopy = command;
  v17 = completionCopy;
  v9 = completionCopy;
  optionsCopy = options;
  v11 = _Block_copy(&v13);
  v12 = [(WFMediaPlaybackController *)self queue:v13];
  MRMediaRemoteSendCommandWithReply();
}

void __60__WFMediaPlaybackController_sendCommand_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] && (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), v5 = v4, v4, v5))
  {
    if (v5 == 2)
    {
      v6 = MRMediaRemoteCopyCommandHandlerStatusDescription();
      v7 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA068];
      v17[0] = v6;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v9 = [v7 errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:2 userInfo:v8];
    }

    else
    {
      v6 = MRMediaRemoteCopyCommandDescription();
      v8 = getWFActionsLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 136315650;
        v11 = "[WFMediaPlaybackController sendCommand:options:completion:]_block_invoke";
        v12 = 2114;
        v13 = v6;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s %{public}@ received a non-success status: '%u'", &v10, 0x1Cu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendCommand:(unsigned int)command playerPath:(void *)path options:(id)options completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__WFMediaPlaybackController_sendCommand_playerPath_options_completion___block_invoke;
  aBlock[3] = &unk_278C1A718;
  v14 = completionCopy;
  v9 = completionCopy;
  optionsCopy = options;
  v11 = _Block_copy(aBlock);
  queue = [(WFMediaPlaybackController *)self queue];
  MRMediaRemoteSendCommandToPlayer();
}

void __71__WFMediaPlaybackController_sendCommand_playerPath_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a2;
    v4 = MRMediaRemoteCopySendCommandErrorDescription();
    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA068];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:v3 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendCommand:(unsigned int)command origin:(void *)origin options:(id)options completion:(id)completion
{
  v8 = *&command;
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v12 = getWFActionsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = MRMediaRemoteCopyCommandDescription();
    v14 = 136315394;
    v15 = "[WFMediaPlaybackController sendCommand:origin:options:completion:]";
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_INFO, "%s Sending command: %@", &v14, 0x16u);
  }

  if (origin)
  {
    [(WFMediaPlaybackController *)self sendCommand:v8 playerPath:MRNowPlayingPlayerPathCreate() options:optionsCopy completion:completionCopy];
  }

  else
  {
    [(WFMediaPlaybackController *)self sendCommand:v8 options:optionsCopy completion:completionCopy];
  }
}

- (id)createSendCommandError:(unsigned int)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MRMediaRemoteCopySendCommandErrorDescription();
  v8 = *MEMORY[0x277CCA450];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:error userInfo:v5];

  return v6;
}

- (void)connectToExternalDevice:(id)device completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[WFMediaPlaybackController connectToExternalDevice:completion:]";
    v27 = 2112;
    v28 = deviceCopy;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Connecting to external device: %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__WFMediaPlaybackController_connectToExternalDevice_completion___block_invoke;
  aBlock[3] = &unk_278C21360;
  v9 = deviceCopy;
  v20 = v9;
  selfCopy = self;
  v10 = completionCopy;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  if ([v9 isConnected])
  {
    queue = [(WFMediaPlaybackController *)self queue];
    dispatch_async(queue, v11);
  }

  else
  {
    objc_initWeak(buf, v9);
    v15 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v18, buf);
    v16 = v11;
    v17 = v10;
    v13 = [(WFMediaPlaybackController *)self queue:v15];
    [v9 setConnectionStateCallback:&v15 withQueue:v13];

    v23 = *MEMORY[0x277D27908];
    v24 = @"WFMediaPlaybackController";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v9 connectWithOptions:0 userInfo:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __64__WFMediaPlaybackController_connectToExternalDevice_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = getWFActionsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[WFMediaPlaybackController connectToExternalDevice:completion:]_block_invoke";
    _os_log_impl(&dword_23DE30000, v2, OS_LOG_TYPE_DEBUG, "%s Successfully connected to external device.", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) customOrigin];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[WFMediaPlaybackController connectToExternalDevice:completion:]_block_invoke";
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_ERROR, "%s No origin for %{public}@", &v7, 0x16u);
    }

    v6 = [*(a1 + 40) createSendCommandError:6];
    (*(*(a1 + 48) + 16))();
  }
}

void __64__WFMediaPlaybackController_connectToExternalDevice_completion___block_invoke_202(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2 == 3)
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[WFMediaPlaybackController connectToExternalDevice:completion:]_block_invoke";
      v10 = 2114;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = a3;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s Connection failed %{public}@: %{public}@", &v8, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    (*(*(a1 + 32) + 16))();
LABEL_7:
    [WeakRetained setConnectionStateCallback:0 withQueue:0];
  }
}

- (void)connectToEndpoint:(id)endpoint completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[WFMediaPlaybackController connectToEndpoint:completion:]";
    v15 = 2112;
    v16 = endpointCopy;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Connecting to endpoint: %@", &v13, 0x16u);
  }

  if (endpointCopy && ![endpointCopy isLocalEndpoint])
  {
    externalDevice = [endpointCopy externalDevice];
    if (externalDevice)
    {
      externalDevice2 = [endpointCopy externalDevice];
      [(WFMediaPlaybackController *)self connectToExternalDevice:externalDevice2 completion:completionCopy];
    }

    else
    {
      v12 = getWFActionsLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[WFMediaPlaybackController connectToEndpoint:completion:]";
        v15 = 2114;
        v16 = endpointCopy;
        _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s No device for endpoint %{public}@", &v13, 0x16u);
      }

      externalDevice2 = [(WFMediaPlaybackController *)self createSendCommandError:2];
      (*(completionCopy + 2))(completionCopy, 0, 0, externalDevice2);
    }
  }

  else
  {
    LocalOrigin = MRMediaRemoteGetLocalOrigin();
    (*(completionCopy + 2))(completionCopy, 0, LocalOrigin, 0);
  }
}

- (void)getRemoteControlEndpointsMatchingUIDs:(id)ds completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]";
    v14 = 2112;
    v15 = dsCopy;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Getting remote control endpoints for UIDs: %@", buf, 0x16u);
  }

  v9 = getWFActionsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]";
    _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s Nullifying existing reconSession.", buf, 0xCu);
  }

  [(WFMediaPlaybackController *)self setReconSession:0];
  [(WFMediaPlaybackController *)self setReconSession:MRAVReconnaissanceSessionCreateWithEndpointFeatures()];
  [(WFMediaPlaybackController *)self reconSession];
  MRAVReconnaissanceSessionSetWaitForUnanimousEndpoints();
  [(WFMediaPlaybackController *)self reconSession];
  MRAVReconnaissanceSessionSetReturnPartialResults();
  [(WFMediaPlaybackController *)self reconSession];
  v11 = completionCopy;
  v10 = completionCopy;
  MRAVReconnaissanceSessionBeginEndpointsSearch();
}

void __78__WFMediaPlaybackController_getRemoteControlEndpointsMatchingUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  if (v7)
  {
    if ([v7 code] == 26 && (objc_msgSend(v7, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277D27AE0], v12 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D27AE0]), v11, v10, v12))
    {
      v13 = [v8 count];
      v14 = getWFActionsLogObject();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        if (!v15)
        {
          goto LABEL_13;
        }

        v20 = 136315138;
        v21 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
        v16 = "%s Search for remote control endpoints timed out with no results.";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 12;
        goto LABEL_12;
      }

      if (v15)
      {
        v20 = 136315394;
        v21 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
        v22 = 2114;
        v23 = v8;
        v16 = "%s Search for remote control endpoints timed out with partial results. Found endpoints: %{public}@";
LABEL_9:
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 22;
LABEL_12:
        _os_log_impl(&dword_23DE30000, v17, v18, v16, &v20, v19);
      }
    }

    else
    {
      v14 = getWFActionsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
        v22 = 2114;
        v23 = v7;
        v16 = "%s Search for remote control endpoints failed with error: %{public}@";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = getWFActionsLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 136315650;
      v21 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
      v22 = 2048;
      v23 = [v8 count];
      v24 = 2048;
      v25 = [v9 count];
      v16 = "%s Search for remote control endpoints succeeded. Found %lu endpoints, %lu devices.";
      v17 = v14;
      v18 = OS_LOG_TYPE_INFO;
      v19 = 32;
      goto LABEL_12;
    }
  }

LABEL_13:

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v9, v7);
}

- (void)getActivePlayerPathWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFActionsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[WFMediaPlaybackController getActivePlayerPathWithCompletion:]";
    _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_INFO, "%s Querying active player path...", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__WFMediaPlaybackController_getActivePlayerPathWithCompletion___block_invoke;
  v7[3] = &unk_278C19508;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(WFMediaPlaybackController *)self getPreferredMediaControlOriginWithCompletion:v7];
}

void __63__WFMediaPlaybackController_getActivePlayerPathWithCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[WFMediaPlaybackController getActivePlayerPathWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_INFO, "%s Preferred media control origin is local, falling back to [MPCPlayerPath deviceActivePlayerPath]...", &v10, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = [getMPCPlayerPathClass() deviceActivePlayerPath];
    (*(v5 + 16))(v5, v6, 1);
  }

  else
  {
    v6 = [objc_opt_class() bundleIdentifierForMediaPlaybackApplication:1];
    v8 = [getMPCPlayerPathClass() pathWithCustomOrigin:a2 bundleID:v6 playerID:0];
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[WFMediaPlaybackController getActivePlayerPathWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = a2;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s Preferred media control origin is not local (%@)—constructed player path with bundle ID %@", &v10, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)clearQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(getMPCPlayerRequestClass());
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WFMediaPlaybackController_clearQueueWithCompletion___block_invoke;
  v7[3] = &unk_278C194E0;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [v4 performWithCompletion:v7];
}

void __54__WFMediaPlaybackController_clearQueueWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 tracklist];
    v4 = [v3 resetCommand];
    v6 = [v4 clearUpNextItems];

    if (v6)
    {
      [getMPCPlayerChangeRequestClass() performRequest:v6 completion:*(a1 + 32)];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)queueItemsWithIdentifierSets:(id)sets inAdditionMode:(unint64_t)mode completion:(id)completion
{
  setsCopy = sets;
  completionCopy = completion;
  if (!setsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMediaPlaybackController.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"identifierSets"}];
  }

  if ([setsCopy count])
  {
    v11 = [getMPModelSongClass() kindWithVariants:1];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v12 = getMPModelLibraryRequestClass_softClass;
    v30 = getMPModelLibraryRequestClass_softClass;
    if (!getMPModelLibraryRequestClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getMPModelLibraryRequestClass_block_invoke;
      v26[3] = &unk_278C222B8;
      v26[4] = &v27;
      __getMPModelLibraryRequestClass_block_invoke(v26);
      v12 = v28[3];
    }

    v13 = v12;
    _Block_object_dispose(&v27, 8);
    v14 = objc_alloc_init(v12);
    [v14 setItemKind:v11];
    emptyPropertySet = [getMPPropertySetClass() emptyPropertySet];
    [v14 setItemProperties:emptyPropertySet];

    [v14 setAllowedItemIdentifiers:setsCopy];
    getMPCPlayerRequestClass();
    firstObject = [setsCopy firstObject];
    v17 = [v14 playbackIntentWithStartItemIdentifiers:firstObject];

    [v17 setShuffleMode:-1];
    v18 = objc_alloc_init(getMPCPlayerRequestClass());
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__WFMediaPlaybackController_queueItemsWithIdentifierSets_inAdditionMode_completion___block_invoke;
    v22[3] = &unk_278C194B8;
    v24 = completionCopy;
    modeCopy = mode;
    v23 = v17;
    v19 = v17;
    v20 = [v18 performWithCompletion:v22];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __84__WFMediaPlaybackController_queueItemsWithIdentifierSets_inAdditionMode_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = a1[6];
    if (v6 == 1)
    {
      v7 = [v12 tracklist];
      v8 = [v7 insertCommand];
      v9 = [v8 insertAtEndOfTracklistWithPlaybackIntent:a1[4]];
    }

    else
    {
      if (v6)
      {
LABEL_9:
        v10 = *(a1[5] + 16);
        goto LABEL_10;
      }

      v7 = [v12 tracklist];
      v8 = [v7 insertCommand];
      v9 = [v8 insertAfterPlayingItemWithPlaybackIntent:a1[4]];
    }

    v11 = v9;

    if (v11)
    {
      [getMPCPlayerChangeRequestClass() performRequest:v11 completion:a1[5]];

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10 = *(a1[5] + 16);
LABEL_10:
  v10();
LABEL_11:
}

- (void)queueiTunesStoreItems:(id)items inAdditionMode:(unint64_t)mode completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  v10 = [getMPModelSongClass() kindWithVariants:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke;
  v13[3] = &unk_278C19490;
  v14 = v10;
  v11 = v10;
  v12 = [itemsCopy if_map:v13];

  [(WFMediaPlaybackController *)self queueItemsWithIdentifierSets:v12 inAdditionMode:mode completion:completionCopy];
}

id __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(getMPIdentifierSetClass());
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_2;
  v9[3] = &unk_278C19468;
  v10 = v3;
  v6 = v3;
  v7 = [v4 initWithModelKind:v5 block:v9];

  return v7;
}

void __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_3;
  v3[3] = &unk_278C19440;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "longLongValue")}];
}

- (void)queueMediaItems:(id)items inAdditionMode:(unint64_t)mode completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  defaultMediaLibrary = [getMPMediaLibraryClass() defaultMediaLibrary];
  v11 = [getMPModelSongClass() kindWithVariants:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke;
  v18 = &unk_278C19418;
  v19 = v11;
  v20 = defaultMediaLibrary;
  v12 = defaultMediaLibrary;
  v13 = v11;
  v14 = [itemsCopy if_map:&v15];

  [(WFMediaPlaybackController *)self queueItemsWithIdentifierSets:v14 inAdditionMode:mode completion:completionCopy, v15, v16, v17, v18];
}

id __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(getMPIdentifierSetClass());
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_2;
  v9[3] = &unk_278C193F0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v6 = v3;
  v7 = [v4 initWithModelKind:v5 block:v9];

  return v7;
}

void __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_3;
  v6[3] = &unk_278C193C8;
  v7 = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
}

void __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(v2, "persistentID")}];
}

- (void)getPreferredMediaControlOriginWithCompletion:(id)completion
{
  completionCopy = completion;
  LocalOrigin = MRMediaRemoteGetLocalOrigin();
  (*(completion + 2))(completionCopy, LocalOrigin, 1);
}

- (void)getPreferredPlaybackOriginWithCompletion:(id)completion
{
  completionCopy = completion;
  LocalOrigin = MRMediaRemoteGetLocalOrigin();
  (*(completion + 2))(completionCopy, LocalOrigin, 1);
}

- (void)getCurrentlyPlayingMediaWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFActionsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]";
    _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_INFO, "%s Starting fetching currently playing song information...", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke;
  v7[3] = &unk_278C193A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(WFMediaPlaybackController *)self getActivePlayerPathWithCompletion:v7];
}

void __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"remote companion";
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *buf = 136315651;
    if (a3)
    {
      v7 = @"local";
    }

    *&buf[12] = 2113;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v33 = v7;
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_INFO, "%s Resolved active player path: %{private}@, %{public}@", buf, 0x20u);
  }

  if (v5)
  {
    v8 = objc_alloc(getMPPropertySetClass());
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v9 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
    v27 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
    if (!getMPModelRelationshipGenericSongSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPModelRelationshipGenericSongSymbolLoc_block_invoke;
      v33 = &unk_278C222B8;
      v34 = &v24;
      v10 = MediaPlayerLibrary();
      v11 = dlsym(v10, "MPModelRelationshipGenericSong");
      *(v34[1] + 24) = v11;
      getMPModelRelationshipGenericSongSymbolLoc_ptr = *(v34[1] + 24);
      v9 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v9)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipGenericSong(void)"];
      [v19 handleFailureInFunction:v20 file:@"WFMediaPlaybackController.m" lineNumber:54 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v12 = *v9;
    v13 = v12;
    if (a3)
    {
      v30 = v12;
      v14 = [getMPPropertySetClass() emptyPropertySet];
      v31 = v14;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    }

    else
    {
      v28 = v12;
      v14 = [objc_opt_class() songPropertySet];
      v29 = v14;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }
    v15 = ;
    v16 = [v8 initWithProperties:MEMORY[0x277CBEBF8] relationships:v15];

    v17 = objc_alloc_init(getMPCPlayerRequestClass());
    [v17 setPlayerPath:v5];
    [v17 setPlayingItemProperties:v16];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke_179;
    v21[3] = &unk_278C19378;
    v22 = *(a1 + 40);
    v23 = a3;
    v18 = [v17 performWithCompletion:v21];
  }

  else
  {
    (*(*(a1 + 40) + 16))(0.0);
  }
}

void __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke_179(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315651;
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *&buf[12] = 2113;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    *&buf[24] = v6;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_INFO, "%s MPCPlayerRequest responded: %{private}@ with error: %{public}@", buf, 0x20u);
  }

  v8 = [v5 tracklist];
  v9 = [v8 playingItem];

  v10 = [v9 metadataObject];
  if (!v10)
  {
    (*(*(a1 + 32) + 16))(0.0);
    goto LABEL_21;
  }

  v11 = getWFActionsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *&buf[12] = 2113;
    *&buf[14] = v10;
    _os_log_impl(&dword_23DE30000, v11, OS_LOG_TYPE_INFO, "%s Fetched now playing media: %{private}@", buf, 0x16u);
  }

  if (*(a1 + 40) != 1)
  {
    v19 = getWFActionsLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23DE30000, v19, OS_LOG_TYPE_INFO, "%s Making a MPMediaItem from model object", buf, 0xCu);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v20 = getMPMediaItemClass_softClass;
    v27 = getMPMediaItemClass_softClass;
    if (!getMPMediaItemClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPMediaItemClass_block_invoke;
      *&buf[24] = &unk_278C222B8;
      *&v29 = &v24;
      __getMPMediaItemClass_block_invoke(buf);
      v20 = v25[3];
    }

    v21 = v20;
    _Block_object_dispose(&v24, 8);
    v18 = [v20 itemFromModelObject:{v10, v24}];
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_17:
    v30 = 0;
    v29 = 0u;
    memset(buf, 0, sizeof(buf));
    goto LABEL_18;
  }

  v12 = [v10 song];
  v13 = [v12 identifiers];
  v14 = [v13 library];
  v15 = [v14 persistentID];

  v16 = getWFActionsLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *&buf[12] = 2049;
    *&buf[14] = v15;
    _os_log_impl(&dword_23DE30000, v16, OS_LOG_TYPE_INFO, "%s Making a local MPMediaItem from pid %{private}lld", buf, 0x16u);
  }

  v17 = [getMPMediaLibraryClass() defaultMediaLibrary];
  v18 = [v17 itemWithPersistentID:v15 verifyExistence:0];

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_10:
  objc_msgSend_duration(v9);
LABEL_18:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v23 = *&v29 + (v22 - *buf) * *(&v29 + 2);
  if (v23 >= *&buf[24])
  {
    v23 = *&buf[24];
  }

  (*(*(a1 + 32) + 16))(fmax(v23, 0.0));

LABEL_21:
}

- (WFMediaPlaybackController)init
{
  v8.receiver = self;
  v8.super_class = WFMediaPlaybackController;
  v2 = [(WFMediaPlaybackController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.shortcuts.WFMediaController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

+ (id)songPropertySet
{
  v107[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v3 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  v99 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  if (!getMPModelPropertyGenreNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary();
    v97[3] = dlsym(v4, "MPModelPropertyGenreName");
    getMPModelPropertyGenreNameSymbolLoc_ptr = v97[3];
    v3 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyGenreName(void)"];
    [currentHandler handleFailureInFunction:v62 file:@"WFMediaPlaybackController.m" lineNumber:75 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v107[0] = *v3;
  v5 = MEMORY[0x277CBEA60];
  v6 = v107[0];
  v7 = [v5 arrayWithObjects:v107 count:1];

  v95 = [v2 initWithProperties:v7 relationships:0];
  v8 = objc_alloc(getMPPropertySetClass());
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v9 = getMPModelPropertyAlbumTitleSymbolLoc_ptr;
  v99 = getMPModelPropertyAlbumTitleSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTitleSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary();
    v97[3] = dlsym(v10, "MPModelPropertyAlbumTitle");
    getMPModelPropertyAlbumTitleSymbolLoc_ptr = v97[3];
    v9 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumTitle(void)"];
    [currentHandler2 handleFailureInFunction:v64 file:@"WFMediaPlaybackController.m" lineNumber:68 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v11 = *v9;
  v105[0] = v11;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v12 = getMPModelPropertyAlbumDiscCountSymbolLoc_ptr;
  v99 = getMPModelPropertyAlbumDiscCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDiscCountSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary();
    v97[3] = dlsym(v13, "MPModelPropertyAlbumDiscCount");
    getMPModelPropertyAlbumDiscCountSymbolLoc_ptr = v97[3];
    v12 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v12)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumDiscCount(void)"];
    [currentHandler3 handleFailureInFunction:v66 file:@"WFMediaPlaybackController.m" lineNumber:69 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v14 = *v12;
  v105[1] = v14;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v15 = getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr;
  v99 = getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary();
    v97[3] = dlsym(v16, "MPModelPropertyAlbumReleaseDateComponents");
    getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = v97[3];
    v15 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v15)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumReleaseDateComponents(void)"];
    [currentHandler4 handleFailureInFunction:v68 file:@"WFMediaPlaybackController.m" lineNumber:70 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v17 = *v15;
  v105[2] = v17;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v18 = getMPModelPropertyAlbumTrackCountSymbolLoc_ptr;
  v99 = getMPModelPropertyAlbumTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTrackCountSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary();
    v97[3] = dlsym(v19, "MPModelPropertyAlbumTrackCount");
    getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = v97[3];
    v18 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v18)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumTrackCount(void)"];
    [currentHandler5 handleFailureInFunction:v70 file:@"WFMediaPlaybackController.m" lineNumber:71 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v106 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v106;
  v22 = [v20 arrayWithObjects:v105 count:4];

  v94 = [v8 initWithProperties:v22 relationships:0];
  v23 = objc_alloc(getMPPropertySetClass());
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v24 = getMPModelPropertyArtistNameSymbolLoc_ptr;
  v99 = getMPModelPropertyArtistNameSymbolLoc_ptr;
  if (!getMPModelPropertyArtistNameSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary();
    v97[3] = dlsym(v25, "MPModelPropertyArtistName");
    getMPModelPropertyArtistNameSymbolLoc_ptr = v97[3];
    v24 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v24)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyArtistName(void)"];
    [currentHandler6 handleFailureInFunction:v72 file:@"WFMediaPlaybackController.m" lineNumber:64 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v104 = *v24;
  v26 = MEMORY[0x277CBEA60];
  v27 = v104;
  v28 = [v26 arrayWithObjects:&v104 count:1];

  v93 = [v23 initWithProperties:v28 relationships:0];
  v92 = objc_alloc(getMPPropertySetClass());
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v29 = getMPModelPropertySongTitleSymbolLoc_ptr;
  v99 = getMPModelPropertySongTitleSymbolLoc_ptr;
  if (!getMPModelPropertySongTitleSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary();
    v97[3] = dlsym(v30, "MPModelPropertySongTitle");
    getMPModelPropertySongTitleSymbolLoc_ptr = v97[3];
    v29 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v29)
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongTitle(void)"];
    [currentHandler7 handleFailureInFunction:v74 file:@"WFMediaPlaybackController.m" lineNumber:55 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v31 = *v29;
  v103[0] = v31;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v32 = getMPModelPropertySongDurationSymbolLoc_ptr;
  v99 = getMPModelPropertySongDurationSymbolLoc_ptr;
  if (!getMPModelPropertySongDurationSymbolLoc_ptr)
  {
    v33 = MediaPlayerLibrary();
    v97[3] = dlsym(v33, "MPModelPropertySongDuration");
    getMPModelPropertySongDurationSymbolLoc_ptr = v97[3];
    v32 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v32)
  {
    currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
    v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongDuration(void)"];
    [currentHandler8 handleFailureInFunction:v76 file:@"WFMediaPlaybackController.m" lineNumber:56 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v34 = *v32;
  v103[1] = v34;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v35 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  v99 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongDiscNumberSymbolLoc_ptr)
  {
    v36 = MediaPlayerLibrary();
    v97[3] = dlsym(v36, "MPModelPropertySongDiscNumber");
    getMPModelPropertySongDiscNumberSymbolLoc_ptr = v97[3];
    v35 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v35)
  {
    currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
    v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongDiscNumber(void)"];
    [currentHandler9 handleFailureInFunction:v78 file:@"WFMediaPlaybackController.m" lineNumber:57 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v37 = *v35;
  v103[2] = v37;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v38 = getMPModelPropertySongExplicitSymbolLoc_ptr;
  v99 = getMPModelPropertySongExplicitSymbolLoc_ptr;
  if (!getMPModelPropertySongExplicitSymbolLoc_ptr)
  {
    v39 = MediaPlayerLibrary();
    v97[3] = dlsym(v39, "MPModelPropertySongExplicit");
    getMPModelPropertySongExplicitSymbolLoc_ptr = v97[3];
    v38 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v38)
  {
    currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
    v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongExplicit(void)"];
    [currentHandler10 handleFailureInFunction:v80 file:@"WFMediaPlaybackController.m" lineNumber:58 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v40 = *v38;
  v103[3] = v40;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v41 = getMPModelPropertySongTrackNumberSymbolLoc_ptr;
  v99 = getMPModelPropertySongTrackNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongTrackNumberSymbolLoc_ptr)
  {
    v42 = MediaPlayerLibrary();
    v97[3] = dlsym(v42, "MPModelPropertySongTrackNumber");
    getMPModelPropertySongTrackNumberSymbolLoc_ptr = v97[3];
    v41 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v41)
  {
    currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongTrackNumber(void)"];
    [currentHandler11 handleFailureInFunction:v82 file:@"WFMediaPlaybackController.m" lineNumber:59 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v43 = *v41;
  v103[4] = v43;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v44 = getMPModelPropertySongArtworkSymbolLoc_ptr;
  v99 = getMPModelPropertySongArtworkSymbolLoc_ptr;
  if (!getMPModelPropertySongArtworkSymbolLoc_ptr)
  {
    v45 = MediaPlayerLibrary();
    v97[3] = dlsym(v45, "MPModelPropertySongArtwork");
    getMPModelPropertySongArtworkSymbolLoc_ptr = v97[3];
    v44 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v44)
  {
    currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongArtwork(void)"];
    [currentHandler12 handleFailureInFunction:v84 file:@"WFMediaPlaybackController.m" lineNumber:60 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v91 = v31;
  v46 = *v44;
  v103[5] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:6];
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v48 = getMPModelRelationshipSongArtistSymbolLoc_ptr;
  v99 = getMPModelRelationshipSongArtistSymbolLoc_ptr;
  if (!getMPModelRelationshipSongArtistSymbolLoc_ptr)
  {
    v49 = MediaPlayerLibrary();
    v97[3] = dlsym(v49, "MPModelRelationshipSongArtist");
    getMPModelRelationshipSongArtistSymbolLoc_ptr = v97[3];
    v48 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v48)
  {
    currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
    v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipSongArtist(void)"];
    [currentHandler13 handleFailureInFunction:v86 file:@"WFMediaPlaybackController.m" lineNumber:63 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v50 = *v48;
  v102[0] = v93;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v51 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  v99 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  v100[0] = v50;
  if (!getMPModelRelationshipSongAlbumSymbolLoc_ptr)
  {
    v52 = MediaPlayerLibrary();
    v97[3] = dlsym(v52, "MPModelRelationshipSongAlbum");
    getMPModelRelationshipSongAlbumSymbolLoc_ptr = v97[3];
    v51 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v51)
  {
    currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
    v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipSongAlbum(void)"];
    [currentHandler14 handleFailureInFunction:v88 file:@"WFMediaPlaybackController.m" lineNumber:67 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v53 = *v51;
  v100[1] = v53;
  v102[1] = v94;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v54 = getMPModelRelationshipSongGenreSymbolLoc_ptr;
  v99 = getMPModelRelationshipSongGenreSymbolLoc_ptr;
  if (!getMPModelRelationshipSongGenreSymbolLoc_ptr)
  {
    v55 = MediaPlayerLibrary();
    v97[3] = dlsym(v55, "MPModelRelationshipSongGenre");
    getMPModelRelationshipSongGenreSymbolLoc_ptr = v97[3];
    v54 = v97[3];
  }

  _Block_object_dispose(&v96, 8);
  if (!v54)
  {
    currentHandler15 = [MEMORY[0x277CCA890] currentHandler];
    v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipSongGenre(void)"];
    [currentHandler15 handleFailureInFunction:v90 file:@"WFMediaPlaybackController.m" lineNumber:74 description:{@"%s", dlerror()}];

LABEL_64:
    __break(1u);
  }

  v101 = *v54;
  v102[2] = v95;
  v56 = MEMORY[0x277CBEAC0];
  v57 = v101;
  v58 = [v56 dictionaryWithObjects:v102 forKeys:v100 count:3];

  v59 = [v92 initWithProperties:v47 relationships:v58];

  return v59;
}

+ (id)bundleIdentifierForMediaPlaybackApplication:(unint64_t)application
{
  if (application == 2)
  {
    v4 = MEMORY[0x277D7A298];
    goto LABEL_7;
  }

  if (application == 1)
  {
    v4 = MEMORY[0x277D7A288];
LABEL_7:
    v3 = *v4;
    goto LABEL_8;
  }

  if (application)
  {
    goto LABEL_9;
  }

  v3 = [self bundleIdentifierForMediaPlaybackApplication:1];
LABEL_8:
  a2 = v3;
LABEL_9:

  return a2;
}

- (void)getPreferredMediaControlDestinationForOutputDeviceUIDs:(id)ds completionBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  blockCopy = block;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[WFMediaPlaybackController(MPCAssistant) getPreferredMediaControlDestinationForOutputDeviceUIDs:completionBlock:]";
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Querying preferred media control MPCAssistant destination...", buf, 0xCu);
  }

  if ([dsCopy count])
  {
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[WFMediaPlaybackController(MPCAssistant) getPreferredMediaControlDestinationForOutputDeviceUIDs:completionBlock:]";
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s Output device UIDs are given. Returning local destination, with the UIDs set", buf, 0xCu);
    }

    nowPlayingApplicationDestination = [getMPCAssistantMutableRemoteControlDestinationClass() nowPlayingApplicationDestination];
    [nowPlayingApplicationDestination setOutputDeviceUIDs:dsCopy];
    blockCopy[2](blockCopy, nowPlayingApplicationDestination);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __114__WFMediaPlaybackController_MPCAssistant__getPreferredMediaControlDestinationForOutputDeviceUIDs_completionBlock___block_invoke;
    v11[3] = &unk_278C1A428;
    v12 = blockCopy;
    [(WFMediaPlaybackController *)self getPreferredMediaControlOriginWithCompletion:v11];
    nowPlayingApplicationDestination = v12;
  }
}

void __114__WFMediaPlaybackController_MPCAssistant__getPreferredMediaControlDestinationForOutputDeviceUIDs_completionBlock___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"remote companion";
    v10 = "[WFMediaPlaybackController(MPCAssistant) getPreferredMediaControlDestinationForOutputDeviceUIDs:completionBlock:]_block_invoke";
    v9 = 136315650;
    if (a3)
    {
      v7 = @"local";
    }

    v11 = 2112;
    v12 = a2;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_INFO, "%s Constructing playback destination for origin %@ (%{public}@), player bundle ID nil (MR will pick whatever player is active)", &v9, 0x20u);
  }

  v8 = [objc_alloc(getMPCAssistantMutableRemoteControlDestinationClass()) initWithAppBundleID:0 playerID:0 origin:a2];
  (*(*(a1 + 32) + 16))(*(a1 + 32), v8);
}

- (void)getPreferredPlaybackDestinationForPlaybackArchive:(id)archive completionBlock:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[WFMediaPlaybackController(MPCAssistant) getPreferredPlaybackDestinationForPlaybackArchive:completionBlock:]";
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_INFO, "%s Querying preferred playback MPCAssistant destination...", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__WFMediaPlaybackController_MPCAssistant__getPreferredPlaybackDestinationForPlaybackArchive_completionBlock___block_invoke;
  v8[3] = &unk_278C1A428;
  v9 = blockCopy;
  v7 = blockCopy;
  [(WFMediaPlaybackController *)self getPreferredPlaybackOriginWithCompletion:v8];
}

void __109__WFMediaPlaybackController_MPCAssistant__getPreferredPlaybackDestinationForPlaybackArchive_completionBlock___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [WFMediaPlaybackController bundleIdentifierForMediaPlaybackApplication:a3 ^ 1u];
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"remote companion";
    v11 = 136315906;
    v12 = "[WFMediaPlaybackController(MPCAssistant) getPreferredPlaybackDestinationForPlaybackArchive:completionBlock:]_block_invoke";
    v13 = 2112;
    v14 = a2;
    if (a3)
    {
      v8 = @"local";
    }

    v15 = 2114;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_INFO, "%s Constructing playback destination for origin %@ (%{public}@), player bundle ID %@", &v11, 0x2Au);
  }

  v9 = [objc_alloc(getMPCAssistantMutableRemoteControlDestinationClass()) initWithAppBundleID:v6 playerID:0 origin:a2];
  (*(*(a1 + 32) + 16))(*(a1 + 32), v9, v10);
}

@end