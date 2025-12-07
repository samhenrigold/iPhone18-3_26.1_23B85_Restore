@interface CAFTypeTestWithStatesObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)typeTestWithStatesService:(id)service didUpdateTestBool:(BOOL)bool;
- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItem:(id)item;
- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItemList:(id)list;
- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItemValue:(id)value;
- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItems:(id)items;
- (void)typeTestWithStatesService:(id)service didUpdateTestDimensionUnitRawValue:(unsigned __int16)value;
- (void)typeTestWithStatesService:(id)service didUpdateTestEnum:(unsigned __int8)enum;
- (void)typeTestWithStatesService:(id)service didUpdateTestFloat:(float)float;
- (void)typeTestWithStatesService:(id)service didUpdateTestInt16:(signed __int16)int16;
- (void)typeTestWithStatesService:(id)service didUpdateTestInt32:(int)int32;
- (void)typeTestWithStatesService:(id)service didUpdateTestInt64:(int64_t)int64;
- (void)typeTestWithStatesService:(id)service didUpdateTestInt8:(char)int8;
- (void)typeTestWithStatesService:(id)service didUpdateTestString:(id)string;
- (void)typeTestWithStatesService:(id)service didUpdateTestUInt16:(unsigned __int16)int16;
- (void)typeTestWithStatesService:(id)service didUpdateTestUInt32:(unsigned int)int32;
- (void)typeTestWithStatesService:(id)service didUpdateTestUInt64:(unint64_t)int64;
- (void)typeTestWithStatesService:(id)service didUpdateTestUInt8:(unsigned __int8)int8;
@end

@implementation CAFTypeTestWithStatesObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTypeTestWithStatesObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestWithStatesService:(id)service didUpdateTestBool:(BOOL)bool
{
  boolCopy = bool;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestBool:)(selfCopy, boolCopy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestUInt8:(unsigned __int8)int8
{
  int8Copy = int8;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt8:)(selfCopy, int8Copy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestUInt16:(unsigned __int16)int16
{
  int16Copy = int16;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt16:)(selfCopy, int16Copy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestUInt32:(unsigned int)int32
{
  v4 = *&int32;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt32:)(selfCopy, v4);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestUInt64:(unint64_t)int64
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt64:)(selfCopy, int64);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestInt8:(char)int8
{
  int8Copy = int8;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt8:)(selfCopy, int8Copy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestInt16:(signed __int16)int16
{
  int16Copy = int16;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt16:)(selfCopy, int16Copy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestInt32:(int)int32
{
  v4 = *&int32;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt32:)(selfCopy, v4);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestInt64:(int64_t)int64
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestInt64:)(selfCopy, int64);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestFloat:(float)float
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestFloat:)(float, selfCopy, v7);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestString:(id)string
{
  if (string)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestString:)();
}

- (void)typeTestWithStatesService:(id)service didUpdateTestEnum:(unsigned __int8)enum
{
  enumCopy = enum;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestEnum:)(selfCopy, enumCopy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestDimensionUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestDimensionUnitRawValue:)(selfCopy, valueCopy);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItem:(id)item
{
  serviceCopy = service;
  itemCopy = item;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItem:)(selfCopy, item, v8, v9);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItems:(id)items
{
  serviceCopy = service;
  itemsCopy = items;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItems:)(selfCopy, items, v8, v9);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItemValue:(id)value
{
  serviceCopy = service;
  valueCopy = value;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItemValue:)(selfCopy, value, v8, v9);
}

- (void)typeTestWithStatesService:(id)service didUpdateTestComplexItemList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItemList:)(selfCopy, list, v8, v9);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestWithStatesObservable.serviceDidFinishGroupUpdate(_:)();
}

@end