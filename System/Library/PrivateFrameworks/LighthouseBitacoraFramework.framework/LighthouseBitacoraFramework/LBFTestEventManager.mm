@interface LBFTestEventManager
+ (id)sharedInstance;
- (BOOL)generateEventStore;
- (BOOL)loadSyntheticJSON:(id)n datasetName:(id)name;
- (BOOL)validateOutcomes:(id)outcomes withAggregatedStates:(id)states;
- (LBFTestEventManager)init;
- (id)dprivacydEventFromDict:(id)dict;
- (id)ensureBiomeManagerDprivacyd;
- (id)ensureBiomeManagerLighthouse;
- (id)ensureBiomeManagerMLRuntimed;
- (id)ensureBiomeManagerTrial;
- (id)generateOutcomeDict;
- (id)lighthouseEventFromDict:(id)dict;
- (id)mlRuntimedEventFromDict:(id)dict;
- (id)readData:(id)data endDate:(id)date;
- (id)trialEventFromDict:(id)dict;
- (id)trialIdentifiersFromJSON:(id)n;
@end

@implementation LBFTestEventManager

- (LBFTestEventManager)init
{
  v19.receiver = self;
  v19.super_class = LBFTestEventManager;
  v2 = [(LBFTestEventManager *)&v19 init];
  v4 = v2;
  if (v2)
  {
    LBFLoggingUtilsInit(v2, v3);
    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    syntheticData = v4->_syntheticData;
    v4->_syntheticData = v5;

    readCategory = v4->_readCategory;
    v4->_readCategory = @"Unknown";

    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v4->_dateFormatter;
    v4->_dateFormatter = v8;

    v10 = v4->_dateFormatter;
    v13 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x277CBEBB0], v11, v12, @"UTC");
    objc_msgSend_setTimeZone_(v10, v14, v15, v13);

    objc_msgSend_setDateFormat_(v4->_dateFormatter, v16, v17, @"YYYY-MM-dd");
  }

  return v4;
}

+ (id)sharedInstance
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)loadSyntheticJSON:(id)n datasetName:(id)name
{
  nameCopy = name;
  v9 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v7, v8, n);
  v12 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v10, v11, v9, 0, 0);
  SyntheticData = objc_msgSend_loadSyntheticData_(self, v13, v14, v12);
  datasetName = self->_datasetName;
  self->_datasetName = nameCopy;

  return SyntheticData;
}

- (id)ensureBiomeManagerTrial
{
  readCategory = self->_readCategory;
  self->_readCategory = @"Trial";

  return self;
}

- (id)ensureBiomeManagerLighthouse
{
  readCategory = self->_readCategory;
  self->_readCategory = @"Lighthouse";

  return self;
}

- (id)ensureBiomeManagerMLRuntimed
{
  readCategory = self->_readCategory;
  self->_readCategory = @"MLRuntimed";

  return self;
}

- (id)ensureBiomeManagerDprivacyd
{
  readCategory = self->_readCategory;
  self->_readCategory = @"Dprivacyd";

  return self;
}

- (id)trialIdentifiersFromJSON:(id)n
{
  nCopy = n;
  v6 = objc_msgSend_objectForKey_(nCopy, v4, v5, @"bmltIdentifiers");
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_objectForKey_(v6, v7, v8, @"trialDeploymentID");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v10 = 0;
    }

    v11 = [LBFTrialIdentifiers alloc];
    v14 = objc_msgSend_objectForKey_(v9, v12, v13, @"trialTaskID");
    v18 = objc_msgSend_intValue(v10, v15, v17, v16);
    v21 = objc_msgSend_initWithBMLTTaskID_deploymentID_(v11, v19, v20, v14, v18);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_msgSend_objectForKey_(nCopy, v7, v8, @"experimentIdentifiers");
  v25 = v22;
  if (v22)
  {
    v26 = objc_msgSend_objectForKey_(v22, v23, v24, @"trialDeploymentID");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v26 = 0;
    }

    v27 = [LBFTrialIdentifiers alloc];
    v30 = objc_msgSend_objectForKey_(v25, v28, v29, @"trialExperimentID");
    v34 = objc_msgSend_intValue(v26, v31, v33, v32);
    v37 = objc_msgSend_objectForKey_(v25, v35, v36, @"trialTreatmentID");
    v40 = objc_msgSend_initWithExperimentID_deploymentID_treatmentID_(v27, v38, v39, v30, v34, v37);

    v21 = v40;
  }

  return v21;
}

- (id)lighthouseEventFromDict:(id)dict
{
  dictCopy = dict;
  v6 = objc_msgSend_objectForKey_(dictCopy, v4, v5, @"performTrialTaskStatus");
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_objectForKey_(v6, v7, v8, @"succeeded");
    v14 = objc_msgSend_BOOLValue(v10, v11, v13, v12);

    v17 = objc_msgSend_objectForKey_(v9, v15, v16, @"usePrivateUpload");

    v18 = [LBFLighthouseEvent alloc];
    v21 = objc_msgSend_initWithPerformTrialTaskStatus_error_usePrivateUpload_(v18, v19, v20, v14, 0, v17 != 0);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_msgSend_objectForKey_(dictCopy, v7, v8, @"performTaskStatus");
  v25 = v22;
  if (v22)
  {
    v26 = objc_msgSend_objectForKey_(v22, v23, v24, @"succeeded");
    v30 = objc_msgSend_BOOLValue(v26, v27, v29, v28);

    v31 = [LBFLighthouseEvent alloc];
    v34 = objc_msgSend_initWithPerformTaskStatus_error_(v31, v32, v33, v30, 0);

    v21 = v34;
  }

  v35 = objc_msgSend_objectForKey_(dictCopy, v23, v24, @"stop");
  v38 = v35;
  if (v35)
  {
    v39 = objc_msgSend_objectForKey_(v35, v36, v37, @"succeeded");
    v43 = objc_msgSend_BOOLValue(v39, v40, v42, v41);

    v44 = [LBFLighthouseEvent alloc];
    v47 = objc_msgSend_initWithStop_error_(v44, v45, v46, v43, 0);

    v21 = v47;
  }

  return v21;
}

- (id)mlRuntimedEventFromDict:(id)dict
{
  dictCopy = dict;
  v6 = objc_msgSend_objectForKey_(dictCopy, v4, v5, @"taskCompleted");
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_objectForKey_(v6, v7, v8, @"succeeded");
    v14 = objc_msgSend_BOOLValue(v10, v11, v13, v12);

    v15 = [LBFMLRuntimedEvent alloc];
    v18 = objc_msgSend_initWithTaskCompleted_error_(v15, v16, v17, v14, 0);
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_objectForKey_(dictCopy, v7, v8, @"taskFetched");
  v22 = v19;
  if (v19)
  {
    v23 = objc_msgSend_objectForKey_(v19, v20, v21, @"succeeded");
    v27 = objc_msgSend_BOOLValue(v23, v24, v26, v25);

    v28 = [LBFMLRuntimedEvent alloc];
    v31 = objc_msgSend_initWithTaskFetched_error_(v28, v29, v30, v27, 0);

    v18 = v31;
  }

  v32 = objc_msgSend_objectForKey_(dictCopy, v20, v21, @"taskScheduled");
  v35 = v32;
  if (v32)
  {
    v36 = objc_msgSend_objectForKey_(v32, v33, v34, @"succeeded");
    v40 = objc_msgSend_BOOLValue(v36, v37, v39, v38);

    v41 = [LBFMLRuntimedEvent alloc];
    v44 = objc_msgSend_initWithTaskScheduled_error_(v41, v42, v43, v40, 0);

    v18 = v44;
  }

  v45 = objc_msgSend_objectForKey_(dictCopy, v33, v34, @"activityScheduleStatus");
  v48 = v45;
  if (v45)
  {
    v49 = objc_msgSend_objectForKey_(v45, v46, v47, @"scheduled");
    v53 = objc_msgSend_BOOLValue(v49, v50, v52, v51);

    v54 = [LBFMLRuntimedEvent alloc];
    v57 = objc_msgSend_initWithScheduleStatus_(v54, v55, v56, v53);

    v18 = v57;
  }

  return v18;
}

- (id)dprivacydEventFromDict:(id)dict
{
  dictCopy = dict;
  v6 = objc_msgSend_objectForKeyedSubscript_(dictCopy, v4, v5, @"event");
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v8, @"phase");

  v12 = objc_msgSend_objectForKeyedSubscript_(&unk_286801330, v10, v11, v9);
  v16 = objc_msgSend_intValue(v12, v13, v15, v14);

  v19 = objc_msgSend_objectForKeyedSubscript_(dictCopy, v17, v18, @"event");

  v22 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v21, @"succeeded");
  v23 = v22 != 0;

  v24 = [LBFDprivacydEvent alloc];
  v27 = objc_msgSend_initWithEventPhase_eventUUID_succeeded_error_(v24, v25, v26, v16, 0, v23, 0);

  return v27;
}

- (id)trialEventFromDict:(id)dict
{
  dictCopy = dict;
  v6 = objc_msgSend_objectForKey_(dictCopy, v4, v5, @"eventType");
  v9 = objc_msgSend_objectForKey_(dictCopy, v7, v8, @"eventSucceeded");

  v13 = objc_msgSend_BOOLValue(v9, v10, v12, v11);
  if (objc_msgSend_isEqualToString_(v6, v14, v15, @"Allocation"))
  {
    v18 = [LBFTrialEvent alloc];
    v21 = objc_msgSend_initWithAllocation_(v18, v19, v20, v13);
  }

  else
  {
    v21 = 0;
  }

  if (objc_msgSend_isEqualToString_(v6, v16, v17, @"Activation"))
  {
    v24 = [LBFTrialEvent alloc];
    v27 = objc_msgSend_initWithActivation_(v24, v25, v26, v13);

    v21 = v27;
  }

  if (objc_msgSend_isEqualToString_(v6, v22, v23, @"Deactivation"))
  {
    v28 = [LBFTrialEvent alloc];
    v31 = objc_msgSend_initWithDeactivation_(v28, v29, v30, v13);

    v21 = v31;
  }

  return v21;
}

- (id)generateOutcomeDict
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = self->_syntheticData;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, &v28, v32, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(self->_syntheticData, v8, v9, v13, v28);
        v17 = objc_msgSend_objectForKey_(v14, v15, v16, @"outcome");
        if (objc_msgSend_count(v17, v18, v20, v19))
        {
          objc_msgSend_setObject_forKey_(v3, v21, v22, v17, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v8, v9, &v28, v32, 16);
    }

    while (v10);
  }

  v26 = objc_msgSend_copy(v3, v23, v25, v24);

  return v26;
}

- (BOOL)generateEventStore
{
  v191 = *MEMORY[0x277D85DE8];
  v177 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v176 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v175 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v174 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = objc_msgSend_initWithCalendarIdentifier_(v3, v4, v5, *MEMORY[0x277CBE5C0]);
  v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v166 = v6;
  objc_msgSend_setCalendar_(v7, v8, v9, v6);
  objc_msgSend_setHour_(v7, v10, v11, 0);
  objc_msgSend_setMinute_(v7, v12, v13, 0);
  objc_msgSend_setSecond_(v7, v14, v15, 0);
  v18 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v16, v17, @"GMT");
  v165 = v7;
  objc_msgSend_setTimeZone_(v7, v19, v20, v18);

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  obj = self->_syntheticData;
  v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, &v183, v190, 16);
  if (v168)
  {
    v167 = *v184;
    do
    {
      for (i = 0; i != v168; ++i)
      {
        if (*v184 != v167)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v183 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKey_(self->_syntheticData, v23, v24, v26);
        v31 = objc_msgSend_objectForKey_(v27, v28, v29, @"events");
        if (v31)
        {
          v172 = v27;
          v173 = i;
          v33 = objc_msgSend_componentsSeparatedByString_(v26, v30, v32, @"-");
          v36 = objc_msgSend_objectAtIndex_(v33, v34, v35, 0);
          v40 = objc_msgSend_intValue(v36, v37, v39, v38);
          objc_msgSend_setYear_(v165, v41, v42, v40);

          v45 = objc_msgSend_objectAtIndex_(v33, v43, v44, 1);
          v49 = objc_msgSend_intValue(v45, v46, v48, v47);
          objc_msgSend_setMonth_(v165, v50, v51, v49);

          v170 = v33;
          v54 = objc_msgSend_objectAtIndex_(v33, v52, v53, 2);
          v58 = objc_msgSend_intValue(v54, v55, v57, v56);
          objc_msgSend_setDay_(v165, v59, v60, v58);

          v169 = objc_msgSend_dateFromComponents_(v166, v61, v62, v165);
          objc_msgSend_timeIntervalSince1970(v169, v63, v65, v64);
          v67 = v66;
          v179 = 0u;
          v180 = 0u;
          v181 = 0u;
          v182 = 0u;
          v171 = v31;
          v178 = v31;
          v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v68, v69, &v179, v189, 16);
          if (v70)
          {
            v73 = v70;
            v74 = *v180;
            do
            {
              for (j = 0; j != v73; ++j)
              {
                if (*v180 != v74)
                {
                  objc_enumerationMutation(v178);
                }

                v76 = *(*(&v179 + 1) + 8 * j);
                v67 = v67 + 2.0;
                v77 = objc_msgSend_objectForKey_(v76, v71, v72, @"trialIdentifiers");
                v80 = objc_msgSend_trialIdentifiersFromJSON_(self, v78, v79, v77);

                v83 = objc_msgSend_objectForKey_(v76, v81, v82, @"category");
                isEqualToString = objc_msgSend_isEqualToString_(v83, v84, v85, @"Trial");

                if (isEqualToString)
                {
                  v89 = objc_msgSend_trialEventFromDict_(self, v87, v88, v76);
                  v92 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v90, v91, v67);
                  v95 = objc_msgSend_createTrialdEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v93, v94, v89, v80, v92);

                  objc_msgSend_addObject_(v177, v96, v97, v95);
                }

                v98 = objc_msgSend_objectForKey_(v76, v87, v88, @"category");
                v101 = objc_msgSend_isEqualToString_(v98, v99, v100, @"MLRuntimed");

                if (v101)
                {
                  v104 = objc_msgSend_mlRuntimedEventFromDict_(self, v102, v103, v76);
                  v107 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v105, v106, v67);
                  v110 = objc_msgSend_createMLRuntimedEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v108, v109, v104, v80, v107);

                  objc_msgSend_addObject_(v176, v111, v112, v110);
                }

                v113 = objc_msgSend_objectForKey_(v76, v102, v103, @"category");
                v116 = objc_msgSend_isEqualToString_(v113, v114, v115, @"Lighthouse");

                if (v116)
                {
                  v119 = objc_msgSend_lighthouseEventFromDict_(self, v117, v118, v76);
                  v122 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v120, v121, v67);
                  v125 = objc_msgSend_createLighthousePluginEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v123, v124, v119, v80, v122);

                  objc_msgSend_addObject_(v175, v126, v127, v125);
                }

                v128 = objc_msgSend_objectForKey_(v76, v117, v118, @"category");
                v131 = objc_msgSend_isEqualToString_(v128, v129, v130, @"Dprivacyd");

                if (v131)
                {
                  v134 = objc_msgSend_dprivacydEventFromDict_(self, v132, v133, v76);
                  v137 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v135, v136, v67);
                  v140 = objc_msgSend_createDprivacydEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v138, v139, v134, v80, v137);

                  objc_msgSend_addObject_(v174, v141, v142, v140);
                }
              }

              v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v71, v72, &v179, v189, 16);
            }

            while (v73);
          }

          v27 = v172;
          i = v173;
          v31 = v171;
        }
      }

      v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v24, &v183, v190, 16);
    }

    while (v168);
  }

  v187[0] = @"Trial";
  v146 = objc_msgSend_copy(v177, v143, v145, v144);
  v188[0] = v146;
  v187[1] = @"MLRuntimed";
  v150 = objc_msgSend_copy(v176, v147, v149, v148);
  v188[1] = v150;
  v187[2] = @"Lighthouse";
  v154 = objc_msgSend_copy(v175, v151, v153, v152);
  v188[2] = v154;
  v187[3] = @"Dprivacyd";
  v158 = objc_msgSend_copy(v174, v155, v157, v156);
  v188[3] = v158;
  v161 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v159, v160, v188, v187, 4);
  eventStore = self->_eventStore;
  self->_eventStore = v161;

  return 1;
}

- (id)readData:(id)data endDate:(id)date
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_timeIntervalSince1970(dataCopy, v9, v11, v10);
  v13 = v12.n128_f64[0];
  objc_msgSend_timeIntervalSince1970(dateCopy, v14, v12, v15);
  v17 = v16.n128_f64[0];
  v19 = objc_msgSend_objectForKey_(self->_eventStore, v18, v16, self->_readCategory);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, 0, &v38, v42, 16);
  if (v21)
  {
    v25 = v21;
    v26 = *v39;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v38 + 1) + 8 * i);
        v29 = objc_msgSend_timestamp(v28, v22, v24, v23);
        objc_msgSend_timeIntervalSince1970(v29, v30, v32, v31);
        v34 = v33;

        if (v34 > v13 && v34 < v17)
        {
          objc_msgSend_addObject_(v8, v22, v24, v28);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, v24, &v38, v42, 16);
    }

    while (v25);
  }

  v36 = objc_msgSend_copy(v8, v22, v24, v23);

  return v36;
}

- (BOOL)validateOutcomes:(id)outcomes withAggregatedStates:(id)states
{
  v117 = *MEMORY[0x277D85DE8];
  outcomesCopy = outcomes;
  statesCopy = states;
  NSLog(&cfstr_StartingOutcom.isa);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v6 = statesCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, &v109, v116, 16);
  if (v9)
  {
    v10 = 1;
    v11 = *v110;
    v84 = v6;
    v79 = *v110;
    do
    {
      v12 = 0;
      v78 = v9;
      do
      {
        if (*v110 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v109 + 1) + 8 * v12);
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        obj = v13;
        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, v15, &v105, v115, 16);
        if (v82)
        {
          v18 = *v106;
          v80 = *v106;
          v81 = v12;
          do
          {
            v19 = 0;
            do
            {
              if (*v106 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v83 = v19;
              v96 = *(*(&v105 + 1) + 8 * v19);
              v20 = objc_msgSend_objectForKey_(obj, v16, v17, v96);
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v21 = v20;
              v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, &v101, v114, 16);
              if (v88)
              {
                v86 = v21;
                v87 = *v102;
                while (2)
                {
                  for (i = 0; i != v88; ++i)
                  {
                    if (*v102 != v87)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v27 = *(*(&v101 + 1) + 8 * i);
                    v94 = objc_msgSend_objectForKey_(v21, v24, v25, v27);
                    v31 = objc_msgSend_getDictionaryRepresentation(v94, v28, v30, v29);
                    v93 = objc_msgSend_objectForKey_(v31, v32, v33, @"timestamp");
                    v37.n128_f64[0] = (objc_msgSend_longLongValue(v93, v34, v36, v35) / 1000 - 86400);
                    v92 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v38, v37, v39);
                    v91 = objc_msgSend_stringFromDate_(self->_dateFormatter, v40, v41, v92);
                    v44 = objc_msgSend_objectForKey_(outcomesCopy, v42, v43, v91);
                    v47 = objc_msgSend_objectForKey_(v44, v45, v46, v96);
                    v50 = objc_msgSend_objectForKey_(v47, v48, v49, v27);

                    v99 = 0u;
                    v100 = 0u;
                    v97 = 0u;
                    v98 = 0u;
                    v51 = v50;
                    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, v53, &v97, v113, 16);
                    if (v54)
                    {
                      v57 = v54;
                      v90 = i;
                      v58 = *v98;
                      while (2)
                      {
                        for (j = 0; j != v57; ++j)
                        {
                          if (*v98 != v58)
                          {
                            objc_enumerationMutation(v51);
                          }

                          v60 = *(*(&v97 + 1) + 8 * j);
                          v61 = objc_msgSend_objectForKey_(v51, v55, v56, v60);
                          v64 = objc_msgSend_objectForKey_(v31, v62, v63, v60);
                          NSLog(&stru_2867FAB38.isa);
                          NSLog(&cfstr_TestCaseDExpId.isa, self->_datasetName, v10, v96, v27);
                          NSLog(&cfstr_KeyExpected.isa, v60, v61);
                          NSLog(&cfstr_ActualValue.isa, v64);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_isEqualToString_(v61, v65, v67, v64) || (objc_msgSend_null(MEMORY[0x277CBEB68], v65, v67, v66), v68 = objc_claimAutoreleasedReturnValue(), v68, v61 == v68) && (objc_msgSend_null(MEMORY[0x277CBEB68], v69, v71, v70), v72 = objc_claimAutoreleasedReturnValue(), v72, v64 != v72))
                          {

                            v73 = 0;
                            goto LABEL_29;
                          }

                          v10 = (v10 + 1);
                        }

                        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v55, v56, &v97, v113, 16);
                        if (v57)
                        {
                          continue;
                        }

                        break;
                      }

                      v73 = 1;
LABEL_29:
                      v21 = v86;
                      i = v90;
                    }

                    else
                    {
                      v73 = 1;
                    }

                    if (!v73)
                    {

                      v76 = 0;
                      v6 = v84;
                      goto LABEL_41;
                    }
                  }

                  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, v25, &v101, v114, 16);
                  if (v88)
                  {
                    continue;
                  }

                  break;
                }
              }

              v19 = v83 + 1;
              v6 = v84;
              v18 = v80;
              v12 = v81;
            }

            while (v83 + 1 != v82);
            v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, &v105, v115, 16);
          }

          while (v82);
        }

        ++v12;
        v11 = v79;
      }

      while (v12 != v78);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v74, v75, &v109, v116, 16);
      v11 = v79;
      v76 = 1;
    }

    while (v9);
  }

  else
  {
    v76 = 1;
  }

LABEL_41:

  return v76;
}

@end