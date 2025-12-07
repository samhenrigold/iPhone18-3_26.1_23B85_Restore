@interface DYReplayController
- (BOOL)_handleArchiveLoadingForPlaybackRequest:(id)request replyKind:(int)kind;
- (BOOL)_loadArchives:(id)archives error:(id *)error;
- (BOOL)informReady;
- (BOOL)initializeTransportWith:(id)with;
- (BOOL)playbackArchive:(id)archive;
- (DYReplayController)init;
- (id)_playbackCurrentArchiveAndExperiments;
- (id)_popMessage;
- (void)_beginDebugArchive;
- (void)_deleteAllArchives;
- (void)_endPlayback;
- (void)_messageLoop;
- (void)_playbackArchiveWithExperiment:(id)experiment passingFuture:(id)future resolvingFuture:(BOOL)resolvingFuture;
- (void)_processMessage:(id)message;
- (void)_pushMessage:(id)message;
- (void)_recursivePlaybackWithFuture:(id)future usingExperiment:(id)experiment withToplevelFuture:(id)toplevelFuture;
- (void)dealloc;
@end

@implementation DYReplayController

- (DYReplayController)init
{
  v27.receiver = self;
  v27.super_class = DYReplayController;
  v2 = [(DYReplayController *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v2)];
    v6 = [v4 stringWithFormat:@"gputools.%@.%p", v5, v3];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    [(DYReplayController *)v3 setQueue:v7];

    v8 = objc_alloc_init(MEMORY[0x277D0AF50]);
    [(DYReplayController *)v3 setArchiveStack:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v3)];
    v11 = [v9 stringWithFormat:@"gputools.%@.%p.%@", v10, v3, @"messageLock"];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    messageLock = v3->_messageLock;
    v3->_messageLock = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v3)];
    v16 = [v14 stringWithFormat:@"gputools.%@.%p.%@", v15, v3, @"messageProcessingQueue"];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    messageProcessingQueue = v3->_messageProcessingQueue;
    v3->_messageProcessingQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    messageQueue = v3->_messageQueue;
    v3->_messageQueue = v19;

    v21 = objc_opt_new();
    profileBlockQueue = v3->_profileBlockQueue;
    v3->_profileBlockQueue = v21;

    v23 = objc_opt_new();
    profileBlockBackgroundQueue = v3->_profileBlockBackgroundQueue;
    v3->_profileBlockBackgroundQueue = v23;

    v25 = v3;
  }

  return v3;
}

- (void)dealloc
{
  origSourceMessageHandler = [(DYReplayController *)self origSourceMessageHandler];
  source = [(DYReplayController *)self source];
  [source setMessageHandler:origSourceMessageHandler];

  [(DYReplayController *)self setQueue:0];
  v5.receiver = self;
  v5.super_class = DYReplayController;
  [(DYReplayController *)&v5 dealloc];
}

- (BOOL)initializeTransportWith:(id)with
{
  withCopy = with;
  v5 = DYGetGlobalClientTransport();
  [(DYReplayController *)self setTransport:v5];

  transport = [(DYReplayController *)self transport];

  if (transport && (DYGetGlobalTransportSource(), v7 = objc_claimAutoreleasedReturnValue(), [(DYReplayController *)self setSource:v7], v7, [(DYReplayController *)self source], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    source = [(DYReplayController *)self source];
    [source suspend];

    source2 = [(DYReplayController *)self source];
    messageHandler = [source2 messageHandler];
    v12 = [messageHandler copy];
    [(DYReplayController *)self setOrigSourceMessageHandler:v12];

    objc_initWeak(&location, self);
    v17 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v18, &location);
    v13 = [(DYReplayController *)self source:v17];
    [v13 setMessageHandler:&v17];

    source3 = [(DYReplayController *)self source];
    [source3 resume];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v15 = 1;
  }

  else
  {
    _DYOLog();
    v15 = 0;
  }

  return v15;
}

void __46__DYReplayController_initializeTransportWith___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pushMessage:v3];
}

- (BOOL)informReady
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = DYGetInterposeVersion();
  v5 = v4;
  v6 = MEMORY[0x277D0AFE0];
  v17[0] = @"version";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277D0B010]];
  v18[0] = v7;
  v17[1] = @"interpose-feature-version";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v18[1] = v8;
  v17[2] = @"interpose-patch-version";
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v18[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v11 = [v6 messageWithKind:4096 attributes:v10];

  transport = [(DYReplayController *)self transport];
  v16 = 0;
  v13 = [transport send:v11 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    _DYOLog();
  }

  return v13;
}

- (BOOL)playbackArchive:(id)archive
{
  archiveCopy = archive;
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:archiveCopy];
  v18 = 0;
  v6 = [(DYReplayController *)self _loadArchives:v5 error:&v18];
  v7 = v18;

  if (v6)
  {
    archiveStack = [(DYReplayController *)self archiveStack];
    v9 = [(DYReplayController *)self _replayerControllerSupportForCaptureStore:archiveStack];
    [(DYReplayController *)self setReplayControllerSupport:v9];

    replayControllerSupport = [(DYReplayController *)self replayControllerSupport];
    archiveStack2 = [(DYReplayController *)self archiveStack];
    v12 = [replayControllerSupport createArchivePlaybackEngineWithCaptureStore:archiveStack2];
    [(DYReplayController *)self setPlaybackEngine:v12];

    [(DYReplayController *)self _displayPlaybackEngine];
    playbackEngine = [(DYReplayController *)self playbackEngine];
    playback = [playbackEngine playback];

    queue = [(DYReplayController *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__DYReplayController_playbackArchive___block_invoke;
    v17[3] = &unk_27930F730;
    v17[4] = self;
    [playback notifyOnQueue:queue handler:v17];

    [playback waitUntilResolved];
  }

  return v6;
}

- (id)_popMessage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  messageLock = self->_messageLock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__DYReplayController__popMessage__block_invoke;
  v5[3] = &unk_27930F9B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(messageLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__33__DYReplayController__popMessage__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return [v6 removeObjectAtIndex:0];
  }

  return result;
}

- (void)_pushMessage:(id)message
{
  messageCopy = message;
  messageLock = self->_messageLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DYReplayController__pushMessage___block_invoke;
  v7[3] = &unk_27930FA00;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(messageLock, v7);
}

void __35__DYReplayController__pushMessage___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) kind] == 4106)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__DYReplayController__pushMessage___block_invoke_2;
    v8[3] = &unk_27930F9D8;
    v8[4] = v2;
    v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
    [v3 filterUsingPredicate:v4];
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DYReplayController__pushMessage___block_invoke_3;
  v7[3] = &unk_27930F730;
  v7[4] = v5;
  dispatch_async(v6, v7);
}

uint64_t __35__DYReplayController__pushMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  switch(v4)
  {
    case 1026:
      v5 = [*(a1 + 32) transport];
      v6 = [MEMORY[0x277D0AFE0] messageWithKind:1026 attributes:0 payload:0];
      [v5 send:v6 inReplyTo:v3 error:0];
      break;
    case 4106:
      v5 = [*(a1 + 32) transport];
      v7 = MEMORY[0x277D0AFE0];
      v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v8 = [v7 messageWithKind:4105 objectPayload:v6];
      [v5 send:v8 inReplyTo:v3 error:0];

      break;
    case 4121:
      v5 = [*(a1 + 32) transport];
      v6 = [MEMORY[0x277D0AFE0] messageWithKind:4121 attributes:0 payload:0];
      [v5 send:v6 inReplyTo:v3 error:0];
      break;
    default:
      v9 = 1;
      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)_messageLoop
{
  _popMessage = [(DYReplayController *)self _popMessage];
  if (_popMessage || [(DYReplayControllerQueue *)self->_profileBlockQueue count]|| [(DYReplayControllerQueue *)self->_profileBlockBackgroundQueue count])
  {
    p_profileBlockQueue = &self->_profileBlockQueue;
    p_profileBlockBackgroundQueue = &self->_profileBlockBackgroundQueue;
    targetFunctionIndex = 0xFFFFFFFFLL;
    while (1)
    {
      if (_popMessage)
      {
        if (targetFunctionIndex != -1)
        {
          playbackEngine = [(DYReplayController *)self playbackEngine];
          [playbackEngine playbackToFunction:targetFunctionIndex withLoops:0];
        }

        [(DYReplayController *)self _processMessage:_popMessage];
        targetFunctionIndex = 0xFFFFFFFFLL;
      }

      else
      {
        if ([(DYReplayControllerQueue *)*p_profileBlockQueue count])
        {
          v8 = &self->_profileBlockQueue;
        }

        else
        {
          v8 = &self->_profileBlockBackgroundQueue;
        }

        v9 = *v8;
        front = [(DYReplayControllerQueue *)v9 front];
        [(DYReplayControllerQueue *)v9 dequeBlock];
        if (targetFunctionIndex == -1)
        {
          playbackEngine2 = [(DYReplayController *)self playbackEngine];
          targetFunctionIndex = [playbackEngine2 targetFunctionIndex];
        }

        front[2](front);
        if (![(DYReplayControllerQueue *)*p_profileBlockQueue count]&& ![(DYReplayControllerQueue *)*p_profileBlockBackgroundQueue count]&& targetFunctionIndex != -1)
        {
          playbackEngine3 = [(DYReplayController *)self playbackEngine];
          [playbackEngine3 playbackToFunction:targetFunctionIndex withLoops:0];

          targetFunctionIndex = 0xFFFFFFFFLL;
        }
      }

      _popMessage2 = [(DYReplayController *)self _popMessage];

      _popMessage = _popMessage2;
      if (!_popMessage2)
      {
        _popMessage = 0;
        if (![(DYReplayControllerQueue *)*p_profileBlockQueue count])
        {
          _popMessage = 0;
          if (![(DYReplayControllerQueue *)*p_profileBlockBackgroundQueue count])
          {
            break;
          }
        }
      }
    }
  }
}

- (void)_processMessage:(id)message
{
  v176 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  kind = [messageCopy kind];
  if (kind > 4097)
  {
    selfCopy = self;
    switch(kind)
    {
      case 4098:
        if (![(DYReplayController *)self _handleArchiveLoadingForPlaybackRequest:messageCopy replyKind:4100])
        {
          goto LABEL_54;
        }

        [(DYReplayController *)self setReplayMessage:messageCopy];
        v5 = [messageCopy attributeForKey:*MEMORY[0x277D0B028]];
        obj = v5;
        if (v5)
        {
          v6 = MEMORY[0x277D0AFD8];
          v7 = MEMORY[0x277CBEB98];
          v8 = objc_opt_class();
          v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
          v169 = 0;
          v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v169];
          v11 = v169;

          if (v10)
          {
            v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10];
            [(DYReplayController *)self setExperiments:v12];
          }
        }

        else
        {
          v11 = 0;
        }

        v136 = *MEMORY[0x277D0B488];
        v137 = [messageCopy attributeForKey:*MEMORY[0x277D0B488]];
        v138 = *MEMORY[0x277D0B480];
        v139 = [messageCopy attributeForKey:*MEMORY[0x277D0B480]];
        v159 = v139;
        if (v137)
        {
          v140 = objc_opt_new();
          [(DYReplayController *)self setProfileInfo:v140];

          profileInfo = [(DYReplayController *)self profileInfo];
          [profileInfo setObject:v137 forKey:v136];
        }

        else
        {
          if (![v139 count])
          {
            goto LABEL_63;
          }

          v142 = objc_opt_new();
          [(DYReplayController *)self setProfileInfo:v142];

          profileInfo = [(DYReplayController *)self profileInfo];
          [profileInfo setObject:v159 forKey:v138];
        }

LABEL_63:
        _playbackCurrentArchiveAndExperiments = [(DYReplayController *)self _playbackCurrentArchiveAndExperiments];
        [_playbackCurrentArchiveAndExperiments waitUntilResolved];
        profileInfo2 = [(DYReplayController *)self profileInfo];
        v145 = profileInfo2 == 0;

        if (v145)
        {
          transport = [(DYReplayController *)self transport];
          v153 = MEMORY[0x277D0AFE0];
          transport2 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v151 = [v153 messageWithKind:4100 objectPayload:transport2];
          replayMessage = [(DYReplayController *)self replayMessage];
          [transport send:v151 inReplyTo:replayMessage error:0];
        }

        else
        {
          v146 = MEMORY[0x277CCAAB0];
          result = [_playbackCurrentArchiveAndExperiments result];
          v168 = v11;
          transport = [v146 archivedDataWithRootObject:result requiringSecureCoding:1 error:&v168];
          v149 = v168;

          transport2 = [(DYReplayController *)self transport];
          v151 = [MEMORY[0x277D0AFE0] messageWithKind:4100 objectPayload:transport];
          replayMessage = [(DYReplayController *)self replayMessage];
          [transport2 send:v151 inReplyTo:replayMessage error:0];
          v11 = v149;
        }

        [(DYReplayController *)self setReplayMessage:0];
        [(DYReplayController *)self setExperiments:0];
        [(DYReplayController *)self setProfileInfo:0];

        goto LABEL_54;
      case 4099:
      case 4100:
      case 4101:
      case 4105:
      case 4113:
      case 4117:
      case 4118:
      case 4123:
      case 4124:
      case 4125:
        goto LABEL_49;
      case 4102:
        [(DYReplayController *)self _deleteAllArchives];
        transport3 = [(DYReplayController *)self transport];
        playbackEngine3 = [MEMORY[0x277D0AFE0] messageWithKind:4102];
        [transport3 send:playbackEngine3 inReplyTo:messageCopy error:0];
        goto LABEL_52;
      case 4103:
        if (![(DYReplayController *)self _handleArchiveLoadingForPlaybackRequest:messageCopy replyKind:4105])
        {
          goto LABEL_54;
        }

        transport4 = [(DYReplayController *)self transport];
        v110 = MEMORY[0x277D0AFE0];
        v111 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v112 = [v110 messageWithKind:4105 objectPayload:v111];
        [transport4 send:v112 inReplyTo:messageCopy error:0];

        [(DYReplayController *)self _beginDebugArchive];
        v82 = messageCopy;
LABEL_45:
        [(DYReplayController *)self setReplayMessage:v82];
        goto LABEL_54;
      case 4104:
        [(DYReplayController *)self _endPlayback];
        v82 = 0;
        goto LABEL_45;
      case 4106:
        replayControllerSupport = [(DYReplayController *)self replayControllerSupport];
        playbackEngine = [(DYReplayController *)self playbackEngine];
        v94 = [replayControllerSupport isDebugPlaybackEngine:playbackEngine];

        if (v94)
        {
          transport5 = [(DYReplayController *)self transport];
          v96 = MEMORY[0x277D0AFE0];
          v97 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v98 = [v96 messageWithKind:4105 objectPayload:v97];
          [transport5 send:v98 inReplyTo:messageCopy error:0];

          objectPayload = [messageCopy objectPayload];
          unsignedLongLongValue = [objectPayload unsignedLongLongValue];

          transport3 = [(DYReplayController *)self playbackEngine];
          [transport3 playbackToFunction:unsignedLongLongValue subCommandIndex:HIDWORD(unsignedLongLongValue) withLoops:0];
          goto LABEL_53;
        }

        transport3 = [(DYReplayController *)self transport];
        v127 = MEMORY[0x277D0AFE0];
        playbackEngine3 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v71 = [v127 messageWithKind:4105 objectPayload:playbackEngine3];
        [transport3 send:v71 inReplyTo:messageCopy error:0];
        goto LABEL_51;
      case 4107:
        transport6 = [(DYReplayController *)self transport];
        v114 = MEMORY[0x277D0AFE0];
        v115 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v116 = [v114 messageWithKind:4105 objectPayload:v115];
        [transport6 send:v116 inReplyTo:messageCopy error:0];

        replayControllerSupport2 = [(DYReplayController *)self replayControllerSupport];
        objectPayload2 = [messageCopy objectPayload];
        bOOLValue = [objectPayload2 BOOLValue];
        playbackEngine2 = [(DYReplayController *)self playbackEngine];
        [replayControllerSupport2 enableDebugWireframePresent:bOOLValue playbackEngine:playbackEngine2];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4108:
        transport7 = [(DYReplayController *)self transport];
        v102 = MEMORY[0x277D0AFE0];
        v103 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v104 = [v102 messageWithKind:4105 objectPayload:v103];
        [transport7 send:v104 inReplyTo:messageCopy error:0];

        replayControllerSupport3 = [(DYReplayController *)self replayControllerSupport];
        objectPayload3 = [messageCopy objectPayload];
        bOOLValue2 = [objectPayload3 BOOLValue];
        playbackEngine4 = [(DYReplayController *)self playbackEngine];
        [replayControllerSupport3 enableDebugDrawCallPresent:bOOLValue2 playbackEngine:playbackEngine4];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4109:
        transport8 = [(DYReplayController *)self transport];
        v45 = MEMORY[0x277D0AFE0];
        v46 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v47 = [v45 messageWithKind:4105 objectPayload:v46];
        [transport8 send:v47 inReplyTo:messageCopy error:0];

        replayControllerSupport4 = [(DYReplayController *)self replayControllerSupport];
        objectPayload4 = [messageCopy objectPayload];
        [objectPayload4 floatValue];
        v51 = v50;
        playbackEngine5 = [(DYReplayController *)self playbackEngine];
        LODWORD(v53) = v51;
        [replayControllerSupport4 setDebugWireframeLineWidth:playbackEngine5 playbackEngine:v53];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4110:
        transport9 = [(DYReplayController *)self transport];
        v62 = MEMORY[0x277D0AFE0];
        v63 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v64 = [v62 messageWithKind:4105 objectPayload:v63];
        [transport9 send:v64 inReplyTo:messageCopy error:0];

        replayControllerSupport5 = [(DYReplayController *)self replayControllerSupport];
        objectPayload5 = [messageCopy objectPayload];
        unsignedIntValue = [objectPayload5 unsignedIntValue];
        playbackEngine6 = [(DYReplayController *)self playbackEngine];
        [replayControllerSupport5 setWireframeLineColor:unsignedIntValue playbackEngine:playbackEngine6];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4111:
        transport10 = [(DYReplayController *)self transport];
        v55 = MEMORY[0x277D0AFE0];
        v56 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v57 = [v55 messageWithKind:4105 objectPayload:v56];
        [transport10 send:v57 inReplyTo:messageCopy error:0];

        replayControllerSupport6 = [(DYReplayController *)self replayControllerSupport];
        objectPayload6 = [messageCopy objectPayload];
        playbackEngine7 = [(DYReplayController *)self playbackEngine];
        [replayControllerSupport6 disableDebugFunctions:objectPayload6 playbackEngine:playbackEngine7];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4112:
        transport11 = [(DYReplayController *)self transport];
        v84 = MEMORY[0x277D0AFE0];
        v85 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v86 = [v84 messageWithKind:4105 objectPayload:v85];
        [transport11 send:v86 inReplyTo:messageCopy error:0];

        replayControllerSupport7 = [(DYReplayController *)self replayControllerSupport];
        objectPayload7 = [messageCopy objectPayload];
        playbackEngine8 = [(DYReplayController *)self playbackEngine];
        [replayControllerSupport7 enableDebugFunctions:objectPayload7 playbackEngine:playbackEngine8];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4114:
        replayMessage2 = [(DYReplayController *)self replayMessage];

        if (!replayMessage2)
        {
          plistPayload = [messageCopy plistPayload];
          v174 = 0;
          v129 = [(DYReplayController *)self _loadArchives:plistPayload error:&v174];
          v130 = v174;

          transport12 = [(DYReplayController *)self transport];
          v132 = MEMORY[0x277D0AFE0];
          v133 = DYDictionaryFromError();
          v134 = [MEMORY[0x277CCABB0] numberWithBool:v129];
          v135 = [v132 messageWithKind:4114 attributes:v133 objectPayload:v134];
          [transport12 send:v135 inReplyTo:messageCopy error:0];

          goto LABEL_54;
        }

        transport3 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:2048 userInfo:0];
        playbackEngine3 = [(DYReplayController *)self transport];
        v70 = MEMORY[0x277D0AFE0];
        v71 = DYDictionaryFromError();
        v72 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v73 = [v70 messageWithKind:4100 attributes:v71 objectPayload:v72];
        [playbackEngine3 send:v73 inReplyTo:messageCopy error:0];

LABEL_51:
LABEL_52:

        break;
      case 4115:
        v158 = objc_opt_new();
        archiveStack = [(DYReplayController *)self archiveStack];
        allObjects = [archiveStack allObjects];

        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        obja = allObjects;
        v28 = [obja countByEnumeratingWithState:&v170 objects:v175 count:16];
        if (v28)
        {
          v29 = *v171;
          v30 = *MEMORY[0x277CBECE8];
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v171 != v29)
              {
                objc_enumerationMutation(obja);
              }

              v32 = *(*(&v170 + 1) + 8 * i);
              v33 = CFUUIDCreateString(v30, [v32 uuid]);
              if (!v33)
              {
                __assert_rtn("[DYReplayController _processMessage:]", ", 0, "uuidString"");
              }

              v34 = objc_alloc(MEMORY[0x277CBEAC0]);
              path = [v32 path];
              lastPathComponent = [path lastPathComponent];
              v37 = [v34 initWithObjectsAndKeys:{lastPathComponent, @"filename", v33, @"uuid", 0}];

              [v158 addObject:v37];
            }

            v28 = [obja countByEnumeratingWithState:&v170 objects:v175 count:16];
          }

          while (v28);
        }

        transport13 = [(DYReplayController *)selfCopy transport];
        v39 = [MEMORY[0x277D0AFE0] messageWithKind:4115 attributes:0 plistPayload:v158];
        [transport13 send:v39 inReplyTo:messageCopy error:0];

        goto LABEL_54;
      case 4116:
        v90 = MEMORY[0x277D0AFE0];
        _archiveDirectory = [(DYReplayController *)self _archiveDirectory];
        transport3 = [v90 messageWithKind:4116 attributes:0 stringPayload:_archiveDirectory];

        playbackEngine3 = [(DYReplayController *)self transport];
        [playbackEngine3 send:transport3 inReplyTo:messageCopy error:0];
        goto LABEL_52;
      case 4119:
        replayControllerSupport8 = [(DYReplayController *)self replayControllerSupport];
        playbackEngine9 = [(DYReplayController *)self playbackEngine];
        v166[0] = MEMORY[0x277D85DD0];
        v166[1] = 3221225472;
        v166[2] = __38__DYReplayController__processMessage___block_invoke;
        v166[3] = &unk_27930FA28;
        v166[4] = self;
        v167 = messageCopy;
        [replayControllerSupport8 generateThumbnailsWithPlaybackEngine:playbackEngine9 forMessage:v167 onReady:v166];

        goto LABEL_54;
      case 4120:
        replayControllerSupport9 = [(DYReplayController *)self replayControllerSupport];
        playbackEngine10 = [(DYReplayController *)self playbackEngine];
        v162[0] = MEMORY[0x277D85DD0];
        v162[1] = 3221225472;
        v162[2] = __38__DYReplayController__processMessage___block_invoke_3;
        v162[3] = &unk_27930FA28;
        v162[4] = self;
        v163 = messageCopy;
        [replayControllerSupport9 generateDependencyGraphThumbnailsWithPlaybackEngine:playbackEngine10 forMessage:v163 onReady:v162];

        goto LABEL_54;
      case 4121:
        goto LABEL_11;
      case 4122:
        transport14 = [(DYReplayController *)self transport];
        v75 = MEMORY[0x277D0AFE0];
        v76 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v77 = [v75 messageWithKind:4105 objectPayload:v76];
        [transport14 send:v77 inReplyTo:messageCopy error:0];

        replayControllerSupport10 = [(DYReplayController *)self replayControllerSupport];
        objectPayload8 = [messageCopy objectPayload];
        bOOLValue3 = [objectPayload8 BOOLValue];
        playbackEngine11 = [(DYReplayController *)self playbackEngine];
        [replayControllerSupport10 enableDebugOutlinePresent:bOOLValue3 playbackEngine:playbackEngine11];

        transport3 = [(DYReplayController *)self playbackEngine];
        playbackEngine3 = [(DYReplayController *)self playbackEngine];
        [transport3 playbackToFunction:objc_msgSend(playbackEngine3 withLoops:{"targetFunctionIndex"), 0}];
        goto LABEL_52;
      case 4126:
        replayControllerSupport11 = [(DYReplayController *)self replayControllerSupport];
        playbackEngine12 = [(DYReplayController *)self playbackEngine];
        v160[0] = MEMORY[0x277D85DD0];
        v160[1] = 3221225472;
        v160[2] = __38__DYReplayController__processMessage___block_invoke_4;
        v160[3] = &unk_27930FA28;
        v160[4] = self;
        v161 = messageCopy;
        [replayControllerSupport11 generatePixelHistoryWithPlaybackEngine:playbackEngine12 forMessage:v161 onReady:v160];

        goto LABEL_54;
      default:
        if (kind != 4611)
        {
          goto LABEL_49;
        }

        transport3 = [(DYReplayController *)self transport];
        playbackEngine3 = [MEMORY[0x277D0AFE0] messageWithKind:4611];
        [transport3 send:playbackEngine3 inReplyTo:messageCopy error:0];
        goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (kind == 1026)
  {
LABEL_11:
    attributes = [messageCopy attributes];
    v16 = [attributes objectForKeyedSubscript:*MEMORY[0x277D0B4B8]];
    unsignedLongLongValue2 = [v16 unsignedLongLongValue];

    if (unsignedLongLongValue2 != -1)
    {
      playbackEngine13 = [(DYReplayController *)self playbackEngine];
      v19 = HIDWORD(unsignedLongLongValue2);
      if ([playbackEngine13 currentFunctionIndex] == unsignedLongLongValue2)
      {
        playbackEngine14 = [(DYReplayController *)self playbackEngine];
        targetSubCommandIndex = [playbackEngine14 targetSubCommandIndex];

        if (targetSubCommandIndex == HIDWORD(unsignedLongLongValue2))
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      playbackEngine15 = [(DYReplayController *)self playbackEngine];
      [playbackEngine15 setTargetFunctionIndex:unsignedLongLongValue2];

      playbackEngine16 = [(DYReplayController *)self playbackEngine];
      [playbackEngine16 setTargetSubCommandIndex:v19];

      playbackEngine17 = [(DYReplayController *)self playbackEngine];
      playbackEngine18 = [(DYReplayController *)self playbackEngine];
      targetFunctionIndex = [playbackEngine18 targetFunctionIndex];
      playbackEngine19 = [(DYReplayController *)self playbackEngine];
      [playbackEngine17 playbackToFunction:targetFunctionIndex subCommandIndex:objc_msgSend(playbackEngine19 withLoops:{"targetSubCommandIndex"), 0}];
    }

LABEL_49:
    transport3 = [(DYReplayController *)self origSourceMessageHandler];
    (transport3)[2](transport3, messageCopy);
LABEL_53:

    goto LABEL_54;
  }

  if (kind != 1030)
  {
    goto LABEL_49;
  }

  replayControllerSupport12 = [(DYReplayController *)self replayControllerSupport];
  playbackEngine20 = [(DYReplayController *)self playbackEngine];
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __38__DYReplayController__processMessage___block_invoke_2;
  v164[3] = &unk_27930FA28;
  v164[4] = self;
  v165 = messageCopy;
  [replayControllerSupport12 generateShaderDebuggerTraceForMessage:v165 playbackEngine:playbackEngine20 onReady:v164];

LABEL_54:
}

void __38__DYReplayController__processMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:4119 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

void __38__DYReplayController__processMessage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:1030 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

void __38__DYReplayController__processMessage___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:4120 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

void __38__DYReplayController__processMessage___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D0AFE0] messageWithKind:4126 objectPayload:a2];
  v3 = [*(a1 + 32) transport];
  [v3 send:v4 inReplyTo:*(a1 + 40) error:0];
}

- (BOOL)_loadArchives:(id)archives error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  archivesCopy = archives;
  if (!archivesCopy)
  {
    __assert_rtn("[DYReplayController _loadArchives:error:]", ", 0, "filenames"");
  }

  archiveStack = [(DYReplayController *)self archiveStack];
  [archiveStack close];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = archivesCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v20 = archivesCopy;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 isAbsolutePath])
        {
          v12 = v11;
        }

        else
        {
          _archiveDirectory = [(DYReplayController *)self _archiveDirectory];
          v12 = [_archiveDirectory stringByAppendingPathComponent:v11];
        }

        v14 = objc_alloc(MEMORY[0x277D0AF48]);
        v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
        v16 = [v14 initWithURL:v15 options:0 error:error];

        if (!v16)
        {

          v18 = 0;
          goto LABEL_15;
        }

        archiveStack2 = [(DYReplayController *)self archiveStack];
        [archiveStack2 push:v16];
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)_deleteAllArchives
{
  v21 = *MEMORY[0x277D85DE8];
  replayMessage = [(DYReplayController *)self replayMessage];

  if (!replayMessage)
  {
    archiveStack = [(DYReplayController *)self archiveStack];
    [archiveStack close];
  }

  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEBC0];
  _archiveDirectory = [(DYReplayController *)self _archiveDirectory];
  v8 = [v6 fileURLWithPath:_archiveDirectory];

  [v5 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v9 = v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        v15 = [pathExtension caseInsensitiveCompare:@"gputrace"] == 0;

        if (v15)
        {
          [v5 removeItemAtURL:v13 error:0];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_endPlayback
{
  replayControllerSupport = [(DYReplayController *)self replayControllerSupport];
  [replayControllerSupport endPlayback];

  [(DYReplayController *)self setPlaybackEngine:0];
}

- (BOOL)_handleArchiveLoadingForPlaybackRequest:(id)request replyKind:(int)kind
{
  v4 = *&kind;
  requestCopy = request;
  replayMessage = [(DYReplayController *)self replayMessage];

  if (!replayMessage)
  {
    stringPayload = [requestCopy stringPayload];
    if (stringPayload)
    {
      v16 = [MEMORY[0x277CBEA60] arrayWithObject:stringPayload];
      v30 = 0;
      v17 = [(DYReplayController *)self _loadArchives:v16 error:&v30];
      v8 = v30;

      if (!v17)
      {
        v18 = MEMORY[0x277D0AFE0];
        v19 = DYDictionaryFromError();
        v20 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v21 = [v18 messageWithKind:v4 attributes:v19 objectPayload:v20];

        transport = [(DYReplayController *)self transport];
        [transport send:v21 inReplyTo:requestCopy error:0];
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
    }

    archiveStack = [(DYReplayController *)self archiveStack];
    v24 = [archiveStack size];

    if (v24)
    {
      v14 = 1;
LABEL_11:

      goto LABEL_12;
    }

    v25 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:2049 userInfo:0];

    v26 = MEMORY[0x277D0AFE0];
    v27 = DYDictionaryFromError();
    v28 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v21 = [v26 messageWithKind:v4 attributes:v27 objectPayload:v28];

    transport = [(DYReplayController *)self transport];
    [transport send:v21 inReplyTo:requestCopy error:0];
    v8 = v25;
LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  v8 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:2048 userInfo:0];
  v9 = MEMORY[0x277D0AFE0];
  v10 = DYDictionaryFromError();
  v11 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v12 = [v9 messageWithKind:v4 attributes:v10 objectPayload:v11];

  transport2 = [(DYReplayController *)self transport];
  [transport2 send:v12 inReplyTo:requestCopy error:0];

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)_playbackCurrentArchiveAndExperiments
{
  archiveStack = [(DYReplayController *)self archiveStack];
  if ([archiveStack empty])
  {
    __assert_rtn("[DYReplayController _playbackCurrentArchiveAndExperiments]", ", 0, "![self.archiveStack empty]"");
  }

  future = [MEMORY[0x277D0AFC8] future];
  experiments = [(DYReplayController *)self experiments];

  if (experiments)
  {
    [(DYReplayController *)self _recursivePlaybackWithFuture:0 usingExperiment:0 withToplevelFuture:future];
  }

  else
  {
    [(DYReplayController *)self _playbackArchiveWithExperiment:0 passingFuture:future resolvingFuture:1];
  }

  return future;
}

- (void)_recursivePlaybackWithFuture:(id)future usingExperiment:(id)experiment withToplevelFuture:(id)toplevelFuture
{
  futureCopy = future;
  experimentCopy = experiment;
  toplevelFutureCopy = toplevelFuture;
  if (experimentCopy)
  {
    experiments = [(DYReplayController *)self experiments];
    [experiments removeObjectAtIndex:0];
  }

  experiments2 = [(DYReplayController *)self experiments];
  if ([experiments2 count])
  {
    experiments3 = [(DYReplayController *)self experiments];
    v13 = [experiments3 objectAtIndex:0];

    v14 = v13;
  }

  else
  {
    experiments3 = experimentCopy;
    v14 = 0;
  }

  if (futureCopy)
  {
    bOOLResult = [futureCopy BOOLResult];
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    bOOLResult = 1;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (bOOLResult)
  {
    [(DYReplayController *)self _playbackArchiveWithExperiment:v14 passingFuture:toplevelFutureCopy resolvingFuture:0];
    goto LABEL_13;
  }

LABEL_12:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [toplevelFutureCopy setResult:v16];

LABEL_13:
}

- (void)_playbackArchiveWithExperiment:(id)experiment passingFuture:(id)future resolvingFuture:(BOOL)resolvingFuture
{
  experimentCopy = experiment;
  futureCopy = future;
  archiveStack = [(DYReplayController *)self archiveStack];
  if ([archiveStack empty])
  {
    __assert_rtn("[DYReplayController _playbackArchiveWithExperiment:passingFuture:resolvingFuture:]", ", 0, "![self.archiveStack empty]"");
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke;
  block[3] = &unk_27930FA00;
  block[4] = self;
  v11 = experimentCopy;
  v30 = v11;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  replayControllerSupport = [(DYReplayController *)self replayControllerSupport];
  playbackEngine = [(DYReplayController *)self playbackEngine];
  v14 = [replayControllerSupport experimentResultsGeneratorForPlaybackEngine:playbackEngine];

  [v14 begin];
  playbackEngine2 = [(DYReplayController *)self playbackEngine];
  playback = [playbackEngine2 playback];

  queue = [(DYReplayController *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke_2;
  v22[3] = &unk_27930FA50;
  v18 = v14;
  v23 = v18;
  v19 = v11;
  v24 = v19;
  selfCopy = self;
  resolvingFutureCopy = resolvingFuture;
  v20 = futureCopy;
  v26 = v20;
  v21 = playback;
  v27 = v21;
  [v21 notifyOnQueue:queue handler:v22];
}

uint64_t __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 archiveStack];
  v4 = [v2 _replayerControllerSupportForCaptureStore:v3];
  [*(a1 + 32) setReplayControllerSupport:v4];

  v5 = [*(a1 + 32) replayControllerSupport];
  v6 = [*(a1 + 32) archiveStack];
  v7 = [v5 createOverridingPlaybackEngineWithCaptureStore:v6 experiment:*(a1 + 40)];
  [*(a1 + 32) setPlaybackEngine:v7];

  v8 = *(a1 + 32);

  return [v8 _displayPlaybackEngine];
}

uint64_t __83__DYReplayController__playbackArchiveWithExperiment_passingFuture_resolvingFuture___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 end];
    v3 = [MEMORY[0x277D0AFE0] messageWithKind:4099 objectPayload:*(a1 + 40)];
    if (!v3)
    {
      __assert_rtn("[DYReplayController _playbackArchiveWithExperiment:passingFuture:resolvingFuture:]_block_invoke_2", ", 0, "result_message"");
    }

    v4 = [*(a1 + 48) replayMessage];
    if (!v4)
    {
      __assert_rtn("[DYReplayController _playbackArchiveWithExperiment:passingFuture:resolvingFuture:]_block_invoke_2", ", 0, "self.replayMessage"");
    }

    v5 = [*(a1 + 48) transport];
    v6 = [*(a1 + 48) replayMessage];
    [v5 send:v3 inReplyTo:v6 error:0];
  }

  [*(a1 + 48) _endPlayback];
  if (*(a1 + 72) == 1)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);

    return [v7 resolveWithFuture:v8];
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = *(a1 + 56);
    v12 = *(a1 + 64);

    return [v10 _recursivePlaybackWithFuture:v12 usingExperiment:v11 withToplevelFuture:v13];
  }
}

- (void)_beginDebugArchive
{
  archiveStack = [(DYReplayController *)self archiveStack];
  if ([archiveStack empty])
  {
    __assert_rtn("[DYReplayController _beginDebugArchive]", ", 0, "![self.archiveStack empty]"");
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DYReplayController__beginDebugArchive__block_invoke;
  block[3] = &unk_27930F730;
  block[4] = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

uint64_t __40__DYReplayController__beginDebugArchive__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 archiveStack];
  v4 = [v2 _replayerControllerSupportForCaptureStore:v3];
  [*(a1 + 32) setReplayControllerSupport:v4];

  v5 = [*(a1 + 32) replayControllerSupport];
  v6 = [*(a1 + 32) archiveStack];
  v7 = [v5 createDebugPlaybackEngineWithCaptureStore:v6];
  [*(a1 + 32) setPlaybackEngine:v7];

  v8 = *(a1 + 32);

  return [v8 _displayPlaybackEngine];
}

@end