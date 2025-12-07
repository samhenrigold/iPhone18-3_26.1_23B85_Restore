@interface CAFProtocolPerfTest
+ (void)load;
- (BOOL)registeredForTestInt16;
- (BOOL)registeredForTestInt32;
- (BOOL)registeredForTestString;
- (BOOL)registeredForTestString2;
- (BOOL)registeredForTestUInt16;
- (BOOL)registeredForTestUInt32;
- (CAFInt16Characteristic)testInt16Characteristic;
- (CAFInt16Range)testInt16Range;
- (CAFInt32Characteristic)testInt32Characteristic;
- (CAFInt32Range)testInt32Range;
- (CAFStringCharacteristic)testString2Characteristic;
- (CAFStringCharacteristic)testStringCharacteristic;
- (CAFUInt16Characteristic)testUInt16Characteristic;
- (CAFUInt16Range)testUInt16Range;
- (CAFUInt32Characteristic)testUInt32Characteristic;
- (CAFUInt32Range)testUInt32Range;
- (NSString)testString;
- (NSString)testString2;
- (id)name;
- (int)testInt32;
- (signed)testInt16;
- (unsigned)testUInt16;
- (unsigned)testUInt32;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setTestInt16:(signed __int16)int16;
- (void)setTestString2:(id)string2;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFProtocolPerfTest

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFProtocolPerfTest;
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
  v6.super_class = CAFProtocolPerfTest;
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
  v6.super_class = CAFProtocolPerfTest;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  testStringCharacteristic = [(CAFProtocolPerfTest *)self testStringCharacteristic];
  formattedValue = [testStringCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  testInt32Characteristic = [(CAFProtocolPerfTest *)self testInt32Characteristic];
  int32Value = [testInt32Characteristic int32Value];

  return int32Value;
}

- (CAFInt32Range)testInt32Range
{
  testInt32Characteristic = [(CAFProtocolPerfTest *)self testInt32Characteristic];
  range = [testInt32Characteristic range];

  return range;
}

- (CAFInt16Characteristic)testInt16Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000007"];
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

- (signed)testInt16
{
  testInt16Characteristic = [(CAFProtocolPerfTest *)self testInt16Characteristic];
  int16Value = [testInt16Characteristic int16Value];

  return int16Value;
}

- (void)setTestInt16:(signed __int16)int16
{
  int16Copy = int16;
  testInt16Characteristic = [(CAFProtocolPerfTest *)self testInt16Characteristic];
  [testInt16Characteristic setInt16Value:int16Copy];
}

- (CAFInt16Range)testInt16Range
{
  testInt16Characteristic = [(CAFProtocolPerfTest *)self testInt16Characteristic];
  range = [testInt16Characteristic range];

  return range;
}

- (CAFUInt32Characteristic)testUInt32Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000004"];
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

- (unsigned)testUInt32
{
  testUInt32Characteristic = [(CAFProtocolPerfTest *)self testUInt32Characteristic];
  uint32Value = [testUInt32Characteristic uint32Value];

  return uint32Value;
}

- (CAFUInt32Range)testUInt32Range
{
  testUInt32Characteristic = [(CAFProtocolPerfTest *)self testUInt32Characteristic];
  range = [testUInt32Characteristic range];

  return range;
}

- (CAFUInt16Characteristic)testUInt16Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000003"];
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

- (unsigned)testUInt16
{
  testUInt16Characteristic = [(CAFProtocolPerfTest *)self testUInt16Characteristic];
  uint16Value = [testUInt16Characteristic uint16Value];

  return uint16Value;
}

- (CAFUInt16Range)testUInt16Range
{
  testUInt16Characteristic = [(CAFProtocolPerfTest *)self testUInt16Characteristic];
  range = [testUInt16Characteristic range];

  return range;
}

- (CAFStringCharacteristic)testStringCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000B"];
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

- (NSString)testString
{
  testStringCharacteristic = [(CAFProtocolPerfTest *)self testStringCharacteristic];
  stringValue = [testStringCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)testString2Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000023"];
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

- (NSString)testString2
{
  testString2Characteristic = [(CAFProtocolPerfTest *)self testString2Characteristic];
  stringValue = [testString2Characteristic stringValue];

  return stringValue;
}

- (void)setTestString2:(id)string2
{
  string2Copy = string2;
  testString2Characteristic = [(CAFProtocolPerfTest *)self testString2Characteristic];
  [testString2Characteristic setStringValue:string2Copy];
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x00000000FF000008"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    testInt32Characteristic = [(CAFProtocolPerfTest *)self testInt32Characteristic];
    uniqueIdentifier2 = [testInt32Characteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers protocolPerfTestService:self didUpdateTestInt32:{-[CAFProtocolPerfTest testInt32](self, "testInt32")}];
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x00000000FF000007"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    testInt16Characteristic = [(CAFProtocolPerfTest *)self testInt16Characteristic];
    uniqueIdentifier4 = [testInt16Characteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers protocolPerfTestService:self didUpdateTestInt16:{-[CAFProtocolPerfTest testInt16](self, "testInt16")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x00000000FF000004"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    testUInt32Characteristic = [(CAFProtocolPerfTest *)self testUInt32Characteristic];
    uniqueIdentifier6 = [testUInt32Characteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers protocolPerfTestService:self didUpdateTestUInt32:{-[CAFProtocolPerfTest testUInt32](self, "testUInt32")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x00000000FF000003"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    testUInt16Characteristic = [(CAFProtocolPerfTest *)self testUInt16Characteristic];
    uniqueIdentifier8 = [testUInt16Characteristic uniqueIdentifier];
    v27 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v27)
    {
      observers = [(CAFService *)self observers];
      [observers protocolPerfTestService:self didUpdateTestUInt16:{-[CAFProtocolPerfTest testUInt16](self, "testUInt16")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x00000000FF00000B"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    testStringCharacteristic = [(CAFProtocolPerfTest *)self testStringCharacteristic];
    uniqueIdentifier10 = [testStringCharacteristic uniqueIdentifier];
    v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v32)
    {
      observers2 = [(CAFService *)self observers];
      testString = [(CAFProtocolPerfTest *)self testString];
      [observers2 protocolPerfTestService:self didUpdateTestString:testString];

      observers = [(CAFService *)self observers];
      name = [(CAFProtocolPerfTest *)self name];
      [observers protocolPerfTestService:self didUpdateName:name];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x00000000FF000023"])
  {
    goto LABEL_25;
  }

  uniqueIdentifier11 = [updateCopy uniqueIdentifier];
  testString2Characteristic = [(CAFProtocolPerfTest *)self testString2Characteristic];
  uniqueIdentifier12 = [testString2Characteristic uniqueIdentifier];
  v39 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

  if (v39)
  {
    observers = [(CAFService *)self observers];
    name = [(CAFProtocolPerfTest *)self testString2];
    [observers protocolPerfTestService:self didUpdateTestString2:name];
    goto LABEL_24;
  }

LABEL_26:
  v40.receiver = self;
  v40.super_class = CAFProtocolPerfTest;
  [(CAFService *)&v40 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForTestInt16
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000007"];

  return v10;
}

- (BOOL)registeredForTestUInt32
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000004"];

  return v10;
}

- (BOOL)registeredForTestUInt16
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000003"];

  return v10;
}

- (BOOL)registeredForTestString
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000B"];

  return v10;
}

- (BOOL)registeredForTestString2
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000023"];

  return v10;
}

@end