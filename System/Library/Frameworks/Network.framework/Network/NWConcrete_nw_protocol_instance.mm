@interface NWConcrete_nw_protocol_instance
- (NWConcrete_nw_protocol_instance)init;
- (nw_protocol)getProtocolStructure;
- (void)destroy;
@end

@implementation NWConcrete_nw_protocol_instance

- (NWConcrete_nw_protocol_instance)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_protocol_instance;
  v2 = [(NWConcrete_nw_protocol_instance *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->empty_frame_pool.tqh_first = 0;
    v2->empty_frame_pool.tqh_last = &v2->empty_frame_pool.tqh_first;
    v2->pending_inbound_frames.tqh_last = 0;
    *&v2->pending_inbound_frame_count = &v2->pending_inbound_frames.tqh_last;
    v2->handle = 0;
    v2->context = &v2->handle;
    v2->inbound_frames.tqh_first = 0;
    v2->inbound_frames.tqh_last = &v2->inbound_frames.tqh_first;
    v2->outbound_frames.tqh_last = 0;
    *&v2->empty_frame_pool_count = &v2->outbound_frames.tqh_last;
    LODWORD(v2->outbound_frames.tqh_first) = 0;
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_protocol_instance init]";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_protocol_instance init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_protocol_instance init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_protocol_instance init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_protocol_instance init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

- (void)destroy
{
  v98 = *MEMORY[0x1E69E9840];
  tqh_last = self->outbound_frames.tqh_last;
  do
  {
    if (!tqh_last)
    {
      break;
    }

    v4 = tqh_last[2];
    v5 = __42__NWConcrete_nw_protocol_instance_destroy__block_invoke(&__block_literal_global_12009, tqh_last);
    tqh_last = v4;
  }

  while ((v5 & 1) != 0);
  v6 = self->pending_outbound_frames.tqh_last;
  if (v6)
  {
    os_unfair_lock_opaque = v6[12]._os_unfair_lock_opaque;
    if (!os_unfair_lock_opaque)
    {
LABEL_14:
      _nw_hash_table_release(v6);
      self->pending_outbound_frames.tqh_last = 0;
      goto LABEL_15;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446722;
    v89 = "[NWConcrete_nw_protocol_instance destroy]";
    v90 = 1024;
    *v91 = os_unfair_lock_opaque;
    *&v91[4] = 2048;
    *&v91[6] = self;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated", buf, 28);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v84) = 0;
    if (__nwlog_fault(v9, type, &v84))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 1024;
          *v91 = os_unfair_lock_opaque;
          *&v91[4] = 2048;
          *&v91[6] = self;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated", buf, 0x1Cu);
        }
      }

      else if (v84 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v33 = type[0];
        v34 = os_log_type_enabled(v10, type[0]);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446978;
            v89 = "[NWConcrete_nw_protocol_instance destroy]";
            v90 = 1024;
            *v91 = os_unfair_lock_opaque;
            *&v91[4] = 2048;
            *&v91[6] = self;
            *&v91[14] = 2082;
            *&v91[16] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v33, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          if (!v9)
          {
LABEL_13:
            v6 = self->pending_outbound_frames.tqh_last;
            if (!v6)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_12:
          free(v9);
          goto LABEL_13;
        }

        if (v34)
        {
          *buf = 136446722;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 1024;
          *v91 = os_unfair_lock_opaque;
          *&v91[4] = 2048;
          *&v91[6] = self;
          _os_log_impl(&dword_181A37000, v10, v33, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v54 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 1024;
          *v91 = os_unfair_lock_opaque;
          *&v91[4] = 2048;
          *&v91[6] = self;
          _os_log_impl(&dword_181A37000, v10, v54, "%{public}s Flow table is not empty (%u) when protocol instance %p is deallocated, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_15:
  outbound_data_requests = self->outbound_data_requests;
  if (outbound_data_requests)
  {
    _nw_hash_table_release(outbound_data_requests);
    self->outbound_data_requests = 0;
  }

  flow_registration = self->flow_registration;
  if (flow_registration)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __42__NWConcrete_nw_protocol_instance_destroy__block_invoke_57;
    v81[3] = &unk_1E6A3CDF8;
    v81[4] = self;
    nw_hash_table_apply(flow_registration, v81);
    v14 = self->flow_registration;
    if (v14)
    {
      _nw_hash_table_release(v14);
      self->flow_registration = 0;
    }
  }

  v15 = *&self[-1].log_str[25];
  if (v15)
  {
    if (SBYTE5(self->flow_in_connected) < 0)
    {
LABEL_36:
      v24 = v15[5];
      v25 = v15;
      if (v24 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_61;
      }

      if (v24 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v25) = 0;
        v26 = 1;
        goto LABEL_64;
      }

      v25 = v15[8];
      if (v25)
      {
LABEL_61:
        v38 = v25[11];
        v26 = 0;
        if (v38)
        {
          v25[11] = v38 + 1;
        }

        LOBYTE(v25) = -1;
      }

      else
      {
        v26 = 1;
      }

LABEL_64:
      *type = v15;
      v87 = v25;
      v39 = *&self[-1].log_str[33];
      p_paths_log_id_num = &self[-1].paths_log_id_num;
      if (v39 != &nw_protocol_ref_counted_handle)
      {
        if (v39 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(p_paths_log_id_num) = 0;
          v41 = 1;
          goto LABEL_71;
        }

        p_paths_log_id_num = *&self[-1].log_str[57];
        if (!p_paths_log_id_num)
        {
          v41 = 1;
          goto LABEL_71;
        }
      }

      v42 = *(p_paths_log_id_num + 11);
      v41 = 0;
      if (v42)
      {
        *(p_paths_log_id_num + 11) = v42 + 1;
      }

      LOBYTE(p_paths_log_id_num) = -1;
LABEL_71:
      v84 = &self[-1].paths_log_id_num;
      v85 = p_paths_log_id_num;
      v43 = v15[3];
      if (v43)
      {
        v44 = *(v43 + 8);
        if (v44)
        {
          v45 = v44();
          if (v41)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }
      }

      v57 = v15;
      v58 = __nwlog_obj();
      v59 = v57[2];
      if (!v59)
      {
        v59 = "invalid";
      }

      *buf = 136446722;
      v89 = "__nw_protocol_remove_input_handler";
      v90 = 2082;
      *v91 = v59;
      *&v91[8] = 2048;
      v60 = v57;
      *&v91[10] = v57;
      LODWORD(v79) = 32;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, v79);

      v83 = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (__nwlog_fault(v61, &v83, &v82))
      {
        if (v83 == OS_LOG_TYPE_FAULT)
        {
          v62 = __nwlog_obj();
          v63 = v83;
          if (os_log_type_enabled(v62, v83))
          {
            v64 = v60[2];
            if (!v64)
            {
              v64 = "invalid";
            }

            *buf = 136446722;
            v89 = "__nw_protocol_remove_input_handler";
            v90 = 2082;
            *v91 = v64;
            *&v91[8] = 2048;
            *&v91[10] = v60;
            _os_log_impl(&dword_181A37000, v62, v63, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 0x20u);
          }

LABEL_151:

          goto LABEL_152;
        }

        if (v82 != 1)
        {
          v62 = __nwlog_obj();
          v75 = v83;
          if (os_log_type_enabled(v62, v83))
          {
            v76 = v60[2];
            if (!v76)
            {
              v76 = "invalid";
            }

            *buf = 136446722;
            v89 = "__nw_protocol_remove_input_handler";
            v90 = 2082;
            *v91 = v76;
            *&v91[8] = 2048;
            *&v91[10] = v60;
            _os_log_impl(&dword_181A37000, v62, v75, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded", buf, 0x20u);
          }

          goto LABEL_151;
        }

        v69 = __nw_create_backtrace_string();
        v62 = __nwlog_obj();
        v80 = v83;
        v70 = os_log_type_enabled(v62, v83);
        if (!v69)
        {
          if (v70)
          {
            v78 = v60[2];
            if (!v78)
            {
              v78 = "invalid";
            }

            *buf = 136446722;
            v89 = "__nw_protocol_remove_input_handler";
            v90 = 2082;
            *v91 = v78;
            *&v91[8] = 2048;
            *&v91[10] = v60;
            _os_log_impl(&dword_181A37000, v62, v80, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace", buf, 0x20u);
          }

          goto LABEL_151;
        }

        if (v70)
        {
          v71 = v60[2];
          if (!v71)
          {
            v71 = "invalid";
          }

          *buf = 136446978;
          v89 = "__nw_protocol_remove_input_handler";
          v90 = 2082;
          *v91 = v71;
          *&v91[8] = 2048;
          *&v91[10] = v60;
          *&v91[18] = 2082;
          *&v91[20] = v69;
          _os_log_impl(&dword_181A37000, v62, v80, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v69);
      }

LABEL_152:
      if (v61)
      {
        free(v61);
      }

      v45 = 0;
      if (v41)
      {
LABEL_75:
        if (v26)
        {
          if (v45)
          {
LABEL_83:
            v47 = *&self[-1].log_str[25];
            if (v47)
            {
              v48 = *(v47 + 40);
              if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v47 = *(v47 + 64)) != 0)
              {
                v49 = *(v47 + 88);
                if (v49)
                {
                  v50 = v49 - 1;
                  *(v47 + 88) = v50;
                  if (!v50)
                  {
                    v51 = *(v47 + 64);
                    if (v51)
                    {
                      *(v47 + 64) = 0;
                      v51[2](v51);
                      _Block_release(v51);
                    }

                    if (*(v47 + 72))
                    {
                      v52 = *(v47 + 64);
                      if (v52)
                      {
                        _Block_release(v52);
                      }
                    }

                    free(v47);
                  }
                }
              }

              *&self[-1].log_str[25] = 0;
            }

            goto LABEL_96;
          }
        }

        else
        {
          nw::release_if_needed<nw_protocol *>(type);
          if (v45)
          {
            goto LABEL_83;
          }
        }

LABEL_79:
        if ((SBYTE5(self->flow_in_connected) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v89 = "[NWConcrete_nw_protocol_instance destroy]";
            v90 = 2082;
            *v91 = &self->flow_in_connected + 7;
            *&v91[8] = 2080;
            *&v91[10] = " ";
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to remove output handler", buf, 0x20u);
          }
        }

        goto LABEL_83;
      }

LABEL_74:
      nw::release_if_needed<nw_protocol *>(&v84);
      goto LABEL_75;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = *&self[-1].log_str[25];
    v18 = "invalid";
    if (v17 && *(v17 + 16))
    {
      v18 = *(v17 + 16);
    }

    *buf = 136447490;
    v89 = "[NWConcrete_nw_protocol_instance destroy]";
    v90 = 2082;
    *v91 = &self->flow_in_connected + 7;
    *&v91[8] = 2080;
    *&v91[10] = " ";
    *&v91[18] = 2080;
    *&v91[20] = v18;
    v92 = 2048;
    v93 = v17;
    v94 = 2048;
    selfCopy5 = self;
    LODWORD(v79) = 62;
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated", buf, v79);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v84) = 0;
    if (__nwlog_fault(v19, type, &v84))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          v22 = *&self[-1].log_str[25];
          v23 = "invalid";
          if (v22 && *(v22 + 16))
          {
            v23 = *(v22 + 16);
          }

          *buf = 136447490;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 2082;
          *v91 = &self->flow_in_connected + 7;
          *&v91[8] = 2080;
          *&v91[10] = " ";
          *&v91[18] = 2080;
          *&v91[20] = v23;
          v92 = 2048;
          v93 = v22;
          v94 = 2048;
          selfCopy5 = self;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated", buf, 0x3Eu);
        }
      }

      else if (v84 == 1)
      {
        v27 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v28 = type[0];
        v29 = os_log_type_enabled(v20, type[0]);
        if (v27)
        {
          if (v29)
          {
            v30 = *&self[-1].log_str[25];
            v31 = "invalid";
            if (v30 && *(v30 + 16))
            {
              v31 = *(v30 + 16);
            }

            *buf = 136447746;
            v89 = "[NWConcrete_nw_protocol_instance destroy]";
            v90 = 2082;
            *v91 = &self->flow_in_connected + 7;
            *&v91[8] = 2080;
            *&v91[10] = " ";
            *&v91[18] = 2080;
            *&v91[20] = v31;
            v92 = 2048;
            v93 = v30;
            v94 = 2048;
            selfCopy5 = self;
            v96 = 2082;
            v97 = v27;
            _os_log_impl(&dword_181A37000, v20, v28, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated, dumping backtrace:%{public}s", buf, 0x48u);
          }

          free(v27);
          if (!v19)
          {
LABEL_35:
            v15 = *&self[-1].log_str[25];
            if (v15)
            {
              goto LABEL_36;
            }

            v65 = __nwlog_obj();
            *buf = 136446210;
            v89 = "__nw_protocol_remove_input_handler";
            LODWORD(v79) = 12;
            v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null protocol", buf, v79);

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v84) = 0;
            if (__nwlog_fault(v66, type, &v84))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v67 = __nwlog_obj();
                v68 = type[0];
                if (os_log_type_enabled(v67, type[0]))
                {
                  *buf = 136446210;
                  v89 = "__nw_protocol_remove_input_handler";
                  _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null protocol", buf, 0xCu);
                }
              }

              else if (v84 == 1)
              {
                v72 = __nw_create_backtrace_string();
                v67 = __nwlog_obj();
                v73 = type[0];
                v74 = os_log_type_enabled(v67, type[0]);
                if (v72)
                {
                  if (v74)
                  {
                    *buf = 136446466;
                    v89 = "__nw_protocol_remove_input_handler";
                    v90 = 2082;
                    *v91 = v72;
                    _os_log_impl(&dword_181A37000, v67, v73, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v72);
                  goto LABEL_159;
                }

                if (v74)
                {
                  *buf = 136446210;
                  v89 = "__nw_protocol_remove_input_handler";
                  _os_log_impl(&dword_181A37000, v67, v73, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v67 = __nwlog_obj();
                v77 = type[0];
                if (os_log_type_enabled(v67, type[0]))
                {
                  *buf = 136446210;
                  v89 = "__nw_protocol_remove_input_handler";
                  _os_log_impl(&dword_181A37000, v67, v77, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_159:
            if (v66)
            {
              free(v66);
            }

            goto LABEL_79;
          }

LABEL_34:
          free(v19);
          goto LABEL_35;
        }

        if (v29)
        {
          v55 = *&self[-1].log_str[25];
          v56 = "invalid";
          if (v55 && *(v55 + 16))
          {
            v56 = *(v55 + 16);
          }

          *buf = 136447490;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 2082;
          *v91 = &self->flow_in_connected + 7;
          *&v91[8] = 2080;
          *&v91[10] = " ";
          *&v91[18] = 2080;
          *&v91[20] = v56;
          v92 = 2048;
          v93 = v55;
          v94 = 2048;
          selfCopy5 = self;
          _os_log_impl(&dword_181A37000, v20, v28, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated, no backtrace", buf, 0x3Eu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v35 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          v36 = *&self[-1].log_str[25];
          v37 = "invalid";
          if (v36 && *(v36 + 16))
          {
            v37 = *(v36 + 16);
          }

          *buf = 136447490;
          v89 = "[NWConcrete_nw_protocol_instance destroy]";
          v90 = 2082;
          *v91 = &self->flow_in_connected + 7;
          *&v91[8] = 2080;
          *&v91[10] = " ";
          *&v91[18] = 2080;
          *&v91[20] = v37;
          v92 = 2048;
          v93 = v36;
          v94 = 2048;
          selfCopy5 = self;
          _os_log_impl(&dword_181A37000, v20, v35, "%{public}s %{public}s%sOutput handler %s:%p is not null when protocol instance %p is deallocated, backtrace limit exceeded", buf, 0x3Eu);
        }
      }
    }

    if (!v19)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_96:
  parameters = self->parameters;
  if (parameters)
  {
    nw_association_unregister(parameters, self);
  }
}

- (nw_protocol)getProtocolStructure
{
  if (self)
  {
    return &self[-1].paths_log_id_num;
  }

  else
  {
    return 0;
  }
}

@end