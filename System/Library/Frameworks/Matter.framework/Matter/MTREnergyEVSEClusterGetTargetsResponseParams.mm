@interface MTREnergyEVSEClusterGetTargetsResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTREnergyEVSEClusterGetTargetsResponseParams)init;
- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTREnergyEVSEClusterGetTargetsResponseParams

- (MTREnergyEVSEClusterGetTargetsResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTREnergyEVSEClusterGetTargetsResponseParams;
  v2 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    chargingTargetSchedules = v2->_chargingTargetSchedules;
    v2->_chargingTargetSchedules = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterGetTargetsResponseParams);
  chargingTargetSchedules = [(MTREnergyEVSEClusterGetTargetsResponseParams *)self chargingTargetSchedules];
  [(MTREnergyEVSEClusterGetTargetsResponseParams *)v4 setChargingTargetSchedules:chargingTargetSchedules];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: chargingTargetSchedules:%@ >", v5, self->_chargingTargetSchedules];;

  return v6;
}

- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTREnergyEVSEClusterGetTargetsResponseParams;
  v7 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 8), *(v14 + 24));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTREnergyEVSEClusterGetTargetsResponseParams;
  v4 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v4 = objc_opt_new();
  sub_238EA2DBC(v25, struct);
  while (sub_238EA1A80(v25) && sub_238EA2E18(v25))
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
    [v5 setDayOfWeekForSequence:v6];

    v7 = objc_opt_new();
    sub_2393C5AAC(v21);
    v19 = 0;
    v20 = 0;
    sub_2393C5BDC(v21, &v27);
    v22 = 0;
    v23[0] = 0;
    v24[0] = 0;
    while (sub_238EA1A80(&v19) && sub_238EA2EB8(&v19))
    {
      v8 = objc_opt_new();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
      [v8 setTargetTimeMinutesPastMidnight:v9];

      if (v23[0] == 1)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v23, v10)->super.isa)}];
        [v8 setTargetSoC:v11];
      }

      else
      {
        [v8 setTargetSoC:0];
      }

      if (v24[0] == 1)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v24, v12)}];
        [v8 setAddedEnergy:v13];
      }

      else
      {
        [v8 setAddedEnergy:0];
      }

      [v7 addObject:v8];
    }

    if (v19 != 33)
    {
      v14 = v19;
      if (v19)
      {
        v15 = v20;

        goto LABEL_22;
      }
    }

    [v5 setChargingTargets:v7];

    [v4 addObject:v5];
  }

  if (LODWORD(v25[0]) == 33 || (v14 = v25[0], !LODWORD(v25[0])))
  {
    [(MTREnergyEVSEClusterGetTargetsResponseParams *)self setChargingTargetSchedules:v4];

    v15 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v15 = v25[1];
LABEL_22:

LABEL_23:
  v16 = v14;
  v17 = v15;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

@end