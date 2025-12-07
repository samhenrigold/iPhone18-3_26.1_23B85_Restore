@interface NRDNSProxyServer
- (id)description;
- (void)cancel;
- (void)start;
@end

@implementation NRDNSProxyServer

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = NRDNSProxyServer;
  [(NRDNSProxy *)&v4 cancel];
  if (self)
  {
    if (self->_do53Proxy)
    {
      mrc_dns_proxy_invalidate();
      do53Proxy = self->_do53Proxy;
      self->_do53Proxy = 0;
    }
  }
}

- (void)start
{
  if (self)
  {
    if (!self->super._started)
    {
      v8.receiver = self;
      v8.super_class = NRDNSProxyServer;
      [(NRDNSProxy *)&v8 start];
      if (self->super._state - 1 >= 2)
      {
        if (self->super._dnsProtocol)
        {
          v3 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v5 = self->super._nrUUID;
            v6 = _NRCopyLogObjectForNRUUID();
            dnsProtocol = self->super._dnsProtocol;

            _NRLogWithArgs(v6, 17, "unsupported dns protocol %u", dnsProtocol);
          }

          sub_100023B5C(self, 4);
        }

        else
        {
          sub_1000240D0(self);
        }
      }
    }
  }

  else
  {
    v8.receiver = 0;
    v8.super_class = NRDNSProxyServer;
    [(NRDNSProxy *)&v8 start];
  }
}

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    identifier = self->super._identifier;
    state = self->super._state;
    if (state >= 5)
    {
      v7 = v3;
      state = [[NSString alloc] initWithFormat:@"Unknown(%u)", state];
      v3 = v7;
    }

    else
    {
      state = *(&off_1001FA6B8 + self->super._state);
    }

    localIfIndices = self->_localIfIndices;
  }

  else
  {
    identifier = 0;
    localIfIndices = 0;
    state = @"Invalid";
  }

  localIfIndices = [v3 initWithFormat:@"NRDNSProxyServer[%llu, %@, idx:%@]", identifier, state, localIfIndices];

  return localIfIndices;
}

@end