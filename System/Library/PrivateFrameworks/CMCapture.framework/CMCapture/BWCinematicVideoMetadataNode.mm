@interface BWCinematicVideoMetadataNode
- (BWCinematicVideoMetadataNode)init;
- (uint64_t)_emptyMetadataBlockBuffer;
- (void)_emitCopyOfMarkerBuffer:(void *)buffer onOutput:;
- (void)_emitMetadataWithCinematographyMetadata:(CMTime *)metadata time:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWCinematicVideoMetadataNode

- (BWCinematicVideoMetadataNode)init
{
  v43.receiver = self;
  v43.super_class = BWCinematicVideoMetadataNode;
  v2 = [(BWNode *)&v43 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v3 setFormatRequirements:v4];

    [(BWNodeInput *)v3 setPassthroughMode:1];
    [(BWNode *)v2 addInput:v3];

    v6 = *MEMORY[0x1E6960338];
    v40[0] = *MEMORY[0x1E6960348];
    v5 = v40[0];
    v40[1] = v6;
    v7 = *MEMORY[0x1E6960208];
    v42[0] = @"mdta/com.apple.quicktime.aperture-float";
    v42[1] = v7;
    v41 = *MEMORY[0x1E6960358];
    v8 = v41;
    v38 = *MEMORY[0x1E6960360];
    v9 = v38;
    v39 = *MEMORY[0x1E695E4C0];
    v10 = v39;
    v42[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v40 count:3];
    v36[0] = v5;
    v36[1] = v6;
    v37[0] = @"mdta/com.apple.quicktime.disparity-float";
    v37[1] = v7;
    v36[2] = v8;
    v34 = v9;
    v35 = v10;
    v37[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v32[0] = v5;
    v32[1] = v6;
    v12 = *MEMORY[0x1E6960260];
    v33[0] = @"mdta/com.apple.quicktime.cinematic-video.cinematography";
    v33[1] = v12;
    v32[2] = v8;
    v30 = v9;
    v31 = v10;
    v33[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v28[0] = v5;
    v28[1] = v6;
    v29[0] = @"mdta/com.apple.quicktime.cinematic-video.rendering";
    v29[1] = v12;
    v28[2] = v8;
    v26 = v9;
    v27 = v10;
    v29[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v24[0] = v5;
    v24[1] = v6;
    v25[0] = @"mdta/com.apple.quicktime.cinematic-video.stabilization";
    v25[1] = v12;
    v24[2] = v8;
    v22 = v9;
    v23 = v10;
    v25[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v21[0] = v20;
    v21[1] = v11;
    v21[2] = v19;
    v21[3] = v13;
    v21[4] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
    if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v15, &v2->_metadataFormatDescription))
    {

      return 0;
    }

    else
    {
      [v20 objectForKeyedSubscript:v5];
      [v20 objectForKeyedSubscript:v6];
      v2->_localIDForAperture_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v11 objectForKeyedSubscript:v5];
      [v11 objectForKeyedSubscript:v6];
      v2->_localIDForDisparity_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v19 objectForKeyedSubscript:v5];
      [v19 objectForKeyedSubscript:v6];
      v2->_localIDForCinematographyMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v13 objectForKeyedSubscript:v5];
      [v13 objectForKeyedSubscript:v6];
      v2->_localIDForRenderingMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v14 objectForKeyedSubscript:v5];
      [v14 objectForKeyedSubscript:v6];
      v2->_localIDForStabilizationMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      v16 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
      [(BWNodeOutput *)v16 setName:@"PassThru"];
      [(BWNodeOutput *)v16 setPassthroughMode:1];
      [(BWNode *)v2 addOutput:v16];
      v2->_passthruOutput = v16;

      v17 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v2];
      [(BWNodeOutput *)v17 setName:@"CinematicVideoMetadata"];
      [(BWNodeOutput *)v17 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v2->_metadataFormatDescription]];
      [(BWNode *)v2 addOutput:v17];
      v2->_metadataOutput = v17;
    }
  }

  return v2;
}

- (void)dealloc
{
  metadataFormatDescription = self->_metadataFormatDescription;
  if (metadataFormatDescription)
  {
    CFRelease(metadataFormatDescription);
  }

  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  v5.receiver = self;
  v5.super_class = BWCinematicVideoMetadataNode;
  [(BWNode *)&v5 dealloc];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput makeConfiguredFormatLive:d];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput markEndOfLiveOutput];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput markEndOfLiveOutput];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v21, 0, sizeof(v21));
  CMSampleBufferGetPresentationTimeStamp(&v21, buffer);
  v6 = CMGetAttachment(buffer, @"CinematicVideoMetadata", 0);
  if (v6)
  {
    v7 = v6;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:0x1F21A9A50];
          memset(&v15, 0, sizeof(v15));
          CMTimeMakeFromDictionary(&v15, [v13 objectForKeyedSubscript:0x1F217CEB0]);
          v14 = v15;
          [(BWCinematicVideoMetadataNode *)self _emitMetadataWithCinematographyMetadata:v12 time:&v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v9);
    }
  }

  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    [(BWCinematicVideoMetadataNode *)self _emitCopyOfMarkerBuffer:buffer onOutput:self->_metadataOutput];
  }

  if (!CMGetAttachment(buffer, @"RefinedCinematographyStreamEndMarker", 0))
  {
    [(BWNodeOutput *)self->_passthruOutput emitSampleBuffer:buffer];
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput emitDroppedSample:sample, input];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput emitDroppedSample:sample];
}

- (void)_emitCopyOfMarkerBuffer:(void *)buffer onOutput:
{
  if (self)
  {
    if (buffer)
    {
      sampleBufferOut = 0;
      memset(&v5, 0, sizeof(v5));
      CMSampleBufferGetPresentationTimeStamp(&v5, sbuf);
      if (!CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], sbuf, &sampleBufferOut))
      {
        [buffer emitSampleBuffer:sampleBufferOut];
        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }
    }
  }
}

- (void)_emitMetadataWithCinematographyMetadata:(CMTime *)metadata time:
{
  if (!self)
  {
    return;
  }

  v45 = 0;
  v46 = 0;
  v7 = *(self + 136);
  v8 = [a2 objectForKeyedSubscript:0x1F21A9A50];
  v9 = MEMORY[0x1E695E480];
  if (v8 && (v10 = v8, [v8 objectForKeyedSubscript:0x1F21A9950]))
  {
    v41 = v3;
    metadataCopy = metadata;
    __dst.duration.value = 0;
    v11 = [v10 objectForKeyedSubscript:0x1F21A9950];
    v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [getPTSerializationClass() writeObject:v11 toData:v12 options:0 error:&__dst];
    v13 = [v12 length];
    v14 = [a2 objectForKeyedSubscript:0x1F21A9A70];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v14, "sizeOfSerializedObjectWithOptions:", 0)}];
      [v15 writeToData:v16 withOptions:0];
      v17 = v13 + [v16 length] + 16;
    }

    else
    {
      v16 = 0;
      v17 = v13 + 8;
    }

    v19 = [a2 objectForKeyedSubscript:0x1F21A9A90];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v19, "sizeOfSerializedObjectWithOptions:", 0)}];
      [v20 writeToData:v21 withOptions:0];
      v17 += [v21 length] + 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = (v17 + 24);
    v18 = malloc_type_malloc(v22, 0xA5E431BFuLL);
    *v18 = bswap32([v12 length] + 8);
    v18[1] = *(self + 176);
    memcpy(v18 + 2, [v12 bytes], objc_msgSend(v12, "length"));
    v23 = [v12 length];
    v24 = v23 + 8;

    if (v16)
    {
      *(v18 + v24) = bswap32([v16 length] + 8);
      *(v18 + v23 + 12) = *(self + 180);
      memcpy(v18 + v24 + 8, [v16 bytes], objc_msgSend(v16, "length"));
      v24 = v23 + [v16 length] + 16;
    }

    v9 = MEMORY[0x1E695E480];
    if (v21)
    {
      v25 = (v18 + v24);
      *v25 = bswap32([v21 length] + 8);
      v25[1] = *(self + 184);
      memcpy(v18 + v24 + 8, [v21 bytes], objc_msgSend(v21, "length"));
      v24 += [v21 length] + 8;
    }

    metadata = metadataCopy;
    v26 = (v18 + v24);
    *v26 = 201326592;
    v26[1] = *(self + 168);
    [objc_msgSend(v10 objectForKeyedSubscript:{0x1F21A98F0), "floatValue"}];
    v26[2] = bswap32(v27);
    v26[3] = 201326592;
    v26[4] = *(self + 172);
    [objc_msgSend(v10 objectForKeyedSubscript:{0x1F21A9930), "floatValue"}];
    v26[5] = bswap32(v28);
    if (CMBlockBufferCreateWithMemoryBlock(*v9, v18, v22, *MEMORY[0x1E695E488], 0, 0, v22, 0, &v45))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_78();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOut, v35, sampleSizeArray, v39, v3, metadataCopy, __dst.duration.value, __dst.duration.timescale);
      goto LABEL_27;
    }

    v29 = v45;
    DataLength = 0;
    if (!v45)
    {
      goto LABEL_26;
    }

    v30 = 0;
  }

  else
  {
    if (v7)
    {
      v18 = 0;
      DataLength = 0;
LABEL_27:
      *&__dst.duration.value = *&metadata->value;
      __dst.duration.epoch = metadata->epoch;
      [*(self + 160) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219C070, &__dst)}];
      goto LABEL_28;
    }

    _emptyMetadataBlockBuffer = [(BWCinematicVideoMetadataNode *)self _emptyMetadataBlockBuffer];
    if (!_emptyMetadataBlockBuffer)
    {
      v18 = 0;
      v45 = 0;
      goto LABEL_27;
    }

    v41 = v3;
    v32 = CFRetain(_emptyMetadataBlockBuffer);
    v45 = v32;
    if (!v32)
    {
LABEL_26:
      v18 = 0;
      goto LABEL_27;
    }

    v29 = v32;
    v30 = 1;
  }

  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp = *metadata;
  DataLength = CMBlockBufferGetDataLength(v29);
  if (CMSampleBufferCreate(*v9, v45, 1u, 0, 0, *(self + 128), 1, 1, &__dst, 1, &DataLength, &v46))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_78();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", blockBufferOuta, v36, sampleSizeArraya, v40, v41, metadataCopy, __dst.duration.value, __dst.duration.timescale);
  }

  if (!v46)
  {
    goto LABEL_26;
  }

  [*(self + 160) emitSampleBuffer:?];
  v18 = 0;
  *(self + 136) = v30;
LABEL_28:
  if (v45)
  {
    CFRelease(v45);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  free(v18);
}

- (uint64_t)_emptyMetadataBlockBuffer
{
  if (result)
  {
    v1 = result;
    if (!*(result + 144))
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 144)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else
      {
        dataPointerOut = 0;
        if (CMBlockBufferGetDataPointer(*(v1 + 144), 0, 0, 0, &dataPointerOut))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_12();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        }

        else
        {
          *dataPointerOut = 0x8000000;
        }
      }
    }

    return *(v1 + 144);
  }

  return result;
}

@end