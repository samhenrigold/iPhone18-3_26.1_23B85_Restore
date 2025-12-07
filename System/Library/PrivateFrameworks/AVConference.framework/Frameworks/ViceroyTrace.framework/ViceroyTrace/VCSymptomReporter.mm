@interface VCSymptomReporter
- (VCSymptomReporter)initWithCallID:(unsigned int)d;
- (int)reportAlgosScoreWithOptionalDictionary:(id)dictionary;
- (int)reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)dictionary;
- (int)reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:(id)dictionary;
- (int)reportAudioStall:(id)stall;
- (int)reportBandwidthEstimationMismatch;
- (int)reportCCReliableDataNotReceived:(id)received;
- (int)reportConnectionSliceStatus:(unsigned int)status;
- (int)reportConnectionTimeout:(id)timeout;
- (int)reportDLTargetBitrateOvershoot;
- (int)reportExtendedPoorConnectionWithOptionalDictionary:(id)dictionary;
- (int)reportFailedToSetupAudioCodec;
- (int)reportFailedToStartAudio;
- (int)reportFailedToStartVideo;
- (int)reportFrameQueueForDecodeHighWaterMarkExceeded;
- (int)reportHighConsecutiveAudioErasuresWithOptionalDictionary:(id)dictionary;
- (int)reportIDSDataChannelEventUsageError;
- (int)reportInactiveSlotsInChannelSequence;
- (int)reportInvalidAudioJitterBuffer;
- (int)reportInvalidTransportType;
- (int)reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:(id)dictionary;
- (int)reportInvalidVideoStallTime;
- (int)reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:(id)dictionary;
- (int)reportKeyFrameGenerationFailure;
- (int)reportKeyIndexNotReceived;
- (int)reportLongMediaStallRecoveredWithOptionalDictionary:(id)dictionary;
- (int)reportMKMDecryptionWithOptionalDictionary:(id)dictionary;
- (int)reportMediaQueueFlushingTooFrequent;
- (int)reportMediaQueueOvershoot;
- (int)reportMediaQueuePoolEmpty;
- (int)reportMediaSymptomSubtypeConnectionWithContext:(id)context;
- (int)reportNegativeJitterBufferSize;
- (int)reportNoFirstFrameWithOptionalDictionary:(id)dictionary;
- (int)reportNoMediaBlob;
- (int)reportNoPackets:(unsigned int)packets WithOptionalDictionary:(id)dictionary;
- (int)reportNoRelayResponseWithOptionalDictionary:(id)dictionary;
- (int)reportNoSNATMAPResponseWithOptionalDictionary:(id)dictionary;
- (int)reportNoServerStatsActivity;
- (int)reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:(id)dictionary;
- (int)reportOSLogSymptomWithDictionary:(id)dictionary;
- (int)reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:(id)dictionary;
- (int)reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:(id)dictionary;
- (int)reportQRATKNTokenError;
- (int)reportRateTargetMismatch;
- (int)reportReceiveSessionStatsFailed;
- (int)reportSelfTerminationWithOptionalDictionary:(id)dictionary;
- (int)reportSessionInfoErrorResponse;
- (int)reportSignalingFailed:(id)failed;
- (int)reportSignificantHandshakeDelayWithOptionalDictionary:(id)dictionary;
- (int)reportSustainedHighDownlinkPacketLoss;
- (int)reportSustainedHighUplinkPacketLoss;
- (int)reportSymptomInternal:(unsigned int)internal optionalDictionary:(id)dictionary;
- (int)reportSymptomWithGroupID:(id)d signature:(id)signature actions:(id)actions;
- (int)reportSymptomWithIDSDestination:(id)destination sessionID:(id)d type:(id)type subType:(id)subType context:(id)context;
- (int)reportSymptomWithOptions:(id)options type:(id)type subType:(id)subType context:(id)context;
- (int)reportSymptomWithType:(id)type subType:(id)subType context:(id)context actions:(id)actions;
- (int)reportThermalIncreaseAudioOnlyWithOptionalDictionary:(id)dictionary;
- (int)reportULSRTPEncryptionSetupError;
- (int)reportULTargetBitrateOvershoot;
- (int)reportUnbinnedCameraFormatSelected;
- (int)reportUnexpectedHighRTTWithOptionalDictionary:(id)dictionary;
- (int)reportUnexpectedLowTargetBitrate;
- (int)reportUnexpectedRampUpFrozen;
- (int)reportV1SpeechAPIEnabled;
- (int)reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)dictionary;
- (int)reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:(id)dictionary;
- (int)reportVideoStall:(id)stall;
- (int)reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:(id)dictionary;
- (int)reportVideoSymptom:(id)symptom options:(id)options;
- (int)requestRemoteSideWithOptions:(id)options context:(id)context signature:(id)signature;
- (void)VCSymptomReporterSetCallback:(void *)callback context:(void *)context;
- (void)dealloc;
- (void)reportSymptom:(unsigned int)symptom optionalDictionary:(id)dictionary;
@end

@implementation VCSymptomReporter

- (VCSymptomReporter)initWithCallID:(unsigned int)d
{
  v31 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = VCSymptomReporter;
  v4 = [(VCSymptomReporter *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_callID = d;
    v4->_reportingQueue = dispatch_queue_create("com.apple.VideoConference.SymptomReporter", 0);
    v5->_osLogNetworkingHandle = os_log_create("com.apple.AVConferenceFramework", "AVConference.Networking");
    bzero(v20, 0x3FDuLL);
    memset(buffer, 63, sizeof(buffer));
    v6 = getpid();
    proc_name(v6, buffer, 0x400u);
    v5->_procName = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:buffer];
    v7 = CFPreferencesCopyAppValue(@"forceDisableABC", @"com.apple.VideoConference");
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x277CBED28];
      v10 = CFEqual(v7, *MEMORY[0x277CBED28]) == 0;
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR(7u);
        v12 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = CFEqual(v8, v9);
          *buf = 136316162;
          v22 = v11;
          v23 = 2080;
          v24 = "_VCSymptomReporter_IsABCSymptomReportingForceDisabled";
          v25 = 1024;
          v26 = 1259;
          v27 = 2112;
          v28 = @"forceDisableABC";
          v29 = 1024;
          v30 = v13;
          _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: user-default[%@]=%d", buf, 0x2Cu);
        }
      }

      CFRelease(v8);
    }

    else
    {
      v10 = 1;
    }

    v5->_isSymptomReportingEnabled = v10;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR(7u);
      v15 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        isSymptomReportingEnabled = v5->_isSymptomReportingEnabled;
        *buf = 136315906;
        v22 = v14;
        v23 = 2080;
        v24 = "[VCSymptomReporter initWithCallID:]";
        v25 = 1024;
        v26 = 150;
        v27 = 1024;
        LODWORD(v28) = isSymptomReportingEnabled;
        _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isSymptomReportingEnabled=%d", buf, 0x22u);
      }
    }
  }

  return v5;
}

- (void)reportSymptom:(unsigned int)symptom optionalDictionary:(id)dictionary
{
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VCSymptomReporter_reportSymptom_optionalDictionary___block_invoke;
  block[3] = &unk_278BD48B8;
  symptomCopy = symptom;
  block[4] = self;
  block[5] = dictionary;
  dispatch_async(reportingQueue, block);
}

void __54__VCSymptomReporter_reportSymptom_optionalDictionary___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportSymptomInternal:*(a1 + 48) optionalDictionary:*(a1 + 40)];
  if (v2 < 0)
  {
    v3 = v2;
    if (v2 == -2144337879)
    {
      if ((*(*(a1 + 32) + *(a1 + 48) + 145) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 6)
        {
          v4 = VRTraceErrorLogLevelToCSTR(6u);
          v5 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(a1 + 48);
            v10 = 136315906;
            v11 = v4;
            v12 = 2080;
            v13 = "[VCSymptomReporter reportSymptom:optionalDictionary:]_block_invoke";
            v14 = 1024;
            v15 = 161;
            v16 = 1024;
            v17 = v6;
            _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: A symptom for this session has already been submitted, skipping symptomID %d", &v10, 0x22u);
          }
        }

        *(*(a1 + 32) + *(a1 + 48) + 145) = 1;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR(3u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 48);
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCSymptomReporter reportSymptom:optionalDictionary:]_block_invoke";
        v14 = 1024;
        v15 = 165;
        v16 = 1024;
        v17 = v9;
        v18 = 1024;
        v19 = v3;
        _os_log_error_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d SymptomReporter: report for symptomID %d failed with error %08X", &v10, 0x28u);
      }
    }
  }
}

- (void)VCSymptomReporterSetCallback:(void *)callback context:(void *)context
{
  if (context)
  {
    CFRetain(context);
  }

  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VCSymptomReporter_VCSymptomReporterSetCallback_context___block_invoke;
  block[3] = &unk_278BD4FE0;
  block[4] = self;
  block[5] = callback;
  block[6] = context;
  dispatch_async(reportingQueue, block);
}

void __58__VCSymptomReporter_VCSymptomReporterSetCallback_context___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 40);
  objc_storeWeak((*(a1 + 32) + 56), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)dealloc
{
  dispatch_release(self->_reportingQueue);

  v3.receiver = self;
  v3.super_class = VCSymptomReporter;
  [(VCSymptomReporter *)&v3 dealloc];
}

- (int)reportSymptomInternal:(unsigned int)internal optionalDictionary:(id)dictionary
{
  v4 = -2144337919;
  if (internal <= 0x50)
  {
    v6 = *&internal;
    if ([dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyGroupID"] || !self->_didSubmitABCSymptom[v6])
    {
      dispatch_assert_queue_V2(self->_reportingQueue);
      reportRateTargetMismatch = v6;
      switch(v6)
      {
        case 0:
          goto LABEL_72;
        case 2:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportRateTargetMismatch];
          goto LABEL_71;
        case 3:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportBandwidthEstimationMismatch];
          goto LABEL_71;
        case 4:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoMediaBlob];
          goto LABEL_71;
        case 5:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportSignalingFailed:dictionary];
          goto LABEL_71;
        case 6:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportConnectionTimeout:dictionary];
          goto LABEL_71;
        case 7:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoRelayResponseWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 8:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoSNATMAPResponseWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 9:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportFailedToStartAudio];
          goto LABEL_71;
        case 10:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportFailedToStartVideo];
          goto LABEL_71;
        case 11:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoFirstFrameWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 12:
        case 54:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoPackets:v6 WithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 13:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportAudioStall:dictionary];
          goto LABEL_71;
        case 14:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportVideoStall:dictionary];
          goto LABEL_71;
        case 15:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNegativeJitterBufferSize];
          goto LABEL_71;
        case 16:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportIDSDataChannelEventUsageError];
          goto LABEL_71;
        case 17:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportQRATKNTokenError];
          goto LABEL_71;
        case 18:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportReceiveSessionStatsFailed];
          goto LABEL_71;
        case 19:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportCCReliableDataNotReceived:dictionary];
          goto LABEL_71;
        case 20:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportSessionInfoErrorResponse];
          goto LABEL_71;
        case 21:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportKeyIndexNotReceived];
          goto LABEL_71;
        case 22:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportMediaQueuePoolEmpty];
          goto LABEL_71;
        case 23:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportULTargetBitrateOvershoot];
          goto LABEL_71;
        case 24:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportUnexpectedLowTargetBitrate];
          goto LABEL_71;
        case 25:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportMediaQueueOvershoot];
          goto LABEL_71;
        case 26:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportMediaQueueFlushingTooFrequent];
          goto LABEL_71;
        case 27:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportHighConsecutiveAudioErasuresWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 28:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportUnexpectedHighRTTWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 29:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportUnexpectedRampUpFrozen];
          goto LABEL_71;
        case 30:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportInvalidTransportType];
          goto LABEL_71;
        case 31:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportInactiveSlotsInChannelSequence];
          goto LABEL_71;
        case 32:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportAlgosScoreWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 33:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoServerStatsActivity];
          goto LABEL_71;
        case 34:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportSustainedHighUplinkPacketLoss];
          goto LABEL_71;
        case 35:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportSustainedHighDownlinkPacketLoss];
          goto LABEL_71;
        case 36:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportMKMDecryptionWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 37:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportExtendedPoorConnectionWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 38:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportSignificantHandshakeDelayWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 39:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportInvalidVideoStallTime];
          goto LABEL_71;
        case 40:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportFrameQueueForDecodeHighWaterMarkExceeded];
          goto LABEL_71;
        case 41:
          v9 = @"MediaServerTerminated";
          goto LABEL_57;
        case 42:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 80:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportSelfTerminationWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 43:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportKeyFrameGenerationFailure];
          goto LABEL_71;
        case 44:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportVideoSymptom:@"FailedToRegisterVideoFramesFromSource" options:dictionary];
          goto LABEL_71;
        case 45:
          v9 = @"ImproperSwitchToUPlusOneFromLocal";
          goto LABEL_57;
        case 46:
          v9 = @"ImproperSwitchToUPlusOneFromRemote";
LABEL_57:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportMediaSymptomSubtypeConnectionWithContext:v9];
          goto LABEL_71;
        case 47:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportFailedToSetupAudioCodec];
          goto LABEL_71;
        case 48:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 49:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 50:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 51:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 52:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 53:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 55:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportDLTargetBitrateOvershoot];
          goto LABEL_71;
        case 56:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportLongMediaStallRecoveredWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 57:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportInvalidAudioJitterBuffer];
          goto LABEL_71;
        case 58:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportULSRTPEncryptionSetupError];
          goto LABEL_71;
        case 59:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportThermalIncreaseAudioOnlyWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 60:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 61:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 70:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportUnbinnedCameraFormatSelected];
          goto LABEL_71;
        case 71:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportV1SpeechAPIEnabled];
          goto LABEL_71;
        case 72:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:dictionary];
          goto LABEL_71;
        case 75:
        case 76:
        case 77:
        case 78:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportConnectionSliceStatus:v6];
          goto LABEL_71;
        case 79:
          reportRateTargetMismatch = [(VCSymptomReporter *)self reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:dictionary];
LABEL_71:
          v4 = reportRateTargetMismatch;
          if ((reportRateTargetMismatch & 0x80000000) == 0)
          {
LABEL_72:
            self->_didSubmitABCSymptom[v6] = 1;
            v4 = reportRateTargetMismatch;
          }

          break;
        default:
          if (VRTraceGetErrorLogLevelForModule("") >= 3)
          {
            v11 = VRTraceErrorLogLevelToCSTR(3u);
            v12 = gVRTraceOSLog;
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
            {
              [(VCSymptomReporter *)v11 reportSymptomInternal:v6 optionalDictionary:v12];
            }
          }

          break;
      }
    }

    else
    {
      return -2144337879;
    }
  }

  return v4;
}

- (int)reportRateTargetMismatch
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportRateTargetMismatch]";
      v11 = 1024;
      v12 = 434;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom rate target mismatch for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"RateTargetMismatch" actions:0];
}

- (int)reportBandwidthEstimationMismatch
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportBandwidthEstimationMismatch]";
      v11 = 1024;
      v12 = 439;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom bandwidth estimation mismatch for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"BandwidthEstimation" context:@"BandwidthEstimationMismatch" actions:0];
}

- (int)reportNoMediaBlob
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportNoMediaBlob]";
      v11 = 1024;
      v12 = 444;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom no media blob for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"MediaBlob" context:@"NoMediaBlob" actions:0];
}

- (int)reportSignalingFailed:(id)failed
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportSignalingFailed:]";
      v13 = 1024;
      v14 = 449;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom signaling failed for session %u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:failed type:@"Networking" subType:@"SIP" context:@"SignalingFailed"];
}

- (int)reportConnectionTimeout:(id)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportConnectionTimeout:]";
      v13 = 1024;
      v14 = 462;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom connection timeout for session %u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:timeout type:@"Networking" subType:@"Connection" context:@"ConnectionTimeout"];
}

- (int)reportNoRelayResponseWithOptionalDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (dictionary && [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"])
  {
    v6 = [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v11 = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCSymptomReporter reportNoRelayResponseWithOptionalDictionary:]";
        v15 = 1024;
        v16 = 481;
        v17 = 1024;
        v18 = callID;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom no relay response for session %u (server IP %@)", &v11, 0x2Cu);
      }
    }

    return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"Relay" context:@"NoRelayResponse"];
  }

  return v3;
}

- (int)reportNoSNATMAPResponseWithOptionalDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (dictionary && [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"])
  {
    v6 = [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v11 = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCSymptomReporter reportNoSNATMAPResponseWithOptionalDictionary:]";
        v15 = 1024;
        v16 = 500;
        v17 = 1024;
        v18 = callID;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom no SNATMAP response for session %u (server IP %@)", &v11, 0x2Cu);
      }
    }

    return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"SNATMAP" context:@"NoSNATMAPResponse"];
  }

  return v3;
}

- (int)reportFailedToStartAudio
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportFailedToStartAudio]";
      v11 = 1024;
      v12 = 513;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to start audio for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"FailedToStartAudio" actions:0];
}

- (int)reportFailedToSetupAudioCodec
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportFailedToSetupAudioCodec]";
      v11 = 1024;
      v12 = 518;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to setup audio codec for session=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"FailedToSetUpAudioCodec" actions:0];
}

- (int)reportULSRTPEncryptionSetupError
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportULSRTPEncryptionSetupError]";
      v11 = 1024;
      v12 = 523;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to setup SRTP encryption on UL for session=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Security" context:@"ULSRTPEncryptionSetupError" actions:0];
}

- (int)reportFailedToStartVideo
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportFailedToStartVideo]";
      v11 = 1024;
      v12 = 528;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to start video for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"FailedToStartVideo" actions:0];
}

- (int)reportNoFirstFrameWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportNoFirstFrameWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 535;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoFirstRemoteFrame with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"Video" context:@"NoFirstFrame"];
}

- (int)reportNoPackets:(unsigned int)packets WithOptionalDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (packets == 12)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCSymptomReporter reportNoPackets:WithOptionalDictionary:]";
        v18 = 1024;
        v19 = 550;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoRemotePacket with remote participant", &v14, 0x1Cu);
      }
    }

    v10 = @"NoPackets";
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR(7u);
      v12 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCSymptomReporter reportNoPackets:WithOptionalDictionary:]";
        v18 = 1024;
        v19 = 553;
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoRemotePacketWiFi with remote participant", &v14, 0x1Cu);
      }
    }

    v10 = @"NoPacketsWiFi";
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"ConnectionHealth" context:v10];
}

- (int)reportCCReliableDataNotReceived:(id)received
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportCCReliableDataNotReceived:]";
      v12 = 1024;
      v13 = 566;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom CCReliableDataNotReceived with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:received type:@"Networking" subType:@"Connection" context:@"CCReliableDataNotReceived"];
}

- (int)reportMKMDecryptionWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportMKMDecryptionWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 579;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on MKMDecryption with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"Security" context:@"MKMDecryption"];
}

- (int)reportExtendedPoorConnectionWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportExtendedPoorConnectionWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 591;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on ExtendedPoorConnection with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"ConnectionHealth" context:@"ExtendedPoorConnection"];
}

- (int)reportSignificantHandshakeDelayWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportSignificantHandshakeDelayWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 603;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on SignificantHandshakeDelay with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"ConnectionHealth" context:@"SignificantHandshakeDelay"];
}

- (int)reportAudioStall:(id)stall
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportAudioStall:]";
      v13 = 1024;
      v14 = 614;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom audio stall for session %u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:stall type:@"Networking" subType:@"ConnectionHealth" context:@"AudioStall"];
}

- (int)reportVideoStall:(id)stall
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportVideoStall:]";
      v13 = 1024;
      v14 = 627;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom video stall for session %u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:stall type:@"Networking" subType:@"ConnectionHealth" context:@"VideoStall"];
}

- (int)reportAlgosScoreWithOptionalDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (dictionary)
  {
    v6 = [dictionary objectForKeyedSubscript:@"kSymptomReporterAlgosDictionaryKey"];
    v7 = [dictionary objectForKeyedSubscript:@"kSymptomReporterClientUUID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (v6 && v7)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR(7u);
        v10 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          callID = self->_callID;
          v20 = 136316162;
          v21 = v9;
          v22 = 2080;
          v23 = "[VCSymptomReporter reportAlgosScoreWithOptionalDictionary:]";
          v24 = 1024;
          v25 = 651;
          v26 = 1024;
          *v27 = callID;
          *&v27[4] = 2112;
          *&v27[6] = v6;
          _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom ALGOS for session=%u using algosDictionary=%@", &v20, 0x2Cu);
        }
      }

      v12 = [(VCSymptomReporter *)self symptomNameWithDomain:@"AVConference" subtypeContext:@"AlgosScore"];
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v13 setObject:v12 forKey:@"name"];
      [v13 setObject:v6 forKey:v12];
      if ([v7 isEqualToString:@"00000000-0000-0000-0000-000000000000"])
      {
        v14 = [MEMORY[0x277CCACA0] stringWithUTF8String:"com.apple.facetime"];
        v15 = @"BundleID";
        v16 = v13;
      }

      else
      {
        v15 = @"uuid";
        v16 = v13;
        v14 = v7;
      }

      [v16 setObject:v14 forKey:v15];
      v3 = [(VCSymptomReporter *)self reportOSLogSymptomWithDictionary:v13];
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR(7u);
      v18 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316162;
        v21 = v17;
        v22 = 2080;
        v23 = "[VCSymptomReporter reportAlgosScoreWithOptionalDictionary:]";
        v24 = 1024;
        v25 = 647;
        v26 = 2112;
        *v27 = v7;
        *&v27[8] = 2112;
        *&v27[10] = v6;
        _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientUUID=%@, algosDictionary=%@", &v20, 0x30u);
      }
    }
  }

  return v3;
}

- (int)reportNegativeJitterBufferSize
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportNegativeJitterBufferSize]";
      v11 = 1024;
      v12 = 675;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom wrong jitter buffer size for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"NegativeJitterBufferSize" actions:0];
}

- (int)reportIDSDataChannelEventUsageError
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportIDSDataChannelEventUsageError]";
      v11 = 1024;
      v12 = 680;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom IDSDataChannelEventUsageError for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"IDSDataChannelEventUsageError" actions:0];
}

- (int)reportQRATKNTokenError
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportQRATKNTokenError]";
      v11 = 1024;
      v12 = 686;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom QRATKNTokenError for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"QRATKNTokenError" actions:0];
}

- (int)reportReceiveSessionStatsFailed
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportReceiveSessionStatsFailed]";
      v11 = 1024;
      v12 = 691;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom ReceiveSessionStatsFailed for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"ReceiveSessionStatsFailed" actions:0];
}

- (int)reportSessionInfoErrorResponse
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportSessionInfoErrorResponse]";
      v11 = 1024;
      v12 = 701;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom SessionInfoErrorResponse for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"SessionInfoErrorResponse" actions:0];
}

- (int)reportKeyIndexNotReceived
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportKeyIndexNotReceived]";
      v11 = 1024;
      v12 = 711;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom KeyIndexNotReceived for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Security" context:@"KeyIndexNotReceived" actions:0];
}

- (int)reportMediaQueuePoolEmpty
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportMediaQueuePoolEmpty]";
      v11 = 1024;
      v12 = 716;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom MediaQueuePoolEmpty for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"MediaQueue" context:@"MediaQueuePoolEmpty" actions:0];
}

- (int)reportULTargetBitrateOvershoot
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportULTargetBitrateOvershoot]";
      v11 = 1024;
      v12 = 722;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom ULTargetBitrateOvershoot for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"ULTargetBitrateOvershoot" actions:0];
}

- (int)reportDLTargetBitrateOvershoot
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportDLTargetBitrateOvershoot]";
      v11 = 1024;
      v12 = 727;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom DLTargetBitrateOvershoot for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"DLTargetBitrateOvershoot" actions:0];
}

- (int)reportUnexpectedLowTargetBitrate
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportUnexpectedLowTargetBitrate]";
      v11 = 1024;
      v12 = 732;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom UnexpectedLowTargetBitrate for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"UnexpectedLowTargetBitrate" actions:0];
}

- (int)reportMediaQueueOvershoot
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportMediaQueueOvershoot]";
      v11 = 1024;
      v12 = 738;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom MediaQueueOvershoot for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"MediaQueue" context:@"MediaQueueOvershoot" actions:0];
}

- (int)reportMediaQueueFlushingTooFrequent
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportMediaQueueFlushingTooFrequent]";
      v11 = 1024;
      v12 = 744;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom MediaQueueFlushingTooFrequent for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"MediaQueue" context:@"MediaQueueFlushingTooFrequent" actions:0];
}

- (int)reportHighConsecutiveAudioErasuresWithOptionalDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportHighConsecutiveAudioErasuresWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 751;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom HighConsecutiveAudioErasures for session %u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Audio" context:@"HighConsecutiveAudioErasures"];
}

- (int)reportUnexpectedHighRTTWithOptionalDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportUnexpectedHighRTTWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 762;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom UnexpectedHighRTT with remote participant for session %u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"RateAdaptation" context:@"UnexpectedHighRTT"];
}

- (int)reportUnexpectedRampUpFrozen
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportUnexpectedRampUpFrozen]";
      v11 = 1024;
      v12 = 770;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom UnexpectedRampUpFrozen for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"UnexpectedRampUpFrozen" actions:0];
}

- (int)reportNoServerStatsActivity
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportNoServerStatsActivity]";
      v11 = 1024;
      v12 = 776;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom NoServerStatsActivity for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"NoServerStatsActivity" actions:0];
}

- (int)reportSustainedHighUplinkPacketLoss
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportSustainedHighUplinkPacketLoss]";
      v11 = 1024;
      v12 = 782;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom SustainedHighUplinkPacketLoss for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"ConnectionHealth" context:@"SustainedHighUplinkPacketLoss" actions:0];
}

- (int)reportSustainedHighDownlinkPacketLoss
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportSustainedHighDownlinkPacketLoss]";
      v11 = 1024;
      v12 = 788;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom SustainedHighDownlinkPacketLoss for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"ConnectionHealth" context:@"SustainedHighDownlinkPacketLoss" actions:0];
}

- (int)reportInvalidTransportType
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportInvalidTransportType]";
      v11 = 1024;
      v12 = 794;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InvalidTransportType for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"InvalidTransportType" actions:0];
}

- (int)reportInactiveSlotsInChannelSequence
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportInactiveSlotsInChannelSequence]";
      v11 = 1024;
      v12 = 800;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InactiveSlotsInChannelSequence for session %u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"InactiveSlotsInChannelSequence" actions:0];
}

- (int)reportInvalidVideoStallTime
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportInvalidVideoStallTime]";
      v11 = 1024;
      v12 = 806;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom invalid video stall time for callID=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"InvalidVideoStallTime" actions:0];
}

- (int)reportFrameQueueForDecodeHighWaterMarkExceeded
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportFrameQueueForDecodeHighWaterMarkExceeded]";
      v11 = 1024;
      v12 = 811;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom frameQueueForDecode high watermark exceeded for callID=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"FrameQueueForDecodeHighWaterMarkExceeded" actions:0];
}

- (int)reportSelfTerminationWithOptionalDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyTerminationSource"];
  v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@SelfTermination", v5];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR(7u);
    v8 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v9 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      callID = self->_callID;
      *buf = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "[VCSymptomReporter reportSelfTerminationWithOptionalDictionary:]";
      v16 = 1024;
      v17 = 820;
      v18 = 2080;
      v19 = v9;
      v20 = 1024;
      v21 = callID;
      _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom %s for session=%u", buf, 0x2Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Termination" context:v6];
}

- (int)reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 832;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on InvalidUseOfFaceTimeClassic with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"Connection" context:@"InvalidFaceTimeClassic"];
}

- (int)reportKeyFrameGenerationFailure
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportKeyFrameGenerationFailure]";
      v11 = 1024;
      v12 = 843;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom KeyFrameGenerationFailure for session=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"KeyFrameGenerationFailure" actions:0];
}

- (int)reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 849;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on AudioConnectionTimeRegressedFromTelemetry with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"ConnectionHealth" context:@"AudioConnectionTimeRegressedFromTelemetry"];
}

- (int)reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 861;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on AudioErasurePercentageRegressedFromTelemetry with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Audio" context:@"AudioErasurePercentageRegressedFromTelemetry"];
}

- (int)reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 873;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on PoorConnectionPercentageRegresseFromTelemetry with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Video" context:@"PoorConnectionPercentageRegressedFromTelemetry"];
}

- (int)reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 885;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on VideoStallPercentageRegressedFromTelemetry with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Video" context:@"VideoStallPercentageRegressedFromTelemetry"];
}

- (int)reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 897;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on VideoConnectionTimeRegressedFromTelemetry with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"Connection" context:@"VideoConnectionTimeRegressedFromTelemetry"];
}

- (int)reportThermalIncreaseAudioOnlyWithOptionalDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (dictionary && [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyThermalPressureLevel"])
  {
    v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SymptomReporterOptionalKeyThermalPressureLevel", "intValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v11 = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCSymptomReporter reportThermalIncreaseAudioOnlyWithOptionalDictionary:]";
        v15 = 1024;
        v16 = 914;
        v17 = 1024;
        v18 = callID;
        v19 = 1024;
        v20 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on ThermalIncreaseAudioOnly for session=%u (thermal pressure level=%d)", &v11, 0x28u);
      }
    }

    return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Audio" context:@"ThermalIncreaseAudioOnly"];
  }

  return v3;
}

- (int)reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 923;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on PoorConnectionDespiteVideoReceived with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Video" context:@"PoorConnectionDespiteVideoReceived"];
}

- (int)reportVideoSymptom:(id)symptom options:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") < 7)
  {
    return [(VCSymptomReporter *)self reportSymptomWithOptions:options type:@"Media" subType:@"Video" context:symptom];
  }

  __str = 0;
  callID = self->_callID;
  if (symptom)
  {
    v8 = [objc_msgSend(symptom "description")];
    if (options)
    {
LABEL_4:
      v9 = [objc_msgSend(options "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v8 = "<nil>";
    if (options)
    {
      goto LABEL_4;
    }
  }

  v9 = "<nil>";
LABEL_7:
  asprintf(&__str, "_callID=%u, context=%s, options=%s", callID, v8, v9);
  if (__str)
  {
    __lasts = 0;
    v10 = strtok_r(__str, "\n", &__lasts);
    do
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR(7u);
        v12 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v17 = v11;
          v18 = 2080;
          v19 = "[VCSymptomReporter reportVideoSymptom:options:]";
          v20 = 1024;
          v21 = 938;
          v22 = 2080;
          v23 = "ABC_Video";
          v24 = 2080;
          v25 = v10;
          _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v10 = strtok_r(0, "\n", &__lasts);
    }

    while (v10);
    free(__str);
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:options type:@"Media" subType:@"Video" context:symptom];
}

- (int)reportMediaSymptomSubtypeConnectionWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportMediaSymptomSubtypeConnectionWithContext:]";
      v13 = 1024;
      v14 = 950;
      v15 = 2112;
      contextCopy = context;
      v17 = 1024;
      v18 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom context=%@ for session=%u", &v9, 0x2Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Connection" context:context actions:0];
}

- (int)reportSymptomWithType:(id)type subType:(id)subType context:(id)context actions:(id)actions
{
  dispatch_assert_queue_V2(self->_reportingQueue);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  diagnosticReporter = self->_diagnosticReporter;
  if (!diagnosticReporter)
  {
    diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);
    self->_diagnosticReporter = diagnosticReporter;
  }

  v12 = [(SDRDiagnosticReporter *)diagnosticReporter signatureWithDomain:@"AVConference" type:type subType:subType detectedProcess:self->_procName triggerThresholdValues:0];
  [v12 setObject:context forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  v13 = self->_diagnosticReporter;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke;
  v16[3] = &unk_278BD5550;
  v16[4] = v12;
  v16[5] = &v17;
  [(SDRDiagnosticReporter *)v13 snapshotWithSignature:v12 duration:0 events:0 payload:actions actions:v16 reply:0.0];
  v14 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v14;
}

void __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x277D6B198]), "BOOLValue"}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (v3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR(7u);
      v6 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        if (v7)
        {
          v8 = [objc_msgSend(v7 "description")];
        }

        else
        {
          v8 = "<nil>";
        }

        v9 = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCSymptomReporter reportSymptomWithType:subType:context:actions:]_block_invoke";
        v13 = 1024;
        v14 = 974;
        v15 = 2080;
        v16 = v8;
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Sent snapshot for signature %s", &v9, 0x26u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke_cold_1();
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = -2144337899;
  }
}

- (int)reportLongMediaStallRecoveredWithOptionalDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportLongMediaStallRecoveredWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 987;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on LongMediaStallRecovered with remote participant", &v8, 0x1Cu);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Networking" subType:@"ConnectionHealth" context:@"LongMediaStallRecovered"];
}

- (int)reportConnectionSliceStatus:(unsigned int)status
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportConnectionSliceStatus:]";
      v13 = 1024;
      v14 = 1000;
      v15 = 1024;
      v16 = callID;
      v17 = 1024;
      statusCopy = status;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on connection Slice status for callID=%u symptomID=%d", &v9, 0x28u);
    }
  }

  if (status - 75 > 3)
  {
    return 0;
  }

  else
  {
    return [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"ConnectionHealth" context:off_278BD55E0[status - 75] actions:0];
  }
}

- (int)reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:(id)dictionary
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:]";
      v12 = 1024;
      v13 = 1024;
      v14 = 2112;
      dictionaryCopy = dictionary;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on VideoReceiverEnqueueFrameRateTooHigh optionalDictionary=%@", &v8, 0x26u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"VideoReceiverEnqueueFrameRateTooHigh" actions:0];
}

- (int)reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 1036;
      v15 = 1024;
      v16 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoVideoDisplayedFailSafeFIR for callID=%u", &v9, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithOptions:dictionary type:@"Media" subType:@"Video" context:@"NoVideoDisplayedFailSafeFIR"];
}

- (int)reportUnbinnedCameraFormatSelected
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportUnbinnedCameraFormatSelected]";
      v11 = 1024;
      v12 = 1047;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on UnbinnedCameraFormatSelected for callID=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"UnbinnedCameraFormatSelected" actions:0];
}

- (int)reportInvalidAudioJitterBuffer
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportInvalidAudioJitterBuffer]";
      v11 = 1024;
      v12 = 1052;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InvalidAudioJitterBuffer for session=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"InvalidJitterBuffer" actions:0];
}

- (int)reportV1SpeechAPIEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportV1SpeechAPIEnabled]";
      v11 = 1024;
      v12 = 1057;
      v13 = 1024;
      v14 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom V1SpeechAPIEnabled for session=%u", &v7, 0x22u);
    }
  }

  return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"V1SpeechAPIEnabled" actions:0];
}

- (int)reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (dictionary && [dictionary objectForKeyedSubscript:@"SymptomReporterOptionalKeyCaptureFrameCount"])
  {
    v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SymptomReporterOptionalKeyCaptureFrameCount", "intValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v11 = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCSymptomReporter reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:]";
        v15 = 1024;
        v16 = 1066;
        v17 = 1024;
        v18 = callID;
        v19 = 1024;
        v20 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InvalidVideoTxCaptureFrameCount for session=%u (frame count=%d)", &v11, 0x28u);
      }
    }

    return [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"InvalidVideoTxCaptureFrameCount" actions:0];
  }

  return v3;
}

- (int)reportSymptomWithIDSDestination:(id)destination sessionID:(id)d type:(id)type subType:(id)subType context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_reportingQueue);
  diagnosticReporter = self->_diagnosticReporter;
  if (!diagnosticReporter)
  {
    diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);
    self->_diagnosticReporter = diagnosticReporter;
  }

  v14 = [(SDRDiagnosticReporter *)diagnosticReporter signatureWithDomain:@"AVConference" type:type subType:subType detectedProcess:self->_procName triggerThresholdValues:d];
  [v14 setObject:context forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  v15 = [(SDRDiagnosticReporter *)self->_diagnosticReporter snapshotWithSignature:v14 withIDSDestinations:destination validFor:0 duration:0 events:0 payload:&__block_literal_global_2 actions:600.0 reply:15.0];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (v15)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR(7u);
      v18 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        if (v14)
        {
          v19 = [objc_msgSend(v14 "description")];
        }

        else
        {
          v19 = "<nil>";
        }

        v22 = 136315906;
        v23 = v17;
        v24 = 2080;
        v25 = "[VCSymptomReporter reportSymptomWithIDSDestination:sessionID:type:subType:context:]";
        v26 = 1024;
        v27 = 1103;
        v28 = 2080;
        v29 = v19;
        _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Sent snapshot for signature %s", &v22, 0x26u);
      }
    }

    return 0;
  }

  else
  {
    v20 = -2144337899;
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCSymptomReporter reportSymptomWithIDSDestination:sessionID:type:subType:context:];
      }
    }
  }

  return v20;
}

void __84__VCSymptomReporter_reportSymptomWithIDSDestination_sessionID_type_subType_context___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v5 = "<nil>";
      }

      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCSymptomReporter reportSymptomWithIDSDestination:sessionID:type:subType:context:]_block_invoke";
      v10 = 1024;
      v11 = 1098;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: got response from diagnosticReporter - %s", &v6, 0x26u);
    }
  }
}

- (int)reportOSLogSymptomWithDictionary:(id)dictionary
{
  dispatch_assert_queue_V2(self->_reportingQueue);
  if (dictionary && [MEMORY[0x277CCAA98] isValidJSONObject:dictionary] && (v5 = objc_msgSend(MEMORY[0x277CCAA98], "dataWithJSONObject:options:error:", dictionary, 0, 0)) != 0 && (v6 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA0]), "initWithData:encoding:", v5, 4)) != 0)
  {
    v7 = v6;
    if (os_log_type_enabled(self->_osLogNetworkingHandle, OS_LOG_TYPE_ERROR))
    {
      [VCSymptomReporter reportOSLogSymptomWithDictionary:v7];
    }

    return 0;
  }

  else
  {
    v8 = -2144337919;
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCSymptomReporter reportOSLogSymptomWithDictionary:];
      }
    }
  }

  return v8;
}

- (int)reportSymptomWithGroupID:(id)d signature:(id)signature actions:(id)actions
{
  v28 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = v9;
      v22 = 2080;
      v23 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]";
      v24 = 1024;
      v25 = 1135;
      v26 = 2112;
      dCopy = d;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptomGroupID=%@ receives request to trigger symptom", buf, 0x26u);
    }
  }

  if (!self->_isSymptomReportingEnabled)
  {
    return 0;
  }

  [signature setObject:d forKeyedSubscript:*MEMORY[0x277D6B1B0]];
  diagnosticReporter = self->_diagnosticReporter;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__VCSymptomReporter_reportSymptomWithGroupID_signature_actions___block_invoke;
  v19[3] = &unk_278BD5598;
  v19[4] = self;
  v12 = [(SDRDiagnosticReporter *)diagnosticReporter snapshotWithSignature:signature duration:0 events:0 payload:actions actions:v19 reply:0.0];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (v12)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR(7u);
      v15 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        if (signature)
        {
          v16 = [objc_msgSend(signature "description")];
        }

        else
        {
          v16 = "<nil>";
        }

        *buf = 136315906;
        v21 = v14;
        v22 = 2080;
        v23 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]";
        v24 = 1024;
        v25 = 1152;
        v26 = 2080;
        dCopy = v16;
        _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Sent snapshot for signature %s", buf, 0x26u);
      }
    }

    return 0;
  }

  v17 = -2144337899;
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCSymptomReporter reportSymptomWithGroupID:signature:actions:];
    }
  }

  return v17;
}

void __64__VCSymptomReporter_reportSymptomWithGroupID_signature_actions___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v6 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v11 = 136315906;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]_block_invoke";
      v15 = 1024;
      v16 = 1142;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: got response from diagnosticReporter - %s", &v11, 0x26u);
    }
  }

  v7 = *MEMORY[0x277D6B168];
  if ([a2 objectForKeyedSubscript:*MEMORY[0x277D6B168]])
  {
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{v7), "intValue"}];
    if (v8 == *MEMORY[0x277D6B040])
    {
      *(*(a1 + 32) + 226) = 0;
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR(7u);
        v10 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v9;
          v13 = 2080;
          v14 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]_block_invoke";
          v15 = 1024;
          v16 = 1146;
          _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptom reporting is disabled!", &v11, 0x1Cu);
        }
      }
    }
  }
}

- (int)requestRemoteSideWithOptions:(id)options context:(id)context signature:(id)signature
{
  v5 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self->_isSymptomReportingEnabled)
  {
    diagnosticReporter = self->_diagnosticReporter;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__VCSymptomReporter_requestRemoteSideWithOptions_context_signature___block_invoke;
    v12[3] = &unk_278BD55C0;
    v12[4] = self;
    v12[5] = options;
    v12[6] = context;
    v12[7] = signature;
    v12[8] = &v13;
    if ([(SDRDiagnosticReporter *)diagnosticReporter groupCaseIdentifierForSignature:signature reply:v12])
    {
      v5 = *(v14 + 6);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR(3u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          if (signature)
          {
            v10 = [objc_msgSend(signature "description")];
          }

          else
          {
            v10 = "<nil>";
          }

          [(VCSymptomReporter *)v10 requestRemoteSideWithOptions:buf context:v8 signature:v9];
        }
      }

      v5 = -2144337899;
      *(v14 + 6) = -2144337899;
    }
  }

  _Block_object_dispose(&v13, 8);
  return v5;
}

void __68__VCSymptomReporter_requestRemoteSideWithOptions_context_signature___block_invoke(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x277D6B198]), "BOOLValue"}])
  {
    Weak = objc_loadWeak((a1[4] + 56));
    v5 = Weak;
    if (*(a1[4] + 48))
    {
      v6 = Weak == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR(7u);
        v8 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1[4] + 48);
          v24 = 136316162;
          v25 = v7;
          v26 = 2080;
          v27 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
          v28 = 1024;
          v29 = 1180;
          v30 = 2048;
          v31 = v5;
          v32 = 2048;
          v33 = v9;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporterCallback: %p or _symptomReporterCallback: %p", &v24, 0x30u);
        }
      }
    }

    else
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[5]];
      v17 = [a2 objectForKeyedSubscript:*MEMORY[0x277D6B160]];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
      if (ErrorLogLevelForModule >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR(7u);
        v20 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1[4] + 48);
          v24 = 136316162;
          v25 = v19;
          v26 = 2080;
          v27 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
          v28 = 1024;
          v29 = 1175;
          v30 = 2112;
          v31 = v17;
          v32 = 2048;
          v33 = v21;
          _os_log_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptomGroupID: %@ send message to collect remote log, _symptomReporterCallback: %p", &v24, 0x30u);
        }
      }

      [v16 setObject:a1[6] forKeyedSubscript:@"SymptomReporterCallbackKeySymptomID"];
      [v16 setObject:v17 forKeyedSubscript:@"SymptomReporterCallbackKeyGroupID"];
      (*(a1[4] + 48))(v5, v16);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR(3u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v22 = a1[7];
        if (v22)
        {
          v23 = [objc_msgSend(v22 "description")];
        }

        else
        {
          v23 = "<nil>";
        }

        v24 = 136316162;
        v25 = v10;
        v26 = 2080;
        v27 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
        v28 = 1024;
        v29 = 1183;
        v30 = 2080;
        v31 = v23;
        v32 = 2112;
        v33 = a2;
        _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d reportSymptomWithTypeWantsRemoteLog: Failed to get group case ID for signature %s response %@", &v24, 0x30u);
      }
    }

    v12 = *MEMORY[0x277D6B168];
    if ([a2 objectForKeyedSubscript:*MEMORY[0x277D6B168]])
    {
      v13 = [objc_msgSend(a2 objectForKeyedSubscript:{v12), "intValue"}];
      if (v13 == *MEMORY[0x277D6B040])
      {
        *(a1[4] + 226) = 0;
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR(7u);
          v15 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 136315650;
            v25 = v14;
            v26 = 2080;
            v27 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
            v28 = 1024;
            v29 = 1187;
            _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptom reporting is disabled!", &v24, 0x1Cu);
          }
        }
      }
    }

    *(*(a1[8] + 8) + 24) = -2144337899;
  }
}

- (int)reportSymptomWithOptions:(id)options type:(id)type subType:(id)subType context:(id)context
{
  dispatch_assert_queue_V2(self->_reportingQueue);
  diagnosticReporter = self->_diagnosticReporter;
  if (!diagnosticReporter)
  {
    diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);
    self->_diagnosticReporter = diagnosticReporter;
  }

  v12 = [(SDRDiagnosticReporter *)diagnosticReporter signatureWithDomain:@"AVConference" type:type subType:subType detectedProcess:self->_procName triggerThresholdValues:0];
  v13 = [options objectForKeyedSubscript:@"SymptomReporterOptionalKeyGroupID"];
  v14 = [options objectForKeyedSubscript:@"SymptomReporterOptionalIsLocalSideOnly"];
  if (v13)
  {
    if (!v14 || !CFEqual(v14, *MEMORY[0x277CBED28]))
    {
      context = [MEMORY[0x277CCACA0] stringWithFormat:@"%@%@", context, @"Group"];
    }

    [v12 setObject:context forKeyedSubscript:*MEMORY[0x277D6B1F0]];
    selfCopy2 = self;
    v16 = v13;
LABEL_8:

    return [(VCSymptomReporter *)selfCopy2 reportSymptomWithGroupID:v16 signature:v12 actions:0];
  }

  if (v14 && CFEqual(v14, *MEMORY[0x277CBED28]))
  {
    if (context)
    {
      [v12 setObject:context forKeyedSubscript:*MEMORY[0x277D6B1F0]];
    }

    selfCopy2 = self;
    v16 = 0;
    goto LABEL_8;
  }

  return [(VCSymptomReporter *)self requestRemoteSideWithOptions:options context:context signature:v12];
}

- (void)reportSymptomInternal:(os_log_t)log optionalDictionary:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCSymptomReporter reportSymptomInternal:optionalDictionary:]";
  v7 = 1024;
  v8 = 423;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d SymptomReporter: unknown symptom ID %d", &v3, 0x22u);
}

void __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 32);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)reportSymptomWithIDSDestination:sessionID:type:subType:context:.cold.1()
{
  OUTLINED_FUNCTION_18_0();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)reportOSLogSymptomWithDictionary:(void *)a1 .cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)reportOSLogSymptomWithDictionary:.cold.2()
{
  OUTLINED_FUNCTION_18_0();
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)reportSymptomWithGroupID:signature:actions:.cold.1()
{
  OUTLINED_FUNCTION_18_0();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)requestRemoteSideWithOptions:(uint64_t)a3 context:(os_log_t)log signature:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 1192;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d SymptomReporter: Invalid parameters for signature %s", buf, 0x26u);
}

@end