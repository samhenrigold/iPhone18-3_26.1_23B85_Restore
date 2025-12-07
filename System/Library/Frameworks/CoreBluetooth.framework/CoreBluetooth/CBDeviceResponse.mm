@interface CBDeviceResponse
- (CBDeviceResponse)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDeviceResponse

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_btBand)
  {
    xpc_dictionary_set_uint64(objectCopy, "btBd", self->_btBand);
  }

  if (self->_connectionHandle)
  {
    xpc_dictionary_set_uint64(v5, "CnHd", self->_connectionHandle);
  }

  if (self->_core0TargetPower)
  {
    xpc_dictionary_set_int64(v5, "c0TP", self->_core0TargetPower);
  }

  if (self->_core1TargetPower)
  {
    xpc_dictionary_set_int64(v5, "c1TP", self->_core1TargetPower);
  }

  if (self->_currentPCAP)
  {
    xpc_dictionary_set_int64(v5, "pcap", self->_currentPCAP);
  }

  identifier = self->_identifier;
  xdict = v5;
  uTF8String = [(NSString *)identifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "id", uTF8String);
  }

  if (self->_rssi)
  {
    xpc_dictionary_set_int64(xdict, "rssi", self->_rssi);
  }

  sniffInterval = self->_sniffInterval;
  if (sniffInterval)
  {
    xpc_dictionary_set_uint64(xdict, "snfI", sniffInterval);
  }

  v9 = xdict;
  if (self->_txPower)
  {
    xpc_dictionary_set_int64(xdict, "txPw", self->_txPower);
    v9 = xdict;
  }

  if (self->_txPowerMax)
  {
    xpc_dictionary_set_int64(xdict, "txPM", self->_txPowerMax);
    v9 = xdict;
  }
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  if ((level & 0x8000000) != 0)
  {
    v9 = 0;
    if (level > 0x14u)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v87 = 0;
    v6 = [objc_opt_class() description];
    v7 = v6;
    v8 = "\n";
    if (levelCopy >= 0x15)
    {
      v8 = "";
    }

    NSAppendPrintF_safe(&v87, "%@:%s", v6, v8);
    v9 = v87;

    if (levelCopy > 0x14)
    {
LABEL_5:
      if ((level & 0x8000000) != 0)
      {
        v10 = "";
      }

      else
      {
        v10 = " ";
      }

      btBand = self->_btBand;
      if (!self->_btBand)
      {
        v24 = 0;
        connectionHandle = self->_connectionHandle;
        if (!self->_connectionHandle)
        {
          goto LABEL_89;
        }

        goto LABEL_85;
      }

      v76 = v9;
      if (btBand > 15)
      {
        if (btBand > 63)
        {
          if (btBand == 64)
          {
            v12 = "HRB UNII-5C";
            goto LABEL_84;
          }

          if (btBand == 128)
          {
            v12 = "HRB UNII-5D";
            goto LABEL_84;
          }
        }

        else
        {
          if (btBand == 16)
          {
            v12 = "HRB UNII-5A";
            goto LABEL_84;
          }

          if (btBand == 32)
          {
            v12 = "HRB UNII-5B";
            goto LABEL_84;
          }
        }
      }

      else if (btBand > 3)
      {
        if (btBand == 4)
        {
          v12 = "HRB UNII-3";
          goto LABEL_84;
        }

        if (btBand == 8)
        {
          v12 = "HRB UNII-4";
          goto LABEL_84;
        }
      }

      else
      {
        if (btBand == 1)
        {
          v12 = "ISM2.4";
          goto LABEL_84;
        }

        if (btBand == 2)
        {
          v12 = "HRB UNII-1";
          goto LABEL_84;
        }
      }

      v12 = "?";
LABEL_84:
      NSAppendPrintF_safe(&v76, "%sBT Band %s", v10, v12);
      v26 = v76;

      v24 = 1;
      v9 = v26;
      connectionHandle = self->_connectionHandle;
      if (!self->_connectionHandle)
      {
        goto LABEL_89;
      }

LABEL_85:
      v75 = v9;
      if (btBand)
      {
        v27 = ", ";
      }

      else
      {
        v27 = v10;
      }

      NSAppendPrintF_safe(&v75, "%sHandle 0x%04X", v27, connectionHandle);
      v28 = v75;

      ++v24;
      v9 = v28;
LABEL_89:
      core0TargetPower = self->_core0TargetPower;
      if (self->_core0TargetPower)
      {
        v74 = v9;
        if (v24)
        {
          v30 = ", ";
        }

        else
        {
          v30 = v10;
        }

        NSAppendPrintF_safe(&v74, "%sCore0 Target Power %d", v30, core0TargetPower);
        v31 = v74;

        if (!self->_core0TargetPower)
        {
          ++v24;
          currentPCAP = self->_currentPCAP;
          if (self->_currentPCAP)
          {
            goto LABEL_96;
          }

          goto LABEL_100;
        }

        v73 = v31;
        NSAppendPrintF_safe(&v73, "%sCore1 Target Power %d", ", ", self->_core1TargetPower);
        v9 = v73;

        v24 += 2;
      }

      v31 = v9;
      currentPCAP = self->_currentPCAP;
      if (self->_currentPCAP)
      {
LABEL_96:
        v72 = v31;
        if (v24)
        {
          v33 = ", ";
        }

        else
        {
          v33 = v10;
        }

        NSAppendPrintF_safe(&v72, "%sCurrent PCAP %d", v33, currentPCAP);
        v34 = v72;

        ++v24;
        v31 = v34;
      }

LABEL_100:
      identifier = self->_identifier;
      if (identifier)
      {
        v71 = v31;
        if (v24)
        {
          v36 = ", ";
        }

        else
        {
          v36 = v10;
        }

        NSAppendPrintF_safe(&v71, "%sIdentifier %@", v36, identifier);
        v37 = v71;

        ++v24;
        v31 = v37;
      }

      rssi = self->_rssi;
      if (self->_rssi)
      {
        v70 = v31;
        if (v24)
        {
          v39 = ", ";
        }

        else
        {
          v39 = v10;
        }

        NSAppendPrintF_safe(&v70, "%sRSSI %d", v39, rssi);
        v40 = v70;

        ++v24;
        v31 = v40;
      }

      sniffInterval = self->_sniffInterval;
      if (sniffInterval)
      {
        v69 = v31;
        if (v24)
        {
          v42 = ", ";
        }

        else
        {
          v42 = v10;
        }

        NSAppendPrintF_safe(&v69, "%sSniff %.2f ms", v42, sniffInterval / 1000.0);
        v43 = v69;

        ++v24;
        v31 = v43;
      }

      txPower = self->_txPower;
      if (self->_txPower)
      {
        v68 = v31;
        if (v24)
        {
          v45 = ", ";
        }

        else
        {
          v45 = v10;
        }

        NSAppendPrintF_safe(&v68, "%sTxPower %d", v45, txPower);
        v9 = v68;

        if (!self->_txPowerMax)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v9 = v31;
        if (!self->_txPowerMax)
        {
          goto LABEL_146;
        }
      }

      v46 = &v67;
      NSAppendPrintF_safe(&v67, "%sTxPowerMax %d");
LABEL_145:
      v63 = *v46;

      v9 = v63;
      goto LABEL_146;
    }
  }

  v13 = self->_btBand;
  v14 = 7;
  if (self->_btBand)
  {
    v14 = 8;
  }

  v15 = self->_connectionHandle;
  if (!self->_connectionHandle)
  {
    v14 = 8 * (self->_btBand != 0);
  }

  if (self->_core1TargetPower | self->_core0TargetPower)
  {
    v14 = 19;
  }

  v16 = 13;
  if (v14 > 0xD)
  {
    v16 = v14;
  }

  if (self->_currentPCAP)
  {
    v14 = v16;
  }

  v17 = 11;
  if (v14 <= 0xB)
  {
    v18 = 11;
  }

  else
  {
    v18 = v14;
  }

  if (self->_identifier)
  {
    v14 = v18;
  }

  v19 = 5;
  if (v14 > 5)
  {
    v19 = v14;
  }

  if (self->_rssi)
  {
    v14 = v19;
  }

  v20 = 6;
  if (v14 > 6)
  {
    v20 = v14;
  }

  if (self->_sniffInterval)
  {
    v14 = v20;
  }

  v21 = 8;
  if (v14 > 8)
  {
    v21 = v14;
  }

  if (self->_txPower)
  {
    v14 = v21;
  }

  if (v14 > 0xB)
  {
    v17 = v14;
  }

  if (self->_txPowerMax)
  {
    v22 = v17;
  }

  else
  {
    v22 = v14;
  }

  if (self->_btBand)
  {
    v86 = v9;
    if (v13 > 15)
    {
      if (v13 > 63)
      {
        if (v13 == 64)
        {
          v23 = "HRB UNII-5C";
          goto LABEL_126;
        }

        if (v13 == 128)
        {
          v23 = "HRB UNII-5D";
          goto LABEL_126;
        }
      }

      else
      {
        if (v13 == 16)
        {
          v23 = "HRB UNII-5A";
          goto LABEL_126;
        }

        if (v13 == 32)
        {
          v23 = "HRB UNII-5B";
          goto LABEL_126;
        }
      }
    }

    else if (v13 > 3)
    {
      if (v13 == 4)
      {
        v23 = "HRB UNII-3";
        goto LABEL_126;
      }

      if (v13 == 8)
      {
        v23 = "HRB UNII-4";
        goto LABEL_126;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v23 = "ISM2.4";
        goto LABEL_126;
      }

      if (v13 == 2)
      {
        v23 = "HRB UNII-1";
LABEL_126:
        NSAppendPrintF_safe(&v86, "%-*s %s\n", v22, "BT Band:", v23);
        v47 = v86;

        v15 = self->_connectionHandle;
        v9 = v47;
        goto LABEL_127;
      }
    }

    v23 = "?";
    goto LABEL_126;
  }

LABEL_127:
  if (v15)
  {
    v85 = v9;
    NSAppendPrintF_safe(&v85, "%-*s 0x%04X\n", v22, "Handle:", v15);
    v48 = v85;

    v9 = v48;
  }

  v49 = self->_core0TargetPower;
  if (self->_core0TargetPower)
  {
    v84 = v9;
    NSAppendPrintF_safe(&v84, "%-*s %d\n", v22, "Core0 Target Power:", v49);
    v50 = v84;

    v9 = v50;
  }

  core1TargetPower = self->_core1TargetPower;
  if (self->_core1TargetPower)
  {
    v83 = v9;
    NSAppendPrintF_safe(&v83, "%-*s %d\n", v22, "Core1 Target Power:", core1TargetPower);
    v52 = v83;

    v9 = v52;
  }

  v53 = self->_currentPCAP;
  if (self->_currentPCAP)
  {
    v82 = v9;
    NSAppendPrintF_safe(&v82, "%-*s %d\n", v22, "Current PCAP:", v53);
    v54 = v82;

    v9 = v54;
  }

  v55 = self->_identifier;
  if (v55)
  {
    v81 = v9;
    NSAppendPrintF_safe(&v81, "%-*s %@\n", v22, "Identifier:", v55);
    v56 = v81;

    v9 = v56;
  }

  v57 = self->_rssi;
  if (self->_rssi)
  {
    v80 = v9;
    NSAppendPrintF_safe(&v80, "%-*s %d\n", v22, "RSSI:", v57);
    v58 = v80;

    v9 = v58;
  }

  v59 = self->_sniffInterval;
  if (v59)
  {
    v79 = v9;
    NSAppendPrintF_safe(&v79, "%-*s %.2f ms\n", v22, "Sniff:", v59 / 1000.0);
    v60 = v79;

    v9 = v60;
  }

  v61 = self->_txPower;
  if (self->_txPower)
  {
    v78 = v9;
    NSAppendPrintF_safe(&v78, "%-*s %d\n", v22, "TxPower:", v61);
    v62 = v78;

    v9 = v62;
  }

  if (self->_txPowerMax)
  {
    v77 = v9;
    v46 = &v77;
    NSAppendPrintF_safe(&v77, "%-*s %d\n");
    goto LABEL_145;
  }

LABEL_146:
  if (v9)
  {
    v64 = v9;
  }

  else
  {
    v64 = @"?";
  }

  v65 = v64;

  return v64;
}

- (CBDeviceResponse)initWithXPCObject:(id)object error:(id *)error
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
      *v5 = CBErrorF(-6756, "%@ init failed", v60, v61, v62, v63, v64, v65, v67);
    }

    goto LABEL_37;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v66 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v67);
      OUTLINED_FUNCTION_16(v66);
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    OUTLINED_FUNCTION_5_4(v19, v20, v21, v22, v23, v24, v25, v26, v67, 0);
  }

  else if (v19 == 5)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0();
  v27 = CUXPCDecodeUInt64RangedEx();
  if (v27 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_37;
  }

  v29 = OUTLINED_FUNCTION_1_3(v27, "c0TP", v28);
  if (v29 == 6)
  {
    OUTLINED_FUNCTION_11(v29, v30, v31, v32, v33, v34, v35, v36, v67, 0);
  }

  else if (v29 == 5)
  {
    goto LABEL_37;
  }

  v37 = OUTLINED_FUNCTION_1_3(v29, "c1TP", v31);
  if (v37 == 6)
  {
    OUTLINED_FUNCTION_10_1(v37, v38, v39, v40, v41, v42, v43, v44, v67, 0);
  }

  else if (v37 == 5)
  {
    goto LABEL_37;
  }

  v45 = OUTLINED_FUNCTION_1_3(v37, "pcap", v39);
  if (v45 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v45 == 5)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_1_0();
  v46 = CUXPCDecodeNSString();
  if (!v46)
  {
    goto LABEL_37;
  }

  v48 = OUTLINED_FUNCTION_1_3(v46, "rssi", v47);
  if (v48 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v48 == 5)
  {
    goto LABEL_37;
  }

  v49 = OUTLINED_FUNCTION_0();
  v54 = OUTLINED_FUNCTION_5(v49, v50, v51, v52, v53);
  if (v54 == 6)
  {
    *(v7 + 20) = 0;
  }

  else if (v54 == 5)
  {
    goto LABEL_37;
  }

  v56 = OUTLINED_FUNCTION_1_3(v54, "txPw", v55);
  if (v56 == 6)
  {
    *(v7 + 13) = 0;
  }

  else if (v56 == 5)
  {
    goto LABEL_37;
  }

  v58 = OUTLINED_FUNCTION_1_3(v56, "txPM", v57);
  if (v58 != 6)
  {
    if (v58 != 5)
    {
      goto LABEL_31;
    }

LABEL_37:
    v6 = 0;
    goto LABEL_32;
  }

  *(v7 + 14) = 0;
LABEL_31:
  v6 = v7;
LABEL_32:

  return v6;
}

@end