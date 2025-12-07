@interface BWColorConstancyProcessorControllerInput
- (void)addFrame:(opaqueCMSampleBuffer *)frame;
- (void)dealloc;
@end

@implementation BWColorConstancyProcessorControllerInput

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
  v5.super_class = BWColorConstancyProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)frame
{
  delegate = [(BWStillImageProcessorControllerInput *)self delegate];
  if (self->_addFrameFailed)
  {
    goto LABEL_11;
  }

  if (frame && (v7 = CMGetAttachment(frame, *off_1E798A3C8, 0)) != 0)
  {
    v8 = v7;
    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}];
    v10 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
    if (v9)
    {
      if (!self->_ambientFrame)
      {
        self->_ambientFrame = frame;
        CFRetain(frame);
        [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate input:self addAmbientFrame:self->_ambientFrame];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v18 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v18);
      OUTLINED_FUNCTION_6_34();
      if (v3)
      {
        BWStillImageSampleBufferToDisplayString(frame, v20);
        LODWORD(v69) = 136315394;
        OUTLINED_FUNCTION_1_17();
        v19 = OUTLINED_FUNCTION_4_37(v26, v27, v28, v29, &dword_1AC90E000, v30, v31, "<<<< BWStillImageProcessing >>>> %s: Unpexpectedly got a second ambient frame: %@", v67, v68, v69);
        v32 = v19;
        v23 = v74;
      }

      else
      {
        v32 = 0;
      }

      OUTLINED_FUNCTION_3_40(v19, v20, v21, v32, v22, v23, v24, v25, v67, v68, v69, v70, v71, v72, v73);
      BWStillImageSampleBufferToDisplayString(frame, v48);
      OUTLINED_FUNCTION_5_39();
      v53 = OUTLINED_FUNCTION_6_0(v49, v50, v51, v52, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      v54 = OUTLINED_FUNCTION_7_28();
      v61 = 91;
    }

    else
    {
      if (!v10)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v13 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v17 = OUTLINED_FUNCTION_6_0(v13, v14, v15, v16, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v17, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWColorConstancyProcessorController.m", 103, @"LastShownDate:BWColorConstancyProcessorController.m:103", @"LastShownBuild:BWColorConstancyProcessorController.m:103", 0);
        free(v17);
        self->_addFrameFailed = 1;
        goto LABEL_11;
      }

      if (!self->_flashFrame)
      {
        self->_flashFrame = frame;
        CFRetain(frame);
        [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate input:self addFlashFrame:self->_flashFrame];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v33 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v33);
      OUTLINED_FUNCTION_6_34();
      if (v3)
      {
        BWStillImageSampleBufferToDisplayString(frame, v35);
        LODWORD(v69) = 136315394;
        OUTLINED_FUNCTION_1_17();
        v34 = OUTLINED_FUNCTION_4_37(v41, v42, v43, v44, &dword_1AC90E000, v45, v46, "<<<< BWStillImageProcessing >>>> %s: Unpexpectedly got a second flash frame: %@", v67, v68, v69);
        v47 = v34;
        v38 = v74;
      }

      else
      {
        v47 = 0;
      }

      OUTLINED_FUNCTION_3_40(v34, v35, v36, v47, v37, v38, v39, v40, v67, v68, v69, v70, v71, v72, v73);
      BWStillImageSampleBufferToDisplayString(frame, v62);
      OUTLINED_FUNCTION_5_39();
      v53 = OUTLINED_FUNCTION_6_0(v63, v64, v65, v66, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      v54 = OUTLINED_FUNCTION_7_28();
      v61 = 97;
    }

    FigCapturePleaseFileRadar(v54, v55, v56, v57, v58, v61, v59, v60, 0);
    free(v53);
  }

  else
  {
    self->_addFrameFailed = 1;
  }

LABEL_11:
  if (self->_addFrameFailed)
  {
    [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate inputAddFrameFailed:self];
  }
}

@end