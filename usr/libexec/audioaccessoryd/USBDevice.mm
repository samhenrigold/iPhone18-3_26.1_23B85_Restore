@interface USBDevice
- (id)description;
@end

@implementation USBDevice

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "USBDevice btAddress %@ name %@ model %@ pid %@ color %@ pairingMode %@", self->_btAddress, self->_usbName, self->_usbModel, self->_pid, self->_color, self->_pairingMode);
  v2 = v4;

  return v2;
}

@end