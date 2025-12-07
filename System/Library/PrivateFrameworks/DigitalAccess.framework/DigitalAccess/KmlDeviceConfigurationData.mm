@interface KmlDeviceConfigurationData
- (BOOL)isValidForKmlVersion:(unsigned __int16)version transport:(int64_t)transport;
- (KmlDeviceConfigurationData)initWithData:(id)data outerTag:(BOOL)tag;
- (id)asData;
- (id)readerBleConfigWithTag:(void *)tag target:;
- (id)readerSupportedTransports;
- (id)supportedRadiosAsDataForTarget:(unsigned __int8)target;
- (uint64_t)parseDeviceConfigData:(int)data outerTag:;
- (unsigned)sharingConfigToSend:(unsigned __int8 *)send;
- (void)parseKeySharingConfigData:(_BYTE *)data;
- (void)parseOemSpecificContent:(uint64_t)content;
- (void)parseReaderBleConfigData:(uint64_t)data;
- (void)parseSharingInAChainDeviceConfigMailboxSettingData;
- (void)parseSupportedRadiosData:(uint64_t)data;
- (void)removeUwbSupportLocally;
- (void)updatePPIDWithServerProvidedData:(id)data;
- (void)updateSharingConfigWithData:(id)data;
- (void)updateSupportedRadiosWithData:(id)data;
@end

@implementation KmlDeviceConfigurationData

- (KmlDeviceConfigurationData)initWithData:(id)data outerTag:(BOOL)tag
{
  tagCopy = tag;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = KmlDeviceConfigurationData;
  v7 = [(KmlDeviceConfigurationData *)&v25 init];
  v8 = v7;
  if (v7)
  {
    *&v7->_readerSupportsNfc = 1;
    v7->_uwbDisabledLocally = 0;
    v7->_readerSupportsLELR = 0;
    readerBtIRK = v7->_readerBtIRK;
    v7->_readerBtIRK = 0;

    v11 = *(v8 + 40);
    *(v8 + 40) = 0;

    v12 = *(v8 + 48);
    *(v8 + 48) = 0;

    v13 = *(v8 + 56);
    *(v8 + 56) = 0;

    *(v8 + 21) = 0;
    v14 = *(v8 + 72);
    *(v8 + 72) = 0;

    v15 = *(v8 + 80);
    *(v8 + 80) = 0;

    v16 = *(v8 + 88);
    *(v8 + 88) = 0;

    v17 = *(v8 + 96);
    *(v8 + 96) = 0;

    v18 = *(v8 + 104);
    *(v8 + 104) = 0;

    v19 = *(v8 + 112);
    *(v8 + 112) = 0;

    v20 = *(v8 + 120);
    *(v8 + 120) = 0;

    *(v8 + 16) = 0;
    *(v8 + 23) = 0x1000000;
    v21 = *(v8 + 144);
    *(v8 + 144) = 0;

    v22 = *(v8 + 152);
    *(v8 + 152) = 0;

    *(v8 + 27) = 0;
    array = [MEMORY[0x277CBEB18] array];
    v24 = *(v8 + 8);
    *(v8 + 8) = array;

    *(v8 + 29) = [(KmlDeviceConfigurationData *)v8 parseDeviceConfigData:dataCopy outerTag:tagCopy];
  }

  return v8;
}

- (id)asData
{
  v29 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  if (self->_supportedRadioTagParsed)
  {
    v4 = [(KmlDeviceConfigurationData *)self supportedRadiosAsDataForTarget:1];
    [data appendData:v4];
  }

  if (self->_sharingConfigTagParsed)
  {
    v17 = [(KmlDeviceConfigurationData *)self sharingConfigToSend:?];
    [data appendData:v17];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_remainingTlvs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        asData = [*(*(&v18 + 1) + 8 * i) asData];
        [data appendData:asData];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [KmlTlv TLVWithTag:32590 value:data];
  value = [v11 value];

  v14 = KmlLogger(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = kmlUtilHexStringFromData(value);
    *buf = 136315650;
    v23 = "[KmlDeviceConfigurationData asData]";
    v24 = 1024;
    v25 = 95;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : DeviceConfig Data : %@", buf, 0x1Cu);
  }

  return value;
}

- (id)readerSupportedTransports
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  if (self->_readerSupportsUwb)
  {
    [array addObject:&unk_285B9CD60];
  }

  if (self->_readerSupportsNfc)
  {
    [v4 addObject:&unk_285B9CD78];
  }

  if (![v4 count])
  {
    [v4 addObject:&unk_285B9CD90];
  }

  return v4;
}

- (void)updateSupportedRadiosWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = dataCopy;
    if ([dataCopy length])
    {
      [(KmlDeviceConfigurationData *)self parseSupportedRadiosData:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateSharingConfigWithData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    [KmlTlv TLVsWithData:dataCopy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 tag];
          if (v11 == 32608)
          {
            v12 = KmlLogger(v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v19 = "[KmlDeviceConfigurationData updateSharingConfigWithData:]";
              v20 = 1024;
              v21 = 158;
              _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : Found sharing config data", buf, 0x12u);
            }

            value = [v10 value];
            [(KmlDeviceConfigurationData *)self parseKeySharingConfigData:value];

            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)updatePPIDWithServerProvidedData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = dataCopy;
  if (self->_mfiPPID)
  {
    v7 = KmlLogger(dataCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[KmlDeviceConfigurationData updatePPIDWithServerProvidedData:]";
      v25 = 1024;
      v26 = 169;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : We already have car provided ppid. Ignore the server provided value", buf, 0x12u);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (dataCopy)
  {
    dataCopy = [dataCopy length];
    if (dataCopy)
    {
      [KmlTlv TLVsWithData:v6];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v22 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            if ([v13 tag] == 32554)
            {
              value = [v13 value];
              [(KmlDeviceConfigurationData *)self parseOemSpecificContent:value];

              asData = [v13 asData];
              oemSpecificContentAsData = self->_oemSpecificContentAsData;
              self->_oemSpecificContentAsData = asData;

              [(NSMutableArray *)self->_remainingTlvs addObject:v13];
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  IsInternalBuild = KmlLogIsInternalBuild(dataCopy, v5);
  if (IsInternalBuild)
  {
    v7 = KmlLogger(IsInternalBuild);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = kmlUtilHexStringFromData(self->_oemSpecificContentAsData);
      *buf = 136315650;
      v24 = "[KmlDeviceConfigurationData updatePPIDWithServerProvidedData:]";
      v25 = 1024;
      v26 = 184;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : Server provided PPID data: %@", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)removeUwbSupportLocally
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_readerSupportsUwb)
  {
    v4 = [(KmlDeviceConfigurationData *)self readerBleConfigWithTag:1 target:?];
    v2 = v4;
    if (v4)
    {
      v4 = [(NSMutableArray *)self->_remainingTlvs addObject:v4];
    }

    self->_readerSupportsUwb = 0;
    self->_uwbDisabledLocally = 1;
    v5 = KmlLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[KmlDeviceConfigurationData removeUwbSupportLocally]";
      v8 = 1024;
      v9 = 205;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : UWB disabled locally, config saved for sharing", &v6, 0x12u);
    }
  }

  else
  {
    v2 = KmlLogger(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[KmlDeviceConfigurationData removeUwbSupportLocally]";
      v8 = 1024;
      v9 = 191;
      _os_log_impl(&dword_248BF3000, v2, OS_LOG_TYPE_INFO, "%s : %i : This reader doesn't support UWB. Nothing to disable locally.", &v6, 0x12u);
    }
  }
}

- (BOOL)isValidForKmlVersion:(unsigned __int16)version transport:(int64_t)transport
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [KmlVersions doesVersion:version support:768];
  if (v6)
  {
    if ((self->_immoTokenConfig | 2) == 2)
    {
      v7 = KmlLogger(v6);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        return 0;
      }

      v10 = 136315394;
      v11 = "[KmlDeviceConfigurationData isValidForKmlVersion:transport:]";
      v12 = 1024;
      v13 = 213;
      v8 = "%s : %i : Sharing In a chain does not support offline immo tokens";
LABEL_5:
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 0x12u);
      goto LABEL_6;
    }

    if (self->_maxOfflineAttestationCount <= 1u)
    {
      v7 = KmlLogger(v6);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v10 = 136315394;
      v11 = "[KmlDeviceConfigurationData isValidForKmlVersion:transport:]";
      v12 = 1024;
      v13 = 218;
      v8 = "%s : %i : Max attestation count must be at least 2 for sharing in a chain";
      goto LABEL_5;
    }
  }

  if (transport)
  {
    if (transport == 2)
    {
      if (!self->_readerSupportsUwb)
      {
        return 0;
      }

      goto LABEL_16;
    }

    return 1;
  }

  if (!self->_readerSupportsUwb)
  {
    return 1;
  }

LABEL_16:
  if (!self->_readerBtIRK)
  {
    return 0;
  }

  return self->_readerBtIdAddress != 0;
}

- (uint64_t)parseDeviceConfigData:(int)data outerTag:
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    v41 = 0;
    goto LABEL_56;
  }

  value7 = v5;
  v8 = &off_248C29000;
  if (!data)
  {
LABEL_17:
    v21 = [KmlTlv TLVsWithData:value7];
    [*(self + 8) removeAllObjects];
    memset(v46, 0, sizeof(v46));
    v18 = v21;
    v22 = [v18 countByEnumeratingWithState:v46 objects:v49 count:16];
    v19 = 1;
    if (!v22)
    {
      v10 = v18;
      goto LABEL_55;
    }

    v23 = v22;
    v43 = value7;
    v44 = v6;
    v45 = *(v8 + 415);
LABEL_19:
    v24 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_4_0();
      if (!v14)
      {
        objc_enumerationMutation(v18);
      }

      v25 = *(*(&v46[0] + 1) + 8 * v24);
      v26 = [v25 tag];
      switch(v26)
      {
        case 'J':
          value = [v25 value];
          v29 = *(self + 80);
          *(self + 80) = value;
          goto LABEL_42;
        case 'K':
          value2 = [v25 value];
          v29 = *(self + 88);
          *(self + 88) = value2;
          goto LABEL_42;
        case 'T':
          asData = [v25 asData];
          v29 = *(self + 152);
          *(self + 152) = asData;
          goto LABEL_42;
        case '[':
          asData2 = [v25 asData];
          v29 = *(self + 144);
          *(self + 144) = asData2;
          goto LABEL_42;
      }

      if (v26 == 215)
      {
        break;
      }

      switch(v26)
      {
        case 216:
          *(self + 22) = [v25 valueAsUnsignedShort];
          asData3 = [v25 asData];
          v29 = *(self + 120);
          *(self + 120) = asData3;
          goto LABEL_42;
        case 217:
          value3 = [v25 value];
          v29 = *(self + 72);
          *(self + 72) = value3;
          goto LABEL_42;
        case 96:
          asData4 = [v25 asData];
          v39 = *(self + 112);
          *(self + 112) = asData4;

          [(KmlDeviceConfigurationData *)self parseSharingInAChainDeviceConfigMailboxSettingData];
          goto LABEL_43;
        case 32554:
          value4 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseOemSpecificContent:value4];

          asData5 = [v25 asData];
          v29 = *(self + 128);
          *(self + 128) = asData5;
LABEL_42:

LABEL_43:
          [*(self + 8) addObject:v25];
          break;
        case 32610:
          value5 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseReaderBleConfigData:value5];

          *(self + 28) = 1;
          value6 = KmlLogger([*(self + 8) addObject:v25]);
          if (os_log_type_enabled(value6, OS_LOG_TYPE_INFO))
          {
            *buf = v45;
            v51 = "[KmlDeviceConfigurationData parseDeviceConfigData:outerTag:]";
            v52 = 1024;
            v53 = 314;
            _os_log_impl(&dword_248BF3000, value6, OS_LOG_TYPE_INFO, "%s : %i : UWB is disabled for local use, but available for sharing.", buf, 0x12u);
          }

          goto LABEL_51;
        case 32608:
          value6 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseKeySharingConfigData:value6];
          goto LABEL_51;
        case 32585:
          value6 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseSupportedRadiosData:value6];
LABEL_51:

          break;
      }

      if (v23 == ++v24)
      {
        v40 = [v18 countByEnumeratingWithState:v46 objects:v49 count:16];
        v23 = v40;
        if (!v40)
        {
          v19 = 1;
          v10 = v18;
          value7 = v43;
          v6 = v44;
          goto LABEL_55;
        }

        goto LABEL_19;
      }
    }

    *(self + 21) = [v25 valueAsUnsignedShort] == 1;
    goto LABEL_43;
  }

  v9 = value7;
  [KmlTlv TLVsWithData:value7];
  v10 = memset(v47, 0, sizeof(v47));
  v11 = [v10 countByEnumeratingWithState:v47 objects:v54 count:16];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      OUTLINED_FUNCTION_4_0();
      if (!v14)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v47[0] + 1) + 8 * i);
      v16 = [v15 tag];
      if (v16 == 32590)
      {
        v20 = KmlLogger(v16);
        v8 = &off_248C29000;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v51 = "[KmlDeviceConfigurationData parseDeviceConfigData:outerTag:]";
          v52 = 1024;
          v53 = 245;
          _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_INFO, "%s : %i : Found device config data to parse in outer tag", buf, 0x12u);
        }

        value7 = [v15 value];

        goto LABEL_17;
      }
    }

    v12 = [v10 countByEnumeratingWithState:v47 objects:v54 count:16];
  }

  while (v12);
LABEL_11:

  v18 = KmlLogger(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "[KmlDeviceConfigurationData parseDeviceConfigData:outerTag:]";
    v52 = 1024;
    v53 = 253;
    _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : Expected to find outer tag, but did not", buf, 0x12u);
  }

  v19 = 0;
  value7 = v9;
LABEL_55:

  v48 = v19;
  v41 = v48;
LABEL_56:

  return v41;
}

- (unsigned)sharingConfigToSend:(unsigned __int8 *)send
{
  sendCopy = send;
  if (!send)
  {
    goto LABEL_17;
  }

  data = [MEMORY[0x277CBEB28] data];
  v6 = sendCopy[23];
  v21 = sendCopy[23];
  if (a2)
  {
    if (v6 == 5)
    {
      v7 = 3;
      goto LABEL_7;
    }

    if (v6 == 4)
    {
      v7 = 1;
LABEL_7:
      v21 = v7;
    }
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v21 length:1];
  v9 = [KmlTlv TLVWithTag:218 value:v8];
  asData = [v9 asData];
  OUTLINED_FUNCTION_5_0(asData);

  if (sendCopy[24] == 1)
  {
    v11 = [KmlTlv TLVWithJustTag:219];
    asData2 = [v11 asData];
    OUTLINED_FUNCTION_1_0(asData2);
  }

  if (sendCopy[25] == 1)
  {
    v13 = [KmlTlv TLVWithJustTag:220];
    asData3 = [v13 asData];
    OUTLINED_FUNCTION_1_0(asData3);
  }

  if (sendCopy[26] >= 2u)
  {
    v15 = [KmlTlv TLVWithTag:221 unsignedChar:?];
    asData4 = [v15 asData];
    OUTLINED_FUNCTION_1_0(asData4);
  }

  if (sendCopy[27] == 1)
  {
    v17 = [KmlTlv TLVWithJustTag:222];
    asData5 = [v17 asData];
    [data appendData:asData5];
  }

  v19 = [KmlTlv TLVWithTag:32608 value:data];
  sendCopy = [v19 asData];

LABEL_17:

  return sendCopy;
}

- (void)parseSupportedRadiosData:(uint64_t)data
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!data)
  {
    goto LABEL_21;
  }

  *(data + 18) = 0;
  *(data + 28) = 0;
  *(data + 20) = 0;
  v4 = *(data + 32);
  *(data + 32) = 0;

  v5 = *(data + 40);
  *(data + 40) = 0;

  v6 = *(data + 48);
  *(data + 48) = 0;

  v7 = *(data + 56);
  *(data + 56) = 0;

  v8 = [KmlTlv TLVsWithData:v3];
  memset(v19, 0, sizeof(v19));
  v9 = [v8 countByEnumeratingWithState:v19 objects:v20 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v18 = v3;
  v11 = 0;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      OUTLINED_FUNCTION_4_0();
      if (!v13)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v19[0] + 1) + 8 * i);
      v15 = [v14 tag];
      switch(v15)
      {
        case 24400:
LABEL_13:
          v11 = 1;
          *(data + 18) = 1;
          continue;
        case 24401:
          goto LABEL_14;
        case 32592:
          goto LABEL_13;
        case 32593:
LABEL_14:
          v11 = 1;
          *(data + 19) = 1;
          *(data + 28) = 0;
          break;
        case 32594:
          value = [v14 value];
          [(KmlDeviceConfigurationData *)data parseReaderBleConfigData:value];

          v11 = 1;
          break;
      }
    }

    v10 = [v8 countByEnumeratingWithState:v19 objects:v20 count:16];
  }

  while (v10);
  v3 = v18;
  if (v11)
  {
    v17 = 1;
    goto LABEL_20;
  }

LABEL_19:
  v17 = 0;
  *(data + 18) = 1;
LABEL_20:
  *(data + 16) = v17;

LABEL_21:
}

- (void)parseKeySharingConfigData:(_BYTE *)data
{
  if (data)
  {
    data[17] = 1;
    v3 = [KmlTlv TLVsWithData:a2];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v8)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v12 + 8 * i);
          switch([v9 tag])
          {
            case 0xDAu:
              data[23] = [v9 valueAsUnsignedShort];
              break;
            case 0xDBu:
              data[24] = 1;
              break;
            case 0xDCu:
              data[25] = 1;
              break;
            case 0xDDu:
              valueAsUnsignedChar = [v9 valueAsUnsignedChar];
              if (valueAsUnsignedChar >= 0x10)
              {
                v11 = 16;
              }

              else
              {
                v11 = valueAsUnsignedChar;
              }

              data[26] = v11;
              break;
            case 0xDEu:
              data[27] = 1;
              break;
            default:
              continue;
          }
        }

        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (void)parseOemSpecificContent:(uint64_t)content
{
  v127 = *MEMORY[0x277D85DE8];
  v4 = a2;
  contentCopy = content;
  if (!content)
  {
    goto LABEL_61;
  }

  v96 = v4;
  v5 = [KmlTlv TLVsWithData:v4];
  v6 = [@"AAPL" dataUsingEncoding:4];
  v102 = [@"DFLT" dataUsingEncoding:4];
  v7 = KmlLogger(v102);
  value4 = &off_248C29000;
  if (OUTLINED_FUNCTION_11(v7))
  {
    *buf = 136315906;
    OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
    v122 = 503;
    v123 = 2112;
    v124 = v6;
    v125 = 2112;
    v126 = v102;
    OUTLINED_FUNCTION_9();
    _os_log_impl(v9, v10, v11, v12, v13, 0x26u);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v114 objects:v120 count:16];
  v100 = v15;
  if (!v15)
  {
    v72 = 0;
    v73 = v14;
    goto LABEL_59;
  }

  v105 = 0;
  v98 = 0;
  v99 = *v115;
  v97 = v14;
  while (2)
  {
    v16 = 0;
    do
    {
      if (*v115 != v99)
      {
        objc_enumerationMutation(v14);
      }

      v101 = v16;
      v17 = *(*(&v114 + 1) + 8 * v16);
      v18 = KmlLogger(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v17 tag];
        value = [v17 value];
        *buf = 136315906;
        OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
        v122 = 505;
        v123 = v21;
        LODWORD(v124) = v19;
        OUTLINED_FUNCTION_7(v22);
        _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_INFO, "%s : %i : TLV: %02x : %@", v23, 0x22u);
      }

      v15 = [v17 tag];
      if (v15 != 97)
      {
        v57 = v101;
        goto LABEL_49;
      }

      value2 = [v17 value];
      v25 = [KmlTlv TLVsWithData:value2];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v110 objects:v119 count:16];
      v28 = v27;
      if (v27)
      {
        v104 = 0;
        HIDWORD(v103) = 0;
        v29 = *v111;
        do
        {
          v30 = 0;
          do
          {
            if (*v111 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v110 + 1) + 8 * v30);
            v32 = KmlLogger(v27);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = [v31 tag];
              value3 = [v31 value];
              OUTLINED_FUNCTION_3_0(value3, v35, v36, v37, v38, v39, v40, v41, v42, contentCopy, v96, v97, v98, v99, v100, v101, v102, v103, v104, v43);
              OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
              v122 = 510;
              v123 = v44;
              LODWORD(v124) = v33;
              OUTLINED_FUNCTION_7(v45);
              _os_log_impl(&dword_248BF3000, v32, OS_LOG_TYPE_INFO, "%s : %i : TLV: %02x : %@", v46, 0x22u);
            }

            if ([v31 tag] == 64)
            {
              value4 = [v31 value];
              v47 = [(__CFString *)v6 isEqualToData:value4];

              if (v47)
              {
                HIDWORD(v103) = 1;
              }

              else
              {
                value4 = [v31 value];
                v55 = [v102 isEqualToData:value4];

                v105 |= v55;
              }
            }

            else
            {
              v27 = [v31 tag];
              if (v27 == 49)
              {
                value5 = [v31 value];
                value4 = [KmlTlv TLVsWithData:value5];

                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v49 = value4;
                v50 = [v49 countByEnumeratingWithState:&v106 objects:v118 count:16];
                if (v50)
                {
                  v51 = v50;
                  v52 = v6;
                  value4 = *v107;
                  while (2)
                  {
                    for (i = 0; i != v51; ++i)
                    {
                      if (*v107 != value4)
                      {
                        objc_enumerationMutation(v49);
                      }

                      v54 = *(*(&v106 + 1) + 8 * i);
                      if ([v54 tag] == 80)
                      {
                        value4 = [v54 value];

                        v104 = value4;
                        goto LABEL_34;
                      }
                    }

                    v51 = [v49 countByEnumeratingWithState:&v106 objects:v118 count:16];
                    if (v51)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_34:
                  v6 = v52;
                }
              }
            }

            v30 = v30 + 1;
          }

          while (v30 != v28);
          v27 = [v26 countByEnumeratingWithState:&v110 objects:v119 count:16];
          v28 = v27;
        }

        while (v27);

        if ((v103 & 0x100000000) != 0)
        {
          v74 = v6;
          v75 = KmlLogger(v56);
          v76 = v104;
          if (OUTLINED_FUNCTION_11(v75))
          {
            v77 = kmlUtilHexStringFromData(v104);
            OUTLINED_FUNCTION_3_0(v77, v78, v79, v80, v81, v82, v83, v84, v85, contentCopy, v96, v97, v98, v99, v100, v101, v102, v103, v104, v86);
            OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
            v122 = 529;
            v123 = 2112;
            v124 = @"AAPL";
            v125 = 2112;
            v126 = v87;
            OUTLINED_FUNCTION_9();
            _os_log_impl(v88, v89, v90, v91, v92, 0x26u);
          }

          v93 = *(contentCopy + 136);
          *(contentCopy + 136) = v76;
          v94 = v76;

          v14 = v97;
          v72 = v98;
          v73 = v97;
          v6 = v74;
          goto LABEL_59;
        }

        v28 = v104;
        if (v105)
        {
          v14 = v97;
          v57 = v101;
LABEL_43:
          v58 = KmlLogger(v56);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = kmlUtilHexStringFromData(v28);
            OUTLINED_FUNCTION_3_0(v59, v60, v61, v62, v63, v64, v65, v66, v67, contentCopy, v96, v97, v98, v99, v100, v101, v102, v103, v104, v68);
            OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
            v122 = 533;
            v123 = 2112;
            v124 = @"DFLT";
            v125 = 2112;
            v126 = v69;
            _os_log_impl(&dword_248BF3000, v58, OS_LOG_TYPE_INFO, "%s : %i : Found default product plan data for %@ : (%@)", buf, 0x26u);
          }

          v28 = v28;
          v105 = 1;
          v98 = v28;
          goto LABEL_48;
        }

        v105 = 0;
        v14 = v97;
        v57 = v101;
      }

      else
      {

        v57 = v101;
        if (v105)
        {
          goto LABEL_43;
        }

        v105 = 0;
      }

LABEL_48:

LABEL_49:
      v16 = v57 + 1;
    }

    while (v16 != v100);
    v15 = [v14 countByEnumeratingWithState:&v114 objects:v120 count:16];
    v100 = v15;
    if (v15)
    {
      continue;
    }

    break;
  }

  if ((v105 & 1) == 0)
  {
    v72 = v98;
    goto LABEL_60;
  }

  v71 = KmlLogger(v70);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
    v122 = 540;
    _os_log_impl(&dword_248BF3000, v71, OS_LOG_TYPE_INFO, "%s : %i : Only found default product plan data, so using it", buf, 0x12u);
  }

  v72 = v98;
  v73 = *(contentCopy + 136);
  *(contentCopy + 136) = v72;
LABEL_59:

LABEL_60:
  v4 = v96;
LABEL_61:
}

- (id)readerBleConfigWithTag:(void *)tag target:
{
  if (self)
  {
    data = [MEMORY[0x277CBEB28] data];
    if (tag != 3)
    {
      if (*(self + 32))
      {
        v3 = [KmlTlv TLVWithTag:208 value:?];
        asData = [v3 asData];
        OUTLINED_FUNCTION_6_0(asData);
      }

      if (*(self + 40))
      {
        v3 = [KmlTlv TLVWithTag:209 value:?];
        asData2 = [v3 asData];
        OUTLINED_FUNCTION_6_0(asData2);
      }
    }

    if (*(self + 20) == 1)
    {
      v3 = [KmlTlv TLVWithJustTag:210];
      asData3 = [v3 asData];
      OUTLINED_FUNCTION_6_0(asData3);
    }

    if (tag != 3)
    {
      if (*(self + 48))
      {
        tag = [KmlTlv TLVWithTag:211 value:?];
        asData4 = [tag asData];
        OUTLINED_FUNCTION_5_0(asData4);
      }

      if (*(self + 56))
      {
        v13 = [KmlTlv TLVWithTag:212 value:?];
        asData5 = [v13 asData];
        OUTLINED_FUNCTION_1_0(asData5);
      }
    }

    if ([data length])
    {
      [KmlTlv TLVWithTag:a2 value:data];
    }

    else
    {
      [KmlTlv TLVWithJustTag:a2];
    }
    v15 = ;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)parseSharingInAChainDeviceConfigMailboxSettingData
{
  v42 = *MEMORY[0x277D85DE8];
  if (self)
  {
    [KmlTlv TLVsWithData:self[14]];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = v36 = 0u;
    value = [v3 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (value)
    {
      v5 = *v34;
      while (2)
      {
        for (i = 0; i != value; i = i + 1)
        {
          if (*v34 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v1 = *(*(&v33 + 1) + 8 * i);
          if ([v1 tag] == 96)
          {
            value = [v1 value];
            goto LABEL_12;
          }
        }

        value = [v3 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (value)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v7 = [value length];
    if (!v7)
    {
      v8 = KmlLogger(0);
      if (OUTLINED_FUNCTION_11(v8))
      {
        OUTLINED_FUNCTION_8();
        v38 = 592;
        OUTLINED_FUNCTION_9();
        _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
      }
    }

    v14 = KmlLogger(v7);
    if (OUTLINED_FUNCTION_11(v14))
    {
      OUTLINED_FUNCTION_8();
      v38 = 595;
      v39 = 2112;
      v40 = value;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v15, v16, v17, v18, v19, 0x1Cu);
    }

    v20 = [KmlTlv TLVsWithData:value];
    v21 = OUTLINED_FUNCTION_2_0();
    v23 = [v22 countByEnumeratingWithState:v32 objects:v37 count:{16, v21}];
    if (v23)
    {
      v24 = v23;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v26)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(v32[1] + 8 * j);
          if ([v27 tag] == 74)
          {
            value2 = [v27 value];
            v29 = self[12];
            self[12] = value2;
          }

          if ([v27 tag] == 75)
          {
            value3 = [v27 value];
            v31 = self[13];
            self[13] = value3;
          }
        }

        v24 = [v20 countByEnumeratingWithState:v32 objects:v37 count:16];
      }

      while (v24);
    }
  }
}

- (void)parseReaderBleConfigData:(uint64_t)data
{
  if (data)
  {
    v3 = [KmlTlv TLVsWithData:a2];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v16 + 8 * i);
          switch([v9 tag])
          {
            case 0xD0u:
              value = [v9 value];
              v11 = *(data + 32);
              *(data + 32) = value;
              goto LABEL_14;
            case 0xD1u:
              value2 = [v9 value];
              v11 = *(data + 40);
              *(data + 40) = value2;
              goto LABEL_14;
            case 0xD2u:
              *(data + 20) = 1;
              continue;
            case 0xD3u:
              value3 = [v9 value];
              v11 = *(data + 48);
              *(data + 48) = value3;
              goto LABEL_14;
            case 0xD4u:
              value4 = [v9 value];
              v11 = *(data + 56);
              *(data + 56) = value4;
              goto LABEL_14;
            case 0xD5u:
              value5 = [v9 value];
              v11 = *(data + 64);
              *(data + 64) = value5;
LABEL_14:

              break;
            default:
              continue;
          }
        }

        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (id)supportedRadiosAsDataForTarget:(unsigned __int8)target
{
  targetCopy = target;
  data = [MEMORY[0x277CBEB28] data];
  if (self->_readerSupportsNfc)
  {
    v7 = [KmlTlv TLVWithJustTag:24400];
    asData = [v7 asData];
    OUTLINED_FUNCTION_5_0(asData);
  }

  v9 = [(KmlDeviceConfigurationData *)self readerBleConfigWithTag:targetCopy target:?];
  if (self->_readerSupportsUwb || targetCopy != 1 && self->_uwbDisabledLocally)
  {
    v10 = [KmlTlv TLVWithJustTag:24401];
    asData2 = [v10 asData];
    OUTLINED_FUNCTION_1_0(asData2);

    if (v9)
    {
      asData3 = [v9 asData];
      [data appendData:asData3];
    }
  }

  v13 = [KmlTlv TLVWithTag:32585 value:data];
  asData4 = [v13 asData];

  return asData4;
}

@end