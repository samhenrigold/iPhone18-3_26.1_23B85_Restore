@interface CKDPowerLogger
+ (BOOL)isEnabled;
+ (id)sharedLogger;
- (id)zoneIDsToZoneNamesString:(id)string;
- (void)logOperationCombinedMetrics:(id)metrics forOperationID:(id)d operationType:(int64_t)type operationGroupID:(id)iD operationGroupName:(id)name operationGroupQuantity:(unint64_t)quantity operationQualityOfService:(int64_t)service backgroundTaskIdentifier:(id)self0 appContainerTuple:(id)self1;
@end

@implementation CKDPowerLogger

+ (BOOL)isEnabled
{
  v3 = objc_msgSend_currentProcess(CKDDaemonProcess, a2, v2);
  v6 = objc_msgSend_processType(v3, v4, v5);
  result = v6 != 2 && (objc_msgSend_currentProcess(CKDDaemonProcess, v7, v8), v9 = ;
  return result;
}

+ (id)sharedLogger
{
  if (qword_280D586A8 != -1)
  {
    dispatch_once(&qword_280D586A8, &unk_28385EAA0);
  }

  v3 = qword_280D586A0;

  return v3;
}

- (void)logOperationCombinedMetrics:(id)metrics forOperationID:(id)d operationType:(int64_t)type operationGroupID:(id)iD operationGroupName:(id)name operationGroupQuantity:(unint64_t)quantity operationQualityOfService:(int64_t)service backgroundTaskIdentifier:(id)self0 appContainerTuple:(id)self1
{
  v256[38] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  identifierCopy = identifier;
  tupleCopy = tuple;
  selfCopy = self;
  v22 = objc_opt_class();
  if (objc_msgSend_isEnabled(v22, v23, v24))
  {
    v27 = identifierCopy;
    v216 = objc_msgSend_cloudKitMetrics(metricsCopy, v25, v26);
    v253 = objc_msgSend_MMCSMetrics(metricsCopy, v28, v29);
    v250 = iDCopy;
    v251 = dCopy;
    if (dCopy)
    {
      v31 = dCopy;
    }

    else
    {
      v31 = &stru_28385ED00;
    }

    v255[0] = @"operationID";
    v255[1] = @"operationGroupID";
    if (iDCopy)
    {
      v32 = iDCopy;
    }

    else
    {
      v32 = &stru_28385ED00;
    }

    v256[0] = v31;
    v256[1] = v32;
    v249 = nameCopy;
    if (nameCopy)
    {
      v33 = nameCopy;
    }

    else
    {
      v33 = &stru_28385ED00;
    }

    v256[2] = v33;
    v255[2] = @"operationGroupName";
    v255[3] = @"operationGroupQuantity";
    v247 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v30, quantity);
    v256[3] = v247;
    v255[4] = @"operationQualityOfService";
    v246 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, service);
    v256[4] = v246;
    v255[5] = @"operationType";
    v245 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, type);
    v256[5] = v245;
    v255[6] = @"containerIdentifier";
    v244 = objc_msgSend_containerID(tupleCopy, v36, v37);
    v40 = objc_msgSend_containerIdentifier(v244, v38, v39);
    v243 = v40;
    if (v40)
    {
      v43 = v40;
    }

    else
    {
      v43 = &stru_28385ED00;
    }

    v256[6] = v43;
    v255[7] = @"containerEnvironment";
    v44 = MEMORY[0x277CCABB0];
    v242 = objc_msgSend_containerID(tupleCopy, v41, v42);
    v47 = objc_msgSend_environment(v242, v45, v46);
    v241 = objc_msgSend_numberWithInteger_(v44, v48, v47);
    v256[7] = v241;
    v255[8] = @"bundleIdentifier";
    v240 = objc_msgSend_applicationID(tupleCopy, v49, v50);
    v53 = objc_msgSend_applicationBundleIdentifier(v240, v51, v52);
    v239 = v53;
    if (v53)
    {
      v56 = v53;
    }

    else
    {
      v56 = &stru_28385ED00;
    }

    v256[8] = v56;
    v255[9] = @"sourceAppBundleIdentifier";
    v248 = tupleCopy;
    v238 = objc_msgSend_applicationID(tupleCopy, v54, v55);
    v59 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v238, v57, v58);
    v237 = v59;
    if (v59)
    {
      v62 = v59;
    }

    else
    {
      v62 = &stru_28385ED00;
    }

    if (identifierCopy)
    {
      v63 = identifierCopy;
    }

    else
    {
      v63 = &stru_28385ED00;
    }

    v256[9] = v62;
    v256[10] = v63;
    v255[10] = @"xpcActivityIdentifier";
    v255[11] = @"CKStartDate";
    v66 = objc_msgSend_startDate(v216, v60, v61);
    v236 = v66;
    if (!v66)
    {
      v66 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v64, v65);
    }

    v215 = v66;
    v256[11] = v66;
    v255[12] = @"CKDuration";
    v67 = MEMORY[0x277CCABB0];
    objc_msgSend_duration(v216, v64, v65);
    v235 = objc_msgSend_numberWithUnsignedInteger_(v67, v69, v68);
    v256[12] = v235;
    v255[13] = @"CKBytesUploaded";
    v70 = MEMORY[0x277CCABB0];
    v73 = objc_msgSend_bytesUploaded(v216, v71, v72);
    v234 = objc_msgSend_numberWithUnsignedInteger_(v70, v74, v73);
    v256[13] = v234;
    v255[14] = @"CKBytesDownloaded";
    v75 = MEMORY[0x277CCABB0];
    v78 = objc_msgSend_bytesDownloaded(v216, v76, v77);
    v233 = objc_msgSend_numberWithUnsignedInteger_(v75, v79, v78);
    v256[14] = v233;
    v255[15] = @"CKConnections";
    v80 = MEMORY[0x277CCABB0];
    v83 = objc_msgSend_connections(v216, v81, v82);
    v232 = objc_msgSend_numberWithUnsignedInteger_(v80, v84, v83);
    v256[15] = v232;
    v255[16] = @"CKConnectionsCreated";
    v85 = MEMORY[0x277CCABB0];
    v88 = objc_msgSend_connectionsCreated(v216, v86, v87);
    v231 = objc_msgSend_numberWithUnsignedInteger_(v85, v89, v88);
    v256[16] = v231;
    v255[17] = @"CKRecordsUploaded";
    v90 = MEMORY[0x277CCABB0];
    v93 = objc_msgSend_recordsUploaded(v216, v91, v92);
    v230 = objc_msgSend_numberWithUnsignedInteger_(v90, v94, v93);
    v256[17] = v230;
    v255[18] = @"CKRecordsDownloaded";
    v95 = MEMORY[0x277CCABB0];
    v98 = objc_msgSend_recordsDownloaded(v216, v96, v97);
    v229 = objc_msgSend_numberWithUnsignedInteger_(v95, v99, v98);
    v256[18] = v229;
    v255[19] = @"CKRecordsDeleted";
    v100 = MEMORY[0x277CCABB0];
    v103 = objc_msgSend_recordsDeleted(v216, v101, v102);
    v228 = objc_msgSend_numberWithUnsignedInteger_(v100, v104, v103);
    v256[19] = v228;
    v255[20] = @"CKAssetsUploaded";
    v105 = MEMORY[0x277CCABB0];
    v108 = objc_msgSend_assetsUploaded(v216, v106, v107);
    v227 = objc_msgSend_numberWithUnsignedInteger_(v105, v109, v108);
    v256[20] = v227;
    v255[21] = @"CKAssetsUploadedFileSize";
    v110 = MEMORY[0x277CCABB0];
    v113 = objc_msgSend_assetsUploadedFileSize(v216, v111, v112);
    v226 = objc_msgSend_numberWithUnsignedInteger_(v110, v114, v113);
    v256[21] = v226;
    v255[22] = @"CKAssetsDownloaded";
    v115 = MEMORY[0x277CCABB0];
    v118 = objc_msgSend_assetsDownloaded(v216, v116, v117);
    v225 = objc_msgSend_numberWithUnsignedInteger_(v115, v119, v118);
    v256[22] = v225;
    v255[23] = @"CKAssetsDownloadedFileSize";
    v120 = MEMORY[0x277CCABB0];
    v123 = objc_msgSend_assetsDownloadedFileSize(v216, v121, v122);
    v224 = objc_msgSend_numberWithUnsignedInteger_(v120, v124, v123);
    v256[23] = v224;
    v255[24] = @"CKRetries";
    v125 = MEMORY[0x277CCABB0];
    v128 = objc_msgSend_retries(v216, v126, v127);
    v223 = objc_msgSend_numberWithUnsignedInteger_(v125, v129, v128);
    v256[24] = v223;
    v255[25] = @"CKNumberOfRequests";
    v130 = MEMORY[0x277CCABB0];
    v133 = objc_msgSend_requestCount(v216, v131, v132);
    v222 = objc_msgSend_numberWithUnsignedInteger_(v130, v134, v133);
    v256[25] = v222;
    v255[26] = @"CKProtoRequestOperationsByCount";
    v137 = objc_msgSend_requestOperationCountsByType(v216, v135, v136);
    v221 = v137;
    if (v137)
    {
      v140 = v137;
    }

    else
    {
      v140 = MEMORY[0x277CBEC10];
    }

    v141 = MEMORY[0x277CBEC10];
    v256[26] = v140;
    v255[27] = @"MMCSDuration";
    v142 = MEMORY[0x277CCABB0];
    objc_msgSend_duration(v253, v138, v139);
    v220 = objc_msgSend_numberWithUnsignedInteger_(v142, v144, v143);
    v256[27] = v220;
    v255[28] = @"MMCSBytesUploaded";
    v145 = MEMORY[0x277CCABB0];
    v148 = objc_msgSend_bytesUploaded(v253, v146, v147);
    v219 = objc_msgSend_numberWithUnsignedInteger_(v145, v149, v148);
    v256[28] = v219;
    v255[29] = @"MMCSBytesDownloaded";
    v150 = MEMORY[0x277CCABB0];
    v153 = objc_msgSend_bytesDownloaded(v253, v151, v152);
    v218 = objc_msgSend_numberWithUnsignedInteger_(v150, v154, v153);
    v256[29] = v218;
    v255[30] = @"MMCSConnections";
    v155 = MEMORY[0x277CCABB0];
    v158 = objc_msgSend_connections(v253, v156, v157);
    v217 = objc_msgSend_numberWithUnsignedInteger_(v155, v159, v158);
    v256[30] = v217;
    v255[31] = @"MMCSConnectionsCreated";
    v160 = MEMORY[0x277CCABB0];
    v163 = objc_msgSend_connectionsCreated(v253, v161, v162);
    v165 = objc_msgSend_numberWithUnsignedInteger_(v160, v164, v163);
    v256[31] = v165;
    v255[32] = @"MMCSBytesFulfilledLocally";
    v166 = MEMORY[0x277CCABB0];
    v169 = objc_msgSend_bytesFulfilledLocally(v253, v167, v168);
    v171 = objc_msgSend_numberWithUnsignedLongLong_(v166, v170, v169);
    v256[32] = v171;
    v255[33] = @"MMCSBytesResumed";
    v172 = MEMORY[0x277CCABB0];
    v175 = objc_msgSend_bytesResumed(v253, v173, v174);
    v177 = objc_msgSend_numberWithUnsignedLongLong_(v172, v176, v175);
    v256[33] = v177;
    v255[34] = @"MMCSNumberOfRequests";
    v178 = MEMORY[0x277CCABB0];
    v181 = objc_msgSend_requestCount(v253, v179, v180);
    v183 = objc_msgSend_numberWithUnsignedInteger_(v178, v182, v181);
    v256[34] = v183;
    v255[35] = @"MMCSTotalBytesByChunkProfile";
    v186 = objc_msgSend_totalBytesByChunkProfile(v253, v184, v185);
    v189 = v186;
    v190 = v141;
    if (v186)
    {
      v191 = v186;
    }

    else
    {
      v191 = v141;
    }

    v256[35] = v191;
    v255[36] = @"MMCSChunkCountByChunkProfile";
    v192 = objc_msgSend_chunkCountByChunkProfile(v253, v187, v188);
    v195 = v192;
    if (v192)
    {
      v196 = v192;
    }

    else
    {
      v196 = v190;
    }

    v197 = v190;
    v256[36] = v196;
    v255[37] = @"MMCSFileCountByChunkProfile";
    v198 = objc_msgSend_fileCountByChunkProfile(v253, v193, v194);
    v200 = v198;
    if (v198)
    {
      v201 = v198;
    }

    else
    {
      v201 = v197;
    }

    v256[37] = v201;
    v202 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v199, v256, v255, 38);

    if (!v236)
    {
    }

    v205 = objc_msgSend_zoneIDs(v216, v203, v204);
    v207 = objc_msgSend_zoneIDsToZoneNamesString_(selfCopy, v206, v205);

    if (v207)
    {
      v210 = objc_msgSend_mutableCopy(v202, v208, v209);
      objc_msgSend_setObject_forKeyedSubscript_(v210, v211, v207, @"ZoneNames");
      v214 = objc_msgSend_copy(v210, v212, v213);

      v202 = v214;
    }

    dCopy = v251;
    nameCopy = v249;
    iDCopy = v250;
    identifierCopy = v27;
    PLLogRegisteredEvent();

    tupleCopy = v248;
  }
}

- (id)zoneIDsToZoneNamesString:(id)string
{
  v41 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (CKMainBundleIsAppleExecutable())
  {
    if (objc_msgSend_count(stringCopy, v4, v5))
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = stringCopy;
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v36, v40, 16);
      if (v9)
      {
        v12 = v9;
        v13 = *v37;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(v7);
            }

            v15 = objc_msgSend_zoneName(*(*(&v36 + 1) + 8 * i), v10, v11);
            objc_msgSend_addObject_(v6, v16, v15);
          }

          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v36, v40, 16);
        }

        while (v12);
      }

      v19 = objc_msgSend_allObjects(v6, v17, v18);
      v21 = objc_msgSend_sortedArrayUsingSelector_(v19, v20, sel_localizedCaseInsensitiveCompare_);

      v23 = objc_msgSend_componentsJoinedByString_(v21, v22, @",");
      v24 = MEMORY[0x277CCACA8];
      v27 = objc_msgSend_count(v7, v25, v26);
      v29 = objc_msgSend_stringWithFormat_(v24, v28, @"zoneNames:%lu:%@", v27, v23, v36);
      if (objc_msgSend_length(v29, v30, v31) < 0x101)
      {
        v33 = v29;
      }

      else
      {
        v33 = objc_msgSend_substringToIndex_(v29, v32, 256);
      }

      v34 = v33;
    }

    else
    {
      v34 = &stru_28385ED00;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

@end