@interface NRIKEv2ListenerRegistration
- (id)description;
@end

@implementation NRIKEv2ListenerRegistration

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"%@/%@/%@", self->_localEndpoint, self->_interfaceName, self->_link];

  return v2;
}

@end