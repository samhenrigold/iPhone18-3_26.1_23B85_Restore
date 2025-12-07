@interface CBSpatialInteractionDeviceTimestampInfo
- (id)descriptionWithLevel:(int)level;
@end

@implementation CBSpatialInteractionDeviceTimestampInfo

- (id)descriptionWithLevel:(int)level
{
  if (level > 5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&self->_timestamp];
    if (self->_timestamp == 0.0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = 0;
    NSAppendPrintF_safe(&v15, "siTT %@", v6);
    v7 = v15;
    if (!self->_reason)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (qword_1ED7C1FA0 != -1)
  {
    [CBSpatialInteractionDeviceTimestampInfo descriptionWithLevel:];
  }

  v4 = qword_1ED7C1F98;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:self->_timestamp];
  v6 = [v4 stringFromDate:v5];

  if (self->_timestamp != 0.0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = 0;
  if (self->_reason)
  {
LABEL_9:
    v14 = v7;
    v8 = CUPrintFlags32();
    NSAppendPrintF_safe(&v14, " siTR %@", v8);
    v9 = v14;

    v7 = v9;
  }

LABEL_10:
  if (self->_duplicateCount)
  {
    duplicateCount = self->_duplicateCount;
    v13 = v7;
    NSAppendPrintF_safe(&v13, " siTD %d", duplicateCount);
    v10 = v13;

    v7 = v10;
  }

  return v7;
}

uint64_t __64__CBSpatialInteractionDeviceTimestampInfo_descriptionWithLevel___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED7C1F98;
  qword_1ED7C1F98 = v0;

  v2 = qword_1ED7C1F98;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

@end