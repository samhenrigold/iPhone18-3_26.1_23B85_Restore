@interface MXCoreSessionIndependentAudioResource
- (BOOL)requiresExclaveSensor;
- (MXCoreSessionIndependentAudioResource)init;
- (int)updateIsRecording:(BOOL)recording;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)updateIsPlaying:(BOOL)playing;
@end

@implementation MXCoreSessionIndependentAudioResource

- (MXCoreSessionIndependentAudioResource)init
{
  v3.receiver = self;
  v3.super_class = MXCoreSessionIndependentAudioResource;
  return [(MXCoreSessionBase *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXCoreSessionIndependentAudioResource;
  [(MXCoreSessionBase *)&v2 dealloc];
}

- (void)updateIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  v6 = *MEMORY[0x1E69E9840];
  if ([(MXCoreSessionBase *)self isPlaying]!= playing)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setIsPlaying:playingCopy];
    if (playingCopy)
    {
      -[MXCoreSessionBase setIsPlayingStartTime:](self, "setIsPlayingStartTime:", [MEMORY[0x1E695DF00] date]);
      CMSMSleep_FetchPlaybackProcessAssertion(self);
    }

    else
    {
      CMSMSleep_ReleasePlaybackProcessAssertion(self);
      if ([(MXCoreSessionIndependentAudioResource *)self isMemberOfClass:objc_opt_class()])
      {
        [(MXCoreSessionIndependentAudioResource *)self resetMXSessionIsPlayingStates];
      }

      -[MXCoreSessionBase setIsPlayingStopTime:](self, "setIsPlayingStopTime:", [MEMORY[0x1E695DF00] date]);
    }

    CMSMSleep_HandleIdleSleep(self, playingCopy);
    CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(self, 0);
  }
}

- (int)updateIsRecording:(BOOL)recording
{
  recordingCopy = recording;
  v13 = *MEMORY[0x1E69E9840];
  if ([(MXCoreSessionBase *)self isRecording]== recording)
  {
    return 0;
  }

  MX_SystemStatus_PublishRecordingClientsInfo([(MXCoreSessionBase *)self setIsRecording:recordingCopy]);
  v5 = [+[MXExclaves sharedInstance](MXExclaves updateSensorStatus:"updateSensorStatus:reason:" reason:self, @"IsRecording property has changed"];
  if (!v5)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSessionManagerBase setGreenTeaLoggerRecordingState:[(MXCoreSessionBase *)self clientName] state:recordingCopy];
    if ([(MXCoreSessionBase *)self isRecording])
    {
      if (self)
      {
        objc_msgSend_auditToken(self);
      }

      else
      {
        memset(v12, 0, 32);
      }

      intValue = [(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue];
      RecordingAccessIntervals = MX_PrivacyAccounting_CreateRecordingAccessIntervals(1, v12, intValue, [MEMORY[0x1E695DEC8] array], -[MXCoreSessionBase displayID](self, "displayID"));
      [(MXCoreSessionBase *)self setBundleIdToPAAccessIntervalMap:RecordingAccessIntervals];
    }

    else
    {
      MX_PrivacyAccounting_EndRecordingAccessIntervals([(MXCoreSessionBase *)self bundleIdToPAAccessIntervalMap]);
      [(MXCoreSessionBase *)self setBundleIdToPAAccessIntervalMap:0];
      if ([(MXCoreSessionIndependentAudioResource *)self isMemberOfClass:objc_opt_class()])
      {
        [(MXCoreSessionIndependentAudioResource *)self resetMXSessionIsRecordingStates];
      }
    }

    CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(self, 0);
    return 0;
  }

  v6 = v5;
  v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  MX_SystemStatus_PublishRecordingClientsInfo([(MXCoreSessionBase *)self setIsRecording:recordingCopy ^ 1]);
  return v6;
}

- (void)activate
{
  v16 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isActive(self, a2) & 1) == 0)
  {
    [(MXCoreSessionBase *)self setIsActive:1];
    if (dword_1EB75DE40)
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setWaitingToResume:0];
    CMSUtility_CreateReporterIDIfNeeded(self);
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    reporterIDs = [(MXCoreSessionBase *)self reporterIDs];
    v5 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v9 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(reporterIDs);
          }

          CMSUtility_SetAudioServiceTypeForReporterID(self, [*(*(&v9 + 1) + 8 * i) longLongValue]);
        }

        v6 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v9 objects:v15 count:16];
      }

      while (v6);
    }

    CMSUtility_StartReporterWithAudioStatistics(self);
    CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(self, 0);
  }
}

- (void)deactivate
{
  v4 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isActive(self, a2))
  {
    [(MXCoreSessionIndependentAudioResource *)self updateIsPlaying:0];
    [(MXCoreSessionIndependentAudioResource *)self updateIsRecording:0];
    CMSUtility_StopReporterWithAudioStatistics(self);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setIsActive:0];
    [(MXCoreSessionBase *)self setIsPlayingStartTime:0];
    [(MXCoreSessionBase *)self setIsPlayingStopTime:0];
  }
}

- (BOOL)requiresExclaveSensor
{
  if (![(MXCoreSessionBase *)self isRecording]|| [(MXCoreSessionBase *)self isRecordingMuted])
  {
    return 0;
  }

  return [(MXCoreSessionBase *)self isUsingBuiltInMic];
}

@end