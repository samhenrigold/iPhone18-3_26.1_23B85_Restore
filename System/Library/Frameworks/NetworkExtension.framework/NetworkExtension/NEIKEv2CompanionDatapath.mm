@interface NEIKEv2CompanionDatapath
- (BOOL)connected;
- (id)description;
- (uint64_t)getStopReasonFromConnectionError:(uint64_t)error;
- (void)cancelLocked;
- (void)dealloc;
- (void)resetConnectionLocked;
- (void)setupConnectionLocked;
- (void)signalCompletionSemaphoreLocked;
@end

@implementation NEIKEv2CompanionDatapath

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self && self->_state == 3)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "%@: dealloc", buf, 0xCu);
    }
  }

  else
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%@: dealloc without cancellation", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = NEIKEv2CompanionDatapath;
  [(NEIKEv2CompanionDatapath *)&v4 dealloc];
}

- (id)description
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = v4;
  if (self)
  {
    identifier = self->_identifier;
    v7 = self->_remoteEndpoint;
    v8 = self->_connectedEndpointString;
    uTF8String = "";
    if (v8)
    {
      v10 = " vpn-server ";
    }

    else
    {
      v10 = "";
    }

    v11 = self->_connectedEndpointString;
    if (v11)
    {
      v2 = self->_connectedEndpointString;
      uTF8String = [(NSString *)v2 UTF8String];
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    state = self->_state;
    if (state >= 4)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%u)", self->_state];
    }

    else
    {
      v14 = off_1E7F088E8[state];
    }

    v15 = [v5 initWithFormat:@"Cmpn[%llu %@%s%s %@]", identifier, v7, v10, uTF8String, v14];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = [v4 initWithFormat:@"Cmpn[%llu %@%s%s %@]", 0, 0, ", ", 0];
    v2 = 0;
    v12 = 0;
    v7 = 0;
    v8 = 0;
  }

LABEL_13:

  return v15;
}

- (void)cancelLocked
{
  os_unfair_lock_assert_owner((self + 12));
  *(self + 9) = 3;
  [(NEIKEv2CompanionDatapath *)self resetConnectionLocked];
  WeakRetained = objc_loadWeakRetained((self + 88));
  if (WeakRetained)
  {
    v3 = [(NEIKEv2CompanionDatapath *)self getStopReasonFromConnectionError:?];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__NEIKEv2CompanionDatapath_cancelLocked__block_invoke;
    v4[3] = &unk_1E7F086C0;
    v5 = WeakRetained;
    v6 = v3;
    [v5 stopTunnelWithReason:14 completionHandler:v4];
    [(NEIKEv2CompanionDatapath *)self signalCompletionSemaphoreLocked];
  }
}

- (void)resetConnectionLocked
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((self + 12));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: reset-connection", &v5, 0xCu);
  }

  v3 = *(self + 32);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (uint64_t)getStopReasonFromConnectionError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    if (nw_error_get_error_domain(v3) == nw_error_domain_dns)
    {
      error = 17;
      goto LABEL_10;
    }

    if (nw_error_get_error_domain(v4) != nw_error_domain_posix)
    {
LABEL_9:
      error = 7;
      goto LABEL_10;
    }

    error = 7;
    v5 = (nw_error_get_error_code(v4) - 32);
    if (v5 <= 0x21)
    {
      if (((1 << v5) & 0x2026C0001) != 0)
      {
        error = 4;
      }

      else if (v5 == 28)
      {
        error = 12;
      }
    }
  }

LABEL_10:

  return error;
}

- (void)signalCompletionSemaphoreLocked
{
  os_unfair_lock_assert_owner((self + 12));
  v2 = *(self + 80);
  if (v2)
  {
    dispatch_semaphore_signal(v2);
    v3 = *(self + 80);
    *(self + 80) = 0;
  }
}

- (BOOL)connected
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 12));
  v2 = *(self + 9) == 2;
  os_unfair_lock_unlock((self + 12));
  return v2;
}

- (void)setupConnectionLocked
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((self + 12));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: starting", buf, 0xCu);
  }

  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  v4 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
  v5 = MEMORY[0x1BFAFB680]();
  nw_protocol_stack_set_transport_protocol(v4, v5);

  nw_parameters_set_required_interface_subtype();
  nw_parameters_set_effective_bundle_id();
  copyCEndpoint = [*(self + 64) copyCEndpoint];
  nw_parameters_set_local_endpoint(legacy_tcp_socket, copyCEndpoint);

  nw_parameters_set_reuse_local_address(legacy_tcp_socket, 1);
  copyCEndpoint2 = [*(self + 56) copyCEndpoint];
  v8 = nw_connection_create(copyCEndpoint2, legacy_tcp_socket);

  nw_connection_set_queue(v8, *(self + 72));
  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke;
  v15[3] = &unk_1E7F08710;
  objc_copyWeak(&v17, buf);
  v9 = v8;
  v16 = v9;
  MEMORY[0x1BFAFAEA0](v9, v15, v10, v11);
  nw_connection_start(v9);
  v12 = *(self + 32);
  *(self + 32) = v9;
  v13 = v9;

  ++*(self + 10);
  v14 = *(self + 96);
  *(self + 96) = 0;

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 3);
    if (*(v8 + 9) == 3 || *(v8 + 32) != *(a1 + 32))
    {
      goto LABEL_4;
    }

    if (v6 || (v4 & 0xFFFFFFFE) == 4)
    {
      objc_storeStrong((v8 + 96), a3);
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2080;
        v34 = nw_connection_state_to_string();
        _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, "%@: connection error %@ state %s", buf, 0x20u);
      }

      if (nw_error_get_error_code(v6) == 48)
      {
        [(NEIKEv2CompanionDatapath *)v8 resetConnectionLocked];
        if (*(v8 + 10) <= 5u)
        {
          objc_initWeak(buf, v8);
          v18 = dispatch_time(0x8000000000000000, 1000000000 * *(v8 + 10));
          v19 = *(v8 + 72);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke_26;
          block[3] = &unk_1E7F0A020;
          v20 = v19;
          objc_copyWeak(&v28, buf);
          v27 = *(a1 + 32);
          dispatch_after(v18, v20, block);

          os_unfair_lock_unlock((v8 + 12));
          objc_destroyWeak(&v28);
          objc_destroyWeak(buf);
          goto LABEL_5;
        }
      }

      else if (v4 == 4 && *(v8 + 8) == 1)
      {
        v21 = objc_loadWeakRetained((v8 + 88));
        v22 = v21;
        if (v21)
        {
          [(NEIKEv2PacketTunnelProvider *)v21 handleCompanionProxyDatapathFailure:?];
          os_unfair_lock_unlock((v8 + 12));

          goto LABEL_5;
        }
      }

      [(NEIKEv2CompanionDatapath *)v8 cancelLocked];
      goto LABEL_4;
    }

    if (v4 != 3)
    {
LABEL_4:
      os_unfair_lock_unlock((v8 + 12));
      goto LABEL_5;
    }

    objc_storeStrong((v8 + 96), 0);
    *(v8 + 8) = 513;
    v9 = *(a1 + 32);
    v10 = nw_proxy_copy_shoes_definition();
    v11 = nw_connection_copy_protocol_metadata(v9, v10);

    if (!v11)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "%@: no connection metadata found", buf, 0xCu);
      }

      [(NEIKEv2CompanionDatapath *)v8 cancelLocked];
      goto LABEL_33;
    }

    v12 = nw_shoes_metadata_copy_remote_endpoint();
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(v12)];
    objc_storeStrong((v8 + 40), v13);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__12503;
    v35 = __Block_byref_object_dispose__12504;
    v36 = 0;
    v14 = v8;
    nw_shoes_metadata_enumerate_resolved_endpoints();
    objc_storeStrong(v14 + 6, *(*&buf[8] + 40));
    v15 = nw_connection_copy_current_path(*(a1 + 32));
    if (MEMORY[0x1BFAFB430](v15, 1))
    {
      v16 = 1;
    }

    else
    {
      if (!MEMORY[0x1BFAFB430](v15, 2))
      {
LABEL_28:
        if (MEMORY[0x1BFAFB430](v15, 3))
        {
          v14[3] = 3;
        }

        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v14[6];
          *v29 = 138412546;
          v30 = v14;
          v31 = 2112;
          v32 = v25;
          _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%@: connected w/resolved endpoints %@", v29, 0x16u);
        }

        _Block_object_dispose(buf, 8);
LABEL_33:
        [(NEIKEv2CompanionDatapath *)v8 signalCompletionSemaphoreLocked];

        goto LABEL_4;
      }

      v16 = 2;
    }

    v14[3] = v16;
    goto LABEL_28;
  }

LABEL_5:
}

uint64_t __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 3);
    v4 = v9;
    if (BYTE1(v9[2]._os_unfair_lock_opaque) != 3)
    {
      v5 = *&v9[8]._os_unfair_lock_opaque;
      v4 = v9;
      if (!v5 || (v6 = *&v9[8]._os_unfair_lock_opaque, v7 = *(a1 + 32), v5, v4 = v9, v6 == v7))
      {
        [(NEIKEv2CompanionDatapath *)v4 setupConnectionLocked];
        v4 = v9;
      }
    }

    os_unfair_lock_unlock(v4 + 3);
    v3 = v9;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

uint64_t __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(v3)];
    if ((objc_msgSend_isEqualToString_(v4) & 1) == 0)
    {
      v5 = *(*(*(a1 + 40) + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v5 addObject:v4];
    }
  }

  return 1;
}

@end