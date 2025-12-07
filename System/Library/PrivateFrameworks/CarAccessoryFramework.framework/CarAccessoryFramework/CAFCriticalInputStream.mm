@interface CAFCriticalInputStream
+ (void)load;
- (BOOL)on;
- (BOOL)registeredForInputStreamUID;
- (BOOL)registeredForOn;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFStringCharacteristic)inputStreamUIDCharacteristic;
- (NSString)inputStreamUID;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCriticalInputStream

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCriticalInputStream;
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
  v6.super_class = CAFCriticalInputStream;
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
  v6.super_class = CAFCriticalInputStream;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  inputStreamUIDCharacteristic = [(CAFCriticalInputStream *)self inputStreamUIDCharacteristic];
  formattedValue = [inputStreamUIDCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFStringCharacteristic)inputStreamUIDCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000044000000"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000044000000"];
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

- (NSString)inputStreamUID
{
  inputStreamUIDCharacteristic = [(CAFCriticalInputStream *)self inputStreamUIDCharacteristic];
  stringValue = [inputStreamUIDCharacteristic stringValue];

  return stringValue;
}

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  onCharacteristic = [(CAFCriticalInputStream *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000044000000"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    inputStreamUIDCharacteristic = [(CAFCriticalInputStream *)self inputStreamUIDCharacteristic];
    uniqueIdentifier2 = [inputStreamUIDCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      inputStreamUID = [(CAFCriticalInputStream *)self inputStreamUID];
      [observers criticalInputStreamService:self didUpdateInputStreamUID:inputStreamUID];

      observers2 = [(CAFService *)self observers];
      name = [(CAFCriticalInputStream *)self name];
      [observers2 criticalInputStreamService:self didUpdateName:name];

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
  }

  observers2 = [updateCopy characteristicType];
  if (![observers2 isEqual:@"0x0000000030000002"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  onCharacteristic = [(CAFCriticalInputStream *)self onCharacteristic];
  uniqueIdentifier4 = [onCharacteristic uniqueIdentifier];
  v19 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v19)
  {
    observers2 = [(CAFService *)self observers];
    [observers2 criticalInputStreamService:self didUpdateOn:{-[CAFCriticalInputStream on](self, "on")}];
    goto LABEL_8;
  }

LABEL_9:
  v20.receiver = self;
  v20.super_class = CAFCriticalInputStream;
  [(CAFService *)&v20 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForInputStreamUID
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000044000000"];

  return v10;
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  return v10;
}

@end