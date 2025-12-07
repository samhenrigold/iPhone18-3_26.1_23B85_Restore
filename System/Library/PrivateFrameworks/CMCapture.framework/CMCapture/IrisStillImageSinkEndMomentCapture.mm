@interface IrisStillImageSinkEndMomentCapture
@end

@implementation IrisStillImageSinkEndMomentCapture

void *__captureSession_IrisStillImageSinkEndMomentCapture_block_invoke(double *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:*(a1 + 4)];
  v4 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 4)];
  v57 = [v4 primaryCameraSourcePipeline];
  v5 = *(*(a1 + 6) + 784);
  v6 = [(FigCaptureMovieFileSinkPipeline *)v3 videoSourceID];
  v7 = [v5 previewSinkPipelineWithSourceID:v6 sourceDeviceType:-[FigCaptureMovieFileSinkPipeline videoSourceDeviceType](v3)];
  os_unfair_lock_lock((*(a1 + 6) + 384));
  v8 = *(a1 + 7);
  v9 = [*(*(a1 + 6) + 696) settingsID];
  v10 = *(a1 + 6);
  if (v8 == v9)
  {

    v10 = *(a1 + 6);
    *(v10 + 696) = 0;
  }

  os_unfair_lock_unlock((v10 + 384));
  v82[0] = 0;
  cs_getMasterClockAndType(*(DerivedStorage + 784), v82, 0);
  memset(&v81, 0, sizeof(v81));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v81, HostTimeClock);
  v12 = [v4 previewSinkNode];
  hostTime = v81;
  CMClockConvertHostTimeToSystemUnits(&hostTime);
  memset(&v80, 0, sizeof(v80));
  if (v12)
  {
    objc_msgSend_previewPTSDisplayedAtHostTime_allowingExtrapolation_(v12);
    memset(&v79, 0, sizeof(v79));
    if (v80.flags)
    {
      v79 = v80;
      goto LABEL_8;
    }
  }

  else
  {
    memset(&v79, 0, sizeof(v79));
  }

  v13 = CMClockGetHostTimeClock();
  hostTime = v81;
  CMSyncConvertTime(&v79, &hostTime, v13, v82[0]);
LABEL_8:
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v14 = [v3 pendingIrisRecordings];
  v15 = [v14 countByEnumeratingWithState:&v75 objects:v74 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v76;
LABEL_10:
    v18 = 0;
    while (1)
    {
      if (*v76 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v75 + 1) + 8 * v18);
      if ([objc_msgSend(v19 "settings")] == *(a1 + 7))
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v75 objects:v74 count:16];
        if (v16)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }
    }

    if (([objc_msgSend(v19 "settings")] & 1) == 0 && dword_1ED844050)
    {
      LODWORD(v72.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v19)
    {
      if (([v19 isEmpty] & 1) == 0)
      {
        v21 = [v19 irisMovieInfo];
        v22 = v21;
        memset(&v72, 0, sizeof(v72));
        if (v21)
        {
          objc_msgSend_stillImageCaptureTime(v21);
        }

        else
        {
          memset(&hostTime, 0, sizeof(hostTime));
        }

        lhs = v79;
        CMTimeSubtract(&v72, &lhs, &hostTime);
        memset(&type, 0, sizeof(type));
        CMTimeMake(&type, 500, 1000);
        if ((v72.flags & 1) == 0 || (hostTime = v72, lhs = type, CMTimeCompare(&hostTime, &lhs) < 0))
        {
          if (v22)
          {
            objc_msgSend_stillImageCaptureTime(v22);
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          rhs = type;
          CMTimeAdd(&hostTime, &lhs, &rhs);
          v79 = hostTime;
          if (dword_1ED844050)
          {
            LODWORD(rhs.value) = 0;
            v69 = OS_LOG_TYPE_DEFAULT;
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            if (os_log_type_enabled(v33, v69))
            {
              v35 = value;
            }

            else
            {
              v35 = value & 0xFFFFFFFE;
            }

            if (v35)
            {
              v36 = *(*(a1 + 6) + 104);
              hostTime = v79;
              Seconds = CMTimeGetSeconds(&hostTime);
              *&v38 = COERCE_DOUBLE([objc_msgSend(v19 "settings")]);
              LODWORD(lhs.value) = 136315906;
              *(&lhs.value + 4) = "captureSession_IrisStillImageSinkEndMomentCapture_block_invoke";
              LOWORD(lhs.flags) = 2114;
              *(&lhs.flags + 2) = v36;
              HIWORD(lhs.epoch) = 2048;
              v64 = Seconds;
              v65 = 2048;
              v66 = *&v38;
              LODWORD(v55) = 42;
              p_lhs = &lhs;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      if (dword_1ED844050)
      {
        LODWORD(v72.value) = 0;
        LOBYTE(type.value) = 0;
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = v72.value;
        if (os_log_type_enabled(v39, type.value))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (v41)
        {
          v56 = *(*(a1 + 6) + 104);
          *&v42 = COERCE_DOUBLE([objc_msgSend(v19 "settings")]);
          v43 = v4;
          v44 = v7;
          if ([v19 isEmpty])
          {
            *&v45 = COERCE_DOUBLE(@"YES");
          }

          else
          {
            *&v45 = COERCE_DOUBLE(@"NO");
          }

          hostTime = v79;
          v46 = CMTimeGetSeconds(&hostTime);
          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "captureSession_IrisStillImageSinkEndMomentCapture_block_invoke";
          LOWORD(lhs.flags) = 2114;
          *(&lhs.flags + 2) = v56;
          HIWORD(lhs.epoch) = 2048;
          v64 = *&v42;
          v65 = 2112;
          v66 = *&v45;
          v7 = v44;
          v4 = v43;
          v67 = 2048;
          v68 = v46;
          LODWORD(v55) = 52;
          p_lhs = &lhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      hostTime = v79;
      [v19 setMomentCaptureMovieRecordingMasterEndTime:{&hostTime, p_lhs, v55}];
      goto LABEL_56;
    }
  }

LABEL_24:
  if (dword_1ED844050)
  {
    LODWORD(v72.value) = 0;
    LOBYTE(type.value) = 0;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v72.value;
    if (os_log_type_enabled(v23, type.value))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = v4;
      v27 = v7;
      v28 = a1[7];
      v29 = *(*(a1 + 6) + 104);
      hostTime = v79;
      v30 = CMTimeGetSeconds(&hostTime);
      LODWORD(lhs.value) = 136315906;
      *(&lhs.value + 4) = "captureSession_IrisStillImageSinkEndMomentCapture_block_invoke";
      LOWORD(lhs.flags) = 2114;
      *(&lhs.flags + 2) = v29;
      HIWORD(lhs.epoch) = 2048;
      v64 = v28;
      v7 = v27;
      v4 = v26;
      v65 = 2048;
      v66 = v30;
      LODWORD(v55) = 42;
      p_lhs = &lhs;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v31 = [(FigCaptureMovieFileSinkPipeline *)v3 irisStagingNode];
  v32 = *(a1 + 7);
  hostTime = v79;
  [v31 setMomentCaptureMovieRecordingMasterEndTime:&hostTime forRequestWithSettingsID:v32];
LABEL_56:
  [v7 setVideoStabilizationOverscanCropEnabled:0 momentMovieRecordingEnabled:{0, p_lhs, v55}];
  [v7 setSemanticStyleRenderingSuspended:0 animated:1];
  [v4 setVideoStabilizationOverscanCropEnabled:0];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v47 = [*(*(a1 + 6) + 784) cameraSourcePipelines];
  v48 = [v47 countByEnumeratingWithState:&v59 objects:v58 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v60;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v60 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [-[FigCaptureCameraSourcePipeline captureDevice](*(*(&v59 + 1) + 8 * i)) setTemporalNoiseReductionBand0StrengthModulation:0];
      }

      v49 = [v47 countByEnumeratingWithState:&v59 objects:v58 count:16];
    }

    while (v49);
  }

  v52 = [(FigCaptureCameraSourcePipeline *)v57 captureDevice];
  [v52 setAutomaticallyAdjustsTorch:0];
  result = [v52 setTorchLevel:0.0];
  if (v3)
  {
    return cs_resetImageControlModeAndStreamSelection(v3, 1);
  }

  return result;
}

@end