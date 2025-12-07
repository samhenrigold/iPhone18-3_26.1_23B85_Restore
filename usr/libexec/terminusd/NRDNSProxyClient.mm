@interface NRDNSProxyClient
- (id)description;
- (void)cancel;
- (void)start;
@end

@implementation NRDNSProxyClient

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = NRDNSProxyClient;
  [(NRDNSProxy *)&v4 cancel];
  if (self)
  {
    if (self->_discoveryProxyClient)
    {
      mrc_discovery_proxy_invalidate();
      discoveryProxyClient = self->_discoveryProxyClient;
      self->_discoveryProxyClient = 0;
    }
  }
}

- (id)description
{
  if (self)
  {
    if (self->super._isDiscoveryProxy)
    {
      v3 = "NRDiscoveryProxyClient";
    }

    else
    {
      v3 = "NRDNSProxyClient";
    }

    v4 = [NSString alloc];
    identifier = self->super._identifier;
    state = self->super._state;
    if (state <= 1)
    {
      if (state)
      {
        state = @"Preparing";
      }

      else
      {
        state = @"Invalid";
      }
    }

    else
    {
      switch(state)
      {
        case 2:
          state = @"Ready";
          break;
        case 3:
          state = @"Restarting";
          break;
        case 4:
          state = @"Failed";
          break;
        default:
          v8 = v4;
          state = [[NSString alloc] initWithFormat:@"Unknown(%u)", state];
          v4 = v8;
          break;
      }
    }
  }

  else
  {
    v4 = [NSString alloc];
    identifier = 0;
    state = @"Invalid";
    v3 = "NRDNSProxyClient";
  }

  v9 = [v4 initWithFormat:@"%s[%llu, %@]", v3, identifier, state];

  return v9;
}

- (void)start
{
  if (!self)
  {
    v34.receiver = 0;
    v34.super_class = NRDNSProxyClient;
    [(NRDNSProxy *)&v34 start];
    return;
  }

  if (!self->super._started)
  {
    v34.receiver = self;
    v34.super_class = NRDNSProxyClient;
    [(NRDNSProxy *)&v34 start];
    dnsProtocol = self->super._dnsProtocol;
    if (dnsProtocol != 1)
    {
      if (!dnsProtocol)
      {
        selfCopy2 = self;
        v5 = 2;
LABEL_16:
        sub_100023B5C(selfCopy2, v5);
        return;
      }

      goto LABEL_13;
    }

    if (!self->super._isDiscoveryProxy)
    {
LABEL_13:
      v13 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = self->super._nrUUID;
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = self->super._dnsProtocol;

        _NRLogWithArgs(v16, 17, "unsupported dns protocol %u", v17);
      }

LABEL_15:
      selfCopy2 = self;
      v5 = 4;
      goto LABEL_16;
    }

    if (!self->super._serverCertificateData)
    {
      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F10 != -1)
        {
          dispatch_once(&qword_100228F10, &stru_1001FA698);
        }

        _NRLogWithArgs(qword_100228F08, 17, "no server certificate failed");
      }

      goto LABEL_15;
    }

    v6 = mrc_discovery_proxy_parameters_create();
    if (v6)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = self->super._nrUUID;
        v10 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v10, 0, "%s%.30s:%-4d setting discovery proxy address %@", ", "[NRDNSProxyClient startDiscoveryProxyClient]"", 197, self->super._serverEndpoint);
      }

      addressFamily = [(NWAddressEndpoint *)self->super._serverEndpoint addressFamily];
      serverEndpoint = self->super._serverEndpoint;
      if (addressFamily == 2)
      {
        [(NWAddressEndpoint *)serverEndpoint address];
        mrc_discovery_proxy_parameters_add_server_ipv4_address();
      }

      else if ([(NWAddressEndpoint *)serverEndpoint addressFamily]== 30)
      {
        [(NWAddressEndpoint *)self->super._serverEndpoint address];
        mrc_discovery_proxy_parameters_add_server_ipv6_address();
      }

      mrc_discovery_proxy_parameters_add_match_domain();
      v18 = self->super._serverCertificateData;
      [(NSData *)v18 bytes];
      [(NSData *)v18 length];
      mrc_discovery_proxy_parameters_add_server_certificate();
      mrc_discovery_proxy_parameters_set_interface();
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v21, 0, "%s%.30s:%-4d setting interface index %u", ", "[NRDNSProxyClient startDiscoveryProxyClient]"", 211, self->_discoveryProxyInterfaceIndex);
      }

      v22 = mrc_discovery_proxy_create();
      if (v22)
      {
        mrc_discovery_proxy_set_queue();
        objc_initWeak(&location, self);
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_100023C44;
        v38 = &unk_1001FA600;
        objc_copyWeak(&v40, &location);
        v39 = v22;
        mrc_discovery_proxy_set_event_handler();
        mrc_discovery_proxy_activate();
        v23 = self->super._nrUUID;
        v24 = _NRCopyLogObjectForNRUUID();
        v25 = _NRLogIsLevelEnabled();

        if (v25)
        {
          v26 = self->super._nrUUID;
          v27 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v27, 0, "%s%.30s:%-4d discovery proxy client activated", ", "[NRDNSProxyClient startDiscoveryProxyClient]"", 255);
        }

        objc_storeStrong(&self->_discoveryProxyClient, v22);
        sub_100023B5C(self, 1);

        objc_destroyWeak(&v40);
        objc_destroyWeak(&location);
      }

      else
      {
        v31 = sub_1000233CC();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = sub_1000233CC();
          _NRLogWithArgs(v33, 17, "mrc_discovery_proxy_create failed");
        }

        sub_100023B5C(self, 4);
      }
    }

    else
    {
      v28 = sub_1000233CC();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = sub_1000233CC();
        _NRLogWithArgs(v30, 17, "mrc_discovery_proxy_parameters_create failed");
      }

      sub_100023B5C(self, 4);
    }
  }
}

@end