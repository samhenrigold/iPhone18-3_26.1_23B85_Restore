@interface CBAudioLinkQualityInfo
- (BOOL)isEqual:(id)equal;
- (CBAudioLinkQualityInfo)initWithCoder:(id)coder;
- (CBAudioLinkQualityInfo)initWithDictionary:(id)dictionary error:(id *)error;
- (CBAudioLinkQualityInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBAudioLinkQualityInfo

- (CBAudioLinkQualityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  objc_opt_class();
  NSDecodeNSDictionaryOfClassesIfPresent();

  v5 = [(CBAudioLinkQualityInfo *)self initWithDictionary:0 error:0];
  return v5;
}

- (CBAudioLinkQualityInfo)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBAudioLinkQualityInfo *)self initWithXPCObject:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    CBErrorF(-6700, "CBControllerInfo convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(CBAudioLinkQualityInfo *)self encodeWithXPCObject:v3];
  v4 = CUXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(CBAudioLinkQualityInfo *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"auLQ"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_aosState)
  {
    xpc_dictionary_set_uint64(objectCopy, "aos", self->_aosState);
  }

  bitRate = self->_bitRate;
  if (bitRate)
  {
    xpc_dictionary_set_uint64(v5, "auBR", bitRate);
  }

  if (self->_btBand)
  {
    xpc_dictionary_set_uint64(v5, "btBd", self->_btBand);
  }

  if (self->_codecType)
  {
    xpc_dictionary_set_int64(v5, "auCT", self->_codecType);
  }

  deviceName = self->_deviceName;
  xdict = v5;
  uTF8String = [(NSString *)deviceName UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "dvNm", uTF8String);
  }

  jitterBufferSeconds = self->_jitterBufferSeconds;
  if (jitterBufferSeconds != 0.0)
  {
    xpc_dictionary_set_double(xdict, "jtBf", jitterBufferSeconds);
  }

  if (self->_noiseFloor90)
  {
    xpc_dictionary_set_int64(xdict, "noFl", self->_noiseFloor90);
  }

  retransmitRate = self->_retransmitRate;
  v11 = xdict;
  if (retransmitRate != 0.0)
  {
    xpc_dictionary_set_double(xdict, "rtmR", retransmitRate);
    v11 = xdict;
  }

  if (self->_rssiAverage)
  {
    xpc_dictionary_set_int64(xdict, "rsAv", self->_rssiAverage);
    v11 = xdict;
  }

  if (self->_signalToNoiseRatio)
  {
    xpc_dictionary_set_int64(xdict, "snr", self->_signalToNoiseRatio);
    v11 = xdict;
  }
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  if (qword_1ED7C1F90 != -1)
  {
    [CBAudioLinkQualityInfo descriptionWithLevel:];
  }

  v5 = qword_1ED7C1F88;
  date = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:date];

  if (levelCopy <= 0x14)
  {
    v62 = 0;
    NSAppendPrintF_safe(&v62, "TimeStamp:       %@\n", v7);
    v8 = v62;
    v61 = v8;
    v9 = "AoS Bi";
    aosState = self->_aosState;
    if (aosState == 2)
    {
      v9 = "AoS Uni";
    }

    if (aosState < 2)
    {
      v9 = "None";
    }

    NSAppendPrintF_safe(&v61, "AoS:             %s\n", v9);
    v11 = v61;

    v60 = v11;
    NSAppendPrintF_safe(&v60, "Bitrate:         %u Kbps\n", self->_bitRate / 0x3E8);
    v12 = v60;

    v59 = v12;
    codecType = self->_codecType;
    if (codecType > 0x1D)
    {
      if (codecType == 30)
      {
        v14 = "AAC-ELD";
        goto LABEL_35;
      }

      if (codecType != 40)
      {
        if (codecType == 50)
        {
          v14 = "MSBC";
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      v14 = "CVSD";
    }

    else
    {
      if (!self->_codecType)
      {
        v14 = "Unknown";
        goto LABEL_35;
      }

      if (codecType != 10)
      {
        if (codecType == 20)
        {
          v14 = "AAC-LC";
          goto LABEL_35;
        }

LABEL_30:
        v14 = "?";
        goto LABEL_35;
      }

      v14 = "SBC";
    }

LABEL_35:
    NSAppendPrintF_safe(&v59, "Codec:           %s\n", v14);
    v20 = v59;

    v58 = v20;
    btBand = self->_btBand;
    if (btBand > 0xF)
    {
      if (self->_btBand > 0x3Fu)
      {
        if (btBand == 64)
        {
          v22 = "HRB UNII-5C";
          goto LABEL_75;
        }

        if (btBand == 128)
        {
          v22 = "HRB UNII-5D";
          goto LABEL_75;
        }
      }

      else
      {
        if (btBand == 16)
        {
          v22 = "HRB UNII-5A";
          goto LABEL_75;
        }

        if (btBand == 32)
        {
          v22 = "HRB UNII-5B";
          goto LABEL_75;
        }
      }
    }

    else if (self->_btBand > 3u)
    {
      if (btBand == 4)
      {
        v22 = "HRB UNII-3";
        goto LABEL_75;
      }

      if (btBand == 8)
      {
        v22 = "HRB UNII-4";
        goto LABEL_75;
      }
    }

    else
    {
      if (btBand == 1)
      {
        v22 = "ISM2.4";
        goto LABEL_75;
      }

      if (btBand == 2)
      {
        v22 = "HRB UNII-1";
LABEL_75:
        NSAppendPrintF_safe(&v58, "Frequency:       %s\n", v22);
        v26 = v58;

        v57 = v26;
        NSAppendPrintF_safe(&v57, "Jitter Buffer:   %.0f ms\n", self->_jitterBufferSeconds * 1000.0);
        v27 = v57;

        v56 = v27;
        NSAppendPrintF_safe(&v56, "Noise Floor:     %d\n", self->_noiseFloor90);
        v28 = v56;

        v55 = v28;
        NSAppendPrintF_safe(&v55, "Retransmit Rate: %.0f%%\n", self->_retransmitRate * 100.0);
        v29 = v55;

        v54 = v29;
        NSAppendPrintF_safe(&v54, "RSSI Avg:        %d\n", self->_rssiAverage);
        v30 = v54;

        v53 = v30;
        v31 = &v53;
        NSAppendPrintF_safe(&v53, "Signal-to-Noise: %d\n");
        goto LABEL_80;
      }
    }

    v22 = "?";
    goto LABEL_75;
  }

  v52 = 0;
  NSAppendPrintF_safe(&v52, "Time: %@", v7);
  v15 = v52;
  v51 = v15;
  NSAppendPrintF_safe(&v51, ", AoS %d", self->_aosState);
  v16 = v51;

  v50 = v16;
  NSAppendPrintF_safe(&v50, ", BtRt %u Kbps", self->_bitRate / 0x3E8);
  v17 = v50;

  v49 = v17;
  v18 = self->_codecType;
  if (v18 > 0x1D)
  {
    if (v18 == 30)
    {
      v19 = "AAC-ELD";
      goto LABEL_51;
    }

    if (v18 != 40)
    {
      if (v18 == 50)
      {
        v19 = "MSBC";
        goto LABEL_51;
      }

      goto LABEL_31;
    }

    v19 = "CVSD";
  }

  else
  {
    if (!self->_codecType)
    {
      v19 = "Unknown";
      goto LABEL_51;
    }

    if (v18 != 10)
    {
      if (v18 == 20)
      {
        v19 = "AAC-LC";
        goto LABEL_51;
      }

LABEL_31:
      v19 = "?";
      goto LABEL_51;
    }

    v19 = "SBC";
  }

LABEL_51:
  NSAppendPrintF_safe(&v49, ", Codc %s", v19);
  v23 = v49;

  v48 = v23;
  v24 = self->_btBand;
  if (v24 > 0xF)
  {
    if (self->_btBand > 0x3Fu)
    {
      if (v24 == 64)
      {
        v25 = "HRB UNII-5C";
        goto LABEL_77;
      }

      if (v24 == 128)
      {
        v25 = "HRB UNII-5D";
        goto LABEL_77;
      }
    }

    else
    {
      if (v24 == 16)
      {
        v25 = "HRB UNII-5A";
        goto LABEL_77;
      }

      if (v24 == 32)
      {
        v25 = "HRB UNII-5B";
        goto LABEL_77;
      }
    }

LABEL_76:
    v25 = "?";
    goto LABEL_77;
  }

  if (self->_btBand > 3u)
  {
    if (v24 == 4)
    {
      v25 = "HRB UNII-3";
      goto LABEL_77;
    }

    if (v24 == 8)
    {
      v25 = "HRB UNII-4";
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (v24 == 1)
  {
    v25 = "ISM2.4";
    goto LABEL_77;
  }

  if (v24 != 2)
  {
    goto LABEL_76;
  }

  v25 = "HRB UNII-1";
LABEL_77:
  NSAppendPrintF_safe(&v48, ", Freq %s", v25);
  v32 = v48;

  v47 = v32;
  deviceName = self->_deviceName;
  if (!deviceName)
  {
    deviceName = @"?";
  }

  NSAppendPrintF_safe(&v47, ", DvNm '%@'", deviceName);
  v34 = v47;

  v46 = v34;
  NSAppendPrintF_safe(&v46, ", JtBf %.0f ms", self->_jitterBufferSeconds * 1000.0);
  v35 = v46;

  v45 = v35;
  NSAppendPrintF_safe(&v45, ", NsFl %d", self->_noiseFloor90);
  v36 = v45;

  v44 = v36;
  NSAppendPrintF_safe(&v44, ", RtmR %.0f%%", self->_retransmitRate * 100.0);
  v37 = v44;

  v43 = v37;
  NSAppendPrintF_safe(&v43, ", RSSI %d", self->_rssiAverage);
  v30 = v43;

  v31 = &v42;
  NSAppendPrintF_safe(&v42, ", SNR %d");
LABEL_80:
  v38 = *v31;

  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = &stru_1F40009C8;
  }

  v40 = v39;

  return v39;
}

void __47__CBAudioLinkQualityInfo_descriptionWithLevel___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED7C1F88;
  qword_1ED7C1F88 = v0;

  [qword_1ED7C1F88 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v2 = qword_1ED7C1F88;
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v3];
}

- (CBAudioLinkQualityInfo)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v63, v64, v65, v66, v67, v68, v70);
    }

    goto LABEL_33;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v69 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v70);
      OUTLINED_FUNCTION_16(v69);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    OUTLINED_FUNCTION_5_4(v19, v20, v21, v22, v23, v24, v25, v26, v70, 0);
  }

  else if (v19 == 5)
  {
    goto LABEL_33;
  }

  v27 = OUTLINED_FUNCTION_0();
  v32 = OUTLINED_FUNCTION_5(v27, v28, v29, v30, v31);
  if (v32 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v32 == 5)
  {
    goto LABEL_33;
  }

  v33 = OUTLINED_FUNCTION_0();
  v38 = OUTLINED_FUNCTION_3_1(v33, v34, v35, v36, v37);
  if (v38 == 6)
  {
    OUTLINED_FUNCTION_11(v38, v39, v40, v41, v42, v43, v44, v45, v70, 0);
  }

  else if (v38 == 5)
  {
    goto LABEL_33;
  }

  v46 = OUTLINED_FUNCTION_1_3(v38, "auCT", v40);
  if (v46 == 6)
  {
    OUTLINED_FUNCTION_10_1(v46, v47, v48, v49, v50, v51, v52, v53, v70, 0);
  }

  else if (v46 == 5)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_0();
  v54 = CUXPCDecodeDouble();
  if (!v54)
  {
    goto LABEL_33;
  }

  v56 = OUTLINED_FUNCTION_1_3(v54, "noFl", v55);
  if (v56 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v56 == 5)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_0();
  v57 = CUXPCDecodeDouble();
  if (!v57)
  {
    goto LABEL_33;
  }

  v59 = OUTLINED_FUNCTION_1_3(v57, "rsAv", v58);
  if (v59 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v59 == 5)
  {
    goto LABEL_33;
  }

  v61 = OUTLINED_FUNCTION_1_3(v59, "snr", v60);
  if (v61 != 6)
  {
    if (v61 != 5)
    {
      goto LABEL_27;
    }

LABEL_33:
    v6 = 0;
    goto LABEL_28;
  }

  *(v7 + 13) = 0;
LABEL_27:
  v6 = v7;
LABEL_28:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    goto LABEL_19;
  }

  v5 = equalCopy;
  aosState = self->_aosState;
  if (aosState != [v5 aosState])
  {
    goto LABEL_17;
  }

  bitRate = self->_bitRate;
  if (bitRate != [v5 bitRate])
  {
    goto LABEL_17;
  }

  btBand = self->_btBand;
  if (btBand != [v5 btBand])
  {
    goto LABEL_17;
  }

  codecType = self->_codecType;
  if (codecType != [v5 codecType])
  {
    goto LABEL_17;
  }

  deviceName = self->_deviceName;
  deviceName = [v5 deviceName];
  v12 = deviceName;
  v13 = deviceName;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_17:
      v23 = 0;
      goto LABEL_18;
    }

    v15 = [(NSString *)v12 isEqual:v13];

    if (!v15)
    {
      goto LABEL_17;
    }
  }

  jitterBufferSeconds = self->_jitterBufferSeconds;
  [v5 jitterBufferSeconds];
  if (jitterBufferSeconds != v17)
  {
    goto LABEL_17;
  }

  noiseFloor90 = self->_noiseFloor90;
  if (noiseFloor90 != [v5 noiseFloor90])
  {
    goto LABEL_17;
  }

  retransmitRate = self->_retransmitRate;
  [v5 retransmitRate];
  if (retransmitRate != v20)
  {
    goto LABEL_17;
  }

  rssiAverage = self->_rssiAverage;
  if (rssiAverage != [v5 rssiAverage])
  {
    goto LABEL_17;
  }

  signalToNoiseRatio = self->_signalToNoiseRatio;
  v23 = signalToNoiseRatio == [v5 signalToNoiseRatio];
LABEL_18:

LABEL_19:
  return v23;
}

@end