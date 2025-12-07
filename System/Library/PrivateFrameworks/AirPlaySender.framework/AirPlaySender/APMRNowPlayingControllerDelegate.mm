@interface APMRNowPlayingControllerDelegate
- (APMRNowPlayingControllerDelegate)initWithMetadataSource:(OpaqueAPMetadataSource *)source;
- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes;
- (void)controller:(id)controller didLoadArtworkForContentItems:(id)items;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)controller:(id)controller playerPathDidChange:(id)change;
- (void)controller:(id)controller supportedCommandsDidChangeFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)flushMetadata;
- (void)notifyContentItemUpdates:(id)updates;
- (void)notifyNewContentItems:(id)items;
- (void)notifyNewNowPlayingClient:(id)client;
- (void)notifyNewPlaybackState:(unsigned int)state;
- (void)notifyNewProxiableSupportedCommands:(id)commands;
- (void)start;
- (void)stop;
@end

@implementation APMRNowPlayingControllerDelegate

- (APMRNowPlayingControllerDelegate)initWithMetadataSource:(OpaqueAPMetadataSource *)source
{
  v14.receiver = self;
  v14.super_class = APMRNowPlayingControllerDelegate;
  v4 = [(APMRNowPlayingControllerDelegate *)&v14 init];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v4->_metadataSource = CFRetain(source);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v5 = getMRNowPlayingControllerConfigurationClass_softClass;
  v24 = __Block_byref_object_dispose_;
  v25 = getMRNowPlayingControllerConfigurationClass_softClass;
  if (!getMRNowPlayingControllerConfigurationClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRNowPlayingControllerConfigurationClass_block_invoke;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRNowPlayingControllerConfigurationClass_block_invoke(&v15);
    v5 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v6 = [[v5 alloc] initWithDestination:source->var11];
  v7 = v6;
  if (!v6)
  {
    v13 = 1414;
LABEL_15:
    [(APMRNowPlayingControllerDelegate *)v13 initWithMetadataSource:v4];
    v4 = 0;
    goto LABEL_12;
  }

  [v6 setRequestPlaybackState:1];
  [v7 setRequestSupportedCommands:1];
  [v7 setRequestClientProperties:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v8 = getMRPlaybackQueueRequestClass_softClass;
  v24 = __Block_byref_object_dispose_;
  v25 = getMRPlaybackQueueRequestClass_softClass;
  if (!getMRPlaybackQueueRequestClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRPlaybackQueueRequestClass_block_invoke;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRPlaybackQueueRequestClass_block_invoke(&v15);
    v8 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  defaultPlaybackQueueRequest = [v8 defaultPlaybackQueueRequest];
  [defaultPlaybackQueueRequest setArtworkHeight:600.0];
  [defaultPlaybackQueueRequest setArtworkWidth:600.0];
  [v7 setPlaybackQueueRequest:defaultPlaybackQueueRequest];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v10 = getMRNowPlayingControllerClass_softClass;
  v24 = __Block_byref_object_dispose_;
  v25 = getMRNowPlayingControllerClass_softClass;
  if (!getMRNowPlayingControllerClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMRNowPlayingControllerClass_block_invoke;
    v18 = &unk_27849ACC8;
    v19 = &v20;
    __getMRNowPlayingControllerClass_block_invoke(&v15);
    v10 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v11 = [[v10 alloc] initWithConfiguration:v7];
  v4->_nowPlayingController = v11;
  if (!v11)
  {
    v13 = 1426;
    goto LABEL_15;
  }

  [(MRNowPlayingController *)v11 setDelegate:v4];
LABEL_12:

  return v4;
}

- (void)dealloc
{
  metadataSource = self->_metadataSource;
  if (metadataSource)
  {
    CFRelease(metadataSource);
    self->_metadataSource = 0;
  }

  self->_nowPlayingController = 0;
  v4.receiver = self;
  v4.super_class = APMRNowPlayingControllerDelegate;
  [(APMRNowPlayingControllerDelegate *)&v4 dealloc];
}

- (void)start
{
  [(MRNowPlayingController *)self->_nowPlayingController beginLoadingUpdates];
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    [(APMRNowPlayingControllerDelegate *)self start];
  }
}

- (void)stop
{
  [(MRNowPlayingController *)self->_nowPlayingController endLoadingUpdates];
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    [(APMRNowPlayingControllerDelegate *)self stop];
  }
}

- (void)flushMetadata
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 50)
  {
    v4 = self->_metadataSource;
    if (gLogCategory_APMetadataSource == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      v4 = self->_metadataSource;
    }

    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate flushMetadata]", 33554482, "[%{ptr}] Delegate flush all metadata\n", v4);
  }

LABEL_5:
  CFRetain(metadataSource);
  var1 = metadataSource->var1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APMRNowPlayingControllerDelegate_flushMetadata__block_invoke;
  block[3] = &unk_27849AC08;
  block[4] = self;
  block[5] = metadataSource;
  dispatch_async(var1, block);
}

void __49__APMRNowPlayingControllerDelegate_flushMetadata__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMetadataSource <= 40 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    __49__APMRNowPlayingControllerDelegate_flushMetadata__block_invoke_cold_1(a1, a2, a3);
  }

  v4 = *(*(*(a1 + 32) + 8) + 88);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 88) = 0;
  }

  v5 = *(a1 + 40);
  Empty = CFDictionaryGetEmpty();
  metadataSource_handleNowPlayingInfoChangedInternal(v5, Empty, @"replace", 1);
  metadataSource_handleMRPlaybackStateChangedInternal(*(a1 + 40), 3);
  metadataSource_handleMRSupportedCommandsChangedInternal(*(a1 + 40), MEMORY[0x277CBEBF8]);
  v7 = *(a1 + 40);
  v8 = [getMRClientClass() localClient];
  metadataSource_handleNowPlayingClientChangedInternal(v7, v8);
  v9 = *(a1 + 40);

  CFRelease(v9);
}

void __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke(uint64_t a1)
{
  if (gLogCategory_APMetadataSource <= 40 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke_cold_1(a1);
  }

  v2 = *(*(*(a1 + 32) + 8) + 88);
  v3 = [*(a1 + 40) identifier];
  *(*(*(a1 + 32) + 8) + 88) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke_cold_2(a1 + 32, a1 + 40, v4);
  }

  metadataSource_handleNowPlayingInfoChangedInternal(*(a1 + 48), [*(a1 + 40) nowPlayingInfo], @"replace", 0);
  CFRelease(*(a1 + 48));
  v5 = *(a1 + 40);
}

- (void)notifyContentItemUpdates:(id)updates
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate notifyContentItemUpdates:]", 33554462, "[%{ptr}] Delegate notify content item updates: %@\n", metadataSource, updates);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:updates copyItems:1];
  if (v6)
  {
    CFRetain(metadataSource);
    v7 = v6;
    var1 = metadataSource->var1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__APMRNowPlayingControllerDelegate_notifyContentItemUpdates___block_invoke;
    block[3] = &unk_27849AC58;
    block[4] = updates;
    block[5] = self;
    block[6] = v6;
    block[7] = metadataSource;
    dispatch_async(var1, block);
  }

  else
  {
    [APMRNowPlayingControllerDelegate notifyContentItemUpdates:];
  }
}

- (void)notifyNewPlaybackState:(unsigned int)state
{
  v3 = *&state;
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate notifyNewPlaybackState:]", 33554462, "[%{ptr}] Delegate notify new playback state: %d\n", metadataSource, v3);
  }

  CFRetain(metadataSource);
  var1 = metadataSource->var1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__APMRNowPlayingControllerDelegate_notifyNewPlaybackState___block_invoke;
  block[3] = &__block_descriptor_44_e5_v8__0l;
  block[4] = metadataSource;
  v7 = v3;
  dispatch_async(var1, block);
}

void __59__APMRNowPlayingControllerDelegate_notifyNewPlaybackState___block_invoke(uint64_t a1)
{
  metadataSource_handleMRPlaybackStateChangedInternal(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __72__APMRNowPlayingControllerDelegate_notifyNewProxiableSupportedCommands___block_invoke(uint64_t a1)
{
  metadataSource_handleMRSupportedCommandsChangedInternal(*(a1 + 40), *(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);
}

- (void)notifyNewNowPlayingClient:(id)client
{
  if (client)
  {
    metadataSource = self->_metadataSource;
    if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate notifyNewNowPlayingClient:]", 33554462, "[%{ptr}] Delegate notify new client properties: %@\n", metadataSource, client);
    }

    v5 = [client copy];
    if (v5)
    {
      CFRetain(metadataSource);
      v6 = v5;
      var1 = metadataSource->var1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__APMRNowPlayingControllerDelegate_notifyNewNowPlayingClient___block_invoke;
      block[3] = &unk_27849AC30;
      block[5] = v5;
      block[6] = metadataSource;
      block[4] = client;
      dispatch_async(var1, block);
    }

    else
    {
      [APMRNowPlayingControllerDelegate notifyNewNowPlayingClient:];
    }
  }

  else
  {
    [APMRNowPlayingControllerDelegate notifyNewNowPlayingClient:];
    v5 = 0;
  }
}

void __62__APMRNowPlayingControllerDelegate_notifyNewNowPlayingClient___block_invoke(uint64_t *a1)
{
  metadataSource_handleNowPlayingClientChangedInternal(a1[6], a1[4]);
  CFRelease(a1[6]);
  v2 = a1[5];
}

- (void)controller:(id)controller didLoadResponse:(id)response
{
  playbackState = [response playbackState];
  proxiableSupportedCommands = [response proxiableSupportedCommands];
  clientProperties = [response clientProperties];
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    metadataSource = self->_metadataSource;
    v10 = [proxiableSupportedCommands count];
    if (gLogCategory_APMetadataSource > 40)
    {
      v11 = 0;
    }

    else
    {
      v11 = gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize() != 0;
    }

    LogPrintF(&gLogCategory_APMetadataSource, "-[APMRNowPlayingControllerDelegate controller:didLoadResponse:]", 33554482, "[%{ptr}] Delegate didLoadResponse: playbackState=%u. supportedCommands=%d. client=%@. %?@\n", metadataSource, playbackState, v10, clientProperties, v11, [response playbackQueue]);
  }

  -[APMRNowPlayingControllerDelegate notifyNewContentItems:](self, "notifyNewContentItems:", [objc_msgSend(response "playbackQueue")]);
  [(APMRNowPlayingControllerDelegate *)self notifyNewPlaybackState:playbackState];
  [(APMRNowPlayingControllerDelegate *)self notifyNewProxiableSupportedCommands:proxiableSupportedCommands];

  [(APMRNowPlayingControllerDelegate *)self notifyNewNowPlayingClient:clientProperties];
}

- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate controller:playbackQueueDidChangeFrom:to:]", 33554462, "[%{ptr}] Delegate playbackQueueDidChange to: %@\n", self->_metadataSource, to);
  }

  contentItems = [to contentItems];

  [(APMRNowPlayingControllerDelegate *)self notifyNewContentItems:contentItems];
}

- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate controller:contentItemsDidUpdateWithContentItemChanges:]", 33554462, "[%{ptr}] Delegate contentItemsDidUpdateWithContentItemChanges: %@\n", self->_metadataSource, changes);
  }

  [(APMRNowPlayingControllerDelegate *)self notifyContentItemUpdates:changes];
}

- (void)controller:(id)controller didLoadArtworkForContentItems:(id)items
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate controller:didLoadArtworkForContentItems:]", 33554462, "[%{ptr}] Delegate didLoadArtworkForContentItems: %@\n", self->_metadataSource, items);
  }

  v7 = [objc_msgSend(objc_msgSend(controller "response")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__APMRNowPlayingControllerDelegate_controller_didLoadArtworkForContentItems___block_invoke;
  v8[3] = &unk_27849ACA0;
  v8[4] = items;
  -[APMRNowPlayingControllerDelegate notifyContentItemUpdates:](self, "notifyContentItemUpdates:", [v7 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v8)}]);
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  v5 = *&to;
  if (gLogCategory_APMetadataSource <= 30)
  {
    v7 = *&from;
    if (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate controller:playbackStateDidChangeFrom:to:]", 33554462, "[%{ptr}] Delegate playbackStateDidChange: %d -> %d\n", self->_metadataSource, v7, v5);
    }
  }

  [(APMRNowPlayingControllerDelegate *)self notifyNewPlaybackState:v5];
}

- (void)controller:(id)controller supportedCommandsDidChangeFrom:(id)from to:(id)to
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    [APMRNowPlayingControllerDelegate controller:a2 supportedCommandsDidChangeFrom:controller to:?];
  }

  v7 = [objc_msgSend(controller "response")];

  [(APMRNowPlayingControllerDelegate *)self notifyNewProxiableSupportedCommands:v7];
}

- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate controller:clientPropertiesDidChangeFrom:to:]", 33554462, "[%{ptr}] Delegate clientPropertiesDidChange: %@ -> %@\n", self->_metadataSource, from, to);
  }

  [(APMRNowPlayingControllerDelegate *)self notifyNewNowPlayingClient:to];
}

- (void)controller:(id)controller playerPathDidChange:(id)change
{
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate controller:playerPathDidChange:]", 33554482, "[%{ptr}] Delegate playerPathDidChange to: %@\n", self->_metadataSource, change);
  }

  [(APMRNowPlayingControllerDelegate *)self flushMetadata];
}

- (void)notifyNewContentItems:(id)items
{
  metadataSource = self->_metadataSource;
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    v9 = metadataSource;
    itemsCopy = items;
    OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate notifyNewContentItems:]", items, "[%{ptr}] Delegate notify new content item: %@\n");
  }

  firstObject = [objc_msgSend(items firstObject];
  if (firstObject)
  {
    CFRetain(metadataSource);
    v7 = firstObject;
    var1 = metadataSource->var1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__APMRNowPlayingControllerDelegate_notifyNewContentItems___block_invoke;
    block[3] = &unk_27849AC30;
    block[4] = self;
    block[5] = firstObject;
    block[6] = metadataSource;
    dispatch_async(var1, block);
  }
}

void __61__APMRNowPlayingControllerDelegate_notifyContentItemUpdates___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 56) + 88))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      Count = CFArrayGetCount(*(a1 + 32));
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
          [ValueAtIndex identifier];
          if (FigCFEqual())
          {
            break;
          }

          if (v4 == ++v5)
          {
            goto LABEL_14;
          }
        }

        if (ValueAtIndex)
        {
          if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
          {
            v9 = *(*(a1 + 40) + 8);
            v10 = ValueAtIndex;
            OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate notifyContentItemUpdates:]_block_invoke", v7, "[%{ptr}] Current ContentItem update: %@\n");
          }

          metadataSource_handleNowPlayingInfoChangedInternal(*(a1 + 56), [ValueAtIndex nowPlayingInfo], @"update", 0);
        }
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

LABEL_14:
  CFRelease(*(a1 + 56));
  v8 = *(a1 + 48);
}

- (void)notifyNewProxiableSupportedCommands:(id)commands
{
  commandsCopy = commands;
  if (commands)
  {
    metadataSource = self->_metadataSource;
    if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      v8 = metadataSource;
      v9 = [commandsCopy count];
      OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSource, "[APMRNowPlayingControllerDelegate notifyNewProxiableSupportedCommands:]", v5, "[%{ptr}] Delegate notify new proxiable supported commands: %d\n");
    }

    commandsCopy = [commandsCopy copy];
    if (commandsCopy)
    {
      CFRetain(metadataSource);
      v6 = commandsCopy;
      var1 = metadataSource->var1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__APMRNowPlayingControllerDelegate_notifyNewProxiableSupportedCommands___block_invoke;
      block[3] = &unk_27849AC08;
      block[4] = commandsCopy;
      block[5] = metadataSource;
      dispatch_async(var1, block);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

@end