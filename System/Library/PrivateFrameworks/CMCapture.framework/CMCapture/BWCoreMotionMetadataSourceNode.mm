@interface BWCoreMotionMetadataSourceNode
+ (int)extractBWCoreMotionMetadataFromBlockBuffer:(OpaqueCMBlockBuffer *)buffer intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)data;
+ (int)extractBWCoreMotionMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)buffer intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)data;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (BWCoreMotionMetadataSourceNode)initWithBufferGenerationRate:(int)rate samplesPerBuffer:(int)buffer;
- (void)_emitMetadataSampleBuffer;
- (void)dealloc;
@end

@implementation BWCoreMotionMetadataSourceNode

- (BOOL)start:(id *)start
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__BWCoreMotionMetadataSourceNode_start___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(emitSamplesDispatchQueue, block);
  return 1;
}

void *__40__BWCoreMotionMetadataSourceNode_start___block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = result;
    memset(v6, 0, 28);
    if (*(v1 + 140) >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = (*(v1 + 152) + v3);
        *v5 = 0u;
        v5[1] = 0u;
        v5[2] = *v6;
        *(v5 + 44) = *&v6[12];
        ++v4;
        v1 = result[4];
        v3 += 60;
      }

      while (v4 < *(v1 + 140));
    }

    *(v1 + 160) = 0;
    [*(result[4] + 16) makeConfiguredFormatLive];
    *(v2[4] + 144) = 1;
    return [*(v2[4] + 128) setDeviceMotionCallback:cmmsn_deviceMotionCallback info:v2[4] interval:1 fsync:1.0 / (*(v2[4] + 140) * *(v2[4] + 136))];
  }

  return result;
}

- (BOOL)stop:(id *)stop
{
  if (self->_running)
  {
    block[7] = v3;
    block[8] = v4;
    [(CMMotionManager *)self->_motionManager setDeviceMotionCallback:0 info:0 interval:0 fsync:0.0];
    emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__BWCoreMotionMetadataSourceNode_stop___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(emitSamplesDispatchQueue, block);
  }

  return 1;
}

void *__39__BWCoreMotionMetadataSourceNode_stop___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    [(BWCoreMotionMetadataSourceNode *)v2 _emitMetadataSampleBuffer];
    v2 = *(a1 + 32);
  }

  result = [*(v2 + 16) markEndOfLiveOutput];
  *(*(a1 + 32) + 144) = 0;
  return result;
}

+ (int)extractBWCoreMotionMetadataFromBlockBuffer:(OpaqueCMBlockBuffer *)buffer intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)data
{
  if (!data)
  {
    [BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:? intoNativeEndianSampleData:?];
    return v13;
  }

  if (!buffer)
  {
    [BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:? intoNativeEndianSampleData:?];
    return v13;
  }

  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(buffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v6 = DataPointer;
    +[BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:intoNativeEndianSampleData:];
  }

  else if (lengthAtOffsetOut <= 0x43)
  {
    +[BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:intoNativeEndianSampleData:];
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = *(dataPointerOut + 24);
    v8 = *(dataPointerOut + 40);
    v9 = *(dataPointerOut + 8);
    *(&data->var6 + 4) = *(dataPointerOut + 52);
    *&data->var3 = v7;
    *&data->var5 = v8;
    *&data->var0 = v9;
    data->var1 = 0;
    if ((data->var0 & 0x2000000) != 0)
    {
      v6 = 0;
      *&data->var6 = bswap64(*&data->var6);
      LODWORD(data->var9) = bswap32(LODWORD(data->var9));
      *&data->var2 = vrev64q_s8(*&data->var2);
      *&data->var4 = vrev64q_s8(*&data->var4);
      *&data->var7 = vrev32_s8(*&data->var7);
    }
  }

  return v6;
}

+ (int)extractBWCoreMotionMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)buffer intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)data
{
  DataBuffer = CMSampleBufferGetDataBuffer(buffer);

  return [BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:DataBuffer intoNativeEndianSampleData:data];
}

- (BWCoreMotionMetadataSourceNode)initWithBufferGenerationRate:(int)rate samplesPerBuffer:(int)buffer
{
  if (!rate)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Need a non-zero buffer generation rate";
    goto LABEL_13;
  }

  if (!buffer)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Need a non-zero samplesPerBuffer";
LABEL_13:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  v21.receiver = self;
  v21.super_class = BWCoreMotionMetadataSourceNode;
  v6 = [(BWNode *)&v21 init];
  if (v6)
  {
    initUsing6AxisSensorFusion = [objc_alloc(MEMORY[0x1E69634D0]) initUsing6AxisSensorFusion];
    v6->_motionManager = initUsing6AxisSensorFusion;
    if (-[CMMotionManager isDeviceMotionAvailable](initUsing6AxisSensorFusion, "isDeviceMotionAvailable") && -[CMMotionManager isAccelerometerAvailable](v6->_motionManager, "isAccelerometerAvailable") && (v8 = *MEMORY[0x1E6962908], v9 = *MEMORY[0x1E6960338], v18[0] = *MEMORY[0x1E6960348], v18[1] = v9, v10 = *MEMORY[0x1E6960260], v19[0] = v8, v19[1] = v10, v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2], v11 = objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v20, 1), !CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v11, &v6->_boxedMetadataFormatDescription)) && (LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors(), v6->_localIDOfCoreMotionMetadata_BE = bswap32(LocalIDForMetadataIdentifyingFactors), LocalIDForMetadataIdentifyingFactors))
    {
      v6->_sampleDataForBuffer = malloc_type_malloc(60 * buffer, 0x1000040C2DCA394uLL);
      v6->_emitSamplesDispatchQueue = FigDispatchQueueCreateWithPriority();
      v14 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
      [(BWNodeOutput *)v14 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v6->_boxedMetadataFormatDescription]];
      [(BWNode *)v6 addOutput:v14];

      v6->_bufferGenerationRate = rate;
      v6->_samplesPerBuffer = buffer;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  boxedMetadataFormatDescription = self->_boxedMetadataFormatDescription;
  if (boxedMetadataFormatDescription)
  {
    CFRelease(boxedMetadataFormatDescription);
  }

  free(self->_sampleDataForBuffer);

  v4.receiver = self;
  v4.super_class = BWCoreMotionMetadataSourceNode;
  [(BWNode *)&v4 dealloc];
}

- (void)_emitMetadataSampleBuffer
{
  if (self)
  {
    sampleBufferOut = 0;
    v25 = 0;
    v2 = 68 * *(self + 160);
    v3 = malloc_type_malloc(v2, 0x68D099D8uLL);
    if (*(self + 160) < 1)
    {
      v6 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = v3 + 8;
      do
      {
        *(v7 - 2) = 1140850688;
        *(v7 - 1) = *(self + 176);
        v8 = (*(self + 152) + v4);
        v10 = v8[1];
        v9 = v8[2];
        v11 = *v8;
        *(v7 + 44) = *(v8 + 44);
        v7[1] = v10;
        v7[2] = v9;
        *v7 = v11;
        v7 = (v7 + 68);
        v6 += 68;
        ++v5;
        v4 += 60;
      }

      while (v5 < *(self + 160));
    }

    *(self + 160) = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v3, v2, *MEMORY[0x1E695E488], 0, 0, v6, 0, &v25);
    if (v13)
    {
      v18 = v13;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      LODWORD(blockBufferOut) = v18;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOut);
    }

    else
    {
      memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      CMTimeMakeWithSeconds(&__dst.presentationTimeStamp, *(*(self + 152) + 8), 1000000000);
      DataLength = CMBlockBufferGetDataLength(v25);
      v15 = *(self + 168);
      v22 = DataLength;
      v16 = CMSampleBufferCreate(v12, v25, 1u, 0, 0, v15, 1, 1, &__dst, 1, &v22, &sampleBufferOut);
      if (v16)
      {
        v19 = v16;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        LODWORD(blockBufferOuta) = v19;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOuta);
      }

      else
      {
        output = [self output];
        [output emitSampleBuffer:sampleBufferOut];
      }
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }
  }
}

+ (uint64_t)extractBWCoreMotionMetadataFromBlockBuffer:(_DWORD *)a1 intoNativeEndianSampleData:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWCoreMotionMetadataSourceNode >>>>", 0x95, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

+ (uint64_t)extractBWCoreMotionMetadataFromBlockBuffer:(_DWORD *)a1 intoNativeEndianSampleData:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWCoreMotionMetadataSourceNode >>>>", 0x94, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

@end