uint64_t nw_protocol_tcp_create()
{
  v13 = *MEMORY[0x1E69E9840];
  if (nw_protocol_tcp_identifier_onceToken != -1)
  {
    dispatch_once(&nw_protocol_tcp_identifier_onceToken, &__block_literal_global);
  }

  if (nw_protocol_tcp_callbacks_onceToken != -1)
  {
    dispatch_once(&nw_protocol_tcp_callbacks_onceToken, &__block_literal_global_10);
  }

  v0 = nw_protocol_new();
  if (v0)
  {
    if (nw_protocol_tcp_initialize_globals_onceToken != -1)
    {
      v6 = v0;
      dispatch_once(&nw_protocol_tcp_initialize_globals_onceToken, &__block_literal_global_36);
      v0 = v6;
    }

    *(v0 + 5392) = 0;
    v1 = v0;
    MEMORY[0x18CFDD2B0](v0 + 5312);
    *(v1 + 5360) = MEMORY[0x18CFDD0A0](v1 + 5312);
    *&buf = nw_protocol_tcp_get_receive_buffer_size;
    *(&buf + 1) = nw_protocol_tcp_get_send_buffer_size;
    v8 = nw_protocol_tcp_reset_keepalives;
    v9 = nw_protocol_tcp_set_no_delay;
    v10 = nw_protocol_tcp_set_no_push;
    v11 = nw_protocol_tcp_set_no_wake_from_sleep;
    v12 = nw_protocol_tcp_set_max_pacing_rate;
    nw_tcp_set_callbacks();
    return nw_protocol_upcast();
  }

  else
  {
    v3 = __nwlog_obj();
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "__nw_protocol_tcp_create";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v3, 16, "%{public}s nw_protocol_tcp_obj_alloc failed", &buf, 12);
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "__nw_protocol_tcp_create";
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, "%{public}s nw_protocol_tcp_obj_alloc failed, backtrace limit exceeded", &buf, 0xCu);
      }
    }

    if (v4)
    {
      free(v4);
    }

    return 0;
  }
}

BOOL nw_protocol_tcp_add_input_handler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_tcp_add_input_handler";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_protocol_tcp_add_input_handler";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_21:
        _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  v3 = nw_protocol_downcast();
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_tcp_add_input_handler";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_protocol_tcp_add_input_handler";
        v11 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  if (*(v3 + 5352))
  {
    return 0;
  }

  v5 = v3;
  nw_protocol_set_input_handler();
  nw_protocol_set_flow_id_from_protocol();
  if (!nw_protocol_get_output_handler())
  {
    nw_protocol_set_output_handler();
  }

  if (nw_protocol_supports_external_data())
  {
    v6 = 4096;
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 5436) = *(v5 + 5436) & 0xFFFFEFFF | v6;

  return nw_protocol_tcp_initialize(a1);
}

uint64_t tcp_usr_attach(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = **(*(a1 + 8) + 8);
  v3 = nw_tcp_access_globals(a1);
  if (v3)
  {
    v4 = *(v3 + 72);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v55 = __nwlog_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    LODWORD(v63) = 136446210;
    *(&v63 + 4) = "tcp_attach";
    LODWORD(v62) = 12;
    v57 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_1889BA000, v55, 16, "%{public}s Assert globals != NULL failed", &v63, v62);
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_112;
    }

    free(v57);
    v3 = 0;
    v4 = MEMORY[0x48];
    if (MEMORY[0x48])
    {
      goto LABEL_3;
    }
  }

  v58 = v3;
  v59 = __nwlog_obj();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v60 = 3;
  }

  else
  {
    v60 = 2;
  }

  LODWORD(v63) = 136446210;
  *(&v63 + 4) = "tcp_attach";
  LODWORD(v62) = 12;
  v61 = _os_log_send_and_compose_impl(v60, 0, 0, 0, &dword_1889BA000, v59, 16, "%{public}s Assert globals->tcbinfo != NULL failed", &v63, v62);
  result = __nwlog_should_abort();
  if (result)
  {
LABEL_112:
    __break(1u);
    return result;
  }

  free(v61);
  v4 = *(v58 + 72);
LABEL_3:
  nw_tcp_access_globals(a1);
  if (g_tcp_nw_assert_context == 1)
  {
    nw_context_assert_queue();
  }

  v5 = *a1;
  v6 = *a1 + 264;
  *(v5 + 16) = v4;
  *(v5 + 224) = a1;
  v7 = vdupq_n_s64(v5);
  v8 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *(v5 + 248) = vnegq_s64(vandq_s8(vsubq_s64(xmmword_188A18490, v7), v8));
  *v6 = vnegq_s64(vandq_s8(vsubq_s64(xmmword_188A184A0, v7), v8));
  v9 = *(v4 + 32);
  v10 = *v9;
  *v5 = *v9;
  if (v10)
  {
    *(v10 + 8) = v5;
  }

  *v9 = v5;
  *(v5 + 8) = v9;
  *(v5 + 2384) = -1;
  if (!*(a1 + 388) || !*(a1 + 468))
  {
    v26 = *(sysctls + 228);
    if (v26 > 0x71C71C)
    {
      return 55;
    }

    v28 = *(sysctls + 232);
    *(a1 + 388) = v26;
    v29 = *(*(a1 + 432) + 24);
    if ((*(a1 + 416) & 4) != 0)
    {
      v30 = v26;
      if (v29)
      {
        all_stats = nw_protocol_tcp_get_all_stats();
        v30 = *(a1 + 388);
        if (all_stats)
        {
          *(all_stats + 88) = v30;
        }
      }
    }

    else
    {
      v30 = v26;
      if (v29)
      {
        v31 = nw_protocol_tcp_get_all_stats();
        v30 = *(a1 + 388);
        if (v31)
        {
          *(v31 + 100) = v30;
        }
      }
    }

    if (*(a1 + 392) > v30)
    {
      *(a1 + 392) = v30;
    }

    *(a1 + 420) = v26;
    if (v28 > 0x71C71C)
    {
      sbrelease(a1 + 384);
      return 55;
    }

    *(a1 + 468) = v28;
    v33 = *(*(a1 + 512) + 24);
    if ((*(a1 + 496) & 4) != 0)
    {
      v34 = v28;
      if (v33)
      {
        v36 = nw_protocol_tcp_get_all_stats();
        v34 = *(a1 + 468);
        if (v36)
        {
          *(v36 + 88) = v34;
        }
      }
    }

    else
    {
      v34 = v28;
      if (v33)
      {
        v35 = nw_protocol_tcp_get_all_stats();
        v34 = *(a1 + 468);
        if (v35)
        {
          *(v35 + 100) = v34;
        }
      }
    }

    v37 = *(a1 + 472);
    if (v37 <= v34)
    {
      *(a1 + 500) = v28;
      if (!v37)
      {
LABEL_54:
        *(a1 + 472) = 1;
        v38 = *(a1 + 392);
        if (v38)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      }
    }

    else
    {
      *(a1 + 472) = v34;
      *(a1 + 500) = v28;
      if (!v34)
      {
        goto LABEL_54;
      }
    }

    v38 = *(a1 + 392);
    if (v38)
    {
LABEL_58:
      v39 = *(a1 + 388);
      if (v38 > v39)
      {
        *(a1 + 392) = v39;
      }

      goto LABEL_9;
    }

LABEL_55:
    v38 = 2048;
    *(a1 + 392) = 2048;
    goto LABEL_58;
  }

LABEL_9:
  if (*(a1 + 460))
  {
    v11 = *(a1 + 496);
    if ((v11 & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(a1 + 460) = 2048;
  *(a1 + 540) = 2048;
  v11 = *(a1 + 496);
  if ((v11 & 0x200) == 0)
  {
LABEL_11:
    *(a1 + 496) = v11 | 0x400;
  }

LABEL_12:
  v12 = *(a1 + 416);
  if ((v12 & 0x200) == 0)
  {
    *(a1 + 416) = v12 | 0x400;
  }

  v13 = *(v5 + 2380);
  if (v2 == 30)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = v13 | v14;
  *(v5 + 2380) = v13 | v14;
  HIDWORD(v62) = 0;
  v16 = nw_tcp_access_globals(*(v5 + 224));
  v63 = 0uLL;
  microuptime(&v63);
  v17 = SDWORD2(v63) / 1000 + 1000 * v63;
  if (*(v16 + 308) < v17)
  {
    *v16 = v63;
    *(v16 + 308) = v17;
  }

  *(v5 + 4272) = 0;
  *(v5 + 2400) = 0;
  v18 = sysctls;
  v19 = 148;
  if ((v15 & 2) == 0)
  {
    v19 = 144;
  }

  v20 = *(sysctls + v19);
  *(v5 + 2560) = v20;
  *(v5 + 2600) = v20;
  *(v5 + 2488) = 160;
  v21 = *(v5 + 3148);
  *(v5 + 3148) = v21 | 0x20;
  if (*(v18 + 308))
  {
    *(v5 + 3148) = v21 | 0x20000020;
  }

  l4s_enabled = network_config_get_l4s_enabled();
  tcp_developer_l4s = l4s_enabled;
  *(v5 + 2936) = 0;
  *(v5 + 2944) = v5 + 2936;
  *(v5 + 3360) = 0;
  *(v5 + 4392) = 0;
  *(v5 + 4400) = v5 + 4392;
  *(v5 + 4408) = 0u;
  *(v5 + 4424) = v5 + 4416;
  *(v5 + 4432) = 0;
  *(v5 + 4440) = v5 + 4432;
  *(v5 + 3440) = 0;
  *(v5 + 2480) = v5;
  *(v6 + 2340) = xmmword_188A184B0;
  v23 = sysctls;
  *(v5 + 2636) = *(sysctls + 168);
  *(v5 + 2596) = 1000;
  if (!v23[5])
  {
    if (v23[70])
    {
      v25 = 2;
      goto LABEL_66;
    }

    if (*(v5 + 2412) >= 4)
    {
      if (*(v5 + 4496))
      {
LABEL_48:
        v25 = 4;
        goto LABEL_66;
      }

LABEL_65:
      v25 = 3;
LABEL_66:
      *(v5 + 2672) = v25;
      v24 = (v5 + 2672);
      if (!*(v5 + 3248))
      {
        *(v5 + 3248) = v5 + 3256;
        *(v5 + 3256) = 0u;
        *(v5 + 3272) = 0u;
        *(v5 + 3288) = 0u;
        *(v5 + 3304) = 0u;
        *(v5 + 3320) = 0u;
      }

      goto LABEL_68;
    }

    if (l4s_enabled == 2)
    {
      goto LABEL_63;
    }

    v40 = *(v5 + 448);
    if (v40)
    {
      v41 = *(v40 + 1246);
      if (v41 == 2)
      {
LABEL_63:
        LOBYTE(v42) = 0;
        goto LABEL_64;
      }

      LOBYTE(v42) = 1;
      if (l4s_enabled == 1 || v41 == 1)
      {
LABEL_64:
        v43 = *(v5 + 4496) & 0xFE | v42;
        *(v5 + 4496) = v43;
        if (v43)
        {
          goto LABEL_48;
        }

        goto LABEL_65;
      }
    }

    else if (l4s_enabled == 1)
    {
      LOBYTE(v42) = 1;
      goto LABEL_64;
    }

    v42 = v23[78];
    if (v42 != 1)
    {
      v42 = (*(v5 + 3151) >> 3) & 1;
    }

    goto LABEL_64;
  }

  v24 = (v5 + 2672);
  v25 = 1;
  *(v5 + 2672) = 1;
LABEL_68:
  v44 = *(tcp_cc_algo_list[v25] + 24);
  if (v44)
  {
    v44(v5 + 2400);
    v23 = sysctls;
  }

  if (v23[71] == 1 && (v23[10] == 1 || (*(*(v5 + 224) + 369) & 0x40) != 0) && off_1ED4BF6D8)
  {
    off_1ED4BF6D8(v5 + 2400);
    v23 = sysctls;
  }

  v45 = v23[70];
  if (v45)
  {
    v46 = v23[4];
  }

  else
  {
    v46 = 10;
  }

  v47 = *(v5 + 2600);
  *(v5 + 2548) = v47 * v46;
  *(v5 + 2552) = 1073725440;
  *(v5 + 2900) = 1073725440;
  v48 = *(v16 + 308);
  *(v5 + 2564) = v48;
  *(v5 + 2464) = v48;
  *(v5 + 2724) = v23[51];
  *(v5 + 2728) = 0;
  *(v5 + 2722) = 3;
  *(v5 + 4476) = 1;
  *(v5 + 2584) = v48;
  if (v45)
  {
    v49 = v23[4];
  }

  else
  {
    v49 = 10;
  }

  *(v5 + 2592) = v49 * v47;
  *(v5 + 2720) = 16;
  *(v5 + 4488) = 0;
  *(v5 + 4480) = 0;
  *(v5 + 3184) = 0u;
  *(v5 + 3200) = 0u;
  *(v5 + 3216) = 0;
  *(v5 + 3176) = v5 + 3184;
  *(v5 + 3196) = 6;
  *(v5 + 3204) = 6 * v47;
  *(v5 + 3148) |= 8u;
  *(v5 + 3232) = 0u;
  arc4random_buf(&v62 + 4, 4uLL);
  v50 = HIDWORD(v62);
  if (HIDWORD(v62) <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = HIDWORD(v62);
  }

  *(v5 + 4288) = v51;
  v52 = *(v16 + 308);
  *(v5 + 4292) = v52;
  if (*(sysctls + 272))
  {
    *(v5 + 2688) = v50;
  }

  *(v5 + 2540) = v52;
  *(v5 + 2748) = 0x100000001;
  *(v5 + 3024) = 0;
  *(v5 + 3032) = v5 + 3024;
  *(v5 + 3040) = 0;
  *(v5 + 2712) = 0;
  *(v5 + 2381) = 64;
  *(v5 + 240) = v5 + 2400;
  *(v5 + 3480) = 680;
  *(v5 + 3488) = 0u;
  *(v5 + 2412) = 0;
  if (*(a1 + 24))
  {
    v53 = nw_protocol_tcp_get_all_stats();
    if (v53)
    {
      *(v53 + 132) = *v24;
    }

    if (*(a1 + 24))
    {
      v54 = nw_protocol_tcp_get_all_stats();
      if (v54)
      {
        *(v54 + 136) = 0;
      }
    }
  }

  if ((*(a1 + 372) & 0x80) == 0 || *(a1 + 16))
  {
    return 0;
  }

  result = 0;
  *(a1 + 16) = 120000;
  return result;
}

BOOL nw_protocol_tcp_initialize(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = nw_protocol_downcast();
  if (!v2)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v46, 16, "%{public}s called with null tcp", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v18 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_63:
    _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    goto LABEL_64;
  }

  v3 = v2;
  _os_feature_enabled_impl();
  nw_protocol_get_input_handler();
  local_endpoint = nw_protocol_get_local_endpoint();
  if (!local_endpoint)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s get_local_endpoint failed", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v18 = "%{public}s get_local_endpoint failed, backtrace limit exceeded";
    goto LABEL_63;
  }

  v5 = local_endpoint;
  *(v3 + 5400) = nw_endpoint_copy_address_string(local_endpoint);
  *(v3 + 5428) = nw_endpoint_get_port(v5);
  remote_endpoint = nw_protocol_get_remote_endpoint();
  if (!remote_endpoint)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v15, 16, "%{public}s get_remote_endpoint failed", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v18 = "%{public}s get_remote_endpoint failed, backtrace limit exceeded";
    goto LABEL_63;
  }

  v7 = remote_endpoint;
  *(v3 + 5408) = nw_endpoint_copy_address_string(remote_endpoint);
  *(v3 + 5430) = nw_endpoint_get_port(v7);
  address = nw_endpoint_get_address(v5);
  if (!address)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v16, 16, "%{public}s nw_endpoint_get_address failed", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v18 = "%{public}s nw_endpoint_get_address failed, backtrace limit exceeded";
    goto LABEL_63;
  }

  v9 = address;
  v10 = *(v3 + 5336);
  if (v10)
  {
    nw_release(v10);
    *(v3 + 5336) = 0;
  }

  path = nw_protocol_get_path();
  *(v3 + 5336) = path;
  if (path)
  {
    nw_retain(path);
    if (nw_path_is_viable())
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 0;
    }

    *(v3 + 5436) = *(v3 + 5436) & 0xFFFFDFFF | v12;
  }

  else
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v50 = "nw_protocol_tcp_initialize";
      _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s Unable to get path from input protocol, will not be able to get stats", buf, 0xCu);
    }
  }

  nw_protocol_get_input_handler();
  if (!nw_protocol_get_parameters())
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v47, 16, "%{public}s called with null parameters", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v18 = "%{public}s called with null parameters, backtrace limit exceeded";
    goto LABEL_63;
  }

  v20 = nw_parameters_copy_protocol_options_legacy();
  v21 = v3 + 556;
  if (!nw_protocol_options_get_log_id_str() || !nw_protocol_options_get_log_id_str())
  {
    snprintf((v3 + 556), 0x54uLL, "tcp[%llu]", ++tcp_flow_gencnt);
    snprintf((v3 + 4988), 0x54uLL, "tcp[%llu]", tcp_flow_gencnt);
  }

  *(v3 + 640) = nw_protocol_options_get_log_id_num();
  if (v20)
  {
    nw_release(v20);
  }

  if (nw_parameters_get_logging_disabled())
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  *(v3 + 776) = *(v3 + 776) & 0xFD | v22;
  if (nw_parameters_get_sensitive_redacted())
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  *(v3 + 776) = *(v3 + 776) & 0xFB | v23;
  v24 = nw_parameters_copy_context();
  if (!v24)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v48, 16, "%{public}s called with null context", buf, 12);
    if (__nwlog_fault())
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v50 = "nw_protocol_tcp_initialize";
        v18 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_63;
      }
    }

LABEL_64:
    if (v14)
    {
      v43 = v14;
LABEL_77:
      free(v43);
    }

    return 0;
  }

  v25 = v24;
  *(v3 + 5344) = nw_path_copy_flow_registration();
  *(v3 + 5328) = v25;
  v26 = nw_protocol_copy_tcp_definition();
  *(v3 + 5368) = nw_context_get_globals_for_protocol();
  if (nw_context_get_logging_disabled())
  {
    v27 = 0x80;
  }

  else
  {
    v27 = 0;
  }

  *(*(v3 + 5368) + 316) = v27 & 0x80 | *(*(v3 + 5368) + 316) & 0x7F;
  if (v26)
  {
    nw_release(v26);
  }

  *(v3 + 24) = a1;
  *(v3 + 40) = v3;
  sa_family = v9->sa_family;
  if (sa_family == 2)
  {
    v29 = &inetsw;
  }

  else
  {
    if (sa_family != 30)
    {
      v31 = 22;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_47:
      **(StatusReg + 8) = v31;
      v33 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v34 = __nwlog_obj();
      *buf = 136446722;
      v50 = "nw_protocol_tcp_initialize";
      v51 = 2082;
      v52 = v3 + 556;
      v53 = 1024;
      v54[0] = v33;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v34, 16, "%{public}s %{public}s setup state failed %{darwin.errno}d", buf, 28);
      if (!__nwlog_fault() || (v38 = __nwlog_obj(), !os_log_type_enabled(v38, OS_LOG_TYPE_ERROR)))
      {
LABEL_75:
        if (v35)
        {
          v43 = v35;
          goto LABEL_77;
        }

        return 0;
      }

      *buf = 136446722;
      v50 = "nw_protocol_tcp_initialize";
      v51 = 2082;
      v52 = v21;
      v53 = 1024;
      v54[0] = v33;
      v39 = "%{public}s %{public}s setup state failed %{darwin.errno}d, backtrace limit exceeded";
      v41 = v38;
      v42 = 28;
LABEL_74:
      _os_log_impl(&dword_1889BA000, v41, OS_LOG_TYPE_ERROR, v39, buf, v42);
      goto LABEL_75;
    }

    v29 = &inet6sw;
  }

  *(v3 + 304) = 0;
  *(v3 + 312) = v3 + 304;
  *(v3 + 320) = 0;
  *(v3 + 328) = v3 + 320;
  *(v3 + 400) = 0;
  *(v3 + 408) = v3 + 400;
  *(v3 + 480) = 0;
  *(v3 + 488) = v3 + 480;
  *(v3 + 360) = 1;
  *(v3 + 496) |= 0x1004u;
  *(v3 + 416) |= 0x1000u;
  *(v3 + 376) |= 0x100u;
  *(v3 + 432) = v3;
  *(v3 + 512) = v3;
  *v3 = v3 + 800;
  *(v3 + 8) = v29;
  v30 = (*(v29[5] + 8))(v3);
  if (v30)
  {
    v31 = v30;
    *(v3 + 376) |= 1u;
    --*(v3 + 360);
    sofreelastref(v3);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_47;
  }

  *(v3 + 32) = &nw_proto_north;
  v36 = *v3;
  v36[285] = &nw_proto_south;
  v36[286] = v3;
  v36[287] = v3;
  if ((nw_protocol_tcp_apply_parameters(v3) & 1) == 0)
  {
    if ((*(v3 + 776) & 2) != 0)
    {
      return 0;
    }

    v40 = __nwlog_tcp_log();
    *buf = 136446466;
    v50 = "nw_protocol_tcp_initialize";
    v51 = 2082;
    v52 = v3 + 556;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v40, 16, "%{public}s %{public}s apply socket parameters failed", buf, 22);
    if (!__nwlog_fault())
    {
      goto LABEL_75;
    }

    v45 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    v50 = "nw_protocol_tcp_initialize";
    v51 = 2082;
    v52 = v21;
    v39 = "%{public}s %{public}s apply socket parameters failed, backtrace limit exceeded";
    goto LABEL_73;
  }

  if ((*(*(*(v3 + 8) + 40) + 16))(v3, v9))
  {
    if ((*(v3 + 776) & 2) != 0)
    {
      return 0;
    }

    v37 = __nwlog_tcp_log();
    *buf = 136446466;
    v50 = "nw_protocol_tcp_initialize";
    v51 = 2082;
    v52 = v3 + 556;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v37, 16, "%{public}s %{public}s tcp_bind failed", buf, 22);
    if (!__nwlog_fault())
    {
      goto LABEL_75;
    }

    v45 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    v50 = "nw_protocol_tcp_initialize";
    v51 = 2082;
    v52 = v21;
    v39 = "%{public}s %{public}s tcp_bind failed, backtrace limit exceeded";
LABEL_73:
    v41 = v45;
    v42 = 22;
    goto LABEL_74;
  }

  if ((*(v3 + 372) & 2) == 0 || (result = nw_protocol_tcp_initialize_inbound(v3, v7)))
  {
    result = 1;
    *(v3 + 5352) = 1;
    *(v3 + 5436) |= 0x40000u;
  }

  return result;
}

uint64_t nw_tcp_access_globals(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return *(v1 + 5368);
    }

    v5 = __nwlog_obj();
    *buf = 136446210;
    v9 = "nw_tcp_access_globals";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v9 = "nw_tcp_access_globals";
        v7 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v9 = "nw_tcp_access_globals";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v3, 16, "%{public}s called with null so", buf, 12);
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v9 = "nw_tcp_access_globals";
        v7 = "%{public}s called with null so, backtrace limit exceeded";
LABEL_12:
        _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_tcp_get_all_stats()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = nw_protocol_downcast();
  if (!v0)
  {
    v1 = __nwlog_obj();
    *buf = 136446210;
    v6 = "nw_protocol_tcp_get_all_stats";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v1, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v3 = __nwlog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v6 = "nw_protocol_tcp_get_all_stats";
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_ERROR, "%{public}s called with null tcp, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v2)
    {
      free(v2);
    }

    return 0;
  }

  if (!*(v0 + 5344))
  {
    return 0;
  }

  return MEMORY[0x1EEDD3E68]();
}

uint64_t tcp_cubic_init(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(dword_1ED4BF7B0, 1u);
  tcp_cubic_backoff = 1050253722;
  tcp_cubic_fast_convergence_factor = 1062836634;
  tcp_cubic_beta = 1060320051;
  v1 = *(a1 + 848);
  if (v1)
  {
    goto LABEL_2;
  }

  v3 = a1;
  v4 = __nwlog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v8 = 136446210;
  v9 = "tcp_cubic_init";
  v7 = 12;
  v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1889BA000, v4, 16, "%{public}s Assert tp->t_ccstate != NULL failed", &v8, v7);
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v6);
    a1 = v3;
    v1 = *(v3 + 848);
LABEL_2:
    *v1 = 0;
    *(*(a1 + 848) + 4) = 0;
    *(*(a1 + 848) + 8) = 0;
    *(*(a1 + 848) + 12) = 0;
    *(*(a1 + 848) + 16) = 0;
    *(*(a1 + 848) + 28) = 0;
    return 0;
  }

  __break(1u);
  return result;
}

int *nw_protocol_tcp_identifier()
{
  if (nw_protocol_tcp_identifier_onceToken != -1)
  {
    dispatch_once(&nw_protocol_tcp_identifier_onceToken, &__block_literal_global);
  }

  return &nw_protocol_tcp_identifier_identifier;
}

uint64_t __nw_protocol_tcp_identifier_block_invoke()
{
  dword_1ED4BF94C = 0;
  unk_1ED4BF944 = 0;
  unk_1ED4BF934 = 0u;
  nw_protocol_tcp_identifier_identifier = 7365492;
  qword_1ED4BF950 = 0x100000003;
  return MEMORY[0x1EEDD4758]();
}

void microuptime(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  info = 0;
  v2 = mach_timebase_info(&info);
  if (v2)
  {
    v3 = v2;
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "microuptime";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s mach_timebase_info returned %u", buf, 0x12u);
    }
  }

  else
  {
    v5 = mach_absolute_time() * info.numer / info.denom;
    *a1 = v5 / 0x3B9ACA00;
    *(a1 + 8) = v5 % 0x3B9ACA00 / 0x3E8;
  }
}

uint64_t tcp_unlock(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 360);
  if (a2)
  {
    *(a1 + 360) = --v3;
  }

  if (v3 < 0)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      v6 = *(a1 + 360);
      *buf = 136447234;
      v15 = "tcp_unlock";
      v16 = 2082;
      v17 = a1 + 556;
      v18 = 2048;
      v19 = a1;
      v20 = 1024;
      v21 = v6;
      v22 = 2080;
      v23 = &unk_188A285CF;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s tcp_unlock: so=%p usecount=%x lrh= %s", buf, 48);
      if (!__nwlog_fault())
      {
        goto LABEL_17;
      }

      v10 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v11 = *(a1 + 360);
      *buf = 136447234;
      v15 = "tcp_unlock";
      v16 = 2082;
      v17 = a1 + 556;
      v18 = 2048;
      v19 = a1;
      v20 = 1024;
      v21 = v11;
      v22 = 2080;
      v23 = &unk_188A285CF;
      v12 = "%{public}s %{public}s tcp_unlock: so=%p usecount=%x lrh= %s, backtrace limit exceeded";
      goto LABEL_16;
    }
  }

  else
  {
    if (*a1)
    {
      return 0;
    }

    if ((*(a1 + 776) & 2) == 0)
    {
      v8 = __nwlog_tcp_log();
      v9 = *(a1 + 360);
      *buf = 136447234;
      v15 = "tcp_unlock";
      v16 = 2082;
      v17 = a1 + 556;
      v18 = 2048;
      v19 = a1;
      v20 = 1024;
      v21 = v9;
      v22 = 2080;
      v23 = &unk_188A285CF;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v8, 16, "%{public}s %{public}s tcp_unlock: so=%p NO PCB usecount=%x lrh= %s", buf, 48);
      if (!__nwlog_fault())
      {
        goto LABEL_17;
      }

      v10 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v13 = *(a1 + 360);
      *buf = 136447234;
      v15 = "tcp_unlock";
      v16 = 2082;
      v17 = a1 + 556;
      v18 = 2048;
      v19 = a1;
      v20 = 1024;
      v21 = v13;
      v22 = 2080;
      v23 = &unk_188A285CF;
      v12 = "%{public}s %{public}s tcp_unlock: so=%p NO PCB usecount=%x lrh= %s, backtrace limit exceeded";
LABEL_16:
      _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x30u);
LABEL_17:
      if (v7)
      {
        free(v7);
      }
    }
  }

  return 22;
}

BOOL so_throttle_best_effort(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 552);
  if (v2 && v2 != 400 && v2 != 300)
  {
    return 0;
  }

  v3 = *(*a1 + 240);
  v4 = nw_tcp_access_globals(a1);
  v8 = *(sysctls + 340) == 1 && ((v5 = *v4, (v6 = *(v3 + 1072)) != 0) ? (v7 = v5 >= 3) : (v7 = 0), v7) && *(v6 + 16) > v5 - 2;
  if (so_throttle_best_effort_old_result != v8 && (*(a1 + 776) & 2) == 0)
  {
    v9 = __nwlog_tcp_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = "off";
      v13 = "so_throttle_best_effort";
      v12 = 136446722;
      if (v8)
      {
        v10 = "on";
      }

      v14 = 2082;
      v15 = a1 + 556;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s throttling is now %s", &v12, 0x20u);
    }
  }

  so_throttle_best_effort_old_result = v8;
  return v8;
}

void set_tcp_stream_priority(_DWORD *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(*a1 + 232) != 3)
  {
    v2 = *(*a1 + 240);
    v3 = *(v2 + 272);
    v4 = a1[92];
    v5 = nw_tcp_access_globals(a1);
    v6 = *v5;
    if (so_throttle_best_effort(a1) || ((v10 = a1[92], (v10 & 0x2000) != 0) || (v11 = a1[138], v11 == 200) || v11 == 100) && ((v12 = *(v2 + 1072)) != 0 ? (v13 = v6 >= 3) : (v13 = 0), v13 && *(v12 + 8) > *v5 - 2) || a1[138] == 100)
    {
      if (v3 != 2)
      {
        tcp_set_new_cc(a1, 2);
      }

      v7 = a1[92];
      if ((v7 & 0x4000) == 0)
      {
        a1[92] = v7 | 0x4000;
        if (*(sysctls + 284) == 1)
        {
          v8 = *(*a1 + 240);
          if ((~*(v8 + 88) & 0x180) == 0 && off_1ED4BF708 != 0)
          {
            off_1ED4BF708(v8);
          }
        }
      }
    }

    else
    {
      if ((v10 & 0x4000) != 0)
      {
        a1[92] = v10 & 0xFFFFBFFF;
      }

      if (v3 == 2)
      {
        if (*(sysctls + 20))
        {
          v14 = a1;
          v15 = 1;
        }

        else if (*(sysctls + 280))
        {
          v14 = a1;
          v15 = 2;
        }

        else
        {
          v14 = a1;
          if (*(*(*a1 + 240) + 2096))
          {
            v15 = 4;
          }

          else
          {
            v15 = 3;
          }
        }

        tcp_set_new_cc(v14, v15);
      }
    }

    v16 = v4 & 0x4000;
    if ((v3 != *(v2 + 272) || v16 != (a1[92] & 0x4000)) && (a1[194] & 2) == 0 && __nwlog_is_datapath_logging_enabled())
    {
      v17 = __nwlog_tcp_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = tcp_cc_algo_list[*(v2 + 272)];
        v19 = 136446978;
        v20 = "set_tcp_stream_priority";
        v21 = 2082;
        v22 = a1 + 139;
        v23 = 2082;
        v24 = v18;
        v25 = 1024;
        v26 = v16;
        _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s cc_algo %{public}s recvbg %d", &v19, 0x26u);
      }
    }
  }
}

uint64_t tcp_lock(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 90);
  if (v3 < 0)
  {
    if ((a1[97] & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      v6 = *a1;
      v7 = *(a1 + 90);
      *buf = 136447490;
      v13 = "tcp_lock";
      v14 = 2082;
      v15 = a1 + 556;
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 2080;
      v23 = &unk_188A285CF;
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s tcp_lock: so=%p so_pcb=%p ref=%x lrh= %s", buf, 58);
      if (__nwlog_fault())
      {
        v9 = __nwlog_tcp_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *a1;
          v11 = *(a1 + 90);
          *buf = 136447490;
          v13 = "tcp_lock";
          v14 = 2082;
          v15 = a1 + 556;
          v16 = 2048;
          v17 = a1;
          v18 = 2048;
          v19 = v10;
          v20 = 1024;
          v21 = v11;
          v22 = 2080;
          v23 = &unk_188A285CF;
          _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp_lock: so=%p so_pcb=%p ref=%x lrh= %s, backtrace limit exceeded", buf, 0x3Au);
        }
      }

      if (v8)
      {
        free(v8);
      }
    }

    return 22;
  }

  else
  {
    result = 0;
    if (a2)
    {
      *(a1 + 90) = v3 + 1;
    }
  }

  return result;
}

void nw_protocol_tcp_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_downcast())
    {
      if (a3)
      {
        v4 = a3[1] & 0xFFFFFFF8 | 4;
        *a3 = -1;
        a3[1] = v4;
      }

      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_get_message_properties";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_protocol_tcp_get_message_properties";
        v9 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_get_message_properties";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_protocol_tcp_get_message_properties";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_14:
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }
  }

  if (v6)
  {
    free(v6);
  }
}

uint64_t tcp_output(uint64_t a1)
{
  v1011 = *MEMORY[0x1E69E9840];
  v2 = a1 + 560;
  v3 = *(a1 + 80);
  v4 = v3[28];
  v942 = *(v4 + 552);
  v5 = nw_tcp_access_globals(v4);
  v944 = v3[56];
  v945 = *(v3 + 2380) & 2;
  v6 = *(a1 + 88);
  if ((v6 & 0x100000) != 0)
  {
    v961 = (v5 + 308);
LABEL_5:
    v8 = *(v5 + 308) - *(a1 + 164);
    if (*(a1 + 12) <= 3)
    {
      v9 = *(sysctls + 172);
    }

    else
    {
      v9 = 0;
    }

    if (v8 >= *(a1 + 196) + v9)
    {
      v10 = v2;
      v11 = *(a1 + 272);
      v12 = *(tcp_cc_algo_list[*(a1 + 272)] + 80);
      if (v12 && (v11 != 3 && v11 != 4 || v8 > 179999))
      {
        v12(a1);
      }

      v13 = *(a1 + 960);
      if (v13)
      {
        v14 = (a1 + 960);
        do
        {
          v17 = *v14;
          if (*v14 == v13)
          {
            v15 = (a1 + 960);
          }

          else
          {
            do
            {
              v18 = v17;
              v17 = v17[2];
            }

            while (v17 != v13);
            v15 = v18 + 2;
          }

          v16 = v13[2];
          *v15 = v17[2];
          nw_tcp_access_globals(*(*(a1 + 80) + 224));
          free(v13);
          v13 = v16;
        }

        while (v16);
        *(a1 + 968) = *(a1 + 96);
      }

      *(a1 + 320) = 16;
      v6 = *(a1 + 88);
      v7 = 1;
      v2 = v10;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_24;
  }

  v961 = (v5 + 308);
  if (*(a1 + 96) == *(a1 + 92))
  {
    goto LABEL_5;
  }

  v7 = 0;
LABEL_24:
  v943 = 0;
  v939 = 0;
  v19 = 0;
  v951 = 0;
  v938 = 0;
  v934 = 0;
  v20 = 0;
  v952 = 0;
  v21 = v6 & 0xFFEFFFFF;
  v22 = *&v7 & ((v6 & 0x10000u) >> 16);
  if (v22)
  {
    v23 = 0x100000;
  }

  else
  {
    v23 = 0;
  }

  v930 = v22 ^ v7;
  *(a1 + 88) = v21 | v23;
  v968 = (a1 + 100);
  v929 = v2;
  v946 = (v2 + 388);
  if (v945)
  {
    v24 = -40;
  }

  else
  {
    v24 = -20;
  }

  v933 = v24;
  v937 = v4 + 556;
  if (v945)
  {
    v25 = 40;
  }

  else
  {
    v25 = 20;
  }

  if (v945)
  {
    v26 = 56;
  }

  else
  {
    v26 = 36;
  }

  v931 = v26;
  v932 = v25;
  if (v945)
  {
    v27 = 136;
  }

  else
  {
    v27 = 120;
  }

  v28 = (a1 + 624);
  v993 = v3;
  v935 = v27;
  v936 = (a1 + 2008);
  v967 = v4;
  while (1)
  {
    while (1)
    {
      *(a1 + 88) &= ~0x10000000u;
      if (!*(v4 + 24))
      {
        v841 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
        LODWORD(v923) = 12;
        v842 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v841, 16, "%{public}s called with null protocol", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1777;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v843 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v843, info.numer))
          {
            goto LABEL_1777;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v845 = "%{public}s called with null protocol";
LABEL_1775:
          v857 = v843;
          v858 = numer;
LABEL_1776:
          _os_log_impl(&dword_1889BA000, v857, v858, v845, buf, 0xCu);
          goto LABEL_1777;
        }

        if (v1004 != OS_LOG_TYPE_INFO)
        {
          v843 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v843, info.numer))
          {
            goto LABEL_1777;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v845 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_1775;
        }

        backtrace_string = __nw_create_backtrace_string();
        v852 = __nwlog_obj();
        v853 = info.numer;
        v854 = os_log_type_enabled(v852, info.numer);
        if (backtrace_string)
        {
          if (v854)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v855 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_1767:
            _os_log_impl(&dword_1889BA000, v852, v853, v855, buf, 0x16u);
          }

LABEL_1768:
          free(backtrace_string);
          goto LABEL_1777;
        }

        if (v854)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v845 = "%{public}s called with null protocol, no backtrace";
LABEL_1826:
          v857 = v852;
          v858 = v853;
          goto LABEL_1776;
        }

LABEL_1777:
        if (v842)
        {
          free(v842);
        }

        v4 = v967;
LABEL_1780:
        if (*(a1 + 12) >= 5)
        {
          v770 = 49;
          tcp_drop(a1, 49);
          return v770;
        }

        if ((*(v4 + 776) & 2) == 0)
        {
          v859 = __nwlog_tcp_log();
          if (os_log_type_enabled(v859, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            _os_log_impl(&dword_1889BA000, v859, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s path is non-viable, dropping output", buf, 0x16u);
          }
        }

        if (!*(a1 + 28))
        {
          tcp_set_rto(a1);
          if (*(a1 + 36))
          {
            *(a1 + 36) = 0;
            *(a1 + 328) = 0;
            *(a1 + 234) = 0;
            *(a1 + 256) = 0;
          }
        }

        v860 = *v28;
        if (!*v28)
        {
LABEL_1811:
          *(a1 + 624) = 0;
          *(a1 + 632) = v28;
          *(a1 + 640) = 0;
          *(a1 + 312) = 0;
          goto LABEL_1717;
        }

        while (1)
        {
          v861 = v860[10];
          v862 = v860[4];
          v863 = v860[5];
          v864 = (v862 + 40);
          if (!v862)
          {
            v864 = (a1 + 632);
          }

          *v864 = v863;
          *v863 = v862;
          v860[4] = 0;
          v860[5] = 0;
          if (!v861)
          {
            break;
          }

          v865 = v860[11];
          v860[10] = 0;
          v860[11] = 0;
          v861(v860, 0, v865);
LABEL_1793:
          v860 = *v28;
          if (!*v28)
          {
            goto LABEL_1811;
          }
        }

        v866 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        LODWORD(v923) = 12;
        v867 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v866, 16, "%{public}s called with null frame->finalizer", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        v1000 = v867;
        if (__nwlog_fault())
        {
          if (LOBYTE(info.numer) == 17)
          {
            v994 = __nwlog_obj();
            logb = info.numer;
            if (!os_log_type_enabled(v994, info.numer))
            {
              goto LABEL_1809;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v868 = v994;
            v869 = logb;
            v870 = "%{public}s called with null frame->finalizer";
            goto LABEL_1808;
          }

          if (v1004 != OS_LOG_TYPE_INFO)
          {
            v995 = __nwlog_obj();
            logd = info.numer;
            if (!os_log_type_enabled(v995, info.numer))
            {
              goto LABEL_1809;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v868 = v995;
            v869 = logd;
            v870 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
            goto LABEL_1808;
          }

          v928 = v28;
          v871 = __nw_create_backtrace_string();
          logc = __nwlog_obj();
          v987 = info.numer;
          v872 = os_log_type_enabled(logc, info.numer);
          if (v871)
          {
            if (v872)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v871;
              _os_log_impl(&dword_1889BA000, logc, v987, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v871);
            v28 = v928;
            goto LABEL_1809;
          }

          v28 = v928;
          if (v872)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v868 = logc;
            v869 = v987;
            v870 = "%{public}s called with null frame->finalizer, no backtrace";
LABEL_1808:
            _os_log_impl(&dword_1889BA000, v868, v869, v870, buf, 0xCu);
          }
        }

LABEL_1809:
        if (v1000)
        {
          free(v1000);
        }

        goto LABEL_1793;
      }

      v29 = nw_protocol_downcast();
      if (!v29)
      {
        v846 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
        LODWORD(v923) = 12;
        v842 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v846, 16, "%{public}s called with null tcp", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1777;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v843 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v843, info.numer))
          {
            goto LABEL_1777;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v845 = "%{public}s called with null tcp";
          goto LABEL_1775;
        }

        if (v1004 != OS_LOG_TYPE_INFO)
        {
          v843 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v843, info.numer))
          {
            goto LABEL_1777;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v845 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_1775;
        }

        backtrace_string = __nw_create_backtrace_string();
        v852 = __nwlog_obj();
        v853 = info.numer;
        v856 = os_log_type_enabled(v852, info.numer);
        if (backtrace_string)
        {
          if (v856)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v855 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
            goto LABEL_1767;
          }

          goto LABEL_1768;
        }

        if (v856)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v845 = "%{public}s called with null tcp, no backtrace";
          goto LABEL_1826;
        }

        goto LABEL_1777;
      }

      if (*(v29 + 5336) && (*(v29 + 5437) & 0x20) == 0)
      {
        goto LABEL_1780;
      }

      v30 = v3[62];
      if (v30)
      {
        v31 = *(v30 + 216);
        v32 = *(a1 + 88);
        *(a1 + 88) = v32 & 0xEFFFFFFF;
        if ((*(*(a1 + 80) + 2380) & 2) != 0)
        {
          if (!v31)
          {
LABEL_65:
            v19 = 0;
            v951 = 0;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_72;
          }

          if ((*(v31 + 1194) & 0x40) == 0)
          {
            goto LABEL_59;
          }

          v33 = 1208;
        }

        else
        {
          if (!v31)
          {
            goto LABEL_65;
          }

          if ((*(v31 + 1194) & 0x20) == 0)
          {
            goto LABEL_59;
          }

          v33 = 1204;
        }

        *(a1 + 88) = v32 | 0x10000000;
        v34 = *(v31 + v33);
        if (v34 >= 0xFFFF)
        {
          v35 = 0xFFFF;
        }

        else
        {
          v35 = *(v31 + v33);
        }

        if (v34)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0xFFFF;
        }

        *(a1 + 684) = v36;
LABEL_59:
        if (*(v31 + 1224) == 255 || *(v31 + 1168) == 255)
        {
          HIDWORD(v951) = 1;
LABEL_62:
          if (*(v31 + 1212) == 2)
          {
            LODWORD(v951) = 0;
            v19 = 1;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }
          }

          else
          {
            LODWORD(v951) = 0;
            v19 = *(v31 + 1172) == 2;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_72;
        }

        if (*(v31 + 1216) != 3)
        {
          v19 = 0;
          if (*(v31 + 1176) == 3)
          {
            v951 = 1;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_72;
          }

          HIDWORD(v951) = 0;
          goto LABEL_62;
        }

        v19 = 0;
        v951 = 1;
      }

      v37 = *(a1 + 748);
      if ((v37 & 0x20) == 0)
      {
        goto LABEL_94;
      }

LABEL_72:
      v38 = *(a1 + 100);
      if (v38 - *(a1 + 96) >= 0)
      {
        goto LABEL_94;
      }

      if ((v37 & 0x20400000) != 0x20000000)
      {
        v47 = *(a1 + 536);
        if (v47)
        {
          v48 = *(a1 + 552);
          if (v38 - v48 < 0)
          {
            while (1)
            {
              v64 = v47[1];
              v47 = *(v47 + 2);
              v65 = v38 - v64;
              if (!v47)
              {
                break;
              }

              if (v65 < 0)
              {
                goto LABEL_321;
              }

              v66 = *v47;
              if (v38 - *v47 < 0)
              {
                *v968 = v66;
                v952 = v47[1] - v66;
                goto LABEL_94;
              }
            }

            if ((v65 & 0x80000000) == 0)
            {
              v952 = 0;
              *v968 = v48;
              goto LABEL_94;
            }

LABEL_321:
            v952 = v64 - v38;
            goto LABEL_94;
          }
        }

LABEL_93:
        v952 = 0;
        goto LABEL_94;
      }

      v39 = *(a1 + 148);
      v40 = v39 - tcp_flight_size(a1);
      if (v40 < 1)
      {
        goto LABEL_94;
      }

      v41 = *v936;
      if (!*v936)
      {
        goto LABEL_93;
      }

      do
      {
        v42 = v41;
        v41 = *(v41 + 32);
      }

      while (v41);
      v952 = 0;
      while (1)
      {
        v43 = *(v42 + 4);
        v44 = *v968 - v43;
        if (*(v42 + 12))
        {
          if (v44 < 0 && *v968 - *v42 >= 0)
          {
            *v968 = v43;
          }

          goto LABEL_94;
        }

        if (v44 < 0)
        {
          v952 += tcp_seg_len(v42);
          v45 = *(v42 + 40);
          if (v45)
          {
            do
            {
LABEL_83:
              v46 = v45;
              v45 = *(v45 + 32);
            }

            while (v45);
            goto LABEL_84;
          }
        }

        else
        {
          v45 = *(v42 + 40);
          if (v45)
          {
            goto LABEL_83;
          }
        }

        v46 = *(v42 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v46 || *(v46 + 32) != v42)
        {
          break;
        }

LABEL_84:
        v42 = v46;
        if (v952 >= v40)
        {
          goto LABEL_94;
        }
      }

      while (1)
      {
        v46 = *(v42 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v46)
        {
          break;
        }

        v106 = v42 == *(v46 + 40);
        v42 = *(v42 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v106)
        {
          goto LABEL_84;
        }
      }

LABEL_94:
      v965 = v19;
      if (*(a1 + 144) >= *(a1 + 148))
      {
        v49 = *(a1 + 148);
      }

      else
      {
        v49 = *(a1 + 144);
      }

      v50 = *(a1 + 88);
      v51 = v49;
      if ((v50 & 0x80000) != 0)
      {
        v52 = *(sysctls + 48);
        if (v49 >= v52)
        {
          v53 = *(sysctls + 48);
        }

        else
        {
          v53 = v49;
        }

        if (v52 <= 0)
        {
          v51 = v49;
        }

        else
        {
          v51 = v53;
        }
      }

      v54 = 0;
      v55 = 0;
      v980 = *(a1 + 100) - *(a1 + 92);
      v56 = tcp_outflags[*(a1 + 12)];
      v57 = 1;
      if ((*(a1 + 748) & 0x20) == 0 || (v50 & 0x200000) == 0)
      {
        v962 = 0;
        log = 0;
        v941 = 0;
        v60 = 0;
        v61 = 0;
        goto LABEL_191;
      }

      v996 = v51;
      v58 = v49 - tcp_flight_size(a1);
      if (!((v58 > 0) | v943 & 1))
      {
        v58 = *(a1 + 200);
      }

      v59 = v58 & ~(v58 >> 31);
      if ((*(a1 + 748) & 0x20400020) == 0x20000020)
      {
        v55 = *(a1 + 1992);
        v51 = v996;
        if (v55)
        {
          while ((*(v55 + 12) & 7) != 2)
          {
            v55 = *(v55 + 16);
            if (!v55)
            {
              v54 = 0;
              goto LABEL_151;
            }
          }

          if (v59 >= *(a1 + 200))
          {
            v79 = *(a1 + 200);
          }

          else
          {
            v79 = v58 & ~(v58 >> 31);
          }

          v80 = tcp_seg_len(v55);
          v61 = v79;
          if (v80 <= v79)
          {
            v61 = tcp_seg_len(v55);
          }

          if (v59 < v61)
          {
            v61 = v59;
          }

          if (v61)
          {
            v980 = *v55 - *(a1 + 92);
            v81 = *(a1 + 1064);
            v51 = v996;
            v54 = 0;
            v962 = 0;
            v57 = 0;
            if (v81)
            {
              ++*(v81 + 616);
            }

            v943 = 1;
            log = 1;
            v941 = 1;
            v60 = 1;
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v962 = 0;
            log = 0;
            v941 = 0;
            v60 = 0;
            v943 = 1;
            v57 = 1;
            v51 = v996;
          }
        }

        else
        {
          v54 = 0;
          v962 = 0;
          log = 0;
          v941 = 0;
          v60 = 0;
          v61 = 0;
          v943 = 1;
        }

        goto LABEL_191;
      }

      v62 = *(a1 + 536);
      if (!v62)
      {
        v54 = 0;
        goto LABEL_127;
      }

      v54 = 0;
      while (2)
      {
        v63 = *(v62 + 8);
        if (v63 - *(v62 + 4) >= 0)
        {
          v54 += v63 - *v62;
LABEL_117:
          v62 = *(v62 + 16);
          if (!v62)
          {
            goto LABEL_127;
          }

          continue;
        }

        break;
      }

      if (v63 - *(a1 + 92) < 0)
      {
        goto LABEL_117;
      }

      v54 = v63 + v54 - *v62;
LABEL_127:
      v55 = *(a1 + 608);
      if (v55 && *(v55 + 8) - *(v55 + 4) >= 0)
      {
        while (1)
        {
          v55 = *(v55 + 16);
          if (!v55)
          {
            break;
          }

          if (*(v55 + 8) - *(v55 + 4) < 0)
          {
            *(a1 + 608) = v55;
            break;
          }
        }
      }

      v67 = *(a1 + 616);
      v68 = v54;
      if (v62 == v55)
      {
LABEL_140:
        if (v67 == v54)
        {
          goto LABEL_147;
        }

LABEL_141:
        v72 = *(*(a1 + 80) + 224);
        if (!v72 || (*(v72 + 776) & 2) == 0)
        {
          v73 = __nwlog_tcp_log();
          v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
          v54 = v68;
          if (v74)
          {
            v75 = (v72 + 556);
            *buf = 136446978;
            if (!v72)
            {
              v75 = &unk_188A285CF;
            }

            *&buf[4] = "tcp_sack_output";
            *&buf[12] = 2082;
            *&buf[14] = v75;
            *&buf[22] = 1024;
            *v1006 = v68;
            *&v1006[4] = 1024;
            *&v1006[6] = v67;
            _os_log_impl(&dword_1889BA000, v73, OS_LOG_TYPE_ERROR, "%{public}s %{public}s computed sack_bytes_retransmitted (%d) not the same as cached value (%d)", buf, 0x22u);
            v54 = v68;
          }
        }

        goto LABEL_147;
      }

      v69 = *(*(a1 + 80) + 224);
      if (!v69 || (*(v69 + 776) & 2) == 0)
      {
        v70 = __nwlog_tcp_log();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = (v69 + 556);
          *buf = 136446466;
          if (!v69)
          {
            v71 = &unk_188A285CF;
          }

          *&buf[4] = "tcp_sack_output";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          _os_log_impl(&dword_1889BA000, v70, OS_LOG_TYPE_ERROR, "%{public}s %{public}s computed sack hole not the same as cached value", buf, 0x16u);
        }

        v55 = v62;
        v54 = v68;
        goto LABEL_140;
      }

      v55 = v62;
      if (v67 != v54)
      {
        goto LABEL_141;
      }

LABEL_147:
      if (!v55)
      {
        v962 = 0;
        log = 0;
        v941 = 0;
        v60 = 0;
        v61 = 0;
        v943 = 1;
        v57 = 1;
        v4 = v967;
        v3 = v993;
        v51 = v996;
        goto LABEL_191;
      }

      v76 = *(a1 + 156);
      v77 = *(v55 + 4);
      v78 = *(v55 + 8);
      v4 = v967;
      v3 = v993;
      v51 = v996;
      if (v77 - v76 >= 1)
      {
        if (v78 - v76 >= 0)
        {
          v55 = 0;
LABEL_151:
          v962 = 0;
          log = 0;
          v941 = 0;
          v60 = 0;
          v61 = 0;
LABEL_185:
          v943 = 1;
          v57 = 1;
          goto LABEL_191;
        }

        v77 = *(a1 + 156);
      }

      v61 = v77 - v78;
      if (v59 < v61)
      {
        v61 = v59;
      }

      v962 = v55;
      if (!v61)
      {
        v55 = 0;
        log = 0;
        v941 = 0;
        v60 = 0;
        goto LABEL_185;
      }

      v980 = v78 - *(a1 + 92);
      v82 = *(a1 + 100);
      v83 = v82 - v78;
      v60 = v82 - *(a1 + 96) >= 0 || v83 > 0 || v61 > v952;
      v86 = *(a1 + 1064);
      if (v86)
      {
        v55 = 0;
        v57 = 0;
        LODWORD(v87) = *(a1 + 200);
        if (v61 >= v87)
        {
          v87 = v87;
        }

        else
        {
          v87 = v61;
        }

        v943 = 1;
        v88.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v88.i64[1] = v87;
        v86[36] = vaddq_s64(v86[36], v88);
      }

      else
      {
        v55 = 0;
        v57 = 0;
        v943 = 1;
      }

      log = 1;
      v941 = 1;
LABEL_191:
      v89 = *(a1 + 88);
      v90 = (v89 >> 11) & 1 | v56;
      v91 = *(a1 + 748);
      if ((v91 & 0x8000) != 0)
      {
        if (v51)
        {
          *(a1 + 36) = 0;
          *(a1 + 328) = 0;
          *(a1 + 234) = 0;
          *(a1 + 256) = 0;
        }

        else
        {
          if (v980 < *(v4 + 384))
          {
            v90 = v56 & 0xFE;
          }

          v51 = 1;
        }
      }

      v964 = v54;
      v957 = v57;
      if (v57)
      {
        v92 = (v89 >> 21) & 1;
        if ((v91 & 0x20400020) != 0x20000020)
        {
          LOBYTE(v92) = 0;
        }

        if (!v54 && (v92 & 1) == 0)
        {
          v93 = *(v4 + 384);
          if (v93 >= v51)
          {
            v93 = v51;
          }

          v61 = v93 - v980;
          goto LABEL_219;
        }

        v94 = v55;
        v95 = v28;
        v96 = v51;
        v97 = v60;
        v98 = *(a1 + 148);
        v99 = v98 - tcp_flight_size(a1);
        v100 = v99 & ~(v99 >> 31);
        v101 = *(v4 + 384);
        if (v101 >= *(a1 + 144))
        {
          v101 = *(a1 + 144);
        }

        v102 = v101 - v980;
        if (v102 >= v100)
        {
          v103 = v99 & ~(v99 >> 31);
        }

        else
        {
          v103 = v102;
        }

        if (v102 <= 0)
        {
          v61 = 0;
        }

        else
        {
          v61 = v103;
        }

        if (v61)
        {
          v104 = 1;
        }

        else
        {
          v104 = v99 < 1;
        }

        if (v104)
        {
          v54 = v964;
          v60 = v97;
          v51 = v96;
          v28 = v95;
          v55 = v94;
          goto LABEL_219;
        }

        v128 = *(a1 + 552);
        v129 = *(a1 + 156);
        v54 = v964;
        v60 = v97;
        v61 = 0;
        if (v128 - v129 >= 0 || (v130 = *(a1 + 748), (v130 & 0x80000) != 0))
        {
          v51 = v96;
          v28 = v95;
          v55 = v94;
        }

        else
        {
          v60 = v97;
          v51 = v96;
          v28 = v95;
          v55 = v94;
          if ((v130 & 0x20400020) != 0x20000020)
          {
            v61 = v129 - v128;
            if ((v129 - v128) >= *(a1 + 200))
            {
              v61 = *(a1 + 200);
            }

            if (v61 >= v100)
            {
              v61 = v100;
            }

            v934 = *(a1 + 100);
            v131 = v129 - v61;
            *(a1 + 100) = v129 - v61;
            if ((*(a1 + 88) & 0x10) != 0 && *(a1 + 96) == v129)
            {
              *v968 = --v131;
            }

            v60 = 0;
            v980 = v131 - *(a1 + 92);
            *(a1 + 748) = v130 | 0x80000;
            v939 = 1;
            goto LABEL_219;
          }
        }
      }

      else
      {
LABEL_219:
        if (v61 >= v952)
        {
          v105 = v952;
        }

        else
        {
          v105 = v61;
        }

        v106 = v61 <= 0 || v952 == 0;
        if (!v106)
        {
          v61 = v105;
        }
      }

      if ((v90 & 2) == 0 || (v107 = *(a1 + 100), v108 = *(a1 + 92), v107 - v108 < 1))
      {
        v111 = v61;
        goto LABEL_236;
      }

      v109 = *(a1 + 12);
      if (v109 != 3)
      {
        v90 &= ~2u;
        --v980;
        v111 = v61 + 1;
        if ((v61 & 0x80000000) != 0 || v109 != 2)
        {
          goto LABEL_236;
        }

        if (*(v3 + 2382))
        {
          goto LABEL_1717;
        }

        v697 = *(a1 + 88);
        if (*(a1 + 624))
        {
          v809 = *(a1 + 312);
          if (v54)
          {
            v810 = 1;
          }

          else
          {
            v810 = log;
          }

          *(a1 + 296) = *(a1 + 120);
          *(a1 + 88) = v697 & 0xFFFFFFFC;
          *(a1 + 32) = 0;
          *(a1 + 316) = 0;
          tcp_ip_output_send(v4, a1, v28, v809, v810);
          *(a1 + 624) = 0;
          *(a1 + 632) = v28;
          *(a1 + 640) = 0;
          *(a1 + 312) = 0;
          if (*(v3 + 2382))
          {
            goto LABEL_1717;
          }

          v697 = *(a1 + 88);
        }

        if ((v697 & 0x8000000) == 0)
        {
          goto LABEL_1717;
        }

        goto LABEL_1819;
      }

      v110 = *(a1 + 748);
      if ((v107 != v108 + 1 || (v110 & 0x400000) == 0) && (v110 & 0x400000) != 0)
      {
        v90 &= ~2u;
      }

      --v980;
      v111 = v61 + 1;
LABEL_236:
      if ((v90 & 2) != 0)
      {
        v112 = *(a1 + 748);
        if ((v112 & 0x400000) == 0)
        {
          v90 &= ~1u;
        }

        v111 &= v112 << 9 >> 31;
      }

      if ((v90 & 4) != 0)
      {
        v113 = 0;
      }

      else
      {
        v113 = v111;
      }

      if ((v90 & 2) == 0)
      {
        goto LABEL_277;
      }

      if (*(a1 + 12) > 2)
      {
        goto LABEL_277;
      }

      v114 = *(a1 + 748);
      if ((v114 & 0x400000) == 0)
      {
        goto LABEL_277;
      }

      if ((*(a1 + 88) & 8) != 0)
      {
        goto LABEL_276;
      }

      v115 = *(a1 + 80);
      v116 = *(v115 + 224);
      if ((v114 & 0x1000000) == 0)
      {
        v117 = v60;
        v926 = v28;
        v118 = v51;
        v119 = *(v115 + 224);
        v120 = (*(*(v115 + 2280) + 32))(v119);
        v116 = v119;
        v51 = v118;
        v28 = v926;
        v4 = v967;
        v60 = v117;
        v54 = v964;
        if ((v120 & 1) == 0)
        {
          *(a1 + 998) |= 0x800u;
          v132 = *(a1 + 1064);
          if (v132)
          {
            ++*(v132 + 1168);
          }

LABEL_276:
          v113 = 0;
          *(a1 + 748) &= ~0x400000u;
          goto LABEL_277;
        }
      }

      if (*(v116 + 370))
      {
        goto LABEL_277;
      }

      v979 = v116;
      v121 = v28;
      v122 = v51;
      v997 = v60;
      v123 = *(a1 + 88);
      v124 = *(a1 + 748);
      v125 = (*(*(*(a1 + 80) + 2280) + 48))(*(*(a1 + 80) + 224));
      if (!v125)
      {
        v113 = 0;
        v4 = v967;
        v3 = v993;
        v54 = v964;
        v60 = v997;
        v51 = v122;
        v28 = v121;
        goto LABEL_277;
      }

      if ((v123 & 0x20) != 0)
      {
        v126 = -8;
      }

      else
      {
        v126 = -4;
      }

      if ((v123 & 0x80) != 0)
      {
        v126 -= 12;
      }

      v127 = v126 - ((v124 >> 4) & 2) + 40;
      v4 = v967;
      v3 = v993;
      v54 = v964;
      v60 = v997;
      v51 = v122;
      v28 = v121;
      if (v127 < v125 || v979[96] > (*(a1 + 160) - 40))
      {
        goto LABEL_276;
      }

LABEL_277:
      if (*(a1 + 272) == 4 || v3[298] != -1)
      {
        v133 = *(a1 + 480);
        v134 = !v133 || v113 <= 0;
        v135 = !v134;
        if (v135 && v113 > v133)
        {
          v60 = 1;
          v113 = *(a1 + 480);
        }
      }

      if ((v90 & 2) == 0 && v113 <= 0)
      {
        if (v51)
        {
          v113 = 0;
          goto LABEL_305;
        }

        *(a1 + 28) = 0;
        *(a1 + 16) = 0;
        *(a1 + 234) = 0;
        *(a1 + 256) = 0;
        *(a1 + 100) = *(a1 + 92);
        if (*(a1 + 36))
        {
          v980 = 0;
          v113 = 0;
          goto LABEL_305;
        }

        v136 = *(a1 + 204);
        v137 = *(a1 + 212);
        v998 = v60;
        v927 = v28;
        if (*(a1 + 324) && !*(a1 + 328))
        {
          v139 = v51;
          v140 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
          v51 = v139;
          *(a1 + 328) = *(a1 + 324) + *(v140 + 308);
          v138 = *(a1 + 234);
        }

        else
        {
          v138 = 0;
        }

        v141 = v51;
        v142 = tcp_backoff[v138] * ((v137 + (v136 >> 2)) >> 1);
        *(a1 + 36) = v142;
        if (v142 >> 3 < 0x271)
        {
          v142 = 5000;
          goto LABEL_301;
        }

        if (v142 >= 0xEA61)
        {
          v142 = 60000;
LABEL_301:
          *(a1 + 36) = v142;
        }

        *(a1 + 36) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v142 - *(a1 + 64);
        v143 = *(a1 + 234);
        v980 = 0;
        v113 = 0;
        if (v143 <= 0xB)
        {
          *(a1 + 234) = v143 + 1;
        }

        v54 = v964;
        v60 = v998;
        v51 = v141;
        v28 = v927;
      }

LABEL_305:
      if ((*(v3 + 2375) & 0x50) == 0 && (*(a1 + 90) & 0x20) == 0)
      {
        v144 = *(v4 + 416);
        if ((v144 & 0xC00) == 0x400)
        {
          v145 = *(v4 + 388);
          if (5 * (*(a1 + 144) >> 2) >= v145)
          {
            v146 = *(v4 + 384);
            if (v146 >= 7 * (v145 >> 3) && v51 >= (v146 - *(a1 + 100) + *(a1 + 92)))
            {
              v147 = *(sysctls + 112) + v145;
              if (v147 >= *(sysctls + 116))
              {
                v147 = *(sysctls + 116);
              }

              if (v147 <= 0x71C71C)
              {
                *(v4 + 388) = v147;
                v148 = *(*(v4 + 432) + 24);
                if ((v144 & 4) != 0)
                {
                  if (v148)
                  {
                    v149 = v60;
                    all_stats = nw_protocol_tcp_get_all_stats();
                    v147 = *(v4 + 388);
                    if (all_stats)
                    {
                      *(all_stats + 88) = v147;
                    }

LABEL_328:
                    v54 = v964;
                    v60 = v149;
                  }
                }

                else if (v148)
                {
                  v149 = v60;
                  v150 = nw_protocol_tcp_get_all_stats();
                  v147 = *(v4 + 388);
                  if (v150)
                  {
                    *(v150 + 100) = v147;
                  }

                  goto LABEL_328;
                }

                if (*(v4 + 392) > v147)
                {
                  *(v4 + 392) = v147;
                }

                *(v4 + 420) = *(v4 + 388);
              }
            }
          }
        }
      }

      v152 = *(a1 + 200);
      if (v113 <= v152)
      {
        v153 = 0;
      }

      else if ((*(a1 + 91) & 0x10) != 0 && *(sysctls + 300) && !(*(a1 + 556) | v941 | v54) && !v3[291])
      {
        v60 = 0;
        v153 = 1;
      }

      else
      {
        v153 = 0;
        v60 = 1;
        v113 = *(a1 + 200);
      }

      v154 = *(a1 + 748);
      if (v113 < v152)
      {
        v152 = v113;
      }

      if ((v154 & 0x1000) != 0)
      {
        v153 = 0;
      }

      v966 = v153;
      v999 = v60;
      v155 = (v154 & 0x1000) == 0 && v60;
      v963 = v155;
      if ((v154 & 0x1000) != 0)
      {
        v113 = v152;
      }

      v940 = v962 + 2;
      if ((v154 & 0x20400020) == 0x20000020)
      {
        v156 = v55;
      }

      else
      {
        v156 = v962 + 2;
      }

      if (!log)
      {
        v156 = (a1 + 100);
      }

      if (*v156 + v113 - (*(a1 + 92) + *(v4 + 384)) >= 0)
      {
        v157 = v90;
      }

      else
      {
        v157 = v90 & 0xFFFFFFFE;
      }

      v158 = tcp_sbspace(a1);
      if (v158 < *(v4 + 468) >> 2 && v158 < *(a1 + 200))
      {
        v158 = 0;
      }

      v159 = sysctls;
      if (*(sysctls + 40) == 1 || (*(v4 + 369) & 0x40) != 0)
      {
        v160 = *(sysctls + 284);
        if (v160 && (v160 == 1 && (~*(a1 + 88) & 0x180) == 0 || *(a1 + 12) <= 3))
        {
          if (v158 >= 1)
          {
            if (off_1ED4BF6F8)
            {
              v161 = v158;
              v158 = off_1ED4BF6F8(a1);
              if (v161 < v158)
              {
                v158 = v161;
              }
            }
          }

          goto LABEL_392;
        }

        if (v158 < 1)
        {
          v158 = 0;
          goto LABEL_392;
        }

        if (*(sysctls + 120) != 1 || (~*(a1 + 88) & 0x180) != 0)
        {
          goto LABEL_385;
        }

        v162 = *(a1 + 748);
        if ((v162 & 0x100) != 0)
        {
          goto LABEL_386;
        }

        v163 = *(a1 + 80);
        v164 = *(v163 + 496);
        if (v164 && (v165 = *(v164 + 1632)) != 0 && (v166 = *(v165 + 40)) != 0 && (v167 = *(a1 + 244)) != 0)
        {
          if (v167 <= *(sysctls + 4) + v166)
          {
            goto LABEL_392;
          }

          v168 = *(v163 + 224);
          *(a1 + 748) = v162 | 0x100;
          if (!*(a1 + 1048))
          {
            v169 = v158;
            v170 = nw_tcp_access_globals(v168);
            v158 = v169;
            *(a1 + 1048) = *(v170 + 308);
            v159 = sysctls;
          }

          v171 = *(v168 + 500);
          v172 = *(v159 + 124);
          if (v171 > v172)
          {
            v173 = v171 >> 1;
            if (v173 > v172)
            {
              v172 = v173;
            }

            *(v168 + 500) = v172;
          }
        }

        else
        {
LABEL_385:
          if (*(sysctls + 108) >= *(a1 + 762))
          {
            goto LABEL_392;
          }
        }

LABEL_386:
        v174 = *(a1 + 120);
        v175 = v174 + *(a1 + 200) * *(v159 + 104);
        if (*(a1 + 124) - v175 >= 0)
        {
          v175 = *(a1 + 124);
        }

        v176 = v175 - v174;
        if (v176 >= v158)
        {
          v176 = v158;
        }

        v158 = v176 & ~(v176 >> 31);
      }

LABEL_392:
      v177 = *(a1 + 269);
      v178 = 0xFFFF << v177;
      if (v158 >= 0xFFFF << v177)
      {
        v179 = 0xFFFF << v177;
      }

      else
      {
        v179 = v158;
      }

      if ((*(v4 + 367) & 2) == 0 && v179 <= *(a1 + 124) - *(a1 + 120))
      {
        v179 = *(a1 + 124) - *(a1 + 120);
      }

      v180 = (v179 + ~(-1 << v177)) & (-1 << v177);
      v958 = v180;
      if (!v113)
      {
        goto LABEL_428;
      }

      v181 = *(a1 + 748);
      if ((v181 & 0x8000) != 0)
      {
        goto LABEL_449;
      }

      v183 = *(a1 + 96);
      v182 = *(a1 + 100);
      if (v182 - v183 < 0)
      {
        if ((~v181 & 0x20000020) == 0 && !(v181 & 0x400000 | v941) && v113 >= (v183 - v182))
        {
          v113 = v183 - v182;
        }

        goto LABEL_449;
      }

      if (log)
      {
        goto LABEL_449;
      }

      v184 = *(a1 + 12);
      if ((v181 & 0x400000) == 0 || v184 != 3)
      {
        if (v184 == 4 && (*(v3 + 593) & 0x50000000) != 0)
        {
          v185 = *(a1 + 1064);
          v180 = v958;
          if (v185)
          {
            ++*(v185 + 96);
          }

          goto LABEL_428;
        }

LABEL_415:
        if (v113 >= *(a1 + 200))
        {
          goto LABEL_449;
        }

        v186 = *(a1 + 88);
        if ((v186 & 0x10000) == 0)
        {
          if (v930 & 1 | ((v186 & 0x1000004) != 0))
          {
            if ((v186 & 0x1000) != 0)
            {
              goto LABEL_426;
            }

LABEL_425:
            if (v113 + v980 >= *(v4 + 384))
            {
              goto LABEL_449;
            }
          }

          else
          {
            v187 = *(a1 + 8);
            if (v187 >= 1 && (v186 & 0x1000) == 0 && (*(a1 + 748) & 0x6000) != 0x6000 && v187 < *(a1 + 322))
            {
              goto LABEL_425;
            }
          }
        }

LABEL_426:
        v188 = *(a1 + 260);
        v180 = v958;
        if (v188 && v113 >= v188 / 2)
        {
          goto LABEL_449;
        }

LABEL_428:
        if (v180 >= 1)
        {
          if (v180 < v178)
          {
            v178 = v180;
          }

          v189 = *(a1 + 120);
          v190 = *(a1 + 124) - v189;
          v191 = v178 - v190;
          if (v191 >= 2 * *(a1 + 200))
          {
            if (*(v4 + 464) < *(v4 + 472) && (*(a1 + 296) != v189 || ((v190 & ~(v190 >> 31)) + v191) >> v177 > ((v190 & ~(v190 >> 31)) >> v177)))
            {
              goto LABEL_449;
            }
          }

          else if ((*(a1 + 88) & 2) != 0 && !*(v4 + 464) && *(a1 + 296) != v189 && (*(a1 + 748) & 0x10) != 0)
          {
            goto LABEL_449;
          }

          if (*(v4 + 468) <= 4 * v191)
          {
            goto LABEL_449;
          }
        }

        v192 = *(a1 + 88);
        if (v192)
        {
          if (*(a1 + 320))
          {
            --*(a1 + 320);
          }

          goto LABEL_449;
        }

        if ((v157 & 6) != 0 || (v157 & 1) != 0 && ((v192 & 0x10) == 0 || *(a1 + 100) == *(a1 + 92)))
        {
          goto LABEL_449;
        }

        if ((*(a1 + 748) & 0x20) == 0 || *(a1 + 12) < 4 || *(a1 + 96) - *(a1 + 92) < 1 || *(a1 + 28) || *(a1 + 36))
        {
          if (*(v4 + 384) && !*(a1 + 28) && !*(a1 + 36))
          {
            *(a1 + 234) = 0;
            *(a1 + 256) = 0;
            tcp_setpersist(a1);
          }
        }

        else
        {
          tcp_set_rto(a1);
        }

        if (!*(v3 + 2382))
        {
          v873 = v964 ? 1 : log;
          tcp_ip_output(v4, a1, v28, *(a1 + 312), v873);
          *(a1 + 624) = 0;
          *(a1 + 632) = v28;
          *(a1 + 640) = 0;
          *(a1 + 312) = 0;
          if (!*(v3 + 2382))
          {
            v697 = *(a1 + 88);
            if ((v697 & 0x8000000) != 0)
            {
LABEL_1819:
              *(a1 + 88) = v697 & 0xF7FFFFFF;
              tcp_close(a1);
              return 0;
            }
          }
        }

LABEL_1717:
        tcp_check_timer_state(a1);
        return 0;
      }

      if ((*(a1 + 996) & 2) == 0 || v182 != *(a1 + 112) + 1)
      {
        goto LABEL_415;
      }

LABEL_449:
      if (v113 >= 1)
      {
        *(a1 + 88) = *(a1 + 88) & 0xFEFFFFFF | ((v113 >= *(a1 + 200)) << 24);
      }

      if ((*(a1 + 2096) & 2) != 0 && *(a1 + 12) == 4)
      {
        v193 = *(a1 + 112);
        if (*(a1 + 92) == v193 + 1 && *(a1 + 552) == v193)
        {
          if (*(a1 + 234))
          {
            v194 = *(a1 + 336);
            if ((v194 & 0x2000000) == 0)
            {
              *(a1 + 336) = v194 | 0x2000000;
            }
          }
        }
      }

      v195 = *(a1 + 88);
      if ((v157 & 2) == 0 || (v196 = *(a1 + 112), *(a1 + 100) = v196, *(a1 + 552) = v196, (v195 & 8) != 0))
      {
        v205 = 0;
      }

      else
      {
        __src[0] = 1026;
        v197 = *(a1 + 80);
        v198 = *(v197 + 2380);
        if ((v198 & 2) != 0)
        {
          v199 = -60;
        }

        else
        {
          v199 = -40;
        }

        if ((*(v197 + 2380) & 2) != 0)
        {
          v200 = tcp_rtlookup6(v197, 0);
          if (v200)
          {
            goto LABEL_465;
          }
        }

        else
        {
          v200 = tcp_rtlookup(v197, 0);
          if (v200)
          {
LABEL_465:
            v201 = *(v200 + 216);
            if (*(v201 + 1224) == 23 && *(sysctls + 48) >= 1 && (*(v201 + 1184) - 9601) >> 7 <= 0x39C)
            {
              *(a1 + 88) |= 0x80000u;
            }

            v202 = *(v200 + 1632);
            if (v202 && (v203 = *(v202 + 48)) != 0)
            {
              v204 = *(v201 + 1188);
              if (v203 < v204)
              {
                v204 = v203;
              }
            }

            else
            {
              v204 = *(v201 + 1188);
            }

            v222 = v204 + v199;
            goto LABEL_512;
          }
        }

        v221 = 148;
        if ((v198 & 2) == 0)
        {
          v221 = 144;
        }

        v222 = *(sysctls + v221);
LABEL_512:
        __src[1] = bswap32(v222) >> 16;
        v195 = *(a1 + 88);
        if ((v195 & 0x20) != 0 && ((v157 & 0x10) == 0 || (v195 & 0x40) != 0))
        {
          v1010 = bswap32(*(a1 + 270) | 0x1030300);
          v205 = 8;
          if (*(a1 + 2096))
          {
            goto LABEL_523;
          }
        }

        else
        {
          v205 = 4;
          if ((*(a1 + 2096) & 1) == 0)
          {
            goto LABEL_475;
          }

LABEL_523:
          if (*(a1 + 272) == 3)
          {
            if (*(sysctls + 20))
            {
              v228 = v205;
              v229 = v4;
              v230 = 1;
            }

            else if (*(sysctls + 280))
            {
              v228 = v205;
              v229 = v4;
              v230 = 2;
            }

            else
            {
              v228 = v205;
              v229 = v4;
              if (*(*(*v4 + 240) + 2096))
              {
                v230 = 4;
              }

              else
              {
                v230 = 3;
              }
            }

            tcp_set_new_cc(v229, v230);
            v195 = *(a1 + 88);
            v205 = v228;
          }
        }
      }

LABEL_475:
      v206 = 0;
      if ((v157 & 4) == 0 && (v195 & 0x88) == 0x80)
      {
        if ((v157 & 0x10) == 0 || (v195 & 0x100) != 0)
        {
          v207 = (__src + v205);
          v206 = v207 + 1;
          *v207 = 168296705;
          v207[2] = bswap32(*(a1 + 284));
          v205 += 12;
        }

        else
        {
          v206 = 0;
        }
      }

      numer_low = v157 & 2;
      v209 = *(a1 + 748);
      if ((v209 & 0x20) != 0 && (v157 & 2) != 0 && (v195 & 8) == 0 && ((v157 & 0x10) == 0 || (v195 & 0x200) != 0))
      {
        *(__src + v205) = 516;
        v205 += 2;
      }

      *type = v55;
      if ((v209 & 0x400000) != 0)
      {
        if ((v157 & 0x12) == 2 && (v195 & 8) == 0)
        {
          v212 = *(a1 + 80);
          v213 = *(v212 + 224);
          buf[0] = 38 - v205;
          if (*(v213 + 370))
          {
            if (v113 < 1 || (*(a1 + 998) |= 0x40u, (v223 = *(a1 + 1064)) == 0))
            {
              v218 = 0;
              goto LABEL_532;
            }

            v218 = 0;
            v220 = (v223 + 1120);
          }

          else
          {
            v214 = v206;
            v215 = v205;
            v216 = __src + v205;
            v217 = (*(*(v212 + 2280) + 40))();
            *v216 = 34;
            if (v217)
            {
              v218 = buf[0] + 2;
              v216[1] = buf[0] + 2;
              *(a1 + 996) |= 8u;
              if (v113 >= 1)
              {
                *(a1 + 998) |= 0x40u;
                v219 = *(a1 + 1064);
                v205 = v215;
                v206 = v214;
                if (v219)
                {
                  v220 = (v219 + 1120);
                  goto LABEL_528;
                }

LABEL_531:
                v55 = *type;
LABEL_532:
                v211 = 0;
                v205 += v218;
                v210 = v205 >> 8;
                if ((*(a1 + 748) & 0x20) == 0)
                {
                  goto LABEL_568;
                }

                goto LABEL_533;
              }

LABEL_530:
              v205 = v215;
              v206 = v214;
              goto LABEL_531;
            }

            v218 = 2;
            v216[1] = 2;
            *(a1 + 996) |= 4u;
            *(a1 + 998) |= 0x10u;
            v231 = *(a1 + 1064);
            if (!v231)
            {
              goto LABEL_530;
            }

            v220 = (v231 + 1104);
            v205 = v215;
            v206 = v214;
LABEL_528:
            v55 = *type;
          }

          ++*v220;
          goto LABEL_532;
        }

        if ((v157 & 0x12) == 0x12)
        {
          if (*(a1 + 996))
          {
            v224 = v206;
            v225 = v205;
            tcp_tfo_gen_cookie(*(a1 + 80), buf);
            v226 = __src + v225;
            *v226 = 2594;
            *(v226 + 2) = *buf;
            *(a1 + 998) |= 4u;
            v227 = *(a1 + 1064);
            if (v227)
            {
              ++*(v227 + 1072);
            }

            v210 = 0;
            LOBYTE(v205) = v225 + 10;
            v211 = 1;
            v206 = v224;
            v55 = *type;
            if ((*(a1 + 748) & 0x20) != 0)
            {
              goto LABEL_533;
            }
          }

          else
          {
            v210 = 0;
            v211 = 1;
            if ((v209 & 0x20) != 0)
            {
              goto LABEL_533;
            }
          }
        }

        else
        {
          v211 = 0;
          v210 = 0;
          if ((v209 & 0x20) != 0)
          {
            goto LABEL_533;
          }
        }

LABEL_568:
        v241 = *(a1 + 2096);
        if ((v241 & 2) != 0)
        {
          goto LABEL_549;
        }

LABEL_569:
        v106 = (v241 & 1) == 0;
        v254 = !v211;
        if (v106)
        {
          v254 = 1;
        }

        if (v254)
        {
          goto LABEL_596;
        }

        v242 = *(a1 + 336);
        if ((v242 & 0x200000) == 0 || (v242 & 0x2000000) != 0)
        {
          goto LABEL_596;
        }

LABEL_575:
        v255 = v205 | (v210 << 8);
        if ((40 - v205) <= 1u)
        {
          numer_low = v157;
          v256 = *(*(a1 + 80) + 224);
          if (v256 && (*(v256 + 776) & 2) != 0)
          {
            v157 = numer_low;
            if (v255 >= 0x29)
            {
              goto LABEL_580;
            }
          }

          else
          {
            v257 = v206;
            v258 = v205;
            if (__nwlog_is_datapath_logging_enabled())
            {
              v974 = __nwlog_tcp_log();
              if (os_log_type_enabled(v974, OS_LOG_TYPE_DEBUG))
              {
                v735 = (v256 + 556);
                *buf = 136446466;
                if (!v256)
                {
                  v735 = &unk_188A285CF;
                }

                *&buf[4] = "tcp_add_accecn_option";
                *&buf[12] = 2082;
                *&buf[14] = v735;
                _os_log_impl(&dword_1889BA000, v974, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s not enough space to add any AccECN option", buf, 0x16u);
              }
            }

            v157 = numer_low;
            LOBYTE(v205) = v258;
            v206 = v257;
            v55 = *type;
            if (v255 >= 0x29)
            {
              goto LABEL_580;
            }
          }

          goto LABEL_595;
        }

        v263 = *(a1 + 424);
        if ((v242 & 0x400000 | numer_low || (v242 & 0x1800000) != 0 || *(a1 + 92) == *(a1 + 112) + 1) && (!v211 || !*(a1 + 234)))
        {
          v264 = (__src + v255);
          if ((40 - v205) > 4u)
          {
            if ((40 - v205) > 7u)
            {
              v285 = *(a1 + 440) & 0xFFFFFF;
              if ((40 - v205) > 0xAu)
              {
                v385 = (v242 & 0x800000) == 0;
                if ((v242 & 0x800000) != 0)
                {
                  v386 = *(a1 + 424);
                }

                else
                {
                  v386 = *(a1 + 432);
                }

                if (v385)
                {
                  v387 = -1408565248;
                }

                else
                {
                  v387 = -1375010816;
                }

                if (!v385)
                {
                  v263 = *(a1 + 432);
                }

                *v264 = bswap32((v386 >> 8) | v387);
                v264[1] = bswap32(v285 | (v386 << 24));
                v264[2] = bswap32((v263 << 8) | 1);
                LOBYTE(v205) = v205 + 12;
                if (v255 >= 0x29)
                {
LABEL_580:
                  v259 = v206;
                  v948 = v205;
                  v260 = __nwlog_obj();
                  if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
                  {
                    v261 = 3;
                  }

                  else
                  {
                    v261 = 2;
                  }

                  *buf = 136446210;
                  *&buf[4] = "tcp_output";
                  LODWORD(v923) = 12;
                  v262 = _os_log_send_and_compose_impl(v261, 0, 0, 0, &dword_1889BA000, v260, 16, "%{public}s Assert (u_char *)lp - opt <= MAX_TCPOPTLEN failed", buf, v923);
                  v4 = v967;
                  if (!__nwlog_should_abort())
                  {
                    free(v262);
                    LOBYTE(v205) = v948;
                    v206 = v259;
                    v55 = *type;
                    goto LABEL_596;
                  }

                  goto LABEL_1893;
                }
              }

              else
              {
                v286 = (v242 & 0x800000) == 0;
                if ((v242 & 0x800000) != 0)
                {
                  v287 = *(a1 + 424);
                }

                else
                {
                  v287 = *(a1 + 432);
                }

                if (v286)
                {
                  v288 = -1408761856;
                }

                else
                {
                  v288 = -1375207424;
                }

                *v264 = bswap32((v287 >> 8) | v288);
                v264[1] = bswap32(v285 | (v287 << 24));
                LOBYTE(v205) = v205 + 8;
                if (v255 >= 0x29)
                {
                  goto LABEL_580;
                }
              }
            }

            else
            {
              v282 = (v242 & 0x800000) == 0;
              if ((v242 & 0x800000) != 0)
              {
                v283 = *(a1 + 424);
              }

              else
              {
                v283 = *(a1 + 432);
              }

              if (v282)
              {
                v284 = -1408958464;
              }

              else
              {
                v284 = -1375404032;
              }

              *v264 = bswap32((v283 >> 8) | v284);
              *(v264 + 2) = bswap32((v283 << 8) | 1) >> 16;
              LOBYTE(v205) = v205 + 6;
              if (v255 >= 0x29)
              {
                goto LABEL_580;
              }
            }

LABEL_595:
            v4 = v967;
            goto LABEL_596;
          }

          if (numer_low)
          {
            *v264 = 686;
            LOBYTE(v205) = v205 + 2;
            if (v255 >= 0x29)
            {
              goto LABEL_580;
            }

            goto LABEL_595;
          }
        }

        if (v255 >= 0x29)
        {
          goto LABEL_580;
        }

        goto LABEL_595;
      }

      v210 = 0;
      v211 = (~v157 & 0x12) == 0;
      if ((v209 & 0x20) == 0)
      {
        goto LABEL_568;
      }

LABEL_533:
      v232 = *(a1 + 88);
      if ((v232 & 8) != 0 || (v232 & 0x200) == 0 || *(a1 + 12) < 4)
      {
        goto LABEL_568;
      }

      v233 = *(a1 + 556);
      if (v233 <= 0)
      {
        if (!*v946)
        {
          v4 = v967;
          goto LABEL_568;
        }

        if (!*(a1 + 952))
        {
          goto LABEL_548;
        }
      }

      v234 = v205 | (v210 << 8);
      v235 = 38 - v234;
      if ((38 - v234) < 8)
      {
LABEL_548:
        v4 = v967;
        v241 = *(a1 + 2096);
        if ((v241 & 2) != 0)
        {
          goto LABEL_549;
        }

        goto LABEL_569;
      }

      v236 = v235 >> 3;
      if (v235 >= 0x18 && (*(a1 + 2096) & 2) != 0)
      {
        v237 = *(a1 + 336);
        v238 = (v237 & 0x1800000) != 0 && (v237 & 0x2000000) == 0;
        v236 -= v238;
      }

      v239 = *v946;
      LODWORD(v979) = v157;
      if (*v946)
      {
        v240 = *(a1 + 952) != 0;
      }

      else
      {
        v240 = 0;
      }

      v243 = __src + v234;
      v970 = *(a1 + 556);
      v244 = v240 + v233;
      if (v236 >= v244)
      {
        v245 = v244;
      }

      else
      {
        v245 = v236;
      }

      v246 = (2 - v205) & 3;
      if (((2 - v205) & 3) != 0)
      {
        v953 = v206;
        v247 = v205 | (v210 << 8);
        v248 = v245;
        v947 = *v946;
        memset(v243, 1, (2 - v205) & 3);
        v239 = v947;
        v245 = v248;
        LODWORD(v234) = v247;
        v206 = v953;
        v243 = __src + v247 + v246;
      }

      v249 = *(a1 + 1064);
      if (v249)
      {
        ++*(v249 + 600);
      }

      v250 = (8 * v245) | 2;
      *v243 = 5;
      v251 = (v243 + 2);
      v243[1] = (8 * v245) | 2;
      if (v239)
      {
        if (v245 >= 1)
        {
          v252 = *(a1 + 952);
          if (v252)
          {
            v253 = v245-- != 0;
            if ((v245 == 0 || !v253) && v970)
            {
              v245 = 1;
              goto LABEL_901;
            }

            *(v243 + 2) = bswap32(v239);
            *(v243 + 6) = bswap32(v252);
            if (v249)
            {
              ++*(v249 + 1008);
            }

            v251 = (v243 + 10);
            ++*(a1 + 1028);
          }
        }
      }

      if (!v245)
      {
        goto LABEL_909;
      }

LABEL_901:
      if (v970 < v245)
      {
        v950 = v245;
        v956 = v250;
        v758 = v246;
        v975 = v234;
        v4 = v206;
        v759 = __nwlog_obj();
        if (os_log_type_enabled(v759, OS_LOG_TYPE_ERROR))
        {
          v760 = 3;
        }

        else
        {
          v760 = 2;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_output";
        LODWORD(v923) = 12;
        v761 = _os_log_send_and_compose_impl(v760, 0, 0, 0, &dword_1889BA000, v759, 16, "%{public}s Assert nsack == 0 || tp->rcv_numsacks >= nsack failed", buf, v923);
        if (!__nwlog_should_abort())
        {
          free(v761);
          v206 = v4;
          v55 = *type;
          LODWORD(v234) = v975;
          v246 = v758;
          v250 = v956;
          v245 = v950;
          if (v950 >= 1)
          {
            goto LABEL_903;
          }

          goto LABEL_909;
        }

LABEL_1893:
        __break(1u);
LABEL_1894:
        *(a1 + 1064) = 0;
        v585 = 6;
LABEL_1895:
        v770 = v585;
        if ((*(v4 + 776) & 2) == 0)
        {
          v908 = __nwlog_tcp_log();
          if (os_log_type_enabled(v908, OS_LOG_TYPE_INFO))
          {
            v909 = strerror(v770);
            *buf = 136446722;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            *&buf[22] = 2080;
            *v1006 = v909;
            _os_log_impl(&dword_1889BA000, v908, OS_LOG_TYPE_INFO, "%{public}s %{public}s failed to finalize tcp checksum, %s", buf, 0x20u);
          }
        }

        v910 = *(v20 + 80);
        v771 = v962;
        if (v910)
        {
          v911 = *(v20 + 88);
          *(v20 + 80) = 0;
          *(v20 + 88) = 0;
          v910(v20, 0, v911);
          if (v770 == 6)
          {
LABEL_1900:
            v695 = 0;
            goto LABEL_1581;
          }

LABEL_1917:
          v695 = *(a1 + 640);
          v770 = 55;
          goto LABEL_1581;
        }

        v912 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        LODWORD(v923) = 12;
        v913 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v912, 16, "%{public}s called with null frame->finalizer", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault())
        {
          if (LOBYTE(info.numer) != 17)
          {
            if (v1004 == OS_LOG_TYPE_INFO)
            {
              v917 = __nw_create_backtrace_string();
              v918 = __nwlog_obj();
              v919 = info.numer;
              v920 = os_log_type_enabled(v918, info.numer);
              if (v917)
              {
                if (v920)
                {
                  *buf = 136446466;
                  *&buf[4] = "__nw_frame_finalize";
                  *&buf[12] = 2082;
                  *&buf[14] = v917;
                  _os_log_impl(&dword_1889BA000, v918, v919, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v917);
                goto LABEL_1914;
              }

              if (!v920)
              {
                goto LABEL_1914;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v916 = "%{public}s called with null frame->finalizer, no backtrace";
              v921 = v918;
              v922 = v919;
            }

            else
            {
              v914 = __nwlog_obj();
              v915 = info.numer;
              if (!os_log_type_enabled(v914, info.numer))
              {
                goto LABEL_1914;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v916 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
LABEL_1912:
              v921 = v914;
              v922 = v915;
            }

            _os_log_impl(&dword_1889BA000, v921, v922, v916, buf, 0xCu);
            goto LABEL_1914;
          }

          v914 = __nwlog_obj();
          v915 = info.numer;
          if (os_log_type_enabled(v914, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v916 = "%{public}s called with null frame->finalizer";
            goto LABEL_1912;
          }
        }

LABEL_1914:
        if (v913)
        {
          free(v913);
        }

        numer_low = a1 + 100;
        v771 = v962;
        if (v770 == 6)
        {
          goto LABEL_1900;
        }

        goto LABEL_1917;
      }

      if (v245 >= 1)
      {
LABEL_903:
        v388 = v245;
        if (v245 >= 8 && ((v389 = v929, v251 >= v929 + 8 * v388) || v929 >= &v251[v388]))
        {
          v390 = v388 & 0x7FFFFFF8;
          v398 = &v251[4];
          v399 = v390;
          do
          {
            v400 = vrev32q_s8(v389[1]);
            v401 = v389[2];
            v402 = v389[3];
            v398[-2] = vrev32q_s8(*v389);
            v398[-1] = v400;
            *v398 = vrev32q_s8(v401);
            v398[1] = vrev32q_s8(v402);
            v398 += 4;
            v389 += 4;
            v399 -= 8;
          }

          while (v399);
          if (v390 != v388)
          {
            v251 += v388 & 0x7FFFFFF8;
            goto LABEL_907;
          }
        }

        else
        {
          v390 = 0;
LABEL_907:
          v391 = v388 - v390;
          v392 = (a1 + 560 + 8 * v390);
          do
          {
            v393 = *v392++;
            *v251++ = vrev32_s8(v393);
            --v391;
          }

          while (v391);
        }
      }

LABEL_909:
      v205 = v246 + v234 + v250;
      v210 = v205 >> 8;
      v4 = v967;
      v157 = v979;
      v241 = *(a1 + 2096);
      if ((v241 & 2) == 0)
      {
        goto LABEL_569;
      }

LABEL_549:
      v242 = *(a1 + 336);
      if ((v242 & 0x2000000) == 0)
      {
        goto LABEL_575;
      }

LABEL_596:
      v265 = v205 | (v210 << 8);
      if (v265 <= 0x27)
      {
        v266 = v205 & 3;
        if ((v205 & 3) != 0)
        {
          v267 = 4 - v266;
          v268 = v205;
          v269 = v206;
          bzero(__src + v265, (4 - v266));
          v206 = v269;
          v55 = *type;
          LOBYTE(v205) = v268;
          v210 = 0;
          LOBYTE(v205) = v205 + v267;
        }
      }

      v270 = *(a1 + 2096);
      if ((v270 & 2) != 0 && *(a1 + 12) >= 4 && (*(a1 + 338) & 0x40) == 0)
      {
        v157 = v157 & 0xFFFFFE3F | ((*(a1 + 408) & 7u) << 6);
      }

      v271 = *(a1 + 336);
      v949 = v205;
      if ((v157 & 0x12) != 2)
      {
        if ((v157 & 0x12) == 0x12 && (v271 & 0x1000) != 0)
        {
          if ((v271 & 0x200002) != 0)
          {
            v272 = (v271 & 0x100000) != 0 && *(a1 + 234) < 2u;
            if ((v271 & 0x100001) != 0 && !v272)
            {
              v280 = *(a1 + 1064);
              if (v280)
              {
                ++*(v280 + 848);
                --*(v280 + 808);
                v270 = *(a1 + 2096);
              }

              v273 = v271 | 0x200;
              *(a1 + 336) = v271 | 0x200;
              if ((v270 & 1) == 0)
              {
                v273 = v271 & 0xFFFFFDF1 | 0x200;
                goto LABEL_645;
              }

              goto LABEL_646;
            }

            if ((*(a1 + 2096) & 1) != 0 && (v271 & 0x200000) != 0)
            {
              *(a1 + 408) = 0x500000005;
              *(a1 + 464) = 0;
              *(a1 + 440) = 0;
              if ((v271 & 0x10000) != 0)
              {
                *(a1 + 396) = 128;
                v157 = v157 | 0x80;
                v271 &= ~0x10000u;
                *(a1 + 336) = v271;
                v381 = *(a1 + 1064);
                if (v381)
                {
                  ++*(v381 + 816);
                }
              }

              else if ((v271 & 0x20000) != 0)
              {
                *(a1 + 396) = 192;
                v157 = v157 | 0xC0;
                v271 &= 0xFFFCFFFF;
                v397 = *(a1 + 1064);
                if (v397)
                {
                  ++*(v397 + 824);
                }
              }

              else if ((v271 & 0x40000) != 0)
              {
                *(a1 + 396) = 256;
                v157 = v157 | 0x100;
                v271 &= 0xFFF8FFFF;
                v413 = *(a1 + 1064);
                if (v413)
                {
                  ++*(v413 + 832);
                }
              }

              else
              {
                if ((v271 & 0x80000) == 0)
                {
                  if (*(a1 + 396))
                  {
                    v157 = v157 | *(a1 + 396);
                    goto LABEL_1530;
                  }

                  v955 = v206;
                  if ((*(v4 + 776) & 2) == 0)
                  {
                    v699 = __nwlog_tcp_log();
                    v700 = *(a1 + 336);
                    *buf = 136446722;
                    *&buf[4] = "tcp_output";
                    *&buf[12] = 2082;
                    *&buf[14] = v937;
                    *&buf[22] = 1024;
                    *v1006 = v700;
                    LODWORD(v923) = 28;
                    v701 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v699, 16, "%{public}s %{public}s ECN flags (0x%x) not set correctly", buf, v923);
                    LOBYTE(info.numer) = 16;
                    v1004 = OS_LOG_TYPE_DEFAULT;
                    v979 = v701;
                    if (!__nwlog_fault())
                    {
                      goto LABEL_1526;
                    }

                    if (LOBYTE(info.numer) != 17)
                    {
                      if (v1004 == OS_LOG_TYPE_INFO)
                      {
                        numer_low = __nw_create_backtrace_string();
                        v728 = __nwlog_tcp_log();
                        v729 = info.numer;
                        v973 = v728;
                        v730 = os_log_type_enabled(v728, info.numer);
                        if (numer_low)
                        {
                          if (v730)
                          {
                            v731 = *(a1 + 336);
                            *buf = 136446978;
                            *&buf[4] = "tcp_output";
                            *&buf[12] = 2082;
                            *&buf[14] = v937;
                            *&buf[22] = 1024;
                            *v1006 = v731;
                            *&v1006[4] = 2082;
                            *&v1006[6] = numer_low;
                            _os_log_impl(&dword_1889BA000, v973, v729, "%{public}s %{public}s ECN flags (0x%x) not set correctly, dumping backtrace:%{public}s", buf, 0x26u);
                          }

                          free(numer_low);
                          goto LABEL_1526;
                        }

                        if (!v730)
                        {
                          goto LABEL_1526;
                        }

                        v736 = *(a1 + 336);
                        *buf = 136446722;
                        *&buf[4] = "tcp_output";
                        *&buf[12] = 2082;
                        *&buf[14] = v937;
                        *&buf[22] = 1024;
                        *v1006 = v736;
                        v704 = v973;
                        v705 = v729;
                        v706 = "%{public}s %{public}s ECN flags (0x%x) not set correctly, no backtrace";
                      }

                      else
                      {
                        v732 = __nwlog_tcp_log();
                        numer_low = LOBYTE(info.numer);
                        if (!os_log_type_enabled(v732, info.numer))
                        {
                          goto LABEL_1526;
                        }

                        v733 = *(a1 + 336);
                        *buf = 136446722;
                        *&buf[4] = "tcp_output";
                        *&buf[12] = 2082;
                        *&buf[14] = v937;
                        *&buf[22] = 1024;
                        *v1006 = v733;
                        v704 = v732;
                        v705 = numer_low;
                        v706 = "%{public}s %{public}s ECN flags (0x%x) not set correctly, backtrace limit exceeded";
                      }

LABEL_1525:
                      _os_log_impl(&dword_1889BA000, v704, v705, v706, buf, 0x1Cu);
                      goto LABEL_1526;
                    }

                    v702 = __nwlog_tcp_log();
                    numer_low = LOBYTE(info.numer);
                    if (os_log_type_enabled(v702, info.numer))
                    {
                      v703 = *(a1 + 336);
                      *buf = 136446722;
                      *&buf[4] = "tcp_output";
                      *&buf[12] = 2082;
                      *&buf[14] = v937;
                      *&buf[22] = 1024;
                      *v1006 = v703;
                      v704 = v702;
                      v705 = numer_low;
                      v706 = "%{public}s %{public}s ECN flags (0x%x) not set correctly";
                      goto LABEL_1525;
                    }

LABEL_1526:
                    if (v979)
                    {
                      free(v979);
                    }

                    v271 = *(a1 + 336);
                  }

                  LOBYTE(v205) = v949;
                  v206 = v955;
                  goto LABEL_1530;
                }

                *(a1 + 396) = 384;
                v157 = v157 | 0x180;
                v271 &= 0xFFF0FFFF;
                v417 = *(a1 + 1064);
                if (v417)
                {
                  ++*(v417 + 840);
                }
              }

LABEL_1530:
              v273 = v271 | 0x100000;
              *(a1 + 336) = v271 | 0x100000;
              v737 = *(a1 + 2096);
              if (v737)
              {
                v273 = v271 | 0x100004;
                *(a1 + 336) = v271 | 0x100004;
                *(a1 + 2096) = v737 & 0xFD | (2 * ((~(v271 | 0x100004) & 0x300000) == 0));
              }
            }

            else if ((v271 & 2) != 0)
            {
              v157 = v157 | 0x40;
              v273 = v271 | 5;
              *(a1 + 336) = v271 | 5;
            }

            else
            {
              v273 = *(a1 + 336);
            }

            v738 = *(a1 + 1064);
            if (v738)
            {
              v738[50] = vaddq_s64(v738[50], vdupq_n_s64(1uLL));
            }

            goto LABEL_646;
          }

LABEL_611:
          v273 = *(a1 + 336);
          goto LABEL_646;
        }

LABEL_610:
        if ((*(a1 + 2096) & 2) == 0 || v157 != 16 || v113 || (v271 & 0x400000) == 0)
        {
          goto LABEL_611;
        }

        v274 = v157 & 0xFFFFFE10;
        if ((v271 & 0x10000) != 0)
        {
          v274 = v274 | 0x80;
        }

        else if ((v271 & 0x20000) != 0)
        {
          v274 = v274 | 0xC0;
          v271 &= 0xFFFCFFFF;
        }

        else if ((v271 & 0x40000) != 0)
        {
          v274 = v157 | 0x100;
          v271 &= 0xFFF8FFFF;
        }

        else if ((v271 & 0x80000) != 0)
        {
          v274 = v157 | 0x180;
          v271 &= 0xFFF0FFFF;
        }

        LOBYTE(v273) = v271;
        *(a1 + 336) = v271 & 0xFFBEFFFF;
        v157 = v274;
        goto LABEL_683;
      }

      if ((v271 & 0x1000) == 0)
      {
        goto LABEL_610;
      }

      v275 = (v271 & 0x100000) != 0 && *(a1 + 234) < 2u;
      if ((v271 & 0x100001) == 0 || v275)
      {
        if (*(a1 + 2096))
        {
          v277 = 0x100000;
        }

        else
        {
          v277 = 5;
        }

        if (*(a1 + 2096))
        {
          v278 = 448;
        }

        else
        {
          v278 = 192;
        }

        v279 = *(a1 + 1064);
        if (v279)
        {
          ++*(v279 + 768);
        }

        v157 = v157 | v278;
        v273 = v271 | v277 | 0x4000;
      }

      else
      {
        v276 = *(a1 + 1064);
        if (v276)
        {
          ++*(v276 + 792);
        }

        v273 = v271 & 0xFFFFFEFB | 0x100;
      }

LABEL_645:
      *(a1 + 336) = v273;
LABEL_646:
      if (v113 && (v273 & 8) != 0)
      {
        v281 = log;
        if (*(a1 + 100) - *(a1 + 96) < 0)
        {
          v281 = 1;
        }

        if ((v281 & 1) == 0)
        {
          v157 = v157 | 0x80;
          v273 &= ~8u;
          *(a1 + 336) = v273;
        }
      }

      else
      {
LABEL_683:
        if (!v113 && (v273 & 0x10) != 0)
        {
          v157 = v157 | 0x40;
          v289 = *(a1 + 1064);
          if (v289)
          {
            ++*(v289 + 872);
          }
        }
      }

      v290 = v205 | (v210 << 8);
      *v946 = 0;
      v291 = *(a1 + 160);
      if (v290 + v113 <= v291)
      {
        v295 = v113;
      }

      else
      {
        v157 = v157 & 0xFFFFFFFE;
        if (v966)
        {
          v292 = *(a1 + 684);
          if (!v292)
          {
            v292 = 0xFFFF;
          }

          v293 = v933 - v290 + v292 - 20;
          if (v113 <= v293)
          {
            v294 = v999;
            if ((*(a1 + 89) & 8) != 0)
            {
              v294 = 1;
            }

            v293 = v113;
          }

          else
          {
            v294 = 1;
          }

          v295 = v293 / (v291 - v290) * (v291 - v290);
          if (v293 == v295)
          {
            v296 = v294;
          }

          else
          {
            v296 = 1;
          }
        }

        else
        {
          v295 = v291 - v290;
          v296 = 1;
        }

        v963 = v296;
      }

      v999 = v295;
      *v971 = v290;
      if ((v157 & 2) != 0 || ((*(a1 + 2096) & 2) == 0 || (v273 & 4) == 0) && v993[298] == -1)
      {
        v954 = 0;
        v302 = *v961;
        if ((*v961 - *(a1 + 140)) >= 1)
        {
          goto LABEL_724;
        }

        v302 = *(a1 + 140);
        if (v206)
        {
LABEL_725:
          *v206 = bswap32(v302 + *(a1 + 288));
        }
      }

      else
      {
        v297 = v206;
        info = 0;
        v298 = mach_timebase_info(&info);
        if (v298)
        {
          v299 = v298;
          v300 = __nwlog_obj();
          numer_low = v157;
          if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "microuptime_ns";
            *&buf[12] = 1024;
            *&buf[14] = v299;
            _os_log_impl(&dword_1889BA000, v300, OS_LOG_TYPE_ERROR, "%{public}s mach_timebase_info returned %u", buf, 0x12u);
          }

          v301 = 0;
        }

        else
        {
          numer_low = v157;
          v301 = mach_absolute_time() * info.numer / info.denom;
        }

        v206 = v297;
        v303 = v999 & ~(v999 >> 31);
        v304 = *(a1 + 488);
        if (v304)
        {
          v305 = *(a1 + 484);
          if (v305 < *(a1 + 480))
          {
            *(a1 + 484) = v305 + v303;
            goto LABEL_718;
          }

          v338 = *(a1 + 472);
          if (v338)
          {
            v339 = 1000000000 * v305 / v338;
            if (v339 >= 0xFFFFFFFF)
            {
              v339 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v414 = tcp_cc_algo_list[*(a1 + 272)];
              v415 = *(a1 + 148);
              v416 = *(a1 + 204) >> 5;
              *buf = 136315906;
              *&buf[4] = "tcp_pacer_get_packet_interval";
              *&buf[12] = 2080;
              *&buf[14] = v414;
              *&buf[22] = 1024;
              *v1006 = v415;
              *&v1006[4] = 1024;
              *&v1006[6] = v416;
              _os_log_error_impl(&dword_1889BA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: pacer rate shouldn't be 0, CCA is %s (cwnd=%u, smoothed rtt=%u ms)", buf, 0x22u);
              v339 = 0;
              v304 = *(a1 + 488);
            }

            else
            {
              v339 = 0;
            }

            v206 = v297;
          }

          v55 = *type;
          v304 += v339;
          *(a1 + 488) = v304;
          *(a1 + 484) = v303;
          if (v301 > v304)
          {
            *(a1 + 488) = v301;
            v304 = v301;
          }
        }

        else
        {
          *(a1 + 488) = v301;
          *(a1 + 484) = v303;
          v304 = v301;
LABEL_718:
          v55 = *type;
        }

        if (v301 <= v304)
        {
          v306 = v304;
        }

        else
        {
          v306 = v301;
        }

        v954 = v306;
        v302 = *v961 + (v306 - v301) / 0xF4240u;
        v295 = v999;
        if ((v302 - *(a1 + 140)) <= 0)
        {
          v302 = *(a1 + 140);
          LODWORD(v157) = numer_low;
          LODWORD(v290) = *v971;
          if (v206)
          {
            goto LABEL_725;
          }
        }

        else
        {
          LODWORD(v157) = numer_low;
          LODWORD(v290) = *v971;
LABEL_724:
          *(a1 + 140) = v302;
          if (v206)
          {
            goto LABEL_725;
          }
        }
      }

      v307 = *(a1 + 748);
      if ((v307 & 8) != 0 && (v307 & 4) == 0)
      {
        v308 = *(a1 + 776);
        if (v308)
        {
          v309 = *(v4 + 384) - *(a1 + 96) + *(a1 + 92);
          if (v309 >= *(a1 + 148))
          {
            v309 = *(a1 + 148);
          }

          if (v309 >= *(a1 + 144))
          {
            v309 = *(a1 + 144);
          }

          if (v309 < *(v308 + 20))
          {
            v309 = 0;
          }

          *(v308 + 8) = v309;
          v310 = *(a1 + 776);
          v311 = v310[6];
          v312 = v310[2];
          if (v311)
          {
            if (v312 >= v311)
            {
              v312 = v310[6];
            }

            v310[2] = v312;
          }

          if (v312)
          {
            *(a1 + 748) |= 4u;
            *v310 = *(a1 + 96);
            v310[1] = *v961;
          }
        }
      }

      if (!*(v993 + 115))
      {
        v707 = __nwlog_obj();
        if (os_log_type_enabled(v707, OS_LOG_TYPE_ERROR))
        {
          v708 = 3;
        }

        else
        {
          v708 = 2;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_output";
        LODWORD(v923) = 12;
        v709 = _os_log_send_and_compose_impl(v708, 0, 0, 0, &dword_1889BA000, v707, 16, "%{public}s Assert inp->inp_flowhash != 0 failed", buf, v923);
        if (!__nwlog_should_abort())
        {
          free(v709);
          LODWORD(v290) = *v971;
          goto LABEL_742;
        }

        goto LABEL_1893;
      }

LABEL_742:
      LODWORD(v979) = v157;
      v315 = (v157 & 0xFFFFFFEF) == 0 && *(a1 + 269) != 0 && v113 < 1;
      if (!v315 || (v316 = *v961, (*(sysctls + 260) + *(a1 + 1892) - *v961) >= 0))
      {
        v317 = v290 + 20;
        if (v295)
        {
          goto LABEL_754;
        }

LABEL_785:
        if (*(a1 + 88))
        {
          v327 = *(a1 + 1064);
          if (v327)
          {
            ++*(v327 + 48);
          }
        }

        else
        {
          v326 = *(a1 + 1064);
          if ((v979 & 7) != 0)
          {
            if (v326)
            {
              ++*(v326 + 88);
            }
          }

          else if (v326)
          {
            ++*(v326 + 80);
          }
        }

        if (!v315 || (*(a1 + 751) & 2) == 0 || !*(a1 + 664))
        {
          goto LABEL_972;
        }

        v20 = **(*(a1 + 656) + 8);
        if (v20)
        {
          v367 = *(v20 + 52);
          goto LABEL_863;
        }

        v747 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_effective_length";
        LODWORD(v923) = 12;
        v748 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v747, 16, "%{public}s called with null frame", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1575;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v749 = __nwlog_obj();
          v750 = info.numer;
          if (os_log_type_enabled(v749, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_effective_length";
            v751 = v749;
            v752 = v750;
            v753 = "%{public}s called with null frame";
            goto LABEL_1574;
          }

          goto LABEL_1575;
        }

        if (v1004 != OS_LOG_TYPE_INFO)
        {
          v768 = __nwlog_obj();
          v769 = info.numer;
          if (!os_log_type_enabled(v768, info.numer))
          {
            goto LABEL_1575;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_effective_length";
          v751 = v768;
          v752 = v769;
          v753 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_1574:
          _os_log_impl(&dword_1889BA000, v751, v752, v753, buf, 0xCu);
          goto LABEL_1575;
        }

        v762 = __nw_create_backtrace_string();
        v763 = __nwlog_obj();
        v764 = info.numer;
        v765 = os_log_type_enabled(v763, info.numer);
        if (v762)
        {
          if (v765)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_effective_length";
            *&buf[12] = 2082;
            *&buf[14] = v762;
            _os_log_impl(&dword_1889BA000, v763, v764, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v762);
          goto LABEL_1575;
        }

        if (v765)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_effective_length";
          v751 = v763;
          v752 = v764;
          v753 = "%{public}s called with null frame, no backtrace";
          goto LABEL_1574;
        }

LABEL_1575:
        if (v748)
        {
          free(v748);
        }

        v367 = 0;
        v4 = v967;
        v55 = *type;
LABEL_863:
        if (v367 < *(v20 + 56) + v317)
        {
          goto LABEL_972;
        }

        v368 = *(a1 + 1888);
        if ((*(v20 + 204) & 0x40) == 0)
        {
          v369 = *(v20 + 192);
          goto LABEL_961;
        }

        v374 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_compression_generation_count";
        LODWORD(v923) = 12;
        v375 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v374, 16, "%{public}s Attempt to get generation-count on a chain-member", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_958;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v376 = __nwlog_obj();
          v377 = info.numer;
          if (os_log_type_enabled(v376, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_get_compression_generation_count";
            v378 = v376;
            v379 = v377;
            v380 = "%{public}s Attempt to get generation-count on a chain-member";
            goto LABEL_957;
          }

          goto LABEL_958;
        }

        if (v1004 != OS_LOG_TYPE_INFO)
        {
          v411 = __nwlog_obj();
          v412 = info.numer;
          if (!os_log_type_enabled(v411, info.numer))
          {
            goto LABEL_958;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_get_compression_generation_count";
          v378 = v411;
          v379 = v412;
          v380 = "%{public}s Attempt to get generation-count on a chain-member, backtrace limit exceeded";
LABEL_957:
          _os_log_impl(&dword_1889BA000, v378, v379, v380, buf, 0xCu);
          goto LABEL_958;
        }

        v394 = __nw_create_backtrace_string();
        v395 = __nwlog_obj();
        v981 = info.numer;
        v396 = os_log_type_enabled(v395, info.numer);
        if (v394)
        {
          if (v396)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_get_compression_generation_count";
            *&buf[12] = 2082;
            *&buf[14] = v394;
            _os_log_impl(&dword_1889BA000, v395, v981, "%{public}s Attempt to get generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v394);
          goto LABEL_958;
        }

        if (v396)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_get_compression_generation_count";
          v378 = v395;
          v379 = v981;
          v380 = "%{public}s Attempt to get generation-count on a chain-member, no backtrace";
          goto LABEL_957;
        }

LABEL_958:
        if (v375)
        {
          free(v375);
        }

        v369 = 0;
LABEL_961:
        v106 = v368 == v369;
        v4 = v967;
        if (!v106)
        {
LABEL_972:
          v423 = *(*(v4 + 24) + 32);
          *buf = 0;
          *&buf[8] = buf;
          if ((*(*(v423 + 24) + 88))())
          {
            v20 = *buf;
            if (*buf)
            {
              v424 = *(*buf + 40);
              if (v424 == buf)
              {
                v425 = (*buf + 32);
                v435 = *(*buf + 32);
                if (v435)
                {
                  *(v435 + 40) = v424;
                  v424 = *(v20 + 40);
                }

                *v424 = v435;
              }

              else
              {
                v426 = *(*buf + 16);
                v427 = *(*buf + 24);
                v425 = (*buf + 16);
                if (v426)
                {
                  *(v426 + 24) = v427;
                }

                *v427 = v426;
              }

              *v425 = 0;
              v425[1] = 0;
              goto LABEL_986;
            }

            v428 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_claim_internal";
            LODWORD(v923) = 12;
            v429 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v428, 16, "%{public}s called with null frame", buf, v923);
            LOBYTE(info.numer) = 16;
            v1004 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault())
            {
              if (LOBYTE(info.numer) != 17)
              {
                if (v1004 == OS_LOG_TYPE_INFO)
                {
                  v456 = __nw_create_backtrace_string();
                  v457 = __nwlog_obj();
                  v458 = info.numer;
                  v459 = os_log_type_enabled(v457, info.numer);
                  if (v456)
                  {
                    if (v459)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_frame_claim_internal";
                      *&buf[12] = 2082;
                      *&buf[14] = v456;
                      _os_log_impl(&dword_1889BA000, v457, v458, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v456);
                    v4 = v967;
                    goto LABEL_1015;
                  }

                  v4 = v967;
                  if (!v459)
                  {
                    goto LABEL_1015;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_claim_internal";
                  v432 = v457;
                  v433 = v458;
                  v434 = "%{public}s called with null frame, no backtrace";
                }

                else
                {
                  v460 = __nwlog_obj();
                  v461 = info.numer;
                  if (!os_log_type_enabled(v460, info.numer))
                  {
                    goto LABEL_1015;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_claim_internal";
                  v432 = v460;
                  v433 = v461;
                  v434 = "%{public}s called with null frame, backtrace limit exceeded";
                }

LABEL_1014:
                _os_log_impl(&dword_1889BA000, v432, v433, v434, buf, 0xCu);
                goto LABEL_1015;
              }

              v430 = __nwlog_obj();
              v431 = info.numer;
              if (os_log_type_enabled(v430, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_claim_internal";
                v432 = v430;
                v433 = v431;
                v434 = "%{public}s called with null frame";
                goto LABEL_1014;
              }
            }

LABEL_1015:
            if (v429)
            {
              free(v429);
            }

            v462 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_collapse";
            LODWORD(v924) = 12;
            v463 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v462, 16, "%{public}s called with null frame", buf, v924);
            LOBYTE(info.numer) = 16;
            v1004 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault())
            {
              if (LOBYTE(info.numer) != 17)
              {
                if (v1004 == OS_LOG_TYPE_INFO)
                {
                  v469 = __nw_create_backtrace_string();
                  v470 = __nwlog_obj();
                  v471 = info.numer;
                  v472 = os_log_type_enabled(v470, info.numer);
                  if (v469)
                  {
                    if (v472)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_frame_collapse";
                      *&buf[12] = 2082;
                      *&buf[14] = v469;
                      _os_log_impl(&dword_1889BA000, v470, v471, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v469);
                    v4 = v967;
                    goto LABEL_1031;
                  }

                  v4 = v967;
                  if (!v472)
                  {
                    goto LABEL_1031;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_collapse";
                  v466 = v470;
                  v467 = v471;
                  v468 = "%{public}s called with null frame, no backtrace";
                }

                else
                {
                  v473 = __nwlog_obj();
                  v474 = info.numer;
                  if (!os_log_type_enabled(v473, info.numer))
                  {
                    goto LABEL_1031;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_collapse";
                  v466 = v473;
                  v467 = v474;
                  v468 = "%{public}s called with null frame, backtrace limit exceeded";
                }

LABEL_1030:
                _os_log_impl(&dword_1889BA000, v466, v467, v468, buf, 0xCu);
                goto LABEL_1031;
              }

              v464 = __nwlog_obj();
              v465 = info.numer;
              if (os_log_type_enabled(v464, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_collapse";
                v466 = v464;
                v467 = v465;
                v468 = "%{public}s called with null frame";
                goto LABEL_1030;
              }
            }

LABEL_1031:
            if (v463)
            {
              free(v463);
            }

            v475 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_unclaim_internal";
            LODWORD(v925) = 12;
            v476 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v475, 16, "%{public}s called with null frame", buf, v925);
            LOBYTE(info.numer) = 16;
            v1004 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault())
            {
              if (LOBYTE(info.numer) != 17)
              {
                if (v1004 == OS_LOG_TYPE_INFO)
                {
                  v482 = __nw_create_backtrace_string();
                  v483 = __nwlog_obj();
                  v484 = info.numer;
                  v485 = os_log_type_enabled(v483, info.numer);
                  if (v482)
                  {
                    if (v485)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_frame_unclaim_internal";
                      *&buf[12] = 2082;
                      *&buf[14] = v482;
                      _os_log_impl(&dword_1889BA000, v483, v484, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v482);
                    v4 = v967;
                    goto LABEL_1047;
                  }

                  v4 = v967;
                  if (!v485)
                  {
                    goto LABEL_1047;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_unclaim_internal";
                  v479 = v483;
                  v480 = v484;
                  v481 = "%{public}s called with null frame, no backtrace";
                }

                else
                {
                  v486 = __nwlog_obj();
                  v487 = info.numer;
                  if (!os_log_type_enabled(v486, info.numer))
                  {
                    goto LABEL_1047;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_unclaim_internal";
                  v479 = v486;
                  v480 = v487;
                  v481 = "%{public}s called with null frame, backtrace limit exceeded";
                }

LABEL_1046:
                _os_log_impl(&dword_1889BA000, v479, v480, v481, buf, 0xCu);
                goto LABEL_1047;
              }

              v477 = __nwlog_obj();
              v478 = info.numer;
              if (os_log_type_enabled(v477, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_unclaim_internal";
                v479 = v477;
                v480 = v478;
                v481 = "%{public}s called with null frame";
                goto LABEL_1046;
              }
            }

LABEL_1047:
            if (v476)
            {
              free(v476);
            }

            v20 = 0;
            v488 = 1;
            v350 = v979;
            v351 = v999;
            if (!*(v4 + 24))
            {
LABEL_1079:
              if (v20)
              {
                goto LABEL_1080;
              }

              v351 = 0;
LABEL_1622:
              if ((*(v4 + 776) & 2) == 0)
              {
                v796 = __nwlog_tcp_log();
                if (os_log_type_enabled(v796, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446466;
                  *&buf[4] = "tcp_output";
                  *&buf[12] = 2082;
                  *&buf[14] = v937;
                  _os_log_impl(&dword_1889BA000, v796, OS_LOG_TYPE_INFO, "%{public}s %{public}s output buffer is no longer valid", buf, 0x16u);
                }
              }

              v999 = v351;
              LOBYTE(v979) = v350;
              if (v20)
              {
                v797 = *(v20 + 80);
                if (v797)
                {
                  v798 = *(v20 + 88);
                  *(v20 + 80) = 0;
                  *(v20 + 88) = 0;
                  v799 = v20;
                  goto LABEL_1663;
                }

                v880 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "__nw_frame_finalize";
                LODWORD(v923) = 12;
                v876 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v880, 16, "%{public}s called with null frame->finalizer", buf, v923);
                LOBYTE(info.numer) = 16;
                v1004 = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault())
                {
                  if (LOBYTE(info.numer) == 17)
                  {
                    v881 = __nwlog_obj();
                    v878 = v881;
                    v879 = info.numer;
                    goto LABEL_1841;
                  }

                  if (v1004 == OS_LOG_TYPE_INFO)
                  {
                    v885 = __nw_create_backtrace_string();
                    v889 = __nwlog_obj();
                    v887 = v889;
                    v888 = info.numer;
                    goto LABEL_1854;
                  }

                  v894 = __nwlog_obj();
                  v878 = v894;
                  v879 = info.numer;
LABEL_1865:
                  if (os_log_type_enabled(v894, v879))
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_frame_finalize";
                    v883 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
LABEL_1867:
                    v895 = v878;
                    v896 = v879;
LABEL_1868:
                    _os_log_impl(&dword_1889BA000, v895, v896, v883, buf, 0xCu);
                  }
                }

LABEL_1869:
                if (v876)
                {
                  free(v876);
                }

LABEL_1664:
                v770 = 6;
                goto LABEL_1665;
              }

              v875 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              LODWORD(v923) = 12;
              v876 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v875, 16, "%{public}s called with null frame", buf, v923);
              LOBYTE(info.numer) = 16;
              v1004 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault())
              {
                goto LABEL_1869;
              }

              if (LOBYTE(info.numer) == 17)
              {
                v877 = __nwlog_obj();
                v878 = v877;
                v879 = info.numer;
                goto LABEL_1836;
              }

              if (v1004 == OS_LOG_TYPE_INFO)
              {
                v885 = __nw_create_backtrace_string();
                v886 = __nwlog_obj();
                v887 = v886;
                v888 = info.numer;
                goto LABEL_1849;
              }

              v893 = __nwlog_obj();
              v878 = v893;
              v879 = info.numer;
LABEL_1862:
              if (os_log_type_enabled(v893, v879))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_finalize";
                v883 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_1867;
              }

              goto LABEL_1869;
            }

LABEL_1072:
            v501 = nw_protocol_tcp_get_all_stats();
            if (v501)
            {
              ++*(v501 + 32);
            }

            if (!*(v4 + 24))
            {
              goto LABEL_1079;
            }

            v502 = nw_protocol_tcp_get_all_stats();
            if (!v502)
            {
              goto LABEL_1079;
            }

            if (!v488)
            {
              v503 = *(v20 + 52);
LABEL_1078:
              *(v502 + 40) += v503;
              goto LABEL_1079;
            }

            v739 = v502;
            v740 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_effective_length";
            LODWORD(v923) = 12;
            v741 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v740, 16, "%{public}s called with null frame", buf, v923);
            LOBYTE(info.numer) = 16;
            v1004 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault())
            {
              goto LABEL_1569;
            }

            if (LOBYTE(info.numer) == 17)
            {
              v742 = __nwlog_obj();
              v743 = info.numer;
              if (os_log_type_enabled(v742, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_effective_length";
                v744 = v742;
                v745 = v743;
                v746 = "%{public}s called with null frame";
                goto LABEL_1568;
              }

              goto LABEL_1569;
            }

            if (v1004 == OS_LOG_TYPE_INFO)
            {
              v754 = __nw_create_backtrace_string();
              v755 = __nwlog_obj();
              v756 = info.numer;
              v757 = os_log_type_enabled(v755, info.numer);
              if (v754)
              {
                if (v757)
                {
                  *buf = 136446466;
                  *&buf[4] = "__nw_frame_effective_length";
                  *&buf[12] = 2082;
                  *&buf[14] = v754;
                  _os_log_impl(&dword_1889BA000, v755, v756, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v754);
                goto LABEL_1569;
              }

              if (!v757)
              {
LABEL_1569:
                if (v741)
                {
                  free(v741);
                }

                v503 = 0;
                v502 = v739;
                v4 = v967;
                v350 = v979;
                v351 = v999;
                v55 = *type;
                goto LABEL_1078;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_effective_length";
              v744 = v755;
              v745 = v756;
              v746 = "%{public}s called with null frame, no backtrace";
            }

            else
            {
              v766 = __nwlog_obj();
              v767 = info.numer;
              if (!os_log_type_enabled(v766, info.numer))
              {
                goto LABEL_1569;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_effective_length";
              v744 = v766;
              v745 = v767;
              v746 = "%{public}s called with null frame, backtrace limit exceeded";
            }

LABEL_1568:
            _os_log_impl(&dword_1889BA000, v744, v745, v746, buf, 0xCu);
            goto LABEL_1569;
          }

          v999 = 0;
LABEL_1770:
          v770 = 55;
          goto LABEL_1665;
        }

        v418 = *(v20 + 32);
        v419 = *(v20 + 40);
        v420 = (v418 + 40);
        if (!v418)
        {
          v420 = (a1 + 656);
        }

        *v420 = v419;
        *v419 = v418;
        *(v20 + 32) = 0;
        *(v20 + 40) = 0;
        --*(a1 + 664);
        if (*(v967 + 24))
        {
          v421 = nw_protocol_tcp_get_all_stats();
          if (v421)
          {
            --*(v421 + 32);
          }

          if (*(v967 + 24))
          {
            v422 = nw_protocol_tcp_get_all_stats();
            if (v422)
            {
              *(v422 + 40) -= *(v20 + 52);
            }
          }
        }

        ++*(a1 + 1896);
LABEL_986:
        if ((*(v20 + 204) & 0x80) != 0)
        {
          *(v20 + 196) -= v317;
        }

        v436 = *(v20 + 52);
        v437 = *(v20 + 56) + v317;
        v438 = *(v20 + 60);
        if (v437 <= v436 - v438)
        {
          *(v20 + 56) = v437;
          *(v20 + 60) = v438;
        }

        else
        {
          v439 = __nwlog_obj();
          v440 = os_log_type_enabled(v439, OS_LOG_TYPE_ERROR);
          v436 = *(v20 + 52);
          if (v440)
          {
            *buf = 136446978;
            *&buf[4] = "__nw_frame_claim_internal";
            *&buf[12] = 1024;
            *&buf[14] = v437;
            *&buf[18] = 1024;
            *&buf[20] = v436;
            *v1006 = 1024;
            *&v1006[2] = v438;
            _os_log_impl(&dword_1889BA000, v439, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
            v436 = *(v20 + 52);
          }
        }

        v351 = v999;
        if (v436)
        {
          v442 = *(v20 + 56);
          v441 = *(v20 + 60);
          v443 = (v436 - (v441 + v442));
          if (v436 != v441 + v442)
          {
            if (v441)
            {
              v444 = *(v20 + 112);
              if (v444)
              {
                memmove((v444 + v442), (v444 + v442 + v443), v441);
                v436 = *(v20 + 52);
              }
            }

            *(v20 + 52) = v436 - v443;
            if ((*(v20 + 204) & 0x80) != 0)
            {
              v445 = *(v20 + 196);
              v253 = v445 >= v443;
              v446 = v445 - v443;
              *(v20 + 196) = v446;
              if (!v253 || v446 >= 0x10000)
              {
                v447 = __nwlog_obj();
                v448 = *(v20 + 196);
                *buf = 136446978;
                *&buf[4] = "__nw_frame_collapse";
                *&buf[12] = 2082;
                *&buf[14] = "frame->aggregate_buffer_length";
                *&buf[22] = 2048;
                *v1006 = v443;
                *&v1006[8] = 2048;
                *&v1006[10] = v448;
                LODWORD(v923) = 42;
                v449 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v447, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v923);
                LOBYTE(info.numer) = 16;
                v1004 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault())
                {
                  goto LABEL_1061;
                }

                if (LOBYTE(info.numer) != 17)
                {
                  if (v1004 == OS_LOG_TYPE_INFO)
                  {
                    v489 = __nw_create_backtrace_string();
                    v490 = __nwlog_obj();
                    v982 = info.numer;
                    v491 = os_log_type_enabled(v490, info.numer);
                    if (v489)
                    {
                      if (v491)
                      {
                        v492 = *(v20 + 196);
                        *buf = 136447234;
                        *&buf[4] = "__nw_frame_collapse";
                        *&buf[12] = 2082;
                        *&buf[14] = "frame->aggregate_buffer_length";
                        *&buf[22] = 2048;
                        *v1006 = v443;
                        *&v1006[8] = 2048;
                        *&v1006[10] = v492;
                        *&v1006[18] = 2082;
                        *&v1006[20] = v489;
                        _os_log_impl(&dword_1889BA000, v490, v982, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v489);
                      goto LABEL_1061;
                    }

                    if (!v491)
                    {
                      goto LABEL_1061;
                    }

                    v496 = *(v20 + 196);
                    *buf = 136446978;
                    *&buf[4] = "__nw_frame_collapse";
                    *&buf[12] = 2082;
                    *&buf[14] = "frame->aggregate_buffer_length";
                    *&buf[22] = 2048;
                    *v1006 = v443;
                    *&v1006[8] = 2048;
                    *&v1006[10] = v496;
                    v453 = v490;
                    v454 = v982;
                    v455 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                  }

                  else
                  {
                    v493 = __nwlog_obj();
                    v494 = info.numer;
                    if (!os_log_type_enabled(v493, info.numer))
                    {
                      goto LABEL_1061;
                    }

                    v495 = *(v20 + 196);
                    *buf = 136446978;
                    *&buf[4] = "__nw_frame_collapse";
                    *&buf[12] = 2082;
                    *&buf[14] = "frame->aggregate_buffer_length";
                    *&buf[22] = 2048;
                    *v1006 = v443;
                    *&v1006[8] = 2048;
                    *&v1006[10] = v495;
                    v453 = v493;
                    v454 = v494;
                    v455 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                  }

LABEL_1060:
                  _os_log_impl(&dword_1889BA000, v453, v454, v455, buf, 0x2Au);
                  goto LABEL_1061;
                }

                v450 = __nwlog_obj();
                v451 = info.numer;
                if (os_log_type_enabled(v450, info.numer))
                {
                  v452 = *(v20 + 196);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_collapse";
                  *&buf[12] = 2082;
                  *&buf[14] = "frame->aggregate_buffer_length";
                  *&buf[22] = 2048;
                  *v1006 = v443;
                  *&v1006[8] = 2048;
                  *&v1006[10] = v452;
                  v453 = v450;
                  v454 = v451;
                  v455 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
                  goto LABEL_1060;
                }

LABEL_1061:
                if (v449)
                {
                  free(v449);
                }

                *(v20 + 196) = 0;
                v351 = v999;
              }
            }
          }
        }

        if ((*(v20 + 204) & 0x80) != 0)
        {
          *(v20 + 196) += v317;
        }

        v497 = *(v20 + 56);
        v253 = v497 >= v317;
        v498 = v497 - v317;
        v4 = v967;
        if (v253)
        {
          v488 = 0;
          *(v20 + 56) = v498;
        }

        else
        {
          v499 = __nwlog_obj();
          if (os_log_type_enabled(v499, OS_LOG_TYPE_ERROR))
          {
            v500 = *(v20 + 56);
            *buf = 136446722;
            *&buf[4] = "__nw_frame_unclaim_internal";
            *&buf[12] = 1024;
            *&buf[14] = v317;
            *&buf[18] = 1024;
            *&buf[20] = v500;
            _os_log_impl(&dword_1889BA000, v499, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
          }

          v488 = 0;
        }

        v350 = v979;
        if (!*(v967 + 24))
        {
          goto LABEL_1079;
        }

        goto LABEL_1072;
      }

      v324 = *(a1 + 1888);
      if ((v324 + 1) > 1)
      {
        v325 = v324 + 1;
      }

      else
      {
        v325 = 1;
      }

      *(a1 + 1888) = v325;
      *(a1 + 1892) = v316;
      v317 = v290 + 20;
      if (!v295)
      {
        goto LABEL_785;
      }

LABEL_754:
      if (!*(a1 + 688) && *(a1 + 100) == *(a1 + 92))
      {
        *(a1 + 688) = v295 + v290;
      }

      if (v295 != 1 || (*(a1 + 748) & 0x8000) == 0)
      {
        v320 = *(a1 + 1064);
        if (((*(a1 + 100) - *(a1 + 96) >= 0) & ~log) != 0)
        {
          if (v320)
          {
            v328.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v328.i64[1] = v295;
            *(v320 + 8) = vaddq_s64(*(v320 + 8), v328);
          }

          v329 = v993[31];
          ++*(v329 + 16);
          if (HIDWORD(v951))
          {
            ++*(v993[32] + 16);
          }

          if (v951)
          {
            ++*(v993[33] + 16);
          }

          if (v965)
          {
            ++*(v993[34] + 16);
          }

          *(v329 + 24) += v295;
          if (HIDWORD(v951))
          {
            *(v993[32] + 24) += v295;
          }

          if (v951)
          {
            *(v993[33] + 24) += v295;
          }

          if (v965)
          {
            *(v993[34] + 24) += v295;
          }

          v319 = (a1 + 360);
          if ((*(a1 + 336) & 4) == 0)
          {
            goto LABEL_807;
          }
        }

        else
        {
          if (v320)
          {
            v321.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v321.i64[1] = v295;
            *(v320 + 24) = vaddq_s64(*(v320 + 24), v321);
          }

          v322 = v993[31];
          ++*(v322 + 16);
          if (HIDWORD(v951))
          {
            ++*(v993[32] + 16);
          }

          if (v951)
          {
            ++*(v993[33] + 16);
          }

          if (v965)
          {
            ++*(v993[34] + 16);
          }

          *(v322 + 24) += v295;
          if (HIDWORD(v951))
          {
            *(v993[32] + 24) += v295;
          }

          if (v951)
          {
            *(v993[33] + 24) += v295;
          }

          if (v965)
          {
            *(v993[34] + 24) += v295;
          }

          *(a1 + 704) += v295;
          ++*(a1 + 712);
          if (*(v4 + 24))
          {
            v323 = nw_protocol_tcp_get_all_stats();
            if (v323)
            {
              *(v323 + 56) += v295;
            }
          }

          v319 = (a1 + 384);
          if ((*(a1 + 336) & 4) == 0)
          {
            goto LABEL_807;
          }
        }

LABEL_806:
        ++*v319;
        goto LABEL_807;
      }

      v318 = *(a1 + 1064);
      if (v318)
      {
        v319 = (v318 + 72);
        goto LABEL_806;
      }

LABEL_807:
      if (!*(v4 + 400) || v980 < 0)
      {
        if (!v20 || (*(v4 + 776) & 2) != 0)
        {
          goto LABEL_1742;
        }

        v779 = __nwlog_tcp_log();
        v780 = *(v4 + 384);
        v781 = tcpstates[*(a1 + 12)];
        if (*(v4 + 400))
        {
          v782 = "not";
        }

        else
        {
          v782 = "is";
        }

        *buf = 136447746;
        *&buf[4] = "tcp_output";
        *&buf[12] = 2082;
        *&buf[14] = v937;
        *&buf[22] = 2082;
        *v1006 = v782;
        *&v1006[8] = 1024;
        *&v1006[10] = v780;
        *&v1006[14] = 1024;
        *&v1006[16] = v980;
        *&v1006[20] = 1024;
        *&v1006[22] = v295;
        *&v1006[26] = 2082;
        v1007 = v781;
        LODWORD(v923) = 60;
        v783 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v779, 16, "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s]", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1740;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v784 = __nwlog_tcp_log();
          v785 = info.numer;
          if (os_log_type_enabled(v784, info.numer))
          {
            if (*(v967 + 400))
            {
              v786 = "not";
            }

            else
            {
              v786 = "is";
            }

            v787 = *(v967 + 384);
            v788 = tcpstates[*(a1 + 12)];
            *buf = 136447746;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            *&buf[22] = 2082;
            *v1006 = v786;
            *&v1006[8] = 1024;
            *&v1006[10] = v787;
            *&v1006[14] = 1024;
            *&v1006[16] = v980;
            *&v1006[20] = 1024;
            *&v1006[22] = v999;
            *&v1006[26] = 2082;
            v1007 = v788;
            v789 = "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s]";
            goto LABEL_1739;
          }

          goto LABEL_1740;
        }

        if (v1004 == OS_LOG_TYPE_INFO)
        {
          v804 = __nw_create_backtrace_string();
          v784 = __nwlog_tcp_log();
          v785 = info.numer;
          v805 = os_log_type_enabled(v784, info.numer);
          if (v804)
          {
            if (v805)
            {
              if (*(v967 + 400))
              {
                v806 = "not";
              }

              else
              {
                v806 = "is";
              }

              v807 = *(v967 + 384);
              v808 = tcpstates[*(a1 + 12)];
              *buf = 136448002;
              *&buf[4] = "tcp_output";
              *&buf[12] = 2082;
              *&buf[14] = v937;
              *&buf[22] = 2082;
              *v1006 = v806;
              *&v1006[8] = 1024;
              *&v1006[10] = v807;
              *&v1006[14] = 1024;
              *&v1006[16] = v980;
              *&v1006[20] = 1024;
              *&v1006[22] = v999;
              *&v1006[26] = 2082;
              v1007 = v808;
              LOWORD(v1008[0]) = 2082;
              *(v1008 + 2) = v804;
              _os_log_impl(&dword_1889BA000, v784, v785, "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s], dumping backtrace:%{public}s", buf, 0x46u);
            }

            free(v804);
            goto LABEL_1740;
          }

          if (!v805)
          {
LABEL_1740:
            if (v783)
            {
              free(v783);
            }

            goto LABEL_1742;
          }

          if (*(v967 + 400))
          {
            v838 = "not";
          }

          else
          {
            v838 = "is";
          }

          v839 = *(v967 + 384);
          v840 = tcpstates[*(a1 + 12)];
          *buf = 136447746;
          *&buf[4] = "tcp_output";
          *&buf[12] = 2082;
          *&buf[14] = v937;
          *&buf[22] = 2082;
          *v1006 = v838;
          *&v1006[8] = 1024;
          *&v1006[10] = v839;
          *&v1006[14] = 1024;
          *&v1006[16] = v980;
          *&v1006[20] = 1024;
          *&v1006[22] = v999;
          *&v1006[26] = 2082;
          v1007 = v840;
          v789 = "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s], no backtrace";
        }

        else
        {
          v784 = __nwlog_tcp_log();
          v785 = info.numer;
          if (!os_log_type_enabled(v784, info.numer))
          {
            goto LABEL_1740;
          }

          if (*(v967 + 400))
          {
            v835 = "not";
          }

          else
          {
            v835 = "is";
          }

          v836 = *(v967 + 384);
          v837 = tcpstates[*(a1 + 12)];
          *buf = 136447746;
          *&buf[4] = "tcp_output";
          *&buf[12] = 2082;
          *&buf[14] = v937;
          *&buf[22] = 2082;
          *v1006 = v835;
          *&v1006[8] = 1024;
          *&v1006[10] = v836;
          *&v1006[14] = 1024;
          *&v1006[16] = v980;
          *&v1006[20] = 1024;
          *&v1006[22] = v999;
          *&v1006[26] = 2082;
          v1007 = v837;
          v789 = "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s], backtrace limit exceeded";
        }

LABEL_1739:
        _os_log_impl(&dword_1889BA000, v784, v785, v789, buf, 0x3Cu);
        goto LABEL_1740;
      }

      v330 = *(*(v4 + 24) + 32);
      info = 0;
      p_info = &info;
      v331 = v295 + v317;
      if (!(*(*(v330 + 24) + 88))())
      {
        if ((*(v4 + 776) & 2) == 0)
        {
          v847 = __nwlog_tcp_log();
          if (os_log_type_enabled(v847, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            *&buf[22] = 1024;
            *v1006 = v295 + v317;
            *&v1006[4] = 1024;
            *&v1006[6] = v966;
            _os_log_impl(&dword_1889BA000, v847, OS_LOG_TYPE_INFO, "%{public}s %{public}s no output frames len %d, TSO %d", buf, 0x22u);
            v770 = 55;
            goto LABEL_1665;
          }
        }

        goto LABEL_1770;
      }

      v20 = info;
      if (!*&info)
      {
        v790 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_claim_internal";
        LODWORD(v923) = 12;
        v791 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v790, 16, "%{public}s called with null frame", buf, v923);
        v1004 = OS_LOG_TYPE_ERROR;
        v1003 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_1654;
        }

        if (v1004 != OS_LOG_TYPE_FAULT)
        {
          if (v1003 == 1)
          {
            v800 = __nw_create_backtrace_string();
            v801 = __nwlog_obj();
            v802 = v1004;
            v803 = os_log_type_enabled(v801, v1004);
            if (v800)
            {
              if (v803)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_frame_claim_internal";
                *&buf[12] = 2082;
                *&buf[14] = v800;
                _os_log_impl(&dword_1889BA000, v801, v802, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v800);
              goto LABEL_1654;
            }

            if (!v803)
            {
              goto LABEL_1654;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_claim_internal";
            v794 = "%{public}s called with null frame, no backtrace";
            v811 = v801;
            v812 = v802;
          }

          else
          {
            v792 = __nwlog_obj();
            v793 = v1004;
            if (!os_log_type_enabled(v792, v1004))
            {
              goto LABEL_1654;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_claim_internal";
            v794 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_1652:
            v811 = v792;
            v812 = v793;
          }

          _os_log_impl(&dword_1889BA000, v811, v812, v794, buf, 0xCu);
          goto LABEL_1654;
        }

        v792 = __nwlog_obj();
        v793 = v1004;
        if (os_log_type_enabled(v792, v1004))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_claim_internal";
          v794 = "%{public}s called with null frame";
          goto LABEL_1652;
        }

LABEL_1654:
        if (v791)
        {
          free(v791);
        }

        v795 = 0;
LABEL_1657:
        if ((*(v4 + 776) & 2) == 0)
        {
          v813 = __nwlog_tcp_log();
          if (os_log_type_enabled(v813, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            _os_log_impl(&dword_1889BA000, v813, OS_LOG_TYPE_INFO, "%{public}s %{public}s output buffer is no longer valid", buf, 0x16u);
          }
        }

        if (v20)
        {
          v797 = *(v795 + 80);
          if (v797)
          {
            v798 = *(v795 + 88);
            *(v795 + 80) = 0;
            *(v795 + 88) = 0;
            v799 = v795;
LABEL_1663:
            v797(v799, 0, v798);
            goto LABEL_1664;
          }

          v884 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          LODWORD(v923) = 12;
          v876 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v884, 16, "%{public}s called with null frame->finalizer", buf, v923);
          v1004 = OS_LOG_TYPE_ERROR;
          v1003 = 0;
          if (!__nwlog_fault())
          {
            goto LABEL_1869;
          }

          if (v1004 == OS_LOG_TYPE_FAULT)
          {
            v881 = __nwlog_obj();
            v878 = v881;
            v879 = v1004;
LABEL_1841:
            if (os_log_type_enabled(v881, v879))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v883 = "%{public}s called with null frame->finalizer";
              goto LABEL_1867;
            }

            goto LABEL_1869;
          }

          if (v1003 != 1)
          {
            v894 = __nwlog_obj();
            v878 = v894;
            v879 = v1004;
            goto LABEL_1865;
          }

          v885 = __nw_create_backtrace_string();
          v889 = __nwlog_obj();
          v887 = v889;
          v888 = v1004;
LABEL_1854:
          v892 = os_log_type_enabled(v889, v888);
          if (v885)
          {
            if (v892)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v885;
              v891 = "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s";
LABEL_1857:
              _os_log_impl(&dword_1889BA000, v887, v888, v891, buf, 0x16u);
            }

            goto LABEL_1858;
          }

          if (!v892)
          {
            goto LABEL_1869;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v883 = "%{public}s called with null frame->finalizer, no backtrace";
        }

        else
        {
          v882 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          LODWORD(v923) = 12;
          v876 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v882, 16, "%{public}s called with null frame", buf, v923);
          v1004 = OS_LOG_TYPE_ERROR;
          v1003 = 0;
          if (!__nwlog_fault())
          {
            goto LABEL_1869;
          }

          if (v1004 == OS_LOG_TYPE_FAULT)
          {
            v877 = __nwlog_obj();
            v878 = v877;
            v879 = v1004;
LABEL_1836:
            if (os_log_type_enabled(v877, v879))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v883 = "%{public}s called with null frame";
              goto LABEL_1867;
            }

            goto LABEL_1869;
          }

          if (v1003 != 1)
          {
            v893 = __nwlog_obj();
            v878 = v893;
            v879 = v1004;
            goto LABEL_1862;
          }

          v885 = __nw_create_backtrace_string();
          v886 = __nwlog_obj();
          v887 = v886;
          v888 = v1004;
LABEL_1849:
          v890 = os_log_type_enabled(v886, v888);
          if (v885)
          {
            if (v890)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v885;
              v891 = "%{public}s called with null frame, dumping backtrace:%{public}s";
              goto LABEL_1857;
            }

LABEL_1858:
            free(v885);
            goto LABEL_1869;
          }

          if (!v890)
          {
            goto LABEL_1869;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v883 = "%{public}s called with null frame, no backtrace";
        }

        v895 = v887;
        v896 = v888;
        goto LABEL_1868;
      }

      v332 = *(*&info + 40);
      if (v332 == &info)
      {
        v333 = (*&info + 32);
        v337 = *(*&info + 32);
        if (v337)
        {
          *(*&v337 + 40) = v332;
          v332 = *(v20 + 40);
        }

        else
        {
          p_info = *(*&info + 40);
        }

        *v332 = v337;
      }

      else
      {
        v334 = *(*&info + 16);
        v335 = *(*&info + 24);
        v333 = (*&info + 16);
        p_p_info = (*&v334 + 24);
        if (!*&v334)
        {
          p_p_info = &p_info;
        }

        *p_p_info = v335;
        *v335 = v334;
      }

      *v333 = 0;
      v333[1] = 0;
      if ((*(v20 + 204) & 0x80) != 0)
      {
        *(v20 + 196) -= v317;
      }

      v340 = *(v20 + 56) + v317;
      v341 = *(v20 + 60);
      if (v340 <= *(v20 + 52) - v341)
      {
        *(v20 + 56) = v340;
      }

      else
      {
        v342 = __nwlog_obj();
        if (os_log_type_enabled(v342, OS_LOG_TYPE_ERROR))
        {
          v343 = *(v20 + 52);
          *buf = 136446978;
          *&buf[4] = "__nw_frame_claim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v340;
          *&buf[18] = 1024;
          *&buf[20] = v343;
          *v1006 = 1024;
          *&v1006[2] = v341;
          _os_log_impl(&dword_1889BA000, v342, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
        }
      }

      v344 = *(v20 + 112);
      if (!v344 || (*(v20 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && (!(*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)) || (v344 = *(v20 + 112)) == 0))
      {
        v795 = v20;
        if ((*(v20 + 204) & 0x100) != 0)
        {
          v795 = v20;
          if (*MEMORY[0x1E6977EF8])
          {
            v795 = v20;
            if (((*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)) & 1) == 0)
            {
              *(a1 + 1064) = 0;
              v795 = v20;
            }
          }
        }

        goto LABEL_1657;
      }

      if (!nw_protocol_tcp_copy_frame_to_buffer(*(v4 + 400), v980, v999, (v344 + *(v20 + 56))))
      {
        if ((*(v4 + 776) & 2) == 0)
        {
          v848 = __nwlog_tcp_log();
          if (os_log_type_enabled(v848, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            _os_log_impl(&dword_1889BA000, v848, OS_LOG_TYPE_INFO, "%{public}s %{public}s copy from snd buffer to channel buffer failed", buf, 0x16u);
          }
        }

        v849 = *(v20 + 80);
        if (v849)
        {
          v850 = *(v20 + 88);
          *(v20 + 80) = 0;
          *(v20 + 88) = 0;
          v849(v20, 0, v850);
          v770 = 55;
          goto LABEL_1665;
        }

        v897 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        LODWORD(v923) = 12;
        v898 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v897, 16, "%{public}s called with null frame->finalizer", buf, v923);
        v1004 = OS_LOG_TYPE_ERROR;
        v1003 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_1889;
        }

        if (v1004 == OS_LOG_TYPE_FAULT)
        {
          v899 = __nwlog_obj();
          v900 = v1004;
          if (os_log_type_enabled(v899, v1004))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v901 = "%{public}s called with null frame->finalizer";
            goto LABEL_1887;
          }

          goto LABEL_1889;
        }

        if (v1003 == 1)
        {
          v902 = __nw_create_backtrace_string();
          v903 = __nwlog_obj();
          v904 = v1004;
          v905 = os_log_type_enabled(v903, v1004);
          if (v902)
          {
            if (v905)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v902;
              _os_log_impl(&dword_1889BA000, v903, v904, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v902);
            goto LABEL_1889;
          }

          if (!v905)
          {
LABEL_1889:
            if (v898)
            {
              free(v898);
            }

            goto LABEL_1770;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v901 = "%{public}s called with null frame->finalizer, no backtrace";
          v906 = v903;
          v907 = v904;
        }

        else
        {
          v899 = __nwlog_obj();
          v900 = v1004;
          if (!os_log_type_enabled(v899, v1004))
          {
            goto LABEL_1889;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v901 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
LABEL_1887:
          v906 = v899;
          v907 = v900;
        }

        _os_log_impl(&dword_1889BA000, v906, v907, v901, buf, 0xCu);
        goto LABEL_1889;
      }

      if ((*(v20 + 204) & 0x80) != 0)
      {
        *(v20 + 196) -= v999;
      }

      v345 = *(v20 + 52);
      v346 = *(v20 + 56) + v999;
      v347 = *(v20 + 60);
      if (v346 <= v345 - v347)
      {
        *(v20 + 56) = v346;
      }

      else
      {
        v348 = __nwlog_obj();
        v349 = os_log_type_enabled(v348, OS_LOG_TYPE_ERROR);
        v345 = *(v20 + 52);
        if (v349)
        {
          *buf = 136446978;
          *&buf[4] = "__nw_frame_claim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v346;
          *&buf[18] = 1024;
          *&buf[20] = v345;
          *v1006 = 1024;
          *&v1006[2] = v347;
          _os_log_impl(&dword_1889BA000, v348, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
          v345 = *(v20 + 52);
        }
      }

      v350 = v979;
      v351 = v999;
      if (v345)
      {
        v353 = *(v20 + 56);
        v352 = *(v20 + 60);
        v354 = (v345 - (v352 + v353));
        if (v345 != v352 + v353)
        {
          if (v352)
          {
            v355 = *(v20 + 112);
            if (v355)
            {
              memmove((v355 + v353), (v355 + v353 + v354), v352);
              v345 = *(v20 + 52);
            }
          }

          *(v20 + 52) = v345 - v354;
          if ((*(v20 + 204) & 0x80) != 0)
          {
            v356 = *(v20 + 196);
            v253 = v356 >= v354;
            v357 = v356 - v354;
            *(v20 + 196) = v357;
            if (!v253 || v357 >= 0x10000)
            {
              v358 = __nwlog_obj();
              v359 = *(v20 + 196);
              *buf = 136446978;
              *&buf[4] = "__nw_frame_collapse";
              *&buf[12] = 2082;
              *&buf[14] = "frame->aggregate_buffer_length";
              *&buf[22] = 2048;
              *v1006 = v354;
              *&v1006[8] = 2048;
              *&v1006[10] = v359;
              LODWORD(v923) = 42;
              v360 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v358, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v923);
              v1004 = OS_LOG_TYPE_ERROR;
              v1003 = 0;
              if (!__nwlog_fault())
              {
                goto LABEL_927;
              }

              if (v1004 != OS_LOG_TYPE_FAULT)
              {
                if (v1003 == 1)
                {
                  v370 = __nw_create_backtrace_string();
                  v371 = __nwlog_obj();
                  typea = v1004;
                  v372 = os_log_type_enabled(v371, v1004);
                  if (v370)
                  {
                    if (v372)
                    {
                      v373 = *(v20 + 196);
                      *buf = 136447234;
                      *&buf[4] = "__nw_frame_collapse";
                      *&buf[12] = 2082;
                      *&buf[14] = "frame->aggregate_buffer_length";
                      *&buf[22] = 2048;
                      *v1006 = v354;
                      *&v1006[8] = 2048;
                      *&v1006[10] = v373;
                      *&v1006[18] = 2082;
                      *&v1006[20] = v370;
                      _os_log_impl(&dword_1889BA000, v371, typea, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v370);
                    goto LABEL_927;
                  }

                  if (!v372)
                  {
                    goto LABEL_927;
                  }

                  v403 = *(v20 + 196);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_collapse";
                  *&buf[12] = 2082;
                  *&buf[14] = "frame->aggregate_buffer_length";
                  *&buf[22] = 2048;
                  *v1006 = v354;
                  *&v1006[8] = 2048;
                  *&v1006[10] = v403;
                  v364 = v371;
                  v365 = typea;
                  v366 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                }

                else
                {
                  v382 = __nwlog_obj();
                  v383 = v1004;
                  if (!os_log_type_enabled(v382, v1004))
                  {
                    goto LABEL_927;
                  }

                  v384 = *(v20 + 196);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_collapse";
                  *&buf[12] = 2082;
                  *&buf[14] = "frame->aggregate_buffer_length";
                  *&buf[22] = 2048;
                  *v1006 = v354;
                  *&v1006[8] = 2048;
                  *&v1006[10] = v384;
                  v364 = v382;
                  v365 = v383;
                  v366 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                }

LABEL_926:
                _os_log_impl(&dword_1889BA000, v364, v365, v366, buf, 0x2Au);
                goto LABEL_927;
              }

              v361 = __nwlog_obj();
              v362 = v1004;
              if (os_log_type_enabled(v361, v1004))
              {
                v363 = *(v20 + 196);
                *buf = 136446978;
                *&buf[4] = "__nw_frame_collapse";
                *&buf[12] = 2082;
                *&buf[14] = "frame->aggregate_buffer_length";
                *&buf[22] = 2048;
                *v1006 = v354;
                *&v1006[8] = 2048;
                *&v1006[10] = v363;
                v364 = v361;
                v365 = v362;
                v366 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
                goto LABEL_926;
              }

LABEL_927:
              if (v360)
              {
                free(v360);
              }

              *(v20 + 196) = 0;
              v350 = v979;
              v351 = v999;
            }
          }
        }
      }

      if ((*(v20 + 204) & 0x80) != 0)
      {
        *(v20 + 196) += v331;
      }

      v404 = *(v20 + 56);
      v253 = v404 >= v331;
      v405 = v404 - v331;
      v4 = v967;
      if (v253)
      {
        *(v20 + 56) = v405;
      }

      else
      {
        v406 = __nwlog_obj();
        if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
        {
          v407 = *(v20 + 56);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_unclaim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v331;
          *&buf[18] = 1024;
          *&buf[20] = v407;
          _os_log_impl(&dword_1889BA000, v406, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
        }
      }

      if (*(v967 + 24))
      {
        v408 = nw_protocol_tcp_get_all_stats();
        if (v408)
        {
          ++*(v408 + 32);
        }

        if (*(v967 + 24))
        {
          v409 = nw_protocol_tcp_get_all_stats();
          if (v409)
          {
            *(v409 + 40) += *(v20 + 52);
          }
        }
      }

      if (v351 + v980 == *(v967 + 384) && (v350 & 2) == 0)
      {
        v350 |= 8u;
      }

LABEL_1080:
      v504 = *(v20 + 112);
      if (!v504)
      {
LABEL_1596:
        if ((*(v20 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)) & 1) == 0)
        {
          *(a1 + 1064) = 0;
        }

        goto LABEL_1622;
      }

      v505 = *(v20 + 204);
      if ((v505 & 0x100) == 0 || !*MEMORY[0x1E6977EF8])
      {
        v507 = v504 + *(v20 + 56);
        LODWORD(v979) = v350;
        if (v315)
        {
          goto LABEL_1089;
        }

LABEL_1086:
        if ((v505 & 0x40) == 0)
        {
          *(v20 + 192) = 0;
          goto LABEL_1091;
        }

        v508 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_set_compression_generation_count";
        LODWORD(v923) = 12;
        v509 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v508, 16, "%{public}s Attempt to set generation-count on a chain-member", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        numer_low = a1 + 100;
        if (!__nwlog_fault())
        {
          goto LABEL_1114;
        }

        if (LOBYTE(info.numer) != 17)
        {
          if (v1004 == OS_LOG_TYPE_INFO)
          {
            v510 = __nw_create_backtrace_string();
            v511 = __nwlog_obj();
            v512 = info.numer;
            v513 = os_log_type_enabled(v511, info.numer);
            if (v510)
            {
              if (v513)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_frame_set_compression_generation_count";
                *&buf[12] = 2082;
                *&buf[14] = v510;
                _os_log_impl(&dword_1889BA000, v511, v512, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v510);
              if (!v509)
              {
                goto LABEL_1116;
              }

LABEL_1115:
              free(v509);
LABEL_1116:
              v4 = v967;
              v350 = v979;
              v351 = v999;
              goto LABEL_1117;
            }

LABEL_1111:
            if (v513)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_set_compression_generation_count";
              v517 = v511;
              v518 = v512;
              v519 = "%{public}s Attempt to set generation-count on a chain-member, no backtrace";
LABEL_1113:
              _os_log_impl(&dword_1889BA000, v517, v518, v519, buf, 0xCu);
            }

LABEL_1114:
            if (v509)
            {
              goto LABEL_1115;
            }

            goto LABEL_1116;
          }

LABEL_1109:
          v521 = __nwlog_obj();
          v522 = info.numer;
          if (os_log_type_enabled(v521, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_compression_generation_count";
            v517 = v521;
            v518 = v522;
            v519 = "%{public}s Attempt to set generation-count on a chain-member, backtrace limit exceeded";
            goto LABEL_1113;
          }

          goto LABEL_1114;
        }

LABEL_1102:
        v515 = __nwlog_obj();
        v516 = info.numer;
        if (os_log_type_enabled(v515, info.numer))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v517 = v515;
          v518 = v516;
          v519 = "%{public}s Attempt to set generation-count on a chain-member";
          goto LABEL_1113;
        }

        goto LABEL_1114;
      }

      if (!(*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)))
      {
        goto LABEL_1596;
      }

      v506 = *(v20 + 112);
      if (!v506)
      {
        goto LABEL_1596;
      }

      v507 = v506 + *(v20 + 56);
      v505 = *(v20 + 204);
      LODWORD(v979) = v350;
      if (!v315)
      {
        goto LABEL_1086;
      }

LABEL_1089:
      if ((v505 & 0x40) != 0)
      {
        v514 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_set_compression_generation_count";
        LODWORD(v923) = 12;
        v509 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v514, 16, "%{public}s Attempt to set generation-count on a chain-member", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        numer_low = a1 + 100;
        if (!__nwlog_fault())
        {
          goto LABEL_1114;
        }

        if (LOBYTE(info.numer) != 17)
        {
          if (v1004 == OS_LOG_TYPE_INFO)
          {
            v520 = __nw_create_backtrace_string();
            v511 = __nwlog_obj();
            v512 = info.numer;
            v513 = os_log_type_enabled(v511, info.numer);
            if (!v520)
            {
              goto LABEL_1111;
            }

            if (v513)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_set_compression_generation_count";
              *&buf[12] = 2082;
              *&buf[14] = v520;
              _os_log_impl(&dword_1889BA000, v511, v512, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v520);
            goto LABEL_1114;
          }

          goto LABEL_1109;
        }

        goto LABEL_1102;
      }

      *(v20 + 192) = *(a1 + 1888);
LABEL_1091:
      numer_low = a1 + 100;
LABEL_1117:
      v523 = *(a1 + 80);
      if ((*(v523 + 2380) & 2) != 0)
      {
        v524 = in6_pseudo();
      }

      else
      {
        v524 = in_pseudo();
      }

      *(v507 + 16) = v524;
      HIDWORD(v525) = *(v523 + 2368);
      LODWORD(v525) = HIDWORD(v525);
      *v507 = v525 >> 16;
      *(v507 + 4) = 0;
      *(v507 + 8) = 0;
      *(v507 + 12) = 80;
      *(v507 + 18) = 0;
      v526 = *(a1 + 336);
      if ((*(a1 + 2096) & 2) != 0)
      {
        v528 = *v971;
        if ((v350 & 2) == 0 && (v526 & 4) != 0)
        {
          v529 = 1;
          goto LABEL_1136;
        }
      }

      else
      {
        v527 = (v526 >> 2) & 1;
        if (!v351)
        {
          v527 = 0;
        }

        v528 = *v971;
        if (!v945)
        {
          if (!v527 || v350 & 2 | v941 || *(a1 + 100) - *(a1 + 96) < 0)
          {
            goto LABEL_1137;
          }

LABEL_1135:
          v529 = 2;
LABEL_1136:
          *(v20 + 186) = *(v20 + 186) & 0xFC | v529;
          goto LABEL_1137;
        }

        if (v527)
        {
          v530 = log;
          if (*(a1 + 100) - *(a1 + 96) < 0)
          {
            v530 = 1;
          }

          if ((v530 & 1) == 0)
          {
            goto LABEL_1135;
          }
        }
      }

LABEL_1137:
      if (v954)
      {
        *(v20 + 160) = v954;
      }

      if ((v350 & 1) != 0 && (*(a1 + 88) & 0x10) != 0)
      {
        v531 = *(a1 + 100);
        if (v531 == *(a1 + 96))
        {
          *numer_low = v531 - 1;
        }
      }

      if (!v957)
      {
        v533 = v351 - 1;
        if ((*(a1 + 748) & 0x20400020) == 0x20000020)
        {
          v534 = *v55;
          *(v507 + 4) = bswap32(*v55);
          tcp_rxtseg_insert(a1, v534, v533 + v534);
        }

        else
        {
          v535 = *v940;
          *(v507 + 4) = bswap32(*v940);
          tcp_rxtseg_insert(a1, v535, v533 + v535);
          *v940 += v351;
          v528 = *v971;
          *(a1 + 616) += v351;
        }

LABEL_1149:
        if (v351 >= 1)
        {
          goto LABEL_1150;
        }

        goto LABEL_1157;
      }

      if (v350 & 3 | v351)
      {
        v532 = *(a1 + 96);
        goto LABEL_1152;
      }

      v532 = *(a1 + 96);
      if (!*(a1 + 36))
      {
        *(v507 + 4) = bswap32(v532);
        goto LABEL_1157;
      }

LABEL_1152:
      v536 = *numer_low;
      *(v507 + 4) = bswap32(*numer_low);
      if ((v536 - v532) >= 0)
      {
        goto LABEL_1157;
      }

      if (v351 <= 1 || (*(a1 + 748) & 0x1020) != 0x20)
      {
        goto LABEL_1149;
      }

      tcp_rxtseg_insert(a1, v536, v351 + v536 - 1);
LABEL_1150:
      *(v20 + 186) |= 4u;
LABEL_1157:
      v537 = *(a1 + 120);
      *(v507 + 8) = bswap32(v537);
      *(a1 + 296) = v537;
      if (v528)
      {
        memmove((v507 + 20), __src, v528);
        v538 = ((4 * v949) & 0xF0) + 80;
      }

      else
      {
        v538 = *(v507 + 12);
      }

      *(v507 + 13) = v350;
      *(v507 + 12) = v538 & 0xF0 | BYTE1(v350) & 1;
      v539 = v958 >> *(a1 + 269);
      *(v507 + 14) = bswap32(v539) >> 16;
      *(a1 + 132) = v958;
      if (v958 >= 1)
      {
        v540 = *(a1 + 120) + v958;
        if (*(a1 + 124) - v540 < 0)
        {
          *(a1 + 124) = v540;
        }
      }

      *(a1 + 88) = *(a1 + 88) & 0xFFFBFFFF | ((v539 == 0) << 18);
      v541 = *(a1 + 12);
      if ((v541 - 7) < 2 || v541 != 4 && (v541 == 10 || (v350 & 4) != 0))
      {
        *(v20 + 186) |= 8u;
      }

      v542 = v993[62];
      if (v351 + *v971)
      {
        *(v507 + 16) = in_addword();
      }

      if (!v542 || (v543 = *(v542 + 216)) == 0)
      {
        if ((*(v4 + 776) & 2) != 0)
        {
          goto LABEL_1181;
        }

        v546 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v546, OS_LOG_TYPE_INFO))
        {
          goto LABEL_1181;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_output";
        *&buf[12] = 2082;
        *&buf[14] = v937;
        v547 = v546;
        v548 = OS_LOG_TYPE_INFO;
        v549 = "%{public}s %{public}s route is not usable: no checksum offload";
        v550 = 22;
        goto LABEL_1180;
      }

      v544 = *(v543 + 1192);
      if ((v544 & 0x1000) != 0)
      {
        if ((*(v20 + 204) & 0x100) == 0)
        {
          goto LABEL_1181;
        }

        v562 = *MEMORY[0x1E6977F00];
        if (!*MEMORY[0x1E6977F00])
        {
          goto LABEL_1181;
        }

        *(v20 + 203) |= 1u;
        v551 = 1;
        v563 = v562(v20, 1, v932, v931);
        if (!v563)
        {
          goto LABEL_1182;
        }

        if (v563 == 45)
        {
          goto LABEL_1181;
        }

        if ((*(v4 + 776) & 2) != 0)
        {
          goto LABEL_1181;
        }

        v564 = v563;
        v565 = __nwlog_tcp_log();
        v566 = os_log_type_enabled(v565, OS_LOG_TYPE_ERROR);
        v567 = v564;
        v351 = v999;
        if (!v566)
        {
          goto LABEL_1181;
        }

        *buf = 136446722;
        *&buf[4] = "tcp_output";
        *&buf[12] = 2082;
        *&buf[14] = v937;
        *&buf[22] = 1024;
        *v1006 = v567;
        v547 = v565;
        v548 = OS_LOG_TYPE_ERROR;
        v549 = "%{public}s %{public}s set internet checksum offload failed (err %d)";
        v550 = 28;
LABEL_1180:
        _os_log_impl(&dword_1889BA000, v547, v548, v549, buf, v550);
        goto LABEL_1181;
      }

      if (v945)
      {
        if ((((v544 & 0x20) == 0) & ~v966) != 0 || (*(v20 + 204) & 0x100) == 0)
        {
          goto LABEL_1181;
        }

        v545 = *(v20 + 203) | 0x20;
LABEL_1225:
        *(v20 + 203) = v545;
        v551 = 1;
      }

      else
      {
        if ((((v544 & 2) == 0) & ~v966) == 0 && (*(v20 + 204) & 0x100) != 0)
        {
          v545 = *(v20 + 203) | 8;
          goto LABEL_1225;
        }

LABEL_1181:
        v551 = 0;
      }

LABEL_1182:
      LOWORD(v552) = v966;
      if (v966)
      {
        v552 = *(a1 + 160) - *v971;
      }

      *(v20 + 198) = v552;
      *(v20 + 206) = *(v20 + 206) & 0xFB | (2 * v945);
      if ((*(a1 + 749) & 0x80) != 0 && *(a1 + 36))
      {
        v553 = ((v350 >> 1) & 1) + v351;
        if (v350)
        {
          v554 = *(a1 + 88);
          if ((v554 & 0x10) == 0)
          {
            ++v553;
            *(a1 + 88) = v554 | 0x10;
          }
        }

        v555 = *(a1 + 100);
        if (v555 + v553 - *(a1 + 96) >= 1)
        {
          *(a1 + 96) = v555 + v351;
          *(a1 + 168) = *(a1 + 140);
          if (*(v4 + 24))
          {
            v556 = nw_protocol_tcp_get_all_stats();
            if (v556)
            {
              *(v556 + 108) = *(a1 + 96) - *(a1 + 92);
            }
          }
        }

        goto LABEL_1262;
      }

      v557 = *numer_low;
      v558 = *numer_low;
      if ((v350 & 3) != 0)
      {
        v558 = *numer_low;
        if ((v350 & 2) != 0)
        {
          v558 = v557 + 1;
          *numer_low = v557 + 1;
        }

        if (v350)
        {
          v559 = *(a1 + 88);
          if ((v559 & 0x10) == 0)
          {
            *(a1 + 100) = ++v558;
            *(a1 + 88) = v559 | 0x10;
          }
        }
      }

      if ((log & 1) == 0)
      {
        if (v939)
        {
          v560 = v934;
          *(a1 + 100) = v934;
          v561 = *(a1 + 1064);
          if (v561)
          {
            ++*(v561 + 760);
            v560 = v934;
          }
        }

        else
        {
          v560 = v558 + v999;
          *numer_low = v560;
        }

        if (v560 - *(a1 + 96) < 1)
        {
          goto LABEL_1922;
        }

        *(a1 + 96) = v560;
        *(a1 + 168) = *(a1 + 140);
        if (*(v4 + 24))
        {
          v568 = nw_protocol_tcp_get_all_stats();
          if (v568)
          {
            *(v568 + 108) = *(a1 + 96) - *(a1 + 92);
          }
        }

        if (*(a1 + 176))
        {
LABEL_1922:
          if (*(a1 + 28))
          {
LABEL_1221:
            v939 = 0;
            goto LABEL_1242;
          }
        }

        else
        {
          *(a1 + 176) = *(a1 + 140);
          *(a1 + 180) = v557;
          v569 = *(a1 + 1064);
          if (v569)
          {
            ++*(v569 + 472);
          }

          *(a1 + 984) = *(a1 + 92);
          if (*(a1 + 28))
          {
            goto LABEL_1221;
          }
        }

        v939 = 0;
        v558 = *numer_low;
        v351 = v999;
        if (v350)
        {
          goto LABEL_1231;
        }

LABEL_1230:
        if (v558 != *(a1 + 92))
        {
          goto LABEL_1231;
        }

        goto LABEL_1243;
      }

      if (*(a1 + 28))
      {
        goto LABEL_1242;
      }

      v351 = v999;
      if (v558 == *(a1 + 96) && (v350 & 1) == 0)
      {
        goto LABEL_1230;
      }

LABEL_1231:
      if (*(a1 + 36))
      {
        *(a1 + 36) = 0;
        *(a1 + 328) = 0;
        *(a1 + 234) = 0;
        *(a1 + 256) = 0;
      }

      v570 = *(a1 + 80);
      if ((*(sysctls + 316) & 0x10) != 0 && (v571 = *(v570 + 448)) != 0)
      {
        v572 = *(a1 + 196);
        if ((*(v571 + 1202) & 0x80) != 0 && v572 < *(sysctls + 320))
        {
          atomic_fetch_add((v571 + 1152), 1uLL);
          v572 = *(sysctls + 320);
          *(a1 + 196) = v572;
          v570 = *(a1 + 80);
        }
      }

      else
      {
        v572 = *(a1 + 196);
      }

      v573 = nw_tcp_access_globals(*(v570 + 224));
      v574 = *(a1 + 140);
      if (v574 - *(v573 + 308) <= 0)
      {
        v574 = *(v573 + 308);
      }

      *(a1 + 28) = v572 - *(a1 + 64) + v574;
LABEL_1242:
      v351 = v999;
LABEL_1243:
      if (v351)
      {
        if (*(sysctls + 128))
        {
          if (*(a1 + 12) == 4)
          {
            v575 = *(a1 + 748);
            if ((v575 & 0x20) != 0 && (*(a1 + 90) & 0x20) == 0)
            {
              v576 = *(a1 + 100);
              if (v576 == *(a1 + 96))
              {
                v577 = v576 - *(a1 + 92);
                if (v577 >= 1 && (v575 & 0x3000) == 0 && !*(a1 + 234) && ((*(sysctls + 316) & 0x20) == 0 || (v578 = *(*(a1 + 80) + 448)) == 0 || (*(v578 + 1202) & 0x80) == 0))
                {
                  if (v577 <= *(a1 + 200))
                  {
                    v579 = 100;
                  }

                  else
                  {
                    v579 = 2;
                  }

                  if (*(a1 + 196) >= v579 + 2 * (*(a1 + 204) >> 5))
                  {
                    v580 = v579 + 2 * (*(a1 + 204) >> 5);
                  }

                  else
                  {
                    v580 = *(a1 + 196);
                  }

                  *(a1 + 16) = tcp_offset_from_latest_tx(a1, v580);
                }
              }
            }
          }
        }
      }

LABEL_1262:
      if (!v944 || (*(v944 + 1222) & 8) != 0)
      {
        v584 = v942;
        if (v942 > 499)
        {
          if (v942 <= 699)
          {
            if (v942 == 500)
            {
              v584 = 2621728;
              goto LABEL_1276;
            }

            if (v942 == 600)
            {
              v584 = 3146000;
              goto LABEL_1276;
            }
          }

          else
          {
            switch(v942)
            {
              case 700:
                v584 = 3670272;
                goto LABEL_1276;
              case 800:
                v584 = 4194688;
                goto LABEL_1276;
              case 900:
                v584 = 4718992;
                goto LABEL_1276;
            }
          }
        }

        else if (v942 <= 199)
        {
          if (!v942)
          {
            goto LABEL_1276;
          }

          if (v942 == 100)
          {
            v584 = 524432;
            goto LABEL_1276;
          }
        }

        else
        {
          switch(v942)
          {
            case 200:
              v584 = 1048704;
              goto LABEL_1276;
            case 300:
              v584 = 1572880;
              goto LABEL_1276;
            case 400:
              v584 = 2097184;
              goto LABEL_1276;
          }
        }

        v584 = 0;
      }

      else
      {
        if (!v351 && (*(v944 + 1196) & 0x200080) == 0x80)
        {
          v581 = *(*(a1 + 80) + 448);
          if (v581 && (*(v581 + 1202) & 0x80) != 0 && (*(sysctls + 316) & 2) != 0)
          {
            atomic_fetch_add((v944 + 1128), 1uLL);
          }

          else
          {
            v582 = *(v507 + 13);
            if (v582 == 16 && *(a1 + 92) == *(a1 + 96))
            {
              v583 = v938;
              if (!*(a1 + 28))
              {
                v583 = v938 | 2;
              }

              v938 = v583;
            }

            v938 |= (2 * v582) & 4;
          }
        }

        *buf = 0;
        set_frame_service_class(v20, v4, v942, v938, buf);
        v584 = *buf;
      }

LABEL_1276:
      *(v20 + 176) = v584;
      *(a1 + 640) += v351;
      ++*(a1 + 312);
      if (v551)
      {
        goto LABEL_1285;
      }

      v585 = in_finalize_cksum();
      if (v585)
      {
        if ((*(v20 + 204) & 0x100) != 0)
        {
          if (*MEMORY[0x1E6977EF8])
          {
            v586 = v585;
            v587 = (*MEMORY[0x1E6977EF8])(v20, *(v20 + 88));
            v585 = v586;
            if ((v587 & 1) == 0)
            {
              goto LABEL_1894;
            }
          }
        }
      }

      v588 = *(v20 + 52);
      if (v588)
      {
        v589 = (v588 - (*(v20 + 56) + *(v20 + 60)));
        v590 = *(a1 + 1064);
        if (v590)
        {
          goto LABEL_1283;
        }
      }

      else
      {
        v589 = 0;
        v590 = *(a1 + 1064);
        if (v590)
        {
LABEL_1283:
          v591.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v591.i64[1] = v589;
          *(v590 + v935) = vaddq_s64(*(v590 + v935), v591);
        }
      }

      if (v585)
      {
        goto LABEL_1895;
      }

LABEL_1285:
      if ((*(v507 + 13) & 0x24) != 0)
      {
        if ((*(v4 + 776) & 2) == 0)
        {
          v710 = __nwlog_tcp_log();
          if (os_log_type_enabled(v710, OS_LOG_TYPE_ERROR))
          {
            v711 = *(v507 + 13);
            v712 = bswap32(*(v507 + 4));
            v713 = bswap32(*(v507 + 8));
            v714 = bswap32(*(v507 + 14));
            v715 = *(a1 + 12);
            v716 = *(a1 + 120);
            v717 = *(a1 + 92);
            *buf = 136448258;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v937;
            *&buf[22] = 1024;
            *v1006 = v711;
            *&v1006[4] = 1024;
            *&v1006[6] = v712;
            *&v1006[10] = 1024;
            *&v1006[12] = v713;
            *&v1006[16] = 1024;
            *&v1006[18] = HIWORD(v714);
            *&v1006[22] = 1024;
            *&v1006[24] = v715;
            LOWORD(v1007) = 1024;
            *(&v1007 + 2) = v716;
            HIWORD(v1007) = 1024;
            v1008[0] = v717;
            v718 = v710;
            v719 = OS_LOG_TYPE_ERROR;
            goto LABEL_1507;
          }
        }
      }

      else if ((*(v507 + 13) & 3) != 0 && (*(v4 + 776) & 2) == 0)
      {
        v720 = __nwlog_tcp_log();
        if (os_log_type_enabled(v720, OS_LOG_TYPE_DEFAULT))
        {
          v721 = *(v507 + 13);
          v722 = bswap32(*(v507 + 4));
          v723 = bswap32(*(v507 + 8));
          v724 = bswap32(*(v507 + 14));
          v725 = *(a1 + 12);
          v726 = *(a1 + 120);
          v727 = *(a1 + 92);
          *buf = 136448258;
          *&buf[4] = "tcp_output";
          *&buf[12] = 2082;
          *&buf[14] = v937;
          *&buf[22] = 1024;
          *v1006 = v721;
          *&v1006[4] = 1024;
          *&v1006[6] = v722;
          *&v1006[10] = 1024;
          *&v1006[12] = v723;
          *&v1006[16] = 1024;
          *&v1006[18] = HIWORD(v724);
          *&v1006[22] = 1024;
          *&v1006[24] = v725;
          LOWORD(v1007) = 1024;
          *(&v1007 + 2) = v726;
          HIWORD(v1007) = 1024;
          v1008[0] = v727;
          v718 = v720;
          v719 = OS_LOG_TYPE_DEFAULT;
LABEL_1507:
          _os_log_impl(&dword_1889BA000, v718, v719, "%{public}s %{public}s flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, 0x40u);
        }
      }

      tcp_log_packet(a1, v507, v999, 0, *(v20 + 186) & 3);
      *(v20 + 32) = 0;
      v592 = *(a1 + 632);
      *(v20 + 40) = v592;
      *v592 = v20;
      *(a1 + 632) = v20 + 32;
      v593 = *(a1 + 748);
      v594 = v964;
      if ((~v593 & 0x20000020) != 0 || !v999 || (v593 & 0x400000) != 0)
      {
        goto LABEL_1435;
      }

      v595 = *(v20 + 186);
      if ((v593 & 0x1000) != 0)
      {
        v596 = (2 * v595) & 8;
      }

      else
      {
        v596 = (v595 << 29 >> 31) & 0xC;
      }

      v597 = bswap32(*(v507 + 4));
      v598 = v597 + v999;
      v599 = *(a1 + 140);
      if (v55)
      {
        v600 = *(v55 + 12) | v596;
        if (*(v55 + 4) == v598)
        {
          if (*v55 != v597)
          {
            v983 = *(a1 + 140);
            v601 = __nwlog_obj();
            v602 = *v55;
            *buf = 136446722;
            *&buf[4] = "tcp_seg_sent_insert";
            *&buf[12] = 1024;
            *&buf[14] = v602;
            *&buf[18] = 1024;
            *&buf[20] = v597;
            LODWORD(v923) = 24;
            v603 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v601, 16, "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u)", buf, v923);
            LOBYTE(info.numer) = 16;
            v1004 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault())
            {
              goto LABEL_1423;
            }

            if (LOBYTE(info.numer) != 17)
            {
              if (v1004 == OS_LOG_TYPE_INFO)
              {
                v639 = __nw_create_backtrace_string();
                v640 = __nwlog_obj();
                v972 = info.numer;
                v641 = os_log_type_enabled(v640, info.numer);
                if (v639)
                {
                  if (v641)
                  {
                    v642 = *v55;
                    *buf = 136446978;
                    *&buf[4] = "tcp_seg_sent_insert";
                    *&buf[12] = 1024;
                    *&buf[14] = v642;
                    *&buf[18] = 1024;
                    *&buf[20] = v597;
                    *v1006 = 2082;
                    *&v1006[2] = v639;
                    _os_log_impl(&dword_1889BA000, v640, v972, "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u), dumping backtrace:%{public}s", buf, 0x22u);
                  }

                  free(v639);
                  goto LABEL_1423;
                }

                if (!v641)
                {
                  goto LABEL_1423;
                }

                v668 = *v55;
                *buf = 136446722;
                *&buf[4] = "tcp_seg_sent_insert";
                *&buf[12] = 1024;
                *&buf[14] = v668;
                *&buf[18] = 1024;
                *&buf[20] = v597;
                v607 = v640;
                v608 = v972;
                v609 = "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u), no backtrace";
              }

              else
              {
                v663 = __nwlog_obj();
                v664 = info.numer;
                if (!os_log_type_enabled(v663, info.numer))
                {
                  goto LABEL_1423;
                }

                v665 = *v55;
                *buf = 136446722;
                *&buf[4] = "tcp_seg_sent_insert";
                *&buf[12] = 1024;
                *&buf[14] = v665;
                *&buf[18] = 1024;
                *&buf[20] = v597;
                v607 = v663;
                v608 = v664;
                v609 = "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u), backtrace limit exceeded";
              }

LABEL_1422:
              _os_log_impl(&dword_1889BA000, v607, v608, v609, buf, 0x18u);
              goto LABEL_1423;
            }

            v604 = __nwlog_obj();
            v605 = info.numer;
            if (os_log_type_enabled(v604, info.numer))
            {
              v606 = *v55;
              *buf = 136446722;
              *&buf[4] = "tcp_seg_sent_insert";
              *&buf[12] = 1024;
              *&buf[14] = v606;
              *&buf[18] = 1024;
              *&buf[20] = v597;
              v607 = v604;
              v608 = v605;
              v609 = "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u)";
              goto LABEL_1422;
            }

LABEL_1423:
            if (v603)
            {
              free(v603);
            }

            v597 = *v55;
            v598 = *(v55 + 4);
            v594 = v964;
            v599 = v983;
          }

          *v55 = v597;
          *(v55 + 4) = v598;
          *(v55 + 8) = v599;
          if ((v597 - *(a1 + 2068)) < 0)
          {
            *(a1 + 2068) = v597;
          }

          v669 = *(v55 + 12) | v600;
          *(v55 + 12) = v669;
          if ((v669 & 4) != 0)
          {
            v670 = tcp_seg_len(v55);
            v594 = v964;
            *(a1 + 2084) += v670;
          }

          v671 = *(a1 + 2077);
          if ((v671 & 0x80000000) == 0)
          {
            *(a1 + 2077) = v671 | (32 * v600) & 0x80;
          }

          v672 = *(v55 + 16);
          v673 = *(v55 + 24);
          v674 = v673;
          if (v672)
          {
            *(v672 + 24) = v673;
            v674 = *(a1 + 2000);
          }

          *v673 = v672;
          *(v55 + 16) = 0;
          *(v55 + 24) = v674;
          *v674 = v55;
          *(a1 + 2000) = v55 + 16;
          v4 = v967;
          goto LABEL_1435;
        }

        v614 = *(a1 + 2032);
        if (v614)
        {
          v615 = *(v614 + 72);
          v616 = *(v614 + 80);
          v617 = (v615 + 80);
          if (!v615)
          {
            v617 = (a1 + 2040);
          }

          *v617 = v616;
          *v616 = v615;
          --*(a1 + 2048);
LABEL_1356:
          *(v614 + 80) = 0;
          *(v614 + 48) = 0u;
          *(v614 + 64) = 0u;
          *(v614 + 16) = 0u;
          *(v614 + 32) = 0u;
          *v614 = 0u;
          *v55 += v999;
          *v614 = v597;
          *(v614 + 4) = v598;
          *(v614 + 8) = v599;
          if ((v597 - *(a1 + 2068)) >= 0)
          {
            *(v614 + 12) = v600;
            if ((v600 & 4) == 0)
            {
              goto LABEL_1358;
            }

LABEL_1368:
            *(a1 + 2084) += tcp_seg_len(v614);
            v631 = *(a1 + 2077);
            if (v631 < 0)
            {
              goto LABEL_1360;
            }

LABEL_1359:
            *(a1 + 2077) = v631 | (32 * v600) & 0x80;
            goto LABEL_1360;
          }

          *(a1 + 2068) = v597;
          *(v614 + 12) = v600;
          if ((v600 & 4) != 0)
          {
            goto LABEL_1368;
          }

LABEL_1358:
          v631 = *(a1 + 2077);
          if ((v631 & 0x80000000) == 0)
          {
            goto LABEL_1359;
          }

LABEL_1360:
          v632 = *v936;
          if (*v936)
          {
            v633 = *(v614 + 4);
            v4 = v967;
            while (1)
            {
              while (1)
              {
                v634 = v632;
                v635 = *(v632 + 4);
                v636 = v633 - v635;
                if (v633 - v635 >= 0)
                {
                  break;
                }

                v632 = *(v634 + 32);
                if (!v632)
                {
                  goto LABEL_1366;
                }
              }

              if (v633 == v635)
              {
                break;
              }

              v632 = *(v634 + 40);
              if (!v632)
              {
LABEL_1366:
                v637 = v636 >> 31;
                goto LABEL_1371;
              }
            }

            v653 = __nwlog_obj();
            if (os_log_type_enabled(v653, OS_LOG_TYPE_ERROR))
            {
              v654 = *v634;
              v655 = *(v634 + 4);
              *buf = 136446978;
              *&buf[4] = "tcp_seg_sent_insert";
              *&buf[12] = 2048;
              *&buf[14] = v634;
              *&buf[22] = 1024;
              *v1006 = v654;
              *&v1006[4] = 1024;
              *&v1006[6] = v655;
              _os_log_impl(&dword_1889BA000, v653, OS_LOG_TYPE_ERROR, "%{public}s segment %p[%u %u) was not inserted in the RB tree", buf, 0x22u);
            }
          }

          else
          {
            v634 = 0;
            v637 = 0;
            v4 = v967;
LABEL_1371:
            *(v614 + 32) = 0;
            *(v614 + 40) = 0;
            *(v614 + 48) = v634 | 1;
            v638 = (a1 + 2008);
            if (v634)
            {
              if (v637)
              {
                v638 = (v634 + 32);
              }

              else
              {
                v638 = (v634 + 40);
              }
            }

            *v638 = v614;
            tcp_seg_sent_tree_head_RB_INSERT_COLOR(v936, v614);
          }

          *(v614 + 16) = 0;
          v656 = v614 + 16;
          v657 = *(a1 + 2000);
          *(v614 + 24) = v657;
          *v657 = v614;
LABEL_1413:
          *(a1 + 2000) = v656;
        }

        else
        {
          v628 = *(a1 + 140);
          v629 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
          v630 = malloc_type_malloc(**(v629 + 64), 0x6223832DuLL);
          v599 = v628;
          v614 = v630;
          if (v630)
          {
            goto LABEL_1356;
          }

          v659 = __nwlog_obj();
          if (os_log_type_enabled(v659, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "tcp_rack_free_and_disable";
            _os_log_impl(&dword_1889BA000, v659, OS_LOG_TYPE_DEBUG, "%{public}s not enough memory to allocate segment, disabling RACK", buf, 0xCu);
          }

          tcp_segs_sent_clean(a1, 1);
          *(a1 + 748) &= ~0x20000000u;
          v4 = v967;
        }

LABEL_1414:
        v594 = v964;
        if ((*(v507 + 13) & 4) == 0)
        {
          goto LABEL_1436;
        }

        goto LABEL_1517;
      }

      if (v596 <= 7)
      {
        v610 = *(a1 + 2032);
        if (v610)
        {
          v611 = *(v610 + 72);
          v612 = *(v610 + 80);
          v613 = (v611 + 80);
          if (!v611)
          {
            v613 = (a1 + 2040);
          }

          *v613 = v612;
          *v612 = v611;
          --*(a1 + 2048);
        }

        else
        {
          v643 = *(a1 + 140);
          v644 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
          v645 = malloc_type_malloc(**(v644 + 64), 0x6223832DuLL);
          v599 = v643;
          v610 = v645;
          if (!v645)
          {
            v667 = __nwlog_obj();
            if (os_log_type_enabled(v667, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "tcp_rack_free_and_disable";
              _os_log_impl(&dword_1889BA000, v667, OS_LOG_TYPE_DEBUG, "%{public}s not enough memory to allocate segment, disabling RACK", buf, 0xCu);
            }

            tcp_segs_sent_clean(a1, 1);
            *(a1 + 748) &= ~0x20000000u;
            goto LABEL_1414;
          }
        }

        *(v610 + 12) = 0u;
        *(v610 + 72) = 0u;
        *(v610 + 60) = 0u;
        *(v610 + 44) = 0u;
        *(v610 + 28) = 0u;
        *v610 = v597;
        *(v610 + 4) = v598;
        *(v610 + 8) = v599;
        if ((v597 - *(a1 + 2068)) < 0)
        {
          *(a1 + 2068) = v597;
        }

        *(v610 + 12) = v596;
        if (v596)
        {
          *(a1 + 2084) += tcp_seg_len(v610);
        }

        v646 = *(a1 + 2077);
        if ((v646 & 0x80000000) == 0)
        {
          *(a1 + 2077) = v646 | (32 * v596);
        }

        v647 = *v936;
        if (*v936)
        {
          v648 = *(v610 + 4);
          while (1)
          {
            while (1)
            {
              v649 = v647;
              v650 = *(v647 + 4);
              v651 = v648 - v650;
              if (v648 - v650 >= 0)
              {
                break;
              }

              v647 = *(v649 + 32);
              if (!v647)
              {
                goto LABEL_1392;
              }
            }

            if (v648 == v650)
            {
              break;
            }

            v647 = *(v649 + 40);
            if (!v647)
            {
LABEL_1392:
              v652 = v651 >> 31;
              goto LABEL_1399;
            }
          }

          v660 = __nwlog_obj();
          if (os_log_type_enabled(v660, OS_LOG_TYPE_ERROR))
          {
            v661 = *v649;
            v662 = *(v649 + 4);
            *buf = 136446978;
            *&buf[4] = "tcp_seg_sent_insert";
            *&buf[12] = 2048;
            *&buf[14] = v649;
            *&buf[22] = 1024;
            *v1006 = v661;
            *&v1006[4] = 1024;
            *&v1006[6] = v662;
            _os_log_impl(&dword_1889BA000, v660, OS_LOG_TYPE_ERROR, "%{public}s segment %p[%u %u) was not inserted in the RB tree", buf, 0x22u);
          }
        }

        else
        {
          v649 = 0;
          v652 = 0;
LABEL_1399:
          *(v610 + 32) = 0;
          *(v610 + 40) = 0;
          *(v610 + 48) = v649 | 1;
          v658 = (a1 + 2008);
          if (v649)
          {
            if (v652)
            {
              v658 = (v649 + 32);
            }

            else
            {
              v658 = (v649 + 40);
            }
          }

          *v658 = v610;
          tcp_seg_sent_tree_head_RB_INSERT_COLOR(v936, v610);
        }

        *(v610 + 16) = 0;
        v656 = v610 + 16;
        v666 = *(a1 + 2000);
        *(v610 + 24) = v666;
        *v666 = v610;
        goto LABEL_1413;
      }

      v618 = *v936;
      if (!*v936)
      {
        goto LABEL_1435;
      }

      v619 = *v936;
      do
      {
        while (1)
        {
          v620 = *(v619 + 4);
          if ((v598 - v620) >= 0)
          {
            break;
          }

          v619 = *(v619 + 32);
          if (!v619)
          {
            goto LABEL_1340;
          }
        }

        if (v598 == v620)
        {
          tcp_process_rxmt_segs_after_rto(a1, v619, v597, v599, v596);
          goto LABEL_1414;
        }

        v619 = *(v619 + 40);
      }

      while (v619);
      do
      {
LABEL_1340:
        v621 = v618;
        v618 = *(v618 + 32);
      }

      while (v618);
LABEL_1349:
      while (2)
      {
        while (2)
        {
          v623 = v621;
          if ((v598 - *(v621 + 4)) < 0 && (v598 - *v621) >= 1)
          {
            v624 = *(a1 + 140);
            inserted = tcp_seg_rto_insert_end(a1, *v621, v597 + v999, v599, *(v621 + 12) | v596);
            v594 = v964;
            if (!inserted)
            {
              goto LABEL_1435;
            }

            v626 = *v623;
            if ((*v623 - v597) >= 1)
            {
              v627 = *v936;
              if (*v936)
              {
                while (1)
                {
                  while (1)
                  {
                    v692 = *(v627 + 4);
                    if (v626 - v692 >= 0)
                    {
                      break;
                    }

                    v627 = *(v627 + 32);
                    if (!v627)
                    {
                      goto LABEL_1516;
                    }
                  }

                  if (v626 == v692)
                  {
                    break;
                  }

                  v627 = *(v627 + 40);
                  if (!v627)
                  {
                    goto LABEL_1516;
                  }
                }

                tcp_process_rxmt_segs_after_rto(a1, v627, v597, v624, v596);
                v594 = v964;
              }
            }

LABEL_1516:
            *v623 = v598;
            if ((*(v507 + 13) & 4) == 0)
            {
              goto LABEL_1436;
            }

            goto LABEL_1517;
          }

          v622 = *(v621 + 40);
          if (v622)
          {
            do
            {
              v621 = v622;
              v622 = *(v622 + 32);
            }

            while (v622);
            continue;
          }

          break;
        }

        v621 = *(v621 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if ((*(v623 + 48) & 0xFFFFFFFFFFFFFFFELL) != 0 && *(v621 + 32) == v623)
        {
          continue;
        }

        break;
      }

      while (1)
      {
        v621 = *(v623 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v621)
        {
          break;
        }

        v106 = v623 == *(v621 + 40);
        v623 = *(v623 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v106)
        {
          goto LABEL_1349;
        }
      }

LABEL_1435:
      if ((*(v507 + 13) & 4) != 0)
      {
LABEL_1517:
        v734 = tcp_rst_rlc_compress(a1, v507);
        v594 = v964;
        if (!v734)
        {
          goto LABEL_1436;
        }

LABEL_1742:
        v770 = 0;
        goto LABEL_1665;
      }

LABEL_1436:
      v675 = *(*(a1 + 80) + 448);
      v3 = v993;
      v19 = v965;
      if (!v675 || (*(v675 + 1202) & 0x80) == 0 || (*(sysctls + 316) & 1) == 0 || !v999 && (*(v507 + 13) & 1) == 0)
      {
        goto LABEL_1449;
      }

      v676 = (*(v507 + 4) << 24) & 0x80000000;
      if ((*(v20 + 186) & 4) == 0 || v676 != *(a1 + 1884))
      {
        break;
      }

      if (v944)
      {
        atomic_fetch_add((v944 + 1136), 1uLL);
      }

      if ((*(v20 + 204) & 0x40) != 0)
      {
        v679 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_set_compression_generation_count";
        LODWORD(v923) = 12;
        v680 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v679, 16, "%{public}s Attempt to set generation-count on a chain-member", buf, v923);
        LOBYTE(info.numer) = 16;
        v1004 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1476;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v681 = __nwlog_obj();
          v682 = info.numer;
          if (!os_log_type_enabled(v681, info.numer))
          {
            goto LABEL_1476;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v683 = v681;
          v684 = v682;
          v685 = "%{public}s Attempt to set generation-count on a chain-member";
        }

        else if (v1004 == OS_LOG_TYPE_INFO)
        {
          v686 = __nw_create_backtrace_string();
          v687 = __nwlog_obj();
          v688 = info.numer;
          v689 = os_log_type_enabled(v687, info.numer);
          if (v686)
          {
            if (v689)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_set_compression_generation_count";
              *&buf[12] = 2082;
              *&buf[14] = v686;
              _os_log_impl(&dword_1889BA000, v687, v688, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v686);
LABEL_1476:
            if (v680)
            {
              free(v680);
            }

            v594 = v964;
            v677 = v963;
            if (v963)
            {
              goto LABEL_1450;
            }

            goto LABEL_1479;
          }

          if (!v689)
          {
            goto LABEL_1476;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v683 = v687;
          v684 = v688;
          v685 = "%{public}s Attempt to set generation-count on a chain-member, no backtrace";
        }

        else
        {
          v690 = __nwlog_obj();
          v691 = info.numer;
          if (!os_log_type_enabled(v690, info.numer))
          {
            goto LABEL_1476;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v683 = v690;
          v684 = v691;
          v685 = "%{public}s Attempt to set generation-count on a chain-member, backtrace limit exceeded";
        }

        _os_log_impl(&dword_1889BA000, v683, v684, v685, buf, 0xCu);
        goto LABEL_1476;
      }

      *(v20 + 192) = v676;
      v677 = v963;
      if (!v963)
      {
        goto LABEL_1479;
      }

LABEL_1450:
      if (*(a1 + 12) != 4 || *(a1 + 148) <= *(a1 + 144) >> 3 || (*(a1 + 88) & 1) != 0 || (*(a1 + 749) & 0x80) != 0 || *(a1 + 312) >= *(sysctls + 96))
      {
        goto LABEL_1479;
      }

      v678 = *(a1 + 1064);
      if (v678)
      {
        ++*v678;
      }
    }

    *(a1 + 1884) = v676;
LABEL_1449:
    v677 = v963;
    if (v963)
    {
      goto LABEL_1450;
    }

LABEL_1479:
    v693 = v594 ? 1 : log;
LABEL_1482:
    if (*(v993 + 2382))
    {
      goto LABEL_1487;
    }

    if (*v28)
    {
      break;
    }

    v697 = *(a1 + 88);
    if ((v697 & 0x8000000) != 0)
    {
      goto LABEL_1819;
    }

LABEL_1487:
    v698 = *(a1 + 1064);
    if (v698)
    {
      ++*v698;
    }

    if (!v677)
    {
      goto LABEL_1717;
    }
  }

  v694 = *(a1 + 312);
  v695 = *(a1 + 640);
  *(a1 + 296) = *(a1 + 120);
  *(a1 + 88) &= 0xFFFFFFFC;
  *(a1 + 32) = 0;
  *(a1 + 316) = 0;
  v696 = tcp_ip_output_send(v4, a1, v28, v694, v693);
  *(a1 + 624) = 0;
  *(a1 + 632) = v28;
  *(a1 + 640) = 0;
  *(a1 + 312) = 0;
  if (!v696)
  {
    goto LABEL_1482;
  }

  v770 = v696;
  if (*(v993 + 2382))
  {
    numer_low = a1 + 100;
    v771 = v962;
    goto LABEL_1581;
  }

  v697 = *(a1 + 88);
  numer_low = a1 + 100;
  v771 = v962;
  if ((v697 & 0x8000000) != 0)
  {
    goto LABEL_1819;
  }

LABEL_1581:
  v772 = *(a1 + 748);
  if ((v772 & 0x8000) != 0)
  {
    if (*(a1 + 36) | v979 & 2)
    {
      goto LABEL_1665;
    }
  }

  else if ((v979 & 2) != 0)
  {
    goto LABEL_1665;
  }

  v106 = (v772 & 0x20400020) == 536870944;
  v773 = log ^ 1;
  v774 = *(a1 + 92);
  if (v106)
  {
    v773 = 1;
  }

  if (v773)
  {
    v778 = *numer_low - v695;
    if (v778 - v774 < 1)
    {
      *numer_low = v774;
    }

    else
    {
      *numer_low = v778;
    }
  }

  else
  {
    v775 = v771[2];
    v776 = v775 - v695;
    v777 = v775 - v774;
    if (v776 - v774 > 0)
    {
      v774 = v776;
      v777 = v695;
    }

    if (v774 - *v771 < 0)
    {
      v774 = *v771;
    }

    v771[2] = v774;
    *(a1 + 616) = (*(a1 + 616) - v777) & ~((*(a1 + 616) - v777) >> 31);
  }

LABEL_1665:
  v814 = *v28;
  if (*v28)
  {
    while (2)
    {
      v815 = v814[5];
      if (v815 == v28)
      {
        v816 = v814 + 4;
        v820 = v814[4];
        if (v820)
        {
          *(v820 + 40) = v815;
          v815 = v814[5];
        }

        else
        {
          *(a1 + 632) = v815;
        }

        *v815 = v820;
      }

      else
      {
        v817 = v814[2];
        v818 = v814[3];
        v816 = v814 + 2;
        v819 = (v817 + 24);
        if (!v817)
        {
          v819 = (a1 + 632);
        }

        *v819 = v818;
        *v818 = v817;
      }

      *v816 = 0;
      v816[1] = 0;
      v821 = v814[10];
      if (v821)
      {
        v822 = v814[11];
        v814[10] = 0;
        v814[11] = 0;
        v821(v814, 0, v822);
        goto LABEL_1676;
      }

      v823 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_frame_finalize";
      LODWORD(v923) = 12;
      v824 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v823, 16, "%{public}s called with null frame->finalizer", buf, v923);
      LOBYTE(info.numer) = 16;
      v1004 = OS_LOG_TYPE_DEFAULT;
      loga = v824;
      if (!__nwlog_fault())
      {
        goto LABEL_1692;
      }

      if (LOBYTE(info.numer) == 17)
      {
        v984 = __nwlog_obj();
        v976 = info.numer;
        if (os_log_type_enabled(v984, info.numer))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v825 = v984;
          v826 = v976;
          v827 = "%{public}s called with null frame->finalizer";
          break;
        }

        goto LABEL_1692;
      }

      if (v1004 == OS_LOG_TYPE_INFO)
      {
        v985 = __nw_create_backtrace_string();
        v977 = __nwlog_obj();
        v969 = info.numer;
        v828 = os_log_type_enabled(v977, info.numer);
        v829 = v985;
        if (v985)
        {
          if (v828)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_finalize";
            *&buf[12] = 2082;
            *&buf[14] = v985;
            _os_log_impl(&dword_1889BA000, v977, v969, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
            v829 = v985;
          }

          free(v829);
          goto LABEL_1692;
        }

        if (!v828)
        {
LABEL_1692:
          if (loga)
          {
            free(loga);
          }

LABEL_1676:
          v814 = *v28;
          if (!*v28)
          {
            goto LABEL_1694;
          }

          continue;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v825 = v977;
        v826 = v969;
        v827 = "%{public}s called with null frame->finalizer, no backtrace";
      }

      else
      {
        v986 = __nwlog_obj();
        v978 = info.numer;
        if (!os_log_type_enabled(v986, info.numer))
        {
          goto LABEL_1692;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v825 = v986;
        v826 = v978;
        v827 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
      }

      break;
    }

    _os_log_impl(&dword_1889BA000, v825, v826, v827, buf, 0xCu);
    goto LABEL_1692;
  }

LABEL_1694:
  *(a1 + 624) = 0;
  *(a1 + 632) = v28;
  *(a1 + 640) = 0;
  *(a1 + 312) = 0;
  switch(v770)
  {
    case '(':
      if (v966)
      {
        *(a1 + 88) &= ~0x10000000u;
      }

      tcp_mtudisc(v993);
      goto LABEL_1717;
    case '2':
      if (*(a1 + 12) >= 3)
      {
        *(a1 + 264) = 50;
        v770 = 0;
      }

      break;
    case '7':
      if (!*(a1 + 28) && !*(a1 + 36) && (v979 & 3 | v999 || *(v967 + 384)))
      {
        v830 = *(a1 + 80);
        if ((*(sysctls + 316) & 0x10) != 0 && (v831 = *(v830 + 448)) != 0)
        {
          v832 = *(a1 + 196);
          if ((*(v831 + 1202) & 0x80) != 0 && v832 < *(sysctls + 320))
          {
            atomic_fetch_add((v831 + 1152), 1uLL);
            v832 = *(sysctls + 320);
            *(a1 + 196) = v832;
            v830 = *(a1 + 80);
          }
        }

        else
        {
          v832 = *(a1 + 196);
        }

        v833 = nw_tcp_access_globals(*(v830 + 224));
        v834 = *(a1 + 140);
        if (v834 - *(v833 + 308) <= 0)
        {
          v834 = *(v833 + 308);
        }

        *(a1 + 28) = v832 - *(a1 + 64) + v834;
      }

      *(a1 + 148) = *(a1 + 200);
      *(a1 + 300) = 0;
      goto LABEL_1717;
  }

  tcp_check_timer_state(a1);
  return v770;
}

uint64_t tcp_sbspace(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 224);
  v2 = v1 + 116;
  v3 = *(a1 + 200);
  v4 = v1[117];
  if (*(sysctls + 40) != 1 && (v1[92] & 0x4000) == 0 && *(sysctls + 68) == 1 && !(*(a1 + 88) & 0x80000 | v1[92] & 0x40))
  {
    v5 = 16 * v3;
    if (v4 - *v2 < 16 * v3)
    {
      v6 = *(sysctls + 72);
      if (v4 < v6)
      {
        v7 = v1[125];
        if (v7 && v4 <= v7 + v5)
        {
          v9 = v4 + v5;
          if (v9 >= v6)
          {
            v10 = *(sysctls + 72);
          }

          else
          {
            v10 = v9;
          }

          v11 = a1;
          sbreserve((v1 + 116), v10);
          a1 = v11;
          v4 = v1[117];
          v3 = *(v11 + 200);
        }
      }
    }
  }

  v12 = (v4 - *v2) & ~((v4 - *v2) >> 31);
  if (v12 >= v3 && (*(a1 + 90) & 8) != 0)
  {
    v13 = *(sysctls + 48);
    if (v12 >= v13)
    {
      v14 = *(sysctls + 48);
    }

    else
    {
      v14 = v12;
    }

    if (v13 <= 0)
    {
      return v12;
    }

    else
    {
      return v14;
    }
  }

  return v12;
}

void nw_protocol_timer_run_inner(uint64_t a1, int64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (g_tcp_nw_assert_context == 1)
  {
    v5 = a2;
    nw_context_assert_queue();
    a2 = v5;
  }

  v6 = 96;
  if (a3)
  {
    v6 = 88;
  }

  v7 = *(a1 + v6);
  if (a2 == -1)
  {
    v10 = v7;
    v9 = -1;
    goto LABEL_9;
  }

  v8 = dispatch_time(0x8000000000000000, a2);
  if (v8 != -1)
  {
    v9 = v8;
    v10 = v7;
LABEL_9:

    MEMORY[0x1EEDD4920](v10, v9, -1, 0);
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_timer_run_inner";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v11, 16, "%{public}s dispatch_time: Integer overflow failed", buf, 12);
  if (__nwlog_fault())
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v15 = "nw_protocol_timer_run_inner";
      _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s dispatch_time: Integer overflow failed, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v12)
  {
    free(v12);
  }
}

uint64_t tcp_log_packet(uint64_t a1, uint64_t a2, __int16 a3, char a4, int a5)
{
  result = *(*(a1 + 80) + 224);
  if (result && (*(result + 776) & 6) == 0)
  {
    v7 = nw_tcp_access_globals(result);
    if (*(a1 + 1784))
    {
      nw_log_ms_to_delta();
    }

    v8 = *(v7 + 308);
    if (!v8)
    {
      v8 = -1;
    }

    *(a1 + 1784) = v8;
    return nw_log_ring_append();
  }

  return result;
}

uint64_t tcp_ip_output_send(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 80);
  v10 = *(v9 + 496);
  v11 = *(v9 + 2372);
  if ((*(a2 + 751) & 2) == 0 || a4 != 1 || *(a2 + 640) || *(a2 + 664) + 1 >= tcp_batch_ack_max)
  {
    goto LABEL_2;
  }

  v15 = *a3;
  if (!*a3)
  {
    goto LABEL_88;
  }

  v16 = v15[14];
  v17 = MEMORY[0x1E6977EF8];
  if (!v16 || (*(v15 + 102) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((v18 = a5, !(*MEMORY[0x1E6977EF8])(*a3, v15[11])) || (a5 = v18, (v16 = v15[14]) == 0)))
  {
    if ((*(v15 + 102) & 0x100) != 0 && *v17 && ((*v17)(v15, v15[11]) & 1) == 0)
    {
      *(a2 + 1064) = 0;
    }

LABEL_88:
    if (!a1 || (*(a1 + 776) & 2) == 0)
    {
      v49 = __nwlog_tcp_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = (a1 + 556);
        if (!a1)
        {
          v50 = &unk_188A285CF;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_ip_output_send";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_1889BA000, v49, OS_LOG_TYPE_INFO, "%{public}s %{public}s failed to get tcp buffer in tcp-ip output", buf, 0x16u);
      }
    }

    v51 = *a3;
    if (!*a3)
    {
      return 6;
    }

    while (1)
    {
      v52 = v51[10];
      v53 = v51[4];
      v54 = v51[5];
      v55 = (v53 + 40);
      if (!v53)
      {
        v55 = a3 + 1;
      }

      *v55 = v54;
      *v54 = v53;
      v51[4] = 0;
      v51[5] = 0;
      if (!v52)
      {
        break;
      }

      v56 = v51[11];
      v51[10] = 0;
      v51[11] = 0;
      v52(v51, 0, v56);
LABEL_99:
      v51 = *a3;
      if (!*a3)
      {
        return 6;
      }
    }

    v57 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_finalize";
    LODWORD(v79) = 12;
    v99 = OS_LOG_TYPE_ERROR;
    v98 = 0;
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v57, 16, "%{public}s called with null frame->finalizer", buf, v79);
    if (__nwlog_fault())
    {
      if (v99 == OS_LOG_TYPE_FAULT)
      {
        v89 = __nwlog_obj();
        if (!os_log_type_enabled(v89, v99))
        {
          goto LABEL_115;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v58 = v89;
        v59 = v99;
        v60 = "%{public}s called with null frame->finalizer";
        goto LABEL_114;
      }

      if (v98 != 1)
      {
        v91 = __nwlog_obj();
        if (!os_log_type_enabled(v91, v99))
        {
          goto LABEL_115;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v58 = v91;
        v59 = v99;
        v60 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_114;
      }

      backtrace_string = __nw_create_backtrace_string();
      v87 = __nwlog_obj();
      v61 = os_log_type_enabled(v87, v99);
      v62 = backtrace_string;
      if (backtrace_string)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_finalize";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_1889BA000, v87, v99, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
          v62 = backtrace_string;
        }

        free(v62);
        goto LABEL_115;
      }

      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v58 = v87;
        v59 = v99;
        v60 = "%{public}s called with null frame->finalizer, no backtrace";
LABEL_114:
        _os_log_impl(&dword_1889BA000, v58, v59, v60, buf, 0xCu);
      }
    }

LABEL_115:
    if (v92)
    {
      free(v92);
    }

    goto LABEL_99;
  }

  if ((*(v16 + *(v15 + 14) + 13) & 7) == 0)
  {
    if (*a3)
    {
      v19 = *(a2 + 656);
      *v19 = *a3;
      *(*a3 + 40) = v19;
      *(a2 + 656) = a3[1];
      *a3 = 0;
      a3[1] = a3;
    }

    result = 0;
    ++*(a2 + 664);
    return result;
  }

LABEL_2:
  v12 = *(a2 + 648);
  if (v12)
  {
    if (*a3)
    {
      v13 = *(a2 + 656);
      *v13 = *a3;
      *(*a3 + 40) = v13;
      *(a2 + 656) = a3[1];
      *a3 = 0;
      a3[1] = a3;
      v12 = *(a2 + 648);
      v14 = a3;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = a3[1];
    }

    *v14 = v12;
    *(*(a2 + 648) + 40) = v14;
    a3[1] = *(a2 + 656);
    *(a2 + 648) = 0;
    *(a2 + 656) = a2 + 648;
LABEL_21:
    *(a2 + 664) = 0;
  }

  ++*(v9 + 2382);
  if (*(sysctls + 100) && !*(a1 + 544))
  {
    v21 = 1;
    if (!a5 && *(a2 + 12) == 4 && (*(a2 + 90) & 0x20) == 0 && (*(a1 + 367) & 1) == 0)
    {
      (*(*(a1 + 8) + 24))(a1, 0, v5, a4);
      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = *(*(a1 + 24) + 32);
  if (__nwlog_is_datapath_logging_enabled())
  {
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 0x40000000;
    v94 = __tcp_ip_output_send_block_invoke;
    v95 = &__block_descriptor_tmp_487;
    v96 = a2;
    v97 = a1;
    v72 = *a3;
    do
    {
      if (!v72)
      {
        break;
      }

      v73 = *(v72 + 32);
      v74 = (v94)(v93);
      v72 = v73;
    }

    while ((v74 & 1) != 0);
  }

  v23 = MEMORY[0x1E6977EF0];
  if (*MEMORY[0x1E6977EF0] != -1)
  {
    dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_488);
  }

  v24 = MEMORY[0x1E6977EE8];
  if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v101 = 0;
    nw_frame_array_foreach();
    if (*v23 != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_488);
    }

    if (*v24 == 1 && kdebug_is_enabled())
    {
      nw_frame_array_unclaimed_length();
      kdebug_trace();
    }

    _Block_object_dispose(buf, 8);
  }

  if (((*(*(v22 + 24) + 96))(v22, a3) & 1) == 0)
  {
    v25 = *a3;
    if (!*a3)
    {
      goto LABEL_56;
    }

    while (1)
    {
      v26 = v25[10];
      v27 = v25[4];
      v28 = v25[5];
      v29 = (v27 + 40);
      if (!v27)
      {
        v29 = a3 + 1;
      }

      *v29 = v28;
      *v28 = v27;
      v25[4] = 0;
      v25[5] = 0;
      if (!v26)
      {
        break;
      }

      v30 = v25[11];
      v25[10] = 0;
      v25[11] = 0;
      v26(v25, 0, v30);
LABEL_38:
      v25 = *a3;
      if (!*a3)
      {
        goto LABEL_56;
      }
    }

    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_finalize";
    LODWORD(v79) = 12;
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v31, 16, "%{public}s called with null frame->finalizer", buf, v79);
    v99 = OS_LOG_TYPE_ERROR;
    v98 = 0;
    v88 = v32;
    if (__nwlog_fault())
    {
      if (v99 == OS_LOG_TYPE_FAULT)
      {
        v84 = __nwlog_obj();
        log = v99;
        if (!os_log_type_enabled(v84, v99))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v33 = v84;
        v34 = log;
        v35 = "%{public}s called with null frame->finalizer";
        goto LABEL_53;
      }

      if (v98 != 1)
      {
        v86 = __nwlog_obj();
        logb = v99;
        if (!os_log_type_enabled(v86, v99))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v33 = v86;
        v34 = logb;
        v35 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_53;
      }

      v85 = __nw_create_backtrace_string();
      loga = __nwlog_obj();
      type = v99;
      v36 = os_log_type_enabled(loga, v99);
      v37 = v85;
      if (v85)
      {
        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_finalize";
          *&buf[12] = 2082;
          *&buf[14] = v85;
          _os_log_impl(&dword_1889BA000, loga, type, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
          v37 = v85;
        }

        free(v37);
        goto LABEL_54;
      }

      if (v36)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v33 = loga;
        v34 = type;
        v35 = "%{public}s called with null frame->finalizer, no backtrace";
LABEL_53:
        _os_log_impl(&dword_1889BA000, v33, v34, v35, buf, 0xCu);
      }
    }

LABEL_54:
    if (v88)
    {
      free(v88);
    }

    goto LABEL_38;
  }

  if (*(a2 + 12) == 2)
  {
    ++*(a2 + 1876);
  }

LABEL_56:
  if ((v21 & 1) == 0)
  {
    (*(*(a1 + 8) + 16))(a1, 0, v5);
  }

  if ((*(v9 + 2375) & 0x10) != 0)
  {
    if ((v11 & 0x10000000) != 0)
    {
      result = 0;
      goto LABEL_65;
    }

LABEL_63:
    result = 55;
    goto LABEL_65;
  }

  result = 0;
  if ((*(*(v9 + 224) + 366) & 2) != 0 && (v11 & 0x10000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_65:
  v38 = *(v9 + 2382);
  *(v9 + 2382) = v38 - 1;
  if (v38)
  {
    if (!v10)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v75 = result;
  v76 = __nwlog_obj();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    v77 = 3;
  }

  else
  {
    v77 = 2;
  }

  *buf = 136446210;
  *&buf[4] = "tcp_ip_output_send";
  LODWORD(v79) = 12;
  v78 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &dword_1889BA000, v76, 16, "%{public}s Assert inp->inp_sndinprog_cnt-- > 0 failed", buf, v79);
  result = __nwlog_should_abort();
  if (result)
  {
    __break(1u);
    return result;
  }

  free(v78);
  result = v75;
  if (v10)
  {
LABEL_67:
    v39 = *(v10 + 216);
    if (v39 != *(v9 + 448) && *(a1 + 384))
    {
      v40 = result;
      os_unfair_lock_lock((a2 + 1872));
      *(v9 + 448) = v39;
      os_unfair_lock_unlock((a2 + 1872));
      result = v40;
    }
  }

LABEL_70:
  if (*(a2 + 12) > 3)
  {
    return result;
  }

  if (*(a2 + 234))
  {
    return result;
  }

  v41 = *(a2 + 80);
  v42 = v41[62];
  if (!v42)
  {
    return result;
  }

  v43 = *(v42 + 1632);
  if (!v43)
  {
    goto LABEL_127;
  }

  v44 = *(v43 + 64);
  if (!v44 || *(a2 + 1880) == 1)
  {
    goto LABEL_127;
  }

  *(a2 + 236) = 30;
  v45 = v44 / 0x1F;
  v46 = *(a2 + 1064);
  if (!v46)
  {
    v63 = *(v43 + 68);
    if (v63)
    {
      v48 = v63 / 0x3E;
      goto LABEL_121;
    }

LABEL_120:
    v48 = *(a2 + 204) / 2;
    goto LABEL_121;
  }

  ++*(v46 + 1280);
  v47 = *(v43 + 68);
  if (!v47)
  {
    goto LABEL_120;
  }

  v48 = v47 / 0x3E;
  ++*(v46 + 1288);
LABEL_121:
  v64 = v48 + (v45 >> 3);
  v65 = v64 >> 2;
  if (v64 >> 2 <= 0x1E)
  {
    v65 = 30;
  }

  if (v64 <= 0x3E803)
  {
    v66 = v65;
  }

  else
  {
    v66 = 64000;
  }

  *(a2 + 196) = v66;
LABEL_127:
  if ((*(sysctls + 316) & 0x10) != 0 && (v67 = v41[56]) != 0 && (*(v67 + 1202) & 0x80) != 0)
  {
    v68 = result;
    if (*(a2 + 196) < *(sysctls + 320))
    {
      atomic_fetch_add((v67 + 1152), 1uLL);
      *(a2 + 196) = *(sysctls + 320);
      v41 = *(a2 + 80);
    }
  }

  else
  {
    v68 = result;
  }

  v69 = *(a2 + 196);
  v70 = nw_tcp_access_globals(v41[28]);
  v71 = *(a2 + 140);
  if (v71 - *(v70 + 308) <= 0)
  {
    v71 = *(v70 + 308);
  }

  *(a2 + 28) = v69 - *(a2 + 64) + v71;
  return v68;
}