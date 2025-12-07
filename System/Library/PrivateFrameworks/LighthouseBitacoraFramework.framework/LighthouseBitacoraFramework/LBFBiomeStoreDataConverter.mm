@interface LBFBiomeStoreDataConverter
+ (id)createDprivacydEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp;
+ (id)createLighthousePluginEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp;
+ (id)createMLRuntimedEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp;
+ (id)createTrialIdentifiers:(id)identifiers;
+ (id)createTrialdEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp;
+ (id)protoFromBiomeLighthousePluginEvent:(id)event;
+ (id)protoFromBiomeMlruntimedEvent:(id)event;
+ (id)protoFromBiomeTrialdEvent:(id)event;
+ (id)protoFromTrialIdentifier:(id)identifier;
@end

@implementation LBFBiomeStoreDataConverter

+ (id)createTrialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (!identifiersCopy)
  {
    goto LABEL_5;
  }

  v8 = objc_msgSend_identifierType(identifiersCopy, v4, v6, v5);
  if (v8 != 1)
  {
    if (v8 == 2)
    {
      v9 = objc_alloc(MEMORY[0x277CF1288]);
      v13 = objc_msgSend_trialTaskID(v7, v10, v12, v11);
      v17 = objc_msgSend_deploymentID(v7, v14, v16, v15);
      v20 = objc_msgSend_initWithTrialTaskID_trialDeploymentID_(v9, v18, v19, v13, v17);

      v21 = objc_alloc(MEMORY[0x277CF1280]);
      v24 = objc_msgSend_initWithExperimentIdentifiers_bmltIdentifiers_(v21, v22, v23, 0, v20);
      goto LABEL_7;
    }

LABEL_5:
    v25 = 0;
    goto LABEL_9;
  }

  v26 = objc_alloc(MEMORY[0x277CF1290]);
  v30 = objc_msgSend_experimentID(v7, v27, v29, v28);
  v34 = objc_msgSend_deploymentID(v7, v31, v33, v32);
  v38 = objc_msgSend_treatmentID(v7, v35, v37, v36);
  v20 = objc_msgSend_initWithTrialExperimentID_trialDeploymentID_trialTreatmentID_(v26, v39, v40, v30, v34, v38);

  v41 = objc_alloc(MEMORY[0x277CF1280]);
  v24 = objc_msgSend_initWithExperimentIdentifiers_bmltIdentifiers_(v41, v42, v43, v20, 0);
LABEL_7:
  v25 = v24;

  if (v25)
  {
    objc_msgSend_IsEmptyTrialIdentifiers_(LBFUtils, v44, v45, v25);
  }

LABEL_9:

  return v25;
}

+ (id)createMLRuntimedEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp
{
  eventCopy = event;
  identifiersCopy = identifiers;
  timestampCopy = timestamp;
  v14 = MEMORY[0x277CBEAA8];
  v77 = timestampCopy;
  if (timestampCopy)
  {
    v15.n128_f64[0] = objc_msgSend_intValue(timestampCopy, v11, v13, v12);
    v18 = objc_msgSend_dateWithTimeIntervalSince1970_(v14, v16, v15, v17);
    v21 = objc_msgSend_dateToGMTDate_(LBFUtils, v19, v20, v18);
  }

  else
  {
    v21 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v13, v12);
  }

  v25 = objc_msgSend_getContextId(LBFContextId, v22, v24, v23);
  v29 = objc_msgSend_UUIDString(v25, v26, v28, v27);

  v30 = identifiersCopy;
  v33 = objc_msgSend_createTrialIdentifiers_(self, v31, v32, identifiersCopy);
  v34 = objc_alloc(MEMORY[0x277CF1270]);
  v38 = objc_msgSend_scheduled(eventCopy, v35, v37, v36);
  v41 = objc_msgSend_initWithScheduled_(v34, v39, v40, v38);

  v42 = objc_alloc(MEMORY[0x277CF1278]);
  v46 = objc_msgSend_succeeded(eventCopy, v43, v45, v44);
  v50 = objc_msgSend_errorDomain(eventCopy, v47, v49, v48);
  v54 = objc_msgSend_errorCode(eventCopy, v51, v53, v52);
  v57 = objc_msgSend_initWithSucceeded_errorDomain_errorCode_(v42, v55, v56, v46, v50, v54);

  v61 = objc_msgSend_eventType(eventCopy, v58, v60, v59);
  if (v61 > 2)
  {
    if (v61 == 3)
    {
      v71 = objc_alloc(MEMORY[0x277CF1268]);
      v70 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_activityScheduleStatus_taskFetched_taskScheduled_taskCompleted_(v71, v72, v73, v33, v29, v21, 0, 0, v57, 0, v77);
LABEL_15:
      v74 = v70;
      if (v70)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (v61 != 4)
    {
      goto LABEL_16;
    }

    v62 = objc_alloc(MEMORY[0x277CF1268]);
    v76 = v57;
    v65 = v33;
    v66 = v29;
    v67 = v21;
    v68 = 0;
LABEL_12:
    v69 = 0;
    goto LABEL_13;
  }

  if (v61 == 1)
  {
    v62 = objc_alloc(MEMORY[0x277CF1268]);
    v76 = 0;
    v65 = v33;
    v66 = v29;
    v67 = v21;
    v68 = v41;
    goto LABEL_12;
  }

  if (v61 == 2)
  {
    v62 = objc_alloc(MEMORY[0x277CF1268]);
    v76 = 0;
    v65 = v33;
    v66 = v29;
    v67 = v21;
    v68 = 0;
    v69 = v57;
LABEL_13:
    v70 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_activityScheduleStatus_taskFetched_taskScheduled_taskCompleted_(v62, v63, v64, v65, v66, v67, v68, v69, 0, v76, v77);
    goto LABEL_15;
  }

LABEL_16:
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0AB94();
  }

  v74 = 0;
LABEL_19:

  return v74;
}

+ (id)createDprivacydEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp
{
  eventCopy = event;
  timestampCopy = timestamp;
  v10 = MEMORY[0x277CBEAA8];
  identifiersCopy = identifiers;
  v17 = objc_msgSend_now(v10, v12, v14, v13);
  if (timestampCopy)
  {
    v19 = MEMORY[0x277CBEAA8];
    v20.n128_f64[0] = objc_msgSend_intValue(timestampCopy, v15, v18, v16);
    v23 = objc_msgSend_dateWithTimeIntervalSince1970_(v19, v21, v20, v22);

    v17 = objc_msgSend_dateToGMTDate_(LBFUtils, v24, v25, v23);
  }

  v26 = objc_msgSend_getContextId(LBFContextId, v15, v18, v16);
  v30 = objc_msgSend_UUIDString(v26, v27, v29, v28);

  v33 = objc_msgSend_createTrialIdentifiers_(self, v31, v32, identifiersCopy);

  v37 = objc_msgSend_eventPhase(eventCopy, v34, v36, v35);
  if ((v37 - 1) >= 5)
  {
    v80 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0ABC8(v80, eventCopy);
    }

    goto LABEL_11;
  }

  v41 = v37;
  v42 = objc_msgSend_aggregateFunction(eventCopy, v38, v40, v39);
  if (v42 >= 4)
  {
    v81 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AC54(v81, eventCopy);
    }

LABEL_11:
    v78 = 0;
    goto LABEL_15;
  }

  v43 = v42;
  v44 = objc_alloc(MEMORY[0x277CF1250]);
  v48 = objc_msgSend_succeeded(eventCopy, v45, v47, v46);
  v52 = objc_msgSend_errorMessage(eventCopy, v49, v51, v50);
  v55 = objc_msgSend_initWithPhase_succeeded_errorMessage_(v44, v53, v54, v41, v48, v52);

  v83 = objc_alloc(MEMORY[0x277CF1248]);
  v59 = objc_msgSend_eventUUID(eventCopy, v56, v58, v57);
  v60 = MEMORY[0x277CCABB0];
  v64 = objc_msgSend_errorCode(eventCopy, v61, v63, v62);
  v67 = objc_msgSend_numberWithInt_(v60, v65, v66, v64);
  v68 = MEMORY[0x277CCABB0];
  v72 = objc_msgSend_count(eventCopy, v69, v71, v70);
  v75 = objc_msgSend_numberWithInt_(v68, v73, v74, v72);
  v78 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_eventIdentifier_event_aggregateFunction_errorCode_count_(v83, v76, v77, v33, v30, v17, v59, v55, v43, v67, v75);

  if (v78)
  {
    v79 = v78;
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0ACE0();
  }

LABEL_15:

  return v78;
}

+ (id)createLighthousePluginEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp
{
  eventCopy = event;
  identifiersCopy = identifiers;
  timestampCopy = timestamp;
  v14 = timestampCopy;
  v15 = MEMORY[0x277CBEAA8];
  if (timestampCopy)
  {
    v16.n128_f64[0] = objc_msgSend_intValue(timestampCopy, v11, v13, v12);
    v19 = objc_msgSend_dateWithTimeIntervalSince1970_(v15, v17, v16, v18);
    v22 = objc_msgSend_dateToGMTDate_(LBFUtils, v20, v21, v19);
  }

  else
  {
    v22 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v13, v12);
  }

  v26 = objc_msgSend_getContextId(LBFContextId, v23, v25, v24);
  v30 = objc_msgSend_UUIDString(v26, v27, v29, v28);

  v33 = objc_msgSend_createTrialIdentifiers_(self, v31, v32, identifiersCopy);
  v34 = objc_alloc(MEMORY[0x277CF1260]);
  v38 = objc_msgSend_succeeded(eventCopy, v35, v37, v36);
  v42 = objc_msgSend_errorDomain(eventCopy, v39, v41, v40);
  v46 = objc_msgSend_errorCode(eventCopy, v43, v45, v44);
  v49 = objc_msgSend_initWithSucceeded_errorDomain_errorCode_(v34, v47, v48, v38, v42, v46);

  v53 = objc_msgSend_eventType(eventCopy, v50, v52, v51);
  switch(v53)
  {
    case 3:
      v74 = objc_alloc(MEMORY[0x277CF1258]);
      v59 = objc_msgSend_usePrivateUpload(eventCopy, v75, v77, v76);
      v80 = v49;
      v61 = v74;
      v62 = v33;
      v63 = v30;
      v64 = v22;
      v65 = v59;
      v66 = 0;
      goto LABEL_10;
    case 2:
      v67 = objc_alloc(MEMORY[0x277CF1258]);
      v59 = objc_msgSend_usePrivateUpload(eventCopy, v68, v70, v69);
      v73 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_usePrivateUpload_performTaskStatus_performTrialTaskStatus_stop_(v67, v71, v72, v33, v30, v22, v59, 0, v49, 0);
      goto LABEL_11;
    case 1:
      v54 = objc_alloc(MEMORY[0x277CF1258]);
      v59 = objc_msgSend_usePrivateUpload(eventCopy, v55, v57, v56);
      v80 = 0;
      v61 = v54;
      v62 = v33;
      v63 = v30;
      v64 = v22;
      v65 = v59;
      v66 = v49;
LABEL_10:
      v73 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_usePrivateUpload_performTaskStatus_performTrialTaskStatus_stop_(v61, v58, v60, v62, v63, v64, v65, v66, 0, v80);
LABEL_11:
      v78 = v73;

      if (v78)
      {
        goto LABEL_15;
      }

      break;
  }

  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0AB94();
  }

  v78 = 0;
LABEL_15:

  return v78;
}

+ (id)createTrialdEvent:(id)event identifiers:(id)identifiers timestamp:(id)timestamp
{
  eventCopy = event;
  identifiersCopy = identifiers;
  timestampCopy = timestamp;
  v14 = timestampCopy;
  v15 = MEMORY[0x277CBEAA8];
  if (timestampCopy)
  {
    v16.n128_f64[0] = objc_msgSend_intValue(timestampCopy, v11, v13, v12);
    v19 = objc_msgSend_dateWithTimeIntervalSince1970_(v15, v17, v16, v18);
    v22 = objc_msgSend_dateToGMTDate_(LBFUtils, v20, v21, v19);
  }

  else
  {
    v22 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v13, v12);
  }

  v26 = objc_msgSend_getContextId(LBFContextId, v23, v25, v24);
  v30 = objc_msgSend_UUIDString(v26, v27, v29, v28);

  v33 = objc_msgSend_createTrialIdentifiers_(self, v31, v32, identifiersCopy);
  v37 = objc_msgSend_eventType(eventCopy, v34, v36, v35);
  v38 = v37 - 1;
  if ((v37 - 1) > 2 || (v39 = objc_alloc(MEMORY[0x277CF1298]), objc_msgSend_succeeded(eventCopy, v40, v42, v41), v43 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_eventType_eventSucceeded_(v39, v44, v45, v33, v30, v22, (v38 + 1), v43), v43, !v46))
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v46 = 0;
  }

  return v46;
}

+ (id)protoFromTrialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
  v8 = objc_msgSend_experimentIdentifiers(identifierCopy, v5, v7, v6);

  if (v8)
  {
    v12 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
    v16 = objc_msgSend_experimentIdentifiers(identifierCopy, v13, v15, v14);
    v20 = objc_msgSend_trialExperimentID(v16, v17, v19, v18);
    objc_msgSend_setTrialExperimentID_(v12, v21, v22, v20);

    v26 = objc_msgSend_experimentIdentifiers(identifierCopy, v23, v25, v24);
    v30 = objc_msgSend_trialDeploymentID(v26, v27, v29, v28);
    objc_msgSend_setTrialDeploymentID_(v12, v31, v32, v30);

    v36 = objc_msgSend_experimentIdentifiers(identifierCopy, v33, v35, v34);
    v40 = objc_msgSend_trialTreatmentID(v36, v37, v39, v38);
    objc_msgSend_setTrialTreatmentID_(v12, v41, v42, v40);

    objc_msgSend_setExperimentIdentifiers_(v4, v43, v44, v12);
  }

  v45 = objc_msgSend_bmltIdentifiers(identifierCopy, v9, v11, v10);

  if (v45)
  {
    v46 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
    v50 = objc_msgSend_bmltIdentifiers(identifierCopy, v47, v49, v48);
    v54 = objc_msgSend_trialTaskID(v50, v51, v53, v52);
    objc_msgSend_setTrialTaskID_(v46, v55, v56, v54);

    v60 = objc_msgSend_bmltIdentifiers(identifierCopy, v57, v59, v58);
    v64 = objc_msgSend_trialDeploymentID(v60, v61, v63, v62);
    objc_msgSend_setTrialDeploymentID_(v46, v65, v66, v64);

    objc_msgSend_setBmltIdentifiers_(v4, v67, v68, v46);
  }

  return v4;
}

+ (id)protoFromBiomeLighthousePluginEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent);
  v8 = objc_msgSend_trialIdentifiers(eventCopy, v5, v7, v6);
  v11 = objc_msgSend_protoFromTrialIdentifier_(LBFBiomeStoreDataConverter, v9, v10, v8);
  objc_msgSend_setTrialIdentifiers_(v4, v12, v13, v11);

  v17 = objc_msgSend_timestamp(eventCopy, v14, v16, v15);
  objc_msgSend_timeIntervalSince1970(v17, v18, v20, v19);
  objc_msgSend_setTimestamp_(v4, v21, v23, v22);

  v27 = objc_msgSend_contextID(eventCopy, v24, v26, v25);
  objc_msgSend_setContextID_(v4, v28, v29, v27);

  v33 = objc_msgSend_performTaskStatus(eventCopy, v30, v32, v31);

  if (v33)
  {
    v37 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
    objc_msgSend_setPerformTaskStatus_(v4, v38, v39, v37);

    v43 = objc_msgSend_performTaskStatus(eventCopy, v40, v42, v41);
    v47 = objc_msgSend_succeeded(v43, v44, v46, v45);
    v51 = objc_msgSend_performTaskStatus(v4, v48, v50, v49);
    objc_msgSend_setSucceeded_(v51, v52, v53, v47);

    v57 = objc_msgSend_performTaskStatus(eventCopy, v54, v56, v55);
    v61 = objc_msgSend_errorDomain(v57, v58, v60, v59);
    v65 = objc_msgSend_performTaskStatus(v4, v62, v64, v63);
    objc_msgSend_setErrorDomain_(v65, v66, v67, v61);

    v71 = objc_msgSend_performTaskStatus(eventCopy, v68, v70, v69);
    v75 = objc_msgSend_errorCode(v71, v72, v74, v73);
    v79 = objc_msgSend_performTaskStatus(v4, v76, v78, v77);
    objc_msgSend_setErrorCode_(v79, v80, v81, v75);
  }

  v82 = objc_msgSend_performTrialTaskStatus(eventCopy, v34, v36, v35);

  if (v82)
  {
    v86 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
    objc_msgSend_setPerformTrialTaskStatus_(v4, v87, v88, v86);

    v92 = objc_msgSend_performTrialTaskStatus(eventCopy, v89, v91, v90);
    v96 = objc_msgSend_succeeded(v92, v93, v95, v94);
    v100 = objc_msgSend_performTrialTaskStatus(v4, v97, v99, v98);
    objc_msgSend_setSucceeded_(v100, v101, v102, v96);

    v106 = objc_msgSend_performTrialTaskStatus(eventCopy, v103, v105, v104);
    v110 = objc_msgSend_errorDomain(v106, v107, v109, v108);
    v114 = objc_msgSend_performTrialTaskStatus(v4, v111, v113, v112);
    objc_msgSend_setErrorDomain_(v114, v115, v116, v110);

    v120 = objc_msgSend_performTrialTaskStatus(eventCopy, v117, v119, v118);
    v124 = objc_msgSend_errorCode(v120, v121, v123, v122);
    v128 = objc_msgSend_performTrialTaskStatus(v4, v125, v127, v126);
    objc_msgSend_setErrorCode_(v128, v129, v130, v124);
  }

  v131 = objc_msgSend_stop(eventCopy, v83, v85, v84);

  if (v131)
  {
    v132 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
    objc_msgSend_setStop_(v4, v133, v134, v132);

    v138 = objc_msgSend_stop(eventCopy, v135, v137, v136);
    v142 = objc_msgSend_succeeded(v138, v139, v141, v140);
    v146 = objc_msgSend_stop(v4, v143, v145, v144);
    objc_msgSend_setSucceeded_(v146, v147, v148, v142);

    v152 = objc_msgSend_stop(eventCopy, v149, v151, v150);
    v156 = objc_msgSend_errorDomain(v152, v153, v155, v154);
    v160 = objc_msgSend_stop(v4, v157, v159, v158);
    objc_msgSend_setErrorDomain_(v160, v161, v162, v156);

    v166 = objc_msgSend_stop(eventCopy, v163, v165, v164);
    v170 = objc_msgSend_errorCode(v166, v167, v169, v168);
    v174 = objc_msgSend_stop(v4, v171, v173, v172);
    objc_msgSend_setErrorCode_(v174, v175, v176, v170);
  }

  return v4;
}

+ (id)protoFromBiomeMlruntimedEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent);
  v8 = objc_msgSend_trialIdentifiers(eventCopy, v5, v7, v6);
  v11 = objc_msgSend_protoFromTrialIdentifier_(LBFBiomeStoreDataConverter, v9, v10, v8);
  objc_msgSend_setTrialIdentifiers_(v4, v12, v13, v11);

  v17 = objc_msgSend_timestamp(eventCopy, v14, v16, v15);
  objc_msgSend_timeIntervalSince1970(v17, v18, v20, v19);
  objc_msgSend_setTimestamp_(v4, v21, v23, v22);

  v27 = objc_msgSend_contextID(eventCopy, v24, v26, v25);
  objc_msgSend_setContextID_(v4, v28, v29, v27);

  v33 = objc_msgSend_activityScheduleStatus(eventCopy, v30, v32, v31);

  if (v33)
  {
    v37 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOScheduleStatus);
    objc_msgSend_setActivityScheduleStatus_(v4, v38, v39, v37);

    v43 = objc_msgSend_activityScheduleStatus(eventCopy, v40, v42, v41);
    v47 = objc_msgSend_scheduled(v43, v44, v46, v45);
    v51 = objc_msgSend_activityScheduleStatus(v4, v48, v50, v49);
    objc_msgSend_setScheduled_(v51, v52, v53, v47);
  }

  v54 = objc_msgSend_taskFetched(eventCopy, v34, v36, v35);

  if (v54)
  {
    v58 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
    objc_msgSend_setTaskFetched_(v4, v59, v60, v58);

    v64 = objc_msgSend_taskFetched(eventCopy, v61, v63, v62);
    v68 = objc_msgSend_succeeded(v64, v65, v67, v66);
    v72 = objc_msgSend_taskFetched(v4, v69, v71, v70);
    objc_msgSend_setSucceeded_(v72, v73, v74, v68);

    v78 = objc_msgSend_taskFetched(eventCopy, v75, v77, v76);
    v82 = objc_msgSend_errorDomain(v78, v79, v81, v80);
    v86 = objc_msgSend_taskFetched(v4, v83, v85, v84);
    objc_msgSend_setErrorDomain_(v86, v87, v88, v82);

    v92 = objc_msgSend_taskFetched(eventCopy, v89, v91, v90);
    v96 = objc_msgSend_errorCode(v92, v93, v95, v94);
    v100 = objc_msgSend_taskFetched(v4, v97, v99, v98);
    objc_msgSend_setErrorCode_(v100, v101, v102, v96);
  }

  v103 = objc_msgSend_taskScheduled(eventCopy, v55, v57, v56);

  if (v103)
  {
    v107 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
    objc_msgSend_setTaskScheduled_(v4, v108, v109, v107);

    v113 = objc_msgSend_taskScheduled(eventCopy, v110, v112, v111);
    v117 = objc_msgSend_succeeded(v113, v114, v116, v115);
    v121 = objc_msgSend_taskScheduled(v4, v118, v120, v119);
    objc_msgSend_setSucceeded_(v121, v122, v123, v117);

    v127 = objc_msgSend_taskScheduled(eventCopy, v124, v126, v125);
    v131 = objc_msgSend_errorDomain(v127, v128, v130, v129);
    v135 = objc_msgSend_taskScheduled(v4, v132, v134, v133);
    objc_msgSend_setErrorDomain_(v135, v136, v137, v131);

    v141 = objc_msgSend_taskScheduled(eventCopy, v138, v140, v139);
    v145 = objc_msgSend_errorCode(v141, v142, v144, v143);
    v149 = objc_msgSend_taskScheduled(v4, v146, v148, v147);
    objc_msgSend_setErrorCode_(v149, v150, v151, v145);
  }

  v152 = objc_msgSend_taskCompleted(eventCopy, v104, v106, v105);

  if (v152)
  {
    v153 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
    objc_msgSend_setTaskCompleted_(v4, v154, v155, v153);

    v159 = objc_msgSend_taskCompleted(eventCopy, v156, v158, v157);
    v163 = objc_msgSend_succeeded(v159, v160, v162, v161);
    v167 = objc_msgSend_taskCompleted(v4, v164, v166, v165);
    objc_msgSend_setSucceeded_(v167, v168, v169, v163);

    v173 = objc_msgSend_taskCompleted(eventCopy, v170, v172, v171);
    v177 = objc_msgSend_errorDomain(v173, v174, v176, v175);
    v181 = objc_msgSend_taskCompleted(v4, v178, v180, v179);
    objc_msgSend_setErrorDomain_(v181, v182, v183, v177);

    v187 = objc_msgSend_taskCompleted(eventCopy, v184, v186, v185);
    v191 = objc_msgSend_errorCode(v187, v188, v190, v189);
    v195 = objc_msgSend_taskCompleted(v4, v192, v194, v193);
    objc_msgSend_setErrorCode_(v195, v196, v197, v191);
  }

  return v4;
}

+ (id)protoFromBiomeTrialdEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent);
  v8 = objc_msgSend_trialIdentifiers(eventCopy, v5, v7, v6);
  v11 = objc_msgSend_protoFromTrialIdentifier_(LBFBiomeStoreDataConverter, v9, v10, v8);
  objc_msgSend_setTrialIdentifiers_(v4, v12, v13, v11);

  v17 = objc_msgSend_timestamp(eventCopy, v14, v16, v15);
  objc_msgSend_timeIntervalSince1970(v17, v18, v20, v19);
  objc_msgSend_setTimestamp_(v4, v21, v23, v22);

  v27 = objc_msgSend_contextID(eventCopy, v24, v26, v25);
  objc_msgSend_setContextID_(v4, v28, v29, v27);

  v33 = objc_msgSend_eventType(eventCopy, v30, v32, v31);
  if (v33 - 1 >= 3)
  {
    objc_msgSend_setEventType_(v4, v34, v35, 0);
  }

  else
  {
    objc_msgSend_setEventType_(v4, v34, v35, v33);
  }

  v39 = objc_msgSend_eventSucceeded(eventCopy, v36, v38, v37);
  objc_msgSend_setEventSucceeded_(v4, v40, v41, v39);

  return v4;
}

@end