@interface CBControllerInfo
- (BOOL)isEqual:(id)equal;
- (CBControllerInfo)initWithCoder:(id)coder;
- (CBControllerInfo)initWithDictionary:(id)dictionary error:(id *)error;
- (CBControllerInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBControllerInfo

- (CBControllerInfo)initWithCoder:(id)coder
{
  v11[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v11[6] = objc_opt_class();
  v11[7] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:8];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ctrI"];

  v9 = [(CBControllerInfo *)self initWithDictionary:v8 error:0];
  return v9;
}

- (CBControllerInfo)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBControllerInfo *)self initWithXPCObject:v12 error:error];
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
  [(CBControllerInfo *)self encodeWithXPCObject:v3];
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
  dictionaryRepresentation = [(CBControllerInfo *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"ctrI"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  CUXPCEncodeNSArrayOfObjects();
  bluetoothState = self->_bluetoothState;
  if (bluetoothState)
  {
    xpc_dictionary_set_int64(objectCopy, "pwrS", bluetoothState);
  }

  chipsetID = self->_chipsetID;
  v7 = objectCopy;
  uTF8String = [(NSString *)chipsetID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v7, "chip", uTF8String);
  }

  if (self->_cloudSyncStatus)
  {
    xpc_dictionary_set_uint64(v7, "clSy", self->_cloudSyncStatus);
  }

  discoverableState = self->_discoverableState;
  if (discoverableState)
  {
    xpc_dictionary_set_int64(v7, "dsSt", discoverableState);
  }

  if (self->_fastLEConnectionAllowed)
  {
    xpc_dictionary_set_BOOL(v7, "fLEal", 1);
  }

  if (self->_fastLEConnectionInfoVersion)
  {
    xpc_dictionary_set_uint64(v7, "fLEVe", self->_fastLEConnectionInfoVersion);
  }

  fastLEConnectionInfoData = self->_fastLEConnectionInfoData;
  if (fastLEConnectionInfoData)
  {
    v11 = fastLEConnectionInfoData;
    v12 = v7;
    v13 = fastLEConnectionInfoData;
    bytes = [(NSData *)v13 bytes];
    if (bytes)
    {
      v15 = bytes;
    }

    else
    {
      v15 = "";
    }

    v16 = [(NSData *)v13 length];

    xpc_dictionary_set_data(v12, "fLEDt", v15, v16);
  }

  firmwareName = self->_firmwareName;
  v18 = v7;
  uTF8String2 = [(NSString *)firmwareName UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v18, "frmN", uTF8String2);
  }

  firmwareVersion = self->_firmwareVersion;
  xdict = v18;
  uTF8String3 = [(NSString *)firmwareVersion UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(xdict, "frmV", uTF8String3);
  }

  hardwareAddressData = self->_hardwareAddressData;
  if (hardwareAddressData)
  {
    v23 = hardwareAddressData;
    v24 = xdict;
    v25 = hardwareAddressData;
    bytes2 = [(NSData *)v25 bytes];
    if (bytes2)
    {
      v27 = bytes2;
    }

    else
    {
      v27 = "";
    }

    v28 = [(NSData *)v25 length];

    xpc_dictionary_set_data(v24, "btAd", v27, v28);
  }

  if (self->_hciTransportType)
  {
    xpc_dictionary_set_int64(xdict, "hciT", self->_hciTransportType);
  }

  inquiryState = self->_inquiryState;
  v30 = xdict;
  if (inquiryState)
  {
    xpc_dictionary_set_int64(xdict, "inqS", inquiryState);
    v30 = xdict;
  }

  if (self->_leaVersion)
  {
    xpc_dictionary_set_uint64(xdict, "fLEAVe", self->_leaVersion);
    v30 = xdict;
  }

  if (self->_lmpVersion)
  {
    xpc_dictionary_set_uint64(xdict, "lmpV", self->_lmpVersion);
    v30 = xdict;
  }

  productID = self->_productID;
  if (productID)
  {
    xpc_dictionary_set_uint64(xdict, "pid", productID);
    v30 = xdict;
  }

  supportedServices = self->_supportedServices;
  if (supportedServices)
  {
    xpc_dictionary_set_uint64(xdict, "supS", supportedServices);
    v30 = xdict;
  }

  if (self->_vendorID)
  {
    xpc_dictionary_set_uint64(xdict, "vid", self->_vendorID);
    v30 = xdict;
  }

  if (self->_vendorIDSource)
  {
    xpc_dictionary_set_uint64(xdict, "vidS", self->_vendorIDSource);
    v30 = xdict;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v152 = *MEMORY[0x1E69E9840];
  if (level <= 0x14u)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v4 = self->_audioLinkQualityArray;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v146 objects:v151 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v147;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v147 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v146 + 1) + 8 * v9);
          v12 = CUDescriptionWithLevel();
          v145 = v10;
          deviceName = [v11 deviceName];
          [v12 UTF8String];
          v14 = CUPrintText();
          NSAppendPrintF(&v145, "Audio Link Quality (%@):\n%@", deviceName, v14);
          v7 = v145;

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v146 objects:v151 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v144 = v7;
    bluetoothState = self->_bluetoothState;
    if (bluetoothState > 0xA)
    {
      v39 = "?";
    }

    else
    {
      v39 = off_1E811E578[bluetoothState];
    }

    NSAppendPrintF_safe(&v144, "Bluetooth state:    %s\n", v39);
    v40 = v144;

    chipsetID = self->_chipsetID;
    if (chipsetID)
    {
      v143 = v40;
      v42 = chipsetID;
      NSAppendPrintF_safe(&v143, "Chipset ID:         %@\n", v42);
      v43 = v143;

      v40 = v43;
    }

    v142 = v40;
    discoverableState = self->_discoverableState;
    if (discoverableState >= 3)
    {
      v45 = "?";
    }

    else
    {
      v45 = off_1E811E680[discoverableState];
    }

    NSAppendPrintF_safe(&v142, "Discoverable:       %s\n", v45);
    v46 = v142;

    v47 = self->_firmwareName;
    v48 = self->_firmwareVersion;
    v16 = v47;
    v49 = v48;
    p_isa = &v49->super.isa;
    if (v16 == v49)
    {
    }

    else
    {
      if ((v16 != 0) == (v49 == 0))
      {

        if (!v16)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v51 = [(NSArray *)v16 isEqual:v49];

      if ((v51 & 1) == 0)
      {
        if (!v16)
        {
LABEL_48:
          if (!p_isa)
          {
LABEL_53:
            v138 = v46;
            NSAppendPrintF_safe(&v138, "Host version:       %s\n", CBHostVersion);
            v55 = v138;

            hardwareAddressData = self->_hardwareAddressData;
            if (hardwareAddressData)
            {
              v137 = v55;
              v57 = hardwareAddressData;
              v58 = CUPrintNSDataAddress();
              NSAppendPrintF_safe(&v137, "Hardware Address:   %@\n", v58);
              v59 = v137;

              v55 = v59;
            }

            v136 = v55;
            vendorIDSource = self->_vendorIDSource;
            if (vendorIDSource >= 3)
            {
              v61 = "?";
            }

            else
            {
              v61 = off_1E811E560[vendorIDSource];
            }

            NSAppendPrintF_safe(&v136, "PID/VID/VIDSrc:     0x%04X / 0x%04X / %s\n", self->_productID, self->_vendorID, v61);
            v62 = v136;

            hciTransportType = self->_hciTransportType;
            if (self->_hciTransportType)
            {
              v135 = v62;
              if (hciTransportType > 4)
              {
                v64 = "?";
              }

              else
              {
                v64 = off_1E811E660[hciTransportType - 1];
              }

              NSAppendPrintF_safe(&v135, "HCI Transport:      %s\n", v64);
              v75 = v135;

              v62 = v75;
            }

            v134 = v62;
            inquiryState = self->_inquiryState;
            if (inquiryState > 2)
            {
              v77 = "?";
            }

            else
            {
              v77 = off_1E811E680[inquiryState];
            }

            NSAppendPrintF_safe(&v134, "Inquiry state:      %s\n", v77);
            v78 = v134;

            v133 = v78;
            if (self->_lmpVersion > 0xEu)
            {
              v79 = "?";
            }

            else
            {
              v79 = off_1E811E5E8[self->_lmpVersion];
            }

            NSAppendPrintF_safe(&v133, "LMP version:        %d (%s)\n", self->_lmpVersion, v79);
            v80 = v133;

            v132 = v80;
            v72 = CUPrintFlags32();
            NSAppendPrintF_safe(&v132, "Supported services: %@\n", v72);
            v81 = v132;
            goto LABEL_117;
          }

          v139 = v46;
          v53 = &v139;
          NSAppendPrintF_safe(&v139, "Firmware version:   %@\n", p_isa);
LABEL_52:
          v54 = *v53;

          v46 = v54;
          goto LABEL_53;
        }

LABEL_47:
        v140 = v46;
        NSAppendPrintF_safe(&v140, "Firmware name:      %@\n", v16);
        v52 = v140;

        v46 = v52;
        goto LABEL_48;
      }
    }

    v141 = v46;
    v53 = &v141;
    NSAppendPrintF_safe(&v141, "Firmware version:   %@\n", p_isa);
    goto LABEL_52;
  }

  if ((level & 0x8000000) == 0)
  {
    v131 = 0;
    NSAppendPrintF_safe(&v131, "CBControllerInfo");
    v15 = v131;
    v16 = self->_audioLinkQualityArray;
    if (![(NSArray *)v16 count])
    {
      goto LABEL_11;
    }

LABEL_14:
    v130 = v15;
    NSAppendPrintF_safe(&v130, ", AuLQ [");
    v19 = v130;

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v20 = v16;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v126 objects:v150 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v127;
      v24 = "";
      do
      {
        if (*v127 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = **(&v126 + 1);
        v125 = v19;
        NSAppendPrintF_safe(&v125, "%s{%@}", v24, v25);
        v26 = v125;

        if (v22 < 2)
        {
          v19 = v26;
        }

        else
        {
          for (i = 1; i != v22; ++i)
          {
            if (*v127 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v28 = *(*(&v126 + 1) + 8 * i);
            v125 = v26;
            NSAppendPrintF_safe(&v125, "%s{%@}", ", ", v28);
            v19 = v125;

            v26 = v19;
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v126 objects:v150 count:16];
        v24 = ", ";
      }

      while (v22);
    }

    v124 = v19;
    NSAppendPrintF_safe(&v124, "]");
    v15 = v124;

    v123 = v15;
    v17 = self->_bluetoothState;
    if (v17 <= 0xA)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v15 = 0;
  v16 = self->_audioLinkQualityArray;
  if ([(NSArray *)v16 count])
  {
    goto LABEL_14;
  }

LABEL_11:
  v123 = v15;
  v17 = self->_bluetoothState;
  if (v17 <= 0xA)
  {
LABEL_12:
    v18 = off_1E811E578[v17];
    goto LABEL_27;
  }

LABEL_26:
  v18 = "?";
LABEL_27:
  NSAppendPrintF_safe(&v123, ", BlSt %s", v18);
  v29 = v123;

  v122 = v29;
  v30 = self->_discoverableState;
  v31 = "?";
  if (v30 <= 2)
  {
    v31 = off_1E811E680[v30];
  }

  NSAppendPrintF_safe(&v122, ", DcsS %s", v31);
  v32 = v122;

  v33 = self->_chipsetID;
  if (v33)
  {
    v121 = v32;
    v34 = v33;
    NSAppendPrintF_safe(&v121, ", Chip %@", v34);
    v35 = v121;

    v32 = v35;
  }

  cloudSyncStatus = self->_cloudSyncStatus;
  if (self->_cloudSyncStatus)
  {
    v120 = v32;
    if (cloudSyncStatus > 3)
    {
      v37 = "?";
    }

    else
    {
      v37 = off_1E811E5D0[cloudSyncStatus - 1];
    }

    NSAppendPrintF_safe(&v120, ", Sync Status: %s", v37);
    v65 = v120;

    v32 = v65;
  }

  fastLEConnectionInfoVersion = self->_fastLEConnectionInfoVersion;
  if (self->_fastLEConnectionInfoVersion)
  {
    v119 = v32;
    if (self->_fastLEConnectionAllowed)
    {
      v67 = "yes";
    }

    else
    {
      v67 = "no";
    }

    NSAppendPrintF_safe(&v119, ", FastLE v%d, Allowed: %s", fastLEConnectionInfoVersion, v67);
    v68 = v119;

    v32 = v68;
  }

  v69 = self->_firmwareName;
  v70 = self->_firmwareVersion;
  p_isa = v69;
  v71 = v70;
  v72 = v71;
  if (p_isa != v71)
  {
    if ((p_isa != 0) != (v71 == 0))
    {
      v73 = [(NSString *)p_isa isEqual:v71];

      if (v73)
      {
        if (!v72)
        {
          goto LABEL_92;
        }

        goto LABEL_74;
      }
    }

    else
    {
    }

    if (p_isa)
    {
      v117 = v32;
      NSAppendPrintF_safe(&v117, ", FrmN %@", p_isa);
      v82 = v117;

      v32 = v82;
    }

    if (!v72)
    {
      goto LABEL_92;
    }

    v116 = v32;
    v74 = &v116;
    goto LABEL_91;
  }

  if (v72)
  {
LABEL_74:
    v118 = v32;
    v74 = &v118;
LABEL_91:
    NSAppendPrintF_safe(v74, ", FrmV %@", v72);
    v83 = *v74;

    v32 = v83;
  }

LABEL_92:
  v84 = self->_hardwareAddressData;
  if (v84)
  {
    v115 = v32;
    v85 = v84;
    v86 = CUPrintNSDataAddress();
    NSAppendPrintF_safe(&v115, ", HWAd %@", v86);
    v87 = v115;

    v32 = v87;
  }

  productID = self->_productID;
  if (productID)
  {
    v114 = v32;
    NSAppendPrintF_safe(&v114, ", PID: 0x%04X", productID);
    v89 = v114;

    v32 = v89;
  }

  vendorID = self->_vendorID;
  if (self->_vendorID)
  {
    v113 = v32;
    NSAppendPrintF_safe(&v113, ", VID: 0x%04X", vendorID);
    v91 = v113;

    v32 = v91;
  }

  v92 = self->_vendorIDSource;
  if (self->_vendorIDSource)
  {
    v93 = "Bluetooth";
    if (v92 != 1)
    {
      v93 = "?";
    }

    if (v92 == 2)
    {
      v94 = "USB";
    }

    else
    {
      v94 = v93;
    }

    v112 = v32;
    NSAppendPrintF_safe(&v112, ", VIDS: %s", v94);
    v95 = v112;

    v32 = v95;
  }

  v96 = self->_hciTransportType;
  if (self->_hciTransportType)
  {
    v111 = v32;
    if (v96 > 4)
    {
      v97 = "?";
    }

    else
    {
      v97 = off_1E811E660[v96 - 1];
    }

    NSAppendPrintF_safe(&v111, ", HCIT %s", v97);
    v98 = v111;

    v32 = v98;
  }

  v110 = v32;
  v99 = self->_inquiryState;
  if (v99 > 2)
  {
    v100 = "?";
  }

  else
  {
    v100 = off_1E811E680[v99];
  }

  NSAppendPrintF_safe(&v110, ", InqS %s", v100);
  v101 = v110;

  v109 = v101;
  if (self->_lmpVersion > 0xEu)
  {
    v102 = "?";
  }

  else
  {
    v102 = off_1E811E5E8[self->_lmpVersion];
  }

  NSAppendPrintF_safe(&v109, ", LMPv %d (%s)", self->_lmpVersion, v102);
  v103 = v109;

  v108 = v103;
  v80 = CUPrintFlags32();
  NSAppendPrintF_safe(&v108, ", SSrv: %@", v80);
  v81 = v108;

LABEL_117:
  if (v81)
  {
    v104 = v81;
  }

  else
  {
    v104 = &stru_1F40009C8;
  }

  v105 = v104;

  return v104;
}

- (CBControllerInfo)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v13 = OUTLINED_FUNCTION_18();
  if (!v13)
  {
    if (!v5)
    {
      goto LABEL_53;
    }

    v79 = "CBControllerInfo init failed";
LABEL_52:
    v80 = CBErrorF(-6756, v79, v7, v8, v9, v10, v11, v12, v81);
    OUTLINED_FUNCTION_16(v80);
    goto LABEL_47;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (!v5)
    {
      goto LABEL_53;
    }

    v79 = "XPC non-dict";
    goto LABEL_52;
  }

  objc_opt_class();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_4();
  v14 = CUXPCDecodeSInt64RangedEx();
  if (v14 == 6)
  {
    *(v13 + 48) = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v15 = OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_3_1(v15, v16, v17, v18, v19);
  if (v20 == 6)
  {
    *(v13 + 8) = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_53;
  }

  v21 = OUTLINED_FUNCTION_4();
  v26 = OUTLINED_FUNCTION_15(v21, v22, v23, v24, v25);
  if (v26 == 6)
  {
    *(v13 + 20) = 0;
  }

  else if (v26 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_53;
  }

  v27 = OUTLINED_FUNCTION_0();
  v32 = OUTLINED_FUNCTION_3_1(v27, v28, v29, v30, v31);
  if (v32 == 6)
  {
    *(v13 + 9) = 0;
  }

  else if (v32 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v33 = CUXPCDecodeNSDataOfLength();
  if (!v33)
  {
    goto LABEL_53;
  }

  v35 = OUTLINED_FUNCTION_1_3(v33, "hciT", v34);
  if (v35 == 6)
  {
    *(v13 + 10) = 0;
  }

  else if (v35 == 5)
  {
    goto LABEL_53;
  }

  v36 = OUTLINED_FUNCTION_4();
  v41 = OUTLINED_FUNCTION_15(v36, v37, v38, v39, v40);
  if (v41 == 6)
  {
    *(v13 + 24) = 0;
  }

  else if (v41 == 5)
  {
    goto LABEL_53;
  }

  v42 = OUTLINED_FUNCTION_0();
  v47 = OUTLINED_FUNCTION_3_1(v42, v43, v44, v45, v46);
  if (v47 == 6)
  {
    *(v13 + 11) = 0;
  }

  else if (v47 == 5)
  {
    goto LABEL_53;
  }

  v48 = OUTLINED_FUNCTION_0();
  v53 = OUTLINED_FUNCTION_3_1(v48, v49, v50, v51, v52);
  if (v53 == 6)
  {
    *(v13 + 12) = 0;
  }

  else if (v53 == 5)
  {
    goto LABEL_53;
  }

  v54 = OUTLINED_FUNCTION_0();
  v59 = OUTLINED_FUNCTION_5(v54, v55, v56, v57, v58);
  if (v59 == 6)
  {
    *(v13 + 28) = 0;
  }

  else if (v59 == 5)
  {
    goto LABEL_53;
  }

  v60 = OUTLINED_FUNCTION_0();
  v65 = OUTLINED_FUNCTION_5(v60, v61, v62, v63, v64);
  if (v65 == 6)
  {
    *(v13 + 32) = 0;
  }

  else if (v65 == 5)
  {
    goto LABEL_53;
  }

  v66 = OUTLINED_FUNCTION_0();
  v71 = OUTLINED_FUNCTION_4_0(v66, v67, v68, v69, v70);
  if (v71 == 6)
  {
    *(v13 + 16) = 0;
  }

  else if (v71 == 5)
  {
    goto LABEL_53;
  }

  v72 = OUTLINED_FUNCTION_0();
  v77 = OUTLINED_FUNCTION_3_1(v72, v73, v74, v75, v76);
  if (v77 != 6)
  {
    if (v77 != 5)
    {
      goto LABEL_46;
    }

LABEL_53:
    v6 = 0;
    goto LABEL_47;
  }

  *(v13 + 13) = 0;
LABEL_46:
  v6 = v13;
LABEL_47:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    audioLinkQualityArray = self->_audioLinkQualityArray;
    audioLinkQualityArray = [v5 audioLinkQualityArray];
    v8 = audioLinkQualityArray;
    v9 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v11 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v12 = OUTLINED_FUNCTION_13();

      if (!v12)
      {
        goto LABEL_49;
      }
    }

    bluetoothState = self->_bluetoothState;
    if (bluetoothState != [v5 bluetoothState])
    {
LABEL_49:
      v38 = 0;
LABEL_52:

      goto LABEL_53;
    }

    chipsetID = self->_chipsetID;
    audioLinkQualityArray = [v5 chipsetID];
    v8 = chipsetID;
    v15 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v16 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v17 = OUTLINED_FUNCTION_13();

      if (!v17)
      {
        goto LABEL_49;
      }
    }

    cloudSyncStatus = self->_cloudSyncStatus;
    if (cloudSyncStatus != [v5 cloudSyncStatus])
    {
      goto LABEL_49;
    }

    discoverableState = self->_discoverableState;
    if (discoverableState != [v5 discoverableState])
    {
      goto LABEL_49;
    }

    fastLEConnectionAllowed = self->_fastLEConnectionAllowed;
    if (fastLEConnectionAllowed != [v5 fastLEConnectionAllowed])
    {
      goto LABEL_49;
    }

    fastLEConnectionInfoVersion = self->_fastLEConnectionInfoVersion;
    if (fastLEConnectionInfoVersion != [v5 fastLEConnectionInfoVersion])
    {
      goto LABEL_49;
    }

    fastLEConnectionInfoData = self->_fastLEConnectionInfoData;
    audioLinkQualityArray = [v5 fastLEConnectionInfoData];
    v8 = fastLEConnectionInfoData;
    v23 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v24 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v25 = OUTLINED_FUNCTION_13();

      if (!v25)
      {
        goto LABEL_49;
      }
    }

    firmwareName = self->_firmwareName;
    audioLinkQualityArray = [v5 firmwareName];
    v8 = firmwareName;
    v27 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v28 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v29 = OUTLINED_FUNCTION_13();

      if (!v29)
      {
        goto LABEL_49;
      }
    }

    firmwareVersion = self->_firmwareVersion;
    audioLinkQualityArray = [v5 firmwareVersion];
    v8 = firmwareVersion;
    v31 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v32 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v33 = OUTLINED_FUNCTION_13();

      if (!v33)
      {
        goto LABEL_49;
      }
    }

    hardwareAddressData = self->_hardwareAddressData;
    audioLinkQualityArray = [v5 hardwareAddressData];
    v8 = hardwareAddressData;
    v35 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v36 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v37 = OUTLINED_FUNCTION_13();

      if (!v37)
      {
        goto LABEL_49;
      }
    }

    hciTransportType = self->_hciTransportType;
    if (hciTransportType != [v5 hciTransportType])
    {
      goto LABEL_49;
    }

    inquiryState = self->_inquiryState;
    if (inquiryState != [v5 inquiryState])
    {
      goto LABEL_49;
    }

    leaVersion = self->_leaVersion;
    if (leaVersion != [v5 leaVersion])
    {
      goto LABEL_49;
    }

    lmpVersion = self->_lmpVersion;
    if (lmpVersion != [v5 lmpVersion])
    {
      goto LABEL_49;
    }

    productID = self->_productID;
    if (productID != [v5 productID])
    {
      goto LABEL_49;
    }

    supportedServices = self->_supportedServices;
    if (supportedServices != [v5 supportedServices])
    {
      goto LABEL_49;
    }

    vendorID = self->_vendorID;
    if (vendorID != [v5 vendorID])
    {
      goto LABEL_49;
    }

    vendorIDSource = self->_vendorIDSource;
    if (vendorIDSource != [v5 vendorIDSource])
    {
      goto LABEL_49;
    }

    lastChipsetInitError = self->_lastChipsetInitError;
    lastChipsetInitError = [v5 lastChipsetInitError];
    v8 = lastChipsetInitError;
    v49 = lastChipsetInitError;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
      v38 = 1;
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_9_0();
    if (v50 != (audioLinkQualityArray == 0))
    {
      v38 = OUTLINED_FUNCTION_13();
LABEL_51:

      goto LABEL_52;
    }

LABEL_50:
    v38 = 0;
    goto LABEL_51;
  }

  v38 = 0;
LABEL_53:

  return v38;
}

@end