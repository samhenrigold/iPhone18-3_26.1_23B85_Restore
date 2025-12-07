@interface CBControllerSettings
- (CBControllerSettings)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBControllerSettings

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  discoverableState = self->_discoverableState;
  xdict = objectCopy;
  if (discoverableState)
  {
    xpc_dictionary_set_int64(objectCopy, "dsSt", discoverableState);
    objectCopy = xdict;
  }

  if (self->_gameControllerAutoSwitchMode)
  {
    xpc_dictionary_set_int64(xdict, "gAsM", self->_gameControllerAutoSwitchMode);
    objectCopy = xdict;
  }

  if (self->_gameControllerUSBBluetoothPairing)
  {
    xpc_dictionary_set_int64(xdict, "gUbP", self->_gameControllerUSBBluetoothPairing);
    objectCopy = xdict;
  }

  if (self->_hid3ppLELegacyMode)
  {
    xpc_dictionary_set_int64(xdict, "hFMs", self->_hid3ppLELegacyMode);
    objectCopy = xdict;
  }

  if (self->_bleAdvRSSI)
  {
    xpc_dictionary_set_int64(xdict, "rssi", self->_bleAdvRSSI);
    objectCopy = xdict;
  }

  if (self->_setupAssistantIfNoKeyboard)
  {
    xpc_dictionary_set_int64(xdict, "saKB", self->_setupAssistantIfNoKeyboard);
    objectCopy = xdict;
  }

  if (self->_setupAssistantIfNoPointingDevice)
  {
    xpc_dictionary_set_int64(xdict, "saPD", self->_setupAssistantIfNoPointingDevice);
    objectCopy = xdict;
  }

  if (self->_spatialSoundProfileAllowed)
  {
    xpc_dictionary_set_int64(xdict, "spSP", self->_spatialSoundProfileAllowed);
    objectCopy = xdict;
  }
}

- (id)descriptionWithLevel:(int)level
{
  if (level <= 0x14u)
  {
    v63 = 0;
    discoverableState = self->_discoverableState;
    if (discoverableState > 2)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_1E811E680[discoverableState];
    }

    NSAppendPrintF_safe(&v63, "Discoverable: %s\n", v5);
    v9 = v63;
    v62 = v9;
    gameControllerAutoSwitchMode = self->_gameControllerAutoSwitchMode;
    if (gameControllerAutoSwitchMode > 2)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1E811E698[gameControllerAutoSwitchMode];
    }

    NSAppendPrintF_safe(&v62, "Classic GC autoswitch mode: %s\n", v11);
    v15 = v62;

    v61 = v15;
    gameControllerUSBBluetoothPairing = self->_gameControllerUSBBluetoothPairing;
    if (gameControllerUSBBluetoothPairing > 2)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_1E811E698[gameControllerUSBBluetoothPairing];
    }

    NSAppendPrintF_safe(&v61, "Classic GC USBBT Pairing: %s\n", v17);
    v21 = v61;

    v60 = v21;
    hid3ppLELegacyMode = self->_hid3ppLELegacyMode;
    if (hid3ppLELegacyMode > 2)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1E811E698[hid3ppLELegacyMode];
    }

    NSAppendPrintF_safe(&v60, "3pp LE HID 7.5ms With Audio Device: %s\n", v23);
    v27 = v60;

    v59 = v27;
    NSAppendPrintF_safe(&v59, "LE Advertising RSSI for virtual controller: %d\n", self->_bleAdvRSSI);
    v28 = v59;

    v58 = v28;
    setupAssistantIfNoKeyboard = self->_setupAssistantIfNoKeyboard;
    if (setupAssistantIfNoKeyboard > 2)
    {
      v30 = "?";
    }

    else
    {
      v30 = off_1E811E698[setupAssistantIfNoKeyboard];
    }

    NSAppendPrintF_safe(&v58, "Setup Assistant Keyboard: %s\n", v30);
    v35 = v58;

    v57 = v35;
    setupAssistantIfNoPointingDevice = self->_setupAssistantIfNoPointingDevice;
    if (setupAssistantIfNoPointingDevice > 2)
    {
      v37 = "?";
    }

    else
    {
      v37 = off_1E811E698[setupAssistantIfNoPointingDevice];
    }

    NSAppendPrintF_safe(&v57, "Setup Assistant Pointing: %s\n", v37);
    v41 = v57;

    v56 = v41;
    v42 = &v56;
    NSAppendPrintF_safe(&v56, "Spatial Spatial Profile Allowed: %s\n");
    goto LABEL_42;
  }

  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
    v54 = 0;
    v7 = self->_discoverableState;
    if (v7 > 2)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = off_1E811E680[v7];
    goto LABEL_12;
  }

  v55 = 0;
  NSAppendPrintF_safe(&v55, "CBControllerSettings");
  v6 = v55;
  v54 = v6;
  v7 = self->_discoverableState;
  if (v7 <= 2)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = "?";
LABEL_12:
  NSAppendPrintF_safe(&v54, ", dsSt %s", v8);
  v12 = v54;

  v53 = v12;
  v13 = self->_gameControllerAutoSwitchMode;
  if (v13 > 2)
  {
    v14 = "?";
  }

  else
  {
    v14 = off_1E811E698[v13];
  }

  NSAppendPrintF_safe(&v53, ", gAsM %s", v14);
  v18 = v53;

  v52 = v18;
  v19 = self->_gameControllerUSBBluetoothPairing;
  if (v19 > 2)
  {
    v20 = "?";
  }

  else
  {
    v20 = off_1E811E698[v19];
  }

  NSAppendPrintF_safe(&v52, ", gUbP %s", v20);
  v24 = v52;

  v51 = v24;
  v25 = self->_hid3ppLELegacyMode;
  if (v25 > 2)
  {
    v26 = "?";
  }

  else
  {
    v26 = off_1E811E698[v25];
  }

  NSAppendPrintF_safe(&v51, ", hwAE %s", v26);
  v31 = v51;

  v50 = v31;
  NSAppendPrintF_safe(&v50, ", rssi %d", self->_bleAdvRSSI);
  v32 = v50;

  v49 = v32;
  v33 = self->_setupAssistantIfNoKeyboard;
  if (v33 > 2)
  {
    v34 = "?";
  }

  else
  {
    v34 = off_1E811E698[v33];
  }

  NSAppendPrintF_safe(&v49, ", saKB %s", v34);
  v38 = v49;

  v48 = v38;
  v39 = self->_setupAssistantIfNoPointingDevice;
  if (v39 > 2)
  {
    v40 = "?";
  }

  else
  {
    v40 = off_1E811E698[v39];
  }

  NSAppendPrintF_safe(&v48, ", saPD %s", v40);
  v41 = v48;

  v42 = &v47;
  NSAppendPrintF_safe(&v47, ", spSP %s");
LABEL_42:
  v43 = *v42;

  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = &stru_1F40009C8;
  }

  v45 = v44;

  return v44;
}

- (CBControllerSettings)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      v35 = [objc_opt_class() description];
      *v5 = CBErrorF(-6756, "%@ init failed", v36, v37, v38, v39, v40, v41, v35);
    }

    goto LABEL_33;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v42 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v43);
      OUTLINED_FUNCTION_16(v42);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v14 = OUTLINED_FUNCTION_4();
  v19 = OUTLINED_FUNCTION_15(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_33;
  }

  v21 = OUTLINED_FUNCTION_1_3(v19, "gAsM", v20);
  if (v21 == 6)
  {
    *(v7 + 8) = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_33;
  }

  v23 = OUTLINED_FUNCTION_1_3(v21, "gUbP", v22);
  if (v23 == 6)
  {
    *(v7 + 9) = 0;
  }

  else if (v23 == 5)
  {
    goto LABEL_33;
  }

  v25 = OUTLINED_FUNCTION_1_3(v23, "hFMs", v24);
  if (v25 == 6)
  {
    *(v7 + 10) = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_33;
  }

  v27 = OUTLINED_FUNCTION_1_3(v25, "rssi", v26);
  if (v27 == 6)
  {
    *(v7 + 14) = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_33;
  }

  v29 = OUTLINED_FUNCTION_1_3(v27, "saKB", v28);
  if (v29 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_33;
  }

  v31 = OUTLINED_FUNCTION_1_3(v29, "saPD", v30);
  if (v31 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_33;
  }

  v33 = OUTLINED_FUNCTION_1_3(v31, "spSP", v32);
  if (v33 != 6)
  {
    if (v33 != 5)
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

@end