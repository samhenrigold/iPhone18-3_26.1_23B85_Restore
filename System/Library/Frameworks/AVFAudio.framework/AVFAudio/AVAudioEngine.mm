@interface AVAudioEngine
- (AVAudioConnectionPoint)inputConnectionPointForNode:(AVAudioNode *)node inputBus:(AVAudioNodeBus)bus;
- (AVAudioEngine)init;
- (AVAudioEngineManualRenderingBlock)manualRenderingBlock;
- (AVAudioEngineManualRenderingMode)manualRenderingMode;
- (AVAudioEngineManualRenderingStatus)renderOffline:(AVAudioFrameCount)numberOfFrames toBuffer:(AVAudioPCMBuffer *)buffer error:(NSError *)outError;
- (AVAudioFormat)manualRenderingFormat;
- (AVAudioFrameCount)manualRenderingMaximumFrameCount;
- (AVAudioFramePosition)manualRenderingSampleTime;
- (AVAudioInputNode)inputNode;
- (AVAudioMixerNode)mainMixerNode;
- (AVAudioOutputNode)outputNode;
- (BOOL)enableManualRenderingMode:(AVAudioEngineManualRenderingMode)mode format:(AVAudioFormat *)pcmFormat maximumFrameCount:(AVAudioFrameCount)maximumFrameCount error:(NSError *)outError;
- (BOOL)isAutoShutdownEnabled;
- (BOOL)isInManualRenderingMode;
- (BOOL)isRunning;
- (BOOL)startAndReturnError:(NSError *)outError;
- (MusicSequence)musicSequence;
- (NSArray)outputConnectionPointsForNode:(AVAudioNode *)node outputBus:(AVAudioNodeBus)bus;
- (NSSet)attachedNodes;
- (id)audioSession;
- (id)description;
- (void)attachNode:(AVAudioNode *)node;
- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 format:(AVAudioFormat *)format;
- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 fromBus:(AVAudioNodeBus)bus1 toBus:(AVAudioNodeBus)bus2 format:(AVAudioFormat *)format;
- (void)connect:(AVAudioNode *)sourceNode toConnectionPoints:(NSArray *)destNodes fromBus:(AVAudioNodeBus)sourceBus format:(AVAudioFormat *)format;
- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock;
- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock;
- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock;
- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock;
- (void)dealloc;
- (void)detachNode:(AVAudioNode *)node;
- (void)disableManualRenderingMode;
- (void)disconnectMIDI:(AVAudioNode *)sourceNode from:(AVAudioNode *)destinationNode;
- (void)disconnectMIDI:(AVAudioNode *)sourceNode fromNodes:(NSArray *)destinationNodes;
- (void)disconnectMIDIInput:(AVAudioNode *)node;
- (void)disconnectMIDIOutput:(AVAudioNode *)node;
- (void)disconnectNodeInput:(AVAudioNode *)node;
- (void)disconnectNodeInput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus;
- (void)disconnectNodeOutput:(AVAudioNode *)node;
- (void)disconnectNodeOutput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus;
- (void)pause;
- (void)prepare;
- (void)reset;
- (void)setAudioSession:(id)session;
- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled;
- (void)setMusicSequence:(MusicSequence)musicSequence;
- (void)stop;
@end

@implementation AVAudioEngine

- (NSSet)attachedNodes
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = [*(self->_impl + 3) copy];
  std::recursive_mutex::unlock((impl + 112));
  return v4;
}

- (void)disconnectMIDIOutput:(AVAudioNode *)node
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v6;
    *buf = 136315906;
    v11 = "AVAudioEngine.mm";
    v12 = 1024;
    v13 = 1132;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    *v17 = node;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI outputs on node: %p", buf, 0x26u);
  }

  if (node)
  {
    AVAudioEngineGraph::DisconnectAllMIDIOutputs(v6[1], node);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioEngine.mm";
      v16 = 1024;
      *v17 = 1134;
      *&v17[4] = 2080;
      *&v17[6] = "DisconnectAllMIDIOutputs";
      v18 = 2080;
      v19 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
    AVAudioEngineGraph::DisconnectAllMIDIOutputs(v6[1], 0);
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectMIDIInput:(AVAudioNode *)node
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v6;
    *buf = 136315906;
    v11 = "AVAudioEngine.mm";
    v12 = 1024;
    v13 = 1123;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    *v17 = node;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI inputs on node: %p", buf, 0x26u);
  }

  if (node)
  {
    AVAudioEngineGraph::DisconnectAllMIDIInputs(v6[1], node);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioEngine.mm";
      v16 = 1024;
      *v17 = 1125;
      *&v17[4] = 2080;
      *&v17[6] = "DisconnectAllMIDIInputs";
      v18 = 2080;
      v19 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
    AVAudioEngineGraph::DisconnectAllMIDIInputs(v6[1], 0);
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectMIDI:(AVAudioNode *)sourceNode fromNodes:(NSArray *)destinationNodes
{
  v41 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v6;
    *buf = 136316162;
    v22 = "AVAudioEngine.mm";
    v23 = 1024;
    v24 = 1111;
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    *v28 = sourceNode;
    *&v28[8] = 2080;
    *&v28[10] = [(NSString *)[(NSArray *)destinationNodes description] UTF8String];
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI node: %p from nodes: %s", buf, 0x30u);
  }

  if (!sourceNode || !destinationNodes || ![(NSArray *)destinationNodes count])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 71;
      v25 = 2080;
      v26 = "AVAudioEngine.mm";
      v27 = 1024;
      *v28 = 1113;
      *&v28[4] = 2080;
      *&v28[6] = "DisconnectMIDI";
      *&v28[14] = 2080;
      *&v28[16] = "sourceNode != nil && destNodes != nil && destNodes.count > 0";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "sourceNode != nil && destNodes != nil && destNodes.count > 0"}];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(NSArray *)destinationNodes countByEnumeratingWithState:&v17 objects:buf count:16];
  v14 = v6;
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(destinationNodes);
        }

        if (!*(*(&v17 + 1) + 8 * v12) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v13 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *v29 = 136316418;
            v30 = "AVAEInternal.h";
            v31 = 1024;
            v32 = 71;
            v33 = 2080;
            v34 = "AVAudioEngine.mm";
            v35 = 1024;
            v36 = 1115;
            v37 = 2080;
            v38 = "DisconnectMIDI";
            v39 = 2080;
            v40 = "object && [object isKindOfClass: [AVAudioNode class]]";
            _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v29, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "object && [object isKindOfClass: [AVAudioNode class]]"}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)destinationNodes countByEnumeratingWithState:&v17 objects:buf count:16];
    }

    while (v10);
  }

  AVAudioEngineGraph::DisconnectMIDI(v14[1], sourceNode, destinationNodes);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectMIDI:(AVAudioNode *)sourceNode from:(AVAudioNode *)destinationNode
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v8 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *v8;
    *buf = 136316162;
    v13 = "AVAudioEngine.mm";
    v14 = 1024;
    v15 = 1102;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    *v19 = sourceNode;
    *&v19[8] = 2048;
    *&v19[10] = destinationNode;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI node: %p from node: %p", buf, 0x30u);
  }

  if (!sourceNode || !destinationNode)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = "AVAudioEngine.mm";
      v18 = 1024;
      *v19 = 1104;
      *&v19[4] = 2080;
      *&v19[6] = "DisconnectMIDI";
      *&v19[14] = 2080;
      *&v19[16] = "sourceNode != nil && destNode != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "sourceNode != nil && destNode != nil"}];
  }

  AVAudioEngineGraph::DisconnectMIDI(v8[1], sourceNode, [MEMORY[0x1E695DEC8] arrayWithObjects:{destinationNode, 0}]);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNodes, format, tapBlock, 1);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNode, format, tapBlock, 1);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNodes, format, tapBlock, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNode, format, tapBlock, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)setAudioSession:(id)session
{
  v30 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (session)
  {
    opaqueSessionID = [session opaqueSessionID];
    if (*(*(v6 + 1) + 187) == 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v11 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v6;
        v22 = 136315906;
        v23 = "AVAudioEngine.mm";
        v24 = 1024;
        v25 = 531;
        v26 = 2048;
        v27 = v12;
        v28 = 1024;
        v29 = opaqueSessionID;
        v13 = "%25s:%-5d Engine@%p: not associating with an audio session (0x%x) in manual rendering mode";
LABEL_17:
        v16 = v11;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 34;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = *(v6 + 2);
      if (v19 && [v19 opaqueSessionID] == opaqueSessionID)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v11 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *v6;
          v22 = 136315906;
          v23 = "AVAudioEngine.mm";
          v24 = 1024;
          v25 = 538;
          v26 = 2048;
          v27 = v20;
          v28 = 1024;
          v29 = opaqueSessionID;
          v13 = "%25s:%-5d Engine@%p: already associated with audio session (0x%x), no-op";
          goto LABEL_17;
        }
      }

      else
      {
        v21 = *(v6 + 7);
        if (v21)
        {
          if (AVAudioIOUnit::OverrideAudioSession(v21, session))
          {
            goto LABEL_24;
          }
        }

        else
        {
          AVAudioEngineImpl::GetIOUnit(v6, session, v7, v8, v9);
        }

        *(v6 + 2) = session;
      }
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v15 = *v6;
      v22 = 136315650;
      v23 = "AVAudioEngine.mm";
      v24 = 1024;
      v25 = 523;
      v26 = 2048;
      v27 = v15;
      v13 = "%25s:%-5d Engine@%p: cannot associate with a nil audio session";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 28;
LABEL_18:
      _os_log_impl(&dword_1BA5AC000, v16, v17, v13, &v22, v18);
    }
  }

LABEL_24:

  std::recursive_mutex::unlock((impl + 112));
}

- (id)audioSession
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AudioSession = AVAudioEngineImpl::GetAudioSession(self->_impl);
  std::recursive_mutex::unlock((impl + 112));
  return AudioSession;
}

- (AVAudioEngineManualRenderingStatus)renderOffline:(AVAudioFrameCount)numberOfFrames toBuffer:(AVAudioPCMBuffer *)buffer error:(NSError *)outError
{
  v7 = *&numberOfFrames;
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v10 = self->_impl;
  if (outError)
  {
    *outError = 0;
  }

  v11 = *(v10 + 1);
  v12 = *v11;
  std::recursive_mutex::lock((*v11 + 112));
  v21 = 0;
  if (*(v11 + 187) != 1 || v11[24])
  {
    v13 = 0;
    v14 = 0;
    v15 = -80800;
LABEL_6:
    v21 = v15;
    goto LABEL_7;
  }

  if (!buffer || [(AVAudioPCMBuffer *)buffer frameCapacity]< v7)
  {
    v13 = 0;
    v14 = 0;
    v15 = -50;
    goto LABEL_6;
  }

  [(AVAudioPCMBuffer *)buffer setFrameLength:v7];
  mutableAudioBufferList = [(AVAudioBuffer *)buffer mutableAudioBufferList];
  v13 = AVAudioEngineGraph::RenderToABL(v11, v7, mutableAudioBufferList, &v21);
  v14 = 0;
  if (!v21 && mutableAudioBufferList)
  {
    if (mutableAudioBufferList->mNumberBuffers)
    {
      if (mutableAudioBufferList->mBuffers[0].mDataByteSize)
      {
        v14 = v7;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_7:
  [(AVAudioPCMBuffer *)buffer setFrameLength:v14];
  v16 = v21;
  if (outError)
  {
    if (v21)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v21 userInfo:0];
      v16 = v21;
    }

    else
    {
      v17 = 0;
    }

    *outError = v17;
  }

  std::recursive_mutex::unlock((v12 + 112));
  if (v16)
  {
    v18 = AVAudioEngineManualRenderingStatusError;
  }

  else
  {
    v18 = v13;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v18;
}

- (AVAudioEngineManualRenderingBlock)manualRenderingBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 13);
  if (!v5)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = ___ZN17AVAudioEngineImpl23GetManualRenderingBlockEv_block_invoke;
    v11 = &__block_descriptor_48_e55_q28__0I8__AudioBufferList_I_1_AudioBuffer_II_v___12_i20l;
    v12 = v4;
    v13 = v4;
    operator new();
  }

  v6 = *v5;
  std::recursive_mutex::unlock((impl + 112));
  return v6;
}

- (void)disableManualRenderingMode
{
  v13 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  if (*(*(v4 + 1) + 187) == 1)
  {
    std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((v4 + 112), (v4 + 176));
    AVAudioEngineImpl::Stop(v4, 0);
    AVAudioEngineImpl::Reset(v4);
    AVAudioEngineGraph::SetManualRenderingMode(*(v4 + 1), 0, AVAudioEngineManualRenderingModeRealtime, 0);
    if (*(*(v4 + 1) + 187) == 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v5 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        v6 = *v4;
        v7 = 136315650;
        v8 = "AVAudioEngine.mm";
        v9 = 1024;
        v10 = 1349;
        v11 = 2048;
        v12 = v6;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine@%p: could not disable manual rendering mode", &v7, 0x1Cu);
      }
    }

    if (*(*(v4 + 1) + 187) == 1)
    {
      *(v4 + 2) = 0;
    }

    AVAudioEngineImpl::UpdateIONodes(v4);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((v4 + 176));
    std::recursive_mutex::unlock((v4 + 112));
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (BOOL)enableManualRenderingMode:(AVAudioEngineManualRenderingMode)mode format:(AVAudioFormat *)pcmFormat maximumFrameCount:(AVAudioFrameCount)maximumFrameCount error:(NSError *)outError
{
  v7 = *&maximumFrameCount;
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v12 = self->_impl;
  v13 = *(v12 + 5);
  if (!v13 || ![v13 isVoiceProcessingEnabled])
  {
    if (!pcmFormat || !v7 || ([(AVAudioFormat *)pcmFormat sampleRate], v15 <= 0.0) || ![(AVAudioFormat *)pcmFormat channelCount])
    {
      if (outError)
      {
        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:-10851 userInfo:0];
        goto LABEL_20;
      }

LABEL_21:
      v18 = 0;
      goto LABEL_26;
    }

    std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((v12 + 112), (v12 + 176));
    v16 = *(v12 + 1);
    if (*(v16 + 187) != 1 || *(v16 + 192) != mode)
    {
      if ((AVAudioEngineGraph::SetManualRenderingMode(v16, 1, mode, outError) & 1) == 0)
      {
        v18 = 0;
LABEL_25:
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((v12 + 176));
        std::recursive_mutex::unlock((v12 + 112));
        goto LABEL_26;
      }

      if (*(*(v12 + 1) + 187) == 1)
      {
        *(v12 + 2) = 0;
      }

      AVAudioEngineImpl::UpdateIONodes(v12);
    }

    v17 = [AVAudioEngineImpl::GetOutputNode(v12) setManualRenderingPCMFormat:pcmFormat maximumFrameCount:v7];
    v18 = v17;
    if (outError)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:-10868 userInfo:0];
      }

      *outError = v19;
    }

    goto LABEL_25;
  }

  if (!outError)
  {
    goto LABEL_21;
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:-80800 userInfo:0];
LABEL_20:
  v18 = 0;
  *outError = v14;
LABEL_26:
  std::recursive_mutex::unlock((impl + 112));
  return v18;
}

- (AVAudioFramePosition)manualRenderingSampleTime
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  if (*(v4 + 187) == 1)
  {
    v5 = *(v4 + 200);
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v5;
}

- (AVAudioFrameCount)manualRenderingMaximumFrameCount
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  if (*(*(v4 + 1) + 187) == 1)
  {
    manualRenderingMaximumFrameCount = [AVAudioEngineImpl::GetOutputNode(v4) manualRenderingMaximumFrameCount];
  }

  else
  {
    manualRenderingMaximumFrameCount = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return manualRenderingMaximumFrameCount;
}

- (AVAudioFormat)manualRenderingFormat
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  ManualRenderingFormat = AVAudioEngineImpl::GetManualRenderingFormat(self->_impl);
  std::recursive_mutex::unlock((impl + 112));
  return ManualRenderingFormat;
}

- (AVAudioEngineManualRenderingMode)manualRenderingMode
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(*(self->_impl + 1) + 192);
  std::recursive_mutex::unlock((impl + 112));
  return v4;
}

- (BOOL)isInManualRenderingMode
{
  selfCopy = self;
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  LOBYTE(selfCopy) = *(*(selfCopy->_impl + 1) + 187);
  std::recursive_mutex::unlock((impl + 112));
  return selfCopy;
}

- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled
{
  v3 = autoShutdownEnabled;
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = *(self->_impl + 1);
  v7 = *v6;
  std::recursive_mutex::lock((*v6 + 112));
  if (v6[208] != v3)
  {
    v6[208] = v3;
    AVAudioEngineGraph::MonitorState(v6);
  }

  std::recursive_mutex::unlock((v7 + 112));

  std::recursive_mutex::unlock((impl + 112));
}

- (BOOL)isAutoShutdownEnabled
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  if (v4)
  {
    v5 = *(v4 + 208);
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v5 & 1;
}

- (BOOL)isRunning
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 1);
  if (v5)
  {
    v6 = *(v5 + 208);
    v7 = (v5 + 184);
    v8 = v4 + 64;
    if (!v6)
    {
      v8 = v7;
    }

    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v9 & 1;
}

- (MusicSequence)musicSequence
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  v5 = *v4;
  std::recursive_mutex::lock((*v4 + 112));
  v6 = v4[10];
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  std::recursive_mutex::unlock((v5 + 112));
  std::recursive_mutex::unlock((impl + 112));
  return v7;
}

- (void)setMusicSequence:(MusicSequence)musicSequence
{
  v28 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = *(self->_impl + 1);
  v7 = *v6;
  std::recursive_mutex::lock((*v6 + 112));
  v8 = v6[10];
  if (!v8)
  {
    operator new();
  }

  v10 = (v8 + 8);
  v9 = *(v8 + 8);
  if (v9 == musicSequence)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    MusicSequenceSetAudioGraph();
    *v10 = 0;
  }

  if (!musicSequence)
  {
    goto LABEL_20;
  }

  if (!*(v8 + 16))
  {
    operator new();
  }

  v11 = MusicSequenceSetAudioGraph();
  if (!v11)
  {
    *v10 = musicSequence;
LABEL_20:
    std::recursive_mutex::unlock((v7 + 112));
    goto LABEL_21;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v12 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    v15 = "AVAEInternal.h";
    v16 = 1024;
    v17 = 104;
    v18 = 2080;
    v19 = "AVAudioEngineGraph.mm";
    v20 = 1024;
    v21 = 4519;
    v22 = 2080;
    v23 = "SetSequence";
    v24 = 2080;
    v25 = "err = MusicSequenceSetAudioGraph(inSequence, _seqGraphImpl)";
    v26 = 1024;
    v27 = v11;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
  std::recursive_mutex::unlock((v7 + 112));
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v13 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    v15 = "AVAEInternal.h";
    v16 = 1024;
    v17 = 104;
    v18 = 2080;
    v19 = "AVAudioEngine.mm";
    v20 = 1024;
    v21 = 1552;
    v22 = 2080;
    v23 = "SetSequence";
    v24 = 2080;
    v25 = "_graph->SetSequence(inSequence)";
    v26 = 1024;
    v27 = v11;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
LABEL_21:

  std::recursive_mutex::unlock((impl + 112));
}

- (id)description
{
  v91 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  if (v4)
  {
    v5 = *v4;
    v61 = impl;
    std::recursive_mutex::lock((*v4 + 112));
    v60 = v5;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v6 = funopen(&v62, 0, CAMemoryStream::Write, 0, 0);
    v62 = v6;
    __stream = v6;
    fprintf(v6, "\n________ %s ________\n", "GraphDescription");
    fprintf(v6, "AVAudioEngineGraph %p: initialized = %d, running = %d, number of nodes = %d\n", v4, *(v4 + 185), *(v4 + 184), *(*(v4 + 8) + 16));
    v7 = *(v4 + 8);
    v68 = 0;
    v69 = 0;
    v67 = &v68;
    v8 = *v7;
    if (*v7 != v7 + 1)
    {
      if (v67 != &v68)
      {
        v9 = &v68;
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (v11);
      }

      operator new();
    }

    v12 = v7 + 1;
    if (v8 != v12)
    {
      do
      {
        *(v8[5] + 32) &= 0xFFFFFFE7;
        v13 = v8[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v8[2];
            v11 = *v14 == v8;
            v8 = v14;
          }

          while (!v11);
        }

        v8 = v14;
      }

      while (v14 != v12);
    }

    if (AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 24)))
    {
      fwrite("\n\t ******** output chain ********\n", 0x22uLL, 1uLL, __stream);
      NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 24));
      *v75 = &unk_1F384D780;
      *&v75[8] = &__stream;
      *&v76 = &v67;
      *(&v76 + 1) = v75;
      AUGraphParser::TraverseGraphNodesBFS(1, NodeFromMap, 0, v75);
      std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v75);
    }

    if (AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 16)))
    {
      fwrite("\n\t ******** input chain ********\n", 0x21uLL, 1uLL, __stream);
      v16 = AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 16));
      *v75 = &unk_1F384D7C8;
      *&v75[8] = &__stream;
      *&v76 = &v67;
      *(&v76 + 1) = v75;
      AUGraphParser::TraverseGraphNodesBFS(0, v16, 0, v75);
      std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v75);
    }

    if (*(v4 + 152))
    {
      fwrite("\n\t ******** pending connections - output ********\n", 0x32uLL, 1uLL, __stream);
      v17 = *(v4 + 144);
      if (v17 != (v4 + 136))
      {
        while (1)
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          *v75 = 0u;
          v76 = 0u;
          v19 = v17 + 2;
          v18 = v17[2];
          memset(&v66, 0, sizeof(v66));
          if (v18)
          {
            break;
          }

          v21 = v17[4];
          if (v21)
          {
            v20 = (**(v21 + 24) + 72);
LABEL_24:
            v22 = (*v20)();
            if (v22)
            {
              streamDescription = [v22 streamDescription];
              v24 = *(streamDescription + 16);
              *&v66.var0 = *streamDescription;
              *&v66.var3 = v24;
              *&v66.var7 = *(streamDescription + 32);
            }
          }

          v25 = __stream;
          AVAudioEngineGraph::ConnAsString(&__p, v4, (v17 + 2));
          v26 = SHIBYTE(v73);
          v27 = __p;
          CAStreamBasicDescription::AsString(&v66, v75, 0x100uLL, v28, v29);
          if (v26 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v27;
          }

          fprintf(v25, "\n\t %s, [%s]\n", p_p, v75);
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p);
          }

          v31 = *v19;
          if (*v19)
          {
            __p = &unk_1F384D810;
            p_stream = &__stream;
            v73 = &v67;
            v74 = &__p;
            AUGraphParser::TraverseGraphNodesBFS(1, v31, 0, &__p);
            std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](&__p);
          }

          v17 = v17[1];
          if (v17 == (v4 + 136))
          {
            goto LABEL_34;
          }
        }

        v20 = (**(v18 + 24) + 48);
        goto LABEL_24;
      }
    }

LABEL_34:
    if (*(v4 + 176))
    {
      fwrite("\n\t ******** pending connections - input ********\n", 0x31uLL, 1uLL, __stream);
      v32 = *(v4 + 168);
      if (v32 != (v4 + 160))
      {
        while (1)
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          *v75 = 0u;
          v76 = 0u;
          v33 = v32[2];
          memset(&v66, 0, sizeof(v66));
          if (v33)
          {
            break;
          }

          v35 = v32[4];
          if (v35)
          {
            v34 = (**(v35 + 24) + 72);
LABEL_40:
            v36 = (*v34)();
            if (v36)
            {
              streamDescription2 = [v36 streamDescription];
              v38 = *(streamDescription2 + 16);
              *&v66.var0 = *streamDescription2;
              *&v66.var3 = v38;
              *&v66.var7 = *(streamDescription2 + 32);
            }
          }

          v39 = __stream;
          AVAudioEngineGraph::ConnAsString(&__p, v4, (v32 + 2));
          v40 = SHIBYTE(v73);
          v41 = __p;
          CAStreamBasicDescription::AsString(&v66, v75, 0x100uLL, v42, v43);
          if (v40 >= 0)
          {
            v44 = &__p;
          }

          else
          {
            v44 = v41;
          }

          fprintf(v39, "\n\t %s, [%s]\n", v44, v75);
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p);
          }

          v45 = v32[4];
          if (v45)
          {
            __p = &unk_1F384D858;
            p_stream = &__stream;
            v73 = &v67;
            v74 = &__p;
            AUGraphParser::TraverseGraphNodesBFS(0, v45, 0, &__p);
            std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](&__p);
          }

          v32 = v32[1];
          if (v32 == (v4 + 160))
          {
            goto LABEL_50;
          }
        }

        v34 = (**(v33 + 24) + 48);
        goto LABEL_40;
      }
    }

LABEL_50:
    if (v69)
    {
      fwrite("\n\t ******** other nodes ********\n", 0x21uLL, 1uLL, __stream);
      v47 = v67;
      if (v67 != &v68)
      {
        do
        {
          AUGraphNodeBase::PrintNodeObject(v47[5], __stream, v46);
          v48 = v47[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v47[2];
              v11 = *v49 == v47;
              v47 = v49;
            }

            while (!v11);
          }

          v47 = v49;
        }

        while (v49 != &v68);
      }
    }

    v50 = *(v4 + 8);
    v53 = *v50;
    v51 = v50 + 1;
    v52 = v53;
    impl = v61;
    if (v53 != v51)
    {
      do
      {
        *(v52[5] + 32) &= 0xFFFFFFE7;
        v54 = v52[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          do
          {
            v55 = v52[2];
            v11 = *v55 == v52;
            v52 = v55;
          }

          while (!v11);
        }

        v52 = v55;
      }

      while (v55 != v51);
    }

    fwrite("______________________________________\n\n", 0x28uLL, 1uLL, __stream);
    std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(v68);
    fflush(v62);
    v56 = v63;
    if (!v63)
    {
      v56 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
      v63 = v56;
    }

    *(v56 + v64) = 0;
    v57 = v63;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    fclose(v62);
    free(v63);
    std::recursive_mutex::unlock((v60 + 112));
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v57];
    free(v57);
  }

  else
  {
    v58 = @"<AVAudioEngine: nil graph>";
  }

  std::recursive_mutex::unlock((impl + 112));
  return v58;
}

- (NSArray)outputConnectionPointsForNode:(AVAudioNode *)node outputBus:(AVAudioNodeBus)bus
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  OutputConnectionPointsForNode = AVAudioEngineImpl::GetOutputConnectionPointsForNode(self->_impl, node, bus);
  std::recursive_mutex::unlock((impl + 112));
  return OutputConnectionPointsForNode;
}

- (AVAudioConnectionPoint)inputConnectionPointForNode:(AVAudioNode *)node inputBus:(AVAudioNodeBus)bus
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  InputConnectionPointForNode = AVAudioEngineImpl::GetInputConnectionPointForNode(self->_impl, node, bus);
  std::recursive_mutex::unlock((impl + 112));
  return InputConnectionPointForNode;
}

- (void)stop
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Stop(self->_impl, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)reset
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Reset(self->_impl);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)pause
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Pause(self->_impl, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)prepare
{
  v15 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = 0;
  AVAudioEngineImpl::Initialize(self->_impl, &v6);
  if (v6)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      code = [(NSError *)v6 code];
      *buf = 136315906;
      v8 = "AVAudioEngine.mm";
      v9 = 1024;
      v10 = 192;
      v11 = 2048;
      selfCopy = self;
      v13 = 1024;
      v14 = code;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine@%p: could not initialize, error = %d", buf, 0x22u);
    }
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (BOOL)startAndReturnError:(NSError *)outError
{
  v26 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    if (v9)
    {
      v10 = v9[208];
      v9 += 184;
      if (v10)
      {
        v9 = (v6 + 64);
      }

      LODWORD(v9) = *v9;
    }

    *v19 = 136315906;
    *&v19[4] = "AVAudioEngine.mm";
    v20 = 1024;
    v21 = 1182;
    v22 = 2048;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: start, was running %d", v19, 0x22u);
  }

  v11 = *(v6 + 1);
  if (v11)
  {
    v12 = *(v11 + 208) ? v6 + 64 : (v11 + 184);
    if (*v12 == 1)
    {
      v13 = 1;
      v6[64] = 1;
      if (outError)
      {
        *outError = 0;
      }

      goto LABEL_25;
    }
  }

  *v19 = 0;
  AVAudioEngineImpl::Initialize(v6, v19);
  v14 = *v19;
  if (!*v19)
  {
    v15 = *(v6 + 7);
    if (!v15)
    {
LABEL_22:
      AVAudioEngineGraph::Start(*(v6 + 1), v19);
      v14 = *v19;
      goto LABEL_23;
    }

    if (*(v6 + 5))
    {
      CanPerformIO = AVAudioIOUnit::CanPerformIO(v15, 0);
      if (!*(v6 + 4))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v18 = *(v6 + 4);
      CanPerformIO = v18 != 0;
      if (!v18)
      {
LABEL_21:
        _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 1269, "CheckCanPerformIO", "canPerformIO", CanPerformIO, 560227702, v19);
        v14 = *v19;
        if (*v19)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    CanPerformIO &= AVAudioIOUnit::CanPerformIO(*(v6 + 7), 1);
    goto LABEL_21;
  }

LABEL_23:
  v13 = v14 == 0;
  v6[64] = v14 == 0;
  if (outError)
  {
    *outError = v14;
  }

LABEL_25:
  std::recursive_mutex::unlock((impl + 112));
  return v13;
}

- (void)disconnectNodeOutput:(AVAudioNode *)node
{
  v38 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v5 = self->_impl;
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngine.mm";
      v32 = 1024;
      *v33 = 1059;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllOutputs";
      v34 = 2080;
      v35 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v5 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngine.mm";
      v32 = 1024;
      *v33 = 1060;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllOutputs";
      v34 = 2080;
      v35 = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v8 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v9 = *v5;
    *buf = 136315906;
    v27 = "AVAudioEngine.mm";
    v28 = 1024;
    v29 = 1062;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    *v33 = node;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect all outputs on node: %p", buf, 0x26u);
  }

  v10 = *(v5 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      *v33 = 2864;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllOutputs";
      v34 = 2080;
      v35 = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  v12 = objc_msgSend_impl(node);
  if (!v12)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      *v33 = 2867;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllOutputs";
      v34 = 2080;
      v35 = "inImpl";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl"}];
  }

  v14 = *v10;
  std::recursive_mutex::lock((*v10 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v10, v12))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      *v33 = 2872;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllOutputs";
      v34 = 2080;
      v35 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v10, v12);
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  AUGraphNodeBase::GetValidConnections(NodeFromMap, 0, &v23);
  v17 = v24;
  if (v24 == &v23)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = AVAudioEngineGraph::_DisconnectInput(v10, *(v17[4] + 24), *(v17 + 10));
      if (v19)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v20 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v27 = "AVAEInternal.h";
          v28 = 1024;
          v29 = 104;
          v30 = 2080;
          v31 = "AVAudioEngineGraph.mm";
          v32 = 1024;
          *v33 = 2884;
          *&v33[4] = 2080;
          *&v33[6] = "DisconnectAllOutputs";
          v34 = 2080;
          v35 = "tmpErr = _DisconnectInput(conn.destNode->NodeImpl(), conn.destBus)";
          v36 = 1024;
          v37 = v19;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v19}];
        v18 = v19;
      }

      v17 = v17[1];
    }

    while (v17 != &v23);
  }

  std::__list_imp<AUGraphConnection>::clear(&v23);
  std::recursive_mutex::unlock((v14 + 112));
  if (v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v21 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 104;
      v30 = 2080;
      v31 = "AVAudioEngine.mm";
      v32 = 1024;
      *v33 = 1064;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllOutputs";
      v34 = 2080;
      v35 = "_graph->DisconnectAllOutputs(node)";
      v36 = 1024;
      v37 = v18;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectNodeInput:(AVAudioNode *)node
{
  v38 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v5 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v6 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    *buf = 136315906;
    v27 = "AVAudioEngine.mm";
    v28 = 1024;
    v29 = 1049;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    *v33 = node;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect all inputs on node: %p", buf, 0x26u);
  }

  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngine.mm";
      v32 = 1024;
      *v33 = 1051;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllInputs";
      v34 = 2080;
      v35 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v5 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngine.mm";
      v32 = 1024;
      *v33 = 1052;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllInputs";
      v34 = 2080;
      v35 = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  v10 = *(v5 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      *v33 = 2835;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllInputs";
      v34 = 2080;
      v35 = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  v12 = objc_msgSend_impl(node);
  if (!v12)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      *v33 = 2838;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllInputs";
      v34 = 2080;
      v35 = "inImpl";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl"}];
  }

  v14 = *v10;
  std::recursive_mutex::lock((*v10 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v10, v12))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      *v33 = 2843;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllInputs";
      v34 = 2080;
      v35 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v10, v12);
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  AUGraphNodeBase::GetValidConnections(NodeFromMap, 1, &v23);
  v17 = v24;
  if (v24 == &v23)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = AVAudioEngineGraph::_DisconnectInput(v10, *(v17[4] + 24), *(v17 + 10));
      if (v19)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v20 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v27 = "AVAEInternal.h";
          v28 = 1024;
          v29 = 104;
          v30 = 2080;
          v31 = "AVAudioEngineGraph.mm";
          v32 = 1024;
          *v33 = 2855;
          *&v33[4] = 2080;
          *&v33[6] = "DisconnectAllInputs";
          v34 = 2080;
          v35 = "tmpErr = _DisconnectInput(conn.destNode->NodeImpl(), conn.destBus)";
          v36 = 1024;
          v37 = v19;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v19}];
        v18 = v19;
      }

      v17 = v17[1];
    }

    while (v17 != &v23);
  }

  std::__list_imp<AUGraphConnection>::clear(&v23);
  std::recursive_mutex::unlock((v14 + 112));
  if (v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v21 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 104;
      v30 = 2080;
      v31 = "AVAudioEngine.mm";
      v32 = 1024;
      *v33 = 1054;
      *&v33[4] = 2080;
      *&v33[6] = "DisconnectAllInputs";
      v34 = 2080;
      v35 = "_graph->DisconnectAllInputs(node)";
      v36 = 1024;
      v37 = v18;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectNodeOutput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus
{
  v32 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v8 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *v8;
    *buf = 136316162;
    *&buf[4] = "AVAudioEngine.mm";
    v24 = 1024;
    v25 = 1039;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    *v29 = bus;
    *&v29[8] = 2048;
    *&v29[10] = node;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect output bus: %lu on node: %p", buf, 0x30u);
  }

  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngine.mm";
      v28 = 1024;
      *v29 = 1041;
      *&v29[4] = 2080;
      *&v29[6] = "DisconnectOutput";
      *&v29[14] = 2080;
      *&v29[16] = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v8 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngine.mm";
      v28 = 1024;
      *v29 = 1042;
      *&v29[4] = 2080;
      *&v29[6] = "DisconnectOutput";
      *&v29[14] = 2080;
      *&v29[16] = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  v13 = *(v8 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      *v29 = 2808;
      *&v29[4] = 2080;
      *&v29[6] = "DisconnectOutput";
      *&v29[14] = 2080;
      *&v29[16] = "inSrcAVNode";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcAVNode"}];
  }

  v15 = objc_msgSend_impl(node);
  if (!v15)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      *v29 = 2811;
      *&v29[4] = 2080;
      *&v29[6] = "DisconnectOutput";
      *&v29[14] = 2080;
      *&v29[16] = "inSrcImpl";
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl"}];
  }

  v17 = (*(*v15 + 240))(v15, bus);
  v18 = *v13;
  std::recursive_mutex::lock((*v13 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v13, v15))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v19 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      *v29 = 2821;
      *&v29[4] = 2080;
      *&v29[6] = "_DisconnectOutput";
      *&v29[14] = 2080;
      *&v29[16] = "IsNodeInGraph(inSrcImpl)";
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inSrcImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v13, v15);
  *buf = 0;
  *&buf[8] = -1;
  if ((*(*NodeFromMap + 40))(NodeFromMap, 0, v17, buf))
  {
    v21 = AVAudioEngineGraph::_DisconnectInput(v13, *(*buf + 24), *&buf[8]);
    std::recursive_mutex::unlock((v18 + 112));
    if (v21)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v22 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        v24 = 1024;
        v25 = 104;
        v26 = 2080;
        v27 = "AVAudioEngine.mm";
        v28 = 1024;
        *v29 = 1044;
        *&v29[4] = 2080;
        *&v29[6] = "DisconnectOutput";
        *&v29[14] = 2080;
        *&v29[16] = "_graph->DisconnectOutput(node, bus)";
        v30 = 1024;
        v31 = v21;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v21}];
    }
  }

  else
  {
    std::recursive_mutex::unlock((v18 + 112));
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectNodeInput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus
{
  v30 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v8 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *v8;
    *buf = 136316162;
    v21 = "AVAudioEngine.mm";
    v22 = 1024;
    v23 = 1029;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    *v27 = bus;
    *&v27[8] = 2048;
    *&v27[10] = node;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect input bus: %lu on node: %p", buf, 0x30u);
  }

  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v21 = "AVAEInternal.h";
      v22 = 1024;
      v23 = 71;
      v24 = 2080;
      v25 = "AVAudioEngine.mm";
      v26 = 1024;
      *v27 = 1031;
      *&v27[4] = 2080;
      *&v27[6] = "DisconnectInput";
      *&v27[14] = 2080;
      *&v27[16] = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v8 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v21 = "AVAEInternal.h";
      v22 = 1024;
      v23 = 71;
      v24 = 2080;
      v25 = "AVAudioEngine.mm";
      v26 = 1024;
      *v27 = 1032;
      *&v27[4] = 2080;
      *&v27[6] = "DisconnectInput";
      *&v27[14] = 2080;
      *&v27[16] = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  v13 = *(v8 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v21 = "AVAEInternal.h";
      v22 = 1024;
      v23 = 71;
      v24 = 2080;
      v25 = "AVAudioEngineGraph.mm";
      v26 = 1024;
      *v27 = 2685;
      *&v27[4] = 2080;
      *&v27[6] = "DisconnectInput";
      *&v27[14] = 2080;
      *&v27[16] = "inDestAVNode";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestAVNode"}];
  }

  v15 = objc_msgSend_impl(node);
  if (!v15)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v21 = "AVAEInternal.h";
      v22 = 1024;
      v23 = 71;
      v24 = 2080;
      v25 = "AVAudioEngineGraph.mm";
      v26 = 1024;
      *v27 = 2688;
      *&v27[4] = 2080;
      *&v27[6] = "DisconnectInput";
      *&v27[14] = 2080;
      *&v27[16] = "inDestImpl";
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestImpl"}];
  }

  v17 = (*(*v15 + 240))(v15, bus);
  v18 = AVAudioEngineGraph::_DisconnectInput(v13, v15, v17);
  if (v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v19 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v21 = "AVAEInternal.h";
      v22 = 1024;
      v23 = 104;
      v24 = 2080;
      v25 = "AVAudioEngine.mm";
      v26 = 1024;
      *v27 = 1034;
      *&v27[4] = 2080;
      *&v27[6] = "DisconnectInput";
      *&v27[14] = 2080;
      *&v27[16] = "_graph->DisconnectInput(node, bus)";
      v28 = 1024;
      v29 = v18;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
  }

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connect:(AVAudioNode *)sourceNode toConnectionPoints:(NSArray *)destNodes fromBus:(AVAudioNodeBus)sourceBus format:(AVAudioFormat *)format
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMultipleOutputs(self->_impl, sourceNode, destNodes, sourceBus, format);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 format:(AVAudioFormat *)format
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v10 = self->_impl;
  if (node2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    nextAvailableInputBus = [(AVAudioNode *)node2 nextAvailableInputBus];
  }

  else
  {
    nextAvailableInputBus = 0;
  }

  AVAudioEngineImpl::Connect(v10, node1, node2, 0, nextAvailableInputBus, format);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 fromBus:(AVAudioNodeBus)bus1 toBus:(AVAudioNodeBus)bus2 format:(AVAudioFormat *)format
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Connect(self->_impl, node1, node2, bus1, bus2, format);

  std::recursive_mutex::unlock((impl + 112));
}

- (AVAudioMixerNode)mainMixerNode
{
  v16 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 6);
  if (!v5)
  {
    OutputNode = AVAudioEngineImpl::GetOutputNode(v4);
    v5 = objc_alloc_init(AVAudioMixerNode);
    AVAudioEngineImpl::AttachNode(v4, &v5->super, 1);

    if (AVAudioEngineImpl::Connect(v4, &v5->super, OutputNode, 0, 0, 0))
    {
      *(v4 + 6) = v5;
    }

    else
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v7 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        v8 = *v4;
        v10 = 136315650;
        v11 = "AVAudioEngine.mm";
        v12 = 1024;
        v13 = 694;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine#%p: error: couldn't connect mixer to output node!", &v10, 0x1Cu);
      }

      AVAudioEngineImpl::DetachNode(v4, &v5->super, 1, 0);
      v5 = 0;
    }
  }

  std::recursive_mutex::unlock((impl + 112));
  return v5;
}

- (AVAudioInputNode)inputNode
{
  v23 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 4);
  if (v5)
  {
    v6 = *(*(v4 + 1) + 187);
    isInManualRenderingMode = [*(v4 + 4) isInManualRenderingMode];
    if ((isInManualRenderingMode & v6) == 1)
    {
      if ([v5 manualRenderingMode] == *(*(v4 + 1) + 192))
      {
        goto LABEL_12;
      }
    }

    else if (isInManualRenderingMode == v6)
    {
      goto LABEL_12;
    }
  }

  AVAudioEngineImpl::UpdateInputNode(v4, 1);
  if (!*(v4 + 4))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioEngine.mm";
      v17 = 1024;
      v18 = 679;
      v19 = 2080;
      v20 = "GetInputNode";
      v21 = 2080;
      v22 = "_inputNode != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_inputNode != nil"}];
  }

LABEL_12:
  v9 = *(v4 + 4);
  std::recursive_mutex::unlock((impl + 112));
  return v9;
}

- (AVAudioOutputNode)outputNode
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  OutputNode = AVAudioEngineImpl::GetOutputNode(self->_impl);
  std::recursive_mutex::unlock((impl + 112));
  return OutputNode;
}

- (void)detachNode:(AVAudioNode *)node
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::DetachNode(self->_impl, node, 0, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)attachNode:(AVAudioNode *)node
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::AttachNode(self->_impl, node, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v12 = 0;
    AVAudioEngineImpl::Stop(impl, &v12);
    std::unique_ptr<AVAEBlock<AVAudioEngineManualRenderingStatus({block_pointer})(unsigned int,AudioBufferList *,int *)>>::reset[abi:ne200100](impl + 13, 0);
    v4 = *(impl + 5);
    if (v4)
    {
      AVAudioEngineGraph::RemoveIONode(*(impl + 1), v4, 0, &v12);
      AVAudioEngineImpl::DetachNode(impl, *(impl + 5), 1, &v12);
      *(impl + 5) = 0;
    }

    v5 = *(impl + 4);
    if (v5)
    {
      AVAudioEngineGraph::RemoveIONode(*(impl + 1), v5, 1, &v12);
      AVAudioEngineImpl::DetachNode(impl, *(impl + 4), 1, &v12);
      *(impl + 4) = 0;
    }

    v6 = *(impl + 6);
    if (v6)
    {
      AVAudioEngineImpl::DetachNode(impl, v6, 1, &v12);
      *(impl + 6) = 0;
    }

    while (1)
    {
      anyObject = [*(impl + 3) anyObject];
      if (!anyObject)
      {
        break;
      }

      AVAudioEngineImpl::DetachNode(impl, anyObject, 0, &v12);
    }

    std::recursive_mutex::lock((impl + 112));
    std::unique_ptr<AVAudioEngineGraph>::reset[abi:ne200100](impl + 1);
    std::recursive_mutex::unlock((impl + 112));
    v8 = *(impl + 7);
    *(impl + 7) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(impl + 11);
    if (v9)
    {
      dispatch_block_cancel(v9);
    }

    dispatch_sync(*(impl + 9), &__block_literal_global_110);

    dispatch_release(*(impl + 9));
    std::recursive_mutex::~recursive_mutex((impl + 112));
    std::unique_ptr<AVAEBlock<AVAudioEngineManualRenderingStatus({block_pointer})(unsigned int,AudioBufferList *,int *)>>::reset[abi:ne200100](impl + 13, 0);
    v10 = *(impl + 7);
    *(impl + 7) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    std::unique_ptr<AVAudioEngineGraph>::reset[abi:ne200100](impl + 1);
    MEMORY[0x1BFAF5800](impl, 0x10A0C40461284F8);
  }

  v11.receiver = self;
  v11.super_class = AVAudioEngine;
  [(AVAudioEngine *)&v11 dealloc];
}

- (AVAudioEngine)init
{
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v4.receiver = self;
  v4.super_class = AVAudioEngine;
  if ([(AVAudioEngine *)&v4 init])
  {
    operator new();
  }

  return 0;
}

@end