@interface AAUSBDeivce
- (id)description;
@end

@implementation AAUSBDeivce

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "AAUSBDeivce btAddress %@ pid %@ name %@ model %@ color %@", self->_btAddress, self->_pid, self->_name, self->_model, self->_color);
  v2 = v4;

  return v2;
}

@end