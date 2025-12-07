@interface MRUHardwareInfo
- (MRUHardwareInfo)initWithChipID:(unsigned int)d chipRev:(unsigned int)rev boardID:(unsigned int)iD securityEpoch:(unsigned int)epoch productionStatus:(BOOL)status securityMode:(BOOL)mode securityDomain:(unsigned int)domain ecid:(unint64_t)self0;
- (MRUHardwareInfo)initWithCoder:(id)coder;
- (MRUHardwareInfo)initWithOptions:(id)options error:(id *)error;
- (NSDictionary)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRUHardwareInfo

- (MRUHardwareInfo)initWithChipID:(unsigned int)d chipRev:(unsigned int)rev boardID:(unsigned int)iD securityEpoch:(unsigned int)epoch productionStatus:(BOOL)status securityMode:(BOOL)mode securityDomain:(unsigned int)domain ecid:(unint64_t)self0
{
  v17.receiver = self;
  v17.super_class = MRUHardwareInfo;
  result = [(MRUHardwareInfo *)&v17 init];
  if (result)
  {
    result->_chipID = d;
    result->_chipRev = rev;
    result->_boardID = iD;
    result->_securityEpoch = epoch;
    result->_productionStatus = status;
    result->_securityMode = mode;
    result->_securityDomain = domain;
    result->_ecid = ecid;
  }

  return result;
}

- (MRUHardwareInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MRUHardwareInfo;
  v5 = [(MRUHardwareInfo *)&v23 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [coderCopy decodeObjectForKey:@"chipID"];
  v7 = v6;
  if (v6)
  {
    v5->_chipID = [(MRUHardwareInfo *)v6 unsignedIntValue];
    v8 = [coderCopy decodeObjectForKey:@"chipRev"];
    if (v8)
    {
      v9 = v8;
      v5->_chipRev = [v8 unsignedIntValue];
      v10 = [coderCopy decodeObjectForKey:@"boardID"];
      if (v10)
      {
        v11 = v10;
        v5->_boardID = [v10 unsignedIntValue];
        v12 = [coderCopy decodeObjectForKey:@"securityEpoch"];
        if (v12)
        {
          v13 = v12;
          v5->_securityEpoch = [v12 unsignedIntValue];
          v14 = [coderCopy decodeObjectForKey:@"productionStatus"];
          if (v14)
          {
            v15 = v14;
            v5->_productionStatus = [v14 unsignedIntValue] != 0;
            v16 = [coderCopy decodeObjectForKey:@"securityMode"];
            if (v16)
            {
              v17 = v16;
              v5->_securityMode = [v16 unsignedIntValue] != 0;
              v18 = [coderCopy decodeObjectForKey:@"securityDomain"];
              if (v18)
              {
                v19 = v18;
                v5->_securityDomain = [v18 unsignedIntValue];
                v20 = [coderCopy decodeObjectForKey:@"ecid"];
                if (v20)
                {
                  v21 = v20;
                  v5->_ecid = [v20 unsignedLongLongValue];

LABEL_11:
                  v7 = v5;
                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }

    v7 = 0;
  }

LABEL_19:

  return v7;
}

- (MRUHardwareInfo)initWithOptions:(id)options error:(id *)error
{
  v66[1] = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v50.receiver = self;
  v50.super_class = MRUHardwareInfo;
  v7 = [(MRUHardwareInfo *)&v50 init];
  if (!v7)
  {
LABEL_35:
    v40 = v7;
    goto LABEL_36;
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"chipID"];
  if (!v8)
  {
    if (*error)
    {
      v24 = MEMORY[0x29EDB9FA0];
      v65 = *MEMORY[0x29EDB9ED8];
      v25 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No chipID in options dict"];
      v66[0] = v25;
      v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
      *error = [v24 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v26];
    }

    goto LABEL_31;
  }

  v9 = v8;
  v7->_chipID = [v8 unsignedIntValue];
  v10 = [optionsCopy objectForKeyedSubscript:@"bundlePath"];
  if (!v10)
  {
    if (*error)
    {
      v27 = MEMORY[0x29EDB9FA0];
      v63 = *MEMORY[0x29EDB9ED8];
      v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No chipRev in options dict"];
      v64 = v28;
      v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      *error = [v27 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v29];
    }

    goto LABEL_30;
  }

  v11 = v10;
  v7->_chipRev = [v10 unsignedIntValue];
  v12 = [optionsCopy objectForKeyedSubscript:@"boardID"];
  if (!v12)
  {
    if (*error)
    {
      v30 = MEMORY[0x29EDB9FA0];
      v61 = *MEMORY[0x29EDB9ED8];
      v31 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No boardID in options dict"];
      v62 = v31;
      v32 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      *error = [v30 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v32];
    }

    goto LABEL_29;
  }

  v13 = v12;
  v7->_boardID = [v12 unsignedIntValue];
  v14 = [optionsCopy objectForKeyedSubscript:@"securityEpoch"];
  if (!v14)
  {
    if (*error)
    {
      v33 = MEMORY[0x29EDB9FA0];
      v59 = *MEMORY[0x29EDB9ED8];
      v34 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No securityEpoch in options dict"];
      v60 = v34;
      v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *error = [v33 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v35];
    }

    goto LABEL_28;
  }

  v15 = v14;
  v7->_securityEpoch = [v14 unsignedIntValue];
  v16 = [optionsCopy objectForKeyedSubscript:@"productionStatus"];
  if (!v16)
  {
    if (*error)
    {
      v47 = MEMORY[0x29EDB9FA0];
      v57 = *MEMORY[0x29EDB9ED8];
      v36 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No productionStatus in options dict"];
      v58 = v36;
      v37 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [v47 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v37];
    }

    goto LABEL_27;
  }

  v17 = v16;
  v7->_productionStatus = [v16 BOOLValue];
  v18 = [optionsCopy objectForKeyedSubscript:@"securityMode"];
  if (!v18)
  {
    if (!*error)
    {
LABEL_26:

LABEL_27:
LABEL_28:

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

    v48 = MEMORY[0x29EDB9FA0];
    v55 = *MEMORY[0x29EDB9ED8];
    v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No securityMode in options dict"];
    v56 = v19;
    v38 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    *error = [v48 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v38];

LABEL_25:
    goto LABEL_26;
  }

  v19 = v18;
  v7->_securityMode = [v18 BOOLValue];
  v20 = [optionsCopy objectForKeyedSubscript:@"securityDomain"];
  if (!v20)
  {
    if (*error)
    {
      v45 = MEMORY[0x29EDB9FA0];
      v53 = *MEMORY[0x29EDB9ED8];
      v49 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No securityDomain in options dict"];
      v54 = v49;
      v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *error = [v45 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v39];
    }

    goto LABEL_25;
  }

  v21 = v20;
  v7->_securityDomain = [v20 unsignedIntValue];
  v22 = [optionsCopy objectForKeyedSubscript:@"ecid"];
  if (v22)
  {
    v23 = v22;
    v7->_ecid = [v22 unsignedLongLongValue];
    v22 = v23;
  }

  else if (*error)
  {
    v44 = MEMORY[0x29EDB9FA0];
    v51 = *MEMORY[0x29EDB9ED8];
    v46 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No ecid in options dict"];
    v52 = v46;
    v43 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    *error = [v44 errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v43];

    v22 = 0;
  }

  v41 = v22;

  if (v41)
  {
    goto LABEL_35;
  }

LABEL_31:
  v40 = 0;
LABEL_36:

  return v40;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x29EDBA070];
  chipID = self->_chipID;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInt:chipID];
  [coderCopy encodeObject:v7 forKey:@"chipID"];

  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_chipRev];
  [coderCopy encodeObject:v8 forKey:@"chipRev"];

  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_boardID];
  [coderCopy encodeObject:v9 forKey:@"boardID"];

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityEpoch];
  [coderCopy encodeObject:v10 forKey:@"securityEpoch"];

  v11 = [MEMORY[0x29EDBA070] numberWithBool:self->_productionStatus];
  [coderCopy encodeObject:v11 forKey:@"productionStatus"];

  v12 = [MEMORY[0x29EDBA070] numberWithBool:self->_securityMode];
  [coderCopy encodeObject:v12 forKey:@"securityMode"];

  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityDomain];
  [coderCopy encodeObject:v13 forKey:@"securityDomain"];

  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ecid];
  [coderCopy encodeObject:v14 forKey:@"ecid"];
}

- (NSDictionary)asDictionary
{
  v14[8] = *MEMORY[0x29EDCA608];
  v13[0] = @"chipID";
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_chipID];
  v14[0] = v3;
  v13[1] = @"bundlePath";
  v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_chipRev];
  v14[1] = v4;
  v13[2] = @"boardID";
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_boardID];
  v14[2] = v5;
  v13[3] = @"securityEpoch";
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityEpoch];
  v14[3] = v6;
  v13[4] = @"productionStatus";
  v7 = [MEMORY[0x29EDBA070] numberWithBool:self->_productionStatus];
  v14[4] = v7;
  v13[5] = @"securityMode";
  v8 = [MEMORY[0x29EDBA070] numberWithBool:self->_securityMode];
  v14[5] = v8;
  v13[6] = @"securityDomain";
  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_securityDomain];
  v14[6] = v9;
  v13[7] = @"ecid";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ecid];
  v14[7] = v10;
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"%@(\n"), v5;

  [v6 appendFormat:@"\tchipID: %u\n", self->_chipID];
  [v6 appendFormat:@"\tchipRev: %u\n", self->_chipRev];
  [v6 appendFormat:@"\tboardID: %u\n", self->_boardID];
  [v6 appendFormat:@"\tsecurityEpoch: %u\n", self->_securityEpoch];
  [v6 appendFormat:@"\tproductionStatus: %u\n", self->_productionStatus];
  [v6 appendFormat:@"\tsecurityMode: %u\n", self->_securityMode];
  [v6 appendFormat:@"\tsecurityDomain: %u\n", self->_securityDomain];
  [v6 appendFormat:@"\tecid: %llu\n", self->_ecid];
  [v6 appendString:@""]);
  v7 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v7;
}

@end