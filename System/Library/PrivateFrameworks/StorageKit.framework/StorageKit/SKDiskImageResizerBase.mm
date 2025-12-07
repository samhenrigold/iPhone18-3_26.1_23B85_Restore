@interface SKDiskImageResizerBase
- (BOOL)checkLimitsWithError:(id *)error;
- (BOOL)prepareRecoveryMoverWithError:(id *)error;
- (SKDiskImageResizerBase)initWithDiskImage:(id)image limits:(id)limits resizeParams:(id)params error:(id *)error;
- (id)attachForResizeParams;
- (id)fitToSize:(id *)size;
- (id)imageResize:(id *)resize;
- (id)moveRecovery:(id *)recovery;
- (id)volumeResize:(id *)resize;
- (void)setRequestedSize:(unint64_t)size;
@end

@implementation SKDiskImageResizerBase

- (SKDiskImageResizerBase)initWithDiskImage:(id)image limits:(id)limits resizeParams:(id)params error:(id *)error
{
  imageCopy = image;
  limitsCopy = limits;
  paramsCopy = params;
  v14 = [imageCopy deduceDiskWithError:error];
  if (!v14)
  {
    goto LABEL_8;
  }

  if (![paramsCopy size])
  {
    [paramsCopy setSize:{objc_msgSend(limitsCopy, "minBytes")}];
  }

  v18.receiver = self;
  v18.super_class = SKDiskImageResizerBase;
  v15 = -[SKDiskResizerBase initWithDisk:requestedSize:](&v18, sel_initWithDisk_requestedSize_, v14, [paramsCopy size]);
  self = v15;
  if (!v15 || (objc_storeStrong(&v15->_resizeParams, params), objc_storeStrong(&self->_image, image), objc_storeStrong(&self->_limits, limits), [(SKDiskImageResizerBase *)self checkLimitsWithError:error]) && [(SKDiskImageResizerBase *)self prepareRecoveryMoverWithError:error])
  {
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_8:
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)prepareRecoveryMoverWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = [SKLastPartitions alloc];
  disk = [(SKDiskResizerBase *)self disk];
  v7 = [(SKLastPartitions *)v5 initWithDisk:disk];

  recoveryPart = [(SKLastPartitions *)v7 recoveryPart];

  if (!recoveryPart)
  {
    goto LABEL_12;
  }

  disk2 = [(SKDiskResizerBase *)self disk];
  type = [disk2 type];
  v11 = [SKLastPartitions secondaryPartitionTableSizeWithDiskType:type];

  recoveryPart2 = [(SKLastPartitions *)v7 recoveryPart];
  v13 = [recoveryPart2 unformattedSize] + v11;

  if ([(SKDiskResizerBase *)self requestedSize]<= v13)
  {
    v31 = SKGetOSLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v41 = 136315138;
      v42 = "[SKDiskImageResizerBase prepareRecoveryMoverWithError:]";
      _os_log_impl(&dword_26BBB8000, v31, OS_LOG_TYPE_ERROR, "%s: The requested size to resize is smaller than the recovery partition", &v41, 0xCu);
    }

    v30 = [SKError failWithSKErrorCode:257 error:error];
    goto LABEL_16;
  }

  v14 = [(SKDiskResizerBase *)self requestedSize]- v13;
  recoveryPart3 = [(SKLastPartitions *)v7 recoveryPart];
  startLocation = [recoveryPart3 startLocation];

  v17 = v14 - startLocation;
  if (v14 == startLocation)
  {
LABEL_12:
    v30 = 1;
    goto LABEL_16;
  }

  recoveryPart4 = [(SKLastPartitions *)v7 recoveryPart];
  unformattedSize = [recoveryPart4 unformattedSize];
  if (v17 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = -v17;
  }

  if (unformattedSize > v20)
  {
    v21 = SKGetOSLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      recoveryPart5 = [(SKLastPartitions *)v7 recoveryPart];
      startLocation2 = [recoveryPart5 startLocation];
      recoveryPart6 = [(SKLastPartitions *)v7 recoveryPart];
      v41 = 136315906;
      v42 = "[SKDiskImageResizerBase prepareRecoveryMoverWithError:]";
      v43 = 2048;
      v44 = startLocation2;
      v45 = 2048;
      v46 = v14;
      v47 = 2048;
      unformattedSize2 = [recoveryPart6 unformattedSize];
      _os_log_impl(&dword_26BBB8000, v21, OS_LOG_TYPE_DEFAULT, "%s: Recovery partition current offset %lld, new offset %lld, size %lld, need to perform a 2-step move", &v41, 0x2Au);
    }

    recoveryPart7 = [(SKLastPartitions *)v7 recoveryPart];
    startLocation3 = [recoveryPart7 startLocation];
    recoveryPart8 = [(SKLastPartitions *)v7 recoveryPart];
    unformattedSize3 = [recoveryPart8 unformattedSize];

    recoveryPart9 = [(SKLastPartitions *)v7 recoveryPart];
    -[SKDiskImageResizerBase setRequiredSizeForRecoveryMove:](self, "setRequiredSizeForRecoveryMove:", startLocation3 + v11 + unformattedSize3 + [recoveryPart9 unformattedSize]);

    if (v17 >= 1)
    {
      [(SKDiskImageResizerBase *)self setRequiredSizeForRecoveryMove:[(SKDiskImageResizerBase *)self requiredSizeForRecoveryMove]+ v17];
    }

    goto LABEL_12;
  }

  recoveryPart10 = [(SKLastPartitions *)v7 recoveryPart];
  v34 = [SKPartitionTable partitionIDFromDisk:recoveryPart10];

  if (v34)
  {
    v35 = [SKRecoveryMoverInfo alloc];
    recoveryPart11 = [(SKLastPartitions *)v7 recoveryPart];
    startLocation4 = [recoveryPart11 startLocation];
    recoveryPart12 = [(SKLastPartitions *)v7 recoveryPart];
    v39 = -[SKRecoveryMoverInfo initWithSrcOffset:dstOffset:length:partitionID:](v35, "initWithSrcOffset:dstOffset:length:partitionID:", startLocation4, v14, [recoveryPart12 unformattedSize], v34);
    recoveryMoverInfo = self->_recoveryMoverInfo;
    self->_recoveryMoverInfo = v39;

    v30 = 1;
  }

  else
  {
    v30 = [SKError failWithSKErrorCode:117 debugDescription:@"Failed to retrieve the recovery partition ID" error:error];
  }

LABEL_16:
  return v30;
}

- (void)setRequestedSize:(unint64_t)size
{
  resizeParams = [(SKDiskImageResizerBase *)self resizeParams];
  [resizeParams setSize:size];

  v6.receiver = self;
  v6.super_class = SKDiskImageResizerBase;
  [(SKDiskResizerBase *)&v6 setRequestedSize:size];
}

- (id)attachForResizeParams
{
  v2 = objc_opt_new();
  [v2 setIsManagedAttach:1];
  [v2 setPolicy:0];

  return v2;
}

- (BOOL)checkLimitsWithError:(id *)error
{
  requestedSize = [(SKDiskResizerBase *)self requestedSize];
  limits = [(SKDiskImageResizerBase *)self limits];
  if (requestedSize >= [limits minBytes])
  {
    limits2 = [(SKDiskImageResizerBase *)self limits];
    maxBytes = [limits2 maxBytes];
    requestedSize2 = [(SKDiskResizerBase *)self requestedSize];

    if (maxBytes >= requestedSize2)
    {
      return 1;
    }
  }

  else
  {
  }

  limits3 = [(SKDiskImageResizerBase *)self limits];
  maxBytes2 = [limits3 maxBytes];
  requestedSize3 = [(SKDiskResizerBase *)self requestedSize];

  if (maxBytes2 < requestedSize3)
  {
    v13 = 256;
  }

  else
  {
    v13 = 257;
  }

  return [SKError failWithSKErrorCode:v13 error:error];
}

- (id)volumeResize:(id *)resize
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  disk = [(SKDiskResizerBase *)self disk];
  requestedSize = [(SKDiskResizerBase *)self requestedSize];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __39__SKDiskImageResizerBase_volumeResize___block_invoke;
  v22 = &unk_279D1F8B8;
  v24 = &v25;
  v8 = v5;
  v23 = v8;
  v9 = [disk resizeToSize:requestedSize completionBlock:&v19];

  v10 = [(SKDiskResizerBase *)self resizeError:v19];
  LODWORD(disk) = v10 == 0;

  if (disk)
  {
    progress = [(SKDiskResizerBase *)self progress];
    [progress chainChildProgress:v9 withPendingUnitCount:70];
  }

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v26[5])
  {
    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v26[5];
      *buf = 136315394;
      v32 = "[SKDiskImageResizerBase volumeResize:]";
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_DEFAULT, "%s: Resize failed: %@", buf, 0x16u);
    }

    if (resize)
    {
      *resize = v26[5];
    }

    eventFromSize = [(SKDiskResizerBase *)self rollbackResize:resize];
  }

  else
  {
    v15 = SKGetOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      disk2 = [(SKDiskResizerBase *)self disk];
      *buf = 136315394;
      v32 = "[SKDiskImageResizerBase volumeResize:]";
      v33 = 2112;
      v34 = disk2;
      _os_log_impl(&dword_26BBB8000, v15, OS_LOG_TYPE_DEFAULT, "%s: %@ resized successfully", buf, 0x16u);
    }

    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
  }

  v17 = eventFromSize;

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __39__SKDiskImageResizerBase_volumeResize___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)imageResize:(id *)resize
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = SKGetOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    image = [(SKDiskImageResizerBase *)self image];
    v22 = 136315394;
    v23 = "[SKDiskImageResizerBase imageResize:]";
    v24 = 2112;
    v25 = image;
    _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_DEFAULT, "%s: Resizing disk image %@", &v22, 0x16u);
  }

  disk = [(SKDiskResizerBase *)self disk];
  v8 = [disk ejectWithError:resize];

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = +[SKError frameworkBundle];
  v10 = [v9 localizedStringForKey:@"Resizing disk image..." value:&stru_287C8F598 table:0];
  progress = [(SKDiskResizerBase *)self progress];
  [progress setLocalizedAdditionalDescription:v10];

  [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 2];
  image2 = [(SKDiskImageResizerBase *)self image];
  resizeParams = [(SKDiskImageResizerBase *)self resizeParams];
  v14 = [image2 diResize:resizeParams error:resize];

  v15 = SKGetOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SKDiskImageResizerBase imageResize:]";
    v24 = 2048;
    v25 = v14;
    _os_log_impl(&dword_26BBB8000, v15, OS_LOG_TYPE_DEFAULT, "%s: Resized disk image to new size %lld", &v22, 0x16u);
  }

  if (v14)
  {
    [(SKDiskImageResizerBase *)self setRequestedSize:v14];
    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 6];
    image3 = [(SKDiskImageResizerBase *)self image];
    attachForResizeParams = [(SKDiskImageResizerBase *)self attachForResizeParams];
    v18 = [image3 attachWithParams:attachForResizeParams error:resize];
    [(SKDiskResizerBase *)self setDisk:v18];

    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 2];
    disk2 = [(SKDiskResizerBase *)self disk];

    if (disk2)
    {
      eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
    }

    else
    {
      eventFromSize = 0;
    }
  }

  else
  {
LABEL_9:
    eventFromSize = [(SKDiskResizerBase *)self rollbackResize:resize];
  }

  return eventFromSize;
}

- (id)moveRecovery:(id *)recovery
{
  v83[2] = *MEMORY[0x277D85DE8];
  recoveryMoverInfo = [(SKDiskImageResizerBase *)self recoveryMoverInfo];

  if (!recoveryMoverInfo)
  {
LABEL_21:
    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 10];
    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
LABEL_22:
    v43 = eventFromSize;
    goto LABEL_23;
  }

  v6 = +[SKError frameworkBundle];
  v7 = [v6 localizedStringForKey:@"Moving recovery partition..." value:&stru_287C8F598 table:0];
  progress = [(SKDiskResizerBase *)self progress];
  [progress setLocalizedAdditionalDescription:v7];

  disk = [(SKDiskResizerBase *)self disk];
  getSectorSize = [disk getSectorSize];

  disk2 = [(SKDiskResizerBase *)self disk];
  v12 = [SKMediaKit newMediaRefForDisk:disk2 options:0 error:recovery];

  if (!v12)
  {
    v46 = SKGetOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v75 = "[SKDiskImageResizerBase moveRecovery:]";
      _os_log_impl(&dword_26BBB8000, v46, OS_LOG_TYPE_ERROR, "%s: Failed creating MediaKit reference for reading", buf, 0xCu);
    }

    eventFromSize = [(SKDiskResizerBase *)self rollbackResize:recovery];
    goto LABEL_22;
  }

  v82[0] = @"Shared Writer";
  v82[1] = @"Writable";
  v83[0] = MEMORY[0x277CBEC38];
  v83[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  disk3 = [(SKDiskResizerBase *)self disk];
  v15 = [SKMediaKit newMediaRefForDisk:disk3 options:v13 error:recovery];

  v16 = SKGetOSLog();
  v17 = v16;
  if (v15)
  {
    v66 = v13;
    recoveryCopy = recovery;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      recoveryMoverInfo2 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
      v19 = [recoveryMoverInfo2 length];
      [(SKDiskImageResizerBase *)self recoveryMoverInfo];
      v21 = v20 = v15;
      srcOffset = [v21 srcOffset];
      recoveryMoverInfo3 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
      *buf = 136315906;
      v75 = "[SKDiskImageResizerBase moveRecovery:]";
      v76 = 2048;
      v77 = v19;
      v78 = 2048;
      v79 = srcOffset;
      v80 = 2048;
      dstOffset = [recoveryMoverInfo3 dstOffset];
      _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_DEFAULT, "%s: Moving recovery partition of size %lld from offset %lld to %lld...", buf, 0x2Au);

      v15 = v20;
    }

    v72[0] = @"Instruction Code";
    v24 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v73[0] = v24;
    v73[1] = v12;
    v67 = v12;
    v72[1] = @"Source Device";
    v72[2] = @"Target Device";
    v65 = v15;
    v73[2] = v15;
    v72[3] = @"Source Offset";
    v25 = MEMORY[0x277CCABB0];
    recoveryMoverInfo4 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
    v27 = getSectorSize;
    v28 = [v25 numberWithUnsignedLongLong:{objc_msgSend(recoveryMoverInfo4, "srcOffset") / getSectorSize}];
    v73[3] = v28;
    v72[4] = @"Target Offset";
    v29 = MEMORY[0x277CCABB0];
    recoveryMoverInfo5 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
    v31 = [v29 numberWithUnsignedLongLong:{objc_msgSend(recoveryMoverInfo5, "dstOffset") / getSectorSize}];
    v73[4] = v31;
    v72[5] = @"Block Count";
    v32 = MEMORY[0x277CCABB0];
    recoveryMoverInfo6 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
    v34 = [v32 numberWithUnsignedLongLong:{objc_msgSend(recoveryMoverInfo6, "length") / v27}];
    v73[5] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:6];

    v36 = v35;
    v70[0] = @"Block Size";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
    v71[0] = v37;
    v71[1] = &unk_287C9A640;
    v70[1] = @"Buffer Size";
    v70[2] = @"Buffer Count";
    v71[2] = &unk_287C9A658;
    v70[3] = @"Instructions";
    v69 = v35;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    v71[3] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:4];

    v40 = IOJobSetup();
    if (v40)
    {
      v41 = v40;
      v42 = SKGetOSLog();
      v43 = recoveryCopy;
      v44 = v66;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v75 = "[SKDiskImageResizerBase moveRecovery:]";
        v76 = 1024;
        LODWORD(v77) = v41;
        v45 = "%s: IOJobSetup failed, err=%d";
LABEL_18:
        _os_log_impl(&dword_26BBB8000, v42, OS_LOG_TYPE_ERROR, v45, buf, 0x12u);
      }
    }

    else
    {
      v41 = IOJobInitiate();
      IOJobDispose();
      v43 = recoveryCopy;
      if (!v41)
      {
        v64 = v36;
        recoveryMoverInfo7 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        dstOffset2 = [recoveryMoverInfo7 dstOffset];

        recoveryMoverInfo8 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        srcOffset2 = [recoveryMoverInfo8 srcOffset];
        recoveryMoverInfo9 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        [recoveryMoverInfo9 setDstOffset:srcOffset2];

        recoveryMoverInfo10 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        [recoveryMoverInfo10 setSrcOffset:dstOffset2];

        v57 = [SKPartitionTable alloc];
        disk4 = [(SKDiskResizerBase *)self disk];
        v59 = [(SKPartitionTable *)v57 initWithDisk:disk4 error:recoveryCopy];

        v44 = v66;
        if (v59 && (-[SKDiskImageResizerBase recoveryMoverInfo](self, "recoveryMoverInfo"), v60 = objc_claimAutoreleasedReturnValue(), [v60 partitionID], v61 = objc_claimAutoreleasedReturnValue(), -[SKDiskImageResizerBase recoveryMoverInfo](self, "recoveryMoverInfo"), v62 = objc_claimAutoreleasedReturnValue(), v63 = -[SKPartitionTable resizePartitionID:size:offset:error:](v59, "resizePartitionID:size:offset:error:", v61, objc_msgSend(v62, "length"), dstOffset2, recoveryCopy), v62, v61, v60, v63))
        {
          v49 = 1;
        }

        else
        {
          v43 = [(SKDiskResizerBase *)self rollbackResize:recoveryCopy];
          v49 = 0;
        }

        v36 = v64;

LABEL_20:
        if (!v49)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v42 = SKGetOSLog();
      v44 = v66;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v75 = "[SKDiskImageResizerBase moveRecovery:]";
        v76 = 1024;
        LODWORD(v77) = v41;
        v45 = "%s: Recovery partition blocks copy failed, err=%d";
        goto LABEL_18;
      }
    }

    v48 = [SKError errorWithPOSIXCode:v41 error:v43];
    v43 = [(SKDiskResizerBase *)self rollbackResize:v43];
    v49 = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v75 = "[SKDiskImageResizerBase moveRecovery:]";
    _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "%s: Failed creating MediaKit reference for writing", buf, 0xCu);
  }

  v43 = [(SKDiskResizerBase *)self rollbackResize:recovery];

LABEL_23:

  return v43;
}

- (id)fitToSize:(id *)size
{
  v25 = *MEMORY[0x277D85DE8];
  disk = [(SKDiskResizerBase *)self disk];
  type = [disk type];
  v7 = [type isEqualToString:kSKDiskTypeUninitalized[0]];

  if (v7)
  {
    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
  }

  else
  {
    v9 = SKGetOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      disk2 = [(SKDiskResizerBase *)self disk];
      v19 = 136315650;
      v20 = "[SKDiskImageResizerBase fitToSize:]";
      v21 = 2112;
      v22 = disk2;
      v23 = 2048;
      requestedSize = [(SKDiskResizerBase *)self requestedSize];
      _os_log_impl(&dword_26BBB8000, v9, OS_LOG_TYPE_DEFAULT, "%s: Fitting media of %@ to %llu", &v19, 0x20u);
    }

    v11 = +[SKError frameworkBundle];
    v12 = [v11 localizedStringForKey:@"Fitting partition table to new disk size..." value:&stru_287C8F598 table:0];
    progress = [(SKDiskResizerBase *)self progress];
    [progress setLocalizedAdditionalDescription:v12];

    v14 = [SKPartitionTable alloc];
    disk3 = [(SKDiskResizerBase *)self disk];
    v16 = [(SKPartitionTable *)v14 initWithDisk:disk3 error:size];

    if (v16 && [(SKPartitionTable *)v16 fitToContainerSize:[(SKDiskResizerBase *)self requestedSize] error:size])
    {
      [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 10];
      eventFromSize2 = [(SKDiskResizerBase *)self eventFromSize];
    }

    else
    {
      eventFromSize2 = [(SKDiskResizerBase *)self rollbackResize:size];
    }

    eventFromSize = eventFromSize2;
  }

  return eventFromSize;
}

@end