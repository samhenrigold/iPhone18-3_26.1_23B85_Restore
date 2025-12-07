@interface CBControllerLowPowerModeParams
- (CBControllerLowPowerModeParams)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBControllerLowPowerModeParams

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  xdict = objectCopy;
  if (self->_actionType)
  {
    xpc_dictionary_set_uint64(objectCopy, "suA", self->_actionType);
  }

  dataBlob = self->_dataBlob;
  if (dataBlob)
  {
    v6 = dataBlob;
    v7 = xdict;
    v8 = dataBlob;
    bytes = [(NSData *)v8 bytes];
    if (bytes)
    {
      v10 = bytes;
    }

    else
    {
      v10 = "";
    }

    v11 = [(NSData *)v8 length];

    xpc_dictionary_set_data(v7, "blb", v10, v11);
  }

  dataMask = self->_dataMask;
  if (dataMask)
  {
    v13 = dataMask;
    v14 = xdict;
    v15 = dataMask;
    bytes2 = [(NSData *)v15 bytes];
    if (bytes2)
    {
      v17 = bytes2;
    }

    else
    {
      v17 = "";
    }

    v18 = [(NSData *)v15 length];

    xpc_dictionary_set_data(v14, "msk", v17, v18);
  }

  if (self->_configFlags)
  {
    xpc_dictionary_set_uint64(xdict, "ctcf", self->_configFlags);
  }

  if (self->_scanDelayStart)
  {
    xpc_dictionary_set_uint64(xdict, "ctds", self->_scanDelayStart);
  }

  if (self->_scanWindow)
  {
    xpc_dictionary_set_uint64(xdict, "ctsw", self->_scanWindow);
  }

  if (self->_scanInterval)
  {
    xpc_dictionary_set_uint64(xdict, "ctsi", self->_scanInterval);
  }

  if (self->_scanDuration)
  {
    xpc_dictionary_set_uint64(xdict, "ctsd", self->_scanDuration);
  }

  if (self->_nextScanDelay)
  {
    xpc_dictionary_set_uint64(xdict, "ctns", self->_nextScanDelay);
  }

  if (self->_numberOfDelayIterations)
  {
    xpc_dictionary_set_uint64(xdict, "ctND", self->_numberOfDelayIterations);
  }

  if (self->_packetLength)
  {
    xpc_dictionary_set_uint64(xdict, "ctpl", self->_packetLength);
  }

  if (self->_rssiThresholdValue)
  {
    xpc_dictionary_set_int64(xdict, "ctri", self->_rssiThresholdValue);
  }

  deviceIDSalt = self->_deviceIDSalt;
  if (deviceIDSalt)
  {
    v20 = deviceIDSalt;
    v21 = xdict;
    v22 = deviceIDSalt;
    bytes3 = [(NSData *)v22 bytes];
    if (bytes3)
    {
      v24 = bytes3;
    }

    else
    {
      v24 = "";
    }

    v25 = [(NSData *)v22 length];

    xpc_dictionary_set_data(v21, "dISt", v24, v25);
  }

  if (self->_deviceIDTimestampFrequency)
  {
    xpc_dictionary_set_uint64(xdict, "dITf", self->_deviceIDTimestampFrequency);
  }

  if (self->_deviceIDTimestampEffectiveBits)
  {
    xpc_dictionary_set_uint64(xdict, "dIEb", self->_deviceIDTimestampEffectiveBits);
  }

  if (self->_deviceIDTimestampLsbsTruncated)
  {
    xpc_dictionary_set_uint64(xdict, "dILT", self->_deviceIDTimestampLsbsTruncated);
  }

  maxClockDriftSeconds = self->_maxClockDriftSeconds;
  if (maxClockDriftSeconds)
  {
    xpc_dictionary_set_uint64(xdict, "mcds", maxClockDriftSeconds);
  }

  deviceIDInputKeyMaterial = self->_deviceIDInputKeyMaterial;
  if (deviceIDInputKeyMaterial)
  {
    v28 = deviceIDInputKeyMaterial;
    v29 = xdict;
    v30 = deviceIDInputKeyMaterial;
    bytes4 = [(NSData *)v30 bytes];
    if (bytes4)
    {
      v32 = bytes4;
    }

    else
    {
      v32 = "";
    }

    v33 = [(NSData *)v30 length];

    xpc_dictionary_set_data(v29, "dIIk", v32, v33);
  }

  deviceIDInfo = self->_deviceIDInfo;
  if (deviceIDInfo)
  {
    v35 = deviceIDInfo;
    v36 = xdict;
    v37 = deviceIDInfo;
    bytes5 = [(NSData *)v37 bytes];
    if (bytes5)
    {
      v39 = bytes5;
    }

    else
    {
      v39 = "";
    }

    v40 = [(NSData *)v37 length];

    xpc_dictionary_set_data(v36, "dIII", v39, v40);
  }

  if (self->_deviceIDLength)
  {
    xpc_dictionary_set_uint64(xdict, "dIdL", self->_deviceIDLength);
  }

  if (self->_deviceIDAdvScanCount)
  {
    xpc_dictionary_set_uint64(xdict, "dIAS", self->_deviceIDAdvScanCount);
  }

  if (self->_gpioAssertionTime)
  {
    xpc_dictionary_set_uint64(xdict, "ctga", self->_gpioAssertionTime);
  }

  if (self->_diagnosticTxAdvInterval)
  {
    xpc_dictionary_set_uint64(xdict, "dtAI", self->_diagnosticTxAdvInterval);
  }

  if (self->_diagnosticTxAdvDuration)
  {
    xpc_dictionary_set_uint64(xdict, "dtAD", self->_diagnosticTxAdvDuration);
  }

  if (self->_diagnosticTxAdvBackoff)
  {
    xpc_dictionary_set_uint64(xdict, "dtAB", self->_diagnosticTxAdvBackoff);
  }

  deviceIDDiagInfo = self->_deviceIDDiagInfo;
  if (deviceIDDiagInfo)
  {
    v42 = deviceIDDiagInfo;
    v43 = xdict;
    v44 = deviceIDDiagInfo;
    bytes6 = [(NSData *)v44 bytes];
    if (bytes6)
    {
      v46 = bytes6;
    }

    else
    {
      v46 = "";
    }

    v47 = [(NSData *)v44 length];

    xpc_dictionary_set_data(v43, "dIDI", v46, v47);
  }

  if (self->_deviceIDDiagLength)
  {
    xpc_dictionary_set_uint64(xdict, "dIDL", self->_deviceIDDiagLength);
  }

  macKeyDiagInfo = self->_macKeyDiagInfo;
  if (macKeyDiagInfo)
  {
    v49 = macKeyDiagInfo;
    v50 = xdict;
    v51 = macKeyDiagInfo;
    bytes7 = [(NSData *)v51 bytes];
    if (bytes7)
    {
      v53 = bytes7;
    }

    else
    {
      v53 = "";
    }

    v54 = [(NSData *)v51 length];

    xpc_dictionary_set_data(v50, "mkDI", v53, v54);
  }

  v55 = xdict;
  if (self->_macKeyDiagLength)
  {
    xpc_dictionary_set_uint64(xdict, "mkDL", self->_macKeyDiagLength);
    v55 = xdict;
  }
}

- (id)description
{
  actionType = self->_actionType;
  if (actionType > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E811E540[actionType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"ActionType: %s, Blob: %@, Mask: %@, Config: 0x%x, DelayStart: %d, ScanW: 0x%x, ScanI: 0x%x, ScanD: %d, NextScan: %d, ClockDrift: %u, RSSI: %d, GPIOAssertTime: %d, dIDSalt: %@, dIDTsFrq: %d, dIDEffectiveBits: %d, dIDTsLsbsTruncated: %d, dIDIKM: %@, dIDInfo: %@, dIDLen: %d, dIDAdvScanCnt: %d, diagTxAdvInt: %d, diagTxAdvDur: %d, diagTxAdvBackoff: %d, dIDDiagInfo: %@, dIDDiagLen: %d, macKeyDiagInfo: %@, macKeyDiagLen: %d", v3, self->_dataBlob, self->_dataMask, self->_configFlags, self->_scanDelayStart, self->_scanWindow, self->_scanInterval, self->_scanDuration, self->_nextScanDelay, self->_maxClockDriftSeconds, self->_rssiThresholdValue, self->_gpioAssertionTime, self->_deviceIDSalt, self->_deviceIDTimestampFrequency, self->_deviceIDTimestampEffectiveBits, self->_deviceIDTimestampLsbsTruncated, self->_deviceIDInputKeyMaterial, self->_deviceIDInfo, self->_deviceIDLength, self->_deviceIDAdvScanCount, self->_diagnosticTxAdvInterval, self->_diagnosticTxAdvDuration, self->_diagnosticTxAdvBackoff, self->_deviceIDDiagInfo, self->_deviceIDDiagLength, self->_macKeyDiagInfo, self->_macKeyDiagLength];
}

- (CBControllerLowPowerModeParams)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      v143 = [objc_opt_class() description];
      *v5 = CBErrorF(-6756, "%@ init failed", v144, v145, v146, v147, v148, v149, v143);
    }

    goto LABEL_82;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v150 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v151);
      OUTLINED_FUNCTION_16(v150);
      goto LABEL_77;
    }

    goto LABEL_82;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    *(v7 + 8) = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  v20 = OUTLINED_FUNCTION_0();
  v25 = OUTLINED_FUNCTION_4_0(v20, v21, v22, v23, v24);
  if (v25 == 6)
  {
    *(v7 + 20) = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_82;
  }

  v26 = OUTLINED_FUNCTION_0();
  v31 = OUTLINED_FUNCTION_4_0(v26, v27, v28, v29, v30);
  if (v31 == 6)
  {
    *(v7 + 22) = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_82;
  }

  v32 = OUTLINED_FUNCTION_0();
  v37 = OUTLINED_FUNCTION_4_0(v32, v33, v34, v35, v36);
  if (v37 == 6)
  {
    *(v7 + 24) = 0;
  }

  else if (v37 == 5)
  {
    goto LABEL_82;
  }

  v38 = OUTLINED_FUNCTION_0();
  v43 = OUTLINED_FUNCTION_4_0(v38, v39, v40, v41, v42);
  if (v43 == 6)
  {
    *(v7 + 26) = 0;
  }

  else if (v43 == 5)
  {
    goto LABEL_82;
  }

  v44 = OUTLINED_FUNCTION_0();
  v49 = OUTLINED_FUNCTION_4_0(v44, v45, v46, v47, v48);
  if (v49 == 6)
  {
    *(v7 + 28) = 0;
  }

  else if (v49 == 5)
  {
    goto LABEL_82;
  }

  v50 = OUTLINED_FUNCTION_0();
  v55 = OUTLINED_FUNCTION_4_0(v50, v51, v52, v53, v54);
  if (v55 == 6)
  {
    *(v7 + 30) = 0;
  }

  else if (v55 == 5)
  {
    goto LABEL_82;
  }

  v56 = OUTLINED_FUNCTION_0();
  v61 = OUTLINED_FUNCTION_4_0(v56, v57, v58, v59, v60);
  if (v61 == 6)
  {
    *(v7 + 32) = 0;
  }

  else if (v61 == 5)
  {
    goto LABEL_82;
  }

  v62 = OUTLINED_FUNCTION_0();
  v67 = OUTLINED_FUNCTION_3_1(v62, v63, v64, v65, v66);
  if (v67 == 6)
  {
    *(v7 + 10) = 0;
  }

  else if (v67 == 5)
  {
    goto LABEL_82;
  }

  v69 = OUTLINED_FUNCTION_1_3(v67, "ctri", v68);
  if (v69 == 6)
  {
    *(v7 + 9) = 0;
  }

  else if (v69 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  v70 = OUTLINED_FUNCTION_0();
  v75 = OUTLINED_FUNCTION_3_1(v70, v71, v72, v73, v74);
  if (v75 == 6)
  {
    *(v7 + 14) = 0;
  }

  else if (v75 == 5)
  {
    goto LABEL_82;
  }

  v76 = OUTLINED_FUNCTION_0();
  v81 = OUTLINED_FUNCTION_3_1(v76, v77, v78, v79, v80);
  if (v81 == 6)
  {
    *(v7 + 13) = 0;
  }

  else if (v81 == 5)
  {
    goto LABEL_82;
  }

  v82 = OUTLINED_FUNCTION_0();
  v87 = OUTLINED_FUNCTION_3_1(v82, v83, v84, v85, v86);
  if (v87 == 6)
  {
    *(v7 + 15) = 0;
  }

  else if (v87 == 5)
  {
    goto LABEL_82;
  }

  v88 = OUTLINED_FUNCTION_0();
  v93 = OUTLINED_FUNCTION_5(v88, v89, v90, v91, v92);
  if (v93 == 6)
  {
    *(v7 + 40) = 0;
  }

  else if (v93 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  v94 = OUTLINED_FUNCTION_0();
  v99 = OUTLINED_FUNCTION_3_1(v94, v95, v96, v97, v98);
  if (v99 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v99 == 5)
  {
    goto LABEL_82;
  }

  v100 = OUTLINED_FUNCTION_0();
  v105 = OUTLINED_FUNCTION_3_1(v100, v101, v102, v103, v104);
  if (v105 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v105 == 5)
  {
    goto LABEL_82;
  }

  v106 = OUTLINED_FUNCTION_0();
  v111 = OUTLINED_FUNCTION_4_0(v106, v107, v108, v109, v110);
  if (v111 == 6)
  {
    *(v7 + 34) = 0;
  }

  else if (v111 == 5)
  {
    goto LABEL_82;
  }

  v112 = OUTLINED_FUNCTION_0();
  v117 = OUTLINED_FUNCTION_4_0(v112, v113, v114, v115, v116);
  if (v117 == 6)
  {
    *(v7 + 36) = 0;
  }

  else if (v117 == 5)
  {
    goto LABEL_82;
  }

  v118 = OUTLINED_FUNCTION_0();
  v123 = OUTLINED_FUNCTION_3_1(v118, v119, v120, v121, v122);
  if (v123 == 6)
  {
    *(v7 + 18) = 0;
  }

  else if (v123 == 5)
  {
    goto LABEL_82;
  }

  v124 = OUTLINED_FUNCTION_0();
  v129 = OUTLINED_FUNCTION_3_1(v124, v125, v126, v127, v128);
  if (v129 == 6)
  {
    *(v7 + 17) = 0;
  }

  else if (v129 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  v130 = OUTLINED_FUNCTION_0();
  v135 = OUTLINED_FUNCTION_3_1(v130, v131, v132, v133, v134);
  if (v135 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v135 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  v136 = OUTLINED_FUNCTION_0();
  v141 = OUTLINED_FUNCTION_3_1(v136, v137, v138, v139, v140);
  if (v141 != 6)
  {
    if (v141 != 5)
    {
      goto LABEL_76;
    }

LABEL_82:
    v6 = 0;
    goto LABEL_77;
  }

  *(v7 + 19) = 0;
LABEL_76:
  v6 = v7;
LABEL_77:

  return v6;
}

@end