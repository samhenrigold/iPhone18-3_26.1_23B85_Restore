@interface FigCaptureMicSourcePipeline
- (char)addPipelineOutputs:(uint64_t)outputs toParentNodeOutput:(int)output withAudioChannelLayoutTag:(int)tag atPosition:;
- (id)clock;
- (id)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(int)audioSession audioSessionIsProxy:(unsigned __int8)proxy audioIsPlayingToBuiltinSpeaker:(unsigned int)self0 numberOfCinematicStereoAudioOutputs:(unsigned int)self1 numberOfCinematicFOAAudioOutputs:(char)self2 audioSessionActivatedByBWGraph:(uint64_t)self3 renderDelegate:(unsigned int *)self4 outErr:;
- (id)nextOutputForMicSourcePosition:(int)position forAudioChannelLayoutTag:;
- (uint64_t)sourceNode;
- (unint64_t)_buildMicSourcePipelineWithConfiguration:(void *)configuration graph:(uint64_t)graph audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(char)audioSession audioSessionIsProxy:(int)proxy audioIsPlayingToBuiltinSpeaker:(unsigned int)speaker numberOfCinematicStereoAudioOutputs:(unsigned int)self0 numberOfCinematicFOAAudioOutputs:(char)self1 audioSessionActivatedByBWGraph:(uint64_t)self2 renderDelegate:;
- (void)dealloc;
- (void)updateWithAudioSession:(_OWORD *)session clientAuditToken:;
@end

@implementation FigCaptureMicSourcePipeline

- (uint64_t)sourceNode
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (id)clock
{
  if (result)
  {
    return [result[5] clock];
  }

  return result;
}

- (unint64_t)_buildMicSourcePipelineWithConfiguration:(void *)configuration graph:(uint64_t)graph audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(char)audioSession audioSessionIsProxy:(int)proxy audioIsPlayingToBuiltinSpeaker:(unsigned int)speaker numberOfCinematicStereoAudioOutputs:(unsigned int)self0 numberOfCinematicFOAAudioOutputs:(char)self1 audioSessionActivatedByBWGraph:(uint64_t)self2 renderDelegate:
{
  if (!result)
  {
    return result;
  }

  v107 = 0;
  v106 = 0;
  if (session)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
  }

  v18 = result;
  cf = 0;
  v105 = 0;
  if (a2)
  {
    v19 = *(a2 + 8);
  }

  else
  {
    v19 = 0;
  }

  source = [v19 source];
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    v107 = -12782;
    goto LABEL_88;
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = v21(source, @"AttributesDictionary", *MEMORY[0x1E695E480], &v105);
  v107 = v23;
  if (v23)
  {
LABEL_88:
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

  if (!FigCaptureAudiomxdSupportEnabled(v23, v24))
  {
    if (a2)
    {
      v25 = *(a2 + 8);
    }

    else
    {
      v25 = 0;
    }

    source2 = [v25 source];
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v27)
    {
      v107 = v27(source2, @"Clock", v22, &cf);
      if (!v107)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v107 = -12782;
    }

    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

  if (!graph)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

  v107 = FigAudioSessionClockCreateForAVAudioSession();
  if (v107)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

LABEL_15:
  configurationCopy = configuration;
  cmSessionCopy = cmSession;
  if (a2)
  {
    v28 = *(a2 + 16);
  }

  else
  {
    v28 = 0;
  }

  graphCopy = graph;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v110 objects:&v108 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v111;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v111 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v110 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v33 audioCaptureMode] == 3 || objc_msgSend(v33, "audioCaptureMode") == 4 || objc_msgSend(v33, "audioCaptureMode") == 5 || objc_msgSend(v33, "audioCaptureMode") == 7))
        {
          v34 = 1;
          goto LABEL_32;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v110 objects:&v108 count:16];
      v34 = 0;
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_32:
  audioSessionCopy = audioSession;
  v100 = v18;
  v90 = v105;
  v99 = a2;
  if (a2)
  {
    v88 = *(a2 + 48);
    v89 = cf;
    v35 = *(a2 + 56);
    v36 = *(a2 + 57);
    v37 = *(a2 + 58);
    v38 = *(a2 + 59);
    v39 = *(a2 + 92);
    v108 = *(a2 + 76);
    v109 = v39;
    v40 = *(a2 + 120);
    v41 = *(a2 + 72);
    clientAudioClockDeviceUID = [*(a2 + 8) clientAudioClockDeviceUID];
    preferredIOBufferDuration = [*(a2 + 8) preferredIOBufferDuration];
    v44 = *(a2 + 16);
    v45 = *(a2 + 108);
    v46 = *(a2 + 112);
  }

  else
  {
    v89 = cf;
    v108 = 0u;
    v109 = 0u;
    clientAudioClockDeviceUID = [0 clientAudioClockDeviceUID];
    preferredIOBufferDuration = [0 preferredIOBufferDuration];
    v45 = 0;
    v41 = 0;
    v37 = 0;
    v35 = 0;
    v88 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
    v44 = 0;
    v46 = 0;
  }

  BYTE1(v86) = v45 & 1;
  LOBYTE(v86) = v34;
  LOBYTE(v81) = v41 & 1;
  BYTE4(v78) = audioOutputs;
  BYTE3(v78) = proxy;
  BYTE2(v78) = audioSessionCopy;
  BYTE1(v78) = v38 & 1;
  LOBYTE(v78) = cmSessionCopy;
  v47 = [BWAudioSourceNode audioSourceNodeWithAttributes:"audioSourceNodeWithAttributes:sessionPreset:clock:doConfigureAudio:doMixWithOthers:doAllowHQBluetoothRecording:audioSession:isAppAudioSession:doEndInterruption:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:audioSessionActivatedByBWGraph:clientAuditToken:clientSDKVersionToken:clientOSVersionSupportsDecoupledIO:clientAudioClockDeviceUID:preferredIOBufferDuration:audioCaptureConnectionConfigurations:isConfiguredForContinuityCapture:isAudioOnlyRecordingSession:remoteIOOutputFormat:outErr:" sessionPreset:v90 clock:v88 doConfigureAudio:v89 doMixWithOthers:v35 & 1 doAllowHQBluetoothRecording:v36 & 1 audioSession:v37 & 1 isAppAudioSession:graphCopy doEndInterruption:v78 audioSessionIsProxy:&v108 audioIsPlayingToBuiltinSpeaker:v40 audioSessionActivatedByBWGraph:v81 clientAuditToken:clientAudioClockDeviceUID clientSDKVersionToken:preferredIOBufferDuration clientOSVersionSupportsDecoupledIO:v44 clientAudioClockDeviceUID:v86 preferredIOBufferDuration:v46 audioCaptureConnectionConfigurations:&v107 isConfiguredForContinuityCapture:? isAudioOnlyRecordingSession:? remoteIOOutputFormat:? outErr:?];
  if (cf)
  {
    CFRelease(cf);
  }

  v48 = a2;
  v49 = v100;
  if (!v47)
  {
    fig_log_get_emitter();
    LODWORD(v77) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v77, v12, v79, v80, v82, v83, v84, v85);
    if (!v107)
    {
      v107 = -12786;
    }

    goto LABEL_91;
  }

  if (v107)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
  }

  else
  {
    [(BWNode *)v47 setRenderDelegate:wGraph];
    if (a2)
    {
      v50 = *(a2 + 16);
      v94 = *(v99 + 24);
      v96 = *(v99 + 32);
      v98 = *(v99 + 40);
      v51 = *(v99 + 56);
    }

    else
    {
      v98 = 0;
      v94 = 0;
      v96 = 0;
      v50 = 0;
      v51 = 0;
    }

    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v52 = [v50 countByEnumeratingWithState:&v110 objects:&v108 count:16];
    if (!v52)
    {
      [(BWAudioSourceNode *)v47 setLivePhotoCaptureEnabled:0];
      v55 = 0;
      LOBYTE(v56) = 0;
      v63 = 0;
      v65 = 0;
LABEL_64:
      [(BWAudioSourceNode *)v47 setAudioCaptureMode:v65];
      [(BWAudioSourceNode *)v47 setWindNoiseRemovalEnabled:v56 & 1];
      [(BWAudioSourceNode *)v47 setVideoRecordingEnabled:v55 & 1];
      [(BWAudioSourceNode *)v47 setLevelMeteringEnabled:1];
      if (BWAudioCaptureModeIsSpatial(v63))
      {
        [objc_msgSend(v94 "requiredFormat")];
        [(BWAudioSourceNode *)v47 setStereoAudioCapturePairedCameraBaseFieldOfView:?];
        [v94 videoZoomFactor];
        [(BWAudioSourceNode *)v47 setStereoAudioCapturePairedCameraZoomFactor:?];
        [v96 setZoomCompletionDelegateForStereoAudio:v47];
        [(BWAudioSourceNode *)v47 setFlipStereoAudioCaptureChannels:v98 & 1];
      }

      v107 = 0;
      v66 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
      v103.receiver = v49;
      v103.super_class = FigCaptureMicSourcePipeline;
      if (objc_msgSendSuper2(&v103, sel_addNode_error_, v47, &v106))
      {
        v67 = v47;
        v68 = 0;
        v49[5] = v67;
        v70 = speaker > 2 || outputs > 2;
        while (1)
        {
          v71 = [-[FigCaptureMicSourcePipelineConfiguration micConnectionConfigurationsForMicSourcePosition:](v48 v68)];
          if (v71 >= 1)
          {
            if ([v49[5] audioCaptureMode] == 2)
            {
              if (v70)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:? graph:? audioSession:? cmSession:? isAppAudioSession:? audioSessionIsProxy:? audioIsPlayingToBuiltinSpeaker:? numberOfCinematicStereoAudioOutputs:? numberOfCinematicFOAAudioOutputs:? audioSessionActivatedByBWGraph:? renderDelegate:?];
                goto LABEL_91;
              }

              v72 = [[BWAudioSplitNode alloc] initWithInputChannelLayoutTag:4027580422 output1ChannelLayoutTag:6619138 output2ChannelLayoutTag:12451844];
              -[BWNode setName:](v72, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"AudioSplitNode (%d -> %d:%d)", 6, 2, 4]);
              v73 = v66[166];
              v102.receiver = v49;
              v102.super_class = v73;
              if ((objc_msgSendSuper2(&v102, sel_addNode_error_, v72, &v106) & 1) == 0)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              if (([configurationCopy connectOutput:objc_msgSend(v49[5] toInput:"outputForMicSourcePosition:" pipelineStage:{v68), -[BWNode input](v72, "input"), 0}] & 1) == 0)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              v74 = [(NSArray *)[(BWNode *)v72 outputs] objectAtIndexedSubscript:0];
              v75 = [(NSArray *)[(BWNode *)v72 outputs] objectAtIndexedSubscript:1];
              if (!v74 || (v76 = v75) == 0)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:v75 graph:? audioSession:? cmSession:? isAppAudioSession:? audioSessionIsProxy:? audioIsPlayingToBuiltinSpeaker:? numberOfCinematicStereoAudioOutputs:? numberOfCinematicFOAAudioOutputs:? audioSessionActivatedByBWGraph:? renderDelegate:?];
                goto LABEL_91;
              }

              v49 = v100;
              v107 = [(FigCaptureMicSourcePipeline *)v100 addPipelineOutputs:speaker toParentNodeOutput:v74 withAudioChannelLayoutTag:6619138 atPosition:v68];
              if (v107)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              v107 = [(FigCaptureMicSourcePipeline *)v100 addPipelineOutputs:outputs toParentNodeOutput:v76 withAudioChannelLayoutTag:12451844 atPosition:v68];
              v66 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
              if (v107)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }
            }

            else
            {
              v107 = -[FigCaptureMicSourcePipeline addPipelineOutputs:toParentNodeOutput:withAudioChannelLayoutTag:atPosition:](v49, v71, [v49[5] outputForMicSourcePosition:v68], -65536, v68);
              if (v107)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }
            }
          }

          v68 = (v68 + 1);
          if (v68 == 3)
          {
            goto LABEL_91;
          }
        }
      }

      [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
      goto LABEL_91;
    }

    v53 = v52;
    v92 = v51;
    v91 = v47;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    audioCaptureMode = 0;
    v58 = *v111;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v111 != v58)
        {
          objc_enumerationMutation(v50);
        }

        v60 = *(*(&v110 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v61 = [objc_msgSend(v60 "sinkConfiguration")] == 4 ? 1 : objc_msgSend(objc_msgSend(v60, "irisSinkConfiguration"), "irisMovieCaptureEnabled");
          v55 = v61 | v55 & 1;
          v54 |= [objc_msgSend(v60 "irisSinkConfiguration")];
          v56 |= [v60 windNoiseRemovalEnabled];
          if ([v60 audioCaptureMode])
          {
            audioCaptureMode = [v60 audioCaptureMode];
          }
        }
      }

      v53 = [v50 countByEnumeratingWithState:&v110 objects:&v108 count:16];
    }

    while (v53);
    v62 = proxy ^ 1;
    if (audioCaptureMode != 2)
    {
      v62 = 1;
    }

    if ((v92 | v62))
    {
      if (v62)
      {
        v63 = audioCaptureMode;
      }

      else
      {
        v63 = 0;
      }

      v64 = v54 & 1;
      if (v54)
      {
        v65 = 0;
      }

      else
      {
        v65 = v63;
      }

      v47 = v91;
      [(BWAudioSourceNode *)v91 setLivePhotoCaptureEnabled:v64];
      v48 = v99;
      v49 = v100;
      goto LABEL_64;
    }

    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:&v108 graph:&v107 audioSession:? cmSession:? isAppAudioSession:? audioSessionIsProxy:? audioIsPlayingToBuiltinSpeaker:? numberOfCinematicStereoAudioOutputs:? numberOfCinematicFOAAudioOutputs:? audioSessionActivatedByBWGraph:? renderDelegate:?];
  }

LABEL_91:
  result = v107;
  if (!v107)
  {
    if (v106)
    {
      return [v106 code];
    }
  }

  return result;
}

- (void)dealloc
{
  [(BWZoomCommandHandler *)self->_zoomCommandHandlerForStereoAudioCapture setZoomCompletionDelegateForStereoAudio:0];

  v3 = 0;
  pipelineOutputsByMicSourcePosition = self->_pipelineOutputsByMicSourcePosition;
  do
  {

    pipelineOutputsByMicSourcePosition[v3++] = 0;
  }

  while (v3 != 3);
  v5.receiver = self;
  v5.super_class = FigCaptureMicSourcePipeline;
  [(FigCaptureSourcePipeline *)&v5 dealloc];
}

- (id)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(int)audioSession audioSessionIsProxy:(unsigned __int8)proxy audioIsPlayingToBuiltinSpeaker:(unsigned int)self0 numberOfCinematicStereoAudioOutputs:(unsigned int)self1 numberOfCinematicFOAAudioOutputs:(char)self2 audioSessionActivatedByBWGraph:(uint64_t)self3 renderDelegate:(unsigned int *)self4 outErr:
{
  if (!self)
  {
    return 0;
  }

  if (name && session)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** AVAudioSession and CMSession arguments cannot both be non-nil -- AVAudioSession: %@, CMSession: %@", name, session}];
  }

  if (a2)
  {
    v23 = *(a2 + 8);
  }

  else
  {
    v23 = 0;
  }

  v33.receiver = self;
  v33.super_class = FigCaptureMicSourcePipeline;
  v24 = objc_msgSendSuper2(&v33, sel_initWithGraph_name_sourceID_, configuration, graph, [v23 sourceID]);
  if (v24)
  {
    HIDWORD(v32) = audioSession;
    LODWORD(v32) = proxy;
    v25 = a2 ? *(a2 + 32) : 0;
    v24[9] = v25;
    v26 = [(FigCaptureMicSourcePipeline *)v24 _buildMicSourcePipelineWithConfiguration:a2 graph:configuration audioSession:name cmSession:session isAppAudioSession:cmSession audioSessionIsProxy:audioSession audioIsPlayingToBuiltinSpeaker:proxy numberOfCinematicStereoAudioOutputs:speaker numberOfCinematicFOAAudioOutputs:outputs audioSessionActivatedByBWGraph:audioOutputs renderDelegate:wGraph];
    if (v26)
    {
      v28 = v26;
      fig_log_get_emitter();
      LODWORD(v29) = v28;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v29, v14, v30, v31, v14, v32, v33.receiver, LODWORD(v33.super_class));
      if (delegate)
      {
        *delegate = v28;
      }

      return 0;
    }
  }

  return v24;
}

- (id)nextOutputForMicSourcePosition:(int)position forAudioChannelLayoutTag:
{
  if (!self)
  {
    return 0;
  }

  v3 = *(self + 48 + 8 * a2);
  if (!v3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    return 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FigCaptureMicSourcePipeline_nextOutputForMicSourcePosition_forAudioChannelLayoutTag___block_invoke;
  v9[3] = &__block_descriptor_36_e50_B32__0__FigCaptureMicSourcePipelineOutput_8Q16_B24l;
  positionCopy = position;
  v4 = [v3 indexOfObjectPassingTest:v9];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, (v6 = [v3 objectAtIndex:v4]) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    return 0;
  }

  Weak = objc_loadWeak((v6 + 8));
  [v3 removeObjectAtIndex:v5];
  return Weak;
}

BOOL __87__FigCaptureMicSourcePipeline_nextOutputForMicSourcePosition_forAudioChannelLayoutTag___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

- (void)updateWithAudioSession:(_OWORD *)session clientAuditToken:
{
  if (result)
  {
    v3 = result[5];
    v4 = session[1];
    v5[0] = *session;
    v5[1] = v4;
    return [v3 updateWithAudioSession:a2 clientAuditToken:v5];
  }

  return result;
}

- (char)addPipelineOutputs:(uint64_t)outputs toParentNodeOutput:(int)output withAudioChannelLayoutTag:(int)tag atPosition:
{
  if (result)
  {
    v75[0] = 0;
    if (!a2)
    {
      return 0;
    }

    v9 = result;
    array = [MEMORY[0x1E695DF70] array];
    v11 = array;
    if (a2 == 1)
    {
      v12 = [array addObject:outputs];
    }

    else
    {
      v20 = @"Unknown";
      if (output == 12451844)
      {
        v20 = @"FOA";
      }

      if (output == 6619138)
      {
        v21 = @"Stereo";
      }

      else
      {
        v21 = v20;
      }

      v22 = [[BWFanOutNode alloc] initWithFanOutCount:a2 mediaType:1936684398];
      -[BWNode setName:](v22, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Audio BWFanOutNode (%@)", v21, BWCaptureDevicePositionToString(tag)]);
      v74.receiver = v9;
      v74.super_class = FigCaptureMicSourcePipeline;
      if ((objc_msgSendSuper2(&v74, sel_addNode_error_, v22, v75) & 1) == 0 || ([objc_msgSend(v9 "graph")] & 1) == 0 || !v22)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_24:
        result = v75[0];
        if (v75[0])
        {
          return [v75[0] code];
        }

        return result;
      }

      v12 = [v11 addObjectsFromArray:{-[BWNode outputs](v22, "outputs")}];
    }

    tagCopy = tag;
    if (!*&v9[8 * tag + 48])
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *&v9[8 * tag + 48] = v12;
    }

    v24 = OUTLINED_FUNCTION_1_2(v12, v13, v14, v15, v16, v17, v18, v19, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72);
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0];
      v27 = &v9[8 * tagCopy];
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (MEMORY[0] != v26)
          {
            objc_enumerationMutation(v11);
          }

          v29 = [[FigCaptureMicSourcePipelineOutput alloc] initWithOutput:output forAudioChannelLayoutTag:?];
          [*(v27 + 6) addObject:v29];
        }

        v25 = OUTLINED_FUNCTION_1_2(v30, v31, v32, v33, v34, v35, v36, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
      }

      while (v25);
    }

    goto LABEL_24;
  }

  return result;
}

- (void)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.1()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  __assert_rtn("[FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:]", "FigCaptureMicSourcePipeline.m", 345, "! cmSession");
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:(_DWORD *)a3 graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  v8 = 0;
  v5 = OUTLINED_FUNCTION_3_111();
  FigDebugAssert3(v5, v8, v3);
  *a3 = -12782;
  fig_log_get_emitter();
  LODWORD(v9) = -12782;
  v6 = OUTLINED_FUNCTION_3_111();
  return FigDebugAssert3(v6, v9, v3);
}

@end