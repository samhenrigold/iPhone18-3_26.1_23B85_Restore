@interface CAFIntegerSetting
+ (void)load;
- (BOOL)hasMaximumSymbolName;
- (BOOL)hasMinimumSymbolName;
- (BOOL)hasStepperBarHidden;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)hasUserVisibleValue;
- (BOOL)registeredForInt32Value;
- (BOOL)registeredForMaximumSymbolName;
- (BOOL)registeredForMinimumSymbolName;
- (BOOL)registeredForStepperBarHidden;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (BOOL)registeredForUserVisibleValue;
- (BOOL)stepperBarHidden;
- (CAFBoolCharacteristic)stepperBarHiddenCharacteristic;
- (CAFInt32Characteristic)valueCharacteristic;
- (CAFInt32Range)valueRange;
- (CAFStringCharacteristic)maximumSymbolNameCharacteristic;
- (CAFStringCharacteristic)minimumSymbolNameCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleValueCharacteristic;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSString)maximumSymbolName;
- (NSString)minimumSymbolName;
- (NSString)userVisibleDescription;
- (NSString)userVisibleValue;
- (id)name;
- (int)value;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setValue:(int)value;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFIntegerSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFIntegerSetting;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A5928])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFIntegerSetting;
  [(CAFAutomakerSetting *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A5928])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFIntegerSetting;
  [(CAFAutomakerSetting *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  categoryCharacteristic = [(CAFAutomakerSetting *)self categoryCharacteristic];
  formattedValue = [categoryCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  userVisibleLabelCharacteristic = [(CAFAutomakerSetting *)self userVisibleLabelCharacteristic];
  formattedValue2 = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFInt32Characteristic)valueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000010"];
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

- (int)value
{
  valueCharacteristic = [(CAFIntegerSetting *)self valueCharacteristic];
  int32Value = [valueCharacteristic int32Value];

  return int32Value;
}

- (void)setValue:(int)value
{
  v3 = *&value;
  valueCharacteristic = [(CAFIntegerSetting *)self valueCharacteristic];
  [valueCharacteristic setInt32Value:v3];
}

- (CAFInt32Range)valueRange
{
  valueCharacteristic = [(CAFIntegerSetting *)self valueCharacteristic];
  range = [valueCharacteristic range];

  return range;
}

- (CAFStringCharacteristic)userVisibleValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000017"];
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

- (NSString)userVisibleValue
{
  userVisibleValueCharacteristic = [(CAFIntegerSetting *)self userVisibleValueCharacteristic];
  stringValue = [userVisibleValueCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleValue
{
  userVisibleValueCharacteristic = [(CAFIntegerSetting *)self userVisibleValueCharacteristic];
  v3 = userVisibleValueCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000005"];
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

- (NSString)userVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFIntegerSetting *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFIntegerSetting *)self userVisibleDescriptionCharacteristic];
  v3 = userVisibleDescriptionCharacteristic != 0;

  return v3;
}

- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000029"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000029"];
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

- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFIntegerSetting *)self userVisibleDetailedDescriptionCharacteristic];
  userVisibleDetailedDescriptionValue = [userVisibleDetailedDescriptionCharacteristic userVisibleDetailedDescriptionValue];

  return userVisibleDetailedDescriptionValue;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFIntegerSetting *)self userVisibleDetailedDescriptionCharacteristic];
  v3 = userVisibleDetailedDescriptionCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)maximumSymbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000026"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000026"];
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

- (NSString)maximumSymbolName
{
  maximumSymbolNameCharacteristic = [(CAFIntegerSetting *)self maximumSymbolNameCharacteristic];
  stringValue = [maximumSymbolNameCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasMaximumSymbolName
{
  maximumSymbolNameCharacteristic = [(CAFIntegerSetting *)self maximumSymbolNameCharacteristic];
  v3 = maximumSymbolNameCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)minimumSymbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000025"];
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

- (NSString)minimumSymbolName
{
  minimumSymbolNameCharacteristic = [(CAFIntegerSetting *)self minimumSymbolNameCharacteristic];
  stringValue = [minimumSymbolNameCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasMinimumSymbolName
{
  minimumSymbolNameCharacteristic = [(CAFIntegerSetting *)self minimumSymbolNameCharacteristic];
  v3 = minimumSymbolNameCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)stepperBarHiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000027"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000027"];
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

- (BOOL)stepperBarHidden
{
  stepperBarHiddenCharacteristic = [(CAFIntegerSetting *)self stepperBarHiddenCharacteristic];
  bOOLValue = [stepperBarHiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasStepperBarHidden
{
  stepperBarHiddenCharacteristic = [(CAFIntegerSetting *)self stepperBarHiddenCharacteristic];
  v3 = stepperBarHiddenCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000010"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    valueCharacteristic = [(CAFIntegerSetting *)self valueCharacteristic];
    uniqueIdentifier2 = [valueCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers integerSettingService:self didUpdateValue:{-[CAFIntegerSetting value](self, "value")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000017"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleValueCharacteristic = [(CAFIntegerSetting *)self userVisibleValueCharacteristic];
    uniqueIdentifier4 = [userVisibleValueCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFIntegerSetting *)self userVisibleValue];
      [observers integerSettingService:self didUpdateUserVisibleValue:userVisibleValue];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000005"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    userVisibleDescriptionCharacteristic = [(CAFIntegerSetting *)self userVisibleDescriptionCharacteristic];
    uniqueIdentifier6 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFIntegerSetting *)self userVisibleDescription];
      [observers integerSettingService:self didUpdateUserVisibleDescription:userVisibleValue];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000036000029"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    userVisibleDetailedDescriptionCharacteristic = [(CAFIntegerSetting *)self userVisibleDetailedDescriptionCharacteristic];
    uniqueIdentifier8 = [userVisibleDetailedDescriptionCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFIntegerSetting *)self userVisibleDetailedDescription];
      [observers integerSettingService:self didUpdateUserVisibleDetailedDescription:userVisibleValue];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x0000000036000026"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    maximumSymbolNameCharacteristic = [(CAFIntegerSetting *)self maximumSymbolNameCharacteristic];
    uniqueIdentifier10 = [maximumSymbolNameCharacteristic uniqueIdentifier];
    v33 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v33)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFIntegerSetting *)self maximumSymbolName];
      [observers integerSettingService:self didUpdateMaximumSymbolName:userVisibleValue];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType6 = [updateCopy characteristicType];
  if ([characteristicType6 isEqual:@"0x0000000036000025"])
  {
    uniqueIdentifier11 = [updateCopy uniqueIdentifier];
    minimumSymbolNameCharacteristic = [(CAFIntegerSetting *)self minimumSymbolNameCharacteristic];
    uniqueIdentifier12 = [minimumSymbolNameCharacteristic uniqueIdentifier];
    v38 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

    if (v38)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFIntegerSetting *)self minimumSymbolName];
      [observers integerSettingService:self didUpdateMinimumSymbolName:userVisibleValue];
      goto LABEL_24;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if ([observers isEqual:@"0x0000000036000027"])
  {
    uniqueIdentifier13 = [updateCopy uniqueIdentifier];
    stepperBarHiddenCharacteristic = [(CAFIntegerSetting *)self stepperBarHiddenCharacteristic];
    uniqueIdentifier14 = [stepperBarHiddenCharacteristic uniqueIdentifier];
    v42 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

    if (!v42)
    {
      goto LABEL_26;
    }

    observers = [(CAFService *)self observers];
    [observers integerSettingService:self didUpdateStepperBarHidden:{-[CAFIntegerSetting stepperBarHidden](self, "stepperBarHidden")}];
  }

LABEL_25:

LABEL_26:
  v43.receiver = self;
  v43.super_class = CAFIntegerSetting;
  [(CAFAutomakerSetting *)&v43 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForInt32Value
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000010"];

  return v10;
}

- (BOOL)registeredForUserVisibleValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000017"];

  return v10;
}

- (BOOL)registeredForUserVisibleDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

  return v10;
}

- (BOOL)registeredForUserVisibleDetailedDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000029"];

  return v10;
}

- (BOOL)registeredForMaximumSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000026"];

  return v10;
}

- (BOOL)registeredForMinimumSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000025"];

  return v10;
}

- (BOOL)registeredForStepperBarHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000027"];

  return v10;
}

@end