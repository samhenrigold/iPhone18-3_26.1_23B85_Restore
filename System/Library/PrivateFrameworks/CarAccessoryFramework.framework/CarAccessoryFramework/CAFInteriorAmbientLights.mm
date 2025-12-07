@interface CAFInteriorAmbientLights
+ (void)load;
- (BOOL)hasBrightness;
- (BOOL)hasSupportedColors;
- (BOOL)registeredForBrightness;
- (BOOL)registeredForPrimaryColor;
- (BOOL)registeredForSupportedColors;
- (CAFStringCharacteristic)primaryColorCharacteristic;
- (CAFSupportedColors)supportedColors;
- (CAFSupportedColorsCharacteristic)supportedColorsCharacteristic;
- (CAFUInt32Characteristic)brightnessCharacteristic;
- (CAFUInt32Range)brightnessRange;
- (NSString)primaryColor;
- (unsigned)brightness;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setBrightness:(unsigned int)brightness;
- (void)setPrimaryColor:(id)color;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFInteriorAmbientLights

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFInteriorAmbientLights;
  objc_msgSendSuper2(&v2, sel_load);
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
  v6.super_class = CAFInteriorAmbientLights;
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
  v6.super_class = CAFInteriorAmbientLights;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)primaryColorCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000052000001"];
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

- (NSString)primaryColor
{
  primaryColorCharacteristic = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
  stringValue = [primaryColorCharacteristic stringValue];

  return stringValue;
}

- (void)setPrimaryColor:(id)color
{
  colorCopy = color;
  primaryColorCharacteristic = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
  [primaryColorCharacteristic setStringValue:colorCopy];
}

- (CAFUInt32Characteristic)brightnessCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000052000002"];
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

- (unsigned)brightness
{
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  uint32Value = [brightnessCharacteristic uint32Value];

  return uint32Value;
}

- (void)setBrightness:(unsigned int)brightness
{
  v3 = *&brightness;
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  [brightnessCharacteristic setUint32Value:v3];
}

- (CAFUInt32Range)brightnessRange
{
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  range = [brightnessCharacteristic range];

  return range;
}

- (BOOL)hasBrightness
{
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  v3 = brightnessCharacteristic != 0;

  return v3;
}

- (CAFSupportedColorsCharacteristic)supportedColorsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000052000003"];
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

- (CAFSupportedColors)supportedColors
{
  supportedColorsCharacteristic = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  supportedColorsValue = [supportedColorsCharacteristic supportedColorsValue];

  return supportedColorsValue;
}

- (BOOL)hasSupportedColors
{
  supportedColorsCharacteristic = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  v3 = supportedColorsCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000052000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    primaryColorCharacteristic = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
    uniqueIdentifier2 = [primaryColorCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      primaryColor = [(CAFInteriorAmbientLights *)self primaryColor];
      [observers interiorAmbientLightsService:self didUpdatePrimaryColor:primaryColor];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000052000002"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
    uniqueIdentifier4 = [brightnessCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      [observers interiorAmbientLightsService:self didUpdateBrightness:{-[CAFInteriorAmbientLights brightness](self, "brightness")}];
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000052000003"])
  {
    goto LABEL_13;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  supportedColorsCharacteristic = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  uniqueIdentifier6 = [supportedColorsCharacteristic uniqueIdentifier];
  v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v22)
  {
    observers = [(CAFService *)self observers];
    primaryColor = [(CAFInteriorAmbientLights *)self supportedColors];
    [observers interiorAmbientLightsService:self didUpdateSupportedColors:primaryColor];
    goto LABEL_12;
  }

LABEL_14:
  v23.receiver = self;
  v23.super_class = CAFInteriorAmbientLights;
  [(CAFService *)&v23 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForPrimaryColor
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000001"];

  return v10;
}

- (BOOL)registeredForBrightness
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000002"];

  return v10;
}

- (BOOL)registeredForSupportedColors
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000003"];

  return v10;
}

@end