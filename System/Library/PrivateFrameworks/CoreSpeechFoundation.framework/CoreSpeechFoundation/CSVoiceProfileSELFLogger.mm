@interface CSVoiceProfileSELFLogger
+ (id)sharedLogger;
+ (void)initialize;
- (void)logVoiceProfileICloudSyncFinishedForEnrollmentId:(id)id isVoiceProfileiCloudSyncSuccess:(BOOL)success failureReasonIfAny:(id)any forLocale:(id)locale;
@end

@implementation CSVoiceProfileSELFLogger

- (void)logVoiceProfileICloudSyncFinishedForEnrollmentId:(id)id isVoiceProfileiCloudSyncSuccess:(BOOL)success failureReasonIfAny:(id)any forLocale:(id)locale
{
  successCopy = success;
  v29 = *MEMORY[0x1E69E9840];
  idCopy = id;
  anyCopy = any;
  localeCopy = locale;
  v12 = SSRLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SSRLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v21 = 136315906;
    v22 = "[CSVoiceProfileSELFLogger logVoiceProfileICloudSyncFinishedForEnrollmentId:isVoiceProfileiCloudSyncSuccess:failureReasonIfAny:forLocale:]";
    if (successCopy)
    {
      v13 = @"YES";
    }

    v23 = 2112;
    v24 = idCopy;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = anyCopy;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile iCloud Sync SELF Log for enrollment ID %@, isVoiceProfileiCloudSyncSuccess %@, failureReason %@", &v21, 0x2Au);
  }

  v14 = objc_alloc_init(MEMORY[0x1E69CEF30]);
  [v14 setEnrollmentId:idCopy];
  [v14 setIsVoiceProfileSyncSuccess:successCopy];
  [v14 setVoiceProfileSyncFailureReason:anyCopy];
  v15 = localeCopy;
  if ([v15 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
  {
    v16 = 0;
  }

  else if ([v15 isEqualToString:@"LOCALE_AR_AE"])
  {
    v16 = 1;
  }

  else if ([v15 isEqualToString:@"LOCALE_AR_SA"])
  {
    v16 = 2;
  }

  else if ([v15 isEqualToString:@"LOCALE_CA_ES"])
  {
    v16 = 3;
  }

  else if ([v15 isEqualToString:@"LOCALE_CS_CZ"])
  {
    v16 = 4;
  }

  else if ([v15 isEqualToString:@"LOCALE_DA_DK"])
  {
    v16 = 5;
  }

  else if ([v15 isEqualToString:@"LOCALE_DE_AT"])
  {
    v16 = 6;
  }

  else if ([v15 isEqualToString:@"LOCALE_DE_CH"])
  {
    v16 = 7;
  }

  else if ([v15 isEqualToString:@"LOCALE_DE_DE"])
  {
    v16 = 8;
  }

  else if ([v15 isEqualToString:@"LOCALE_EL_GR"])
  {
    v16 = 9;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_AE"])
  {
    v16 = 10;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_AU"])
  {
    v16 = 11;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_CA"])
  {
    v16 = 12;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_GB"])
  {
    v16 = 13;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_ID"])
  {
    v16 = 14;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_IE"])
  {
    v16 = 15;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_IN"])
  {
    v16 = 16;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_MY"])
  {
    v16 = 17;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_NZ"])
  {
    v16 = 18;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_PH"])
  {
    v16 = 19;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_SG"])
  {
    v16 = 20;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_SA"])
  {
    v16 = 21;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_US"])
  {
    v16 = 22;
  }

  else if ([v15 isEqualToString:@"LOCALE_EN_ZA"])
  {
    v16 = 23;
  }

  else if ([v15 isEqualToString:@"LOCALE_ES_CL"])
  {
    v16 = 24;
  }

  else if ([v15 isEqualToString:@"LOCALE_ES_CO"])
  {
    v16 = 25;
  }

  else if ([v15 isEqualToString:@"LOCALE_ES_ES"])
  {
    v16 = 26;
  }

  else if ([v15 isEqualToString:@"LOCALE_ES_MX"])
  {
    v16 = 27;
  }

  else if ([v15 isEqualToString:@"LOCALE_ES_US"])
  {
    v16 = 28;
  }

  else if ([v15 isEqualToString:@"LOCALE_FI_FI"])
  {
    v16 = 29;
  }

  else if ([v15 isEqualToString:@"LOCALE_FR_BE"])
  {
    v16 = 30;
  }

  else if ([v15 isEqualToString:@"LOCALE_FR_CA"])
  {
    v16 = 31;
  }

  else if ([v15 isEqualToString:@"LOCALE_FR_CH"])
  {
    v16 = 32;
  }

  else if ([v15 isEqualToString:@"LOCALE_FR_FR"])
  {
    v16 = 33;
  }

  else if ([v15 isEqualToString:@"LOCALE_HE_IL"])
  {
    v16 = 34;
  }

  else if ([v15 isEqualToString:@"LOCALE_HI_IN"])
  {
    v16 = 35;
  }

  else if ([v15 isEqualToString:@"LOCALE_HR_HR"])
  {
    v16 = 36;
  }

  else if ([v15 isEqualToString:@"LOCALE_HU_HU"])
  {
    v16 = 37;
  }

  else if ([v15 isEqualToString:@"LOCALE_ID_ID"])
  {
    v16 = 38;
  }

  else if ([v15 isEqualToString:@"LOCALE_IT_CH"])
  {
    v16 = 39;
  }

  else if ([v15 isEqualToString:@"LOCALE_IT_IT"])
  {
    v16 = 40;
  }

  else if ([v15 isEqualToString:@"LOCALE_JA_JP"])
  {
    v16 = 41;
  }

  else if ([v15 isEqualToString:@"LOCALE_KO_KR"])
  {
    v16 = 42;
  }

  else if ([v15 isEqualToString:@"LOCALE_MS_MY"])
  {
    v16 = 43;
  }

  else if ([v15 isEqualToString:@"LOCALE_NB_NO"])
  {
    v16 = 44;
  }

  else if ([v15 isEqualToString:@"LOCALE_NL_BE"])
  {
    v16 = 45;
  }

  else if ([v15 isEqualToString:@"LOCALE_NL_NL"])
  {
    v16 = 46;
  }

  else if ([v15 isEqualToString:@"LOCALE_PL_PL"])
  {
    v16 = 47;
  }

  else if ([v15 isEqualToString:@"LOCALE_PT_BR"])
  {
    v16 = 48;
  }

  else if ([v15 isEqualToString:@"LOCALE_PT_PT"])
  {
    v16 = 49;
  }

  else if ([v15 isEqualToString:@"LOCALE_RO_RO"])
  {
    v16 = 50;
  }

  else if ([v15 isEqualToString:@"LOCALE_RU_RU"])
  {
    v16 = 51;
  }

  else if ([v15 isEqualToString:@"LOCALE_SK_SK"])
  {
    v16 = 52;
  }

  else if ([v15 isEqualToString:@"LOCALE_SV_SE"])
  {
    v16 = 53;
  }

  else if ([v15 isEqualToString:@"LOCALE_TH_TH"])
  {
    v16 = 54;
  }

  else if ([v15 isEqualToString:@"LOCALE_TR_TR"])
  {
    v16 = 55;
  }

  else if ([v15 isEqualToString:@"LOCALE_UK_UA"])
  {
    v16 = 56;
  }

  else if ([v15 isEqualToString:@"LOCALE_VI_VN"])
  {
    v16 = 57;
  }

  else if ([v15 isEqualToString:@"LOCALE_WUU_CN"])
  {
    v16 = 58;
  }

  else if ([v15 isEqualToString:@"LOCALE_YUE_CN"])
  {
    v16 = 59;
  }

  else if ([v15 isEqualToString:@"LOCALE_ZH_CN"])
  {
    v16 = 60;
  }

  else if ([v15 isEqualToString:@"LOCALE_ZH_HK"])
  {
    v16 = 61;
  }

  else if ([v15 isEqualToString:@"LOCALE_ZH_TW"])
  {
    v16 = 62;
  }

  else
  {
    v16 = 0;
  }

  [v14 setLocale:v16];
  v17 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  [v17 setVoiceProfileICloudSyncFinished:v14];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x1E69CE1F0] defaultMessageStream];
  v20 = +[CSVoiceProfileSELFLogger voiceProfileiCloudSyncIsolatedStreamID];
  [defaultMessageStream emitMessage:v17 isolatedStreamUUID:v20];
}

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_14042 != -1)
  {
    dispatch_once(&sharedLogger_onceToken_14042, &__block_literal_global_14043);
  }

  v3 = sharedLogger_shared_14044;

  return v3;
}

uint64_t __40__CSVoiceProfileSELFLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(CSVoiceProfileSELFLogger);
  v1 = sharedLogger_shared_14044;
  sharedLogger_shared_14044 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v3 = _voiceProfileiCloudSyncIsolatedStreamID;
    _voiceProfileiCloudSyncIsolatedStreamID = uUID;

    MEMORY[0x1EEE66BB8](uUID, v3);
  }
}

@end