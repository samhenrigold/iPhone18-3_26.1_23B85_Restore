@interface SUSettingsScanParam
- (SUSettingsScanParam)initWithError:(id)error;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update encounteredError:(id)error;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update previouslyDiscoveredAutoInstallOperation:(id)operation encounteredError:(id)error;
- (SUSettingsScanParam)initWithScanOptions:(id)options;
- (id)description;
@end

@implementation SUSettingsScanParam

- (SUSettingsScanParam)initWithScanOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSettingsScanParam;
  v6 = [(SUSettingsScanParam *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(SUSettingsScanParam *)selfCopy setOptions:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (SUSettingsScanParam)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSettingsScanParam;
  v6 = [(SUSettingsScanParam *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(SUSettingsScanParam *)selfCopy setOperationError:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v13 = 0;
  objc_storeStrong(&v13, alternateDescriptor);
  v12 = 0;
  objc_storeStrong(&v12, latestDescriptor);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUSettingsScanParam;
  v10 = [(SUSettingsScanParam *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    [(SUSettingsScanParam *)selfCopy setPreferredDescriptor:location[0]];
    [(SUSettingsScanParam *)selfCopy setAlternateDescriptor:v13];
    [(SUSettingsScanParam *)selfCopy setLatestDescriptor:v12];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update previouslyDiscoveredAutoInstallOperation:(id)operation encounteredError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v21 = 0;
  objc_storeStrong(&v21, alternateDescriptor);
  v20 = 0;
  objc_storeStrong(&v20, latestDescriptor);
  v19 = 0;
  objc_storeStrong(&v19, update);
  v18 = 0;
  objc_storeStrong(&v18, operation);
  v17 = 0;
  objc_storeStrong(&v17, error);
  v8 = selfCopy;
  selfCopy = 0;
  v16 = [(SUSettingsScanParam *)v8 initWithPreferredDescriptor:location[0] alternateDescriptor:v21 andLatestDescriptor:v20];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    [(SUSettingsScanParam *)selfCopy setCurrentDownload:v19];
    [(SUSettingsScanParam *)selfCopy setCurrentAutoInstallOperation:v18];
    [(SUSettingsScanParam *)selfCopy setIsAutoUpdateScheduled:v18 != 0];
    [(SUSettingsScanParam *)selfCopy setOperationError:v17];
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update encounteredError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v18 = 0;
  objc_storeStrong(&v18, alternateDescriptor);
  v17 = 0;
  objc_storeStrong(&v17, latestDescriptor);
  v16 = 0;
  objc_storeStrong(&v16, update);
  v15 = 0;
  objc_storeStrong(&v15, error);
  v7 = selfCopy;
  selfCopy = 0;
  v14 = [(SUSettingsScanParam *)v7 initWithPreferredDescriptor:location[0] alternateDescriptor:v18 andLatestDescriptor:v17];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    [(SUSettingsScanParam *)selfCopy setCurrentDownload:v16];
    [(SUSettingsScanParam *)selfCopy setOperationError:v15];
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)description
{
  v77 = &v97;
  selfCopy = self;
  v97 = a2;
  location = MEMORY[0x277D82BE0](@"(null)");
  currentDownload = [(SUSettingsScanParam *)selfCopy currentDownload];
  v94 = 0;
  v92 = 0;
  v79 = 0;
  if (currentDownload)
  {
    currentDownload2 = [v77[1] currentDownload];
    v76 = 1;
    v94 = 1;
    descriptor = [currentDownload2 descriptor];
    v92 = 1;
    v79 = descriptor != 0;
  }

  v75 = v79;
  if (v92)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v94)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v75)
  {
    v68 = MEMORY[0x277CCACA8];
    currentDownload3 = [v77[1] currentDownload];
    descriptor2 = [currentDownload3 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
    currentDownload4 = [v77[1] currentDownload];
    currentDownload5 = [v77[1] currentDownload];
    progress = [currentDownload5 progress];
    v2 = [v68 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
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

  v62 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v63 = NSStringFromClass(v4);
  v64 = v77[1];
  options = [v77[1] options];
  operationError = [v77[1] operationError];
  preferredDescriptor = [v77[1] preferredDescriptor];
  v90 = 0;
  v88 = 0;
  if (preferredDescriptor)
  {
    preferredDescriptor2 = [v77[1] preferredDescriptor];
    v60 = 1;
    v90 = 1;
    humanReadableUpdateName2 = [preferredDescriptor2 humanReadableUpdateName];
    v88 = 1;
    v61 = humanReadableUpdateName2;
  }

  else
  {
    v61 = @"(null)";
  }

  v57 = v61;
  preferredDescriptor3 = [v77[1] preferredDescriptor];
  alternateDescriptor = [v77[1] alternateDescriptor];
  v86 = 0;
  v84 = 0;
  if (alternateDescriptor)
  {
    alternateDescriptor2 = [v77[1] alternateDescriptor];
    v55 = 1;
    v86 = 1;
    humanReadableUpdateName3 = [alternateDescriptor2 humanReadableUpdateName];
    v84 = 1;
    v56 = humanReadableUpdateName3;
  }

  else
  {
    v56 = @"(null)";
  }

  v52 = v56;
  alternateDescriptor3 = [v77[1] alternateDescriptor];
  latestDescriptor = [v77[1] latestDescriptor];
  v82 = 0;
  v80 = 0;
  if (latestDescriptor)
  {
    latestDescriptor2 = [v77[1] latestDescriptor];
    v50 = 1;
    v82 = 1;
    humanReadableUpdateName4 = [latestDescriptor2 humanReadableUpdateName];
    v80 = 1;
    v51 = humanReadableUpdateName4;
  }

  else
  {
    v51 = @"(null)";
  }

  latestDescriptor3 = [v77[1] latestDescriptor];
  v49 = latestDescriptor3;
  scanError = [v77[1] scanError];
  v48 = scanError;
  emptyScanResults = [v77[1] emptyScanResults];
  v27 = "NO";
  v28 = "YES";
  if (emptyScanResults)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if ([v77[1] preferredUpdateDownloadable])
  {
    v9 = v28;
  }

  else
  {
    v9 = v27;
  }

  if ([v77[1] alternateUpdateDownloadable])
  {
    v10 = v28;
  }

  else
  {
    v10 = v27;
  }

  preferredUpdateDownloadError = [v77[1] preferredUpdateDownloadError];
  v47 = preferredUpdateDownloadError;
  alternateUpdateDownloadError = [v77[1] alternateUpdateDownloadError];
  v46 = alternateUpdateDownloadError;
  agreementManager = [v77[1] agreementManager];
  isClearingSpaceForDownload = [v77[1] isClearingSpaceForDownload];
  v30 = location;
  [v77[1] mdmPathRestrictions];
  v44 = SUStringFromMDMSUPath();
  mdmPathRestrictions = [v77[1] mdmPathRestrictions];
  isDelayingUpdate = [v77[1] isDelayingUpdate];
  v14 = v28;
  if ((isDelayingUpdate & 1) == 0)
  {
    v14 = v27;
  }

  v32 = v14;
  isRollingBack = [v77[1] isRollingBack];
  v16 = v28;
  if ((isRollingBack & 1) == 0)
  {
    v16 = v27;
  }

  v33 = v16;
  rollbackDescriptor = [v77[1] rollbackDescriptor];
  currentSeedingDevice = [v77[1] currentSeedingDevice];
  betaPrograms = [v77[1] betaPrograms];
  betaPrograms2 = [v77[1] betaPrograms];
  v34 = [betaPrograms2 count];
  enrolledBetaProgram = [v77[1] enrolledBetaProgram];
  isAutoUpdateScheduled = [v77[1] isAutoUpdateScheduled];
  v18 = v28;
  if ((isAutoUpdateScheduled & 1) == 0)
  {
    v18 = v27;
  }

  v35 = v18;
  isUpdateReadyForInstallation = [v77[1] isUpdateReadyForInstallation];
  v20 = v28;
  if ((isUpdateReadyForInstallation & 1) == 0)
  {
    v20 = v27;
  }

  v36 = v20;
  updateInstallationError = [v77[1] updateInstallationError];
  v37 = &v25;
  v26 = isClearingSpaceForDownload & 1;
  v21 = [v62 stringWithFormat:@"<%@: %p, \n\tscanOptions: %@\n\toperationError: %@\n\tpreferredDescriptor: %@ (%p), \n\talternateDescriptor: %@ (%p), \n\tlatestDescriptor: %@ (%p), \n\tscanError: %@, \n\temptyScanResults: %s, \n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tmdmPathRestrictions: %@ (%ld), \n\tisDelayingUpdate: %s\n\tisRollingBack: %s\n\trollbackDescriptor: %p\n\tcurrentSeedingDevice: %p\n\tbetaPrograms: %p (count: %ld)\n\tenrolledBetaProgram: %p\n\tautoUpdateScheduled: %s\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v63, v64, options, operationError, v57, preferredDescriptor3, v52, alternateDescriptor3, v51, latestDescriptor3, scanError, v8, v9, v10, preferredUpdateDownloadError, alternateUpdateDownloadError, agreementManager, v26, v30, v44, mdmPathRestrictions, v32, v33, rollbackDescriptor, currentSeedingDevice, betaPrograms, v34, enrolledBetaProgram, v35, v36, updateInstallationError];
  v22 = updateInstallationError;
  v77[2] = v21;
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](betaPrograms2);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](agreementManager);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  if (v80)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
  }

  if (v82)
  {
    MEMORY[0x277D82BD8](latestDescriptor2);
  }

  MEMORY[0x277D82BD8](latestDescriptor);
  MEMORY[0x277D82BD8](alternateDescriptor3);
  if (v84)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
  }

  if (v86)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  MEMORY[0x277D82BD8](preferredDescriptor3);
  if (v88)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  if (v90)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  MEMORY[0x277D82BD8](operationError);
  MEMORY[0x277D82BD8](options);
  MEMORY[0x277D82BD8](v63);
  objc_storeStrong(&location, 0);
  v23 = v77[2];

  return v23;
}

@end