@interface HapticDictionaryReader
- (BOOL)parseEventsAndParameters:(id)parameters withBaseURL:(id)l reply:(id)reply;
- (id)parseConfiguration:(id)configuration error:(id *)error;
- (id)parseEvent:(id)event withBaseURL:(id)l;
- (id)parseEventParams:(id)params;
- (id)parseParam:(id)param;
- (id)parseParamCurve:(id)curve;
- (id)parseParamCurveControlPoints:(id)points;
- (id)readAndVerifyVersion:(id)version error:(id *)error;
- (id)scanForEmbeddedResources:(id)resources;
@end

@implementation HapticDictionaryReader

- (id)readAndVerifyVersion:(id)version error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v6 = [versionCopy objectForKey:CHHapticPatternKeyVersion];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (kHAPIScope)
    {
      v12 = *kHAPIScope;
      if (!v12)
      {
LABEL_18:
        LODWORD(v13) = 1.0;
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        v9 = v6;
        v6 = v15;
        goto LABEL_19;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "HapticDictionaryReader.mm";
      v22 = 1024;
      v23 = 38;
      v24 = 2080;
      v25 = "[HapticDictionaryReader readAndVerifyVersion:error:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Missing or malformed version key - assuming v1.0", &v20, 0x1Cu);
    }

    goto LABEL_18;
  }

  [v6 floatValue];
  v8 = v7;
  v9 = kHAPIScope;
  if (v7 <= 1.1 && v7 >= 1.0)
  {
    if (kHAPIScope)
    {
      if (*(kHAPIScope + 8))
      {
        v17 = *kHAPIScope;
        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v20 = 136315906;
            v21 = "HapticDictionaryReader.mm";
            v22 = 1024;
            v23 = 48;
            v24 = 2080;
            v25 = "[HapticDictionaryReader readAndVerifyVersion:error:]";
            v26 = 2048;
            v27 = v8;
            _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern version %.1f", &v20, 0x26u);
          }
        }
      }

      v9 = 0;
    }

    goto LABEL_19;
  }

  if (!kHAPIScope)
  {
    v11 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
    goto LABEL_30;
  }

  v11 = *kHAPIScope;
  if (v11)
  {
LABEL_30:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "HapticDictionaryReader.mm";
      v22 = 1024;
      v23 = 44;
      v24 = 2080;
      v25 = "[HapticDictionaryReader readAndVerifyVersion:error:]";
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unsupported version number: %.1f", &v20, 0x26u);
    }
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  }

  v9 = v6;
  v6 = 0;
LABEL_19:

  return v6;
}

- (id)parseConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [configurationCopy objectForKey:CHHapticPatternKeyConfiguration];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HapticDictionaryReader_parseConfiguration_error___block_invoke;
  v9[3] = &unk_2781C8F70;
  v7 = dictionary;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __51__HapticDictionaryReader_parseConfiguration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:CHHapticPatternKeyLocality])
  {
    v7 = v6;
    if ([v7 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v8 = *kHAPIScope;
          if (v8)
          {
            v9 = v8;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v23 = 136315906;
              v24 = "HapticDictionaryReader.mm";
              v25 = 1024;
              v26 = 64;
              v27 = 2080;
              v28 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v29 = 2112;
              v30 = v7;
              _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern Locality: '%@'", &v23, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v7 forKey:@"Locality"];
    }

LABEL_43:

    goto LABEL_44;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyPriority])
  {
    v10 = v6;
    if ([v10 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v11 = *kHAPIScope;
          if (v11)
          {
            v12 = v11;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v23 = 136315906;
              v24 = "HapticDictionaryReader.mm";
              v25 = 1024;
              v26 = 71;
              v27 = 2080;
              v28 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v29 = 2112;
              v30 = v10;
              _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern Priority: '%@'", &v23, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v10 forKey:@"Priority"];
    }

    goto LABEL_43;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyHapticPowerUsage])
  {
    v13 = v6;
    if ([v13 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v14 = *kHAPIScope;
          if (v14)
          {
            v15 = v14;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v23 = 136315906;
              v24 = "HapticDictionaryReader.mm";
              v25 = 1024;
              v26 = 78;
              v27 = 2080;
              v28 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v29 = 2112;
              v30 = v13;
              _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern HapticPowerUsage: '%@'", &v23, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v13 forKey:@"HapticPowerUsage"];
    }

    goto LABEL_43;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyAudioPowerUsage])
  {
    v16 = v6;
    if ([v16 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v17 = *kHAPIScope;
          if (v17)
          {
            v18 = v17;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v23 = 136315906;
              v24 = "HapticDictionaryReader.mm";
              v25 = 1024;
              v26 = 85;
              v27 = 2080;
              v28 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern AudioPowerUsage: '%@'", &v23, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v16 forKey:@"AudioPowerUsage"];
    }

    goto LABEL_43;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyUsageCategory])
  {
    v19 = v6;
    if ([v19 length])
    {
      v21 = CALog::LogObjIfEnabled(6, kHAPIScope, v20);
      v22 = v21;
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = 136315906;
        v24 = "HapticDictionaryReader.mm";
        v25 = 1024;
        v26 = 92;
        v27 = 2080;
        v28 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern UsageCategory: '%@'", &v23, 0x26u);
      }

      [*(a1 + 32) setObject:v19 forKey:@"UsageCategory"];
    }

    goto LABEL_43;
  }

LABEL_44:
}

- (id)scanForEmbeddedResources:(id)resources
{
  v22 = *MEMORY[0x277D85DE8];
  [resources objectForKey:CHHapticPatternKeyPattern];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __51__HapticDictionaryReader_scanForEmbeddedResources___block_invoke;
        v10[3] = &unk_2781C90D0;
        v10[4] = &v15;
        [v7 enumerateKeysAndObjectsUsingBlock:v10];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
    }

    while (v4);
  }

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __51__HapticDictionaryReader_scanForEmbeddedResources___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:CHHapticPatternKeyEvent])
  {
    v6 = v5;
    v7 = [v6 objectForKey:CHHapticPatternKeyEventWaveformPath];
    if (!v7)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = [v6 objectForKey:CHHapticPatternKeyEventWaveformUseVolumeEnvelope];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v11 forKey:CHHapticAudioResourceKeyUseVolumeEnvelope];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKey:CHHapticPatternKeyEventWaveformLoopEnabled];
    if (v13)
    {
      if (v12)
      {
        [v12 setObject:v13 forKeyedSubscript:CHHapticAudioResourceKeyLoopEnabled];
      }

      else
      {
        v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v13 forKey:CHHapticAudioResourceKeyLoopEnabled];
      }
    }

    if (kHAPIScope)
    {
      v14 = *kHAPIScope;
      if (!v14)
      {
LABEL_19:
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [CHEmbeddedAudioResourceInfo alloc];
        v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0];
        v19 = [(CHEmbeddedAudioResourceInfo *)v17 initWithURL:v18 options:v12];
        [v16 addObject:v19];

        goto LABEL_20;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 136316162;
      v21 = "HapticDictionaryReader.mm";
      v22 = 1024;
      v23 = 136;
      v24 = 2080;
      v25 = "[HapticDictionaryReader scanForEmbeddedResources:]_block_invoke";
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding embedded audio resource path '%@', options '%@'", &v20, 0x30u);
    }

    goto LABEL_19;
  }

LABEL_21:
}

- (BOOL)parseEventsAndParameters:(id)parameters withBaseURL:(id)l reply:(id)reply
{
  v52 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  lCopy = l;
  replyCopy = reply;
  v23 = parametersCopy;
  v9 = [parametersCopy objectForKey:CHHapticPatternKeyPattern];
  v22 = v9;
  if (v9)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!kHAPIScope)
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v11 = *kHAPIScope;
  if (v11)
  {
LABEL_7:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HapticDictionaryReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 156;
      *&buf[18] = 2080;
      *&buf[20] = "[HapticDictionaryReader parseEventsAndParameters:withBaseURL:reply:]";
      *&buf[28] = 2112;
      *&buf[30] = CHHapticPatternKeyPattern;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Pattern dictionary is missing '%@' key", buf, 0x26u);
    }
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4814 userInfo:{0, 0}];
  (*(replyCopy + 2))(replyCopy, 0, 0, 0, v10);
LABEL_11:
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__0;
  *&buf[32] = __Block_byref_object_dispose__0;
  v51 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v13)
  {
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __69__HapticDictionaryReader_parseEventsAndParameters_withBaseURL_reply___block_invoke;
        v28[3] = &unk_2781C90F8;
        v28[4] = self;
        v29 = lCopy;
        v30 = v27;
        v31 = buf;
        v32 = &v37;
        [v16 enumerateKeysAndObjectsUsingBlock:v28];
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v13);
  }

  if (![v27 count] && !objc_msgSend(*(*&buf[8] + 40), "count") && !objc_msgSend(v38[5], "count"))
  {
    if (kHAPIScope)
    {
      v20 = *kHAPIScope;
      if (!v20)
      {
LABEL_30:
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4814 userInfo:{0, v22}];

        (*(replyCopy + 2))(replyCopy, 0, 0, 0, v18);
        v17 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v43 = 136315650;
      v44 = "HapticDictionaryReader.mm";
      v45 = 1024;
      v46 = 196;
      v47 = 2080;
      v48 = "[HapticDictionaryReader parseEventsAndParameters:withBaseURL:reply:]";
      _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Empty pattern", v43, 0x1Cu);
    }

    goto LABEL_30;
  }

  (*(replyCopy + 2))(replyCopy, v27, *(*&buf[8] + 40), v38[5], 0);
  v17 = 1;
  v18 = v10;
LABEL_22:
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(buf, 8);
  return v17;
}

void __69__HapticDictionaryReader_parseEventsAndParameters_withBaseURL_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:CHHapticPatternKeyEvent])
  {
    v6 = [*(a1 + 32) parseEvent:v5 withBaseURL:*(a1 + 40)];
    [*(a1 + 48) addObject:v6];
  }

  else if ([v13 isEqualToString:CHHapticPatternKeyParameter])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    v6 = [*(a1 + 32) parseParam:v5];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
  }

  else
  {
    if (![v13 isEqualToString:CHHapticPatternKeyParameterCurve])
    {
      goto LABEL_12;
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v6 = [*(a1 + 32) parseParamCurve:v5];
    [*(*(*(a1 + 64) + 8) + 40) addObject:v6];
  }

LABEL_12:
}

- (id)parseEvent:(id)event withBaseURL:(id)l
{
  v59 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__0;
  v53 = __Block_byref_object_dispose__0;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0xBFF0000000000000;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0xBFF0000000000000;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__HapticDictionaryReader_parseEvent_withBaseURL___block_invoke;
  v28[3] = &unk_2781C9120;
  v28[6] = &v33;
  v28[7] = &v29;
  v28[4] = self;
  v28[5] = &v49;
  v28[8] = &v37;
  v28[9] = &v43;
  [event enumerateKeysAndObjectsUsingBlock:v28];
  v7 = v50[5];
  if (!v7)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        v9 = -4830;
        v10 = @"Missing event type";
        v11 = @"CoreHapticsMissingEventTypeException";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "HapticDictionaryReader.mm";
      v57 = 1024;
      *v58 = 239;
      *&v58[4] = 2080;
      *&v58[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Missing event type", buf, 0x1Cu);
    }

    v9 = -4830;
    v10 = @"Missing event type";
    v11 = @"CoreHapticsMissingEventTypeException";
    goto LABEL_35;
  }

  if (v34[3] < 0.0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        v9 = -4822;
        v10 = @"Illegal or missing event time";
        v11 = @"CoreHapticsInvalidEventTimeException";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "HapticDictionaryReader.mm";
      v57 = 1024;
      *v58 = 243;
      *&v58[4] = 2080;
      *&v58[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal or missing event time", buf, 0x1Cu);
    }

    v9 = -4822;
    v10 = @"Illegal or missing event time";
    v11 = @"CoreHapticsInvalidEventTimeException";
    goto LABEL_35;
  }

  v12 = v30[3];
  if (v12 != -1.0 && v12 < 0.0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        v9 = -4823;
        v10 = @"Illegal event duration";
        v11 = @"CoreHapticsInvalidEventDurationException";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "HapticDictionaryReader.mm";
      v57 = 1024;
      *v58 = 247;
      *&v58[4] = 2080;
      *&v58[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal event duration", buf, 0x1Cu);
    }

    v9 = -4823;
    v10 = @"Illegal event duration";
    v11 = @"CoreHapticsInvalidEventDurationException";
    goto LABEL_35;
  }

  if ([v7 isEqualToString:CHHapticEventTypeAudioCustom])
  {
    v13 = v44[5];
    if (!v13)
    {
      if (kHAPIScope)
      {
        v8 = *kHAPIScope;
        if (!v8)
        {
          v9 = -4830;
          v10 = @"Missing or invalid audio resource path";
          v11 = @"CoreHapticsBadEventEntryException";
LABEL_36:
          Haptic_RaiseException(&v11->isa, &v10->isa, v9);
        }
      }

      else
      {
        v8 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v56 = "HapticDictionaryReader.mm";
        v57 = 1024;
        *v58 = 252;
        *&v58[4] = 2080;
        *&v58[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
        _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Custom event is missing its audio resource path", buf, 0x1Cu);
      }

      v9 = -4830;
      v10 = @"Missing or invalid audio resource path";
      v11 = @"CoreHapticsBadEventEntryException";
LABEL_35:

      goto LABEL_36;
    }

    v15 = FullURLPathFromURL(v13, lCopy);
    if (!v15)
    {
      v16 = CALog::LogObjIfEnabled(1, kHAPIScope, v14);
      v17 = v16;
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v56 = "HapticDictionaryReader.mm";
        v57 = 1024;
        *v58 = 261;
        *&v58[4] = 2080;
        *&v58[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
        _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Custom event's audio resource path cannot be resolved", buf, 0x1Cu);
      }

      Haptic_RaiseException(&cfstr_Corehapticsbad.isa, &cfstr_InvalidAudioRe.isa, -4830);
    }

    AudioResource::AudioResource(buf, v15);
    if (AudioResource::verifyAudioFile(v18, 1))
    {
      Haptic_RaiseException(&cfstr_Corehapticsinv_1.isa, &cfstr_InvalidAudioRe_0.isa, -4824);
    }

    v26 = [CHHapticEvent alloc];
    ++self->_urlIndex;
    v24 = [CHHapticEvent initWithAudioResourceIndex:v26 parameters:"initWithAudioResourceIndex:parameters:time:duration:" time:v34[3] duration:*&v58[2] / *&v58[10]];
    AudioResource::~AudioResource(buf);
  }

  else
  {
    v22 = [CHHapticEvent alloc];
    v23 = v30[3];
    if (v23 == -1.0)
    {
      v23 = 0.0;
    }

    v24 = [(CHHapticEvent *)v22 initWithEventType:v50[5] parameters:v38[5] relativeTime:v34[3] duration:v23];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v24;
}

void __49__HapticDictionaryReader_parseEvent_withBaseURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = v5;
  if ([v17 isEqualToString:CHHapticPatternKeyEventType])
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (([v17 isEqualToString:CHHapticPatternKeyTime] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"EventTime"))
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v10;
    v12 = *(a1 + 48);
LABEL_6:
    *(*(v12 + 8) + 24) = v11;
    goto LABEL_7;
  }

  if ([v17 isEqualToString:CHHapticPatternKeyEventDuration])
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v13;
    v12 = *(a1 + 56);
    goto LABEL_6;
  }

  if ([v17 isEqualToString:CHHapticPatternKeyEventParameters])
  {
    v14 = [*(a1 + 32) parseEventParams:v6];
    v15 = *(a1 + 64);
LABEL_17:
    v16 = *(v15 + 8);
    v9 = *(v16 + 40);
    *(v16 + 40) = v14;
    goto LABEL_7;
  }

  if ([v17 isEqualToString:CHHapticPatternKeyEventWaveformPath])
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:0];
    v15 = *(a1 + 72);
    goto LABEL_17;
  }

LABEL_8:
}

- (id)parseEventParams:(id)params
{
  v30 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = paramsCopy;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 objectForKey:CHHapticPatternKeyParameterID];
        if (!v8)
        {
          if (kHAPIScope)
          {
            v9 = *kHAPIScope;
            if (!v9)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v9 = MEMORY[0x277D86220];
            v10 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v24 = "HapticDictionaryReader.mm";
            v25 = 1024;
            v26 = 288;
            v27 = 2080;
            v28 = "[HapticDictionaryReader parseEventParams:]";
            _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event parameter has invalid or missing parameter ID", buf, 0x1Cu);
          }

LABEL_14:
          Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_EventParameter.isa, -4831);
        }

        v11 = [v7 objectForKey:CHHapticPatternKeyParameterValue];
        if (!v11)
        {
          if (kHAPIScope)
          {
            v12 = *kHAPIScope;
            if (!v12)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v12 = MEMORY[0x277D86220];
            v13 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v24 = "HapticDictionaryReader.mm";
            v25 = 1024;
            v26 = 295;
            v27 = 2080;
            v28 = "[HapticDictionaryReader parseEventParams:]";
            _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event parameter has invalid or missing parameter value", buf, 0x1Cu);
          }

LABEL_23:
          Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_EventParameter_0.isa, -4831);
        }

        v14 = [CHHapticEventParameter alloc];
        [v11 floatValue];
        v15 = [(CHHapticEventParameter *)v14 initWithParameterID:v8 value:?];
        [v3 addObject:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)parseParam:(id)param
{
  v35 = *MEMORY[0x277D85DE8];
  paramCopy = param;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0xBFF0000000000000;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__HapticDictionaryReader_parseParam___block_invoke;
  v12[3] = &unk_2781C9148;
  v12[4] = &v21;
  v12[5] = &v17;
  v12[6] = &v13;
  [paramCopy enumerateKeysAndObjectsUsingBlock:v12];
  if (!v22[5] || v18[3] == -1.0)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v22[5] == 0;
      *buf = 136315906;
      v28 = "HapticDictionaryReader.mm";
      if (v9)
      {
        v10 = "type";
      }

      else
      {
        v10 = "time";
      }

      v29 = 1024;
      v30 = 330;
      v31 = 2080;
      v32 = "[HapticDictionaryReader parseParam:]";
      v33 = 2080;
      v34 = v10;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Param is missing a %s", buf, 0x26u);
    }

LABEL_14:
    Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_ParameterHasIn.isa, -4831);
  }

  v4 = [CHHapticDynamicParameter alloc];
  v5 = v14[3];
  *&v5 = v5;
  v6 = [(CHHapticDynamicParameter *)v4 initWithParameterID:v22[5] value:v5 relativeTime:v18[3]];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v6;
}

void __37__HapticDictionaryReader_parseParam___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = v5;
  if ([v14 isEqualToString:CHHapticPatternKeyParameterID])
  {
    v7 = *(a1[4] + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (([v14 isEqualToString:CHHapticPatternKeyTime] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"ParameterTime"))
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v10;
    v12 = a1[5];
LABEL_6:
    *(*(v12 + 8) + 24) = v11;
    goto LABEL_7;
  }

  if ([v14 isEqualToString:CHHapticPatternKeyParameterValue])
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v13;
    v12 = a1[6];
    goto LABEL_6;
  }

LABEL_8:
}

- (id)parseParamCurve:(id)curve
{
  v35 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0xBFF0000000000000;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HapticDictionaryReader_parseParamCurve___block_invoke;
  v10[3] = &unk_2781C9170;
  v10[6] = &v17;
  v10[7] = &v11;
  v10[4] = self;
  v10[5] = &v21;
  [curve enumerateKeysAndObjectsUsingBlock:v10];
  if (!v22[5] || v18[3] == -1.0)
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = v22[5] == 0;
      *buf = 136315906;
      v28 = "HapticDictionaryReader.mm";
      if (v7)
      {
        v8 = "type";
      }

      else
      {
        v8 = "time";
      }

      v29 = 1024;
      v30 = 359;
      v31 = 2080;
      v32 = "[HapticDictionaryReader parseParamCurve:]";
      v33 = 2080;
      v34 = v8;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Param is missing a %s", buf, 0x26u);
    }

LABEL_14:
    Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_Parametercurve.isa, -4831);
  }

  v3 = [CHHapticParameterCurve alloc];
  v4 = [(CHHapticParameterCurve *)v3 initWithParameterID:v22[5] controlPoints:v12[5] relativeTime:v18[3]];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v4;
}

void __42__HapticDictionaryReader_parseParamCurve___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  if ([v13 isEqualToString:CHHapticPatternKeyParameterID])
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else if ([v13 isEqualToString:CHHapticPatternKeyTime])
  {
    v9 = v6;
    [v9 floatValue];
    *(*(*(a1 + 48) + 8) + 24) = v10;
  }

  else
  {
    if (![v13 isEqualToString:CHHapticPatternKeyParameterCurveControlPoints])
    {
      goto LABEL_8;
    }

    v11 = [*(a1 + 32) parseParamCurveControlPoints:v6];
    v12 = *(*(a1 + 56) + 8);
    v9 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

LABEL_8:
}

- (id)parseParamCurveControlPoints:(id)points
{
  v35 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = pointsCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v22 = pointsCopy;
    v6 = *v25;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v24 + 1) + 8 * v7);
      v9 = [v8 objectForKey:{CHHapticPatternKeyTime, v22}];
      if (!v9)
      {
        break;
      }

      v10 = [v8 objectForKey:CHHapticPatternKeyParameterValue];
      if (!v10)
      {
        if (kHAPIScope)
        {
          v18 = *kHAPIScope;
          if (!v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v18 = MEMORY[0x277D86220];
          v20 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v29 = "HapticDictionaryReader.mm";
          v30 = 1024;
          v31 = 378;
          v32 = 2080;
          v33 = "[HapticDictionaryReader parseParamCurveControlPoints:]";
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Parameter curve control point has invalid or missing value", buf, 0x1Cu);
        }

LABEL_24:
LABEL_25:

        v17 = v4;
        v4 = 0;
        goto LABEL_26;
      }

      v11 = [CHHapticParameterCurveControlPoint alloc];
      [v9 doubleValue];
      v13 = v12;
      [v10 floatValue];
      LODWORD(v15) = v14;
      v16 = [(CHHapticParameterCurveControlPoint *)v11 initWithRelativeTime:v13 value:v15];
      [v4 addObject:v16];

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (kHAPIScope)
    {
      v9 = *kHAPIScope;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "HapticDictionaryReader.mm";
      v30 = 1024;
      v31 = 372;
      v32 = 2080;
      v33 = "[HapticDictionaryReader parseParamCurveControlPoints:]";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Parameter curve control point has invalid or missing time", buf, 0x1Cu);
    }

    goto LABEL_24;
  }

LABEL_10:
  v17 = obj;
LABEL_26:

  return v4;
}

@end