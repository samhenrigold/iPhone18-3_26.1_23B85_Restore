@interface TRITaskUtils
+ (BOOL)updateExperimentHistoryDatabaseWithAllocationStatus:(unsigned __int8)status forExperiment:(id)experiment treatment:(id)treatment deployment:(int)deployment experimentRecord:(id)record isBecomingObsolete:(BOOL)obsolete categoricalMetric:(id)metric context:(id)self0;
+ (id)_experimentStateForAnalyticsFromInternalState:(unsigned __int8)state;
+ (id)_rolloutStateForAnalyticsFromInternalState:(unsigned __int8)state;
+ (void)addAttribution:(id)attribution toTaskTags:(id)tags;
+ (void)updateRolloutHistoryDatabaseWithAllocationStatus:(unsigned __int8)status forRollout:(id)rollout ramp:(id)ramp deployment:(int)deployment fps:(id)fps namespaces:(id)namespaces telemetryMetric:(id)metric rolloutRecord:(id)self0 isBecomingObsolete:(BOOL)self1 context:(id)self2;
@end

@implementation TRITaskUtils

+ (void)addAttribution:(id)attribution toTaskTags:(id)tags
{
  attributionCopy = attribution;
  tagsCopy = tags;
  if (attributionCopy)
  {
    if (!tagsCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskUtils.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"tags"}];
    }

    teamIdentifier = [attributionCopy teamIdentifier];

    if (teamIdentifier)
    {
      v9 = MEMORY[0x277CCACA8];
      teamIdentifier2 = [attributionCopy teamIdentifier];
      v11 = [v9 stringWithFormat:@"teamId=%@", teamIdentifier2];
      [tagsCopy addObject:v11];
    }

    v12 = MEMORY[0x277CCACA8];
    networkOptions = [attributionCopy networkOptions];
    v14 = [v12 stringWithFormat:@"netopt.cellular=%d", objc_msgSend(networkOptions, "allowsCellularAccess")];
    [tagsCopy addObject:v14];

    v15 = MEMORY[0x277CCACA8];
    networkOptions2 = [attributionCopy networkOptions];
    v17 = [v15 stringWithFormat:@"netopt.discretion=%lu", objc_msgSend(networkOptions2, "discretionaryBehavior")];
    [tagsCopy addObject:v17];
  }
}

+ (id)_experimentStateForAnalyticsFromInternalState:(unsigned __int8)state
{
  stateCopy = state;
  v9[8] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_287FC4AE0;
  v8[1] = &unk_287FC4AF8;
  v9[0] = @"exp_st_AL";
  v9[1] = @"exp_st_FE";
  v8[2] = &unk_287FC4B10;
  v8[3] = &unk_287FC4B28;
  v9[2] = @"exp_st_AC";
  v9[3] = @"exp_st_DE";
  v8[4] = &unk_287FC4B40;
  v8[5] = &unk_287FC4B58;
  v9[4] = @"exp_st_AL_F";
  v9[5] = @"exp_st_FE_F";
  v8[6] = &unk_287FC4B70;
  v8[7] = &unk_287FC4B88;
  v9[6] = @"exp_st_AC_F";
  v9[7] = @"exp_st_DE_F";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:stateCopy];
  v6 = [v4 objectForKey:v5];

  return v6;
}

+ (BOOL)updateExperimentHistoryDatabaseWithAllocationStatus:(unsigned __int8)status forExperiment:(id)experiment treatment:(id)treatment deployment:(int)deployment experimentRecord:(id)record isBecomingObsolete:(BOOL)obsolete categoricalMetric:(id)metric context:(id)self0
{
  obsoleteCopy = obsolete;
  log = status;
  v125 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  treatmentCopy = treatment;
  recordCopy = record;
  metricCopy = metric;
  contextCopy = context;
  v17 = experimentCopy;
  v18 = treatmentCopy;
  v19 = v18;
  v105 = v17;
  v98 = v18;
  v101 = recordCopy;
  if (recordCopy)
  {
    experimentId = v17;
    if (!v17)
    {
      experimentDeployment = [recordCopy experimentDeployment];
      experimentId = [experimentDeployment experimentId];
    }

    treatmentId = v19;
    if ([v19 isEqualToString:@"unspecified-or-default-treatment"])
    {
      treatmentId = [recordCopy treatmentId];
    }

    v106 = experimentId;
    v93 = metricCopy;
    if (deployment == -1)
    {
      experimentDeployment2 = [recordCopy experimentDeployment];
      deployment = [experimentDeployment2 deploymentId];
    }

    deploymentCopy2 = deployment;
    deploymentEnvironment = [recordCopy deploymentEnvironment];
    v24 = objc_alloc(MEMORY[0x277CBEB18]);
    namespaces = [recordCopy namespaces];
    v26 = [v24 initWithCapacity:{objc_msgSend(namespaces, "count")}];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    namespaces2 = [recordCopy namespaces];
    v28 = [namespaces2 countByEnumeratingWithState:&v108 objects:v124 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v109;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v109 != v30)
          {
            objc_enumerationMutation(namespaces2);
          }

          v32 = *(*(&v108 + 1) + 8 * i);
          v33 = objc_alloc(MEMORY[0x277D73808]);
          name = [v32 name];
          v35 = [v33 initWithName:name compatibilityVersion:{objc_msgSend(v32, "compatibilityVersion")}];

          [v26 addObject:v35];
        }

        v29 = [namespaces2 countByEnumeratingWithState:&v108 objects:v124 count:16];
      }

      while (v29);
    }

    v17 = v105;
    v36 = v106;
    metricCopy = v93;
    v19 = v98;
  }

  else
  {
    deploymentCopy2 = deployment;
    v26 = 0;
    deploymentEnvironment = 0;
    treatmentId = v18;
    v36 = v17;
  }

  v37 = contextCopy;
  v107 = v36;
  if (v36)
  {
    v38 = metricCopy;
    if (treatmentId)
    {
      v39 = treatmentId;
    }

    else
    {
      v39 = @"unspecified-or-default-treatment";
    }

    v40 = objc_alloc(MEMORY[0x277D736C8]);
    v41 = objc_opt_new();
    v42 = deploymentCopy2;
    v43 = [v40 initWithEventDate:v41 eventType:log deploymentEnvironment:deploymentEnvironment experimentId:v36 deploymentId:deploymentCopy2 treatmentId:v39 errorOrDeactivationReason:0 namespaces:v26];

    experimentHistoryDatabase = [contextCopy experimentHistoryDatabase];
    v45 = v36;
    v46 = v43;
    v47 = [experimentHistoryDatabase getAllAllocationStatusesForExperimentId:v45 deploymentId:deploymentCopy2 treatmentId:v39];

    experimentHistoryDatabase2 = [contextCopy experimentHistoryDatabase];
    v49 = [experimentHistoryDatabase2 addRecord:v46];

    v50 = v49;
    v95 = v47;
    if ((v49 & 1) == 0)
    {
      v65 = TRILogCategory_Server();
      v64 = v101;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x277D73648] categoricalValueForExperimentAllocationStatus:log];
        v87 = v86 = v50;
        *buf = 138544130;
        v114 = v87;
        v115 = 2112;
        *v116 = v39;
        *&v116[8] = 2114;
        *&v116[10] = v107;
        *&v116[18] = 1024;
        v117[0] = deploymentCopy2;
        _os_log_error_impl(&dword_26F567000, v65, OS_LOG_TYPE_ERROR, "Failed to update experiment history database while marking %{public}@ of treatment %@ : experiment %{public}@ : deployment %d. Note: this allocation status will not be logged to analytics.", buf, 0x26u);

        v50 = v86;
      }

      metricCopy = v38;
      v17 = v105;
      goto LABEL_64;
    }

    v88 = v49;
    if (obsoleteCopy)
    {
      v51 = [v47 count];
      v52 = v47;
      metricCopy = v38;
      if (v51)
      {
        v122[0] = &unk_287FC4AE0;
        v120 = &unk_287FC4B28;
        v121 = @"exp_st_AL_O";
        v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v122[1] = &unk_287FC4AF8;
        v123[0] = v53;
        v118 = &unk_287FC4B28;
        v119 = @"exp_st_FE_O";
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        v123[1] = v54;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];

        v56 = [v52 objectAtIndexedSubscript:0];
        v57 = [v55 objectForKeyedSubscript:v56];
        v58 = log;
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:log];
        v60 = [v57 objectForKey:v59];

        metricCopy = v38;
        v17 = v105;
        v92 = v60;
        if (!v60)
        {
          v61 = TRILogCategory_Server();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [v95 objectAtIndexedSubscript:0];
            intValue = [v62 intValue];
            *buf = 138413314;
            v114 = v107;
            v115 = 2112;
            *v116 = v39;
            *&v116[8] = 1024;
            *&v116[10] = deploymentCopy2;
            *&v116[14] = 1024;
            *&v116[16] = intValue;
            LOWORD(v117[0]) = 1024;
            *(v117 + 2) = log;
            _os_log_impl(&dword_26F567000, v61, OS_LOG_TYPE_DEFAULT, "Experiment - Treatment - Deployment: %@ - %@ - %d. Previous state: %d, Current state: %d", buf, 0x28u);
          }
        }

        v37 = contextCopy;
        v42 = deploymentCopy2;
LABEL_37:
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v58];
        v67 = [v95 containsObject:v66];

        if (v67)
        {
          v19 = v98;
          v64 = v101;
          v50 = v88;
LABEL_63:
          v65 = v92;
LABEL_64:

          goto LABEL_65;
        }

        v50 = v88;
        if (v92)
        {
          v68 = v92;
        }

        else
        {
          v68 = [self _experimentStateForAnalyticsFromInternalState:v58];
          if (!v68)
          {
            loga = TRILogCategory_Server();
            v19 = v98;
            if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              v114 = v107;
              v115 = 2112;
              *v116 = v39;
              *&v116[8] = 1024;
              *&v116[10] = v42;
              *&v116[14] = 1024;
              *&v116[16] = v58;
              _os_log_impl(&dword_26F567000, loga, OS_LOG_TYPE_DEFAULT, "Experiment - Treatment -  Deployment: %@ -  %@ - %d. There was nothing to log for state: %d", buf, 0x22u);
            }

            v64 = v101;
            goto LABEL_62;
          }
        }

        loga = v68;
        if (-[NSObject isEqualToString:](v68, "isEqualToString:", @"exp_st_DE") && ([v95 containsObject:&unk_287FC4B10] & 1) == 0)
        {
          v83 = TRILogCategory_Server();
          v19 = v98;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v114 = v107;
            v115 = 2112;
            *v116 = v39;
            *&v116[8] = 1024;
            *&v116[10] = v42;
            _os_log_impl(&dword_26F567000, v83, OS_LOG_TYPE_DEFAULT, "Experiment - Treatment -  Deployment: %@ -  %@ - %d. Ignoring metric for deactivation transition due to not having activated before.", buf, 0x1Cu);
          }
        }

        else
        {
          if (metricCopy)
          {
            [MEMORY[0x277D73B40] metricWithName:v68 categoricalValue:metricCopy];
          }

          else
          {
            [MEMORY[0x277D73B40] metricWithName:v68];
          }
          v90 = ;
          v69 = deploymentEnvironment;
          v70 = objc_opt_new();
          ensureExperimentFields = [v70 ensureExperimentFields];
          [ensureExperimentFields setClientExperimentId:v107];

          if (v39 == @"unspecified-or-default-treatment")
          {
            v72 = 0;
          }

          else
          {
            v72 = v39;
          }

          ensureExperimentFields2 = [v70 ensureExperimentFields];
          [ensureExperimentFields2 setClientTreatmentId:v72];

          if (v42 == -1)
          {
            v74 = 0;
          }

          else
          {
            v74 = [MEMORY[0x277CCABB0] numberWithInt:v42];
          }

          v97 = v46;
          stringValue = [v74 stringValue];
          [v70 setClientDeploymentId:stringValue];

          if (v42 != -1)
          {
          }

          v94 = metricCopy;
          v76 = TRIDeploymentEnvironment_EnumDescriptor();
          v77 = [v76 textFormatNameForValue:v69];

          if (!v77)
          {
            v77 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", v69];
          }

          [v70 setClientDeploymentEnv:v77];
          v37 = contextCopy;
          client = [contextCopy client];
          logger = [client logger];
          client2 = [contextCopy client];
          [client2 trackingId];
          v81 = v80 = v70;
          v112 = v90;
          v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
          [logger logWithTrackingId:v81 metrics:v82 dimensions:0 trialSystemTelemetry:v80];

          v17 = v105;
          metricCopy = v94;
          v46 = v97;
          v19 = v98;
        }

        v64 = v101;
        v50 = v88;
LABEL_62:

        goto LABEL_63;
      }

      v92 = 0;
    }

    else
    {
      v92 = 0;
      metricCopy = v38;
    }

    v17 = v105;
    v58 = log;
    goto LABEL_37;
  }

  v46 = TRILogCategory_Server();
  v64 = v101;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v85 = [MEMORY[0x277D73648] categoricalValueForExperimentAllocationStatus:log];
    *buf = 138412802;
    v39 = treatmentId;
    v114 = treatmentId;
    v115 = 1024;
    *v116 = deploymentCopy2;
    *&v116[4] = 2114;
    *&v116[6] = v85;
    _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "ExperimentID was found to be empty while creating a record for the Experiment History Database. Treatment %@ : Deployment %d; Allocation Status: %{public}@", buf, 0x1Cu);

    v50 = 0;
  }

  else
  {
    v50 = 0;
    v39 = treatmentId;
  }

LABEL_65:

  return v50;
}

+ (id)_rolloutStateForAnalyticsFromInternalState:(unsigned __int8)state
{
  stateCopy = state;
  v9[8] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_287FC4AE0;
  v8[1] = &unk_287FC4B10;
  v9[0] = @"roll_st_AL";
  v9[1] = @"roll_st_FE";
  v8[2] = &unk_287FC4B28;
  v8[3] = &unk_287FC4AF8;
  v9[2] = @"roll_st_AC";
  v9[3] = @"roll_st_DE";
  v8[4] = &unk_287FC4BA0;
  v8[5] = &unk_287FC4B40;
  v9[4] = @"roll_st_AL_F";
  v9[5] = @"roll_st_FE_F";
  v8[6] = &unk_287FC4B58;
  v8[7] = &unk_287FC4B70;
  v9[6] = @"roll_st_AC_F";
  v9[7] = @"roll_st_DE_F";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:stateCopy];
  v6 = [v4 objectForKey:v5];

  return v6;
}

+ (void)updateRolloutHistoryDatabaseWithAllocationStatus:(unsigned __int8)status forRollout:(id)rollout ramp:(id)ramp deployment:(int)deployment fps:(id)fps namespaces:(id)namespaces telemetryMetric:(id)metric rolloutRecord:(id)self0 isBecomingObsolete:(BOOL)self1 context:(id)self2
{
  statusCopy = status;
  v114 = *MEMORY[0x277D85DE8];
  rolloutCopy = rollout;
  rampCopy = ramp;
  fpsCopy = fps;
  namespacesCopy = namespaces;
  metricCopy = metric;
  recordCopy = record;
  contextCopy = context;
  v22 = fpsCopy;
  v23 = rolloutCopy;
  v24 = rampCopy;
  if (fpsCopy)
  {
    v25 = TRIValidateFactorPackSetId();
  }

  else
  {
    v25 = 0;
  }

  v26 = namespacesCopy;
  v92 = v26;
  selfCopy = self;
  if (!recordCopy)
  {
    v29 = 0;
    v30 = v26;
    rampId = v24;
    v31 = v23;
    if (v23)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  rolloutId = v23;
  if (!v23)
  {
    deployment = [recordCopy deployment];
    rolloutId = [deployment rolloutId];
  }

  rampId = v24;
  if (!v24)
  {
    rampId = [recordCopy rampId];
  }

  if (deployment)
  {
    if (v25)
    {
      goto LABEL_18;
    }
  }

  else
  {
    deployment2 = [recordCopy deployment];
    deployment = [deployment2 deploymentId];

    if (v25)
    {
      goto LABEL_18;
    }
  }

  activeFactorPackSetId = [recordCopy activeFactorPackSetId];

  if (activeFactorPackSetId)
  {
    activeFactorPackSetId2 = [recordCopy activeFactorPackSetId];
    v25 = TRIValidateFactorPackSetId();
  }

  else
  {
    v25 = 0;
  }

LABEL_18:
  v87 = metricCopy;
  v38 = rolloutId;
  v39 = v25;
  v40 = v24;
  v41 = v23;
  namespaces = [recordCopy namespaces];

  if (!namespaces)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskUtils.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"rolloutRecord.namespaces"}];
  }

  v43 = MEMORY[0x277CBEA60];
  v29 = recordCopy;
  namespaces2 = [recordCopy namespaces];
  v30 = [v43 arrayWithArray:namespaces2];

  v23 = v41;
  v24 = v40;
  v25 = v39;
  v31 = v38;
  metricCopy = v87;
  if (v31)
  {
LABEL_21:
    v82 = v23;
    v83 = v24;
    v45 = v22;
    v84 = v29;
    v46 = objc_alloc(MEMORY[0x277D737D0]);
    v47 = [MEMORY[0x277CBEAA8] now];
    v86 = v30;
    v48 = [v46 initWithEventLogTime:v47 eventType:statusCopy rolloutId:v31 rampId:rampId factorPackSetId:v25 deploymentId:deployment namespaces:v30];

    rolloutHistoryDatabase = [contextCopy rolloutHistoryDatabase];
    v50 = [rolloutHistoryDatabase getAllAllocationStatusesForRolloutId:v31 rampId:rampId deploymentId:deployment factorPackSetId:v25];

    rolloutHistoryDatabase2 = [contextCopy rolloutHistoryDatabase];
    v81 = v48;
    LOBYTE(v47) = [rolloutHistoryDatabase2 addRecord:v48];

    if (v47)
    {
      v78 = v45;
      v52 = objc_opt_new();
      if ([v50 count])
      {
        v53 = 0;
        do
        {
          v54 = [v50 objectAtIndexedSubscript:v53];
          v55 = [&unk_287FC5020 containsObject:v54];

          if (v55)
          {
            break;
          }

          v56 = [v50 objectAtIndexedSubscript:v53];
          [v52 addObject:v56];

          ++v53;
        }

        while ([v50 count] > v53);
      }

      v57 = 0x277CCA000uLL;
      if (metricCopy)
      {
        v33 = v78;
        v32 = v84;
        v30 = v86;
      }

      else
      {
        v33 = v78;
        v32 = v84;
        v30 = v86;
        if (obsolete)
        {
          if ([v52 count])
          {
            v100 = &unk_287FC4AF8;
            v101 = @"roll_st_AL_O";
            v102[0] = &unk_287FC4AE0;
            v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            v103[0] = v58;
            v102[1] = &unk_287FC4B10;
            v98 = &unk_287FC4AF8;
            v99 = @"roll_st_FE_O";
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
            v103[1] = v59;
            v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];

            v60 = [v52 objectAtIndexedSubscript:0];
            v61 = [v88 objectForKeyedSubscript:v60];
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:statusCopy];
            metricCopy = [v61 objectForKey:v62];

            v30 = v86;
            v33 = v78;

            v57 = 0x277CCA000;
          }

          else
          {
            metricCopy = 0;
          }
        }
      }

      v63 = [*(v57 + 2992) numberWithUnsignedChar:statusCopy];
      v64 = [v52 containsObject:v63];

      if ((v64 & 1) == 0)
      {
        if (metricCopy)
        {
          v65 = metricCopy;
        }

        else
        {
          v65 = [selfCopy _rolloutStateForAnalyticsFromInternalState:statusCopy];
          v24 = v83;
          if (!v65)
          {
            metricCopy = 0;
            goto LABEL_46;
          }
        }

        v91 = v65;
        v80 = [MEMORY[0x277D73B40] metricWithName:v65];
        v66 = objc_opt_new();
        ensureRolloutFields = [v66 ensureRolloutFields];
        [ensureRolloutFields setClientRolloutId:v31];

        ensureRolloutFields2 = [v66 ensureRolloutFields];
        [ensureRolloutFields2 setClientRampId:rampId];

        ensureRolloutFields3 = [v66 ensureRolloutFields];
        [ensureRolloutFields3 setClientFactorPackSetId:v25];

        if (deployment == -1)
        {
          v70 = 0;
        }

        else
        {
          v70 = [MEMORY[0x277CCABB0] numberWithInt:deployment];
        }

        v89 = metricCopy;
        stringValue = [v70 stringValue];
        [v66 setClientDeploymentId:stringValue];

        if (deployment != -1)
        {
        }

        client = [contextCopy client];
        logger = [client logger];
        client2 = [contextCopy client];
        trackingId = [client2 trackingId];
        v97 = v80;
        v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
        [logger logWithTrackingId:trackingId metrics:v75 dimensions:0 trialSystemTelemetry:v66];

        v33 = v78;
        v24 = v83;
        v32 = v84;
        v30 = v86;
        metricCopy = v89;
        goto LABEL_46;
      }
    }

    else
    {
      v52 = TRILogCategory_Server();
      v33 = v45;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v76 = [MEMORY[0x277D73648] categoricalValueForRolloutAllocationStatus:statusCopy];
        *buf = 138544386;
        v105 = v76;
        v106 = 2112;
        v107 = v25;
        v108 = 2114;
        v109 = v31;
        v110 = 2114;
        v111 = rampId;
        v112 = 1024;
        deploymentCopy = deployment;
        _os_log_error_impl(&dword_26F567000, v52, OS_LOG_TYPE_ERROR, "Failed to update rollout history database while marking %{public}@ of fps %@ : rollout %{public}@ : ramp %{public}@ : deployment %d. Note: this allocation status will not be logged to analytics.", buf, 0x30u);
      }

      v32 = v84;
    }

    v24 = v83;
LABEL_46:

    v34 = contextCopy;
    v23 = v82;
    goto LABEL_47;
  }

LABEL_13:
  v32 = v29;
  v33 = v22;
  v34 = contextCopy;
LABEL_47:
}

@end