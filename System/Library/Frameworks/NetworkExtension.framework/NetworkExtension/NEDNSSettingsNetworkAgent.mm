@interface NEDNSSettingsNetworkAgent
- (id)copyAgentData;
@end

@implementation NEDNSSettingsNetworkAgent

- (id)copyAgentData
{
  v69[2] = *MEMORY[0x1E69E9840];
  v3 = nw_resolver_config_create();
  nw_resolver_config_set_class();
  settings = [(NEDNSSettingsNetworkAgent *)self settings];
  dnsProtocol = [settings dnsProtocol];

  if (dnsProtocol != 1)
  {
    if (dnsProtocol == 3)
    {
      settings2 = [(NEDNSSettingsNetworkAgent *)self settings];
      [settings2 proxyAgentUUID];
    }

    else if (dnsProtocol != 2)
    {
      v52 = 0;
      goto LABEL_42;
    }
  }

  nw_resolver_config_set_protocol();
  v69[0] = 0;
  v69[1] = 0;
  configurationUUID = [(NENetworkAgent *)self configurationUUID];
  [configurationUUID getUUIDBytes:v69];

  nw_resolver_config_set_identifier();
  settings3 = [(NEDNSSettingsNetworkAgent *)self settings];
  [settings3 allowFailover];
  nw_resolver_config_set_allow_failover();

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  settings4 = [(NEDNSSettingsNetworkAgent *)self settings];
  servers = [settings4 servers];

  v11 = [servers countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v63;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v63 != v13)
        {
          objc_enumerationMutation(servers);
        }

        [*(*(&v62 + 1) + 8 * i) UTF8String];
        nw_resolver_config_add_name_server();
      }

      v12 = [servers countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v12);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  settings5 = [(NEDNSSettingsNetworkAgent *)self settings];
  searchDomains = [settings5 searchDomains];

  v17 = [searchDomains countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(searchDomains);
        }

        [*(*(&v58 + 1) + 8 * j) UTF8String];
        nw_resolver_config_add_search_domain();
      }

      v18 = [searchDomains countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v18);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  settings6 = [(NEDNSSettingsNetworkAgent *)self settings];
  matchDomains = [settings6 matchDomains];
  settings7 = [(NEDNSSettingsNetworkAgent *)self settings];
  matchDomains2 = [settings7 matchDomains];
  v25 = [matchDomains2 count];

  if (v25 >= 0x32)
  {
    v26 = 50;
  }

  else
  {
    v26 = v25;
  }

  v27 = [matchDomains subarrayWithRange:{0, v26}];

  v28 = [v27 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v55;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v54 + 1) + 8 * k) UTF8String];
        nw_resolver_config_add_match_domain();
      }

      v29 = [v27 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v29);
  }

  settings8 = [(NEDNSSettingsNetworkAgent *)self settings];
  proxyAgentUUID = [settings8 proxyAgentUUID];

  if (proxyAgentUUID)
  {
    settings9 = [(NEDNSSettingsNetworkAgent *)self settings];
    proxyAgentUUID2 = [settings9 proxyAgentUUID];
    uUIDString = [proxyAgentUUID2 UUIDString];

    [uUIDString UTF8String];
    nw_resolver_config_set_proxy_agent();
  }

  settings10 = [(NEDNSSettingsNetworkAgent *)self settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    settings11 = [(NEDNSSettingsNetworkAgent *)self settings];
    serverName = [settings11 serverName];

    [serverName UTF8String];
    nw_resolver_config_set_provider_name();
    settings12 = [(NEDNSSettingsNetworkAgent *)self settings];
    identityReference = [settings12 identityReference];

    if (identityReference)
    {
      [identityReference bytes];
      [identityReference length];
      nw_resolver_config_set_identity_reference();
    }
  }

  settings13 = [(NEDNSSettingsNetworkAgent *)self settings];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if (v44)
  {
    settings14 = [(NEDNSSettingsNetworkAgent *)self settings];
    serverURL = [settings14 serverURL];

    v47 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:serverURL resolvingAgainstBaseURL:0];
    percentEncodedHost = [v47 percentEncodedHost];
    percentEncodedPath = [v47 percentEncodedPath];
    [percentEncodedHost UTF8String];
    nw_resolver_config_set_provider_name();
    [percentEncodedPath UTF8String];
    nw_resolver_config_set_provider_path();
    settings15 = [(NEDNSSettingsNetworkAgent *)self settings];
    identityReference2 = [settings15 identityReference];

    if (identityReference2)
    {
      [identityReference2 bytes];
      [identityReference2 length];
      nw_resolver_config_set_identity_reference();
    }
  }

  v52 = nw_resolver_config_copy_plist_data();
LABEL_42:

  return v52;
}

@end