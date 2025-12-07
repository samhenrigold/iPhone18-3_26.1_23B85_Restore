@interface CHIPAccessoryFirmwareRecord
- (CHIPAccessoryFirmwareRecord)initWithCKRecord:(id)record;
- (CHIPAccessoryFirmwareRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)calculateDigestFromCKRecord:(id)record;
@end

@implementation CHIPAccessoryFirmwareRecord

- (CHIPAccessoryFirmwareRecord)initWithCKRecord:(id)record
{
  recordCopy = record;
  if (recordCopy
    && (v50.receiver = self, v50.super_class = CHIPAccessoryFirmwareRecord, (self = [(CHIPAccessoryFirmwareRecord *)&v50 init]) != 0)
    && (v5 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager"), log = self->_log, self->_log = v5, log, v7 = [recordCopy copy], ckRecord = self->_ckRecord, self->_ckRecord = v7, ckRecord, objc_msgSend(recordCopy, "recordID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "recordName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "copy"), recordName = self->_recordName, self->_recordName = v11, recordName, v10, v9, objc_msgSend(recordCopy, "objectForKey:", @"signatureV2"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "copy"), signature = self->_signature, self->_signature = v14, signature, v13, self->_signature)
    && ([recordCopy objectForKey:@"verificationCertificateKey"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "copy"), verificationCertificateID = self->_verificationCertificateID, self->_verificationCertificateID = v17, verificationCertificateID, v16, self->_verificationCertificateID)
    && ([recordCopy objectForKey:@"firmwareVersionString"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "copy"), firmwareVersion = self->_firmwareVersion, self->_firmwareVersion = v20, firmwareVersion, v19, objc_msgSend(recordCopy, "objectForKey:", @"firmwareVersionNumber"), v22 = objc_claimAutoreleasedReturnValue(), firmwareVersionNumber = self->_firmwareVersionNumber, self->_firmwareVersionNumber = v22, firmwareVersionNumber, self->_firmwareVersionNumber)
    && (([recordCopy objectForKey:@"minFirmwareVersionNumber"], v24 = objc_claimAutoreleasedReturnValue(), minFirmwareVersionNumber = self->_minFirmwareVersionNumber, self->_minFirmwareVersionNumber = v24, minFirmwareVersionNumber, objc_msgSend(recordCopy, "objectForKey:", @"maxFirmwareVersionNumber"), v26 = objc_claimAutoreleasedReturnValue(), maxFirmwareVersionNumber = self->_maxFirmwareVersionNumber, self->_maxFirmwareVersionNumber = v26, maxFirmwareVersionNumber, objc_msgSend(recordCopy, "objectForKey:", @"firmwareURL"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "copy"), firmwareURL = self->_firmwareURL, self->_firmwareURL = v29, firmwareURL, v28, objc_msgSend(recordCopy, "objectForKey:", @"firmwareBinaryHash"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "copy"), firmwareBinaryHash = self->_firmwareBinaryHash, self->_firmwareBinaryHash = v32, firmwareBinaryHash, v31, !self->_firmwareURL) || self->_firmwareBinaryHash)
    && (([recordCopy objectForKey:@"firmwareFileSize"], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "copy"), firmwareFileSize = self->_firmwareFileSize, self->_firmwareFileSize = v35, firmwareFileSize, v34, !self->_firmwareURL) || self->_firmwareFileSize)
    && (([recordCopy objectForKey:@"hashAlgorithmType"], v37 = objc_claimAutoreleasedReturnValue(), hashAlgorithmType = self->_hashAlgorithmType, self->_hashAlgorithmType = v37, hashAlgorithmType, !self->_firmwareURL) || self->_hashAlgorithmType)
    && ([recordCopy objectForKey:@"cdVersionNumber"], v39 = objc_claimAutoreleasedReturnValue(), cdVersionNumber = self->_cdVersionNumber, self->_cdVersionNumber = v39, cdVersionNumber, objc_msgSend(recordCopy, "objectForKey:", @"releaseNotesURL"), v41 = objc_claimAutoreleasedReturnValue(), releaseNotesURL = self->_releaseNotesURL, self->_releaseNotesURL = v41, releaseNotesURL, objc_msgSend(recordCopy, "modificationDate"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "copy"), releaseDate = self->_releaseDate, self->_releaseDate = v44, releaseDate, v43, objc_msgSend(recordCopy, "objectForKey:", @"recordStatus"), v46 = objc_claimAutoreleasedReturnValue(), recordStatus = self->_recordStatus, self->_recordStatus = v46, recordStatus, self->_recordStatus))
  {
    [(CHIPAccessoryFirmwareRecord *)self calculateDigestFromCKRecord:recordCopy];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHIPAccessoryFirmwareRecord alloc];
  ckRecord = self->_ckRecord;

  return [(CHIPAccessoryFirmwareRecord *)v4 initWithCKRecord:ckRecord];
}

- (CHIPAccessoryFirmwareRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(CHIPAccessoryFirmwareRecord *)self initWithCKRecord:v5];
  return v6;
}

- (void)calculateDigestFromCKRecord:(id)record
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  digest = self->_digest;
  self->_digest = 0;

  allKeys = [recordCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    for (i = *v25; ; i = *v25)
    {
      if (i != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v24 + 1) + 8 * v11);
      if (([v14 isEqualToString:@"firmwareVersionNumber"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"minFirmwareVersionNumber") & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"maxFirmwareVersionNumber"))
      {
        break;
      }

      if ([v14 isEqualToString:@"hashAlgorithmType"])
      {
        v15 = [recordCopy objectForKey:v14];
        data = bswap64([v15 unsignedLongLongValue]);
        v16 = 8;
        goto LABEL_9;
      }

      if ([v14 isEqualToString:@"cdVersionNumber"])
      {
        v15 = [recordCopy objectForKey:v14];
        LOWORD(data) = __rev16([v15 unsignedShortValue]);
        v16 = 2;
        goto LABEL_9;
      }

      if (([v14 isEqualToString:@"verificationCertificateKey"] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signature") & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signatureV2") & 1) == 0)
      {
        v15 = [recordCopy objectForKey:v14];
        [v15 dataUsingEncoding:4];
        v18 = v22 = self;
        CC_SHA256_Update(&c, [v18 bytes], objc_msgSend(v18, "length"));

        self = v22;
        goto LABEL_10;
      }

LABEL_11:
      if (++v11 >= v10)
      {
        v17 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (!v17)
        {
          goto LABEL_23;
        }

        v10 = v17;
        v11 = 0;
      }
    }

    v15 = [recordCopy objectForKey:v14];
    LODWORD(data) = bswap32([v15 unsignedIntValue]);
    v16 = 4;
LABEL_9:
    CC_SHA256_Update(&c, &data, v16);
LABEL_10:

    goto LABEL_11;
  }

LABEL_23:

  v19 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256_Final([v19 mutableBytes], &c);
  v20 = [MEMORY[0x277CBEA90] dataWithData:v19];
  v21 = self->_digest;
  self->_digest = v20;
}

@end