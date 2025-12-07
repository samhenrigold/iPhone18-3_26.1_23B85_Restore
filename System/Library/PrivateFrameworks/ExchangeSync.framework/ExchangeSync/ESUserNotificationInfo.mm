@interface ESUserNotificationInfo
- (id)handler;
- (void)setHandler:(id)handler;
@end

@implementation ESUserNotificationInfo

- (void)setHandler:(id)handler
{
  if (self->_handler != handler)
  {
    self->_handler = [handler copy];

    MEMORY[0x2821F96F8]();
  }
}

- (id)handler
{
  v2 = MEMORY[0x24C20FF50](self->_handler, a2);

  return v2;
}

@end