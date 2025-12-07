@interface SKDRecordUpdate
- (SKDRecordUpdate)initWithStatus:(unsigned __int8)status identifier:(id)identifier bundleID:(id)d;
@end

@implementation SKDRecordUpdate

- (SKDRecordUpdate)initWithStatus:(unsigned __int8)status identifier:(id)identifier bundleID:(id)d
{
  statusCopy = status;
  dCopy = d;
  v9 = [(SKDEvent *)self initWithType:7 status:statusCopy identifier:identifier info:0];
  [(SKDItemUpdate *)v9 setBundleID:dCopy];

  return v9;
}

@end