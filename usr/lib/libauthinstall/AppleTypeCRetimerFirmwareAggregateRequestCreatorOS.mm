@interface AppleTypeCRetimerFirmwareAggregateRequestCreatorOS
- (AppleTypeCRetimerFirmwareAggregateRequestCreatorOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (BOOL)generateRequestDictionary;
- (BOOL)parseOptions:(id)options;
- (id)generateHashForData:(id)data;
@end

@implementation AppleTypeCRetimerFirmwareAggregateRequestCreatorOS

- (AppleTypeCRetimerFirmwareAggregateRequestCreatorOS)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareAggregateRequestCreatorOS;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperOS *)&v13 initWithOptions:optionsCopy logFunction:function logContext:context];
  v10 = v9;
  if (!v9 || [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)v9 parseOptions:optionsCopy]&& [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)v10 generateRequestDictionary])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)parseOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"FirmwareData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[FTABFileOS alloc] initWithData:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(FTABFileOS *)v6 subfileWithTag:@"rrko"];
      if (v8)
      {
        v9 = v8;
        data = [(UARPSuperBinaryOS *)v8 data];
        rrkoData = self->_rrkoData;
        self->_rrkoData = data;

        v12 = [(FTABFileOS *)v7 subfileWithTag:@"rkos"];
        if (v12)
        {
          v13 = v12;
          data2 = [v12 data];
          rkosData = self->_rkosData;
          self->_rkosData = data2;

          v16 = [(FTABFileOS *)v7 subfileWithTag:@"cphy"];
          v17 = v16;
          if (v16)
          {
            data3 = [v16 data];
            cphyData = self->_cphyData;
            self->_cphyData = data3;
          }

          else
          {
            [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"No cphy data found"];
          }

          goto LABEL_21;
        }

        [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate rkos file in ftab"];
        goto LABEL_33;
      }

      v40 = @"Failed to locate rrko file in ftab";
    }

    else
    {
      v21 = [[UARPSuperBinaryOS alloc] initWithData:v5 delegate:0 delegateQueue:0];
      if (v21)
      {
        v9 = v21;
        v22 = [[UARPAssetTagOS alloc] initWithString:@"RRKO"];
        v23 = [(UARPSuperBinaryOS *)v9 payloadWith4ccTag:v22];
        if (v23)
        {
          v24 = v23;
          payloadData = [v23 payloadData];
          v26 = self->_rrkoData;
          self->_rrkoData = payloadData;

          v27 = [[UARPAssetTagOS alloc] initWithString:@"FIRM"];
          v28 = [(UARPSuperBinaryOS *)v9 payloadWith4ccTag:v27];
          if (v28)
          {
            v29 = v28;
            v50 = v27;
            v30 = [FTABFileOS alloc];
            payloadData2 = [v29 payloadData];
            v32 = [(FTABFileOS *)v30 initWithData:payloadData2];

            if (v32)
            {
              v33 = [(FTABFileOS *)v32 subfileWithTag:@"rkos"];
              v34 = v33;
              if (v33)
              {
                data4 = [v33 data];
                v36 = self->_rkosData;
                self->_rkosData = data4;

                v37 = [(FTABFileOS *)v32 subfileWithTag:@"cphy"];
                if (v37)
                {
                  data5 = [v37 data];
                  v39 = self->_cphyData;
                  self->_cphyData = data5;
                }

                else
                {
                  [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"No cphy data found", 0];
                }
              }

              else
              {
                [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate rkos file in super binary ftab"];
              }

              if (v34)
              {
LABEL_21:
                v41 = [optionsCopy objectForKeyedSubscript:@"DeviceInfo"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = [v41 objectForKeyedSubscript:@"InfoArray"];
                  deviceInfoArray = self->_deviceInfoArray;
                  self->_deviceInfoArray = v42;

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v44 = [v41 objectForKeyedSubscript:@"APInfo"];
                    apParameters = self->_apParameters;
                    self->_apParameters = v44;

                    v20 = 1;
LABEL_28:

LABEL_35:
                    goto LABEL_36;
                  }

                  v46 = @"Failed to locate device info array";
                }

                else
                {
                  v46 = @"Failed to locate device info";
                }

                [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:v46];
                v20 = 0;
                goto LABEL_28;
              }

LABEL_34:
              v20 = 0;
              goto LABEL_35;
            }

            [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to parse FTAB in super binary"];

            v47 = v50;
          }

          else
          {
            [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate FTAB in super binary"];
            v47 = v27;
          }
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Failed to locate rrko file in super binary"];
        }

LABEL_33:
        goto LABEL_34;
      }

      v40 = @"Failed to parse firmware data";
    }

    [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:v40];
    goto LABEL_34;
  }

  [(AppleTypeCRetimerRestoreInfoHelperOS *)self log:@"Unable to locate firmware data"];
  v20 = 0;
LABEL_36:

  return v20;
}

- (id)generateHashForData:(id)data
{
  v11 = *MEMORY[0x29EDCA608];
  memset(&v9, 0, sizeof(v9));
  dataCopy = data;
  CC_SHA384_Init(&v9);
  v4 = dataCopy;
  bytes = [v4 bytes];
  v6 = [dataCopy length];

  CC_SHA384_Update(&v9, bytes, v6);
  CC_SHA384_Final(md, &v9);
  v7 = [MEMORY[0x29EDB8DA0] dataWithBytes:md length:48];

  return v7;
}

- (BOOL)generateRequestDictionary
{
  selfCopy = self;
  v118 = *MEMORY[0x29EDCA608];
  v3 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)self generateHashForData:self->_rkosData];
  v4 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)selfCopy generateHashForData:selfCopy->_rrkoData];
  if (selfCopy->_cphyData)
  {
    v5 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorOS *)selfCopy generateHashForData:?];
  }

  else
  {
    v5 = 0;
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = selfCopy->_deviceInfoArray;
  v86 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v117 count:16];
  if (v86)
  {
    v88 = *v102;
    v83 = v4;
    v84 = v3;
    v82 = v5;
    v89 = selfCopy;
LABEL_6:
    v6 = 0;
    while (1)
    {
      if (*v102 != v88)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v101 + 1) + 8 * v6);
      v8 = [v7 objectForKeyedSubscript:@"TagNumber"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      unsignedCharValue = [v8 unsignedCharValue];
      v10 = [v7 objectForKeyedSubscript:@"HardwareID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate hardware ID data"];
        goto LABEL_90;
      }

      v94 = v6;
      v11 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"@Timer%u validFormatSpecifiers:Ticket" error:@"%u", 0, unsignedCharValue];
      [dictionary setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v11];
      v12 = [v10 objectForKeyedSubscript:@"BoardID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate board ID for tag %u", unsignedCharValue];
        v72 = v12;
        goto LABEL_89;
      }

      v97 = v12;
      v98 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:BoardID error:%u", @"%u", 0, unsignedCharValue];
      [dictionary setObject:v12 forKeyedSubscript:v98];
      v13 = [v10 objectForKeyedSubscript:@"ChipID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate board ID for tag %u", unsignedCharValue];
        v73 = v13;
        goto LABEL_88;
      }

      v95 = v13;
      v96 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ChipID error:%u", @"%u", 0, unsignedCharValue];
      [dictionary setObject:v13 forKeyedSubscript:v96];
      v14 = [v10 objectForKeyedSubscript:@"ECID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate ECID for tag %u", unsignedCharValue];

        v73 = v13;
LABEL_88:

        v72 = v97;
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
        v71 = 0;
        v4 = v83;
        v3 = v84;
        v5 = v82;
        v68 = dictionary;
        goto LABEL_93;
      }

      v93 = v8;
      v92 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ECID error:%u", @"%u", 0, unsignedCharValue];
      [dictionary setObject:v14 forKeyedSubscript:?];
      v15 = [v10 objectForKeyedSubscript:@"Nonce"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate nonce for tag %u", unsignedCharValue];

        v8 = v93;
        goto LABEL_91;
      }

      v90 = v11;
      v91 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:Nonce error:%u", @"%u", 0, unsignedCharValue];
      [dictionary setObject:v15 forKeyedSubscript:?];
      v16 = [v10 objectForKeyedSubscript:@"ProductionStatus"];
      objc_opt_class();
      v100 = v16;
      if (objc_opt_isKindOfClass())
      {
        v17 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:ProductionMode error:%u", @"%u", 0, unsignedCharValue];
        v18 = v16;
        v19 = v17;
        if ([v18 unsignedCharValue])
        {
          v20 = MEMORY[0x29EDB8EB0];
        }

        else
        {
          v20 = MEMORY[0x29EDB8EA8];
        }

        v85 = v19;
        [dictionary setObject:v20 forKeyedSubscript:v19];
        v21 = [v10 objectForKeyedSubscript:@"SecurityDomain"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v80 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityDomain error:%u", @"%u", 0, unsignedCharValue];
          v81 = v21;
          [dictionary setObject:v21 forKeyedSubscript:?];
          v22 = [v10 objectForKeyedSubscript:@"SecurityMode"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityMode error:%u", @"%u", 0, unsignedCharValue];
            if ([v22 unsignedCharValue])
            {
              v24 = MEMORY[0x29EDB8EB0];
            }

            else
            {
              v24 = MEMORY[0x29EDB8EA8];
            }

            v76 = v23;
            [dictionary setObject:v24 forKeyedSubscript:v23];
            v25 = [v10 objectForKeyedSubscript:@"Demote"];
            if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v60 = v25;
              v36 = v22;
              [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Invalid demote setting for tag %u", unsignedCharValue];
              v33 = 0;
              v34 = v11;
              v28 = v97;
            }

            else
            {
              v26 = [v7 objectForKeyedSubscript:@"Trusted"];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v79 = MEMORY[0x29EDB8EB0];
              v28 = v97;
              if (isKindOfClass)
              {
                v79 = v26;
              }

              v75 = v26;
              v78 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, unsignedCharValue];
              if ([v25 BOOLValue] && objc_msgSend(v100, "unsignedCharValue"))
              {
                v113[0] = @"Digest";
                v113[1] = @"EPRO";
                v114[0] = v84;
                v114[1] = MEMORY[0x29EDB8EA8];
                v113[2] = @"DPRO";
                v113[3] = @"ESEC";
                v114[2] = MEMORY[0x29EDB8EB0];
                v114[3] = MEMORY[0x29EDB8EB0];
                v113[4] = @"Trusted";
                v114[4] = MEMORY[0x29EDB8EA8];
                v29 = MEMORY[0x29EDB8DC0];
                v30 = v114;
                v31 = v113;
                v32 = 5;
              }

              else
              {
                v116[0] = v84;
                v115[0] = @"Digest";
                v115[1] = @"EPRO";
                unsignedCharValue2 = [v100 unsignedCharValue];
                v38 = MEMORY[0x29EDB8EB0];
                v39 = MEMORY[0x29EDB8EA8];
                if (unsignedCharValue2)
                {
                  v40 = MEMORY[0x29EDB8EB0];
                }

                else
                {
                  v40 = MEMORY[0x29EDB8EA8];
                }

                v116[1] = v40;
                v115[2] = @"ESEC";
                if ([v22 unsignedCharValue])
                {
                  v41 = v38;
                }

                else
                {
                  v41 = v39;
                }

                v116[2] = v41;
                v115[3] = @"Trusted";
                if ([v79 BOOLValue])
                {
                  v42 = v38;
                }

                else
                {
                  v42 = v39;
                }

                v116[3] = v42;
                v29 = MEMORY[0x29EDB8DC0];
                v30 = v116;
                v31 = v115;
                v32 = 4;
              }

              v43 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
              [dictionary setObject:v43 forKeyedSubscript:v78];

              v77 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RestoreRTKitOS error:%u", @"%u", 0, unsignedCharValue];
              if ([v25 BOOLValue] && objc_msgSend(v100, "unsignedCharValue"))
              {
                v109[0] = @"Digest";
                v109[1] = @"EPRO";
                v110[0] = v83;
                v110[1] = MEMORY[0x29EDB8EA8];
                v109[2] = @"DPRO";
                v109[3] = @"ESEC";
                v110[2] = MEMORY[0x29EDB8EB0];
                v110[3] = MEMORY[0x29EDB8EB0];
                v109[4] = @"Trusted";
                v110[4] = MEMORY[0x29EDB8EA8];
                v44 = MEMORY[0x29EDB8DC0];
                v45 = v110;
                v46 = v109;
                v47 = 5;
              }

              else
              {
                v112[0] = v83;
                v111[0] = @"Digest";
                v111[1] = @"EPRO";
                unsignedCharValue3 = [v100 unsignedCharValue];
                v49 = MEMORY[0x29EDB8EB0];
                v50 = MEMORY[0x29EDB8EA8];
                if (unsignedCharValue3)
                {
                  v51 = MEMORY[0x29EDB8EB0];
                }

                else
                {
                  v51 = MEMORY[0x29EDB8EA8];
                }

                v112[1] = v51;
                v111[2] = @"ESEC";
                if ([v22 unsignedCharValue])
                {
                  v52 = v49;
                }

                else
                {
                  v52 = v50;
                }

                v112[2] = v52;
                v111[3] = @"Trusted";
                if ([v79 BOOLValue])
                {
                  v53 = v49;
                }

                else
                {
                  v53 = v50;
                }

                v112[3] = v53;
                v44 = MEMORY[0x29EDB8DC0];
                v45 = v112;
                v46 = v111;
                v47 = 4;
              }

              v54 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
              [dictionary setObject:v54 forKeyedSubscript:v77];

              if (v89->_cphyData)
              {
                v55 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Timer, AppleTypeCPhyFirmware, %u", unsignedCharValue];
                if ([v25 BOOLValue] && objc_msgSend(v100, "unsignedCharValue"))
                {
                  v105[0] = @"Digest";
                  v105[1] = @"EPRO";
                  v106[0] = v82;
                  v106[1] = MEMORY[0x29EDB8EA8];
                  v105[2] = @"DPRO";
                  v105[3] = @"ESEC";
                  v106[2] = MEMORY[0x29EDB8EB0];
                  v106[3] = MEMORY[0x29EDB8EB0];
                  v105[4] = @"Trusted";
                  v106[4] = MEMORY[0x29EDB8EA8];
                  v56 = MEMORY[0x29EDB8DC0];
                  v57 = v106;
                  v58 = v105;
                  v59 = 5;
                }

                else
                {
                  v108[0] = v82;
                  v107[0] = @"Digest";
                  v107[1] = @"EPRO";
                  unsignedCharValue4 = [v100 unsignedCharValue];
                  v62 = MEMORY[0x29EDB8EB0];
                  v63 = MEMORY[0x29EDB8EA8];
                  if (unsignedCharValue4)
                  {
                    v64 = MEMORY[0x29EDB8EB0];
                  }

                  else
                  {
                    v64 = MEMORY[0x29EDB8EA8];
                  }

                  v108[1] = v64;
                  v107[2] = @"ESEC";
                  if ([v22 unsignedCharValue])
                  {
                    v65 = v62;
                  }

                  else
                  {
                    v65 = v63;
                  }

                  v108[2] = v65;
                  v107[3] = @"Trusted";
                  if ([v79 BOOLValue])
                  {
                    v66 = v62;
                  }

                  else
                  {
                    v66 = v63;
                  }

                  v108[3] = v66;
                  v56 = MEMORY[0x29EDB8DC0];
                  v57 = v108;
                  v58 = v107;
                  v59 = 4;
                }

                v67 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:v59];
                [dictionary setObject:v67 forKeyedSubscript:v55];
              }

              v60 = v25;
              v36 = v22;

              v33 = 1;
              v34 = v90;
            }
          }

          else
          {
            v36 = v22;
            [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate security mode for tag %u", unsignedCharValue];
            v33 = 0;
            v34 = v11;
            v28 = v97;
          }

          v35 = v95;
          v21 = v81;
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate security domain for tag %u", unsignedCharValue];
          v33 = 0;
          v34 = v11;
          v28 = v97;
          v35 = v95;
        }
      }

      else
      {
        [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate production status for tag %u", unsignedCharValue];
        v33 = 0;
        v34 = v11;
        v28 = v97;
        v35 = v95;
      }

      if (!v33)
      {
        goto LABEL_92;
      }

      v6 = v94 + 1;
      if (v86 == v94 + 1)
      {
        v4 = v83;
        v3 = v84;
        v5 = v82;
        selfCopy = v89;
        v86 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v117 count:16];
        if (v86)
        {
          goto LABEL_6;
        }

        goto LABEL_80;
      }
    }

    [(AppleTypeCRetimerRestoreInfoHelperOS *)v89 log:@"Unable to locate tag number in device info"];
    goto LABEL_91;
  }

LABEL_80:

  v68 = dictionary;
  if (selfCopy->_apParameters)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  v69 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:dictionary];
  requestDictionary = selfCopy->_requestDictionary;
  selfCopy->_requestDictionary = v69;

  [(AppleTypeCRetimerRestoreInfoHelperOS *)selfCopy verboseLog:@"ATCRT request dictionary = %@", selfCopy->_requestDictionary];
  v71 = 1;
LABEL_93:

  return v71;
}

@end