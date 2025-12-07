@interface CAFTypeTestIndexByPosition
+ (void)load;
- (BOOL)hasTestInt32;
- (BOOL)registeredForTestInt32;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFInt32Characteristic)testInt32Characteristic;
- (CAFInt32Range)testInt32Range;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (int)testInt32;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setTestInt32:(int)int32;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTypeTestIndexByPosition

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTypeTestIndexByPosition;
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
  v6.super_class = CAFTypeTestIndexByPosition;
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
  v6.super_class = CAFTypeTestIndexByPosition;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFTypeTestIndexByPosition *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  vehicleLayoutKeyCharacteristic = [(CAFTypeTestIndexByPosition *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (CAFInt32Characteristic)testInt32Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000008"];
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

- (int)testInt32
{
  testInt32Characteristic = [(CAFTypeTestIndexByPosition *)self testInt32Characteristic];
  int32Value = [testInt32Characteristic int32Value];

  return int32Value;
}

- (void)setTestInt32:(int)int32
{
  v3 = *&int32;
  testInt32Characteristic = [(CAFTypeTestIndexByPosition *)self testInt32Characteristic];
  [testInt32Characteristic setInt32Value:v3];
}

- (CAFInt32Range)testInt32Range
{
  testInt32Characteristic = [(CAFTypeTestIndexByPosition *)self testInt32Characteristic];
  range = [testInt32Characteristic range];

  return range;
}

- (BOOL)hasTestInt32
{
  testInt32Characteristic = [(CAFTypeTestIndexByPosition *)self testInt32Characteristic];
  v3 = testInt32Characteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000065"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    vehicleLayoutKeyCharacteristic = [(CAFTypeTestIndexByPosition *)self vehicleLayoutKeyCharacteristic];
    uniqueIdentifier2 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      vehicleLayoutKey = [(CAFTypeTestIndexByPosition *)self vehicleLayoutKey];
      [observers typeTestIndexByPositionService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

      observers2 = [(CAFService *)self observers];
      name = [(CAFTypeTestIndexByPosition *)self name];
      [observers2 typeTestIndexByPositionService:self didUpdateName:name];

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
  }

  observers2 = [updateCopy characteristicType];
  if (![observers2 isEqual:@"0x00000000FF000008"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  testInt32Characteristic = [(CAFTypeTestIndexByPosition *)self testInt32Characteristic];
  uniqueIdentifier4 = [testInt32Characteristic uniqueIdentifier];
  v19 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v19)
  {
    observers2 = [(CAFService *)self observers];
    [observers2 typeTestIndexByPositionService:self didUpdateTestInt32:{-[CAFTypeTestIndexByPosition testInt32](self, "testInt32")}];
    goto LABEL_8;
  }

LABEL_9:
  v20.receiver = self;
  v20.super_class = CAFTypeTestIndexByPosition;
  [(CAFService *)&v20 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForTestInt32
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000008"];

  return v10;
}

@end