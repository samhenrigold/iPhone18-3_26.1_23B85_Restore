@interface SUUIMobileScanOperationParam
- (SUUIMobileScanOperationParam)initWithError:(id)error;
- (SUUIMobileScanOperationParam)initWithFullScanContext:(id)context;
- (SUUIMobileScanOperationParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andRefreshContext:(id)context;
- (id)description;
@end

@implementation SUUIMobileScanOperationParam

- (SUUIMobileScanOperationParam)initWithFullScanContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v17.receiver = v3;
  v17.super_class = SUUIMobileScanOperationParam;
  v16 = [(SUUIMobileScanOperationParam *)&v17 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    scanOptions = [location[0] scanOptions];
    options = selfCopy->_options;
    selfCopy->_options = scanOptions;
    MEMORY[0x277D82BD8](options);
    forceReloadScanResults = [location[0] forceReloadScanResults];
    selfCopy->_forceReloadScanResults = forceReloadScanResults;
    previousThirdPartyScanResults = [location[0] previousThirdPartyScanResults];
    toSUScanResults = [previousThirdPartyScanResults toSUScanResults];
    thirdPartyDiscoveredScanResults = selfCopy->_thirdPartyDiscoveredScanResults;
    selfCopy->_thirdPartyDiscoveredScanResults = toSUScanResults;
    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanResults);
    MEMORY[0x277D82BD8](previousThirdPartyScanResults);
    previousScanError = [location[0] previousScanError];
    thirdPartyDiscoveredScanError = selfCopy->_thirdPartyDiscoveredScanError;
    selfCopy->_thirdPartyDiscoveredScanError = previousScanError;
    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanError);
    agreementStatusRegistry = [location[0] agreementStatusRegistry];
    agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
    selfCopy->_agreementStatusRegistry = agreementStatusRegistry;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (SUUIMobileScanOperationParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andRefreshContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v24 = 0;
  objc_storeStrong(&v24, alternateDescriptor);
  v23 = 0;
  objc_storeStrong(&v23, context);
  v5 = selfCopy;
  selfCopy = 0;
  v22.receiver = v5;
  v22.super_class = SUUIMobileScanOperationParam;
  v19 = [(SUUIMobileScanOperationParam *)&v22 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    objc_storeStrong(&selfCopy->_preferredDescriptor, location[0]);
    objc_storeStrong(&selfCopy->_alternateDescriptor, v24);
    previousDownload = [v23 previousDownload];
    v20 = MEMORY[0x277D82BE0](previousDownload);
    objc_storeStrong(&previousDownload, 0);
    underlyingDownload = [v20 underlyingDownload];
    currentDownload = selfCopy->_currentDownload;
    selfCopy->_currentDownload = underlyingDownload;
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](v20);
    currentAutoInstallOperation = [v23 currentAutoInstallOperation];
    currentAutoInstallOperation = selfCopy->_currentAutoInstallOperation;
    selfCopy->_currentAutoInstallOperation = currentAutoInstallOperation;
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
    currentAutoInstallOperation2 = [v23 currentAutoInstallOperation];
    selfCopy->_isAutoUpdateScheduled = currentAutoInstallOperation2 != 0;
    MEMORY[0x277D82BD8](currentAutoInstallOperation2);
    previousEncounteredError = [v23 previousEncounteredError];
    operationError = selfCopy->_operationError;
    selfCopy->_operationError = previousEncounteredError;
    MEMORY[0x277D82BD8](operationError);
    agreementStatusRegistry = [v23 agreementStatusRegistry];
    agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
    selfCopy->_agreementStatusRegistry = agreementStatusRegistry;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
  }

  v16 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (SUUIMobileScanOperationParam)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUUIMobileScanOperationParam;
  v6 = [(SUUIMobileScanOperationParam *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_operationError, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)description
{
  v144[22] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  obj[1] = a2;
  obj[0] = 0;
  currentDownload = [(SUUIMobileScanOperationParam *)self currentDownload];
  v102 = 0;
  v100 = 0;
  v95 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    v102 = 1;
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    v100 = 1;
    v95 = descriptor != 0;
  }

  if (v100)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v102)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v95)
  {
    v87 = MEMORY[0x277CCACA8];
    currentDownload3 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    descriptor2 = [(SUDownload *)currentDownload3 descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
    currentDownload4 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    currentDownload5 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    progress = [(SUDownload *)currentDownload5 progress];
    v2 = [v87 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v86 = MEMORY[0x277D64B68];
  v143[0] = @"operationError";
  operationError = selfCopy->_operationError;
  location = 0;
  objc_storeStrong(&location, operationError);
  v131 = 0;
  if (location)
  {
    v5 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v131 = 1;
    v5 = MEMORY[0x277D82BE0](null);
  }

  v134 = v5;
  if (v131)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v83 = v134;
  v6 = v134;
  v84 = v83;
  v144[0] = v84;
  v143[1] = @"preferredDescriptor";
  v85 = MEMORY[0x277CCACA8];
  v98 = 0;
  if (selfCopy->_preferredDescriptor)
  {
    humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_preferredDescriptor humanReadableUpdateName];
    v98 = 1;
    v82 = humanReadableUpdateName2;
  }

  else
  {
    v82 = @"(null)";
  }

  v80 = [v85 stringWithFormat:@"%@ (%p)", v82, selfCopy->_preferredDescriptor];
  v144[1] = v80;
  v143[2] = @"alternateDescriptor";
  v81 = MEMORY[0x277CCACA8];
  v96 = 0;
  if (selfCopy->_alternateDescriptor)
  {
    humanReadableUpdateName3 = [(SUDescriptor *)selfCopy->_alternateDescriptor humanReadableUpdateName];
    v96 = 1;
    v79 = humanReadableUpdateName3;
  }

  else
  {
    v79 = @"(null)";
  }

  v78 = [v81 stringWithFormat:@"%@ (%p)", v79, selfCopy->_alternateDescriptor];
  v144[2] = v78;
  v143[3] = @"scanError";
  scanError = selfCopy->_scanError;
  v129 = 0;
  objc_storeStrong(&v129, scanError);
  v127 = 0;
  if (v129)
  {
    v8 = MEMORY[0x277D82BE0](v129);
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    v127 = 1;
    v8 = MEMORY[0x277D82BE0](null2);
  }

  v130 = v8;
  if (v127)
  {
    MEMORY[0x277D82BD8](null2);
  }

  objc_storeStrong(&v129, 0);
  v70 = v130;
  v9 = v130;
  v71 = v70;
  v144[3] = v71;
  v143[4] = @"emptyScanResults";
  if (selfCopy->_emptyScanResults)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v72 = v10;
  v11 = v10;
  v73 = v72;
  v144[4] = v73;
  v143[5] = @"preferredUpdateDownloadable";
  if (selfCopy->_preferredUpdateDownloadable)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v74 = v12;
  v13 = v12;
  v75 = v74;
  v144[5] = v75;
  v143[6] = @"alternateUpdateDownloadable";
  if (selfCopy->_alternateUpdateDownloadable)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v76 = v14;
  v15 = v14;
  v77 = v76;
  v144[6] = v77;
  v143[7] = @"preferredUpdateDownloadError";
  preferredUpdateDownloadError = selfCopy->_preferredUpdateDownloadError;
  v125 = 0;
  objc_storeStrong(&v125, preferredUpdateDownloadError);
  v123 = 0;
  if (v125)
  {
    v17 = MEMORY[0x277D82BE0](v125);
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    v123 = 1;
    v17 = MEMORY[0x277D82BE0](null3);
  }

  v126 = v17;
  if (v123)
  {
    MEMORY[0x277D82BD8](null3);
  }

  objc_storeStrong(&v125, 0);
  v68 = v126;
  v18 = v126;
  v69 = v68;
  v144[7] = v69;
  v143[8] = @"alternateUpdateDownloadError";
  alternateUpdateDownloadError = selfCopy->_alternateUpdateDownloadError;
  v121 = 0;
  objc_storeStrong(&v121, alternateUpdateDownloadError);
  v119 = 0;
  if (v121)
  {
    v20 = MEMORY[0x277D82BE0](v121);
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    v119 = 1;
    v20 = MEMORY[0x277D82BE0](null4);
  }

  v122 = v20;
  if (v119)
  {
    MEMORY[0x277D82BD8](null4);
  }

  objc_storeStrong(&v121, 0);
  v66 = v122;
  v21 = v122;
  v67 = v66;
  v144[8] = v67;
  v143[9] = @"agreementStatusRegistry";
  agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
  v117 = 0;
  objc_storeStrong(&v117, agreementStatusRegistry);
  v115 = 0;
  if (v117)
  {
    v23 = MEMORY[0x277D82BE0](v117);
  }

  else
  {
    null5 = [MEMORY[0x277CBEB68] null];
    v115 = 1;
    v23 = MEMORY[0x277D82BE0](null5);
  }

  v118 = v23;
  if (v115)
  {
    MEMORY[0x277D82BD8](null5);
  }

  objc_storeStrong(&v117, 0);
  v62 = v118;
  v24 = v118;
  v63 = v62;
  v144[9] = v63;
  v143[10] = @"clearingSpaceForDownload";
  if (selfCopy->_clearingSpaceForDownload)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v64 = v25;
  v26 = v25;
  v65 = v64;
  v144[10] = v65;
  v143[11] = @"currentDownload";
  v113 = 0;
  objc_storeStrong(&v113, obj[0]);
  v111 = 0;
  if (v113)
  {
    v27 = MEMORY[0x277D82BE0](v113);
  }

  else
  {
    null6 = [MEMORY[0x277CBEB68] null];
    v111 = 1;
    v27 = MEMORY[0x277D82BE0](null6);
  }

  v114 = v27;
  if (v111)
  {
    MEMORY[0x277D82BD8](null6);
  }

  objc_storeStrong(&v113, 0);
  v45 = v114;
  v28 = v114;
  v46 = v45;
  v144[11] = v46;
  v143[12] = @"mdmPathRestrictions";
  v47 = MEMORY[0x277CCACA8];
  v48 = SUStringFromMDMSUPath();
  v49 = [v47 stringWithFormat:@"%@ (%ld)", v48, selfCopy->_mdmPathRestrictions];
  v144[12] = v49;
  v143[13] = @"isDelayingUpdate";
  if (selfCopy->_isDelayingUpdate)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  v50 = v29;
  v30 = v29;
  v51 = v50;
  v144[13] = v51;
  v143[14] = @"rollingBackSplatUpdate";
  if (selfCopy->_rollingBackSplatUpdate)
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v52 = v31;
  v32 = v31;
  v53 = v52;
  v144[14] = v53;
  v143[15] = @"rollbackDescriptor";
  v54 = [MEMORY[0x277CCACA8] stringWithFormat:selfCopy->_rollbackDescriptor];
  v144[15] = v54;
  v143[16] = @"currentSeedingDevice";
  v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", selfCopy->_currentSeedingDevice];
  v144[16] = v55;
  v143[17] = @"betaPrograms";
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p (count: %ld)", selfCopy->_betaPrograms, -[NSArray count](selfCopy->_betaPrograms, "count")];
  v144[17] = v56;
  v143[18] = @"enrolledBetaProgram";
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", selfCopy->_enrolledBetaProgram];
  v144[18] = v57;
  v143[19] = @"isAutoUpdateScheduled";
  if (selfCopy->_isAutoUpdateScheduled)
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  v58 = v33;
  v34 = v33;
  v59 = v58;
  v144[19] = v59;
  v143[20] = @"isUpdateReadyForInstallation";
  if (selfCopy->_isUpdateReadyForInstallation)
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v60 = v35;
  v36 = v35;
  v61 = v60;
  v144[20] = v61;
  v143[21] = @"updateInstallationError";
  updateInstallationError = selfCopy->_updateInstallationError;
  v109 = 0;
  objc_storeStrong(&v109, updateInstallationError);
  v107 = 0;
  if (v109)
  {
    v38 = MEMORY[0x277D82BE0](v109);
  }

  else
  {
    null7 = [MEMORY[0x277CBEB68] null];
    v107 = 1;
    v38 = MEMORY[0x277D82BE0](null7);
  }

  v110 = v38;
  if (v107)
  {
    MEMORY[0x277D82BD8](null7);
  }

  objc_storeStrong(&v109, 0);
  v42 = v110;
  v39 = v110;
  v44 = v42;
  v144[21] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:22];
  v106 = [v86 descriptionForObject:selfCopy properties:? options:?];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v78);
  if (v96)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
  }

  MEMORY[0x277D82BD8](v80);
  if (v98)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  MEMORY[0x277D82BD8](v84);
  objc_storeStrong(obj, 0);
  v40 = v106;

  return v40;
}

@end