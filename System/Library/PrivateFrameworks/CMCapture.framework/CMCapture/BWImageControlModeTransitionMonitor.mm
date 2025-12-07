@interface BWImageControlModeTransitionMonitor
+ (void)initialize;
- (BOOL)isTransitionCompleteWithSampleBuffer:(opaqueCMSampleBuffer *)buffer masterCaptureStreamPortType:(id)type activeSlaveStreamPortType:(id)portType;
- (BWImageControlModeTransitionMonitor)init;
- (id)description;
- (void)dealloc;
@end

@implementation BWImageControlModeTransitionMonitor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWImageControlModeTransitionMonitor)init
{
  v5.receiver = self;
  v5.super_class = BWImageControlModeTransitionMonitor;
  v2 = [(BWImageControlModeTransitionMonitor *)&v5 init];
  if (v2)
  {
    *(v2 + 8) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v2 + 9) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v2 + 10) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v2 + 6) = 0;
    v3 = MEMORY[0x1E6960C70];
    *(v2 + 92) = *MEMORY[0x1E6960C70];
    *(v2 + 108) = *(v3 + 16);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWImageControlModeTransitionMonitor;
  [(BWImageControlModeTransitionMonitor *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> Frame wait count %d.\nExpectedSphereModes %@, Actual %@\nExpectedMinimumFrameRates %@, ExpectedMaximumFrameRates %@, ActualFramerates %@", NSStringFromClass(v4), self, HIDWORD(self->_firstFramePTS.epoch), self->_expectedSphereModesByPortType, self->_currentSphereModesByPortType, self->_expectedMinimumFrameRatesByPortType, self->_expectedMaximumFrameRatesByPortType, self->_currentFrameRatesByPortType];
}

- (BOOL)isTransitionCompleteWithSampleBuffer:(opaqueCMSampleBuffer *)buffer masterCaptureStreamPortType:(id)type activeSlaveStreamPortType:(id)portType
{
  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v7 = [v6 objectForKeyedSubscript:*off_1E798B540];
  v64 = [v6 objectForKeyedSubscript:*off_1E798B710];
  v65 = v7;
  if (self->_expectedSphereModesByPortType)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentSphereModesByPortType, "setObject:forKeyedSubscript:", [v6 objectForKeyedSubscript:*off_1E798B6B0], v7);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    expectedSphereModesByPortType = self->_expectedSphereModesByPortType;
    v9 = [(NSDictionary *)expectedSphereModesByPortType countByEnumeratingWithState:&v96 objects:v95 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v97;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v97 != v11)
          {
            objc_enumerationMutation(expectedSphereModesByPortType);
          }

          v13 = *(*(&v96 + 1) + 8 * i);
          if ((objc_msgSend_isEqualToString_(v13) & 1) != 0 || objc_msgSend_isEqualToString_(v13))
          {
            v14 = [(NSDictionary *)self->_expectedSphereModesByPortType objectForKeyedSubscript:v13];
            [(NSMutableDictionary *)self->_currentSphereModesByPortType objectForKeyedSubscript:v13];
            if (!objc_msgSend_isEqualToString_(v14))
            {
              v15 = 0;
              v7 = v65;
              goto LABEL_16;
            }
          }
        }

        v10 = [(NSDictionary *)expectedSphereModesByPortType countByEnumeratingWithState:&v96 objects:v95 count:16];
        v15 = 1;
        v7 = v65;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:
  if (([objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B068), "BOOLValue"}] & 1) == 0)
  {
    v16 = off_1E798B210;
    if (self->_expectedMinimumFrameRatesByPortType)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentFrameRatesByPortType, "setObject:forKeyedSubscript:", [v6 objectForKeyedSubscript:*off_1E798B210], v7);
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      expectedMinimumFrameRatesByPortType = self->_expectedMinimumFrameRatesByPortType;
      v18 = [(NSDictionary *)expectedMinimumFrameRatesByPortType countByEnumeratingWithState:&v91 objects:v90 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v92;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v92 != v20)
            {
              objc_enumerationMutation(expectedMinimumFrameRatesByPortType);
            }

            v22 = *(*(&v91 + 1) + 8 * j);
            if ((objc_msgSend_isEqualToString_(v22) & 1) != 0 || objc_msgSend_isEqualToString_(v22))
            {
              [-[NSDictionary objectForKeyedSubscript:](self->_expectedMinimumFrameRatesByPortType objectForKeyedSubscript:{v22), "floatValue"}];
              v24 = v23;
              [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentFrameRatesByPortType objectForKeyedSubscript:{v22), "floatValue"}];
              if ((v25 + 0.1) < v24)
              {
                LOBYTE(v15) = 0;
                goto LABEL_30;
              }
            }
          }

          v19 = [(NSDictionary *)expectedMinimumFrameRatesByPortType countByEnumeratingWithState:&v91 objects:v90 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

LABEL_30:
        v7 = v65;
        v16 = off_1E798B210;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    if (self->_expectedMaximumFrameRatesByPortType)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentFrameRatesByPortType, "setObject:forKeyedSubscript:", [v6 objectForKeyedSubscript:*v16], v7);
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      expectedMaximumFrameRatesByPortType = self->_expectedMaximumFrameRatesByPortType;
      v27 = [(NSDictionary *)expectedMaximumFrameRatesByPortType countByEnumeratingWithState:&v86 objects:v85 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v87;
LABEL_35:
        v30 = 0;
        while (1)
        {
          if (*v87 != v29)
          {
            objc_enumerationMutation(expectedMaximumFrameRatesByPortType);
          }

          v31 = *(*(&v86 + 1) + 8 * v30);
          if ((objc_msgSend_isEqualToString_(v31) & 1) != 0 || objc_msgSend_isEqualToString_(v31))
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_expectedMaximumFrameRatesByPortType objectForKeyedSubscript:{v31), "floatValue"}];
            v33 = v32;
            [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentFrameRatesByPortType objectForKeyedSubscript:{v31), "floatValue"}];
            if ((v34 + 0.1) < v33)
            {
              break;
            }
          }

          if (v28 == ++v30)
          {
            v28 = [(NSDictionary *)expectedMaximumFrameRatesByPortType countByEnumeratingWithState:&v86 objects:v85 count:16];
            if (v28)
            {
              goto LABEL_35;
            }

            goto LABEL_43;
          }
        }
      }

      else
      {
LABEL_43:
        if (v15)
        {
          v15 = 1;
LABEL_46:
          v7 = v65;
          goto LABEL_48;
        }
      }

      v15 = SHIDWORD(self->_firstFramePTS.epoch) > 10;
      goto LABEL_46;
    }

    v15 = 0;
  }

LABEL_48:
  if (!self->_expectedLTMCurvesByPortType)
  {
    v15 = 0;
    goto LABEL_64;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentLTMCurvesByPortType, "setObject:forKeyedSubscript:", [v6 objectForKeyedSubscript:*off_1E798B438], v7);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  expectedLTMCurvesByPortType = self->_expectedLTMCurvesByPortType;
  v36 = [(NSDictionary *)expectedLTMCurvesByPortType countByEnumeratingWithState:&v81 objects:v80 count:16];
  if (v36)
  {
    v37 = v36;
    v66 = v15;
    v38 = *v82;
    while (2)
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v82 != v38)
        {
          objc_enumerationMutation(expectedLTMCurvesByPortType);
        }

        v40 = *(*(&v81 + 1) + 8 * k);
        if ((objc_msgSend_isEqualToString_(v40) & 1) != 0 || objc_msgSend_isEqualToString_(v40))
        {
          v41 = [-[NSDictionary objectForKeyedSubscript:](self->_expectedLTMCurvesByPortType objectForKeyedSubscript:{v40), "intValue"}];
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_currentLTMCurvesByPortType objectForKeyedSubscript:{v40), "intValue"}] != v41)
          {
            ltmCurvesTransitionFrameCount = self->_ltmCurvesTransitionFrameCount;
            if (ltmCurvesTransitionFrameCount > 0)
            {
              v43 = 0;
              v44 = v64;
              LOBYTE(v15) = v66;
              goto LABEL_67;
            }

            v44 = v64;
            v15 = v66;
            goto LABEL_69;
          }
        }
      }

      v37 = [(NSDictionary *)expectedLTMCurvesByPortType countByEnumeratingWithState:&v81 objects:v80 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }

    ltmCurvesTransitionFrameCount = self->_ltmCurvesTransitionFrameCount;
    v15 = v66;
    if (ltmCurvesTransitionFrameCount > 0)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  ltmCurvesTransitionFrameCount = self->_ltmCurvesTransitionFrameCount;
  if (ltmCurvesTransitionFrameCount < 1)
  {
LABEL_64:
    v44 = v64;
    goto LABEL_69;
  }

LABEL_66:
  v43 = self->_ltmCurvesTransitionFrameWaitCount + 1;
  v44 = v64;
LABEL_67:
  self->_ltmCurvesTransitionFrameWaitCount = v43;
  v15 = (v43 >= ltmCurvesTransitionFrameCount) & v15;
LABEL_69:
  if (self->_coarseFocusCheckTimeout > 0.0 && (self->_frameWaitCount & 1) == 0)
  {
    v45 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
    LOBYTE(self->_frameWaitCount) = v45 != 2;
    if (v45 == 2)
    {
      memset(v67, 0, 24);
      CMSampleBufferGetPresentationTimeStamp(v67, buffer);
      if (self->_firstFramePTS.timescale)
      {
        lhs = *v67;
        rhs = *(&self->_ltmCurvesTransitionFrameWaitCount + 1);
        CMTimeSubtract(&time, &lhs, &rhs);
        if (CMTimeGetSeconds(&time) > self->_coarseFocusCheckTimeout)
        {
          LODWORD(rhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = rhs.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v48 = value;
          }

          else
          {
            v48 = value & 0xFFFFFFFE;
          }

          if (v48)
          {
            coarseFocusCheckTimeout = self->_coarseFocusCheckTimeout;
            LODWORD(lhs.value) = 136315394;
            *(&lhs.value + 4) = "[BWImageControlModeTransitionMonitor isTransitionCompleteWithSampleBuffer:masterCaptureStreamPortType:activeSlaveStreamPortType:]";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = coarseFocusCheckTimeout;
            LODWORD(v62) = 22;
            p_lhs = &lhs;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOBYTE(self->_frameWaitCount) = 1;
        }
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&time, buffer);
        *(&self->_ltmCurvesTransitionFrameWaitCount + 1) = time;
      }

      v15 = (LOBYTE(self->_frameWaitCount) & v15);
    }
  }

  if (self->_waitForTorchToRampUp)
  {
    if (([CMGetAttachment(buffer @"DropFrameWaitingForTorchToRampUp"] ^ 1) & v15)
    {
LABEL_84:
      v50 = 1;
      goto LABEL_94;
    }
  }

  else if (v15)
  {
    goto LABEL_84;
  }

  if (SHIDWORD(self->_firstFramePTS.epoch) < 45)
  {
    v50 = 0;
  }

  else
  {
    LODWORD(lhs.value) = 0;
    LOBYTE(rhs.value) = 0;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v52 = lhs.value;
    if (os_log_type_enabled(v51, rhs.value))
    {
      v53 = v52;
    }

    else
    {
      v53 = v52 & 0xFFFFFFFE;
    }

    if (v53)
    {
      epoch_high = HIDWORD(self->_firstFramePTS.epoch);
      v55 = self->_expectedSphereModesByPortType;
      v56 = self->_expectedMinimumFrameRatesByPortType;
      v57 = self->_expectedMaximumFrameRatesByPortType;
      currentSphereModesByPortType = self->_currentSphereModesByPortType;
      currentFrameRatesByPortType = self->_currentFrameRatesByPortType;
      *v67 = 136316674;
      *&v67[4] = "[BWImageControlModeTransitionMonitor isTransitionCompleteWithSampleBuffer:masterCaptureStreamPortType:activeSlaveStreamPortType:]";
      *&v67[12] = 1024;
      *&v67[14] = epoch_high;
      *&v67[18] = 2112;
      *&v67[20] = v55;
      v68 = 2112;
      v69 = currentSphereModesByPortType;
      v70 = 2112;
      v71 = v56;
      v72 = 2112;
      v73 = v57;
      v74 = 2112;
      v75 = currentFrameRatesByPortType;
      LODWORD(v62) = 68;
      p_lhs = v67;
      _os_log_send_and_compose_impl();
    }

    v50 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_94:
  if (([v44 BOOLValue] & 1) != 0 || !v44)
  {
    ++HIDWORD(self->_firstFramePTS.epoch);
  }

  return v50;
}

@end