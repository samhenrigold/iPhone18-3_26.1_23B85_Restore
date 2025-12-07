@interface CAFTypeTestObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)typeTestService:(id)service didUpdateTestBool:(BOOL)bool;
- (void)typeTestService:(id)service didUpdateTestComplexArrayItemValue:(id)value;
- (void)typeTestService:(id)service didUpdateTestComplexItem:(id)item;
- (void)typeTestService:(id)service didUpdateTestComplexItemList:(id)list;
- (void)typeTestService:(id)service didUpdateTestComplexItemValue:(id)value;
- (void)typeTestService:(id)service didUpdateTestComplexItems:(id)items;
- (void)typeTestService:(id)service didUpdateTestComplexNestedItemList:(id)list;
- (void)typeTestService:(id)service didUpdateTestComplexNestedItemValue:(id)value;
- (void)typeTestService:(id)service didUpdateTestComplexNestedListItemValue:(id)value;
- (void)typeTestService:(id)service didUpdateTestDimensionUnitRawValue:(unsigned __int16)value;
- (void)typeTestService:(id)service didUpdateTestEnum:(unsigned __int8)enum;
- (void)typeTestService:(id)service didUpdateTestFloat:(float)float;
- (void)typeTestService:(id)service didUpdateTestInt16:(signed __int16)int16;
- (void)typeTestService:(id)service didUpdateTestInt32:(int)int32;
- (void)typeTestService:(id)service didUpdateTestInt64:(int64_t)int64;
- (void)typeTestService:(id)service didUpdateTestInt8:(char)int8;
- (void)typeTestService:(id)service didUpdateTestString:(id)string;
- (void)typeTestService:(id)service didUpdateTestUInt16:(unsigned __int16)int16;
- (void)typeTestService:(id)service didUpdateTestUInt32:(unsigned int)int32;
- (void)typeTestService:(id)service didUpdateTestUInt64:(unint64_t)int64;
- (void)typeTestService:(id)service didUpdateTestUInt8:(unsigned __int8)int8;
@end

@implementation CAFTypeTestObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTypeTestObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestService:(id)service didUpdateTestBool:(BOOL)bool
{
  boolCopy = bool;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestBool:)(selfCopy, boolCopy);
}

- (void)typeTestService:(id)service didUpdateTestUInt8:(unsigned __int8)int8
{
  int8Copy = int8;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt8:)(selfCopy, int8Copy);
}

- (void)typeTestService:(id)service didUpdateTestUInt16:(unsigned __int16)int16
{
  int16Copy = int16;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt16:)(selfCopy, int16Copy);
}

- (void)typeTestService:(id)service didUpdateTestUInt32:(unsigned int)int32
{
  v4 = *&int32;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt32:)(selfCopy, v4);
}

- (void)typeTestService:(id)service didUpdateTestUInt64:(unint64_t)int64
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt64:)(selfCopy, int64);
}

- (void)typeTestService:(id)service didUpdateTestInt8:(char)int8
{
  int8Copy = int8;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt8:)(selfCopy, int8Copy);
}

- (void)typeTestService:(id)service didUpdateTestInt16:(signed __int16)int16
{
  int16Copy = int16;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt16:)(selfCopy, int16Copy);
}

- (void)typeTestService:(id)service didUpdateTestInt32:(int)int32
{
  v4 = *&int32;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt32:)(selfCopy, v4);
}

- (void)typeTestService:(id)service didUpdateTestInt64:(int64_t)int64
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestInt64:)(selfCopy, int64);
}

- (void)typeTestService:(id)service didUpdateTestFloat:(float)float
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestFloat:)(float, selfCopy, v7);
}

- (void)typeTestService:(id)service didUpdateTestString:(id)string
{
  if (string)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestString:)();
}

- (void)typeTestService:(id)service didUpdateTestEnum:(unsigned __int8)enum
{
  enumCopy = enum;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestEnum:)(selfCopy, enumCopy);
}

- (void)typeTestService:(id)service didUpdateTestDimensionUnitRawValue:(unsigned __int16)value
{
  valueCopy = value;
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestDimensionUnitRawValue:)(selfCopy, valueCopy);
}

- (void)typeTestService:(id)service didUpdateTestComplexItem:(id)item
{
  serviceCopy = service;
  itemCopy = item;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItem:)(selfCopy, item, v8, v9);
}

- (void)typeTestService:(id)service didUpdateTestComplexItems:(id)items
{
  serviceCopy = service;
  itemsCopy = items;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItems:)(selfCopy, items, v8, v9);
}

- (void)typeTestService:(id)service didUpdateTestComplexItemValue:(id)value
{
  serviceCopy = service;
  valueCopy = value;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItemValue:)(selfCopy, value, v8, v9);
}

- (void)typeTestService:(id)service didUpdateTestComplexItemList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItemList:)(selfCopy, list, v8, v9);
}

- (void)typeTestService:(id)service didUpdateTestComplexArrayItemValue:(id)value
{
  serviceCopy = service;
  valueCopy = value;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexArrayItemValue:)(selfCopy);
}

- (void)typeTestService:(id)service didUpdateTestComplexNestedItemValue:(id)value
{
  serviceCopy = service;
  valueCopy = value;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexNestedItemValue:)(selfCopy);
}

- (void)typeTestService:(id)service didUpdateTestComplexNestedItemList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexNestedItemList:)(selfCopy);
}

- (void)typeTestService:(id)service didUpdateTestComplexNestedListItemValue:(id)value
{
  serviceCopy = service;
  valueCopy = value;
  selfCopy = self;
  CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexNestedListItemValue:)(selfCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTypeTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestObservable.serviceDidFinishGroupUpdate(_:)();
}

@end