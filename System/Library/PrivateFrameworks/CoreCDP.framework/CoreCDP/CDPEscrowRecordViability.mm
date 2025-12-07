@interface CDPEscrowRecordViability
- (BOOL)isEqual:(id)equal;
- (CDPEscrowRecordViability)initWithCoder:(id)coder;
- (CDPEscrowRecordViability)initWithRecordPresence:(BOOL)presence isValid:(BOOL)valid recordId:(id)id buildVersion:(id)version isForCurrentDevice:(BOOL)device hasMachineId:(BOOL)machineId recordViability:(unint64_t)viability localSecretViability:(unint64_t)self0 tlkRecoveryViability:(unint64_t)self1 sosViability:(unint64_t)self2 pcsRecoveryViability:(unint64_t)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (int64x2_t)updatedViabiltyWithRecord:(int64x2_t *)record;
- (unint64_t)localViability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDPEscrowRecordViability

- (CDPEscrowRecordViability)initWithRecordPresence:(BOOL)presence isValid:(BOOL)valid recordId:(id)id buildVersion:(id)version isForCurrentDevice:(BOOL)device hasMachineId:(BOOL)machineId recordViability:(unint64_t)viability localSecretViability:(unint64_t)self0 tlkRecoveryViability:(unint64_t)self1 sosViability:(unint64_t)self2 pcsRecoveryViability:(unint64_t)self3
{
  idCopy = id;
  versionCopy = version;
  v26.receiver = self;
  v26.super_class = CDPEscrowRecordViability;
  v22 = [(CDPEscrowRecordViability *)&v26 init];
  v23 = v22;
  if (v22)
  {
    v22->_hasRecords = presence;
    v22->_recordIsValid = valid;
    objc_storeStrong(&v22->_recordId, id);
    objc_storeStrong(&v23->_buildVersion, version);
    v23->_isForCurrentDevice = device;
    v23->_hasMachineId = machineId;
    v23->_recordViability = viability;
    v23->_localSecretViability = secretViability;
    v23->_tlkRecoveryViability = recoveryViability;
    v23->_pcsRecoveryViability = pcsRecoveryViability;
    v23->_sosViability = sosViability;
    v24 = v23;
  }

  return v23;
}

- (unint64_t)localViability
{
  hasRecords = [(CDPEscrowRecordViability *)self hasRecords];
  if ((hasRecords & 1) == 0)
  {
    v10 = _CDPLogSystem(hasRecords);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPEscrowRecordViability localViability];
    }

    goto LABEL_16;
  }

  recordIsValid = [(CDPEscrowRecordViability *)self recordIsValid];
  if ((recordIsValid & 1) == 0)
  {
    v10 = _CDPLogSystem(recordIsValid);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPEscrowRecordViability localViability];
    }

    goto LABEL_16;
  }

  isForCurrentDevice = [(CDPEscrowRecordViability *)self isForCurrentDevice];
  if ((isForCurrentDevice & 1) == 0)
  {
    v10 = _CDPLogSystem(isForCurrentDevice);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPEscrowRecordViability localViability];
    }

LABEL_16:

    return 2;
  }

  recordViability = [(CDPEscrowRecordViability *)self recordViability];
  if (recordViability == 1)
  {
    hasMachineId = [(CDPEscrowRecordViability *)self hasMachineId];
    if ((hasMachineId & 1) == 0)
    {
      v9 = _CDPLogSystem(hasMachineId);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CDPEscrowRecordViability localViability];
      }

      goto LABEL_22;
    }

    localSecretViability = +[CDPUtilities shouldValidatePasscodeGenerations];
    if (localSecretViability)
    {
      localSecretViability = [(CDPEscrowRecordViability *)self localSecretViability];
      if (localSecretViability == 3)
      {
        v9 = _CDPLogSystem(3);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [CDPEscrowRecordViability localViability];
        }

LABEL_22:

        return 3;
      }
    }

    v13 = _CDPLogSystem(localSecretViability);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPEscrowRecordViability localViability];
    }

    return 1;
  }

  else
  {
    v12 = _CDPLogSystem(recordViability);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPEscrowRecordViability localViability];
    }

    return [(CDPEscrowRecordViability *)self recordViability];
  }
}

- (CDPEscrowRecordViability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = CDPEscrowRecordViability;
  v5 = [(CDPEscrowRecordViability *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasRecords"];
    bOOLValue = [v6 BOOLValue];

    v5->_hasRecords = bOOLValue;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIsValid"];
    bOOLValue2 = [v8 BOOLValue];

    v5->_recordIsValid = bOOLValue2;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordId"];
    v11 = objc_opt_self();

    recordId = v5->_recordId;
    v5->_recordId = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    v14 = objc_opt_self();

    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isForCurrentDevice"];
    LOBYTE(v14) = [v16 BOOLValue];

    v5->_isForCurrentDevice = v14;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasMachineId"];
    LOBYTE(v14) = [v17 BOOLValue];

    v5->_hasMachineId = v14;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordViability"];
    unsignedLongValue = [v18 unsignedLongValue];

    v5->_recordViability = unsignedLongValue;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSecretViability"];
    unsignedLongValue2 = [v20 unsignedLongValue];

    v5->_localSecretViability = unsignedLongValue2;
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tlkRecoveryViability"];
    unsignedLongValue3 = [v22 unsignedLongValue];

    v5->_tlkRecoveryViability = unsignedLongValue3;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pcsRecoveryViability"];
    unsignedLongValue4 = [v24 unsignedLongValue];

    v5->_pcsRecoveryViability = unsignedLongValue4;
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sosViability"];
    unsignedLongValue5 = [v26 unsignedLongValue];

    v5->_sosViability = unsignedLongValue5;
    v28 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  hasRecords = self->_hasRecords;
  coderCopy = coder;
  v7 = [v4 numberWithBool:hasRecords];
  [coderCopy encodeObject:v7 forKey:@"hasRecords"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_recordIsValid];
  [coderCopy encodeObject:v8 forKey:@"recordIsValid"];

  [coderCopy encodeObject:self->_recordId forKey:@"recordId"];
  [coderCopy encodeObject:self->_buildVersion forKey:@"buildVersion"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForCurrentDevice];
  [coderCopy encodeObject:v9 forKey:@"isForCurrentDevice"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasMachineId];
  [coderCopy encodeObject:v10 forKey:@"hasMachineId"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_recordViability];
  [coderCopy encodeObject:v11 forKey:@"recordViability"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_localSecretViability];
  [coderCopy encodeObject:v12 forKey:@"localSecretViability"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_tlkRecoveryViability];
  [coderCopy encodeObject:v13 forKey:@"tlkRecoveryViability"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_pcsRecoveryViability];
  [coderCopy encodeObject:v14 forKey:@"pcsRecoveryViability"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sosViability];
  [coderCopy encodeObject:v15 forKey:@"sosViability"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10 = [CDPEscrowRecordViability alloc];
  hasRecords = [(CDPEscrowRecordViability *)self hasRecords];
  recordIsValid = [(CDPEscrowRecordViability *)self recordIsValid];
  recordId = [(CDPEscrowRecordViability *)self recordId];
  buildVersion = [(CDPEscrowRecordViability *)self buildVersion];
  v7 = [(CDPEscrowRecordViability *)v10 initWithRecordPresence:hasRecords isValid:recordIsValid recordId:recordId buildVersion:buildVersion isForCurrentDevice:[(CDPEscrowRecordViability *)self isForCurrentDevice] hasMachineId:[(CDPEscrowRecordViability *)self hasMachineId] recordViability:[(CDPEscrowRecordViability *)self recordViability] localSecretViability:[(CDPEscrowRecordViability *)self localSecretViability] tlkRecoveryViability:[(CDPEscrowRecordViability *)self tlkRecoveryViability] sosViability:[(CDPEscrowRecordViability *)self sosViability] pcsRecoveryViability:[(CDPEscrowRecordViability *)self pcsRecoveryViability]];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  hasRecords = [(CDPEscrowRecordViability *)self hasRecords];
  if (hasRecords != [equalCopy hasRecords])
  {
    goto LABEL_17;
  }

  recordIsValid = [(CDPEscrowRecordViability *)self recordIsValid];
  if (recordIsValid != [equalCopy recordIsValid])
  {
    goto LABEL_17;
  }

  recordId = [(CDPEscrowRecordViability *)self recordId];
  recordId2 = [equalCopy recordId];
  if ([recordId isEqual:recordId2])
  {
  }

  else
  {
    recordId3 = [(CDPEscrowRecordViability *)self recordId];
    recordId4 = [equalCopy recordId];

    if (recordId3 != recordId4)
    {
      goto LABEL_17;
    }
  }

  buildVersion = [(CDPEscrowRecordViability *)self buildVersion];
  buildVersion2 = [equalCopy buildVersion];
  if (![buildVersion isEqual:buildVersion2])
  {
    buildVersion3 = [(CDPEscrowRecordViability *)self buildVersion];
    buildVersion4 = [equalCopy buildVersion];

    if (buildVersion3 == buildVersion4)
    {
      goto LABEL_10;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

LABEL_10:
  isForCurrentDevice = [(CDPEscrowRecordViability *)self isForCurrentDevice];
  if (isForCurrentDevice != [equalCopy isForCurrentDevice])
  {
    goto LABEL_17;
  }

  hasMachineId = [(CDPEscrowRecordViability *)self hasMachineId];
  if (hasMachineId != [equalCopy hasMachineId])
  {
    goto LABEL_17;
  }

  recordViability = [(CDPEscrowRecordViability *)self recordViability];
  if (recordViability != [equalCopy recordViability])
  {
    goto LABEL_17;
  }

  localSecretViability = [(CDPEscrowRecordViability *)self localSecretViability];
  if (localSecretViability != [equalCopy localSecretViability])
  {
    goto LABEL_17;
  }

  tlkRecoveryViability = [(CDPEscrowRecordViability *)self tlkRecoveryViability];
  if (tlkRecoveryViability != [equalCopy tlkRecoveryViability])
  {
    goto LABEL_17;
  }

  pcsRecoveryViability = [(CDPEscrowRecordViability *)self pcsRecoveryViability];
  if (pcsRecoveryViability != [equalCopy pcsRecoveryViability])
  {
    goto LABEL_17;
  }

  sosViability = [(CDPEscrowRecordViability *)self sosViability];
  v22 = sosViability == [equalCopy sosViability];
LABEL_18:

  return v22;
}

- (int64x2_t)updatedViabiltyWithRecord:(int64x2_t *)record
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (record)
  {
    record = [(int64x2_t *)record copy];
    if (([(int64x2_t *)record hasRecords]& 1) == 0)
    {
      record->i16[4] = 257;
      record->i8[11] = 1;
      record[2].i64[0] = 3;
      record[3] = vdupq_n_s64(3uLL);
      record[4].i64[0] = 3;
    }

    if ([(int64x2_t *)record recordViability]== 1)
    {
      v4 = _CDPLogSystem(1);
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_1DED99000, &v4->super, OS_LOG_TYPE_DEFAULT, "Report already received a viable record.", v14, 2u);
      }
    }

    else
    {
      v4 = [[CDPDevice alloc] initWithEscrowRecord:v3];
      if ([v3 recordViability])
      {
        v5 = [v3 recordViability] == 1;
      }

      else
      {
        v5 = 1;
      }

      hasMachineId = [(int64x2_t *)record hasMachineId];
      if ((hasMachineId & 1) == 0)
      {
        machineID = [(CDPDevice *)v4 machineID];

        if (machineID)
        {
          v8 = _CDPLogSystem(hasMachineId);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v14[0]) = 0;
          }

          record->i8[10] = 1;
        }
      }

      v9 = _CDPLogSystem(hasMachineId);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        hasMachineId2 = [(int64x2_t *)record hasMachineId];
        v14[0] = 67109376;
        v14[1] = v5;
        v15 = 1024;
        v16 = hasMachineId2;
        _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "Checking viability. hasRecordViability = (%{BOOL}d), hasMachineId = (%{BOOL}d)", v14, 0xEu);
      }

      if (v5 && (v11 = [(int64x2_t *)record hasMachineId], v11))
      {
        record[2].i64[0] = 1;
      }

      else
      {
        v12 = _CDPLogSystem(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Record is not viable.", v14, 2u);
        }
      }
    }
  }

  return record;
}

@end