@interface DDDiscoverySession
- (void)reportEvent:(DDDeviceEvent *)inEvent;
@end

@implementation DDDiscoverySession

- (void)reportEvent:(DDDeviceEvent *)inEvent
{
  v6 = inEvent;
  v4 = _Block_copy(self->_eventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

@end