@interface NRParametersPhoneCallRelay
- (NRParametersPhoneCallRelay)initWithLocalPort:(id)port;
@end

@implementation NRParametersPhoneCallRelay

- (NRParametersPhoneCallRelay)initWithLocalPort:(id)port
{
  v55 = *MEMORY[0x277D85DE8];
  portCopy = port;
  if (portCopy)
  {
    legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
    if (!legacy_tcp_socket)
    {
      if (nrCopyLogObj_onceToken_2809 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2810, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2810, 17, "nw_parameters_create_legacy_tcp_socket failed");
        selfCopy2 = 0;
      }

      else
      {
        selfCopy2 = 0;
      }

      goto LABEL_20;
    }

    nw_parameters_set_indefinite();
    v6 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
    v7 = MEMORY[0x25F873EB0]();
    nw_protocol_stack_set_transport_protocol(v6, v7);

    nw_parameters_set_data_mode();
    host = nw_endpoint_create_host("::", [portCopy UTF8String]);
    MEMORY[0x25F873D60](legacy_tcp_socket, host);
    v9 = xpc_string_create("com.apple.networkrelay");
    if (v9)
    {
      v10 = v9;
      v11 = xpc_string_create("PhoneCallRelayAgent");
      if (v11)
      {
        v12 = v11;
        v13 = xpc_array_create(0, 0);
        if (v13)
        {
          v14 = v13;
          xpc_array_append_value(v13, v10);
          v15 = xpc_array_create(0, 0);
          if (v15)
          {
            v16 = v15;
            xpc_array_append_value(v15, v12);
            nw_parameters_set_required_netagent_classes();
            nw_parameters_set_reuse_local_address(legacy_tcp_socket, 1);
            nw_parameters_set_no_proxy();
            v54.receiver = self;
            v54.super_class = NRParametersPhoneCallRelay;
            v17 = [(NRParameters *)&v54 initWithParameters:legacy_tcp_socket];
            self = v17;
            if (v17)
            {
              [(NRParameters *)v17 setServiceClass:3];
              selfCopy = self;
            }

            else
            {
              if (nrCopyLogObj_onceToken_2809 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
              }

              if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2810, OS_LOG_TYPE_FAULT))
              {
                _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2810, 17, "[super initWithParameters:] failed");
              }
            }

            selfCopy2 = self;
LABEL_20:

            goto LABEL_21;
          }

          v24 = nrCopyLogObj_2805();
          if (sNRCopyLogToStdErr == 1)
          {
            goto LABEL_32;
          }

          v45 = v24;
          v46 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

          if (v46)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v24 = nrCopyLogObj_2805();
          if (sNRCopyLogToStdErr == 1)
          {
LABEL_32:

LABEL_44:
            v47 = nrCopyLogObj_2805();
            _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", ", "nr_xpc_array_create"", 56, 0, 0);

            goto LABEL_45;
          }

          v43 = v24;
          v44 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

          if (v44)
          {
            goto LABEL_44;
          }
        }

LABEL_45:
        v48 = _os_log_pack_size();
        v33 = &v53 - ((MEMORY[0x28223BE20](v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
        v50 = __error();
        v51 = _os_log_pack_fill(v33, v48, *v50, &dword_25B98C000, "%{public}s xpc_array_create(%p, %u) failed");
        __os_log_helper_1_2_3_8_34_8_0_4_0(v51, "nr_xpc_array_create");
LABEL_46:
        v52 = nrCopyLogObj_2805();
        _NRLogAbortWithPack(v52, v33);
      }

      v23 = nrCopyLogObj_2805();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v36 = v23;
        v37 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (!v37)
        {
LABEL_40:
          v39 = _os_log_pack_size();
          v33 = &v53 - ((MEMORY[0x28223BE20](v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
          v41 = __error();
          v42 = _os_log_pack_fill(v33, v39, *v41, &dword_25B98C000, "%{public}s xpc_string_create(%s) failed");
          *v42 = 136446466;
          *(v42 + 4) = "nr_xpc_string_create";
          *(v42 + 12) = 2080;
          *(v42 + 14) = "PhoneCallRelayAgent";
          goto LABEL_46;
        }
      }

      v38 = nrCopyLogObj_2805();
      _NRLogWithArgs(v38, 16, "%s%.30s:%-4d ABORTING: xpc_string_create(%s) failed", ", "nr_xpc_string_create", 259, "PhoneCallRelayAgent"");

      goto LABEL_40;
    }

    v22 = nrCopyLogObj_2805();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v22;
      v29 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
LABEL_37:
        v31 = _os_log_pack_size();
        v33 = &v53 - ((MEMORY[0x28223BE20](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = __error();
        v35 = _os_log_pack_fill(v33, v31, *v34, &dword_25B98C000, "%{public}s xpc_string_create(%s) failed");
        *v35 = 136446466;
        *(v35 + 4) = "nr_xpc_string_create";
        *(v35 + 12) = 2080;
        *(v35 + 14) = "com.apple.networkrelay";
        goto LABEL_46;
      }
    }

    v30 = nrCopyLogObj_2805();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: xpc_string_create(%s) failed", ", "nr_xpc_string_create", 259, "com.apple.networkrelay"");

    goto LABEL_37;
  }

  v21 = nrCopyLogObj_2805();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v25 = v21;
    v26 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

    if (!v26)
    {
      selfCopy2 = 0;
      goto LABEL_21;
    }
  }

  v27 = nrCopyLogObj_2805();
  _NRLogWithArgs(v27, 17, "%s called with null localPortString", "[NRParametersPhoneCallRelay initWithLocalPort:]");

  selfCopy2 = 0;
LABEL_21:

  return selfCopy2;
}

@end