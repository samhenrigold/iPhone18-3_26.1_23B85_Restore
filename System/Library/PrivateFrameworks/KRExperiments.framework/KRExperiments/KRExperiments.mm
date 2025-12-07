void PrewarmingExperimentUpdated(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255783000, v1, OS_LOG_TYPE_DEFAULT, "Beginning to refresh Prewarming experiment state", buf, 2u);
  }

  v2 = [MEMORY[0x277D73660] clientWithIdentifier:359];
  v3 = [v2 treatmentIdWithNamespaceName:@"COREOS_FAST_PREWARMING"];
  v4 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_255783000, v1, OS_LOG_TYPE_DEFAULT, "PrewarmingExperimentUpdated: checking factors...", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v14 = __PrewarmingExperimentUpdated_block_invoke;
    v15 = &unk_2797F3EA8;
    v16 = v1;
    v5 = v13;
    v6 = [v2 factorLevelsWithNamespaceName:@"COREOS_FAST_PREWARMING"];
    if ([v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        v14(v5, v8);

        ++v7;
      }

      while (v7 < [v6 count]);
    }

    v9 = v16;
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_255783000, v1, OS_LOG_TYPE_DEFAULT, "PrewarmingExperimentUpdated: no active treatment", buf, 2u);
    }

    v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coreos.fast"];
    v10 = [v9 objectForKey:@"prewarming_previous_enable_2"];

    if (v10)
    {
      v11 = [v9 integerForKey:@"prewarming_previous_enable_2"];
      if ((v11 - 10) > 2)
      {
        v11 = 10;
      }

      updated = UpdatePrewarmingDefault(v1, v9, @"prewarming_enable_2", v11);
      UpdatePrewarmingDefault(v1, v9, @"prewarming_previous_enable_2", 10);
      if ((updated & 1) == 0)
      {
        sysctlbyname("kern.trial_experiment_id", 0, 0, "null", 4uLL);
      }
    }
  }
}

uint64_t UpdatePrewarmingDefault(void *a1, void *a2, void *a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v8 objectForKey:v9];
  v21 = v10;
  if (a4 == 10 && v10)
  {
    v11 = 0;
    v12 = 1;
LABEL_4:
    v13 = v11;
    do
    {
      [v8 removeObjectForKey:v9];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v23 = @"com.apple.coreos.fast";
        *&v23[8] = 2112;
        v24 = v9;
        _os_log_impl(&dword_255783000, v7, OS_LOG_TYPE_DEFAULT, "Executed 'defaults delete %@ %@'", buf, 0x16u);
      }

      v14 = [v8 objectForKey:v9];

      if (!v14)
      {
        v15 = 0;
        v11 = 1;
        v16 = v12++ == 2;
        if (v16)
        {
          goto LABEL_36;
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v23 = v12;
        *&v23[4] = 1024;
        *&v23[6] = 2;
        _os_log_impl(&dword_255783000, v7, OS_LOG_TYPE_DEFAULT, "UpdatePrewarmingDefault: Attempt %d/%d at removing default failed, retrying", buf, 0xEu);
      }

      ++v12;
    }

    while (v12 != 3);
    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        UpdatePrewarmingDefault_cold_2(v7);
      }

LABEL_35:
      v15 = 1;
      goto LABEL_36;
    }
  }

  else if ((a4 - 11) <= 1)
  {
    v17 = 0;
    v18 = 1;
LABEL_17:
    v20 = v17;
    do
    {
      [v8 setBool:a4 != 12 forKey:v9];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v23 = @"com.apple.coreos.fast";
        *&v23[8] = 2112;
        v24 = v9;
        v25 = 1024;
        v26 = a4 != 12;
        _os_log_impl(&dword_255783000, v7, OS_LOG_TYPE_DEFAULT, "Executed 'defaults write %@ %@ %d'", buf, 0x1Cu);
      }

      if ((a4 != 12) == [v8 BOOLForKey:v9])
      {
        v15 = 0;
        v17 = 1;
        v16 = v18++ == 2;
        if (v16)
        {
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v23 = v18;
        *&v23[4] = 1024;
        *&v23[6] = 2;
        _os_log_impl(&dword_255783000, v7, OS_LOG_TYPE_DEFAULT, "UpdatePrewarmingDefault: Attempt %d/%d at setting default failed, retrying", buf, 0xEu);
      }

      ++v18;
    }

    while (v18 != 3);
    if ((v20 & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        UpdatePrewarmingDefault_cold_1(v7);
      }

      goto LABEL_35;
    }
  }

  v15 = 0;
LABEL_36:
  CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]);

  return v15;
}

void __PrewarmingExperimentUpdated_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 factor];
  v5 = [v3 level];

  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(__CFString *)v4 name];
    v22 = 138412546;
    v23 = @"COREOS_FAST_PREWARMING";
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_255783000, v7, OS_LOG_TYPE_DEFAULT, "(%@) discovered factor '%@'", &v22, 0x16u);
  }

  v9 = [(__CFString *)v4 name];
  v10 = [v9 isEqual:@"prewarming_enable"];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coreos.fast"];
    v12 = [v5 BOOLeanValue];
    v13 = [v11 objectForKey:@"prewarming_previous_enable_2"];

    if (v13 && [v11 integerForKey:@"prewarming_previous_enable_2"] - 10 < 3)
    {
      v14 = 0;
      v15 = 10;
    }

    else
    {
      v17 = [v11 objectForKey:@"prewarming_enable_2"];

      if (v17)
      {
        if ([v11 BOOLForKey:@"prewarming_enable_2"])
        {
          v15 = 11;
        }

        else
        {
          v15 = 12;
        }
      }

      else
      {
        v15 = 10;
      }

      v14 = 1;
    }

    if (v12)
    {
      v18 = 11;
    }

    else
    {
      v18 = 12;
    }

    if ((UpdatePrewarmingDefault(*(a1 + 32), v11, @"prewarming_enable_2", v18) & 1) == 0)
    {
      if (v12)
      {
        v19 = "on";
      }

      else
      {
        v19 = "off";
      }

      if (v12)
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }

      sysctlbyname("kern.trial_experiment_id", 0, 0, v19, v20);
    }

    if (v14)
    {
      [v11 setInteger:v15 forKey:@"prewarming_previous_enable_2"];
      v21 = *(a1 + 32);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412802;
        v23 = @"com.apple.coreos.fast";
        v24 = 2112;
        v25 = @"prewarming_previous_enable_2";
        v26 = 1024;
        v27 = v15;
        _os_log_impl(&dword_255783000, v21, OS_LOG_TYPE_DEFAULT, "Executed 'defaults write %@ %@ %d'", &v22, 0x1Cu);
      }
    }

    CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]);
  }

  else
  {
    v16 = *(a1 + 32);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = @"COREOS_FAST_PREWARMING";
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_255783000, v16, OS_LOG_TYPE_DEFAULT, "(%@) WARNING -- UNKNOWN factor %@ !", &v22, 0x16u);
    }
  }
}

uint64_t KRExperimentsUpdateExperimentState(unsigned int a1, int a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.coreos.sysperf.KRExperiments", "KRExperiments");
  v3 = [MEMORY[0x277D73660] clientWithIdentifier:241];
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v4 = [v3 trialIdentifiersWithNamespaceName:@"FREEZER_POLICIES" experimentId:&v78 deploymentId:&v79 treatmentId:&v77];
  v68 = v78;
  v67 = v77;
  if ((v4 & 1) == 0)
  {
    KRExperimentsUpdateExperimentState_cold_1();
  }

  oslog = v2;
  v5 = v3;
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v64 = v5;
  v6 = [v5 factorLevelsWithNamespaceName:@"FREEZER_POLICIES"];
  if ([v6 count])
  {
    for (i = 0; i < [v6 count]; ++i)
    {
      v8 = [v6 objectAtIndexedSubscript:i];
      if (([v8 hasFactor] & 1) == 0)
      {
        KRExperimentsUpdateExperimentState_cold_1();
      }

      if (([v8 hasLevel] & 1) == 0)
      {
        KRExperimentsUpdateExperimentState_cold_1();
      }

      v9 = [v8 factor];
      v10 = [v9 name];
      v11 = [v10 componentsSeparatedByString:@"."];

      if (![v11 count])
      {
        v12 = oslog;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          KRExperimentsUpdateExperimentState_cold_4(v89, v9);
        }

        goto LABEL_17;
      }

      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v11 subarrayWithRange:{1, objc_msgSend(v11, "count") - 1}];
      v14 = [v13 componentsJoinedByString:@"."];

      if ([v12 isEqualToString:@"meta"])
      {
        v15 = [v8 level];
        v16 = v70;
      }

      else
      {
        if (![v12 isEqualToString:@"sysctl"])
        {
          v15 = oslog;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            KRExperimentsUpdateExperimentState_cold_4(v90, v9);
          }

          goto LABEL_16;
        }

        v15 = [v8 level];
        v16 = v69;
      }

      [v16 setObject:v15 forKeyedSubscript:v14];
LABEL_16:

LABEL_17:
    }
  }

  v17 = v70;
  v18 = v69;

  v19 = v70;
  v20 = v69;
  v21 = [v19 objectForKey:@"component"];
  v22 = [v21 stringValue];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_23;
  }

  if (([v22 isEqualToString:@"freezer"] & 1) == 0)
  {
    if (([v23 isEqualToString:@"stackshot"] & 1) == 0)
    {
      [v23 isEqualToString:@"libmalloc"];
    }

LABEL_23:
    v24 = 1;
    goto LABEL_24;
  }

  v24 = 0;
LABEL_24:

  v25 = [v5 experimentIdentifiersWithNamespaceName:@"FREEZER_POLICIES"];

  v26 = v24 | a2 | a1;
  if (v26 == 1 && v25)
  {
    v61 = v24;
    v62 = v20;
    v63 = v19;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v27 = v20;
    v28 = [v27 countByEnumeratingWithState:&v73 objects:v88 count:16];
    if (v28)
    {
      v29 = v28;
      v71 = *v74;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v74 != v71)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v73 + 1) + 8 * j);
          v32 = [v27 objectForKeyedSubscript:v31];
          v33 = oslog;
          v34 = v31;
          v35 = v32;
          v36 = [v35 levelOneOfCase];
          v81 = 0;
          v80 = 0;
          v37 = [v34 cStringUsingEncoding:1];
          switch(v36)
          {
            case 13:
              v42 = [v35 longValue];
              v81 = v42;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v83 = v34;
                v84 = 2048;
                v85 = v42;
                _os_log_impl(&dword_255783000, v33, OS_LOG_TYPE_DEFAULT, "Setting %@ to %llu", buf, 0x16u);
              }

              v39 = 0;
              v40 = &v81;
              v41 = 8;
              break;
            case 11:
              v39 = [v35 stringValue];
              v40 = [v39 cStringUsingEncoding:1];
              v41 = strlen(v40);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v83 = v34;
                v84 = 2080;
                v85 = v40;
                _os_log_impl(&dword_255783000, v33, OS_LOG_TYPE_DEFAULT, "Setting %@ to %s", buf, 0x16u);
              }

              break;
            case 10:
              v38 = [v35 BOOLeanValue];
              v80 = v38;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v83 = v34;
                v84 = 1024;
                LODWORD(v85) = v38;
                _os_log_impl(&dword_255783000, v33, OS_LOG_TYPE_DEFAULT, "Setting %@ to %u", buf, 0x12u);
              }

              v39 = 0;
              v40 = &v80;
              v41 = 4;
              break;
            default:
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v83) = v36;
                _os_log_error_impl(&dword_255783000, v33, OS_LOG_TYPE_ERROR, "Attempt to set unsupported factor type: %d", buf, 8u);
              }

              v39 = 0;
              v41 = 0;
              v40 = 0;
              break;
          }

          if (sysctlbyname(v37, 0, 0, v40, v41))
          {
            v43 = v33;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = __error();
              v45 = strerror(*v44);
              *buf = 136315394;
              v83 = v37;
              v84 = 2080;
              v85 = v45;
              _os_log_error_impl(&dword_255783000, v43, OS_LOG_TYPE_ERROR, "Unable to set %s: %s", buf, 0x16u);
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v73 objects:v88 count:16];
      }

      while (v29);
    }

    v20 = v62;
    v19 = v63;
    if (((a2 ^ 1 | a1 | v61) & 1) == 0)
    {
      v46 = oslog;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_255783000, v46, OS_LOG_TYPE_DEFAULT, "Resetting freezer state to enroll in an experiment. All frozen processes will be killed.", buf, 2u);
      }

      if (memorystatus_control())
      {
        v47 = v46;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = __error();
          v49 = strerror(*v48);
          *buf = 136315138;
          v83 = v49;
          _os_log_impl(&dword_255783000, v47, OS_LOG_TYPE_DEFAULT, "Error while trying to reset freezer state: %s", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_255783000, v46, OS_LOG_TYPE_DEFAULT, "Freezer state reset.", buf, 2u);
      }
    }

    v50 = v79;
    v51 = v68;
    *buf = v50;
    v52 = v67;
    v53 = v52;
    if (v52)
    {
      v54 = [v52 UTF8String];
      if (v54)
      {
        v55 = v54;
        v56 = strlen(v54);
        sysctlbyname("kern.trial_treatment_id", 0, 0, v55, v56);
      }
    }

    v5 = v64;
    if (v51)
    {
      v57 = [v51 UTF8String];
      if (v57)
      {
        v58 = v57;
        v59 = strlen(v57);
        sysctlbyname("kern.trial_experiment_id", 0, 0, v58, v59);
      }
    }

    sysctlbyname("kern.trial_deployment_id", 0, 0, buf, 4uLL);

    v26 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v83 = v53;
      v84 = 2112;
      v85 = v51;
      v86 = 1024;
      v87 = v79;
      _os_log_impl(&dword_255783000, oslog, OS_LOG_TYPE_DEFAULT, "Set trial treatment information. %@ %@ %d", buf, 0x1Cu);
    }
  }

  return v26;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void UpdatePrewarmingDefault_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 2;
  _os_log_fault_impl(&dword_255783000, log, OS_LOG_TYPE_FAULT, "UpdatePrewarmingDefault: All %d attempts of setting default failed", v1, 8u);
}

void UpdatePrewarmingDefault_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 2;
  _os_log_fault_impl(&dword_255783000, log, OS_LOG_TYPE_FAULT, "UpdatePrewarmingDefault: All %d attempts at removing the default failed", v1, 8u);
}

void KRExperimentsUpdateExperimentState_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void KRExperimentsUpdateExperimentState_cold_4(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1(&dword_255783000, v5, v6, "Skipping unknown factor: %@");
}