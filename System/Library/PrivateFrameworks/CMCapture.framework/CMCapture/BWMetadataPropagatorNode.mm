@interface BWMetadataPropagatorNode
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMetadataPropagatorNode

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v13 = 0;
  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(buffer, 101);
  if ([AttachedInferenceResult isValid] && objc_msgSend(objc_msgSend(AttachedInferenceResult, "inferences"), "count") && (objc_msgSend_isEqualToString_(objc_msgSend(AttachedInferenceResult, "preventionReason")) & 1) == 0)
  {
    memset(&v12.presentationTimeStamp, 0, 48);
    *&v12.duration.value = *MEMORY[0x1E6960C70];
    v11 = *&v12.duration.value;
    v12.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    CMSampleBufferGetPresentationTimeStamp(&v12.presentationTimeStamp, buffer);
    v12.decodeTimeStamp = v12.duration;
    CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &v12, 0, 0, &v13);
    if (v13)
    {
      CMSetAttachment(v13, *off_1E798A480, [AttachedInferenceResult inferences], 1u);
      [(BWNodeOutput *)self->super.super._output emitSampleBuffer:v13];
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      fig_log_get_emitter();
      LODWORD(sampleTimingArray) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray, v4, sampleSizeArray, v10, v11, *(&v11 + 1), v12.duration.value, v12.duration.timescale);
    }
  }
}

@end