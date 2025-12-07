@interface LBFEventManager
+ (id)sharedInstance;
- (BOOL)addDprivacydEvent:(id)event identifiers:(id)identifiers error:(id *)error;
- (BOOL)addLighthousePluginEvent:(id)event;
- (BOOL)addLighthousePluginEvent:(id)event identifiers:(id)identifiers error:(id *)error;
- (BOOL)addMLRuntimedEvent:(id)event identifiers:(id)identifiers error:(id *)error;
- (BOOL)addTrialdEvent:(id)event identifiers:(id)identifiers error:(id *)error;
- (BOOL)isEqualIdentifiers:(id)identifiers identifiers:(id)a4;
- (LBFEventManager)init;
- (id)convertToLBFTrialIdentifiers:(id)identifiers;
- (id)ensureBiomeManagerDprivacyd;
- (id)ensureBiomeManagerLighthouse;
- (id)ensureBiomeManagerMLRuntimed;
- (id)ensureBiomeManagerTrial;
- (id)getLastDprivacyEvent:(id)event;
- (id)getLastLighthousePluginEvent:(id)event;
- (id)getLastMLRuntimeEvent:(id)event;
- (id)getLastTrialEvent:(id)event;
- (void)enumerateLastDprivacyEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue;
- (void)enumerateLastLighthousePluginEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue;
- (void)enumerateLastMLRuntimeEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue;
- (void)enumerateLastTrialEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue;
@end

@implementation LBFEventManager

+ (id)sharedInstance
{
  if (qword_281536D10 != -1)
  {
    sub_255F0BF50();
  }

  v3 = qword_281536D08;

  return v3;
}

- (LBFEventManager)init
{
  v10.receiver = self;
  v10.super_class = LBFEventManager;
  v2 = [(LBFEventManager *)&v10 init];
  v4 = v2;
  if (v2)
  {
    LBFLoggingUtilsInit(v2, v3);
    biomeManagerLighthouse = v4->_biomeManagerLighthouse;
    v4->_biomeManagerLighthouse = 0;

    biomeManagerMLRuntimed = v4->_biomeManagerMLRuntimed;
    v4->_biomeManagerMLRuntimed = 0;

    biomeManagerTrial = v4->_biomeManagerTrial;
    v4->_biomeManagerTrial = 0;

    biomeManagerDprivacyd = v4->_biomeManagerDprivacyd;
    v4->_biomeManagerDprivacyd = 0;
  }

  return v4;
}

- (id)ensureBiomeManagerLighthouse
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF22FC;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerLighthouse != -1)
  {
    dispatch_once(&onceTokenBiomeManagerLighthouse, block);
  }

  return self->_biomeManagerLighthouse;
}

- (id)ensureBiomeManagerTrial
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF246C;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerTrial != -1)
  {
    dispatch_once(&onceTokenBiomeManagerTrial, block);
  }

  return self->_biomeManagerTrial;
}

- (id)ensureBiomeManagerMLRuntimed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF25DC;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerMLRuntimed != -1)
  {
    dispatch_once(&onceTokenBiomeManagerMLRuntimed, block);
  }

  return self->_biomeManagerMLRuntimed;
}

- (id)ensureBiomeManagerDprivacyd
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF274C;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerDprivacyd != -1)
  {
    dispatch_once(&onceTokenBiomeManagerDprivacyd, block);
  }

  return self->_biomeManagerDprivacyd;
}

- (BOOL)addTrialdEvent:(id)event identifiers:(id)identifiers error:(id *)error
{
  eventCopy = event;
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    if (objc_msgSend_eventType(eventCopy, v9, v12, v10) == 1)
    {
      if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
      {
        sub_255F0C09C();
      }

      v29 = objc_alloc(MEMORY[0x277CBEAC0]);
      v32 = objc_msgSend_initWithObjectsAndKeys_(v29, v30, v31, @"Allocation event cannot have identifiers.", @"NSLocalizedDescriptionKey", 0);
    }

    else if (objc_msgSend_eventType(eventCopy, v26, v28, v27) == 2)
    {
      if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
      {
        sub_255F0C068();
      }

      v44 = objc_alloc(MEMORY[0x277CBEAC0]);
      v32 = objc_msgSend_initWithObjectsAndKeys_(v44, v45, v46, @"Activation event must have identifiers.", @"NSLocalizedDescriptionKey", 0);
    }

    else
    {
      if (objc_msgSend_eventType(eventCopy, v41, v43, v42) != 3)
      {
        goto LABEL_2;
      }

      if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
      {
        sub_255F0C034();
      }

      v47 = objc_alloc(MEMORY[0x277CBEAC0]);
      v32 = objc_msgSend_initWithObjectsAndKeys_(v47, v48, v49, @"Deactivation event must have identifiers.", @"NSLocalizedDescriptionKey", 0);
    }

    v16 = v32;
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v33, v34, @"com.apple.LighthouseBitacoraFramework", 1, v32);
      *error = v25 = 0;
      goto LABEL_29;
    }

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

LABEL_2:
  v13 = LBFLogContextEventManager;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_255ED5000, v13, OS_LOG_TYPE_INFO, "Converting dict to event.", buf, 2u);
  }

  v16 = objc_msgSend_createTrialdEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v14, v15, eventCopy, identifiersCopy, 0);
  v17 = LBFLogContextEventManager;
  if (!v16)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v35 = objc_alloc(MEMORY[0x277CBEAC0]);
    v39 = objc_msgSend_initWithObjectsAndKeys_(v35, v36, v37, @"Biome event could not be generated.", @"NSLocalizedDescriptionKey", 0);
    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v38, v40, @"com.apple.LighthouseBitacoraFramework", 1, v39);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *v52 = 0;
    _os_log_impl(&dword_255ED5000, v17, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", v52, 2u);
  }

  v21 = objc_msgSend_ensureBiomeManagerTrial(self, v18, v20, v19);
  objc_msgSend_writeData_(v21, v22, v23, v16);

  v24 = LBFLogContextEventManager;
  v25 = 1;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *v51 = 0;
    _os_log_impl(&dword_255ED5000, v24, OS_LOG_TYPE_INFO, "Finished writing proto.", v51, 2u);
  }

LABEL_29:

  return v25;
}

- (BOOL)addLighthousePluginEvent:(id)event
{
  v3 = LBFLogContextEventManager;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_255ED5000, v3, OS_LOG_TYPE_INFO, "Call to deprecated addLighthousePluginEvent method.", v5, 2u);
  }

  return 1;
}

- (BOOL)addLighthousePluginEvent:(id)event identifiers:(id)identifiers error:(id *)error
{
  eventCopy = event;
  identifiersCopy = identifiers;
  v10 = LBFLogContextEventManager;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_255ED5000, v10, OS_LOG_TYPE_INFO, "Converting dict to proto.", buf, 2u);
  }

  v13 = objc_msgSend_createLighthousePluginEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v11, v12, eventCopy, identifiersCopy, 0);
  v14 = LBFLogContextEventManager;
  if (v13)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_255ED5000, v14, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", v27, 2u);
    }

    v18 = objc_msgSend_ensureBiomeManagerLighthouse(self, v15, v17, v16);
    objc_msgSend_writeData_(v18, v19, v20, v13);
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v21 = objc_alloc(MEMORY[0x277CBEAC0]);
    v18 = objc_msgSend_initWithObjectsAndKeys_(v21, v22, v23, @"Biome event could not be generated.", @"NSLocalizedDescriptionKey", 0);
    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v24, v25, @"com.apple.LighthouseBitacoraFramework", 1, v18);
    }
  }

  return v13 != 0;
}

- (BOOL)addMLRuntimedEvent:(id)event identifiers:(id)identifiers error:(id *)error
{
  v8 = objc_msgSend_createMLRuntimedEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, a2, v5, event, identifiers, 0);
  v9 = LBFLogContextEventManager;
  if (v8)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_255ED5000, v9, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", buf, 2u);
    }

    v13 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v10, v12, v11);
    objc_msgSend_writeData_(v13, v14, v15, v8);

    v16 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_255ED5000, v16, OS_LOG_TYPE_INFO, "Finished writing proto.", v24, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v17 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = objc_msgSend_initWithObjectsAndKeys_(v17, v18, v19, @"Biome event could not be generated.", @"NSLocalizedDescriptionKey", 0);
    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v20, v22, @"com.apple.LighthouseBitacoraFramework", 1, v21);
    }
  }

  return v8 != 0;
}

- (BOOL)addDprivacydEvent:(id)event identifiers:(id)identifiers error:(id *)error
{
  v8 = objc_msgSend_createDprivacydEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, a2, v5, event, identifiers, 0);
  v9 = LBFLogContextEventManager;
  if (v8)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_255ED5000, v9, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", buf, 2u);
    }

    v13 = objc_msgSend_ensureBiomeManagerDprivacyd(self, v10, v12, v11);
    objc_msgSend_writeData_(v13, v14, v15, v8);

    v16 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_255ED5000, v16, OS_LOG_TYPE_INFO, "Finished writing proto.", v24, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v17 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = objc_msgSend_initWithObjectsAndKeys_(v17, v18, v19, @"Biome event could not be generated.", @"NSLocalizedDescriptionKey", 0);
    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v20, v22, @"com.apple.LighthouseBitacoraFramework", 1, v21);
    }
  }

  return v8 != 0;
}

- (BOOL)isEqualIdentifiers:(id)identifiers identifiers:(id)a4
{
  identifiersCopy = identifiers;
  v6 = a4;
  v10 = v6;
  if (identifiersCopy | v6)
  {
    if ((identifiersCopy == 0) == (v6 == 0))
    {
      v12 = objc_msgSend_bmltIdentifiers(identifiersCopy, v7, v9, v8);
      if (v12 && (v16 = v12, v17 = objc_msgSend_identifierType(v10, v13, v15, v14), v16, v17 == 2))
      {
        v18 = objc_msgSend_bmltIdentifiers(identifiersCopy, v13, v15, v14);
        v22 = objc_msgSend_trialDeploymentID(v18, v19, v21, v20);
        v26 = objc_msgSend_deploymentID(v10, v23, v25, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v22, v27, v28, v26);

        if (isEqualToString)
        {
          v33 = objc_msgSend_bmltIdentifiers(identifiersCopy, v30, v32, v31);
          v37 = objc_msgSend_trialTaskID(v33, v34, v36, v35);
          v41 = objc_msgSend_trialTaskID(v10, v38, v40, v39);
LABEL_13:
          v89 = v41;
          v11 = objc_msgSend_isEqualToString_(v37, v42, v43, v41);

          goto LABEL_15;
        }
      }

      else
      {
        v44 = objc_msgSend_experimentIdentifiers(identifiersCopy, v13, v15, v14);
        if (v44)
        {
          v48 = v44;
          v49 = objc_msgSend_identifierType(v10, v45, v47, v46);

          if (v49 == 1)
          {
            v53 = objc_msgSend_experimentIdentifiers(identifiersCopy, v50, v52, v51);
            v57 = objc_msgSend_trialDeploymentID(v53, v54, v56, v55);
            v61 = objc_msgSend_deploymentID(v10, v58, v60, v59);
            v64 = objc_msgSend_isEqualToString_(v57, v62, v63, v61);

            if (v64)
            {
              v68 = objc_msgSend_experimentIdentifiers(identifiersCopy, v65, v67, v66);
              v72 = objc_msgSend_trialExperimentID(v68, v69, v71, v70);
              v76 = objc_msgSend_experimentID(v10, v73, v75, v74);
              v79 = objc_msgSend_isEqualToString_(v72, v77, v78, v76);

              if (v79)
              {
                v33 = objc_msgSend_experimentIdentifiers(identifiersCopy, v80, v82, v81);
                v37 = objc_msgSend_trialTreatmentID(v33, v83, v85, v84);
                v41 = objc_msgSend_treatmentID(v10, v86, v88, v87);
                goto LABEL_13;
              }
            }
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

  v11 = 1;
LABEL_15:

  return v11;
}

- (id)convertToLBFTrialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = objc_msgSend_bmltIdentifiers(identifiersCopy, v4, v6, v5);

  if (v7)
  {
    v11 = [LBFTrialIdentifiers alloc];
    v15 = objc_msgSend_bmltIdentifiers(identifiersCopy, v12, v14, v13);
    v19 = objc_msgSend_trialTaskID(v15, v16, v18, v17);
    v23 = objc_msgSend_bmltIdentifiers(identifiersCopy, v20, v22, v21);
    v27 = objc_msgSend_trialDeploymentID(v23, v24, v26, v25);
    v31 = objc_msgSend_intValue(v27, v28, v30, v29);
    v34 = objc_msgSend_initWithBMLTTaskID_deploymentID_(v11, v32, v33, v19, v31);
LABEL_5:

    goto LABEL_6;
  }

  v35 = objc_msgSend_experimentIdentifiers(identifiersCopy, v8, v10, v9);

  if (v35)
  {
    v36 = [LBFTrialIdentifiers alloc];
    v15 = objc_msgSend_experimentIdentifiers(identifiersCopy, v37, v39, v38);
    v19 = objc_msgSend_trialExperimentID(v15, v40, v42, v41);
    v23 = objc_msgSend_experimentIdentifiers(identifiersCopy, v43, v45, v44);
    v27 = objc_msgSend_trialDeploymentID(v23, v46, v48, v47);
    v52 = objc_msgSend_intValue(v27, v49, v51, v50);
    v56 = objc_msgSend_experimentIdentifiers(identifiersCopy, v53, v55, v54);
    v60 = objc_msgSend_trialTreatmentID(v56, v57, v59, v58);
    v34 = objc_msgSend_initWithExperimentID_deploymentID_treatmentID_(v36, v61, v62, v19, v52, v60);

    goto LABEL_5;
  }

  v34 = 0;
LABEL_6:

  return v34;
}

- (void)enumerateLastTrialEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue
{
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  continueCopy = continue;
  if (eventsCopy)
  {
    v17 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v13, v16, v14);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF3544;
    v20[3] = &unk_279813CA0;
    v21 = eventsCopy;
    selfCopy = self;
    v23 = continueCopy;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v17, v18, v19, dateCopy, endDateCopy, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastTrialEvent:(id)event
{
  eventCopy = event;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_255EF3810;
  v14 = sub_255EF3820;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_255EF3828;
  v9[3] = &unk_279813CC8;
  v9[4] = &v10;
  objc_msgSend_enumerateLastTrialEvents_startDate_endDate_shouldContinue_(self, v6, v5, eventCopy, 0, 0, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)enumerateLastLighthousePluginEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue
{
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  continueCopy = continue;
  if (eventsCopy)
  {
    v17 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v13, v16, v14);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF3988;
    v20[3] = &unk_279813CA0;
    v21 = eventsCopy;
    selfCopy = self;
    v23 = continueCopy;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v17, v18, v19, dateCopy, endDateCopy, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastLighthousePluginEvent:(id)event
{
  eventCopy = event;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_255EF3810;
  v14 = sub_255EF3820;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_255EF3E70;
  v9[3] = &unk_279813CF0;
  v9[4] = &v10;
  objc_msgSend_enumerateLastLighthousePluginEvents_startDate_endDate_shouldContinue_(self, v6, v5, eventCopy, 0, 0, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)enumerateLastMLRuntimeEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue
{
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  continueCopy = continue;
  if (eventsCopy)
  {
    v17 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v13, v16, v14);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF3FD0;
    v20[3] = &unk_279813CA0;
    v21 = eventsCopy;
    selfCopy = self;
    v23 = continueCopy;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v17, v18, v19, dateCopy, endDateCopy, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastMLRuntimeEvent:(id)event
{
  eventCopy = event;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_255EF3810;
  v14 = sub_255EF3820;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_255EF4514;
  v9[3] = &unk_279813D18;
  v9[4] = &v10;
  objc_msgSend_enumerateLastMLRuntimeEvents_startDate_endDate_shouldContinue_(self, v6, v5, eventCopy, 0, 0, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)enumerateLastDprivacyEvents:(id)events startDate:(id)date endDate:(id)endDate shouldContinue:(id)continue
{
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  continueCopy = continue;
  if (eventsCopy)
  {
    v17 = objc_msgSend_ensureBiomeManagerDprivacyd(self, v13, v16, v14);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF4674;
    v20[3] = &unk_279813CA0;
    v21 = eventsCopy;
    selfCopy = self;
    v23 = continueCopy;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v17, v18, v19, dateCopy, endDateCopy, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastDprivacyEvent:(id)event
{
  eventCopy = event;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_255EF3810;
  v14 = sub_255EF3820;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_255EF49B8;
  v9[3] = &unk_279813D40;
  v9[4] = &v10;
  objc_msgSend_enumerateLastDprivacyEvents_startDate_endDate_shouldContinue_(self, v6, v5, eventCopy, 0, 0, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end