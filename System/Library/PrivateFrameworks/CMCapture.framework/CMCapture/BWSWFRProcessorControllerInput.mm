@interface BWSWFRProcessorControllerInput
- (void)addFrame:(opaqueCMSampleBuffer *)frame;
- (void)dealloc;
@end

@implementation BWSWFRProcessorControllerInput

- (void)dealloc
{
  flashFrame = self->_flashFrame;
  if (flashFrame)
  {
    CFRelease(flashFrame);
  }

  ambientFrame = self->_ambientFrame;
  if (ambientFrame)
  {
    CFRelease(ambientFrame);
  }

  v5.receiver = self;
  v5.super_class = BWSWFRProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)frame
{
  [(BWStillImageProcessorControllerInput *)self delegate];
  if (self->_addFrameFailed)
  {
    goto LABEL_11;
  }

  if (frame && (v6 = CMGetAttachment(frame, *off_1E798A3C8, 0)) != 0)
  {
    v7 = v6;
    v8 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}];
    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
    if (v8)
    {
      if (!self->_ambientFrame)
      {
        self->_ambientFrame = frame;
        CFRetain(frame);
        [OUTLINED_FUNCTION_64_0() input:? addAmbientFrame:?];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v23 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v23);
      OUTLINED_FUNCTION_6_34();
      if (v3)
      {
        BWStillImageSampleBufferToDisplayString(frame, v25);
        LODWORD(v75) = 136315394;
        OUTLINED_FUNCTION_1_17();
        v24 = OUTLINED_FUNCTION_4_37(v31, v32, v33, v34, &dword_1AC90E000, v35, v36, "<<<< BWStillImageProcessing >>>> %s: Unpexpectedly got a second ambient frame: %@", v72, v74, v75);
        v37 = v24;
        v28 = v81;
      }

      else
      {
        v37 = 0;
      }

      OUTLINED_FUNCTION_3_40(v24, v25, v26, v37, v27, v28, v29, v30, v72, v74, v75, v76, v77, v78, v79[0]);
      BWStillImageSampleBufferToDisplayString(frame, v53);
      OUTLINED_FUNCTION_5_39();
      v58 = OUTLINED_FUNCTION_6_0(v54, v55, v56, v57, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      v66 = 88;
    }

    else
    {
      if (!v9)
      {
        FigCaptureGetFrameworkRadarComponent();
        v81 = 0;
        v80 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v11 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v79 = 0;
        v15 = OUTLINED_FUNCTION_6_0(v11, v12, v13, v14, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v16, v17, v18, v19, v20, 100, v21, v22, v79);
        free(v15);
        self->_addFrameFailed = 1;
        goto LABEL_11;
      }

      if (!self->_flashFrame)
      {
        self->_flashFrame = frame;
        CFRetain(frame);
        [OUTLINED_FUNCTION_64_0() input:? addFlashFrame:?];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v38 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v38);
      OUTLINED_FUNCTION_6_34();
      if (v3)
      {
        BWStillImageSampleBufferToDisplayString(frame, v40);
        LODWORD(v75) = 136315394;
        OUTLINED_FUNCTION_1_17();
        v39 = OUTLINED_FUNCTION_4_37(v46, v47, v48, v49, &dword_1AC90E000, v50, v51, "<<<< BWStillImageProcessing >>>> %s: Unpexpectedly got a second flash frame: %@", v72, v74, v75);
        v52 = v39;
        v43 = v81;
      }

      else
      {
        v52 = 0;
      }

      OUTLINED_FUNCTION_3_40(v39, v40, v41, v52, v42, v43, v44, v45, v72, v74, v75, v76, v77, v78, v79[0]);
      BWStillImageSampleBufferToDisplayString(frame, v67);
      OUTLINED_FUNCTION_5_39();
      v58 = OUTLINED_FUNCTION_6_0(v68, v69, v70, v71, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      v66 = 94;
    }

    FigCapturePleaseFileRadar(v59, v60, v61, v62, v63, v66, v64, v65, v73);
    free(v58);
  }

  else
  {
    self->_addFrameFailed = 1;
  }

LABEL_11:
  if (self->_addFrameFailed)
  {
    [OUTLINED_FUNCTION_64_0() inputAddFrameFailed:?];
  }
}

@end