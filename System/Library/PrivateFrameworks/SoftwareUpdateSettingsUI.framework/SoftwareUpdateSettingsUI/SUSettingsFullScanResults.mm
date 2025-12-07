@interface SUSettingsFullScanResults
- (id)description;
- (id)initFromScanParam:(id)param withUUID:(id)d;
@end

@implementation SUSettingsFullScanResults

- (id)initFromScanParam:(id)param withUUID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, param);
  v22 = 0;
  objc_storeStrong(&v22, d);
  v4 = selfCopy;
  selfCopy = 0;
  v21.receiver = v4;
  v21.super_class = SUSettingsFullScanResults;
  v20 = [(SUSettingsScanResults *)&v21 initFromScanParam:location[0] withUUID:v22];
  selfCopy = v20;
  objc_storeStrong(&selfCopy, v20);
  if (v20)
  {
    preferredDescriptor = [location[0] preferredDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setPreferredDescriptor:?];
    MEMORY[0x277D82BD8](preferredDescriptor);
    alternateDescriptor = [location[0] alternateDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setAlternateDescriptor:?];
    MEMORY[0x277D82BD8](alternateDescriptor);
    latestDescriptor = [location[0] latestDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setLatestDescriptor:?];
    MEMORY[0x277D82BD8](latestDescriptor);
    scanError = [location[0] scanError];
    [(SUSettingsFullScanResults *)selfCopy setScanError:?];
    MEMORY[0x277D82BD8](scanError);
    mdmPathRestrictions = [location[0] mdmPathRestrictions];
    [(SUSettingsFullScanResults *)selfCopy setMdmPathRestrictions:mdmPathRestrictions];
    isDelayingUpdate = [location[0] isDelayingUpdate];
    [(SUSettingsFullScanResults *)selfCopy setIsDelayingUpdate:isDelayingUpdate];
    isRollingBack = [location[0] isRollingBack];
    [(SUSettingsFullScanResults *)selfCopy setIsRollingBack:isRollingBack];
    rollbackDescriptor = [location[0] rollbackDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setRollbackDescriptor:?];
    MEMORY[0x277D82BD8](rollbackDescriptor);
    currentSeedingDevice = [location[0] currentSeedingDevice];
    [(SUSettingsFullScanResults *)selfCopy setCurrentSeedingDevice:?];
    MEMORY[0x277D82BD8](currentSeedingDevice);
    betaPrograms = [location[0] betaPrograms];
    [(SUSettingsFullScanResults *)selfCopy setBetaPrograms:?];
    MEMORY[0x277D82BD8](betaPrograms);
    enrolledBetaProgram = [location[0] enrolledBetaProgram];
    [(SUSettingsFullScanResults *)selfCopy setEnrolledBetaProgram:?];
    MEMORY[0x277D82BD8](enrolledBetaProgram);
    ddmDeclaration = [location[0] ddmDeclaration];
    [(SUSettingsFullScanResults *)selfCopy setDDMDeclaration:?];
    MEMORY[0x277D82BD8](ddmDeclaration);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)description
{
  v79 = &v99;
  selfCopy = self;
  v99 = a2;
  location = MEMORY[0x277D82BE0](@"(null)");
  currentDownload = [(SUSettingsScanResults *)selfCopy currentDownload];
  v96 = 0;
  v94 = 0;
  v81 = 0;
  if (currentDownload)
  {
    currentDownload2 = [v79[1] currentDownload];
    v78 = 1;
    v96 = 1;
    descriptor = [currentDownload2 descriptor];
    v94 = 1;
    v81 = descriptor != 0;
  }

  v77 = v81;
  if (v94)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v96)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v77)
  {
    v70 = MEMORY[0x277CCACA8];
    currentDownload3 = [v79[1] currentDownload];
    descriptor2 = [currentDownload3 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
    currentDownload4 = [v79[1] currentDownload];
    currentDownload5 = [v79[1] currentDownload];
    progress = [currentDownload5 progress];
    v2 = [v70 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
    v3 = location;
    location = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v65 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v66 = NSStringFromClass(v4);
  v67 = v79[1];
  scanUUID = [v79[1] scanUUID];
  preferredDescriptor = [v79[1] preferredDescriptor];
  v92 = 0;
  v90 = 0;
  if (preferredDescriptor)
  {
    preferredDescriptor2 = [v79[1] preferredDescriptor];
    v63 = 1;
    v92 = 1;
    humanReadableUpdateName2 = [preferredDescriptor2 humanReadableUpdateName];
    v90 = 1;
    v64 = humanReadableUpdateName2;
  }

  else
  {
    v64 = @"(null)";
  }

  v60 = v64;
  preferredDescriptor3 = [v79[1] preferredDescriptor];
  alternateDescriptor = [v79[1] alternateDescriptor];
  v88 = 0;
  v86 = 0;
  if (alternateDescriptor)
  {
    alternateDescriptor2 = [v79[1] alternateDescriptor];
    v58 = 1;
    v88 = 1;
    humanReadableUpdateName3 = [alternateDescriptor2 humanReadableUpdateName];
    v86 = 1;
    v59 = humanReadableUpdateName3;
  }

  else
  {
    v59 = @"(null)";
  }

  v55 = v59;
  alternateDescriptor3 = [v79[1] alternateDescriptor];
  latestDescriptor = [v79[1] latestDescriptor];
  v84 = 0;
  v82 = 0;
  if (latestDescriptor)
  {
    latestDescriptor2 = [v79[1] latestDescriptor];
    v53 = 1;
    v84 = 1;
    humanReadableUpdateName4 = [latestDescriptor2 humanReadableUpdateName];
    v82 = 1;
    v54 = humanReadableUpdateName4;
  }

  else
  {
    v54 = @"(null)";
  }

  latestDescriptor3 = [v79[1] latestDescriptor];
  v52 = latestDescriptor3;
  scanError = [v79[1] scanError];
  v51 = scanError;
  emptyScanResults = [v79[1] emptyScanResults];
  v29 = "NO";
  v30 = "YES";
  if (emptyScanResults)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if ([v79[1] preferredUpdateDownloadable])
  {
    v9 = v30;
  }

  else
  {
    v9 = v29;
  }

  if ([v79[1] alternateUpdateDownloadable])
  {
    v10 = v30;
  }

  else
  {
    v10 = v29;
  }

  preferredUpdateDownloadError = [v79[1] preferredUpdateDownloadError];
  v50 = preferredUpdateDownloadError;
  alternateUpdateDownloadError = [v79[1] alternateUpdateDownloadError];
  v49 = alternateUpdateDownloadError;
  agreementManager = [v79[1] agreementManager];
  v48 = agreementManager;
  isClearingSpaceForDownload = [v79[1] isClearingSpaceForDownload];
  v31 = location;
  [v79[1] mdmPathRestrictions];
  v47 = SUStringFromMDMSUPath();
  mdmPathRestrictions = [v79[1] mdmPathRestrictions];
  ddmDeclaration = [v79[1] ddmDeclaration];
  isDelayingUpdate = [v79[1] isDelayingUpdate];
  v16 = v30;
  if ((isDelayingUpdate & 1) == 0)
  {
    v16 = v29;
  }

  v33 = v16;
  isRollingBack = [v79[1] isRollingBack];
  v18 = v30;
  if ((isRollingBack & 1) == 0)
  {
    v18 = v29;
  }

  v34 = v18;
  rollbackDescriptor = [v79[1] rollbackDescriptor];
  currentSeedingDevice = [v79[1] currentSeedingDevice];
  betaPrograms = [v79[1] betaPrograms];
  betaPrograms2 = [v79[1] betaPrograms];
  v35 = [betaPrograms2 count];
  enrolledBetaProgram = [v79[1] enrolledBetaProgram];
  isAutoUpdateScheduled = [v79[1] isAutoUpdateScheduled];
  v20 = v30;
  if ((isAutoUpdateScheduled & 1) == 0)
  {
    v20 = v29;
  }

  v36 = v20;
  currentAutoInstallOperation = [v79[1] currentAutoInstallOperation];
  isUpdateReadyForInstallation = [v79[1] isUpdateReadyForInstallation];
  v22 = v30;
  if ((isUpdateReadyForInstallation & 1) == 0)
  {
    v22 = v29;
  }

  v37 = v22;
  updateInstallationError = [v79[1] updateInstallationError];
  v38 = &v27;
  v28 = isClearingSpaceForDownload & 1;
  v23 = [v65 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@, \n\tpreferredDescriptor: %@ (%p), \n\talternateDescriptor: %@ (%p), \n\tlatestUpdateDescriptor: %@ (%p), \n\tscanError: %@, \n\temptyScanResults: %s, \n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tmdmPathRestrictions: %@ (%ld), \n\tddmDeclaration: %p\n\tisDelayingUpdate: %s\n\tisRollingBack: %s\n\trollbackDescriptor: %p\n\tcurrentSeedingDevice: %p\n\tbetaPrograms: %p (count: %ld)\n\tenrolledBetaProgram: %p\n\tautoUpdateScheduled: %s (%p)\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v66, v67, scanUUID, v60, preferredDescriptor3, v55, alternateDescriptor3, v54, latestDescriptor3, scanError, v8, v9, v10, preferredUpdateDownloadError, alternateUpdateDownloadError, agreementManager, v28, v31, v47, mdmPathRestrictions, ddmDeclaration, v33, v34, rollbackDescriptor, currentSeedingDevice, betaPrograms, v35, enrolledBetaProgram, v36, currentAutoInstallOperation, v37, updateInstallationError];
  v24 = updateInstallationError;
  v79[2] = v23;
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](betaPrograms2);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](ddmDeclaration);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  if (v82)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
  }

  if (v84)
  {
    MEMORY[0x277D82BD8](latestDescriptor2);
  }

  MEMORY[0x277D82BD8](latestDescriptor);
  MEMORY[0x277D82BD8](alternateDescriptor3);
  if (v86)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
  }

  if (v88)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  MEMORY[0x277D82BD8](preferredDescriptor3);
  if (v90)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  if (v92)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  MEMORY[0x277D82BD8](scanUUID);
  MEMORY[0x277D82BD8](v66);
  objc_storeStrong(&location, 0);
  v25 = v79[2];

  return v25;
}

@end