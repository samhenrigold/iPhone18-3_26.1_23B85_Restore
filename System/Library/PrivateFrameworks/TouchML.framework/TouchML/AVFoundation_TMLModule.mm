@interface AVFoundation_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation AVFoundation_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1D3CD8;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9308 != -1)
  {
    dispatch_once(&qword_2806D9308, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2D0C0 forKeyedSubscript:@"CMTimeMakeWithSeconds"];
  [contextCopy setObject:&unk_287F2D0E0 forKeyedSubscript:@"CMTimeAdd"];
  [contextCopy setObject:&unk_287F2D100 forKeyedSubscript:@"CMTimeRangeMake"];
  [contextCopy setObject:&unk_287F2D120 forKeyedSubscript:@"CMTimeRangeFromTimeToTime"];
  [contextCopy setObject:&unk_287F2D140 forKeyedSubscript:@"CMTimeGetSeconds"];
  [contextCopy setObject:&unk_287F2D160 forKeyedSubscript:@"CMTimeMultiplyByFloat64"];
  [contextCopy setObject:&unk_287F2D180 forKeyedSubscript:@"CMTimeCompare"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v6 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55FB8 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"AVPlayerStatusUnknown" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FD0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerStatusReadyToPlay" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FE8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerStatusFailed" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FB8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemStatusUnknown" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FD0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemStatusReadyToPlay" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FE8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemStatusFailed" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FB8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerTimeControlStatusPaused" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FD0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FE8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerTimeControlStatusPlaying" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FB8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerActionAtItemEndAdvance" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FD0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerActionAtItemEndPause" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FE8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerActionAtItemEndNone" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE6140] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemTimeJumpedNotification" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE60C0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemDidPlayToEndTimeNotification" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE60D0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemFailedToPlayToEndTimeNotification" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE6118] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemPlaybackStalledNotification" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE60C8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVPlayerItemFailedToPlayToEndTimeErrorKey" descriptor:dictionary];
  v20 = *MEMORY[0x277CC08F0];
  *&v21 = *(MEMORY[0x277CC08F0] + 16);
  v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v20];
  [dictionary setObject:v7 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCMTimeZero" descriptor:dictionary];
  v20 = *MEMORY[0x277CC0888];
  *&v21 = *(MEMORY[0x277CC0888] + 16);
  v8 = [MEMORY[0x277CCAE60] valueWithCMTime:&v20];
  [dictionary setObject:v8 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCMTimeIndefinite" descriptor:dictionary];
  v20 = *MEMORY[0x277CC0898];
  *&v21 = *(MEMORY[0x277CC0898] + 16);
  v9 = [MEMORY[0x277CCAE60] valueWithCMTime:&v20];
  [dictionary setObject:v9 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCMTimeInvalid" descriptor:dictionary];
  v20 = *MEMORY[0x277CC08B0];
  *&v21 = *(MEMORY[0x277CC08B0] + 16);
  v10 = [MEMORY[0x277CCAE60] valueWithCMTime:&v20];
  [dictionary setObject:v10 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCMTimePositiveInfinity" descriptor:dictionary];
  v20 = *MEMORY[0x277CC08A0];
  *&v21 = *(MEMORY[0x277CC08A0] + 16);
  v11 = [MEMORY[0x277CCAE60] valueWithCMTime:&v20];
  [dictionary setObject:v11 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCMTimeNegativeInfinity" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5DD0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVLayerVideoGravityResizeAspect" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5DD8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVLayerVideoGravityResizeAspectFill" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5DC8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVLayerVideoGravityResize" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5C40] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPresetLowQuality" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5C58] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPresetMediumQuality" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5C00] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPresetHighestQuality" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5BC8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPreset640x480" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5BD0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPreset960x540" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5BA8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPreset1280x720" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5BB0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPreset1920x1080" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5BE0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPresetAppleM4A" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5C78] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVAssetExportPresetPassthrough" descriptor:dictionary];
  v12 = *(MEMORY[0x277CC08E0] + 16);
  v20 = *MEMORY[0x277CC08E0];
  v21 = v12;
  v22 = *(MEMORY[0x277CC08E0] + 32);
  v13 = [MEMORY[0x277CCAE60] valueWithCMTimeRange:&v20];
  [dictionary setObject:v13 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCMTimeRangeZero" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FB8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVSpeechBoundaryImmediate" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FD0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVSpeechBoundaryWord" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FD0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVSpeechSynthesisVoiceQualityDefault" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FE8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVSpeechSynthesisVoiceQualityEnhanced" descriptor:dictionary];
  LODWORD(v14) = *MEMORY[0x277CB8308];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [dictionary setObject:v15 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"AVSpeechUtteranceMinimumSpeechRate" descriptor:dictionary];
  LODWORD(v16) = *MEMORY[0x277CB8300];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [dictionary setObject:v17 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"AVSpeechUtteranceMaximumSpeechRate" descriptor:dictionary];
  LODWORD(v18) = *MEMORY[0x277CB82F8];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [dictionary setObject:v19 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"AVSpeechUtteranceDefaultSpeechRate" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CB82F0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVSpeechSynthesisVoiceIdentifierAlex" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5EA8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeVideo" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5E48] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeAudio" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5E98] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeText" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5E58] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeClosedCaption" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5E90] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeSubtitle" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5EA0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeTimecode" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5E70] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeMetadata" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5E80] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMediaTypeMuxed" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE6218] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVURLAssetHTTPCookiesKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE61B8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVURLAssetAllowsCellularAccessKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE61C8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVURLAssetAllowsExpensiveNetworkAccessKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE61C0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVURLAssetAllowsConstrainedNetworkAccessKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE59A8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetPhoto" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5988] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetHigh" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE59A0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetMedium" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5998] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetLow" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5990] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetInputPriority" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5970] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPreset352x288" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5980] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPreset640x480" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5960] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPreset1280x720" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5968] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPreset1920x1080" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5978] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPreset3840x2160" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE59B8] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetiFrame960x540" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE59B0] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVCaptureSessionPresetiFrame1280x720" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A90] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeUPCECode" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A20] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeCode39Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A28] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeCode39Mod43Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A40] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeEAN13Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A48] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeEAN8Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A30] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeCode93Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A18] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeCode128Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A78] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypePDF417Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A80] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeQRCode" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A10] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeAztecCode" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A70] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeInterleaved2of5Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A68] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeITF14Code" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE5A38] forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"AVMetadataObjectTypeDataMatrixCode" descriptor:dictionary];
}

@end