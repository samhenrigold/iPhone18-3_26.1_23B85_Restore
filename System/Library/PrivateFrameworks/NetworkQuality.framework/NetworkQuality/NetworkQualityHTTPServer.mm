@interface NetworkQualityHTTPServer
- (NetworkQualityHTTPServer)initWithConfiguration:(id)configuration;
- (NetworkQualityHTTPServer)initWithLaunchd;
- (NetworkQualityHTTPServer)initWithPort:(unsigned int)port enableHTTP3:(BOOL)p3;
- (NetworkQualityHTTPServer)initWithPort:(unsigned int)port tlsEnabled:(BOOL)enabled httpVersion:(int)version bonjourEnabled:(BOOL)bonjourEnabled;
- (id)HTTP2ParametersForServer;
- (id)HTTP3ParametersForServer;
- (id)configForConnection:(id)connection mirrorIP:(BOOL)p;
- (id)urlForType:(id)type withAddress:(id)address mirrorIP:(BOOL)p;
- (id)urlFormatAddress:(id)address;
- (void)receiveLoop:(id)loop;
- (void)setCommmonParameters:(id)parameters;
- (void)start:(id)start;
- (void)stop;
@end

@implementation NetworkQualityHTTPServer

- (NetworkQualityHTTPServer)initWithLaunchd
{
  result = [(NetworkQualityHTTPServer *)self initWithPort:0 tlsEnabled:1 httpVersion:4 bonjourEnabled:1];
  if (result)
  {
    result->launchdInvoked = 1;
  }

  return result;
}

- (NetworkQualityHTTPServer)initWithPort:(unsigned int)port enableHTTP3:(BOOL)p3
{
  if (p3)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  return [(NetworkQualityHTTPServer *)self initWithPort:*&port tlsEnabled:1 httpVersion:v4 bonjourEnabled:1];
}

- (NetworkQualityHTTPServer)initWithPort:(unsigned int)port tlsEnabled:(BOOL)enabled httpVersion:(int)version bonjourEnabled:(BOOL)bonjourEnabled
{
  v22.receiver = self;
  v22.super_class = NetworkQualityHTTPServer;
  v10 = [(NetworkQualityHTTPServer *)&v22 init];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = +[NetworkQualityServerConfiguration defaultIdleTimeout];
  *(v10 + 2) = port;
  *(v10 + 3) = v11;
  *(v10 + 20) = 0;
  *(v10 + 21) = enabled;
  *(v10 + 22) = bonjourEnabled;
  *(v10 + 7) = version;
  *(v10 + 25) = 0;
  v12 = dispatch_data_create("X", 1uLL, 0, 0);
  v13 = *(v10 + 5);
  *(v10 + 5) = v12;

  v14 = malloc_type_malloc(0x100000uLL, 0xA6DFF529uLL);
  memset(v14, 88, 0x100000uLL);
  v15 = dispatch_data_create(v14, 0x100000uLL, 0, *MEMORY[0x277D85CB0]);
  v16 = *(v10 + 6);
  *(v10 + 6) = v15;

  v21 = 0;
  v17 = CreateSelfSignedIdentity(@"networkquality", v10 + 8, &v21);
  if (!v17)
  {

LABEL_7:
    v19 = v10;
    goto LABEL_8;
  }

  netqual_log_init(v17, v18);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [NetworkQualityHTTPServer initWithPort:tlsEnabled:httpVersion:bonjourEnabled:];
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (NetworkQualityHTTPServer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy httpProtocol] == 1)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v6 = -[NetworkQualityHTTPServer initWithPort:tlsEnabled:httpVersion:bonjourEnabled:](self, "initWithPort:tlsEnabled:httpVersion:bonjourEnabled:", [configurationCopy listenPort], objc_msgSend(configurationCopy, "tlsEnabled"), v5, objc_msgSend(configurationCopy, "bonjourEnabled"));
  if (v6)
  {
    v6->idleTimeoutSeconds = [configurationCopy idleTimeoutSeconds];
    v6->mirrorIP = [configurationCopy mirrorServerIP];
    v6->l4sEnabled = [configurationCopy l4sEnabled];
    networkServiceType = [configurationCopy networkServiceType];
    if ((networkServiceType - 2) > 9)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_25B97E950[networkServiceType - 2];
    }

    v6->networkTrafficClass = v8;
  }

  return v6;
}

- (void)setCommmonParameters:(id)parameters
{
  parameters = parameters;
  nw_parameters_set_data_mode();
  nw_parameters_set_server_mode();
  nw_parameters_set_reuse_local_address(parameters, 1);
  nw_parameters_set_receive_any_interface();
  if (self->networkTrafficClass)
  {
    nw_parameters_set_traffic_class();
  }
}

- (id)HTTP2ParametersForServer
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke;
  v12[3] = &unk_279969728;
  v12[4] = self;
  v3 = MEMORY[0x25F873620](v12, a2);
  v4 = MEMORY[0x25F873620](*MEMORY[0x277CD9238]);
  if (self->tlsEnabled)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke_2;
    v10[3] = &unk_279969750;
    v11 = v3;
    v5 = MEMORY[0x25F873620](v10);

    v4 = v5;
  }

  options = nw_http_messaging_create_options();
  nw_http2_set_idle_timeout();
  MEMORY[0x25F873400](options, self->l4sEnabled);
  secure_tcp = nw_parameters_create_secure_tcp(v4, *MEMORY[0x277CD9230]);
  [(NetworkQualityHTTPServer *)self setCommmonParameters:secure_tcp];
  v8 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  nw_protocol_stack_prepend_application_protocol(v8, options);
  nw_parameters_set_prohibit_joining_protocols();
  nw_parameters_set_attach_protocol_listener();

  return secure_tcp;
}

void __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 28) - 3;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279969888[v3];
  }

  options = a2;
  sec_protocol_options_add_tls_application_protocol(options, v4);
  sec_protocol_options_set_peer_authentication_required(options, 0);
  sec_protocol_options_set_local_identity(options, *(*(a1 + 32) + 64));
  sec_protocol_options_append_tls_ciphersuite_group(options, tls_ciphersuite_group_default);
}

void __52__NetworkQualityHTTPServer_HTTP2ParametersForServer__block_invoke_2(uint64_t a1, id a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)HTTP3ParametersForServer
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke;
  v11[3] = &unk_279969728;
  v11[4] = self;
  v3 = MEMORY[0x25F873620](v11, a2);
  options = nw_http_messaging_create_options();
  nw_http3_set_idle_timeout();
  nw_quic_connection_set_enable_l4s();
  v9 = MEMORY[0x277D85DD0];
  v10 = v3;
  v5 = v3;
  quic_stream = nw_parameters_create_quic_stream();
  [(NetworkQualityHTTPServer *)self setCommmonParameters:quic_stream, v9, 3221225472, __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke_2, &unk_279969750];
  v7 = nw_parameters_copy_default_protocol_stack(quic_stream);
  nw_protocol_stack_prepend_application_protocol(v7, options);
  nw_parameters_set_prohibit_joining_protocols();
  nw_parameters_set_attach_protocol_listener();

  return quic_stream;
}

void __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 28) - 3;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279969888[v3];
  }

  options = a2;
  sec_protocol_options_add_tls_application_protocol(options, v4);
  sec_protocol_options_set_peer_authentication_required(options, 0);
  sec_protocol_options_set_local_identity(options, *(*(a1 + 32) + 64));
  sec_protocol_options_append_tls_ciphersuite_group(options, tls_ciphersuite_group_default);
}

void __52__NetworkQualityHTTPServer_HTTP3ParametersForServer__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = nw_quic_connection_copy_sec_protocol_options();
  (*(*(a1 + 32) + 16))();
}

- (void)start:(id)start
{
  v61[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  v5 = dispatch_queue_create("networkQuality", MEMORY[0x277D85CD8]);
  queue = self->queue;
  self->queue = v5;

  if (self->httpVersion == 5)
  {
    [(NetworkQualityHTTPServer *)self HTTP3ParametersForServer];
  }

  else
  {
    [(NetworkQualityHTTPServer *)self HTTP2ParametersForServer];
  }
  v7 = ;
  v8 = v7;
  if (self->launchdInvoked)
  {
    v9 = nw_listener_create_with_launchd_key();
  }

  else
  {
    if (self->port)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->port];
      v11 = nw_listener_create_with_port([v10 UTF8String], v8);
      listener = self->listener;
      self->listener = v11;

      goto LABEL_10;
    }

    v9 = nw_listener_create(v7);
  }

  v10 = self->listener;
  self->listener = v9;
LABEL_10:

  if (self->listener)
  {
    v15 = dispatch_group_create();
    if (self->bonjourEnabled)
    {
      bonjour_service = nw_advertise_descriptor_create_bonjour_service(0, "_nq._tcp", "local");
      nw_listener_set_advertise_descriptor(self->listener, bonjour_service);
      dispatch_group_enter(v15);
      v17 = self->listener;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__NetworkQualityHTTPServer_start___block_invoke;
      handler[3] = &unk_279969778;
      handler[4] = self;
      v51 = v15;
      nw_listener_set_advertised_endpoint_changed_handler(v17, handler);
    }

    v18 = self->listener;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __34__NetworkQualityHTTPServer_start___block_invoke_20;
    v49[3] = &unk_2799697C8;
    v49[4] = self;
    nw_listener_set_new_connection_handler(v18, v49);
    dispatch_group_enter(v15);
    v19 = self->listener;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __34__NetworkQualityHTTPServer_start___block_invoke_3;
    v47[3] = &unk_2799697A0;
    v20 = v15;
    v48 = v20;
    nw_listener_set_state_changed_handler(v19, v47);
    nw_listener_set_queue(self->listener, self->queue);
    nw_listener_start(self->listener);
    if (!self->launchdInvoked)
    {
      dispatch_group_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    }

    p_name = &self->name;
    name = self->name;
    self->name = @"localhost";

    netqual_log_init(v23, v24);
    v25 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      v26 = self->name;
      bonjourEnabled = self->bonjourEnabled;
      *buf = 136315906;
      v53 = "[NetworkQualityHTTPServer start:]";
      v54 = 1024;
      v55 = 276;
      v56 = 2112;
      v57 = v26;
      v58 = 1024;
      v59 = bonjourEnabled;
      _os_log_impl(&dword_25B962000, v25, OS_LOG_TYPE_INFO, "%s:%u - Default servername=%@ bonjourEnabled=%d", buf, 0x22u);
    }

    if (self->bonjourEnabled)
    {
      v28 = SCDynamicStoreCopyLocalHostName(0);
      if (v28)
      {
        v30 = v28;
        v31 = [MEMORY[0x277CCACA8] stringWithString:v28];
        v32 = *p_name;
        *p_name = v31;

        CFRelease(v30);
        v33 = [*p_name hasSuffix:@".local"];
        if ((v33 & 1) == 0)
        {
          v35 = [*p_name stringByAppendingString:@".local"];
          v36 = *p_name;
          *p_name = v35;
        }

        netqual_log_init(v33, v34);
        v37 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
        {
          v38 = *p_name;
          *buf = 136315650;
          v53 = "[NetworkQualityHTTPServer start:]";
          v54 = 1024;
          v55 = 287;
          v56 = 2112;
          v57 = v38;
          _os_log_impl(&dword_25B962000, v37, OS_LOG_TYPE_INFO, "%s:%u - New servername=%@", buf, 0x1Cu);
        }
      }

      else
      {
        netqual_log_init(0, v29);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          [NetworkQualityHTTPServer start:];
        }
      }
    }

    port = nw_listener_get_port(self->listener);
    if (self->launchdInvoked)
    {
      v42 = 56666;
    }

    else
    {
      v42 = port;
    }

    self->port = v42;
    v43 = [(NetworkQualityHTTPServer *)self urlForType:@".well-known/nq" withAddress:self->name mirrorIP:0];
    netqual_log_init(v43, v44);
    v45 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v53 = "[NetworkQualityHTTPServer start:]";
      v54 = 1024;
      v55 = 300;
      v56 = 2112;
      v57 = v43;
      _os_log_impl(&dword_25B962000, v45, OS_LOG_TYPE_INFO, "%s:%u - Available for server @ %@", buf, 0x1Cu);
    }

    v46 = [(NetworkQualityHTTPServer *)self urlForType:@".well-known/nq" withAddress:self->name mirrorIP:0];
    startCopy[2](startCopy, v46, 0);
  }

  else
  {
    netqual_log_init(v13, v14);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityHTTPServer start:];
    }

    v39 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    v61[0] = @"Could not create listener for server";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v40 = [v39 errorWithDomain:@"NetworkQualityErrorDomain" code:1007 userInfo:v20];
    (startCopy)[2](startCopy, 0, v40);
  }
}

void __34__NetworkQualityHTTPServer_start___block_invoke(uint64_t a1, nw_endpoint_t endpoint, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_get_bonjour_service_name(endpoint)];
  netqual_log_init(v5, v6);
  v7 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v11 = "[NetworkQualityHTTPServer start:]_block_invoke";
    v8 = "removed";
    v12 = 1024;
    v13 = 237;
    v10 = 136316674;
    v14 = 2080;
    if (a3)
    {
      v8 = "added";
    }

    v15 = v8;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v5;
    v20 = 2080;
    v21 = "_nq._tcp";
    v22 = 2080;
    v23 = "local";
    _os_log_impl(&dword_25B962000, v7, OS_LOG_TYPE_INFO, "%s:%u - Listener %s on %@ (%@.%s.%s)\n", &v10, 0x44u);
  }

  v9 = *(a1 + 32);
  if ((*(v9 + 20) & 1) == 0)
  {
    *(v9 + 20) = 1;
    dispatch_group_leave(*(a1 + 40));
  }
}

void __34__NetworkQualityHTTPServer_start___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__NetworkQualityHTTPServer_start___block_invoke_2;
  handler[3] = &unk_2799697A0;
  v6 = v3;
  v4 = v3;
  nw_connection_set_state_changed_handler(v4, handler);
  nw_connection_set_queue(v4, *(*(a1 + 32) + 80));
  [*(a1 + 32) receiveLoop:v4];
  nw_connection_start(v4);
}

void __34__NetworkQualityHTTPServer_start___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
    nw_connection_cancel(*(a1 + 32));
  }
}

void __34__NetworkQualityHTTPServer_start___block_invoke_3(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)stop
{
  nw_listener_cancel(self->listener);
  listener = self->listener;
  self->listener = 0;
}

- (void)receiveLoop:(id)loop
{
  loopCopy = loop;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke;
  v6[3] = &unk_279969868;
  v6[4] = self;
  v7 = loopCopy;
  v5 = loopCopy;
  nw_connection_receive(v5, 0, 0xFFFFFFFF, v6);
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_2;
  v54[3] = &unk_2799697F0;
  v58 = a4;
  v12 = v11;
  v14 = (a1 + 40);
  v13 = *(a1 + 40);
  v15 = *(a1 + 32);
  v55 = v12;
  v56 = v15;
  v57 = v13;
  v16 = MEMORY[0x25F873620](v54);
  v18 = v16;
  if (!v12)
  {
    v19 = nw_protocol_copy_http_definition();
    v20 = nw_content_context_copy_protocol_metadata(v10, v19);

    if (!v20)
    {
      netqual_log_init(v21, v22);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_4();
      }

      nw_connection_cancel(*v14);
      goto LABEL_41;
    }

    v23 = nw_http_metadata_copy_request();
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__1;
    v52 = __Block_byref_object_dispose__1;
    v53 = 0;
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_33;
    v46 = &unk_279969818;
    v47 = &v48;
    v38 = v23;
    v24 = nw_http_request_access_path();
    if (!v49[5])
    {
      netqual_log_init(v24, v25);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_3();
      }

      goto LABEL_40;
    }

    well_known = nw_http_response_create_well_known();
    v26 = v49[5];
    if (!v26)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if ([v26 isEqualToString:@"/small"])
    {
      nw_http_fields_append();
      v27 = *(*(a1 + 32) + 40);
    }

    else
    {
      if ([v49[5] isEqualToString:@"/large"])
      {
        nw_http_fields_append();
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zu", 0x300000000, v38];
        [v28 UTF8String];
        nw_http_fields_append();
        v29 = 1;
        goto LABEL_26;
      }

      if (([v49[5] isEqualToString:@"/"] & 1) == 0 && (objc_msgSend(v49[5], "isEqualToString:", @"/config") & 1) == 0 && !objc_msgSend(v49[5], "isEqualToString:", @"/.well-known/nq"))
      {
        v32 = [v49[5] isEqualToString:@"/slurp"];
        if (!v32)
        {
          netqual_log_init(v32, v33);
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_2();
          }

          if (!v9)
          {
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        if (v9)
        {
          dispatch_data_get_size(v9);
        }

        v30 = *(*(a1 + 32) + 40);

        nw_http_fields_append();
        goto LABEL_23;
      }

      nw_http_fields_append();
      v27 = [*(a1 + 32) configForConnection:*(a1 + 40) mirrorIP:*(*(a1 + 32) + 24)];
    }

    v30 = v27;

LABEL_23:
    v9 = v30;
    if (!v30)
    {
      goto LABEL_34;
    }

LABEL_24:
    size = dispatch_data_get_size(v9);
    if (size)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zu", size, v38];
      [v28 UTF8String];
      nw_http_fields_append();
      v29 = 0;
LABEL_26:

      if (!a4)
      {
LABEL_27:
        v18[2](v18);
LABEL_39:

LABEL_40:
        _Block_object_dispose(&v48, 8);

LABEL_41:
        goto LABEL_42;
      }

LABEL_35:
      nw_http_response_set_status_code();
      v34 = nw_content_context_create("response");
      metadata_for_response = nw_http_create_metadata_for_response();
      nw_content_context_set_metadata_for_protocol(v34, metadata_for_response);

      if (v29)
      {
        v36 = objc_alloc_init(BodyWriter);
        [(BodyWriter *)v36 setConnection:*v14];
        [(BodyWriter *)v36 setPostData:*(*(a1 + 32) + 48)];
        [(BodyWriter *)v36 setBytesLeftToPost:0x300000000];
        [(BodyWriter *)v36 sendBodyDataWithContext:v34];
      }

      else
      {
        v37 = *v14;
        completion[0] = MEMORY[0x277D85DD0];
        completion[1] = 3221225472;
        completion[2] = __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_62;
        completion[3] = &unk_279969840;
        v41 = well_known;
        v42 = *v14;
        nw_connection_send(v37, v9, v34, 1, completion);

        v36 = v41;
      }

      goto LABEL_39;
    }

LABEL_34:
    v29 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  netqual_log_init(v16, v17);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_1();
  }

LABEL_42:
}

id *__40__NetworkQualityHTTPServer_receiveLoop___block_invoke_2(id *result)
{
  if ((result[7] & 1) == 0 && !result[4])
  {
    return [result[5] receiveLoop:result[6]];
  }

  return result;
}

uint64_t __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_33(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];

  return MEMORY[0x2821F96F8]();
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_62(uint64_t a1)
{
  if (nw_http_response_get_status_code() >= 0x190)
  {
    v2 = *(a1 + 40);

    nw_connection_cancel(v2);
  }
}

- (id)urlFormatAddress:(id)address
{
  addressCopy = address;
  address = nw_endpoint_get_address(addressCopy);
  v5 = nw_endpoint_copy_address_string(addressCopy);
  port = nw_endpoint_get_port(addressCopy);

  sa_family = address->sa_family;
  if (sa_family == 30)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v5];
    if (([v9 isEqualToString:@"::1"] & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAB50]);
      [v10 addCharactersInString:@"abcdefghijklmnopqrstuvwxyz0123456789:"];
      v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];

      v9 = v11;
    }

    port = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]:%d", v9, port];
  }

  else if (sa_family == 2)
  {
    port = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", v5, port];
  }

  else
  {
    port = 0;
  }

  free(v5);

  return port;
}

- (id)configForConnection:(id)connection mirrorIP:(BOOL)p
{
  pCopy = p;
  v36 = *MEMORY[0x277D85DE8];
  v6 = nw_connection_copy_parameters(connection);
  v8 = v6;
  if (v6)
  {
    v9 = nw_parameters_copy_local_endpoint(v6);
    if (v9)
    {
      v10 = [(NetworkQualityHTTPServer *)self urlFormatAddress:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  netqual_log_init(v6, v7);
  v11 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v31 = "[NetworkQualityHTTPServer configForConnection:mirrorIP:]";
    v32 = 1024;
    v33 = 487;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_INFO, "%s:%u - testEndPoint: %@", buf, 0x1Cu);
  }

  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v28[1] = @"urls";
  v29[0] = &unk_286D22D18;
  v28[0] = @"version";
  v26[0] = @"small_download_url";
  v13 = [(NetworkQualityHTTPServer *)self urlForType:@"small" withAddress:v10 mirrorIP:pCopy];
  v27[0] = v13;
  v26[1] = @"large_download_url";
  v14 = [(NetworkQualityHTTPServer *)self urlForType:@"large" withAddress:v10 mirrorIP:pCopy];
  v27[1] = v14;
  v26[2] = @"upload_url";
  v15 = [(NetworkQualityHTTPServer *)self urlForType:@"slurp" withAddress:v10 mirrorIP:pCopy];
  v27[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v18 = [v12 initWithDictionary:v17];

  v25 = 0;
  v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v18 options:11 error:&v25];
  v20 = v25;
  v22 = v20;
  if (v20)
  {
    netqual_log_init(v20, v21);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityHTTPServer configForConnection:mirrorIP:];
    }

    v23 = 0;
  }

  else
  {
    v23 = dispatch_data_create([v19 bytes], objc_msgSend(v19, "length"), 0, 0);
  }

  return v23;
}

- (id)urlForType:(id)type withAddress:(id)address mirrorIP:(BOOL)p
{
  pCopy = p;
  typeCopy = type;
  addressCopy = address;
  v10 = addressCopy;
  if (pCopy)
  {
    v11 = addressCopy;
    if (self->tlsEnabled)
    {
      v12 = @"https";
    }

    else
    {
      v12 = @"http";
    }

    v13 = v12;
    if ([typeCopy isEqualToString:@"config"])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@", v13, v11, v17, v18];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/%@", v13, v11, typeCopy, v18];
    }
  }

  else
  {
    v11 = self->name;
    if (self->tlsEnabled)
    {
      v14 = @"https";
    }

    else
    {
      v14 = @"http";
    }

    v13 = v14;
    if ([typeCopy isEqualToString:@"config"])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%d", v13, v11, self->port, v18];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%d/%@", v13, v11, self->port, typeCopy];
    }
  }
  v15 = ;

  return v15;
}

- (void)initWithPort:tlsEnabled:httpVersion:bonjourEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)start:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)start:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __40__NetworkQualityHTTPServer_receiveLoop___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)configForConnection:mirrorIP:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315906;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_25B962000, v2, OS_LOG_TYPE_ERROR, "%s:%u - Error serializing data (%@): %@", v3, 0x26u);
}

@end