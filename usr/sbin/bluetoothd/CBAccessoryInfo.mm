@interface CBAccessoryInfo
- (id)description;
- (void)_powerSourceUpdateWithPartID:(const char *)d;
- (void)powerSourceRemove;
- (void)powerSourceUpdate;
@end

@implementation CBAccessoryInfo

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(CBDevice *)self->_cbDevice identifier];
  v5 = identifier;
  v6 = "yes";
  if (self->_powerSourceIDLeft)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (self->_powerSourceIDRight)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (!self->_powerSourceIDCase)
  {
    v6 = "no";
  }

  v9 = NSPrintF_safe("%@: ID %@, PowerSources Left %s, Right %s, Case %s", v3, identifier, v7, v8, v6);

  return v9;
}

- (void)powerSourceUpdate
{
  if ([(CBDevice *)self->_cbDevice proximityPairingProductID]&& ([(CBDevice *)self->_cbDevice accessoryStatusFlags]& 1) != 0)
  {
    if ([(CBDevice *)self->_cbDevice batteryStateMain])
    {
      return;
    }

    [(CBAccessoryInfo *)self _powerSourceUpdateWithPartID:"Left"];
    [(CBAccessoryInfo *)self _powerSourceUpdateWithPartID:"Right"];
  }

  else
  {
    if (self->_powerSourceIDLeft)
    {
      v3 = IOPSReleasePowerSource();
      if (dword_100B50958 < 31)
      {
        v4 = v3;
        if (dword_100B50958 != -1 || _LogCategory_Initialize())
        {
          sub_100801594(v4);
        }
      }

      self->_powerSourceIDLeft = 0;
    }

    powerSourceDetailsLeft = self->_powerSourceDetailsLeft;
    self->_powerSourceDetailsLeft = 0;

    if (self->_powerSourceIDRight)
    {
      v6 = IOPSReleasePowerSource();
      if (dword_100B50958 < 31)
      {
        v7 = v6;
        if (dword_100B50958 != -1 || _LogCategory_Initialize())
        {
          sub_1008015FC(v7);
        }
      }

      self->_powerSourceIDRight = 0;
    }

    powerSourceDetailsRight = self->_powerSourceDetailsRight;
    self->_powerSourceDetailsRight = 0;
  }

  [(CBAccessoryInfo *)self _powerSourceUpdateWithPartID:"Case"];
}

- (void)powerSourceRemove
{
  if (self->_powerSourceIDLeft)
  {
    v3 = IOPSReleasePowerSource();
    if (dword_100B50958 < 31)
    {
      v4 = v3;
      if (dword_100B50958 != -1 || _LogCategory_Initialize())
      {
        sub_100801664(v4);
      }
    }

    self->_powerSourceIDLeft = 0;
  }

  powerSourceDetailsLeft = self->_powerSourceDetailsLeft;
  self->_powerSourceDetailsLeft = 0;

  if (self->_powerSourceIDRight)
  {
    v6 = IOPSReleasePowerSource();
    if (dword_100B50958 < 31)
    {
      v7 = v6;
      if (dword_100B50958 != -1 || _LogCategory_Initialize())
      {
        sub_1008016CC(v7);
      }
    }

    self->_powerSourceIDRight = 0;
  }

  powerSourceDetailsRight = self->_powerSourceDetailsRight;
  self->_powerSourceDetailsRight = 0;

  if (self->_powerSourceIDCase)
  {
    v9 = IOPSReleasePowerSource();
    if (dword_100B50958 < 31)
    {
      v10 = v9;
      if (dword_100B50958 != -1 || _LogCategory_Initialize())
      {
        sub_100801734(v10);
      }
    }

    self->_powerSourceIDCase = 0;
  }

  powerSourceDetailsCase = self->_powerSourceDetailsCase;
  self->_powerSourceDetailsCase = 0;
}

- (void)_powerSourceUpdateWithPartID:(const char *)d
{
  v5 = self->_cbDevice;
  identifier = [(CBDevice *)v5 identifier];
  if (identifier)
  {
    proximityPairingProductID = [(CBDevice *)v5 proximityPairingProductID];
    proximityPairingProductID2 = [(CBDevice *)v5 proximityPairingProductID];
    selfCopy = self;
    if (proximityPairingProductID2 == 8213)
    {
      v9 = 8212;
    }

    else
    {
      v9 = proximityPairingProductID;
    }

    proximityPairingProductID3 = [(CBDevice *)v5 proximityPairingProductID];
    if (proximityPairingProductID3 == 8216)
    {
      LODWORD(v11) = 8228;
    }

    else
    {
      LODWORD(v11) = v9;
    }

    proximityPairingProductID4 = [(CBDevice *)v5 proximityPairingProductID];
    if (proximityPairingProductID4 == 8220)
    {
      LODWORD(v11) = 8219;
    }

    proximityPairingProductID5 = [(CBDevice *)v5 proximityPairingProductID];
    v11 = proximityPairingProductID5 == 8233 ? 8231 : v11;
    v14 = proximityPairingProductID5 == 8233 || proximityPairingProductID4 == 8220;
    v15 = v14 || proximityPairingProductID3 == 8216;
    if (v15 || proximityPairingProductID2 == 8213)
    {
      if (!strcmp(d, "Left"))
      {
        [(CBDevice *)v5 batteryLevelLeft];
        v18 = v17;
        batteryStateLeft = [(CBDevice *)v5 batteryStateLeft];
        v20 = 24;
        v21 = 16;
      }

      else
      {
        if (strcmp(d, "Right"))
        {
          if (strcmp(d, "Case"))
          {
            if (dword_100B50958 <= 90 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B50958, "[CBAccessoryInfo _powerSourceUpdateWithPartID:]", 90, "### Accessory power source update failed: bad part ID '%s', %@", d, self);
            }

            goto LABEL_151;
          }

          [(CBDevice *)v5 batteryLevelCase];
          v18 = v40;
          batteryStateLeft = [(CBDevice *)v5 batteryStateCase];
          v20 = 56;
          v21 = 48;
          v23 = "Audio Battery Case";
          if (!batteryStateLeft)
          {
            goto LABEL_61;
          }

          goto LABEL_33;
        }

        [(CBDevice *)v5 batteryLevelRight];
        v18 = v22;
        batteryStateLeft = [(CBDevice *)v5 batteryStateRight];
        v20 = 40;
        v21 = 32;
      }

      v23 = "Headset";
      if (!batteryStateLeft)
      {
LABEL_61:
        if (*(&self->super.isa + v20))
        {
          v41 = v20;
          IOPSReleasePowerSource();
          if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
          {
            v42 = CUPrintErrorCode();
            LogPrintF_safe(&dword_100B50958, "[CBAccessoryInfo _powerSourceUpdateWithPartID:]", 30, "Accessory power source remove: state unknown, %s, %@, %@", d, self, v42);
          }

          *(&self->super.isa + v41) = 0;
        }

        v43 = *(&self->super.isa + v21);
        *(&self->super.isa + v21) = 0;

        goto LABEL_151;
      }

LABEL_33:
      v92 = v20;
      v24 = *(&self->super.isa + v21);
      v94 = v24 == 0;
      if (!v24)
      {
        v24 = objc_alloc_init(NSMutableDictionary);
        v25 = *(&self->super.isa + v21);
        *(&self->super.isa + v21) = v24;

        v26 = [NSString stringWithUTF8String:v23];
        sub_10003F060();

        [(objc_class *)v24 setObject:identifier forKeyedSubscript:@"Accessory Identifier"];
        [(objc_class *)v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Is Present"];
        [(objc_class *)v24 setObject:&off_100B33420 forKeyedSubscript:@"Max Capacity"];
        v27 = [NSString stringWithUTF8String:d];
        sub_10003F060();

        v28 = [NSNumber numberWithUnsignedInt:v11];
        sub_10003F060();

        [(objc_class *)v24 setObject:@"Bluetooth LE" forKeyedSubscript:@"Transport Type"];
        [(objc_class *)v24 setObject:@"Accessory Source" forKeyedSubscript:@"Type"];
        [(objc_class *)v24 setObject:&off_100B33438 forKeyedSubscript:@"Vendor ID"];
        v29 = [NSNumber numberWithUnsignedChar:[(CBDevice *)v5 vendorIDSource]];
        sub_10003F060();

        btAddressData = [(CBDevice *)v5 btAddressData];
        v31 = CUPrintNSDataAddress();
        [(objc_class *)v24 setObject:v31 forKeyedSubscript:@"Group Identifier"];
      }

      v32 = strcmp(d, "Case");
      v33 = [(objc_class *)v24 objectForKeyedSubscript:@"Name"];
      if (v32)
      {
        name = [self->_primaryCBDevice name];
        goto LABEL_80;
      }

      proximityPairingProductID6 = [(CBDevice *)v5 proximityPairingProductID];
      if (!(!v14 & v36))
      {
        switch(proximityPairingProductID6)
        {
          case 800:
            goto LABEL_73;
          case 801:
            goto LABEL_72;
          case 802:
            goto LABEL_76;
          case 803:
            v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v38 = v37;
            v39 = @"apple_magic_mouse";
            goto LABEL_78;
          case 804:
            v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v38 = v37;
            v39 = @"apple_magic_trackpad";
            goto LABEL_78;
          default:
            JUMPOUT(0);
        }
      }

      switch(proximityPairingProductID6)
      {
        case 0:
          name = 0;
LABEL_80:
          v93 = identifier;
          if (name)
          {
            v45 = v33;
            v46 = name;
            v47 = v46;
            if (v45 == v46)
            {
            }

            else
            {
              if (v45)
              {
                v48 = [v45 isEqual:v46];

                if (v48)
                {
                  goto LABEL_88;
                }
              }

              else
              {
              }

              sub_10003F060();
              sub_1000E0A60();
            }
          }

LABEL_88:
          if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || (v49 = _LogCategory_Initialize()) != 0))
          {
            LogPrintF_safe(&dword_100B50958, "[CBAccessoryInfo _powerSourceUpdateWithPartID:]", 30, "Accessory power source create with battery level: %d", (v18 * 100.0));
          }

          v50 = [NSNumber numberWithInt:(v18 * 100.0)];
          v51 = [(objc_class *)v24 objectForKeyedSubscript:@"Current Capacity"];
          v52 = v50;
          v53 = v51;
          v54 = v53;
          if (v52 == v53)
          {

            goto LABEL_100;
          }

          if ((v52 != 0) != (v53 == 0))
          {
            v55 = [v52 isEqual:v53];

            if (v55)
            {
LABEL_100:
              v56 = @"Battery Power";
              if (batteryStateLeft == 1)
              {
                v56 = @"AC Power";
              }

              v57 = v56;
              v58 = [(objc_class *)v24 objectForKeyedSubscript:@"Power Source State"];
              v59 = v57;
              v60 = v58;
              v61 = v60;
              v90 = name;
              v91 = v33;
              if (v59 == v60)
              {

                goto LABEL_109;
              }

              if (v60)
              {
                v62 = [(__CFString *)v59 isEqual:v60];

                if (v62)
                {
LABEL_109:
                  if (batteryStateLeft == 1)
                  {
                    v63 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v63 = &__kCFBooleanFalse;
                  }

                  v64 = v63;
                  v65 = [(objc_class *)v24 objectForKeyedSubscript:@"Is Charging"];
                  v66 = v64;
                  v67 = v65;
                  v68 = v67;
                  if (v66 == v67)
                  {

                    goto LABEL_119;
                  }

                  if (v67)
                  {
                    v69 = [v66 isEqual:v67];

                    if (v69)
                    {
LABEL_119:
                      if ((v18 * 100.0) >= 10)
                      {
                        v70 = &__kCFBooleanFalse;
                      }

                      else
                      {
                        v70 = &__kCFBooleanTrue;
                      }

                      v71 = v70;
                      v72 = [(objc_class *)v24 objectForKeyedSubscript:@"Low Warn Level"];
                      v73 = v71;
                      v74 = v72;
                      v75 = v74;
                      if (v73 == v74)
                      {

                        v76 = selfCopy;
                        goto LABEL_129;
                      }

                      v76 = selfCopy;
                      if (v74)
                      {
                        v77 = [v73 isEqual:v74];

                        if (v77)
                        {
LABEL_129:
                          [(CBDevice *)v5 accessoryStatusOBCTime];
                          if ((v78 / 60.0) < 1)
                          {
LABEL_138:
                            v85 = *(&v76->super.isa + v92);
                            v86 = v94;
                            if (!v85)
                            {
                              IOPSCreatePowerSource();
                              v85 = 0;
                              *(&v76->super.isa + v92) = 0;
                              if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || (v88 = _LogCategory_Initialize(), v85 = 0, v88)))
                              {
                                v87 = CUPrintErrorCode();
                                v76 = selfCopy;
                                LogPrintF_safe(&dword_100B50958, "[CBAccessoryInfo _powerSourceUpdateWithPartID:]", 30, "Accessory power source create: %@, power source ID: %s, error return: %@", selfCopy, "no", v87);

                                v86 = 1;
                                v85 = 0;
                              }

                              else
                              {
                                v86 = 1;
                              }
                            }

                            if (v85)
                            {
                              if (v86)
                              {
                                IOPSSetPowerSourceDetails();
                                if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
                                {
                                  v89 = CUPrintErrorCode();
                                  LogPrintF_safe(&dword_100B50958, "[CBAccessoryInfo _powerSourceUpdateWithPartID:]", 30, "Accessory power source update: %@, error: %@, publish power source %@ for device: %@", v76, v89, v24, v5);
                                }
                              }
                            }

                            identifier = v93;
                            goto LABEL_151;
                          }

                          v79 = [NSNumber numberWithInt:?];
                          v80 = [(objc_class *)v24 objectForKeyedSubscript:@"Time to Full Charge"];
                          v81 = v79;
                          v82 = v80;
                          v83 = v82;
                          if (v81 == v82)
                          {
                          }

                          else
                          {
                            if ((v81 != 0) != (v82 == 0))
                            {
                              v84 = [v81 isEqual:v82];

                              if (v84)
                              {
                                goto LABEL_137;
                              }
                            }

                            else
                            {
                            }

                            [(objc_class *)v24 setObject:v81 forKeyedSubscript:@"Time to Full Charge"];
                            sub_1000E0A60();
                          }

LABEL_137:

                          goto LABEL_138;
                        }
                      }

                      else
                      {
                      }

                      [(objc_class *)v24 setObject:v73 forKeyedSubscript:@"Low Warn Level"];
                      sub_1000E0A60();
                      goto LABEL_129;
                    }
                  }

                  else
                  {
                  }

                  [(objc_class *)v24 setObject:v66 forKeyedSubscript:@"Is Charging"];
                  sub_1000E0A60();
                  goto LABEL_119;
                }
              }

              else
              {
              }

              [(objc_class *)v24 setObject:v59 forKeyedSubscript:@"Power Source State"];
              sub_1000E0A60();
              goto LABEL_109;
            }
          }

          else
          {
          }

          [(objc_class *)v24 setObject:v52 forKeyedSubscript:@"Current Capacity"];
          sub_1000E0A60();
          goto LABEL_100;
        case 0x208:
        case 0x209:
        case 0x20A:
        case 0x22C:
        case 0x22D:
        case 0x22E:
        case 0x239:
        case 0x23A:
        case 0x23B:
        case 0x255:
        case 0x256:
        case 0x257:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_wireless_keyboard";
          break;
        case 0x29A:
LABEL_72:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_magic_keyboard_touch";
          break;
        case 0x29C:
LABEL_73:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_magic_keyboard";
          break;
        case 0x29F:
LABEL_76:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_magic_keyboard_touch_keypad";
          break;
        case 0x2029:
        case 0x2018:
        case 0x201C:
        case 0x2015:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_airpods_case";
          break;
        default:
          v38 = [CBProductInfo productInfoWithProductID:proximityPairingProductID6];
          productName = [v38 productName];
LABEL_79:
          name = productName;

          goto LABEL_80;
      }

LABEL_78:
      productName = [v37 localizedStringForKey:v39 value:&stru_100B0F9E0 table:@"CBLocalizable"];
      goto LABEL_79;
    }
  }

LABEL_151:
}

@end