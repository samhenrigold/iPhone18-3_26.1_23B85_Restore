@interface LBFCoreAnalyticsUtils
+ (void)upload:(id)upload;
@end

@implementation LBFCoreAnalyticsUtils

+ (void)upload:(id)upload
{
  v193[20] = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  v192[0] = @"lighthouseplugin_count_PerformTask_Failed";
  if (objc_msgSend_hasCountPerformTaskFailed(uploadCopy, v4, v6, v5))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = objc_msgSend_countPerformTaskFailed(uploadCopy, v7, v9, v8);
    objc_msgSend_numberWithUnsignedInt_(v10, v12, v13, v11);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v7, v9, v8);
  }
  v190 = ;
  v193[0] = v190;
  v192[1] = @"lighthouseplugin_count_PerformTask_Succeeded";
  if (objc_msgSend_hasCountPerformTaskSucceeded(uploadCopy, v14, v16, v15))
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = objc_msgSend_countPerformTaskSucceeded(uploadCopy, v17, v19, v18);
    objc_msgSend_numberWithUnsignedInt_(v20, v22, v23, v21);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v17, v19, v18);
  }
  v189 = ;
  v193[1] = v189;
  v192[2] = @"lighthouseplugin_count_Stop_Failed";
  if (objc_msgSend_hasCountStopFailed(uploadCopy, v24, v26, v25))
  {
    v30 = MEMORY[0x277CCABB0];
    v31 = objc_msgSend_countStopFailed(uploadCopy, v27, v29, v28);
    objc_msgSend_numberWithUnsignedInt_(v30, v32, v33, v31);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v27, v29, v28);
  }
  v188 = ;
  v193[2] = v188;
  v192[3] = @"lighthouseplugin_count_Stop_Succeeded";
  if (objc_msgSend_hasCountStopSucceeded(uploadCopy, v34, v36, v35))
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = objc_msgSend_countStopSucceeded(uploadCopy, v37, v39, v38);
    objc_msgSend_numberWithUnsignedInt_(v40, v42, v43, v41);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v37, v39, v38);
  }
  v187 = ;
  v193[3] = v187;
  v192[4] = @"mlruntimedevent_count_TaskCompleted_Failed";
  if (objc_msgSend_hasCountTaskCompletedFailed(uploadCopy, v44, v46, v45))
  {
    v50 = MEMORY[0x277CCABB0];
    v51 = objc_msgSend_countTaskCompletedFailed(uploadCopy, v47, v49, v48);
    objc_msgSend_numberWithUnsignedInt_(v50, v52, v53, v51);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v47, v49, v48);
  }
  v186 = ;
  v193[4] = v186;
  v192[5] = @"mlruntimedevent_count_TaskCompleted_Succeeded";
  if (objc_msgSend_hasCountTaskCompletedSucceeded(uploadCopy, v54, v56, v55))
  {
    v60 = MEMORY[0x277CCABB0];
    v61 = objc_msgSend_countTaskCompletedSucceeded(uploadCopy, v57, v59, v58);
    objc_msgSend_numberWithUnsignedInt_(v60, v62, v63, v61);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v57, v59, v58);
  }
  v185 = ;
  v193[5] = v185;
  v192[6] = @"mlruntimedevent_count_TaskFetched_Failed";
  if (objc_msgSend_hasCountTaskFetchedFailed(uploadCopy, v64, v66, v65))
  {
    v70 = MEMORY[0x277CCABB0];
    v71 = objc_msgSend_countTaskFetchedFailed(uploadCopy, v67, v69, v68);
    objc_msgSend_numberWithUnsignedInt_(v70, v72, v73, v71);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v67, v69, v68);
  }
  v184 = ;
  v193[6] = v184;
  v192[7] = @"mlruntimedevent_count_TaskFetched_Succeeded";
  if (objc_msgSend_hasCountTaskFetchedSucceeded(uploadCopy, v74, v76, v75))
  {
    v80 = MEMORY[0x277CCABB0];
    v81 = objc_msgSend_countTaskFetchedSucceeded(uploadCopy, v77, v79, v78);
    objc_msgSend_numberWithUnsignedInt_(v80, v82, v83, v81);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v77, v79, v78);
  }
  v183 = ;
  v193[7] = v183;
  v192[8] = @"mlruntimedevent_count_TaskScheduled_Failed";
  if (objc_msgSend_hasCountTaskScheduledFailed(uploadCopy, v84, v86, v85))
  {
    v90 = MEMORY[0x277CCABB0];
    v91 = objc_msgSend_countTaskScheduledFailed(uploadCopy, v87, v89, v88);
    objc_msgSend_numberWithUnsignedInt_(v90, v92, v93, v91);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v87, v89, v88);
  }
  v182 = ;
  v193[8] = v182;
  v192[9] = @"mlruntimedevent_count_TaskScheduled_Succeeded";
  if (objc_msgSend_hasCountTaskScheduledSucceeded(uploadCopy, v94, v96, v95))
  {
    v100 = MEMORY[0x277CCABB0];
    v101 = objc_msgSend_countTaskScheduledSucceeded(uploadCopy, v97, v99, v98);
    objc_msgSend_numberWithUnsignedInt_(v100, v102, v103, v101);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v97, v99, v98);
  }
  v181 = ;
  v193[9] = v181;
  v192[10] = @"trialdevent_is_activated";
  if (objc_msgSend_hasIsActivated(uploadCopy, v104, v106, v105))
  {
    v110 = MEMORY[0x277CCABB0];
    isActivated = objc_msgSend_isActivated(uploadCopy, v107, v109, v108);
    objc_msgSend_numberWithBool_(v110, v112, v113, isActivated);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v107, v109, v108);
  }
  v180 = ;
  v193[10] = v180;
  v192[11] = @"trialdevent_is_allocated";
  if (objc_msgSend_hasIsAllocated(uploadCopy, v114, v116, v115))
  {
    v120 = MEMORY[0x277CCABB0];
    isAllocated = objc_msgSend_isAllocated(uploadCopy, v117, v119, v118);
    objc_msgSend_numberWithBool_(v120, v122, v123, isAllocated);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v117, v119, v118);
  }
  v179 = ;
  v193[11] = v179;
  v192[12] = @"trial_BMLTTaskId";
  if (objc_msgSend_hasTrialTaskID(uploadCopy, v124, v126, v125))
  {
    objc_msgSend_trialTaskID(uploadCopy, v127, v129, v128);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v127, v129, v128);
  }
  v130 = ;
  v193[12] = v130;
  v192[13] = @"trial_deploymentId";
  if (objc_msgSend_hasTrialDeploymentID(uploadCopy, v131, v133, v132))
  {
    objc_msgSend_trialDeploymentID(uploadCopy, v134, v136, v135);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v134, v136, v135);
  }
  v137 = ;
  v193[13] = v137;
  v192[14] = @"trial_experimentId";
  if (objc_msgSend_hasTrialExperimentID(uploadCopy, v138, v140, v139))
  {
    objc_msgSend_trialExperimentID(uploadCopy, v141, v143, v142);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v141, v143, v142);
  }
  v144 = ;
  v193[14] = v144;
  v192[15] = @"trial_treatmentId";
  if (objc_msgSend_hasTrialTreatmentID(uploadCopy, v145, v147, v146))
  {
    objc_msgSend_trialTreatmentID(uploadCopy, v148, v150, v149);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v148, v150, v149);
  }
  v151 = ;
  v193[15] = v151;
  v192[16] = @"timestamp";
  v152 = MEMORY[0x277CCABB0];
  v156 = objc_msgSend_timestamp(uploadCopy, v153, v155, v154);
  v159 = objc_msgSend_numberWithUnsignedLongLong_(v152, v157, v158, v156);
  v193[16] = v159;
  v192[17] = @"timestamp_str";
  v160 = MEMORY[0x277CCACA8];
  v164 = objc_msgSend_timestamp(uploadCopy, v161, v163, v162);
  v167 = objc_msgSend_stringWithFormat_(v160, v165, v166, @"%llu", v164);
  v193[17] = v167;
  v192[18] = @"telemetryID";
  v171 = objc_msgSend_telemetryID(uploadCopy, v168, v170, v169);
  v193[18] = v171;
  v192[19] = @"contextID";
  v175 = objc_msgSend_contextID(uploadCopy, v172, v174, v173);
  v193[19] = v175;
  v178 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v176, v177, v193, v192, 20);

  v191 = v178;
  AnalyticsSendEventLazy();
}

@end