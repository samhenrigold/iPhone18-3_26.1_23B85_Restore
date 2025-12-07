@interface USBCUSBFirmwareUpdater
- (USBCUSBFirmwareUpdater)initWithRegistryEntry:(unsigned int)entry;
- (id)DeviceAlternateFirmwareVersionString;
- (id)DeviceFirmwareVersionString;
- (id)DeviceSerialNumber:(BOOL)number;
- (id)EnterUpdateMode;
- (id)ExitUpdateMode:(BOOL)mode;
- (id)RetrieveA11xQApp:(id *)app;
- (id)RetrieveA11xSerialNumber:(char *)number;
- (id)applyFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)finishFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)prepareFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)validateDevice:(id)device withFirmware:(id)firmware;
- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)validateUSBCBillboard;
- (unsigned)DeviceAlternateFirmwareVersion;
- (unsigned)DeviceFirmwareVersion;
- (unsigned)FirmwareFileVersion:(id)version;
- (unsigned)FirmwareFileVersion:(id)version firmware:(id *)firmware isSecure:(BOOL *)secure andSignature:(id *)signature withPartition:(unsigned int)partition;
- (void)setPreferredFirmwarePartition:(BOOL)partition;
@end

@implementation USBCUSBFirmwareUpdater

- (id)RetrieveA11xSerialNumber:(char *)number
{
  memset(v8, 0, 46);
  v6 = 46;
  v4 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:v8 bufferLength:46 registerAddress:23 returnedBufferLength:&v6];
  if (v4)
  {
    sub_10001331C(v4, &v7);
    v4 = v7;
  }

  else
  {
    *number = *(&v8[1] + 12);
    *(number + 8) = WORD6(v8[2]);
  }

  return v4;
}

- (id)RetrieveA11xQApp:(id *)app
{
  v8 = 4;
  v5 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1886404945 withDelay:500000 canRetry:1 canRecover:1];
  if (v5 || (v8 = 64, *&app->var0.var0 = 0u, *&app->var4 = 0u, *&app->var6[8] = 0u, *&app->var7[4] = 0u, [(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:app bufferLength:64 registerAddress:9 returnedBufferLength:&v8], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sub_10001331C(v5, &v9);
    v6 = v9;
  }

  else
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Current firmware info:"];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Active Region:              %u\n", app->var0.var0];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Preferred Region:           %u\n", app->var0.var1];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Target Region Start Addr:   0x%04X\n", app->var1];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Target Region End Addr:     0x%04X\n", app->var2];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Current Bootloader Version:     %08X\n", app->var5];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Current App1 Version:       %08X\n", app->var3];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Current App2 Version:       %08X\n", app->var4];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
    v6 = 0;
  }

  return v6;
}

- (id)DeviceSerialNumber:(BOOL)number
{
  numberCopy = number;
  if (number)
  {
    v5 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
      goto LABEL_10;
    }
  }

  v10 = 0;
  v7 = [(USBCPDAccess *)self->super._pdAccess DeviceInAlternateMode:&v10];
  if (v7)
  {
    goto LABEL_14;
  }

  if ((v10 & 1) == 0)
  {
    sub_10001339C(v11);
    v7 = v11[0];
LABEL_14:

    goto LABEL_7;
  }

  v8 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xSerialNumber:v11];

  if (v8)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = [NSString stringWithUTF8String:v11];
  if (numberCopy)
  {
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v6 forKeyedSubscript:@"Hardware S/N"];
  }

LABEL_10:

  return v6;
}

- (unsigned)DeviceFirmwareVersion
{
  result = self->super._firmwareVersion;
  if (!result)
  {
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    v4 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v6];
    if (!v4)
    {
      if (v6 == 1)
      {
        v5 = &v6 + 3;
        goto LABEL_7;
      }

      if (v6 == 2)
      {
        v5 = v7;
LABEL_7:
        self->super._firmwareVersion = *v5;
      }
    }

    return self->super._firmwareVersion;
  }

  return result;
}

- (unsigned)DeviceAlternateFirmwareVersion
{
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v2 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v7];
  if (v2 || v7 == BYTE1(v7))
  {
    goto LABEL_6;
  }

  if (BYTE1(v7) != 1)
  {
    if (BYTE1(v7) == 2)
    {
      v3 = v8;
      goto LABEL_9;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v3 = (&v7 | 0xC);
LABEL_9:
  v6 = *v3;
  if (v6 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v6;
  }

LABEL_7:

  return v4;
}

- (id)DeviceFirmwareVersionString
{
  deviceFirmwareVersion = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersion];
  if (deviceFirmwareVersion)
  {
    v3 = [NSString stringWithFormat:@"%X.%X.%X", HIWORD(deviceFirmwareVersion), BYTE1(deviceFirmwareVersion), deviceFirmwareVersion];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)DeviceAlternateFirmwareVersionString
{
  deviceAlternateFirmwareVersion = [(USBCUSBFirmwareUpdater *)self DeviceAlternateFirmwareVersion];
  if (deviceAlternateFirmwareVersion)
  {
    v3 = [NSString stringWithFormat:@"%X.%X.%X", HIWORD(deviceAlternateFirmwareVersion), BYTE1(deviceAlternateFirmwareVersion), deviceAlternateFirmwareVersion];
  }

  else
  {
    v3 = @"(Invalid F/W Image)";
  }

  return v3;
}

- (id)validateUSBCBillboard
{
  properties = 0;
  IORegistryEntryCreateCFProperties(self->super._registryEntry, &properties, kCFAllocatorDefault, 0);
  v3 = properties;
  v4 = v3;
  if (!v3)
  {
    v5 = +[NSMutableDictionary dictionary];
    [v5 setObject:@"Bad registry entry" forKeyedSubscript:@"Notes"];
    v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8704 userInfo:v5];
    address = 0;
    routerID = 0;
    goto LABEL_26;
  }

  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"IOClassName"];
  v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"IOClassNameOverride"];
  v7 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"USB Serial Number"];
  v8 = v6;
  v9 = v8;
  if (!v8 && (v9 = v5) == 0 || [v9 compare:@"IOUSBDevice"] && objc_msgSend(v9, "compare:", @"IOUSBHostDevice"))
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"Provider class didn't make sense: %@", v4];
  }

  v10 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bcdDevice"];
  unsignedLongValue = [v10 unsignedLongValue];
  v12 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];

  if (!v12)
  {
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v7 forKeyedSubscript:@"Hardware S/N"];
  }

  v13 = unsignedLongValue << 8;
  v14 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];

  if (!v14)
  {
    v15 = [NSNumber numberWithUnsignedLong:v13];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v15 forKeyedSubscript:@"Hardware Installed firmware version"];
  }

  v37 = v7;
  if (v10 && v13)
  {
    v16 = [(NSMutableDictionary *)self->super._firmwareAssetProperties objectForKeyedSubscript:@"Firmware Asset Version"];
    unsignedLongValue2 = [v16 unsignedLongValue];
    if (v16)
    {
      if ((unsignedLongValue2 & 0x800000) == 0)
      {
        v18 = unsignedLongValue2 & 0x7FFFFF;
        v19 = v13 & 0x7FFF00;
        if (v19 >= v18)
        {
          [(FudPluginDelegate *)self->super._delegate log:7 format:@"Reported firmware version do not support install of new firmware.  Aborting (0x%06X / 0x%06X)", v19, v18];
          v36 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Device Class"];
          v28 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];
          unsignedLongValue3 = [v28 unsignedLongValue];

          if (!self->super._firmwareVersion)
          {
            self->super._firmwareVersion = unsignedLongValue3;
          }

          delegate = self->super._delegate;
          deviceSerialNumber = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
          deviceFirmwareVersionString = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersionString];
          [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is up to date.  Installed firmware version is %@", v36, deviceSerialNumber, deviceFirmwareVersionString];

          v35 = +[NSMutableDictionary dictionary];
          [v35 setObject:@"Firmware not new enough" forKeyedSubscript:@"Notes"];
          v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9728 userInfo:v35];
          v32 = _previouslyUpdatedObjects;
          v31 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
          [v32 setObject:&off_1000277C0 forKeyedSubscript:v31];

          goto LABEL_21;
        }
      }
    }
  }

  if (!self->startupPauseCompleted)
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"%s - Pausing here to let the host clear any attachment-related traffic...", "[USBCUSBFirmwareUpdater validateUSBCBillboard]"];
    usleep(0xE4E1C0u);
    self->startupPauseCompleted = 1;
  }

  v20 = [(USBCFirmwareUpdater *)self LocatePortMicroForSerialNumber:v7];
  if (!v20)
  {
    pdController = self->super._pdController;
    if (pdController)
    {
      userClient = [(PDController *)pdController userClient];
      routerID = [userClient routerID];

      address = [(PDController *)self->super._pdController address];
      [(FudPluginDelegate *)self->super._delegate log:3 format:@"%s - Everything OK.  S/N: %@", "[USBCUSBFirmwareUpdater validateUSBCBillboard]", v37];
      v20 = 0;
      goto LABEL_25;
    }
  }

  [(FudPluginDelegate *)self->super._delegate log:3 format:@"AppleHPM instance not found or you are running as a non-root user"];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"S/N error returnValue: %@", v20];
LABEL_21:
  address = 0;
  routerID = 0;
LABEL_25:

LABEL_26:
  if (v20)
  {
    v25 = +[NSMutableDictionary dictionary];
    [v25 setObject:v20 forKeyedSubscript:@"Previous Error Response"];
    v26 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8704 userInfo:v25];
  }

  else
  {
    v26 = 0;
    self->super._route = 0;
    self->super._rid = routerID;
    self->super._address = address;
  }

  return v26;
}

- (id)validateDevice:(id)device withFirmware:(id)firmware
{
  deviceCopy = device;
  firmwareCopy = firmware;
  v34 = 0;
  if (!self->super._hardwareProperties)
  {
    objc_storeStrong(&self->super._hardwareProperties, device);
  }

  if (!self->super._firmwareAssetProperties)
  {
    objc_storeStrong(&self->super._firmwareAssetProperties, firmware);
  }

  v9 = _previouslyUpdatedObjects;
  v10 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v15 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];
    if (!v15)
    {
      if (!self->super._firmwareVersion)
      {
        goto LABEL_12;
      }

      v15 = [NSNumber numberWithUnsignedLong:?];
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v15 forKeyedSubscript:@"Hardware Installed firmware version"];
    }

LABEL_12:
    validateUSBCBillboard = [(USBCUSBFirmwareUpdater *)self validateUSBCBillboard];
    if (validateUSBCBillboard)
    {
      deviceFirmwareVersionString = validateUSBCBillboard;
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"validateUSBCBillboard gave: %@", validateUSBCBillboard];
      v14 = 0;
LABEL_21:
      delegate = self->super._delegate;
      v26 = [deviceFirmwareVersionString description];
      [(FudPluginDelegate *)delegate log:7 format:@"validateDevice has an error: %@", v26];

      v27 = +[NSMutableDictionary dictionary];
      [v27 setObject:deviceFirmwareVersionString forKeyedSubscript:@"Previous Error Response"];
      v28 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v27];

      deviceFirmwareVersionString = 0;
      goto LABEL_32;
    }

    v17 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
    if (v17)
    {
      v18 = v17;
      v19 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware DID"];
      if (v19)
      {
        v20 = v19;
        v21 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware UID"];

        if (v21)
        {
          v22 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
          HIDWORD(v34) = [v22 unsignedLongValue];

          v23 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware DID"];
          LODWORD(v34) = [v23 unsignedLongValue];

          v14 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware UID"];
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    [(NSMutableDictionary *)self->super._hardwareProperties setObject:0 forKeyedSubscript:@"Hardware VID"];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:0 forKeyedSubscript:@"Hardware DID"];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:0 forKeyedSubscript:@"Hardware UID"];
    v33 = 0;
    deviceFirmwareVersionString = [(USBCFirmwareUpdater *)self DeviceVIDDID:&v34 + 4 andDid:&v34 andUid:&v33];
    v24 = v33;
    v14 = v24;
    if (deviceFirmwareVersionString)
    {
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"DeviceVIDDID gave: %@", deviceFirmwareVersionString];
      goto LABEL_21;
    }

    if (v24)
    {
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v24 forKeyedSubscript:@"Hardware UID"];
    }

LABEL_24:
    if (v34 == 0xA2700000019)
    {
      v29 = [deviceCopy objectForKeyedSubscript:@"Hardware Installed firmware version"];

      if (v29)
      {
        v30 = [deviceCopy objectForKeyedSubscript:@"Hardware Installed firmware version"];
        [v30 unsignedLongValue];
      }

      else
      {
        v30 = [NSNumber numberWithUnsignedLong:[(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersion]];
        [deviceCopy setObject:v30 forKeyedSubscript:@"Hardware Installed firmware version"];
      }

      deviceFirmwareVersionString = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersionString];
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Firmware version: %@", deviceFirmwareVersionString];
    }

    else
    {
      v31 = +[NSMutableDictionary dictionary];
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Wrong VID/DID: 0x%04X / 0x%04X", HIDWORD(v34), v34];
      [v31 setObject:@"Wrong VID/DID" forKeyedSubscript:@"Notes"];
      deviceFirmwareVersionString = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v31];

      if (deviceFirmwareVersionString)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_31;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"This registry entry appears to have been previously updated.  Aborting"];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"%u Previously updated - aborting", self->super._registryEntry];
  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:@"Previously updated" forKeyedSubscript:@"Notes"];
  deviceFirmwareVersionString = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v12];

  v14 = 0;
  if (deviceFirmwareVersionString)
  {
    goto LABEL_21;
  }

LABEL_31:
  v28 = 0;
LABEL_32:

  return v28;
}

- (USBCUSBFirmwareUpdater)initWithRegistryEntry:(unsigned int)entry
{
  v8.receiver = self;
  v8.super_class = USBCUSBFirmwareUpdater;
  v3 = [(USBCFirmwareUpdater *)&v8 initWithRegistryEntry:*&entry];
  v4 = v3;
  if (v3)
  {
    v3->startupPauseCompleted = 0;
    v3->receptacleDisabled = 0;
  }

  if (!_previouslyUpdatedObjects)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = _previouslyUpdatedObjects;
    _previouslyUpdatedObjects = v5;
  }

  return v4;
}

- (unsigned)FirmwareFileVersion:(id)version firmware:(id *)firmware isSecure:(BOOL *)secure andSignature:(id *)signature withPartition:(unsigned int)partition
{
  versionCopy = version;
  v13 = [versionCopy length];
  v14 = malloc_type_malloc(v13, 0x963900D6uLL);
  [versionCopy getBytes:v14 length:v13];
  secureCopy = secure;
  signatureCopy = signature;
  firmwareCopy = firmware;
  if (partition == 1)
  {
    v15 = 4096;
  }

  else
  {
    if (partition != 2)
    {
      sub_100013410();
    }

    v15 = 69632;
  }

  v16 = v15;
  v17 = &v14[v15];
  v18 = *v17;
  v19 = @"NO";
  if (v13 > 0x20000)
  {
    v19 = @"YES";
  }

  v27 = v19;
  v28 = v13;
  if (v13 <= 0x20000)
  {
    v20 = (v18 + 256);
  }

  else
  {
    v20 = v18;
  }

  v22 = v17[5];
  v21 = v17[6];
  v23 = v17[4];
  free(v14);
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    VID: %u (0x%X)", v21, v21];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    DID: %u (0x%X)", v22, v22];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Offset: %u (0x%X)", v16, v16];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Length: %u (0x%X)", v18, v18];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    LengthTotal: %u (0x%X)", v20, v20];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    appendedSigs: %@", v27];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    fwVersion: %u (0x%X)", v23, v23];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
  if (firmwareCopy)
  {
    *firmwareCopy = [versionCopy subdataWithRange:{v16, v20}];
  }

  if (secureCopy)
  {
    *secureCopy = v28 > 0x20000;
  }

  if (signatureCopy)
  {
    v24 = [versionCopy length];
    if (v20 - v28 < 0x100)
    {
      v25 = 0;
    }

    else
    {
      v25 = [versionCopy subdataWithRange:{&v24[256 * partition - 768], 256}];
    }

    *signatureCopy = v25;
  }

  return v23;
}

- (id)EnterUpdateMode
{
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Enabling lock (does nothing)"];
  result = [(USBCPDAccess *)self->super._pdAccess EnterUpdateMode:0];
  self->receptacleDisabled = 1;
  return result;
}

- (id)ExitUpdateMode:(BOOL)mode
{
  modeCopy = mode;
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Disabling lock (does nothing)"];
  pdAccess = self->super._pdAccess;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A418;
  v8[3] = &unk_100024568;
  v8[4] = self;
  v6 = [(USBCPDAccess *)pdAccess ExitUpdateMode:v8 remoteReset:modeCopy];

  return v6;
}

- (unsigned)FirmwareFileVersion:(id)version
{
  versionCopy = version;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (!self->super._pdAccess)
  {
    goto LABEL_6;
  }

  v5 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v9];
  if (v5)
  {
LABEL_8:

    v7 = -1;
    goto LABEL_9;
  }

  if (DWORD1(v9) == 4096)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (DWORD1(v9) != 69632)
  {
    goto LABEL_8;
  }

  v6 = 2;
LABEL_7:
  v7 = [(USBCUSBFirmwareUpdater *)self FirmwareFileVersion:versionCopy firmware:0 isSecure:0 andSignature:0 withPartition:v6, v9, v10, v11, v12];
LABEL_9:

  return v7;
}

- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v12 = a5;
  progressCopy = progress;
  bOOLValue = 0;
  v67 = [v12 objectForKeyedSubscript:@"Firmware Asset Version"];
  v14 = [v12 objectForKeyedSubscript:@"Firmware Asset Is Secure"];
  v15 = [v12 objectForKeyedSubscript:@"Firmware Asset File"];
  v69 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];
  v16 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];
  v68 = [hardwareCopy objectForKeyedSubscript:@"Hardware Partition"];
  v17 = _previouslyUpdatedObjects;
  v18 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
  v19 = [v17 objectForKeyedSubscript:v18];

  v63 = v12;
  if (v19)
  {
    v20 = 0;
LABEL_3:
    v21 = 0;
    v22 = 0;
    goto LABEL_4;
  }

  if (!v15)
  {
    v36 = +[NSMutableDictionary dictionary];
    [v36 setObject:@"Firmware file was missing" forKeyedSubscript:@"Notes"];
    v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12290 userInfo:v36];

    goto LABEL_3;
  }

  if (v69 && v16 && v14 && v67 && v68)
  {
    unsignedLongValue = [v67 unsignedLongValue];
    bOOLValue = [v14 BOOLValue];
    v33 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];

    v34 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];

    v35 = [hardwareCopy objectForKeyedSubscript:@"Hardware Partition"];

    v68 = v35;
    v69 = v33;
    v16 = v34;
  }

  else
  {
    memset(v74, 0, sizeof(v74));
    v37 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:v74];
    if (v37)
    {
      v20 = v37;
      goto LABEL_3;
    }

    if (DWORD1(v74[0]) == 4096)
    {
      v38 = 1;
    }

    else
    {
      if (DWORD1(v74[0]) != 69632)
      {
        sub_10001343C(&v73);
        v20 = v73;
        goto LABEL_3;
      }

      v38 = 2;
    }

    v65 = [NSNumber numberWithUnsignedLong:v38];

    [hardwareCopy setObject:v65 forKeyedSubscript:@"Hardware Partition"];
    v70 = v16;
    v71 = v69;
    v39 = -[USBCUSBFirmwareUpdater FirmwareFileVersion:firmware:isSecure:andSignature:withPartition:](self, "FirmwareFileVersion:firmware:isSecure:andSignature:withPartition:", v15, &v71, &bOOLValue, &v70, [v65 unsignedLongValue]);
    v59 = v71;

    v40 = v70;
    v41 = v16;
    v16 = v40;

    unsignedLongValue = v39;
    v42 = [NSNumber numberWithUnsignedLong:v39];

    [v12 setObject:v42 forKeyedSubscript:@"Firmware Asset Version"];
    v43 = [NSNumber numberWithBool:bOOLValue];

    [v12 setObject:v43 forKeyedSubscript:@"Firmware Asset Is Secure"];
    [v12 setObject:v59 forKeyedSubscript:@"Firmware Asset Payload"];
    [v12 setObject:v16 forKeyedSubscript:@"Firmware Asset Signature"];
    v68 = v65;
    v69 = v59;
    v14 = v43;
    v67 = v42;
  }

  v44 = [hardwareCopy objectForKeyedSubscript:@"Hardware Installed firmware version"];
  v22 = v44;
  if (v44)
  {
    unsignedLongValue2 = [v44 unsignedLongValue];
  }

  else
  {
    unsignedLongValue2 = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersion];
    [NSNumber numberWithUnsignedLong:unsignedLongValue2];
    v47 = v46 = v16;
    [hardwareCopy setObject:v47 forKeyedSubscript:@"Hardware Installed firmware version"];

    v16 = v46;
  }

  if (bOOLValue)
  {
    v58 = v22;
    v60 = v15;
    v66 = v16;
    v48 = unsignedLongValue & 0x7FFFFF;
    deviceAlternateFirmwareVersion = [(USBCUSBFirmwareUpdater *)self DeviceAlternateFirmwareVersion];
    v49 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
    delegate = self->super._delegate;
    deviceSerialNumber = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    deviceFirmwareVersionString = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersionString];
    if (unsignedLongValue2 >= v48 || deviceAlternateFirmwareVersion >= v48)
    {
      [(USBCUSBFirmwareUpdater *)self DeviceAlternateFirmwareVersionString];
      v54 = v62 = unsignedLongValue2;
      [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is up to date.  Installed firmware version is %@.  Alternate firmware is: %@", v49, deviceSerialNumber, deviceFirmwareVersionString, v54];

      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Firmware older/equal than what is currently installed (0x%08X vs. 0x%08X)", v62, v48];
      v55 = +[NSMutableDictionary dictionary];
      [v55 setObject:@"Firmware older/equal than what is currently installed" forKeyedSubscript:@"Notes"];
      v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:2816 userInfo:v55];

      v21 = 0;
    }

    else
    {
      v52 = [(USBCFirmwareUpdater *)self FirmwareFileVersionString:unsignedLongValue];
      v21 = 1;
      [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is in need of an update.  Installed firmware version %@ will be replaced with %@", v49, deviceSerialNumber, deviceFirmwareVersionString, v52];

      v20 = 0;
    }

    v22 = v58;
    v15 = v60;
    v16 = v66;
  }

  else
  {
    v53 = +[NSMutableDictionary dictionary];
    [v53 setObject:@"Firmware file was bad" forKeyedSubscript:@"Notes"];
    v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12291 userInfo:v53];

    v21 = 0;
  }

LABEL_4:
  if (progressCopy)
  {
    progressCopy[2](progressCopy, 100.0);
  }

  v64 = v16;
  if (v20)
  {
    +[NSMutableDictionary dictionary];
    v23 = v21;
    v24 = v22;
    v25 = progressCopy;
    v26 = firmwareCopy;
    v27 = hardwareCopy;
    v28 = v14;
    v30 = v29 = v15;
    [v30 setObject:v20 forKeyedSubscript:@"Previous Error Response"];
    v31 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12292 userInfo:v30];

    v15 = v29;
    v14 = v28;
    hardwareCopy = v27;
    firmwareCopy = v26;
    progressCopy = v25;
    v22 = v24;
    v21 = v23;
    if (!firmwareCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v31 = 0;
  if (firmwareCopy)
  {
LABEL_8:
    firmwareCopy[2](firmwareCopy, v21, 0, v31);
  }

LABEL_9:

  return v31;
}

- (id)prepareFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  progressCopy = progress;
  v12 = [hardwareCopy objectForKeyedSubscript:@"Hardware Partition"];
  v13 = MGCopyAnswer();
  if (v12)
  {
    goto LABEL_8;
  }

  memset(v45, 0, sizeof(v45));
  v14 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:v45];
  if (v14)
  {
    v16 = v14;
LABEL_38:
    v12 = 0;
    if (progressCopy)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (DWORD1(v45[0]) == 4096)
  {
    v15 = 1;
    goto LABEL_7;
  }

  if (DWORD1(v45[0]) != 69632)
  {
    sub_1000134B0(&v43);
    v16 = v43;
    goto LABEL_38;
  }

  v15 = 2;
LABEL_7:
  v12 = [NSNumber numberWithUnsignedLong:v15];
  [hardwareCopy setObject:v12 forKeyedSubscript:@"Hardware Partition"];
LABEL_8:
  if ([v13 containsString:@"arm"])
  {
    v16 = 0;
    if (!progressCopy)
    {
      goto LABEL_29;
    }

LABEL_28:
    progressCopy[2](progressCopy, 100.0);
    goto LABEL_29;
  }

  v17 = [[NSMutableDictionary alloc] initWithCapacity:5];
  if (!v17)
  {
    v17 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v36 = v13;
  v37 = hardwareCopy;
  v38 = firmwareCopy;
  v18 = [(USBCFirmwareUpdater *)self BlessArgumentsWithRemoteReset:1];
  if (v18)
  {
    v19 = [NSString stringWithFormat:@"%u %u", self->super._rid, self->super._address];
    v20 = [NSNumber numberWithInt:500];
    v21 = [NSDictionary dictionaryWithObjectsAndKeys:v18, @"BlessArguments", v20, @"Priority", v19, @"UniqueID", 0, 0];

    [v17 setObject:v21 forKeyedSubscript:@"BlessSettings"];
  }

  selfCopy = self;
  v22 = objc_alloc_init(NSMutableString);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v18;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        if ([v22 length])
        {
          [v22 appendString:@" "];
        }

        [(__CFString *)v28 rangeOfString:@" "];
        v29 = v22;
        if (v30)
        {
          [v22 appendString:@""];
          [v22 appendString:v28];
          v29 = v22;
          v31 = @"";
        }

        else
        {
          v31 = v28;
        }

        [v29 appendString:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v25);
  }

  [(FudPluginDelegate *)selfCopy->super._delegate log:7 format:@"Bless Invocation string: %@", v22];
  v16 = 0;
  hardwareCopy = v37;
  firmwareCopy = v38;
  v13 = v36;
  if (progressCopy)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v16)
  {
    v32 = +[NSMutableDictionary dictionary];
    [v32 setObject:v16 forKeyedSubscript:@"Previous Error Response"];
    v33 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12032 userInfo:v32];

    if (!firmwareCopy)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v33 = 0;
  if (firmwareCopy)
  {
LABEL_31:
    firmwareCopy[2](firmwareCopy, 0, v33);
  }

LABEL_32:

  return v33;
}

- (id)finishFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  progressCopy = progress;
  v12 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v13 = MGCopyAnswer();
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=- Completing Update Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  v47 = hardwareCopy;
  if (self->super._updaterOperational)
  {
    [(USBCUSBFirmwareUpdater *)self setPreferredFirmwarePartition:1];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Completing Reset Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
    if (progressCopy)
    {
      progressCopy[2](progressCopy, 50.0);
    }

    if ([v13 containsString:@"arm"])
    {
      v14 = progressCopy;
    }

    else
    {
      if (!v12)
      {
        v12 = [NSMutableDictionary dictionaryWithCapacity:1];
      }

      v43 = v13;
      v44 = firmwareCopy;
      v46 = progressCopy;
      v23 = [(USBCFirmwareUpdater *)self BlessArgumentsWithRemoteReset:1];
      if (v23)
      {
        v24 = [NSString stringWithFormat:@"%u %u", self->super._rid, self->super._address];
        v25 = [NSNumber numberWithInt:500];
        v26 = [NSDictionary dictionaryWithObjectsAndKeys:v23, @"BlessArguments", v25, @"Priority", v24, @"UniqueID", 0, 0];

        [v12 setObject:v26 forKeyedSubscript:@"BlessSettings"];
      }

      v27 = objc_alloc_init(NSMutableString);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = v23;
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v49;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v49 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v48 + 1) + 8 * i);
            if ([v27 length])
            {
              [v27 appendString:@" "];
            }

            [(__CFString *)v33 rangeOfString:@" "];
            v34 = v27;
            if (v35)
            {
              [v27 appendString:@""];
              [v27 appendString:v33];
              v34 = v27;
              v36 = @"";
            }

            else
            {
              v36 = v33;
            }

            [v34 appendString:v36];
          }

          v30 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v30);
      }

      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Bless Invocation string: %@", v27];
      firmwareCopy = v44;
      v14 = v46;
      v13 = v43;
    }

    v37 = _previouslyUpdatedObjects;
    v38 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
    [v37 setObject:&off_1000277C0 forKeyedSubscript:v38];

    v16 = 0;
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:@"Update Aborted at finish start" forKeyedSubscript:@"Notes"];
    [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13312 userInfo:v15];
    v16 = v45 = progressCopy;
    delegate = self->super._delegate;
    v18 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
    [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    v19 = v13;
    v21 = v20 = v12;
    [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ - Update aborted", v18, v21];

    v12 = v20;
    v13 = v19;

    v22 = [(USBCUSBFirmwareUpdater *)self ExitUpdateMode:0];
    v14 = v45;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Completing Reset Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  v39 = [(USBCUSBFirmwareUpdater *)self ExitUpdateMode:0];
  if (v14)
  {
    v14[2](v14, 100.0);
  }

  if (v16)
  {
    v40 = +[NSMutableDictionary dictionary];
    [v40 setObject:v16 forKeyedSubscript:@"Previous Error Response"];
    v41 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12544 userInfo:v40];

    if (!firmwareCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v41 = 0;
  if (firmwareCopy)
  {
LABEL_29:
    firmwareCopy[2](firmwareCopy, v12, v41);
  }

LABEL_30:

  return v41;
}

- (void)setPreferredFirmwarePartition:(BOOL)partition
{
  partitionCopy = partition;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v9];
  v6 = 0;
  v8 = 0;
  if (!v5)
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"    QApp info:"];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        regionInfo:"];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"            activeRegion:    %u", v9];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"            preferredRegion: %u", BYTE1(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        targetStartAddress: %lu", DWORD1(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        targetEndAddress:   %lu", DWORD2(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        app1Version:        0x%lX", HIDWORD(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        app2Version:        0x%lX", v10];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        bootVersion:        0x%lX", DWORD1(v10)];
    if (HIDWORD(v9) <= v10)
    {
      if (HIDWORD(v9) >= v10)
      {
        [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Not changing preferred region as both partitions have the same firmware"];
        v6 = v9;
        if (v9 == BYTE1(v9))
        {
          if (v9 == 1)
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }
      }

      else if (partitionCopy)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else if (partitionCopy)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v8 = v6;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Setting preferred region to: %u", v6];
  v7 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSWriteReg:&v8 bufferLength:4 registerAddress:9];
  if (!v7)
  {
    v7 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1313296976 withDelay:1000000 canRetry:1 canRecover:1];
  }
}

- (id)applyFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v12 = a5;
  progressCopy = progress;
  memset(__s1, 0, sizeof(__s1));
  sub_10000BA30();
  v13 = [v12 objectForKeyedSubscript:@"Firmware Asset Is Secure"];
  v14 = [v12 objectForKeyedSubscript:@"Firmware Asset File"];
  v150 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];
  v148 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];
  v146 = v12;
  v147 = firmwareCopy;
  v149 = hardwareCopy;
  v144 = v14;
  v145 = v13;
  if (!self->super._updaterOperational)
  {
    v49 = +[NSMutableDictionary dictionary];
    [v49 setObject:@"Update Aborted before it began" forKeyedSubscript:@"Notes"];
    sub_10000BAB0();
    v27 = [v50 errorWithDomain:? code:? userInfo:?];
LABEL_69:
    delegate = self->super._delegate;
    goto LABEL_73;
  }

  if (!v14)
  {
    v49 = +[NSMutableDictionary dictionary];
    [v49 setObject:@"Firmware file was missing" forKeyedSubscript:@"Notes"];
    v52 = 10496;
LABEL_71:
    v27 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v52 userInfo:v49];
    goto LABEL_75;
  }

  [v13 BOOLValue];
  v15 = self->super._delegate;
  v16 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
  deviceSerialNumber = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
  [(FudPluginDelegate *)v15 log:1 format:@"%@ with S/N %@ - Accessory firmware update started", v16, deviceSerialNumber];

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=-= Initiating Update Mode -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  enterUpdateMode = [(USBCUSBFirmwareUpdater *)self EnterUpdateMode];
  if (enterUpdateMode)
  {
    goto LABEL_177;
  }

  sub_10000BA0C();
  if ((v19 & 1) == 0)
  {
    v49 = +[NSMutableDictionary dictionary];
    [v49 setObject:@"Update Aborted at start" forKeyedSubscript:@"Notes"];
    sub_10000BAB0();
    v27 = [v53 errorWithDomain:? code:? userInfo:?];
    delegate = self->super._delegate;
LABEL_73:
    v54 = hardwareCopy;
    goto LABEL_74;
  }

  verifyPowerRole = [(USBCPDAccess *)self->super._pdAccess VerifyPowerRole];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-= Sending Firmware Update Start Command =-=-=-=-=-=-=-=-=-=-=-=-"];
  enterUpdateMode = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1213418566 withDelay:1000000 canRetry:1 canRecover:1];
  if (enterUpdateMode || (sub_10000BA30(), [sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (enterUpdateMode = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_177:
    v27 = enterUpdateMode;
    goto LABEL_76;
  }

  if (LODWORD(__s1[0]))
  {
LABEL_176:
    v27 = 0;
    goto LABEL_76;
  }

  v143 = 40;
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Payload =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  sub_10000BA0C();
  v21 = v150;
  if (v22 != 1)
  {
LABEL_93:
    v49 = +[NSMutableDictionary dictionary];
    [v49 setObject:@"Update Aborted during payload xmit" forKeyedSubscript:@"Notes"];
    goto LABEL_94;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = v23;
    if ([v21 length] <= v23)
    {
      break;
    }

    if ([v21 length] - v23 <= 0x40)
    {
      v26 = [v21 length] - v23;
    }

    else
    {
      v26 = 64;
    }

    sub_10000BA3C();
    v27 = 0;
    v28 = 4;
    while (2)
    {
      v29 = v28;
      if ((sub_10000BA18() & 1) == 0)
      {
        if (!v27)
        {
          goto LABEL_19;
        }

        if (sub_10000BABC())
        {

LABEL_19:
          sub_10000BA60();
          while ((sub_10000BA18() & 1) == 0)
          {
            if (v27)
            {
              if (!sub_10000B97C())
              {
                v33 = +[NSMutableDictionary dictionary];
                [v33 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
                v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13067 userInfo:v33];

                v27 = v13;
                break;
              }
            }

            sub_10000B968();
            sub_10000BA8C();
            v31 = [v30 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
            if (v31 || (sub_10000B99C(), sub_10000BA8C(), [v32 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v27 = v31;
            }

            else
            {
              if (!memcmp(__s1, __s2, v23))
              {
                goto LABEL_33;
              }

              v27 = 0;
            }

            v13 = (v13 - 1);
            if (!v13)
            {
              break;
            }
          }

          if (!v27)
          {
LABEL_33:
            v13 = v26;
            if (v24 != v26)
            {
              sub_10000BA60();
              while ((sub_10000BA18() & 1) == 0)
              {
                if (v27)
                {
                  if (!sub_10000B97C())
                  {
                    +[NSMutableDictionary dictionary];
                    objc_claimAutoreleasedReturnValue();
                    sub_10000BA6C();
                    [v37 setObject:? forKeyedSubscript:?];
                    v38 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13068 userInfo:v13];

                    v27 = v38;
                    break;
                  }
                }

                sub_10000B968();
                sub_10000BAA4();
                v35 = [v34 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
                if (v35 || (sub_10000B99C(), sub_10000BAA4(), [v36 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v27 = v35;
                }

                else
                {
                  if (v26 == __s2[0])
                  {
                    goto LABEL_48;
                  }

                  v27 = 0;
                }

                v13 = (v13 - 1);
                if (!v13)
                {
                  break;
                }
              }

              if (v27)
              {
                goto LABEL_53;
              }

LABEL_48:
              v13 = v26;
            }

            v39 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1414682438 withDelay:1000 canRetry:1 canRecover:1];
            if (v39 || ([sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v27 = v39;
            }

            else
            {
              if (!LOBYTE(__s1[0]))
              {
                v24 = v13;
                goto LABEL_63;
              }

              [(FudPluginDelegate *)self->super._delegate log:7 format:@"            RemoteIECSReadReg:kIECSRegisterData returned: 0x%08X with buffer[0] = 0x%02X", 0, LOBYTE(__s1[0])];
              v40 = self->super._delegate;
              if ((LODWORD(__s1[0]) - 1) < 5)
              {
                [(FudPluginDelegate *)v40 log:7 format:off_100024588[LODWORD(__s1[0]) - 1]];
LABEL_96:
                v49 = +[NSMutableDictionary dictionary];
                sub_10000B954();
                sub_10000BA98();
                v74 = [v73 stringWithFormat:@"FWRT_cmd Command failed.  flashStatus = 0x%02X %02X%02X%02X"];
                [v49 setObject:v74 forKeyedSubscript:@"Notes"];

                v52 = 11018;
                goto LABEL_71;
              }

              v139 = BYTE6(__s1[0]);
              v140 = BYTE7(__s1[0]);
              v137 = BYTE4(__s1[0]);
              v138 = BYTE5(__s1[0]);
              v135 = BYTE2(__s1[0]);
              v136 = HIBYTE(LODWORD(__s1[0]));
              [(FudPluginDelegate *)v40 log:7 format:@"            FWRT_cmd Command returned: %02X %02X%02X%02X %02X%02X%02X%02X", LOBYTE(__s1[0]), BYTE1(__s1[0])];
              if (!v29)
              {
                goto LABEL_96;
              }

              v27 = 0;
            }

            v24 = v13;
          }

LABEL_53:
          v28 = v29 - 1;
          if (v29)
          {
            continue;
          }

          break;
        }

        v41 = +[NSMutableDictionary dictionary];
        [v41 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
        v42 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13066 userInfo:v41];

        v27 = v42;
      }

      break;
    }

    if (v27)
    {
      if (!sub_10000BA18())
      {
        goto LABEL_76;
      }

      +[NSMutableDictionary dictionary];
      objc_claimAutoreleasedReturnValue();
      sub_10000BA6C();
      [v43 setObject:? forKeyedSubscript:?];
      v44 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13070 userInfo:v13];

      if (v44)
      {
        v27 = v44;
        goto LABEL_76;
      }
    }

LABEL_63:
    gEnableDetailLogging = 0;
    v21 = v150;
    if (progressCopy)
    {
      v45 = [v150 length];
      v46 = sub_10000B9D0(v45);
      v47(v46);
    }

    v23 = (v26 + v25);
    sub_10000BA0C();
    if ((v48 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  sub_10000BA0C();
  if ((v69 & 1) == 0)
  {
    goto LABEL_93;
  }

  if ([v21 length] > v23)
  {
    sub_10000BADC();
    sub_10000B954();
    sub_10000B9F0();
    sub_10000BA98();
    [v70 log:7 format:?];
    v49 = +[NSMutableDictionary dictionary];
    v71 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Payload size did not match what the micro was expecting.  Sent = 0x%X.  Expected = 0x%lX", v25, [v21 length]);
    [v49 setObject:v71 forKeyedSubscript:@"Notes"];

    v52 = 11019;
    goto LABEL_71;
  }

  v125 = [v21 length];
  v130 = [v21 length];
  sub_10000BADC();
  if (progressCopy)
  {
    progressCopy[2](90.0);
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Signature =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-", v125, v130];
  hardwareCopy = v149;
  v75 = v148;
  if (!self->super._updaterOperational)
  {
LABEL_167:
    v49 = +[NSMutableDictionary dictionary];
    [v49 setObject:@"Update Aborted during signature xmit" forKeyedSubscript:@"Notes"];
    sub_10000BAB0();
    v27 = [v111 errorWithDomain:? code:? userInfo:?];
    goto LABEL_69;
  }

  v76 = 0;
  v77 = 0;
  v142 = (progressCopy + 2);
  while (1)
  {
    v78 = v76;
    if ([v75 length] <= v76)
    {
      break;
    }

    if ([v75 length] - v76 <= 0x40)
    {
      v79 = [v75 length] - v76;
    }

    else
    {
      v79 = 64;
    }

    sub_10000BA3C();
    v27 = 0;
    v80 = 4;
    v81 = v77;
    while (2)
    {
      v82 = v80;
      if ((sub_10000BA18() & 1) == 0)
      {
        if (!v27)
        {
          goto LABEL_110;
        }

        if (sub_10000BABC())
        {

LABEL_110:
          sub_10000BA60();
          while ((sub_10000BA18() & 1) == 0)
          {
            if (v27)
            {
              if (!sub_10000B97C())
              {
                +[NSMutableDictionary dictionary];
                objc_claimAutoreleasedReturnValue();
                sub_10000BA6C();
                [v86 setObject:? forKeyedSubscript:?];
                v87 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13072 userInfo:v13];

                v27 = v87;
                break;
              }
            }

            sub_10000B968();
            sub_10000BA8C();
            v84 = [v83 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
            if (v84 || (sub_10000B99C(), sub_10000BA8C(), [v85 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v84 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v27 = v84;
            }

            else
            {
              if (!memcmp(__s1, __s2, v76))
              {
                goto LABEL_124;
              }

              v27 = 0;
            }

            v13 = (v13 - 1);
            if (!v13)
            {
              break;
            }
          }

          if (v27)
          {
            goto LABEL_142;
          }

LABEL_124:
          v77 = v79;
          if (v81 != v79)
          {
            sub_10000BA60();
            while ((sub_10000BA18() & 1) == 0)
            {
              if (v27)
              {
                if (!sub_10000B97C())
                {
                  +[NSMutableDictionary dictionary];
                  objc_claimAutoreleasedReturnValue();
                  sub_10000BA6C();
                  [v91 setObject:? forKeyedSubscript:?];
                  v92 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13073 userInfo:v13];

                  v27 = v92;
                  break;
                }
              }

              sub_10000B968();
              sub_10000BAA4();
              v89 = [v88 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
              if (v89 || (sub_10000BA30(), sub_10000B99C(), sub_10000BAA4(), [v90 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v27 = v89;
              }

              else
              {
                if (v79 == __s2[0])
                {
                  goto LABEL_139;
                }

                v27 = 0;
              }

              v13 = (v13 - 1);
              if (!v13)
              {
                break;
              }
            }

            if (v27)
            {
              goto LABEL_142;
            }

LABEL_139:
            v77 = v79;
          }

          v27 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1414682438];
          if (!v27)
          {
            v97 = 5;
            while (v97 && (sub_10000BA18() & 1) == 0)
            {
              if (v27)
              {
                if (![(USBCPDAccess *)self->super._pdAccess attemptErrorRecovery:v27 lastAttempt:v97 == 1])
                {
                  v105 = +[NSMutableDictionary dictionary];
                  [v105 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
                  v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13074 userInfo:v105];

                  v27 = v13;
                  break;
                }
              }

              sub_10000BA30();
              v27 = [sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];
              --v97;
              if (!v27)
              {
                if (!LODWORD(__s1[0]))
                {
                  goto LABEL_146;
                }

                [sub_10000B9AC(0 v98];
                v49 = +[NSMutableDictionary dictionary];
                sub_10000B954();
                sub_10000BA98();
                v124 = @"FWRT_cmd Command failed.  flashStatus = 0x%02X %02X%02X%02X";
                goto LABEL_166;
              }
            }

            if (!v27)
            {
              goto LABEL_146;
            }

            if (sub_10000BA18())
            {
              v106 = +[NSMutableDictionary dictionary];
              [v106 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
              v107 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13075 userInfo:v106];

              v27 = v107;
            }

            goto LABEL_76;
          }

          v81 = v77;
LABEL_142:
          v80 = v82 - 1;
          if (v82)
          {
            continue;
          }

          goto LABEL_76;
        }

        v93 = +[NSMutableDictionary dictionary];
        [v93 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
        v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13071 userInfo:v93];

        v27 = v13;
      }

      break;
    }

    v77 = v81;
    if (v27)
    {
      goto LABEL_76;
    }

LABEL_146:
    v75 = v148;
    if (progressCopy)
    {
      v94 = [v148 length];
      v95 = sub_10000B9D0(v94);
      v96(v95);
    }

    v76 = (v79 + v78);
    hardwareCopy = v149;
    if (!self->super._updaterOperational)
    {
      goto LABEL_167;
    }
  }

  sub_10000BA0C();
  if ((v108 & 1) == 0)
  {
    goto LABEL_167;
  }

  if ([v75 length] > v76)
  {
    sub_10000BADC();
    sub_10000B954();
    sub_10000B9F0();
    sub_10000BA98();
    [v109 log:7 format:?];
    v49 = +[NSMutableDictionary dictionary];
    v129 = v78;
    v134 = [v75 length];
    v124 = @"Signature size did not match what the micro was expecting.  Sent = 0x%X.  Expected = 0x%lX";
    v123 = NSString;
LABEL_166:
    v134 = [v123 stringWithFormat:v124, v129, v134];
    [v49 setObject:v134 forKeyedSubscript:@"Notes"];

    v52 = 11264;
    goto LABEL_71;
  }

  v127 = [v75 length];
  v132 = [v75 length];
  sub_10000BADC();
  if (progressCopy)
  {
    progressCopy[2](95.0);
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Verifying Update Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-", v127, v132];
  enterUpdateMode = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1497781830 withDelay:2000000 canRetry:1 canRecover:1];
  if (enterUpdateMode)
  {
    goto LABEL_177;
  }

  sub_10000BA30();
  enterUpdateMode = [sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];
  if (enterUpdateMode)
  {
    goto LABEL_177;
  }

  if (LODWORD(__s1[0]))
  {
    [sub_10000B9AC(0 v112];
  }

  sub_10000BA0C();
  if (v119)
  {
    v120 = *(&self->super.super.isa + v143);
    v121 = [v149 objectForKeyedSubscript:@"Hardware Device Class"];
    deviceSerialNumber2 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    [v120 log:1 format:{@"%@ with S/N %@ - Accessory firmware update succeeded", v121, deviceSerialNumber2}];

    goto LABEL_176;
  }

  v49 = +[NSMutableDictionary dictionary];
  [v49 setObject:@"Update Aborted after signature xmit" forKeyedSubscript:@"Notes"];
LABEL_94:
  sub_10000BAB0();
  v27 = [v72 errorWithDomain:? code:? userInfo:?];
  delegate = *(&self->super.super.isa + v143);
  v54 = v149;
LABEL_74:
  v55 = [v54 objectForKeyedSubscript:@"Hardware Device Class"];
  deviceSerialNumber3 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
  [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ - Update aborted", v55, deviceSerialNumber3];

  v57 = [(USBCUSBFirmwareUpdater *)self ExitUpdateMode:0];
LABEL_75:

LABEL_76:
  if (progressCopy)
  {
    progressCopy[2](100.0);
  }

  if (v27)
  {
    v59 = v145;
    v58 = v146;
    if ([(USBCPDAccess *)self->super._pdAccess didFailErrorRecovery:v27])
    {
      v60 = +[NSMutableDictionary dictionary];
      [v60 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
      v61 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13076 userInfo:v60];

      v27 = v61;
    }

    v63 = +[NSMutableDictionary dictionary];
    v64 = v63;
    if (v27)
    {
      [v63 setObject:v27 forKeyedSubscript:@"Previous Error Response"];
    }

    v62 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10496 userInfo:v64];

    v65 = self->super._delegate;
    v66 = [v149 objectForKeyedSubscript:@"Hardware Device Class"];
    deviceSerialNumber4 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    [(FudPluginDelegate *)v65 log:1 format:@"%@ with S/N %@ - Accessory firmware update failed: %@", v66, deviceSerialNumber4, v62];

    if (v147)
    {
LABEL_86:
      (v147)[2](v147, 0, v62);
    }
  }

  else
  {
    v62 = 0;
    v59 = v145;
    v58 = v146;
    if (v147)
    {
      goto LABEL_86;
    }
  }

  return v62;
}

@end