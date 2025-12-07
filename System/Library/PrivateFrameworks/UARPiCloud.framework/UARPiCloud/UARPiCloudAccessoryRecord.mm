@interface UARPiCloudAccessoryRecord
- (UARPiCloudAccessoryRecord)initWithCKRecord:(id)record;
- (UARPiCloudAccessoryRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPiCloudAccessoryRecord

- (UARPiCloudAccessoryRecord)initWithCKRecord:(id)record
{
  recordCopy = record;
  v60.receiver = self;
  v60.super_class = UARPiCloudAccessoryRecord;
  v5 = [(UARPiCloudAccessoryRecord *)&v60 init];
  if (!v5)
  {
    v58 = 0;
    goto LABEL_18;
  }

  v6 = [recordCopy copy];
  ckRecord = v5->_ckRecord;
  v5->_ckRecord = v6;

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v10 = [recordName copy];
  recordName = v5->_recordName;
  v5->_recordName = v10;

  if (!v5->_recordName
    || ([recordCopy objectForKey:@"manufacturer"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "copy"), manufacturer = v5->_manufacturer, v5->_manufacturer = v13, manufacturer, v12, !v5->_manufacturer)
    || ([recordCopy objectForKey:@"recordStatus"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "copy"), recordStatus = v5->_recordStatus, v5->_recordStatus = v16, recordStatus, v15, !v5->_recordStatus)
    || ([recordCopy objectForKey:@"model"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "copy"), model = v5->_model, v5->_model = v19, model, v18, !v5->_model)
    || ([recordCopy objectForKey:@"firmwareVersion"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "copy"), firmwareVersion = v5->_firmwareVersion, v5->_firmwareVersion = v22, firmwareVersion, v21, !v5->_firmwareVersion)
    || ([recordCopy objectForKey:@"firmwareURL"], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "copy"), firmwareURL = v5->_firmwareURL, v5->_firmwareURL = v25, firmwareURL, v24, !v5->_firmwareURL)
    || ([recordCopy objectForKey:@"releaseType"], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "copy"), releaseType = v5->_releaseType, v5->_releaseType = v28, releaseType, v27, objc_msgSend(recordCopy, "objectForKey:", @"updateClassification"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "copy"), updateClassification = v5->_updateClassification, v5->_updateClassification = v31, updateClassification, v30, objc_msgSend(recordCopy, "objectForKey:", @"releaseNotesURL"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "copy"), releaseNotesURL = v5->_releaseNotesURL, v5->_releaseNotesURL = v34, releaseNotesURL, v33, !v5->_releaseNotesURL)
    || ([recordCopy objectForKey:@"firmwareBinaryHash"], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "copy"), firmwareBinaryHash = v5->_firmwareBinaryHash, v5->_firmwareBinaryHash = v37, firmwareBinaryHash, v36, !v5->_firmwareBinaryHash)
    || ([recordCopy objectForKey:@"releaseNotesHash"], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "copy"), releaseNotesHash = v5->_releaseNotesHash, v5->_releaseNotesHash = v40, releaseNotesHash, v39, !v5->_releaseNotesHash)
    || ([recordCopy objectForKey:@"signature"], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "copy"), signature = v5->_signature, v5->_signature = v43, signature, v42, !v5->_signature)
    || ([recordCopy objectForKey:@"releaseDate"], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "copy"), releaseDate = v5->_releaseDate, v5->_releaseDate = v46, releaseDate, v45, !v5->_releaseDate)
    || ([recordCopy objectForKey:@"firmwareFileSize"], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "copy"), firmwareFileSize = v5->_firmwareFileSize, v5->_firmwareFileSize = v49, firmwareFileSize, v48, !v5->_firmwareFileSize)
    || ([recordCopy objectForKey:@"releaseNotesFileSize"], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "copy"), releaseNotesFileSize = v5->_releaseNotesFileSize, v5->_releaseNotesFileSize = v52, releaseNotesFileSize, v51, !v5->_releaseNotesFileSize))
  {
    v58 = v5;
    v5 = 0;
    goto LABEL_18;
  }

  v54 = [recordCopy objectForKey:@"deploymentList"];
  v55 = [v54 copy];
  deploymentStr = v5->_deploymentStr;
  v5->_deploymentStr = v55;

  v57 = v5->_deploymentStr;
  if (v57)
  {
    [(UARPiCloudAccessoryRecord *)v57 initWithCKRecord:v5, &v61];
    v58 = v61;
LABEL_18:
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPiCloudAccessoryRecord alloc];
  ckRecord = self->_ckRecord;

  return [(UARPiCloudAccessoryRecord *)v4 initWithCKRecord:ckRecord];
}

- (void)encodeWithCoder:(id)coder
{
  ckRecord = self->_ckRecord;
  coderCopy = coder;
  [coderCopy encodeObject:ckRecord forKey:@"record"];
  [coderCopy encodeObject:self->_manufacturer forKey:@"manufacturer"];
  [coderCopy encodeObject:self->_recordStatus forKey:@"recordStatus"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"model"];
  [coderCopy encodeObject:self->_firmwareURL forKey:@"firmwareURL"];
  [coderCopy encodeObject:self->_releaseType forKey:@"releaseType"];
  [coderCopy encodeObject:self->_updateClassification forKey:@"updateClassification"];
  [coderCopy encodeObject:self->_releaseNotesURL forKey:@"releaseNotesURL"];
  [coderCopy encodeObject:self->_firmwareBinaryHash forKey:@"firmwareBinaryHash"];
  [coderCopy encodeObject:self->_releaseNotesHash forKey:@"releaseNotesHash"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_deploymentList forKey:@"deploymentList"];
}

- (UARPiCloudAccessoryRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  v6 = [(UARPiCloudAccessoryRecord *)self initWithCKRecord:v5];
  return v6;
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  stringCopy = string;
  [stringCopy appendWithTabDepth:depth format:{@"Name: %@\n", self->_recordName}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Status: %@\n", self->_recordStatus}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Manufacturer: %@\n", self->_manufacturer}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Model: %@\n", self->_model}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Firmware Version: %@\n", self->_firmwareVersion}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Firmware URL: %@\n", self->_firmwareURL}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Type: %@\n", self->_releaseType}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Update Classification: %@\n", self->_updateClassification}];
  if (self->_deploymentStr)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Deployment String: %@\n", self->_deploymentStr}];
  }

  if (self->_deploymentList)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Deployment List: %@\n", self->_deploymentList}];
  }

  [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes URL: %@\n", self->_releaseNotesURL}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Firmware Binary Hash: %@\n", self->_firmwareBinaryHash}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes Hash: %@\n", self->_releaseNotesHash}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Signature: %@\n", self->_signature}];
  if (self->_releaseDate)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Date: %@\n", self->_releaseDate}];
  }

  if (self->_releaseNotesFileSize)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes File Size: %@\n", self->_releaseNotesFileSize}];
  }

  v6 = stringCopy;
  if (self->_firmwareFileSize)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Firmware File Size: %@\n", self->_firmwareFileSize}];
    v6 = stringCopy;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: recordName=%@, firmwareVersion=%@, firmwareURL=%@, releaseNotesURL=%@, firmwareBinaryHash=%@, releaseNotesHash=%@>", v5, self->_recordName, self->_firmwareVersion, self->_firmwareURL, self->_releaseNotesURL, self->_firmwareBinaryHash, self->_releaseNotesHash];

  return v6;
}

- (void)initWithCKRecord:(uint64_t *)a3 .cold.1(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 dataUsingEncoding:4];
  *a3 = v6;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:0];
  v8 = *(a2 + 80);
  *(a2 + 80) = v7;
}

@end