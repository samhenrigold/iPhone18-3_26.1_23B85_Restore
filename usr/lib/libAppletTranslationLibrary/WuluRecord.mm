@interface WuluRecord
+ (id)withRecordSfi:(unsigned __int8)sfi recordNumber:(unsigned __int8)number recordData:(id)data associatedSerialNumber:(unsigned __int16)serialNumber;
@end

@implementation WuluRecord

+ (id)withRecordSfi:(unsigned __int8)sfi recordNumber:(unsigned __int8)number recordData:(id)data associatedSerialNumber:(unsigned __int16)serialNumber
{
  serialNumberCopy = serialNumber;
  numberCopy = number;
  sfiCopy = sfi;
  dataCopy = data;
  v10 = objc_opt_new();
  [v10 setSfi:sfiCopy];
  [v10 setNumber:numberCopy];
  [v10 setData:dataCopy];

  [v10 setAssociatedSerialNumber:serialNumberCopy];

  return v10;
}

@end