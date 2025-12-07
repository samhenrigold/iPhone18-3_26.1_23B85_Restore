@interface VideoMitigation
- ($43C834F0531B50B92CAF4577069D180C)configuration;
- (VideoMitigation)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (int64_t)mitigate:(__CVBuffer *)mitigate info:(id)info futureFrames:(id *)frames inputTexture:(id)texture;
- (int64_t)updateFrameQueuesWithInputFrame:(__CVBuffer *)frame inputTexture:(id)texture index:(signed __int16)index;
- (int64_t)updateMetaQueuesWithInfo:(id)info index:(signed __int16)index;
- (int64_t)updateQueuesWithFutureFrame:(id *)frame futureFrameIndex:(signed __int16)index atBaseIndex:(signed __int16)baseIndex;
- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)frame inputTexture:(id)texture info:(id)info index:(signed __int16)index;
- (void)_resetIntermediateVariables;
- (void)_spatialMitigate;
- (void)_temporalMitigateWithFuture;
- (void)_temporalMitigateWithPast;
- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index;
- (void)dealloc;
- (void)setConfiguration:(id *)configuration;
@end

@implementation VideoMitigation

- (void)_resetIntermediateVariables
{
  inputInfoQueue = self->_inputInfoQueue;
  v4 = 5;
  do
  {
    v5 = *(inputInfoQueue - 5);
    if (v5)
    {
      CFRelease(v5);
      *(inputInfoQueue - 5) = 0;
    }

    v6 = *inputInfoQueue;
    *inputInfoQueue++ = 0;

    --v4;
  }

  while (v4);
  self->_frameIndexInVideo = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VideoMitigation;
  [(VideoMitigation *)&v2 dealloc];
}

- (int64_t)updateFrameQueuesWithInputFrame:(__CVBuffer *)frame inputTexture:(id)texture index:(signed __int16)index
{
  indexCopy = index;
  textureCopy = texture;
  v9 = &self->super.isa + indexCopy;
  v10 = v9[5];
  v9[5] = frame;
  if (frame)
  {
    CFRetain(frame);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)frame inputTexture:(id)texture info:(id)info index:(signed __int16)index
{
  indexCopy = index;
  infoCopy = info;
  v11 = [(VideoMitigation *)self updateFrameQueuesWithInputFrame:frame inputTexture:texture index:indexCopy];
  if (v11)
  {
    v12 = v11;
    [VideoMitigation updateQueuesWithInputFrame:inputTexture:info:index:];
  }

  else
  {
    v12 = [(VideoMitigation *)self updateMetaQueuesWithInfo:infoCopy index:indexCopy];
  }

  return v12;
}

- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index
{
  indexCopy = index;
  inputFrameQueue = self->_inputFrameQueue;
  inputInfoQueue = self->_inputInfoQueue;
  v6 = 1;
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = v7 + indexCopy;
    v10 = v7 + indexCopy - 5;
    if (v9 >= 5)
    {
      LOWORD(v9) = v10;
    }

    v11 = v9;
    v12 = inputFrameQueue[v9];
    if (v12)
    {
      CFRelease(v12);
      inputFrameQueue[v11] = 0;
    }

    v13 = inputInfoQueue[v11];
    inputInfoQueue[v11] = 0;

    v6 = 0;
    v7 = 2;
  }

  while ((v8 & 1) != 0);
}

- (int64_t)mitigate:(__CVBuffer *)mitigate info:(id)info futureFrames:(id *)frames inputTexture:(id)texture
{
  infoCopy = info;
  textureCopy = texture;
  kdebug_trace();
  kdebug_trace();
  frameIndexInVideo = self->_frameIndexInVideo;
  var2 = frames->var2;
  getFrameIndexInQueue = [(VideoMitigation *)self getFrameIndexInQueue];
  if (self->_frameIndexInVideo)
  {
    if (var2 >= 2)
    {
      v16 = [(VideoMitigation *)self updateQueuesWithFutureFrame:frames futureFrameIndex:1 atBaseIndex:getFrameIndexInQueue];
      if (v16)
      {
        v17 = v16;
LABEL_21:
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v6, v26, v6, v27, v28, v29, v30);
        ++self->_frameIndexInVideo;
        goto LABEL_18;
      }
    }

LABEL_10:
    v23 = [(VideoMitigation *)self updateMetaQueuesWithInfo:infoCopy index:getFrameIndexInQueue];
    if (v23)
    {
      v17 = v23;
      goto LABEL_21;
    }

    kdebug_trace();
    if (var2 > 1 || frameIndexInVideo >= 2)
    {
      if (frameIndexInVideo < 2)
      {
        [(VideoMitigation *)self _temporalMitigateWithFuture];
      }

      else
      {
        [(VideoMitigation *)self _temporalMitigateWithPast];
      }
    }

    else
    {
      [(VideoMitigation *)self _spatialMitigate];
    }
  }

  else
  {
    if (var2 >= 2)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = [(VideoMitigation *)self updateQueuesWithFutureFrame:frames futureFrameIndex:v18 atBaseIndex:getFrameIndexInQueue];
        if (v21)
        {
          v17 = v21;
          goto LABEL_21;
        }

        v19 = 0;
        v18 = 1;
      }

      while ((v20 & 1) != 0);
      v22 = [(VideoMitigation *)self updateQueuesWithInputFrame:mitigate inputTexture:textureCopy info:infoCopy index:getFrameIndexInQueue];
      if (!v22)
      {
        goto LABEL_10;
      }

      v17 = v22;
      goto LABEL_21;
    }

    [VideoMitigation mitigate:info:futureFrames:inputTexture:];
  }

  v17 = 0;
  v24 = 0;
  ++self->_frameIndexInVideo;
  if (self->_useStockGpuSim)
  {
LABEL_18:
    kdebug_trace();
    v24 = v17;
  }

  return v24;
}

- (void)_temporalMitigateWithPast
{
  kdebug_trace();
  getFrameIndexInQueue = [(VideoMitigation *)self getFrameIndexInQueue];
  if (getFrameIndexInQueue > 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4;
  }

  v5 = v4 + getFrameIndexInQueue;
  if (getFrameIndexInQueue <= 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = -2;
  }

  v7 = (v6 + getFrameIndexInQueue);
  LOBYTE(v8) = 1;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:self->_inputFrameQueue[getFrameIndexInQueue] frmIdx:self->_frameIndexInVideo frRef0Buf:self->_inputFrameQueue[v5] frRef1Buf:self->_inputFrameQueue[v7] metaBuf:self->_inputMetaQueue[getFrameIndexInQueue] ref0MetaBuf:self->_inputMetaQueue[v5] ref1MetaBuf:self->_inputMetaQueue[v7] metaBufHW:self->_inputMetaQueue_HW[getFrameIndexInQueue] info:self->_inputInfoQueue[getFrameIndexInQueue] infoTPlusOrMinus1:self->_inputInfoQueue[v5] infoTPlusOrMinus2:self->_inputInfoQueue[v7] usePastAsRef:v8];

  kdebug_trace();
}

- (void)_temporalMitigateWithFuture
{
  kdebug_trace();
  getFrameIndexInQueue = [(VideoMitigation *)self getFrameIndexInQueue];
  v4 = getFrameIndexInQueue - 4;
  if (getFrameIndexInQueue < 4)
  {
    v4 = getFrameIndexInQueue + 1;
  }

  if (getFrameIndexInQueue > 2)
  {
    v5 = -3;
  }

  else
  {
    v5 = 2;
  }

  v6 = (v5 + getFrameIndexInQueue);
  LOBYTE(v7) = 0;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:self->_inputFrameQueue[getFrameIndexInQueue] frmIdx:self->_frameIndexInVideo frRef0Buf:self->_inputFrameQueue[v4] frRef1Buf:self->_inputFrameQueue[v6] metaBuf:self->_inputMetaQueue[getFrameIndexInQueue] ref0MetaBuf:self->_inputMetaQueue[v4] ref1MetaBuf:self->_inputMetaQueue[v6] metaBufHW:self->_inputMetaQueue_HW[getFrameIndexInQueue] info:self->_inputInfoQueue[getFrameIndexInQueue] infoTPlusOrMinus1:self->_inputInfoQueue[v4] infoTPlusOrMinus2:self->_inputInfoQueue[v6] usePastAsRef:v7];

  kdebug_trace();
}

- (void)_spatialMitigate
{
  v3 = &self->super.isa + [(VideoMitigation *)self getFrameIndexInQueue];
  LOBYTE(v4) = 0;
  [(MitigationHW *)self->_mitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:v3[5] frmIdx:self->_frameIndexInVideo frRef0Buf:v3[5] frRef1Buf:v3[5] metaBuf:v3[15] ref0MetaBuf:v3[15] ref1MetaBuf:v3[15] metaBufHW:v3[20] info:v3[10] infoTPlusOrMinus1:v3[10] infoTPlusOrMinus2:v3[10] usePastAsRef:v4];
}

- ($43C834F0531B50B92CAF4577069D180C)configuration
{
  v3 = *&self[3].var1.var4;
  *&retstr->var0.var0 = *&self[3].var1.var0;
  *&retstr->var0.var7 = v3;
  v4 = *&self[4].var0.var7;
  *&retstr->var1.var0 = *&self[4].var0.var0;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (VideoMitigation)initWithConfig:(id *)config metalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  if (contextCopy)
  {
    v29.receiver = self;
    v29.super_class = VideoMitigation;
    v13 = [(VideoMitigation *)&v29 init];
    self = v13;
    if (v13)
    {
      v14 = *&config->var0.var0;
      v15 = *&config->var0.var7;
      v16 = *&config->var1.var4;
      *&v13->_configuration.externalCfg.lightMode = *&config->var1.var0;
      *&v13->_configuration.externalCfg.frameDelay = v16;
      *&v13->_configuration.internalCfg.clipThreshold = v14;
      *&v13->_configuration.internalCfg.enableColorMask = v15;
      objc_storeStrong(&v13->_metalContext, context);
      self->_hwMode = config->var1.var11 != 0;
      v17 = [[MitigationHW alloc] initWithimageDimensions:dimensions tuningParameters:parametersCopy];
      mitigationHW = self->_mitigationHW;
      self->_mitigationHW = v17;

      if (self->_mitigationHW)
      {
        v19 = objc_alloc_init(CalcHomography);
        calcTransform = self->_calcTransform;
        self->_calcTransform = v19;

        if (self->_calcTransform)
        {
          [(VideoMitigation *)self _resetIntermediateVariables];
          v21 = 120;
          while (1)
          {
            device = [(FigMetalContext *)self->_metalContext device];
            v23 = [device newBufferWithLength:10192 options:0];
            v24 = *(&self->super.isa + v21);
            *(&self->super.isa + v21) = v23;

            if (!*(&self->super.isa + v21))
            {
              break;
            }

            v21 += 8;
            if (v21 == 160)
            {
              v25 = [NSMutableData dataWithLength:10192];
              dummyMetaContainer = self->_dummyMetaContainer;
              self->_dummyMetaContainer = v25;

              self->_useStockGpuSim = !self->_hwMode;
              self = self;
              selfCopy = self;
              goto LABEL_9;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (int64_t)updateMetaQueuesWithInfo:(id)info index:(signed __int16)index
{
  indexCopy = index;
  infoCopy = info;
  objc_storeStrong(&self->_inputInfoQueue[indexCopy], info);
  v8 = [infoCopy objectForKeyedSubscript:@"RepairMetaContainer"];
  v9 = v8;
  if (!v8 || ![v8 mutableBytes])
  {
    contents = 0;
LABEL_9:
    v12 = 5;
    goto LABEL_7;
  }

  v10 = (&self->super.isa + indexCopy);
  contents = [v10[15] contents];
  if (!contents)
  {
    goto LABEL_9;
  }

  memcpy(contents, [v9 mutableBytes], 0x27D0uLL);
  contents = [infoCopy objectForKeyedSubscript:@"RepairMetaContainer_HW"];
  v10[20] = [contents mutableBytes];
  if (!contents || ![contents mutableBytes])
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (int64_t)updateQueuesWithFutureFrame:(id *)frame futureFrameIndex:(signed __int16)index atBaseIndex:(signed __int16)baseIndex
{
  if (index + baseIndex + 1 < 5)
  {
    v7 = index + baseIndex + 1;
  }

  else
  {
    v7 = index + baseIndex - 4;
  }

  v8 = (frame->var0 + 48 * index);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v8[4];
  if (v9)
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = v14;
    if (v10)
    {
      [v14 setObject:v10 forKey:@"MetaData"];
    }

    [v15 setObject:v11 forKey:@"RepairMetaContainer"];
    [v15 setObject:v12 forKey:@"RepairMetaContainer_HW"];
    v16 = [(VideoMitigation *)self updateQueuesWithInputFrame:v9 inputTexture:v13 info:v15 index:v7];
    if (v16)
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v5, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v15 = 0;
    v16 = 5;
  }

  return v16;
}

@end