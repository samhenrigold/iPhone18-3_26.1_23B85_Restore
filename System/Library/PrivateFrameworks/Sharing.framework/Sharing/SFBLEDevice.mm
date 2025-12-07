@interface SFBLEDevice
+ (void)setRSSIEstimatorInfo:(id)info;
- (BOOL)updateRSSI:(int64_t)i;
- (SFBLEDevice)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFBLEDevice

- (id)description
{
  v122 = *MEMORY[0x1E69E9840];
  v3 = SFShouldLogSensitiveDescriptions(self, a2);
  v119 = 0;
  v118 = 0;
  NSAppendPrintF(&v118, "SFBLEDevice");
  v4 = v118;
  v5 = v4;
  identifier = self->_identifier;
  if (identifier)
  {
    v117 = v4;
    if (v3)
    {
      NSAppendPrintF(&v117, " ID %@", identifier);
    }

    else
    {
      NSAppendPrintF(&v117, " ID %~@", identifier);
    }

    v7 = v117;

    v5 = v7;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v116 = v5;
    NSAppendPrintF(&v116, ", BDA %.6a", COERCE_DOUBLE([(NSData *)bluetoothAddress bytes]));
    v9 = v116;

    v5 = v9;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v115 = v5;
  if (self->_triggered)
  {
    v11 = 84;
  }

  else
  {
    v11 = 116;
  }

  if (self->_insideBubble)
  {
    v12 = 42;
  }

  else
  {
    v12 = 126;
  }

  distance = self->_distance;
  if (distance <= 29)
  {
    if (!distance)
    {
      v14 = "U";
      goto LABEL_31;
    }

    if (distance != 10)
    {
      if (distance == 20)
      {
        v14 = "N";
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v14 = "I";
  }

  else if (distance > 49)
  {
    if (distance != 50)
    {
      if (distance == 60)
      {
        v14 = "F";
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v14 = "H";
  }

  else
  {
    if (distance != 30)
    {
      if (distance == 40)
      {
        v14 = "R";
        goto LABEL_31;
      }

LABEL_27:
      v14 = "?";
      goto LABEL_31;
    }

    v14 = "P";
  }

LABEL_31:
  NSAppendPrintF(&v115, ", RSSI %d (%d)%c%c%s, Ch %d", LODWORD(self->_rssi), self->_rssiEstimate, v11, v12, v14, Int64Ranged);
  v15 = v115;

  if (self->_insideSmallBubble)
  {
    v114 = v15;
    NSAppendPrintF(&v114, ", insideSmall");
    v16 = v114;

    v15 = v16;
  }

  if (self->_insideMediumBubble)
  {
    v113 = v15;
    NSAppendPrintF(&v113, ", insideMed");
    v17 = v113;

    v15 = v17;
  }

  advertisementData = self->_advertisementData;
  if (advertisementData)
  {
    v112 = v15;
    NSAppendPrintF(&v112, ", AdvD <%@>", advertisementData);
    v19 = v112;

    v15 = v19;
  }

  v20 = CFDictionaryGetInt64Ranged();
  if (!v119)
  {
    v111 = v15;
    if (v20 > 9u)
    {
      v21 = "?";
    }

    else
    {
      v21 = off_1E788DD70[v20 & 0xF];
    }

    NSAppendPrintF(&v111, ", ST %s", v21);
    v22 = v111;

    v15 = v22;
  }

  v110 = v15;
  if (v3)
  {
    v23 = ", Nm '%@'";
  }

  else
  {
    v23 = ", Nm '%~@'";
  }

  name = self->_name;
  if (!name)
  {
    name = @"?";
  }

  NSAppendPrintF(&v110, v23, name);
  v25 = v110;

  v26 = CFDictionaryGetInt64Ranged();
  v27 = v26;
  if (v26)
  {
    v109 = v25;
    if (v26 > 0x66u)
    {
      v28 = "?";
    }

    else
    {
      v28 = *(off_1E788DDC0 + (((v26 << 56) - 0x100000000000000) >> 53));
    }

    NSAppendPrintF(&v109, ", %s", v28);
    v29 = v109;

    v25 = v29;
  }

  v30 = [(NSDictionary *)self->_advertisementFields objectForKeyedSubscript:@"model"];
  v31 = v30;
  if (v30)
  {
    v108 = v25;
    if (v3)
    {
      NSAppendPrintF(&v108, ", Md '%@'", v30);
    }

    else
    {
      NSAppendPrintF(&v108, ", Md '%~@'", v30);
    }

    v32 = v108;

    v25 = v32;
  }

  v107 = v25;
  if (CFDictionaryGetInt64())
  {
    v33 = "yes";
  }

  else
  {
    v33 = "no";
  }

  NSAppendPrintF(&v107, ", Paired %s", v33);
  v34 = v107;

  v106 = v34;
  if (CFDictionaryGetInt64())
  {
    v35 = "yes";
  }

  else
  {
    v35 = "no";
  }

  NSAppendPrintF(&v106, ", Cnx %s", v35);
  v36 = v106;

  if (CFDictionaryGetInt64())
  {
    v105 = v36;
    NSAppendPrintF(&v105, ", WiFiP2P");
    v37 = v105;

    v36 = v37;
  }

  v38 = CFDictionaryGetInt64Ranged();
  if (!v119)
  {
    v39 = v38;
    if (v38)
    {
      v40 = 85;
    }

    else
    {
      v40 = 117;
    }

    v121[0] = v40;
    if ((v38 & 8) != 0)
    {
      v41 = 65;
    }

    else if ((v38 & 2) != 0)
    {
      v41 = 67;
    }

    else if ((v38 & 0x800) != 0)
    {
      v41 = 84;
    }

    else if ((v38 & 4) != 0)
    {
      v41 = 69;
    }

    else
    {
      v41 = 63;
    }

    v121[1] = v41;
    if ((v38 & 0x40) != 0)
    {
      v42 = 65;
    }

    else if ((v38 & 0x10) != 0)
    {
      v42 = 67;
    }

    else if ((v38 & 0x20) != 0)
    {
      v42 = 69;
    }

    else
    {
      v42 = 63;
    }

    v121[2] = v42;
    if ((v38 & 0x80) != 0)
    {
      v43 = 76;
    }

    else
    {
      v43 = 114;
    }

    v121[3] = v43;
    if ((v38 & 0x100) != 0)
    {
      v44 = 80;
    }

    else
    {
      v44 = 115;
    }

    v121[4] = v44;
    if ((v38 & 0x200) != 0)
    {
      v45 = 66;
    }

    else
    {
      v45 = 98;
    }

    v121[5] = v45;
    if (CFDictionaryGetInt64Ranged())
    {
      v46 = 67;
    }

    else
    {
      v46 = 111;
    }

    v121[6] = v46;
    v47 = CFDictionaryGetInt64Ranged() + 48;
    if (v119)
    {
      v48 = 63;
    }

    else
    {
      v48 = v47;
    }

    v121[7] = v48;
    v49 = CFDictionaryGetInt64Ranged() + 48;
    if (v119)
    {
      v50 = 63;
    }

    else
    {
      v50 = v49;
    }

    v121[8] = v50;
    if ((v39 & 0x400) != 0)
    {
      v51 = 83;
    }

    else
    {
      v51 = 115;
    }

    v121[9] = v51;
    v121[10] = 0;
    v104 = v36;
    NSAppendPrintF(&v104, ", ST=%s", v121);
    v52 = v104;

    CFDictionaryGetInt64Ranged();
    if (v119)
    {
      v102 = v52;
      v53 = &v102;
      NSAppendPrintF(&v102, ", CC=?");
    }

    else
    {
      v103 = v52;
      v53 = &v103;
      NSAppendPrintF(&v103, ", CC=%u");
    }

    v36 = *v53;

    v54 = CFDictionaryGetInt64Ranged();
    if (!v119)
    {
      v101 = v36;
      NSAppendPrintF(&v101, ", CCR=%u", v54);
      v55 = v101;

      v36 = v55;
    }

    v56 = CFDictionaryGetInt64Ranged();
    if (!v119)
    {
      v100 = v36;
      NSAppendPrintF(&v100, ", CCC=%u", v56);
      v57 = v100;

      v36 = v57;
    }
  }

  v58 = CFDictionaryGetInt64Ranged();
  if (v58)
  {
    v99 = v36;
    NSAppendPrintF(&v99, ", matID %d", v58);
    v59 = v99;

    v36 = v59;
  }

  CFDictionaryGetInt64Ranged();
  if (v119)
  {
    v97 = v36;
    v60 = &v97;
    NSAppendPrintF(&v97, ", OBC=?");
  }

  else
  {
    v98 = v36;
    v60 = &v98;
    NSAppendPrintF(&v98, ", OBC=%s");
  }

  v61 = *v60;

  if (CFDictionaryGetInt64())
  {
    v96 = v61;
    NSAppendPrintF(&v96, ", NeedsAWDL");
    v62 = v96;

    v61 = v62;
  }

  if (CFDictionaryGetInt64())
  {
    v95 = v61;
    NSAppendPrintF(&v95, ", NeedsKeyboard");
    v63 = v95;

    v61 = v63;
  }

  if (CFDictionaryGetInt64())
  {
    v94 = v61;
    NSAppendPrintF(&v94, ", NeedsSetup");
    v64 = v94;

    v61 = v64;
  }

  if (v27 == 10)
  {
    Int64 = CFDictionaryGetInt64();
    v93 = v61;
    NSAppendPrintF(&v93, ", Problems %#ll{flags}", Int64, &unk_1A998F0B8);
    v66 = v93;

    v61 = v66;
  }

  v67 = [(NSDictionary *)self->_advertisementFields objectForKeyedSubscript:@"batteryInfo"];
  if ([v67 count])
  {
    v85 = v31;
    v92 = v61;
    NSAppendPrintF(&v92, ", Batt ");
    v68 = v92;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v84 = v67;
    obj = v67;
    v69 = [obj countByEnumeratingWithState:&v88 objects:v120 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = 1;
      v72 = *v89;
      do
      {
        v73 = 0;
        v74 = v68;
        do
        {
          if (*v89 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v88 + 1) + 8 * v73);
          batteryType = [v75 batteryType];
          v87 = v74;
          if (v71 <= 1)
          {
            v77 = "";
          }

          else
          {
            v77 = "; ";
          }

          if ((batteryType - 1) >= 3)
          {
            if (batteryType == 4)
            {
              v78 = 77;
            }

            else
            {
              v78 = 63;
            }
          }

          else
          {
            v78 = dword_1A998F1D0[batteryType - 1];
          }

          batteryState = [v75 batteryState];
          [v75 batteryLevel];
          v81 = 45;
          if (batteryState == 2)
          {
            v81 = 43;
          }

          NSAppendPrintF(&v87, "%s%c %c%.0f%%", v77, v78, v81, v80 * 100.0);
          v68 = v87;

          ++v71;
          ++v73;
          v74 = v68;
        }

        while (v70 != v73);
        v70 = [obj countByEnumeratingWithState:&v88 objects:v120 count:16];
      }

      while (v70);
    }

    v61 = v68;
    v67 = v84;
    v31 = v85;
  }

  v82 = v61;

  return v82;
}

+ (void)setRSSIEstimatorInfo:(id)info
{
  infoCopy = info;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v4 = CFDictionaryGetInt64Ranged();
  v5 = CFDictionaryGetInt64Ranged();
  v6 = CFDictionaryGetInt64Ranged();
  if ((Int64Ranged - 8) <= 0xFFFFFFFFFFFFFFF8)
  {
    [SFBLEDevice setRSSIEstimatorInfo:?];
    goto LABEL_19;
  }

  if (v5 > v4 || (v7 = v6, v5 + v4 >= v6))
  {
    [(SFBLEDevice *)v5 setRSSIEstimatorInfo:v4];
    goto LABEL_19;
  }

  if (v6 >= 9uLL)
  {
    [SFBLEDevice setRSSIEstimatorInfo:v6];
    goto LABEL_19;
  }

  v8 = Int64Ranged != gSFBLERSSIAlgorithm;
  if (Int64Ranged != gSFBLERSSIAlgorithm)
  {
    gSFBLERSSIAlgorithm = Int64Ranged;
  }

  if (v4 != gSFBLERSSIRemoveHigh)
  {
    gSFBLERSSIRemoveHigh = v4;
    v8 = 1;
  }

  if (v5 == gSFBLERSSIRemoveLow)
  {
    if (v6 == gSFBLERSSISampleCount)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  gSFBLERSSIRemoveLow = v5;
  if (v6 != gSFBLERSSISampleCount)
  {
LABEL_14:
    gSFBLERSSISampleCount = v6;
  }

LABEL_15:
  if (gLogCategory_SFBLERSSI <= 30 && (gLogCategory_SFBLERSSI != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 30, "BLE RSSI Estimator changed: %s, removeLow/High %zu/%zu, sampleCount %zu\n", off_1E788DD38[Int64Ranged - 1], v5, v4, v7);
  }

LABEL_19:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  advertisementData = self->_advertisementData;
  if (advertisementData)
  {
    [coderCopy encodeObject:advertisementData forKey:@"aData"];
  }

  advertisementFields = self->_advertisementFields;
  if (advertisementFields)
  {
    [coderCopy encodeObject:advertisementFields forKey:@"aFields"];
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [coderCopy encodeObject:bluetoothAddress forKey:@"bdAddr"];
  }

  counterpartIdentifier = self->_counterpartIdentifier;
  if (counterpartIdentifier)
  {
    [coderCopy encodeObject:counterpartIdentifier forKey:@"cpid"];
  }

  if (self->_decryptedActivityLevel)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  distance = self->_distance;
  if (distance)
  {
    [coderCopy encodeInteger:distance forKey:@"dist"];
  }

  foundTicks = self->_foundTicks;
  if (foundTicks)
  {
    [coderCopy encodeInt64:foundTicks forKey:@"fticks"];
  }

  proxPairingTicks = self->_proxPairingTicks;
  if (proxPairingTicks)
  {
    [coderCopy encodeInt64:proxPairingTicks forKey:@"pticks"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"ident"];
  }

  if (self->_useBTPipe)
  {
    [coderCopy encodeBool:1 forKey:@"btpipe"];
  }

  if (self->_insideBubble)
  {
    [coderCopy encodeBool:1 forKey:@"inBub"];
  }

  if (self->_insideSmallBubble)
  {
    [coderCopy encodeBool:1 forKey:@"inSBub"];
  }

  if (self->_insideMediumBubble)
  {
    [coderCopy encodeBool:1 forKey:@"inMBub"];
  }

  if (self->_lastSeen != 0.0)
  {
    [coderCopy encodeDouble:@"last" forKey:?];
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
  }

  if (self->_paired)
  {
    [coderCopy encodeBool:1 forKey:@"paired"];
  }

  rssi = self->_rssi;
  if (rssi)
  {
    [coderCopy encodeInteger:rssi forKey:@"rssi"];
  }

  rssiCeiling = self->_rssiCeiling;
  if (rssiCeiling)
  {
    [coderCopy encodeInteger:rssiCeiling forKey:@"cRSSI"];
  }

  rssiEstimate = self->_rssiEstimate;
  if (rssiEstimate)
  {
    [coderCopy encodeInteger:rssiEstimate forKey:@"rssiE"];
  }

  rssiFloor = self->_rssiFloor;
  if (rssiFloor)
  {
    [coderCopy encodeInteger:rssiFloor forKey:@"fRSSI"];
  }

  if (self->_rssiHistory[0])
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_rssiHistory length:8];
    [coderCopy encodeObject:v17 forKey:@"hRSSI"];
  }

  smoothedRSSI = self->_smoothedRSSI;
  if (smoothedRSSI)
  {
    [coderCopy encodeInteger:smoothedRSSI forKey:@"sRSSI"];
  }

  v19 = coderCopy;
  if (self->_triggered)
  {
    [coderCopy encodeBool:1 forKey:@"trig"];
    v19 = coderCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    advertisementData = self->_advertisementData;
    if (advertisementData)
    {
      objc_storeStrong((v4 + 40), advertisementData);
    }

    advertisementFields = self->_advertisementFields;
    if (advertisementFields)
    {
      objc_storeStrong((v5 + 48), advertisementFields);
    }

    bluetoothAddress = self->_bluetoothAddress;
    if (bluetoothAddress)
    {
      objc_storeStrong((v5 + 56), bluetoothAddress);
    }

    counterpartIdentifier = self->_counterpartIdentifier;
    if (counterpartIdentifier)
    {
      objc_storeStrong((v5 + 64), counterpartIdentifier);
    }

    distance = self->_distance;
    if (distance)
    {
      *(v5 + 72) = distance;
    }

    foundTicks = self->_foundTicks;
    if (foundTicks)
    {
      *(v5 + 80) = foundTicks;
    }

    proxPairingTicks = self->_proxPairingTicks;
    if (proxPairingTicks)
    {
      *(v5 + 152) = proxPairingTicks;
    }

    identifier = self->_identifier;
    if (identifier)
    {
      objc_storeStrong((v5 + 88), identifier);
    }

    *(v5 + 20) = self->_insideBubble;
    *(v5 + 21) = self->_insideSmallBubble;
    *(v5 + 22) = self->_insideMediumBubble;
    lastSeen = self->_lastSeen;
    if (lastSeen != 0.0)
    {
      *(v5 + 168) = lastSeen;
    }

    name = self->_name;
    if (name)
    {
      objc_storeStrong((v5 + 96), name);
    }

    if (self->_paired)
    {
      *(v5 + 23) = 1;
    }

    *(v5 + 104) = self->_rssi;
    *(v5 + 28) = self->_rssiEstimate;
    rssiCeiling = self->_rssiCeiling;
    if (rssiCeiling)
    {
      *(v5 + 112) = rssiCeiling;
    }

    rssiFloor = self->_rssiFloor;
    if (rssiFloor)
    {
      *(v5 + 120) = rssiFloor;
    }

    *(v5 + 8) = *self->_rssiHistory;
    smoothedRSSI = self->_smoothedRSSI;
    if (smoothedRSSI)
    {
      *(v5 + 128) = smoothedRSSI;
    }

    *(v5 + 25) = self->_triggered;
    v19 = v5;
  }

  return v5;
}

- (BOOL)updateRSSI:(int64_t)i
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (!i)
  {
    return 0;
  }

  self->_rssi = i;
  iCopy = 127;
  if (i < 127)
  {
    iCopy = i;
  }

  if (iCopy <= -128)
  {
    LOBYTE(iCopy) = 0x80;
  }

  rssiIndex = self->_rssiIndex;
  v6 = gSFBLERSSISampleCount;
  if (gSFBLERSSISampleCount <= rssiIndex)
  {
    LODWORD(rssiIndex) = 0;
  }

  rssiHistory = self->_rssiHistory;
  self->_rssiIndex = rssiIndex + 1;
  self->_rssiHistory[rssiIndex] = iCopy;
  rssiCount = self->_rssiCount;
  if (v6 > rssiCount)
  {
    LOBYTE(rssiCount) = rssiCount + 1;
    self->_rssiCount = rssiCount;
    rssiCount = rssiCount;
  }

  if (v6 > rssiCount)
  {
    return 0;
  }

  if (gSFBLERSSIAlgorithm <= 2)
  {
    if (gSFBLERSSIAlgorithm == 1)
    {
      if (v6)
      {
        LOBYTE(iCopy) = *rssiHistory;
        v25 = v6 - 1;
        if (v6 != 1)
        {
          v26 = &self->_rssiHistory[1];
          do
          {
            v28 = *v26++;
            v27 = v28;
            if (v28 < iCopy)
            {
              LOBYTE(iCopy) = v27;
            }

            --v25;
          }

          while (v25);
        }

        goto LABEL_97;
      }
    }

    else
    {
      if (gSFBLERSSIAlgorithm != 2)
      {
        goto LABEL_97;
      }

      if (v6)
      {
        LOBYTE(iCopy) = *rssiHistory;
        v14 = v6 - 1;
        if (v6 != 1)
        {
          v15 = &self->_rssiHistory[1];
          do
          {
            v17 = *v15++;
            v16 = v17;
            if (v17 > iCopy)
            {
              LOBYTE(iCopy) = v16;
            }

            --v14;
          }

          while (v14);
        }

        goto LABEL_97;
      }
    }

LABEL_92:
    LOBYTE(iCopy) = 0;
    goto LABEL_97;
  }

  switch(gSFBLERSSIAlgorithm)
  {
    case 3:
      if (v6)
      {
        v13 = 0;
        v18 = v6;
        do
        {
          v19 = *rssiHistory++;
          v13 += v19;
          --v18;
        }

        while (v18);
        goto LABEL_96;
      }

      goto LABEL_92;
    case 4:
      LODWORD(iCopy) = *rssiHistory;
      if (v6 < 2)
      {
        v22 = *rssiHistory;
      }

      else
      {
        v20 = v6 - 1;
        v21 = &self->_rssiHistory[1];
        LOBYTE(v22) = *rssiHistory;
        do
        {
          v24 = *v21++;
          v23 = v24;
          if (v24 >= v22)
          {
            v22 = v22;
          }

          else
          {
            v22 = v23;
          }

          if (v23 <= iCopy)
          {
            LODWORD(iCopy) = iCopy;
          }

          else
          {
            LODWORD(iCopy) = v23;
          }

          --v20;
        }

        while (v20);
      }

      v29 = (v6 + 1) >> 1;
      while (1)
      {
        v30 = (iCopy + v22 + (((iCopy + v22) & 0x8000u) >> 15)) >> 1;
        if (v6 < 1)
        {
          v33 = 0;
          v32 = 0;
          v31 = 0;
          v37 = v22;
          v36 = iCopy;
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = rssiHistory;
          v35 = v6;
          v36 = iCopy;
          v37 = v22;
          do
          {
            v39 = *v34++;
            v38 = v39;
            v40 = v36;
            if (v39 < v36)
            {
              v40 = v38;
            }

            if (v30 >= v38)
            {
              v41 = v32;
            }

            else
            {
              v41 = v32 + 1;
            }

            if (v30 < v38)
            {
              v42 = v31;
            }

            else
            {
              v42 = v31 + 1;
            }

            if (v30 >= v38)
            {
              v40 = v36;
            }

            v43 = v37;
            if (v38 > v37)
            {
              v43 = v38;
            }

            if (v30 <= v38)
            {
              v32 = v41;
            }

            else
            {
              ++v33;
            }

            if (v30 > v38)
            {
              v37 = v43;
            }

            else
            {
              v31 = v42;
            }

            if (v30 <= v38)
            {
              v36 = v40;
            }

            --v35;
          }

          while (v35);
        }

        if (v33 <= v29 && v32 <= v29)
        {
          break;
        }

        if (v33 > v32)
        {
          LODWORD(iCopy) = v37;
        }

        else
        {
          v22 = v36;
        }
      }

      if (v31 + v33 >= v29)
      {
        LOBYTE(iCopy) = (iCopy + v22 + (((iCopy + v22) & 0x8000u) >> 15)) >> 1;
      }

      else
      {
        LOBYTE(iCopy) = v36;
      }

      if (v33 >= v29)
      {
        LOBYTE(iCopy) = v37;
      }

      break;
    case 5:
      v48[0] = 0;
      v10 = gSFBLERSSIRemoveHigh;
      v11 = v6 - (gSFBLERSSIRemoveLow + gSFBLERSSIRemoveHigh);
      if (v6 > gSFBLERSSIRemoveLow + gSFBLERSSIRemoveHigh)
      {
        if (v11 > 1)
        {
          __memcpy_chk();
          qsort(v48, v6, 1uLL, _QSortCmpInt8);
          v13 = 0;
          v45 = v48 + v10;
          v46 = v11;
          do
          {
            v47 = *v45++;
            v13 += v47;
            --v46;
          }

          while (v46);
          LODWORD(v6) = v11;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v13 += rssiHistory[v12++];
          }

          while (v6 != v12);
        }

LABEL_96:
        LODWORD(iCopy) = v13 / v6;
        break;
      }

      if (v6)
      {
        v44 = 0;
        v13 = 0;
        do
        {
          v13 += rssiHistory[v44++];
        }

        while (v6 != v44);
        goto LABEL_96;
      }

      goto LABEL_92;
  }

LABEL_97:
  result = self->_smoothedRSSI != iCopy;
  self->_rssiCeiling = iCopy;
  self->_rssiFloor = iCopy;
  self->_smoothedRSSI = iCopy;
  return result;
}

- (SFBLEDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = SFBLEDevice;
  v5 = [(SFBLEDevice *)&v48 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"aData"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aData"];
      advertisementData = v5->_advertisementData;
      v5->_advertisementData = v6;
    }

    if ([coderCopy containsValueForKey:@"aFields"])
    {
      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
      v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"aFields"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = MEMORY[0x1E695DF30];
        v18 = *MEMORY[0x1E695D940];
        v19 = _NSMethodExceptionProem();
        [v17 raise:v18 format:{@"%@: bad type for key %@ : %@", v19, @"aFields", v16}];
      }

      advertisementFields = v5->_advertisementFields;
      v5->_advertisementFields = v16;
    }

    if ([coderCopy containsValueForKey:@"bdAddr"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bdAddr"];
      bluetoothAddress = v5->_bluetoothAddress;
      v5->_bluetoothAddress = v21;

      if ([(NSData *)v5->_bluetoothAddress length]!= 6)
      {
        v23 = MEMORY[0x1E695DF30];
        v24 = *MEMORY[0x1E695D940];
        v25 = _NSMethodExceptionProem();
        [v23 raise:v24 format:{@"%@: Bad BluetoothAddress length: %ld (not 6)", v25, -[NSData length](v5->_bluetoothAddress, "length")}];
      }
    }

    if ([coderCopy containsValueForKey:@"cpid"])
    {
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpid"];
      counterpartIdentifier = v5->_counterpartIdentifier;
      v5->_counterpartIdentifier = v26;
    }

    if ([coderCopy containsValueForKey:@"decAL"])
    {
      v5->_decryptedActivityLevel = [coderCopy decodeIntegerForKey:@"decAL"];
    }

    if ([coderCopy containsValueForKey:@"dist"])
    {
      v5->_distance = [coderCopy decodeIntegerForKey:@"dist"];
    }

    v28 = coderCopy;
    if ([v28 containsValueForKey:@"fticks"])
    {
      v5->_foundTicks = [v28 decodeInt64ForKey:@"fticks"];
    }

    v29 = v28;
    if ([v29 containsValueForKey:@"pticks"])
    {
      v5->_proxPairingTicks = [v29 decodeInt64ForKey:@"pticks"];
    }

    if ([v29 containsValueForKey:@"ident"])
    {
      v30 = [v29 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v5->_identifier;
      v5->_identifier = v30;
    }

    v32 = v29;
    if ([v32 containsValueForKey:@"btpipe"])
    {
      v5->_useBTPipe = [v32 decodeBoolForKey:@"btpipe"];
    }

    v33 = v32;
    if ([v33 containsValueForKey:@"inBub"])
    {
      v5->_insideBubble = [v33 decodeBoolForKey:@"inBub"];
    }

    v34 = v33;
    if ([v34 containsValueForKey:@"inSBub"])
    {
      v5->_insideSmallBubble = [v34 decodeBoolForKey:@"inSBub"];
    }

    v35 = v34;
    if ([v35 containsValueForKey:@"inMBub"])
    {
      v5->_insideMediumBubble = [v35 decodeBoolForKey:@"inMBub"];
    }

    if ([v35 containsValueForKey:@"last"])
    {
      [v35 decodeDoubleForKey:@"last"];
      v5->_lastSeen = v36;
    }

    if ([v35 containsValueForKey:@"name"])
    {
      v37 = [v35 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v5->_name;
      v5->_name = v37;
    }

    if ([v35 containsValueForKey:@"rssi"])
    {
      v5->_rssi = [v35 decodeIntegerForKey:@"rssi"];
    }

    if ([v35 containsValueForKey:@"cRSSI"])
    {
      v5->_rssiCeiling = [v35 decodeIntegerForKey:@"cRSSI"];
    }

    v49 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rssiEstimate = v49;
    }

    if ([v35 containsValueForKey:@"fRSSI"])
    {
      v5->_rssiFloor = [v35 decodeIntegerForKey:@"fRSSI"];
    }

    if ([v35 containsValueForKey:@"hRSSI"])
    {
      v39 = [v35 decodeObjectOfClass:objc_opt_class() forKey:@"hRSSI"];
      bytes = [v39 bytes];
      v41 = [v39 length];
      v42 = 8;
      if (v41 < 8)
      {
        v42 = v41;
      }

      if (v41)
      {
        rssiHistory = v5->_rssiHistory;
        do
        {
          v44 = *bytes++;
          *rssiHistory++ = v44;
          --v42;
        }

        while (v42);
      }
    }

    if ([v35 containsValueForKey:@"sRSSI"])
    {
      v5->_smoothedRSSI = [v35 decodeIntegerForKey:@"sRSSI"];
    }

    v45 = v35;
    if ([v45 containsValueForKey:@"trig"])
    {
      v5->_triggered = [v45 decodeBoolForKey:@"trig"];
    }

    v46 = v5;
  }

  return v5;
}

+ (uint64_t)setRSSIEstimatorInfo:(uint64_t)result .cold.1(uint64_t result)
{
  if (gLogCategory_SFBLERSSI <= 90)
  {
    v1 = result;
    if (gLogCategory_SFBLERSSI != -1)
    {
      return LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 90, "### Bad sample count: %zu\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 90, "### Bad sample count: %zu\n", v1);
    }
  }

  return result;
}

+ (uint64_t)setRSSIEstimatorInfo:(uint64_t)result .cold.2(uint64_t result, uint64_t a2)
{
  if (gLogCategory_SFBLERSSI <= 90)
  {
    v3 = result;
    if (gLogCategory_SFBLERSSI != -1)
    {
      return LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 90, "### Bad remove low/high: %zu/%zu\n", v3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 90, "### Bad remove low/high: %zu/%zu\n", v3, a2);
    }
  }

  return result;
}

+ (uint64_t)setRSSIEstimatorInfo:(uint64_t)result .cold.3(uint64_t result)
{
  if (gLogCategory_SFBLERSSI <= 90)
  {
    v1 = result;
    if (gLogCategory_SFBLERSSI != -1)
    {
      return LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 90, "### Bad RSSI algorithm: %ld\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFBLERSSI, "+[SFBLEDevice setRSSIEstimatorInfo:]", 90, "### Bad RSSI algorithm: %ld\n", v1);
    }
  }

  return result;
}

@end