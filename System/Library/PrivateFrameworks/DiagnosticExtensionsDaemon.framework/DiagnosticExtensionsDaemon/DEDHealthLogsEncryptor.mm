@interface DEDHealthLogsEncryptor
- (id)encryptLogsAtPath:(id)path toDirectory:(id)directory withMetadata:(id)metadata anonymousDeviceUUID:(id)d;
@end

@implementation DEDHealthLogsEncryptor

- (id)encryptLogsAtPath:(id)path toDirectory:(id)directory withMetadata:(id)metadata anonymousDeviceUUID:(id)d
{
  v82 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  directoryCopy = directory;
  metadataCopy = metadata;
  dCopy = d;
  v13 = [metadataCopy objectForKey:@"cloudKitEnv"];
  v14 = [metadataCopy objectForKey:@"publicKey"];
  if (!v14 && v13)
  {
    [v13 BOOLValue];
  }

  v15 = HKHealthWrapCertificateFromString();
  if (v15)
  {
    v62 = v13;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [pathCopy path];
    v18 = [defaultManager fileExistsAtPath:path];

    path2 = [pathCopy path];
    v71 = 0;
    v61 = defaultManager;
    v65 = [defaultManager attributesOfItemAtPath:path2 error:&v71];
    v20 = v71;

    v22 = LogEncryptor(v21);
    v66 = v20;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [pathCopy path];
      *buf = 138543618;
      v75 = path3;
      v76 = 1026;
      LODWORD(v77) = v18;
      _os_log_impl(&dword_248AD7000, v22, OS_LOG_TYPE_DEFAULT, "Does file exist at path: %{public}@ (Y/N): %{public}d", buf, 0x12u);

      v20 = v66;
    }

    if (v20)
    {
      v25 = LogEncryptor(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [DEDHealthLogsEncryptor encryptLogsAtPath:pathCopy toDirectory:v20 withMetadata:v25 anonymousDeviceUUID:?];
      }
    }

    v26 = LogEncryptor(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      path4 = [pathCopy path];
      *buf = 138543618;
      v75 = path4;
      v76 = 2114;
      v77 = v65;
      _os_log_impl(&dword_248AD7000, v26, OS_LOG_TYPE_DEFAULT, "File Attributes of file: %{public}@ Attributes Dict: %{public}@", buf, 0x16u);
    }

    v28 = [metadataCopy objectForKeyedSubscript:@"channel"];
    v29 = [metadataCopy objectForKeyedSubscript:@"payloadType"];
    v30 = [metadataCopy objectForKeyedSubscript:@"timberLorryUUID"];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v67 = uUID;
    v63 = v29;
    v64 = v30;
    if (!v28 || !v29 || !v30)
    {
      v38 = LogEncryptor(uUID);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v75 = pathCopy;
        v76 = 2112;
        v77 = v28;
        v78 = 2112;
        v79 = v63;
        v80 = 2112;
        v81 = v30;
        _os_log_error_impl(&dword_248AD7000, v38, OS_LOG_TYPE_ERROR, "Tried to use HealthLogsEncryptor without necessary parameters. The files at path: %{public}@ will be skipped. channel: %@, payloadType: %@, caseID: %@", buf, 0x2Au);
      }

      v37 = 0;
      goto LABEL_37;
    }

    v59 = v28;
    v60 = directoryCopy;
    v32 = v15;
    v33 = [metadataCopy objectForKey:@"studyID"];

    if (v33)
    {
      v34 = [metadataCopy objectForKey:@"studyID"];
      v35 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v34];
    }

    else
    {
      v35 = v67;
    }

    v39 = objc_alloc(MEMORY[0x277CCD500]);
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v67 = v35;
    v41 = v35;
    v15 = v32;
    v38 = [v39 initWithSubjectUUID:uUID2 studyUUID:v41 channel:v59 payloadType:v29 certificate:v32];

    date = [MEMORY[0x277CBEAA8] date];
    [v38 setStartDate:date];

    date2 = [MEMORY[0x277CBEAA8] date];
    [v38 setEndDate:date2];

    v73[0] = v64;
    v72[0] = @"caseID";
    v72[1] = @"deviceUUID";
    v58 = dCopy;
    uUIDString = [dCopy UUIDString];
    v73[1] = uUIDString;
    v72[2] = @"modelID";
    v45 = MGCopyAnswer();
    v73[2] = v45;
    v72[3] = @"originalFilename";
    lastPathComponent = [pathCopy lastPathComponent];
    v73[3] = lastPathComponent;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:4];
    [v38 setKeyValuePairs:v47];

    v48 = [objc_alloc(MEMORY[0x277CCD4F8]) initWithConfiguration:v38];
    v49 = [MEMORY[0x277CCD4F8] newOutputFileURLInDirectory:v60];
    v70 = 0;
    LODWORD(v47) = [v48 startWithOutputFileURL:v49 error:&v70];
    v50 = v70;
    v51 = v50;
    if (v47)
    {
      v69 = v50;
      v52 = [v48 appendDataFromFileURL:pathCopy error:&v69];
      v53 = v69;

      if (v52 && !v53)
      {
        v68 = 0;
        v54 = [v48 finalizeWithError:&v68];
        v55 = v68;
        v53 = v55;
        if (!v55)
        {
          v54 = v54;
          v37 = v54;
          goto LABEL_36;
        }

        v56 = LogEncryptor(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [DEDHealthLogsEncryptor encryptLogsAtPath:v53 toDirectory:v56 withMetadata:? anonymousDeviceUUID:?];
        }

LABEL_35:
        v37 = 0;
LABEL_36:

        v28 = v59;
        directoryCopy = v60;
        dCopy = v58;
LABEL_37:
        v36 = v66;

        v13 = v62;
        goto LABEL_38;
      }
    }

    else
    {
      v53 = v50;
    }

    v54 = LogEncryptor(v50);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [DEDHealthLogsEncryptor encryptLogsAtPath:v53 toDirectory:v54 withMetadata:? anonymousDeviceUUID:?];
    }

    goto LABEL_35;
  }

  v36 = LogEncryptor(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    [DEDHealthLogsEncryptor encryptLogsAtPath:v36 toDirectory:? withMetadata:? anonymousDeviceUUID:?];
  }

  v37 = 0;
LABEL_38:

  return v37;
}

- (void)encryptLogsAtPath:(NSObject *)a3 toDirectory:withMetadata:anonymousDeviceUUID:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Unable to get file attributes at path: %{public}@ with Error: %{public}@", &v6, 0x16u);
}

- (void)encryptLogsAtPath:(uint64_t)a1 toDirectory:(NSObject *)a2 withMetadata:anonymousDeviceUUID:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error: Unable to encrypt the files error: %{public}@", &v2, 0xCu);
}

- (void)encryptLogsAtPath:(uint64_t)a1 toDirectory:(NSObject *)a2 withMetadata:anonymousDeviceUUID:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error: Unable to finalize the files error: %{public}@", &v2, 0xCu);
}

@end