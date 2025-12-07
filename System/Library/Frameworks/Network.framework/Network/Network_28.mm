void nw_connection_access_parameters_description_locked(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_access_parameters_description_locked";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_access_parameters_description_locked";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_access_parameters_description_locked";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v26 = "nw_connection_access_parameters_description_locked";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_access_parameters_description_locked";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_access_parameters_description_locked_block_invoke;
    v20[3] = &unk_1E6A3D710;
    v21 = v3;
    v22 = v5;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_access_parameters_description_locked_block_invoke(v20);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_access_parameters_description_locked";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null accessor", buf, 12);

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_access_parameters_description_locked";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null accessor", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_access_parameters_description_locked";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null accessor, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_access_parameters_description_locked";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null accessor, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_access_parameters_description_locked";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null accessor, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t __nw_connection_access_parameters_description_locked_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 528))
  {
    *(*(a1 + 32) + 528) = _nw_parameters_copy_description(*(v2 + 16));
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_249(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 448);
    v7 = *(v5 + 8);
    v8 = v7;
    if (v7)
    {
      logging_description = _nw_endpoint_get_logging_description(v7);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v10 = "";
    v11 = *(a1 + 40);
    v12[0] = 67110402;
    v12[1] = v6;
    if (v11)
    {
      v10 = "force-";
    }

    v13 = 1042;
    v14 = 16;
    v15 = 2098;
    v16 = v5 + 452;
    v17 = 2082;
    v18 = logging_description;
    v19 = 2082;
    v20 = a2;
    v21 = 2082;
    v22 = v10;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "[C%u %{public,uuid_t}.16P %{public}s %{public}s] %{public}scancel", v12, 0x36u);
  }
}

void ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 400);
  if (v2 && _nw_array_get_count(v2))
  {
    v3 = *(*(a1 + 32) + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 448);
        count = *(v5 + 400);
        if (count)
        {
          count = _nw_array_get_count(count);
        }

        *buf = 136446722;
        v27 = "nw_connection_cancel_probes_block_invoke";
        v28 = 1024;
        v29 = v6;
        v30 = 2048;
        v31 = count;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Waiting on %zu probes before cancelling", buf, 0x1Cu);
      }
    }

    v8 = _nw_array_create();
    v9 = *(a1 + 32);
    v10 = v9[50];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke_254;
    aBlock[3] = &unk_1E6A2EF90;
    v23 = v9;
    v11 = v8;
    v24 = v11;
    v25 = *(a1 + 40);
    if (v10)
    {
      _nw_array_apply(v10, aBlock);
    }

    if (v11 && _nw_array_get_count(v11))
    {
      v12 = *(*(a1 + 32) + 16);
      if (v12 && !_nw_parameters_get_logging_disabled(v12))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v27 = "nw_connection_cancel_probes_block_invoke";
          v28 = 1024;
          v29 = v14;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [C%u] Have probes to remove before cancel", buf, 0x12u);
        }
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke_255;
      v20[3] = &unk_1E6A3CCB8;
      v21 = *(a1 + 32);
      _nw_array_apply(v11, v20);
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 400);
    if (v16)
    {
      if (_nw_array_get_count(v16))
      {
LABEL_34:

        return;
      }

      v15 = *(a1 + 32);
    }

    v17 = *(v15 + 16);
    if (v17 && !_nw_parameters_get_logging_disabled(v17))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v27 = "nw_connection_cancel_probes_block_invoke_2";
        v28 = 1024;
        v29 = v19;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s [C%u] After removing invalid probes, no probes remain", buf, 0x12u);
      }
    }

    goto LABEL_34;
  }
}

void nw_connection_send_stats_report_on_nw_queue(void *a1)
{
  v217 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v202 = v1;
  if (!v1)
  {
    v132 = __nwlog_obj();
    LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
    *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
    v133 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s called with null connection", &buf, 12);

    v216[0] = 16;
    LOBYTE(v214) = 0;
    if (__nwlog_fault(v133, v216, &v214))
    {
      if (v216[0] == 17)
      {
        v134 = __nwlog_obj();
        v135 = v216[0];
        if (os_log_type_enabled(v134, v216[0]))
        {
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v134, v135, "%{public}s called with null connection", &buf, 0xCu);
        }
      }

      else if (v214 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v134 = __nwlog_obj();
        v168 = v216[0];
        v169 = os_log_type_enabled(v134, v216[0]);
        if (backtrace_string)
        {
          if (v169)
          {
            LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
            *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
            WORD2(buf.u.nw_connection_report.bytes_out) = 2082;
            *(&buf.u.nw_connection_report.bytes_out + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v134, v168, "%{public}s called with null connection, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_320;
        }

        if (v169)
        {
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v134, v168, "%{public}s called with null connection, no backtrace", &buf, 0xCu);
        }
      }

      else
      {
        v134 = __nwlog_obj();
        v187 = v216[0];
        if (os_log_type_enabled(v134, v216[0]))
        {
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v134, v187, "%{public}s called with null connection, backtrace limit exceeded", &buf, 0xCu);
        }
      }
    }

LABEL_320:
    v2 = 0;
    if (v133)
    {
      free(v133);
    }

    goto LABEL_250;
  }

  v2 = v1;
  nw_context_assert_queue(v1[3]);
  if ((*(v2 + 108) & 3) != 1 || !*(v2 + 26) || (*(v2 + 109) & 0x40) == 0 || nw_parameters_get_data_mode(v2[2]) != 2)
  {
LABEL_108:
    if (((*(v2 + 108) & 0xE4) != 0 || (*(v2 + 109) & 2) != 0) && (*(v2 + 108) & 8) == 0)
    {
      bzero(&buf, 0xD60uLL);
      v54 = v2[2];
      v55 = getpid();
      if (nw_parameters_has_delegated_proc_pid(v54, v55) || nw_parameters_has_delegated_proc_uuid(v2[2]))
      {
        buf.delegated = 1;
      }

      buf.legacy = 0;
      nw_connection_stats_fill_in_nw_report_on_nw_queue(v2, &buf);
      nw_connection_send_report_to_symptoms(v2, &buf, 0);
      *(v2 + 108) |= 8u;
      v56 = v2[2];
      if (v56 && !_nw_parameters_get_logging_disabled(v56))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v57 = gconnectionLogObj;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          v58 = *(v2 + 112);
          *v216 = 136446466;
          *&v216[4] = "nw_connection_send_stats_report_on_nw_queue";
          *&v216[12] = 1024;
          *&v216[14] = v58;
          _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Sent generic statistics report to symptoms", v216, 0x12u);
        }

        v2 = v202;
      }
    }

    v59 = v2;
    if (nw_connection_get_power_perf_services_stream_handle(void)::once != -1)
    {
      dispatch_once(&nw_connection_get_power_perf_services_stream_handle(void)::once, &__block_literal_global_110);
    }

    if (nw_connection_get_power_perf_services_stream_handle(void)::stream && !nw_parameters_get_logging_disabled(v59[2]))
    {
      v213 = 0;
      v214 = 0;
      v212 = 0;
      nw_connection_fillout_data_transfer_snapshot_on_nw_queue(v59, &v214, &v213, &v212, 0);
      v195 = nw_connection_copy_connected_local_endpoint(v59);
      v136 = nw_endpoint_copy_interface(v195);
      memset(&buf, 0, 80);
      memset(v216, 0, 80);
      v137 = v214;
      v138 = MEMORY[0x1E695E480];
      v197 = v136;
      if (v214)
      {
        v139 = *(v214 + 9);
        if (v139)
        {
          v140 = v139;
          v141 = log10(v139);
          v142 = __exp10((2 - vcvtpd_s64_f64(v141)));
          v139 = (round(v142 * v140) / v142);
        }

        valuePtr = v139;
        v143 = *(v137 + 48);
        if (v143)
        {
          v144 = v143;
          v145 = log10(v143);
          v146 = __exp10((2 - vcvtpd_s64_f64(v145)));
          v143 = (round(v146 * v144) / v146);
        }

        v210 = v143;
        v147 = *(v137 + 40);
        if (v147)
        {
          v148 = v147;
          v149 = log10(v147);
          v150 = __exp10((2 - vcvtpd_s64_f64(v149)));
          v147 = (round(v150 * v148) / v150);
        }

        v209 = v147;
        v151 = *(v137 + 8);
        if (v151)
        {
          v152 = v151;
          v153 = log10(v151);
          v154 = __exp10((2 - vcvtpd_s64_f64(v153)));
          v151 = (round(v154 * v152) / v154);
        }

        v208 = v151;
        v155 = *(v137 + 120);
        if (v155)
        {
          v156 = v155;
          v157 = log10(v155);
          v158 = __exp10((2 - vcvtpd_s64_f64(v157)));
          v155 = (round(v158 * v156) / v158);
        }

        v207 = v155;
        v159 = *v138;
        v160 = CFNumberCreate(*v138, kCFNumberSInt32Type, &valuePtr);
        buf.u.legacy.statistics_report.bytes_in = @"bytesSent";
        *v216 = v160;
        v204 = v160;
        v161 = CFNumberCreate(v159, kCFNumberSInt32Type, &v210);
        buf.u.legacy.statistics_report.bytes_out = @"bytesReceived";
        *&v216[8] = v161;
        v201 = v161;
        v162 = CFNumberCreate(v159, kCFNumberSInt32Type, &v209);
        buf.u.legacy.statistics_report.bytes_duplicate = @"packetsOut";
        *&v216[16] = v162;
        v163 = CFNumberCreate(v159, kCFNumberSInt32Type, &v208);
        buf.u.legacy.statistics_report.bytes_ooo = @"packetsIn";
        v199 = v163;
        *&v216[24] = v163;
        v164 = CFNumberCreate(v159, kCFNumberSInt32Type, &v207);
        v165 = &v216[40];
        p_ecn_capable_packets_sent = &buf.u.nw_connection_report.ecn_capable_packets_sent;
        buf.u.legacy.statistics_report.bytes_retransmitted = @"transportRTT";
        *&v216[32] = v164;
        v137 = 5;
      }

      else
      {
        v199 = 0;
        v201 = 0;
        v162 = 0;
        v164 = 0;
        v204 = 0;
        p_ecn_capable_packets_sent = &buf;
        v165 = v216;
      }

      if (nw_utilities_get_self_bundle_id::onceToken != -1)
      {
        dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
      }

      cfa = v162;
      if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
      {
        v170 = CFStringCreateWithCString(*v138, nw_utilities_get_self_bundle_id::bundle_identifier_string, 0x8000100u);
        p_ecn_capable_packets_sent->u.legacy.statistics_report.bytes_in = @"bundleID";
        *v165 = v170;
        ++v137;
      }

      else
      {
        v170 = 0;
      }

      if (v136)
      {
        name = _nw_interface_get_name(v136);
        valuePtr = _nw_interface_get_radio_type(v136);
        v172 = *v138;
        v173 = CFStringCreateWithCString(*v138, name, 0x8000100u);
        *(&buf.u.legacy.statistics_report.bytes_in + v137) = @"interfaceName";
        *&v216[8 * v137] = v173;
        v174 = CFNumberCreate(v172, kCFNumberSInt32Type, &valuePtr);
        v175 = 8 * v137 + 8;
        *(&buf.u.legacy.statistics_report.bytes_in + v175) = @"interfaceType";
        *&v216[v175] = v174;
        v137 += 2;
      }

      else
      {
        v174 = 0;
        v173 = 0;
        v172 = *v138;
      }

      v176 = CFNumberCreate(v172, kCFNumberSInt32Type, v59 + 56);
      *(&buf.u.legacy.statistics_report.bytes_in + v137) = @"connID";
      *&v216[8 * v137] = v176;
      v177 = v59[9];
      v178 = mach_continuous_time();
      if (v178 <= 1)
      {
        v179 = 1;
      }

      else
      {
        v179 = v178;
      }

      v180 = nw_delta_nanos(v177, v179);
      v181 = (v180 / 0xF4240);
      if (v180 > 0xF423FFFFFFFFFLL)
      {
        v181 = 0xFFFFFFFFLL;
      }

      if (v181)
      {
        v182 = v181;
        v183 = log10(v181);
        v184 = __exp10((2 - vcvtpd_s64_f64(v183)));
        v181 = (round(v184 * v182) / v184);
      }

      valuePtr = v181;
      v185 = CFNumberCreate(v172, kCFNumberSInt32Type, &valuePtr);
      *(&buf.u.legacy.statistics_report.bytes_out + v137) = @"duration";
      *&v216[8 * v137 + 8] = v185;
      CFDictionaryCreate(v172, &buf, v216, v137 + 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pps_send_telemetry_delayInitStub(v186);
      if (v212 == 1 && v214)
      {
        free(v214);
        v214 = 0;
      }

      if (v164)
      {
        CFRelease(v164);
      }

      if (cfa)
      {
        CFRelease(cfa);
      }

      if (v199)
      {
        CFRelease(v199);
      }

      if (v174)
      {
        CFRelease(v174);
      }

      if (v173)
      {
        CFRelease(v173);
      }

      if (v185)
      {
        CFRelease(v185);
      }

      if (v176)
      {
        CFRelease(v176);
      }

      if (v204)
      {
        CFRelease(v204);
      }

      if (v201)
      {
        CFRelease(v201);
      }

      if (v170)
      {
        CFRelease(v170);
      }
    }

    v60 = v59;
    nw_context_assert_queue(v202[3]);
    if (!nw_parameters_get_logging_disabled(v60->parameters))
    {
      v61 = nw_endpoint_handler_copy_connected_flow_handler(v60->parent_endpoint_handler);
      if (v61)
      {
        v62 = 0;
        LOWORD(v63) = 0;
        v203 = 0;
        v64 = 0;
        privacy_stance = v60->privacy_stance;
        cf = "?";
        do
        {
          v65 = v61;
          v66 = *(v65 + 116) == 2;

          if (v63)
          {
            v67 = 0;
          }

          else
          {
            v67 = v66;
          }

          if (v67)
          {
            v62 = nw_endpoint_handler_stack_uses_tls(v60->parent_endpoint_handler);
            v68 = v65;
            v69 = v68[4];

            if (v69)
            {
              ip_protocol = nw_parameters_get_ip_protocol(v69);
              v71 = "QUIC";
              if (nw_parameters_get_upper_transport_protocol(v69) != 253)
              {
                if (ip_protocol == 17)
                {
                  v71 = "UDP";
                }

                else
                {
                  v71 = cf;
                  if (ip_protocol == 6)
                  {
                    if (nw_connection_uses_multipath(v60))
                    {
                      v71 = "MPTCP";
                    }

                    else
                    {
                      v71 = "TCP";
                    }
                  }
                }
              }
            }

            else
            {
              v71 = cf;
            }

            v63 = (v65 >> 16) ^ HIDWORD(v65) ^ HIWORD(v65) ^ v65;
            cf = v71;
          }

          v72 = v65;
          v73 = *(v65 + 116) == 1;

          if (v73)
          {
            v74 = nw_endpoint_handler_copy_endpoint(v72);
            type = nw_endpoint_get_type(v74);

            if (type != nw_endpoint_type_host || v203)
            {
              v76 = (WORD2(v72) ^ WORD1(v72) ^ HIWORD(v72) ^ v72);
              if (v64)
              {
                v76 = v64;
              }

              if (type == nw_endpoint_type_bonjour_service)
              {
                v64 = v76;
              }
            }

            else
            {
              v203 = (WORD2(v72) ^ WORD1(v72) ^ HIWORD(v72) ^ v72);
            }
          }

          v77 = v72;
          v61 = v77[9];
        }

        while (v61);
        used_timestamps = v60->used_timestamps;
        if (v60->used_timestamps)
        {
          v79 = 0;
          v80 = 0;
          v200 = -1;
          v81 = 0xFFFFFFFFLL;
          LODWORD(v198) = -1;
          v194 = -1;
          LODWORD(v196) = -1;
          while (1)
          {
            v82 = v81;
            timestamps = v60->timestamps;
            v84 = (timestamps + v79);
            v85 = *(&timestamps->var1.domain + v79);
            if (v85 == 3)
            {
              break;
            }

            if (v85 == 2)
            {
              v86 = v60;
              nw_context_assert_queue(v202[3]);
              v87 = *(&timestamps->var1.event + v79);
              if (v87 <= 2)
              {
                if (v87 == 1)
                {
                  if (v203)
                  {
                    if (*(&timestamps->var2.var0.var0 + v79) != v203)
                    {
                      goto LABEL_207;
                    }
                  }

                  else
                  {
                    v203 = *(&timestamps->var2.var0.var0 + v79);
                  }

                  v99 = nw_delta_nanos(v60->start_time, *v84);
                  if (v99 > 0xF423FFFFFFFFFLL)
                  {
                    v81 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v81 = (v99 / 0xF4240);
                  }

LABEL_208:

                  used_timestamps = v60->used_timestamps;
                  goto LABEL_153;
                }

                if (v87 != 2)
                {
                  goto LABEL_207;
                }

                if (*(&timestamps->var2.var0.var0 + v79) != v203 || v198 != -1)
                {
                  goto LABEL_207;
                }

                if (v82 == -1)
                {
                  LODWORD(v198) = -1;
                  v81 = 0xFFFFFFFFLL;
                  goto LABEL_208;
                }

                v89 = nw_delta_nanos(v60->start_time, *v84);
                v90 = v89 / 0xF4240;
                if (v89 > 0xF423FFFFFFFFFLL)
                {
                  LODWORD(v90) = -1;
                }

                v198 = (v90 - v82);
                v81 = v82;
                if (v90 >= v82)
                {
                  goto LABEL_208;
                }

                if (gLogDatapath != 1)
                {
                  LODWORD(v198) = 0;
                  goto LABEL_208;
                }

                v100 = __nwlog_obj();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446978;
                  *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_log_summary_resolver_on_nw_queue";
                  WORD2(buf.u.nw_connection_report.bytes_out) = 2082;
                  *(&buf.u.nw_connection_report.bytes_out + 6) = "dns->receive";
                  HIWORD(buf.u.nw_connection_report.bytes_duplicate) = 2048;
                  buf.u.legacy.statistics_report.bytes_ooo = v82;
                  LOWORD(buf.u.nw_connection_report.bytes_retransmitted) = 2048;
                  *(&buf.u.nw_connection_report.bytes_retransmitted + 2) = v198;
                  _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &buf, 0x2Au);
                }

                LODWORD(v198) = 0;
LABEL_215:

                goto LABEL_208;
              }

              if (v87 != 4)
              {
                if (v87 != 3)
                {
                  goto LABEL_207;
                }

                if (v64)
                {
                  if (*(&timestamps->var2.var0.var0 + v79) != v64)
                  {
                    goto LABEL_207;
                  }
                }

                else
                {
                  v64 = *(&timestamps->var2.var0.var0 + v79);
                }

                v97 = nw_delta_nanos(v60->start_time, *v84);
                v98 = v97 / 0xF4240;
                if (v97 > 0xF423FFFFFFFFFLL)
                {
                  LODWORD(v98) = -1;
                }

LABEL_206:
                v194 = v98;
                goto LABEL_207;
              }

              if (*(&timestamps->var2.var0.var0 + v79) == v64 && v196 == -1)
              {
                if (v194 == -1)
                {
                  LODWORD(v196) = -1;
                  LODWORD(v98) = -1;
                  goto LABEL_206;
                }

                v93 = nw_delta_nanos(v60->start_time, *v84);
                v94 = v93 / 0xF4240;
                if (v93 > 0xF423FFFFFFFFFLL)
                {
                  LODWORD(v94) = -1;
                }

                v196 = v94 - v194;
                if (v94 < v194)
                {
                  v81 = v82;
                  if (gLogDatapath != 1)
                  {
                    LODWORD(v196) = 0;
                    goto LABEL_208;
                  }

                  v100 = __nwlog_obj();
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446978;
                    *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_log_summary_resolver_on_nw_queue";
                    WORD2(buf.u.nw_connection_report.bytes_out) = 2082;
                    *(&buf.u.nw_connection_report.bytes_out + 6) = "bonjour->receive";
                    HIWORD(buf.u.nw_connection_report.bytes_duplicate) = 2048;
                    buf.u.legacy.statistics_report.bytes_ooo = v194;
                    LOWORD(buf.u.nw_connection_report.bytes_retransmitted) = 2048;
                    *(&buf.u.nw_connection_report.bytes_retransmitted + 2) = v196;
                    _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &buf, 0x2Au);
                  }

                  LODWORD(v196) = 0;
                  goto LABEL_215;
                }
              }

LABEL_207:
              v81 = v82;
              goto LABEL_208;
            }

            v81 = v82;
LABEL_153:
            ++v80;
            v79 += 16;
            if (v80 >= used_timestamps)
            {
              goto LABEL_222;
            }
          }

          v91 = v60;
          nw_context_assert_queue(v202[3]);
          if (*(&timestamps->var1.event + v79) != 3)
          {
            goto LABEL_207;
          }

          if (v63)
          {
            if (*(&timestamps->var2.var0.var0 + v79) != v63)
            {
              goto LABEL_207;
            }
          }

          else
          {
            LOWORD(v63) = *(&timestamps->var2.var0.var0 + v79);
          }

          v95 = nw_delta_nanos(v60->start_time, *v84);
          v96 = v95 / 0xF4240;
          if (v95 > 0xF423FFFFFFFFFLL)
          {
            LODWORD(v96) = -1;
          }

          v200 = v96;
          goto LABEL_207;
        }

        v194 = -1;
        LODWORD(v196) = -1;
        LODWORD(v198) = -1;
        LODWORD(v81) = -1;
        v200 = -1;
LABEL_222:
        if (v63)
        {
          transport_connect_milliseconds = nw_connection_get_transport_connect_milliseconds(v60, v63, 0);
          if (v62)
          {
            v107 = nw_connection_copy_establishment_report_on_queue(v60);
            if (v107)
            {
              v108 = nw_protocol_boringssl_copy_definition();
              Helper_x8__nwswifttls_copy_definition = gotLoadHelper_x8__nwswifttls_copy_definition(v109);
              if (*(v111 + 2224))
              {
                v112 = v81;
                inited = nwswifttls_copy_definition_delayInitStub(Helper_x8__nwswifttls_copy_definition);
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v114 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
                  *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_protocol_copy_swift_tls_definition_if_present";
                  WORD2(buf.u.nw_connection_report.bytes_out) = 2048;
                  *(&buf.u.nw_connection_report.bytes_out + 6) = inited;
                  _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS protocol definition %p", &buf, 0x16u);
                }

                LODWORD(v81) = v112;
              }

              else
              {
                inited = 0;
              }

              handshake_ms_for_protocol = nw_establishment_report_get_handshake_ms_for_protocol(v107, v108, inited);
            }

            else
            {
              handshake_ms_for_protocol = -1;
            }
          }

          else
          {
            handshake_ms_for_protocol = -1;
          }
        }

        else
        {
          handshake_ms_for_protocol = -1;
          transport_connect_milliseconds = -1;
        }

        v213 = 0;
        v214 = 0;
        LOBYTE(valuePtr) = 0;
        nw_connection_fillout_data_transfer_snapshot_on_nw_queue(v60, &v214, &v213, &valuePtr, 0);
        v116 = nw_endpoint_handler_copy_connected_flow_handler(v60->parent_endpoint_handler);
        *v216 = 0;
        *&v216[8] = 0;
        v117 = v116;
        v192 = v116;
        nw_endpoint_handler_get_client_id(v116, v216);
        v190 = nw_endpoint_handler_copy_connected_path(v117);
        tls_version = nw_connection_get_tls_version(v60, 0);
        v189 = nw_connection_copy_connected_local_endpoint(v60);
        v119 = transport_connect_milliseconds;
        v120 = v81;
        v121 = nw_connection_copy_connected_remote_endpoint(v60);
        start_time = v60->start_time;
        v123 = mach_continuous_time();
        if (v123 <= 1)
        {
          v124 = 1;
        }

        else
        {
          v124 = v123;
        }

        v125 = nw_delta_nanos(start_time, v124);
        if (v125 > 0xF423FFFFFFFFFLL)
        {
          v126 = -1;
        }

        else
        {
          v126 = v125 / 0xF4240;
        }

        buf.u.legacy.statistics_report.bytes_in = MEMORY[0x1E69E9820];
        buf.u.legacy.statistics_report.bytes_out = 3221225472;
        buf.u.legacy.statistics_report.bytes_duplicate = ___ZL37nw_connection_log_summary_on_nw_queueP24NWConcrete_nw_connection_block_invoke;
        buf.u.legacy.statistics_report.bytes_ooo = &unk_1E6A3BA38;
        buf.u.legacy.statistics_report.multipath_bytes_in_wifi = __PAIR64__(v196, v194);
        LODWORD(buf.u.nw_connection_report.packets_out) = v64;
        BYTE4(buf.u.nw_connection_report.multipath_bytes_in_initial) = v62 & 1;
        HIDWORD(buf.u.nw_connection_report.packets_out) = tls_version;
        buf.u.legacy.statistics_report.packets_retransmitted = v214;
        v127 = v60;
        buf.u.legacy.statistics_report.bytes_retransmitted = v127;
        v128 = v192;
        buf.u.legacy.statistics_report.packets_in = v128;
        buf.u.legacy.statistics_report.multipath_bytes_in_cell = v216;
        v129 = v189;
        buf.u.legacy.statistics_report.packets_out = v129;
        v130 = v121;
        buf.u.legacy.statistics_report.packets_duplicate = v130;
        v131 = v190;
        buf.u.legacy.statistics_report.multipath_bytes_in_initial = __PAIR64__(v120, v126);
        LODWORD(buf.u.nw_connection_report.multipath_bytes_out_cell) = v198;
        HIDWORD(buf.u.nw_connection_report.multipath_bytes_out_cell) = v203;
        buf.u.legacy.statistics_report.packets_ooo = v131;
        buf.u.legacy.statistics_report.multipath_bytes_out_cell = cf;
        buf.u.nw_connection_report.multipath_bytes_in_wifi = __PAIR64__(v119, v200);
        buf.u.legacy.statistics_report.dns_resolved_time_msecs = handshake_ms_for_protocol;
        buf.u.legacy.statistics_report.time_to_connection_start_msecs = v63;
        buf.u.legacy.statistics_report.time_to_connection_establishment_msecs = privacy_stance;
        nw_connection_access_parameters_description_locked(v127, &buf);
        if (valuePtr == 1 && v214)
        {
          free(v214);
          v214 = 0;
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v101 = gconnectionLogObj;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          top_id = v60->top_id;
          v103 = v60->endpoint;
          v104 = v103;
          if (v103)
          {
            logging_description = _nw_endpoint_get_logging_description(v103);
          }

          else
          {
            logging_description = "<NULL>";
          }

          parameters_description = v60->parameters_description;
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 67109634;
          HIDWORD(buf.u.nw_connection_report.bytes_in) = top_id;
          LOWORD(buf.u.nw_connection_report.bytes_out) = 2082;
          *(&buf.u.nw_connection_report.bytes_out + 2) = logging_description;
          WORD1(buf.u.nw_connection_report.bytes_duplicate) = 2082;
          *(&buf.u.nw_connection_report.bytes_duplicate + 4) = parameters_description;
          _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEFAULT, "[C%u %{public}s %{public}s] cancelled", &buf, 0x1Cu);
        }
      }
    }

    goto LABEL_249;
  }

  v3 = v2[12];
  v4 = v2[2];
  if (v3)
  {
    v5 = getpid();
    if (nw_parameters_has_delegated_proc_pid(v4, v5) || nw_parameters_has_delegated_proc_uuid(v2[2]))
    {
      *(v3 + 3416) = 1;
    }

    *(v3 + 3408) = *(v2 + 26);
    v6 = nw_endpoint_handler_copy_connected_flow_handler(v2[18]);
    if (v6)
    {
      nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue(v2, v6, v3);
    }

    *(v3 + 1672) = (*(v3 + 208) & 4) != 0;
    v7 = v2;
    *v216 = 0;
    event_milliseconds = nw_connection_get_event_milliseconds(v7, 5, 1, v216, 0);
    v9 = nw_connection_get_event_milliseconds(v7, 5, 2, v216, 0);
    LODWORD(v10) = 0;
    if (event_milliseconds != -1 && v9 != -1)
    {
      v10 = v9 - event_milliseconds;
      if (v9 < event_milliseconds)
      {
        if (gLogDatapath == 1)
        {
          v188 = __nwlog_obj();
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446978;
            *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_get_fallback_margin_start_milliseconds";
            WORD2(buf.u.nw_connection_report.bytes_out) = 2082;
            *(&buf.u.nw_connection_report.bytes_out + 6) = "fallback_start";
            HIWORD(buf.u.nw_connection_report.bytes_duplicate) = 2048;
            buf.u.legacy.statistics_report.bytes_ooo = event_milliseconds;
            LOWORD(buf.u.nw_connection_report.bytes_retransmitted) = 2048;
            *(&buf.u.nw_connection_report.bytes_retransmitted + 2) = v10;
            _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &buf, 0x2Au);
          }
        }

        LODWORD(v10) = 0;
      }
    }

    *(v3 + 1668) = v10;
    v11 = *(v3 + 32);
    v12 = 0.0;
    v13 = 0.0;
    if (v11)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v13 = (v11 / (100 * v14));
      }
    }

    v15 = *(v3 + 16);
    if (v15 && *v3)
    {
      v12 = (v15 / (100 * *v3));
    }

    v16 = v202[2];
    if (v16 && !_nw_parameters_get_logging_disabled(v16))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = v7->top_id;
        LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446978;
        *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
        WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
        *(&buf.u.nw_connection_report.bytes_out + 6) = v18;
        WORD1(buf.u.nw_connection_report.bytes_duplicate) = 2048;
        *(&buf.u.nw_connection_report.bytes_duplicate + 4) = v13;
        WORD2(buf.u.nw_connection_report.bytes_ooo) = 2048;
        *(&buf.u.nw_connection_report.bytes_ooo + 6) = v12;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Retransmission rate: %.2f%%, duplicate rate: %.2f%%", &buf, 0x26u);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
    }

    else
    {
      v26 = gLogFDOverride == -1;

      if (v26)
      {
LABEL_96:
        *(v3 + 3417) = 1;
        if (!*(v3 + 204) || *(v202 + 26) != 2 || *(v3 + 88) || *(v3 + 80))
        {
          nw_connection_send_report_to_symptoms(v7, v3, 1);
          *(v202 + 108) |= 2u;
          v51 = v202[2];
          if (v51)
          {
            if (!_nw_parameters_get_logging_disabled(v51))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v52 = gconnectionLogObj;
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = v7->top_id;
                LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
                *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
                WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
                *(&buf.u.nw_connection_report.bytes_out + 6) = v53;
                _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Sent statistics report to symptoms", &buf, 0x12u);
              }
            }
          }
        }

        v2 = v202;
        goto LABEL_108;
      }
    }

    v27 = netcore_stats_tcp_report_copy_description(v3);
    if (v27)
    {
      v28 = v27;
      v29 = v202[2];
      if (v29 && !_nw_parameters_get_logging_disabled(v29))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v30 = gconnectionLogObj;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = v7->top_id;
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446722;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
          *(&buf.u.nw_connection_report.bytes_out + 6) = v31;
          WORD1(buf.u.nw_connection_report.bytes_duplicate) = 2082;
          *(&buf.u.nw_connection_report.bytes_duplicate + 4) = v28;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Generated report: %{public}s", &buf, 0x1Cu);
        }
      }

      goto LABEL_88;
    }

    v32 = __nwlog_obj();
    LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
    *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s netcore_stats_tcp_report_copy_description failed", &buf, 12);

    v216[0] = 16;
    LOBYTE(v214) = 0;
    if (__nwlog_fault(v28, v216, &v214))
    {
      if (v216[0] == 17)
      {
        v33 = __nwlog_obj();
        v34 = v216[0];
        if (os_log_type_enabled(v33, v216[0]))
        {
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s netcore_stats_tcp_report_copy_description failed", &buf, 0xCu);
        }

LABEL_86:

        goto LABEL_87;
      }

      if (v214 != 1)
      {
        v33 = __nwlog_obj();
        v45 = v216[0];
        if (os_log_type_enabled(v33, v216[0]))
        {
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v33, v45, "%{public}s netcore_stats_tcp_report_copy_description failed, backtrace limit exceeded", &buf, 0xCu);
        }

        goto LABEL_86;
      }

      v40 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v41 = v216[0];
      v42 = os_log_type_enabled(v33, v216[0]);
      if (!v40)
      {
        if (v42)
        {
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446210;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v33, v41, "%{public}s netcore_stats_tcp_report_copy_description failed, no backtrace", &buf, 0xCu);
        }

        goto LABEL_86;
      }

      if (v42)
      {
        LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
        *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
        WORD2(buf.u.nw_connection_report.bytes_out) = 2082;
        *(&buf.u.nw_connection_report.bytes_out + 6) = v40;
        _os_log_impl(&dword_181A37000, v33, v41, "%{public}s netcore_stats_tcp_report_copy_description failed, dumping backtrace:%{public}s", &buf, 0x16u);
      }

      free(v40);
    }

LABEL_87:
    if (!v28)
    {
LABEL_89:
      v48 = v202[2];
      if (v48 && !_nw_parameters_get_logging_disabled(v48))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v49 = gconnectionLogObj;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v50 = v7->top_id;
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
          *(&buf.u.nw_connection_report.bytes_out + 6) = v50;
          _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] End of report", &buf, 0x12u);
        }
      }

      goto LABEL_96;
    }

LABEL_88:
    free(v28);
    goto LABEL_89;
  }

  if (v4 && !_nw_parameters_get_logging_disabled(v2[2]))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    v21 = *(v202 + 112);
    LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
    *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
    WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
    *(&buf.u.nw_connection_report.bytes_out + 6) = v21;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s [C%u] Unexpected NULL stats report", &buf, 18);

    v216[0] = 16;
    LOBYTE(v214) = 0;
    if (!__nwlog_fault(v22, v216, &v214))
    {
      goto LABEL_82;
    }

    if (v216[0] == 17)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v24 = v216[0];
      if (os_log_type_enabled(v23, v216[0]))
      {
        v25 = *(v202 + 112);
        LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
        *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
        WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
        *(&buf.u.nw_connection_report.bytes_out + 6) = v25;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [C%u] Unexpected NULL stats report", &buf, 0x12u);
      }
    }

    else if (v214 == 1)
    {
      v35 = __nw_create_backtrace_string();
      if (v35)
      {
        v36 = v35;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v37 = gconnectionLogObj;
        v38 = v216[0];
        if (os_log_type_enabled(v37, v216[0]))
        {
          v39 = *(v202 + 112);
          LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446722;
          *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
          WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
          *(&buf.u.nw_connection_report.bytes_out + 6) = v39;
          WORD1(buf.u.nw_connection_report.bytes_duplicate) = 2082;
          *(&buf.u.nw_connection_report.bytes_duplicate + 4) = v36;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s [C%u] Unexpected NULL stats report, dumping backtrace:%{public}s", &buf, 0x1Cu);
        }

        free(v36);
        goto LABEL_82;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v46 = v216[0];
      if (os_log_type_enabled(v23, v216[0]))
      {
        v47 = *(v202 + 112);
        LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
        *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
        WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
        *(&buf.u.nw_connection_report.bytes_out + 6) = v47;
        _os_log_impl(&dword_181A37000, v23, v46, "%{public}s [C%u] Unexpected NULL stats report, no backtrace", &buf, 0x12u);
      }
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v43 = v216[0];
      if (os_log_type_enabled(v23, v216[0]))
      {
        v44 = *(v202 + 112);
        LODWORD(buf.u.legacy.statistics_report.bytes_in) = 136446466;
        *(&buf.u.nw_connection_report.bytes_in + 4) = "nw_connection_send_stats_report_on_nw_queue";
        WORD2(buf.u.nw_connection_report.bytes_out) = 1024;
        *(&buf.u.nw_connection_report.bytes_out + 6) = v44;
        _os_log_impl(&dword_181A37000, v23, v43, "%{public}s [C%u] Unexpected NULL stats report, backtrace limit exceeded", &buf, 0x12u);
      }
    }

LABEL_82:
    if (v22)
    {
      free(v22);
    }

LABEL_249:
    v2 = v202;
  }

LABEL_250:
}

void sub_181C26A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, CFTypeRef a21, CFTypeRef a22, void *a23, CFTypeRef a24, CFTypeRef cf, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (v42)
  {
    CFRelease(v42);
    if (!cf)
    {
LABEL_3:
      if (!a21)
      {
        goto LABEL_4;
      }

LABEL_13:
      CFRelease(a21);
LABEL_4:
      if (v43)
      {
        CFRelease(v43);
      }

      if (a24)
      {
        CFRelease(a24);
        if (!a22)
        {
LABEL_8:
          if (!v44)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      else if (!a22)
      {
        goto LABEL_8;
      }

      CFRelease(a22);
      if (!v44)
      {
LABEL_10:

        _Unwind_Resume(a1);
      }

LABEL_9:
      CFRelease(v44);
      goto LABEL_10;
    }
  }

  else if (!cf)
  {
    goto LABEL_3;
  }

  CFRelease(cf);
  if (!a21)
  {
    goto LABEL_4;
  }

  goto LABEL_13;
}

void nw_read_request_report_error_with_override(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    while (v5)
    {
      v8 = v5;
      objc_storeStrong(v8 + 19, a3);
      nw_read_request_report(v8, v6);
      v5 = nw_read_request_list_remove_head(v8);
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_read_request_report_error_with_override";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null error", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_read_request_report_error_with_override";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null error", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_read_request_report_error_with_override";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null error, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_read_request_report_error_with_override";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null error, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_read_request_report_error_with_override";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null error, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

void nw_write_request_report_error_with_override(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    while (v5)
    {
      v8 = v5;
      nw_write_request_report(v8, v6, v7);
      v5 = nw_write_request_list_remove_head(v8);
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_write_request_report_error_with_override";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null error", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_write_request_report_error_with_override";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null error", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_write_request_report_error_with_override";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null error, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_write_request_report_error_with_override";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null error, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_write_request_report_error_with_override";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null error, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

void nw_endpoint_flow_cleanup_protocol(void *a1, uint64_t a2, int a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = *(a2 + 176);
  *(a2 + 176) = 0;

  v6 = *(a2 + 248);
  *(a2 + 248) = 0;

  v7 = *(a2 + 232);
  *(a2 + 232) = 0;

  v8 = *(a2 + 240);
  *(a2 + 240) = 0;

  v9 = *(a2 + 224);
  *(a2 + 224) = 0;

  *(a2 + 332) &= ~2u;
  v10 = *(a2 + 256);
  *(a2 + 256) = 0;

  v11 = *(a2 + 264);
  *(a2 + 264) = 0;

  *(a2 + 332) &= 0xFD2Fu;
  v12 = *(a2 + 272);
  if (v12)
  {
    v12[5] = &v82;
    v13 = *(a2 + 280);
    v82 = v12;
    v83 = v13;
    *(a2 + 272) = 0;
    *(a2 + 280) = a2 + 272;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v85 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v86) = 0;
    do
    {
      v14 = v82;
      if (!v82)
      {
        break;
      }

      v15 = v82[4];
      v16 = v82[5];
      v17 = (v15 + 40);
      if (!v15)
      {
        v17 = &v83;
      }

      *v17 = v16;
      *v16 = v15;
      v14[4] = 0;
      v14[5] = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v18 = *(a2 + 288);
  if (v18)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __nw_endpoint_flow_cleanup_protocol_block_invoke;
    v81[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
    v81[4] = a2;
    nw_hash_table_apply(v18, v81);
    v19 = *(a2 + 288);
    if (v19)
    {
      _nw_hash_table_release(v19);
      *(a2 + 288) = 0;
    }
  }

  *(a2 + 332) &= ~0x800u;
  v20 = *(a2 + 296);
  if (v20)
  {
    v20[3] = &v82;
    v21 = *(a2 + 304);
    v82 = v20;
    v83 = v21;
    *(a2 + 296) = 0;
    *(a2 + 304) = a2 + 296;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v85 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v86) = 0;
    do
    {
      v22 = v82;
      if (!v82)
      {
        break;
      }

      v23 = v82[2];
      v24 = v82[3];
      v25 = (v23 + 24);
      if (!v23)
      {
        v25 = &v83;
      }

      *v25 = v24;
      *v24 = v23;
      v22[2] = 0;
      v22[3] = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v26 = v4;
  if (!v4)
  {
    v26 = *(a2 + 160);
    if (!v26)
    {
      v80 = 0;
      goto LABEL_26;
    }
  }

  v80 = v26;
  v27 = nw_endpoint_handler_copy_flow(v26);
  if (!v27 || (*(v27 + 33) & 8) != 0)
  {

    goto LABEL_26;
  }

  v28 = (*(v27 + 32) & 1) == 0;

  if (v28)
  {
LABEL_26:
    v38 = *(a2 + 216);
    v39 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
    nw_read_request_report_error_with_override(v38, 0, v39);

    v40 = *(a2 + 216);
    *(a2 + 216) = 0;

    v41 = *(a2 + 200);
    v42 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
    nw_write_request_report_error_with_override(v41, 0, v42);

    v43 = *(a2 + 200);
    *(a2 + 200) = 0;

    v44 = *(a2 + 208);
    v45 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
    nw_write_request_report_error_with_override(v44, 0, v45);

    v46 = *(a2 + 208);
    *(a2 + 208) = 0;

    v47 = *(a2 + 192);
    v48 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
    nw_write_request_report_error_with_override(v47, 0, v48);

    v49 = *(a2 + 192);
    *(a2 + 192) = 0;
LABEL_27:

    goto LABEL_28;
  }

  v29 = *(a2 + 200);
  v30 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
  nw_write_request_report_error_with_override(v29, 0, v30);

  v31 = *(a2 + 208);
  if (v31)
  {
    v32 = v31;
    v33 = nw_write_request_create_clone(v32);
    v34 = nw_write_request_list_append(0, v33);

    v35 = v32[1];
    if (v35)
    {
      do
      {
        v36 = nw_write_request_create_clone(v35);
        v37 = nw_write_request_list_append(v34, v36);

        v35 = v35[1];
        v34 = v37;
      }

      while (v35);
    }

    else
    {
      v37 = v34;
    }

    v49 = *(a2 + 200);
    *(a2 + 200) = v37;
    goto LABEL_27;
  }

LABEL_28:
  v50 = *(a2 + 312);
  *(a2 + 312) = 0;

  v51 = *(a2 + 320);
  *(a2 + 320) = 0;

  v52 = *(a2 + 72);
  if (v52)
  {
    v53 = *(v52 + 24);
    if (v53)
    {
      v54 = *(v53 + 240);
      if (v54)
      {
        if ((v54(*(a2 + 72), a2 + 64) & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(*(a2 + 160)) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v55 = gconnectionLogObj;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            id_string = nw_endpoint_handler_get_id_string(*(a2 + 160));
            v57 = nw_endpoint_handler_dry_run_string(*(a2 + 160));
            v58 = nw_endpoint_handler_copy_endpoint(*(a2 + 160));
            v59 = v58;
            if (v58)
            {
              logging_description = _nw_endpoint_get_logging_description(v58);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v61 = nw_endpoint_handler_state_string(*(a2 + 160));
            v62 = nw_endpoint_handler_mode_string(*(a2 + 160));
            v63 = nw_endpoint_handler_copy_current_path(*(a2 + 160));
            v64 = *(v52 + 16);
            *buf = 136448002;
            *&buf[4] = "nw_endpoint_flow_cleanup_protocol";
            *&buf[12] = 2082;
            *&buf[14] = id_string;
            *&buf[22] = 2082;
            v85 = v57;
            v86 = 2082;
            v87 = logging_description;
            v88 = 2082;
            v89 = v61;
            v90 = 2082;
            v91 = v62;
            v92 = 2114;
            v93 = v63;
            v94 = 2082;
            v95 = v64;
            _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to remove listen handler %{public}s", buf, 0x52u);
          }
        }
      }
    }
  }

  if (a3)
  {
    v65 = *(a2 + 32);
    if (v65)
    {
      v66 = *(v65 + 24);
      if (v66)
      {
        v67 = *(v66 + 8);
        if (v67)
        {
          if ((v67() & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(*(a2 + 160)) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v68 = gconnectionLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = nw_endpoint_handler_get_id_string(*(a2 + 160));
              v70 = nw_endpoint_handler_dry_run_string(*(a2 + 160));
              v71 = nw_endpoint_handler_copy_endpoint(*(a2 + 160));
              v72 = v71;
              if (v71)
              {
                v73 = _nw_endpoint_get_logging_description(v71);
              }

              else
              {
                v73 = "<NULL>";
              }

              v74 = nw_endpoint_handler_state_string(*(a2 + 160));
              v75 = nw_endpoint_handler_mode_string(*(a2 + 160));
              v76 = nw_endpoint_handler_copy_current_path(*(a2 + 160));
              v77 = *(a2 + 16);
              *buf = 136448002;
              *&buf[4] = "nw_endpoint_flow_cleanup_protocol";
              *&buf[12] = 2082;
              *&buf[14] = v69;
              *&buf[22] = 2082;
              v85 = v70;
              v86 = 2082;
              v87 = v73;
              v88 = 2082;
              v89 = v74;
              v90 = 2082;
              v91 = v75;
              v92 = 2114;
              v93 = v76;
              v94 = 2082;
              v95 = v77;
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to remove protocol %{public}s", buf, 0x52u);
            }
          }
        }
      }
    }

    v78 = *(a2 + 160);
    *(a2 + 160) = 0;
  }
}

void nw_endpoint_handler_cancel_read_write_requests(void *a1, void *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_endpoint_handler_cancel_read_write_requests";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (!__nwlog_fault(v18, &type, &v60))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v63 = "nw_endpoint_handler_cancel_read_write_requests";
        _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else
    {
      if (v60 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v48 = type;
        v49 = os_log_type_enabled(v19, type);
        if (!backtrace_string)
        {
          if (v49)
          {
            *buf = 136446210;
            v63 = "nw_endpoint_handler_cancel_read_write_requests";
            _os_log_impl(&dword_181A37000, v19, v48, "%{public}s called with null handler, no backtrace", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v49)
        {
          *buf = 136446466;
          v63 = "nw_endpoint_handler_cancel_read_write_requests";
          v64 = 2082;
          v65 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v48, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_47:
        if (!v18)
        {
          goto LABEL_49;
        }

LABEL_48:
        free(v18);
        goto LABEL_49;
      }

      v41 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v63 = "nw_endpoint_handler_cancel_read_write_requests";
        _os_log_impl(&dword_181A37000, v41, v50, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_47;
  }

  mode = v3->mode;
  if (mode == 2)
  {
    v6 = nw_endpoint_handler_copy_flow(v3);
    if (v6)
    {
      v7 = v3;
      v59 = v6;
      v8 = v6;
      v9 = v4;
      if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v57 = v4;
          v58 = v3;
          id_string = nw_endpoint_handler_get_id_string(v7);
          v12 = nw_endpoint_handler_dry_run_string(v7);
          v13 = nw_endpoint_handler_copy_endpoint(v7);
          v14 = v13;
          v56 = v9;
          if (v13)
          {
            logging_description = _nw_endpoint_get_logging_description(v13);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v28 = nw_endpoint_handler_state_string(v7);
          v29 = nw_endpoint_handler_mode_string(v7);
          v30 = nw_endpoint_handler_copy_current_path(v7);
          *buf = 136447746;
          v63 = "nw_flow_cancel_read_write_requests";
          v64 = 2082;
          v65 = id_string;
          v66 = 2082;
          v67 = v12;
          v68 = 2082;
          v69 = logging_description;
          v70 = 2082;
          v71 = v28;
          v72 = 2082;
          v73 = v29;
          v74 = 2114;
          v75 = v30;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] cancelling read/write requests", buf, 0x48u);

          v4 = v57;
          v3 = v58;
          v9 = v56;
        }
      }

      v31 = v8[74];
      v32 = v8[74];
      v8[74] = 0;

      v33 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
      nw_read_request_report_error_with_override(v31, v9, v33);

      v34 = v8[71];
      v35 = v8[71];
      v8[71] = 0;

      v36 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
      nw_write_request_report_error_with_override(v34, v9, v36);

      v37 = v8[86];
      v8[86] = 0;

      v38 = v59;
LABEL_30:

      goto LABEL_49;
    }

    v38 = 0;
    v43 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_endpoint_handler_cancel_read_write_requests";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (__nwlog_fault(v44, &type, &v60))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v63 = "nw_endpoint_handler_cancel_read_write_requests";
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else
      {
        if (v60 == 1)
        {
          v51 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = type;
          v54 = os_log_type_enabled(v52, type);
          if (v51)
          {
            if (v54)
            {
              *buf = 136446466;
              v63 = "nw_endpoint_handler_cancel_read_write_requests";
              v64 = 2082;
              v65 = v51;
              _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v51);
          }

          else
          {
            if (v54)
            {
              *buf = 136446210;
              v63 = "nw_endpoint_handler_cancel_read_write_requests";
              _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_82;
        }

        v45 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v63 = "nw_endpoint_handler_cancel_read_write_requests";
          _os_log_impl(&dword_181A37000, v45, v55, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_82:
    if (v44)
    {
      free(v44);
    }

    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  if (mode > 5)
  {
    v17 = "unknown-mode";
  }

  else
  {
    v17 = off_1E6A30FE8[mode];
  }

  *buf = 136446722;
  v63 = "nw_endpoint_handler_cancel_read_write_requests";
  v64 = 2082;
  v65 = v17;
  v66 = 2082;
  v67 = "flow";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v60 = 0;
  if (!__nwlog_fault(v18, &type, &v60))
  {
    goto LABEL_47;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v19, type))
    {
      if (mode > 5)
      {
        v21 = "unknown-mode";
      }

      else
      {
        v21 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v63 = "nw_endpoint_handler_cancel_read_write_requests";
      v64 = 2082;
      v65 = v21;
      v66 = 2082;
      v67 = "flow";
      _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v60 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v26 = type;
    if (os_log_type_enabled(v19, type))
    {
      if (mode > 5)
      {
        v27 = "unknown-mode";
      }

      else
      {
        v27 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v63 = "nw_endpoint_handler_cancel_read_write_requests";
      v64 = 2082;
      v65 = v27;
      v66 = 2082;
      v67 = "flow";
      _os_log_impl(&dword_181A37000, v19, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_46;
  }

  v22 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v23 = type;
  v24 = os_log_type_enabled(v19, type);
  if (!v22)
  {
    if (v24)
    {
      if (mode > 5)
      {
        v39 = "unknown-mode";
      }

      else
      {
        v39 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v63 = "nw_endpoint_handler_cancel_read_write_requests";
      v64 = 2082;
      v65 = v39;
      v66 = 2082;
      v67 = "flow";
      _os_log_impl(&dword_181A37000, v19, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_46;
  }

  if (v24)
  {
    if (mode > 5)
    {
      v25 = "unknown-mode";
    }

    else
    {
      v25 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v63 = "nw_endpoint_handler_cancel_read_write_requests";
    v64 = 2082;
    v65 = v25;
    v66 = 2082;
    v67 = "flow";
    v68 = 2082;
    v69 = v22;
    _os_log_impl(&dword_181A37000, v19, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v22);
  if (v18)
  {
    goto LABEL_48;
  }

LABEL_49:
}

void ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_252(void *a1)
{
  v3 = _Block_copy(*(a1[4] + 216));
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 408));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 200));
  is_inline = nw_context_is_inline(*(a1[4] + 24));
  if (is_inline)
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v1 = nw_context_copy_implicit_context::implicit_context;
    v7 = nw_context_copy_workloop(v1);
  }

  else
  {
    v7 = nw_context_copy_workloop(*(a1[4] + 24));
  }

  objc_storeStrong((*(a1[8] + 8) + 40), v7);
  if (is_inline)
  {

    v7 = v1;
  }

  v8 = _Block_copy(*(a1[4] + 208));
  v9 = *(a1[9] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = a1[4];
  v12 = *(v11 + 216);
  *(v11 + 216) = 0;

  v13 = a1[4];
  v14 = *(v13 + 48);
  *(v13 + 48) = 0;
}

void nw_connection_cancel_update_handler(NWConcrete_nw_connection *a1)
{
  v1 = a1;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__11_24506;
  v21[4] = __Block_byref_object_dispose__12_24507;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__11_24506;
  v19[4] = __Block_byref_object_dispose__12_24507;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__11_24506;
  v17[4] = __Block_byref_object_dispose__12_24507;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__11_24506;
  v15[4] = __Block_byref_object_dispose__12_24507;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__11_24506;
  v13[4] = __Block_byref_object_dispose__12_24507;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__11_24506;
  v11[4] = __Block_byref_object_dispose__12_24507;
  v12 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL35nw_connection_cancel_update_handlerP24NWConcrete_nw_connection_block_invoke;
  v3[3] = &unk_1E6A2EEF0;
  v4 = v1;
  v5 = v21;
  v6 = v19;
  v7 = v17;
  v8 = v15;
  v9 = v13;
  v10 = v11;
  v2 = v1;
  os_unfair_lock_lock(&v1->lock);
  ___ZL35nw_connection_cancel_update_handlerP24NWConcrete_nw_connection_block_invoke(v3);
  os_unfair_lock_unlock(&v1->lock);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void ___ZL35nw_connection_cancel_update_handlerP24NWConcrete_nw_connection_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 368);
  if (v3)
  {
    nw_queue_cancel_source(v3);
    *(a1[4] + 368) = 0;
    v2 = a1[4];
  }

  v4 = *(v2 + 144);
  *(v2 + 144) = 0;

  v5 = a1[4];
  v6 = *(v5 + 176);
  *(v5 + 176) = 0;

  v7 = a1[4];
  v8 = *(v7 + 184);
  *(v7 + 184) = 0;

  v9 = a1[4];
  v10 = *(v9 + 224);
  if (v10)
  {
    nw_queue_cancel_source(v10);
    *(a1[4] + 224) = 0;
    v9 = a1[4];
  }

  *(v9 + 109) &= ~0x40u;
  v11 = _Block_copy(*(a1[4] + 208));
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = a1[4];
  v15 = *(v14 + 208);
  *(v14 + 208) = 0;

  v16 = _Block_copy(*(a1[4] + 232));
  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = a1[4];
  v20 = *(v19 + 232);
  *(v19 + 232) = 0;

  v21 = _Block_copy(*(a1[4] + 240));
  v22 = *(a1[7] + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = a1[4];
  v25 = *(v24 + 240);
  *(v24 + 240) = 0;

  v26 = _Block_copy(*(a1[4] + 248));
  v27 = *(a1[8] + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  v29 = a1[4];
  v30 = *(v29 + 248);
  *(v29 + 248) = 0;

  v31 = _Block_copy(*(a1[4] + 256));
  v32 = *(a1[9] + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  v34 = a1[4];
  v35 = *(v34 + 256);
  *(v34 + 256) = 0;

  v36 = _Block_copy(*(a1[4] + 384));
  v37 = *(a1[10] + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;

  v39 = a1[4];
  v40 = *(v39 + 384);
  *(v39 + 384) = 0;

  v41 = *(a1[4] + 264);
  if (v41)
  {
    v43 = *v41;
    v42 = v41[1];
    if (*v41)
    {
      do
      {
        v43[1] = v42;
        *v42 = v43;
        free(v41);
        v41 = v43;
        v43 = *v43;
        v42 = v41[1];
      }

      while (v43);
    }

    *(a1[4] + 272) = v42;
    *v42 = 0;

    free(v41);
  }
}

void ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_2_253(uint64_t a1)
{
  nw_connection_report_state_with_handler_on_nw_queue(*(a1 + 32), 5u, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  v2 = *(a1 + 56);
  if (*(*(v2 + 8) + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = v3[48];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_3;
    v6[3] = &unk_1E6A3D738;
    v8 = v2;
    v7 = v3;
    nw_connection_async_on_queue(v7, v4, v5, v6);
  }
}

void sub_181C29130(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = NWConcrete_nw_connection;
  [(_Unwind_Exception *)&a13 dealloc:a3];
  _Unwind_Resume(a1);
}

void nw_endpoint_flow_failed_with_error(void *a1, int a2, void *a3)
{
  v173 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v153 = a3;
  v154 = v5;
  if (v5)
  {
    v6 = nw_endpoint_handler_copy_flow(v5);
    v7 = v6;
    if (v6)
    {
      if ((*(v6 + 36) & 2) == 0)
      {
        v8 = *(v6 + 51);
        *(v6 + 36) |= 2u;
        if (!*(v6 + 206))
        {
          goto LABEL_50;
        }

        if (!v8)
        {
          goto LABEL_50;
        }

        v9 = v8[3];
        if (!v9)
        {
          goto LABEL_50;
        }

        v10 = *(v9 + 224);
        if (!v10)
        {
          goto LABEL_50;
        }

        *type = 0;
        v11 = v8[5];
        v12 = v8;
        if (v11 != &nw_protocol_ref_counted_handle)
        {
          if (v11 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v12) = 0;
            v13 = 1;
LABEL_44:
            *buf = v8;
            buf[8] = v12;
            v36 = v10(v8, 5, type);
            if ((v13 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(buf);
            }

            if (v36)
            {
              v37 = *(v7 + 101);
              if (v37)
              {
                free(v37);
                *(v7 + 101) = 0;
              }

              *(v7 + 101) = v36;
              *(v7 + 102) = *type;
            }

LABEL_50:
            v38 = *(v7 + 104);
            if (v38)
            {
              v39 = nw_path_flow_registration_copy_path(v38);
              v40 = (v7 + 880);
              os_unfair_lock_lock(v7 + 220);
              if (v39)
              {
                objc_storeStrong(v7 + 2, v39);
                v41 = v39;
                if (!*(v7 + 90))
                {
LABEL_93:
                  os_unfair_lock_unlock(v40);
                  v59 = *(v7 + 108);
                  if (v59)
                  {
                    _nw_hash_table_release(v59);
                    *(v7 + 108) = 0;
                  }

                  nw_endpoint_flow_stitch_stack_without_passthrough(v154);
                  v60 = *(v7 + 53);
                  if (!v60)
                  {
LABEL_116:
                    if (v8)
                    {
                      v71 = v8[3];
                      if (v71)
                      {
                        v72 = *(v71 + 8);
                        if (v72)
                        {
                          v73 = v8[5];
                          v74 = v8;
                          if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v74 = v8[8]) != 0)
                          {
                            v76 = v74[11];
                            if (v76)
                            {
                              v74[11] = v76 + 1;
                            }

                            v75 = 0;
                            *buf = v8;
                            buf[8] |= 1u;
                          }

                          else
                          {
                            *buf = v8;
                            buf[8] &= ~1u;
                            v75 = 1;
                          }

                          v77 = *(v7 + 52);
                          v78 = v7 + 376;
                          if (v77 == &nw_protocol_ref_counted_handle || v77 == &nw_protocol_ref_counted_additional_handle && (v78 = *(v7 + 55)) != 0)
                          {
                            v80 = *(v78 + 11);
                            if (v80)
                            {
                              *(v78 + 11) = v80 + 1;
                            }

                            v79 = 0;
                            *type = v7 + 376;
                            v159 |= 1u;
                          }

                          else
                          {
                            *type = v7 + 376;
                            v159 &= ~1u;
                            v79 = 1;
                          }

                          v72(v8, v7 + 376, 1);
                          if ((v79 & 1) == 0)
                          {
                            nw::release_if_needed<nw_protocol *>(type);
                          }

                          if ((v75 & 1) == 0)
                          {
                            nw::release_if_needed<nw_protocol *>(buf);
                          }
                        }
                      }
                    }

                    nw_endpoint_flow_stitch_stack_without_replay(v154);
                    if ((*(v7 + 33) & 0x40) != 0)
                    {
                      v82 = *(v7 + 113);
                      *(v7 + 113) = 0;
                    }

                    else
                    {
                      if (*(v7 + 114))
                      {
                        *(v7 + 114) = 0;
                      }

                      os_unfair_lock_lock(v40);
                      v81 = *(v7 + 115);
                      if (v81)
                      {
                        DNSServiceRefDeallocate(v81);
                        *(v7 + 115) = 0;
                      }

                      os_unfair_lock_unlock(v40);
                    }

                    *(v7 + 32) &= 0x2Fu;
                    v83 = *(v7 + 104);
                    *(v7 + 104) = 0;

                    *(v7 + 46) = 0u;
                    v84 = *(v7 + 33);
                    *(v7 + 33) = v84 & 0xFE;
                    *(v7 + 94) = 0;
                    if ((v84 & 4) != 0)
                    {
                      v85 = v154;
                      v86 = v85[7];

                      if (v86)
                      {
                        nw_association_mark_flow_disconnected(v86, v85);
                      }

                      *(v7 + 33) &= ~4u;
                    }

                    v87 = *(v7 + 67);
                    if (v87)
                    {
                      *(v7 + 67) = 0;
                    }

                    *(v7 + 354) &= ~1u;
                    v88 = *(v7 + 3);
                    *(v7 + 3) = 0;

                    if (!a2)
                    {
                      goto LABEL_202;
                    }

                    v89 = v154;
                    v90 = v89->state == 5;

                    if (v90)
                    {
                      goto LABEL_202;
                    }

                    v91 = v153;
                    if (!v153)
                    {
                      v91 = *(v7 + 109);
                    }

                    v92 = v91;
                    v93 = *(v7 + 5);
                    if ((*(v7 + 33) & 8) != 0)
                    {
                      if (!v93)
                      {
                        goto LABEL_200;
                      }
                    }

                    else if (!v93)
                    {
                      nw_endpoint_handler_handle_failure(v89);
                      v94 = 7;
LABEL_201:
                      v89->event.domain = 3;
                      v89->event.event = v94;
                      nw_endpoint_handler_report(v89, 0, &v89->event.domain, v92);

LABEL_202:
                      *(v7 + 36) &= ~2u;

                      goto LABEL_203;
                    }

                    v95 = v89;
                    v96 = (*(v95 + 284) & 0x40) == 0;

                    if (v96)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v97 = gconnectionLogObj;
                      if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_199;
                      }

                      v98 = v95;

                      v99 = v98;
                      v100 = (*(v95 + 284) & 1) == 0;

                      if (v100)
                      {
                        v101 = "";
                      }

                      else
                      {
                        v101 = "dry-run ";
                      }

                      v102 = nw_endpoint_handler_copy_endpoint(v99);
                      v103 = v102;
                      if (v102)
                      {
                        logging_description = _nw_endpoint_get_logging_description(v102);
                      }

                      else
                      {
                        logging_description = "<NULL>";
                      }

                      *v151 = logging_description;

                      v108 = v99;
                      v109 = v108;
                      state = v89->state;
                      if (state > 5)
                      {
                        v111 = "unknown-state";
                      }

                      else
                      {
                        v111 = off_1E6A31048[state];
                      }

                      v150 = v111;

                      v112 = v109;
                      v113 = v112;
                      v114 = *(v112 + 29);
                      if (v114 > 2)
                      {
                        switch(v114)
                        {
                          case 3:
                            v115 = "proxy";
                            break;
                          case 4:
                            v115 = "fallback";
                            break;
                          case 5:
                            v115 = "transform";
                            break;
                          default:
LABEL_194:
                            v115 = "unknown-mode";
                            break;
                        }
                      }

                      else
                      {
                        if (v114)
                        {
                          if (v114 == 1)
                          {
                            v115 = "resolver";
                            goto LABEL_197;
                          }

                          if (v114 == 2)
                          {
                            v149 = nw_endpoint_flow_mode_string(*(v112 + 33));
LABEL_198:

                            v116 = v113;
                            os_unfair_lock_lock(v116 + 28);
                            v117 = *(v116 + 8);
                            os_unfair_lock_unlock(v116 + 28);

                            v118 = v117;
                            *buf = 136447746;
                            *&buf[4] = "nw_endpoint_flow_failed_with_error";
                            v161 = 2082;
                            v162 = v98 + 184;
                            v163 = 2082;
                            v164 = v101;
                            v165 = 2082;
                            v166 = *v151;
                            v167 = 2082;
                            v168 = v150;
                            v169 = 2082;
                            v170 = v149;
                            v171 = 2114;
                            v172 = v118;
                            _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to clone from flow, moving directly to failed state", buf, 0x48u);

LABEL_199:
                            goto LABEL_200;
                          }

                          goto LABEL_194;
                        }

                        v115 = "path";
                      }

LABEL_197:
                      v149 = v115;
                      goto LABEL_198;
                    }

LABEL_200:
                    v119 = v89;
                    v89->state = 4;

                    v94 = 10;
                    goto LABEL_201;
                  }

                  v61 = *(v60 + 32);
                  if (v61)
                  {
                    v62 = *(v61 + 40);
                    if ((v62 == &nw_protocol_ref_counted_handle || v62 == &nw_protocol_ref_counted_additional_handle && (v61 = *(v61 + 64)) != 0) && (v63 = *(v61 + 88)) != 0 && (v64 = v63 - 1, (*(v61 + 88) = v64) == 0))
                    {
                      v105 = *(v61 + 64);
                      if (v105)
                      {
                        *(v61 + 64) = 0;
                        v105[2](v105);
                        _Block_release(v105);
                      }

                      if (*(v61 + 72))
                      {
                        v106 = *(v61 + 64);
                        if (v106)
                        {
                          _Block_release(v106);
                        }
                      }

                      free(v61);
                      v107 = *(v7 + 53);
                      *(v60 + 32) = 0;
                      v60 = v107;
                      if (!v107)
                      {
                        goto LABEL_115;
                      }
                    }

                    else
                    {
                      *(v60 + 32) = 0;
                    }
                  }

                  v65 = *(v60 + 40);
                  if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v60 = *(v60 + 64)) != 0)
                  {
                    v66 = *(v60 + 88);
                    if (v66)
                    {
                      v67 = v66 - 1;
                      *(v60 + 88) = v67;
                      if (!v67)
                      {
                        v68 = *(v60 + 64);
                        if (v68)
                        {
                          *(v60 + 64) = 0;
                          v68[2](v68);
                          _Block_release(v68);
                        }

                        if (*(v60 + 72))
                        {
                          v69 = *(v60 + 64);
                          if (v69)
                          {
                            _Block_release(v69);
                          }
                        }

                        free(v60);
                      }
                    }
                  }

                  *(v7 + 53) = 0;
LABEL_115:
                  v70 = *(v7 + 68);
                  *(v7 + 68) = 0;

                  goto LABEL_116;
                }

                goto LABEL_56;
              }
            }

            else
            {
              v40 = (v7 + 880);
              os_unfair_lock_lock(v7 + 220);
            }

            v41 = 0;
            if (!*(v7 + 90))
            {
              goto LABEL_93;
            }

LABEL_56:
            if (!v8)
            {
              goto LABEL_90;
            }

            v42 = v8[3];
            if (!v42)
            {
              goto LABEL_90;
            }

            v43 = *(v42 + 224);
            if (!v43)
            {
              goto LABEL_90;
            }

            v155 = 0;
            v44 = v8[5];
            v45 = v8;
            if (v44 == &nw_protocol_ref_counted_handle)
            {
              goto LABEL_63;
            }

            if (v44 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v45) = 0;
              v46 = 1;
              goto LABEL_66;
            }

            v45 = v8[8];
            if (v45)
            {
LABEL_63:
              v47 = v45[11];
              v46 = 0;
              if (v47)
              {
                v45[11] = v47 + 1;
              }

              LOBYTE(v45) = -1;
            }

            else
            {
              v46 = 1;
            }

LABEL_66:
            *buf = v8;
            buf[8] = v45;
            v48 = v43(v8, 1, &v155);
            if ((v46 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(buf);
            }

            if (v48)
            {
              if (v155 == 424)
              {
                v49 = *(v7 + 99);
                if (v49)
                {
                  free(v49);
                  *(v7 + 99) = 0;
                }

                *(v7 + 99) = v48;
              }

              else
              {
                free(v48);
              }
            }

            v155 = 0;
            v50 = v8[5];
            v51 = v8;
            if (v50 != &nw_protocol_ref_counted_handle)
            {
              if (v50 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v51) = 0;
                v52 = 1;
                goto LABEL_81;
              }

              v51 = v8[8];
              if (!v51)
              {
                v52 = 1;
                goto LABEL_81;
              }
            }

            v53 = v51[11];
            v52 = 0;
            if (v53)
            {
              v51[11] = v53 + 1;
            }

            LOBYTE(v51) = -1;
LABEL_81:
            *type = v8;
            v159 = v51;
            v54 = v8[3];
            if (v54)
            {
              v55 = *(v54 + 224);
              if (v55)
              {
                v56 = v55(v8, 2, &v155);
                if (v52)
                {
                  goto LABEL_85;
                }

                goto LABEL_84;
              }
            }

            v134 = __nwlog_obj();
            v135 = v8[2];
            *buf = 136446722;
            *&buf[4] = "__nw_protocol_copy_info";
            if (!v135)
            {
              v135 = "invalid";
            }

            v161 = 2082;
            v162 = v135;
            v163 = 2048;
            v164 = v8;
            v136 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v134, 16, "%{public}s protocol %{public}s (%p) has invalid copy_info callback", buf, 32);

            v157 = OS_LOG_TYPE_ERROR;
            v156 = 0;
            if (__nwlog_fault(v136, &v157, &v156))
            {
              if (v157 == OS_LOG_TYPE_FAULT)
              {
                v137 = __nwlog_obj();
                v138 = v157;
                if (os_log_type_enabled(v137, v157))
                {
                  v139 = v8[2];
                  if (!v139)
                  {
                    v139 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_copy_info";
                  v161 = 2082;
                  v162 = v139;
                  v163 = 2048;
                  v164 = v8;
                  _os_log_impl(&dword_181A37000, v137, v138, "%{public}s protocol %{public}s (%p) has invalid copy_info callback", buf, 0x20u);
                }

LABEL_233:

                goto LABEL_267;
              }

              if (v156 != 1)
              {
                v137 = __nwlog_obj();
                v146 = v157;
                if (os_log_type_enabled(v137, v157))
                {
                  v147 = v8[2];
                  if (!v147)
                  {
                    v147 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_copy_info";
                  v161 = 2082;
                  v162 = v147;
                  v163 = 2048;
                  v164 = v8;
                  _os_log_impl(&dword_181A37000, v137, v146, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, backtrace limit exceeded", buf, 0x20u);
                }

                goto LABEL_233;
              }

              backtrace_string = __nw_create_backtrace_string();
              v143 = __nwlog_obj();
              v152 = v157;
              v144 = os_log_type_enabled(v143, v157);
              if (backtrace_string)
              {
                if (v144)
                {
                  v145 = v8[2];
                  if (!v145)
                  {
                    v145 = "invalid";
                  }

                  *buf = 136446978;
                  *&buf[4] = "__nw_protocol_copy_info";
                  v161 = 2082;
                  v162 = v145;
                  v163 = 2048;
                  v164 = v8;
                  v165 = 2082;
                  v166 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v143, v152, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(backtrace_string);
              }

              else
              {
                if (v144)
                {
                  v148 = v8[2];
                  if (!v148)
                  {
                    v148 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_copy_info";
                  v161 = 2082;
                  v162 = v148;
                  v163 = 2048;
                  v164 = v8;
                  _os_log_impl(&dword_181A37000, v143, v152, "%{public}s protocol %{public}s (%p) has invalid copy_info callback, no backtrace", buf, 0x20u);
                }
              }
            }

LABEL_267:
            if (v136)
            {
              free(v136);
            }

            v56 = 0;
            if (v52)
            {
LABEL_85:
              if (v56)
              {
                if (v155 != 112)
                {
                  free(v56);
                  v58 = *(v7 + 728);
                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_91;
                }

                v57 = *(v7 + 100);
                if (v57)
                {
                  free(v57);
                  *(v7 + 100) = 0;
                }

                *(v7 + 100) = v56;
              }

LABEL_90:
              v58 = *(v7 + 728);
              if ((v58 & 1) == 0)
              {
LABEL_92:
                *(v7 + 90) = 0;
                *(v7 + 728) = v58 | 1;
                goto LABEL_93;
              }

LABEL_91:
              nw::release_if_needed<nw_protocol *>(v7 + 90);
              v58 = *(v7 + 728);
              goto LABEL_92;
            }

LABEL_84:
            nw::release_if_needed<nw_protocol *>(type);
            goto LABEL_85;
          }

          v12 = v8[8];
          if (!v12)
          {
            v13 = 1;
            goto LABEL_44;
          }
        }

        v33 = v12[11];
        v13 = 0;
        if (v33)
        {
          v12[11] = v33 + 1;
        }

        LOBYTE(v12) = -1;
        goto LABEL_44;
      }

      v14 = v5;
      v15 = *(v14 + 284);

      if ((v15 & 0x40) != 0)
      {
LABEL_203:

        goto LABEL_204;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_42:

        goto LABEL_203;
      }

      v17 = v14;

      v18 = v17;
      v19 = *(v14 + 284);

      if (v19)
      {
        v20 = "dry-run ";
      }

      else
      {
        v20 = "";
      }

      v21 = nw_endpoint_handler_copy_endpoint(v18);
      v22 = v21;
      if (v21)
      {
        v23 = _nw_endpoint_get_logging_description(v21);
      }

      else
      {
        v23 = "<NULL>";
      }

      id_str = v17->id_str;

      v25 = v18;
      v26 = v25;
      v27 = v25[30];
      if (v27 > 5)
      {
        v28 = "unknown-state";
      }

      else
      {
        v28 = off_1E6A31048[v27];
      }

      v29 = v26;
      v30 = v29;
      v31 = v29[29];
      if (v31 > 2)
      {
        switch(v31)
        {
          case 3:
            v32 = "proxy";
            goto LABEL_41;
          case 4:
            v32 = "fallback";
            goto LABEL_41;
          case 5:
            v32 = "transform";
            goto LABEL_41;
        }
      }

      else
      {
        switch(v31)
        {
          case 0:
            v32 = "path";
            goto LABEL_41;
          case 1:
            v32 = "resolver";
            goto LABEL_41;
          case 2:
            v32 = nw_endpoint_flow_mode_string(*(v29 + 33));
LABEL_41:

            v34 = v30;
            os_unfair_lock_lock(v34 + 28);
            v35 = *(v34 + 8);
            os_unfair_lock_unlock(v34 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_flow_failed_with_error";
            v161 = 2082;
            v162 = id_str;
            v163 = 2082;
            v164 = v20;
            v165 = 2082;
            v166 = v23;
            v167 = 2082;
            v168 = v28;
            v169 = 2082;
            v170 = v32;
            v171 = 2114;
            v172 = v35;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already failing, returning", buf, 0x48u);

            goto LABEL_42;
        }
      }

      v32 = "unknown-mode";
      goto LABEL_41;
    }

    v124 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_failed_with_error";
    v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v155) = 0;
    if (__nwlog_fault(v125, type, &v155))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v126 = __nwlog_obj();
        v127 = type[0];
        if (os_log_type_enabled(v126, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_failed_with_error";
          _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v155 == 1)
      {
        v131 = __nw_create_backtrace_string();
        v126 = __nwlog_obj();
        v132 = type[0];
        v133 = os_log_type_enabled(v126, type[0]);
        if (v131)
        {
          if (v133)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_failed_with_error";
            v161 = 2082;
            v162 = v131;
            _os_log_impl(&dword_181A37000, v126, v132, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v131);
          goto LABEL_260;
        }

        if (v133)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_failed_with_error";
          _os_log_impl(&dword_181A37000, v126, v132, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v126 = __nwlog_obj();
        v141 = type[0];
        if (os_log_type_enabled(v126, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_failed_with_error";
          _os_log_impl(&dword_181A37000, v126, v141, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_260:
    if (v125)
    {
      free(v125);
    }

    goto LABEL_203;
  }

  v120 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_flow_failed_with_error";
  v121 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v120, 16, "%{public}s called with null handler", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v155) = 0;
  if (__nwlog_fault(v121, type, &v155))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v122 = __nwlog_obj();
      v123 = type[0];
      if (os_log_type_enabled(v122, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_failed_with_error";
        _os_log_impl(&dword_181A37000, v122, v123, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v155 == 1)
    {
      v128 = __nw_create_backtrace_string();
      v122 = __nwlog_obj();
      v129 = type[0];
      v130 = os_log_type_enabled(v122, type[0]);
      if (v128)
      {
        if (v130)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_flow_failed_with_error";
          v161 = 2082;
          v162 = v128;
          _os_log_impl(&dword_181A37000, v122, v129, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v128);
        goto LABEL_255;
      }

      if (v130)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_failed_with_error";
        _os_log_impl(&dword_181A37000, v122, v129, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v122 = __nwlog_obj();
      v140 = type[0];
      if (os_log_type_enabled(v122, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_failed_with_error";
        _os_log_impl(&dword_181A37000, v122, v140, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_255:
  if (v121)
  {
    free(v121);
  }

LABEL_204:
}

void nw_protocol_default_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    output_handler = a1->output_handler;
    if (output_handler)
    {
      callbacks = output_handler->callbacks;
      if (callbacks)
      {
        disconnect = callbacks->disconnect;
        if (disconnect)
        {

          disconnect();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_default_disconnect";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_disconnect";
      v9 = "%{public}s called with null protocol";
      goto LABEL_21;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_disconnect";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_default_disconnect";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_default_disconnect";
      v9 = "%{public}s called with null protocol, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

void ___ZL20nw_flow_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = v1;
    v4 = v3[29];

    if (v4 == 2)
    {
      v5 = *(a1 + 40);
      if (*(a1 + 64) == v5 + 376)
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 48);

        nw_endpoint_flow_failed_with_error(v19, 1, v20);
      }

      else
      {
        v6 = *(v5 + 864);
        if (v6)
        {
          if (*(a1 + 80) == 1)
          {
            node = nw_hash_table_get_node(v6, *(a1 + 56), 0);
            if (node)
            {
              if ((nw_hash_table_remove_node(*(*(a1 + 40) + 864), node) & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v8 = gconnectionLogObj;
                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                {
                  id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
                  v10 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                  v11 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                  logging_description = nw_endpoint_get_logging_description(v11);
                  v13 = nw_endpoint_handler_state_string(*(a1 + 32));
                  v14 = nw_endpoint_handler_mode_string(*(a1 + 32));
                  v15 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                  v16 = *(a1 + 72);
                  *buf = 136448002;
                  v32 = "nw_flow_disconnected_block_invoke";
                  v33 = 2082;
                  v34 = id_string;
                  v35 = 2082;
                  v36 = v10;
                  v37 = 2082;
                  v38 = logging_description;
                  v39 = 2082;
                  v40 = v13;
                  v41 = 2082;
                  v42 = v14;
                  v43 = 2114;
                  v44 = v15;
                  v45 = 2048;
                  v46 = v16;
                  _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to remove protocol %p from multiplexed table", buf, 0x52u);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (v4 > 5)
        {
          v18 = "unknown-mode";
        }

        else
        {
          v18 = off_1E6A31018[v4];
        }

        *buf = 136446722;
        v32 = "nw_flow_disconnected_block_invoke";
        v33 = 2082;
        v34 = v18;
        v35 = 2082;
        v36 = "flow";
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    return;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v32 = "nw_flow_disconnected_block_invoke";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v22, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v32 = "nw_flow_disconnected_block_invoke";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v23, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v32 = "nw_flow_disconnected_block_invoke";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_40;
      }

      if (v27)
      {
        *buf = 136446210;
        v32 = "nw_flow_disconnected_block_invoke";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v32 = "nw_flow_disconnected_block_invoke";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_40:
  if (v22)
  {
    free(v22);
  }
}

uint64_t nw_flow_passthrough_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_flow_passthrough_remove_input_handler";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null protocol", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v21, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v31 = "nw_flow_passthrough_remove_input_handler";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v31 = "nw_flow_passthrough_remove_input_handler";
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v26)
        {
          *buf = 136446210;
          v31 = "nw_flow_passthrough_remove_input_handler";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v31 = "nw_flow_passthrough_remove_input_handler";
          _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v21)
    {
      free(v21);
    }

    return 0;
  }

  if (a2 && a2->output_handler == a1)
  {
    v3 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v3;
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  nw_protocol_set_input_handler(a1, 0);
  handle = a1->handle;
  if (!handle)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v6 = handle[20];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    mode = v8->mode;

    if (mode == 2)
    {
      v10 = nw_endpoint_handler_copy_flow(v8);
      if (v10 && v10[35] < 0)
      {
        v14 = v10;
        nw_endpoint_flow_failed_with_error(v8, 1, handle[40]);
        v11 = v8;
        v10 = v14;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_23;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (mode > 5)
      {
        v13 = "unknown-mode";
      }

      else
      {
        v13 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_flow_passthrough_fail_if_needed";
      v32 = 2082;
      v33 = v13;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }
  }

  v11 = 0;
LABEL_23:

LABEL_24:
  output_handler = a1->output_handler;
  if (output_handler)
  {
    callbacks = output_handler->callbacks;
    if (callbacks)
    {
      remove_input_handler = callbacks->remove_input_handler;
      if (remove_input_handler)
      {
        remove_input_handler();
      }
    }
  }

  v18 = a1->handle;
  if (v18)
  {
    v19 = v18[21];
    v18[21] = 0;
  }

  return 1;
}

uint64_t nw_protocol_remove_input_handler(void *a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
LABEL_12:
          v12 = __nwlog_obj();
          *buf = 136446210;
          v56 = "__nw_protocol_remove_input_handler";
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null input_protocol", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v53 = 0;
          if (__nwlog_fault(v13, &type, &v53))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (os_log_type_enabled(v14, type))
              {
                *buf = 136446210;
                v56 = "__nw_protocol_remove_input_handler";
                v16 = "%{public}s called with null input_protocol";
LABEL_103:
                _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
              }
            }

            else if (v53 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type;
              v50 = os_log_type_enabled(v14, type);
              if (backtrace_string)
              {
                if (v50)
                {
                  *buf = 136446466;
                  v56 = "__nw_protocol_remove_input_handler";
                  v57 = 2082;
                  v58 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_104;
              }

              if (v50)
              {
                *buf = 136446210;
                v56 = "__nw_protocol_remove_input_handler";
                v16 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_103;
              }
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (os_log_type_enabled(v14, type))
              {
                *buf = 136446210;
                v56 = "__nw_protocol_remove_input_handler";
                v16 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_103;
              }
            }
          }

LABEL_104:
          if (v13)
          {
            free(v13);
          }

          result = 0;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v17 = *(v8 + 88);
      if (v17)
      {
        v9 = 0;
        *(v8 + 88) = v17 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_49;
      }
    }

    v18 = *(v10 + 8);
    if (v18)
    {
      result = v18(a1, a2);
      if (v9)
      {
LABEL_36:
        if ((v6 & 1) == 0)
        {
          v26 = v3[5];
          if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
          {
            v27 = v3[11];
            if (v27)
            {
              v28 = v27 - 1;
              v3[11] = v28;
              if (!v28)
              {
                v29 = result;
                v30 = v3[8];
                if (v30)
                {
                  v3[8] = 0;
                  v30[2](v30);
                  _Block_release(v30);
                }

                if (v3[9])
                {
                  v31 = v3[8];
                  if (v31)
                  {
                    _Block_release(v31);
                  }
                }

                free(v3);
                return v29;
              }
            }
          }
        }

        return result;
      }

LABEL_25:
      v20 = *(v2 + 40);
      if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
      {
        v21 = *(v2 + 88);
        if (v21)
        {
          v22 = v21 - 1;
          *(v2 + 88) = v22;
          if (!v22)
          {
            v23 = result;
            v24 = *(v2 + 64);
            if (v24)
            {
              *(v2 + 64) = 0;
              v24[2](v24);
              _Block_release(v24);
            }

            if (*(v2 + 72))
            {
              v25 = *(v2 + 64);
              if (v25)
              {
                _Block_release(v25);
              }
            }

            free(v2);
            result = v23;
          }
        }
      }

      goto LABEL_36;
    }

LABEL_49:
    v32 = __nwlog_obj();
    v33 = v3[2];
    *buf = 136446722;
    v56 = "__nw_protocol_remove_input_handler";
    if (!v33)
    {
      v33 = "invalid";
    }

    v57 = 2082;
    v58 = v33;
    v59 = 2048;
    v60 = v3;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v34, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_91;
        }

        v37 = v3[2];
        if (!v37)
        {
          v37 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_remove_input_handler";
        v57 = 2082;
        v58 = v37;
        v59 = 2048;
        v60 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback";
LABEL_90:
        _os_log_impl(&dword_181A37000, v35, v36, v38, buf, 0x20u);
        goto LABEL_91;
      }

      if (v53 != 1)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_91;
        }

        v51 = v3[2];
        if (!v51)
        {
          v51 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_remove_input_handler";
        v57 = 2082;
        v58 = v51;
        v59 = 2048;
        v60 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded";
        goto LABEL_90;
      }

      v44 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type;
      v45 = os_log_type_enabled(v35, type);
      if (!v44)
      {
        if (!v45)
        {
          goto LABEL_91;
        }

        v52 = v3[2];
        if (!v52)
        {
          v52 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_remove_input_handler";
        v57 = 2082;
        v58 = v52;
        v59 = 2048;
        v60 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace";
        goto LABEL_90;
      }

      if (v45)
      {
        v46 = v3[2];
        if (!v46)
        {
          v46 = "invalid";
        }

        *buf = 136446978;
        v56 = "__nw_protocol_remove_input_handler";
        v57 = 2082;
        v58 = v46;
        v59 = 2048;
        v60 = v3;
        v61 = 2082;
        v62 = v44;
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v44);
    }

LABEL_91:
    if (v34)
    {
      free(v34);
    }

    result = 0;
    if (v9)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v39 = __nwlog_obj();
  *buf = 136446210;
  v56 = "__nw_protocol_remove_input_handler";
  v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v40, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v56 = "__nw_protocol_remove_input_handler";
        v43 = "%{public}s called with null protocol";
LABEL_97:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      }
    }

    else if (v53 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v48 = os_log_type_enabled(v41, type);
      if (v47)
      {
        if (v48)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_remove_input_handler";
          v57 = 2082;
          v58 = v47;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_98;
      }

      if (v48)
      {
        *buf = 136446210;
        v56 = "__nw_protocol_remove_input_handler";
        v43 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_97;
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v56 = "__nw_protocol_remove_input_handler";
        v43 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_97;
      }
    }
  }

LABEL_98:
  if (v40)
  {
    free(v40);
  }

  return 0;
}

void nw_protocol_new_objc::$_0::__invoke(char *this, objc_object *a2, objc_selector *a3)
{
  {
    nw_protocol_new_objc::$_0::operator() const(objc_object *,objc_selector *)::destroy = sel_registerName("destroy");
  }

  v4 = nw_protocol_new_objc::$_0::operator() const(objc_object *,objc_selector *)::destroy;
  Class = object_getClass(this);
  if (class_getInstanceMethod(Class, v4))
  {
    [this v4];
  }

  objc_destructInstance(this);
  if (this)
  {
    v6 = *(this - 7);
    if (v6 == &nw_protocol_ref_counted_handle)
    {
      v7 = this - 96;
      v8 = *(v7 + 11);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      if (v6 != &nw_protocol_ref_counted_additional_handle)
      {
        return;
      }

      v7 = *(this - 4);
      if (!v7)
      {
        return;
      }

      v8 = *(v7 + 11);
      if (!v8)
      {
        return;
      }
    }

    v9 = v8 - 1;
    *(v7 + 11) = v9;
    if (!v9)
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        *(v7 + 8) = 0;
        v10[2](v10);
        _Block_release(v10);
      }

      if (v7[72])
      {
        v11 = *(v7 + 8);
        if (v11)
        {
          _Block_release(v11);
        }
      }

      free(v7);
    }
  }
}

void nw_protocol_destroy(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_destroy";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null instance", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v14, type, &v20))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (os_log_type_enabled(v15, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_destroy";
          v17 = "%{public}s called with null instance";
LABEL_42:
          _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
        }
      }

      else if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type[0];
        v19 = os_log_type_enabled(v15, type[0]);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_destroy";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v19)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_destroy";
          v17 = "%{public}s called with null instance, no backtrace";
          goto LABEL_42;
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (os_log_type_enabled(v15, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_destroy";
          v17 = "%{public}s called with null instance, backtrace limit exceeded";
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    if (!v14)
    {
      return;
    }

    v12 = v14;
LABEL_27:
    free(v12);
    return;
  }

  if (atomic_load_explicit(&nw_protocol_get_zombie_callbacks(void)::once_flag, memory_order_acquire) != -1)
  {
    *buf = &v20;
    *type = buf;
    std::__call_once(&nw_protocol_get_zombie_callbacks(void)::once_flag, type, std::__call_once_proxy[abi:nn200100]<std::tuple<nw_protocol_get_zombie_callbacks(void)::$_0 &&>>);
  }

  *(a1 - 72) = &nw_protocol_get_zombie_callbacks(void)::callbacks;
  for (i = *(a1 - 16); i; i = *(i + 72))
  {
    if (atomic_load_explicit(&nw_protocol_get_zombie_callbacks(void)::once_flag, memory_order_acquire) != -1)
    {
      *type = buf;
      *buf = &v20;
      std::__call_once(&nw_protocol_get_zombie_callbacks(void)::once_flag, type, std::__call_once_proxy[abi:nn200100]<std::tuple<nw_protocol_get_zombie_callbacks(void)::$_0 &&>>);
    }

    *(i + 24) = &nw_protocol_get_zombie_callbacks(void)::callbacks;
  }

  *(a1 - 16) = 0;
  if (a2)
  {
    a2 = _Block_copy(a2);
  }

  v5 = *(a1 - 24);
  if (v5)
  {
    v6 = *(a1 - 32);
    if (v6)
    {
      _Block_release(v6);
      v5 = *(a1 - 24);
    }
  }

  *(a1 - 32) = a2;
  *(a1 - 24) = v5 | 1;
  v7 = *(a1 - 56);
  if (v7 == &nw_protocol_ref_counted_handle)
  {
    a2 = (a1 - 96);
    v8 = *(a1 - 8);
    if (!v8)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v7 == &nw_protocol_ref_counted_additional_handle)
  {
    if (a2)
    {
      v8 = *(a2 + 11);
      if (v8)
      {
LABEL_20:
        v9 = v8 - 1;
        *(a2 + 11) = v9;
        if (v9)
        {
          return;
        }

        v10 = *(a2 + 8);
        if (v10)
        {
          *(a2 + 8) = 0;
          v10[2](v10);
          _Block_release(v10);
        }

        if (*(a2 + 72))
        {
          v11 = *(a2 + 8);
          if (v11)
          {
            _Block_release(v11);
          }
        }

        v12 = a2;
        goto LABEL_27;
      }
    }
  }
}

uint64_t _nw_tcp_create_options(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1ED410038 != -1)
  {
    swift_once();
  }

  return sub_181C2CDE8();
}

uint64_t sub_181C2CDE8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 24);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = 0x100000201;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
  swift_allocObject();
  v5 = sub_181AAC92C(v4, v1, v2, v3, v7);
  sub_181F49A24(v1, v2, v3);
  return v5;
}

uint64_t _s7Network12NWParametersC3tls3tcpAcA13NWProtocolTLSC7OptionsCSg_AA0E3TCPCAHCtcfC_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NWParameters();
  v3 = swift_allocObject();
  v4 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  *(v5 + 24) = 0;
  v6 = (v5 + 24);
  os_unfair_lock_lock((v5 + 24));
  nw_parameters_set_data_mode(v4, 2);
  os_unfair_lock_unlock(v6);
  os_unfair_lock_lock(v6);
  v7 = nw_parameters_copy_default_protocol_stack(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780, &qword_182AED530);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v9 = (inited + 24);
  *(inited + 16) = v7;
  v10 = (inited + 16);
  os_unfair_lock_unlock(v6);

  os_unfair_lock_lock(v9);
  sub_181C2D558(v10);
  os_unfair_lock_unlock(v9);

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70, qword_182AF1920);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_182AF1910;
    *(v12 + 32) = a1;
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v9);
    sub_181C4E3C0(v10);
    os_unfair_lock_unlock(v9);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock(v9);
    sub_181C4E3C0(v10);
    os_unfair_lock_unlock(v9);
  }

  return v3;
}

void nw_parameters_set_data_mode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_data_mode(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_data_mode";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_data_mode";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_data_mode";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_data_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_data_mode";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void sub_181C2D380(char a1)
{
  v2 = v1;
  v4 = *(v1 + 344);
  ProtocolStack.transport.getter(v14);
  if ((~*(&v14[0] + 1) & 0xF000000000000007) != 0)
  {
    sub_181A53008(*&v14[0], *(&v14[0] + 1));
  }

  else
  {
    if (a1 == 1)
    {
      if (qword_1ED410028 != -1)
      {
        swift_once();
      }

      v5 = *(&xmmword_1ED40FF68 + 1);
      v6 = unk_1ED40FF78;
      v7 = byte_1ED40FF80;
      v12 = xmmword_1ED40FF68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
      swift_allocObject();
      v13 = sub_181CFD414(v12, v5, v6, v7, 0);
      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      *(v4 + 32) = v13;
      *(v4 + 40) = 0;
      goto LABEL_11;
    }

    if (a1 == 2)
    {
      if (qword_1ED410038 != -1)
      {
        swift_once();
      }

      v5 = *(&xmmword_1ED411C48 + 1);
      v6 = unk_1ED411C58;
      v7 = byte_1ED411C60;
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      v16 = 0x100000201;
      v8 = xmmword_1ED411C48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
      swift_allocObject();
      v9 = sub_181AAC92C(v8, v5, v6, v7, v14);
      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      *(v4 + 32) = v9;
      *(v4 + 40) = 0x2000000000000000;
LABEL_11:
      sub_181F49A24(v5, v6, v7);
      sub_181A5301C(v10, v11);
    }
  }

  *(v2 + 113) = a1;
}

void nw_protocol_stack_set_transport_protocol(nw_protocol_stack_t stack, nw_protocol_options_t protocol)
{
  v15 = *MEMORY[0x1E69E9840];
  if (stack)
  {

    _nw_protocol_stack_set_transport_protocol(stack, protocol);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_stack_set_transport_protocol";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null stack", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_set_transport_protocol";
        v6 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_protocol_stack_set_transport_protocol";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_stack_set_transport_protocol";
        v6 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_set_transport_protocol";
        v6 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void sub_181C2D824(nw_protocol_stack_t *a1, unint64_t a2)
{
  v3 = *a1;
  nw_protocol_stack_clear_application_protocols(*a1);
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_182AD3EB8())
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      while (1)
      {
        v5 = __OFSUB__(i--, 1);
        if (v5)
        {
          break;
        }

        v6 = MEMORY[0x1865DA790](i, a2);
        nw_protocol_stack_prepend_application_protocol(v3, *(v6 + 16));
        swift_unknownObjectRelease();
        if (!i)
        {
          return;
        }
      }

      __break(1u);
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
      a2 += 32;
      v8 = *(v7 + 16);
      v9 = i - 1;
      while (1)
      {
        v5 = __OFSUB__(i--, 1);
        if (v5)
        {
          break;
        }

        if (v9 >= v8)
        {
          goto LABEL_14;
        }

        nw_protocol_stack_prepend_application_protocol(v3, *(*(a2 + 8 * i) + 16));
        if (!i)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t *NWListener.init(using:on:)(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A08, &unk_182AEE970);
  v5 = swift_allocObject();
  *(v5 + 208) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 171) = 0u;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 204) = 128;
  v2[2] = v5;
  if (!v4)
  {
    v10 = *(a1 + 16);
    os_unfair_lock_lock((v10 + 24));
    v11 = *(v10 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v10 + 24));
    v9 = nw_listener_create(v11);
    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_181F4B3B8();
    swift_allocError();
    *v12 = 22;
    *(v12 + 4) = 0;
    swift_willThrow();

    swift_deallocPartialClassInstance();
    return v2;
  }

  sub_182AD3E18();
  v6 = *(a1 + 16);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 24));
  v8 = sub_182AD3048();

  v9 = nw_listener_create_with_port((v8 + 32), v7);
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2[3] = v9;
  v2[4] = a1;
  return v2;
}

NSObject *nw_listener_copy_parameters_with_port(void *a1, uint64_t a2, int a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = _nw_parameters_copy();
  v7 = nw_parameters_copy_local_endpoint(v5);
  v8 = v7;
  if (!v7)
  {
    host = nw_endpoint_create_host("::", a2);
    if (host)
    {
      nw_parameters_set_local_endpoint(v6, host);

      goto LABEL_74;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_listener_copy_parameters_with_port";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s nw_endpoint_create_host failed", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v66 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v21, type, &v66))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_endpoint_create_host failed", buf, 0xCu);
        }
      }

      else if (v66 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v35 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type[0];
          if (os_log_type_enabled(v36, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_copy_parameters_with_port";
            *&buf[12] = 2082;
            *&buf[14] = v35;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s nw_endpoint_create_host failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
          if (!v21)
          {
            goto LABEL_109;
          }

          goto LABEL_107;
        }

        v25 = __nwlog_obj();
        v55 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v25, v55, "%{public}s nw_endpoint_create_host failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v39 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v25, v39, "%{public}s nw_endpoint_create_host failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_106;
  }

  v9 = v7;
  v10 = _nw_endpoint_get_type(v9);

  if (v10 != 1)
  {
    if (!a3)
    {
      goto LABEL_74;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_listener_copy_parameters_with_port";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s Local endpoint is not an address: %{public}@", buf, 22);

    type[0] = OS_LOG_TYPE_ERROR;
    v66 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v21, type, &v66))
    {
      goto LABEL_106;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Local endpoint is not an address: %{public}@", buf, 0x16u);
      }
    }

    else if (v66 == OS_LOG_TYPE_INFO)
    {
      v30 = __nw_create_backtrace_string();
      if (v30)
      {
        v31 = v30;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_listener_copy_parameters_with_port";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2082;
          v68 = v31;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Local endpoint is not an address: %{public}@, dumping backtrace:%{public}s", buf, 0x20u);
        }

LABEL_41:
        free(v31);
        if (!v21)
        {
          goto LABEL_109;
        }

        goto LABEL_107;
      }

      v22 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v22, v51, "%{public}s Local endpoint is not an address: %{public}@, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v38 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v22, v38, "%{public}s Local endpoint is not an address: %{public}@, backtrace limit exceeded", buf, 0x16u);
      }
    }

LABEL_102:

    goto LABEL_106;
  }

  v11 = v9;
  address_family = _nw_endpoint_get_address_family(v11);

  if (address_family != 30 && address_family != 2)
  {
    if (!a3)
    {
      goto LABEL_74;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_listener_copy_parameters_with_port";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s Local endpoint has unsupported family: %{public}@", buf, 22);

    type[0] = OS_LOG_TYPE_ERROR;
    v66 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v21, type, &v66))
    {
      goto LABEL_106;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v28 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_181A37000, v22, v28, "%{public}s Local endpoint has unsupported family: %{public}@", buf, 0x16u);
      }
    }

    else if (v66 == OS_LOG_TYPE_INFO)
    {
      v46 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v47 = type[0];
      v48 = os_log_type_enabled(v22, type[0]);
      if (v46)
      {
        if (v48)
        {
          *buf = 136446722;
          *&buf[4] = "nw_listener_copy_parameters_with_port";
          *&buf[12] = 2114;
          *&buf[14] = v11;
          *&buf[22] = 2082;
          v68 = v46;
          _os_log_impl(&dword_181A37000, v22, v47, "%{public}s Local endpoint has unsupported family: %{public}@, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v46);
        if (!v21)
        {
          goto LABEL_109;
        }

        goto LABEL_107;
      }

      if (v48)
      {
        *buf = 136446466;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_181A37000, v22, v47, "%{public}s Local endpoint has unsupported family: %{public}@, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v56 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_181A37000, v22, v56, "%{public}s Local endpoint has unsupported family: %{public}@, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_102;
  }

  v13 = v11;
  port = _nw_endpoint_get_port(v13);

  if (!port)
  {
    memset(buf, 0, sizeof(buf));
    LODWORD(v68) = 0;
    if (nw_endpoint_fillout_v4v6_address(v13, buf))
    {
      address_with_port = nw_endpoint_create_address_with_port(buf, a2);
      if (address_with_port)
      {
        nw_parameters_set_local_endpoint(v6, address_with_port);

        goto LABEL_74;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      *type = 136446210;
      v72 = "nw_listener_copy_parameters_with_port";
      v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s nw_endpoint_create_address_with_port failed", type, 12);

      v66 = OS_LOG_TYPE_ERROR;
      v65 = 0;
      if (!__nwlog_fault(v21, &v66, &v65))
      {
        goto LABEL_106;
      }

      if (v66 == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = v66;
        if (os_log_type_enabled(v41, v66))
        {
          *type = 136446210;
          v72 = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s nw_endpoint_create_address_with_port failed", type, 0xCu);
        }

LABEL_105:

        goto LABEL_106;
      }

      if (v65 != 1)
      {
        v41 = __nwlog_obj();
        v57 = v66;
        if (os_log_type_enabled(v41, v66))
        {
          *type = 136446210;
          v72 = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v41, v57, "%{public}s nw_endpoint_create_address_with_port failed, backtrace limit exceeded", type, 0xCu);
        }

        goto LABEL_105;
      }

      v31 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v52 = v66;
      v53 = os_log_type_enabled(v41, v66);
      if (!v31)
      {
        if (v53)
        {
          *type = 136446210;
          v72 = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v41, v52, "%{public}s nw_endpoint_create_address_with_port failed, no backtrace", type, 0xCu);
        }

        goto LABEL_105;
      }

      if (v53)
      {
        *type = 136446466;
        v72 = "nw_listener_copy_parameters_with_port";
        v73 = 2082;
        v74 = v31;
        _os_log_impl(&dword_181A37000, v41, v52, "%{public}s nw_endpoint_create_address_with_port failed, dumping backtrace:%{public}s", type, 0x16u);
      }

      goto LABEL_82;
    }

    v60 = __nwlog_obj();
    *type = 136446210;
    v72 = "nw_listener_copy_parameters_with_port";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null success", type, 12);

    v66 = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v21, &v66, &v65))
    {
      if (v66 == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v61 = v66;
        if (os_log_type_enabled(v41, v66))
        {
          *type = 136446210;
          v72 = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v41, v61, "%{public}s called with null success", type, 0xCu);
        }

        goto LABEL_105;
      }

      if (v65 != 1)
      {
        v41 = __nwlog_obj();
        v64 = v66;
        if (os_log_type_enabled(v41, v66))
        {
          *type = 136446210;
          v72 = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v41, v64, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
        }

        goto LABEL_105;
      }

      v31 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v62 = v66;
      v63 = os_log_type_enabled(v41, v66);
      if (!v31)
      {
        if (v63)
        {
          *type = 136446210;
          v72 = "nw_listener_copy_parameters_with_port";
          _os_log_impl(&dword_181A37000, v41, v62, "%{public}s called with null success, no backtrace", type, 0xCu);
        }

        goto LABEL_105;
      }

      if (v63)
      {
        *type = 136446466;
        v72 = "nw_listener_copy_parameters_with_port";
        v73 = 2082;
        v74 = v31;
        _os_log_impl(&dword_181A37000, v41, v62, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
      }

LABEL_82:

      goto LABEL_41;
    }

LABEL_106:
    if (!v21)
    {
      goto LABEL_109;
    }

LABEL_107:
    v58 = v21;
    goto LABEL_108;
  }

  if (*a2 == 48 && !*(a2 + 1))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v49 = gLogObj;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_listener_copy_parameters_with_port";
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s Create with port used port 0, using port from local endpoint", buf, 0xCu);
    }
  }

  else if (a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nw_listener_copy_parameters_with_port";
    *&buf[12] = 2082;
    *&buf[14] = a2;
    *&buf[22] = 2114;
    v68 = v13;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s Local endpoint has port set, cannot override to %{public}s: %{public}@", buf, 32);

    type[0] = OS_LOG_TYPE_ERROR;
    v66 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v16, type, &v66))
    {
      goto LABEL_98;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2082;
        *&buf[14] = a2;
        *&buf[22] = 2114;
        v68 = v13;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Local endpoint has port set, cannot override to %{public}s: %{public}@", buf, 0x20u);
      }
    }

    else if (v66 == OS_LOG_TYPE_INFO)
    {
      v43 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v44 = type[0];
      v45 = os_log_type_enabled(v17, type[0]);
      if (v43)
      {
        if (v45)
        {
          *buf = 136446978;
          *&buf[4] = "nw_listener_copy_parameters_with_port";
          *&buf[12] = 2082;
          *&buf[14] = a2;
          *&buf[22] = 2114;
          v68 = v13;
          v69 = 2082;
          v70 = v43;
          _os_log_impl(&dword_181A37000, v17, v44, "%{public}s Local endpoint has port set, cannot override to %{public}s: %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v43);
LABEL_98:
        if (v16)
        {
          v58 = v16;
LABEL_108:
          free(v58);
        }

LABEL_109:
        v50 = 0;
        goto LABEL_110;
      }

      if (v45)
      {
        *buf = 136446722;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2082;
        *&buf[14] = a2;
        *&buf[22] = 2114;
        v68 = v13;
        _os_log_impl(&dword_181A37000, v17, v44, "%{public}s Local endpoint has port set, cannot override to %{public}s: %{public}@, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v54 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_listener_copy_parameters_with_port";
        *&buf[12] = 2082;
        *&buf[14] = a2;
        *&buf[22] = 2114;
        v68 = v13;
        _os_log_impl(&dword_181A37000, v17, v54, "%{public}s Local endpoint has port set, cannot override to %{public}s: %{public}@, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_98;
  }

LABEL_74:
  v50 = v6;
LABEL_110:

  return v50;
}

unint64_t sub_181C2EC98@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  v5 = a3;
  if (a2 == 4294901760)
  {
    v6 = 0;
  }

  else
  {
    v4 = result;
    v6 = a2;
  }

  if (a2 == 4294901760)
  {
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v7 = a3;
  }

  if (result)
  {
    v4 = result;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  if (result)
  {
    v6 = a2;
  }

  *(a4 + 16) = v4;
  *(a4 + 24) = v6;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  *(a4 + 32) = v8;
  if (result)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  *(a4 + 40) = v9;
  if (result)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 != 4294901760;
  }

  *(a4 + 42) = v10;
  *(a4 + 44) = 0;
  *(a4 + 52) = 1;
  *(a4 + 56) = 0;
  return result;
}

uint64_t sub_181C2ED10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 60))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void nw_parameters_set_local_endpoint(nw_parameters_t parameters, nw_endpoint_t local_endpoint)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_local_endpoint(parameters, local_endpoint);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_local_endpoint";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_local_endpoint";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_local_endpoint";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_local_endpoint";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_local_endpoint";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_set_server_mode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_server_mode(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_server_mode";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_server_mode";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_server_mode";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_server_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_server_mode";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void NWListener.newConnectionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181C4E92C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  if (a1)
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_181D8C8E0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D8BD0C;
    aBlock[3] = &block_descriptor_12;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1, a2);

    nw_listener_set_new_connection_handler(v7, v9);
    _Block_release(v9);
    sub_181A554F4(a1, a2);
  }

  else
  {
    nw_listener_set_new_connection_handler(*(v2 + 24), 0);
  }
}

uint64_t sub_181C2F3B8()
{

  return swift_deallocObject();
}

void nw_listener_set_new_connection_handler(nw_listener_t listener, nw_listener_new_connection_handler_t handler)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = handler;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_new_connection_handler_block_invoke;
    aBlock[3] = &unk_1E6A3D710;
    v15 = v3;
    v16 = v4;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[1]);
    v5[2](v5);
    os_unfair_lock_unlock(&v3[1]);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_new_connection_handler";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null listener", buf, 12);

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_new_connection_handler";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_new_connection_handler";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void __nw_listener_set_new_connection_handler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 4)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v9 = 136446466;
        v10 = "nw_listener_set_new_connection_handler_block_invoke";
        v11 = 2082;
        v12 = id_string;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Cannot set new connection handler after cancel", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = _Block_copy(*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;
  }
}

void NWListener.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6 + 52);
  sub_181C4E988(&v6[4], aBlock);
  os_unfair_lock_unlock(v6 + 52);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v7 = *(v2 + 24);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_181C570B4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181C56F4C;
    aBlock[3] = &block_descriptor_6_1;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1, a2);

    nw_listener_set_state_changed_handler(v7, v9);
    sub_181A554F4(a1, a2);
    _Block_release(v9);
  }

  else
  {
    sub_181A554F4(a1, a2);
  }
}

uint64_t sub_181C2FA10()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void NWListener.start(queue:)(NSObject *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 208));
  sub_181C51A38(v4 + 16);
  os_unfair_lock_unlock((v4 + 208));
  os_unfair_lock_lock((v4 + 208));
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181C571A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5, v6);
  os_unfair_lock_unlock((v4 + 208));
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_181C4DBD0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_181AA39C0(v10, v9);
  sub_181AA39C0(v10, v9);
  NWListener.stateUpdateHandler.setter(v10, v9);
  sub_181A554F4(v10, v9);
  sub_181A554F4(v10, v9);
  v11 = *(v2 + 24);
  nw_listener_set_queue(v11, a1);
  nw_listener_start(v11);
}

uint64_t sub_181C2FBBC()
{

  return swift_deallocObject();
}

void __nw_listener_set_queue_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "nw_listener_set_queue_block_invoke";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s Error in client: nw_listener_set_queue called after nw_listener_start", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v16 = "nw_listener_set_queue_block_invoke";
        v7 = "%{public}s Error in client: nw_listener_set_queue called after nw_listener_start";
LABEL_17:
        v11 = v5;
        v12 = v6;
        goto LABEL_18;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v16 = "nw_listener_set_queue_block_invoke";
        v7 = "%{public}s Error in client: nw_listener_set_queue called after nw_listener_start, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_19:

          if (!v4)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        *buf = 136446210;
        v16 = "nw_listener_set_queue_block_invoke";
        v7 = "%{public}s Error in client: nw_listener_set_queue called after nw_listener_start, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_18:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_19;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "nw_listener_set_queue_block_invoke";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s Error in client: nw_listener_set_queue called after nw_listener_start, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
LABEL_13:
      v2 = *(a1 + 32);
      goto LABEL_14;
    }

LABEL_12:
    free(v4);
    goto LABEL_13;
  }

LABEL_14:
  objc_storeStrong((v2 + 64), *(a1 + 40));
}

void *__nw_listener_start_block_invoke_57(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 88) != 0;
  *(*(result[6] + 8) + 24) = *(result[4] + 96) != 0;
  *(*(result[7] + 8) + 24) = *(result[4] + 112) != 0;
  return result;
}

void nw_listener_set_state_on_queue(void *a1, int a2, void *a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  nw_context_assert_queue(*(v5 + 3));
  v7 = v5[32];
  if (v7 < 3 || (v7 == 3 ? (v13 = a2 == 4) : (v13 = 0), v13))
  {
    if (v7 == a2)
    {
      v8 = *(v5 + 17);
      v9 = v6;
      v10 = v9;
      if (v8 && v9)
      {
        if (v8[2] != v9[2])
        {

          goto LABEL_42;
        }

        v11 = v8[3];
        v12 = v9[3];

        if (v11 != v12)
        {
          goto LABEL_42;
        }
      }

      else
      {

        if (v8 != v10)
        {
          goto LABEL_22;
        }
      }

      if ((*(v5 + 310) & 2) != 0)
      {
        v19 = *(v5 + 2);
        if (!v19)
        {
          goto LABEL_113;
        }

        if ((_nw_parameters_get_allow_duplicate_state_updates(v19) & 1) == 0)
        {
          v66 = *(v5 + 2);
          if (v66 && !_nw_parameters_get_logging_disabled(v66))
          {
            if (__nwlog_listener_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
            }

            v67 = glistenerLogObj;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_listener_get_id_string(v5);
              v69 = off_1E6A2E200[a2];
              *buf = 136446978;
              *&buf[4] = "nw_listener_set_state_on_queue";
              *&buf[12] = 2082;
              *&buf[14] = id_string;
              *&buf[22] = 2082;
              v105 = v69;
              *v106 = 2114;
              *&v106[2] = v10;
              _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Skipping update for identical state and error (state: %{public}s, error: %{public}@)", buf, 0x2Au);
            }
          }

          goto LABEL_113;
        }
      }
    }

LABEL_22:
    if (!v6 && a2 == 1 && !v5[32])
    {
      v20 = 1;
      goto LABEL_43;
    }

LABEL_42:
    v20 = 0;
    *(v5 + 310) |= 2u;
LABEL_43:
    v33 = *(v5 + 2);
    if (v33 && !_nw_parameters_get_logging_disabled(v33))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v34 = glistenerLogObj;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = v5;
        v36 = v35 + 42;

        v37 = v5[32];
        if (v37 > 4)
        {
          v38 = "<unknown>";
        }

        else
        {
          v38 = off_1E6A2E220[v37];
        }

        v39 = off_1E6A2E220[a2];
        *buf = 136447490;
        *&buf[4] = "nw_listener_set_state_on_queue";
        v40 = "";
        *&buf[14] = v36;
        *&buf[12] = 2082;
        if (v20)
        {
          v40 = ", suppressing client notification";
        }

        *&buf[22] = 2082;
        v105 = v38;
        *v106 = 2082;
        *&v106[2] = v39;
        *&v106[10] = 2114;
        *&v106[12] = v6;
        v107 = 2082;
        v108 = v40;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] %{public}s -> %{public}s, error: %{public}@%{public}s", buf, 0x3Eu);
      }
    }

    objc_storeStrong(v5 + 17, a3);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v105 = __Block_byref_object_copy__11;
    *v106 = __Block_byref_object_dispose__12;
    *&v106[8] = 0;
    *type = 0;
    v91 = type;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__18668;
    v94 = __Block_byref_object_dispose__18669;
    v95 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__18668;
    v88 = __Block_byref_object_dispose__18669;
    v89 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL30nw_listener_set_state_on_queueP22NWConcrete_nw_listener19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A2E0A0;
    v41 = v5;
    v83 = a2;
    v79 = v41;
    v80 = buf;
    v81 = type;
    v82 = &v84;
    v42 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 2);
    v42[2](v42);
    os_unfair_lock_unlock(v5 + 2);

    if ((a2 - 3) <= 1)
    {
      nw_listener_teardown_on_queue(v41);
    }

    if (*(*&buf[8] + 40))
    {
      v43 = v20;
    }

    else
    {
      v43 = 1;
    }

    if ((v43 & 1) == 0)
    {
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = ___ZL30nw_listener_set_state_on_queueP22NWConcrete_nw_listener19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_2;
      v73[3] = &unk_1E6A2E0C8;
      v76 = buf;
      v77 = a2;
      v44 = v6;
      v74 = v44;
      v45 = v41;
      v75 = v45;
      v46 = _Block_copy(v73);
      if (*(v91 + 5))
      {
        v47 = *(v5 + 2);
        if (v47 && !_nw_parameters_get_logging_disabled(v47))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v48 = glistenerLogObj;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v45;

            v50 = off_1E6A2E220[a2];
            *v96 = 136446978;
            v97 = "nw_listener_set_state_on_queue";
            v98 = 2082;
            v99 = v49 + 42;
            v100 = 2082;
            v101 = v50;
            v102 = 2114;
            v103 = v44;
            _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] reporting state %{public}s (%{public}@)", v96, 0x2Au);
          }
        }

        v51 = *(v91 + 5);
        v52 = *(v45 + 18);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZL30nw_listener_set_state_on_queueP22NWConcrete_nw_listener19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_208;
        block[3] = &unk_1E6A2ED20;
        v72 = &v84;
        v71 = v46;
        v53 = v51;
        v54 = dispatch_block_create_with_qos_class(0, v52, 0, block);
        dispatch_async(v53, v54);
      }

      else if (nw_context_is_inline(*(v5 + 3)))
      {
        v55 = *(v5 + 2);
        if (v55 && !_nw_parameters_get_logging_disabled(v55))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v56 = glistenerLogObj;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v45;

            v58 = off_1E6A2E220[a2];
            *v96 = 136446978;
            v97 = "nw_listener_set_state_on_queue";
            v98 = 2082;
            v99 = v57 + 42;
            v100 = 2082;
            v101 = v58;
            v102 = 2114;
            v103 = v44;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] reporting state %{public}s (%{public}@) inline", v96, 0x2Au);
          }
        }

        nw_utilities_execute_block_as_persona_from_parameters(v85[5], v46);
      }
    }

    _Block_object_dispose(&v84, 8);
    _Block_object_dispose(type, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_113;
  }

  v14 = *(v5 + 2);
  if (!v14 || _nw_parameters_get_logging_disabled(v14))
  {
    goto LABEL_113;
  }

  if (__nwlog_listener_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
  }

  v15 = glistenerLogObj;
  v16 = v5;

  v17 = v5[32];
  if (v17 > 4)
  {
    v18 = "<unknown>";
  }

  else
  {
    v18 = off_1E6A2E220[v17];
  }

  v21 = off_1E6A2E220[a2];
  *buf = 136446978;
  *&buf[4] = "nw_listener_set_state_on_queue";
  *&buf[12] = 2082;
  *&buf[14] = v16 + 42;
  *&buf[22] = 2082;
  v105 = v18;
  *v106 = 2082;
  *&v106[2] = v21;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s [%{public}s] Invalid state transition: %{public}s -> %{public}s", buf, 42);

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v84) = 0;
  if (__nwlog_fault(v22, type, &v84))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v23 = glistenerLogObj;
      v24 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {

        v25 = v5[32];
        if (v25 > 4)
        {
          v26 = "<unknown>";
        }

        else
        {
          v26 = off_1E6A2E220[v25];
        }

        *buf = 136446978;
        *&buf[4] = "nw_listener_set_state_on_queue";
        *&buf[12] = 2082;
        *&buf[14] = v16 + 42;
        *&buf[22] = 2082;
        v105 = v26;
        *v106 = 2082;
        *&v106[2] = v21;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [%{public}s] Invalid state transition: %{public}s -> %{public}s", buf, 0x2Au);
      }
    }

    else if (v84 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (backtrace_string)
      {
        v28 = backtrace_string;
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v29 = glistenerLogObj;
        v30 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {

          v31 = v5[32];
          if (v31 > 4)
          {
            v32 = "<unknown>";
          }

          else
          {
            v32 = off_1E6A2E220[v31];
          }

          *buf = 136447234;
          *&buf[4] = "nw_listener_set_state_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v16 + 42;
          *&buf[22] = 2082;
          v105 = v32;
          *v106 = 2082;
          *&v106[2] = v21;
          *&v106[10] = 2082;
          *&v106[12] = v28;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s [%{public}s] Invalid state transition: %{public}s -> %{public}s, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v28);
        if (v22)
        {
          goto LABEL_112;
        }

        goto LABEL_113;
      }

      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v23 = glistenerLogObj;
      v62 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        v63 = nw_listener_get_id_string(v16);
        v64 = v5[32];
        if (v64 > 4)
        {
          v65 = "<unknown>";
        }

        else
        {
          v65 = off_1E6A2E220[v64];
        }

        *buf = 136446978;
        *&buf[4] = "nw_listener_set_state_on_queue";
        *&buf[12] = 2082;
        *&buf[14] = v63;
        *&buf[22] = 2082;
        v105 = v65;
        *v106 = 2082;
        *&v106[2] = v21;
        _os_log_impl(&dword_181A37000, v23, v62, "%{public}s [%{public}s] Invalid state transition: %{public}s -> %{public}s, no backtrace", buf, 0x2Au);
      }
    }

    else
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v23 = glistenerLogObj;
      v59 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {

        v60 = v5[32];
        if (v60 > 4)
        {
          v61 = "<unknown>";
        }

        else
        {
          v61 = off_1E6A2E220[v60];
        }

        *buf = 136446978;
        *&buf[4] = "nw_listener_set_state_on_queue";
        *&buf[12] = 2082;
        *&buf[14] = v16 + 42;
        *&buf[22] = 2082;
        v105 = v61;
        *v106 = 2082;
        *&v106[2] = v21;
        _os_log_impl(&dword_181A37000, v23, v59, "%{public}s [%{public}s] Invalid state transition: %{public}s -> %{public}s, backtrace limit exceeded", buf, 0x2Au);
      }
    }
  }

  if (v22)
  {
LABEL_112:
    free(v22);
  }

LABEL_113:
}

void sub_181C30BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v50 - 192), 8);

  _Unwind_Resume(a1);
}

void ___ZL30nw_listener_set_state_on_queueP22NWConcrete_nw_listener19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 128) = *(a1 + 64);
  v2 = _Block_copy(*(*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 64));
  v5 = _nw_parameters_copy();
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

NWConcrete_nw_path_evaluator *nw_path_create_evaluator_for_listener(void *a1, int *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (!v4)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_create_evaluator_for_listener";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
LABEL_32:
      if (!v15)
      {
LABEL_34:
        v13 = 0;
        goto LABEL_35;
      }

LABEL_33:
      free(v15);
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_path_create_evaluator_for_listener";
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v28 != 1)
    {
      v16 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_path_create_evaluator_for_listener";
        _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v31 = "nw_path_create_evaluator_for_listener";
        _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v26)
    {
      *buf = 136446466;
      v31 = "nw_path_create_evaluator_for_listener";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v5 = objc_alloc_init(NWConcrete_nw_path_evaluator);
  v6 = v5;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v31 = "nw_path_create_evaluator_for_listener";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_path_create_evaluator_for_listener";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed", buf, 0xCu);
      }

LABEL_31:

      goto LABEL_32;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_path_create_evaluator_for_listener";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v19 = type;
    v20 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v31 = "nw_path_create_evaluator_for_listener";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v20)
    {
      *buf = 136446466;
      v31 = "nw_path_create_evaluator_for_listener";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v19, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_24:

    free(backtrace_string);
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  objc_storeStrong(v5 + 1, a1);
  *(v6 + 107) |= 2u;
  v7 = _nw_parameters_copy_default_protocol_stack();
  if (v7)
  {
    v8 = _nw_protocol_stack_copy_transport_protocol();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
      }

      v11 = nw_protocol_options_matches_definition(v10, nw_protocol_copy_custom_ip_definition_definition);

      if (v11)
      {
        *(v6 + 106) = nw_custom_ip_options_get_protocol(v10);
      }
    }
  }

  if ((nw_path_evaluator_evaluate(v6, a2) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v31 = "nw_path_create_evaluator_for_listener";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s nw_path_evaluator_evaluate failed", buf, 0xCu);
    }

    v6 = 0;
  }

  v13 = v6;

LABEL_35:
  return v13;
}

void nw_listener_clear_trigger_agents_on_queue(NWConcrete_nw_listener *a1)
{
  v4 = a1;
  nw_context_assert_queue(*(v4 + 3));
  v1 = *(v4 + 23);
  *(v4 + 23) = 0;

  v2 = *(v4 + 24);
  *(v4 + 24) = 0;

  v3 = *(v4 + 25);
  *(v4 + 25) = 0;
}

id nw_listener_find_socket_inbox_match_on_queue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  nw_context_assert_queue(v3[3]);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__18668;
  v17 = __Block_byref_object_dispose__18669;
  v18 = 0;
  v5 = v3[18];
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL44nw_listener_find_socket_inbox_match_on_queueP22NWConcrete_nw_listenerPU27objcproto16OS_nw_parameters8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A35E30;
    v10 = v4;
    v11 = v3;
    v12 = &v13;
    _nw_array_apply(v5, aBlock);

    v6 = v14[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_181C31578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id nw_parameters_copy_custom_proxy_configs(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_custom_proxy_configs_block_invoke;
    v13[3] = &unk_1E6A2E2F0;
    v13[4] = buf;
    _nw_parameters_iterate_custom_proxy_configs(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_custom_proxy_configs";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_custom_proxy_configs";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_custom_proxy_configs";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_custom_proxy_configs";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_custom_proxy_configs";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181C3192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_path_copy_proxy_configs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_path_copy_proxy_configs();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_path_copy_proxy_configs";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_path_copy_proxy_configs";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_path_copy_proxy_configs";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_path_copy_proxy_configs";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_path_copy_proxy_configs";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

void nw_path_enumerate_interface_options(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __nw_path_enumerate_interface_options_block_invoke;
  v5[3] = &unk_1E6A39BD8;
  v6 = v3;
  v4 = v3;
  nw_path_enumerate_interface_options_with_details(a1, v5);
}

uint64_t sub_181C31CC0(uint64_t a1, uint64_t a2)
{
  v131 = 0;
  v216 = *MEMORY[0x1E69E9840];
  v175[2] = a2;
  v2 = &v176;
  v3 = *(a1 + 8);
  v151 = *a1;
  v215 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v212 = *(a1 + 56);
  v213 = v5;
  v214[0] = *(a1 + 88);
  *(v214 + 12) = *(a1 + 100);
  v211 = *(a1 + 40);
  v6 = *(a1 + 116);
  *(v210 + 11) = *(a1 + 224);
  v7 = *(a1 + 213);
  v8 = *(a1 + 181);
  v209 = *(a1 + 197);
  v210[0] = v7;
  v9 = *(a1 + 149);
  v207 = *(a1 + 165);
  v208 = v8;
  v10 = *(a1 + 117);
  v205 = *(a1 + 133);
  v206 = v9;
  v11 = *(a1 + 240);
  v12 = *(a1 + 248);
  v13 = *(a1 + 264);
  v14 = *(a1 + 280);
  v203 = *(a1 + 296);
  v204 = v10;
  v201 = v13;
  v202 = v14;
  v200 = v12;
  v15 = *(a1 + 312);
  v16 = *(a1 + 320);
  v17 = *(a1 + 336);
  v18 = *(a1 + 352);
  *(v199 + 10) = *(a1 + 362);
  v198 = v17;
  v199[0] = v18;
  v197 = v16;
  v154 = v15;
  v155 = a2;
  v153 = v3;
  v152 = v6;
  if (!v15)
  {
    if (v6 != 1 || !v3)
    {
      goto LABEL_84;
    }

LABEL_72:
    v176 = 0;
    v177 = 0;
    v100 = sub_181AC1C5C(&v176, &v178);
    v101 = *(v153 + 16);
    if ((v101 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v101))
    {
      v102 = v100;

      v103 = nw_interface_create_with_index(v101);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_181ADBA10(0, *(v102 + 2), 0, v102);
      }

      v104 = nw_interface_option_details_create(v103, v102 + 2, 0, 0, 0, -1);

      if (v104)
      {
        (*(v155 + 16))(v155, v104);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v3 = v153;

        LOBYTE(v6) = v152;
        goto LABEL_84;
      }

      v170 = v4;
      if (qword_1ED4106B8 == -1)
      {
        goto LABEL_79;
      }

      goto LABEL_106;
    }

    __break(1u);
LABEL_106:
    swift_once();
LABEL_79:
    v105 = sub_182AD2698();
    __swift_project_value_buffer(v105, qword_1ED411DA8);
    v106 = v153;

    v107 = sub_182AD2678();
    v108 = sub_182AD38B8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v176 = v169;
      *v109 = 136315138;
      v168 = v107;
      v111 = *(v106 + 40);
      v110 = *(v106 + 48);

      v112 = sub_181C64FFC(v111, v110, &v176);

      *(v109 + 4) = v112;
      v113 = v168;
      _os_log_impl(&dword_181A37000, v168, v108, "Unable to create interface option details for %s", v109, 0xCu);
      v114 = v169;
      __swift_destroy_boxed_opaque_existential_1(v169);
      MEMORY[0x1865DF520](v114, -1, -1);
      MEMORY[0x1865DF520](v109, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    LOBYTE(v6) = v152;
    v3 = v106;
    v4 = v170;
    goto LABEL_84;
  }

  v150 = v11;
  v19 = v15[4];
  v20 = v15[3] + v19;
  if (v15[2] < v20)
  {
    v20 = v15[2];
  }

  v172 = v15;
  v173 = v19;
  v174 = v20;
  v148 = v195;
  v149 = v193;
  v130 = a2 + 16;
  swift_retain_n();
  LODWORD(v147) = 0;
  v21.n128_u64[0] = 136315394;
  v129 = v21;
  while (1)
  {
    if (v19 != v174)
    {
      v23 = v172;
      goto LABEL_10;
    }

    v22 = sub_181AC81FC(v21);
    v23 = v172;
    if ((v22 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v24 = v173;
    v19 = ++v173;
    v25 = &v23[3 * v24];
    v26 = *(v25 + 10);
    v27 = *(v25 + 11);
    v28 = *(v25 + 48);
    LODWORD(v170) = *(v25 + 49);
    LODWORD(v169) = *(v25 + 50);
    v29 = *(v25 + 51);
    v167 = *(v25 + 52);
    LODWORD(v168) = v29;
    v30 = *(v25 + 53);
    v165 = *(v25 + 54);
    v166 = v30;
    v31 = *(v25 + 55);
    v163 = *(v25 + 56);
    v164 = v31;
    v32 = *(v25 + 57);
    v161 = *(v25 + 58);
    v162 = v32;
    v33 = *(v25 + 59);
    v159 = *(v25 + 60);
    v160 = v33;
    v34 = *(v25 + 61);
    v157 = *(v25 + 62);
    v158 = v34;
    v156 = *(v25 + 63);
    swift_beginAccess();
    v35 = swift_unknownObjectRetain();
    v36 = nw_path_copy_interface_with_generation(v35, v26, v27);
    if (v36)
    {
      v37 = v36;
      v38 = v4;
      v39 = *&v36[OBJC_IVAR____TtC7Network13__NWInterface_interface];

      v176 = v151;
      v177 = v153;
      v178 = v215;
      v40 = v38;
      v179 = v38;
      v181 = v212;
      v182 = v213;
      *v183 = v214[0];
      *&v183[12] = *(v214 + 12);
      v180 = v211;
      v184 = v152;
      v188 = v207;
      v187 = v206;
      v186 = v205;
      v185 = v204;
      *&v191[11] = *(v210 + 11);
      *v191 = v210[0];
      v190 = v209;
      v189 = v208;
      v41 = v200;
      v42 = v201;
      v43 = v203;
      v45 = v149;
      v44 = v150;
      v149[2] = v202;
      v45[3] = v43;
      *v45 = v41;
      v45[1] = v42;
      v192 = v44;
      v194 = v154;
      v46 = v197;
      v47 = v198;
      v48 = v199[0];
      v49 = v148;
      *(v148 + 42) = *(v199 + 10);
      v49[1] = v47;
      v49[2] = v48;
      *v49 = v46;
      v171 = v39;
      if (sub_181C54400(&v171))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v4 = v38;
      }

      else
      {
        can_use_channel_syscalls = nw_path_can_use_channel_syscalls();
        if (can_use_channel_syscalls)
        {
          v51 = v28;
        }

        else
        {
          v51 = 0;
        }

        LODWORD(v147) = v51;
        v52 = v170;
        if (!can_use_channel_syscalls)
        {
          v52 = 0;
        }

        LODWORD(v146) = v52;
        if (can_use_channel_syscalls)
        {
          v53 = v169;
        }

        else
        {
          v53 = 0;
        }

        v54 = v168;
        if (!can_use_channel_syscalls)
        {
          v54 = 0;
        }

        v144 = v54;
        LODWORD(v145) = v53;
        v55 = v167;
        if (!can_use_channel_syscalls)
        {
          v55 = 0;
        }

        LODWORD(v143) = v55;
        v56 = v166;
        if (!can_use_channel_syscalls)
        {
          v56 = 0;
        }

        LODWORD(v142) = v56;
        v57 = v165;
        if (!can_use_channel_syscalls)
        {
          v57 = 0;
        }

        LODWORD(v141) = v57;
        v58 = v164;
        if (!can_use_channel_syscalls)
        {
          v58 = 0;
        }

        LODWORD(v140) = v58;
        if (can_use_channel_syscalls)
        {
          v59 = v163;
        }

        else
        {
          v59 = 0;
        }

        v60 = v162;
        if (!can_use_channel_syscalls)
        {
          v60 = 0;
        }

        v138 = v60;
        LODWORD(v139) = v59;
        if (can_use_channel_syscalls)
        {
          v61 = v161;
        }

        else
        {
          v61 = 0;
        }

        v62 = v160;
        if (!can_use_channel_syscalls)
        {
          v62 = 0;
        }

        v136 = v62;
        v137 = v61;
        if (can_use_channel_syscalls)
        {
          v63 = v159;
        }

        else
        {
          v63 = 0;
        }

        v64 = v158;
        if (!can_use_channel_syscalls)
        {
          v64 = 0;
        }

        v134 = v64;
        v135 = v63;
        if (can_use_channel_syscalls)
        {
          v65 = v157;
        }

        else
        {
          v65 = 0;
        }

        v66 = v156;
        if (!can_use_channel_syscalls)
        {
          v66 = 0;
        }

        v132 = v66;
        v133 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730, &qword_182AEDF30);
        v67 = swift_allocObject();
        v68 = _swift_stdlib_malloc_size(v67);
        *(v67 + 16) = 16;
        *(v67 + 24) = 2 * v68 - 64;
        *(v67 + 32) = v147;
        *(v67 + 33) = v146;
        v69 = v144;
        *(v67 + 34) = v145;
        *(v67 + 35) = v69;
        *(v67 + 36) = v143;
        *(v67 + 37) = v142;
        *(v67 + 38) = v141;
        *(v67 + 39) = v140;
        v70 = v138;
        *(v67 + 40) = v139;
        *(v67 + 41) = v70;
        v71 = v136;
        *(v67 + 42) = v137;
        *(v67 + 43) = v71;
        v72 = v134;
        *(v67 + 44) = v135;
        *(v67 + 45) = v72;
        v73 = v132;
        *(v67 + 46) = v133;
        *(v67 + 47) = v73;
        v74 = *(v40 + 30);
        if (v74)
        {
          v75 = *(v74 + 128);
          v147 = *(v74 + 120);
          v145 = v75;
          sub_181AA39C0(v147, v75);
        }

        else
        {
          v147 = 0;
          v145 = 0;
        }

        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_181ADBA10(0, *(v67 + 16), 0, v67);
        }

        v146 = nw_interface_option_details_create(v37, (v67 + 32), 0, 0, 0, -1);
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease();
        if (v146)
        {
          v76 = v147;
          v77 = v145;
          if (v147)
          {

            v76(v146);
            v77 = v145;
            sub_181A554F4(v76, v145);
          }

          v78 = *(v155 + 16);
          v147 = v76;
          v78(v155, v146);
          swift_unknownObjectRelease();

          sub_181A554F4(v147, v77);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v79 = sub_182AD2698();
          __swift_project_value_buffer(v79, qword_1ED411DA8);
          swift_unknownObjectRetain();
          v80 = sub_182AD2678();
          v81 = sub_182AD38B8();
          v146 = v80;
          v144 = v81;
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v143 = v82;
            v142 = swift_slowAlloc();
            v176 = v142;
            *v82 = v129.n128_u32[0];
            v83 = [v37 description];
            v84 = sub_182AD2F88();
            v140 = v85;
            v141 = v84;
            swift_unknownObjectRelease();

            v139 = sub_181C64FFC(v141, v140, &v176);

            v141 = &v129;
            v87 = v143;
            *(v143 + 1) = v139;
            *(v87 + 6) = 2080;
            MEMORY[0x1EEE9AC00](v86);
            *(&v129 - 16) = v28;
            *(&v129 - 15) = v170;
            *(&v129 - 14) = v169;
            v88 = v167;
            *(&v129 - 13) = v168;
            *(&v129 - 12) = v88;
            v89 = v165;
            *(&v129 - 11) = v166;
            *(&v129 - 10) = v89;
            v90 = v163;
            *(&v129 - 9) = v164;
            *(&v129 - 8) = v90;
            v91 = v161;
            *(&v129 - 7) = v162;
            *(&v129 - 6) = v91;
            v92 = v159;
            *(&v129 - 5) = v160;
            *(&v129 - 4) = v92;
            v93 = v157;
            *(&v129 - 3) = v158;
            *(&v129 - 2) = v93;
            *(&v129 - 1) = v156;
            v94 = v131;
            v95 = sub_182AD30D8();
            v131 = v94;
            v97 = sub_181C64FFC(v95, v96, &v176);

            v98 = v143;
            *(v143 + 14) = v97;
            _os_log_impl(&dword_181A37000, &v146->super, v144, "Unable to create interface option details with '%s' ['%s']", v98, 0x16u);
            v99 = v142;
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v99, -1, -1);
            MEMORY[0x1865DF520](v98, -1, -1);
            swift_unknownObjectRelease();

            sub_181A554F4(v147, v145);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();

            sub_181A554F4(v147, v145);
            swift_unknownObjectRelease_n();
          }
        }

        LODWORD(v147) = 1;
        v4 = v40;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  LOBYTE(v6) = v152;
  if (v147 & 1 | (v152 != 1))
  {
    v11 = v150;
    v3 = v153;
    goto LABEL_84;
  }

  v11 = v150;
  v3 = v153;
  if (v153)
  {
    goto LABEL_72;
  }

LABEL_84:
  v176 = v151;
  v177 = v3;
  v178 = v215;
  v179 = v4;
  v181 = v212;
  v182 = v213;
  *v183 = v214[0];
  *&v183[12] = *(v214 + 12);
  v180 = v211;
  v184 = v6;
  v188 = v207;
  v187 = v206;
  v186 = v205;
  v185 = v204;
  *&v191[11] = *(v210 + 11);
  *v191 = v210[0];
  v190 = v209;
  v189 = v208;
  v193[2] = v202;
  v193[3] = v203;
  v193[1] = v201;
  v193[0] = v200;
  v192 = v11;
  v194 = v154;
  *(v196 + 10) = *(v199 + 10);
  v195[1] = v198;
  v196[0] = v199[0];
  v195[0] = v197;
  result = sub_181C4FE14();
  v116 = result;
  if (result)
  {
    v117 = swift_unknownObjectRetain();
    LODWORD(v2) = nw_migration_policy_get_exclusive(v117);
    if (qword_1ED4106B8 != -1)
    {
LABEL_103:
      swift_once();
    }

    v118 = sub_182AD2698();
    __swift_project_value_buffer(v118, qword_1ED411DA8);
    v119 = sub_182AD2678();
    v120 = sub_182AD38A8();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 67109120;
      *(v121 + 4) = v2 ^ 1;
      _os_log_impl(&dword_181A37000, v119, v120, "Migration policy present, enumerating path interfaces: %{BOOL}d", v121, 8u);
      MEMORY[0x1865DF520](v121, -1, -1);
    }

    result = swift_unknownObjectRelease();
    if (v2)
    {
      goto LABEL_100;
    }
  }

  if (!v11)
  {
    goto LABEL_99;
  }

  v122 = v11[4];
  v123 = v11;
  if (v11[2] >= v11[3] + v122)
  {
    v124 = v11[3] + v122;
  }

  else
  {
    v124 = v11[2];
  }

  v176 = v123;
  v177 = v122;
  *&v178 = v124;
  v125 = swift_retain_n();
  while (2)
  {
    if (v122 != v124)
    {
LABEL_95:
      LODWORD(v2) = v122 + 1;
      v177 = v122 + 1;
      (*(v155 + 16))(v155, v125[v122++ + 5]);
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v126))
  {
    v125 = v176;
    v122 = v177;
    v124 = v178;
    goto LABEL_95;
  }

LABEL_99:
  if (v116)
  {
LABEL_100:
    v127 = swift_allocObject();
    *(v127 + 16) = sub_181AA94F4;
    *(v127 + 24) = v175;
    v179 = sub_181FCE6B4;
    *&v180 = v127;
    v176 = MEMORY[0x1E69E9820];
    v177 = 1107296256;
    *&v178 = sub_181EC635C;
    *(&v178 + 1) = &block_descriptor_32;
    v128 = _Block_copy(&v176);
    v11 = v180;

    nw_migration_policy_enumerate_interface_options(v116, v128);
    swift_unknownObjectRelease();
    _Block_release(v128);
    LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

    if (v128)
    {
      __break(1u);
      goto LABEL_103;
    }
  }

  return result;
}

id nw_interface_option_details_copy_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_interface";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null interface_option_details", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null interface_option_details", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_interface_option_details_copy_interface";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

BOOL nw_path_flow_registration_uses_nexus(void *a1, const unsigned __int8 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_path_flow_registration_uses_nexus";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null flow_registration", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v8, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_path_flow_registration_uses_nexus";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null flow_registration", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v18 = "nw_path_flow_registration_uses_nexus";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_path_flow_registration_uses_nexus";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_path_flow_registration_uses_nexus";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_3;
  }

  if ((v3[148] & 4) != 0)
  {
    v5 = uuid_compare(v3 + 48, a2) == 0;
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_5:

  return v5;
}

void __nw_agent_create_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(WeakRetained + 109) == *(a1 + 32))
  {
      ;
    }
  }
}

uint64_t nw_agent_read_message_on_queue(NWConcrete_nw_agent *a1)
{
  v515 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v353 = v1;
  dispatch_assert_queue_V2(*(v1 + 27));
  v498 = 0;
  v499 = &v498;
  v500 = 0x2020000000;
  v501 = 0;
  v2 = *(v1 + 108);
  v497[0] = MEMORY[0x1E69E9820];
  v497[1] = 3221225472;
  v497[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke;
  v497[3] = &unk_1E6A3C0D8;
  v497[4] = &v498;
  nw_fd_wrapper_get_fd(v2, v497);
  v3 = v499[3];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_558;
  }

  if (*v3 == 25)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v494[0] = MEMORY[0x1E69E9820];
    v494[1] = 3221225472;
    v494[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_168;
    v494[3] = &unk_1E6A3D738;
    v496 = buf;
    v4 = v1;
    v495 = v4;
    os_unfair_lock_lock(v4 + 2);
    ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_168(v494);
    os_unfair_lock_unlock(v4 + 2);
    v5 = *(*&buf[8] + 40);
    if (v5)
    {
      (*(v5 + 16))();
LABEL_170:
      v81 = v499[3];
      if (v81)
      {
        free(v81);
        v499[3] = 0;
      }

      _Block_object_dispose(buf, 8);
      v6 = 1;
      goto LABEL_558;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *v506 = 136446210;
    *&v506[4] = "nw_agent_read_message_on_queue";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s No handler for TOKENS_NEEDED", v506, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v485) = 0;
    if (__nwlog_fault(v17, type, &v485))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *v506 = 136446210;
          *&v506[4] = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s No handler for TOKENS_NEEDED", v506, 0xCu);
        }
      }

      else if (v485 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v68 = type[0];
        v69 = os_log_type_enabled(v18, type[0]);
        if (backtrace_string)
        {
          if (v69)
          {
            *v506 = 136446466;
            *&v506[4] = "nw_agent_read_message_on_queue";
            *&v506[12] = 2082;
            *&v506[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v68, "%{public}s No handler for TOKENS_NEEDED, dumping backtrace:%{public}s", v506, 0x16u);
          }

          free(backtrace_string);
          if (!v17)
          {
            goto LABEL_170;
          }

          goto LABEL_169;
        }

        if (v69)
        {
          *v506 = 136446210;
          *&v506[4] = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v18, v68, "%{public}s No handler for TOKENS_NEEDED, no backtrace", v506, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v75 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *v506 = 136446210;
          *&v506[4] = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v18, v75, "%{public}s No handler for TOKENS_NEEDED, backtrace limit exceeded", v506, 0xCu);
        }
      }
    }

    if (!v17)
    {
      goto LABEL_170;
    }

LABEL_169:
    free(v17);
    goto LABEL_170;
  }

  *v506 = 0;
  *&v506[8] = v506;
  *&v506[16] = 0x3032000000;
  v507 = __Block_byref_object_copy__169;
  v508 = __Block_byref_object_dispose__170;
  v509 = 0;
  v489[0] = MEMORY[0x1E69E9820];
  v489[1] = 3221225472;
  v490 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_171;
  v491 = &unk_1E6A3D738;
  v493 = v506;
  v492 = v1;
  v7 = v492;
  v8 = v489;
  os_unfair_lock_lock(v7 + 2);
  v354 = v7;
  v490(v8);
  os_unfair_lock_unlock(v7 + 2);

  if (!*(*&v506[8] + 40))
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    objc_storeStrong((*&v506[8] + 40), nw_context_copy_implicit_context::implicit_context);
  }

  memset(uu, 0, sizeof(uu));
  v485 = 0;
  v486 = &v485;
  v487 = 0x2020000000;
  v488 = 0;
  memset(v504, 0, sizeof(v504));
  *type = 0u;
  v9 = v499[3];
  v10 = v7;
  if (!v9)
  {
    v293 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_agent_get_uuid_for_message";
    v294 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v293, 16, "%{public}s called with null message", buf, 12);

    v511[0] = 16;
    v446[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v294, v511, v446))
    {
      if (v511[0] == 17)
      {
        v295 = __nwlog_obj();
        v296 = v511[0];
        if (os_log_type_enabled(v295, v511[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_get_uuid_for_message";
          _os_log_impl(&dword_181A37000, v295, v296, "%{public}s called with null message", buf, 0xCu);
        }
      }

      else if (v446[0] == OS_LOG_TYPE_INFO)
      {
        v313 = __nw_create_backtrace_string();
        v295 = __nwlog_obj();
        v314 = v511[0];
        v315 = os_log_type_enabled(v295, v511[0]);
        if (v313)
        {
          if (v315)
          {
            *buf = 136446466;
            *&buf[4] = "nw_agent_get_uuid_for_message";
            *&buf[12] = 2082;
            *&buf[14] = v313;
            _os_log_impl(&dword_181A37000, v295, v314, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v313);
          goto LABEL_641;
        }

        if (v315)
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_get_uuid_for_message";
          _os_log_impl(&dword_181A37000, v295, v314, "%{public}s called with null message, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v295 = __nwlog_obj();
        v319 = v511[0];
        if (os_log_type_enabled(v295, v511[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_get_uuid_for_message";
          _os_log_impl(&dword_181A37000, v295, v319, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_641:
    v10 = v7;
    if (v294)
    {
      free(v294);
    }

    goto LABEL_14;
  }

  v11 = *v9;
  if (v11 > 0x1A || ((1 << v11) & 0x40CF400) == 0 || uuid_is_null(v9 + 32))
  {
LABEL_14:
    v352 = nw_agent_client_create(v499[3], v10, *(*&v506[8] + 40));
    goto LABEL_15;
  }

  *uu = *(v9 + 2);
  uuid_unparse(uu, type);
  v20 = nw_dictionary_copy_value(*(v7 + 92), type);
  v21 = v499[3];
  v352 = v20;
  if (v20)
  {
    if (v21)
    {
      v22 = *v21;
      if (v22 == 15 || v22 == 12)
      {
        *(v486 + 24) = 1;
      }

      goto LABEL_31;
    }

    v325 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_agent_should_remove_client_for_message";
    v326 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v325, 16, "%{public}s called with null message", buf, 12);

    v511[0] = 16;
    v446[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v326, v511, v446))
    {
      goto LABEL_672;
    }

    if (v511[0] == 17)
    {
      v327 = __nwlog_obj();
      v328 = v511[0];
      if (os_log_type_enabled(v327, v511[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_should_remove_client_for_message";
        _os_log_impl(&dword_181A37000, v327, v328, "%{public}s called with null message", buf, 0xCu);
      }
    }

    else if (v446[0] == OS_LOG_TYPE_INFO)
    {
      v338 = __nw_create_backtrace_string();
      v327 = __nwlog_obj();
      v339 = v511[0];
      v340 = os_log_type_enabled(v327, v511[0]);
      if (v338)
      {
        if (v340)
        {
          *buf = 136446466;
          *&buf[4] = "nw_agent_should_remove_client_for_message";
          *&buf[12] = 2082;
          *&buf[14] = v338;
          _os_log_impl(&dword_181A37000, v327, v339, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v338);
        goto LABEL_672;
      }

      if (v340)
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_should_remove_client_for_message";
        _os_log_impl(&dword_181A37000, v327, v339, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v327 = __nwlog_obj();
      v345 = v511[0];
      if (os_log_type_enabled(v327, v511[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_should_remove_client_for_message";
        _os_log_impl(&dword_181A37000, v327, v345, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_672:
    if (v326)
    {
      free(v326);
    }

    v10 = v7;
    goto LABEL_31;
  }

  v352 = nw_agent_client_create(v21, v7, *(*&v506[8] + 40));
  v73 = v499[3];
  if (v73)
  {
    v74 = *v73;
    if (v74 <= 0x12 && ((1 << v74) & 0x44400) != 0)
    {
      nw_dictionary_set_value(*(v7 + 92), type, v352);
    }

    goto LABEL_15;
  }

  v330 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_agent_should_add_client_for_message";
  v331 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v330, 16, "%{public}s called with null message", buf, 12);

  v511[0] = 16;
  v446[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v331, v511, v446))
  {
    if (v511[0] == 17)
    {
      v332 = __nwlog_obj();
      v333 = v511[0];
      if (os_log_type_enabled(v332, v511[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_should_add_client_for_message";
        _os_log_impl(&dword_181A37000, v332, v333, "%{public}s called with null message", buf, 0xCu);
      }
    }

    else if (v446[0] == OS_LOG_TYPE_INFO)
    {
      v341 = __nw_create_backtrace_string();
      v332 = __nwlog_obj();
      v342 = v511[0];
      v343 = os_log_type_enabled(v332, v511[0]);
      if (v341)
      {
        if (v343)
        {
          *buf = 136446466;
          *&buf[4] = "nw_agent_should_add_client_for_message";
          *&buf[12] = 2082;
          *&buf[14] = v341;
          _os_log_impl(&dword_181A37000, v332, v342, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v341);
        goto LABEL_678;
      }

      if (v343)
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_should_add_client_for_message";
        _os_log_impl(&dword_181A37000, v332, v342, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v332 = __nwlog_obj();
      v346 = v511[0];
      if (os_log_type_enabled(v332, v511[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_should_add_client_for_message";
        _os_log_impl(&dword_181A37000, v332, v346, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_678:
  if (v331)
  {
    free(v331);
  }

  v10 = v7;
LABEL_15:
  if (!v352)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s Failed to create agent client", buf, v347);

    v511[0] = 16;
    v446[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v13, v511, v446))
    {
      if (v511[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = v511[0];
        if (os_log_type_enabled(v14, v511[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Failed to create agent client", buf, 0xCu);
        }
      }

      else if (v446[0] == OS_LOG_TYPE_INFO)
      {
        v70 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v71 = v511[0];
        v72 = os_log_type_enabled(v14, v511[0]);
        if (v70)
        {
          if (v72)
          {
            *buf = 136446466;
            *&buf[4] = "nw_agent_read_message_on_queue";
            *&buf[12] = 2082;
            *&buf[14] = v70;
            _os_log_impl(&dword_181A37000, v14, v71, "%{public}s Failed to create agent client, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v70);
          if (!v13)
          {
            goto LABEL_183;
          }

LABEL_182:
          free(v13);
LABEL_183:
          v86 = v499[3];
          if (v86)
          {
            free(v86);
            v6 = 0;
            v499[3] = 0;
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_557;
        }

        if (v72)
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v14, v71, "%{public}s Failed to create agent client, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v76 = v511[0];
        if (os_log_type_enabled(v14, v511[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v14, v76, "%{public}s Failed to create agent client, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v13)
    {
      goto LABEL_183;
    }

    goto LABEL_182;
  }

LABEL_31:
  v23 = v499[3];
  if (!v23)
  {
    v309 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_agent_copy_group_members_for_message";
    LODWORD(v347) = 12;
    v310 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v309, 16, "%{public}s called with null message", buf, v347);

    v511[0] = 16;
    v446[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v310, v511, v446))
    {
      if (v511[0] == 17)
      {
        v311 = __nwlog_obj();
        v312 = v511[0];
        if (os_log_type_enabled(v311, v511[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          _os_log_impl(&dword_181A37000, v311, v312, "%{public}s called with null message", buf, 0xCu);
        }
      }

      else if (v446[0] == OS_LOG_TYPE_INFO)
      {
        v316 = __nw_create_backtrace_string();
        v311 = __nwlog_obj();
        v317 = v511[0];
        v318 = os_log_type_enabled(v311, v511[0]);
        if (v316)
        {
          if (v318)
          {
            *buf = 136446466;
            *&buf[4] = "nw_agent_copy_group_members_for_message";
            *&buf[12] = 2082;
            *&buf[14] = v316;
            _os_log_impl(&dword_181A37000, v311, v317, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v316);
          goto LABEL_646;
        }

        if (v318)
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          _os_log_impl(&dword_181A37000, v311, v317, "%{public}s called with null message, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v311 = __nwlog_obj();
        v329 = v511[0];
        if (os_log_type_enabled(v311, v511[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          _os_log_impl(&dword_181A37000, v311, v329, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_646:
    if (v310)
    {
      free(v310);
    }

    v351 = 0;
    goto LABEL_195;
  }

  if (*(v23 + 28) < 0x13u || (*v23 & 0xFE) != 0x12)
  {
    v351 = 0;
    goto LABEL_196;
  }

  v351 = _nw_array_create();
  v24 = (*(v23 + 28) - 18);
  v25 = v24 - 5;
  if (v24 == 5)
  {
    goto LABEL_195;
  }

  v26 = 0;
  v27 = 0;
  v349 = v23 + 50;
  v348 = v23 + 55;
  v350 = v23 + 51;
  while (1)
  {
    if (v24 < 5 || v25 < v26)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446722;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v26;
      *&buf[22] = 2048;
      *&buf[24] = v24;
      LODWORD(v347) = 32;
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu", buf, v347);

      v511[0] = 16;
      v446[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v33, v511, v446))
      {
        goto LABEL_74;
      }

      if (v511[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = v511[0];
        if (os_log_type_enabled(v34, v511[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_buffer_get_tlv_value";
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu", buf, 0x20u);
        }
      }

      else
      {
        if (v446[0] == OS_LOG_TYPE_INFO)
        {
          v37 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          v39 = v511[0];
          v40 = os_log_type_enabled(v38, v511[0]);
          if (v37)
          {
            if (v40)
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v24;
              *&buf[32] = 2082;
              *&buf[34] = v37;
              _os_log_impl(&dword_181A37000, v38, v39, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v37);
            if (!v33)
            {
              goto LABEL_76;
            }

            goto LABEL_75;
          }

          if (v40)
          {
            *buf = 136446722;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v24;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu, no backtrace", buf, 0x20u);
          }

LABEL_74:
          if (!v33)
          {
LABEL_76:
            v36 = 0;
            v47 = 0;
            v48 = 0;
            goto LABEL_110;
          }

LABEL_75:
          free(v33);
          goto LABEL_76;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v41 = v511[0];
        if (os_log_type_enabled(v34, v511[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_buffer_get_tlv_value";
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v34, v41, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_74;
    }

    if (v24 - 1 >= v26)
    {
      v36 = *(v349 + v26);
      goto LABEL_83;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nw_necp_buffer_get_tlv_type";
    *&buf[12] = 2048;
    *&buf[14] = v26;
    *&buf[22] = 2048;
    *&buf[24] = v24;
    LODWORD(v347) = 32;
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu", buf, v347);

    v511[0] = 16;
    v446[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v29, v511, v446))
    {
      if (v511[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = v511[0];
        if (os_log_type_enabled(v30, v511[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_buffer_get_tlv_type";
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu", buf, 0x20u);
        }
      }

      else if (v446[0] == OS_LOG_TYPE_INFO)
      {
        v42 = __nw_create_backtrace_string();
        if (v42)
        {
          v43 = v42;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          v45 = v511[0];
          if (os_log_type_enabled(v44, v511[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_type";
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v24;
            *&buf[32] = 2082;
            *&buf[34] = v43;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v43);
          if (!v29)
          {
            goto LABEL_82;
          }

LABEL_81:
          free(v29);
          goto LABEL_82;
        }

        v30 = __nwlog_obj();
        v49 = v511[0];
        if (os_log_type_enabled(v30, v511[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_buffer_get_tlv_type";
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v30, v49, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v46 = v511[0];
        if (os_log_type_enabled(v30, v511[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_buffer_get_tlv_type";
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v30, v46, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (v29)
    {
      goto LABEL_81;
    }

LABEL_82:
    v36 = 0;
LABEL_83:
    v47 = *(v350 + v26);
    if (v47)
    {
      if (v47 <= 0xFFFFFFF9 && v24 >= v47 + 5 && v24 - (v47 + 5) >= v26)
      {
        v48 = (v348 + v26);
        goto LABEL_110;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v26;
      *&buf[22] = 2048;
      *&buf[24] = v24;
      *&buf[32] = 1024;
      *&buf[34] = v47;
      LODWORD(v347) = 38;
      v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v347);

      v511[0] = 16;
      v446[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v52, v511, v446))
      {
        if (v511[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          v54 = v511[0];
          if (os_log_type_enabled(v53, v511[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v24;
            *&buf[32] = 1024;
            *&buf[34] = v47;
            _os_log_impl(&dword_181A37000, v53, v54, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
          }
        }

        else if (v446[0] == OS_LOG_TYPE_INFO)
        {
          v55 = __nw_create_backtrace_string();
          if (v55)
          {
            v56 = v55;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v57 = gLogObj;
            v58 = v511[0];
            if (os_log_type_enabled(v57, v511[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v24;
              *&buf[32] = 1024;
              *&buf[34] = v47;
              *&buf[38] = 2082;
              *&buf[40] = v56;
              _os_log_impl(&dword_181A37000, v57, v58, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v56);
            if (!v52)
            {
              goto LABEL_109;
            }

LABEL_108:
            free(v52);
            goto LABEL_109;
          }

          v53 = __nwlog_obj();
          v60 = v511[0];
          if (os_log_type_enabled(v53, v511[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v24;
            *&buf[32] = 1024;
            *&buf[34] = v47;
            _os_log_impl(&dword_181A37000, v53, v60, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          v59 = v511[0];
          if (os_log_type_enabled(v53, v511[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v24;
            *&buf[32] = 1024;
            *&buf[34] = v47;
            _os_log_impl(&dword_181A37000, v53, v59, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (v52)
      {
        goto LABEL_108;
      }
    }

LABEL_109:
    v48 = 0;
LABEL_110:
    v26 += v47 + 5;
    if (v26 > v24)
    {
      break;
    }

    if (v36 <= 158)
    {
      if (v36 == 156)
      {
        if (v27)
        {
          if (v47 == 16)
          {
            v64 = v48;
            v27 = v27;
            _nw_endpoint_set_agent_identifier(v27, v64);
          }

          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v66 = gLogObj;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
        }
      }

      else
      {
        if (v36 != 158)
        {
          goto LABEL_122;
        }

        if (v27)
        {
          *buf = 0;
          asprintf(buf, "%.*s", v47, v48);
          v61 = *buf;
          v27 = v27;
          _nw_endpoint_set_device_id(v27, v61);

          if (*buf)
          {
            free(*buf);
          }

          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v66 = gLogObj;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
        }
      }

      goto LABEL_137;
    }

    if (v36 != 159)
    {
      if (v36 == 213)
      {
        v62 = nw_path_copy_endpoint_from_tlv(213, v47, v48);

        v27 = v62;
        if (v27 != 0 && v351 != 0)
        {
          _nw_array_append(v351, v27);
        }

        goto LABEL_38;
      }

LABEL_122:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v63 = gLogObj;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_agent_copy_group_members_for_message";
        *&buf[12] = 1024;
        *&buf[14] = v36;
        _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s Received unknown type %u", buf, 0x12u);
      }

      goto LABEL_38;
    }

    if (!v27)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v66 = gLogObj;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_copy_group_members_for_message";
        _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
      }

LABEL_137:

      v27 = 0;
      goto LABEL_38;
    }

    v65 = [MEMORY[0x1E695DEF0] dataWithBytes:v48 length:?];
    nw_endpoint_append_public_key(v27, v65);

LABEL_38:
    if (v26 >= v25)
    {
      goto LABEL_194;
    }
  }

  v77 = __nwlog_obj();
  *buf = 136446978;
  *&buf[4] = "nw_agent_copy_group_members_for_message";
  *&buf[12] = 1024;
  *&buf[14] = v47;
  *&buf[18] = 2048;
  *&buf[20] = v26;
  *&buf[28] = 1024;
  *&buf[30] = v24;
  LODWORD(v347) = 34;
  v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%u)", buf, v347);

  v511[0] = 16;
  v446[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v78, v511, v446))
  {
    if (v511[0] == 17)
    {
      v79 = __nwlog_obj();
      v80 = v511[0];
      if (os_log_type_enabled(v79, v511[0]))
      {
        *buf = 136446978;
        *&buf[4] = "nw_agent_copy_group_members_for_message";
        *&buf[12] = 1024;
        *&buf[14] = v47;
        *&buf[18] = 2048;
        *&buf[20] = v26;
        *&buf[28] = 1024;
        *&buf[30] = v24;
        _os_log_impl(&dword_181A37000, v79, v80, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%u)", buf, 0x22u);
      }

      goto LABEL_164;
    }

    if (v446[0] == OS_LOG_TYPE_INFO)
    {
      v82 = __nw_create_backtrace_string();
      v83 = __nwlog_obj();
      v84 = v511[0];
      v85 = os_log_type_enabled(v83, v511[0]);
      if (v82)
      {
        if (v85)
        {
          *buf = 136447234;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          *&buf[12] = 1024;
          *&buf[14] = v47;
          *&buf[18] = 2048;
          *&buf[20] = v26;
          *&buf[28] = 1024;
          *&buf[30] = v24;
          *&buf[34] = 2082;
          *&buf[36] = v82;
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%u), dumping backtrace:%{public}s", buf, 0x2Cu);
        }

        free(v82);
      }

      else
      {
        if (v85)
        {
          *buf = 136446978;
          *&buf[4] = "nw_agent_copy_group_members_for_message";
          *&buf[12] = 1024;
          *&buf[14] = v47;
          *&buf[18] = 2048;
          *&buf[20] = v26;
          *&buf[28] = 1024;
          *&buf[30] = v24;
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%u), no backtrace", buf, 0x22u);
        }
      }
    }

    else
    {
      v79 = __nwlog_obj();
      v87 = v511[0];
      if (os_log_type_enabled(v79, v511[0]))
      {
        *buf = 136446978;
        *&buf[4] = "nw_agent_copy_group_members_for_message";
        *&buf[12] = 1024;
        *&buf[14] = v47;
        *&buf[18] = 2048;
        *&buf[20] = v26;
        *&buf[28] = 1024;
        *&buf[30] = v24;
        _os_log_impl(&dword_181A37000, v79, v87, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%u), backtrace limit exceeded", buf, 0x22u);
      }

LABEL_164:
    }
  }

  if (v78)
  {
    free(v78);
  }

LABEL_194:

LABEL_195:
  v10 = v354;
LABEL_196:
  v88 = v499[3];
  v89 = *v88;
  if (v89 == 15)
  {
    v475[0] = MEMORY[0x1E69E9820];
    v475[1] = 3221225472;
    v476 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2;
    v477 = &unk_1E6A3BE58;
    v478 = v352;
    v479 = v10;
    v480 = &v485;
    v93 = v479;
    v94 = v475;
    os_unfair_lock_lock(v10 + 2);
    v476(v94);
    os_unfair_lock_unlock(v10 + 2);

    v92 = &v478;
    v90 = v479;
LABEL_200:

    v10 = v354;
  }

  else if (v89 == 14)
  {
    v481[0] = MEMORY[0x1E69E9820];
    v481[1] = 3221225472;
    v482 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_172;
    v483 = &unk_1E6A3D868;
    v484 = v352;
    v90 = v10;
    v91 = v481;
    os_unfair_lock_lock(v10 + 2);
    v482(v91);
    os_unfair_lock_unlock(v10 + 2);

    v92 = &v484;
    goto LABEL_200;
  }

  if (*(v486 + 24) == 1)
  {
    nw_dictionary_set_value(*&v10[184]._os_unfair_lock_opaque, type, 0);
  }

  v95 = *v88;
  if (v95 == 13)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v470[0] = MEMORY[0x1E69E9820];
    v470[1] = 3221225472;
    v471 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_173;
    v472 = &unk_1E6A3D738;
    v474 = buf;
    v473 = v10;
    v96 = v473;
    v97 = v470;
    os_unfair_lock_lock(v10 + 2);
    v471(v97);
    os_unfair_lock_unlock(v10 + 2);

    v98 = *(*&buf[8] + 40);
    if (v98)
    {
      v468[0] = MEMORY[0x1E69E9820];
      v468[1] = 3221225472;
      v468[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_174;
      v468[3] = &unk_1E6A3BE80;
      v469 = v96;
      (*(v98 + 16))(v98, v352, v468);

      goto LABEL_224;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v99 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s No handler for CLIENT_TRIGGER", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v502 = 0;
    if (__nwlog_fault(v100, v446, &v502))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v101 = gLogObj;
        v102 = v446[0];
        if (os_log_type_enabled(v101, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s No handler for CLIENT_TRIGGER", v511, 0xCu);
        }

        goto LABEL_210;
      }

      if (v502 == 1)
      {
        v103 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        v105 = v446[0];
        v106 = os_log_type_enabled(v104, v446[0]);
        if (v103)
        {
          if (v106)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v103;
            _os_log_impl(&dword_181A37000, v104, v105, "%{public}s No handler for CLIENT_TRIGGER, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v103);
        }

        else
        {
          if (v106)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v104, v105, "%{public}s No handler for CLIENT_TRIGGER, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v101 = __nwlog_obj();
        v107 = v446[0];
        if (os_log_type_enabled(v101, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v101, v107, "%{public}s No handler for CLIENT_TRIGGER, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_210:
      }
    }

    if (v100)
    {
      free(v100);
    }

LABEL_224:

    _Block_object_dispose(buf, 8);
    v95 = *v88;
    v10 = v354;
  }

  if (v95 == 5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v463[0] = MEMORY[0x1E69E9820];
    v463[1] = 3221225472;
    v464 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_176;
    v465 = &unk_1E6A3D738;
    v467 = buf;
    v466 = v10;
    v108 = v466;
    v109 = v463;
    os_unfair_lock_lock(v10 + 2);
    v464(v109);
    os_unfair_lock_unlock(v10 + 2);

    v110 = *(*&buf[8] + 40);
    if (v110)
    {
      v461[0] = MEMORY[0x1E69E9820];
      v461[1] = 3221225472;
      v461[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_177;
      v461[3] = &unk_1E6A3BE80;
      v462 = v108;
      (*(v110 + 16))(v110, v352, v461);

      goto LABEL_246;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v111 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v112 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s No handler for TRIGGER", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v502 = 0;
    if (__nwlog_fault(v112, v446, &v502))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v113 = gLogObj;
        v114 = v446[0];
        if (os_log_type_enabled(v113, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v113, v114, "%{public}s No handler for TRIGGER", v511, 0xCu);
        }

        goto LABEL_232;
      }

      if (v502 == 1)
      {
        v115 = __nw_create_backtrace_string();
        v116 = __nwlog_obj();
        v117 = v446[0];
        v118 = os_log_type_enabled(v116, v446[0]);
        if (v115)
        {
          if (v118)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v115;
            _os_log_impl(&dword_181A37000, v116, v117, "%{public}s No handler for TRIGGER, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v115);
        }

        else
        {
          if (v118)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v116, v117, "%{public}s No handler for TRIGGER, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v113 = __nwlog_obj();
        v119 = v446[0];
        if (os_log_type_enabled(v113, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v113, v119, "%{public}s No handler for TRIGGER, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_232:
      }
    }

    if (v112)
    {
      free(v112);
    }

LABEL_246:

    _Block_object_dispose(buf, 8);
    v95 = *v88;
    v10 = v354;
  }

  if (v95 != 26)
  {
    goto LABEL_274;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__84427;
  *&buf[32] = __Block_byref_object_dispose__84428;
  *&buf[40] = 0;
  v456[0] = MEMORY[0x1E69E9820];
  v456[1] = 3221225472;
  v457 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_178;
  v458 = &unk_1E6A3D738;
  v460 = buf;
  v459 = v10;
  v120 = v459;
  v121 = v456;
  os_unfair_lock_lock(v10 + 2);
  v457(v121);
  os_unfair_lock_unlock(v10 + 2);

  v122 = *(*&buf[8] + 40);
  if (!v122)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v125 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v125, 16, "%{public}s No handler for CLIENT_ERROR", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v502 = 0;
    if (__nwlog_fault(v126, v446, &v502))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v127 = gLogObj;
        v128 = v446[0];
        if (os_log_type_enabled(v127, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v127, v128, "%{public}s No handler for CLIENT_ERROR", v511, 0xCu);
        }
      }

      else
      {
        if (v502 == 1)
        {
          v129 = __nw_create_backtrace_string();
          v130 = __nwlog_obj();
          v131 = v446[0];
          v132 = os_log_type_enabled(v130, v446[0]);
          if (v129)
          {
            if (v132)
            {
              *v511 = 136446466;
              v512 = "nw_agent_read_message_on_queue";
              v513 = 2082;
              v514 = v129;
              _os_log_impl(&dword_181A37000, v130, v131, "%{public}s No handler for CLIENT_ERROR, dumping backtrace:%{public}s", v511, 0x16u);
            }

            free(v129);
          }

          else
          {
            if (v132)
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v130, v131, "%{public}s No handler for CLIENT_ERROR, no backtrace", v511, 0xCu);
            }
          }

          goto LABEL_271;
        }

        v127 = __nwlog_obj();
        v133 = v446[0];
        if (os_log_type_enabled(v127, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v127, v133, "%{public}s No handler for CLIENT_ERROR, backtrace limit exceeded", v511, 0xCu);
        }
      }
    }

LABEL_271:
    if (v126)
    {
      free(v126);
    }

    goto LABEL_273;
  }

  v123 = v499[3];
  if (v123)
  {
    if (*(v123 + 28) >= 0x14u && *v123 == 26)
    {
      v124 = *(v123 + 48);
    }

    else
    {
      v124 = 0;
    }

    goto LABEL_254;
  }

  v320 = *(*&buf[8] + 40);
  v321 = __nwlog_obj();
  *v511 = 136446210;
  v512 = "nw_agent_get_error_for_message";
  LODWORD(v347) = 12;
  v322 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v321, 16, "%{public}s called with null message", v511, v347);

  v446[0] = OS_LOG_TYPE_ERROR;
  v502 = 0;
  if (__nwlog_fault(v322, v446, &v502))
  {
    if (v446[0] == OS_LOG_TYPE_FAULT)
    {
      v323 = __nwlog_obj();
      v324 = v446[0];
      if (os_log_type_enabled(v323, v446[0]))
      {
        *v511 = 136446210;
        v512 = "nw_agent_get_error_for_message";
        _os_log_impl(&dword_181A37000, v323, v324, "%{public}s called with null message", v511, 0xCu);
      }

      goto LABEL_614;
    }

    if (v502 == 1)
    {
      v334 = __nw_create_backtrace_string();
      v335 = __nwlog_obj();
      v336 = v446[0];
      v337 = os_log_type_enabled(v335, v446[0]);
      if (v334)
      {
        if (v337)
        {
          *v511 = 136446466;
          v512 = "nw_agent_get_error_for_message";
          v513 = 2082;
          v514 = v334;
          _os_log_impl(&dword_181A37000, v335, v336, "%{public}s called with null message, dumping backtrace:%{public}s", v511, 0x16u);
        }

        free(v334);
      }

      else
      {
        if (v337)
        {
          *v511 = 136446210;
          v512 = "nw_agent_get_error_for_message";
          _os_log_impl(&dword_181A37000, v335, v336, "%{public}s called with null message, no backtrace", v511, 0xCu);
        }
      }
    }

    else
    {
      v323 = __nwlog_obj();
      v344 = v446[0];
      if (os_log_type_enabled(v323, v446[0]))
      {
        *v511 = 136446210;
        v512 = "nw_agent_get_error_for_message";
        _os_log_impl(&dword_181A37000, v323, v344, "%{public}s called with null message, backtrace limit exceeded", v511, 0xCu);
      }

LABEL_614:
    }
  }

  if (v322)
  {
    free(v322);
  }

  v124 = 0;
  v122 = v320;
LABEL_254:
  (*(v122 + 16))(v122, v352, v124);
LABEL_273:

  _Block_object_dispose(buf, 8);
  v10 = v354;
LABEL_274:
  v502 = 0;
  browse_descriptor = v352->browse_descriptor;
  if (!browse_descriptor && !v352->advertise_descriptor)
  {
    if ((v10[221]._os_unfair_lock_opaque & 0x20) != 0 && nw_agent_client_matches_resolve_type(v10, v352, &v502))
    {
      v143 = *v88;
      if (v143 != 14)
      {
        goto LABEL_570;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__84427;
      *&buf[32] = __Block_byref_object_dispose__84428;
      *&buf[40] = 0;
      v426[0] = MEMORY[0x1E69E9820];
      v426[1] = 3221225472;
      v427 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_185;
      v428 = &unk_1E6A3BED0;
      v430 = buf;
      v429 = v10;
      v431 = v502;
      v144 = v429;
      v145 = v426;
      os_unfair_lock_lock(v10 + 2);
      v427(v145);
      os_unfair_lock_unlock(v10 + 2);

      v146 = *(*&buf[8] + 40);
      if (v146)
      {
        v423[0] = MEMORY[0x1E69E9820];
        v423[1] = 3221225472;
        v423[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_186;
        v423[3] = &unk_1E6A3BEA8;
        v424 = v144;
        v425 = v352;
        (*(v146 + 16))(v146, v425, v423);

LABEL_569:
        _Block_object_dispose(buf, 8);

        v143 = *v88;
        v10 = v354;
LABEL_570:
        if (v143 != 15)
        {
          goto LABEL_381;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__84427;
        *&buf[32] = __Block_byref_object_dispose__84428;
        *&buf[40] = 0;
        v417[0] = MEMORY[0x1E69E9820];
        v417[1] = 3221225472;
        v418 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_187;
        v419 = &unk_1E6A3BED0;
        v421 = buf;
        v420 = v10;
        v422 = v502;
        v297 = v420;
        v298 = v417;
        os_unfair_lock_lock(v10 + 2);
        v418(v298);
        os_unfair_lock_unlock(v10 + 2);

        v299 = *(*&buf[8] + 40);
        if (v299)
        {
          (*(v299 + 16))(v299, v352);
LABEL_591:

          _Block_object_dispose(buf, 8);
          goto LABEL_380;
        }

        v300 = __nwlog_obj();
        *v511 = 136446210;
        v512 = "nw_agent_read_message_on_queue";
        LODWORD(v347) = 12;
        v301 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v300, 16, "%{public}s No handler for CLIENT_UNASSERT", v511, v347);

        v446[0] = OS_LOG_TYPE_ERROR;
        v447 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v301, v446, &v447))
        {
          if (v446[0] == OS_LOG_TYPE_FAULT)
          {
            v302 = __nwlog_obj();
            v303 = v446[0];
            if (os_log_type_enabled(v302, v446[0]))
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v302, v303, "%{public}s No handler for CLIENT_UNASSERT", v511, 0xCu);
            }
          }

          else
          {
            if (v447 == OS_LOG_TYPE_INFO)
            {
              v304 = __nw_create_backtrace_string();
              v305 = __nwlog_obj();
              v306 = v446[0];
              v307 = os_log_type_enabled(v305, v446[0]);
              if (v304)
              {
                if (v307)
                {
                  *v511 = 136446466;
                  v512 = "nw_agent_read_message_on_queue";
                  v513 = 2082;
                  v514 = v304;
                  _os_log_impl(&dword_181A37000, v305, v306, "%{public}s No handler for CLIENT_UNASSERT, dumping backtrace:%{public}s", v511, 0x16u);
                }

                free(v304);
              }

              else
              {
                if (v307)
                {
                  *v511 = 136446210;
                  v512 = "nw_agent_read_message_on_queue";
                  _os_log_impl(&dword_181A37000, v305, v306, "%{public}s No handler for CLIENT_UNASSERT, no backtrace", v511, 0xCu);
                }
              }

              goto LABEL_589;
            }

            v302 = __nwlog_obj();
            v308 = v446[0];
            if (os_log_type_enabled(v302, v446[0]))
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v302, v308, "%{public}s No handler for CLIENT_UNASSERT, backtrace limit exceeded", v511, 0xCu);
            }
          }
        }

LABEL_589:
        if (v301)
        {
          free(v301);
        }

        goto LABEL_591;
      }

      v181 = __nwlog_obj();
      *v511 = 136446210;
      v512 = "nw_agent_read_message_on_queue";
      LODWORD(v347) = 12;
      v182 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v181, 16, "%{public}s No handler for CLIENT_ASSERT", v511, v347);

      v446[0] = OS_LOG_TYPE_ERROR;
      v447 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v182, v446, &v447))
      {
        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v183 = __nwlog_obj();
          v184 = v446[0];
          if (os_log_type_enabled(v183, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v183, v184, "%{public}s No handler for CLIENT_ASSERT", v511, 0xCu);
          }
        }

        else
        {
          if (v447 == OS_LOG_TYPE_INFO)
          {
            v235 = __nw_create_backtrace_string();
            v236 = __nwlog_obj();
            v237 = v446[0];
            v238 = os_log_type_enabled(v236, v446[0]);
            if (v235)
            {
              if (v238)
              {
                *v511 = 136446466;
                v512 = "nw_agent_read_message_on_queue";
                v513 = 2082;
                v514 = v235;
                _os_log_impl(&dword_181A37000, v236, v237, "%{public}s No handler for CLIENT_ASSERT, dumping backtrace:%{public}s", v511, 0x16u);
              }

              free(v235);
            }

            else
            {
              if (v238)
              {
                *v511 = 136446210;
                v512 = "nw_agent_read_message_on_queue";
                _os_log_impl(&dword_181A37000, v236, v237, "%{public}s No handler for CLIENT_ASSERT, no backtrace", v511, 0xCu);
              }
            }

            goto LABEL_567;
          }

          v183 = __nwlog_obj();
          v251 = v446[0];
          if (os_log_type_enabled(v183, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v183, v251, "%{public}s No handler for CLIENT_ASSERT, backtrace limit exceeded", v511, 0xCu);
          }
        }
      }

LABEL_567:
      if (v182)
      {
        free(v182);
      }

      goto LABEL_569;
    }

    v147 = *v88;
    if (v147 != 14)
    {
LABEL_455:
      if (v147 != 15)
      {
        goto LABEL_381;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__84427;
      *&buf[32] = __Block_byref_object_dispose__84428;
      *&buf[40] = 0;
      v405[0] = MEMORY[0x1E69E9820];
      v405[1] = 3221225472;
      v406 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_190;
      v407 = &unk_1E6A3D738;
      v409 = buf;
      v408 = v10;
      v239 = v408;
      v240 = v405;
      os_unfair_lock_lock(v10 + 2);
      v406(v240);
      os_unfair_lock_unlock(v10 + 2);

      v241 = *(*&buf[8] + 40);
      if (v241)
      {
        (*(v241 + 16))(v241, v352);
LABEL_476:

        _Block_object_dispose(buf, 8);
        goto LABEL_380;
      }

      v242 = __nwlog_obj();
      *v511 = 136446210;
      v512 = "nw_agent_read_message_on_queue";
      LODWORD(v347) = 12;
      v243 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v242, 16, "%{public}s No handler for CLIENT_UNASSERT", v511, v347);

      v446[0] = OS_LOG_TYPE_ERROR;
      v447 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v243, v446, &v447))
      {
        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v244 = __nwlog_obj();
          v245 = v446[0];
          if (os_log_type_enabled(v244, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v244, v245, "%{public}s No handler for CLIENT_UNASSERT", v511, 0xCu);
          }
        }

        else
        {
          if (v447 == OS_LOG_TYPE_INFO)
          {
            v246 = __nw_create_backtrace_string();
            v247 = __nwlog_obj();
            v248 = v446[0];
            v249 = os_log_type_enabled(v247, v446[0]);
            if (v246)
            {
              if (v249)
              {
                *v511 = 136446466;
                v512 = "nw_agent_read_message_on_queue";
                v513 = 2082;
                v514 = v246;
                _os_log_impl(&dword_181A37000, v247, v248, "%{public}s No handler for CLIENT_UNASSERT, dumping backtrace:%{public}s", v511, 0x16u);
              }

              free(v246);
            }

            else
            {
              if (v249)
              {
                *v511 = 136446210;
                v512 = "nw_agent_read_message_on_queue";
                _os_log_impl(&dword_181A37000, v247, v248, "%{public}s No handler for CLIENT_UNASSERT, no backtrace", v511, 0xCu);
              }
            }

            goto LABEL_474;
          }

          v244 = __nwlog_obj();
          v250 = v446[0];
          if (os_log_type_enabled(v244, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v244, v250, "%{public}s No handler for CLIENT_UNASSERT, backtrace limit exceeded", v511, 0xCu);
          }
        }
      }

LABEL_474:
      if (v243)
      {
        free(v243);
      }

      goto LABEL_476;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v412[0] = MEMORY[0x1E69E9820];
    v412[1] = 3221225472;
    v413 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_188;
    v414 = &unk_1E6A3D738;
    v416 = buf;
    v415 = v10;
    v148 = v415;
    v149 = v412;
    os_unfair_lock_lock(v10 + 2);
    v413(v149);
    os_unfair_lock_unlock(v10 + 2);

    v150 = *(*&buf[8] + 40);
    if (v150)
    {
      v410[0] = MEMORY[0x1E69E9820];
      v410[1] = 3221225472;
      v410[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_189;
      v410[3] = &unk_1E6A3BE80;
      v411 = v148;
      (*(v150 + 16))(v150, v352, v410);

LABEL_454:
      _Block_object_dispose(buf, 8);

      v147 = *v88;
      v10 = v354;
      goto LABEL_455;
    }

    v168 = __nwlog_obj();
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v169 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v168, 16, "%{public}s No handler for CLIENT_ASSERT", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v169, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        v170 = __nwlog_obj();
        v171 = v446[0];
        if (os_log_type_enabled(v170, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v170, v171, "%{public}s No handler for CLIENT_ASSERT", v511, 0xCu);
        }
      }

      else
      {
        if (v447 == OS_LOG_TYPE_INFO)
        {
          v176 = __nw_create_backtrace_string();
          v177 = __nwlog_obj();
          v178 = v446[0];
          v179 = os_log_type_enabled(v177, v446[0]);
          if (v176)
          {
            if (v179)
            {
              *v511 = 136446466;
              v512 = "nw_agent_read_message_on_queue";
              v513 = 2082;
              v514 = v176;
              _os_log_impl(&dword_181A37000, v177, v178, "%{public}s No handler for CLIENT_ASSERT, dumping backtrace:%{public}s", v511, 0x16u);
            }

            free(v176);
          }

          else
          {
            if (v179)
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v177, v178, "%{public}s No handler for CLIENT_ASSERT, no backtrace", v511, 0xCu);
            }
          }

          goto LABEL_452;
        }

        v170 = __nwlog_obj();
        v185 = v446[0];
        if (os_log_type_enabled(v170, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v170, v185, "%{public}s No handler for CLIENT_ASSERT, backtrace limit exceeded", v511, 0xCu);
        }
      }
    }

LABEL_452:
    if (v169)
    {
      free(v169);
    }

    goto LABEL_454;
  }

  if (!*&v10[202]._os_unfair_lock_opaque)
  {
    if (!*&v10[204]._os_unfair_lock_opaque)
    {
      goto LABEL_357;
    }

    *v446 = 0;
    if (browse_descriptor)
    {
      predicate = nw_browse_descriptor_get_predicate(browse_descriptor, v446);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v142 = gLogObj;
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_agent_read_message_on_queue";
        *&buf[12] = 2048;
        *&buf[14] = *v446;
        _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s Filterable browser, predicate is %zu bytes", buf, 0x16u);
      }
    }

    else
    {
      v142 = __nwlog_obj();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_agent_read_message_on_queue";
        _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s Filterable browser, no predicate", buf, 0xCu);
      }

      predicate = 0;
    }

    if (*v88 != 14)
    {
      goto LABEL_356;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v441[0] = MEMORY[0x1E69E9820];
    v441[1] = 3221225472;
    v442 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_182;
    v443 = &unk_1E6A3D738;
    v445 = buf;
    v444 = v354;
    v155 = v444;
    v156 = v441;
    os_unfair_lock_lock(v354 + 2);
    v442(v156);
    os_unfair_lock_unlock(v354 + 2);

    v157 = *(*&buf[8] + 40);
    if (v157)
    {
      v158 = *v446;
      v438[0] = MEMORY[0x1E69E9820];
      v438[1] = 3221225472;
      v438[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_183;
      v438[3] = &unk_1E6A3BEA8;
      v439 = v155;
      v440 = v352;
      (*(v157 + 16))(v157, v440, predicate, v158, v438);

LABEL_355:
      _Block_object_dispose(buf, 8);

      goto LABEL_356;
    }

    v163 = __nwlog_obj();
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v164 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s No handler for CLIENT_ASSERT", v511, v347);

    v447 = OS_LOG_TYPE_ERROR;
    v437 = 0;
    if (__nwlog_fault(v164, &v447, &v437))
    {
      if (v447 == OS_LOG_TYPE_FAULT)
      {
        v165 = __nwlog_obj();
        v166 = v447;
        if (os_log_type_enabled(v165, v447))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v165, v166, "%{public}s No handler for CLIENT_ASSERT", v511, 0xCu);
        }
      }

      else
      {
        if (v437 == 1)
        {
          v172 = __nw_create_backtrace_string();
          v173 = __nwlog_obj();
          v174 = v447;
          v175 = os_log_type_enabled(v173, v447);
          if (v172)
          {
            if (v175)
            {
              *v511 = 136446466;
              v512 = "nw_agent_read_message_on_queue";
              v513 = 2082;
              v514 = v172;
              _os_log_impl(&dword_181A37000, v173, v174, "%{public}s No handler for CLIENT_ASSERT, dumping backtrace:%{public}s", v511, 0x16u);
            }

            free(v172);
          }

          else
          {
            if (v175)
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v173, v174, "%{public}s No handler for CLIENT_ASSERT, no backtrace", v511, 0xCu);
            }
          }

          goto LABEL_353;
        }

        v165 = __nwlog_obj();
        v180 = v447;
        if (os_log_type_enabled(v165, v447))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v165, v180, "%{public}s No handler for CLIENT_ASSERT, backtrace limit exceeded", v511, 0xCu);
        }
      }
    }

LABEL_353:
    if (v164)
    {
      free(v164);
    }

    goto LABEL_355;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v135 = gLogObj;
  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    *&buf[4] = "nw_agent_read_message_on_queue";
    _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEBUG, "%{public}s Non-filterable browser", buf, 0xCu);
  }

  v136 = *v88;
  v10 = v354;
  if (v136 == 14)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v451[0] = MEMORY[0x1E69E9820];
    v451[1] = 3221225472;
    v452 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_179;
    v453 = &unk_1E6A3D738;
    v455 = buf;
    v454 = v354;
    v137 = v454;
    v138 = v451;
    os_unfair_lock_lock(v354 + 2);
    v452(v138);
    os_unfair_lock_unlock(v354 + 2);

    v139 = *(*&buf[8] + 40);
    if (v139)
    {
      v448[0] = MEMORY[0x1E69E9820];
      v448[1] = 3221225472;
      v448[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_180;
      v448[3] = &unk_1E6A3BEA8;
      v140 = v352;
      v449 = v140;
      v450 = v137;
      (*(v139 + 16))(v139, v140, v448);

      goto LABEL_338;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v151 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v152 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v151, 16, "%{public}s No handler for CLIENT_ASSERT", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v152, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        v153 = __nwlog_obj();
        v154 = v446[0];
        if (os_log_type_enabled(v153, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v153, v154, "%{public}s No handler for CLIENT_ASSERT", v511, 0xCu);
        }

        goto LABEL_298;
      }

      if (v447 == OS_LOG_TYPE_INFO)
      {
        v159 = __nw_create_backtrace_string();
        v160 = __nwlog_obj();
        v161 = v446[0];
        v162 = os_log_type_enabled(v160, v446[0]);
        if (v159)
        {
          if (v162)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v159;
            _os_log_impl(&dword_181A37000, v160, v161, "%{public}s No handler for CLIENT_ASSERT, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v159);
        }

        else
        {
          if (v162)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v160, v161, "%{public}s No handler for CLIENT_ASSERT, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v153 = __nwlog_obj();
        v167 = v446[0];
        if (os_log_type_enabled(v153, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v153, v167, "%{public}s No handler for CLIENT_ASSERT, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_298:
      }
    }

    if (v152)
    {
      free(v152);
    }

LABEL_338:

    _Block_object_dispose(buf, 8);
LABEL_356:
    v10 = v354;
LABEL_357:
    v136 = *v88;
  }

  if (v136 == 15)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v432[0] = MEMORY[0x1E69E9820];
    v432[1] = 3221225472;
    v433 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_184;
    v434 = &unk_1E6A3D738;
    v436 = buf;
    v435 = v10;
    v186 = v435;
    v187 = v432;
    os_unfair_lock_lock(v10 + 2);
    v433(v187);
    os_unfair_lock_unlock(v10 + 2);

    v188 = *(*&buf[8] + 40);
    if (v188)
    {
      (*(v188 + 16))(v188, v352);
      goto LABEL_379;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v189 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v190 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v189, 16, "%{public}s No handler for CLIENT_UNASSERT", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v190, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        v191 = __nwlog_obj();
        v192 = v446[0];
        if (os_log_type_enabled(v191, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v191, v192, "%{public}s No handler for CLIENT_UNASSERT", v511, 0xCu);
        }

        goto LABEL_365;
      }

      if (v447 == OS_LOG_TYPE_INFO)
      {
        v193 = __nw_create_backtrace_string();
        v194 = __nwlog_obj();
        v195 = v446[0];
        v196 = os_log_type_enabled(v194, v446[0]);
        if (v193)
        {
          if (v196)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v193;
            _os_log_impl(&dword_181A37000, v194, v195, "%{public}s No handler for CLIENT_UNASSERT, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v193);
        }

        else
        {
          if (v196)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v194, v195, "%{public}s No handler for CLIENT_UNASSERT, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v191 = __nwlog_obj();
        v197 = v446[0];
        if (os_log_type_enabled(v191, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v191, v197, "%{public}s No handler for CLIENT_UNASSERT, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_365:
      }
    }

    if (v190)
    {
      free(v190);
    }

LABEL_379:

    _Block_object_dispose(buf, 8);
LABEL_380:
    v10 = v354;
  }

LABEL_381:
  if (!*&v10[194]._os_unfair_lock_opaque)
  {
    if (*&v10[196]._os_unfair_lock_opaque)
    {
      v198 = *v88;
      if (v198 != 10)
      {
        goto LABEL_487;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__84427;
      *&buf[32] = __Block_byref_object_dispose__84428;
      *&buf[40] = 0;
      v392[0] = MEMORY[0x1E69E9820];
      v392[1] = 3221225472;
      v393 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_194;
      v394 = &unk_1E6A3D738;
      v396 = buf;
      v395 = v10;
      v202 = v395;
      v203 = v392;
      os_unfair_lock_lock(v10 + 2);
      v393(v203);
      os_unfair_lock_unlock(v10 + 2);

      v204 = *(*&buf[8] + 40);
      if (v204)
      {
        v389[0] = MEMORY[0x1E69E9820];
        v389[1] = 3221225472;
        v389[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_195;
        v389[3] = &unk_1E6A3BF20;
        v390 = v202;
        v391 = v352;
        (*(v204 + 16))(v204, v391, v389);

LABEL_440:
        _Block_object_dispose(buf, 8);

        goto LABEL_486;
      }

      v216 = __nwlog_obj();
      *v511 = 136446210;
      v512 = "nw_agent_read_message_on_queue";
      LODWORD(v347) = 12;
      v217 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v216, 16, "%{public}s No handler for REQUEST_NEXUS", v511, v347);

      v446[0] = OS_LOG_TYPE_ERROR;
      v447 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v217, v446, &v447))
      {
        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v218 = __nwlog_obj();
          v219 = v446[0];
          if (os_log_type_enabled(v218, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v218, v219, "%{public}s No handler for REQUEST_NEXUS", v511, 0xCu);
          }
        }

        else
        {
          if (v447 == OS_LOG_TYPE_INFO)
          {
            v221 = __nw_create_backtrace_string();
            v222 = __nwlog_obj();
            v223 = v446[0];
            v224 = os_log_type_enabled(v222, v446[0]);
            if (v221)
            {
              if (v224)
              {
                *v511 = 136446466;
                v512 = "nw_agent_read_message_on_queue";
                v513 = 2082;
                v514 = v221;
                _os_log_impl(&dword_181A37000, v222, v223, "%{public}s No handler for REQUEST_NEXUS, dumping backtrace:%{public}s", v511, 0x16u);
              }

              free(v221);
            }

            else
            {
              if (v224)
              {
                *v511 = 136446210;
                v512 = "nw_agent_read_message_on_queue";
                _os_log_impl(&dword_181A37000, v222, v223, "%{public}s No handler for REQUEST_NEXUS, no backtrace", v511, 0xCu);
              }
            }

            goto LABEL_438;
          }

          v218 = __nwlog_obj();
          v229 = v446[0];
          if (os_log_type_enabled(v218, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v218, v229, "%{public}s No handler for REQUEST_NEXUS, backtrace limit exceeded", v511, 0xCu);
          }
        }
      }

LABEL_438:
      if (v217)
      {
        free(v217);
      }

      goto LABEL_440;
    }

    if (!*&v10[198]._os_unfair_lock_opaque)
    {
      goto LABEL_486;
    }

    v198 = *v88;
    if (v198 != 10)
    {
      goto LABEL_487;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v384[0] = MEMORY[0x1E69E9820];
    v384[1] = 3221225472;
    v385 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_197;
    v386 = &unk_1E6A3D738;
    v388 = buf;
    v387 = v10;
    v205 = v387;
    v206 = v384;
    os_unfair_lock_lock(v10 + 2);
    v385(v206);
    os_unfair_lock_unlock(v10 + 2);

    v207 = *(*&buf[8] + 40);
    if (v207)
    {
      v381[0] = MEMORY[0x1E69E9820];
      v381[1] = 3221225472;
      v381[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_198;
      v381[3] = &unk_1E6A3BF48;
      v382 = v205;
      v383 = v352;
      (*(v207 + 16))(v207, v383, v381);

LABEL_485:
      _Block_object_dispose(buf, 8);

      goto LABEL_486;
    }

    v225 = __nwlog_obj();
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v226 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v225, 16, "%{public}s No handler for REQUEST_NEXUS", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v226, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        v227 = __nwlog_obj();
        v228 = v446[0];
        if (os_log_type_enabled(v227, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v227, v228, "%{public}s No handler for REQUEST_NEXUS", v511, 0xCu);
        }
      }

      else
      {
        if (v447 == OS_LOG_TYPE_INFO)
        {
          v230 = __nw_create_backtrace_string();
          v231 = __nwlog_obj();
          v232 = v446[0];
          v233 = os_log_type_enabled(v231, v446[0]);
          if (v230)
          {
            if (v233)
            {
              *v511 = 136446466;
              v512 = "nw_agent_read_message_on_queue";
              v513 = 2082;
              v514 = v230;
              _os_log_impl(&dword_181A37000, v231, v232, "%{public}s No handler for REQUEST_NEXUS, dumping backtrace:%{public}s", v511, 0x16u);
            }

            free(v230);
          }

          else
          {
            if (v233)
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v231, v232, "%{public}s No handler for REQUEST_NEXUS, no backtrace", v511, 0xCu);
            }
          }

          goto LABEL_483;
        }

        v227 = __nwlog_obj();
        v234 = v446[0];
        if (os_log_type_enabled(v227, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v227, v234, "%{public}s No handler for REQUEST_NEXUS, backtrace limit exceeded", v511, 0xCu);
        }
      }
    }

LABEL_483:
    if (v226)
    {
      free(v226);
    }

    goto LABEL_485;
  }

  v198 = *v88;
  if (v198 == 10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v400[0] = MEMORY[0x1E69E9820];
    v400[1] = 3221225472;
    v401 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_191;
    v402 = &unk_1E6A3D738;
    v404 = buf;
    v403 = v10;
    v199 = v403;
    v200 = v400;
    os_unfair_lock_lock(v10 + 2);
    v401(v200);
    os_unfair_lock_unlock(v10 + 2);

    v201 = *(*&buf[8] + 40);
    if (v201)
    {
      v397[0] = MEMORY[0x1E69E9820];
      v397[1] = 3221225472;
      v397[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_192;
      v397[3] = &unk_1E6A3BEF8;
      v398 = v352;
      v399 = v199;
      (*(v201 + 16))(v201, v398, v397);

      goto LABEL_426;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v208 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v209 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v208, 16, "%{public}s No handler for REQUEST_NEXUS", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v209, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        v210 = __nwlog_obj();
        v211 = v446[0];
        if (os_log_type_enabled(v210, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v210, v211, "%{public}s No handler for REQUEST_NEXUS", v511, 0xCu);
        }

        goto LABEL_397;
      }

      if (v447 == OS_LOG_TYPE_INFO)
      {
        v212 = __nw_create_backtrace_string();
        v213 = __nwlog_obj();
        v214 = v446[0];
        v215 = os_log_type_enabled(v213, v446[0]);
        if (v212)
        {
          if (v215)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v212;
            _os_log_impl(&dword_181A37000, v213, v214, "%{public}s No handler for REQUEST_NEXUS, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v212);
        }

        else
        {
          if (v215)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v213, v214, "%{public}s No handler for REQUEST_NEXUS, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v210 = __nwlog_obj();
        v220 = v446[0];
        if (os_log_type_enabled(v210, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v210, v220, "%{public}s No handler for REQUEST_NEXUS, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_397:
      }
    }

    if (v209)
    {
      free(v209);
    }

LABEL_426:

    _Block_object_dispose(buf, 8);
LABEL_486:
    v198 = *v88;
  }

LABEL_487:
  if (v198 == 12)
  {
    v376[0] = MEMORY[0x1E69E9820];
    v376[1] = 3221225472;
    v377 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_200;
    v378 = &unk_1E6A3D760;
    v252 = v352;
    v379 = v252;
    v380 = v354;
    v253 = v380;
    v254 = v376;
    os_unfair_lock_lock(v354 + 2);
    v377(v254);
    os_unfair_lock_unlock(v354 + 2);

    v198 = *v88;
    if (v198 == 12)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__84427;
      *&buf[32] = __Block_byref_object_dispose__84428;
      *&buf[40] = 0;
      v371[0] = MEMORY[0x1E69E9820];
      v371[1] = 3221225472;
      v372 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_204;
      v373 = &unk_1E6A3D738;
      v375 = buf;
      v374 = v253;
      v255 = v374;
      v256 = v371;
      os_unfair_lock_lock(v354 + 2);
      v372(v256);
      os_unfair_lock_unlock(v354 + 2);

      v257 = *(*&buf[8] + 40);
      if (v257)
      {
        (*(v257 + 16))(v257, v252);
        goto LABEL_509;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v258 = gLogObj;
      *v511 = 136446210;
      v512 = "nw_agent_read_message_on_queue";
      LODWORD(v347) = 12;
      v259 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v258, 16, "%{public}s No handler for CLOSE_NEXUS", v511, v347);

      v446[0] = OS_LOG_TYPE_ERROR;
      v447 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v259, v446, &v447))
      {
        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v260 = __nwlog_obj();
          v261 = v446[0];
          if (os_log_type_enabled(v260, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v260, v261, "%{public}s No handler for CLOSE_NEXUS", v511, 0xCu);
          }

          goto LABEL_495;
        }

        if (v447 == OS_LOG_TYPE_INFO)
        {
          v262 = __nw_create_backtrace_string();
          v263 = __nwlog_obj();
          v264 = v446[0];
          v265 = os_log_type_enabled(v263, v446[0]);
          if (v262)
          {
            if (v265)
            {
              *v511 = 136446466;
              v512 = "nw_agent_read_message_on_queue";
              v513 = 2082;
              v514 = v262;
              _os_log_impl(&dword_181A37000, v263, v264, "%{public}s No handler for CLOSE_NEXUS, dumping backtrace:%{public}s", v511, 0x16u);
            }

            free(v262);
          }

          else
          {
            if (v265)
            {
              *v511 = 136446210;
              v512 = "nw_agent_read_message_on_queue";
              _os_log_impl(&dword_181A37000, v263, v264, "%{public}s No handler for CLOSE_NEXUS, no backtrace", v511, 0xCu);
            }
          }
        }

        else
        {
          v260 = __nwlog_obj();
          v266 = v446[0];
          if (os_log_type_enabled(v260, v446[0]))
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v260, v266, "%{public}s No handler for CLOSE_NEXUS, backtrace limit exceeded", v511, 0xCu);
          }

LABEL_495:
        }
      }

      if (v259)
      {
        free(v259);
      }

LABEL_509:

      _Block_object_dispose(buf, 8);
      v198 = *v88;
    }
  }

  if (v198 == 18)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v366[0] = MEMORY[0x1E69E9820];
    v366[1] = 3221225472;
    v367 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_205;
    v368 = &unk_1E6A3D738;
    v370 = buf;
    v369 = v354;
    v267 = v369;
    v268 = v366;
    os_unfair_lock_lock(v354 + 2);
    v367(v268);
    os_unfair_lock_unlock(v354 + 2);

    v269 = *(*&buf[8] + 40);
    if (v269)
    {
      v363[0] = MEMORY[0x1E69E9820];
      v363[1] = 3221225472;
      v363[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_206;
      v363[3] = &unk_1E6A3BEA8;
      v364 = v267;
      v365 = v352;
      (*(v269 + 16))(v269, v365, v351, v363);

      goto LABEL_531;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v270 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v271 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v270, 16, "%{public}s No handler for ADD_GROUP_MEMBERS", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v271, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v272 = gLogObj;
        v273 = v446[0];
        if (os_log_type_enabled(v272, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v272, v273, "%{public}s No handler for ADD_GROUP_MEMBERS", v511, 0xCu);
        }

        goto LABEL_517;
      }

      if (v447 == OS_LOG_TYPE_INFO)
      {
        v274 = __nw_create_backtrace_string();
        v275 = __nwlog_obj();
        v276 = v446[0];
        v277 = os_log_type_enabled(v275, v446[0]);
        if (v274)
        {
          if (v277)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v274;
            _os_log_impl(&dword_181A37000, v275, v276, "%{public}s No handler for ADD_GROUP_MEMBERS, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v274);
        }

        else
        {
          if (v277)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v275, v276, "%{public}s No handler for ADD_GROUP_MEMBERS, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v272 = __nwlog_obj();
        v278 = v446[0];
        if (os_log_type_enabled(v272, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v272, v278, "%{public}s No handler for ADD_GROUP_MEMBERS, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_517:
      }
    }

    if (v271)
    {
      free(v271);
    }

LABEL_531:

    _Block_object_dispose(buf, 8);
    v198 = *v88;
  }

  if (v198 == 19)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__84427;
    *&buf[32] = __Block_byref_object_dispose__84428;
    *&buf[40] = 0;
    v358[0] = MEMORY[0x1E69E9820];
    v358[1] = 3221225472;
    v359 = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_207;
    v360 = &unk_1E6A3D738;
    v362 = buf;
    v361 = v354;
    v279 = v361;
    v280 = v358;
    os_unfair_lock_lock(v354 + 2);
    v359(v280);
    os_unfair_lock_unlock(v354 + 2);

    v281 = *(*&buf[8] + 40);
    if (v281)
    {
      v355[0] = MEMORY[0x1E69E9820];
      v355[1] = 3221225472;
      v355[2] = ___ZL30nw_agent_read_message_on_queueP19NWConcrete_nw_agent_block_invoke_2_208;
      v355[3] = &unk_1E6A3BEA8;
      v356 = v279;
      v357 = v352;
      (*(v281 + 16))(v281, v357, v351, v355);

      goto LABEL_553;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v282 = gLogObj;
    *v511 = 136446210;
    v512 = "nw_agent_read_message_on_queue";
    LODWORD(v347) = 12;
    v283 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v282, 16, "%{public}s No handler for REMOVE_GROUP_MEMBERS", v511, v347);

    v446[0] = OS_LOG_TYPE_ERROR;
    v447 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v283, v446, &v447))
    {
      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v284 = gLogObj;
        v285 = v446[0];
        if (os_log_type_enabled(v284, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v284, v285, "%{public}s No handler for REMOVE_GROUP_MEMBERS", v511, 0xCu);
        }

        goto LABEL_539;
      }

      if (v447 == OS_LOG_TYPE_INFO)
      {
        v286 = __nw_create_backtrace_string();
        v287 = __nwlog_obj();
        v288 = v446[0];
        v289 = os_log_type_enabled(v287, v446[0]);
        if (v286)
        {
          if (v289)
          {
            *v511 = 136446466;
            v512 = "nw_agent_read_message_on_queue";
            v513 = 2082;
            v514 = v286;
            _os_log_impl(&dword_181A37000, v287, v288, "%{public}s No handler for REMOVE_GROUP_MEMBERS, dumping backtrace:%{public}s", v511, 0x16u);
          }

          free(v286);
        }

        else
        {
          if (v289)
          {
            *v511 = 136446210;
            v512 = "nw_agent_read_message_on_queue";
            _os_log_impl(&dword_181A37000, v287, v288, "%{public}s No handler for REMOVE_GROUP_MEMBERS, no backtrace", v511, 0xCu);
          }
        }
      }

      else
      {
        v284 = __nwlog_obj();
        v290 = v446[0];
        if (os_log_type_enabled(v284, v446[0]))
        {
          *v511 = 136446210;
          v512 = "nw_agent_read_message_on_queue";
          _os_log_impl(&dword_181A37000, v284, v290, "%{public}s No handler for REMOVE_GROUP_MEMBERS, backtrace limit exceeded", v511, 0xCu);
        }

LABEL_539:
      }
    }

    if (v283)
    {
      free(v283);
    }

LABEL_553:

    _Block_object_dispose(buf, 8);
  }

  v291 = v499[3];
  if (v291)
  {
    free(v291);
    v499[3] = 0;
  }

  v6 = 1;
LABEL_557:
  _Block_object_dispose(&v485, 8);

  _Block_object_dispose(v506, 8);
LABEL_558:
  _Block_object_dispose(&v498, 8);

  return v6;
}