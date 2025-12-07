@interface CAFUIConfiguration
+ (void)load;
- (BOOL)hasConfigurationOptions;
- (BOOL)registeredForConfigurationIdentifier;
- (BOOL)registeredForConfigurationOptions;
- (CAFArrayCharacteristic)configurationOptionsCharacteristic;
- (CAFStringCharacteristic)configurationIdentifierCharacteristic;
- (NSArray)configurationOptions;
- (NSString)configurationIdentifier;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFUIConfiguration

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIConfiguration;
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
  v6.super_class = CAFUIConfiguration;
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
  v6.super_class = CAFUIConfiguration;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)configurationIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000010"];
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

- (NSString)configurationIdentifier
{
  configurationIdentifierCharacteristic = [(CAFUIConfiguration *)self configurationIdentifierCharacteristic];
  stringValue = [configurationIdentifierCharacteristic stringValue];

  return stringValue;
}

- (CAFArrayCharacteristic)configurationOptionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000011"];
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

- (NSArray)configurationOptions
{
  configurationOptionsCharacteristic = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  arrayValue = [configurationOptionsCharacteristic arrayValue];

  return arrayValue;
}

- (BOOL)hasConfigurationOptions
{
  configurationOptionsCharacteristic = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  v3 = configurationOptionsCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000048000010"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    configurationIdentifierCharacteristic = [(CAFUIConfiguration *)self configurationIdentifierCharacteristic];
    uniqueIdentifier2 = [configurationIdentifierCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      configurationIdentifier = [(CAFUIConfiguration *)self configurationIdentifier];
      [observers uiConfigurationService:self didUpdateConfigurationIdentifier:configurationIdentifier];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000047000011"])
  {
LABEL_9:

    goto LABEL_10;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  configurationOptionsCharacteristic = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  uniqueIdentifier4 = [configurationOptionsCharacteristic uniqueIdentifier];
  v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v17)
  {
    observers = [(CAFService *)self observers];
    configurationIdentifier = [(CAFUIConfiguration *)self configurationOptions];
    [observers uiConfigurationService:self didUpdateConfigurationOptions:configurationIdentifier];
    goto LABEL_8;
  }

LABEL_10:
  v18.receiver = self;
  v18.super_class = CAFUIConfiguration;
  [(CAFService *)&v18 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForConfigurationIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000010"];

  return v10;
}

- (BOOL)registeredForConfigurationOptions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000011"];

  return v10;
}

@end