@interface DRSSubmitLogToCKContainerRequest
+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e;
+ (id)safeguardArchiveZoneID;
+ (id)xcRecordZoneID;
- (BOOL)isEqualToRequest:(id)request;
- (DRSSubmitLogToCKContainerRequest)initWithXPCDict:(id)dict;
- (id)_initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:(id)e;
- (id)debugDescription;
- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose;
- (id)recordRepresentation;
- (id)zoneID;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSSubmitLogToCKContainerRequest

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DRSSubmitLogToCKContainerRequest;
  v4 = [(DRSRequest *)&v11 debugDescription];
  containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  recordDictionary = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
  v9 = [v3 stringWithFormat:@"%@ %@ %@ %@ %@", v4, containerName, recordType, fileAssetField, recordDictionary];

  return v9;
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v10.receiver = self;
  v10.super_class = DRSSubmitLogToCKContainerRequest;
  [(DRSSubmitLogRequest *)&v10 _configureRequestMO:oCopy];
  v5 = oCopy;
  containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  [v5 setContainerName:containerName];

  recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  [v5 setRecordType:recordType];

  fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  [v5 setFileAssetField:fileAssetField];

  recordDictionaryData = [(DRSSubmitLogToCKContainerRequest *)self recordDictionaryData];
  [v5 setRecordDictionaryData:recordDictionaryData];
}

- (DRSSubmitLogToCKContainerRequest)initWithXPCDict:(id)dict
{
  v44 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v40.receiver = self;
  v40.super_class = DRSSubmitLogToCKContainerRequest;
  v5 = [(DRSRequest *)&v40 initWithXPCDict:dictCopy];
  if (v5)
  {
    string = xpc_dictionary_get_string(dictCopy, "containerName");
    if (!string)
    {
      goto LABEL_27;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    containerName = v5->_containerName;
    v5->_containerName = v7;

    v9 = xpc_dictionary_get_string(dictCopy, "RecordType");
    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    recordType = v5->_recordType;
    v5->_recordType = v10;

    v12 = xpc_dictionary_get_string(dictCopy, "FileAssetField");
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
    fileAssetField = v5->_fileAssetField;
    v5->_fileAssetField = v13;

    length = 0;
    data = xpc_dictionary_get_data(dictCopy, "RecordDictionaryData", &length);
    if (data && length)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
      recordDictionaryData = v5->_recordDictionaryData;
      v5->_recordDictionaryData = v16;

      recordDictionaryData = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionaryData];
      v19 = DRSDictionaryForData(recordDictionaryData);
      recordDictionary = v5->_recordDictionary;
      v5->_recordDictionary = v19;

      recordDictionary = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionary];

      if (recordDictionary)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        recordDictionary2 = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionary];
        allKeys = [recordDictionary2 allKeys];

        v25 = [allKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v36;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v36 != v27)
              {
                objc_enumerationMutation(allKeys);
              }

              v29 = *(*(&v35 + 1) + 8 * i);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if ((isKindOfClass & 1) == 0)
              {
                v33 = DPLogHandle_SubmitLogToCKContainerError(isKindOfClass);
                if (os_signpost_enabled(v33))
                {
                  *buf = 138543362;
                  v42 = v29;
                  _os_signpost_emit_with_name_impl(&dword_232906000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRecordKey", "%{public}@", buf, 0xCu);
                }

                goto LABEL_26;
              }
            }

            v26 = [allKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        [(DRSRequest *)v5 setDecisionServerDecision:2];
        goto LABEL_17;
      }

      allKeys = DPLogHandle_SubmitLogToCKContainerError(v22);
      if (!os_signpost_enabled(allKeys))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v32 = "FailedToDeserializeRecordDictionaryData";
    }

    else
    {
      allKeys = DPLogHandle_SubmitLogToCKContainerError(data);
      if (!os_signpost_enabled(allKeys))
      {
LABEL_26:

LABEL_27:
        v31 = 0;
        goto LABEL_28;
      }

      *buf = 0;
      v32 = "SubmitLogToCKContainerMissingRecordData";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, allKeys, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v32, &unk_232980861, buf, 2u);
    goto LABEL_26;
  }

LABEL_17:
  v31 = v5;
LABEL_28:

  return v31;
}

+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___DRSSubmitLogToCKContainerRequest;
  if (objc_msgSendSuper2(&v9, sel__requestMOHasRequiredFields_ON_MOC_QUEUE_, eCopy))
  {
    v5 = eCopy;
    containerName = [v5 containerName];

    if (containerName)
    {
      containerName = [v5 recordType];

      if (containerName)
      {
        containerName = [v5 fileAssetField];

        if (containerName)
        {
          recordDictionaryData = [v5 recordDictionaryData];
          LOBYTE(containerName) = recordDictionaryData != 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(containerName) = 0;
  }

  return containerName;
}

- (id)_initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v26.receiver = self;
  v26.super_class = DRSSubmitLogToCKContainerRequest;
  v5 = [(DRSSubmitLogRequest *)&v26 _initWithSubmitLogRequestMO_ON_MOC_QUEUE:eCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  containerName = [eCopy containerName];
  v7 = v5[18];
  v5[18] = containerName;

  recordType = [eCopy recordType];
  v9 = v5[19];
  v5[19] = recordType;

  recordDictionaryData = [eCopy recordDictionaryData];
  v11 = v5[21];
  v5[21] = recordDictionaryData;

  recordDictionaryData2 = [v5 recordDictionaryData];

  if (!recordDictionaryData2)
  {
    v22 = DPLogHandle_SubmitLogToCKContainerError(v13);
    if (os_signpost_enabled(v22))
    {
      *v25 = 0;
      v23 = "MissingRecordDictionaryDataFromMO";
LABEL_9:
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v23, &unk_232980861, v25, 2u);
    }

LABEL_10:

    v21 = 0;
    goto LABEL_11;
  }

  fileAssetField = [eCopy fileAssetField];
  v15 = v5[20];
  v5[20] = fileAssetField;

  recordDictionaryData3 = [v5 recordDictionaryData];
  v17 = DRSDictionaryForData(recordDictionaryData3);
  v18 = v5[22];
  v5[22] = v17;

  recordDictionary = [v5 recordDictionary];

  if (!recordDictionary)
  {
    v22 = DPLogHandle_SubmitLogToCKContainerError(v20);
    if (os_signpost_enabled(v22))
    {
      *v25 = 0;
      v23 = "FailedToDeserializeRecordDictionaryDataFromMO";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v21 = v5;
LABEL_11:

  return v21;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = DRSSubmitLogToCKContainerRequest;
  if ([(DRSSubmitLogRequest *)&v16 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
    containerName2 = [v5 containerName];
    if ([containerName isEqualToString:containerName2])
    {
      recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
      recordType2 = [v5 recordType];
      if ([recordType isEqualToString:recordType2])
      {
        fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
        fileAssetField2 = [v5 fileAssetField];
        if ([fileAssetField isEqualToString:fileAssetField2])
        {
          recordDictionaryData = [(DRSSubmitLogToCKContainerRequest *)self recordDictionaryData];
          recordDictionaryData2 = [v5 recordDictionaryData];
          v13 = [recordDictionaryData isEqualToData:recordDictionaryData2];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v17.receiver = self;
  v17.super_class = DRSSubmitLogToCKContainerRequest;
  v6 = [(DRSRequest *)&v17 jsonCompatibleDictionaryRepresentationVerbose:verboseCopy];
  v7 = MEMORY[0x277CCAAA0];
  recordDictionary = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
  LODWORD(v7) = [v7 isValidJSONObject:recordDictionary];

  if (v7)
  {
    recordDictionary2 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
    [v6 setObject:recordDictionary2 forKeyedSubscript:@"recordDictionary"];
  }

  else
  {
    v11 = DPLogHandle_Request(v9);
    if (os_signpost_enabled(v11))
    {
      v12 = [(DRSSubmitLogToCKContainerRequest *)self debugDescription];
      *buf = 138543362;
      v19 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkippedRecordDictionaryJSONSerialization", "Record dictionary for %{public}@ cannot be serialized in JSON", buf, 0xCu);
    }

    [v6 setObject:@"<Could not serialize>" forKeyedSubscript:@"recordDictionary"];
  }

  containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  [v6 setObject:containerName forKeyedSubscript:@"containerName"];

  recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  [v6 setObject:recordType forKeyedSubscript:@"recordType"];

  fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  [v6 setObject:fileAssetField forKeyedSubscript:@"fileAssetField"];

  objc_autoreleasePoolPop(v5);

  return v6;
}

+ (id)xcRecordZoneID
{
  if (xcRecordZoneID_onceToken != -1)
  {
    +[DRSSubmitLogToCKContainerRequest(CKRecord_Private) xcRecordZoneID];
  }

  v3 = xcRecordZoneID_xcRecordZone;

  return [v3 zoneID];
}

void __68__DRSSubmitLogToCKContainerRequest_CKRecord_Private__xcRecordZoneID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"3pDevEngagement"];
  v1 = xcRecordZoneID_xcRecordZone;
  xcRecordZoneID_xcRecordZone = v0;
}

+ (id)safeguardArchiveZoneID
{
  if (safeguardArchiveZoneID_onceToken != -1)
  {
    +[DRSSubmitLogToCKContainerRequest(CKRecord_Private) safeguardArchiveZoneID];
  }

  v3 = safeguardArchiveZoneID_safeguardArchiveZone;

  return [v3 zoneID];
}

void __76__DRSSubmitLogToCKContainerRequest_CKRecord_Private__safeguardArchiveZoneID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"safeguard_zone"];
  v1 = safeguardArchiveZoneID_safeguardArchiveZone;
  safeguardArchiveZoneID_safeguardArchiveZone = v0;
}

- (id)zoneID
{
  teamID = [(DRSRequest *)self teamID];
  v4 = [teamID isEqualToString:kDRSDMPPSTeamID[0]];

  if (!v4)
  {
    goto LABEL_6;
  }

  issueCategory = [(DRSRequest *)self issueCategory];
  v6 = [issueCategory isEqualToString:kDRSDMPPSXCArchiveIssueCategory[0]];

  if (v6)
  {
    xcRecordZoneID = [objc_opt_class() xcRecordZoneID];
    goto LABEL_7;
  }

  issueCategory2 = [(DRSRequest *)self issueCategory];
  v9 = [issueCategory2 isEqualToString:kDRSDMPPSSafeguardArchiveIssueCategory[0]];

  if (v9)
  {
    xcRecordZoneID = [objc_opt_class() safeguardArchiveZoneID];
  }

  else
  {
LABEL_6:
    xcRecordZoneID = 0;
  }

LABEL_7:

  return xcRecordZoneID;
}

- (id)recordRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    recordDictionary = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
    v35 = 0;
    v7 = DRValidateCKRecordDictionary(recordDictionary, &v35);
    v8 = v35;

    if (v7)
    {
      zoneID = [(DRSSubmitLogToCKContainerRequest *)self zoneID];
      v11 = objc_alloc(MEMORY[0x277CBC5A0]);
      recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
      if (zoneID)
      {
        v13 = [v11 initWithRecordType:recordType zoneID:zoneID];
      }

      else
      {
        v13 = [v11 initWithRecordType:recordType];
      }

      v21 = v13;

      recordDictionary2 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __74__DRSSubmitLogToCKContainerRequest_CKRecord_Private__recordRepresentation__block_invoke;
      v33 = &unk_27899F010;
      v16 = v21;
      v34 = v16;
      [recordDictionary2 enumerateKeysAndObjectsUsingBlock:&v30];

      v23 = [(DRSRequest *)self fileAssets:v30];
      firstObject = [v23 firstObject];

      if (firstObject)
      {
        fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
        [v16 setObject:firstObject forKeyedSubscript:fileAssetField];

        v15 = v16;
      }

      else
      {
        v27 = DPLogHandle_CKRecordError(v25);
        if (os_signpost_enabled(v27))
        {
          requestID = [(DRSRequest *)self requestID];
          *buf = 138543362;
          v37 = requestID;
          _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFileAsset", "No file asset found for %{public}@", buf, 0xCu);
        }

        v15 = 0;
      }
    }

    else
    {
      v16 = DPLogHandle_CKRecordError(v9);
      if (os_signpost_enabled(v16))
      {
        v17 = [(DRSSubmitLogToCKContainerRequest *)self debugDescription];
        localizedDescription = [v8 localizedDescription];
        v19 = localizedDescription;
        v20 = @"Unknown error";
        if (localizedDescription)
        {
          v20 = localizedDescription;
        }

        *buf = 138543618;
        v37 = v17;
        v38 = 2114;
        v39 = v20;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedRecordDictionary", "Record dictionary for %{public}@ is malformed: %{public}@", buf, 0x16u);
      }

      v15 = 0;
    }
  }

  else
  {
    v8 = DPLogHandle_CKRecordError(v5);
    if (os_signpost_enabled(v8))
    {
      requestID2 = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v37 = requestID2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFilePaths", "No file paths found for %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

@end