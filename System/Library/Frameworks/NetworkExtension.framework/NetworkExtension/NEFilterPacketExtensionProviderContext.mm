@interface NEFilterPacketExtensionProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)dealloc;
- (void)startFilterWithOptions:(id)options completionHandler:(id)handler;
- (void)stopWithReason:(int)reason;
@end

@implementation NEFilterPacketExtensionProviderContext

- (void)stopWithReason:(int)reason
{
  v3 = *&reason;
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    if (objc_getProperty(self, v5, 112, 1))
    {
      objc_getProperty(self, v6, 112, 1);
      nw_interpose_cancel();
      objc_setProperty_atomic(self, v7, 0, 112);
    }

    if (objc_getProperty(self, v6, 120, 1))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [objc_getProperty(self v8];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(NEFilterPacketInterpose *)*(*(&v16 + 1) + 8 * v13++) close];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      objc_setProperty_atomic(self, v14, 0, 120);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v15.receiver = self;
  v15.super_class = NEFilterPacketExtensionProviderContext;
  [(NEFilterExtensionProviderContext *)&v15 stopWithReason:v3];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NEFilterPacketExtensionProviderContext;
  [(NEExtensionProviderContext *)&v4 dealloc];
}

- (void)startFilterWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v10.receiver = self;
  v10.super_class = NEFilterPacketExtensionProviderContext;
  [(NEFilterExtensionProviderContext *)&v10 startFilterWithOptions:optionsCopy completionHandler:handlerCopy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__NEFilterPacketExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke;
  v9[3] = &unk_1E7F0B4A8;
  v9[4] = self;
  [_principalObject startFilterWithCompletionHandler:v9];
}

void __83__NEFilterPacketExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 startedWithError:a2];
  }

  else
  {
    v4 = [(NEExtensionProviderContext *)v3 hostContext];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__NEFilterPacketExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke_2;
    v5[3] = &unk_1E7F09FF8;
    v5[4] = *(a1 + 32);
    [v4 createPacketChannelWithCompletionHandler:v5];
  }
}

void __83__NEFilterPacketExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = v4;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, " %@: necpClientClaimWithUUID <%@>", buf, 0x16u);
    }

    if (v4)
    {
      v18[0] = 0;
      v18[1] = 0;
      [v4 getUUIDBytes:v18];
      v6 = nw_interpose_client_claim();
      objc_setProperty_atomic(v3, v7, v6, 112);

      if (objc_getProperty(v3, v8, 112, 1))
      {
        if (!objc_getProperty(v3, v9, 120, 1))
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          objc_setProperty_atomic(v3, v12, v11, 120);
        }

        v3[26] = 0;
        objc_getProperty(v3, v10, 112, 1);
        nw_interpose_set_flow_event_handler();
        objc_getProperty(v3, v13, 112, 1);
        nw_interpose_start();

        v14 = *(a1 + 32);

        [v14 startedWithError:0];
        return;
      }

      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v3;
        v21 = 2112;
        v22 = v4;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%@: necpClientClaimWithUUID <%@>: failed claim", buf, 0x16u);
      }
    }
  }

  v16 = *(a1 + 32);
  v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEFilterErrorDomain" code:1 userInfo:0];
  [v16 startedWithError:?];
}

void __65__NEFilterPacketExtensionProviderContext_interposeClaimWithUUID___block_invoke(uint64_t a1, int a2, void *a3, const unsigned __int8 *a4, const char *a5, unsigned int a6, void *a7, unsigned int a8)
{
  v88[2] = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 32);
  v16 = a3;
  if (v15)
  {
    os_unfair_lock_lock(v15 + 26);
    v82 = v16;
    v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_interface_get_name(v16)];
    v18 = [objc_getProperty(v15 v17];
    v19 = v18;
    if (a2 == 1)
    {
      if (!v18)
      {
        v26 = 0;
        goto LABEL_18;
      }

      if ([(NEFilterPacketInterpose *)v18 matchFlow:a5 flowId:a4])
      {
        v23 = ne_log_obj();
        v24 = v81;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *v83 = 138412290;
          *&v83[4] = v19;
          _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "%@: interposeHandleFlowEvent: removing channel", v83, 0xCu);
        }

        [(NEFilterPacketInterpose *)v19 close];
        [objc_getProperty(v15 v25];
        v26 = v19;
        v16 = v82;
        goto LABEL_40;
      }

LABEL_17:
      v26 = v19;
LABEL_18:
      v24 = v81;
      v16 = v82;
LABEL_40:
      os_unfair_lock_unlock(v15 + 26);

      goto LABEL_41;
    }

    if (a2)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v83 = 138412546;
        *&v83[4] = v19;
        *&v83[12] = 1024;
        *&v83[14] = a2;
        _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "%@: interposeHandleFlowEvent: unsupported event %d", v83, 0x12u);
      }

      goto LABEL_17;
    }

    if (v18)
    {
      v20 = [(NEFilterPacketInterpose *)v18 matchFlow:a5 flowId:a4];
      v21 = ne_log_obj();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        if (v22)
        {
          *v83 = 138412290;
          *&v83[4] = v19;
          _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "%@: interposeHandleFlowEvent: flow already exists", v83, 0xCu);
        }

        goto LABEL_17;
      }

      if (v22)
      {
        *v83 = 138412290;
        *&v83[4] = v19;
        _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "%@: interposeHandleFlowEvent: removing channel", v83, 0xCu);
      }

      [(NEFilterPacketInterpose *)v19 close];
      [objc_getProperty(v15 v28];
    }

    v29 = [(os_unfair_lock_s *)v15 _principalObject];
    v26 = [NEFilterPacketInterpose alloc];
    v79 = v82;
    v80 = v29;
    if (v26)
    {
      *v83 = v26;
      *&v83[8] = NEFilterPacketInterpose;
      v30 = objc_msgSendSuper2(v83, sel_init);
      v26 = v30;
      if (v30)
      {
        v30->_lock._os_unfair_lock_opaque = 0;
        objc_storeStrong(&v30->_interface, a3);
        v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a5];
        nexusInstance = v26->_nexusInstance;
        v26->_nexusInstance = v31;

        v26->_key = a7;
        v26->_nexusPort = a6;
        v26->_keyLength = a8;
        v33 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a4];
        flowId = v26->_flowId;
        v26->_flowId = v33;

        objc_storeStrong(&v26->_provider, v29);
        v35 = objc_alloc_init(NEFilterPacketContext);
        context = v26->_context;
        v26->_context = v35;
      }
    }

    v37 = v80;

    v24 = v81;
    if (!v26)
    {
      goto LABEL_36;
    }

    provider = v26->_provider;
    if (provider && ([(NEFilterPacketProvider *)provider packetHandler], v39 = objc_claimAutoreleasedReturnValue(), v39, v39))
    {
      channel = v26->_channel;
      v41 = ne_log_obj();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
      v16 = v82;
      if (channel)
      {
        if (v42)
        {
          *buf = 138412290;
          v85 = v26;
          _os_log_debug_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEBUG, "%@: createChannel: channel already exists", buf, 0xCu);
        }

        [objc_getProperty(v15 v43];
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *v83 = 138412290;
          *&v83[4] = v26;
          _os_log_debug_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_DEBUG, "%@: interposeHandleFlowEvent: added channel", v83, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v42)
      {
        *buf = 138412290;
        v85 = v26;
        _os_log_debug_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEBUG, "%@: Establishing channel", buf, 0xCu);
      }

      if (v26->_key && v26->_keyLength)
      {
        v46 = os_channel_attr_create();
        v26->_attributes = v46;
        if (v46)
        {
          v47 = os_channel_attr_set_key();
          if (v47)
          {
            v48 = v47;
            v45 = ne_log_obj();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v85 = v26;
              v86 = 1024;
              *v87 = v48;
              v49 = "%@: createChannel failed to set key <err %d> ";
LABEL_63:
              v50 = v45;
              v51 = 18;
              goto LABEL_54;
            }

LABEL_35:

LABEL_36:
            v16 = v82;
            goto LABEL_37;
          }

          v52 = os_channel_attr_set();
          if (v52)
          {
            v53 = v52;
            v45 = ne_log_obj();
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            *buf = 138412546;
            v85 = v26;
            v86 = 1024;
            *v87 = v53;
            v49 = "%@: createChannel failed to set user-packet-pool attribute <err %d> ";
            goto LABEL_63;
          }

          v54 = os_channel_attr_set();
          v55 = ne_log_obj();
          v45 = v55;
          if (v54)
          {
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            *buf = 138412546;
            v85 = v26;
            v86 = 1024;
            *v87 = v54;
            v49 = "%@: createChannel failed to set filter attribute <err %d>";
            goto LABEL_63;
          }

          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            Property = objc_getProperty(v26, v56, 176, 1);
            *buf = 138412546;
            v85 = v26;
            v86 = 2112;
            *v87 = Property;
            _os_log_debug_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEBUG, "%@ createChannel: nexusInstance %@", buf, 0x16u);
          }

          v57 = ne_log_obj();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            nexusPort = v26->_nexusPort;
            *buf = 138412546;
            v85 = v26;
            v86 = 1024;
            *v87 = nexusPort;
            _os_log_debug_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_DEBUG, "%@ createChannel: nexusPort %d", buf, 0x12u);
          }

          v88[0] = 0;
          v88[1] = 0;
          [objc_getProperty(v26 v58];
          extended = os_channel_create_extended();
          v26->_channel = extended;
          v16 = v82;
          if (!extended)
          {
            v66 = ne_log_obj();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v26;
              _os_log_error_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_ERROR, "%@: createChannel failed to create channel", buf, 0xCu);
            }

            goto LABEL_37;
          }

          fd = os_channel_get_fd();
          v26->_channel_fd = fd;
          v61 = ne_log_obj();
          v62 = v61;
          if (fd < 0)
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v26;
              v69 = "%@: createChannel failed to get channel fd";
              v70 = v62;
              v71 = 12;
              goto LABEL_91;
            }
          }

          else
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v85 = v26;
              _os_log_debug_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_DEBUG, "%@: createChannel: created channel", buf, 0xCu);
            }

            v26->_rx_ring_ingress = os_channel_rx_ring();
            v26->_tx_ring_ingress = os_channel_tx_ring();
            v26->_rx_ring_egress = os_channel_rx_ring();
            v63 = os_channel_tx_ring();
            v26->_tx_ring_egress = v63;
            if (v26->_rx_ring_ingress && v26->_tx_ring_ingress)
            {
              if (v26->_rx_ring_egress && v63)
              {
                os_channel_read_attr();
                os_channel_attr_get();
                v26->_slot_size = 0;
                v64 = ne_log_obj();
                v65 = v64;
                if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_89;
                }

                *buf = 138412290;
                v85 = v26;
                v74 = "%@: createChannel: channel slot size 0, clean up channel";
                v75 = v65;
                v76 = 12;
              }

              else
              {
                v65 = ne_log_obj();
                if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
LABEL_89:

                  [(NEFilterPacketInterpose *)v26 close:?];
                  v24 = v81;
                  v16 = v82;
                  v37 = v80;
LABEL_37:
                  v44 = ne_log_obj();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    *v83 = 138412290;
                    *&v83[4] = v26;
                    _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%@: interposeHandleFlowEvent: failed to create channel", v83, 0xCu);
                  }

                  goto LABEL_39;
                }

                rx_ring_egress = v26->_rx_ring_egress;
                tx_ring_egress = v26->_tx_ring_egress;
                *buf = 138412802;
                v85 = v26;
                v86 = 1024;
                *v87 = rx_ring_egress;
                *&v87[4] = 1024;
                *&v87[6] = tx_ring_egress;
                v74 = "%@: createChannel failed to get Egress input / output rings (%X %X)";
                v75 = v65;
                v76 = 24;
              }

              _os_log_error_impl(&dword_1BA83C000, v75, OS_LOG_TYPE_ERROR, v74, buf, v76);
              goto LABEL_89;
            }

            v62 = ne_log_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              rx_ring_ingress = v26->_rx_ring_ingress;
              tx_ring_ingress = v26->_tx_ring_ingress;
              *buf = 138412802;
              v85 = v26;
              v86 = 1024;
              *v87 = rx_ring_ingress;
              *&v87[4] = 1024;
              *&v87[6] = tx_ring_ingress;
              v69 = "%@: createChannel failed to get Ingress input / output rings (%X %X)";
              v70 = v62;
              v71 = 24;
LABEL_91:
              _os_log_error_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
            }
          }

          [(NEFilterPacketInterpose *)v26 close:?];
          goto LABEL_37;
        }

        v45 = ne_log_obj();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        *buf = 138412290;
        v85 = v26;
        v49 = "%@: createChannel failed to create channel attributes";
      }

      else
      {
        v45 = ne_log_obj();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        *buf = 138412290;
        v85 = v26;
        v49 = "%@: createChannel no key or 0 key length";
      }
    }

    else
    {
      v45 = ne_log_obj();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 138412290;
      v85 = v26;
      v49 = "%@: createChannel: no provider / packetHandler";
    }

    v50 = v45;
    v51 = 12;
LABEL_54:
    _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
    goto LABEL_35;
  }

LABEL_41:
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_20290 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_20290, &__block_literal_global_63_20291);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_20292;

  return v3;
}

uint64_t __73__NEFilterPacketExtensionProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CF788];
  v1 = _extensionAuxiliaryHostProtocol_protocol_20292;
  _extensionAuxiliaryHostProtocol_protocol_20292 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_20295 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_20295, &__block_literal_global_20296);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_20297;

  return v3;
}

uint64_t __75__NEFilterPacketExtensionProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2458];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_20297;
  _extensionAuxiliaryVendorProtocol_protocol_20297 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end