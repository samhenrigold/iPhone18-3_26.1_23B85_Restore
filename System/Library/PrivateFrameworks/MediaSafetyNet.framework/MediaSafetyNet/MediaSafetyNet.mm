id MSNLog(uint64_t a1)
{
  if (MSNLog_once != -1)
  {
    MSNLog_cold_1();
  }

  v2 = MSNLog_log;

  return v2;
}

void __MSNMonitorStartServerMode_block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = s_mediaSafetyNetQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSNMonitorStartServerMode_block_invoke_2;
  block[3] = &unk_2798A3D68;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __MSNMonitorStartServerMode_block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    g_uiState = 3;
    return;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v2 = [v1 elements];
  v3 = [v2 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (!v3)
  {

    v5 = 0;
    v20 = 0;
    v6 = 0;
    goto LABEL_29;
  }

  v4 = v3;
  v5 = 0;
  v41 = 0;
  v6 = 0;
  v7 = *v44;
  v8 = *MEMORY[0x277D66F20];
  v40 = *MEMORY[0x277D0ABA0];
  obj = v2;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v44 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v43 + 1) + 8 * i);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v8];

      if (v12)
      {
        v13 = v6;
        v14 = v5;
        v6 = v10;
LABEL_15:
        v18 = v10;

        v5 = v14;
        continue;
      }

      v15 = [v10 identifier];
      v16 = [v15 isEqualToString:v40];

      if (v16)
      {
        v13 = v41;
        v14 = v5;
        v41 = v10;
        goto LABEL_15;
      }

      if (!v5)
      {
        v13 = 0;
        v14 = v10;
        goto LABEL_15;
      }

      v17 = [v10 level];
      v13 = v5;
      v14 = v10;
      if (v17 > [v5 level])
      {
        goto LABEL_15;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  }

  while (v4);

  v20 = v41;
  if (v41 || !v6)
  {
    if (v41)
    {
      if (!v5 || (v22 = [v41 level], v19 = objc_msgSend(v5, "level"), v22 > v19))
      {
        v23 = 1;
        goto LABEL_32;
      }
    }

    goto LABEL_29;
  }

  if (!v5)
  {
    v20 = 0;
    goto LABEL_31;
  }

  v21 = [v6 level];
  v19 = [v5 level];
  v20 = 0;
  if (v21 <= v19)
  {
LABEL_29:
    v23 = 3;
    goto LABEL_32;
  }

LABEL_31:
  v23 = 2;
LABEL_32:
  g_uiState = v23;
  v24 = MSNLog(v19);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (v25)
  {
    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v32 = MSNLog(v25);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v32, v33, v34, v35, v36, v37, v38, v39);
      }

      abort();
    }

    v26 = off_2798A3F28[g_uiState];
    *buf = 136315138;
    v48 = v26;
    _os_log_impl(&dword_258731000, v24, OS_LOG_TYPE_INFO, "Updated view state: %s", buf, 0xCu);
  }

  if (g_uiState == 2)
  {
    if (s_pillDataSource_block_invoke_once != -1)
    {
      __MSNMonitorStartServerMode_block_invoke_2_cold_2();
    }

    v27 = +[MSNTTR sharedInstance];
    v28 = [v27 pendedTTR];

    if (v28)
    {
      v30 = MSNLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258731000, v30, OS_LOG_TYPE_INFO, "Home, continuing TTR.", buf, 2u);
      }

      v31 = +[MSNTTR sharedInstance];
      [v31 continueTTR];
    }
  }
}

void __MSNMonitorStartServerMode_block_invoke_49()
{
  v158[7] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = v0;
  if (s_lockPill)
  {
    v2 = os_variant_allows_internal_security_policies();
    if ((v2 & 1) == 0)
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_1();
    }

    v3 = MSNLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "Overriding pill state. This is not a production configuration.", buf, 2u);
    }
  }

  else if (g_microphoneState == 1)
  {
    v4 = s_pillDataSource;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:g_microphoneClient];
    [v4 fetchPillRegistrationForProcess:v5 withCompletion:&__block_literal_global_87];
  }

  else
  {
    g_pillState = 0;
  }

  v6 = g_microphoneState;
  if (g_uiState)
  {
    v7 = g_microphoneState == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || g_cameraState == 0 || g_keyboardState == 0)
  {
    v10 = MSNLog(v0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!v11)
    {
LABEL_40:

      goto LABEL_68;
    }

    v12 = "";
    if (g_production)
    {
      v13 = "";
    }

    else
    {
      v13 = "Testing: ";
    }

    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v126 = MSNLog(v11);
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v126 = MSNLog(v11);
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else
    {
      v14 = ":";
      v15 = g_cameraClient;
      if (g_cameraClient)
      {
        v16 = ":";
      }

      else
      {
        v16 = "";
      }

      if (!g_cameraClient)
      {
        v15 = "";
      }

      if (g_microphoneState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v126 = MSNLog(v11);
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_239;
        }
      }

      else
      {
        if (g_microphoneClient)
        {
          v12 = g_microphoneClient;
        }

        else
        {
          v14 = "";
        }

        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v126 = MSNLog(v11);
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (g_keyboardState < 3)
          {
            v17 = off_2798A3F28[g_uiState];
            v18 = off_2798A3F48[g_cameraState];
            v19 = off_2798A3F48[g_microphoneState];
            v20 = off_2798A3F68[g_pillState];
            v21 = off_2798A3F10[g_keyboardState];
            v22 = g_cameraExceptionState;
            *buf = 136317698;
            if (!g_cameraExceptionState)
            {
              v22 = "None";
            }

            *&buf[4] = v13;
            *&buf[12] = 2080;
            *&buf[14] = v17;
            *&buf[22] = 2080;
            v142 = v18;
            *v143 = 2080;
            *&v143[2] = v16;
            *&v143[10] = 2080;
            *&v143[12] = v15;
            *&v143[20] = 2080;
            *&v143[22] = v19;
            v144 = 2080;
            v145 = v14;
            v146 = 2080;
            v147 = v12;
            v148 = 2080;
            v149 = v20;
            v150 = 2080;
            v151 = v21;
            v152 = 2080;
            v153 = v22;
            _os_log_impl(&dword_258731000, v10, OS_LOG_TYPE_INFO, "MediaSafetyNet state: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s) unknown.", buf, 0x70u);
            goto LABEL_40;
          }

          qword_27F958928 = "Unknown state";
          v126 = MSNLog(v11);
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }
      }
    }

LABEL_238:
    __MSNMonitorStartServerMode_block_invoke_cold_1(v126, v119, v120, v121, v122, v123, v124, v125);
    goto LABEL_239;
  }

  v24 = (g_cameraState & 0xFFFFFFFE) == 2 && (g_microphoneState & 0xFFFFFFFE) == 2;
  if (g_uiState == 3 || v24)
  {
    goto LABEL_59;
  }

  if (g_microphoneState != 1 && g_cameraState != 1)
  {
    qword_27F958928 = "Expected at least one hot sensor.";
    v126 = MSNLog(v0);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_2(v126, v128, v129, v130, v131, v132, v133, v134);
    }

    goto LABEL_239;
  }

  if (g_cameraState == 1)
  {
    v0 = HotCameraAllowed();
    if (!v0)
    {
      goto LABEL_69;
    }

    v6 = g_microphoneState;
  }

  if (v6 != 1 || (v0 = HotMicAllowed(), (v0 & 1) != 0))
  {
LABEL_59:
    if (MSNValidateState_inconsistencyDuration)
    {
      v26 = MSNLog(v0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = MSNValidateState_inconsistencyDuration;
        _os_log_impl(&dword_258731000, v26, OS_LOG_TYPE_INFO, "MediaSafetyNet inconsistency ended after: %u", buf, 8u);
      }
    }

    s_inconsistentCount = 0;
    v27 = 2;
    v28 = &MSNValidateState_inconsistencyDuration;
    goto LABEL_64;
  }

LABEL_69:
  v30 = ++s_inconsistentCount;
  if (MSNValidateState_inconsistencyDuration != -1)
  {
    ++MSNValidateState_inconsistencyDuration;
  }

  if (v30 < 0xA)
  {
    if (!v30)
    {
      v27 = 1;
      goto LABEL_65;
    }

    v10 = MSNLog(v0);
    v47 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!v47)
    {
      goto LABEL_40;
    }

    v48 = "";
    if (g_production)
    {
      v49 = "";
    }

    else
    {
      v49 = "Testing: ";
    }

    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v126 = MSNLog(v47);
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v126 = MSNLog(v47);
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else
    {
      v50 = ":";
      v51 = g_cameraClient;
      if (g_cameraClient)
      {
        v52 = ":";
      }

      else
      {
        v52 = "";
      }

      if (!g_cameraClient)
      {
        v51 = "";
      }

      if (g_microphoneState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v126 = MSNLog(v47);
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_239;
        }
      }

      else
      {
        if (g_microphoneClient)
        {
          v48 = g_microphoneClient;
        }

        else
        {
          v50 = "";
        }

        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v126 = MSNLog(v47);
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (g_keyboardState < 3)
          {
            v53 = off_2798A3F28[g_uiState];
            v54 = off_2798A3F48[g_cameraState];
            v55 = off_2798A3F48[g_microphoneState];
            v56 = off_2798A3F68[g_pillState];
            v57 = off_2798A3F10[g_keyboardState];
            v58 = g_cameraExceptionState;
            if (!g_cameraExceptionState)
            {
              v58 = "None";
            }

            *buf = 136318210;
            *&buf[4] = v49;
            *&buf[12] = 2080;
            *&buf[14] = v53;
            *&buf[22] = 2080;
            v142 = v54;
            *v143 = 2080;
            *&v143[2] = v52;
            *&v143[10] = 2080;
            *&v143[12] = v51;
            *&v143[20] = 2080;
            *&v143[22] = v55;
            v144 = 2080;
            v145 = v50;
            v146 = 2080;
            v147 = v48;
            v148 = 2080;
            v149 = v56;
            v150 = 2080;
            v151 = v57;
            v152 = 2080;
            v153 = v58;
            v154 = 2080;
            v155 = "Inconsistent";
            v156 = 1024;
            v157 = s_inconsistentCount;
            _os_log_error_impl(&dword_258731000, v10, OS_LOG_TYPE_ERROR, "MediaSafetyNet temporarily inconsistent state: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s) consistency: %s inconsistentCount: %i", buf, 0x80u);
            goto LABEL_40;
          }

          qword_27F958928 = "Unknown state";
          v126 = MSNLog(v47);
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }
      }
    }

    goto LABEL_238;
  }

  if (MSNFailureMode_defaultOnce != -1)
  {
    MSNMonitorStartServerMode_cold_2();
  }

  v31 = "com.apple.MediaSafetyNet";
  v32 = &g_cameraClient;
  v33 = MSNFailureMode_failureMode;
  v34 = 0x277CCA000uLL;
  while (v33 > 3)
  {
    if (v33 == 4)
    {
      v38 = v32;
      v39 = v31;
      v0 = os_variant_allows_internal_security_policies();
      log = v0;
      v40 = g_microphoneState;
      v41 = g_microphoneClient;
      if (g_microphoneState != 1 || g_microphoneClient == 0)
      {
        v43 = 0;
      }

      else
      {
        v0 = strcmp(g_microphoneClient, "corespeechd");
        v43 = v0 == 0;
      }

      v44 = v40 != 1 || g_pillState == 2;
      if (v44 || (v0 = strcmp(v41, "callservicesd"), v0))
      {
        v32 = v38;
        if (g_cameraState == 1)
        {
          v0 = strcmp(*v38, "com.apple.callservicesd");
          if (v0)
          {
            v33 = 2;
          }

          else
          {
            v33 = 3;
          }
        }

        else
        {
          v33 = 2;
        }
      }

      else
      {
        v33 = 3;
        v32 = v38;
      }

      v34 = 0x277CCA000;
      v31 = v39;
      if (!v43 && (log & 1) != 0)
      {
        v33 = 3;
      }
    }

    else
    {
      if (v33 != 5)
      {
        goto LABEL_168;
      }

      if (g_cameraState == 1)
      {
        v0 = HotCameraAllowed();
        v35 = 0;
        if ((v0 & 1) == 0 && *v32)
        {
          if (MSNStateFailureWithMode_onceToken != -1)
          {
            __MSNMonitorStartServerMode_block_invoke_49_cold_9();
          }

          v36 = MSNStateFailureWithMode_terminatingProcesses;
          v37 = [*(v34 + 3240) stringWithUTF8String:*v32];
          v35 = [v36 containsObject:v37];

          v31 = "com.apple.MediaSafetyNet";
        }
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 1) != 0 || g_microphoneState != 1)
      {
        v33 = 2;
        if (v35)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v0 = HotMicAllowed();
        v33 = 2;
        if ((v0 & 1) == 0 && g_microphoneClient)
        {
          if (MSNStateFailureWithMode_onceToken_168 != -1)
          {
            __MSNMonitorStartServerMode_block_invoke_49_cold_10();
          }

          v45 = MSNStateFailureWithMode_terminatingProcesses_167;
          v46 = [*(v34 + 3240) stringWithUTF8String:g_microphoneClient];
          LOBYTE(v45) = [v45 containsObject:v46];

          v33 = 2;
          v31 = "com.apple.MediaSafetyNet";
          if (v45)
          {
LABEL_109:
            v33 = 3;
          }
        }
      }
    }
  }

  if (v33 == 1)
  {
    v59 = MSNLog(v0);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_166;
    }

    goto LABEL_167;
  }

  if (v33 != 2)
  {
    if (v33 != 3)
    {
      goto LABEL_168;
    }

    if (g_production == 1)
    {
      v158[0] = @"Mic";
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:MicrophoneStateDescription(g_microphoneState)];
      *buf = v76;
      v158[1] = @"Cam";
      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:MicrophoneStateDescription(g_cameraState)];
      *&buf[8] = v77;
      v158[2] = @"MicClient";
      if (g_microphoneClient)
      {
        v78 = g_microphoneClient;
      }

      else
      {
        v78 = "None";
      }

      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:v78];
      *&buf[16] = v79;
      v158[3] = @"CamClient";
      if (g_cameraClient)
      {
        v80 = g_cameraClient;
      }

      else
      {
        v80 = "None";
      }

      v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:v80];
      v142 = v81;
      v158[4] = @"Pill";
      v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:PillStateDescription(g_pillState)];
      *v143 = v82;
      v158[5] = @"UI";
      v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:UIStateDescription(g_uiState)];
      *&v143[8] = v83;
      v158[6] = @"Kbd";
      v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:KeyboardStateDescription(g_keyboardState)];
      *&v143[16] = v84;
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v158 count:7];
      AnalyticsSendEvent();
    }

    v86 = MSNLog(v0);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_11();
    }

    v140 = 0;
    if (g_production)
    {
      v87 = "";
    }

    else
    {
      v87 = "Testing: ";
    }

    v88 = UIStateDescription(g_uiState);
    v89 = MicrophoneStateDescription(g_cameraState);
    if (g_cameraClient)
    {
      v90 = ":";
    }

    else
    {
      v90 = "";
    }

    if (g_cameraClient)
    {
      v91 = g_cameraClient;
    }

    else
    {
      v91 = "";
    }

    v92 = MicrophoneStateDescription(g_microphoneState);
    if (g_microphoneClient)
    {
      v93 = ":";
    }

    else
    {
      v93 = "";
    }

    if (g_microphoneClient)
    {
      v94 = g_microphoneClient;
    }

    else
    {
      v94 = "";
    }

    v95 = PillStateDescription(g_pillState);
    v96 = KeyboardStateDescription(g_keyboardState);
    v97 = g_cameraExceptionState;
    if (!g_cameraExceptionState)
    {
      v97 = "None";
    }

    if (asprintf(&v140, "MediaSafetyNet failure with states: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97) < 0)
    {
      v140 = 0;
    }

    v98 = MEMORY[0x277CCACA8];
    if (g_production)
    {
      v99 = "";
    }

    else
    {
      v99 = "Testing: ";
    }

    v100 = UIStateDescription(g_uiState);
    v101 = MicrophoneStateDescription(g_cameraState);
    v102 = ":";
    if (g_cameraClient)
    {
      v103 = ":";
    }

    else
    {
      v103 = "";
    }

    if (g_cameraClient)
    {
      v104 = g_cameraClient;
    }

    else
    {
      v104 = "";
    }

    v105 = MicrophoneStateDescription(g_microphoneState);
    if (g_microphoneClient)
    {
      v106 = g_microphoneClient;
    }

    else
    {
      v102 = "";
      v106 = "";
    }

    v107 = PillStateDescription(g_pillState);
    v108 = KeyboardStateDescription(g_keyboardState);
    v109 = g_cameraExceptionState;
    if (!g_cameraExceptionState)
    {
      v109 = "None";
    }

    v110 = [v98 stringWithFormat:@"MediaSafetyNet: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v99, v100, v101, v103, v104, v105, v102, v106, v107, v108, v109];
    CFPreferencesSetAppValue(@"MediaSafetyNetWaitingTTR", v110, @"com.apple.mediaserverd");

    v111 = [MEMORY[0x277CBEAA8] date];
    CFPreferencesSetAppValue(@"MediaSafetyNetWaitingTTRDate", v111, @"com.apple.mediaserverd");

    v112 = CFPreferencesAppSynchronize(@"com.apple.mediaserverd");
    qword_27F958928 = v140;
    v126 = MSNLog(v112);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_12(&v140, v126, v113, v114, v115, v116, v117, v118);
    }

LABEL_239:

    abort();
  }

  if (MSNStateFailureWithMode_once != -1)
  {
    __MSNMonitorStartServerMode_block_invoke_49_cold_14();
  }

  v59 = MSNLog(v0);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
LABEL_166:
    __MSNMonitorStartServerMode_block_invoke_49_cold_11();
  }

LABEL_167:

LABEL_168:
  v27 = 1;
  v28 = &s_inconsistentCount;
LABEL_64:
  *v28 = 0;
LABEL_65:
  if (MSNPeriodicLog_once != -1)
  {
    __MSNMonitorStartServerMode_block_invoke_49_cold_16();
  }

  v29 = MSNPeriodicLog_log;
  if (os_log_type_enabled(MSNPeriodicLog_log, OS_LOG_TYPE_DEBUG))
  {
    if (g_production)
    {
      v60 = "";
    }

    else
    {
      v60 = "Testing: ";
    }

    v61 = g_uiState;
    v62 = v29;
    if (v61 >= 4)
    {
      qword_27F958928 = "Unknown state";
      v126 = MSNLog(v62);
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v126 = MSNLog(v62);
      if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else
    {
      if (g_cameraClient)
      {
        v63 = ":";
      }

      else
      {
        v63 = "";
      }

      if (g_cameraClient)
      {
        v64 = g_cameraClient;
      }

      else
      {
        v64 = "";
      }

      if (g_microphoneState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v126 = MSNLog(v62);
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_239;
        }
      }

      else
      {
        v65 = g_microphoneClient;
        if (g_microphoneClient)
        {
          v66 = ":";
        }

        else
        {
          v66 = "";
        }

        if (!g_microphoneClient)
        {
          v65 = "";
        }

        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v126 = MSNLog(v62);
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }

        else
        {
          v135 = v66;
          v136 = v65;
          v137 = v64;
          loga = v62;
          if (g_keyboardState < 3)
          {
            v67 = v63;
            v68 = v60;
            v69 = off_2798A3F28[v61];
            v70 = off_2798A3F48[g_cameraState];
            v71 = off_2798A3F48[g_microphoneState];
            v72 = off_2798A3F68[g_pillState];
            v73 = off_2798A3F10[g_keyboardState];
            if (g_cameraExceptionState)
            {
              v74 = g_cameraExceptionState;
            }

            else
            {
              v74 = "None";
            }

            v75 = ConsistencyDescription(v27);
            *buf = 136317954;
            *&buf[4] = v68;
            *&buf[12] = 2080;
            *&buf[14] = v69;
            *&buf[22] = 2080;
            v142 = v70;
            *v143 = 2080;
            *&v143[2] = v67;
            *&v143[10] = 2080;
            *&v143[12] = v137;
            *&v143[20] = 2080;
            *&v143[22] = v71;
            v144 = 2080;
            v145 = v135;
            v146 = 2080;
            v147 = v136;
            v148 = 2080;
            v149 = v72;
            v150 = 2080;
            v151 = v73;
            v152 = 2080;
            v153 = v74;
            v154 = 2080;
            v155 = v75;
            v10 = loga;
            _os_log_debug_impl(&dword_258731000, loga, OS_LOG_TYPE_DEBUG, "MediaSafetyNet state: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s) consistency: %s", buf, 0x7Au);
            goto LABEL_40;
          }

          qword_27F958928 = "Unknown state";
          v126 = MSNLog(v62);
          if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }
      }
    }

    goto LABEL_238;
  }

LABEL_68:
  objc_autoreleasePoolPop(v1);
}

void MSNMonitorSetCameraState(char a1)
{
  IsLocalMonitor = MediaSafetyNetIsLocalMonitor();
  if (IsLocalMonitor)
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetCameraState_block_invoke;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v5 = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v3 = MSNLog(IsLocalMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void MSNMonitorStartingCamera(uint64_t a1)
{
  v1 = MSNLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_258731000, v1, OS_LOG_TYPE_INFO, "Starting cam.", v2, 2u);
  }
}

void __MSNMonitorSetCameraState_block_invoke(uint64_t a1)
{
  switch(g_cameraState)
  {
    case 1:
      if ((*(a1 + 32) & 1) == 0)
      {
        MSNMonitorStoppingCamera(a1);
      }

      break;
    case 2:
      if (*(a1 + 32) == 1)
      {
        MSNMonitorStartingCamera(a1);
      }

      break;
    case 3:
      v2 = MSNLog(a1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorSetCameraState_block_invoke_cold_1();
      }

      return;
  }

  if (*(a1 + 32))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  g_cameraState = v3;
}

void MSNMonitorSetCameraNonStandardCameraClient(uint64_t a1)
{
  IsLocalMonitor = MediaSafetyNetIsLocalMonitor();
  if (IsLocalMonitor)
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetCameraNonStandardCameraClient_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v3 = MSNLog(IsLocalMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void MSNMonitorSetXCTestExceptionState(int a1)
{
  if (a1)
  {
    MSNMonitorSetCameraNonStandardCameraClient("xctest");
  }

  else
  {
    MSNMonitorSetCameraNonStandardCameraClient(0);
  }
}

char *__MSNMonitorSetCameraNonStandardCameraClient_block_invoke(uint64_t a1)
{
  free(g_cameraExceptionState);
  result = *(a1 + 32);
  if (result)
  {
    result = strdup(result);
  }

  g_cameraExceptionState = result;
  return result;
}

void __MSNMonitorSetLastCameraClient_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    free(g_cameraClient);
    g_cameraClient = strdup(*(a1 + 32));
    v2 = MSNLog(g_cameraClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __MSNMonitorSetLastCameraClient_block_invoke_cold_1(v2);
    }
  }
}

void MSNMonitorSetLastCameraClient(uint64_t a1)
{
  IsLocalMonitor = MediaSafetyNetIsLocalMonitor();
  if (IsLocalMonitor)
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetLastCameraClient_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v3 = MSNLog(IsLocalMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void __MSNMonitorStartServerMode_block_invoke(int a1, int token)
{
  v18 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state64)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (state)
  {
    v3 = 0;
  }

  g_keyboardState = v3;
  v4 = MSNLog(state);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (g_keyboardState >= 3)
    {
      qword_27F958928 = "Unknown state";
      v7 = MSNLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      abort();
    }

    v6 = off_2798A3F10[g_keyboardState];
    *buf = 136315138;
    v17 = v6;
    _os_log_impl(&dword_258731000, v4, OS_LOG_TYPE_INFO, "Updated keyboard state: %s", buf, 0xCu);
  }
}

const char *ConsistencyDescription(uint64_t a1)
{
  if (a1 == 1)
  {
    return "Inconsistent";
  }

  if (a1 != 2)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return "Consistent";
}

void MSNMonitorSetLastMicrophoneClient(uint64_t a1)
{
  IsLocalMonitor = MediaSafetyNetIsLocalMonitor();
  if (IsLocalMonitor)
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetLastMicrophoneClient_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v3 = MSNLog(IsLocalMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void __MSNMonitorSetLastMicrophoneClient_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    free(g_microphoneClient);
    g_microphoneClient = strdup(*(a1 + 32));
    v2 = MSNLog(g_microphoneClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __MSNMonitorSetLastMicrophoneClient_block_invoke_cold_1(v2);
    }
  }
}

void MSNMonitorSetMicrophoneState(char a1)
{
  IsLocalMonitor = MediaSafetyNetIsLocalMonitor();
  if (IsLocalMonitor)
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetMicrophoneState_block_invoke;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v5 = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v3 = MSNLog(IsLocalMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void MSNMonitorStartingMicrophone(uint64_t a1)
{
  v1 = MSNLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_258731000, v1, OS_LOG_TYPE_INFO, "Starting mic.", v2, 2u);
  }
}

void __MSNMonitorSetMicrophoneState_block_invoke(uint64_t a1)
{
  switch(g_microphoneState)
  {
    case 1:
      if ((*(a1 + 32) & 1) == 0)
      {
        MSNMonitorStoppingMicrophone(a1);
      }

      break;
    case 2:
      if (*(a1 + 32) == 1)
      {
        MSNMonitorStartingMicrophone(a1);
      }

      break;
    case 3:
      v2 = MSNLog(a1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorSetMicrophoneState_block_invoke_cold_1();
      }

      return;
  }

  if (*(a1 + 32))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  g_microphoneState = v3;
}

void __MSNMonitorSetLastMicrophoneClient_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = g_microphoneClient;
  _os_log_debug_impl(&dword_258731000, log, OS_LOG_TYPE_DEBUG, "Last microphone client: %s", &v1, 0xCu);
}

void __MSNPollStates_block_invoke(uint64_t a1, int a2)
{
  v2 = a2 == 3;
  if (a2 == 2)
  {
    v2 = 2;
  }

  g_pillState = v2;
}

uint64_t HotMicAllowed()
{
  if ((g_pillState & 0xFFFFFFFD) == 0)
  {
    return 1;
  }

  v16 = v0;
  v17 = v1;
  v2 = _AXSCommandAndControlEnabled();
  if (v2)
  {
    v3 = MSNLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v4 = "Command and Control enabled.";
      v5 = &v12;
LABEL_12:
      _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v7 = _AXSSoundDetectionRunning();
  if (v7)
  {
    v3 = MSNLog(v7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v4 = "Sound Detection enabled.";
      v5 = &v13;
      goto LABEL_12;
    }

LABEL_13:

    return 1;
  }

  v8 = _AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen();
  if (v8)
  {
    v3 = MSNLog(v8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "Switch Control sound triggers enabled.";
      v5 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (_AXSLiveTranscriptionEnabled())
  {
    v9 = _AXSLiveTranscriptionMicOn();
    if (v9)
    {
      v3 = MSNLog(v9);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = 0;
      v4 = "LiveTranscription enabled.";
      v5 = &v15;
      goto LABEL_12;
    }
  }

  v10 = [s_carplay carplayConnected];
  result = 1;
  if ((v10 & 1) == 0 && g_keyboardState != 2)
  {
    if (([s_exceptions isExceptionInEffect:0x2869B3A88] & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B39C8) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B39E8) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A08) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A28) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A48) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A68) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AC8) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AE8) & 1) == 0)
    {
      if (!os_variant_allows_internal_security_policies())
      {
        return 0;
      }

      v11 = g_microphoneClient;
      if (!g_microphoneClient || strcmp(g_microphoneClient, "qrecord") && strcmp(v11, "auriotest") && strcmp(v11, "minilab") && strcmp(v11, "xctest") && strcmp(v11, "avcapture") && strcmp(v11, "halperformancemetrics") && strcmp(v11, "avvctest") && strcmp(v11, "audioloopback") && strcmp(v11, "algen") && strcmp(v11, "austriptool") && strcmp(v11, "dspprocess") && strcmp(v11, "auprocess") && strcmp(v11, "ssplay") && strcmp(v11, "vpiotest") && strcmp(v11, "multiroutetest") && strcmp(v11, "afinfo") && strcmp(v11, "afconvert") && strcmp(v11, "audiodetect") && strcmp(v11, "avrecord") && strcmp(v11, "qplay") && strcmp(v11, "auval") && strcmp(v11, "auvaltool") && strcmp(v11, "sounddiff") && strcmp(v11, "afmetadata") && strcmp(v11, "audioperftest") && strcmp(v11, "attentiond") && strcmp(v11, "audiotest") && strcmp(v11, "AVAudioDeviceTes") && strcmp(v11, "CoreContextAmbie"))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void MSNMonitorBeginException(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v10 = v15 = 0u;
  v2 = [MSNScopedExceptionsServer proxiesForException:?];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = MSNLog(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v17 = a1;
          v18 = 2112;
          v19 = v7;
          _os_log_debug_impl(&dword_258731000, v8, OS_LOG_TYPE_DEBUG, "Begin exception %s with proxy %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
        [v7 beginException:v9];

        ++v6;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      v4 = v3;
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
}

void MSNMonitorEndException(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v10 = v15 = 0u;
  v2 = [MSNScopedExceptionsServer proxiesForException:?];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = MSNLog(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v17 = a1;
          v18 = 2112;
          v19 = v7;
          _os_log_debug_impl(&dword_258731000, v8, OS_LOG_TYPE_DEBUG, "End exception %s with proxy %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
        [v7 endException:v9];

        ++v6;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      v4 = v3;
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_258735120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258735870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSTDynamicActivityAttributionMonitorClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STDynamicActivityAttributionMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTDynamicActivityAttributionMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTDynamicActivityAttributionMonitorClass_block_invoke_cold_1();
    SystemStatusLibrary();
  }
}

void SystemStatusLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SystemStatusLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2798A3E28;
    v3 = 0;
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  return result;
}

MSNPillDataSourceController *__getSTCallingStatusDomainClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STCallingStatusDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTCallingStatusDomainClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTCallingStatusDomainClass_block_invoke_cold_1();
    return [(MSNPillDataSourceController *)v3 initWithQueue:v4, v5];
  }

  return result;
}

void sub_2587362D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MSNLog_block_invoke()
{
  MSNLog_log = os_log_create("com.apple.MediaSafetyNet", "state");

  return MEMORY[0x2821F96F8]();
}

void MSNMonitorStoppingCamera(uint64_t a1)
{
  v1 = MSNLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_258731000, v1, OS_LOG_TYPE_INFO, "Stopping cam.", v2, 2u);
  }
}

void MSNMonitorStoppingMicrophone(uint64_t a1)
{
  v1 = MSNLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_258731000, v1, OS_LOG_TYPE_INFO, "Stopping mic.", v2, 2u);
  }
}

void MSNMonitorStart()
{
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || (v0 = _os_feature_enabled_impl()) != 0)
    {
      if (_os_feature_enabled_impl())
      {
        v0 = 2;
      }

      else
      {
        v1 = _os_feature_enabled_impl();
        if ((v1 & 1) == 0)
        {
          qword_27F958928 = "Not reachable";
          v2 = MSNLog(v1);
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            MSNMonitorStart_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
          }

          abort();
        }

        v0 = 1;
      }
    }

    MSNMonitorStartServerMode(v0);
  }
}

void MSNMonitorStartServerMode(int a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  g_serverMode = a1;
  v3 = MSNLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    MSNMonitorStartServerMode_cold_1(v3);
  }

  if (s_mediaSafetyNetQueue)
  {
    v5 = 0;
  }

  else
  {
    v5 = s_mediaSafetyNetDisabledOnThisHardware == 0;
  }

  if (!v5)
  {
    v6 = MSNLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, "MediaSafetyNet already initialized.", buf, 2u);
    }

    goto LABEL_47;
  }

  has_factory_content = os_variant_has_factory_content();
  if (has_factory_content)
  {
    v8 = MSNLog(has_factory_content);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Not using MediaSafetyNet on NonUI.";
LABEL_50:
      _os_log_impl(&dword_258731000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
    }
  }

  else
  {
    v10 = MGCopyAnswer();
    v11 = [v10 intValue];
    v12 = v11;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v12 == 1)
    {
      goto LABEL_19;
    }

    if (v12 != 2)
    {
      v8 = MSNLog(v11);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "Not using MediaSafetyNet on devices of this type (not an iPhone/iPod).";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    v11 = MGGetProductType();
    if (v11 != 3460419847)
    {
LABEL_19:
      v13 = MSNLog(v11);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

      if (v14)
      {
        v16 = MSNLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v42 = ServerModeDescription(g_serverMode);
          if (MSNFailureMode_defaultOnce != -1)
          {
            MSNMonitorStartServerMode_cold_2();
          }

          *buf = 136315394;
          *&buf[4] = v42;
          v62 = 2080;
          v63 = FailureModeDescription(MSNFailureMode_failureMode);
          _os_log_debug_impl(&dword_258731000, v16, OS_LOG_TYPE_DEBUG, "Starting MediaSafetyNet in server mode: %s failure mode: %s", buf, 0x16u);
        }
      }

      out_token = 0;
      notify_register_check("com.apple.MediaSafetyNet.connectionrequest", &out_token);
      notify_set_state(out_token, 1uLL);
      notify_post("com.apple.MediaSafetyNet.connectionrequest");
      v17 = dispatch_queue_create("MediaSafetyNet", 0);
      v18 = s_mediaSafetyNetQueue;
      s_mediaSafetyNetQueue = v17;

      if (s_mediaSafetyNetQueue)
      {
        g_uiState = 0;
        if (a1 == 1)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        g_cameraState = v20;
        if (a1 == 2)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        g_microphoneState = v21;
        g_pillState = 0;
        g_keyboardState = 0;
        v59 = -1;
        if (!notify_register_dispatch("com.apple.keyboard.isOnScreen", &v59, s_mediaSafetyNetQueue, &__block_literal_global_13))
        {
          __MSNMonitorStartServerMode_block_invoke(0, v59);
        }

        v6 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
        [v6 setNeedsUserInteractivePriority:1];
        [v6 setTransitionHandler:&__block_literal_global_18];
        v22 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v6];
        v23 = s_monitor;
        s_monitor = v22;

        if (g_serverMode <= 1)
        {
          v24 = objc_opt_new();
          v25 = s_carplay;
          s_carplay = v24;
        }

        v26 = [MSNScopedExceptionsServer alloc];
        v27 = [(MSNScopedExceptionsServer *)v26 initWithQueue:s_mediaSafetyNetQueue];
        v28 = s_exceptions;
        s_exceptions = v27;

        v29 = [MSNPillDataSourceServer alloc];
        v30 = [(MSNPillDataSourceServer *)v29 initWithQueue:s_mediaSafetyNetQueue];
        v31 = s_pillDataSource;
        s_pillDataSource = v30;

        state = os_variant_allows_internal_security_policies();
        if (state)
        {
          *buf = 0;
          if (g_microphoneState != 3)
          {
            v33 = MSNLog(state);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              LOWORD(token) = 0;
              _os_log_impl(&dword_258731000, v33, OS_LOG_TYPE_INFO, "Installing internal microphone override", &token, 2u);
            }

            token = -1;
            if (notify_register_dispatch("com.apple.mediasafetynet.simulate_microphone", &token, s_mediaSafetyNetQueue, &__block_literal_global_36))
            {
              MSNMonitorStartServerMode_cold_3();
            }

            state = notify_get_state(token, buf);
          }

          if (g_cameraState != 3)
          {
            v34 = MSNLog(state);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              LOWORD(token) = 0;
              _os_log_impl(&dword_258731000, v34, OS_LOG_TYPE_INFO, "Installing internal camera override", &token, 2u);
            }

            token = -1;
            if (notify_register_dispatch("com.apple.mediasafetynet.simulate_camera", &token, s_mediaSafetyNetQueue, &__block_literal_global_42))
            {
              MSNMonitorStartServerMode_cold_4();
            }

            notify_get_state(token, buf);
          }

          token = -1;
          if (notify_register_dispatch("com.apple.mediasafetynet.pill_state", &token, s_mediaSafetyNetQueue, &__block_literal_global_46))
          {
            MSNMonitorStartServerMode_cold_5();
          }
        }

        v35 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, s_mediaSafetyNetQueue);
        v36 = s_timer;
        s_timer = v35;

        v38 = s_timer;
        if (s_timer)
        {
          v39 = dispatch_time(0, 1000000000);
          dispatch_source_set_timer(v38, v39, 0x3B9ACA00uLL, 0x5F5E100uLL);
          dispatch_source_set_event_handler(s_timer, &__block_literal_global_51);
          dispatch_resume(s_timer);
LABEL_47:

          goto LABEL_54;
        }

        qword_27F958928 = "Failed to create timer";
        v43 = MSNLog(v37);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          MSNMonitorStartServerMode_cold_6(v43, v51, v52, v53, v54, v55, v56, v57);
        }
      }

      else
      {
        qword_27F958928 = "Unexpected NULL dispatch queue.";
        v43 = MSNLog(v19);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          MSNMonitorStartServerMode_cold_7(v43, v44, v45, v46, v47, v48, v49, v50);
        }
      }

      abort();
    }

    v8 = MSNLog(3460419847);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Not using MediaSafetyNet on specific devices.";
      goto LABEL_50;
    }
  }

LABEL_51:

  v41 = MSNLog(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v41, OS_LOG_TYPE_INFO, "Not using MediaSafetyNet on this device.", buf, 2u);
  }

  s_mediaSafetyNetDisabledOnThisHardware = 1;
LABEL_54:
  objc_autoreleasePoolPop(v2);
}

char *ServerModeDescription(uint64_t a1)
{
  if (a1 >= 3)
  {
    qword_27F958928 = "Unknown mode";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ServerModeDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3EC8[a1];
}

char *FailureModeDescription(uint64_t a1)
{
  if (a1 >= 6)
  {
    qword_27F958928 = "Unknown mode";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ServerModeDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3EE0[a1];
}

char *KeyboardStateDescription(uint64_t a1)
{
  if (a1 >= 3)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F10[a1];
}

char *UIStateDescription(uint64_t a1)
{
  if (a1 >= 4)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F28[a1];
}

void __MSNMonitorStartServerMode_block_invoke_19()
{
  v0 = CFPreferencesCopyAppValue(@"MediaSafetyNetWaitingTTR", @"com.apple.mediaserverd");
  if (v0)
  {
    v1 = v0;
    v2 = CFPreferencesCopyAppValue(@"MediaSafetyNetWaitingTTRDate", @"com.apple.mediaserverd");
    v3 = +[MSNTTR sharedInstance];
    [v3 beginTTRWithTitle:v1 date:v2];

    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(v1);
  }
}

void __MSNMonitorStartServerMode_block_invoke_34(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  g_production = 0;
  v3 = MSNLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "Microphone override changed", buf, 2u);
  }

  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state64)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (state)
  {
    v5 = 0;
  }

  g_microphoneState = v5;
  v6 = MSNLog(state);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (g_microphoneState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v9 = MSNLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      abort();
    }

    v8 = off_2798A3F48[g_microphoneState];
    *buf = 136315138;
    v19 = v8;
    _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, "Updated microphone state: %s", buf, 0xCu);
  }
}

char *MicrophoneStateDescription(uint64_t a1)
{
  if (a1 >= 4)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F48[a1];
}

void __MSNMonitorStartServerMode_block_invoke_40(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  g_production = 0;
  v3 = MSNLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "Camera override changed", buf, 2u);
  }

  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state64)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (state)
  {
    v5 = 0;
  }

  g_cameraState = v5;
  v6 = MSNLog(state);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v9 = MSNLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      abort();
    }

    v8 = off_2798A3F48[g_cameraState];
    *buf = 136315138;
    v19 = v8;
    _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, "Updated camera state: %s", buf, 0xCu);
  }
}

void __MSNMonitorStartServerMode_block_invoke_44(int a1, int token)
{
  v20 = *MEMORY[0x277D85DE8];
  g_production = 0;
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (!state)
  {
    if (state64)
    {
      g_pillState = state64;
      s_lockPill = 1;
      v3 = MSNLog(state);
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (g_pillState < 3)
        {
          v5 = off_2798A3F68[g_pillState];
          *buf = 136315138;
          v19 = v5;
          v6 = "Updated pill state: %s";
LABEL_9:
          _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
          goto LABEL_10;
        }

        qword_27F958928 = "Unknown state";
        v9 = MSNLog(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          __MSNMonitorStartServerMode_block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
        }

LABEL_16:

        abort();
      }
    }

    else
    {
      s_lockPill = 0;
      g_pillState = 0;
      v3 = MSNLog(state);
      v7 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
      if (v7)
      {
        if (g_pillState < 3)
        {
          v8 = off_2798A3F68[g_pillState];
          *buf = 136315138;
          v19 = v8;
          v6 = "Reset pill state: %s";
          goto LABEL_9;
        }

        qword_27F958928 = "Unknown state";
        v9 = MSNLog(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

LABEL_10:
  }
}

char *PillStateDescription(uint64_t a1)
{
  if (a1 >= 3)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F68[a1];
}

void __MSNFailureMode_block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MediaSafetyNetFailureMode", @"com.apple.mediaserverd", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppIntegerValue;
  }

  else
  {
    v1 = 2;
  }

  MSNFailureMode_failureMode = v1;
  v2 = os_variant_allows_internal_security_policies();
  if (v2)
  {
    memset(&v17, 0, sizeof(v17));
    v2 = stat("/var/db/internal_disable_mediasafetynet_cookie", &v17);
    if (!v2)
    {
      v3 = MSNLog(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __MSNFailureMode_block_invoke_cold_1(v3);
      }

      MSNFailureMode_failureMode = 1;
    }
  }

  v4 = MSNLog(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (MSNFailureMode_failureMode >= 6)
    {
      qword_27F958928 = "Unknown mode";
      v8 = MSNLog(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ServerModeDescription_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      abort();
    }

    v6 = "";
    v7 = off_2798A3EE0[MSNFailureMode_failureMode];
    if (!keyExistsAndHasValidFormat)
    {
      v6 = " default";
    }

    v17.st_dev = 136315394;
    *&v17.st_mode = v6;
    WORD2(v17.st_ino) = 2080;
    *(&v17.st_ino + 6) = v7;
    _os_log_impl(&dword_258731000, v4, OS_LOG_TYPE_INFO, "MediaSafetyNet%s failure mode: %s", &v17, 0x16u);
  }
}

uint64_t HotCameraAllowed()
{
  v0 = _AXSSwitchControlEnabledAndNeedsCameraOnLockScreen();
  if (v0)
  {
    v1 = MSNLog(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_258731000, v1, OS_LOG_TYPE_INFO, "Switch Control enabled.", v4, 2u);
    }

    return 1;
  }

  if (g_cameraExceptionState || ([s_exceptions isExceptionInEffect:0x2869B39E8] & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AA8) & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3B28) & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3B48) & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AE8) & 1) != 0)
  {
    return 1;
  }

  v3 = s_exceptions;

  return [v3 isExceptionInEffect:0x2869B3B68];
}

void __MSNStateFailureWithMode_block_invoke(uint64_t a1)
{
  v84[7] = *MEMORY[0x277D85DE8];
  if (g_production == 1)
  {
    v83[0] = @"Mic";
    if (g_microphoneState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v39 = MSNLog(a1);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }
    }

    else
    {
      v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F48[g_microphoneState]];
      v84[0] = v1;
      v83[1] = @"Cam";
      if (g_cameraState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v39 = MSNLog(v1);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_85;
        }
      }

      else
      {
        v2 = v1;
        v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F48[g_cameraState]];
        v84[1] = v3;
        v83[2] = @"MicClient";
        if (g_microphoneClient)
        {
          v4 = g_microphoneClient;
        }

        else
        {
          v4 = "None";
        }

        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
        v84[2] = v5;
        v83[3] = @"CamClient";
        if (g_cameraClient)
        {
          v6 = g_cameraClient;
        }

        else
        {
          v6 = "None";
        }

        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        v84[3] = v7;
        v83[4] = @"Pill";
        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v39 = MSNLog(v7);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }
        }

        else
        {
          v8 = v7;
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F68[g_pillState]];
          v84[4] = v9;
          v83[5] = @"UI";
          if (g_uiState >= 4)
          {
            qword_27F958928 = "Unknown state";
            v39 = MSNLog(v9);
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }
          }

          else
          {
            v10 = v9;
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F28[g_uiState]];
            v84[5] = v11;
            v83[6] = @"Kbd";
            if (g_keyboardState < 3)
            {
              v12 = v11;
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F10[g_keyboardState]];
              v84[6] = v13;
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:7];
              AnalyticsSendEvent();

              goto LABEL_14;
            }

            qword_27F958928 = "Unknown state";
            v39 = MSNLog(v11);
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }
          }
        }
      }
    }

    __MSNMonitorStartServerMode_block_invoke_cold_1(v39, v54, v55, v56, v57, v58, v59, v60);
    goto LABEL_85;
  }

LABEL_14:
  v15 = MSNLog(a1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __MSNStateFailureWithMode_block_invoke_cold_6(v15);
  }

  v17 = MSNLog(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (v18)
  {
    if (g_production)
    {
      v28 = "";
    }

    else
    {
      v28 = "Testing: ";
    }

    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v39 = MSNLog(v18);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v39 = MSNLog(v18);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    v29 = g_cameraClient;
    if (g_cameraClient)
    {
      v30 = ":";
    }

    else
    {
      v30 = "";
    }

    if (!g_cameraClient)
    {
      v29 = "";
    }

    if (g_microphoneState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v39 = MSNLog(v18);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    v31 = g_microphoneClient;
    if (g_microphoneClient)
    {
      v32 = ":";
    }

    else
    {
      v32 = "";
    }

    if (!g_microphoneClient)
    {
      v31 = "";
    }

    if (g_pillState >= 3)
    {
      qword_27F958928 = "Unknown state";
      v39 = MSNLog(v18);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    if (g_keyboardState < 3)
    {
      v33 = off_2798A3F28[g_uiState];
      v34 = off_2798A3F48[g_cameraState];
      v35 = off_2798A3F48[g_microphoneState];
      v36 = off_2798A3F68[g_pillState];
      v37 = off_2798A3F10[g_keyboardState];
      v38 = g_cameraExceptionState;
      if (!g_cameraExceptionState)
      {
        v38 = "None";
      }

      *buf = 136317698;
      v62 = v28;
      v63 = 2080;
      v64 = v33;
      v65 = 2080;
      v66 = v34;
      v67 = 2080;
      v68 = v30;
      v69 = 2080;
      v70 = v29;
      v71 = 2080;
      v72 = v35;
      v73 = 2080;
      v74 = v32;
      v75 = 2080;
      v76 = v31;
      v77 = 2080;
      v78 = v36;
      v79 = 2080;
      v80 = v37;
      v81 = 2080;
      v82 = v38;
      _os_log_fault_impl(&dword_258731000, v17, OS_LOG_TYPE_FAULT, "MediaSafetyNet failure with states: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", buf, 0x70u);
      goto LABEL_17;
    }

    qword_27F958928 = "Unknown state";
    v39 = MSNLog(v18);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_74:
      __MSNMonitorStartServerMode_block_invoke_cold_1(v39, v47, v48, v49, v50, v51, v52, v53);
    }

LABEL_85:

    abort();
  }

LABEL_17:

  v19 = +[MSNTTR sharedInstance];
  if (g_uiState >= 4)
  {
    qword_27F958928 = "Unknown state";
    v39 = MSNLog(v19);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

LABEL_64:
    __MSNMonitorStartServerMode_block_invoke_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
    goto LABEL_85;
  }

  if (g_cameraState >= 4)
  {
    qword_27F958928 = "Unknown state";
    v39 = MSNLog(v19);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  if (g_microphoneState >= 4)
  {
    qword_27F958928 = "Unknown state";
    v39 = MSNLog(v19);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  if (g_pillState >= 3)
  {
    qword_27F958928 = "Unknown state";
    v39 = MSNLog(v19);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  if (g_keyboardState >= 3)
  {
    qword_27F958928 = "Unknown state";
    v39 = MSNLog(v19);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  v20 = v19;
  v21 = g_cameraClient;
  v22 = g_microphoneClient;
  if (g_microphoneClient)
  {
    v23 = ":";
  }

  else
  {
    v22 = "";
    v23 = "";
  }

  if (g_cameraClient)
  {
    v24 = ":";
  }

  else
  {
    v21 = "";
    v24 = "";
  }

  if (g_production)
  {
    v25 = "";
  }

  else
  {
    v25 = "Testing: ";
  }

  v26 = g_cameraExceptionState;
  if (!g_cameraExceptionState)
  {
    v26 = "None";
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"MediaSafetyNet: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v25, off_2798A3F28[g_uiState], off_2798A3F48[g_cameraState], v24, v21, off_2798A3F48[g_microphoneState], v23, v22, off_2798A3F68[g_pillState], off_2798A3F10[g_keyboardState], v26];
  [v20 beginTTRWithTitle:v27];
}

void __MSNStateFailureWithMode_block_invoke_157()
{
  v0 = MEMORY[0x277CBEB98];
  v3 = [@"com.apple.mediaserverd|com.apple.callservicesd|com.apple.telephonyd|com.apple.CommCenter" componentsSeparatedByString:@"|"];
  v1 = [v0 setWithArray:v3];
  v2 = MSNStateFailureWithMode_terminatingProcesses;
  MSNStateFailureWithMode_terminatingProcesses = v1;
}

void __MSNStateFailureWithMode_block_invoke_2()
{
  v0 = MEMORY[0x277CBEB98];
  v3 = [@"callservicesd|mediaserverd|telephonyd|CommCenter" componentsSeparatedByString:@"|"];
  v1 = [v0 setWithArray:v3];
  v2 = MSNStateFailureWithMode_terminatingProcesses_167;
  MSNStateFailureWithMode_terminatingProcesses_167 = v1;
}

uint64_t __MSNPeriodicLog_block_invoke()
{
  MSNPeriodicLog_log = os_log_create("com.apple.MediaSafetyNet", "periodic");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x70u);
}

void CarPlayNotificationCallback(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v7 != TypeID)
  {
    qword_27F958928 = "Unexpected notification payload type";
    v13 = MSNLog(TypeID);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CarPlayNotificationCallback_cold_1();
    }

LABEL_11:

    abort();
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277D26E80]);
  v10 = MSNLog(Value);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = CFBooleanGetValue(Value);
    _os_log_impl(&dword_258731000, v10, OS_LOG_TYPE_INFO, "Received notification of CarPlay status: %{BOOL}d", buf, 8u);
  }

  if (!Value || (v12 = CFGetTypeID(Value), v11 = CFBooleanGetTypeID(), v12 != v11))
  {
    qword_27F958928 = "Unexpected notification payload type";
    v13 = MSNLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CarPlayNotificationCallback_cold_1();
    }

    goto LABEL_11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __CarPlayNotificationCallback_block_invoke;
  v14[3] = &__block_descriptor_48_e5_v8__0l;
  v14[4] = a2;
  v14[5] = Value;
  dispatch_async(s_mediaSafetyNetQueue, v14);
}

void __CarPlayNotificationCallback_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  Value = CFBooleanGetValue(*(a1 + 40));
  *(*(a1 + 32) + 8) = Value != 0;
  v3 = MSNLog(Value);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = CFBooleanGetValue(*(a1 + 40));
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "Updated CarPlay status to: %{BOOL}d", v5, 8u);
  }
}

void sub_258739700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MSNTTRUserNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = +[MSNTTR sharedInstance];
  [v3 handleCallback:a2];
}

void *__getSBUserNotificationDismissOnLockSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2798A3FC0;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBUserNotificationDismissOnLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationDismissOnLockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2798A3FD8;
    v6 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MobileCoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void __MSNMonitorSetLastCameraClient_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = g_cameraClient;
  _os_log_debug_impl(&dword_258731000, log, OS_LOG_TYPE_DEBUG, "Last camera client: %s", &v1, 0xCu);
}

void MSNMonitorStart_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Not reachable";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void MSNMonitorStartServerMode_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109376;
  v2[1] = _os_feature_enabled_impl();
  v3 = 1024;
  v4 = _os_feature_enabled_impl();
  _os_log_debug_impl(&dword_258731000, a1, OS_LOG_TYPE_DEBUG, "Separate Cam: %i Separate Mic: %i", v2, 0xEu);
}

void MSNMonitorStartServerMode_cold_6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Failed to create timer";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void MSNMonitorStartServerMode_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Unexpected NULL dispatch queue.";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ServerModeDescription_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Unknown mode";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __MSNMonitorStartServerMode_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Unknown state";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __MSNMonitorStartServerMode_block_invoke_49_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Expected at least one hot sensor.";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __MSNMonitorStartServerMode_block_invoke_49_cold_11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  UIStateDescription(g_uiState);
  MicrophoneStateDescription(g_cameraState);
  MicrophoneStateDescription(g_microphoneState);
  PillStateDescription(g_pillState);
  KeyboardStateDescription(g_keyboardState);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_258731000, v0, v1, "MediaSafetyNet failure with states: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v2, v3, v4, v5);
  OUTLINED_FUNCTION_4();
}

void __MSNMonitorStartServerMode_block_invoke_49_cold_12(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1_0(&dword_258731000, a2, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}