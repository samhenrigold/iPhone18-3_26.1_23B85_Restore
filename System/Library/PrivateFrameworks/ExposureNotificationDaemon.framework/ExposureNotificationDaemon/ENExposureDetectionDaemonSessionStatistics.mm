@interface ENExposureDetectionDaemonSessionStatistics
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ENExposureDetectionDaemonSessionStatistics

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(ENExposureDetectionDaemonSessionStatistics);
  *(result + 2) = self->_droppedCachedKeyUpdatesCount;
  *(result + 1) = self->_droppedKeyCount;
  *(result + 3) = self->_fileKeyCount;
  *(result + 4) = self->_fileInvalidKeyCount;
  *(result + 5) = self->_invalidFileSignatureCount;
  *(result + 6) = self->_matchedKeyCount;
  *(result + 7) = self->_newCachedKeyCount;
  *(result + 8) = self->_processedFileCount;
  *(result + 9) = self->_revokedKeyCount;
  *(result + 10) = self->_updatedCachedKeyCount;
  return result;
}

- (id)description
{
  v34 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF_safe(&v34, "%@", v4);
  v5 = v34;

  processedFileCount = self->_processedFileCount;
  if (processedFileCount)
  {
    v33 = v5;
    NSAppendPrintF_safe(&v33, ", Files %llu", processedFileCount);
    v7 = v33;

    v32 = v7;
    NSAppendPrintF_safe(&v32, ", FileKeys %llu", self->_fileKeyCount);
    v5 = v32;

    fileInvalidKeyCount = self->_fileInvalidKeyCount;
    if (fileInvalidKeyCount)
    {
      v31 = v5;
      NSAppendPrintF_safe(&v31, ", InvalidKeys %llu", fileInvalidKeyCount);
      v9 = v31;

      v5 = v9;
    }
  }

  invalidFileSignatureCount = self->_invalidFileSignatureCount;
  if (invalidFileSignatureCount)
  {
    v30 = v5;
    NSAppendPrintF_safe(&v30, ", InvalidSigs %llu", invalidFileSignatureCount);
    v11 = v30;

    v5 = v11;
  }

  v29 = v5;
  NSAppendPrintF_safe(&v29, ", Matches %llu", self->_matchedKeyCount);
  v12 = v29;

  revokedKeyCount = self->_revokedKeyCount;
  if (revokedKeyCount)
  {
    v28 = v12;
    NSAppendPrintF_safe(&v28, ", Revoked %llu", revokedKeyCount);
    v14 = v28;

    v12 = v14;
  }

  droppedKeyCount = self->_droppedKeyCount;
  if (droppedKeyCount)
  {
    v27 = v12;
    NSAppendPrintF_safe(&v27, ", Dropped %llu", droppedKeyCount);
    v16 = v27;

    v12 = v16;
  }

  newCachedKeyCount = self->_newCachedKeyCount;
  if (newCachedKeyCount)
  {
    v26 = v12;
    NSAppendPrintF_safe(&v26, ", New %llu", newCachedKeyCount);
    v18 = v26;

    v12 = v18;
  }

  updatedCachedKeyCount = self->_updatedCachedKeyCount;
  if (updatedCachedKeyCount)
  {
    v25 = v12;
    NSAppendPrintF_safe(&v25, ", Updated %llu", updatedCachedKeyCount);
    v20 = v25;

    v12 = v20;
  }

  if (self->_droppedCachedKeyUpdatesCount)
  {
    droppedCachedKeyUpdatesCount = self->_droppedCachedKeyUpdatesCount;
    v24 = v12;
    NSAppendPrintF_safe(&v24, ", DroppedUpdates %llu", droppedCachedKeyUpdatesCount);
    v21 = v24;

    v12 = v21;
  }

  return v12;
}

@end