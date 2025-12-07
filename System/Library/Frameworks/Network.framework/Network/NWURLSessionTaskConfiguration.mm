@interface NWURLSessionTaskConfiguration
- (NWConcrete_nw_http_cookie_storage)HTTPCookieStorage;
- (_DWORD)activity;
- (id)connectionStateStorage;
- (id)createRegistrableDomain:(void *)domain;
- (id)initWithConfiguration:(void *)configuration task:(void *)task request:;
- (id)sourceApplicationBundleIdentifier;
- (void)URLCredentialStorage;
- (void)configureConnection:(uint64_t)connection;
- (void)configureParameters:(id *)parameters;
- (void)configureSecProtocolOptions:(int)options QUIC:;
- (void)updateRequest:(uint64_t)request;
@end

@implementation NWURLSessionTaskConfiguration

- (id)connectionStateStorage
{
  if (self)
  {
    v1 = *(self + 24);
    if (v1)
    {
      v2 = *(v1 + 416);
      v3 = v2;
      if (v2)
      {
        v4 = *(v2 + 9);
        if (!v4)
        {
          _alternativeServicesStorage = [*(v2 + 12) _alternativeServicesStorage];
          v6 = _alternativeServicesStorage;
          if (_alternativeServicesStorage)
          {
            ns = nw_http_connection_state_storage_create_ns(_alternativeServicesStorage);
            v8 = v3[9];
            v3[9] = ns;
          }

          v4 = v3[9];
        }

        v9 = v4;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
    }

    v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (NWConcrete_nw_http_cookie_storage)HTTPCookieStorage
{
  if (self)
  {
    selfCopy = self;
    cookieStorage = self[1].cookieStorage;
    if (cookieStorage && BYTE2(cookieStorage[1]._internal) == 1)
    {
      self = cookieStorage[28].super.isa;
LABEL_20:
      v1 = vars8;
      goto LABEL_21;
    }

    if (self[2].super.isa)
    {
      v4 = CFURLRequestCopyHTTPCookieStorage();
    }

    else
    {
      v4 = 0;
    }

    mEMORY[0x1E695AC00] = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
    v6 = mEMORY[0x1E695AC00];
    if (v4)
    {
      if (v4 != [mEMORY[0x1E695AC00] _cookieStorage])
      {
        v7 = [objc_alloc(MEMORY[0x1E695AC00]) _initWithCFHTTPCookieStorage:v4];
        CFRelease(v4);
        v8 = v7;
        v9 = objc_alloc_init(NWConcrete_nw_http_cookie_storage);
        v10 = v9->cookieStorage;
        v11 = v9;
        v9->cookieStorage = v8;

        goto LABEL_19;
      }

      CFRelease(v4);
    }

    v12 = selfCopy[1].cookieStorage;
    if (v12)
    {
      v13 = v12[26].super.isa;
      v8 = v13;
      if (v13)
      {
        v14 = v13[6];
        if (!v14)
        {
          hTTPCookieStorage = [v13[12] HTTPCookieStorage];
          v16 = hTTPCookieStorage;
          if (hTTPCookieStorage)
          {
            v17 = hTTPCookieStorage;
            v18 = objc_alloc_init(NWConcrete_nw_http_cookie_storage);
            v19 = v18->cookieStorage;
            v18->cookieStorage = v17;

            isa = v8[3].super.isa;
            v8[3].super.isa = v18;
          }

          v14 = v8[3].super.isa;
        }

        v11 = v14;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = 0;
LABEL_19:

    self = v11;
    goto LABEL_20;
  }

LABEL_21:

  return self;
}

- (void)URLCredentialStorage
{
  if (self)
  {
    v2 = self[3];
    if (v2)
    {
      if (*(v2 + 27))
      {
        self = 0;
LABEL_12:
        v1 = vars8;
        goto LABEL_13;
      }

      v3 = *(v2 + 416);
      v4 = v3;
      if (v3)
      {
        v5 = *(v3 + 7);
        if (!v5)
        {
          uRLCredentialStorage = [*(v3 + 12) URLCredentialStorage];
          v7 = uRLCredentialStorage;
          if (uRLCredentialStorage)
          {
            v8 = uRLCredentialStorage;
            v9 = objc_alloc_init(NWConcrete_nw_authentication_credential_storage);
            credentialStorage = v9->credentialStorage;
            v9->credentialStorage = v8;

            v11 = v4[7];
            v4[7] = v9;
          }

          v5 = v4[7];
        }

        v12 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
LABEL_11:

    self = v12;
    goto LABEL_12;
  }

LABEL_13:

  return self;
}

- (_DWORD)activity
{
  if (self)
  {
    v2 = (self + 40);
    v1 = *(self + 40);
    if (v1)
    {
      _nw_activity = v1;
    }

    else
    {
      v4 = *(self + 24);
      _nw_activity = [v4 _nw_activity];

      if (!_nw_activity)
      {
        _nw_activity = nw_activity_create(12, 2);
        nw_activity_activate(_nw_activity);
      }

      objc_storeStrong(v2, _nw_activity);
    }
  }

  else
  {
    _nw_activity = 0;
  }

  return _nw_activity;
}

- (id)initWithConfiguration:(void *)configuration task:(void *)task request:
{
  v8 = a2;
  configurationCopy = configuration;
  taskCopy = task;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = NWURLSessionTaskConfiguration;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(self + 3, configuration);
      objc_storeStrong(self + 4, task);
      if ([self[4] _explicitlySetTimeoutInterval])
      {
        [self[4] timeoutInterval];
      }

      else
      {
        [self[2] timeoutIntervalForRequest];
      }

      self[6] = v12;
    }
  }

  return self;
}

- (void)updateRequest:(uint64_t)request
{
  v4 = a2;
  if (request)
  {
    v6 = v4;
    objc_storeStrong((request + 32), a2);
    if ([*(request + 32) _explicitlySetTimeoutInterval])
    {
      [*(request + 32) timeoutInterval];
    }

    else
    {
      [*(request + 16) timeoutIntervalForRequest];
    }

    *(request + 48) = v5;
    v4 = v6;
  }
}

- (void)configureParameters:(id *)parameters
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!parameters)
  {
    goto LABEL_125;
  }

  v4 = parameters[3];
  v5 = v4;
  if (v4)
  {
    v6 = v4[52];
    _sourceApplicationAuditTokenData3 = v6;
    if (!v6)
    {
      goto LABEL_184;
    }

    v8 = *(v6 + 20);
  }

  else
  {
    _sourceApplicationAuditTokenData3 = 0;
    v8 = 0;
  }

  while (1)
  {
    v9 = v8;
    nw_parameters_set_context(v3, v9);

    v10 = parameters + 4;
    _explicitlySetNetworkServiceType = [parameters[4] _explicitlySetNetworkServiceType];
    v12 = parameters + 2;
    v13 = 2;
    if (_explicitlySetNetworkServiceType)
    {
      v13 = 4;
    }

    networkServiceType = [parameters[v13] networkServiceType];
    if (networkServiceType > 0xB)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_182B08FC4[networkServiceType];
    }

    nw_parameters_set_traffic_class(v3, v15);
    if ([*v10 _explicitlySetAllowsCellularAccess])
    {
      v16 = parameters + 4;
    }

    else
    {
      v16 = parameters + 2;
    }

    if (([*v16 allowsCellularAccess] & 1) == 0)
    {
      nw_parameters_prohibit_interface_type(v3, nw_interface_type_cellular);
    }

    if ([*v10 _explicitlySetAllowsExpensiveNetworkAccess])
    {
      v17 = parameters + 4;
    }

    else
    {
      v17 = parameters + 2;
    }

    if (([*v17 allowsExpensiveNetworkAccess] & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v3, 1);
    }

    if ([*v10 _explicitlySetAllowsConstrainedNetworkAccess])
    {
      v18 = parameters + 4;
    }

    else
    {
      v18 = parameters + 2;
    }

    if (([*v18 allowsConstrainedNetworkAccess] & 1) == 0)
    {
      nw_parameters_set_prohibit_constrained(v3, 1);
    }

    v19 = *v10;
    if ([v19 _explicitlySetAllowsUCA])
    {
    }

    else
    {
      _explicitlySetAllowsUCA = [*v12 _explicitlySetAllowsUCA];

      if (!_explicitlySetAllowsUCA)
      {
        goto LABEL_32;
      }
    }

    v21 = [*v10 _explicitlySetAllowsUCA] ? parameters + 4 : parameters + 2;
    nw_parameters_set_allow_ultra_constrained(v3, [*v21 _allowsUCA]);
LABEL_32:
    if ([*v10 _explicitlySetRequiresDNSSECValidation])
    {
      v22 = parameters + 4;
    }

    else
    {
      v22 = parameters + 2;
    }

    if ([*v22 requiresDNSSECValidation])
    {
      nw_parameters_set_requires_dnssec_validation(v3, 1);
    }

    if (([*v12 waitsForConnectivity] & 1) == 0)
    {
      nw_parameters_set_indefinite(v3);
    }

    if (*v10)
    {
      v23 = CFURLRequestGetProxySettings();
      if (v23)
      {
        v24 = v23;
        *objects = _CFXPCCreateXPCObjectFromCFObject();
        v25 = xpc_array_create(objects, 1uLL);
        v26 = v25;
        v5 = v25 ? nw_proxy_configs_create_with_schema_array(v25) : 0;

        if (v5)
        {
          goto LABEL_55;
        }
      }
    }

    v27 = parameters[3];
    if (v27)
    {
      v28 = v27[52];
      v29 = v28;
      if (v28)
      {
        v30 = *(v28 + 10);
        if (!v30)
        {
          connectionProxyDictionary = [*(v28 + 12) connectionProxyDictionary];
          if (connectionProxyDictionary)
          {
            *objects = _CFXPCCreateXPCObjectFromCFObject();
            v32 = xpc_array_create(objects, 1uLL);
            v33 = v32;
            if (v32)
            {
              v34 = nw_proxy_configs_create_with_schema_array(v32);
              v35 = v29[10];
              v29[10] = v34;
            }
          }

          v30 = v29[10];
        }

        v5 = v30;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v29 = 0;
      v5 = 0;
    }

    if (v5)
    {
LABEL_55:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__NWURLSessionTaskConfiguration_configureParameters___block_invoke;
      aBlock[3] = &unk_1E6A3CCB8;
      v100 = v3;
      _nw_array_apply(v5, aBlock);
    }

    nw_parameters_set_multipath_service(v3, [parameters[2] multipathServiceType]);
    sourceApplicationBundleIdentifier = [(NWURLSessionTaskConfiguration *)parameters sourceApplicationBundleIdentifier];

    if (sourceApplicationBundleIdentifier)
    {
      sourceApplicationBundleIdentifier2 = [(NWURLSessionTaskConfiguration *)parameters sourceApplicationBundleIdentifier];
      _sourceApplicationAuditTokenData = [parameters[2] _sourceApplicationAuditTokenData];

      uTF8String = [sourceApplicationBundleIdentifier2 UTF8String];
      if (_sourceApplicationAuditTokenData)
      {
        nw_parameters_set_effective_bundle_id(v3, uTF8String);
      }

      else
      {
        nw_parameters_set_source_application_by_bundle_id_internal(v3, uTF8String, 0);
      }
    }

    _sourceApplicationSecondaryIdentifier = [*v12 _sourceApplicationSecondaryIdentifier];

    if (_sourceApplicationSecondaryIdentifier)
    {
      _sourceApplicationSecondaryIdentifier2 = [*v12 _sourceApplicationSecondaryIdentifier];
      nw_parameters_set_account_id(v3, [_sourceApplicationSecondaryIdentifier2 UTF8String]);
    }

    _sourceApplicationAuditTokenData2 = [*v12 _sourceApplicationAuditTokenData];

    if (!_sourceApplicationAuditTokenData2)
    {
      goto LABEL_66;
    }

    _sourceApplicationAuditTokenData3 = [*v12 _sourceApplicationAuditTokenData];
    if ([_sourceApplicationAuditTokenData3 length] == 32)
    {
      break;
    }

    _os_crash();
    __break(1u);
LABEL_184:
    v8 = 0;
  }

  bytes = [_sourceApplicationAuditTokenData3 bytes];
  *objects = *bytes;
  *&objects[16] = bytes[1];
  nw_parameters_set_source_application(v3, objects);

LABEL_66:
  _CTDataConnectionServiceType = [*v12 _CTDataConnectionServiceType];
  if (_CTDataConnectionServiceType)
  {
    v45 = _CTDataConnectionServiceType;
    boundInterfaceIdentifier = [*v10 boundInterfaceIdentifier];

    if (!boundInterfaceIdentifier)
    {
      v47 = xpc_array_create(0, 0);
      xpc_array_set_string(v47, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
      v48 = xpc_array_create(0, 0);
      _CTDataConnectionServiceType2 = [*v12 _CTDataConnectionServiceType];
      v50 = 0;
      if ([_CTDataConnectionServiceType2 hasPrefix:@"kCTDataConnectionServiceType"])
      {
        v50 = [@"kCTDataConnectionServiceType" length];
      }

      xpc_array_set_string(v48, 0xFFFFFFFFFFFFFFFFLL, ([_CTDataConnectionServiceType2 UTF8String] + v50));
      nw_parameters_set_required_netagent_classes(v3, v47, v48);
    }
  }

  if ([*v12 _requiresSecureHTTPSProxyConnection])
  {
    nw_parameters_set_https_proxy_over_tls(v3);
  }

  if ([*v12 _preventsSystemHTTPProxyAuthentication])
  {
    if (v3)
    {
      _nw_parameters_set_prevents_system_http_proxy_authentication();
      goto LABEL_76;
    }

    v69 = __nwlog_obj();
    *objects = 136446210;
    *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
    v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s called with null parameters", objects, 12);

    type = OS_LOG_TYPE_ERROR;
    v101 = 0;
    if (__nwlog_fault(v70, &type, &v101))
    {
      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v101 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v71 = __nwlog_obj();
          v72 = type;
          v85 = os_log_type_enabled(v71, type);
          if (backtrace_string)
          {
            if (v85)
            {
              *objects = 136446466;
              *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
              *&objects[12] = 2082;
              *&objects[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null parameters, dumping backtrace:%{public}s", objects, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_173;
          }

          if (!v85)
          {
            goto LABEL_172;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
          v73 = "%{public}s called with null parameters, no backtrace";
        }

        else
        {
          v71 = __nwlog_obj();
          v72 = type;
          if (!os_log_type_enabled(v71, type))
          {
            goto LABEL_172;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
          v73 = "%{public}s called with null parameters, backtrace limit exceeded";
        }

LABEL_171:
        _os_log_impl(&dword_181A37000, v71, v72, v73, objects, 0xCu);
        goto LABEL_172;
      }

      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *objects = 136446210;
        *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
        v73 = "%{public}s called with null parameters";
        goto LABEL_171;
      }

LABEL_172:
    }

LABEL_173:
    if (v70)
    {
      free(v70);
    }
  }

LABEL_76:
  v98 = v5;
  _attributedBundleIdentifier = [*v12 _attributedBundleIdentifier];

  if (_attributedBundleIdentifier)
  {
    _attributedBundleIdentifier2 = [*v12 _attributedBundleIdentifier];
    nw_parameters_set_attributed_bundle_identifier(v3, [_attributedBundleIdentifier2 UTF8String]);
  }

  nw_parameters_set_skip_stack_trace_capture(v3);
  [parameters[3] countOfBytesClientExpectsToSend];
  [parameters[3] countOfBytesClientExpectsToReceive];
  nw_parameters_set_expected_workload(v3);
  if ([parameters[4] attribution] == 1)
  {
    nw_parameters_set_attribution(v3, nw_parameters_attribution_user);
  }

  if ([*v10 allowsPersistentDNS])
  {
    nw_parameters_set_expired_dns_behavior(v3, nw_parameters_expired_dns_behavior_prohibit|nw_parameters_expired_dns_behavior_allow);
  }

  mainDocumentURL = [*v10 mainDocumentURL];
  host = [mainDocumentURL host];

  v55 = [NWURLSessionTaskConfiguration createRegistrableDomain:host];
  v56 = *v10;
  v57 = [v56 URL];
  host2 = [v57 host];

  v59 = [NWURLSessionTaskConfiguration createRegistrableDomain:host2];
  _trackerContext = [*v10 _trackerContext];
  v61 = _trackerContext;
  if (_trackerContext || ([*v10 mainDocumentURL], v63 = objc_claimAutoreleasedReturnValue(), v64 = -[NSURL _NW_isHTTPish](v63), v63, v64) && ((_trackerContext = v55) != 0 || (_trackerContext = host) != 0))
  {
    nw_parameters_set_attribution_context(v3, [_trackerContext UTF8String]);
  }

  mainDocumentURL2 = [*v10 mainDocumentURL];

  if (mainDocumentURL2)
  {
    if (v55 && v59)
    {
      if ([v55 isEqualToString:v59])
      {
LABEL_95:
        mainDocumentURL3 = [*v10 mainDocumentURL];
        nw_parameters_set_main_document_cfurl(v3, mainDocumentURL3);

        goto LABEL_96;
      }
    }

    else if ([host isEqualToString:host2])
    {
      goto LABEL_95;
    }

    nw_parameters_set_is_third_party_web_content(v3, 1);
    goto LABEL_95;
  }

LABEL_96:
  boundInterfaceIdentifier2 = [*v10 boundInterfaceIdentifier];

  if (boundInterfaceIdentifier2)
  {
    boundInterfaceIdentifier3 = [*v10 boundInterfaceIdentifier];
    v68 = nw_interface_create_with_name([boundInterfaceIdentifier3 UTF8String]);
    nw_parameters_require_interface(v3, v68);
  }

  if ([*v10 _prohibitPrivacyProxy])
  {
    nw_parameters_set_prohibit_privacy_proxy(v3);
  }

  if ([*v10 _privacyProxyFailClosed])
  {
    nw_parameters_set_privacy_proxy_fail_closed(v3);
  }

  if ([*v10 _privacyProxyStrictFailClosed])
  {
    nw_parameters_set_privacy_proxy_strict_fail_closed(v3);
  }

  if ([*v10 _privacyProxyFailClosedForUnreachableHosts])
  {
    nw_parameters_set_privacy_proxy_fail_closed_for_unreachable_hosts(v3);
  }

  if ([*v10 _privacyProxyFailClosedForUnreachableNonMainHosts] && host && objc_msgSend(host, "caseInsensitiveCompare:", host2))
  {
    nw_parameters_set_privacy_proxy_fail_closed_for_unreachable_hosts(v3);
  }

  if ([*v10 _needsNetworkTrackingPrevention])
  {
    nw_parameters_set_is_known_tracker(v3, 1);
  }

  if ([*v10 _useEnhancedPrivacyMode])
  {
    nw_parameters_set_use_enhanced_privacy_mode(v3, 1);
  }

  if ([*v10 _blockTrackers])
  {
    nw_parameters_set_block_trackers(v3);
  }

  if ([*v10 _isWebSearchContent])
  {
    nw_parameters_set_web_search_content(v3, 1);
  }

  if (![*v10 _allowPrivateAccessTokensForThirdParty])
  {
    goto LABEL_121;
  }

  if (v3)
  {
    _nw_parameters_set_allow_private_access_tokens_for_third_party();
    goto LABEL_121;
  }

  v74 = __nwlog_obj();
  *objects = 136446210;
  *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
  LODWORD(v95) = 12;
  v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null parameters", objects, v95);

  type = OS_LOG_TYPE_ERROR;
  v101 = 0;
  v97 = v75;
  if (!__nwlog_fault(v75, &type, &v101))
  {
LABEL_160:
    v90 = v75;
    if (!v75)
    {
      goto LABEL_121;
    }

    goto LABEL_161;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v76 = __nwlog_obj();
    v77 = type;
    if (os_log_type_enabled(v76, type))
    {
      *objects = 136446210;
      *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
      v78 = "%{public}s called with null parameters";
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  if (v101 != 1)
  {
    v76 = __nwlog_obj();
    v77 = type;
    if (os_log_type_enabled(v76, type))
    {
      *objects = 136446210;
      *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
      v78 = "%{public}s called with null parameters, backtrace limit exceeded";
LABEL_158:
      _os_log_impl(&dword_181A37000, v76, v77, v78, objects, 0xCu);
    }

LABEL_159:

    goto LABEL_160;
  }

  v86 = __nw_create_backtrace_string();
  v87 = __nwlog_obj();
  v88 = type;
  v89 = os_log_type_enabled(v87, type);
  if (v86)
  {
    if (v89)
    {
      *objects = 136446466;
      *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
      *&objects[12] = 2082;
      *&objects[14] = v86;
      _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null parameters, dumping backtrace:%{public}s", objects, 0x16u);
    }

    free(v86);
    v90 = v97;
    if (!v97)
    {
      goto LABEL_121;
    }

LABEL_161:
    free(v90);
    goto LABEL_121;
  }

  if (v89)
  {
    *objects = 136446210;
    *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
    _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null parameters, no backtrace", objects, 0xCu);
  }

  v90 = v97;
  if (v97)
  {
    goto LABEL_161;
  }

LABEL_121:
  if ([*v12 _inPrivateBrowsing])
  {
    if (v3)
    {
      _nw_parameters_set_using_ephemeral_configuration();
      goto LABEL_124;
    }

    v79 = __nwlog_obj();
    *objects = 136446210;
    *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
    LODWORD(v95) = 12;
    v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null parameters", objects, v95);

    type = OS_LOG_TYPE_ERROR;
    v101 = 0;
    if (__nwlog_fault(v80, &type, &v101))
    {
      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v101 == 1)
        {
          v91 = __nw_create_backtrace_string();
          v81 = __nwlog_obj();
          v96 = type;
          v92 = os_log_type_enabled(v81, type);
          if (v91)
          {
            if (v92)
            {
              *objects = 136446466;
              *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
              *&objects[12] = 2082;
              *&objects[14] = v91;
              _os_log_impl(&dword_181A37000, v81, v96, "%{public}s called with null parameters, dumping backtrace:%{public}s", objects, 0x16u);
            }

            free(v91);
            goto LABEL_167;
          }

          if (!v92)
          {
            goto LABEL_166;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
          v83 = "%{public}s called with null parameters, no backtrace";
          v93 = v81;
          v94 = v96;
        }

        else
        {
          v81 = __nwlog_obj();
          v82 = type;
          if (!os_log_type_enabled(v81, type))
          {
            goto LABEL_166;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
          v83 = "%{public}s called with null parameters, backtrace limit exceeded";
LABEL_164:
          v93 = v81;
          v94 = v82;
        }

        _os_log_impl(&dword_181A37000, v93, v94, v83, objects, 0xCu);
        goto LABEL_166;
      }

      v81 = __nwlog_obj();
      v82 = type;
      if (os_log_type_enabled(v81, type))
      {
        *objects = 136446210;
        *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
        v83 = "%{public}s called with null parameters";
        goto LABEL_164;
      }

LABEL_166:
    }

LABEL_167:
    if (v80)
    {
      free(v80);
    }
  }

LABEL_124:

LABEL_125:
}

- (id)sourceApplicationBundleIdentifier
{
  selfCopy = self;
  if (self)
  {
    _sourceApplicationBundleIdentifierForMobileAsset = [self[3] _sourceApplicationBundleIdentifierForMobileAsset];
    v3 = _sourceApplicationBundleIdentifierForMobileAsset;
    if (_sourceApplicationBundleIdentifierForMobileAsset)
    {
      _sourceApplicationBundleIdentifier = _sourceApplicationBundleIdentifierForMobileAsset;
    }

    else
    {
      _sourceApplicationBundleIdentifier = [selfCopy[2] _sourceApplicationBundleIdentifier];
    }

    selfCopy = _sourceApplicationBundleIdentifier;
  }

  return selfCopy;
}

- (id)createRegistrableDomain:(void *)domain
{
  v33 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v2 = domainCopy;
  if (domainCopy)
  {
    v4 = domainCopy;
    v5 = [v4 length];
    if (v5 >= 0x101)
    {
      goto LABEL_28;
    }

    v6 = v5;
    if (!v5)
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *dest = 136446210;
      v32 = "[NWURLSessionTaskConfiguration createIDNAEncodedDomain:]";
      v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s strict_malloc called with size 0", dest, 12);

      result = __nwlog_should_abort(v27);
      if (result)
      {
        goto LABEL_49;
      }

      free(v27);
    }

    v7 = malloc_type_malloc(2 * v6, 0x3202746FuLL);
    if (v7)
    {
      [v4 getCharacters:v7 range:{0, v6}];
      if (!v6)
      {
        goto LABEL_27;
      }

LABEL_13:
      v12 = 0;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v7[v12];
        if ((v15 - 65) <= 0x19)
        {
          v15 |= 0x20u;
          v7[v12] = v15;
          v13 = 1;
        }

        v14 &= (v15 - 32) < 0x60;
        ++v12;
      }

      while (v6 != v12);
      if (v14)
      {
        if ((v13 & 1) == 0)
        {
LABEL_27:
          free(v7);
LABEL_28:
          v20 = [v4 copy];

          if (!v20)
          {
            goto LABEL_39;
          }

          goto LABEL_29;
        }

        v16 = MEMORY[0x1E696AEC0];
        v17 = v7;
        v18 = v6;
      }

      else
      {
        if (createIDNAEncodedDomain__onceToken != -1)
        {
          dispatch_once(&createIDNAEncodedDomain__onceToken, &__block_literal_global_16489);
        }

        pErrorCode = U_ZERO_ERROR;
        pInfo = xmmword_182B08EA0;
        v19 = uidna_nameToASCII(createIDNAEncodedDomain__idna, v7, v6, dest, 256, &pInfo, &pErrorCode);
        if (pErrorCode > U_ZERO_ERROR || pInfo.errors >= 0x40)
        {
          goto LABEL_27;
        }

        v18 = v19;
        v17 = dest;
        v16 = MEMORY[0x1E696AEC0];
      }

      v20 = [v16 stringWithCharacters:v17 length:v18];
      free(v7);

      if (!v20)
      {
        goto LABEL_39;
      }

LABEL_29:
      if ([v20 getCString:dest maxLength:256 encoding:1])
      {
        v21 = strlen(dest);
        if (v21 && *(dest + v21 - 1) == 46)
        {
          *(dest + v21 - 1) = 0;
        }

        TopLevelDomain = _CFHostGetTopLevelDomain();
        v3 = 0;
        if (TopLevelDomain && TopLevelDomain > dest + 1)
        {
          v23 = (TopLevelDomain - 2);
          do
          {
            v24 = v23;
            if (v23 < dest)
            {
              break;
            }

            v23 = (v23 - 1);
          }

          while (*v24 != 46);
          v3 = [MEMORY[0x1E696AEC0] stringWithCString:v24 + 1 encoding:1];
        }

        goto LABEL_40;
      }

LABEL_39:
      v3 = 0;
LABEL_40:

      goto LABEL_41;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *dest = 136446210;
    v32 = "[NWURLSessionTaskConfiguration createIDNAEncodedDomain:]";
    LODWORD(v28) = 12;
    v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict allocator failed", dest, v28);

    result = __nwlog_should_abort(v10);
    if (!result)
    {
      free(v10);
      [v4 getCharacters:0 range:{0, v6}];
      if (!v6)
      {
        goto LABEL_28;
      }

      goto LABEL_13;
    }

LABEL_49:
    __break(1u);
    return result;
  }

  v3 = 0;
LABEL_41:

  return v3;
}

void __57__NWURLSessionTaskConfiguration_createIDNAEncodedDomain___block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  HIDWORD(v4) = 0;
  createIDNAEncodedDomain__idna = MEMORY[0x1865DF7A0](60, &v4 + 4);
  if (SHIDWORD(v4) >= 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v0 = gLogObj;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v1 = 3;
    }

    else
    {
      v1 = 2;
    }

    v2 = u_errorName(SHIDWORD(v4));
    v5 = 136446466;
    v6 = "[NWURLSessionTaskConfiguration createIDNAEncodedDomain:]_block_invoke";
    v7 = 2080;
    v8 = v2;
    LODWORD(v4) = 22;
    v3 = _os_log_send_and_compose_impl(v1, 0, 0, 0, &dword_181A37000, v0, 16, "%{public}s uidna_openUTS46 failed with error: %s", &v5, v4);

    if (__nwlog_should_abort(v3))
    {
      __break(1u);
    }

    else
    {
      free(v3);
    }
  }
}

- (void)configureSecProtocolOptions:(int)options QUIC:
{
  optionsCopy2 = a2;
  if (self)
  {
    options = optionsCopy2;
    sec_protocol_options_set_min_tls_protocol_version(optionsCopy2, [*(self + 16) TLSMinimumSupportedProtocolVersion]);
    sec_protocol_options_set_max_tls_protocol_version(options, [*(self + 16) TLSMaximumSupportedProtocolVersion]);
    if (options)
    {
      if ([*(self + 16) enablesEarlyData])
      {
        LOBYTE(options) = 1;
      }

      else
      {
        if (enablesEarlyData_onceToken != -1)
        {
          dispatch_once(&enablesEarlyData_onceToken, &__block_literal_global_7);
        }

        LOBYTE(options) = enablesEarlyData_earlyDataEnabled;
      }
    }

    if ([*(self + 16) _allowsTLSSessionTickets] & 1) != 0 || (options)
    {
      sec_protocol_options_set_tls_tickets_enabled(options, 1);
    }

    if (options)
    {
      sec_protocol_options_set_tls_early_data_enabled();
    }

    if ([*(self + 16) _allowsTLSECH])
    {
      sec_protocol_options_set_enable_encrypted_client_hello(options, 1);
    }

    _forceEnablePQTLS = [*(self + 16) _forceEnablePQTLS];
    optionsCopy2 = options;
    if (_forceEnablePQTLS)
    {
      sec_protocol_options_set_pqtls_mode();
      optionsCopy2 = options;
    }
  }
}

char *__49__NWURLSessionTaskConfiguration_enablesEarlyData__block_invoke()
{
  if (isWebKitNetworking_onceToken != -1)
  {
    dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
  }

  if (isWebKitNetworking_result != 1 || !_os_feature_enabled_impl())
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v0 = nw_setting_enable_http_early_data;
  networkd_settings_init();
  if (!sCachedSettings)
  {
LABEL_14:
    v3 = 1;
    goto LABEL_15;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_11;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 1;
  if (!v0)
  {
    goto LABEL_12;
  }

  if (Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (!value)
  {
    goto LABEL_12;
  }

  v5 = value;
  if (object_getClass(value) == MEMORY[0x1E69E9E58])
  {
    v3 = xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_11:
    v3 = 1;
  }

LABEL_12:
  pthread_mutex_unlock(&sSettingsMutex);
LABEL_15:
  enablesEarlyData_earlyDataEnabled = v3;
LABEL_16:
  result = getenv("HTTP_ENABLE_EARLY_DATA");
  if (!result)
  {
    return result;
  }

  v7 = *result;
  if (v7 == 48)
  {
    v8 = result[1];
    if (v8)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v7 == 49 && !result[1])
  {
    v8 = 1;
LABEL_22:
    enablesEarlyData_earlyDataEnabled = v8;
  }

  return result;
}

- (void)configureConnection:(uint64_t)connection
{
  v6 = a2;
  if (connection)
  {
    activity = [(NWURLSessionTaskConfiguration *)connection activity];
    nw_connection_start_activity(v6, activity);

    countOfBytesClientExpectsToSend = [*(connection + 24) countOfBytesClientExpectsToSend];
    if (countOfBytesClientExpectsToSend >= 1)
    {
      nw_connection_increment_estimated_bytes(v6, 0, countOfBytesClientExpectsToSend);
    }

    countOfBytesClientExpectsToReceive = [*(connection + 24) countOfBytesClientExpectsToReceive];
    if (countOfBytesClientExpectsToReceive >= 1)
    {
      nw_connection_increment_estimated_bytes(v6, 1, countOfBytesClientExpectsToReceive);
    }
  }
}

@end