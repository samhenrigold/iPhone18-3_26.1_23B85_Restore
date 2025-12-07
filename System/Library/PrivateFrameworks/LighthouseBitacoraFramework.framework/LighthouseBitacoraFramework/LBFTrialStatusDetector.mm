@interface LBFTrialStatusDetector
- (LBFTrialStatusDetector)init;
- (id)getTrialStatus:(id)status deploymentId:(id)id;
@end

@implementation LBFTrialStatusDetector

- (LBFTrialStatusDetector)init
{
  v418 = *MEMORY[0x277D85DE8];
  v409.receiver = self;
  v409.super_class = LBFTrialStatusDetector;
  v2 = [(LBFTrialStatusDetector *)&v409 init];
  v3 = v2;
  if (v2)
  {
    v388 = v2;
    v400 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = objc_msgSend_sharedInstance(LBFEventManager, v4, v6, v5);
    v389 = objc_msgSend_ensureBiomeManagerTrial(v7, v8, v10, v9);

    v14 = objc_msgSend_sharedInstance(LBFEventManager, v11, v13, v12);
    v18 = objc_msgSend_ensureBiomeManagerMLRuntimed(v14, v15, v17, v16);

    v19.n128_u64[0] = 0xC15DA9C000000000;
    v22 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v20, v19, v21);
    v26 = objc_msgSend_now(MEMORY[0x277CBEAA8], v23, v25, v24);
    v27 = LBFLogContextTrialStatusDetector;
    if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v415 = v22;
      v416 = 2112;
      v417 = v26;
      _os_log_impl(&dword_255ED5000, v27, OS_LOG_TYPE_INFO, "Searching for events for Trial detection from %@ to %@.", buf, 0x16u);
    }

    v30 = objc_msgSend_readData_endDate_(v389, v28, v29, v22, v26);
    v386 = v22;
    v387 = v18;
    v392 = objc_msgSend_readData_endDate_(v18, v31, v32, v22, v26);
    v405 = 0u;
    v406 = 0u;
    v407 = 0u;
    v408 = 0u;
    obj = v30;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, v34, &v405, v413, 16);
    v385 = v26;
    if (v35)
    {
      v36 = v35;
      v37 = *v406;
      v397 = *v406;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v406 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v405 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v39;
            v46 = objc_msgSend_trialIdentifiers(v42, v43, v45, v44);
            v50 = objc_msgSend_bmltIdentifiers(v46, v47, v49, v48);
            v54 = objc_msgSend_trialTaskID(v50, v51, v53, v52);
            v58 = v54;
            if (v54)
            {
              v59 = v54;
            }

            else
            {
              v60 = objc_msgSend_trialIdentifiers(v42, v55, v57, v56);
              v64 = objc_msgSend_experimentIdentifiers(v60, v61, v63, v62);
              v59 = objc_msgSend_trialExperimentID(v64, v65, v67, v66);
            }

            v71 = objc_msgSend_trialIdentifiers(v42, v68, v70, v69);
            v75 = objc_msgSend_bmltIdentifiers(v71, v72, v74, v73);
            v79 = objc_msgSend_trialDeploymentID(v75, v76, v78, v77);
            v83 = v79;
            if (v79)
            {
              v84 = v79;
            }

            else
            {
              v85 = objc_msgSend_trialIdentifiers(v42, v80, v82, v81);
              v89 = objc_msgSend_experimentIdentifiers(v85, v86, v88, v87);
              v84 = objc_msgSend_trialDeploymentID(v89, v90, v92, v91);

              v37 = v397;
            }

            if (v59 && v84)
            {
              v95 = objc_msgSend_objectForKey_(v400, v93, v94, v59);

              if (!v95)
              {
                v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
                objc_msgSend_setObject_forKeyedSubscript_(v400, v99, v100, v98, v59);
              }

              v101 = objc_msgSend_objectForKeyedSubscript_(v400, v96, v97, v59);
              v104 = objc_msgSend_objectForKey_(v101, v102, v103, v84);

              if (!v104)
              {
                v108 = [LBFObservedTrialStatus alloc];
                v111 = objc_msgSend_initWithObservedStatus_deploymentId_(v108, v109, v110, v59, v84);
                v114 = objc_msgSend_objectForKeyedSubscript_(v400, v112, v113, v59);
                objc_msgSend_setObject_forKeyedSubscript_(v114, v115, v116, v111, v84);
              }

              v117 = objc_msgSend_timestamp(v42, v105, v107, v106);
              v120 = objc_msgSend_objectForKeyedSubscript_(v400, v118, v119, v59);
              v123 = objc_msgSend_objectForKeyedSubscript_(v120, v121, v122, v84);
              objc_msgSend_setLastObservedTimestamp_(v123, v124, v125, v117);

              v129 = objc_msgSend_eventType(v42, v126, v128, v127);
              switch(v129)
              {
                case 1:
                  if (objc_msgSend_eventSucceeded(v42, v130, v132, v131))
                  {
                    v177 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v175, v176, 1);
                    v180 = objc_msgSend_objectForKeyedSubscript_(v400, v178, v179, v59);
                    v183 = objc_msgSend_objectForKeyedSubscript_(v180, v181, v182, v84);
                    objc_msgSend_setIsAllocated_(v183, v184, v185, v177);

                    v146 = objc_msgSend_objectForKeyedSubscript_(v400, v186, v187, v59);
                    v149 = objc_msgSend_objectForKeyedSubscript_(v146, v188, v189, v84);
                    objc_msgSend_setIsAllocated_implicit_(v149, v190, v191, 1);
LABEL_32:

                    v37 = v397;
                  }

                  else
                  {
                    v193 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v175, v176, 0);
                    v196 = objc_msgSend_objectForKeyedSubscript_(v400, v194, v195, v59);
                    v199 = objc_msgSend_objectForKeyedSubscript_(v196, v197, v198, v84);
                    objc_msgSend_setIsAllocated_(v199, v200, v201, v193);

                    v204 = objc_msgSend_objectForKeyedSubscript_(v400, v202, v203, v59);
                    v207 = objc_msgSend_objectForKeyedSubscript_(v204, v205, v206, v84);
                    objc_msgSend_setIsAllocated_implicit_(v207, v208, v209, 0);

                    v210 = LBFLogContextTrialStatusDetector;
                    v37 = v397;
                    if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v415 = v59;
                      v416 = 2112;
                      v417 = v84;
                      v173 = v210;
                      v174 = "BMLighthouseLedgerTrialdEventEventTypeAllocation failed experimentOrTaskId:%@ deploymentId:%@";
                      goto LABEL_39;
                    }
                  }

                  break;
                case 3:
                  v152 = objc_msgSend_eventSucceeded(v42, v130, v132, v131);
                  v155 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v153, v154, 0);
                  v158 = objc_msgSend_objectForKeyedSubscript_(v400, v156, v157, v59);
                  v161 = objc_msgSend_objectForKeyedSubscript_(v158, v159, v160, v84);
                  objc_msgSend_setIsActivated_(v161, v162, v163, v155);

                  v166 = objc_msgSend_objectForKeyedSubscript_(v400, v164, v165, v59);
                  v169 = objc_msgSend_objectForKeyedSubscript_(v166, v167, v168, v84);
                  objc_msgSend_setIsActivated_implicit_(v169, v170, v171, 0);

                  v37 = v397;
                  if ((v152 & 1) == 0)
                  {
                    v172 = LBFLogContextTrialStatusDetector;
                    if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v415 = v59;
                      v416 = 2112;
                      v417 = v84;
                      v173 = v172;
                      v174 = "BMLighthouseLedgerTrialdEventEventTypeDeactivation failed experimentOrTaskId:%@ deploymentId:%@";
                      goto LABEL_39;
                    }
                  }

                  break;
                case 2:
                  if (objc_msgSend_eventSucceeded(v42, v130, v132, v131))
                  {
                    v135 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v133, v134, 1);
                    v138 = objc_msgSend_objectForKeyedSubscript_(v400, v136, v137, v59);
                    v141 = objc_msgSend_objectForKeyedSubscript_(v138, v139, v140, v84);
                    objc_msgSend_setIsActivated_(v141, v142, v143, v135);

                    v146 = objc_msgSend_objectForKeyedSubscript_(v400, v144, v145, v59);
                    v149 = objc_msgSend_objectForKeyedSubscript_(v146, v147, v148, v84);
                    objc_msgSend_setIsActivated_implicit_(v149, v150, v151, 1);
                    goto LABEL_32;
                  }

                  v211 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v133, v134, 0);
                  v214 = objc_msgSend_objectForKeyedSubscript_(v400, v212, v213, v59);
                  v217 = objc_msgSend_objectForKeyedSubscript_(v214, v215, v216, v84);
                  objc_msgSend_setIsActivated_(v217, v218, v219, v211);

                  v222 = objc_msgSend_objectForKeyedSubscript_(v400, v220, v221, v59);
                  v225 = objc_msgSend_objectForKeyedSubscript_(v222, v223, v224, v84);
                  objc_msgSend_setIsActivated_implicit_(v225, v226, v227, 0);

                  v228 = LBFLogContextTrialStatusDetector;
                  v37 = v397;
                  if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v415 = v59;
                    v416 = 2112;
                    v417 = v84;
                    v173 = v228;
                    v174 = "BMLighthouseLedgerTrialdEventEventTypeActivation failed experimentOrTaskId:%@ deploymentId:%@";
LABEL_39:
                    _os_log_impl(&dword_255ED5000, v173, OS_LOG_TYPE_INFO, v174, buf, 0x16u);
                  }

                  break;
                default:
                  v192 = LBFLogContextTrialStatusDetector;
                  v37 = v397;
                  if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_ERROR))
                  {
                    sub_255F0C59C(v411, v192, v42, v412);
                  }

                  break;
              }
            }

            continue;
          }
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, v41, &v405, v413, 16);
      }

      while (v36);
    }

    v403 = 0u;
    v404 = 0u;
    v401 = 0u;
    v402 = 0u;
    v229 = v392;
    v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v229, v230, v231, &v401, v410, 16);
    v233 = v400;
    if (!v232)
    {
      goto LABEL_75;
    }

    v234 = v232;
    v235 = *v402;
    v391 = v229;
    v396 = *v402;
LABEL_45:
    v236 = 0;
    v398 = v234;
    while (1)
    {
      if (*v402 != v235)
      {
        objc_enumerationMutation(v229);
      }

      v237 = *(*(&v401 + 1) + 8 * v236);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_73;
      }

      v240 = v237;
      v244 = objc_msgSend_trialIdentifiers(v240, v241, v243, v242);
      v248 = objc_msgSend_bmltIdentifiers(v244, v245, v247, v246);
      v252 = objc_msgSend_trialTaskID(v248, v249, v251, v250);
      v256 = v252;
      if (v252)
      {
        v257 = v252;
      }

      else
      {
        objc_msgSend_trialIdentifiers(v240, v253, v255, v254);
        v259 = v258 = v240;
        v263 = objc_msgSend_experimentIdentifiers(v259, v260, v262, v261);
        v257 = objc_msgSend_trialExperimentID(v263, v264, v266, v265);

        v240 = v258;
      }

      v270 = objc_msgSend_trialIdentifiers(v240, v267, v269, v268);
      v274 = objc_msgSend_bmltIdentifiers(v270, v271, v273, v272);
      v278 = objc_msgSend_trialDeploymentID(v274, v275, v277, v276);
      v282 = v278;
      if (v278)
      {
        v283 = v278;
      }

      else
      {
        objc_msgSend_trialIdentifiers(v240, v279, v281, v280);
        v393 = v257;
        v284 = v233;
        v285 = v229;
        v287 = v286 = v240;
        v291 = objc_msgSend_experimentIdentifiers(v287, v288, v290, v289);
        v283 = objc_msgSend_trialDeploymentID(v291, v292, v294, v293);

        v240 = v286;
        v229 = v285;
        v233 = v284;
        v257 = v393;
      }

      if (v257 && v283)
      {
        v297 = objc_msgSend_objectForKey_(v233, v295, v296, v257);

        if (!v297)
        {
          v300 = objc_alloc_init(MEMORY[0x277CBEB38]);
          objc_msgSend_setObject_forKeyedSubscript_(v233, v301, v302, v300, v257);
        }

        v303 = objc_msgSend_objectForKeyedSubscript_(v233, v298, v299, v257);
        v306 = objc_msgSend_objectForKey_(v303, v304, v305, v283);

        if (!v306)
        {
          v309 = [LBFObservedTrialStatus alloc];
          v312 = objc_msgSend_initWithObservedStatus_deploymentId_(v309, v310, v311, v257, v283);
          v315 = objc_msgSend_objectForKeyedSubscript_(v233, v313, v314, v257);
          objc_msgSend_setObject_forKeyedSubscript_(v315, v316, v317, v312, v283);
        }

        v318 = objc_msgSend_objectForKeyedSubscript_(v233, v307, v308, v257);
        v321 = objc_msgSend_objectForKeyedSubscript_(v318, v319, v320, v283);
        if (objc_msgSend_isActivated_implicit(v321, v322, v324, v323))
        {
          v327 = objc_msgSend_objectForKeyedSubscript_(v233, v325, v326, v257);
          objc_msgSend_objectForKeyedSubscript_(v327, v328, v329, v283);
          v330 = v283;
          v331 = v257;
          v332 = v233;
          v333 = v229;
          v335 = v334 = v240;
          isAllocated_implicit = objc_msgSend_isAllocated_implicit(v335, v336, v338, v337);

          v240 = v334;
          v229 = v333;
          v233 = v332;
          v257 = v331;
          v283 = v330;

          if (isAllocated_implicit)
          {
            goto LABEL_72;
          }
        }

        else
        {
        }

        v341 = objc_msgSend_objectForKeyedSubscript_(v233, v339, v340, v257);
        v344 = objc_msgSend_objectForKeyedSubscript_(v341, v342, v343, v283);
        v348 = objc_msgSend_lastObservedTimestamp(v344, v345, v347, v346);
        if (!v348)
        {

LABEL_69:
          v366 = LBFLogContextTrialStatusDetector;
          if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v415 = v257;
            v416 = 2112;
            v417 = v283;
            _os_log_impl(&dword_255ED5000, v366, OS_LOG_TYPE_INFO, "set implicit trial status experimentOrTaskId:%@ deploymentId:%@", buf, 0x16u);
          }

          v369 = objc_msgSend_objectForKeyedSubscript_(v233, v367, v368, v257);
          v372 = objc_msgSend_objectForKeyedSubscript_(v369, v370, v371, v283);
          objc_msgSend_setIsActivated_implicit_(v372, v373, v374, 1);

          v377 = objc_msgSend_objectForKeyedSubscript_(v233, v375, v376, v257);
          v380 = objc_msgSend_objectForKeyedSubscript_(v377, v378, v379, v283);
          objc_msgSend_setIsAllocated_implicit_(v380, v381, v382, 1);

          v229 = v391;
          goto LABEL_72;
        }

        v352 = v348;
        v353 = objc_msgSend_timestamp(v240, v349, v351, v350);
        objc_msgSend_objectForKeyedSubscript_(v233, v354, v355, v257);
        v356 = v395 = v240;
        v359 = objc_msgSend_objectForKeyedSubscript_(v356, v357, v358, v283);
        v363 = objc_msgSend_lastObservedTimestamp(v359, v360, v362, v361);
        v390 = objc_msgSend_compare_(v353, v364, v365, v363);

        v229 = v391;
        v233 = v400;

        v240 = v395;
        if (v390 == 1)
        {
          goto LABEL_69;
        }
      }

LABEL_72:

      v235 = v396;
      v234 = v398;
LABEL_73:
      if (v234 == ++v236)
      {
        v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v229, v238, v239, &v401, v410, 16);
        if (!v234)
        {
LABEL_75:

          v3 = v388;
          observedTrialStatusHolder = v388->_observedTrialStatusHolder;
          v388->_observedTrialStatusHolder = v233;

          return v3;
        }

        goto LABEL_45;
      }
    }
  }

  return v3;
}

- (id)getTrialStatus:(id)status deploymentId:(id)id
{
  statusCopy = status;
  idCopy = id;
  v10 = objc_msgSend_objectForKey_(self->_observedTrialStatusHolder, v8, v9, statusCopy);

  if (v10 && (objc_msgSend_objectForKeyedSubscript_(self->_observedTrialStatusHolder, v11, v12, statusCopy), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v13, v14, v15, idCopy), v16 = objc_claimAutoreleasedReturnValue(), v16, v13, v16))
  {
    v19 = objc_msgSend_objectForKeyedSubscript_(self->_observedTrialStatusHolder, v17, v18, statusCopy);
    v22 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v21, idCopy);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end