@interface AAProximityPairingStatusPayloadGeneral
+ (id)proximityPairingStatusPayloadWithData:(id)data pid:(unsigned __int16)pid;
- (AAProximityPairingStatusPayloadGeneral)initWithData:(id)data;
- (BOOL)chargingDEOC;
- (id)describeProperties;
- (unsigned)caseBatteryLevel;
- (unsigned)myBatteryLevel;
- (unsigned)otherBatteryLevel;
@end

@implementation AAProximityPairingStatusPayloadGeneral

+ (id)proximityPairingStatusPayloadWithData:(id)data pid:(unsigned __int16)pid
{
  pidCopy = pid;
  dataCopy = data;
  v6 = off_278CDD460;
  if (![AAProximityPairingStatusPayloadB188B288 supportedPID:pidCopy])
  {
    v6 = off_278CDD468;
    if (![AAProximityPairingStatusPayloadB444 supportedPID:pidCopy])
    {
      v6 = off_278CDD470;
      if (![AAProximityPairingStatusPayloadB463 supportedPID:pidCopy])
      {
        v6 = off_278CDD478;
        if (![AAProximityPairingStatusPayloadB515 supportedPID:pidCopy])
        {
          v6 = off_278CDD480;
          if (![AAProximityPairingStatusPayloadB515c supportedPID:pidCopy])
          {
            v6 = off_278CDD490;
            if (![AAProximityPairingStatusPayloadOtherTetheredNonCase supportedPID:pidCopy])
            {
              v6 = off_278CDD488;
            }
          }
        }
      }
    }
  }

  v7 = [objc_alloc(*v6) initWithData:dataCopy];

  return v7;
}

- (id)describeProperties
{
  v61.receiver = self;
  v61.super_class = AAProximityPairingStatusPayloadGeneral;
  describeProperties = [(AAProximityPairingPayload *)&v61 describeProperties];
  v60 = describeProperties;
  if ([(AAProximityPairingStatusPayloadGeneral *)self supportWirelessSplitter])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  NSAppendPrintF_safe(&v60, ", Sup Wir Split: %s", v4);
  v5 = v60;

  v59 = v5;
  audioState = [(AAProximityPairingStatusPayloadGeneral *)self audioState];
  if (audioState > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_278CDE0F0[audioState];
  }

  NSAppendPrintF_safe(&v59, ", Audio St: %s", v7);
  v8 = v59;

  v58 = v8;
  NSAppendPrintF_safe(&v58, ", Src count: %d", [(AAProximityPairingStatusPayloadGeneral *)self connectedSourceCount]);
  v9 = v58;

  v57 = v9;
  if ([(AAProximityPairingStatusPayloadGeneral *)self chargingDEOC])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  NSAppendPrintF_safe(&v57, ", DEOC on: %s", v10);
  v11 = v57;

  v56 = v11;
  if ([(AAProximityPairingStatusPayloadGeneral *)self chargingOBC])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  NSAppendPrintF_safe(&v56, ", OBC on: %s", v12);
  v13 = v56;

  v55 = v13;
  if ([(AAProximityPairingStatusPayloadGeneral *)self smartRoutingConnected])
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  NSAppendPrintF_safe(&v55, ", SR Conn: %s", v14);
  v15 = v55;

  if ([(AAProximityPairingStatusPayloadGeneral *)self myBatteryValid])
  {
    [(AAProximityPairingStatusPayloadGeneral *)self myBatteryCharging];
    v54 = v15;
    [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
    v16 = &v54;
    NSAppendPrintF_safe(&v54, ", My Batt: %s%d");
  }

  else
  {
    v53 = v15;
    v16 = &v53;
    NSAppendPrintF_safe(&v53, ", My Batt: invalid");
  }

  v17 = *v16;

  if ([(AAProximityPairingStatusPayloadGeneral *)self otherBatteryValid])
  {
    [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryCharging];
    v52 = v17;
    [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryLevel];
    v18 = &v52;
    NSAppendPrintF_safe(&v52, ", Oth Batt: %s%d");
  }

  else
  {
    v51 = v17;
    v18 = &v51;
    NSAppendPrintF_safe(&v51, ", Oth Batt: invalid");
  }

  v19 = *v18;

  if ([(AAProximityPairingStatusPayloadGeneral *)self caseBatteryValid])
  {
    [(AAProximityPairingStatusPayloadGeneral *)self caseBatteryCharging];
    v50 = v19;
    [(AAProximityPairingStatusPayloadGeneral *)self caseBatteryLevel];
    v20 = &v50;
    NSAppendPrintF_safe(&v50, ", C Batt: %s%d");
  }

  else
  {
    v49 = v19;
    v20 = &v49;
    NSAppendPrintF_safe(&v49, ", C Batt: invalid");
  }

  v21 = *v20;

  v48 = v21;
  lastConnectedHost = [(AAProximityPairingStatusPayloadGeneral *)self lastConnectedHost];
  NSAppendPrintF_safe(&v48, ", lst conn hst: %@", lastConnectedHost);
  v23 = v48;

  v47 = v23;
  lastBudInCaseWithCurrentBud = [(AAProximityPairingStatusPayloadGeneral *)self lastBudInCaseWithCurrentBud];
  NSAppendPrintF_safe(&v47, ", lst bud in C w/curr bud: %@", lastBudInCaseWithCurrentBud);
  v25 = v47;

  v46 = v25;
  smartRoutingScoreSource1 = [(AAProximityPairingStatusPayloadGeneral *)self smartRoutingScoreSource1];
  if (smartRoutingScoreSource1 > 0xF)
  {
    v27 = "?";
  }

  else
  {
    v27 = off_278CDE110[smartRoutingScoreSource1];
  }

  NSAppendPrintF_safe(&v46, ", SR score 1: %s", v27);
  v28 = v46;

  v45 = v28;
  smartRoutingScoreSource2 = [(AAProximityPairingStatusPayloadGeneral *)self smartRoutingScoreSource2];
  if (smartRoutingScoreSource2 > 0xF)
  {
    v30 = "?";
  }

  else
  {
    v30 = off_278CDE110[smartRoutingScoreSource2];
  }

  NSAppendPrintF_safe(&v45, ", SR score 2: %s", v30);
  v31 = v45;

  v44 = v31;
  idleTime = [(AAProximityPairingStatusPayloadGeneral *)self idleTime];
  if (idleTime > 3)
  {
    v33 = "?";
  }

  else
  {
    v33 = off_278CDE190[idleTime];
  }

  NSAppendPrintF_safe(&v44, ", Idle time: %s", v33);
  v34 = v44;

  v43 = v34;
  outOfCaseTime = [(AAProximityPairingStatusPayloadGeneral *)self outOfCaseTime];
  if (outOfCaseTime > 3)
  {
    v36 = "?";
  }

  else
  {
    v36 = off_278CDE190[outOfCaseTime];
  }

  NSAppendPrintF_safe(&v43, ", time out of case: %s", v36);
  v37 = v43;

  v42 = v37;
  if ([(AAProximityPairingStatusPayloadGeneral *)self lastConnectedHostSignedInToICloud])
  {
    v38 = "yes";
  }

  else
  {
    v38 = "no";
  }

  NSAppendPrintF_safe(&v42, ", lst conn host iCloud signed in: %s", v38);
  v39 = v42;
  v40 = v42;

  return v39;
}

- (AAProximityPairingStatusPayloadGeneral)initWithData:(id)data
{
  v56.receiver = self;
  v56.super_class = AAProximityPairingStatusPayloadGeneral;
  v3 = [(AAProximityPairingPayload *)&v56 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_32;
  }

  payloadData = [(AAAdvertisementPayload *)v3 payloadData];
  v6 = [payloadData length];

  if (v6 <= 5)
  {
    v54 = "missing data from status1 bit.";
LABEL_31:
    [(AAAdvertisementPayload *)v4 initLogParseError:v54];
LABEL_32:
    v53 = 0;
    goto LABEL_33;
  }

  payloadData2 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 2) = *([payloadData2 bytes] + 5);

  payloadData3 = [(AAAdvertisementPayload *)v4 payloadData];
  v9 = [payloadData3 length];

  if (v9 <= 6)
  {
    v54 = "missing data from battery1 bit.";
    goto LABEL_31;
  }

  payloadData4 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 3) = *([payloadData4 bytes] + 6);

  payloadData5 = [(AAAdvertisementPayload *)v4 payloadData];
  v12 = [payloadData5 length];

  if (v12 <= 7)
  {
    v54 = "missing data from battery2 bit.";
    goto LABEL_31;
  }

  payloadData6 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 4) = *([payloadData6 bytes] + 7);

  payloadData7 = [(AAAdvertisementPayload *)v4 payloadData];
  v15 = [payloadData7 length];

  if (v15 <= 8)
  {
    v54 = "missing data from status3 bit.";
    goto LABEL_31;
  }

  payloadData8 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 5) = *([payloadData8 bytes] + 8);

  payloadData9 = [(AAAdvertisementPayload *)v4 payloadData];
  v18 = [payloadData9 length];

  if (v18 <= 9)
  {
    v54 = "missing data from color bit.";
    goto LABEL_31;
  }

  payloadData10 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status1 = *([payloadData10 bytes] + 9);

  payloadData11 = [(AAAdvertisementPayload *)v4 payloadData];
  v21 = [payloadData11 length];

  if (v21 <= 0xA)
  {
    v54 = "missing data from misc1 bit.";
    goto LABEL_31;
  }

  payloadData12 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery1 = *([payloadData12 bytes] + 10);

  payloadData13 = [(AAAdvertisementPayload *)v4 payloadData];
  v24 = [payloadData13 length];

  if (v24 <= 0xB)
  {
    v54 = "missing data from status2 bit.";
    goto LABEL_31;
  }

  payloadData14 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery2 = *([payloadData14 bytes] + 11);

  payloadData15 = [(AAAdvertisementPayload *)v4 payloadData];
  v27 = [payloadData15 length];

  if (v27 <= 0xC)
  {
    v54 = "missing data from battery3 bit.";
    goto LABEL_31;
  }

  payloadData16 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status3 = *([payloadData16 bytes] + 12);

  payloadData17 = [(AAAdvertisementPayload *)v4 payloadData];
  v30 = [payloadData17 length];

  if (v30 <= 0xD)
  {
    v54 = "missing data from battery4 bit.";
    goto LABEL_31;
  }

  payloadData18 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_colorRaw = *([payloadData18 bytes] + 13);

  payloadData19 = [(AAAdvertisementPayload *)v4 payloadData];
  v33 = [payloadData19 length];

  if (v33 <= 0xE)
  {
    v54 = "missing data from battery5 bit.";
    goto LABEL_31;
  }

  payloadData20 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_misc1 = *([payloadData20 bytes] + 14);

  payloadData21 = [(AAAdvertisementPayload *)v4 payloadData];
  v36 = [payloadData21 length];

  if (v36 <= 0x11)
  {
    v54 = "missing data from lastConnectedHost bits.";
    goto LABEL_31;
  }

  payloadData22 = [(AAAdvertisementPayload *)v4 payloadData];
  bytes = [payloadData22 bytes];

  v39 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 15 length:3];
  v40 = *&v4->_battery4;
  *&v4->_battery4 = v39;

  payloadData23 = [(AAAdvertisementPayload *)v4 payloadData];
  v42 = [payloadData23 length];

  if (v42 <= 0x14)
  {
    v54 = "missing data from lastBudInCaseWithCurrentBud bits.";
    goto LABEL_31;
  }

  payloadData24 = [(AAAdvertisementPayload *)v4 payloadData];
  bytes2 = [payloadData24 bytes];

  v45 = [MEMORY[0x277CBEA90] dataWithBytes:bytes2 + 18 length:3];
  lastConnectedHost = v4->_lastConnectedHost;
  v4->_lastConnectedHost = v45;

  payloadData25 = [(AAAdvertisementPayload *)v4 payloadData];
  v48 = [payloadData25 length];

  if (v48 <= 0x15)
  {
    v54 = "missing data from status4 bit.";
    goto LABEL_31;
  }

  payloadData26 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_status2 = *([payloadData26 bytes] + 21);

  payloadData27 = [(AAAdvertisementPayload *)v4 payloadData];
  v51 = [payloadData27 length];

  if (v51 <= 0x16)
  {
    v54 = "missing data from status5 bit.";
    goto LABEL_31;
  }

  payloadData28 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery3 = *([payloadData28 bytes] + 22);

  v53 = v4;
LABEL_33:

  return v53;
}

- (unsigned)myBatteryLevel
{
  if (([(AAProximityPairingStatusPayloadGeneral *)self battery3]& 0x7F) <= 0x64)
  {
    [(AAProximityPairingStatusPayloadGeneral *)self battery3];
  }

  if (([(AAProximityPairingStatusPayloadGeneral *)self battery3]& 0x7F) <= 0x64)
  {
    return [(AAProximityPairingStatusPayloadGeneral *)self battery3]& 0x7F;
  }

  else
  {
    return 100;
  }
}

- (unsigned)otherBatteryLevel
{
  if (([(AAProximityPairingStatusPayloadGeneral *)self battery4]& 0x7F) <= 0x64)
  {
    [(AAProximityPairingStatusPayloadGeneral *)self battery4];
  }

  if (([(AAProximityPairingStatusPayloadGeneral *)self battery4]& 0x7F) <= 0x64)
  {
    return [(AAProximityPairingStatusPayloadGeneral *)self battery4]& 0x7F;
  }

  else
  {
    return 100;
  }
}

- (unsigned)caseBatteryLevel
{
  if (([(AAProximityPairingStatusPayloadGeneral *)self battery5]& 0x7F) <= 0x64)
  {
    [(AAProximityPairingStatusPayloadGeneral *)self battery5];
  }

  if (([(AAProximityPairingStatusPayloadGeneral *)self battery5]& 0x7F) <= 0x64)
  {
    return [(AAProximityPairingStatusPayloadGeneral *)self battery5]& 0x7F;
  }

  else
  {
    return 100;
  }
}

- (BOOL)chargingDEOC
{
  chargingDEOCSupported = [(AAProximityPairingStatusPayloadGeneral *)self chargingDEOCSupported];
  if (chargingDEOCSupported)
  {
    return ([(AAProximityPairingStatusPayloadGeneral *)self status2]>> 4) & 1;
  }

  return chargingDEOCSupported;
}

@end