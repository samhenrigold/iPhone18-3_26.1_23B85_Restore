@interface BWPreviewHistogramNode
- (BWPreviewHistogramNode)init;
- (void)_emitISPLumaHistogramFromSampleBuffer:(uint64_t)buffer;
- (void)_emitMSRHistogramFromSampleBuffer:(uint64_t)buffer;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWPreviewHistogramNode

- (BWPreviewHistogramNode)init
{
  v8.receiver = self;
  v8.super_class = BWPreviewHistogramNode;
  v2 = [(BWNode *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super._requiresEndOfDataForConfigurationChanges + 1) = 1;
    *(&v2->super._requiresEndOfDataForConfigurationChanges + 3) = 1;
    v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    [(BWNodeInput *)v4 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNode *)v3 addInput:v4];
    v5 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v3];
    v7 = *off_1E798D150;
    -[BWNodeOutput setFormat:](v5, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1]));
    [(BWNode *)v3 addOutput:v5];
    [(BWNode *)v3 setSupportsLiveReconfiguration:1];
    [(BWNode *)v3 setSupportsPrepareWhileRunning:1];
  }

  return v3;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (*(&self->super._requiresEndOfDataForConfigurationChanges + 1))
  {
    [(BWPreviewHistogramNode *)self _emitMSRHistogramFromSampleBuffer:buffer];
  }

  if (*(&self->super._requiresEndOfDataForConfigurationChanges + 2))
  {

    [(BWPreviewHistogramNode *)self _emitISPLumaHistogramFromSampleBuffer:buffer];
  }
}

- (void)_emitMSRHistogramFromSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    v26 = 0;
    v3 = CMGetAttachment(target, *off_1E798A520, 0);
    if (v3)
    {
      v4 = v3;
      v5 = [v3 length] / 3uLL;
      if (v5 < [v4 length] && (v6 = objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", objc_msgSend(v4, "bytes"), v5)) != 0)
      {
        v14 = v6;
        OUTLINED_FUNCTION_2_106(v6, v7, v8, v9, v10, v11, v12, v13, v15, v17, v19, v21, v23, v24, v25);
        OUTLINED_FUNCTION_1_116(*MEMORY[0x1E695E480], &v26, v16, v18, v20, v22);
        if (v26)
        {
          CMSetAttachment(v26, *off_1E798A528, v14, 1u);
          [*(buffer + 16) emitSampleBuffer:v26];
          if (v26)
          {
            CFRelease(v26);
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_11();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }
  }
}

- (void)_emitISPLumaHistogramFromSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    v4 = [CMGetAttachment(target *off_1E798A3C8];
    if (v4)
    {
      bytes = [v4 bytes];
      if (*bytes == 256)
      {
        if (*(buffer + 124) == 1)
        {
          v6 = 0;
          v7 = bytes + 2;
          do
          {
            *&v38[v6] = *v7 + *(v7 - 1);
            v6 += 4;
            v7 += 2;
          }

          while (v6 != 512);
          v8 = MEMORY[0x1E695DEF0];
          v9 = v38;
          v10 = 512;
        }

        else
        {
          v9 = bytes + 1;
          v8 = MEMORY[0x1E695DEF0];
          v10 = 1024;
        }

        v11 = [v8 dataWithBytes:v9 length:v10];
        targeta = 0;
        OUTLINED_FUNCTION_2_106(v11, v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v27, v30, v33, v36);
        OUTLINED_FUNCTION_1_116(*MEMORY[0x1E695E480], &targeta, v20, v23, v25, v28);
        if (targeta)
        {
          CMSetAttachment(targeta, *off_1E798A528, v11, 1u);
          [*(buffer + 16) emitSampleBuffer:targeta];
          if (targeta)
          {
            CFRelease(targeta);
          }
        }

        else
        {
          fig_log_get_emitter();
          LODWORD(v21) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v2, v26, v29, v31, v32, v34, v35);
        }
      }
    }
  }
}

@end