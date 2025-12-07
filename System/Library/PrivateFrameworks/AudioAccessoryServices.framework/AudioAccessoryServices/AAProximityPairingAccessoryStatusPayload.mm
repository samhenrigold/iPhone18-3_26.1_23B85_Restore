@interface AAProximityPairingAccessoryStatusPayload
- (AAProximityPairingAccessoryStatusPayload)initWithData:(id)data;
- (NSString)firmwareVersion;
- (id)describeProperties;
@end

@implementation AAProximityPairingAccessoryStatusPayload

- (AAProximityPairingAccessoryStatusPayload)initWithData:(id)data
{
  v33.receiver = self;
  v33.super_class = AAProximityPairingAccessoryStatusPayload;
  v3 = [(AAProximityPairingPayload *)&v33 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  payloadData = [(AAAdvertisementPayload *)v3 payloadData];
  v6 = [payloadData length];

  if (v6 <= 5)
  {
    v31 = "missing data from status flags 1.";
LABEL_19:
    [(AAAdvertisementPayload *)v4 initLogParseError:v31];
LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  payloadData2 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 2) = *([payloadData2 bytes] + 5);

  payloadData3 = [(AAAdvertisementPayload *)v4 payloadData];
  v9 = [payloadData3 length];

  if (v9 <= 6)
  {
    v31 = "missing data from battery 1 byte.";
    goto LABEL_19;
  }

  payloadData4 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 3) = *([payloadData4 bytes] + 6);

  payloadData5 = [(AAAdvertisementPayload *)v4 payloadData];
  v12 = [payloadData5 length];

  if (v12 <= 7)
  {
    v31 = "missing data from battery 2 byte.";
    goto LABEL_19;
  }

  payloadData6 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 4) = *([payloadData6 bytes] + 7);

  payloadData7 = [(AAAdvertisementPayload *)v4 payloadData];
  v15 = [payloadData7 length];

  if (v15 <= 8)
  {
    v31 = "missing data from battery 3 byte.";
    goto LABEL_19;
  }

  payloadData8 = [(AAAdvertisementPayload *)v4 payloadData];
  *(&v4->super._pid + 5) = *([payloadData8 bytes] + 8);

  payloadData9 = [(AAAdvertisementPayload *)v4 payloadData];
  v18 = [payloadData9 length];

  if (v18 <= 0xB)
  {
    v31 = "missing data from Firmware Version bytes.";
    goto LABEL_19;
  }

  payloadData10 = [(AAAdvertisementPayload *)v4 payloadData];
  bytes = [payloadData10 bytes];
  *&v4->_timeUntilCharged = *(bytes + 9) | (*(bytes + 11) << 16);

  payloadData11 = [(AAAdvertisementPayload *)v4 payloadData];
  v22 = [payloadData11 length];

  if (v22 <= 0xC)
  {
    v31 = "missing data from Time Until Charged byte.";
    goto LABEL_19;
  }

  payloadData12 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_statusFlags1 = *([payloadData12 bytes] + 12);

  payloadData13 = [(AAAdvertisementPayload *)v4 payloadData];
  v25 = [payloadData13 length];

  if (v25 <= 0xD)
  {
    v31 = "missing data from status 2 byte.";
    goto LABEL_19;
  }

  payloadData14 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery1 = *([payloadData14 bytes] + 13);

  payloadData15 = [(AAAdvertisementPayload *)v4 payloadData];
  v28 = [payloadData15 length];

  if (v28 <= 0xE)
  {
    v31 = "missing data from reserved byte.";
    goto LABEL_19;
  }

  payloadData16 = [(AAAdvertisementPayload *)v4 payloadData];
  v4->_battery2 = *([payloadData16 bytes] + 14);

  v30 = v4;
LABEL_21:

  return v30;
}

- (id)describeProperties
{
  v46.receiver = self;
  v46.super_class = AAProximityPairingAccessoryStatusPayload;
  describeProperties = [(AAProximityPairingPayload *)&v46 describeProperties];
  v45 = describeProperties;
  NSAppendPrintF_safe(&v45, ", lid open count: %d", [(AAProximityPairingAccessoryStatusPayload *)self lidOpenCount]);
  v4 = v45;

  v44 = v4;
  if ([(AAProximityPairingAccessoryStatusPayload *)self lidClosed])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  NSAppendPrintF_safe(&v44, ", lid closed: %s", v5);
  v6 = v44;

  v43 = v6;
  if ([(AAProximityPairingAccessoryStatusPayload *)self needsConnection])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  NSAppendPrintF_safe(&v43, ", need conn: %s", v7);
  v8 = v43;

  v42 = v8;
  if ([(AAProximityPairingAccessoryStatusPayload *)self soundEnabled])
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  NSAppendPrintF_safe(&v42, ", sound En: %s", v9);
  v10 = v42;

  v41 = v10;
  if ([(AAProximityPairingAccessoryStatusPayload *)self connected])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  NSAppendPrintF_safe(&v41, ", connected: %s", v11);
  v12 = v41;

  v40 = v12;
  if ([(AAProximityPairingAccessoryStatusPayload *)self faultDetected])
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  NSAppendPrintF_safe(&v40, ", fault detect: %s", v13);
  v14 = v40;

  if ([(AAProximityPairingAccessoryStatusPayload *)self caseBatteryValid])
  {
    [(AAProximityPairingAccessoryStatusPayload *)self caseBatteryCharging];
    v39 = v14;
    [(AAProximityPairingAccessoryStatusPayload *)self caseBatteryLevel];
    v15 = &v39;
    NSAppendPrintF_safe(&v39, ", C Batt: %s%d%%");
  }

  else
  {
    v38 = v14;
    v15 = &v38;
    NSAppendPrintF_safe(&v38, ", C Batt: invalid");
  }

  v16 = *v15;

  if ([(AAProximityPairingAccessoryStatusPayload *)self leftBatteryValid])
  {
    [(AAProximityPairingAccessoryStatusPayload *)self leftBatteryCharging];
    v37 = v16;
    [(AAProximityPairingAccessoryStatusPayload *)self leftBatteryLevel];
    v17 = &v37;
    NSAppendPrintF_safe(&v37, ", L Batt: %s%d%%");
  }

  else
  {
    v36 = v16;
    v17 = &v36;
    NSAppendPrintF_safe(&v36, ", L Batt: invalid");
  }

  v18 = *v17;

  if ([(AAProximityPairingAccessoryStatusPayload *)self rightBatteryValid])
  {
    [(AAProximityPairingAccessoryStatusPayload *)self rightBatteryCharging];
    v35 = v18;
    [(AAProximityPairingAccessoryStatusPayload *)self rightBatteryLevel];
    v19 = &v35;
    NSAppendPrintF_safe(&v35, ", R Batt: %s%d%%");
  }

  else
  {
    v34 = v18;
    v19 = &v34;
    NSAppendPrintF_safe(&v34, ", R Batt: invalid");
  }

  v20 = *v19;

  v33 = v20;
  firmwareVersion = [(AAProximityPairingAccessoryStatusPayload *)self firmwareVersion];
  NSAppendPrintF_safe(&v33, ", fw ver: %@", firmwareVersion);
  v22 = v33;

  v32 = v22;
  NSAppendPrintF_safe(&v32, ", time till charged: %d", [(AAProximityPairingAccessoryStatusPayload *)self timeUntilCharged]);
  v23 = v32;

  v31 = v23;
  if ([(AAProximityPairingAccessoryStatusPayload *)self chargingOBC])
  {
    v24 = "yes";
  }

  else
  {
    v24 = "no";
  }

  NSAppendPrintF_safe(&v31, ", OBC on: %s", v24);
  v25 = v31;

  v30 = v25;
  if ([(AAProximityPairingAccessoryStatusPayload *)self chargingDEOC])
  {
    v26 = "yes";
  }

  else
  {
    v26 = "no";
  }

  NSAppendPrintF_safe(&v30, ", DEOC on: %s", v26);
  v27 = v30;
  v28 = v30;

  return v27;
}

- (NSString)firmwareVersion
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u.%u.%u", (-[AAProximityPairingAccessoryStatusPayload firmwareVersionRaw](self, "firmwareVersionRaw") >> 16), (-[AAProximityPairingAccessoryStatusPayload firmwareVersionRaw](self, "firmwareVersionRaw") >> 8), -[AAProximityPairingAccessoryStatusPayload firmwareVersionRaw](self, "firmwareVersionRaw")];

  return v2;
}

@end