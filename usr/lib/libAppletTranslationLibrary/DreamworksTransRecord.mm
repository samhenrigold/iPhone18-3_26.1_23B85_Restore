@interface DreamworksTransRecord
+ (id)recordNumber:(unsigned __int8)number recordData:(id)data seqnum:(unsigned int)seqnum;
@end

@implementation DreamworksTransRecord

+ (id)recordNumber:(unsigned __int8)number recordData:(id)data seqnum:(unsigned int)seqnum
{
  v5 = *&seqnum;
  numberCopy = number;
  dataCopy = data;
  v8 = objc_opt_new();
  [v8 setSfi:3];
  [v8 setNumber:numberCopy];
  [v8 setData:dataCopy];
  [v8 setIsIn:{(objc_msgSend(dataCopy, "u8:", 2) & 1) == 0}];
  [v8 setStationCode:{objc_msgSend(dataCopy, "u32BE:", 5)}];
  [v8 setVehicleType:{objc_msgSend(dataCopy, "u16BE:", 9)}];
  v9 = [dataCopy u64BE:11];

  0x3F = [MEMORY[0x277CBEAB8] dateWithYear:(v9 >> 57) + 2000 month:(v9 >> 53) & 0xF day:HIWORD(v9) & 0x1F hour:(v9 >> 43) & 0x1F minute:(v9 >> 37) & 0x3F second:(v9 >> 31) & 0x3F];
  [v8 setDatetime:0x3F];

  [v8 setSeqnum:v5];

  return v8;
}

@end