@interface CAFTypeTestMulti
+ (void)load;
- (BOOL)hasTestArrayBool;
- (BOOL)hasTestArrayData;
- (BOOL)hasTestArrayFloat;
- (BOOL)hasTestArrayInt16;
- (BOOL)hasTestArrayInt32;
- (BOOL)hasTestArrayInt64;
- (BOOL)hasTestArrayInt8;
- (BOOL)hasTestArrayRawData;
- (BOOL)hasTestArrayString;
- (BOOL)hasTestArrayUInt16;
- (BOOL)hasTestArrayUInt32;
- (BOOL)hasTestArrayUInt64;
- (BOOL)hasTestArrayUInt8;
- (BOOL)hasTestBool;
- (BOOL)hasTestComplexItem;
- (BOOL)hasTestComplexItemList;
- (BOOL)hasTestComplexItemValue;
- (BOOL)hasTestComplexItems;
- (BOOL)hasTestData;
- (BOOL)hasTestDimensionUnitRawValue;
- (BOOL)hasTestEnum;
- (BOOL)hasTestFloat;
- (BOOL)hasTestInt16;
- (BOOL)hasTestInt32;
- (BOOL)hasTestInt64;
- (BOOL)hasTestInt8;
- (BOOL)hasTestRawData;
- (BOOL)hasTestString;
- (BOOL)hasTestUInt16;
- (BOOL)hasTestUInt32;
- (BOOL)hasTestUInt64;
- (BOOL)hasTestUInt8;
- (BOOL)registeredForTestArrayBool;
- (BOOL)registeredForTestArrayData;
- (BOOL)registeredForTestArrayFloat;
- (BOOL)registeredForTestArrayInt16;
- (BOOL)registeredForTestArrayInt32;
- (BOOL)registeredForTestArrayInt64;
- (BOOL)registeredForTestArrayInt8;
- (BOOL)registeredForTestArrayRawData;
- (BOOL)registeredForTestArrayString;
- (BOOL)registeredForTestArrayUInt16;
- (BOOL)registeredForTestArrayUInt32;
- (BOOL)registeredForTestArrayUInt64;
- (BOOL)registeredForTestArrayUInt8;
- (BOOL)registeredForTestBool;
- (BOOL)registeredForTestComplexItem;
- (BOOL)registeredForTestComplexItemList;
- (BOOL)registeredForTestComplexItemValue;
- (BOOL)registeredForTestComplexItems;
- (BOOL)registeredForTestData;
- (BOOL)registeredForTestDimensionUnit;
- (BOOL)registeredForTestEnum;
- (BOOL)registeredForTestFloat;
- (BOOL)registeredForTestInt16;
- (BOOL)registeredForTestInt32;
- (BOOL)registeredForTestInt64;
- (BOOL)registeredForTestInt8;
- (BOOL)registeredForTestRawData;
- (BOOL)registeredForTestString;
- (BOOL)registeredForTestUInt16;
- (BOOL)registeredForTestUInt32;
- (BOOL)registeredForTestUInt64;
- (BOOL)registeredForTestUInt8;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)testBool;
- (CAFArrayCharacteristic)testArrayBoolCharacteristic;
- (CAFArrayCharacteristic)testArrayDataCharacteristic;
- (CAFArrayCharacteristic)testArrayFloatCharacteristic;
- (CAFArrayCharacteristic)testArrayInt16Characteristic;
- (CAFArrayCharacteristic)testArrayInt32Characteristic;
- (CAFArrayCharacteristic)testArrayInt64Characteristic;
- (CAFArrayCharacteristic)testArrayInt8Characteristic;
- (CAFArrayCharacteristic)testArrayRawDataCharacteristic;
- (CAFArrayCharacteristic)testArrayStringCharacteristic;
- (CAFArrayCharacteristic)testArrayUInt16Characteristic;
- (CAFArrayCharacteristic)testArrayUInt32Characteristic;
- (CAFArrayCharacteristic)testArrayUInt64Characteristic;
- (CAFArrayCharacteristic)testArrayUInt8Characteristic;
- (CAFBoolCharacteristic)testBoolCharacteristic;
- (CAFButtonActionCharacteristic)testEnumCharacteristic;
- (CAFDataCharacteristic)testDataCharacteristic;
- (CAFDataCharacteristic)testRawDataCharacteristic;
- (CAFFloatCharacteristic)testFloatCharacteristic;
- (CAFFloatRange)testFloatRange;
- (CAFInt16Characteristic)testInt16Characteristic;
- (CAFInt16Range)testInt16Range;
- (CAFInt32Characteristic)testInt32Characteristic;
- (CAFInt32Range)testInt32Range;
- (CAFInt64Characteristic)testInt64Characteristic;
- (CAFInt64Range)testInt64Range;
- (CAFInt8Characteristic)testInt8Characteristic;
- (CAFInt8Range)testInt8Range;
- (CAFStringCharacteristic)testStringCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFTestComplexItem)testComplexItem;
- (CAFTestComplexItem)testComplexItemValue;
- (CAFTestComplexItemCharacteristic)testComplexItemCharacteristic;
- (CAFTestComplexItemCharacteristic)testComplexItemValueCharacteristic;
- (CAFTestComplexItems)testComplexItemList;
- (CAFTestComplexItems)testComplexItems;
- (CAFTestComplexItemsCharacteristic)testComplexItemListCharacteristic;
- (CAFTestComplexItemsCharacteristic)testComplexItemsCharacteristic;
- (CAFUInt16Characteristic)testUInt16Characteristic;
- (CAFUInt16Range)testUInt16Range;
- (CAFUInt32Characteristic)testUInt32Characteristic;
- (CAFUInt32Range)testUInt32Range;
- (CAFUInt64Characteristic)testUInt64Characteristic;
- (CAFUInt64Range)testUInt64Range;
- (CAFUInt8Characteristic)testUInt8Characteristic;
- (CAFUInt8Range)testUInt8Range;
- (CAFUnitTypeCharacteristic)testDimensionUnitRawValueCharacteristic;
- (NSArray)testArrayBool;
- (NSArray)testArrayData;
- (NSArray)testArrayFloat;
- (NSArray)testArrayInt16;
- (NSArray)testArrayInt32;
- (NSArray)testArrayInt64;
- (NSArray)testArrayInt8;
- (NSArray)testArrayRawData;
- (NSArray)testArrayString;
- (NSArray)testArrayUInt16;
- (NSArray)testArrayUInt32;
- (NSArray)testArrayUInt64;
- (NSArray)testArrayUInt8;
- (NSData)testData;
- (NSData)testRawData;
- (NSString)testString;
- (NSString)userVisibleLabel;
- (NSUnitSpeed)testDimensionUnit;
- (char)testInt8;
- (float)testFloat;
- (id)name;
- (int)testInt32;
- (int64_t)testInt64;
- (signed)testInt16;
- (unint64_t)testUInt64;
- (unsigned)testDimensionUnitRawValue;
- (unsigned)testEnum;
- (unsigned)testUInt16;
- (unsigned)testUInt32;
- (unsigned)testUInt8;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setTestArrayBool:(id)bool;
- (void)setTestArrayData:(id)data;
- (void)setTestArrayFloat:(id)float;
- (void)setTestArrayInt16:(id)int16;
- (void)setTestArrayInt32:(id)int32;
- (void)setTestArrayInt64:(id)int64;
- (void)setTestArrayInt8:(id)int8;
- (void)setTestArrayString:(id)string;
- (void)setTestArrayUInt16:(id)int16;
- (void)setTestArrayUInt32:(id)int32;
- (void)setTestArrayUInt64:(id)int64;
- (void)setTestArrayUInt8:(id)int8;
- (void)setTestBool:(BOOL)bool;
- (void)setTestComplexItem:(id)item;
- (void)setTestComplexItemList:(id)list;
- (void)setTestComplexItemValue:(id)value;
- (void)setTestComplexItems:(id)items;
- (void)setTestData:(id)data;
- (void)setTestDimensionUnit:(id)unit;
- (void)setTestDimensionUnitRawValue:(unsigned __int16)value;
- (void)setTestEnum:(unsigned __int8)enum;
- (void)setTestFloat:(float)float;
- (void)setTestInt16:(signed __int16)int16;
- (void)setTestInt32:(int)int32;
- (void)setTestInt64:(int64_t)int64;
- (void)setTestInt8:(char)int8;
- (void)setTestString:(id)string;
- (void)setTestUInt16:(unsigned __int16)int16;
- (void)setTestUInt32:(unsigned int)int32;
- (void)setTestUInt64:(unint64_t)int64;
- (void)setTestUInt8:(unsigned __int8)int8;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTypeTestMulti

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTypeTestMulti;
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
  v6.super_class = CAFTypeTestMulti;
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
  v6.super_class = CAFTypeTestMulti;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  userVisibleLabelCharacteristic = [(CAFTypeTestMulti *)self userVisibleLabelCharacteristic];
  formattedValue = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  userVisibleLabelCharacteristic = [(CAFTypeTestMulti *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (CAFBoolCharacteristic)testBoolCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000001"];
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

- (BOOL)testBool
{
  testBoolCharacteristic = [(CAFTypeTestMulti *)self testBoolCharacteristic];
  bOOLValue = [testBoolCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setTestBool:(BOOL)bool
{
  boolCopy = bool;
  testBoolCharacteristic = [(CAFTypeTestMulti *)self testBoolCharacteristic];
  [testBoolCharacteristic setBoolValue:boolCopy];
}

- (BOOL)hasTestBool
{
  testBoolCharacteristic = [(CAFTypeTestMulti *)self testBoolCharacteristic];
  v3 = testBoolCharacteristic != 0;

  return v3;
}

- (CAFUInt8Characteristic)testUInt8Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000002"];
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

- (unsigned)testUInt8
{
  testUInt8Characteristic = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  uint8Value = [testUInt8Characteristic uint8Value];

  return uint8Value;
}

- (void)setTestUInt8:(unsigned __int8)int8
{
  int8Copy = int8;
  testUInt8Characteristic = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  [testUInt8Characteristic setUint8Value:int8Copy];
}

- (CAFUInt8Range)testUInt8Range
{
  testUInt8Characteristic = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  range = [testUInt8Characteristic range];

  return range;
}

- (BOOL)hasTestUInt8
{
  testUInt8Characteristic = [(CAFTypeTestMulti *)self testUInt8Characteristic];
  v3 = testUInt8Characteristic != 0;

  return v3;
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
  testUInt16Characteristic = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  uint16Value = [testUInt16Characteristic uint16Value];

  return uint16Value;
}

- (void)setTestUInt16:(unsigned __int16)int16
{
  int16Copy = int16;
  testUInt16Characteristic = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  [testUInt16Characteristic setUint16Value:int16Copy];
}

- (CAFUInt16Range)testUInt16Range
{
  testUInt16Characteristic = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  range = [testUInt16Characteristic range];

  return range;
}

- (BOOL)hasTestUInt16
{
  testUInt16Characteristic = [(CAFTypeTestMulti *)self testUInt16Characteristic];
  v3 = testUInt16Characteristic != 0;

  return v3;
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
  testUInt32Characteristic = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  uint32Value = [testUInt32Characteristic uint32Value];

  return uint32Value;
}

- (void)setTestUInt32:(unsigned int)int32
{
  v3 = *&int32;
  testUInt32Characteristic = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  [testUInt32Characteristic setUint32Value:v3];
}

- (CAFUInt32Range)testUInt32Range
{
  testUInt32Characteristic = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  range = [testUInt32Characteristic range];

  return range;
}

- (BOOL)hasTestUInt32
{
  testUInt32Characteristic = [(CAFTypeTestMulti *)self testUInt32Characteristic];
  v3 = testUInt32Characteristic != 0;

  return v3;
}

- (CAFUInt64Characteristic)testUInt64Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000005"];
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

- (unint64_t)testUInt64
{
  testUInt64Characteristic = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  uint64Value = [testUInt64Characteristic uint64Value];

  return uint64Value;
}

- (void)setTestUInt64:(unint64_t)int64
{
  testUInt64Characteristic = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  [testUInt64Characteristic setUint64Value:int64];
}

- (CAFUInt64Range)testUInt64Range
{
  testUInt64Characteristic = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  range = [testUInt64Characteristic range];

  return range;
}

- (BOOL)hasTestUInt64
{
  testUInt64Characteristic = [(CAFTypeTestMulti *)self testUInt64Characteristic];
  v3 = testUInt64Characteristic != 0;

  return v3;
}

- (CAFInt8Characteristic)testInt8Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000006"];
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

- (char)testInt8
{
  testInt8Characteristic = [(CAFTypeTestMulti *)self testInt8Characteristic];
  int8Value = [testInt8Characteristic int8Value];

  return int8Value;
}

- (void)setTestInt8:(char)int8
{
  int8Copy = int8;
  testInt8Characteristic = [(CAFTypeTestMulti *)self testInt8Characteristic];
  [testInt8Characteristic setInt8Value:int8Copy];
}

- (CAFInt8Range)testInt8Range
{
  testInt8Characteristic = [(CAFTypeTestMulti *)self testInt8Characteristic];
  range = [testInt8Characteristic range];

  return range;
}

- (BOOL)hasTestInt8
{
  testInt8Characteristic = [(CAFTypeTestMulti *)self testInt8Characteristic];
  v3 = testInt8Characteristic != 0;

  return v3;
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
  testInt16Characteristic = [(CAFTypeTestMulti *)self testInt16Characteristic];
  int16Value = [testInt16Characteristic int16Value];

  return int16Value;
}

- (void)setTestInt16:(signed __int16)int16
{
  int16Copy = int16;
  testInt16Characteristic = [(CAFTypeTestMulti *)self testInt16Characteristic];
  [testInt16Characteristic setInt16Value:int16Copy];
}

- (CAFInt16Range)testInt16Range
{
  testInt16Characteristic = [(CAFTypeTestMulti *)self testInt16Characteristic];
  range = [testInt16Characteristic range];

  return range;
}

- (BOOL)hasTestInt16
{
  testInt16Characteristic = [(CAFTypeTestMulti *)self testInt16Characteristic];
  v3 = testInt16Characteristic != 0;

  return v3;
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
  testInt32Characteristic = [(CAFTypeTestMulti *)self testInt32Characteristic];
  int32Value = [testInt32Characteristic int32Value];

  return int32Value;
}

- (void)setTestInt32:(int)int32
{
  v3 = *&int32;
  testInt32Characteristic = [(CAFTypeTestMulti *)self testInt32Characteristic];
  [testInt32Characteristic setInt32Value:v3];
}

- (CAFInt32Range)testInt32Range
{
  testInt32Characteristic = [(CAFTypeTestMulti *)self testInt32Characteristic];
  range = [testInt32Characteristic range];

  return range;
}

- (BOOL)hasTestInt32
{
  testInt32Characteristic = [(CAFTypeTestMulti *)self testInt32Characteristic];
  v3 = testInt32Characteristic != 0;

  return v3;
}

- (CAFInt64Characteristic)testInt64Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000009"];
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

- (int64_t)testInt64
{
  testInt64Characteristic = [(CAFTypeTestMulti *)self testInt64Characteristic];
  int64Value = [testInt64Characteristic int64Value];

  return int64Value;
}

- (void)setTestInt64:(int64_t)int64
{
  testInt64Characteristic = [(CAFTypeTestMulti *)self testInt64Characteristic];
  [testInt64Characteristic setInt64Value:int64];
}

- (CAFInt64Range)testInt64Range
{
  testInt64Characteristic = [(CAFTypeTestMulti *)self testInt64Characteristic];
  range = [testInt64Characteristic range];

  return range;
}

- (BOOL)hasTestInt64
{
  testInt64Characteristic = [(CAFTypeTestMulti *)self testInt64Characteristic];
  v3 = testInt64Characteristic != 0;

  return v3;
}

- (CAFFloatCharacteristic)testFloatCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000A"];
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

- (float)testFloat
{
  testFloatCharacteristic = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  [testFloatCharacteristic floatValue];
  v4 = v3;

  return v4;
}

- (void)setTestFloat:(float)float
{
  testFloatCharacteristic = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  *&v4 = float;
  [testFloatCharacteristic setFloatValue:v4];
}

- (CAFFloatRange)testFloatRange
{
  testFloatCharacteristic = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  range = [testFloatCharacteristic range];

  return range;
}

- (BOOL)hasTestFloat
{
  testFloatCharacteristic = [(CAFTypeTestMulti *)self testFloatCharacteristic];
  v3 = testFloatCharacteristic != 0;

  return v3;
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
  testStringCharacteristic = [(CAFTypeTestMulti *)self testStringCharacteristic];
  stringValue = [testStringCharacteristic stringValue];

  return stringValue;
}

- (void)setTestString:(id)string
{
  stringCopy = string;
  testStringCharacteristic = [(CAFTypeTestMulti *)self testStringCharacteristic];
  [testStringCharacteristic setStringValue:stringCopy];
}

- (BOOL)hasTestString
{
  testStringCharacteristic = [(CAFTypeTestMulti *)self testStringCharacteristic];
  v3 = testStringCharacteristic != 0;

  return v3;
}

- (CAFDataCharacteristic)testDataCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000C"];
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

- (NSData)testData
{
  testDataCharacteristic = [(CAFTypeTestMulti *)self testDataCharacteristic];
  dataValue = [testDataCharacteristic dataValue];

  return dataValue;
}

- (void)setTestData:(id)data
{
  dataCopy = data;
  testDataCharacteristic = [(CAFTypeTestMulti *)self testDataCharacteristic];
  [testDataCharacteristic setDataValue:dataCopy];
}

- (BOOL)hasTestData
{
  testDataCharacteristic = [(CAFTypeTestMulti *)self testDataCharacteristic];
  v3 = testDataCharacteristic != 0;

  return v3;
}

- (CAFDataCharacteristic)testRawDataCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000D"];
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

- (NSData)testRawData
{
  testRawDataCharacteristic = [(CAFTypeTestMulti *)self testRawDataCharacteristic];
  dataValue = [testRawDataCharacteristic dataValue];

  return dataValue;
}

- (BOOL)hasTestRawData
{
  testRawDataCharacteristic = [(CAFTypeTestMulti *)self testRawDataCharacteristic];
  v3 = testRawDataCharacteristic != 0;

  return v3;
}

- (CAFButtonActionCharacteristic)testEnumCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000E"];
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

- (unsigned)testEnum
{
  testEnumCharacteristic = [(CAFTypeTestMulti *)self testEnumCharacteristic];
  buttonActionValue = [testEnumCharacteristic buttonActionValue];

  return buttonActionValue;
}

- (void)setTestEnum:(unsigned __int8)enum
{
  enumCopy = enum;
  testEnumCharacteristic = [(CAFTypeTestMulti *)self testEnumCharacteristic];
  [testEnumCharacteristic setButtonActionValue:enumCopy];
}

- (BOOL)hasTestEnum
{
  testEnumCharacteristic = [(CAFTypeTestMulti *)self testEnumCharacteristic];
  v3 = testEnumCharacteristic != 0;

  return v3;
}

- (CAFUnitTypeCharacteristic)testDimensionUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000F"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00000F"];
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

- (unsigned)testDimensionUnitRawValue
{
  testDimensionUnitRawValueCharacteristic = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  unitTypeValue = [testDimensionUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (void)setTestDimensionUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  testDimensionUnitRawValueCharacteristic = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  [testDimensionUnitRawValueCharacteristic setUnitTypeValue:valueCopy];
}

- (NSUnitSpeed)testDimensionUnit
{
  objc_opt_class();
  testDimensionUnitRawValueCharacteristic = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  unitValue = [testDimensionUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTestDimensionUnit:(id)unit
{
  unitCopy = unit;
  testDimensionUnitRawValueCharacteristic = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  [testDimensionUnitRawValueCharacteristic setUnitValue:unitCopy];
}

- (BOOL)hasTestDimensionUnitRawValue
{
  testDimensionUnitRawValueCharacteristic = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
  v3 = testDimensionUnitRawValueCharacteristic != 0;

  return v3;
}

- (CAFTestComplexItemCharacteristic)testComplexItemCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000010"];
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

- (CAFTestComplexItem)testComplexItem
{
  testComplexItemCharacteristic = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
  testComplexItemValue = [testComplexItemCharacteristic testComplexItemValue];

  return testComplexItemValue;
}

- (void)setTestComplexItem:(id)item
{
  itemCopy = item;
  testComplexItemCharacteristic = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
  [testComplexItemCharacteristic setTestComplexItemValue:itemCopy];
}

- (BOOL)hasTestComplexItem
{
  testComplexItemCharacteristic = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
  v3 = testComplexItemCharacteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayBoolCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000011"];
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

- (NSArray)testArrayBool
{
  testArrayBoolCharacteristic = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
  arrayValue = [testArrayBoolCharacteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayBool:(id)bool
{
  boolCopy = bool;
  testArrayBoolCharacteristic = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
  [testArrayBoolCharacteristic setArrayValue:boolCopy];
}

- (BOOL)hasTestArrayBool
{
  testArrayBoolCharacteristic = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
  v3 = testArrayBoolCharacteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt8Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000012"];
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

- (NSArray)testArrayUInt8
{
  testArrayUInt8Characteristic = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
  arrayValue = [testArrayUInt8Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayUInt8:(id)int8
{
  int8Copy = int8;
  testArrayUInt8Characteristic = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
  [testArrayUInt8Characteristic setArrayValue:int8Copy];
}

- (BOOL)hasTestArrayUInt8
{
  testArrayUInt8Characteristic = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
  v3 = testArrayUInt8Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt16Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000013"];
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

- (NSArray)testArrayUInt16
{
  testArrayUInt16Characteristic = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
  arrayValue = [testArrayUInt16Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayUInt16:(id)int16
{
  int16Copy = int16;
  testArrayUInt16Characteristic = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
  [testArrayUInt16Characteristic setArrayValue:int16Copy];
}

- (BOOL)hasTestArrayUInt16
{
  testArrayUInt16Characteristic = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
  v3 = testArrayUInt16Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt32Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000014"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000014"];
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

- (NSArray)testArrayUInt32
{
  testArrayUInt32Characteristic = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
  arrayValue = [testArrayUInt32Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayUInt32:(id)int32
{
  int32Copy = int32;
  testArrayUInt32Characteristic = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
  [testArrayUInt32Characteristic setArrayValue:int32Copy];
}

- (BOOL)hasTestArrayUInt32
{
  testArrayUInt32Characteristic = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
  v3 = testArrayUInt32Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayUInt64Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000015"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000015"];
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

- (NSArray)testArrayUInt64
{
  testArrayUInt64Characteristic = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
  arrayValue = [testArrayUInt64Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayUInt64:(id)int64
{
  int64Copy = int64;
  testArrayUInt64Characteristic = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
  [testArrayUInt64Characteristic setArrayValue:int64Copy];
}

- (BOOL)hasTestArrayUInt64
{
  testArrayUInt64Characteristic = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
  v3 = testArrayUInt64Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt8Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000016"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000016"];
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

- (NSArray)testArrayInt8
{
  testArrayInt8Characteristic = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
  arrayValue = [testArrayInt8Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayInt8:(id)int8
{
  int8Copy = int8;
  testArrayInt8Characteristic = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
  [testArrayInt8Characteristic setArrayValue:int8Copy];
}

- (BOOL)hasTestArrayInt8
{
  testArrayInt8Characteristic = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
  v3 = testArrayInt8Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt16Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000017"];
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

- (NSArray)testArrayInt16
{
  testArrayInt16Characteristic = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
  arrayValue = [testArrayInt16Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayInt16:(id)int16
{
  int16Copy = int16;
  testArrayInt16Characteristic = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
  [testArrayInt16Characteristic setArrayValue:int16Copy];
}

- (BOOL)hasTestArrayInt16
{
  testArrayInt16Characteristic = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
  v3 = testArrayInt16Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt32Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000018"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000018"];
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

- (NSArray)testArrayInt32
{
  testArrayInt32Characteristic = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
  arrayValue = [testArrayInt32Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayInt32:(id)int32
{
  int32Copy = int32;
  testArrayInt32Characteristic = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
  [testArrayInt32Characteristic setArrayValue:int32Copy];
}

- (BOOL)hasTestArrayInt32
{
  testArrayInt32Characteristic = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
  v3 = testArrayInt32Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayInt64Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000019"];
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

- (NSArray)testArrayInt64
{
  testArrayInt64Characteristic = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
  arrayValue = [testArrayInt64Characteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayInt64:(id)int64
{
  int64Copy = int64;
  testArrayInt64Characteristic = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
  [testArrayInt64Characteristic setArrayValue:int64Copy];
}

- (BOOL)hasTestArrayInt64
{
  testArrayInt64Characteristic = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
  v3 = testArrayInt64Characteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayFloatCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001A"];
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

- (NSArray)testArrayFloat
{
  testArrayFloatCharacteristic = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
  arrayValue = [testArrayFloatCharacteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayFloat:(id)float
{
  floatCopy = float;
  testArrayFloatCharacteristic = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
  [testArrayFloatCharacteristic setArrayValue:floatCopy];
}

- (BOOL)hasTestArrayFloat
{
  testArrayFloatCharacteristic = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
  v3 = testArrayFloatCharacteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayStringCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001B"];
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

- (NSArray)testArrayString
{
  testArrayStringCharacteristic = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
  arrayValue = [testArrayStringCharacteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayString:(id)string
{
  stringCopy = string;
  testArrayStringCharacteristic = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
  [testArrayStringCharacteristic setArrayValue:stringCopy];
}

- (BOOL)hasTestArrayString
{
  testArrayStringCharacteristic = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
  v3 = testArrayStringCharacteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayDataCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001C"];
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

- (NSArray)testArrayData
{
  testArrayDataCharacteristic = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
  arrayValue = [testArrayDataCharacteristic arrayValue];

  return arrayValue;
}

- (void)setTestArrayData:(id)data
{
  dataCopy = data;
  testArrayDataCharacteristic = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
  [testArrayDataCharacteristic setArrayValue:dataCopy];
}

- (BOOL)hasTestArrayData
{
  testArrayDataCharacteristic = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
  v3 = testArrayDataCharacteristic != 0;

  return v3;
}

- (CAFArrayCharacteristic)testArrayRawDataCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF00001D"];
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

- (NSArray)testArrayRawData
{
  testArrayRawDataCharacteristic = [(CAFTypeTestMulti *)self testArrayRawDataCharacteristic];
  arrayValue = [testArrayRawDataCharacteristic arrayValue];

  return arrayValue;
}

- (BOOL)hasTestArrayRawData
{
  testArrayRawDataCharacteristic = [(CAFTypeTestMulti *)self testArrayRawDataCharacteristic];
  v3 = testArrayRawDataCharacteristic != 0;

  return v3;
}

- (CAFTestComplexItemsCharacteristic)testComplexItemsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000020"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000020"];
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

- (CAFTestComplexItems)testComplexItems
{
  testComplexItemsCharacteristic = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
  testComplexItemsValue = [testComplexItemsCharacteristic testComplexItemsValue];

  return testComplexItemsValue;
}

- (void)setTestComplexItems:(id)items
{
  itemsCopy = items;
  testComplexItemsCharacteristic = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
  [testComplexItemsCharacteristic setTestComplexItemsValue:itemsCopy];
}

- (BOOL)hasTestComplexItems
{
  testComplexItemsCharacteristic = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
  v3 = testComplexItemsCharacteristic != 0;

  return v3;
}

- (CAFTestComplexItemCharacteristic)testComplexItemValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000021"];
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

- (CAFTestComplexItem)testComplexItemValue
{
  testComplexItemValueCharacteristic = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
  testComplexItemValue = [testComplexItemValueCharacteristic testComplexItemValue];

  return testComplexItemValue;
}

- (void)setTestComplexItemValue:(id)value
{
  valueCopy = value;
  testComplexItemValueCharacteristic = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
  [testComplexItemValueCharacteristic setTestComplexItemValue:valueCopy];
}

- (BOOL)hasTestComplexItemValue
{
  testComplexItemValueCharacteristic = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
  v3 = testComplexItemValueCharacteristic != 0;

  return v3;
}

- (CAFTestComplexItemsCharacteristic)testComplexItemListCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000022"];
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

- (CAFTestComplexItems)testComplexItemList
{
  testComplexItemListCharacteristic = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
  testComplexItemsValue = [testComplexItemListCharacteristic testComplexItemsValue];

  return testComplexItemsValue;
}

- (void)setTestComplexItemList:(id)list
{
  listCopy = list;
  testComplexItemListCharacteristic = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
  [testComplexItemListCharacteristic setTestComplexItemsValue:listCopy];
}

- (BOOL)hasTestComplexItemList
{
  testComplexItemListCharacteristic = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
  v3 = testComplexItemListCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if (([characteristicType isEqual:@"0x0000000030000001"] & 1) == 0)
  {

LABEL_6:
    characteristicType2 = [updateCopy characteristicType];
    if ([characteristicType2 isEqual:@"0x00000000FF000001"])
    {
      uniqueIdentifier = [updateCopy uniqueIdentifier];
      testBoolCharacteristic = [(CAFTypeTestMulti *)self testBoolCharacteristic];
      uniqueIdentifier2 = [testBoolCharacteristic uniqueIdentifier];
      v20 = [uniqueIdentifier isEqual:uniqueIdentifier2];

      if (v20)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestBool:{-[CAFTypeTestMulti testBool](self, "testBool")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType3 = [updateCopy characteristicType];
    if ([characteristicType3 isEqual:@"0x00000000FF000002"])
    {
      uniqueIdentifier3 = [updateCopy uniqueIdentifier];
      testUInt8Characteristic = [(CAFTypeTestMulti *)self testUInt8Characteristic];
      uniqueIdentifier4 = [testUInt8Characteristic uniqueIdentifier];
      v25 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

      if (v25)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestUInt8:{-[CAFTypeTestMulti testUInt8](self, "testUInt8")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType4 = [updateCopy characteristicType];
    if ([characteristicType4 isEqual:@"0x00000000FF000003"])
    {
      uniqueIdentifier5 = [updateCopy uniqueIdentifier];
      testUInt16Characteristic = [(CAFTypeTestMulti *)self testUInt16Characteristic];
      uniqueIdentifier6 = [testUInt16Characteristic uniqueIdentifier];
      v30 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

      if (v30)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestUInt16:{-[CAFTypeTestMulti testUInt16](self, "testUInt16")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType5 = [updateCopy characteristicType];
    if ([characteristicType5 isEqual:@"0x00000000FF000004"])
    {
      uniqueIdentifier7 = [updateCopy uniqueIdentifier];
      testUInt32Characteristic = [(CAFTypeTestMulti *)self testUInt32Characteristic];
      uniqueIdentifier8 = [testUInt32Characteristic uniqueIdentifier];
      v35 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

      if (v35)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestUInt32:{-[CAFTypeTestMulti testUInt32](self, "testUInt32")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType6 = [updateCopy characteristicType];
    if ([characteristicType6 isEqual:@"0x00000000FF000005"])
    {
      uniqueIdentifier9 = [updateCopy uniqueIdentifier];
      testUInt64Characteristic = [(CAFTypeTestMulti *)self testUInt64Characteristic];
      uniqueIdentifier10 = [testUInt64Characteristic uniqueIdentifier];
      v40 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

      if (v40)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestUInt64:{-[CAFTypeTestMulti testUInt64](self, "testUInt64")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType7 = [updateCopy characteristicType];
    if ([characteristicType7 isEqual:@"0x00000000FF000006"])
    {
      uniqueIdentifier11 = [updateCopy uniqueIdentifier];
      testInt8Characteristic = [(CAFTypeTestMulti *)self testInt8Characteristic];
      uniqueIdentifier12 = [testInt8Characteristic uniqueIdentifier];
      v45 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

      if (v45)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestInt8:{-[CAFTypeTestMulti testInt8](self, "testInt8")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType8 = [updateCopy characteristicType];
    if ([characteristicType8 isEqual:@"0x00000000FF000007"])
    {
      uniqueIdentifier13 = [updateCopy uniqueIdentifier];
      testInt16Characteristic = [(CAFTypeTestMulti *)self testInt16Characteristic];
      uniqueIdentifier14 = [testInt16Characteristic uniqueIdentifier];
      v50 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

      if (v50)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestInt16:{-[CAFTypeTestMulti testInt16](self, "testInt16")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType9 = [updateCopy characteristicType];
    if ([characteristicType9 isEqual:@"0x00000000FF000008"])
    {
      uniqueIdentifier15 = [updateCopy uniqueIdentifier];
      testInt32Characteristic = [(CAFTypeTestMulti *)self testInt32Characteristic];
      uniqueIdentifier16 = [testInt32Characteristic uniqueIdentifier];
      v55 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

      if (v55)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestInt32:{-[CAFTypeTestMulti testInt32](self, "testInt32")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType10 = [updateCopy characteristicType];
    if ([characteristicType10 isEqual:@"0x00000000FF000009"])
    {
      uniqueIdentifier17 = [updateCopy uniqueIdentifier];
      testInt64Characteristic = [(CAFTypeTestMulti *)self testInt64Characteristic];
      uniqueIdentifier18 = [testInt64Characteristic uniqueIdentifier];
      v60 = [uniqueIdentifier17 isEqual:uniqueIdentifier18];

      if (v60)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestInt64:{-[CAFTypeTestMulti testInt64](self, "testInt64")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType11 = [updateCopy characteristicType];
    if ([characteristicType11 isEqual:@"0x00000000FF00000A"])
    {
      uniqueIdentifier19 = [updateCopy uniqueIdentifier];
      testFloatCharacteristic = [(CAFTypeTestMulti *)self testFloatCharacteristic];
      uniqueIdentifier20 = [testFloatCharacteristic uniqueIdentifier];
      v65 = [uniqueIdentifier19 isEqual:uniqueIdentifier20];

      if (v65)
      {
        observers = [(CAFService *)self observers];
        [(CAFTypeTestMulti *)self testFloat];
        [observers typeTestMultiService:self didUpdateTestFloat:?];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType12 = [updateCopy characteristicType];
    if ([characteristicType12 isEqual:@"0x00000000FF00000B"])
    {
      uniqueIdentifier21 = [updateCopy uniqueIdentifier];
      testStringCharacteristic = [(CAFTypeTestMulti *)self testStringCharacteristic];
      uniqueIdentifier22 = [testStringCharacteristic uniqueIdentifier];
      v70 = [uniqueIdentifier21 isEqual:uniqueIdentifier22];

      if (v70)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testString];
        [observers typeTestMultiService:self didUpdateTestString:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType13 = [updateCopy characteristicType];
    if ([characteristicType13 isEqual:@"0x00000000FF00000C"])
    {
      uniqueIdentifier23 = [updateCopy uniqueIdentifier];
      testDataCharacteristic = [(CAFTypeTestMulti *)self testDataCharacteristic];
      uniqueIdentifier24 = [testDataCharacteristic uniqueIdentifier];
      v75 = [uniqueIdentifier23 isEqual:uniqueIdentifier24];

      if (v75)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testData];
        [observers typeTestMultiService:self didUpdateTestData:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType14 = [updateCopy characteristicType];
    if ([characteristicType14 isEqual:@"0x00000000FF00000D"])
    {
      uniqueIdentifier25 = [updateCopy uniqueIdentifier];
      testRawDataCharacteristic = [(CAFTypeTestMulti *)self testRawDataCharacteristic];
      uniqueIdentifier26 = [testRawDataCharacteristic uniqueIdentifier];
      v80 = [uniqueIdentifier25 isEqual:uniqueIdentifier26];

      if (v80)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testRawData];
        [observers typeTestMultiService:self didUpdateTestRawData:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType15 = [updateCopy characteristicType];
    if ([characteristicType15 isEqual:@"0x00000000FF00000E"])
    {
      uniqueIdentifier27 = [updateCopy uniqueIdentifier];
      testEnumCharacteristic = [(CAFTypeTestMulti *)self testEnumCharacteristic];
      uniqueIdentifier28 = [testEnumCharacteristic uniqueIdentifier];
      v85 = [uniqueIdentifier27 isEqual:uniqueIdentifier28];

      if (v85)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestEnum:{-[CAFTypeTestMulti testEnum](self, "testEnum")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType16 = [updateCopy characteristicType];
    if ([characteristicType16 isEqual:@"0x00000000FF00000F"])
    {
      uniqueIdentifier29 = [updateCopy uniqueIdentifier];
      testDimensionUnitRawValueCharacteristic = [(CAFTypeTestMulti *)self testDimensionUnitRawValueCharacteristic];
      uniqueIdentifier30 = [testDimensionUnitRawValueCharacteristic uniqueIdentifier];
      v90 = [uniqueIdentifier29 isEqual:uniqueIdentifier30];

      if (v90)
      {
        observers = [(CAFService *)self observers];
        [observers typeTestMultiService:self didUpdateTestDimensionUnitRawValue:{-[CAFTypeTestMulti testDimensionUnitRawValue](self, "testDimensionUnitRawValue")}];
        goto LABEL_65;
      }
    }

    else
    {
    }

    characteristicType17 = [updateCopy characteristicType];
    if ([characteristicType17 isEqual:@"0x00000000FF000010"])
    {
      uniqueIdentifier31 = [updateCopy uniqueIdentifier];
      testComplexItemCharacteristic = [(CAFTypeTestMulti *)self testComplexItemCharacteristic];
      uniqueIdentifier32 = [testComplexItemCharacteristic uniqueIdentifier];
      v95 = [uniqueIdentifier31 isEqual:uniqueIdentifier32];

      if (v95)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testComplexItem];
        [observers typeTestMultiService:self didUpdateTestComplexItem:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType18 = [updateCopy characteristicType];
    if ([characteristicType18 isEqual:@"0x00000000FF000011"])
    {
      uniqueIdentifier33 = [updateCopy uniqueIdentifier];
      testArrayBoolCharacteristic = [(CAFTypeTestMulti *)self testArrayBoolCharacteristic];
      uniqueIdentifier34 = [testArrayBoolCharacteristic uniqueIdentifier];
      v100 = [uniqueIdentifier33 isEqual:uniqueIdentifier34];

      if (v100)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayBool];
        [observers typeTestMultiService:self didUpdateTestArrayBool:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType19 = [updateCopy characteristicType];
    if ([characteristicType19 isEqual:@"0x00000000FF000012"])
    {
      uniqueIdentifier35 = [updateCopy uniqueIdentifier];
      testArrayUInt8Characteristic = [(CAFTypeTestMulti *)self testArrayUInt8Characteristic];
      uniqueIdentifier36 = [testArrayUInt8Characteristic uniqueIdentifier];
      v105 = [uniqueIdentifier35 isEqual:uniqueIdentifier36];

      if (v105)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayUInt8];
        [observers typeTestMultiService:self didUpdateTestArrayUInt8:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType20 = [updateCopy characteristicType];
    if ([characteristicType20 isEqual:@"0x00000000FF000013"])
    {
      uniqueIdentifier37 = [updateCopy uniqueIdentifier];
      testArrayUInt16Characteristic = [(CAFTypeTestMulti *)self testArrayUInt16Characteristic];
      uniqueIdentifier38 = [testArrayUInt16Characteristic uniqueIdentifier];
      v110 = [uniqueIdentifier37 isEqual:uniqueIdentifier38];

      if (v110)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayUInt16];
        [observers typeTestMultiService:self didUpdateTestArrayUInt16:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType21 = [updateCopy characteristicType];
    if ([characteristicType21 isEqual:@"0x00000000FF000014"])
    {
      uniqueIdentifier39 = [updateCopy uniqueIdentifier];
      testArrayUInt32Characteristic = [(CAFTypeTestMulti *)self testArrayUInt32Characteristic];
      uniqueIdentifier40 = [testArrayUInt32Characteristic uniqueIdentifier];
      v115 = [uniqueIdentifier39 isEqual:uniqueIdentifier40];

      if (v115)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayUInt32];
        [observers typeTestMultiService:self didUpdateTestArrayUInt32:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType22 = [updateCopy characteristicType];
    if ([characteristicType22 isEqual:@"0x00000000FF000015"])
    {
      uniqueIdentifier41 = [updateCopy uniqueIdentifier];
      testArrayUInt64Characteristic = [(CAFTypeTestMulti *)self testArrayUInt64Characteristic];
      uniqueIdentifier42 = [testArrayUInt64Characteristic uniqueIdentifier];
      v120 = [uniqueIdentifier41 isEqual:uniqueIdentifier42];

      if (v120)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayUInt64];
        [observers typeTestMultiService:self didUpdateTestArrayUInt64:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType23 = [updateCopy characteristicType];
    if ([characteristicType23 isEqual:@"0x00000000FF000016"])
    {
      uniqueIdentifier43 = [updateCopy uniqueIdentifier];
      testArrayInt8Characteristic = [(CAFTypeTestMulti *)self testArrayInt8Characteristic];
      uniqueIdentifier44 = [testArrayInt8Characteristic uniqueIdentifier];
      v125 = [uniqueIdentifier43 isEqual:uniqueIdentifier44];

      if (v125)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayInt8];
        [observers typeTestMultiService:self didUpdateTestArrayInt8:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType24 = [updateCopy characteristicType];
    if ([characteristicType24 isEqual:@"0x00000000FF000017"])
    {
      uniqueIdentifier45 = [updateCopy uniqueIdentifier];
      testArrayInt16Characteristic = [(CAFTypeTestMulti *)self testArrayInt16Characteristic];
      uniqueIdentifier46 = [testArrayInt16Characteristic uniqueIdentifier];
      v130 = [uniqueIdentifier45 isEqual:uniqueIdentifier46];

      if (v130)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayInt16];
        [observers typeTestMultiService:self didUpdateTestArrayInt16:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType25 = [updateCopy characteristicType];
    if ([characteristicType25 isEqual:@"0x00000000FF000018"])
    {
      uniqueIdentifier47 = [updateCopy uniqueIdentifier];
      testArrayInt32Characteristic = [(CAFTypeTestMulti *)self testArrayInt32Characteristic];
      uniqueIdentifier48 = [testArrayInt32Characteristic uniqueIdentifier];
      v135 = [uniqueIdentifier47 isEqual:uniqueIdentifier48];

      if (v135)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayInt32];
        [observers typeTestMultiService:self didUpdateTestArrayInt32:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType26 = [updateCopy characteristicType];
    if ([characteristicType26 isEqual:@"0x00000000FF000019"])
    {
      uniqueIdentifier49 = [updateCopy uniqueIdentifier];
      testArrayInt64Characteristic = [(CAFTypeTestMulti *)self testArrayInt64Characteristic];
      uniqueIdentifier50 = [testArrayInt64Characteristic uniqueIdentifier];
      v140 = [uniqueIdentifier49 isEqual:uniqueIdentifier50];

      if (v140)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayInt64];
        [observers typeTestMultiService:self didUpdateTestArrayInt64:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType27 = [updateCopy characteristicType];
    if ([characteristicType27 isEqual:@"0x00000000FF00001A"])
    {
      uniqueIdentifier51 = [updateCopy uniqueIdentifier];
      testArrayFloatCharacteristic = [(CAFTypeTestMulti *)self testArrayFloatCharacteristic];
      uniqueIdentifier52 = [testArrayFloatCharacteristic uniqueIdentifier];
      v145 = [uniqueIdentifier51 isEqual:uniqueIdentifier52];

      if (v145)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayFloat];
        [observers typeTestMultiService:self didUpdateTestArrayFloat:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType28 = [updateCopy characteristicType];
    if ([characteristicType28 isEqual:@"0x00000000FF00001B"])
    {
      uniqueIdentifier53 = [updateCopy uniqueIdentifier];
      testArrayStringCharacteristic = [(CAFTypeTestMulti *)self testArrayStringCharacteristic];
      uniqueIdentifier54 = [testArrayStringCharacteristic uniqueIdentifier];
      v150 = [uniqueIdentifier53 isEqual:uniqueIdentifier54];

      if (v150)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayString];
        [observers typeTestMultiService:self didUpdateTestArrayString:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType29 = [updateCopy characteristicType];
    if ([characteristicType29 isEqual:@"0x00000000FF00001C"])
    {
      uniqueIdentifier55 = [updateCopy uniqueIdentifier];
      testArrayDataCharacteristic = [(CAFTypeTestMulti *)self testArrayDataCharacteristic];
      uniqueIdentifier56 = [testArrayDataCharacteristic uniqueIdentifier];
      v155 = [uniqueIdentifier55 isEqual:uniqueIdentifier56];

      if (v155)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayData];
        [observers typeTestMultiService:self didUpdateTestArrayData:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType30 = [updateCopy characteristicType];
    if ([characteristicType30 isEqual:@"0x00000000FF00001D"])
    {
      uniqueIdentifier57 = [updateCopy uniqueIdentifier];
      testArrayRawDataCharacteristic = [(CAFTypeTestMulti *)self testArrayRawDataCharacteristic];
      uniqueIdentifier58 = [testArrayRawDataCharacteristic uniqueIdentifier];
      v160 = [uniqueIdentifier57 isEqual:uniqueIdentifier58];

      if (v160)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testArrayRawData];
        [observers typeTestMultiService:self didUpdateTestArrayRawData:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType31 = [updateCopy characteristicType];
    if ([characteristicType31 isEqual:@"0x00000000FF000020"])
    {
      uniqueIdentifier59 = [updateCopy uniqueIdentifier];
      testComplexItemsCharacteristic = [(CAFTypeTestMulti *)self testComplexItemsCharacteristic];
      uniqueIdentifier60 = [testComplexItemsCharacteristic uniqueIdentifier];
      v165 = [uniqueIdentifier59 isEqual:uniqueIdentifier60];

      if (v165)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testComplexItems];
        [observers typeTestMultiService:self didUpdateTestComplexItems:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    characteristicType32 = [updateCopy characteristicType];
    if ([characteristicType32 isEqual:@"0x00000000FF000021"])
    {
      uniqueIdentifier61 = [updateCopy uniqueIdentifier];
      testComplexItemValueCharacteristic = [(CAFTypeTestMulti *)self testComplexItemValueCharacteristic];
      uniqueIdentifier62 = [testComplexItemValueCharacteristic uniqueIdentifier];
      v170 = [uniqueIdentifier61 isEqual:uniqueIdentifier62];

      if (v170)
      {
        observers = [(CAFService *)self observers];
        testString = [(CAFTypeTestMulti *)self testComplexItemValue];
        [observers typeTestMultiService:self didUpdateTestComplexItemValue:testString];
        goto LABEL_4;
      }
    }

    else
    {
    }

    observers = [updateCopy characteristicType];
    if (![observers isEqual:@"0x00000000FF000022"])
    {
      goto LABEL_65;
    }

    uniqueIdentifier63 = [updateCopy uniqueIdentifier];
    testComplexItemListCharacteristic = [(CAFTypeTestMulti *)self testComplexItemListCharacteristic];
    uniqueIdentifier64 = [testComplexItemListCharacteristic uniqueIdentifier];
    v174 = [uniqueIdentifier63 isEqual:uniqueIdentifier64];

    if (!v174)
    {
      goto LABEL_66;
    }

    observers = [(CAFService *)self observers];
    testString = [(CAFTypeTestMulti *)self testComplexItemList];
    [observers typeTestMultiService:self didUpdateTestComplexItemList:testString];
    goto LABEL_4;
  }

  uniqueIdentifier65 = [updateCopy uniqueIdentifier];
  userVisibleLabelCharacteristic = [(CAFTypeTestMulti *)self userVisibleLabelCharacteristic];
  uniqueIdentifier66 = [userVisibleLabelCharacteristic uniqueIdentifier];
  v11 = [uniqueIdentifier65 isEqual:uniqueIdentifier66];

  if (!v11)
  {
    goto LABEL_6;
  }

  observers2 = [(CAFService *)self observers];
  userVisibleLabel = [(CAFTypeTestMulti *)self userVisibleLabel];
  [observers2 typeTestMultiService:self didUpdateUserVisibleLabel:userVisibleLabel];

  observers = [(CAFService *)self observers];
  testString = [(CAFTypeTestMulti *)self name];
  [observers typeTestMultiService:self didUpdateName:testString];
LABEL_4:

LABEL_65:
LABEL_66:
  v175.receiver = self;
  v175.super_class = CAFTypeTestMulti;
  [(CAFService *)&v175 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForTestBool
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000001"];

  return v10;
}

- (BOOL)registeredForTestUInt8
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000002"];

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

- (BOOL)registeredForTestUInt64
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000005"];

  return v10;
}

- (BOOL)registeredForTestInt8
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000006"];

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

- (BOOL)registeredForTestInt64
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000009"];

  return v10;
}

- (BOOL)registeredForTestFloat
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000A"];

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

- (BOOL)registeredForTestData
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000C"];

  return v10;
}

- (BOOL)registeredForTestRawData
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000D"];

  return v10;
}

- (BOOL)registeredForTestEnum
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000E"];

  return v10;
}

- (BOOL)registeredForTestDimensionUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00000F"];

  return v10;
}

- (BOOL)registeredForTestComplexItem
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000010"];

  return v10;
}

- (BOOL)registeredForTestArrayBool
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000011"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt8
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000012"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt16
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000013"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt32
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000014"];

  return v10;
}

- (BOOL)registeredForTestArrayUInt64
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000015"];

  return v10;
}

- (BOOL)registeredForTestArrayInt8
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000016"];

  return v10;
}

- (BOOL)registeredForTestArrayInt16
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000017"];

  return v10;
}

- (BOOL)registeredForTestArrayInt32
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000018"];

  return v10;
}

- (BOOL)registeredForTestArrayInt64
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000019"];

  return v10;
}

- (BOOL)registeredForTestArrayFloat
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001A"];

  return v10;
}

- (BOOL)registeredForTestArrayString
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001B"];

  return v10;
}

- (BOOL)registeredForTestArrayData
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001C"];

  return v10;
}

- (BOOL)registeredForTestArrayRawData
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF00001D"];

  return v10;
}

- (BOOL)registeredForTestComplexItems
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000020"];

  return v10;
}

- (BOOL)registeredForTestComplexItemValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000021"];

  return v10;
}

- (BOOL)registeredForTestComplexItemList
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000022"];

  return v10;
}

@end