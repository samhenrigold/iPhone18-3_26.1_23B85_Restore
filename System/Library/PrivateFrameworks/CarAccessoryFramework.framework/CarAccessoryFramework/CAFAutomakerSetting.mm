@interface CAFAutomakerSetting
+ (void)load;
- (BOOL)disabled;
- (BOOL)hasDisabled;
- (BOOL)hasHidden;
- (BOOL)hasLimitableUIElement;
- (BOOL)hasProminenceInfo;
- (BOOL)hasSectionIdentifier;
- (BOOL)hasShowAudioBrandLogo;
- (BOOL)hasSortOrder;
- (BOOL)hasSymbolName;
- (BOOL)hasVehicleLayoutKey;
- (BOOL)hidden;
- (BOOL)limitableUIElement;
- (BOOL)registeredForDisabled;
- (BOOL)registeredForHidden;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForLimitableUIElement;
- (BOOL)registeredForProminenceInfo;
- (BOOL)registeredForSectionIdentifier;
- (BOOL)registeredForSettingsCategory;
- (BOOL)registeredForShowAudioBrandLogo;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForSymbolName;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)registeredForVehicleLayoutKey;
- (BOOL)showAudioBrandLogo;
- (CAFBoolCharacteristic)disabledCharacteristic;
- (CAFBoolCharacteristic)hiddenCharacteristic;
- (CAFBoolCharacteristic)limitableUIElementCharacteristic;
- (CAFBoolCharacteristic)showAudioBrandLogoCharacteristic;
- (CAFProminenceInformation)prominenceInfo;
- (CAFProminenceInformationCharacteristic)prominenceInfoCharacteristic;
- (CAFSettingsCategoryCharacteristic)categoryCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)sectionIdentifierCharacteristic;
- (CAFStringCharacteristic)symbolNameCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSString)identifier;
- (NSString)sectionIdentifier;
- (NSString)symbolName;
- (NSString)userVisibleLabel;
- (NSString)vehicleLayoutKey;
- (unsigned)category;
- (unsigned)sortOrder;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAutomakerSetting

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFAutomakerSetting;
    objc_msgSendSuper2(&v4, sel_load);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutomakerSetting;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutomakerSetting;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)userVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFAutomakerSetting *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)sectionIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000028"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000028"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)sectionIdentifier
{
  sectionIdentifierCharacteristic = [(CAFAutomakerSetting *)self sectionIdentifierCharacteristic];
  stringValue = [sectionIdentifierCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasSectionIdentifier
{
  sectionIdentifierCharacteristic = [(CAFAutomakerSetting *)self sectionIdentifierCharacteristic];
  v3 = sectionIdentifierCharacteristic != 0;

  return v3;
}

- (CAFUInt8Characteristic)sortOrderCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000003"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)sortOrder
{
  sortOrderCharacteristic = [(CAFAutomakerSetting *)self sortOrderCharacteristic];
  uint8Value = [sortOrderCharacteristic uint8Value];

  return uint8Value;
}

- (BOOL)hasSortOrder
{
  sortOrderCharacteristic = [(CAFAutomakerSetting *)self sortOrderCharacteristic];
  v3 = sortOrderCharacteristic != 0;

  return v3;
}

- (CAFSettingsCategoryCharacteristic)categoryCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000006"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)category
{
  categoryCharacteristic = [(CAFAutomakerSetting *)self categoryCharacteristic];
  settingsCategoryValue = [categoryCharacteristic settingsCategoryValue];

  return settingsCategoryValue;
}

- (CAFStringCharacteristic)identifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000019"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)identifier
{
  identifierCharacteristic = [(CAFAutomakerSetting *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFBoolCharacteristic)disabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000011"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)disabled
{
  disabledCharacteristic = [(CAFAutomakerSetting *)self disabledCharacteristic];
  bOOLValue = [disabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasDisabled
{
  disabledCharacteristic = [(CAFAutomakerSetting *)self disabledCharacteristic];
  v3 = disabledCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)limitableUIElementCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000021"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)limitableUIElement
{
  limitableUIElementCharacteristic = [(CAFAutomakerSetting *)self limitableUIElementCharacteristic];
  bOOLValue = [limitableUIElementCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasLimitableUIElement
{
  limitableUIElementCharacteristic = [(CAFAutomakerSetting *)self limitableUIElementCharacteristic];
  v3 = limitableUIElementCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)hiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000023"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hidden
{
  hiddenCharacteristic = [(CAFAutomakerSetting *)self hiddenCharacteristic];
  bOOLValue = [hiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHidden
{
  hiddenCharacteristic = [(CAFAutomakerSetting *)self hiddenCharacteristic];
  v3 = hiddenCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)showAudioBrandLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000011"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)showAudioBrandLogo
{
  showAudioBrandLogoCharacteristic = [(CAFAutomakerSetting *)self showAudioBrandLogoCharacteristic];
  bOOLValue = [showAudioBrandLogoCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasShowAudioBrandLogo
{
  showAudioBrandLogoCharacteristic = [(CAFAutomakerSetting *)self showAudioBrandLogoCharacteristic];
  v3 = showAudioBrandLogoCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000065"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)vehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFAutomakerSetting *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFAutomakerSetting *)self vehicleLayoutKeyCharacteristic];
  v3 = vehicleLayoutKeyCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)symbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000005E"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)symbolName
{
  symbolNameCharacteristic = [(CAFAutomakerSetting *)self symbolNameCharacteristic];
  stringValue = [symbolNameCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasSymbolName
{
  symbolNameCharacteristic = [(CAFAutomakerSetting *)self symbolNameCharacteristic];
  v3 = symbolNameCharacteristic != 0;

  return v3;
}

- (CAFProminenceInformationCharacteristic)prominenceInfoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000020"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000020"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFProminenceInformation)prominenceInfo
{
  prominenceInfoCharacteristic = [(CAFAutomakerSetting *)self prominenceInfoCharacteristic];
  prominenceInformationValue = [prominenceInfoCharacteristic prominenceInformationValue];

  return prominenceInformationValue;
}

- (BOOL)hasProminenceInfo
{
  prominenceInfoCharacteristic = [(CAFAutomakerSetting *)self prominenceInfoCharacteristic];
  v3 = prominenceInfoCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    userVisibleLabelCharacteristic = [(CAFAutomakerSetting *)self userVisibleLabelCharacteristic];
    uniqueIdentifier2 = [userVisibleLabelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFAutomakerSetting *)self userVisibleLabel];
      [observers automakerSettingService:self didUpdateUserVisibleLabel:userVisibleLabel];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000028"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    sectionIdentifierCharacteristic = [(CAFAutomakerSetting *)self sectionIdentifierCharacteristic];
    uniqueIdentifier4 = [sectionIdentifierCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFAutomakerSetting *)self sectionIdentifier];
      [observers automakerSettingService:self didUpdateSectionIdentifier:userVisibleLabel];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if (([characteristicType3 isEqual:@"0x0000000030000003"] & 1) == 0)
  {

LABEL_13:
    characteristicType4 = [updateCopy characteristicType];
    if ([characteristicType4 isEqual:@"0x0000000036000006"])
    {
      uniqueIdentifier5 = [updateCopy uniqueIdentifier];
      categoryCharacteristic = [(CAFAutomakerSetting *)self categoryCharacteristic];
      uniqueIdentifier6 = [categoryCharacteristic uniqueIdentifier];
      v28 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

      if (v28)
      {
        observers = [(CAFService *)self observers];
        [observers automakerSettingService:self didUpdateCategory:{-[CAFAutomakerSetting category](self, "category")}];
        goto LABEL_21;
      }
    }

    else
    {
    }

    characteristicType5 = [updateCopy characteristicType];
    if ([characteristicType5 isEqual:@"0x0000000030000019"])
    {
      uniqueIdentifier7 = [updateCopy uniqueIdentifier];
      identifierCharacteristic = [(CAFAutomakerSetting *)self identifierCharacteristic];
      uniqueIdentifier8 = [identifierCharacteristic uniqueIdentifier];
      v33 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

      if (v33)
      {
        observers = [(CAFService *)self observers];
        userVisibleLabel = [(CAFAutomakerSetting *)self identifier];
        [observers automakerSettingService:self didUpdateIdentifier:userVisibleLabel];
        goto LABEL_20;
      }
    }

    else
    {
    }

    characteristicType6 = [updateCopy characteristicType];
    if ([characteristicType6 isEqual:@"0x0000000032000011"])
    {
      uniqueIdentifier9 = [updateCopy uniqueIdentifier];
      disabledCharacteristic = [(CAFAutomakerSetting *)self disabledCharacteristic];
      uniqueIdentifier10 = [disabledCharacteristic uniqueIdentifier];
      v38 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

      if (v38)
      {
        observers = [(CAFService *)self observers];
        [observers automakerSettingService:self didUpdateDisabled:{-[CAFAutomakerSetting disabled](self, "disabled")}];
        goto LABEL_21;
      }
    }

    else
    {
    }

    characteristicType7 = [updateCopy characteristicType];
    if ([characteristicType7 isEqual:@"0x0000000036000021"])
    {
      uniqueIdentifier11 = [updateCopy uniqueIdentifier];
      limitableUIElementCharacteristic = [(CAFAutomakerSetting *)self limitableUIElementCharacteristic];
      uniqueIdentifier12 = [limitableUIElementCharacteristic uniqueIdentifier];
      v43 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

      if (v43)
      {
        observers = [(CAFService *)self observers];
        [observers automakerSettingService:self didUpdateLimitableUIElement:{-[CAFAutomakerSetting limitableUIElement](self, "limitableUIElement")}];
        goto LABEL_21;
      }
    }

    else
    {
    }

    characteristicType8 = [updateCopy characteristicType];
    if ([characteristicType8 isEqual:@"0x0000000036000023"])
    {
      uniqueIdentifier13 = [updateCopy uniqueIdentifier];
      hiddenCharacteristic = [(CAFAutomakerSetting *)self hiddenCharacteristic];
      uniqueIdentifier14 = [hiddenCharacteristic uniqueIdentifier];
      v48 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

      if (v48)
      {
        observers = [(CAFService *)self observers];
        [observers automakerSettingService:self didUpdateHidden:{-[CAFAutomakerSetting hidden](self, "hidden")}];
        goto LABEL_21;
      }
    }

    else
    {
    }

    characteristicType9 = [updateCopy characteristicType];
    if ([characteristicType9 isEqual:@"0x0000000036000011"])
    {
      uniqueIdentifier15 = [updateCopy uniqueIdentifier];
      showAudioBrandLogoCharacteristic = [(CAFAutomakerSetting *)self showAudioBrandLogoCharacteristic];
      uniqueIdentifier16 = [showAudioBrandLogoCharacteristic uniqueIdentifier];
      v53 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

      if (v53)
      {
        observers = [(CAFService *)self observers];
        [observers automakerSettingService:self didUpdateShowAudioBrandLogo:{-[CAFAutomakerSetting showAudioBrandLogo](self, "showAudioBrandLogo")}];
        goto LABEL_21;
      }
    }

    else
    {
    }

    characteristicType10 = [updateCopy characteristicType];
    if ([characteristicType10 isEqual:@"0x0000000036000065"])
    {
      uniqueIdentifier17 = [updateCopy uniqueIdentifier];
      vehicleLayoutKeyCharacteristic = [(CAFAutomakerSetting *)self vehicleLayoutKeyCharacteristic];
      uniqueIdentifier18 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
      v58 = [uniqueIdentifier17 isEqual:uniqueIdentifier18];

      if (v58)
      {
        observers = [(CAFService *)self observers];
        userVisibleLabel = [(CAFAutomakerSetting *)self vehicleLayoutKey];
        [observers automakerSettingService:self didUpdateVehicleLayoutKey:userVisibleLabel];
        goto LABEL_20;
      }
    }

    else
    {
    }

    characteristicType11 = [updateCopy characteristicType];
    if ([characteristicType11 isEqual:@"0x000000003000005E"])
    {
      uniqueIdentifier19 = [updateCopy uniqueIdentifier];
      symbolNameCharacteristic = [(CAFAutomakerSetting *)self symbolNameCharacteristic];
      uniqueIdentifier20 = [symbolNameCharacteristic uniqueIdentifier];
      v63 = [uniqueIdentifier19 isEqual:uniqueIdentifier20];

      if (v63)
      {
        observers = [(CAFService *)self observers];
        userVisibleLabel = [(CAFAutomakerSetting *)self symbolName];
        [observers automakerSettingService:self didUpdateSymbolName:userVisibleLabel];
        goto LABEL_20;
      }
    }

    else
    {
    }

    observers = [updateCopy characteristicType];
    if (![observers isEqual:@"0x0000000036000020"])
    {
      goto LABEL_21;
    }

    uniqueIdentifier21 = [updateCopy uniqueIdentifier];
    prominenceInfoCharacteristic = [(CAFAutomakerSetting *)self prominenceInfoCharacteristic];
    uniqueIdentifier22 = [prominenceInfoCharacteristic uniqueIdentifier];
    v67 = [uniqueIdentifier21 isEqual:uniqueIdentifier22];

    if (!v67)
    {
      goto LABEL_22;
    }

    observers = [(CAFService *)self observers];
    userVisibleLabel = [(CAFAutomakerSetting *)self prominenceInfo];
    [observers automakerSettingService:self didUpdateProminenceInfo:userVisibleLabel];
    goto LABEL_20;
  }

  uniqueIdentifier23 = [updateCopy uniqueIdentifier];
  sortOrderCharacteristic = [(CAFAutomakerSetting *)self sortOrderCharacteristic];
  uniqueIdentifier24 = [sortOrderCharacteristic uniqueIdentifier];
  v23 = [uniqueIdentifier23 isEqual:uniqueIdentifier24];

  if (!v23)
  {
    goto LABEL_13;
  }

  observers = [(CAFService *)self observers];
  [observers automakerSettingService:self didUpdateSortOrder:{-[CAFAutomakerSetting sortOrder](self, "sortOrder")}];
LABEL_21:

LABEL_22:
  v68.receiver = self;
  v68.super_class = CAFAutomakerSetting;
  [(CAFService *)&v68 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForSectionIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000028"];

  return v10;
}

- (BOOL)registeredForSortOrder
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000003"];

  return v10;
}

- (BOOL)registeredForSettingsCategory
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000006"];

  return v10;
}

- (BOOL)registeredForIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  return v10;
}

- (BOOL)registeredForDisabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000011"];

  return v10;
}

- (BOOL)registeredForLimitableUIElement
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000021"];

  return v10;
}

- (BOOL)registeredForHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  return v10;
}

- (BOOL)registeredForShowAudioBrandLogo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000011"];

  return v10;
}

- (BOOL)registeredForVehicleLayoutKey
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  return v10;
}

- (BOOL)registeredForSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005E"];

  return v10;
}

- (BOOL)registeredForProminenceInfo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000020"];

  return v10;
}

@end