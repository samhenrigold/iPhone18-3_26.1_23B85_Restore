@interface CAFAutomakerApp
+ (void)load;
- (BOOL)registeredForAppClipIdentifier;
- (BOOL)registeredForIdentifier;
- (CAFStringCharacteristic)appClipIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (NSString)appClipIdentifier;
- (NSString)identifier;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAutomakerApp

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFAutomakerApp;
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
  v6.super_class = CAFAutomakerApp;
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
  v6.super_class = CAFAutomakerApp;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  identifierCharacteristic = [(CAFAutomakerApp *)self identifierCharacteristic];
  formattedValue = [identifierCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  appClipIdentifierCharacteristic = [(CAFAutomakerApp *)self appClipIdentifierCharacteristic];
  formattedValue2 = [appClipIdentifierCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
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
  identifierCharacteristic = [(CAFAutomakerApp *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)appClipIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000070000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000070000001"];
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

- (NSString)appClipIdentifier
{
  appClipIdentifierCharacteristic = [(CAFAutomakerApp *)self appClipIdentifierCharacteristic];
  stringValue = [appClipIdentifierCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFAutomakerApp *)self identifierCharacteristic];
    uniqueIdentifier2 = [identifierCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFAutomakerApp *)self identifier];
      [observers automakerAppService:self didUpdateIdentifier:identifier];
LABEL_8:

      observers2 = [(CAFService *)self observers];
      name = [(CAFAutomakerApp *)self name];
      [observers2 automakerAppService:self didUpdateName:name];

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers2 = [updateCopy characteristicType];
  if (![observers2 isEqual:@"0x0000000070000001"])
  {
LABEL_9:

    goto LABEL_10;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  appClipIdentifierCharacteristic = [(CAFAutomakerApp *)self appClipIdentifierCharacteristic];
  uniqueIdentifier4 = [appClipIdentifierCharacteristic uniqueIdentifier];
  v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v18)
  {
    observers = [(CAFService *)self observers];
    identifier = [(CAFAutomakerApp *)self appClipIdentifier];
    [observers automakerAppService:self didUpdateAppClipIdentifier:identifier];
    goto LABEL_8;
  }

LABEL_10:
  v20.receiver = self;
  v20.super_class = CAFAutomakerApp;
  [(CAFService *)&v20 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForAppClipIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000070000001"];

  return v10;
}

@end