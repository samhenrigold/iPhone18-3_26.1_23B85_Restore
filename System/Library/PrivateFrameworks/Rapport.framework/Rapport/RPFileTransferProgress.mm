@interface RPFileTransferProgress
- (RPFileTransferProgress)init;
- (RPFileTransferProgress)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
@end

@implementation RPFileTransferProgress

- (RPFileTransferProgress)init
{
  v11.receiver = self;
  v11.super_class = RPFileTransferProgress;
  v2 = [(RPFileTransferProgress *)&v11 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&v2->_bytesPerSecond = _Q0;
    v2->_compressionRate = -1.0;
    v9 = v2;
  }

  return v3;
}

- (RPFileTransferProgress)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RPFileTransferProgress;
  v3 = [(RPFileTransferProgress *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)descriptionWithLevel:(int)level
{
  v26 = 0;
  type = self->_type;
  if (type > 10)
  {
    switch(type)
    {
      case 11:
        v5 = "ControlDisconnected";
        goto LABEL_15;
      case 20:
        v5 = "Completed";
        goto LABEL_15;
      case 30:
        v5 = "DataTransferred";
        goto LABEL_15;
    }

LABEL_12:
    v5 = "?";
    goto LABEL_15;
  }

  if (!type)
  {
    v5 = "Unspecified";
    goto LABEL_15;
  }

  if (type == 1)
  {
    v5 = "SessionStart";
    goto LABEL_15;
  }

  if (type != 10)
  {
    goto LABEL_12;
  }

  v5 = "ControlConnected";
LABEL_15:
  NSAppendPrintF(&v26, "RPFileTransferProgress: %s", v5);
  v6 = v26;
  v7 = v6;
  if (self->_transferredFileCount < 0 || self->_totalFileCount < 1)
  {
    v24 = v6;
    v8 = &v24;
    NSAppendPrintF(&v24, ", 0 Files");
  }

  else
  {
    v25 = v6;
    v8 = &v25;
    NSAppendPrintF(&v25, ", %lld/%lld (%lld%%) Files");
  }

  v9 = *v8;

  totalByteCount = self->_totalByteCount;
  if (totalByteCount >= 1)
  {
    v23 = v9;
    NSAppendPrintF(&v23, ", %llu bytes (%.2f MB)", totalByteCount, totalByteCount / 1000000.0);
    v11 = v23;

    v9 = v11;
  }

  bytesPerSecond = self->_bytesPerSecond;
  if (bytesPerSecond > 0.0)
  {
    v22 = v9;
    NSAppendPrintF(&v22, ", %.2f MB/sec", bytesPerSecond / 1000000.0);
    v13 = v22;

    v9 = v13;
  }

  compressionRate = self->_compressionRate;
  if (compressionRate >= 0.0)
  {
    v21 = v9;
    NSAppendPrintF(&v21, ", Cmp %d%%", (compressionRate * 100.0));
    v15 = v21;

    v9 = v15;
  }

  linkType = self->_linkType;
  if (linkType)
  {
    v20 = v9;
    if (linkType > 0xB)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_1E7C946F0[linkType - 1];
    }

    NSAppendPrintF(&v20, ", LT %s", v17);
    v18 = v20;

    v9 = v18;
  }

  return v9;
}

@end