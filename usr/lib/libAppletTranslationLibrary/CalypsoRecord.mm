@interface CalypsoRecord
+ (id)withRecordSfi:(unsigned __int8)sfi recordNumber:(unsigned __int8)number recordData:(id)data;
@end

@implementation CalypsoRecord

+ (id)withRecordSfi:(unsigned __int8)sfi recordNumber:(unsigned __int8)number recordData:(id)data
{
  numberCopy = number;
  sfiCopy = sfi;
  dataCopy = data;
  v8 = objc_opt_new();
  [v8 setSfi:sfiCopy];
  [v8 setNumber:numberCopy];
  [v8 setData:dataCopy];

  return v8;
}

@end