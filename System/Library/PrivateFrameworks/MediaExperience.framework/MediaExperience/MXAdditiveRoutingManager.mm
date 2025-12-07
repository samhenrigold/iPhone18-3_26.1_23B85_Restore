@interface MXAdditiveRoutingManager
+ (id)sharedInstance;
- (MXAdditiveRoutingManager)init;
- (NSDictionary)detailedRoutesDescription;
- (id)copyActiveSessionsInfo;
- (id)copyActiveVoiceOverSessionPlayingToOnDemandVAD;
- (id)copyAndUpdateSessionInformation:(id)information;
- (id)copyDetailedRouteDescription:(unsigned int)description;
- (id)copyVADNamesFromSessionAudioBehavior;
- (int)sendActiveSessionsInfoToVA;
- (void)dealloc;
- (void)discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:(id)needed;
- (void)populateVirtualAudioDeviceInfoFromSessionAudioBehaviors:(id)behaviors newVADIDToNameMap:(id)map;
- (void)refreshDetailedRouteDescriptionCache;
- (void)setDetailedRoutesDescription:(id)description;
- (void)updateDetailedRouteDescription:(unsigned int)description;
@end

@implementation MXAdditiveRoutingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[MXAdditiveRoutingManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_16;
}

- (id)copyActiveVoiceOverSessionPlayingToOnDemandVAD
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasAudioCategory:@"VoiceOver"] && objc_msgSend_isActive(v7) && objc_msgSend(CMSUtility_GetCurrentAudioDestination(v7), "containsString:", 0x1F2893BD0))
        {
          v8 = v7;
          goto LABEL_13;
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)refreshDetailedRouteDescriptionCache
{
  v25 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];
  if (dword_1EB75DE40)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXAdditiveRoutingManager setDetailedRoutesDescription:](self, "setDetailedRoutesDescription:", [MEMORY[0x1E695DF20] dictionary]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager siriOutputVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager speechDetectionVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager musicVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID]);
  -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager perAppAirPlayVADID]);
  v4 = -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [+[MXSessionManager sharedInstance](MXSessionManager lowLatencyVADID]);
  if (CMSMVAUtility_IsAdditiveRoutingEnabled(v4, v5))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    vadNameToID = [(MXAdditiveRoutingManager *)self vadNameToID];
    v7 = [(NSDictionary *)vadNameToID countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(vadNameToID);
          }

          -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [-[NSDictionary objectForKey:](-[MXAdditiveRoutingManager vadNameToID](self "vadNameToID")]);
        }

        v8 = [(NSDictionary *)vadNameToID countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }
  }

  if (dword_1EB75DE40)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v20;
    v13 = type;
    if (os_log_type_enabled(v11, type))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v22 = 136315138;
      v23 = "[MXAdditiveRoutingManager refreshDetailedRouteDescriptionCache]";
      _os_log_send_and_compose_impl(v14, 0, v24, 128, &dword_1B17A2000, v11, v13, "-MXAdditiveRoutingManager- %s: Detailed route description cache is updated", &v22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock unlock];
}

- (NSDictionary)detailedRoutesDescription
{
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];
  v3 = self->mDetailedRoutesDescription;
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock unlock];
  return v3;
}

MXAdditiveRoutingManager *__42__MXAdditiveRoutingManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXAdditiveRoutingManager);
  sharedInstance_sSharedInstance_16 = result;
  return result;
}

- (MXAdditiveRoutingManager)init
{
  v4.receiver = self;
  v4.super_class = MXAdditiveRoutingManager;
  v2 = [(MXAdditiveRoutingManager *)&v4 init];
  if (v2)
  {
    v2->mDetailedRoutesDescription = objc_alloc_init(MEMORY[0x1E695DF20]);
    v2->mDetailedRoutesDescriptionLock = objc_alloc_init(MEMORY[0x1E696AE68]);
    v2->_mostRecentActiveSessions = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v2;
}

- (void)dealloc
{
  self->mDetailedRoutesDescription = 0;

  self->mDetailedRoutesDescriptionLock = 0;
  self->_mostRecentActiveSessions = 0;

  self->_vadIDToName = 0;
  self->_vadNameToID = 0;
  v3.receiver = self;
  v3.super_class = MXAdditiveRoutingManager;
  [(MXAdditiveRoutingManager *)&v3 dealloc];
}

- (void)setDetailedRoutesDescription:(id)description
{
  [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];

  self->mDetailedRoutesDescription = description;
  mDetailedRoutesDescriptionLock = self->mDetailedRoutesDescriptionLock;

  [(NSRecursiveLock *)mDetailedRoutesDescriptionLock unlock];
}

- (id)copyDetailedRouteDescription:(unsigned int)description
{
  v3 = *&description;
  v8 = *MEMORY[0x1E69E9840];
  detailedRoutesDescription = [(MXAdditiveRoutingManager *)self detailedRoutesDescription];
  v5 = -[NSDictionary objectForKey:](detailedRoutesDescription, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

- (void)updateDetailedRouteDescription:(unsigned int)description
{
  v8 = *MEMORY[0x1E69E9840];
  if (description)
  {
    v3 = *&description;
    v5 = vaemCopyDetailedRouteDescription(*&description);
    if (!v5)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock lock];
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXAdditiveRoutingManager detailedRoutesDescription](self, "detailedRoutesDescription")}];
    [v7 setObject:v5 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}];
    -[MXAdditiveRoutingManager setDetailedRoutesDescription:](self, "setDetailedRoutesDescription:", [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7]);
    [(NSRecursiveLock *)self->mDetailedRoutesDescriptionLock unlock];
  }
}

- (int)sendActiveSessionsInfoToVA
{
  v12 = *MEMORY[0x1E69E9840];
  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(self, a2);
  if (IsAdditiveRoutingEnabled)
  {
    if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(IsAdditiveRoutingEnabled, v4))
    {
      LODWORD(IsAdditiveRoutingEnabled) = 0;
    }

    else
    {
      v11 = 0;
      copyActiveSessionsInfo = [(MXAdditiveRoutingManager *)self copyActiveSessionsInfo];
      if (([copyActiveSessionsInfo isEqual:{-[MXAdditiveRoutingManager mostRecentActiveSessions](self, "mostRecentActiveSessions")}] & 1) == 0)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v6 setObject:copyActiveSessionsInfo forKey:0x1F28974D0];
        v10 = 0;
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = vaemSetRouteConfigurationDictionaryOnVAD(v6, 0, 0, &v10);
        if (v11)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(MXAdditiveRoutingManager *)self setMostRecentActiveSessions:copyActiveSessionsInfo];
      }

      LODWORD(IsAdditiveRoutingEnabled) = v11;
    }
  }

  return IsAdditiveRoutingEnabled;
}

- (id)copyAndUpdateSessionInformation:(id)information
{
  v123 = *MEMORY[0x1E69E9840];
  if (!information)
  {
    return 0;
  }

  v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = information;
  v78 = [information countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v78)
  {
    v76 = *v108;
    do
    {
      v4 = 0;
      do
      {
        if (*v108 != v76)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v80 = v4;
        v6 = *(*(&v107 + 1) + 8 * v4);
        v7 = [v6 objectForKey:0x1F28979D0];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v103 objects:v121 count:16];
        if (v8)
        {
          v9 = *v104;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v104 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v103 + 1) + 8 * i);
              if ([v11 unsignedIntValue])
              {
                v12 = +[MXSessionManagerBase copySessionWithAudioSessionID:](MXSessionManagerBase, "copySessionWithAudioSessionID:", [v11 unsignedIntValue]);
                if (v12)
                {
                  if (dword_1EB75DE40)
                  {
                    v102 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  if ([v12 updateAudioBehaviorFromVARouteConfig:v6])
                  {
                    [v86 addObject:v12];
                  }
                }

                else
                {
                  v102 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v103 objects:v121 count:16];
          }

          while (v8);
        }

        v15 = [v6 objectForKey:0x1F28979B0];
        v16 = [v6 objectForKey:0x1F28979F0];
        v17 = v16;
        if (v15)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          v102 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          [v82 setObject:v16 forKey:v15];
          [v71 setObject:v15 forKey:v17];
          if (dword_1EB75DE40)
          {
            v102 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          -[MXAdditiveRoutingManager updateDetailedRouteDescription:](self, "updateDetailedRouteDescription:", [v15 unsignedIntValue]);
        }

        v4 = v80 + 1;
      }

      while ((v80 + 1) != v78);
      v78 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v78);
  }

  allKeys = [(NSDictionary *)[(MXAdditiveRoutingManager *)self vadIDToName] allKeys];
  allKeys2 = [v82 allKeys];
  v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (allKeys)
  {
    v23 = [(NSDictionary *)[(MXAdditiveRoutingManager *)self detailedRoutesDescription] mutableCopy];
    v24 = [allKeys2 differenceFromArray:allKeys];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    removals = [v24 removals];
    v25 = [removals countByEnumeratingWithState:&v97 objects:v113 count:16];
    if (v25)
    {
      v26 = *v98;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v98 != v26)
          {
            objc_enumerationMutation(removals);
          }

          v28 = *(*(&v97 + 1) + 8 * j);
          if (dword_1EB75DE40)
          {
            v102 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = v102;
            v31 = type;
            if (os_log_type_enabled(v29, type))
            {
              v32 = v30;
            }

            else
            {
              v32 = v30 & 0xFFFFFFFE;
            }

            if (v32)
            {
              object = [v28 object];
              v114 = 136315394;
              v115 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
              v116 = 2114;
              v117 = object;
              LODWORD(v67) = 22;
              _os_log_send_and_compose_impl(v32, 0, location, 128, &dword_1B17A2000, v29, v31, "-MXAdditiveRoutingManager- %s: Removing %{public}@ from detailed route descriptions.", &v114, v67);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v85 addObject:{objc_msgSend(v28, "object")}];
          [v23 removeObjectForKey:{objc_msgSend(v28, "object")}];
        }

        v25 = [removals countByEnumeratingWithState:&v97 objects:v113 count:16];
      }

      while (v25);
    }

    [(MXAdditiveRoutingManager *)self setDetailedRoutesDescription:v23];
  }

  v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  copyMXCoreSessionSecureList = [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure copyMXCoreSessionSecureList];
  v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v77 addObjectsFromArray:copyMXCoreSessionList];
  [v77 addObjectsFromArray:copyMXCoreSessionSecureList];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v84 = [v77 countByEnumeratingWithState:&v93 objects:v112 count:16];
  if (v84)
  {
    v81 = *v94;
    do
    {
      for (k = 0; k != v84; ++k)
      {
        if (*v94 != v81)
        {
          objc_enumerationMutation(v77);
        }

        v35 = *(*(&v93 + 1) + 8 * k);
        if (!-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v35 audioCategory]))
        {
          v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:CMSUtility_GetCurrentOutputVADID(v35)];
          v37 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:CMSUtility_GetCurrentInputVADID(v35)];
          v38 = [v82 objectForKey:v36];
          v39 = [v82 objectForKey:v37];
          if (v39)
          {
            v40 = 0;
          }

          else
          {
            v40 = v38 == 0;
          }

          if (v40)
          {
            if (([v85 containsObject:v36] & 1) != 0 || objc_msgSend(v85, "containsObject:", v37))
            {
              if (dword_1EB75DE40)
              {
                v102 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v42 = v102;
                v43 = type;
                if (os_log_type_enabled(v41, type))
                {
                  v44 = v42;
                }

                else
                {
                  v44 = v42 & 0xFFFFFFFE;
                }

                if (v44)
                {
                  clientName = [v35 clientName];
                  v114 = 136315394;
                  v115 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
                  v116 = 2114;
                  v117 = clientName;
                  LODWORD(v67) = 22;
                  _os_log_send_and_compose_impl(v44, 0, location, 128, &dword_1B17A2000, v41, v43, "-MXAdditiveRoutingManager- %s: Resetting default audio behaviour for session %{public}@ who's VADs went away.", &v114, v67);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v35 setAudioBehaviour:0];
              [v35 setAudioDestinationPriority:0];
              cmsUpdateAudioBehavior(v35, v54);
              [v79 addObject:v35];
              [v86 addObject:v35];
              if ([v35 isMemberOfClass:objc_opt_class()])
              {
                CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(v35, 0);
              }

              goto LABEL_90;
            }
          }

          else if (v38 && v39)
          {
LABEL_90:

            continue;
          }

          if (([v85 containsObject:v36] & 1) != 0 || objc_msgSend(v85, "containsObject:", v37))
          {
            if (v38)
            {
              v46 = @"AudioBehaviour_Source";
            }

            else
            {
              v46 = @"AudioBehaviour_Destination";
            }

            v75 = CMSUtility_CopySessionAudioBehaviour(v35);
            v47 = [objc_msgSend(v35 "audioBehaviour")];
            [v47 removeObjectForKey:v46];
            v48 = [v75 objectForKey:v46];
            if (v48)
            {
              if (dword_1EB75DE40)
              {
                v102 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v50 = v102;
                obja = type;
                v51 = os_log_type_enabled(v49, type);
                v52 = v50 & 0xFFFFFFFE;
                if (v51)
                {
                  v52 = v50;
                }

                v70 = v52;
                if (v52)
                {
                  clientName2 = [v35 clientName];
                  v114 = 136315650;
                  v115 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
                  v116 = 2114;
                  v117 = clientName2;
                  v118 = 2114;
                  v119[0] = v47;
                  LODWORD(v67) = 32;
                  _os_log_send_and_compose_impl(v70, 0, location, 128, &dword_1B17A2000, v49, obja, "-MXAdditiveRoutingManager- %s: Updating session %{public}@ to %{public}@ after VAD went away.", &v114, v67);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v47 setObject:v48 forKey:v46];
              [v35 setAudioBehaviour:v47];
              if (!v38)
              {
                [v35 setAudioDestinationPriority:v48];
              }

              CMSMNotificationUtility_PostSessionAudioBehaviourDidChange(v35);
              if ([v35 isMemberOfClass:objc_opt_class()])
              {
                CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(v35, 0);
              }

              [v79 addObject:v35];
              [v86 addObject:v35];
            }
          }

          goto LABEL_90;
        }
      }

      v84 = [v77 countByEnumeratingWithState:&v93 objects:v112 count:16];
    }

    while (v84);
  }

  if (dword_1EB75DE40)
  {
    v102 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v56 = v102;
    v57 = type;
    if (os_log_type_enabled(v55, type))
    {
      v58 = v56;
    }

    else
    {
      v58 = v56 & 0xFFFFFFFE;
    }

    if (v58)
    {
      v114 = 136315650;
      v115 = "[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]";
      v116 = 2114;
      v117 = v82;
      v118 = 2114;
      v119[0] = v71;
      LODWORD(v67) = 32;
      _os_log_send_and_compose_impl(v58, 0, location, 128, &dword_1B17A2000, v55, v57, "-MXAdditiveRoutingManager- %s: Updating maps; IDToName = %{public}@ and NameToID = %{public}@", &v114, v67);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(MXAdditiveRoutingManager *)self setVadIDToName:v82];
  [(MXAdditiveRoutingManager *)self setVadNameToID:v71];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v59 = [v79 countByEnumeratingWithState:&v89 objects:v111 count:16];
  if (v59)
  {
    v60 = *v90;
    do
    {
      for (m = 0; m != v59; ++m)
      {
        if (*v90 != v60)
        {
          objc_enumerationMutation(v79);
        }

        v62 = *(*(&v89 + 1) + 8 * m);
        if (objc_msgSend_isActive(v62))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            inited = objc_initWeak(location, v62);
            v65 = MXGetSerialQueue(inited, v64);
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 3221225472;
            v87[2] = __60__MXAdditiveRoutingManager_copyAndUpdateSessionInformation___block_invoke;
            v87[3] = &unk_1E7AEA958;
            objc_copyWeak(&v88, location);
            MXDispatchAsync("[MXAdditiveRoutingManager copyAndUpdateSessionInformation:]", "MXAdditiveRoutingManager.m", 456, 0, 0, v65, v87);
            objc_destroyWeak(&v88);
            objc_destroyWeak(location);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              MXSimulateCrash("Active MXCoreSessionSecure has lost an on-demand VAD! Please file a radar against 'MediaExperience Session | All'");
            }
          }
        }
      }

      v59 = [v79 countByEnumeratingWithState:&v89 objects:v111 count:16];
    }

    while (v59);
  }

  return v86;
}

void __60__MXAdditiveRoutingManager_copyAndUpdateSessionInformation___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cmsBeginInterruptionGuts(v2, 0, 2))
    {
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtilityApplier_PostNotification_StopCommand(v2, 0);
    }
  }
}

- (id)copyActiveSessionsInfo
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyActiveSessionsInfoForAdditiveRouting = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveSessionsInfoForAdditiveRouting];
  [v2 addObjectsFromArray:copyActiveSessionsInfoForAdditiveRouting];

  copyActiveSessionsInfoForAdditiveRouting2 = [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure copyActiveSessionsInfoForAdditiveRouting];
  [v2 addObjectsFromArray:copyActiveSessionsInfoForAdditiveRouting2];

  return v2;
}

- (id)copyVADNamesFromSessionAudioBehavior
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = +[MXSessionManagerBase copyAllMXCoreSessionList];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v16 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v8 addObjectsFromArray:{objc_msgSend(objc_msgSend(v7, "audioBehaviour"), "objectForKey:", @"AudioBehaviour_Destination"}];
        [v8 addObjectsFromArray:{objc_msgSend(objc_msgSend(v7, "audioBehaviour"), "objectForKey:", @"AudioBehaviour_Source"}];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * j);
              if ([v13 containsString:0x1F2893BD0] && (objc_msgSend(v3, "containsObject:", v13) & 1) == 0)
              {
                [v3 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)populateVirtualAudioDeviceInfoFromSessionAudioBehaviors:(id)behaviors newVADIDToNameMap:(id)map
{
  v19 = *MEMORY[0x1E69E9840];
  copyVADNamesFromSessionAudioBehavior = [(MXAdditiveRoutingManager *)self copyVADNamesFromSessionAudioBehavior];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [copyVADNamesFromSessionAudioBehavior countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(copyVADNamesFromSessionAudioBehavior);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![behaviors objectForKey:v11])
        {
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSMUtility_GetVADIDForVADName(v11)];
          [behaviors setObject:v12 forKey:v11];
          [map setObject:v11 forKey:v12];
        }
      }

      v8 = [copyVADNamesFromSessionAudioBehavior countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager setVadIDToName:"setVadIDToName:", map];
  [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager setVadNameToID:"setVadNameToID:", behaviors];
}

- (void)discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:(id)needed
{
  v32 = *MEMORY[0x1E69E9840];
  allKeys = [(NSDictionary *)[(MXAdditiveRoutingManager *)self vadIDToName] allKeys];
  v5 = &qword_1EB75D000;
  if (dword_1EB75DE40)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (needed)
  {
    v19 = -[NSDictionary mutableCopy]([+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager detailedRoutesDescription], "mutableCopy");
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [needed countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(needed);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if (![(NSArray *)allKeys containsObject:v11])
          {
            if (dword_1EB75DE40)
            {
              neededCopy = needed;
              v25 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v13 = v5;
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v15 = v25;
              v16 = type;
              if (os_log_type_enabled(v14, type))
              {
                v17 = v15;
              }

              else
              {
                v17 = v15 & 0xFFFFFFFE;
              }

              if (v17)
              {
                v27 = 136315394;
                v28 = "[MXAdditiveRoutingManager discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:]";
                v29 = 2114;
                v30 = v11;
                LODWORD(v18) = 22;
                _os_log_send_and_compose_impl(v17, 0, v31, 128, &dword_1B17A2000, v14, v16, "-MXAdditiveRoutingManager- %s: Removing %{public}@ from detailed route descriptions.", &v27, v18);
              }

              v5 = v13;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              needed = neededCopy;
            }

            [v19 removeObjectForKey:v11];
          }
        }

        v8 = [needed countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager setDetailedRoutesDescription:"setDetailedRoutesDescription:", v19];
  }
}

@end