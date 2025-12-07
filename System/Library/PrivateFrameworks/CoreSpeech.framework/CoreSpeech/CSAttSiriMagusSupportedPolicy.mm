@interface CSAttSiriMagusSupportedPolicy
+ (BOOL)_isInputOriginSupportedByContinuousConversation:(id)conversation;
+ (BOOL)isCurrentlyInActiveCall;
+ (BOOL)isCurrentlyInSplitterState;
+ (CSAttSiriMagusSupportedPolicy)sharedInstance;
+ (void)initialize;
- (BOOL)_isMagusSupportedWithRecordRoute:(id)route playbackRoute:(id)playbackRoute isInSplitterMode:(BOOL)mode isInActiveCall:(BOOL)call isSupportedRequestType:(BOOL)type audioSessionId:(unsigned int)id recordDeviceInfo:(id)info;
- (BOOL)isMagusSupportedWithAudioRecordContext:(id)context recordRoute:(id)route playbackRoute:(id)playbackRoute audioSessionId:(unsigned int)id recordDeviceInfo:(id)info;
- (BOOL)isMagusSupportedWithInputOrigin:(id)origin recordRoute:(id)route playbackRoute:(id)playbackRoute;
- (BOOL)isMagusSupportedWithInputOrigin:(id)origin recordRoute:(id)route playbackRoute:(id)playbackRoute isInSplitterMode:(BOOL)mode isInActiveCall:(BOOL)call;
- (void)_updateWithAsset:(id)asset;
- (void)start;
@end

@implementation CSAttSiriMagusSupportedPolicy

+ (BOOL)isCurrentlyInSplitterState
{
  v2 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  splitterState = [v2 splitterState];

  return splitterState > 1;
}

+ (BOOL)isCurrentlyInActiveCall
{
  v2 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  phoneCallState = [v2 phoneCallState];

  return (phoneCallState - 2) < 3;
}

- (void)_updateWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = +[CSUtils isContinuousConversationSupported];
  isMagusSupported = [assetCopy isMagusSupported];

  self->_isAssetMagusSupported = v5 & isMagusSupported;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSAttSiriMagusSupportedPolicy _updateWithAsset:]";
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = isMagusSupported & 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s DeviceSupport %d AssetSupport %d", &v8, 0x18u);
  }
}

- (void)start
{
  v3 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [v3 addObserver:self];

  self->_isAssetMagusSupported = 0;
  v4 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  [v4 addObserver:self];

  if (+[CSUtils isMedocFeatureEnabled])
  {
    if (+[CSUtils isContinuousConversationSupported])
    {
      v5 = +[CSAttSiriMitigationAssetHandler sharedHandlerDisabledOnDeviceCompilation];
      [v5 registerObserver:self];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10009199C;
      v6[3] = &unk_100252F10;
      v6[4] = self;
      [v5 getMitigationAssetWithEndpointId:0 completion:v6];
    }
  }
}

- (BOOL)_isMagusSupportedWithRecordRoute:(id)route playbackRoute:(id)playbackRoute isInSplitterMode:(BOOL)mode isInActiveCall:(BOOL)call isSupportedRequestType:(BOOL)type audioSessionId:(unsigned int)id recordDeviceInfo:(id)info
{
  v9 = *&id;
  callCopy = call;
  typeCopy = type;
  modeCopy = mode;
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  infoCopy = info;
  if (+[CSUtils isExclaveHardware](CSUtils, "isExclaveHardware") && (+[CSUtils isSiriDSPTurnedOn]& 1) == 0)
  {
    v22 = CSLogContextFacilityCoreSpeech;
    v23 = 0;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Disable FF since this is Exclave hardware without Siri DSP", buf, 0xCu);
      v23 = 0;
    }

    goto LABEL_78;
  }

  if ([CSUtils isJarvisAudioRouteWithRecordRoute:routeCopy])
  {
    v16 = +[CSUtils isCarplayWithFlexibleFollowupEnabled];
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"NO";
      if (v16)
      {
        v18 = @"YES";
      }

      *buf = 136315394;
      v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
      v67 = 2114;
      v68 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Jarvis route supports FF? %{public}@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v19 = +[CSFPreferences sharedPreferences];
  programmableAudioInjectionEnabled = [v19 programmableAudioInjectionEnabled];

  if (programmableAudioInjectionEnabled)
  {
    v21 = 1;
    if (([CSUtils isBuiltInRouteWithRecordRoute:routeCopy playbackRoute:playbackRouteCopy]& 1) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = CSIsAppleSiliconMac();
    v25 = [CSUtils isBuiltInRecordRoute:routeCopy];
    v26 = v25;
    if (v24)
    {
      v21 = [(CSAttSiriMagusSupportedPolicy *)self _isRouteValidForEchoCancellationWithAppleSiliconMac:infoCopy];
      if (v26)
      {
        goto LABEL_21;
      }
    }

    else if (v25)
    {
      v27 = [CSUtils fetchHypotheticalRouteTypeFromAudioSessionId:v9];
      v21 = 1;
      if (v27 == 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 1;
    }
  }

  if (![CSUtils isOutOfBandAudioRouteWithRecordRoute:routeCopy])
  {
    v16 = 0;
    goto LABEL_23;
  }

LABEL_21:
  v16 = v21;
LABEL_23:
  v28 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    isAssetMagusSupported = self->_isAssetMagusSupported;
    *buf = 136316418;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v67 = 2112;
    v68 = routeCopy;
    v69 = 2112;
    v70 = playbackRouteCopy;
    v71 = 1024;
    *v72 = v16;
    *&v72[4] = 1024;
    *&v72[6] = isAssetMagusSupported;
    LOWORD(v73) = 1024;
    *(&v73 + 2) = modeCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s recordRoute : %@, playbackRoute : %@, isSupportedRoute : %d, isAssetMagusSupported : %d, isInSplitterMode : %d", buf, 0x32u);
  }

  v60 = v16;
  selfCopy = self;
  v57 = modeCopy;
  v61 = playbackRouteCopy;
  v62 = routeCopy;
  v30 = +[CSUtils isContinuousConversationSupported];
  v31 = +[CSUtils isContinuousConversationEnabled];
  v32 = +[CSFPreferences sharedPreferences];
  isFlexibleFollowupsUserDisabled = [v32 isFlexibleFollowupsUserDisabled];

  v34 = [CSUtils getSiriLanguageWithFallback:0];
  v59 = [CSUtils isMagusDisabledForLanguageCode:v34];

  v35 = +[AFSystemAssistantExperienceStatusManager isSAEEnabled];
  v36 = AFPreferencesTypeToSiriEnabled() & (v35 ^ 1);
  v37 = [CSUtils getSiriLanguageWithFallback:0];
  v38 = [CSUtils isMagusRestrictedWithSAEForLanguageCode:v37];

  v39 = v38 & (v35 ^ 1);
  if (v30 && v31)
  {
    v23 = 0;
    if ((isFlexibleFollowupsUserDisabled & 1) == 0 && typeCopy && ((v60 ^ 1) & 1) == 0)
    {
      if ((callCopy || !selfCopy->_isAssetMagusSupported || v57) | v36 & 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v59 | v39) ^ 1;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v40 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v41 = @"NO";
    if (v23)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    *buf = 136317954;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    if (callCopy)
    {
      v43 = @"YES";
    }

    else
    {
      v43 = @"NO";
    }

    v67 = 2112;
    v68 = v42;
    if (v30)
    {
      v44 = @"YES";
    }

    else
    {
      v44 = @"NO";
    }

    v69 = 2112;
    v70 = v43;
    if (v31)
    {
      v45 = @"YES";
    }

    else
    {
      v45 = @"NO";
    }

    v71 = 2112;
    *v72 = v44;
    if (typeCopy)
    {
      v46 = @"YES";
    }

    else
    {
      v46 = @"NO";
    }

    *&v72[8] = 2112;
    if (isFlexibleFollowupsUserDisabled)
    {
      v47 = @"YES";
    }

    else
    {
      v47 = @"NO";
    }

    v73 = v45;
    if (v36)
    {
      v48 = @"YES";
    }

    else
    {
      v48 = @"NO";
    }

    v74 = 2112;
    if (v59)
    {
      v49 = @"YES";
    }

    else
    {
      v49 = @"NO";
    }

    v75 = v46;
    if (v35)
    {
      v50 = @"YES";
    }

    else
    {
      v50 = @"NO";
    }

    v76 = 2112;
    if (v39)
    {
      v51 = @"YES";
    }

    else
    {
      v51 = @"NO";
    }

    v77 = v47;
    if (v38)
    {
      v41 = @"YES";
    }

    v78 = 2112;
    v79 = v48;
    v80 = 2112;
    v81 = v49;
    v82 = 2112;
    v83 = v50;
    v84 = 2112;
    v85 = v51;
    v86 = 2112;
    v87 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s isSupported=%@: Is request during active call? %@, isDeviceSupported: %@, isFFEnabledOnDevice: %@, isSupportedRequestType: %@, isFFUserDisabled: %@, isTypeToSiriEnabled: %@, isLocaleInDenyList:%@, isSAEEnabled:%@, isLocaleUnsupportedWithSAE:%@ isLocaleCoupledWithSAE:%@", buf, 0x7Au);
  }

  if ((v30 & 1) == 0)
  {
    v52 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
      v53 = "%s Magus is not supported since it's not a FF-capable device";
      goto LABEL_76;
    }

LABEL_77:
    playbackRouteCopy = v61;
    routeCopy = v62;
    goto LABEL_78;
  }

  if ((v31 & 1) == 0)
  {
    v52 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
      v53 = "%s Magus is not supported since Flexible Followup is not enabled on device";
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  if (isFlexibleFollowupsUserDisabled)
  {
    v52 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
      v53 = "%s Magus is not supported since user disabled switch";
LABEL_76:
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 0xCu);
      goto LABEL_77;
    }

    goto LABEL_77;
  }

  if (!typeCopy)
  {
    v52 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v53 = "%s Magus is not supported since request type is ineligible";
    goto LABEL_76;
  }

  if ((v60 & 1) == 0)
  {
    v52 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v53 = "%s Magus is not supported since audio route is ineligible";
    goto LABEL_76;
  }

  if (!selfCopy->_isAssetMagusSupported)
  {
    v52 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v53 = "%s Magus is not supported since assets are ineligible";
    goto LABEL_76;
  }

  if (callCopy)
  {
    v52 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v53 = "%s Magus is not supported since device is in active call";
    goto LABEL_76;
  }

  if (v57)
  {
    v52 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v53 = "%s Magus is not supported since device is in splitter mode";
    goto LABEL_76;
  }

  if (v36)
  {
    v52 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
    v53 = "%s Magus is not supported since Type-To-Siri is enabled";
    goto LABEL_76;
  }

  if (v59)
  {
    v55 = CSLogCategoryRequest;
    playbackRouteCopy = v61;
    routeCopy = v62;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s Magus is not supported since locale is ineligible", buf, 0xCu);
    }
  }

  else
  {
    playbackRouteCopy = v61;
    if (v39)
    {
      v56 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v66 = "[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:]";
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s Magus is not supported since locale is coupled with SAE and is ineligible", buf, 0xCu);
      }
    }

    routeCopy = v62;
  }

LABEL_78:

  return v23 & 1;
}

- (BOOL)isMagusSupportedWithAudioRecordContext:(id)context recordRoute:(id)route playbackRoute:(id)playbackRoute audioSessionId:(unsigned int)id recordDeviceInfo:(id)info
{
  v7 = *&id;
  infoCopy = info;
  playbackRouteCopy = playbackRoute;
  routeCopy = route;
  LOBYTE(v7) = -[CSAttSiriMagusSupportedPolicy _isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:](self, "_isMagusSupportedWithRecordRoute:playbackRoute:isInSplitterMode:isInActiveCall:isSupportedRequestType:audioSessionId:recordDeviceInfo:", routeCopy, playbackRouteCopy, +[CSAttSiriMagusSupportedPolicy isCurrentlyInSplitterState](CSAttSiriMagusSupportedPolicy, "isCurrentlyInSplitterState"), +[CSAttSiriMagusSupportedPolicy isCurrentlyInActiveCall](CSAttSiriMagusSupportedPolicy, "isCurrentlyInActiveCall"), [context isAudioRecordTypeSupportedByContinuousConversation], v7, infoCopy);

  return v7;
}

- (BOOL)isMagusSupportedWithInputOrigin:(id)origin recordRoute:(id)route playbackRoute:(id)playbackRoute
{
  playbackRouteCopy = playbackRoute;
  routeCopy = route;
  LOBYTE(origin) = [(CSAttSiriMagusSupportedPolicy *)self _isMagusSupportedWithRecordRoute:routeCopy playbackRoute:playbackRouteCopy isInSplitterMode:+[CSAttSiriMagusSupportedPolicy isCurrentlyInSplitterState](CSAttSiriMagusSupportedPolicy isInActiveCall:"isCurrentlyInSplitterState") isSupportedRequestType:+[CSAttSiriMagusSupportedPolicy audioSessionId:"isCurrentlyInActiveCall"]recordDeviceInfo:[CSAttSiriMagusSupportedPolicy _isInputOriginSupportedByContinuousConversation:origin], 0, 0];

  return origin;
}

- (BOOL)isMagusSupportedWithInputOrigin:(id)origin recordRoute:(id)route playbackRoute:(id)playbackRoute isInSplitterMode:(BOOL)mode isInActiveCall:(BOOL)call
{
  callCopy = call;
  modeCopy = mode;
  playbackRouteCopy = playbackRoute;
  routeCopy = route;
  LOBYTE(callCopy) = [(CSAttSiriMagusSupportedPolicy *)self _isMagusSupportedWithRecordRoute:routeCopy playbackRoute:playbackRouteCopy isInSplitterMode:modeCopy isInActiveCall:callCopy isSupportedRequestType:[CSAttSiriMagusSupportedPolicy _isInputOriginSupportedByContinuousConversation:?], 0, 0];

  return callCopy;
}

+ (BOOL)_isInputOriginSupportedByContinuousConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy isEqualToString:SAInputOriginHomeButtonValue] & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginRemoteButtonValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginAssistantSpeechButtonValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginVoiceTriggerValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginServerGeneratedValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginMagusFollowupValue))
  {
    v4 = 1;
  }

  else
  {
    v4 = [conversationCopy isEqualToString:SAInputOriginClientGeneratedValue];
  }

  return v4;
}

+ (void)initialize
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[CSAttSiriMagusSupportedPolicy initialize]";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", &v4, 0xCu);
  }

  v3 = +[CSCarKitUtils sharedInstance];
}

+ (CSAttSiriMagusSupportedPolicy)sharedInstance
{
  if (qword_10029E1A8 != -1)
  {
    dispatch_once(&qword_10029E1A8, &stru_10024FFC0);
  }

  v3 = qword_10029E1A0;

  return v3;
}

@end