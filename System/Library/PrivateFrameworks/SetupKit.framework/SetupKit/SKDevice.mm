@interface SKDevice
- (id)description;
@end

@implementation SKDevice

- (id)description
{
  v3 = [objc_opt_class() description];
  v4 = NSPrintF("%@: ID %@, PSM 0x%X", v3, self->_identifier, self->_blePSM);

  return v4;
}

@end